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
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
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

#ifndef CRT_CONST_H
#define CRT_CONST_H

#define BITSIZE 4096

#if BITSIZE == 4096

#define CRT_32_P                         108643009
#define CRT_32_P_INV_U32                 3479293249
#define CRT_32_P_ROOT                    640922
#define CRT_32_P_TWISTED                 1326502178
#define CRT_32_P_REFINED_BARRETT_SHIFT   25
#define CRT_32_Q                         88299073
#define CRT_32_Q_INV_U32                 2066201025
#define CRT_32_Q_ROOT                    4883425
#define CRT_32_P_INV_MOD_Q               829
#define CRT_32_P_INV_MOD_Q_TWISTED       1321320529
#define CRT_32_P_Q_REFINED_BARRETT_SHIFT 15

#define CRT_32_SIZE 384
#define NTT_SIZE    384

#else /* BITSIZE 2048 */

#define CRT_32_P                         108643009
#define CRT_32_P_INV_U32                 3479293249
#define CRT_32_P_ROOT                    1793055
#define CRT_32_P_TWISTED                 1326502178
#define CRT_32_P_REFINED_BARRETT_SHIFT   25
#define CRT_32_Q                         88299073
#define CRT_32_Q_INV_U32                 2066201025
#define CRT_32_Q_ROOT                    9670361
#define CRT_32_P_INV_MOD_Q               829
#define CRT_32_P_INV_MOD_Q_TWISTED       1321320529
#define CRT_32_P_Q_REFINED_BARRETT_SHIFT 15

#define CRT_32_SIZE 192
#define NTT_SIZE    192

#endif

#endif /* CRT_CONST_H */
