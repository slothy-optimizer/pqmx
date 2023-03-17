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
.type poly_u16_mul_32_anticyclic_karatsuba_mve_simd, %function
.global poly_u16_mul_32_anticyclic_karatsuba_mve_simd
poly_u16_mul_32_anticyclic_karatsuba_mve_simd:
push {r4-r11,lr}
vpush {d8-d15}
sub sp, sp, #224
vld20.u16 {Q4, Q5}, [r2]
vld21.u16 {Q4, Q5}, [r2]!
vld20.u16 {Q6, Q7}, [r2]
vld21.u16 {Q6, Q7}, [r2]!
vstrh.u16 Q5, [sp, #(128 + 3*32 - 16)]
vstrh.u16 Q7, [sp, #(128 + 3*32 - 32)]
mov r12, #0
mov r11, sp
vmov.u16 Q5, #0
ldrd r10, r9, [r1, #24]
vmul.u16 Q2, Q4, r9
ldrd r8, r7, [r1, #56]
vmul.u16 Q3, Q4, r7
vneg.s16 Q7, Q6
vmla.s16 Q2, Q7, r7
ldrd r6, r5, [r1, #16]
vmla.s16 Q3, Q6, r9
vshlc Q2, r12, #16
vmla.s16 Q2, Q4, r10
vshlc Q3, r12, #16
vmla.s16 Q3, Q4, r8
vshlc Q5, r12, #16
vmla.s16 Q2, Q7, r8
ldrd r9, r7, [r1, #48]
vmla.s16 Q3, Q6, r10
vshlc Q2, r12, #16
vmla.s16 Q2, Q4, r5
vshlc Q3, r12, #16
vmla.s16 Q3, Q4, r7
vshlc Q5, r12, #16
vmla.s16 Q2, Q7, r7
ldrd r10, r8, [r1, #8]
vmla.s16 Q3, Q6, r5
vshlc Q2, r12, #16
vmla.s16 Q2, Q4, r6
vshlc Q3, r12, #16
vmla.s16 Q3, Q4, r9
vshlc Q5, r12, #16
vmla.s16 Q2, Q7, r9
ldrd r7, r5, [r1, #40]
vmla.s16 Q3, Q6, r6
vshlc Q2, r12, #16
vmla.s16 Q2, Q4, r8
vshlc Q3, r12, #16
vmla.s16 Q3, Q4, r5
vshlc Q5, r12, #16
vmla.s16 Q2, Q7, r5
ldrd r9, r6, [r1, #0]
vmla.s16 Q3, Q6, r8
vshlc Q2, r12, #16
vmla.s16 Q2, Q4, r10
vshlc Q3, r12, #16
vmla.s16 Q3, Q4, r7
vshlc Q5, r12, #16
vmla.s16 Q2, Q7, r7
ldrd r8, r5, [r1, #32]
vmla.s16 Q3, Q6, r10
vshlc Q2, r12, #16
vmla.s16 Q2, Q4, r6
vshlc Q3, r12, #16
vmla.s16 Q3, Q4, r5
vshlc Q5, r12, #16
vmla.s16 Q2, Q7, r5
vmla.s16 Q3, Q6, r6
vshlc Q2, r12, #16
vmla.s16 Q2, Q4, r9
vshlc Q3, r12, #16
vmla.s16 Q3, Q4, r8
vshlc Q5, r12, #16
vmla.s16 Q3, Q6, r9
vstrh.u16 Q3, [r11,#(144)]
vsub.u16 Q2, Q2, Q5
vmla.s16 Q2, Q7, r8
vstrh.u16 Q2, [r11,#(128)]
vld20.u16 {Q0, Q1}, [r1]
vld21.u16 {Q0, Q1}, [r1]!
vadd.u16 Q0, Q0, Q1
vst20.u16 {Q1, Q2}, [r11]
vst21.u16 {Q1, Q2}, [r11]!
vst20.u16 {Q0, Q1}, [r11]
vst21.u16 {Q0, Q1}, [r11]!
vld20.u16 {Q0, Q1}, [r1]
vld21.u16 {Q0, Q1}, [r1]!
vadd.u16 Q0, Q0, Q1
vst20.u16 {Q1, Q2}, [r11]
vst21.u16 {Q1, Q2}, [r11]!
vst20.u16 {Q0, Q1}, [r11]
vst21.u16 {Q0, Q1}, [r11]!
vldrh.u16 Q0, [sp, #(128 + 3*32 - 16)]
vldrh.u16 Q1, [sp, #(128 + 3*32 - 32)]
vmov.u16 Q5, #0
ldrd r10, r9, [r11, #-104]
vmul.u16 Q2, Q0, r10
ldrd r8, r7, [r11, #-40]
vmul.u16 Q3, Q0, r8
vneg.s16 Q7, Q1
vmla.s16 Q2, Q7, r8
ldrd r6, r5, [r11, #-112]
ldrd r4, r3, [r11, #-48]
vmla.s16 Q3, Q1, r10
vshlc Q2, r12, #16
vmla.s16 Q2, Q0, r5
vshlc Q3, r12, #16
vmla.s16 Q3, Q0, r3
vshlc Q5, r12, #16
vmla.s16 Q2, Q7, r3
ldrd r10, r8, [r11, #-120]
vmla.s16 Q3, Q1, r5
vshlc Q2, r12, #16
vmla.s16 Q2, Q0, r6
vshlc Q3, r12, #16
vmla.s16 Q3, Q0, r4
vshlc Q5, r12, #16
vmla.s16 Q2, Q7, r4
ldrd r5, r3, [r11, #-56]
vmla.s16 Q3, Q1, r6
vshlc Q2, r12, #16
vmla.s16 Q2, Q0, r8
vshlc Q3, r12, #16
vmla.s16 Q3, Q0, r3
vshlc Q5, r12, #16
vmla.s16 Q2, Q7, r3
ldrd r6, r4, [r11, #-64]
vmla.s16 Q3, Q1, r8
vshlc Q2, r12, #16
vmla.s16 Q2, Q0, r10
vshlc Q3, r12, #16
vmla.s16 Q3, Q0, r5
vshlc Q5, r12, #16
vmla.s16 Q2, Q7, r5
ldrd r8, r3, [r11, #-128]
vmla.s16 Q3, Q1, r10
vshlc Q2, r12, #16
vmla.s16 Q2, Q0, r3
vshlc Q3, r12, #16
vmla.s16 Q3, Q0, r4
vshlc Q5, r12, #16
vmla.s16 Q2, Q7, r4
vmla.s16 Q3, Q1, r3
vshlc Q2, r12, #16
vmla.s16 Q2, Q0, r8
vshlc Q3, r12, #16
vmla.s16 Q3, Q0, r6
vshlc Q5, r12, #16
vmla.s16 Q2, Q7, r6
vmla.s16 Q3, Q1, r8
vshlc Q2, r12, #16
neg r7, r7
vmla.s16 Q2, Q0, r7
vshlc Q3, r12, #16
vmla.s16 Q3, Q0, r9
vshlc Q5, r12, #16
vmla.s16 Q3, Q1, r7
vsub.u16 Q2, Q2, Q5
vmla.s16 Q2, Q7, r9
vadd.u16 Q4, Q4, Q0
vldrh.u16 Q5, [r11,#0]
vadd.u16 Q5, Q5, Q2
vldrh.u16 Q7, [r11,#16]
vadd.u16 Q7, Q7, Q3
vstrh.u16 Q5, [r0,   #0]
vstrh.u16 Q7, [r0,  #16]
vadd.u16 Q6, Q6, Q1
vneg.s16 Q3, Q3
vmov.u16 Q0, #0
mov r12, #0
ldrd r10, r9, [r11, #-72]
vmla.s16 Q3, Q4, r9
ldrd r8, r7, [r11, #-8]
vmla.s16 Q2, Q4, r7
vneg.s16 Q1, Q6
vmla.s16 Q3, Q1, r7
ldrd r6, r5, [r11, #-80]
vmla.s16 Q2, Q6, r9
vshlc Q3, r12, #16
vmla.s16 Q3, Q4, r10
vshlc Q2, r12, #16
vmla.s16 Q2, Q4, r8
vshlc Q0, r12, #16
vmla.s16 Q3, Q1, r8
ldrd r9, r7, [r11, #-16]
vmla.s16 Q2, Q6, r10
vshlc Q3, r12, #16
vmla.s16 Q3, Q4, r5
vshlc Q2, r12, #16
vmla.s16 Q2, Q4, r7
vshlc Q0, r12, #16
vmla.s16 Q3, Q1, r7
ldrd r10, r8, [r11, #-88]
vmla.s16 Q2, Q6, r5
vshlc Q3, r12, #16
vmla.s16 Q3, Q4, r6
vshlc Q2, r12, #16
vmla.s16 Q2, Q4, r9
vshlc Q0, r12, #16
vmla.s16 Q3, Q1, r9
ldrd r7, r5, [r11, #-24]
vmla.s16 Q2, Q6, r6
vshlc Q3, r12, #16
vmla.s16 Q3, Q4, r8
vshlc Q2, r12, #16
vmla.s16 Q2, Q4, r5
vshlc Q0, r12, #16
vmla.s16 Q3, Q1, r5
ldrd r9, r6, [r11, #-96]
vmla.s16 Q2, Q6, r8
vshlc Q3, r12, #16
vmla.s16 Q3, Q4, r10
vshlc Q2, r12, #16
vmla.s16 Q2, Q4, r7
vshlc Q0, r12, #16
vmla.s16 Q3, Q1, r7
ldrd r8, r5, [r11, #-32]
vmla.s16 Q2, Q6, r10
vshlc Q3, r12, #16
vmla.s16 Q3, Q4, r6
vshlc Q2, r12, #16
vmla.s16 Q2, Q4, r5
vshlc Q0, r12, #16
vmla.s16 Q3, Q1, r5
vmla.s16 Q2, Q6, r6
vshlc Q3, r12, #16
vmla.s16 Q3, Q4, r9
vshlc Q2, r12, #16
vmla.s16 Q2, Q4, r8
vshlc Q0, r12, #16
vmla.s16 Q2, Q6, r9
vsub.u16 Q3, Q3, Q0
vmla.s16 Q3, Q1, r8
vldrh.u16 Q0, [r11,#0]
vldrh.u16 Q1, [r11,#16]
vsub.u16 Q0, Q3, Q0
vsub.u16 Q1, Q2, Q1
vstrh.u16 Q0, [r0, #32]
vstrh.u16 Q1, [r0, #48]
add r0, r0, #64
mov r12, #19
wls r14, r12, loop_end
loop_start:
vld20.u16 {Q4, Q5}, [r2]
vld21.u16 {Q4, Q5}, [r2]!
vld20.u16 {Q6, Q7}, [r2]
vld21.u16 {Q6, Q7}, [r2]!
vstrh.u16 Q5, [sp, #(128 + 3*32 - 16)]
vstrh.u16 Q7, [sp, #(128 + 3*32 - 32)]
mov r12, #0
mov r11, sp
vmov.u16 Q5, #0
ldrd r10, r9, [r1, #24]
vmul.u16 Q2, Q4, r9
ldrd r8, r7, [r1, #56]
vmul.u16 Q3, Q4, r7
vneg.s16 Q7, Q6
vmla.s16 Q2, Q7, r7
ldrd r6, r5, [r1, #16]
vmla.s16 Q3, Q6, r9
vshlc Q2, r12, #16
vmla.s16 Q2, Q4, r10
vshlc Q3, r12, #16
vmla.s16 Q3, Q4, r8
vshlc Q5, r12, #16
vmla.s16 Q2, Q7, r8
ldrd r9, r7, [r1, #48]
vmla.s16 Q3, Q6, r10
vshlc Q2, r12, #16
vmla.s16 Q2, Q4, r5
vshlc Q3, r12, #16
vmla.s16 Q3, Q4, r7
vshlc Q5, r12, #16
vmla.s16 Q2, Q7, r7
ldrd r10, r8, [r1, #8]
vmla.s16 Q3, Q6, r5
vshlc Q2, r12, #16
vmla.s16 Q2, Q4, r6
vshlc Q3, r12, #16
vmla.s16 Q3, Q4, r9
vshlc Q5, r12, #16
vmla.s16 Q2, Q7, r9
ldrd r7, r5, [r1, #40]
vmla.s16 Q3, Q6, r6
vshlc Q2, r12, #16
vmla.s16 Q2, Q4, r8
vshlc Q3, r12, #16
vmla.s16 Q3, Q4, r5
vshlc Q5, r12, #16
vmla.s16 Q2, Q7, r5
ldrd r9, r6, [r1, #0]
vmla.s16 Q3, Q6, r8
vshlc Q2, r12, #16
vmla.s16 Q2, Q4, r10
vshlc Q3, r12, #16
vmla.s16 Q3, Q4, r7
vshlc Q5, r12, #16
vmla.s16 Q2, Q7, r7
ldrd r8, r5, [r1, #32]
vmla.s16 Q3, Q6, r10
vshlc Q2, r12, #16
vmla.s16 Q2, Q4, r6
vshlc Q3, r12, #16
vmla.s16 Q3, Q4, r5
vshlc Q5, r12, #16
vmla.s16 Q2, Q7, r5
vmla.s16 Q3, Q6, r6
vshlc Q2, r12, #16
vmla.s16 Q2, Q4, r9
vshlc Q3, r12, #16
vmla.s16 Q3, Q4, r8
vshlc Q5, r12, #16
vmla.s16 Q3, Q6, r9
vstrh.u16 Q3, [r11,#(144)]
vsub.u16 Q2, Q2, Q5
vmla.s16 Q2, Q7, r8
vstrh.u16 Q2, [r11,#(128)]
vld20.u16 {Q0, Q1}, [r1]
vld21.u16 {Q0, Q1}, [r1]!
vadd.u16 Q0, Q0, Q1
vst20.u16 {Q1, Q2}, [r11]
vst21.u16 {Q1, Q2}, [r11]!
vst20.u16 {Q0, Q1}, [r11]
vst21.u16 {Q0, Q1}, [r11]!
vld20.u16 {Q0, Q1}, [r1]
vld21.u16 {Q0, Q1}, [r1]!
vadd.u16 Q0, Q0, Q1
vst20.u16 {Q1, Q2}, [r11]
vst21.u16 {Q1, Q2}, [r11]!
vst20.u16 {Q0, Q1}, [r11]
vst21.u16 {Q0, Q1}, [r11]!
vldrh.u16 Q0, [sp, #(128 + 3*32 - 16)]
vldrh.u16 Q1, [sp, #(128 + 3*32 - 32)]
vmov.u16 Q5, #0
ldrd r10, r9, [r11, #-104]
vmul.u16 Q2, Q0, r10
ldrd r8, r7, [r11, #-40]
vmul.u16 Q3, Q0, r8
vneg.s16 Q7, Q1
vmla.s16 Q2, Q7, r8
ldrd r6, r5, [r11, #-112]
ldrd r4, r3, [r11, #-48]
vmla.s16 Q3, Q1, r10
vshlc Q2, r12, #16
vmla.s16 Q2, Q0, r5
vshlc Q3, r12, #16
vmla.s16 Q3, Q0, r3
vshlc Q5, r12, #16
vmla.s16 Q2, Q7, r3
ldrd r10, r8, [r11, #-120]
vmla.s16 Q3, Q1, r5
vshlc Q2, r12, #16
vmla.s16 Q2, Q0, r6
vshlc Q3, r12, #16
vmla.s16 Q3, Q0, r4
vshlc Q5, r12, #16
vmla.s16 Q2, Q7, r4
ldrd r5, r3, [r11, #-56]
vmla.s16 Q3, Q1, r6
vshlc Q2, r12, #16
vmla.s16 Q2, Q0, r8
vshlc Q3, r12, #16
vmla.s16 Q3, Q0, r3
vshlc Q5, r12, #16
vmla.s16 Q2, Q7, r3
ldrd r6, r4, [r11, #-64]
vmla.s16 Q3, Q1, r8
vshlc Q2, r12, #16
vmla.s16 Q2, Q0, r10
vshlc Q3, r12, #16
vmla.s16 Q3, Q0, r5
vshlc Q5, r12, #16
vmla.s16 Q2, Q7, r5
ldrd r8, r3, [r11, #-128]
vmla.s16 Q3, Q1, r10
vshlc Q2, r12, #16
vmla.s16 Q2, Q0, r3
vshlc Q3, r12, #16
vmla.s16 Q3, Q0, r4
vshlc Q5, r12, #16
vmla.s16 Q2, Q7, r4
vmla.s16 Q3, Q1, r3
vshlc Q2, r12, #16
vmla.s16 Q2, Q0, r8
vshlc Q3, r12, #16
vmla.s16 Q3, Q0, r6
vshlc Q5, r12, #16
vmla.s16 Q2, Q7, r6
vmla.s16 Q3, Q1, r8
vshlc Q2, r12, #16
neg r7, r7
vmla.s16 Q2, Q0, r7
vshlc Q3, r12, #16
vmla.s16 Q3, Q0, r9
vshlc Q5, r12, #16
vmla.s16 Q3, Q1, r7
vsub.u16 Q2, Q2, Q5
vmla.s16 Q2, Q7, r9
vadd.u16 Q4, Q4, Q0
vldrh.u16 Q5, [r11,#0]
vadd.u16 Q5, Q5, Q2
vldrh.u16 Q7, [r11,#16]
vadd.u16 Q7, Q7, Q3
vstrh.u16 Q5, [r0,   #0]
vstrh.u16 Q7, [r0,  #16]
vadd.u16 Q6, Q6, Q1
vneg.s16 Q3, Q3
vmov.u16 Q0, #0
mov r12, #0
ldrd r10, r9, [r11, #-72]
vmla.s16 Q3, Q4, r9
ldrd r8, r7, [r11, #-8]
vmla.s16 Q2, Q4, r7
vneg.s16 Q1, Q6
vmla.s16 Q3, Q1, r7
ldrd r6, r5, [r11, #-80]
vmla.s16 Q2, Q6, r9
vshlc Q3, r12, #16
vmla.s16 Q3, Q4, r10
vshlc Q2, r12, #16
vmla.s16 Q2, Q4, r8
vshlc Q0, r12, #16
vmla.s16 Q3, Q1, r8
ldrd r9, r7, [r11, #-16]
vmla.s16 Q2, Q6, r10
vshlc Q3, r12, #16
vmla.s16 Q3, Q4, r5
vshlc Q2, r12, #16
vmla.s16 Q2, Q4, r7
vshlc Q0, r12, #16
vmla.s16 Q3, Q1, r7
ldrd r10, r8, [r11, #-88]
vmla.s16 Q2, Q6, r5
vshlc Q3, r12, #16
vmla.s16 Q3, Q4, r6
vshlc Q2, r12, #16
vmla.s16 Q2, Q4, r9
vshlc Q0, r12, #16
vmla.s16 Q3, Q1, r9
ldrd r7, r5, [r11, #-24]
vmla.s16 Q2, Q6, r6
vshlc Q3, r12, #16
vmla.s16 Q3, Q4, r8
vshlc Q2, r12, #16
vmla.s16 Q2, Q4, r5
vshlc Q0, r12, #16
vmla.s16 Q3, Q1, r5
ldrd r9, r6, [r11, #-96]
vmla.s16 Q2, Q6, r8
vshlc Q3, r12, #16
vmla.s16 Q3, Q4, r10
vshlc Q2, r12, #16
vmla.s16 Q2, Q4, r7
vshlc Q0, r12, #16
vmla.s16 Q3, Q1, r7
ldrd r8, r5, [r11, #-32]
vmla.s16 Q2, Q6, r10
vshlc Q3, r12, #16
vmla.s16 Q3, Q4, r6
vshlc Q2, r12, #16
vmla.s16 Q2, Q4, r5
vshlc Q0, r12, #16
vmla.s16 Q3, Q1, r5
vmla.s16 Q2, Q6, r6
vshlc Q3, r12, #16
vmla.s16 Q3, Q4, r9
vshlc Q2, r12, #16
vmla.s16 Q2, Q4, r8
vshlc Q0, r12, #16
vmla.s16 Q2, Q6, r9
vsub.u16 Q3, Q3, Q0
vmla.s16 Q3, Q1, r8
vldrh.u16 Q0, [r11,#0]
vldrh.u16 Q1, [r11,#16]
vsub.u16 Q0, Q3, Q0
vsub.u16 Q1, Q2, Q1
vstrh.u16 Q0, [r0, #32]
vstrh.u16 Q1, [r0, #48]
add r0, r0, #64
le r14, loop_start
loop_end:
vld20.u16 {Q4, Q5}, [r2]
vld21.u16 {Q4, Q5}, [r2]!
vld20.u16 {Q6, Q7}, [r2]
vld21.u16 {Q6, Q7}, [r2]!
vstrh.u16 Q5, [sp, #(128 + 3*32 - 16)]
vstrh.u16 Q7, [sp, #(128 + 3*32 - 32)]
mov r12, #0
mov r11, sp
vmov.u16 Q5, #0
ldrd r10, r9, [r1, #24]
vmul.u16 Q2, Q4, r9
ldrd r8, r7, [r1, #56]
vmul.u16 Q3, Q4, r7
vneg.s16 Q7, Q6
vmla.s16 Q2, Q7, r7
ldrd r6, r5, [r1, #16]
vmla.s16 Q3, Q6, r9
vshlc Q2, r12, #16
vmla.s16 Q2, Q4, r10
vshlc Q3, r12, #16
vmla.s16 Q3, Q4, r8
vshlc Q5, r12, #16
vmla.s16 Q2, Q7, r8
ldrd r9, r7, [r1, #48]
vmla.s16 Q3, Q6, r10
vshlc Q2, r12, #16
vmla.s16 Q2, Q4, r5
vshlc Q3, r12, #16
vmla.s16 Q3, Q4, r7
vshlc Q5, r12, #16
vmla.s16 Q2, Q7, r7
ldrd r10, r8, [r1, #8]
vmla.s16 Q3, Q6, r5
vshlc Q2, r12, #16
vmla.s16 Q2, Q4, r6
vshlc Q3, r12, #16
vmla.s16 Q3, Q4, r9
vshlc Q5, r12, #16
vmla.s16 Q2, Q7, r9
ldrd r7, r5, [r1, #40]
vmla.s16 Q3, Q6, r6
vshlc Q2, r12, #16
vmla.s16 Q2, Q4, r8
vshlc Q3, r12, #16
vmla.s16 Q3, Q4, r5
vshlc Q5, r12, #16
vmla.s16 Q2, Q7, r5
ldrd r9, r6, [r1, #0]
vmla.s16 Q3, Q6, r8
vshlc Q2, r12, #16
vmla.s16 Q2, Q4, r10
vshlc Q3, r12, #16
vmla.s16 Q3, Q4, r7
vshlc Q5, r12, #16
vmla.s16 Q2, Q7, r7
ldrd r8, r5, [r1, #32]
vmla.s16 Q3, Q6, r10
vshlc Q2, r12, #16
vmla.s16 Q2, Q4, r6
vshlc Q3, r12, #16
vmla.s16 Q3, Q4, r5
vshlc Q5, r12, #16
vmla.s16 Q2, Q7, r5
vmla.s16 Q3, Q6, r6
vshlc Q2, r12, #16
vmla.s16 Q2, Q4, r9
vshlc Q3, r12, #16
vmla.s16 Q3, Q4, r8
vshlc Q5, r12, #16
vmla.s16 Q3, Q6, r9
vstrh.u16 Q3, [r11,#(144)]
vsub.u16 Q2, Q2, Q5
vmla.s16 Q2, Q7, r8
vstrh.u16 Q2, [r11,#(128)]
vld20.u16 {Q0, Q1}, [r1]
vld21.u16 {Q0, Q1}, [r1]!
vadd.u16 Q0, Q0, Q1
vst20.u16 {Q1, Q2}, [r11]
vst21.u16 {Q1, Q2}, [r11]!
vst20.u16 {Q0, Q1}, [r11]
vst21.u16 {Q0, Q1}, [r11]!
vld20.u16 {Q0, Q1}, [r1]
vld21.u16 {Q0, Q1}, [r1]!
vadd.u16 Q0, Q0, Q1
vst20.u16 {Q1, Q2}, [r11]
vst21.u16 {Q1, Q2}, [r11]!
vst20.u16 {Q0, Q1}, [r11]
vst21.u16 {Q0, Q1}, [r11]!
vldrh.u16 Q0, [sp, #(128 + 3*32 - 16)]
vldrh.u16 Q1, [sp, #(128 + 3*32 - 32)]
vmov.u16 Q5, #0
ldrd r10, r9, [r11, #-104]
vmul.u16 Q2, Q0, r10
ldrd r8, r7, [r11, #-40]
vmul.u16 Q3, Q0, r8
vneg.s16 Q7, Q1
vmla.s16 Q2, Q7, r8
ldrd r6, r5, [r11, #-112]
ldrd r4, r3, [r11, #-48]
vmla.s16 Q3, Q1, r10
vshlc Q2, r12, #16
vmla.s16 Q2, Q0, r5
vshlc Q3, r12, #16
vmla.s16 Q3, Q0, r3
vshlc Q5, r12, #16
vmla.s16 Q2, Q7, r3
ldrd r10, r8, [r11, #-120]
vmla.s16 Q3, Q1, r5
vshlc Q2, r12, #16
vmla.s16 Q2, Q0, r6
vshlc Q3, r12, #16
vmla.s16 Q3, Q0, r4
vshlc Q5, r12, #16
vmla.s16 Q2, Q7, r4
ldrd r5, r3, [r11, #-56]
vmla.s16 Q3, Q1, r6
vshlc Q2, r12, #16
vmla.s16 Q2, Q0, r8
vshlc Q3, r12, #16
vmla.s16 Q3, Q0, r3
vshlc Q5, r12, #16
vmla.s16 Q2, Q7, r3
ldrd r6, r4, [r11, #-64]
vmla.s16 Q3, Q1, r8
vshlc Q2, r12, #16
vmla.s16 Q2, Q0, r10
vshlc Q3, r12, #16
vmla.s16 Q3, Q0, r5
vshlc Q5, r12, #16
vmla.s16 Q2, Q7, r5
ldrd r8, r3, [r11, #-128]
vmla.s16 Q3, Q1, r10
vshlc Q2, r12, #16
vmla.s16 Q2, Q0, r3
vshlc Q3, r12, #16
vmla.s16 Q3, Q0, r4
vshlc Q5, r12, #16
vmla.s16 Q2, Q7, r4
vmla.s16 Q3, Q1, r3
vshlc Q2, r12, #16
vmla.s16 Q2, Q0, r8
vshlc Q3, r12, #16
vmla.s16 Q3, Q0, r6
vshlc Q5, r12, #16
vmla.s16 Q2, Q7, r6
vmla.s16 Q3, Q1, r8
vshlc Q2, r12, #16
neg r7, r7
vmla.s16 Q2, Q0, r7
vshlc Q3, r12, #16
vmla.s16 Q3, Q0, r9
vshlc Q5, r12, #16
vmla.s16 Q3, Q1, r7
vsub.u16 Q2, Q2, Q5
vmla.s16 Q2, Q7, r9
vadd.u16 Q4, Q4, Q0
vldrh.u16 Q5, [r11,#0]
vadd.u16 Q5, Q5, Q2
vldrh.u16 Q7, [r11,#16]
vadd.u16 Q7, Q7, Q3
vstrh.u16 Q5, [r0,   #0]
vstrh.u16 Q7, [r0,  #16]
vadd.u16 Q6, Q6, Q1
vneg.s16 Q3, Q3
vmov.u16 Q0, #0
mov r12, #0
ldrd r10, r9, [r11, #-72]
vmla.s16 Q3, Q4, r9
ldrd r8, r7, [r11, #-8]
vmla.s16 Q2, Q4, r7
vneg.s16 Q1, Q6
vmla.s16 Q3, Q1, r7
ldrd r6, r5, [r11, #-80]
vmla.s16 Q2, Q6, r9
vshlc Q3, r12, #16
vmla.s16 Q3, Q4, r10
vshlc Q2, r12, #16
vmla.s16 Q2, Q4, r8
vshlc Q0, r12, #16
vmla.s16 Q3, Q1, r8
ldrd r9, r7, [r11, #-16]
vmla.s16 Q2, Q6, r10
vshlc Q3, r12, #16
vmla.s16 Q3, Q4, r5
vshlc Q2, r12, #16
vmla.s16 Q2, Q4, r7
vshlc Q0, r12, #16
vmla.s16 Q3, Q1, r7
ldrd r10, r8, [r11, #-88]
vmla.s16 Q2, Q6, r5
vshlc Q3, r12, #16
vmla.s16 Q3, Q4, r6
vshlc Q2, r12, #16
vmla.s16 Q2, Q4, r9
vshlc Q0, r12, #16
vmla.s16 Q3, Q1, r9
ldrd r7, r5, [r11, #-24]
vmla.s16 Q2, Q6, r6
vshlc Q3, r12, #16
vmla.s16 Q3, Q4, r8
vshlc Q2, r12, #16
vmla.s16 Q2, Q4, r5
vshlc Q0, r12, #16
vmla.s16 Q3, Q1, r5
ldrd r9, r6, [r11, #-96]
vmla.s16 Q2, Q6, r8
vshlc Q3, r12, #16
vmla.s16 Q3, Q4, r10
vshlc Q2, r12, #16
vmla.s16 Q2, Q4, r7
vshlc Q0, r12, #16
vmla.s16 Q3, Q1, r7
ldrd r8, r5, [r11, #-32]
vmla.s16 Q2, Q6, r10
vshlc Q3, r12, #16
vmla.s16 Q3, Q4, r6
vshlc Q2, r12, #16
vmla.s16 Q2, Q4, r5
vshlc Q0, r12, #16
vmla.s16 Q3, Q1, r5
vmla.s16 Q2, Q6, r6
vshlc Q3, r12, #16
vmla.s16 Q3, Q4, r9
vshlc Q2, r12, #16
vmla.s16 Q2, Q4, r8
vshlc Q0, r12, #16
vmla.s16 Q2, Q6, r9
vsub.u16 Q3, Q3, Q0
vmla.s16 Q3, Q1, r8
vldrh.u16 Q0, [r11,#0]
vldrh.u16 Q1, [r11,#16]
vsub.u16 Q0, Q3, Q0
vsub.u16 Q1, Q2, Q1
vstrh.u16 Q0, [r0, #32]
vstrh.u16 Q1, [r0, #48]
add sp, sp, #224
vpop {d8-d15}
pop {r4-r11,lr}
bx lr