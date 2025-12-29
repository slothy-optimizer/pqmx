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

#ifndef MONTGOMERY_CONST_H
#define MONTGOMERY_CONST_H

#define MONTGOMERY_PARAM_SET 3

#if MONTGOMERY_PARAM_SET == 0
#define MODULUS_Q32 33556993
#define MODULUS_Q32_INV_U32 375649793
#define MODULUS_Q32_INV_U32_NEG -375649793
#endif

#if MONTGOMERY_PARAM_SET == 1
#define MODULUS_Q32 33564673
#define MODULUS_Q32_INV_U32 71292929
#define MODULUS_Q32_INV_U32_NEG -71292929
#endif

#if MONTGOMERY_PARAM_SET == 2
#define MODULUS_Q32 128919937
#define MODULUS_Q32_INV_U32 1521161857
#define MODULUS_Q32_INV_U32_NEG -1521161857
#endif

#if MONTGOMERY_PARAM_SET == 3
#define MODULUS_Q32 114826273
#define MODULUS_Q32_INV_U32 553543649
#define MODULUS_Q32_INV_U32_NEG -553543649
#endif

#if !defined(VECTOR_LENGTH)
/* Number of elements (16-bit or 32-bit, depending on the function)
 * in the vectors operated on by the assembly routines.
 *
 * TODO: Allow this to be specified at runtime? */
#define VECTOR_LENGTH 32
#endif

#if !defined(MODULUS_Q16)
#define MODULUS_Q16 3329
#define MODULUS_Q16_INV_U16 -3327
#define MODULUS_Q16_INV_U16_NEG +3327
#define MODULUS_U16_INV_Q16 169
#endif

#endif /* MONTGOMERY_CONST_H */
