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

#include <stdint.h>
#include <misc.h>
#include <hal.h>

/*
 * Some external references to auto-generated assembly.
 */

extern void unpack_22_4224_192(uint32_t *dst, uint32_t const *src);
extern void unpack_22_4096_192(uint32_t *dst, uint32_t const *src);

#define unpack_asm unpack_22_4096_192
#define INPUT_BITS 4096
#define PACKED_SIZE (INPUT_BITS / 32)
#define UNPACKED_SIZE 192

static void unpack_ref(uint32_t *dst, uint32_t const *src) {
  const uint8_t *const srcb = (uint8_t const *)src;
  uint32_t mask = (1 << 22) - 1;
  unsigned i, actr = 0;
  uint32_t at = 0;
  int abits = 0;

  for (i = 0; i < sizeof(uint32_t) * PACKED_SIZE; i++) {
    at += (uint32_t)srcb[i] << abits;
    abits += 8;
    if (abits > 22) {
      dst[actr++] = at & mask;
      at >>= 22;
      abits -= 22;
    }
  }
  dst[actr++] = at;
  for (; actr < UNPACKED_SIZE; actr++)
    dst[actr] = 0;
}

int test_unpack() {
  uint32_t in[PACKED_SIZE];
  uint32_t out_C[UNPACKED_SIZE];
  uint32_t out_asm[UNPACKED_SIZE];

  debug_test_start("Unpack");

  fill_random_u32(in, PACKED_SIZE);
  fill_random_u32(out_C, UNPACKED_SIZE);
  fill_random_u32(out_asm, UNPACKED_SIZE);

  debug_printf("Compute reference...\n");
  unpack_ref(out_C, in);
  debug_printf("Compute asm...\n");
  unpack_asm(out_asm, in);

  debug_printf("Compare...\n");
  if (compare_buf_u32(out_C, out_asm, UNPACKED_SIZE) != 0) {
    debug_print_buf_u32(out_C, UNPACKED_SIZE, "ref");
    debug_print_buf_u32(out_asm, UNPACKED_SIZE, "asm");

    debug_test_fail();
    return (1);
  }

  debug_test_ok();
  return (0);
}

int main(void) {
  int ret;

  ret = test_unpack();
  if (ret != 0)
    return (1);
  debug_printf("ALL GOOD!\n");
  return (0);
}
