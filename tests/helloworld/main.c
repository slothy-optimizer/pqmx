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

/* Adds 8 consecutive 16-bit values from memory. */
void mve_test(void *src, uint16_t *dst);

int main(void)
{
#if defined(__ARM_FEATURE_MVE)
  uint16_t test_vector[] = {1, 2, 3, 4, 5, 6, 7, 8};
  uint16_t sum;
#endif

#if defined(EXEC_TB) && defined(__ARM_FEATURE_MVE)
  EXECTB_Init();
  enableCde();
  initTick();
#endif /* EXEC_TB */

  /* Test preamble */
  debug_test_start("Hello World!");

#if defined(__ARM_FEATURE_MVE)
  measure_start();
  mve_test(test_vector, &sum);
  measure_end();

  if (sum != 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8)
  {
    debug_test_fail();
    return (1);
  }
#endif

  measure_start();
  for (int i = 0; i < 1000; i++)
  {
    __asm__("nop");
  }
  measure_end();


  debug_test_ok();
  debug_printf("ALL GOOD!\n");
  return (0);
}
