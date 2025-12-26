/*
 * Copyright (c) 2022 Arm Limited
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
 *
 * Author: Hanno Becker <hannobecker@posteo.de>
 */

#define ENABLE_PMU_STATS /* Do not enable when benching for cycle count */

#if defined(ENABLE_PMU_STATS)
#define REPEAT 1
#else
#define REPEAT 1024
#endif

/*
 * Some external references to auto-generated assembly.
 */

#include <hal.h>
#include <stdint.h>
#include <hal.h>
#include <misc.h>
#include <poly.h>

#include <string.h>
#include <stdlib.h>
#include <time.h>

// base
void ntt_kyber_1_23_45_67_no_trans(int16_t *src);
void ntt_kyber_1_23_45_67_no_trans_vld4(int16_t *src);
void ntt_kyber_12_345_67(int16_t *src);
// M55
void ntt_kyber_1_23_45_67_no_trans_opt_m55(int16_t *src);
void ntt_kyber_1_23_45_67_no_trans_vld4_opt_m55(int16_t *src);
void ntt_kyber_12_345_67_opt_size_m55(int16_t *src);

// M85
void ntt_kyber_1_23_45_67_no_trans_opt_m85(int16_t *src);
void ntt_kyber_1_23_45_67_no_trans_vld4_opt_m85(int16_t *src);
void ntt_kyber_12_345_67_opt_size_m85(int16_t *src);

#define NTT_LAYERS 8
#define NTT_SIZE (1u << NTT_LAYERS)
#define NTT_ROOT_ORDER (2 * NTT_SIZE)
#define NTT_INCOMPLETE_LAYERS 7
#define NTT_INCOMPLETE_SIZE (1u << NTT_INCOMPLETE_LAYERS)
#define NTT_LAYER_GAP (NTT_LAYERS - NTT_INCOMPLETE_LAYERS)
#define NTT_LAYER_STRIDE (1u << NTT_LAYER_GAP)

/*
 * Test cases
 */

int16_t base_root = 17;
int16_t modulus = 3329;
int16_t modulus_inv_u16 = 62209;

uint16_t roots[NTT_ROOT_ORDER / 2] __attribute__((aligned(16))) = {0};

void build_roots() {
  for (unsigned i = 0; i < NTT_ROOT_ORDER / 2; i++) {
    roots[i] = mod_pow_s16(base_root, i, modulus);
  }
}

unsigned bit_reverse(unsigned in, unsigned width) {
  unsigned out = 0;
  while (width--) {
    out <<= 1;
    out |= (in % 2);
    in >>= 1;
  }
  return (out);
}

void ntt_s16_C(int16_t *src) {
  int16_t res[NTT_SIZE];
  build_roots();

  for (unsigned t = 0; t < NTT_LAYER_STRIDE; t++) {
    for (unsigned i = 0; i < NTT_INCOMPLETE_SIZE; i++) {
      int16_t tmp = 0;
      /* A negacyclic FFT is half of a full FFT, where we've 'chosen -1'
       * in the first layer. That explains the corrections by
       * NTT_INCOMPLETE_SIZE and +1 here. In a normal FFT, this would just be
       * bit_rev( i, layers ) * stride. */
      unsigned const multiplier =
          bit_reverse(i + NTT_INCOMPLETE_SIZE, NTT_INCOMPLETE_LAYERS + 1) *
          NTT_LAYER_STRIDE;

      for (unsigned j = 0; j < NTT_INCOMPLETE_SIZE; j++) {
        int16_t cur;
        unsigned exp = ((multiplier * j) % NTT_ROOT_ORDER) / 2;
        unsigned sub = (exp >= (NTT_ROOT_ORDER / 2));
        exp = exp % (NTT_ROOT_ORDER / 2);

        cur = mod_mul_s16(src[NTT_LAYER_STRIDE * j + t], roots[exp], modulus);

        if (!sub)
          tmp = mod_add_s16(tmp, cur, modulus);
        else
          tmp = mod_sub_s16(tmp, cur, modulus);
      }
      res[NTT_LAYER_STRIDE * i + t] = tmp;
    }
  }

  memcpy(src, res, sizeof(res));
}

void buf_bitrev_4(int16_t *src) {
  int32_t *src_ = (int32_t *)src;
  for (unsigned i = 0; i < NTT_SIZE / 2; i += 16) {
    int32_t tmp[16];
    for (unsigned t = 0; t < 16; t++)
      tmp[t] = src_[i + t];

    for (unsigned t0 = 0; t0 < 4; t0++)
      for (unsigned t1 = 0; t1 < 4; t1++)
        src_[i + t0 * 4 + t1] = tmp[t1 * 4 + t0];
  }
}

#define MAKE_TEST_FWD(var, func, rev4)                                     \
  int test_ntt_##var() {                                                   \
    debug_test_start("NTT s16 for " #func);                                \
    int16_t src[NTT_SIZE] __attribute__((aligned(16)));                    \
    int16_t src_copy[NTT_SIZE] __attribute__((aligned(16)));               \
                                                                           \
    /* Setup input */                                                      \
    fill_random_u16((uint16_t *)src, NTT_SIZE);                            \
    mod_reduce_buf_s16(src, NTT_SIZE, modulus);                            \
                                                                           \
    /* Step 1: Reference NTT */                                            \
    memcpy(src_copy, src, sizeof(src));                                    \
    ntt_s16_C(src_copy);                                                   \
    mod_reduce_buf_s16(src_copy, NTT_SIZE, modulus);                       \
                                                                           \
    if (rev4)                                                              \
      buf_bitrev_4(src_copy);                                              \
                                                                           \
    /* Step 2: MVE-based NTT */                                            \
    measure_start();                                                       \
    (func)(src);                                                           \
    measure_end();                                                         \
                                                                           \
    mod_reduce_buf_s16(src, NTT_SIZE, modulus);                            \
    if (compare_buf_u16((uint16_t const *)src, (uint16_t const *)src_copy, \
                        NTT_SIZE) != 0) {                                  \
      debug_print_buf_s16(src_copy, NTT_SIZE, "Reference");                \
      debug_print_buf_s16(src, NTT_SIZE, "MVE");                           \
      debug_test_fail();                                                   \
      return (1);                                                          \
    }                                                                      \
    debug_test_ok();                                                       \
                                                                           \
    return (0);                                                            \
  }

// base
MAKE_TEST_FWD(l1222_no_trans, ntt_kyber_1_23_45_67_no_trans, 1)
MAKE_TEST_FWD(l1222_no_trans_vld4, ntt_kyber_1_23_45_67_no_trans_vld4, 1)
MAKE_TEST_FWD(l232, ntt_kyber_12_345_67, 1)
// M55
MAKE_TEST_FWD(l1222_no_trans_opt_m55, ntt_kyber_1_23_45_67_no_trans_opt_m55, 1)
MAKE_TEST_FWD(l1222_no_trans_vld4_opt_m55,
              ntt_kyber_1_23_45_67_no_trans_vld4_opt_m55, 1)
MAKE_TEST_FWD(l232_opt_size_m55, ntt_kyber_12_345_67_opt_size_m55, 1)
// M85
MAKE_TEST_FWD(l1222_no_trans_opt_m85, ntt_kyber_1_23_45_67_no_trans_opt_m85, 1)
MAKE_TEST_FWD(l1222_no_trans_vld4_opt_m85,
              ntt_kyber_1_23_45_67_no_trans_vld4_opt_m85, 1)
MAKE_TEST_FWD(l232_opt_size_m85, ntt_kyber_12_345_67_opt_size_m85, 1)

uint64_t hal_get_time();

void hal_pmu_enable();
void hal_pmu_disable();
void hal_pmu_start_pmu_stats(pmu_stats *s);
void hal_pmu_finish_pmu_stats(pmu_stats *s);
void hal_pmu_send_stats(char *s, pmu_stats const *stats);

void hal_pmu_send_stats_wrapper(pmu_stats *stats) {
#if defined(ENABLE_PMU_STATS)
  hal_pmu_send_stats("", stats);
#endif
}

#define MAKE_BENCH(var, func)                                 \
  int bench_##var() {                                         \
    int16_t src[NTT_SIZE] __attribute__((aligned(16)));       \
    pmu_stats stats;                                          \
    (func)(src);                                              \
    hal_pmu_start_pmu_stats(&stats);                          \
    for (size_t cnt = 0; cnt < REPEAT; cnt++)                 \
      (func)(src);                                            \
    hal_pmu_finish_pmu_stats(&stats);                         \
    /*Workaround for RA8M1 (cannot print %f)*/                \
    debug_printf(#func ": %lu.%02lu cycles (avg)\n",          \
                 stats.pmu_cycles / (REPEAT),                 \
                 (stats.pmu_cycles % REPEAT) * 100 / REPEAT); \
    hal_pmu_send_stats_wrapper(&stats);                       \
    return (0);                                               \
  }

// base
MAKE_BENCH(ntt_l1222_no_trans, ntt_kyber_1_23_45_67_no_trans)
MAKE_BENCH(ntt_l232, ntt_kyber_12_345_67)
// M55
MAKE_BENCH(ntt_l1222_no_trans_opt_m55, ntt_kyber_1_23_45_67_no_trans_opt_m55)
MAKE_BENCH(ntt_l1222_no_trans_vld4_opt_m55,
           ntt_kyber_1_23_45_67_no_trans_vld4_opt_m55)
MAKE_BENCH(ntt_l232_opt_size_m55, ntt_kyber_12_345_67_opt_size_m55)
// M85
MAKE_BENCH(ntt_l1222_no_trans_opt_m85, ntt_kyber_1_23_45_67_no_trans_opt_m85)
MAKE_BENCH(ntt_l1222_no_trans_vld4_opt_m85,
           ntt_kyber_1_23_45_67_no_trans_vld4_opt_m85)
MAKE_BENCH(ntt_l232_opt_size_m85, ntt_kyber_12_345_67_opt_size_m85)

int main(void) {
  int ret = 0;

  debug_printf("\nKyber NTT Test!\n");

  // base

  ret |= test_ntt_l1222_no_trans();
  if (ret != 0)
    return (1);

  ret |= test_ntt_l1222_no_trans_vld4();
  if (ret != 0)
    return (1);

  ret |= test_ntt_l232();
  if (ret != 0)
    return (1);

  // M55
  ret |= test_ntt_l1222_no_trans_opt_m55();
  if (ret != 0)
    return (1);
  ret |= test_ntt_l1222_no_trans_vld4_opt_m55();
  if (ret != 0)
    return (1);
  ret |= test_ntt_l232_opt_size_m55();
  if (ret != 0)
    return (1);

  // M85
  ret |= test_ntt_l1222_no_trans_opt_m85();
  if (ret != 0)
    return (1);
  ret |= test_ntt_l1222_no_trans_vld4_opt_m85();
  if (ret != 0)
    return (1);
  ret |= test_ntt_l232_opt_size_m85();
  if (ret != 0)
    return (1);

  hal_pmu_enable();
  debug_printf("Kyber NTT Bench!\n");

  bench_ntt_l1222_no_trans();
  bench_ntt_l232();

  // M55
  bench_ntt_l1222_no_trans_opt_m55();
  bench_ntt_l1222_no_trans_vld4_opt_m55();
  bench_ntt_l232_opt_size_m55();

  // M85
  bench_ntt_l1222_no_trans_opt_m85();
  bench_ntt_l1222_no_trans_vld4_opt_m85();
  bench_ntt_l232_opt_size_m85();

  debug_printf("Done!\n");
  hal_pmu_disable();
  debug_printf("ALL GOOD!\n");
  return (ret);
}
