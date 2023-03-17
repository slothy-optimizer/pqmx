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

#ifndef NTT_CONST_H
#define NTT_CONST_H

#define NTT_384_PARAM_SET 6

#if NTT_384_PARAM_SET == 1
#define NTT_PRIME            33556993
#define NTT_PRIME_TWISTED    375649793
#define NTT_ROOT             15047299
#endif

#if NTT_384_PARAM_SET == 2
#define NTT_PRIME            45387457
#define NTT_PRIME_TWISTED    450429249
#define NTT_ROOT             923104
#define NTT_ROOT_INCOMPLETE
#endif

#if NTT_384_PARAM_SET == 3
#define NTT_PRIME            106117153
#define NTT_PRIME_TWISTED    2586463201
#define NTT_ROOT             1392340
#define NTT_ROOT_INCOMPLETE
#endif

#if NTT_384_PARAM_SET == 4
#define NTT_PRIME            88299073
#define NTT_PRIME_TWISTED    2066201025
#define NTT_ROOT             4883425
#define NTT_ROOT_INCOMPLETE
#endif

#if NTT_384_PARAM_SET == 5
#define NTT_PRIME            108643009
#define NTT_PRIME_TWISTED    3479293249
#define NTT_ROOT             640922
#define NTT_ROOT_INCOMPLETE
#endif

#if NTT_384_PARAM_SET == 6
#define NTT_PRIME            128919937
#define NTT_PRIME_TWISTED    1521161857
#define NTT_ROOT             4666088
#define NTT_ROOT_INCOMPLETE
#endif

#if NTT_384_PARAM_SET == 7
#define NTT_PRIME            114826273
#define NTT_PRIME_TWISTED    553543649
#define NTT_ROOT             2551686
#define NTT_ROOT_INCOMPLETE
#endif

#define NTT_SIZE               384
#define NTT_INCOMPLETE_SIZE    (NTT_SIZE / 4)
#define NTT_LAYER_STRIDE       4

#if !defined(NTT_ROOT_INCOMPLETE)
#define NTT_ROOT_ORDER         NTT_SIZE
#else
#define NTT_ROOT_ORDER         NTT_INCOMPLETE_SIZE
#endif

#endif /* NTT_CONST_H */
