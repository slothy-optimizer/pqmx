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

#include <string.h>
#include <stdlib.h>
#include <time.h>

#include "chunk_const.h"
#include "chunk.h"

void radix11_reduce_x4_C(uint32_t *data)
{
  uint32_t acc, cur;
  for (size_t j = 0; j < 4; j++)
  {
    acc = 0;
    for (size_t i = 0; i < SIZE / 4; i++)
    {
      cur = data[i];
      acc = cur + (acc >> 11);
      data[i] = acc & 0x7FF;
    }
    data += SIZE / 4 + 1;
  }
}

#define MAKE_TEST(funcname, top_clear)                         \
  int test_radix11_reduce_x4_##funcname()                      \
  {                                                            \
    uint32_t data[SIZE + 3];                                   \
    uint32_t data_copy[SIZE + 3];                              \
                                                               \
    debug_test_start("test radix11_reduce_x4_" #funcname);     \
                                                               \
    fill_random_u32(data, SIZE + 3);                           \
    /* Clear highest bit, plus potentially further bits */     \
    /* depending on the bounds assumptions of the algorithm */ \
    for (size_t i = 0; i < SIZE + 3; i++)                      \
      data[i] >>= (1 + top_clear);                             \
    memcpy(data_copy, data, sizeof(data));                     \
    measure_start();                                           \
    radix11_reduce_x4_asm_##funcname(data);                    \
    measure_end();                                             \
    radix11_reduce_x4_C(data_copy);                            \
                                                               \
    if (memcmp(data, data_copy, sizeof(data)) != 0)            \
    {                                                          \
      debug_print_buf_u32(data_copy, SIZE + 3, "ref");         \
      debug_print_buf_u32(data, SIZE + 3, "actual");           \
      for (size_t i = 0; i < SIZE + 3; i++)                    \
      {                                                        \
        if (data[i] != data_copy[i])                           \
        {                                                      \
          debug_printf("Divergence at %#04x\n", (unsigned)i);  \
        }                                                      \
      }                                                        \
      debug_test_fail();                                       \
      return (1);                                              \
    }                                                          \
                                                               \
    debug_test_ok();                                           \
    return (0);                                                \
  }

MAKE_TEST(m4, 0);
MAKE_TEST(m4_v2, 0);
MAKE_TEST(m4_v3, 0);
MAKE_TEST(lob, 0);
MAKE_TEST(lob_64bit, 0);
MAKE_TEST(mve_basic, 0);
MAKE_TEST(mve_vmla, 0);
MAKE_TEST(mve_vmla_v2, 0);
MAKE_TEST(mve_vmla_v3, 0);
MAKE_TEST(mve_vmla_v4, 0);

// vqdmlah-based chunking requires smaller inputs
MAKE_TEST(mve_vqdmlah, 1);
MAKE_TEST(mve_vqdmlah_v3, 1);
MAKE_TEST(mve_vqdmlah_v4, 1);
MAKE_TEST(mve_vqdmlah_v5, 1);

int main(void)
{
  int ret = 0;

  ret |= test_radix11_reduce_x4_m4();
  ret |= test_radix11_reduce_x4_m4_v2();
  ret |= test_radix11_reduce_x4_m4_v3();
  ret |= test_radix11_reduce_x4_lob();
  ret |= test_radix11_reduce_x4_lob_64bit();

  ret |= test_radix11_reduce_x4_mve_basic();
  ret |= test_radix11_reduce_x4_mve_vmla();
  ret |= test_radix11_reduce_x4_mve_vmla_v2();
  ret |= test_radix11_reduce_x4_mve_vmla_v3();
  ret |= test_radix11_reduce_x4_mve_vmla_v4();

  ret |= test_radix11_reduce_x4_mve_vqdmlah();
  ret |= test_radix11_reduce_x4_mve_vqdmlah_v3();
  ret |= test_radix11_reduce_x4_mve_vqdmlah_v4();
  ret |= test_radix11_reduce_x4_mve_vqdmlah_v5();

  if (ret == 0)
  {
    debug_printf("ALL GOOD!\n");
  }
  return (ret);
}
