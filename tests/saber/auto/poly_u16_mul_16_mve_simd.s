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
.type poly_u16_mul_16_mve_simd, %function
.global poly_u16_mul_16_mve_simd
poly_u16_mul_16_mve_simd:
push {r4-r11,lr}
vpush {d0-d15}
ldrh r14, [r1, #14]
ldrh r11, [r1, #30]
vldrh.u16 Q0, [r2, #0]
vmul.u16 Q1, Q0, r14
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(0)]
vmul.u16 Q1, Q0, r11
vldrh.u16 Q2, [r2, #16]
vmla.s16 Q1, Q2, r14
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(16)]
vmul.u16 Q1, Q2, r11
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(32)]
vmov.u16 Q1, #0
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(48)]
ldrh r14, [r1, #14]
ldrh r11, [r1, #30]
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
vmla.s16 Q1, Q2, r11
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(32)]
vldrh.u16 Q1, [r0, #48]
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(48)]
ldrh r14, [r1, #14]
ldrh r11, [r1, #30]
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
vmla.s16 Q1, Q2, r11
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(32)]
vldrh.u16 Q1, [r0, #48]
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(48)]
ldrh r14, [r1, #14]
ldrh r11, [r1, #30]
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
vmla.s16 Q1, Q2, r11
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(32)]
vldrh.u16 Q1, [r0, #48]
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(48)]
ldrh r14, [r1, #14]
ldrh r11, [r1, #30]
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
vmla.s16 Q1, Q2, r11
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(32)]
vldrh.u16 Q1, [r0, #48]
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(48)]
ldrh r14, [r1, #14]
ldrh r11, [r1, #30]
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
vmla.s16 Q1, Q2, r11
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(32)]
vldrh.u16 Q1, [r0, #48]
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(48)]
ldrh r14, [r1, #14]
ldrh r11, [r1, #30]
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
vmla.s16 Q1, Q2, r11
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(32)]
vldrh.u16 Q1, [r0, #48]
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(48)]
ldrh r14, [r1, #14]
ldrh r11, [r1, #30]
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
vmla.s16 Q1, Q2, r11
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(32)]
vldrh.u16 Q1, [r0, #48]
vshlc Q1, r12, #16
vstrh.u16 Q1, [r0,#(48)]
vpop {d0-d15}
pop {r4-r11,lr}
bx lr