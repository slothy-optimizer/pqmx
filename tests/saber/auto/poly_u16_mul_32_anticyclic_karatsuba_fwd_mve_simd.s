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
.type poly_u16_mul_32_anticyclic_karatsuba_fwd_mve_simd, %function
.global poly_u16_mul_32_anticyclic_karatsuba_fwd_mve_simd
poly_u16_mul_32_anticyclic_karatsuba_fwd_mve_simd:
push {r4-r11,lr}
vpush {d0-d15}
nop
nop
nop
nop
nop
nop
vld20.u16 {Q4, Q5}, [r2]
vld21.u16 {Q4, Q5}, [r2]!
vld20.u16 {Q6, Q7}, [r2]
vld21.u16 {Q6, Q7}, [r2]!
vmov.u16 Q2, #0
mov r12, #0
ldrd r14, r11, [r1, #24]
vmul.u16 Q0, Q4, r11
ldrd r10, r9, [r1, #56]
vmul.u16 Q1, Q4, r9
vneg.s16 Q3, Q6
vmla.s16 Q0, Q3, r9
ldrd r8, r7, [r1, #16]
vmla.s16 Q1, Q6, r11
vshlc Q0, r12, #16
vmla.s16 Q0, Q4, r14
vshlc Q1, r12, #16
vmla.s16 Q1, Q4, r10
vshlc Q2, r12, #16
vmla.s16 Q0, Q3, r10
ldrd r11, r9, [r1, #48]
vmla.s16 Q1, Q6, r14
vshlc Q0, r12, #16
vmla.s16 Q0, Q4, r7
vshlc Q1, r12, #16
vmla.s16 Q1, Q4, r9
vshlc Q2, r12, #16
vmla.s16 Q0, Q3, r9
ldrd r14, r10, [r1, #8]
vmla.s16 Q1, Q6, r7
vshlc Q0, r12, #16
vmla.s16 Q0, Q4, r8
vshlc Q1, r12, #16
vmla.s16 Q1, Q4, r11
vshlc Q2, r12, #16
vmla.s16 Q0, Q3, r11
ldrd r9, r7, [r1, #40]
vmla.s16 Q1, Q6, r8
vshlc Q0, r12, #16
vmla.s16 Q0, Q4, r10
vshlc Q1, r12, #16
vmla.s16 Q1, Q4, r7
vshlc Q2, r12, #16
vmla.s16 Q0, Q3, r7
ldrd r11, r8, [r1, #0]
vmla.s16 Q1, Q6, r10
vshlc Q0, r12, #16
vmla.s16 Q0, Q4, r14
vshlc Q1, r12, #16
vmla.s16 Q1, Q4, r9
vshlc Q2, r12, #16
vmla.s16 Q0, Q3, r9
ldrd r10, r7, [r1, #32]
vmla.s16 Q1, Q6, r14
vshlc Q0, r12, #16
vmla.s16 Q0, Q4, r8
vshlc Q1, r12, #16
vmla.s16 Q1, Q4, r7
vshlc Q2, r12, #16
vmla.s16 Q0, Q3, r7
vmla.s16 Q1, Q6, r8
vshlc Q0, r12, #16
vmla.s16 Q0, Q4, r11
vshlc Q1, r12, #16
vmla.s16 Q1, Q4, r10
vshlc Q2, r12, #16
vmla.s16 Q1, Q6, r11
vstrh.u16 Q1, [r0,#(16)]
vsub.u16 Q0, Q0, Q2
vmla.s16 Q0, Q3, r10
vstrh.u16 Q0, [r0,#(0)]
vld20.u16 {Q0, Q1}, [r1]
vld21.u16 {Q0, Q1}, [r1]!
vld20.u16 {Q2, Q3}, [r1]
vld21.u16 {Q2, Q3}, [r1]!
vst20.u16 {Q1, Q2}, [r1]
vst21.u16 {Q1, Q2}, [r1]!
vst20.u16 {Q3, Q4}, [r1]
vst21.u16 {Q3, Q4}, [r1]!
vadd.u16 Q0, Q0, Q1
vadd.u16 Q2, Q2, Q3
vst20.u16 {Q0, Q1}, [r1]
vst21.u16 {Q0, Q1}, [r1]!
vst20.u16 {Q2, Q3}, [r1]
vst21.u16 {Q2, Q3}, [r1]!
vmov.u16 Q2, #0
mov r12, #0
ldrd r14, r11, [r1, #-104]
vmul.u16 Q0, Q5, r11
ldrd r10, r9, [r1, #-72]
vmul.u16 Q1, Q5, r9
vneg.s16 Q3, Q7
vmla.s16 Q0, Q3, r9
ldrd r8, r7, [r1, #-112]
vmla.s16 Q1, Q7, r11
vshlc Q0, r12, #16
vmla.s16 Q0, Q5, r14
vshlc Q1, r12, #16
vmla.s16 Q1, Q5, r10
vshlc Q2, r12, #16
vmla.s16 Q0, Q3, r10
ldrd r11, r9, [r1, #-80]
vmla.s16 Q1, Q7, r14
vshlc Q0, r12, #16
vmla.s16 Q0, Q5, r7
vshlc Q1, r12, #16
vmla.s16 Q1, Q5, r9
vshlc Q2, r12, #16
vmla.s16 Q0, Q3, r9
ldrd r14, r10, [r1, #-120]
vmla.s16 Q1, Q7, r7
vshlc Q0, r12, #16
vmla.s16 Q0, Q5, r8
vshlc Q1, r12, #16
vmla.s16 Q1, Q5, r11
vshlc Q2, r12, #16
vmla.s16 Q0, Q3, r11
ldrd r9, r7, [r1, #-88]
vmla.s16 Q1, Q7, r8
vshlc Q0, r12, #16
vmla.s16 Q0, Q5, r10
vshlc Q1, r12, #16
vmla.s16 Q1, Q5, r7
vshlc Q2, r12, #16
vmla.s16 Q0, Q3, r7
ldrd r11, r8, [r1, #-128]
vmla.s16 Q1, Q7, r10
vshlc Q0, r12, #16
vmla.s16 Q0, Q5, r14
vshlc Q1, r12, #16
vmla.s16 Q1, Q5, r9
vshlc Q2, r12, #16
vmla.s16 Q0, Q3, r9
ldrd r10, r7, [r1, #-96]
vmla.s16 Q1, Q7, r14
vshlc Q0, r12, #16
vmla.s16 Q0, Q5, r8
vshlc Q1, r12, #16
vmla.s16 Q1, Q5, r7
vshlc Q2, r12, #16
vmla.s16 Q0, Q3, r7
vmla.s16 Q1, Q7, r8
vshlc Q0, r12, #16
vmla.s16 Q0, Q5, r11
vshlc Q1, r12, #16
vmla.s16 Q1, Q5, r10
vshlc Q2, r12, #16
vmla.s16 Q1, Q7, r11
vstrh.u16 Q1, [r0,#(48)]
vsub.u16 Q0, Q0, Q2
vmla.s16 Q0, Q3, r10
vstrh.u16 Q0, [r0,#(32)]
vadd.u16 Q4, Q4, Q5
vadd.u16 Q6, Q6, Q7
vmov.u16 Q2, #0
mov r12, #0
ldrd r14, r11, [r1, #-40]
vmul.u16 Q0, Q4, r11
ldrd r10, r9, [r1, #-8]
vmul.u16 Q1, Q4, r9
vneg.s16 Q3, Q6
vmla.s16 Q0, Q3, r9
ldrd r8, r7, [r1, #-48]
vmla.s16 Q1, Q6, r11
vshlc Q0, r12, #16
vmla.s16 Q0, Q4, r14
vshlc Q1, r12, #16
vmla.s16 Q1, Q4, r10
vshlc Q2, r12, #16
vmla.s16 Q0, Q3, r10
ldrd r11, r9, [r1, #-16]
vmla.s16 Q1, Q6, r14
vshlc Q0, r12, #16
vmla.s16 Q0, Q4, r7
vshlc Q1, r12, #16
vmla.s16 Q1, Q4, r9
vshlc Q2, r12, #16
vmla.s16 Q0, Q3, r9
ldrd r14, r10, [r1, #-56]
vmla.s16 Q1, Q6, r7
vshlc Q0, r12, #16
vmla.s16 Q0, Q4, r8
vshlc Q1, r12, #16
vmla.s16 Q1, Q4, r11
vshlc Q2, r12, #16
vmla.s16 Q0, Q3, r11
ldrd r9, r7, [r1, #-24]
vmla.s16 Q1, Q6, r8
vshlc Q0, r12, #16
vmla.s16 Q0, Q4, r10
vshlc Q1, r12, #16
vmla.s16 Q1, Q4, r7
vshlc Q2, r12, #16
vmla.s16 Q0, Q3, r7
ldrd r11, r8, [r1, #-64]
vmla.s16 Q1, Q6, r10
vshlc Q0, r12, #16
vmla.s16 Q0, Q4, r14
vshlc Q1, r12, #16
vmla.s16 Q1, Q4, r9
vshlc Q2, r12, #16
vmla.s16 Q0, Q3, r9
ldrd r10, r7, [r1, #-32]
vmla.s16 Q1, Q6, r14
vshlc Q0, r12, #16
vmla.s16 Q0, Q4, r8
vshlc Q1, r12, #16
vmla.s16 Q1, Q4, r7
vshlc Q2, r12, #16
vmla.s16 Q0, Q3, r7
vmla.s16 Q1, Q6, r8
vshlc Q0, r12, #16
vmla.s16 Q0, Q4, r11
vshlc Q1, r12, #16
vmla.s16 Q1, Q4, r10
vshlc Q2, r12, #16
vmla.s16 Q1, Q6, r11
vstrh.u16 Q1, [r0,#(80)]
vsub.u16 Q0, Q0, Q2
vmla.s16 Q0, Q3, r10
vstrh.u16 Q0, [r0,#(64)]
nop
nop
nop
nop
nop
nop
vpop {d0-d15}
pop {r4-r11,lr}
bx lr