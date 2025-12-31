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

void ntt_512_u32_33564673_21224105_incomplete(uint32_t *);

#define TEST_NTT /* Enable/Disable test for NTT                    */
// #define TEST_NTT_DOUBLE          /* Enable/Disable test for NTT */
#define NTT_INCOMPLETE /* Enable to compute 6-layer incomplete NTT.      */

// #define TEST_CORE_ONLY

/*
 * Some external references to auto-generated assembly.
 */

void ntt_512_u32_33564673_21224105(int32_t *src);

#if !defined(NTT_INCOMPLETE)
#define ntt_u32_mve ntt_512_u32_33564673_21224105
#else
#define ntt_u32_mve ntt_512_u32_33564673_21224105_incomplete
#define ntt_u32_mve_double ntt_512_u32_33564673_21224105_incomplete_double
#endif

/*
 * Test cases
 */

int32_t base_root = 21224105;  // 512-th root of unity
int32_t modulus = 33564673;
int32_t modulus_inv_u32 = 71292929;

#define NTT_LAYERS 9
#define NTT_SIZE (1u << NTT_LAYERS)

#define NTT_ROOT_ORDER NTT_SIZE

#if !defined(NTT_INCOMPLETE)
#define NTT_INCOMPLETE_LAYERS 9
#else
#define NTT_INCOMPLETE_LAYERS 7
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
      unsigned const multiplier =
          bit_reverse(i, NTT_INCOMPLETE_LAYERS) * NTT_LAYER_STRIDE;

      for (unsigned j = 0; j < NTT_INCOMPLETE_SIZE; j++)
      {
        int32_t cur;
        unsigned exp = (multiplier * j) % NTT_ROOT_ORDER;
        unsigned sub = (exp >= (NTT_ROOT_ORDER / 2));
        exp = exp % (NTT_ROOT_ORDER / 2);

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

void ntt_u32_first_layer(int32_t *src)
{
  for (unsigned i = 0; i < NTT_SIZE / 2; i++)
  {
    unsigned j = i + NTT_SIZE / 2;

    int32_t add = src[i] + src[j];
    int32_t sub = src[i] - src[j];

    src[i] = add;
    src[j] = sub;
  }
}

void ntt_u32_permute_bitrev(int32_t *src)
{
  int32_t tmp[NTT_SIZE];

  for (unsigned i = 0; i < NTT_INCOMPLETE_SIZE; i++)
  {
    unsigned j = bit_reverse(i, NTT_INCOMPLETE_LAYERS);
    memcpy(tmp + i * NTT_LAYER_STRIDE, src + j * NTT_LAYER_STRIDE,
           sizeof(int32_t) * NTT_LAYER_STRIDE);
  }

  memcpy(src, tmp, sizeof(tmp));
}

void ntt_u32_permute_negate(int32_t *src)
{
  int32_t tmp[NTT_SIZE];
  for (unsigned i = 0; i < NTT_INCOMPLETE_SIZE; i++)
  {
    unsigned j = (NTT_INCOMPLETE_SIZE - i) % NTT_INCOMPLETE_SIZE;
    memcpy(tmp + i * NTT_LAYER_STRIDE, src + j * NTT_LAYER_STRIDE,
           sizeof(int32_t) * NTT_LAYER_STRIDE);
  }
  memcpy(src, tmp, sizeof(tmp));
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

int check_ntt_involutive()
{
  debug_test_start("NTT, check involution property");

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

  /* Step 2: Apply permutation */
  ntt_u32_permute_bitrev(src);
  ntt_u32_permute_negate(src);

  /* Step 3: Apply NTT again */
  ntt_u32_C(src);
  mod_reduce_buf_s32(src, NTT_SIZE, modulus);

  /* Step 4: Divide by NTT_SIZE */
  pow_2k_inv = mod_pow_s32((modulus + 1) / 2, NTT_INCOMPLETE_LAYERS, modulus);
  mod_mul_buf_const_s32(src, pow_2k_inv, src, NTT_SIZE, modulus);

  ntt_u32_permute_bitrev(src);

  mod_reduce_buf_s32(src, NTT_SIZE, modulus);

  if (compare_buf_u32((uint32_t const *)src, (uint32_t const *)src_copy,
                      NTT_SIZE) != 0)
  {
    debug_print_buf_s32(src_copy, NTT_SIZE, "Original");
    debug_print_buf_s32(src, NTT_SIZE, "NTT");
    debug_test_fail();
    return (1);
  }

  debug_test_ok();
  return (0);
}

#if !defined(TEST_CORE_ONLY)
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

  // First layer is skipped by MVE implementation
  ntt_u32_first_layer(src);
  measure_start();
  ntt_u32_mve((uint32_t *)src);
  measure_end();

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

  return (0);
}
#else
int run_test_ntt()
{
  int32_t src[NTT_SIZE] __attribute__((aligned(16)));
  measure_start();
  ntt_u32_mve((uint32_t *)src);
  measure_end();
  return (0);
}
#endif

#if defined(TEST_NTT_DOUBLE)
#if !defined(TEST_CORE_ONLY)
int32_t ntt_root_for_block(int layer, int block)
{
  int log;
  int32_t root;
  log = bit_reverse(/*(1 << layer) + */ block, NTT_LAYERS - 1);
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
        root = 1 * ntt_root_for_block(7, 2 * block_idx + 0);
        break;
      case 1:
        root = -1 * ntt_root_for_block(7, 2 * block_idx + 0);
        break;
      case 2:
        root = 1 * ntt_root_for_block(7, 2 * block_idx + 1);
        break;
      case 3:
        root = -1 * ntt_root_for_block(7, 2 * block_idx + 1);
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
  ntt_u32_mve_double(src, dst_mve);
  measure_end();

  mod_reduce_buf_s32(dst_C, 2 * NTT_SIZE, modulus);
  mod_reduce_buf_s32(dst_mve, 2 * NTT_SIZE, modulus);

  if (compare_buf_u32((uint32_t const *)dst_mve, (uint32_t const *)dst_C,
                      2 * NTT_SIZE) != 0)
  {
    debug_print_buf_s32(dst_C, 2 * NTT_SIZE, "Reference");
    debug_print_buf_s32(dst_mve, 2 * NTT_SIZE, "MVE");

    for (unsigned idx = 0; idx < 2 * NTT_SIZE; idx++)
    {
      if (dst_mve[idx] != dst_C[idx])
      {
        debug_printf("Failure at index %u: %d != %d\n", idx, dst_mve[idx],
                     dst_C[idx]);
      }
    }

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
  ntt_u32_mve_double(src, dst_mve);
  measure_end();

  debug_test_ok();
  return (0);
}
#endif /* TEST_CORE_ONLY */
#endif /* TEST_NTT_DOUBLE */

int main(void)
{
  int ret = 0;

  //    check_ntt_involutive();

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

  debug_printf("ALL GOOD!\n");

  return (ret);
}
