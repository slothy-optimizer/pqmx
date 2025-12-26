/*
 * Copyright (c) 2021 Arm Limited
 * SPDX-License-Identifier: MIT
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 *
 */

#include <hal.h>
#include <misc.h>
#include <poly.h>

#include <string.h>
#include <stdlib.h>
#include <time.h>

#include "karatsuba_const.h"
#include "karatsuba.h"

/*
 * Configure which tests to build and run
 *
 * Comment out tests you don't need, and they'll be
 * removed at compile-time. This is useful to generate
 * minimal test images, esp. if simulation is slow.
 */

#define TEST_KARATSUBA_INV
#define TEST_KARATSUBA_INV_DUAL_LOOP
#define TEST_KARATSUBA_FWD

// #define TEST_CORE_ONLY        /* Enable to build for minimal image
//                                * for performance analysis.                 */

#if defined(TEST_KARATSUBA_INV) || defined(TEST_KARATSUBA_INV_DUAL_LOOP) || \
    defined(TEST_KARATSUBA_FWD)
void karatsuba_evaluation_64_C(const uint16_t *src, uint16_t *dst) {
  unsigned idx;
  for (idx = 0; idx < 32; idx++) {
    uint16_t even = src[2 * idx + 0];
    uint16_t odd = src[2 * idx + 1];
    uint16_t sum = even + odd;

    dst[0 * 32 + idx] = even;
    dst[1 * 32 + idx] = odd;
    dst[2 * 32 + idx] = sum;
  }
}
#endif /* any Karatsuba */

#if defined(TEST_KARATSUBA_INV) || defined(TEST_KARATSUBA_INV_DUAL_LOOP)
void split_even_odd_32(uint16_t *src) {
  unsigned idx;
  uint16_t tmp[32];
  copy_buf_u16(tmp, src, 32);

  for (idx = 0; idx < 16; idx++) {
    uint16_t even = tmp[2 * idx + 0];
    uint16_t odd = tmp[2 * idx + 1];

    src[idx] = even;
    src[16 + idx] = odd;
  }
}

/* Generate anticyclic schoolbook multiplication */

#undef SCHOOLBOOK_OFFSET_FROM_INDEX_DST
#undef SCHOOLBOOK_OFFSET_FROM_INDEX_SRCA
#undef SCHOOLBOOK_OFFSET_FROM_INDEX_SRCB
#undef SCHOOLBOOK_FACTOR
#undef C_SCHOOLBOOK_SYMBOL_NAME

#define WRAP_INDEX(dim, idx) (idx < dim ? idx : idx - dim)
#define SCHOOLBOOK_FACTOR(dim, idx) (idx < dim ? 1 : -1)

#define SCHOOLBOOK_OFFSET_FROM_INDEX_DST(dim, idx) WRAP_INDEX(dim, idx)
#define SCHOOLBOOK_OFFSET_FROM_INDEX_SRCA(dim, idx) WRAP_INDEX(dim, idx)
#define SCHOOLBOOK_OFFSET_FROM_INDEX_SRCB(dim, idx) WRAP_INDEX(dim, idx)

#define C_SCHOOLBOOK_SYMBOL_NAME(BITWIDTH, DIM) \
  CONCAT5(poly_u, BITWIDTH, _mul_anticyclic_, DIM, _C)

MAKE_SCHOOLBOOK(16, 32)
MAKE_SCHOOLBOOK(16, 64)

#undef SCHOOLBOOK_OFFSET_FROM_INDEX_DST
#undef SCHOOLBOOK_OFFSET_FROM_INDEX_SRCA
#undef SCHOOLBOOK_OFFSET_FROM_INDEX_SRCB
#undef SCHOOLBOOK_FACTOR
#undef C_SCHOOLBOOK_SYMBOL_NAME

#endif /* TEST_KARATSUBA_INV || TEST_KARATSUBA_INV_DUAL_LOOP */

#if defined(TEST_KARATSUBA_FWD)
int test_karatsuba_fwd(void) {
  debug_test_start("Test: 64->32x3 Karatsuba evaluation, looped");

#define POLY_COEFFS 64
#define EVAL_COEFFS (POLY_COEFFS * 3 / 2)
#define TOTAL_POLY_COEFFS (KARATSUBA_FWD_ITERATIONS * POLY_COEFFS)
#define TOTAL_EVAL_COEFFS (KARATSUBA_FWD_ITERATIONS * EVAL_COEFFS)

  uint16_t input[TOTAL_POLY_COEFFS];     // = { 0 };
  uint16_t eval_ref[TOTAL_EVAL_COEFFS];  // = { 0 };
  uint16_t eval_mve[TOTAL_EVAL_COEFFS];  // = { 0 };

  fill_random_u16(input, TOTAL_POLY_COEFFS);
  memset(input, 0, sizeof(input));
  input[0] = 1;

  for (unsigned idx = 0; idx < KARATSUBA_FWD_ITERATIONS; idx++) {
    uint16_t *cur_input;
    uint16_t *cur_eval;
    cur_input = input + idx * POLY_COEFFS;
    cur_eval = eval_ref + idx * EVAL_COEFFS;
    karatsuba_evaluation_64_C(cur_input, cur_eval);
  }

  measure_start();
  karatsuba_fwd_dual_32_loop(input, eval_mve);
  measure_end();

  if (compare_buf_u16(eval_ref, eval_mve, TOTAL_EVAL_COEFFS) != 0) {
    debug_test_fail();
    debug_print_buf_u16(eval_ref, TOTAL_EVAL_COEFFS, "Ref");
    debug_print_buf_u16(eval_mve, TOTAL_EVAL_COEFFS, "MVE");
    return (1);
  }

#undef TOTAL_POLY_COEFFS
#undef TOTAL_EVAL_COEFFS
#undef POLY_COEFFS
#undef EVAL_COEFFS

  debug_test_ok();
  return (0);
}
#endif /* TEST_KARATSUBA_FWD */

#if defined(TEST_KARATSUBA_INV)
#if !defined(TEST_CORE_ONLY)
int test_karatsuba_inv(void) {
  debug_test_start("Test: 32x3 -> 64 Karatsuba interpolation");

  uint16_t input_A[64];
  uint16_t input_B[64];
  uint16_t C_ref[64];
  uint16_t C_kara[64];
  uint16_t eval_A[96];
  uint16_t eval_B[96];
  uint16_t eval_C[96];
  uint16_t *const eval_A_even = eval_A + 0;
  uint16_t *const eval_A_odd = eval_A + 32;
  uint16_t *const eval_A_sum = eval_A + 64;
  uint16_t *const eval_B_even = eval_B + 0;
  uint16_t *const eval_B_odd = eval_B + 32;
  uint16_t *const eval_B_sum = eval_B + 64;
  uint16_t *const eval_C_even = eval_C + 0;
  uint16_t *const eval_C_odd = eval_C + 32;
  uint16_t *const eval_C_sum = eval_C + 64;

  memset(input_A, 0, sizeof(input_A));
  memset(input_B, 0, sizeof(input_B));

  fill_random_u16(input_A, 64);
  fill_random_u16(input_B, 64);

  poly_u16_mul_anticyclic_64_C(C_ref, input_A, input_B);

  karatsuba_evaluation_64_C(input_A, eval_A);
  karatsuba_evaluation_64_C(input_B, eval_B);

#if defined(VERBOSE)
  debug_print_buf_u16(eval_A_even, 32, "A even");
  debug_print_buf_u16(eval_A_odd, 32, "A odd");
  debug_print_buf_u16(eval_A_sum, 32, "A sum");
  debug_print_buf_u16(eval_B_even, 32, "B even");
  debug_print_buf_u16(eval_B_odd, 32, "B odd");
  debug_print_buf_u16(eval_B_sum, 32, "B sum");
#endif /* VERBOSE */

  poly_u16_mul_anticyclic_32_C(eval_C_even, eval_A_even, eval_B_even);
  poly_u16_mul_anticyclic_32_C(eval_C_odd, eval_A_odd, eval_B_odd);
  poly_u16_mul_anticyclic_32_C(eval_C_sum, eval_A_sum, eval_B_sum);
  split_even_odd_32(eval_C_even);
  split_even_odd_32(eval_C_odd);
  split_even_odd_32(eval_C_sum);

#if defined(VERBOSE)
  debug_print_buf_u16(eval_C_even, 32, "C even");
  debug_print_buf_u16(eval_C_odd, 32, "C odd");
  debug_print_buf_u16(eval_C_sum, 32, "C sum");
#endif /* VERBOS */

  measure_start();
  karatsuba_inv_dual_32(eval_C, C_kara);
  measure_end();

  if (compare_buf_u16(C_ref, C_kara, 64) != 0) {
    debug_test_fail();
    debug_print_buf_u16(C_ref, 64, "Ref");
    debug_print_buf_u16(C_kara, 64, "MVE");
    return (1);
  }

  debug_test_ok();
  return (0);
}
#else  /* TEST_CORE_ONLY */
int test_karatsuba_inv(void) {
  /* TODO */
  return (0);
}
#endif /* TEST_CORE_ONLY */
#endif /* TEST_KARATSUBA_INV_DUAL_LOOP */

#if defined(TEST_KARATSUBA_INV_DUAL_LOOP)
#if !defined(TEST_CORE_ONLY)
int test_karatsuba_inv_dual_loop(void) {
  debug_test_start("Test: 32x3 -> 64 Karatsuba interpolation, looped");

#define POLY_COEFFS 64
#define EVAL_COEFFS (POLY_COEFFS * 3 / 2)

#define TOTAL_POLY_COEFFS (KARATSUBA_INV_ITERATIONS * POLY_COEFFS)
#define TOTAL_EVAL_COEFFS (KARATSUBA_INV_ITERATIONS * EVAL_COEFFS)

  uint16_t input_A[TOTAL_POLY_COEFFS];
  uint16_t input_B[TOTAL_POLY_COEFFS];
  uint16_t C_ref[TOTAL_POLY_COEFFS];
  uint16_t C_kara[TOTAL_POLY_COEFFS];
  uint16_t eval_A[TOTAL_EVAL_COEFFS];
  uint16_t eval_B[TOTAL_EVAL_COEFFS];
  uint16_t eval_C[TOTAL_EVAL_COEFFS];

  memset(C_kara, 0, sizeof(C_kara));

  fill_random_u16(input_A, TOTAL_POLY_COEFFS);
  fill_random_u16(input_B, TOTAL_POLY_COEFFS);

  for (unsigned idx = 0; idx < KARATSUBA_INV_ITERATIONS; idx++) {
    uint16_t *cur_A, *cur_B, *cur_C;
    uint16_t *cur_eval_A, *cur_eval_B, *cur_eval_C;
    uint16_t *eval_A_even, *eval_A_odd, *eval_A_sum;
    uint16_t *eval_B_even, *eval_B_odd, *eval_B_sum;
    uint16_t *eval_C_even, *eval_C_odd, *eval_C_sum;

    cur_A = input_A + idx * POLY_COEFFS;
    cur_B = input_B + idx * POLY_COEFFS;
    cur_C = C_ref + idx * POLY_COEFFS;

    cur_eval_A = eval_A + idx * EVAL_COEFFS;
    cur_eval_B = eval_B + idx * EVAL_COEFFS;
    cur_eval_C = eval_C + idx * EVAL_COEFFS;

    eval_A_even = cur_eval_A + 0;
    eval_A_odd = cur_eval_A + 32;
    eval_A_sum = cur_eval_A + 64;
    eval_B_even = cur_eval_B + 0;
    eval_B_odd = cur_eval_B + 32;
    eval_B_sum = cur_eval_B + 64;
    eval_C_even = cur_eval_C + 0;
    eval_C_odd = cur_eval_C + 32;
    eval_C_sum = cur_eval_C + 64;

    poly_u16_mul_anticyclic_64_C(cur_C, cur_A, cur_B);

    karatsuba_evaluation_64_C(cur_A, cur_eval_A);
    karatsuba_evaluation_64_C(cur_B, cur_eval_B);

    poly_u16_mul_anticyclic_32_C(eval_C_even, eval_A_even, eval_B_even);
    poly_u16_mul_anticyclic_32_C(eval_C_odd, eval_A_odd, eval_B_odd);
    poly_u16_mul_anticyclic_32_C(eval_C_sum, eval_A_sum, eval_B_sum);
    split_even_odd_32(eval_C_even);
    split_even_odd_32(eval_C_odd);
    split_even_odd_32(eval_C_sum);
  }

  measure_start();
  karatsuba_inv_dual_32_loop(eval_C, C_kara);
  measure_end();

  if (compare_buf_u16(C_ref, C_kara, TOTAL_POLY_COEFFS) != 0) {
    debug_test_fail();
    debug_print_buf_u16(C_ref, TOTAL_POLY_COEFFS, "Ref");
    debug_print_buf_u16(C_kara, TOTAL_POLY_COEFFS, "MVE");
    return (1);
  }

  debug_test_ok();
  return (0);
}
#else  /* TEST_CORE_ONLY */
int test_karatsuba_inv_dual_loop(void) {
  /* TODO */
  return (0);
}
#endif /* TEST_CORE_ONLY */
#endif /* TEST_KARATSUBA_INV_DUAL_LOOP */

int main(void) {
  int ret = 0;

#if defined(TEST_KARATSUBA_INV)
  ret |= test_karatsuba_inv();
#endif /* TEST_KARATSUBA_INV */

#if defined(TEST_KARATSUBA_INV_DUAL_LOOP)
  ret |= test_karatsuba_inv_dual_loop();
#endif /* TEST_KARATSUBA_INV_DUAL_LOOP */

#if defined(TEST_KARATSUBA_FWD)
  ret |= test_karatsuba_fwd();
#endif /* TEST_KARATSUBA_FWD */

  if (ret == 0) {
    debug_printf("ALL GOOD!\n");
  }

  return (ret);
}
