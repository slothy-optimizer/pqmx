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
#include <stdio.h>

void ntt_incomplete_double_u32_mve(uint32_t *, uint32_t *);

#define TEST_NTT /* Enable/Disable test for NTT                    */
// #define TEST_NTT_DOUBLE         /* Enable/Disable test for NTT */ #define
// TEST_NTT_FWD_INV        /* NOTE: Need to set `inverse_scaling=0` for this */
// #define TEST_CORE_ONLY          /* Enable to build for minimal image
//                                  * for performance analysis. */
#define NTT_INCOMPLETE /* Enable to compute 6-layer incomplete NTT. */

// #define USE_MANUAL_VARIANTS
//  #define ENABLE_PMU_STATS        /* Do not enable when benching for cycle
//  count */

#if defined(ENABLE_PMU_STATS)
#define REPEAT 1
#else
#define REPEAT 1024
#endif

/*
 * Some external references to auto-generated assembly.
 */

void ntt_n256_u32_33556993_28678040(int32_t *src);
void inv_ntt_n256_u32_33556993_28678040(int32_t *src);
void ntt_n256_u32_33556993_28678040_incomplete(int32_t *src);
void inv_ntt_n256_u32_33556993_28678040_incomplete(int32_t *src);
void ntt_n256_u32_33556993_28678040_incomplete_double(int32_t *src,
                                                      int32_t *dst);

#if defined(USE_MANUAL_VARIANTS)
#define ntt_full_u32_mve ntt_n256_u32_33556993_28678040_complete_manual
#define inv_ntt_full_u32_mve invntt_n256_u32_33556993_28678040_complete_manual
#define ntt_incomplete_u32_mve ntt_n256_u32_33556993_28678040_incomplete_manual
#define inv_ntt_incomplete_u32_mve \
  invntt_n256_u32_33556993_28678040_incomplete_manual
#else
#define ntt_full_u32_mve ntt_n256_u32_33556993_28678040
#define inv_ntt_full_u32_mve inv_ntt_n256_u32_33556993_28678040
#define ntt_incomplete_u32_mve ntt_n256_u32_33556993_28678040_incomplete
#define inv_ntt_incomplete_u32_mve inv_ntt_n256_u32_33556993_28678040_incomplete
#endif

// #define ntt_incomplete_double_u32_mve
// ntt_n256_u32_33556993_28678040_incomplete_double

#if !defined(NTT_INCOMPLETE)
#define ntt_u32_mve ntt_full_u32_mve
#define inv_ntt_u32_mve inv_ntt_full_u32_mve
#else
#define ntt_u32_mve ntt_incomplete_u32_mve
#define inv_ntt_u32_mve inv_ntt_incomplete_u32_mve
#endif

/*
 * Test cases
 */

int32_t base_root = 28678040;  // 512-th root of unity
int32_t modulus = 33556993;
int32_t modulus_inv_u32 = 375649793;

#define NTT_LAYERS 8
#define NTT_SIZE (1u << NTT_LAYERS)

#define NTT_ROOT_ORDER (2 * NTT_SIZE)

#if !defined(NTT_INCOMPLETE)
#define NTT_INCOMPLETE_LAYERS 8
#else
#define NTT_INCOMPLETE_LAYERS 6
#endif /* NTT_INCOMPLETE */

#define NTT_INCOMPLETE_SIZE (1u << NTT_INCOMPLETE_LAYERS)

#define NTT_LAYER_GAP (NTT_LAYERS - NTT_INCOMPLETE_LAYERS)
#define NTT_LAYER_STRIDE (1u << NTT_LAYER_GAP)

int32_t roots[NTT_ROOT_ORDER / 2] __attribute__((aligned(16))) = {0};
uint32_t roots_twisted[NTT_ROOT_ORDER / 2] __attribute__((aligned(16))) = {0};

void build_roots()
{
  for (unsigned i = 0; i < NTT_ROOT_ORDER / 2; i++)
  {
    roots[i] = mod_pow_s32(base_root, i, modulus);
    roots_twisted[i] = roots[i] * modulus_inv_u32;

    /* debug_printf( "zeta^%u = %u^%u = %u\n", */
    /*               i, (unsigned) base_root, i, */
    /*               roots[i] ); */

    /* debug_printf( "zeta^%u * %u = %u^%u * %u = %u\n", */
    /*               i, modulus_inv_u32, */
    /*               (unsigned) base_root, i, modulus_inv_u32, */
    /*               roots_twisted[i] ); */
  }
}

unsigned bit_reverse(unsigned in, unsigned width)
{
  unsigned out = 0;
  while (width--)
  {
    out <<= 1;
    out |= (in % 2);
    in >>= 1;
  }
  return (out);
}

void ntt_u32_C(int32_t *src)
{
  int32_t res[NTT_SIZE];
  build_roots();

  for (unsigned t = 0; t < NTT_LAYER_STRIDE; t++)
  {
    for (unsigned i = 0; i < NTT_INCOMPLETE_SIZE; i++)
    {
      int32_t tmp = 0;
      /* A negacyclic FFT is half of a full FFT, where we've 'chosen -1'
       * in the first layer. That explains the corrections by
       * NTT_INCOMPLETE_SIZE and +1 here. In a normal FFT, this would just be
       * bit_rev( i, layers ) * stride. */
      unsigned const multiplier =
          bit_reverse(i + NTT_INCOMPLETE_SIZE, NTT_INCOMPLETE_LAYERS + 1) *
          NTT_LAYER_STRIDE;

      for (unsigned j = 0; j < NTT_INCOMPLETE_SIZE; j++)
      {
        int32_t cur;
        unsigned exp = (multiplier * j) % NTT_ROOT_ORDER;
        unsigned sub = (exp >= (NTT_ROOT_ORDER / 2));
        exp = exp % (NTT_ROOT_ORDER / 2);

        /* if( t == 0 ) */
        /* { */
        /*     debug_printf( "res[%u] += root[%u] * src[%u] = %u * %u\n", */
        /*                   NTT_LAYER_STRIDE*i+t, */
        /*                   exp, */
        /*                   NTT_LAYER_STRIDE*j+t, */
        /*                   roots[exp], */
        /*                   src[NTT_LAYER_STRIDE*j+t]); */
        /* } */

        cur = mod_mul_s32(src[NTT_LAYER_STRIDE * j + t], roots[exp], modulus);

        if (!sub)
        {
          tmp = mod_add_s32(tmp, cur, modulus);
        }
        else
        {
          tmp = mod_sub_s32(tmp, cur, modulus);
        }
      }
      res[NTT_LAYER_STRIDE * i + t] = tmp;
    }
  }

  memcpy(src, res, sizeof(res));
}

#if !defined(NTT_INCOMPLETE)
void buf_bitrev_4(int32_t *src)
{
  for (unsigned i = 0; i < NTT_SIZE; i += 16)
  {
    int32_t tmp[16];
    for (unsigned t = 0; t < 16; t++)
    {
      tmp[t] = src[i + t];
    }

    for (unsigned t0 = 0; t0 < 4; t0++)
    {
      for (unsigned t1 = 0; t1 < 4; t1++)
      {
        src[i + t0 * 4 + t1] = tmp[t1 * 4 + t0];
      }
    }
  }
}
#endif /* NTT_INCOMPLETE */

#if !defined(TEST_CORE_ONLY)
uint64_t hal_get_time();


void hal_pmu_enable();
void hal_pmu_disable();
void hal_pmu_start_pmu_stats(pmu_stats *s);
void hal_pmu_finish_pmu_stats(pmu_stats *s);
void hal_pmu_send_stats(char *s, pmu_stats const *stats);

int run_test_ntt()
{
  debug_test_start("NTT u32");
  int32_t src[NTT_SIZE] __attribute__((aligned(16)));
  int32_t src_copy[NTT_SIZE] __attribute__((aligned(16)));

  /* Setup input */
  fill_random_u32((uint32_t *)src, NTT_SIZE);
  mod_reduce_buf_s32(src, NTT_SIZE, modulus);

  /* Step 1: Reference NTT */
  memcpy(src_copy, src, sizeof(src));
  ntt_u32_C(src_copy);
  mod_reduce_buf_s32(src_copy, NTT_SIZE, modulus);
#if !defined(NTT_INCOMPLETE)
  buf_bitrev_4(src_copy);
#endif /* !NTT_INCOMPLETE */
  /* Step 2: MVE-based NTT */
  ntt_u32_mve(src);

  mod_reduce_buf_s32(src, NTT_SIZE, modulus);
  if (compare_buf_u32((uint32_t const *)src, (uint32_t const *)src_copy,
                      NTT_SIZE) != 0)
  {
    debug_print_buf_s32(src_copy, NTT_SIZE, "Reference");
    debug_print_buf_s32(src, NTT_SIZE, "MVE");
    debug_test_fail();
    return (1);
  }

  debug_test_ok();

  hal_pmu_enable();

  pmu_stats stats;

  hal_pmu_start_pmu_stats(&stats);
  for (size_t cnt = 0; cnt < REPEAT; cnt++)
  {
    ntt_u32_mve(src);
  }
  hal_pmu_finish_pmu_stats(&stats);
  /*Workaround for RA8M1 (cannot print %f)*/
  debug_printf("ntt_u32_mve: %lu.%02lu cycles (avg)\n",
               (unsigned long)(stats.pmu_cycles / REPEAT),
               (unsigned long)(((stats.pmu_cycles % REPEAT) * 100) / REPEAT));
#if defined(ENABLE_PMU_STATS)
  hal_pmu_send_stats("ntt_u32_mve", &stats);
#endif

  hal_pmu_disable();
  return (0);
}
#else  /* TEST_CORE_ONLY */
int run_test_ntt()
{
  int32_t src[NTT_SIZE] __attribute__((aligned(16)));
  debug_test_start("NTT forward u32");
  measure_start();
  ntt_u32_mve(src);
  measure_end();
  debug_test_ok();
  return (0);
}
#endif /* TEST_CORE_ONLY */

#if !defined(TEST_CORE_ONLY)
int32_t ntt_root_for_block(int layer, int block)
{
  int log;
  int32_t root;
  log = bit_reverse((1 << layer) + block, NTT_LAYERS);
  root = mod_pow_s32(base_root, log, modulus);
  // printf("[%d,%d]: %d ^ %d = %d\n", layer, block, base_root, log, root );
  return (root);
}

int run_test_ntt_incomplete_double()
{
  debug_test_start("NTT incomplete double u32");
  int32_t src[NTT_SIZE] __attribute__((aligned(16)));
  int32_t src_copy[NTT_SIZE] __attribute__((aligned(16)));

  int32_t dst_mve[2 * NTT_SIZE] __attribute__((aligned(16)));
  int32_t dst_C[2 * NTT_SIZE] __attribute__((aligned(16)));

  /* Setup input */
  fill_random_u32((uint32_t *)src, NTT_SIZE);
  mod_reduce_buf_s32(src, NTT_SIZE, modulus);

  /* Step 1: Reference NTT */
  memcpy(src_copy, src, sizeof(src));
  ntt_u32_C(src_copy);

  /* Duplicate output of reference NTT */
  for (unsigned idx = 0; idx < NTT_SIZE; idx += 4)
  {
    int32_t root;
    unsigned block_idx = idx / 16;
    unsigned idx_in_block = (idx / 4) % 4;

    switch (idx_in_block)
    {
      case 0:
        root = 1 * ntt_root_for_block(5, 2 * block_idx + 0);
        break;
      case 1:
        root = -1 * ntt_root_for_block(5, 2 * block_idx + 0);
        break;
      case 2:
        root = 1 * ntt_root_for_block(5, 2 * block_idx + 1);
        break;
      case 3:
        root = -1 * ntt_root_for_block(5, 2 * block_idx + 1);
        break;
    }

    // printf("Twist [%u-%u] by %d\n", idx, idx+3, root );

    dst_C[2 * idx + 0] = src_copy[idx + 0];
    dst_C[2 * idx + 1] = src_copy[idx + 1];
    dst_C[2 * idx + 2] = src_copy[idx + 2];
    dst_C[2 * idx + 3] = src_copy[idx + 3];
    dst_C[2 * idx + 4] = mod_mul_s32(src_copy[idx + 0], root, modulus);
    dst_C[2 * idx + 5] = mod_mul_s32(src_copy[idx + 1], root, modulus);
    dst_C[2 * idx + 6] = mod_mul_s32(src_copy[idx + 2], root, modulus);
    dst_C[2 * idx + 7] = mod_mul_s32(src_copy[idx + 3], root, modulus);
  }

  /* Step 2: MVE-based NTT */
  measure_start();
  ntt_incomplete_double_u32_mve((uint32_t *)src, (uint32_t *)dst_mve);
  measure_end();

  mod_reduce_buf_s32(dst_C, 2 * NTT_SIZE, modulus);
  mod_reduce_buf_s32(dst_mve, 2 * NTT_SIZE, modulus);

  if (compare_buf_u32((uint32_t const *)dst_mve, (uint32_t const *)dst_C,
                      2 * NTT_SIZE) != 0)
  {
    debug_print_buf_s32(dst_C, 2 * NTT_SIZE, "Reference");
    debug_print_buf_s32(dst_mve, 2 * NTT_SIZE, "MVE");
    debug_test_fail();
    return (1);
  }
  debug_test_ok();

  return (0);
}
#else  /* TEST_CORE_ONLY */
int run_test_ntt_incomplete_double()
{
  int32_t src[NTT_SIZE] __attribute__((aligned(16)));
  int32_t dst_mve[2 * NTT_SIZE] __attribute__((aligned(16)));
  debug_test_start("NTT incomplete double u32");

  measure_start();
  ntt_incomplete_double_u32_mve(src, dst_mve);
  measure_end();

  debug_test_ok();
  return (0);
}
#endif /* TEST_CORE_ONLY */

#if !defined(TEST_CORE_ONLY)
int run_test_ntt_fwd_inv()
{
  debug_test_start("NTT forward-inverse u32");
  int32_t src[NTT_SIZE] __attribute__((aligned(16)));
  int32_t src_copy[NTT_SIZE] __attribute__((aligned(16)));

  /* Setup input */
  fill_random_u32((uint32_t *)src, NTT_SIZE);
  mod_reduce_buf_s32_signed(src, NTT_SIZE, modulus);

  /* Remember original buffer */
  memcpy(src_copy, src, sizeof(src));

  /* Step 1: Forward NTT */
  ntt_u32_mve(src);
  /* Step 2: Inverse NTT */

  mod_reduce_buf_s32(src, NTT_SIZE, modulus);

  measure_start();
  inv_ntt_u32_mve(src);
  measure_end();

#if defined(USE_MANUAL_VARIANTS)
  /* Remove twist after inverse NTT
   * TODO: This needs to go into the inverse-NTT itself. */
  pow_2k_inv = mod_pow_s32((modulus + 1) / 2, NTT_INCOMPLETE_LAYERS, modulus);
  for (unsigned idx = 0; idx < NTT_SIZE; idx++)
  {
    src[idx] = mod_mul_s32(src[idx], pow_2k_inv, modulus);
  }

  mod_reduce_buf_s32_signed(src, NTT_SIZE, modulus);
#endif

  /* for( unsigned idx=0; idx < NTT_SIZE / 2; idx += 4 ) */
  /* { */
  /*     mul_q_u32( src + idx, pow_2k_inv, 4 ); */
  /* } */

  int max_frac_low = 0;
  int max_frac_high = 0;
  for (unsigned idx = 0; idx < NTT_SIZE; idx += 16)
  {
    int64_t val = src[idx];
    int frac = (val * 1000) / modulus;
    printf("[%u]: %lld approx (%d/1000) * modulus\n", idx, val, frac);

    if ((idx >= NTT_SIZE / 2) && frac > max_frac_high)
    {
      max_frac_high = frac;
    }
    if ((idx < NTT_SIZE / 2) && frac > max_frac_low)
    {
      max_frac_low = frac;
    }
  }
  printf("Max frac high: %d / 1000\n", max_frac_high);
  printf("Max frac low:  %d / 1000\n", max_frac_low);

  if (compare_buf_u32((uint32_t const *)src, (uint32_t const *)src_copy,
                      NTT_SIZE) != 0)
  {
    for (unsigned idx = 0; idx < NTT_SIZE; idx++)
    {
      if (src[idx] != src_copy[idx])
      {
        debug_printf("Fail at %u\n", idx);
      }
      else
      {
        debug_printf("OK at %u\n", idx);
      }
    }

    debug_print_buf_s32(src_copy, NTT_SIZE, "Original");
    debug_print_buf_s32(src, NTT_SIZE, "Fwd-Inv");
    debug_test_fail();
    return (1);
  }
  debug_test_ok();

  return (0);
}
#else  /* TEST_CORE_ONLY */
int run_test_ntt_fwd_inv()
{
  int32_t src[NTT_SIZE] __attribute__((aligned(16)));
  debug_test_start("NTT inverse u32");
  measure_start();
  inv_ntt_u32_mve(src);
  measure_end();
  debug_test_ok();
  return (0);
}
#endif /* TEST_CORE_ONLY */

int main(void)
{
  int ret = 0;

#if defined(TEST_NTT)
  ret |= run_test_ntt();
  if (ret != 0)
  {
    return (1);
  }
#endif /* TEST_NTT */

#if defined(TEST_NTT_DOUBLE)
  ret |= run_test_ntt_incomplete_double();
  if (ret != 0)
  {
    return (1);
  }
#endif /* TEST_NTT_DOUBLE */

#if defined(TEST_NTT_FWD_INV)
  ret |= run_test_ntt_fwd_inv();
  if (ret != 0)
  {
    return (1);
  }
#endif /* TEST_NTT_FWD_INV */

  debug_printf("ALL GOOD!\n");

  return (ret);
}
