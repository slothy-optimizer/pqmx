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
.type poly_u16_mul_16_anticyclic_opt_mve_simd, %function
.global poly_u16_mul_16_anticyclic_opt_mve_simd
poly_u16_mul_16_anticyclic_opt_mve_simd:
push {r4-r11,lr}
vpush {d8-d15}
vldrh.u16 Q2, [r0, #(2 * 0)]
vldrh.u16 Q3, [r0, #(2 * 8)]
ldrd r10, r11, [r1, #0]
ldrd r8, r9, [r1, #16]
ldrd r6, r7, [r1, #24]
vldrh.u16 Q0, [r2, #(2 * 0)]
vmla.s16 Q2, Q0, r6
vldrh.u16 Q1, [r2, #(2 * 8)]
vmla.s16 Q3, Q1, r6
ldrd r4, r5, [r1, #8]
mov r12, #0
vmla.s16 Q2, Q1, r4
vneg.s16 Q5, Q0
vmla.s16 Q3, Q5, r4
vshlc Q2, r12, #32
vmla.s16 Q2, Q1, r11
vshlc Q3, r12, #32
vmla.s16 Q2, Q0, r9
veor.u16 Q4, Q4, Q4
vmla.s16 Q3, Q1, r9
vshlc Q4, r12, #32
vmla.s16 Q3, Q5, r11
vshlc Q2, r12, #32
vmla.s16 Q2, Q1, r10
vshlc Q3, r12, #32
vmla.s16 Q2, Q0, r8
vshlc Q4, r12, #32
vmla.s16 Q3, Q1, r8
vshlc Q2, r12, #32
vmla.s16 Q3, Q5, r10
vneg.s16 Q5, Q1
vmla.s16 Q2, Q0, r5
vshlc Q3, r12, #32
vmla.s16 Q2, Q5, r7
vshlc Q4, r12, #32
vmla.s16 Q3, Q1, r5
vsub.u16 Q2, Q2, Q4
vmla.s16 Q3, Q0, r7
asrl r4, r5, #16
asrl r6, r7, #16
asrl r10, r11, #16
asrl r8, r9, #16
vshlc Q2, r12, #16
vmla.s16 Q2, Q0, r5
vshlc Q3, r12, #16
vmla.s16 Q2, Q5, r7
veor.u16 Q4, Q4, Q4
vmla.s16 Q3, Q1, r5
vshlc Q4, r12, #16
vmla.s16 Q3, Q0, r7
vshlc Q2, r12, #32
vmla.s16 Q2, Q0, r4
vshlc Q3, r12, #32
vmla.s16 Q2, Q5, r6
vshlc Q4, r12, #32
vmla.s16 Q3, Q1, r4
vmla.s16 Q3, Q0, r6
vshlc Q2, r12, #32
vmla.s16 Q2, Q0, r11
vshlc Q3, r12, #32
vmla.s16 Q2, Q5, r9
vshlc Q4, r12, #32
vmla.s16 Q3, Q1, r11
vmla.s16 Q3, Q0, r9
vshlc Q2, r12, #32
vmla.s16 Q2, Q0, r10
vshlc Q3, r12, #32
vmla.s16 Q2, Q5, r8
vshlc Q4, r12, #32
vmla.s16 Q3, Q1, r10
vsub.u16 Q2, Q2, Q4
vstrh.u16 Q2, [r0,#(0)]
vmla.s16 Q3, Q0, r8
vstrh.u16 Q3, [r0,#(16)]
add r1,   r1,   #32
add r2,   r2,   #32
add r0, r0, #32
mov r14, #30
wls r14, r14, loop_end
loop_start:
mov r11, r11
mov r11, r11
mov r11, r11
vldrh.u16 Q5, [r0, #(2 * 0)]
vldrh.u16 Q4, [r0, #(2 * 8)]
ldrd r10, r9, [r1, #0]
ldrd r8, r7, [r1, #16]
ldrd r6, r5, [r1, #24]
vldrh.u16 Q7, [r2, #(2 * 0)]
vmla.s16 Q5, Q7, r6
vldrh.u16 Q6, [r2, #(2 * 8)]
vmla.s16 Q4, Q6, r6
ldrd r4, r3, [r1, #8]
mov r12, #0
vmla.s16 Q5, Q6, r4
vneg.s16 Q2, Q7
vmla.s16 Q4, Q2, r4
vshlc Q5, r12, #32
vmla.s16 Q5, Q6, r9
vshlc Q4, r12, #32
vmla.s16 Q5, Q7, r7
veor.u16 Q3, Q3, Q3
vmla.s16 Q4, Q6, r7
vshlc Q3, r12, #32
vmla.s16 Q4, Q2, r9
vshlc Q5, r12, #32
vmla.s16 Q5, Q6, r10
vshlc Q4, r12, #32
vmla.s16 Q5, Q7, r8
vshlc Q3, r12, #32
vmla.s16 Q4, Q6, r8
vshlc Q5, r12, #32
vmla.s16 Q4, Q2, r10
vneg.s16 Q2, Q6
vmla.s16 Q5, Q7, r3
vshlc Q4, r12, #32
vmla.s16 Q5, Q2, r5
vshlc Q3, r12, #32
vmla.s16 Q4, Q6, r3
vsub.u16 Q5, Q5, Q3
vmla.s16 Q4, Q7, r5
asrl r4, r3, #16
asrl r6, r5, #16
asrl r10, r9, #16
asrl r8, r7, #16
vshlc Q5, r12, #16
vmla.s16 Q5, Q7, r3
vshlc Q4, r12, #16
vmla.s16 Q5, Q2, r5
veor.u16 Q3, Q3, Q3
vmla.s16 Q4, Q6, r3
vshlc Q3, r12, #16
vmla.s16 Q4, Q7, r5
vshlc Q5, r12, #32
vmla.s16 Q5, Q7, r4
vshlc Q4, r12, #32
vmla.s16 Q5, Q2, r6
vshlc Q3, r12, #32
vmla.s16 Q4, Q6, r4
vmla.s16 Q4, Q7, r6
vshlc Q5, r12, #32
vmla.s16 Q5, Q7, r9
vshlc Q4, r12, #32
vmla.s16 Q5, Q2, r7
vshlc Q3, r12, #32
vmla.s16 Q4, Q6, r9
vmla.s16 Q4, Q7, r7
vshlc Q5, r12, #32
vmla.s16 Q5, Q7, r10
vshlc Q4, r12, #32
vmla.s16 Q5, Q2, r8
vshlc Q3, r12, #32
vmla.s16 Q4, Q6, r10
vsub.u16 Q5, Q5, Q3
vstrh.u16 Q5, [r0,#(0)]
vmla.s16 Q4, Q7, r8
vstrh.u16 Q4, [r0,#(16)]
add r1,   r1,   #32
add r2,   r2,   #32
add r0, r0, #32
vldrh.u16 Q2, [r0, #(2 * 0)]
vldrh.u16 Q3, [r0, #(2 * 8)]
ldrd r10, r9, [r1, #0]
ldrd r8, r7, [r1, #16]
ldrd r6, r5, [r1, #24]
vldrh.u16 Q0, [r2, #(2 * 0)]
vmla.s16 Q2, Q0, r6
vldrh.u16 Q1, [r2, #(2 * 8)]
vmla.s16 Q3, Q1, r6
ldrd r4, r3, [r1, #8]
mov r12, #0
vmla.s16 Q2, Q1, r4
vneg.s16 Q5, Q0
vmla.s16 Q3, Q5, r4
vshlc Q2, r12, #32
vmla.s16 Q2, Q1, r9
vshlc Q3, r12, #32
vmla.s16 Q2, Q0, r7
veor.u16 Q4, Q4, Q4
vmla.s16 Q3, Q1, r7
vshlc Q4, r12, #32
vmla.s16 Q3, Q5, r9
vshlc Q2, r12, #32
vmla.s16 Q2, Q1, r10
vshlc Q3, r12, #32
vmla.s16 Q2, Q0, r8
vshlc Q4, r12, #32
vmla.s16 Q3, Q1, r8
vshlc Q2, r12, #32
vmla.s16 Q3, Q5, r10
vneg.s16 Q5, Q1
vmla.s16 Q2, Q0, r3
vshlc Q3, r12, #32
vmla.s16 Q2, Q5, r5
vshlc Q4, r12, #32
vmla.s16 Q3, Q1, r3
vsub.u16 Q2, Q2, Q4
vmla.s16 Q3, Q0, r5
asrl r4, r3, #16
asrl r6, r5, #16
asrl r10, r9, #16
asrl r8, r7, #16
vshlc Q2, r12, #16
vmla.s16 Q2, Q0, r3
vshlc Q3, r12, #16
vmla.s16 Q2, Q5, r5
veor.u16 Q4, Q4, Q4
vmla.s16 Q3, Q1, r3
vshlc Q4, r12, #16
vmla.s16 Q3, Q0, r5
vshlc Q2, r12, #32
vmla.s16 Q2, Q0, r4
vshlc Q3, r12, #32
vmla.s16 Q2, Q5, r6
vshlc Q4, r12, #32
vmla.s16 Q3, Q1, r4
vmla.s16 Q3, Q0, r6
vshlc Q2, r12, #32
vmla.s16 Q2, Q0, r9
vshlc Q3, r12, #32
vmla.s16 Q2, Q5, r7
vshlc Q4, r12, #32
vmla.s16 Q3, Q1, r9
vmla.s16 Q3, Q0, r7
vshlc Q2, r12, #32
vmla.s16 Q2, Q0, r10
vshlc Q3, r12, #32
vmla.s16 Q2, Q5, r8
vshlc Q4, r12, #32
vmla.s16 Q3, Q1, r10
vsub.u16 Q2, Q2, Q4
vstrh.u16 Q2, [r0,#(0)]
vmla.s16 Q3, Q0, r8
vstrh.u16 Q3, [r0,#(16)]
add r1,   r1,   #32
add r2,   r2,   #32
add r0, r0, #32
le r14, loop_start
loop_end:
vldrh.u16 Q5, [r0, #(2 * 0)]
vldrh.u16 Q4, [r0, #(2 * 8)]
ldrd r14, r9, [r1, #0]
ldrd r10, r7, [r1, #16]
ldrd r8, r5, [r1, #24]
vldrh.u16 Q7, [r2, #(2 * 0)]
vmla.s16 Q5, Q7, r8
vldrh.u16 Q6, [r2, #(2 * 8)]
vmla.s16 Q4, Q6, r8
ldrd r6, r3, [r1, #8]
mov r12, #0
vmla.s16 Q5, Q6, r6
vneg.s16 Q2, Q7
vmla.s16 Q4, Q2, r6
vshlc Q5, r12, #32
vmla.s16 Q5, Q6, r9
vshlc Q4, r12, #32
vmla.s16 Q5, Q7, r7
veor.u16 Q3, Q3, Q3
vmla.s16 Q4, Q6, r7
vshlc Q3, r12, #32
vmla.s16 Q4, Q2, r9
vshlc Q5, r12, #32
vmla.s16 Q5, Q6, r14
vshlc Q4, r12, #32
vmla.s16 Q5, Q7, r10
vshlc Q3, r12, #32
vmla.s16 Q4, Q6, r10
vshlc Q5, r12, #32
vmla.s16 Q4, Q2, r14
vneg.s16 Q2, Q6
vmla.s16 Q5, Q7, r3
vshlc Q4, r12, #32
vmla.s16 Q5, Q2, r5
vshlc Q3, r12, #32
vmla.s16 Q4, Q6, r3
vsub.u16 Q5, Q5, Q3
vmla.s16 Q4, Q7, r5
asrl r6, r3, #16
asrl r8, r5, #16
asrl r14, r9, #16
asrl r10, r7, #16
vshlc Q5, r12, #16
vmla.s16 Q5, Q7, r3
vshlc Q4, r12, #16
vmla.s16 Q5, Q2, r5
veor.u16 Q3, Q3, Q3
vmla.s16 Q4, Q6, r3
vshlc Q3, r12, #16
vmla.s16 Q4, Q7, r5
vshlc Q5, r12, #32
vmla.s16 Q5, Q7, r6
vshlc Q4, r12, #32
vmla.s16 Q5, Q2, r8
vshlc Q3, r12, #32
vmla.s16 Q4, Q6, r6
vmla.s16 Q4, Q7, r8
vshlc Q5, r12, #32
vmla.s16 Q5, Q7, r9
vshlc Q4, r12, #32
vmla.s16 Q5, Q2, r7
vshlc Q3, r12, #32
vmla.s16 Q4, Q6, r9
vmla.s16 Q4, Q7, r7
vshlc Q5, r12, #32
vmla.s16 Q5, Q7, r14
vshlc Q4, r12, #32
vmla.s16 Q5, Q2, r10
vshlc Q3, r12, #32
vmla.s16 Q4, Q6, r14
vsub.u16 Q5, Q5, Q3
vstrh.u16 Q5, [r0,#(0)]
vmla.s16 Q4, Q7, r10
vstrh.u16 Q4, [r0,#(16)]
add r1,   r1,   #32
add r2,   r2,   #32
add r0, r0, #32
vldrh.u16 Q2, [r0, #(2 * 0)]
vldrh.u16 Q3, [r0, #(2 * 8)]
ldrd r14, r9, [r1, #0]
ldrd r10, r7, [r1, #16]
ldrd r8, r5, [r1, #24]
vldrh.u16 Q0, [r2, #(2 * 0)]
vmla.s16 Q2, Q0, r8
vldrh.u16 Q1, [r2, #(2 * 8)]
vmla.s16 Q3, Q1, r8
ldrd r6, r3, [r1, #8]
mov r12, #0
vmla.s16 Q2, Q1, r6
vneg.s16 Q5, Q0
vmla.s16 Q3, Q5, r6
vshlc Q2, r12, #32
vmla.s16 Q2, Q1, r9
vshlc Q3, r12, #32
vmla.s16 Q2, Q0, r7
veor.u16 Q4, Q4, Q4
vmla.s16 Q3, Q1, r7
vshlc Q4, r12, #32
vmla.s16 Q3, Q5, r9
vshlc Q2, r12, #32
vmla.s16 Q2, Q1, r14
vshlc Q3, r12, #32
vmla.s16 Q2, Q0, r10
vshlc Q4, r12, #32
vmla.s16 Q3, Q1, r10
vshlc Q2, r12, #32
vmla.s16 Q3, Q5, r14
vneg.s16 Q5, Q1
vmla.s16 Q2, Q0, r3
vshlc Q3, r12, #32
vmla.s16 Q2, Q5, r5
vshlc Q4, r12, #32
vmla.s16 Q3, Q1, r3
vsub.u16 Q2, Q2, Q4
vmla.s16 Q3, Q0, r5
asrl r6, r3, #16
asrl r8, r5, #16
asrl r14, r9, #16
asrl r10, r7, #16
vshlc Q2, r12, #16
vmla.s16 Q2, Q0, r3
vshlc Q3, r12, #16
vmla.s16 Q2, Q5, r5
veor.u16 Q4, Q4, Q4
vmla.s16 Q3, Q1, r3
vshlc Q4, r12, #16
vmla.s16 Q3, Q0, r5
vshlc Q2, r12, #32
vmla.s16 Q2, Q0, r6
vshlc Q3, r12, #32
vmla.s16 Q2, Q5, r8
vshlc Q4, r12, #32
vmla.s16 Q3, Q1, r6
vmla.s16 Q3, Q0, r8
vshlc Q2, r12, #32
vmla.s16 Q2, Q0, r9
vshlc Q3, r12, #32
vmla.s16 Q2, Q5, r7
vshlc Q4, r12, #32
vmla.s16 Q3, Q1, r9
vmla.s16 Q3, Q0, r7
vshlc Q2, r12, #32
vmla.s16 Q2, Q0, r14
vshlc Q3, r12, #32
vmla.s16 Q2, Q5, r10
vshlc Q4, r12, #32
vmla.s16 Q3, Q1, r14
vsub.u16 Q2, Q2, Q4
vstrh.u16 Q2, [r0,#(0)]
vmla.s16 Q3, Q0, r10
vstrh.u16 Q3, [r0,#(16)]
vpop {d8-d15}
pop {r4-r11,lr}
bx lr