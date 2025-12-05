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

void twisted_cyclic_mul_deg4_u32_mve_alt(int32_t *, int32_t *, int32_t *,
                                         int32_t *);
void twisted_cyclic_mul_deg4_u32_mve_expand_double(int32_t *, int32_t *,
                                                   int32_t *, int32_t *,
                                                   int32_t);
void ntt_192_u32_114826273_107284677_incomplete_good_bitrev(int32_t *);
void ntt_192_u32_114826273_107284677_incomplete_good(int32_t *);


#define TEST_NTT_GOOD
#define TEST_NTT_GOOD_BITREV
#define TEST_POLY_MUL

// #define TEST_CORE_ONLY

/*
 * Some external references to auto-generated assembly.
 */

#include "ntt_const.h"

#define NTT_MAKE_NAME(SUFFIX) \
  CONCAT6(ntt_192_u32_, NTT_PRIME, _, NTT_ROOT, _incomplete_good, SUFFIX)
#define ntt_u32_mve_good_twiddles NTT_MAKE_NAME(_twiddles)
#define ntt_u32_mve_good_scale NTT_MAKE_NAME(_scale)
#define ntt_u32_mve_good NTT_MAKE_NAME()
#define ntt_u32_mve_good_bitrev NTT_MAKE_NAME(_bitrev)

extern int32_t ntt_u32_mve_good_twiddles[192 * 2];
extern int32_t ntt_u32_mve_good_scale[2];

/* Cyclic signed schoolbook multiplications */

#undef SCHOOLBOOK_OFFSET_FROM_INDEX_DST
#undef SCHOOLBOOK_OFFSET_FROM_INDEX_SRCA
#undef SCHOOLBOOK_OFFSET_FROM_INDEX_SRCB
#undef SCHOOLBOOK_FACTOR
#undef C_SCHOOLBOOK_SYMBOL_NAME

#define WRAP_INDEX(dim, idx) ((idx) < (dim) ? (idx) : (idx) - (dim))
#define SCHOOLBOOK_FACTOR(dim, idx) (1)

#define SCHOOLBOOK_OFFSET_FROM_INDEX_DST(dim, idx) WRAP_INDEX((dim), (idx))
#define SCHOOLBOOK_OFFSET_FROM_INDEX_SRCA(dim, idx) WRAP_INDEX((dim), (idx))
#define SCHOOLBOOK_OFFSET_FROM_INDEX_SRCB(dim, idx) WRAP_INDEX((dim), (idx))

#define SCHOOLBOOK_REDUCTION(TMP, MODULUS) mod_red_s32(tmp, modulus)

#define C_SCHOOLBOOK_SYMBOL_NAME(BITWIDTH, DIM) \
  CONCAT5(poly_s, BITWIDTH, _mul_cyclic_, DIM, _C)

MAKE_INT_SCHOOLBOOK(32, 192)

/*
 * Test cases
 */

int32_t base_root = NTT_ROOT;
int32_t modulus = NTT_PRIME;
int32_t modulus_inv_u32 = NTT_PRIME_TWISTED;

int32_t roots[NTT_ROOT_ORDER / 2] __attribute__((aligned(16))) = {0};
uint32_t roots_twisted[NTT_ROOT_ORDER / 2] __attribute__((aligned(16))) = {0};

void build_roots() {
  static int done = 0;
  if (done == 1)
    return;
  for (unsigned i = 0; i < NTT_ROOT_ORDER / 2; i++) {
    roots[i] = mod_pow_s32(base_root, i, modulus);
    roots_twisted[i] = roots[i] * modulus_inv_u32;
  }
  done = 1;
}

void trafo_good_full_to_split(unsigned idx, unsigned *i, unsigned *j) {
  *i = idx % 3;
  *j = idx % 16;
}

unsigned trafo_good_split_to_full(unsigned i, unsigned j) {
  for (unsigned k = 0; k < 192; k++) {
    unsigned ti, tj;
    trafo_good_full_to_split(k, &ti, &tj);
    if (i == ti && j == tj)
      return k;
  }

  // Should not happen
  while (1)
    ;
}

unsigned bit_reverse_16(unsigned in) {
  unsigned out = 0;
  unsigned width = 4;

  while (width--) {
    out <<= 1;
    out |= (in % 2);
    in >>= 1;
  }

  return (out);
}

unsigned bit_reverse_good(unsigned idx) {
  unsigned i, j;
  trafo_good_full_to_split(idx, &i, &j);
  j = bit_reverse_16(j);
  return trafo_good_split_to_full(i, j);
}

void ntt_u32_C(int32_t *src) {
  int32_t res[NTT_SIZE];
  build_roots();

  for (unsigned t = 0; t < NTT_LAYER_STRIDE; t++) {
    for (unsigned i = 0; i < NTT_INCOMPLETE_SIZE; i++) {
      int32_t tmp = 0;
#if !defined(NTT_ROOT_INCOMPLETE)
      unsigned const multiplier = i * NTT_LAYER_STRIDE;
#else
      unsigned const multiplier = i;
#endif

      for (unsigned j = 0; j < NTT_INCOMPLETE_SIZE; j++) {
        int32_t cur;
        unsigned exp = (multiplier * j) % NTT_ROOT_ORDER;
        unsigned sub = (exp >= (NTT_ROOT_ORDER / 2));
        exp = exp % (NTT_ROOT_ORDER / 2);

        cur = mod_mul_s32(src[NTT_LAYER_STRIDE * j + t], roots[exp], modulus);

        if (!sub)
          tmp = mod_add_s32(tmp, cur, modulus);
        else
          tmp = mod_sub_s32(tmp, cur, modulus);
      }
      res[NTT_LAYER_STRIDE * i + t] = tmp;
    }
  }
  memcpy(src, res, sizeof(res));
}

void ntt_u32_permute_bitrev_good(int32_t *src) {
  int32_t tmp[NTT_SIZE];

  for (unsigned i = 0; i < NTT_INCOMPLETE_SIZE; i++) {
    unsigned j = bit_reverse_good(i);
    memcpy(tmp + i * NTT_LAYER_STRIDE, src + j * NTT_LAYER_STRIDE,
           sizeof(int32_t) * NTT_LAYER_STRIDE);
  }

  memcpy(src, tmp, sizeof(tmp));
}

void buf_rev_4(int32_t *src) {
  for (unsigned i = 0; i < NTT_SIZE; i += 4, src += 4) {
    int32_t tmp[4];
    tmp[0] = src[0];
    tmp[1] = src[1];
    tmp[2] = src[2];
    tmp[3] = src[3];
    src[0] = tmp[3];
    src[1] = tmp[2];
    src[2] = tmp[1];
    src[3] = tmp[0];
  }
}

void ntt_u32_permute_negate(int32_t *src) {
  int32_t tmp[NTT_SIZE] = {0};

  for (unsigned i = 0; i < NTT_INCOMPLETE_SIZE; i++) {
    unsigned j;
    if (i == 0)
      j = 0;
    else
      j = NTT_INCOMPLETE_SIZE - i;

    memcpy(&tmp[0] + j * NTT_LAYER_STRIDE, src + i * NTT_LAYER_STRIDE,
           sizeof(int32_t) * NTT_LAYER_STRIDE);
  }
  memcpy(src, tmp, sizeof(tmp));
}

int check_good_permutation() {
  int32_t src[NTT_SIZE];
  int32_t src_copy[NTT_SIZE];

  debug_test_start("NTT, check Good's permutation (C code)");

  /* Setup input */
  fill_random_u32((uint32_t *)src, NTT_SIZE);
  memcpy(src_copy, src, sizeof(src));

  ntt_u32_permute_bitrev_good(src);
  ntt_u32_permute_bitrev_good(src);

  if (compare_buf_u32((uint32_t const *)src, (uint32_t const *)src_copy,
                      NTT_SIZE) != 0) {
    debug_print_buf_s32(src_copy, NTT_SIZE, "Original");
    debug_print_buf_s32(src, NTT_SIZE, "NTT");
    debug_test_fail();
    return (1);
  }

  debug_test_ok();
  return 0;
}

#if !defined(TEST_CORE_ONLY)
int run_test_ntt_good() {
  debug_test_start("NTT u32, Good's trick");
  int32_t src[NTT_SIZE] __attribute__((aligned(16)));
  int32_t src_copy[NTT_SIZE] __attribute__((aligned(16)));

  srand(5);

  /* Setup input */
  fill_random_u32((uint32_t *)src, NTT_SIZE);
  mod_reduce_buf_s32(src, NTT_SIZE, modulus);

  /* Step 1: Reference NTT */
  memcpy(src_copy, src, sizeof(src));
  ntt_u32_C(src_copy);
  ntt_u32_permute_bitrev_good(src_copy);
  mod_reduce_buf_s32(src_copy, NTT_SIZE, modulus);

  /* Step 2: MVE-based NTT */

  measure_start();
  ntt_u32_mve_good(src);
  measure_end();

  mod_reduce_buf_s32(src, NTT_SIZE, modulus);
  if (compare_buf_u32((uint32_t const *)src, (uint32_t const *)src_copy,
                      NTT_SIZE) != 0) {
    debug_print_buf_s32(src_copy, NTT_SIZE, "Reference");
    debug_print_buf_s32(src, NTT_SIZE, "MVE");

    for (unsigned idx = 0; idx < NTT_SIZE; idx++) {
      if (src_copy[idx] != src[idx]) {
        debug_printf("Fatal failure at index %u: %d != %d\n", idx, src[idx],
                     src_copy[idx]);
      }
    }

    debug_test_fail();
    return (1);
  }
  debug_test_ok();

  return (0);
}

int run_test_ntt_good_bitrev() {
  debug_test_start("NTT u32, Good's trick, bitreverse");
  int32_t src[NTT_SIZE] __attribute__((aligned(16)));
  int32_t src_copy[NTT_SIZE] __attribute__((aligned(16)));
  int32_t pow_2k_inv;

  /* Setup input */
  fill_random_u32((uint32_t *)src, NTT_SIZE);
  mod_reduce_buf_s32(src, NTT_SIZE, modulus);

  /* Step 1: Reference NTT */
  memcpy(src_copy, src, sizeof(src));

  /* Step 2: MVE-based NTT */

  ntt_u32_mve_good(src);
  mod_reduce_buf_s32(src, NTT_SIZE, modulus);
  ntt_u32_mve_good_bitrev(src);
  mod_reduce_buf_s32(src, NTT_SIZE, modulus);

  pow_2k_inv = mod_pow_s32((modulus + 1) / 2, 4, modulus);
  mod_mul_buf_const_s32(src, pow_2k_inv, src, NTT_SIZE, modulus);
  mod_mul_buf_const_s32(src, (2 * modulus + 1) / 3, src, NTT_SIZE, modulus);
  mod_reduce_buf_s32(src, NTT_SIZE, modulus);

  if (compare_buf_u32((uint32_t const *)src, (uint32_t const *)src_copy,
                      NTT_SIZE) != 0) {
    debug_print_buf_s32(src_copy, NTT_SIZE, "Reference");
    debug_print_buf_s32(src, NTT_SIZE, "MVE");

    for (unsigned idx = 0; idx < NTT_SIZE; idx += 4) {
      if (src_copy[idx] != src[idx]) {
        debug_printf("Fatal failure at index %u: %d != %d\n", idx, src[idx],
                     src_copy[idx]);
      }
    }

    debug_test_fail();
    return (1);
  }
  debug_test_ok();

  return (0);
}

#else

int run_test_ntt_good() {
  int32_t src[NTT_SIZE] __attribute__((aligned(16)));
  measure_start();
  ntt_u32_mve_good(src);
  measure_end();
  return (0);
}

int run_test_ntt_good_bitrev() {
  int32_t src[NTT_SIZE] __attribute__((aligned(16)));
  measure_start();
  ntt_u32_mve_good_bitrev(src);
  measure_end();
  return (0);
}


#endif

void poly_mul_192(int32_t *dst, int32_t *srcA, int32_t *srcB) {
  int32_t params[] = {
      NTT_PRIME,
      NTT_PRIME_TWISTED,
  };

  int32_t tmpB[2 * NTT_SIZE];
  ntt_u32_mve_good(srcA);
  ntt_u32_mve_good(srcB);

  twisted_cyclic_mul_deg4_u32_mve_expand_double(
      tmpB, srcB, ntt_u32_mve_good_twiddles, ntt_u32_mve_good_scale, NTT_PRIME);

  twisted_cyclic_mul_deg4_u32_mve_alt(srcA, tmpB, dst, params);
  ntt_u32_mve_good_bitrev(dst);
}

int run_test_poly_mul() {
  int32_t A[NTT_SIZE], B[NTT_SIZE], C[NTT_SIZE], C_ref[NTT_SIZE];
  debug_test_start("Polynomial multiplication in F_q[X]/(X^192-1)");

  fill_random_u32((uint32_t *)A, NTT_SIZE);
  fill_random_u32((uint32_t *)B, NTT_SIZE);

  mod_reduce_buf_s32(A, NTT_SIZE, modulus);
  mod_reduce_buf_s32(B, NTT_SIZE, modulus);

  poly_s32_mul_cyclic_192_C(C_ref, A, B, modulus);

  measure_start();
  poly_mul_192(C, A, B);
  measure_end();

  mod_reduce_buf_s32(C, NTT_SIZE, modulus);

  if (compare_buf_u32((uint32_t const *)C, (uint32_t const *)C_ref, NTT_SIZE) !=
      0) {
    debug_print_buf_s32(C_ref, NTT_SIZE, "Ref");
    debug_print_buf_s32(C, NTT_SIZE, "MVE");
    debug_test_fail();
    return (1);
  }

  debug_test_ok();
  return (0);
}

int check_ntt_involutive() {
  debug_test_start("NTT, check involution property (C code)");

  int32_t src[NTT_SIZE];
  int32_t src_copy[NTT_SIZE];

  int32_t pow_2k_inv;

  /* Setup input */
  fill_random_u32((uint32_t *)src, NTT_SIZE);
  mod_reduce_buf_s32(src, NTT_SIZE, modulus);
  memcpy(src_copy, src, sizeof(src));

  /* Step 1: Apply NTT */
  ntt_u32_C(src);
  mod_reduce_buf_s32(src, NTT_SIZE, modulus);

  /* Step 3: Apply NTT again */
  ntt_u32_C(src);
  mod_reduce_buf_s32(src, NTT_SIZE, modulus);

  /* Step 4: Divide by incomplete NTT size, 48 = 3*16 = 3*2^4 */
  pow_2k_inv = mod_pow_s32((modulus + 1) / 2, 4, modulus);
  mod_mul_buf_const_s32(src, pow_2k_inv, src, NTT_SIZE, modulus);
  mod_mul_buf_const_s32(src, (2 * modulus + 1) / 3, src, NTT_SIZE, modulus);
  mod_reduce_buf_s32(src, NTT_SIZE, modulus);

  ntt_u32_permute_negate(src);

  if (compare_buf_u32((uint32_t const *)src, (uint32_t const *)src_copy,
                      NTT_SIZE) != 0) {
    debug_print_buf_s32(src_copy, NTT_SIZE, "Original");
    debug_print_buf_s32(src, NTT_SIZE, "NTT");
    debug_test_fail();
    return (1);
  }

  debug_test_ok();
  return (0);
}

int main(void) {
  int ret = 0;

#if !defined(TEST_CORE_ONLY)
  check_ntt_involutive();
  check_good_permutation();
#endif

#if defined(TEST_NTT_GOOD)
  ret |= run_test_ntt_good();
  if (ret != 0)
    return (1);
#endif /* TEST_NTT */

#if defined(TEST_NTT_GOOD_BITREV)
  ret |= run_test_ntt_good_bitrev();
  if (ret != 0)
    return (1);
#endif /* TEST_NTT_GOOD_BITREV */

#if defined(TEST_POLY_MUL)
  ret |= run_test_poly_mul();
  if (ret != 0)
    return (1);
#endif /* TEST_POLY_MUL */

  if (ret == 0) {
    debug_printf("ALL GOOD!\n");
  }

  return (ret);
}
