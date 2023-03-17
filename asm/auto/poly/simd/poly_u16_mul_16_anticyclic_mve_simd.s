///
/// Copyright (c) 2021 Arm Limited
/// SPDX-License-Identifier: MIT
///
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
///
/// The above copyright notice and this permission notice shall be included in all
/// copies or substantial portions of the Software.
///
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
/// SOFTWARE.
///
///
/// This assembly code has been auto-generated.
/// Don't modify it directly.
///
.syntax unified
.type poly_u16_mul_16_anticyclic_mve_simd, %function
.global poly_u16_mul_16_anticyclic_mve_simd
poly_u16_mul_16_anticyclic_mve_simd:
push {r4-r11,lr}
vpush {d8-d15}
vmov.u16 Q2, #0
mov r12, #0
vldrh.u16 Q3, [r2, #(2 * 0)]
vldrh.u16 Q4, [r2, #(2 * 8)]
vneg.s16 Q5, Q3
ldrd r14, r11, [r1, #8]
ldrd r10, r9, [r1, #24]
vmul.u16 Q0, Q4, r14
vmla.s16 Q0, Q3, r10
vmul.u16 Q1, Q4, r10
vmla.s16 Q1, Q5, r14
vshlc Q0, r12, #32
vshlc Q1, r12, #32
vshlc Q2, r12, #32
ldrd r8, r7, [r1, #0]
ldrd r6, r5, [r1, #16]
vmla.s16 Q0, Q4, r7
vmla.s16 Q0, Q3, r5
vmla.s16 Q1, Q4, r5
vmla.s16 Q1, Q5, r7
vshlc Q0, r12, #32
vshlc Q1, r12, #32
vshlc Q2, r12, #32
vmla.s16 Q0, Q4, r8
vmla.s16 Q0, Q3, r6
vmla.s16 Q1, Q4, r6
vmla.s16 Q1, Q5, r8
vshlc Q0, r12, #32
vshlc Q1, r12, #32
vshlc Q2, r12, #32
vneg.s16 Q5, Q4
vmla.s16 Q0, Q3, r11
vmla.s16 Q0, Q5, r9
vmla.s16 Q1, Q4, r11
vmla.s16 Q1, Q3, r9
vsub.u16 Q0, Q0, Q2
vmov.u16 Q2, #0
vshlc Q0, r12, #16
vshlc Q1, r12, #16
vshlc Q2, r12, #16
asrl r14, r11, #16
asrl r10, r9, #16
vmla.s16 Q0, Q3, r14
vmla.s16 Q0, Q5, r10
vmla.s16 Q1, Q4, r14
vmla.s16 Q1, Q3, r10
vshlc Q0, r12, #32
vshlc Q1, r12, #32
vshlc Q2, r12, #32
asrl r8, r7, #16
asrl r6, r5, #16
vmla.s16 Q0, Q3, r7
vmla.s16 Q0, Q5, r5
vmla.s16 Q1, Q4, r7
vmla.s16 Q1, Q3, r5
vshlc Q0, r12, #32
vshlc Q1, r12, #32
vshlc Q2, r12, #32
vmla.s16 Q0, Q3, r8
vmla.s16 Q0, Q5, r6
vmla.s16 Q1, Q4, r8
vmla.s16 Q1, Q3, r6
vshlc Q0, r12, #32
vshlc Q1, r12, #32
vshlc Q2, r12, #32
neg r9, r9
vmla.s16 Q0, Q3, r9
vmla.s16 Q0, Q5, r11
vmla.s16 Q1, Q4, r9
vmla.s16 Q1, Q3, r11
vsub.u16 Q0, Q0, Q2
vstrh.u16 Q0, [r0,#(0)]
vstrh.u16 Q1, [r0,#(16)]
vpop {d8-d15}
pop {r4-r11,lr}
bx lr