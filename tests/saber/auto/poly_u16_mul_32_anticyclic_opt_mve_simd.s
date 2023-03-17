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
.type poly_u16_mul_32_anticyclic_opt_mve_simd, %function
.global poly_u16_mul_32_anticyclic_opt_mve_simd
poly_u16_mul_32_anticyclic_opt_mve_simd:
push {r4-r11,lr}
vpush {d0-d15}
ldrh r14, [r1, #30]
vldrh.u16 Q4, [r2, #0]
vmul.u16 Q1, Q4, r14
ldrh r11, [r1, #46]
vldrh.u16 Q5, [r2, #16]
vmul.u16 Q2, Q4, r11
ldrh r10, [r1, #62]
vldrh.u16 Q6, [r2, #32]
vmul.u16 Q3, Q4, r10
ldrh r9, [r1, #14]
vldrh.u16 Q7, [r2, #48]
vmla.s16 Q3, Q5, r11
neg r10, r10
vmla.s16 Q2, Q5, r14
neg r11, r11
vmla.s16 Q3, Q6, r14
neg r14, r14
vmla.s16 Q3, Q7, r9
ldrh r8, [r1, #12]
vmul.u16 Q0, Q7, r14
ldrh r7, [r1, #28]
vmla.s16 Q0, Q6, r11
ldrh r6, [r1, #44]
vmla.s16 Q0, Q5, r10
ldrh r5, [r1, #60]
vmla.s16 Q0, Q4, r9
vmla.s16 Q1, Q5, r9
vshlc Q3, r12, #16
vmla.s16 Q1, Q7, r11
vmla.s16 Q1, Q6, r10
neg r12, r12
vmla.s16 Q2, Q6, r9
vshlc Q0, r12, #16
vmla.s16 Q2, Q7, r10
vshlc Q1, r12, #16
vmla.s16 Q1, Q4, r7
vshlc Q2, r12, #16
vmla.s16 Q2, Q4, r6
vmov.u16 Q3[0], r12
vmla.s16 Q3, Q4, r5
vmla.s16 Q3, Q5, r6
neg r5, r5
vmla.s16 Q2, Q5, r7
neg r6, r6
vmla.s16 Q3, Q6, r7
neg r7, r7
vmla.s16 Q3, Q7, r8
ldrh r14, [r1, #10]
vmla.s16 Q0, Q7, r7
ldrh r11, [r1, #26]
vmla.s16 Q0, Q6, r6
ldrh r10, [r1, #42]
vmla.s16 Q0, Q5, r5
ldrh r9, [r1, #58]
vmla.s16 Q0, Q4, r8
vmla.s16 Q1, Q5, r8
vshlc Q3, r12, #16
vmla.s16 Q1, Q7, r6
vmla.s16 Q1, Q6, r5
neg r12, r12
vmla.s16 Q2, Q6, r8
vshlc Q0, r12, #16
vmla.s16 Q2, Q7, r5
vshlc Q1, r12, #16
vmla.s16 Q1, Q4, r11
vshlc Q2, r12, #16
vmla.s16 Q2, Q4, r10
vmov.u16 Q3[0], r12
vmla.s16 Q3, Q4, r9
vmla.s16 Q3, Q5, r10
neg r9, r9
vmla.s16 Q2, Q5, r11
neg r10, r10
vmla.s16 Q3, Q6, r11
neg r11, r11
vmla.s16 Q3, Q7, r14
ldrh r8, [r1, #8]
vmla.s16 Q0, Q7, r11
ldrh r7, [r1, #24]
vmla.s16 Q0, Q6, r10
ldrh r6, [r1, #40]
vmla.s16 Q0, Q5, r9
ldrh r5, [r1, #56]
vmla.s16 Q0, Q4, r14
vmla.s16 Q1, Q5, r14
vshlc Q3, r12, #16
vmla.s16 Q1, Q7, r10
vmla.s16 Q1, Q6, r9
neg r12, r12
vmla.s16 Q2, Q6, r14
vshlc Q0, r12, #16
vmla.s16 Q2, Q7, r9
vshlc Q1, r12, #16
vmla.s16 Q1, Q4, r7
vshlc Q2, r12, #16
vmla.s16 Q2, Q4, r6
vmov.u16 Q3[0], r12
vmla.s16 Q3, Q4, r5
vmla.s16 Q3, Q5, r6
neg r5, r5
vmla.s16 Q2, Q5, r7
neg r6, r6
vmla.s16 Q3, Q6, r7
neg r7, r7
vmla.s16 Q3, Q7, r8
ldrh r14, [r1, #6]
vmla.s16 Q0, Q7, r7
ldrh r11, [r1, #22]
vmla.s16 Q0, Q6, r6
ldrh r10, [r1, #38]
vmla.s16 Q0, Q5, r5
ldrh r9, [r1, #54]
vmla.s16 Q0, Q4, r8
vmla.s16 Q1, Q5, r8
vshlc Q3, r12, #16
vmla.s16 Q1, Q7, r6
vmla.s16 Q1, Q6, r5
neg r12, r12
vmla.s16 Q2, Q6, r8
vshlc Q0, r12, #16
vmla.s16 Q2, Q7, r5
vshlc Q1, r12, #16
vmla.s16 Q1, Q4, r11
vshlc Q2, r12, #16
vmla.s16 Q2, Q4, r10
vmov.u16 Q3[0], r12
vmla.s16 Q3, Q4, r9
vmla.s16 Q3, Q5, r10
neg r9, r9
vmla.s16 Q2, Q5, r11
neg r10, r10
vmla.s16 Q3, Q6, r11
neg r11, r11
vmla.s16 Q3, Q7, r14
ldrh r8, [r1, #4]
vmla.s16 Q0, Q7, r11
ldrh r7, [r1, #20]
vmla.s16 Q0, Q6, r10
ldrh r6, [r1, #36]
vmla.s16 Q0, Q5, r9
ldrh r5, [r1, #52]
vmla.s16 Q0, Q4, r14
vmla.s16 Q1, Q5, r14
vshlc Q3, r12, #16
vmla.s16 Q1, Q7, r10
vmla.s16 Q1, Q6, r9
neg r12, r12
vmla.s16 Q2, Q6, r14
vshlc Q0, r12, #16
vmla.s16 Q2, Q7, r9
vshlc Q1, r12, #16
vmla.s16 Q1, Q4, r7
vshlc Q2, r12, #16
vmla.s16 Q2, Q4, r6
vmov.u16 Q3[0], r12
vmla.s16 Q3, Q4, r5
vmla.s16 Q3, Q5, r6
neg r5, r5
vmla.s16 Q2, Q5, r7
neg r6, r6
vmla.s16 Q3, Q6, r7
neg r7, r7
vmla.s16 Q3, Q7, r8
ldrh r14, [r1, #2]
vmla.s16 Q0, Q7, r7
ldrh r11, [r1, #18]
vmla.s16 Q0, Q6, r6
ldrh r10, [r1, #34]
vmla.s16 Q0, Q5, r5
ldrh r9, [r1, #50]
vmla.s16 Q0, Q4, r8
vmla.s16 Q1, Q5, r8
vshlc Q3, r12, #16
vmla.s16 Q1, Q7, r6
vmla.s16 Q1, Q6, r5
neg r12, r12
vmla.s16 Q2, Q6, r8
vshlc Q0, r12, #16
vmla.s16 Q2, Q7, r5
vshlc Q1, r12, #16
vmla.s16 Q1, Q4, r11
vshlc Q2, r12, #16
vmla.s16 Q2, Q4, r10
vmov.u16 Q3[0], r12
vmla.s16 Q3, Q4, r9
vmla.s16 Q3, Q5, r10
neg r9, r9
vmla.s16 Q2, Q5, r11
neg r10, r10
vmla.s16 Q3, Q6, r11
neg r11, r11
vmla.s16 Q3, Q7, r14
ldrh r8, [r1, #0]
vmla.s16 Q0, Q7, r11
ldrh r7, [r1, #16]
vmla.s16 Q0, Q6, r10
ldrh r6, [r1, #32]
vmla.s16 Q0, Q5, r9
ldrh r5, [r1, #48]
vmla.s16 Q0, Q4, r14
vmla.s16 Q1, Q5, r14
vshlc Q3, r12, #16
vmla.s16 Q1, Q7, r10
vmla.s16 Q1, Q6, r9
neg r12, r12
vmla.s16 Q2, Q6, r14
vshlc Q0, r12, #16
vmla.s16 Q2, Q7, r9
vshlc Q1, r12, #16
vmla.s16 Q1, Q4, r7
vshlc Q2, r12, #16
vmla.s16 Q2, Q4, r6
vmov.u16 Q3[0], r12
vmla.s16 Q3, Q4, r5
vmla.s16 Q3, Q5, r6
neg r5, r5
vmla.s16 Q2, Q5, r7
neg r6, r6
vmla.s16 Q3, Q6, r7
neg r7, r7
vmla.s16 Q3, Q7, r8
ldrh r14, [r1, #-2]
vmla.s16 Q0, Q7, r7
ldrh r11, [r1, #14]
vmla.s16 Q0, Q6, r6
ldrh r10, [r1, #30]
vmla.s16 Q0, Q5, r5
ldrh r9, [r1, #46]
vmla.s16 Q0, Q4, r8
vmla.s16 Q1, Q5, r8
vstrh.u16 Q3, [r0,#(48)]
vmla.s16 Q1, Q7, r6
vstrh.u16 Q0, [r0,#(0)]
vmla.s16 Q1, Q6, r5
neg r12, r12
vmla.s16 Q2, Q6, r8
vstrh.u16 Q1, [r0,#(16)]
vmla.s16 Q2, Q7, r5
vstrh.u16 Q2, [r0,#(32)]
vpop {d0-d15}
pop {r4-r11,lr}
bx lr