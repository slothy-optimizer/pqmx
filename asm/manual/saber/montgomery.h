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

#include "montgomery_const.h"

#define SIZE VECTOR_LENGTH

const int16_t mod_q16 = MODULUS_Q16;
const uint16_t mod_q16_inv_u16 = MODULUS_Q16_INV_U16;
const uint16_t mod_q16_inv_u16_neg = MODULUS_Q16_INV_U16_NEG;
const uint16_t mod_u16_inv_q16 = MODULUS_U16_INV_Q16;

const int32_t mod_q32 = MODULUS_Q32;
const uint32_t mod_q32_inv_u32 = MODULUS_Q32_INV_U32;
const uint32_t mod_q32_inv_u32_neg = MODULUS_Q32_INV_U32_NEG;

/* Element-wise multiplication of two vectors of polynomials over
 * F_q[X]/(X^2-1), where q is the 32-bit prime mod_q32.
 * The dimension of the vectors is VECTOR_LENGTH/2 (so as a vector
 * of 32-bit values, they are of length VECTOR_LENGTH). */
void cyclic_mul_u32_mve(void const *src_a, void const *src_b, void *dst);

/* Perform element-wise multiplication of two pairs of elements of
 * F_q[X]/(X^4-1), where q is the 32-bit prime mod_q32.
 *
 * This is the base-case for the variable-length multiplication
 * provided by cyclic_mul_deg4_u32_alt_mve(). */
void cyclic_mul_deg4_u32_mve(void const *src_a, void const *src_b, void *dst);

/* Element-wise multiplication of two vectors of polynomials over
 * F_q[X]/(X^4-1), where q is the 32-bit prime mod_q32.
 * The dimension of the vectors is VECTOR_LENGTH/4 (so as a vector
 * of 32-bit values, they are of length VECTOR_LENGTH). */
void cyclic_mul_deg4_u32_alt_mve(void const *src_a, void const *src_b,
                                 void *dst);

/* Perform element-wise multiplication of two quadruples of elements of
 * F_q[X]/(X^2-1), where q is the 16-bit prime mod_q16.
 *
 * This is the base-case for the variable-length multiplication
 * provided by cyclic_mul_u16_mve(). */
void cyclic_mul_u16_core_mve(void const *src_a, void const *src_b, void *dst);


/* Element-wise multiplication of two vectors of polynomials over
 * F_q[X]/(X^2-1), where q is the 16-bit prime mod_q16.
 * The dimension of the vectors is VECTOR_LENGTH/2 (so as a vector
 * of 16-bit values, they are of length VECTOR_LENGTH). */
void cyclic_mul_u16_mve(void const *src_a, void const *src_b, void *dst);

/* TODO: Document */
void montgomery_u16_core_mve(void const *src_a, void const *src_b, void *dst);

/* TODO: Document */
void montgomery_u16_round_mve(void const *src_a, void const *src_b, void *dst);

/* TODO: Document */
void montgomery_pt_u32_odd_mve(void const *src_a, void const *src_b, void *dst);

/* TODO: Document */
void montgomery_pt_u16_odd_mve(void const *src_a, void const *src_b, void *dst);

void montgomery_pt_round_acc_u32_x2_mve(void const *src_a0, void const *src_a1,
                                        void *dst_0, void *dst_1,
                                        void const *src_b);

void montgomery_pt_round_acc_u32_x4_mve(void const *src_a0, void const *src_a1,
                                        void const *src_a2, void const *src_a3,
                                        void *dst_0, void *dst_1, void *dst_2,
                                        void *dst_3, void const *src_b);

/* TODO: Document */
void montgomery_pt_u32_mve(void const *src_a, void const *src_b, void *dst);


#endif /* MONTGOMERY_H */
