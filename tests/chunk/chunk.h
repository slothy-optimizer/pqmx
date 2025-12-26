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

#ifndef CHUNK_H
#define CHUNK_H

#include "chunk_const.h"

void radix11_reduce_x4_asm_m4(uint32_t *data);
void radix11_reduce_x4_asm_m4_v2(uint32_t *data);
void radix11_reduce_x4_asm_m4_v3(uint32_t *data);
void radix11_reduce_x4_asm_lob(uint32_t *data);
void radix11_reduce_x4_asm_lob_64bit(uint32_t *data);

void radix11_reduce_x4_asm_mve_basic(uint32_t *data);
void radix11_reduce_x4_asm_mve_vmla(uint32_t *data);
void radix11_reduce_x4_asm_mve_vmla_v2(uint32_t *data);
void radix11_reduce_x4_asm_mve_vmla_v3(uint32_t *data);
void radix11_reduce_x4_asm_mve_vmla_v4(uint32_t *data);
void radix11_reduce_x4_asm_mve_vqdmlah(uint32_t *data);
void radix11_reduce_x4_asm_mve_vqdmlah_v2(uint32_t *data);
void radix11_reduce_x4_asm_mve_vqdmlah_v3(uint32_t *data);
void radix11_reduce_x4_asm_mve_vqdmlah_v4(uint32_t *data);
void radix11_reduce_x4_asm_mve_vqdmlah_v5(uint32_t *data);


#endif /* CHUNK_H */
