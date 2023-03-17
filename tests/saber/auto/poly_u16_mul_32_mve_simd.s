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
.type poly_u16_mul_32_mve_simd, %function
.global poly_u16_mul_32_mve_simd
poly_u16_mul_32_mve_simd:
push {r4-r11,lr}
vpush {d0-d15}
mov r0, r0
mov r0, r0
mov r12, #0
ldrh r14, [r1, #14]
ldrh r11, [r1, #30]
ldrh r10, [r1, #46]
ldrh r9, [r1, #62]
vldrh.u16 Q0, [r2, #0]
vmul.u16 Q1, Q0, r14
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(0)]
vmul.u16 Q1, Q0, r11
vldrh.u16 Q2, [r2, #16]
vmla.s16 Q1, Q2, r14
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(16)]
vmul.u16 Q1, Q0, r10
vmla.s16 Q1, Q2, r11
vldrh.u16 Q3, [r2, #32]
vmla.s16 Q1, Q3, r14
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(32)]
vmul.u16 Q1, Q0, r9
vmla.s16 Q1, Q2, r10
vmla.s16 Q1, Q3, r11
vldrh.u16 Q4, [r2, #48]
vmla.s16 Q1, Q4, r14
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(48)]
vmul.u16 Q1, Q2, r9
vmla.s16 Q1, Q3, r10
vmla.s16 Q1, Q4, r11
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(64)]
vmul.u16 Q1, Q3, r9
vmla.s16 Q1, Q4, r10
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(80)]
vmul.u16 Q1, Q4, r9
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(96)]
vmov.u16 Q1, #0
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(112)]
mov r12, #0
ldrh r14, [r1, #12]
ldrh r11, [r1, #28]
ldrh r10, [r1, #44]
ldrh r9, [r1, #60]
vldrh.u16 Q1, [r0, #0]
vmla.s16 Q1, Q0, r14
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(0)]
vldrh.u16 Q1, [r0, #16]
vmla.s16 Q1, Q0, r11
vmla.s16 Q1, Q2, r14
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(16)]
vldrh.u16 Q1, [r0, #32]
vmla.s16 Q1, Q0, r10
vmla.s16 Q1, Q2, r11
vmla.s16 Q1, Q3, r14
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(32)]
vldrh.u16 Q1, [r0, #48]
vmla.s16 Q1, Q0, r9
vmla.s16 Q1, Q2, r10
vmla.s16 Q1, Q3, r11
vmla.s16 Q1, Q4, r14
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(48)]
vldrh.u16 Q1, [r0, #64]
vmla.s16 Q1, Q2, r9
vmla.s16 Q1, Q3, r10
vmla.s16 Q1, Q4, r11
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(64)]
vldrh.u16 Q1, [r0, #80]
vmla.s16 Q1, Q3, r9
vmla.s16 Q1, Q4, r10
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(80)]
vldrh.u16 Q1, [r0, #96]
vmla.s16 Q1, Q4, r9
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(96)]
vldrh.u16 Q1, [r0, #112]
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(112)]
mov r12, #0
ldrh r14, [r1, #10]
ldrh r11, [r1, #26]
ldrh r10, [r1, #42]
ldrh r9, [r1, #58]
vldrh.u16 Q1, [r0, #0]
vmla.s16 Q1, Q0, r14
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(0)]
vldrh.u16 Q1, [r0, #16]
vmla.s16 Q1, Q0, r11
vmla.s16 Q1, Q2, r14
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(16)]
vldrh.u16 Q1, [r0, #32]
vmla.s16 Q1, Q0, r10
vmla.s16 Q1, Q2, r11
vmla.s16 Q1, Q3, r14
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(32)]
vldrh.u16 Q1, [r0, #48]
vmla.s16 Q1, Q0, r9
vmla.s16 Q1, Q2, r10
vmla.s16 Q1, Q3, r11
vmla.s16 Q1, Q4, r14
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(48)]
vldrh.u16 Q1, [r0, #64]
vmla.s16 Q1, Q2, r9
vmla.s16 Q1, Q3, r10
vmla.s16 Q1, Q4, r11
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(64)]
vldrh.u16 Q1, [r0, #80]
vmla.s16 Q1, Q3, r9
vmla.s16 Q1, Q4, r10
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(80)]
vldrh.u16 Q1, [r0, #96]
vmla.s16 Q1, Q4, r9
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(96)]
vldrh.u16 Q1, [r0, #112]
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(112)]
mov r12, #0
ldrh r14, [r1, #8]
ldrh r11, [r1, #24]
ldrh r10, [r1, #40]
ldrh r9, [r1, #56]
vldrh.u16 Q1, [r0, #0]
vmla.s16 Q1, Q0, r14
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(0)]
vldrh.u16 Q1, [r0, #16]
vmla.s16 Q1, Q0, r11
vmla.s16 Q1, Q2, r14
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(16)]
vldrh.u16 Q1, [r0, #32]
vmla.s16 Q1, Q0, r10
vmla.s16 Q1, Q2, r11
vmla.s16 Q1, Q3, r14
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(32)]
vldrh.u16 Q1, [r0, #48]
vmla.s16 Q1, Q0, r9
vmla.s16 Q1, Q2, r10
vmla.s16 Q1, Q3, r11
vmla.s16 Q1, Q4, r14
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(48)]
vldrh.u16 Q1, [r0, #64]
vmla.s16 Q1, Q2, r9
vmla.s16 Q1, Q3, r10
vmla.s16 Q1, Q4, r11
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(64)]
vldrh.u16 Q1, [r0, #80]
vmla.s16 Q1, Q3, r9
vmla.s16 Q1, Q4, r10
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(80)]
vldrh.u16 Q1, [r0, #96]
vmla.s16 Q1, Q4, r9
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(96)]
vldrh.u16 Q1, [r0, #112]
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(112)]
mov r12, #0
ldrh r14, [r1, #6]
ldrh r11, [r1, #22]
ldrh r10, [r1, #38]
ldrh r9, [r1, #54]
vldrh.u16 Q1, [r0, #0]
vmla.s16 Q1, Q0, r14
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(0)]
vldrh.u16 Q1, [r0, #16]
vmla.s16 Q1, Q0, r11
vmla.s16 Q1, Q2, r14
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(16)]
vldrh.u16 Q1, [r0, #32]
vmla.s16 Q1, Q0, r10
vmla.s16 Q1, Q2, r11
vmla.s16 Q1, Q3, r14
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(32)]
vldrh.u16 Q1, [r0, #48]
vmla.s16 Q1, Q0, r9
vmla.s16 Q1, Q2, r10
vmla.s16 Q1, Q3, r11
vmla.s16 Q1, Q4, r14
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(48)]
vldrh.u16 Q1, [r0, #64]
vmla.s16 Q1, Q2, r9
vmla.s16 Q1, Q3, r10
vmla.s16 Q1, Q4, r11
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(64)]
vldrh.u16 Q1, [r0, #80]
vmla.s16 Q1, Q3, r9
vmla.s16 Q1, Q4, r10
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(80)]
vldrh.u16 Q1, [r0, #96]
vmla.s16 Q1, Q4, r9
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(96)]
vldrh.u16 Q1, [r0, #112]
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(112)]
mov r12, #0
ldrh r14, [r1, #4]
ldrh r11, [r1, #20]
ldrh r10, [r1, #36]
ldrh r9, [r1, #52]
vldrh.u16 Q1, [r0, #0]
vmla.s16 Q1, Q0, r14
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(0)]
vldrh.u16 Q1, [r0, #16]
vmla.s16 Q1, Q0, r11
vmla.s16 Q1, Q2, r14
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(16)]
vldrh.u16 Q1, [r0, #32]
vmla.s16 Q1, Q0, r10
vmla.s16 Q1, Q2, r11
vmla.s16 Q1, Q3, r14
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(32)]
vldrh.u16 Q1, [r0, #48]
vmla.s16 Q1, Q0, r9
vmla.s16 Q1, Q2, r10
vmla.s16 Q1, Q3, r11
vmla.s16 Q1, Q4, r14
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(48)]
vldrh.u16 Q1, [r0, #64]
vmla.s16 Q1, Q2, r9
vmla.s16 Q1, Q3, r10
vmla.s16 Q1, Q4, r11
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(64)]
vldrh.u16 Q1, [r0, #80]
vmla.s16 Q1, Q3, r9
vmla.s16 Q1, Q4, r10
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(80)]
vldrh.u16 Q1, [r0, #96]
vmla.s16 Q1, Q4, r9
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(96)]
vldrh.u16 Q1, [r0, #112]
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(112)]
mov r12, #0
ldrh r14, [r1, #2]
ldrh r11, [r1, #18]
ldrh r10, [r1, #34]
ldrh r9, [r1, #50]
vldrh.u16 Q1, [r0, #0]
vmla.s16 Q1, Q0, r14
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(0)]
vldrh.u16 Q1, [r0, #16]
vmla.s16 Q1, Q0, r11
vmla.s16 Q1, Q2, r14
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(16)]
vldrh.u16 Q1, [r0, #32]
vmla.s16 Q1, Q0, r10
vmla.s16 Q1, Q2, r11
vmla.s16 Q1, Q3, r14
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(32)]
vldrh.u16 Q1, [r0, #48]
vmla.s16 Q1, Q0, r9
vmla.s16 Q1, Q2, r10
vmla.s16 Q1, Q3, r11
vmla.s16 Q1, Q4, r14
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(48)]
vldrh.u16 Q1, [r0, #64]
vmla.s16 Q1, Q2, r9
vmla.s16 Q1, Q3, r10
vmla.s16 Q1, Q4, r11
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(64)]
vldrh.u16 Q1, [r0, #80]
vmla.s16 Q1, Q3, r9
vmla.s16 Q1, Q4, r10
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(80)]
vldrh.u16 Q1, [r0, #96]
vmla.s16 Q1, Q4, r9
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(96)]
vldrh.u16 Q1, [r0, #112]
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(112)]
mov r12, #0
ldrh r14, [r1, #0]
ldrh r11, [r1, #16]
ldrh r10, [r1, #32]
ldrh r9, [r1, #48]
vldrh.u16 Q1, [r0, #0]
vmla.s16 Q1, Q0, r14
vstrh.u16 Q1, [r0,#(0)]
vldrh.u16 Q1, [r0, #16]
vmla.s16 Q1, Q0, r11
vmla.s16 Q1, Q2, r14
vstrh.u16 Q1, [r0,#(16)]
vldrh.u16 Q1, [r0, #32]
vmla.s16 Q1, Q0, r10
vmla.s16 Q1, Q2, r11
vmla.s16 Q1, Q3, r14
vstrh.u16 Q1, [r0,#(32)]
vldrh.u16 Q1, [r0, #48]
vmla.s16 Q1, Q0, r9
vmla.s16 Q1, Q2, r10
vmla.s16 Q1, Q3, r11
vmla.s16 Q1, Q4, r14
vstrh.u16 Q1, [r0,#(48)]
vldrh.u16 Q1, [r0, #64]
vmla.s16 Q1, Q2, r9
vmla.s16 Q1, Q3, r10
vmla.s16 Q1, Q4, r11
vstrh.u16 Q1, [r0,#(64)]
vldrh.u16 Q1, [r0, #80]
vmla.s16 Q1, Q3, r9
vmla.s16 Q1, Q4, r10
vstrh.u16 Q1, [r0,#(80)]
vldrh.u16 Q1, [r0, #96]
vmla.s16 Q1, Q4, r9
vstrh.u16 Q1, [r0,#(96)]
vldrh.u16 Q1, [r0, #112]
vstrh.u16 Q1, [r0,#(112)]
vpop {d0-d15}
pop {r4-r11,lr}
bx lr