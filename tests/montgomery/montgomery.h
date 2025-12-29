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

#ifndef MONTGOMERY_H
#define MONTGOMERY_H

/* This must be provided by the test, and define the MODULUS_XXX macro
 * constants below, as well as the VECTOR_LENGTH. */
#include "montgomery_const.h"

#define SIZE VECTOR_LENGTH

const int16_t mod_q16 = MODULUS_Q16;
const uint16_t mod_q16_inv_u16 = MODULUS_Q16_INV_U16;
const uint16_t mod_q16_inv_u16_neg = MODULUS_Q16_INV_U16_NEG;
const uint16_t mod_u16_inv_q16 = MODULUS_U16_INV_Q16;

const int32_t mod_q32 = MODULUS_Q32;
const uint32_t mod_q32_inv_u32 = MODULUS_Q32_INV_U32;
const uint32_t mod_q32_inv_u32_neg = MODULUS_Q32_INV_U32_NEG;

#endif /* MONTGOMERY_H */
