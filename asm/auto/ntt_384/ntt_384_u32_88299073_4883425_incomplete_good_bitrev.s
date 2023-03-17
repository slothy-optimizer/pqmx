
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

.data
roots:
.word   85764716 /// zeta^128 * 2^31 = 4883425^128 * 2^31 = 85764716 * 2^31
.word 2085846645 /// zeta^128 * f(q^(-1) mod 2^32) * 2^31 = 4883425^128 * 2066201025 * 2^31
.word    2534356 /// zeta^256 * 2^31 = 4883425^256 * 2^31 = 2534356 * 2^31
.word   61636979 /// zeta^256 * f(q^(-1) mod 2^32) * 2^31 = 4883425^256 * 2066201025 * 2^31
.word          1 // zeta^  0 * 2^31 = 4883425^  0 * 2^31 = 1 * 2^31
.word         24 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 4883425^  0 * 2066201025 * 2^31
.word          1 // zeta^  0 * 2^31 = 4883425^  0 * 2^31 = 1 * 2^31
.word         24 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 4883425^  0 * 2066201025 * 2^31
.word   24724272 // zeta^ 96 * 2^31 = 4883425^ 96 * 2^31 = 24724272 * 2^31
.word  601308349 // zeta^ 96 * f(q^(-1) mod 2^32) * 2^31 = 4883425^ 96 * 2066201025 * 2^31
.word          1 // zeta^  0 * 2^31 = 4883425^  0 * 2^31 = 1 * 2^31
.word         24 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 4883425^  0 * 2066201025 * 2^31
.word          1 // zeta^  0 * 2^31 = 4883425^  0 * 2^31 = 1 * 2^31
.word         24 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 4883425^  0 * 2066201025 * 2^31
.word   24724272 // zeta^ 96 * 2^31 = 4883425^ 96 * 2^31 = 24724272 * 2^31
.word  601308349 // zeta^ 96 * f(q^(-1) mod 2^32) * 2^31 = 4883425^ 96 * 2066201025 * 2^31
.word   24724272 // zeta^ 96 * 2^31 = 4883425^ 96 * 2^31 = 24724272 * 2^31
.word  601308349 // zeta^ 96 * f(q^(-1) mod 2^32) * 2^31 = 4883425^ 96 * 2066201025 * 2^31
.word   66119312 // zeta^240 * 2^31 = 4883425^240 * 2^31 = 66119312 * 2^31
.word 1608059253 // zeta^240 * f(q^(-1) mod 2^32) * 2^31 = 4883425^240 * 2066201025 * 2^31
.word   35138099 // zeta^336 * 2^31 = 4883425^336 * 2^31 = 35138099 * 2^31
.word  854578542 // zeta^336 * f(q^(-1) mod 2^32) * 2^31 = 4883425^336 * 2066201025 * 2^31
.word   66119312 // zeta^240 * 2^31 = 4883425^240 * 2^31 = 66119312 * 2^31
.word 1608059253 // zeta^240 * f(q^(-1) mod 2^32) * 2^31 = 4883425^240 * 2066201025 * 2^31
.word   65038662 // zeta^120 * 2^31 = 4883425^120 * 2^31 = 65038662 * 2^31
.word 1581777230 // zeta^120 * f(q^(-1) mod 2^32) * 2^31 = 4883425^120 * 2066201025 * 2^31
.word   78801296 // zeta^216 * 2^31 = 4883425^216 * 2^31 = 78801296 * 2^31
.word 1916492312 // zeta^216 * f(q^(-1) mod 2^32) * 2^31 = 4883425^216 * 2066201025 * 2^31
.word   35138099 // zeta^336 * 2^31 = 4883425^336 * 2^31 = 35138099 * 2^31
.word  854578542 // zeta^336 * f(q^(-1) mod 2^32) * 2^31 = 4883425^336 * 2066201025 * 2^31
.word   64980291 // zeta^360 * 2^31 = 4883425^360 * 2^31 = 64980291 * 2^31
.word 1580357614 // zeta^360 * f(q^(-1) mod 2^32) * 2^31 = 4883425^360 * 2066201025 * 2^31
.word   58369496 // zeta^ 72 * 2^31 = 4883425^ 72 * 2^31 = 58369496 * 2^31
.word 1419579322 // zeta^ 72 * f(q^(-1) mod 2^32) * 2^31 = 4883425^ 72 * 2066201025 * 2^31
.word          1 // XX: zeta^  0 * 2^31 = 4883425^  0 * 2^31 = 1 * 2^31
.word         24 /// zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 4883425^  0 * 2066201025 * 2^31
.word   24724272 // XX: zeta^ 96 * 2^31 = 4883425^ 96 * 2^31 = 24724272 * 2^31
.word  601308349 /// zeta^ 96 * f(q^(-1) mod 2^32) * 2^31 = 4883425^ 96 * 2066201025 * 2^31
.word   66119312 // XX: zeta^240 * 2^31 = 4883425^240 * 2^31 = 66119312 * 2^31
.word 1608059253 /// zeta^240 * f(q^(-1) mod 2^32) * 2^31 = 4883425^240 * 2066201025 * 2^31
.word   35138099 // XX: zeta^336 * 2^31 = 4883425^336 * 2^31 = 35138099 * 2^31
.word  854578542 /// zeta^336 * f(q^(-1) mod 2^32) * 2^31 = 4883425^336 * 2066201025 * 2^31
.word   65038662 // XX: zeta^120 * 2^31 = 4883425^120 * 2^31 = 65038662 * 2^31
.word 1581777230 /// zeta^120 * f(q^(-1) mod 2^32) * 2^31 = 4883425^120 * 2066201025 * 2^31
.word   78801296 // XX: zeta^216 * 2^31 = 4883425^216 * 2^31 = 78801296 * 2^31
.word 1916492312 /// zeta^216 * f(q^(-1) mod 2^32) * 2^31 = 4883425^216 * 2066201025 * 2^31
.word   64980291 // XX: zeta^360 * 2^31 = 4883425^360 * 2^31 = 64980291 * 2^31
.word 1580357614 /// zeta^360 * f(q^(-1) mod 2^32) * 2^31 = 4883425^360 * 2066201025 * 2^31
.word   58369496 // XX: zeta^ 72 * 2^31 = 4883425^ 72 * 2^31 = 58369496 * 2^31
.word 1419579322 /// zeta^ 72 * f(q^(-1) mod 2^32) * 2^31 = 4883425^ 72 * 2066201025 * 2^31
.word   45729226 // XX: zeta^252 * 2^31 = 4883425^252 * 2^31 = 45729226 * 2^31
.word 1112160771 /// zeta^252 * f(q^(-1) mod 2^32) * 2^31 = 4883425^252 * 2066201025 * 2^31
.word   50306038 // XX: zeta^348 * 2^31 = 4883425^348 * 2^31 = 50306038 * 2^31
.word 1223471440 /// zeta^348 * f(q^(-1) mod 2^32) * 2^31 = 4883425^348 * 2066201025 * 2^31
.word   69050800 // XX: zeta^108 * 2^31 = 4883425^108 * 2^31 = 69050800 * 2^31
.word 1679354707 /// zeta^108 * f(q^(-1) mod 2^32) * 2^31 = 4883425^108 * 2066201025 * 2^31
.word   60527953 // XX: zeta^204 * 2^31 = 4883425^204 * 2^31 = 60527953 * 2^31
.word 1472074223 /// zeta^204 * f(q^(-1) mod 2^32) * 2^31 = 4883425^204 * 2066201025 * 2^31
.word   63570934 // XX: zeta^372 * 2^31 = 4883425^372 * 2^31 = 63570934 * 2^31
.word 1546081251 /// zeta^372 * f(q^(-1) mod 2^32) * 2^31 = 4883425^372 * 2066201025 * 2^31
.word   19136236 // XX: zeta^ 84 * 2^31 = 4883425^ 84 * 2^31 = 19136236 * 2^31
.word  465404137 /// zeta^ 84 * f(q^(-1) mod 2^32) * 2^31 = 4883425^ 84 * 2066201025 * 2^31
.word   83896878 // XX: zeta^228 * 2^31 = 4883425^228 * 2^31 = 83896878 * 2^31
.word 2040419763 /// zeta^228 * f(q^(-1) mod 2^32) * 2^31 = 4883425^228 * 2066201025 * 2^31
.word   79363826 // XX: zeta^324 * 2^31 = 4883425^324 * 2^31 = 79363826 * 2^31
.word 1930173362 /// zeta^324 * f(q^(-1) mod 2^32) * 2^31 = 4883425^324 * 2066201025 * 2^31
.text
.align 4
roots_addr: .word roots
.syntax unified
.type ntt_384_u32_88299073_4883425_incomplete_good_bitrev, %function
.global ntt_384_u32_88299073_4883425_incomplete_good_bitrev
ntt_384_u32_88299073_4883425_incomplete_good_bitrev:
// Save GPRs
push {r4-r11,lr}
// Save MVE vector registers
vpush {d8-d15}
// Use r14 as marker for r0 + 1008
add r14, r0, #1008
// Use r12 as marker for r0 + 2016
add r12, r14, #1008
.equ modulus, -88299073
movw r11, #:lower16:modulus
movt r11, #:upper16:modulus
ldr r10, roots_addr
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
// input[256]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 4)]
// input[128]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -124)]
vsub.s32 Q2, Q0, Q1
vmul.u32 Q3, Q2, r9
vadd.s32 Q5, Q0, Q1
// Release input[256] from Q0
vqrdmulh.s32 Q4, Q2, r8
// input[0]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 0)]
vmla.s32 Q3, Q4, r11
vsub.s32 Q4, Q0, Q1
// Release input[128] from Q1
// input[64]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 64)]
vadd.s32 Q6, Q4, Q3
// input[320]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * 68)]
vsub.s32 Q4, Q4, Q3
vstrw.u32 Q6, [r14,#(16)]
vsub.s32 Q4, Q4, Q2
vstrw.u32 Q4, [r14,#(-496)]
vadd.s32 Q5, Q5, Q0
// Release input[0] from Q0
vstrw.u32 Q5, [r0,#(0)]
// input[64]: Already loaded as Q1
// input[320]: Already loaded as Q7
vsub.s32 Q0, Q1, Q7
vmul.u32 Q2, Q0, r9
vadd.s32 Q4, Q1, Q7
// Release input[64] from Q1
vqrdmulh.s32 Q3, Q0, r8
// input[192]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -60)]
vmla.s32 Q2, Q3, r11
vsub.s32 Q3, Q1, Q7
// Release input[320] from Q7
// input[160]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -92)]
vadd.s32 Q6, Q3, Q2
// input[32]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 32)]
vsub.s32 Q3, Q3, Q2
vstrw.u32 Q6, [r0,#(256)]
vsub.s32 Q3, Q3, Q0
vstrw.u32 Q3, [r14,#(272)]
vadd.s32 Q4, Q4, Q1
// Release input[192] from Q1
vstrw.u32 Q4, [r14,#(-240)]
// input[160]: Already loaded as Q5
// input[32]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[160] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[288]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 36)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[32] from Q7
// input[352]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 100)]
vadd.s32 Q6, Q2, Q1
// input[224]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -28)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(-368)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(128)]
vadd.s32 Q3, Q3, Q4
// Release input[288] from Q4
vstrw.u32 Q3, [r14,#(144)]
// input[352]: Already loaded as Q5
// input[224]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[352] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[96]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 96)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[224] from Q7
// input[16]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 16)]
vadd.s32 Q6, Q2, Q1
// input[272]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * 20)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(400)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-112)]
vadd.s32 Q3, Q3, Q4
// Release input[96] from Q4
vstrw.u32 Q3, [r0,#(384)]
// input[16]: Already loaded as Q5
// input[272]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[16] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[144]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -108)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[272] from Q7
// input[208]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -44)]
vadd.s32 Q6, Q2, Q1
// input[80]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 80)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r0,#(64)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(80)]
vadd.s32 Q3, Q3, Q4
// Release input[144] from Q4
vstrw.u32 Q3, [r14,#(-432)]
// input[208]: Already loaded as Q5
// input[80]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[208] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[336]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 84)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[80] from Q7
// input[304]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 52)]
vadd.s32 Q6, Q2, Q1
// input[176]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -76)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(-176)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(320)]
vadd.s32 Q3, Q3, Q4
// Release input[336] from Q4
vstrw.u32 Q3, [r14,#(336)]
// input[304]: Already loaded as Q5
// input[176]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[304] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[48]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 48)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[176] from Q7
// input[112]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 112)]
vadd.s32 Q6, Q2, Q1
// input[368]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * 116)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(208)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-304)]
vadd.s32 Q3, Q3, Q4
// Release input[48] from Q4
vstrw.u32 Q3, [r0,#(192)]
// input[112]: Already loaded as Q5
// input[368]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[112] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[240]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -12)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[368] from Q7
// input[136]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -116)]
vadd.s32 Q6, Q2, Q1
// input[8]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 8)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r0,#(448)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(464)]
vadd.s32 Q3, Q3, Q4
// Release input[240] from Q4
vstrw.u32 Q3, [r14,#(-48)]
// input[136]: Already loaded as Q5
// input[8]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[136] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[264]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 12)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[8] from Q7
// input[328]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 76)]
vadd.s32 Q6, Q2, Q1
// input[200]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -52)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(-464)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(32)]
vadd.s32 Q3, Q3, Q4
// Release input[264] from Q4
vstrw.u32 Q3, [r14,#(48)]
// input[328]: Already loaded as Q5
// input[200]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[328] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[72]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 72)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[200] from Q7
// input[40]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 40)]
vadd.s32 Q6, Q2, Q1
// input[296]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * 44)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(304)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-208)]
vadd.s32 Q3, Q3, Q4
// Release input[72] from Q4
vstrw.u32 Q3, [r0,#(288)]
// input[40]: Already loaded as Q5
// input[296]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[40] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[168]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -84)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[296] from Q7
// input[232]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -20)]
vadd.s32 Q6, Q2, Q1
// input[104]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 104)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r0,#(160)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(176)]
vadd.s32 Q3, Q3, Q4
// Release input[168] from Q4
vstrw.u32 Q3, [r14,#(-336)]
// input[232]: Already loaded as Q5
// input[104]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[232] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[360]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 108)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[104] from Q7
// input[280]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 28)]
vadd.s32 Q6, Q2, Q1
// input[152]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -100)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(-80)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(416)]
vadd.s32 Q3, Q3, Q4
// Release input[360] from Q4
vstrw.u32 Q3, [r14,#(432)]
// input[280]: Already loaded as Q5
// input[152]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[280] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[24]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 24)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[152] from Q7
// input[88]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 88)]
vadd.s32 Q6, Q2, Q1
// input[344]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * 92)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(112)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-400)]
vadd.s32 Q3, Q3, Q4
// Release input[24] from Q4
vstrw.u32 Q3, [r0,#(96)]
// input[88]: Already loaded as Q5
// input[344]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[88] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[216]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -36)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[344] from Q7
// input[184]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -68)]
vadd.s32 Q6, Q2, Q1
// input[56]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 56)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r0,#(352)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(368)]
vadd.s32 Q3, Q3, Q4
// Release input[216] from Q4
vstrw.u32 Q3, [r14,#(-144)]
// input[184]: Already loaded as Q5
// input[56]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[184] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[312]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 60)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[56] from Q7
// input[376]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 124)]
vadd.s32 Q6, Q2, Q1
// input[248]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -4)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(-272)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(224)]
vadd.s32 Q3, Q3, Q4
// Release input[312] from Q4
vstrw.u32 Q3, [r14,#(240)]
// input[376]: Already loaded as Q5
// input[248]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[376] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[120]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 120)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[248] from Q7
// input[4]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 4)]
vadd.s32 Q6, Q2, Q1
// input[260]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * 8)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(496)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-16)]
vadd.s32 Q3, Q3, Q4
// Release input[120] from Q4
vstrw.u32 Q3, [r0,#(480)]
// input[4]: Already loaded as Q5
// input[260]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[4] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[132]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -120)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[260] from Q7
// input[196]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -56)]
vadd.s32 Q6, Q2, Q1
// input[68]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 68)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r0,#(16)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(32)]
vadd.s32 Q3, Q3, Q4
// Release input[132] from Q4
vstrw.u32 Q3, [r14,#(-480)]
// input[196]: Already loaded as Q5
// input[68]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[196] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[324]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 72)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[68] from Q7
// input[292]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 40)]
vadd.s32 Q6, Q2, Q1
// input[164]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -88)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(-224)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(272)]
vadd.s32 Q3, Q3, Q4
// Release input[324] from Q4
vstrw.u32 Q3, [r14,#(288)]
// input[292]: Already loaded as Q5
// input[164]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[292] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[36]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 36)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[164] from Q7
// input[100]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 100)]
vadd.s32 Q6, Q2, Q1
// input[356]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * 104)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(160)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-352)]
vadd.s32 Q3, Q3, Q4
// Release input[36] from Q4
vstrw.u32 Q3, [r0,#(144)]
// input[100]: Already loaded as Q5
// input[356]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[100] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[228]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -24)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[356] from Q7
// input[148]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -104)]
vadd.s32 Q6, Q2, Q1
// input[20]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 20)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r0,#(400)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(416)]
vadd.s32 Q3, Q3, Q4
// Release input[228] from Q4
vstrw.u32 Q3, [r14,#(-96)]
// input[148]: Already loaded as Q5
// input[20]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[148] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[276]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 24)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[20] from Q7
// input[340]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 88)]
vadd.s32 Q6, Q2, Q1
// input[212]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -40)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(-416)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(80)]
vadd.s32 Q3, Q3, Q4
// Release input[276] from Q4
vstrw.u32 Q3, [r14,#(96)]
// input[340]: Already loaded as Q5
// input[212]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[340] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[84]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 84)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[212] from Q7
// input[52]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 52)]
vadd.s32 Q6, Q2, Q1
// input[308]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * 56)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(352)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-160)]
vadd.s32 Q3, Q3, Q4
// Release input[84] from Q4
vstrw.u32 Q3, [r0,#(336)]
// input[52]: Already loaded as Q5
// input[308]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[52] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[180]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -72)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[308] from Q7
// input[244]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -8)]
vadd.s32 Q6, Q2, Q1
// input[116]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 116)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r0,#(208)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(224)]
vadd.s32 Q3, Q3, Q4
// Release input[180] from Q4
vstrw.u32 Q3, [r14,#(-288)]
// input[244]: Already loaded as Q5
// input[116]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[244] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[372]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 120)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[116] from Q7
// input[268]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 16)]
vadd.s32 Q6, Q2, Q1
// input[140]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -112)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(-32)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(464)]
vadd.s32 Q3, Q3, Q4
// Release input[372] from Q4
vstrw.u32 Q3, [r14,#(480)]
// input[268]: Already loaded as Q5
// input[140]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[268] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[12]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 12)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[140] from Q7
// input[76]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 76)]
vadd.s32 Q6, Q2, Q1
// input[332]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * 80)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(64)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-448)]
vadd.s32 Q3, Q3, Q4
// Release input[12] from Q4
vstrw.u32 Q3, [r0,#(48)]
// input[76]: Already loaded as Q5
// input[332]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[76] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[204]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -48)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[332] from Q7
// input[172]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -80)]
vadd.s32 Q6, Q2, Q1
// input[44]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 44)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r0,#(304)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(320)]
vadd.s32 Q3, Q3, Q4
// Release input[204] from Q4
vstrw.u32 Q3, [r14,#(-192)]
// input[172]: Already loaded as Q5
// input[44]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[172] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[300]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 48)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[44] from Q7
// input[364]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 112)]
vadd.s32 Q6, Q2, Q1
// input[236]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -16)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(-320)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(176)]
vadd.s32 Q3, Q3, Q4
// Release input[300] from Q4
vstrw.u32 Q3, [r14,#(192)]
// input[364]: Already loaded as Q5
// input[236]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[364] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[108]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 108)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[236] from Q7
// input[28]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 28)]
vadd.s32 Q6, Q2, Q1
// input[284]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * 32)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(448)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-64)]
vadd.s32 Q3, Q3, Q4
// Release input[108] from Q4
vstrw.u32 Q3, [r0,#(432)]
// input[28]: Already loaded as Q5
// input[284]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[28] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[156]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -96)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[284] from Q7
// input[220]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -32)]
vadd.s32 Q6, Q2, Q1
// input[92]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 92)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r0,#(112)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(128)]
vadd.s32 Q3, Q3, Q4
// Release input[156] from Q4
vstrw.u32 Q3, [r14,#(-384)]
// input[220]: Already loaded as Q5
// input[92]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[220] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[348]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 96)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[92] from Q7
// input[316]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 64)]
vadd.s32 Q6, Q2, Q1
// input[188]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -64)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(-128)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(368)]
vadd.s32 Q3, Q3, Q4
// Release input[348] from Q4
vstrw.u32 Q3, [r14,#(384)]
// input[316]: Already loaded as Q5
// input[188]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[316] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[60]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 60)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[188] from Q7
// input[124]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 124)]
vadd.s32 Q6, Q2, Q1
// input[380]: Load as Q7
vldrw.u32 Q7, [r12, #(4 * -124)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(256)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-256)]
vadd.s32 Q3, Q3, Q4
// Release input[60] from Q4
vstrw.u32 Q3, [r0,#(240)]
// input[124]: Already loaded as Q5
// input[380]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[124] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[252]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 0)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[380] from Q7
vadd.s32 Q5, Q2, Q1
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q5, [r0,#(496)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r12,#(-496)]
vadd.s32 Q3, Q3, Q4
// Release input[252] from Q4
vstrw.u32 Q3, [r14,#(0)]
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[264]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 12)]
// input[12]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 12)]
vsub.s32 Q2, Q0, Q1
vmul.u32 Q3, Q2, r5
// input[132]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -120)]
vadd.s32 Q0, Q0, Q1
// Release input[12] from Q1
// input[0]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 0)]
vsub.s32 Q5, Q1, Q4
// input[204]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * -48)]
vadd.s32 Q1, Q1, Q4
// Release input[132] from Q4
vqrdmulh.s32 Q2, Q2, r4
vsub.s32 Q4, Q1, Q0
// input[72]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 72)]
vmla.s32 Q3, Q2, r11
vstrw.u32 Q4, [r14,#(48)]
vadd.s32 Q1, Q1, Q0
// Release input[264] from Q0
vstrw.u32 Q1, [r0,#(0)]
// Release input[0] from Q1
vsub.s32 Q2, Q5, Q3
vstrw.u32 Q2, [r0,#(48)]
vadd.s32 Q5, Q5, Q3
vstrw.u32 Q5, [r14,#(-480)]
// input[72]: Already loaded as Q7
// input[204]: Already loaded as Q6
vsub.s32 Q0, Q7, Q6
vmul.u32 Q1, Q0, r5
// input[324]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 72)]
vadd.s32 Q7, Q7, Q6
// Release input[204] from Q6
// input[192]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -60)]
vsub.s32 Q4, Q3, Q2
// input[300]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 48)]
vadd.s32 Q3, Q3, Q2
// Release input[324] from Q2
vqrdmulh.s32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q7
// input[168]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * -84)]
vmla.s32 Q1, Q0, r11
vstrw.u32 Q2, [r0,#(288)]
vadd.s32 Q3, Q3, Q7
// Release input[72] from Q7
vstrw.u32 Q3, [r14,#(-240)]
// Release input[192] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(-192)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(288)]
// input[168]: Already loaded as Q6
// input[300]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vmul.u32 Q1, Q0, r5
// input[36]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 36)]
vadd.s32 Q6, Q6, Q5
// Release input[300] from Q5
// input[288]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 36)]
vsub.s32 Q4, Q3, Q2
// input[108]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 108)]
vadd.s32 Q3, Q3, Q2
// Release input[36] from Q2
vqrdmulh.s32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q6
// input[360]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * 108)]
vmla.s32 Q1, Q0, r11
vstrw.u32 Q2, [r14,#(-336)]
vadd.s32 Q3, Q3, Q6
// Release input[168] from Q6
vstrw.u32 Q3, [r14,#(144)]
// Release input[288] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(192)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r0,#(144)]
// input[360]: Already loaded as Q7
// input[108]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vmul.u32 Q1, Q0, r5
// input[228]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -24)]
vadd.s32 Q7, Q7, Q5
// Release input[108] from Q5
// input[96]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 96)]
vsub.s32 Q4, Q3, Q2
// input[156]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -96)]
vadd.s32 Q3, Q3, Q2
// Release input[228] from Q2
vqrdmulh.s32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q7
// input[24]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 24)]
vmla.s32 Q1, Q0, r11
vstrw.u32 Q2, [r14,#(432)]
vadd.s32 Q3, Q3, Q7
// Release input[360] from Q7
vstrw.u32 Q3, [r0,#(384)]
// Release input[96] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r0,#(432)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(-96)]
// input[24]: Already loaded as Q6
// input[156]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vmul.u32 Q1, Q0, r5
// input[276]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 24)]
vadd.s32 Q6, Q6, Q5
// Release input[156] from Q5
// input[144]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -108)]
vsub.s32 Q4, Q3, Q2
// input[348]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 96)]
vadd.s32 Q3, Q3, Q2
// Release input[276] from Q2
vqrdmulh.s32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q6
// input[216]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -36)]
vmla.s32 Q1, Q0, r11
vstrw.u32 Q2, [r0,#(96)]
vadd.s32 Q3, Q3, Q6
// Release input[24] from Q6
vstrw.u32 Q3, [r14,#(-432)]
// Release input[144] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(-384)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(96)]
// input[216]: Already loaded as Q7
// input[348]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vmul.u32 Q1, Q0, r5
// input[84]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 84)]
vadd.s32 Q7, Q7, Q5
// Release input[348] from Q5
// input[336]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 84)]
vsub.s32 Q4, Q3, Q2
// input[60]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 60)]
vadd.s32 Q3, Q3, Q2
// Release input[84] from Q2
vqrdmulh.s32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q7
// input[312]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * 60)]
vmla.s32 Q1, Q0, r11
vstrw.u32 Q2, [r14,#(-144)]
vadd.s32 Q3, Q3, Q7
// Release input[216] from Q7
vstrw.u32 Q3, [r14,#(336)]
// Release input[336] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(384)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r0,#(336)]
// input[312]: Already loaded as Q6
// input[60]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vmul.u32 Q1, Q0, r5
// input[180]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -72)]
vadd.s32 Q6, Q6, Q5
// Release input[60] from Q5
// input[48]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 48)]
vsub.s32 Q4, Q3, Q2
// input[252]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 0)]
vadd.s32 Q3, Q3, Q2
// Release input[180] from Q2
vqrdmulh.s32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q6
// input[120]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 120)]
vmla.s32 Q1, Q0, r11
vstrw.u32 Q2, [r14,#(240)]
vadd.s32 Q3, Q3, Q6
// Release input[312] from Q6
vstrw.u32 Q3, [r0,#(192)]
// Release input[48] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r0,#(240)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(-288)]
// input[120]: Already loaded as Q7
// input[252]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vmul.u32 Q1, Q0, r5
// input[372]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 120)]
vadd.s32 Q7, Q7, Q5
// Release input[252] from Q5
// input[240]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -12)]
vsub.s32 Q4, Q3, Q2
// input[268]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 16)]
vadd.s32 Q3, Q3, Q2
// Release input[372] from Q2
vqrdmulh.s32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q7
// input[136]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * -116)]
vmla.s32 Q1, Q0, r11
vstrw.u32 Q2, [r0,#(480)]
vadd.s32 Q3, Q3, Q7
// Release input[120] from Q7
vstrw.u32 Q3, [r14,#(-48)]
// Release input[240] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(0)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(480)]
// input[136]: Already loaded as Q6
// input[268]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vmul.u32 Q1, Q0, r5
// input[4]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 4)]
vadd.s32 Q6, Q6, Q5
// Release input[268] from Q5
// input[256]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 4)]
vsub.s32 Q4, Q3, Q2
// input[76]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 76)]
vadd.s32 Q3, Q3, Q2
// Release input[4] from Q2
vqrdmulh.s32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q6
// input[328]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * 76)]
vmla.s32 Q1, Q0, r11
vstrw.u32 Q2, [r14,#(-464)]
vadd.s32 Q3, Q3, Q6
// Release input[136] from Q6
vstrw.u32 Q3, [r14,#(16)]
// Release input[256] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(64)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r0,#(16)]
// input[328]: Already loaded as Q7
// input[76]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vmul.u32 Q1, Q0, r5
// input[196]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -56)]
vadd.s32 Q7, Q7, Q5
// Release input[76] from Q5
// input[64]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 64)]
vsub.s32 Q4, Q3, Q2
// input[172]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -80)]
vadd.s32 Q3, Q3, Q2
// Release input[196] from Q2
vqrdmulh.s32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q7
// input[40]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 40)]
vmla.s32 Q1, Q0, r11
vstrw.u32 Q2, [r14,#(304)]
vadd.s32 Q3, Q3, Q7
// Release input[328] from Q7
vstrw.u32 Q3, [r0,#(256)]
// Release input[64] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r0,#(304)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(-224)]
// input[40]: Already loaded as Q6
// input[172]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vmul.u32 Q1, Q0, r5
// input[292]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 40)]
vadd.s32 Q6, Q6, Q5
// Release input[172] from Q5
// input[160]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -92)]
vsub.s32 Q4, Q3, Q2
// input[364]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 112)]
vadd.s32 Q3, Q3, Q2
// Release input[292] from Q2
vqrdmulh.s32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q6
// input[232]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -20)]
vmla.s32 Q1, Q0, r11
vstrw.u32 Q2, [r0,#(160)]
vadd.s32 Q3, Q3, Q6
// Release input[40] from Q6
vstrw.u32 Q3, [r14,#(-368)]
// Release input[160] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(-320)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(160)]
// input[232]: Already loaded as Q7
// input[364]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vmul.u32 Q1, Q0, r5
// input[100]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 100)]
vadd.s32 Q7, Q7, Q5
// Release input[364] from Q5
// input[352]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 100)]
vsub.s32 Q4, Q3, Q2
// input[28]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 28)]
vadd.s32 Q3, Q3, Q2
// Release input[100] from Q2
vqrdmulh.s32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q7
// input[280]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * 28)]
vmla.s32 Q1, Q0, r11
vstrw.u32 Q2, [r14,#(-80)]
vadd.s32 Q3, Q3, Q7
// Release input[232] from Q7
vstrw.u32 Q3, [r14,#(400)]
// Release input[352] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(448)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r0,#(400)]
// input[280]: Already loaded as Q6
// input[28]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vmul.u32 Q1, Q0, r5
// input[148]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -104)]
vadd.s32 Q6, Q6, Q5
// Release input[28] from Q5
// input[16]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 16)]
vsub.s32 Q4, Q3, Q2
// input[220]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -32)]
vadd.s32 Q3, Q3, Q2
// Release input[148] from Q2
vqrdmulh.s32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q6
// input[88]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 88)]
vmla.s32 Q1, Q0, r11
vstrw.u32 Q2, [r14,#(112)]
vadd.s32 Q3, Q3, Q6
// Release input[280] from Q6
vstrw.u32 Q3, [r0,#(64)]
// Release input[16] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r0,#(112)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(-416)]
// input[88]: Already loaded as Q7
// input[220]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vmul.u32 Q1, Q0, r5
// input[340]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 88)]
vadd.s32 Q7, Q7, Q5
// Release input[220] from Q5
// input[208]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -44)]
vsub.s32 Q4, Q3, Q2
// input[316]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 64)]
vadd.s32 Q3, Q3, Q2
// Release input[340] from Q2
vqrdmulh.s32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q7
// input[184]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * -68)]
vmla.s32 Q1, Q0, r11
vstrw.u32 Q2, [r0,#(352)]
vadd.s32 Q3, Q3, Q7
// Release input[88] from Q7
vstrw.u32 Q3, [r14,#(-176)]
// Release input[208] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(-128)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(352)]
// input[184]: Already loaded as Q6
// input[316]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vmul.u32 Q1, Q0, r5
// input[52]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 52)]
vadd.s32 Q6, Q6, Q5
// Release input[316] from Q5
// input[304]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 52)]
vsub.s32 Q4, Q3, Q2
// input[124]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 124)]
vadd.s32 Q3, Q3, Q2
// Release input[52] from Q2
vqrdmulh.s32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q6
// input[376]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * 124)]
vmla.s32 Q1, Q0, r11
vstrw.u32 Q2, [r14,#(-272)]
vadd.s32 Q3, Q3, Q6
// Release input[184] from Q6
vstrw.u32 Q3, [r14,#(208)]
// Release input[304] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(256)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r0,#(208)]
// input[376]: Already loaded as Q7
// input[124]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vmul.u32 Q1, Q0, r5
// input[244]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -8)]
vadd.s32 Q7, Q7, Q5
// Release input[124] from Q5
// input[112]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 112)]
vsub.s32 Q4, Q3, Q2
// input[140]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -112)]
vadd.s32 Q3, Q3, Q2
// Release input[244] from Q2
vqrdmulh.s32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q7
// input[8]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 8)]
vmla.s32 Q1, Q0, r11
vstrw.u32 Q2, [r14,#(496)]
vadd.s32 Q3, Q3, Q7
// Release input[376] from Q7
vstrw.u32 Q3, [r0,#(448)]
// Release input[112] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r0,#(496)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(-32)]
// input[8]: Already loaded as Q6
// input[140]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vmul.u32 Q1, Q0, r5
// input[260]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 8)]
vadd.s32 Q6, Q6, Q5
// Release input[140] from Q5
// input[128]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -124)]
vsub.s32 Q4, Q3, Q2
// input[332]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 80)]
vadd.s32 Q3, Q3, Q2
// Release input[260] from Q2
vqrdmulh.s32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q6
// input[200]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -52)]
vmla.s32 Q1, Q0, r11
vstrw.u32 Q2, [r0,#(32)]
vadd.s32 Q3, Q3, Q6
// Release input[8] from Q6
vstrw.u32 Q3, [r14,#(-496)]
// Release input[128] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(-448)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(32)]
// input[200]: Already loaded as Q7
// input[332]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vmul.u32 Q1, Q0, r5
// input[68]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 68)]
vadd.s32 Q7, Q7, Q5
// Release input[332] from Q5
// input[320]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 68)]
vsub.s32 Q4, Q3, Q2
// input[44]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 44)]
vadd.s32 Q3, Q3, Q2
// Release input[68] from Q2
vqrdmulh.s32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q7
// input[296]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * 44)]
vmla.s32 Q1, Q0, r11
vstrw.u32 Q2, [r14,#(-208)]
vadd.s32 Q3, Q3, Q7
// Release input[200] from Q7
vstrw.u32 Q3, [r14,#(272)]
// Release input[320] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(320)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r0,#(272)]
// input[296]: Already loaded as Q6
// input[44]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vmul.u32 Q1, Q0, r5
// input[164]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -88)]
vadd.s32 Q6, Q6, Q5
// Release input[44] from Q5
// input[32]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 32)]
vsub.s32 Q4, Q3, Q2
// input[236]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -16)]
vadd.s32 Q3, Q3, Q2
// Release input[164] from Q2
vqrdmulh.s32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q6
// input[104]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 104)]
vmla.s32 Q1, Q0, r11
vstrw.u32 Q2, [r14,#(176)]
vadd.s32 Q3, Q3, Q6
// Release input[296] from Q6
vstrw.u32 Q3, [r0,#(128)]
// Release input[32] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r0,#(176)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(-352)]
// input[104]: Already loaded as Q7
// input[236]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vmul.u32 Q1, Q0, r5
// input[356]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 104)]
vadd.s32 Q7, Q7, Q5
// Release input[236] from Q5
// input[224]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -28)]
vsub.s32 Q4, Q3, Q2
// input[284]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 32)]
vadd.s32 Q3, Q3, Q2
// Release input[356] from Q2
vqrdmulh.s32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q7
// input[152]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * -100)]
vmla.s32 Q1, Q0, r11
vstrw.u32 Q2, [r0,#(416)]
vadd.s32 Q3, Q3, Q7
// Release input[104] from Q7
vstrw.u32 Q3, [r14,#(-112)]
// Release input[224] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(-64)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(416)]
// input[152]: Already loaded as Q6
// input[284]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vmul.u32 Q1, Q0, r5
// input[20]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 20)]
vadd.s32 Q6, Q6, Q5
// Release input[284] from Q5
// input[272]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 20)]
vsub.s32 Q4, Q3, Q2
// input[92]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 92)]
vadd.s32 Q3, Q3, Q2
// Release input[20] from Q2
vqrdmulh.s32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q6
// input[344]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * 92)]
vmla.s32 Q1, Q0, r11
vstrw.u32 Q2, [r14,#(-400)]
vadd.s32 Q3, Q3, Q6
// Release input[152] from Q6
vstrw.u32 Q3, [r14,#(80)]
// Release input[272] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(128)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r0,#(80)]
// input[344]: Already loaded as Q7
// input[92]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vmul.u32 Q1, Q0, r5
// input[212]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -40)]
vadd.s32 Q7, Q7, Q5
// Release input[92] from Q5
// input[80]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 80)]
vsub.s32 Q4, Q3, Q2
// input[188]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -64)]
vadd.s32 Q3, Q3, Q2
// Release input[212] from Q2
vqrdmulh.s32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q7
// input[56]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 56)]
vmla.s32 Q1, Q0, r11
vstrw.u32 Q2, [r14,#(368)]
vadd.s32 Q3, Q3, Q7
// Release input[344] from Q7
vstrw.u32 Q3, [r0,#(320)]
// Release input[80] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r0,#(368)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(-160)]
// input[56]: Already loaded as Q6
// input[188]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vmul.u32 Q1, Q0, r5
// input[308]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 56)]
vadd.s32 Q6, Q6, Q5
// Release input[188] from Q5
// input[176]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -76)]
vsub.s32 Q4, Q3, Q2
// input[380]: Load as Q5
vldrw.u32 Q5, [r12, #(4 * -124)]
vadd.s32 Q3, Q3, Q2
// Release input[308] from Q2
vqrdmulh.s32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q6
// input[248]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -4)]
vmla.s32 Q1, Q0, r11
vstrw.u32 Q2, [r0,#(224)]
vadd.s32 Q3, Q3, Q6
// Release input[56] from Q6
vstrw.u32 Q3, [r14,#(-304)]
// Release input[176] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(-256)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(224)]
// input[248]: Already loaded as Q7
// input[380]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vmul.u32 Q1, Q0, r5
// input[116]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 116)]
vadd.s32 Q7, Q7, Q5
// Release input[380] from Q5
// input[368]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 116)]
vsub.s32 Q4, Q3, Q2
// input[48]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 48)]
vadd.s32 Q3, Q3, Q2
// Release input[116] from Q2
vqrdmulh.s32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q7
// input[288]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * 36)]
vmla.s32 Q1, Q0, r11
vstrw.u32 Q2, [r14,#(-16)]
vadd.s32 Q3, Q3, Q7
// Release input[248] from Q7
vstrw.u32 Q3, [r14,#(464)]
// Release input[368] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r12,#(-496)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r0,#(464)]
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[48]: Already loaded as Q5
vmul.u32 Q0, Q5, r9
// input[144]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -108)]
vqrdmulh.s32 Q5, Q5, r8
// input[288]: Already loaded as Q6
vmla.s32 Q0, Q5, r11
vmul.u32 Q2, Q1, r9
vsub.s32 Q5, Q6, Q0
vqrdmulh.s32 Q1, Q1, r8
vadd.s32 Q6, Q6, Q0
vmla.s32 Q2, Q1, r11
// input[0]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 0)]
vmul.u32 Q3, Q5, r5
vsub.s32 Q1, Q0, Q2
vqrdmulh.s32 Q5, Q5, r4
vadd.s32 Q0, Q0, Q2
vmla.s32 Q3, Q5, r11
// input[240]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -12)]
vmul.u32 Q4, Q6, r7
vsub.s32 Q5, Q1, Q3
vqrdmulh.s32 Q6, Q6, r6
vadd.s32 Q1, Q1, Q3
vstrw.u32 Q5, [r0,#(192)]
// Release input[48] from Q5
vmla.s32 Q4, Q6, r11
vstrw.u32 Q1, [r14,#(-432)]
// Release input[144] from Q1
vsub.s32 Q6, Q0, Q4
vstrw.u32 Q6, [r14,#(144)]
// Release input[288] from Q6
vadd.s32 Q0, Q0, Q4
// input[240]: Already loaded as Q2
vmul.u32 Q1, Q2, r9
// input[336]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 84)]
vqrdmulh.s32 Q2, Q2, r8
// input[96]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 96)]
vmla.s32 Q1, Q2, r11
vstrw.u32 Q0, [r0,#(0)]
// Release input[0] from Q0
vmul.u32 Q0, Q3, r9
vsub.s32 Q2, Q4, Q1
vqrdmulh.s32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vmla.s32 Q0, Q3, r11
// input[192]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -60)]
vmul.u32 Q5, Q2, r5
vsub.s32 Q3, Q1, Q0
vqrdmulh.s32 Q2, Q2, r4
vadd.s32 Q1, Q1, Q0
vmla.s32 Q5, Q2, r11
// input[304]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 52)]
vmul.u32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vqrdmulh.s32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(-48)]
// Release input[240] from Q2
vmla.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(336)]
// Release input[336] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r0,#(384)]
// Release input[96] from Q4
vadd.s32 Q1, Q1, Q6
// input[304]: Already loaded as Q0
vmul.u32 Q2, Q0, r9
// input[16]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 16)]
vqrdmulh.s32 Q0, Q0, r8
// input[160]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -92)]
vmla.s32 Q2, Q0, r11
vstrw.u32 Q1, [r14,#(-240)]
// Release input[192] from Q1
vmul.u32 Q1, Q3, r9
vsub.s32 Q0, Q4, Q2
vqrdmulh.s32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vmla.s32 Q1, Q3, r11
// input[256]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 4)]
vmul.u32 Q5, Q0, r5
vsub.s32 Q3, Q2, Q1
vqrdmulh.s32 Q0, Q0, r4
vadd.s32 Q2, Q2, Q1
vmla.s32 Q5, Q0, r11
// input[112]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 112)]
vmul.u32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vqrdmulh.s32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(208)]
// Release input[304] from Q0
vmla.s32 Q6, Q4, r11
vstrw.u32 Q3, [r0,#(64)]
// Release input[16] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r14,#(-368)]
// Release input[160] from Q4
vadd.s32 Q2, Q2, Q6
// input[112]: Already loaded as Q1
vmul.u32 Q0, Q1, r9
// input[208]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -44)]
vqrdmulh.s32 Q1, Q1, r8
// input[352]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 100)]
vmla.s32 Q0, Q1, r11
vstrw.u32 Q2, [r14,#(16)]
// Release input[256] from Q2
vmul.u32 Q2, Q3, r9
vsub.s32 Q1, Q4, Q0
vqrdmulh.s32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vmla.s32 Q2, Q3, r11
// input[64]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 64)]
vmul.u32 Q5, Q1, r5
vsub.s32 Q3, Q0, Q2
vqrdmulh.s32 Q1, Q1, r4
vadd.s32 Q0, Q0, Q2
vmla.s32 Q5, Q1, r11
// input[176]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -76)]
vmul.u32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vqrdmulh.s32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r0,#(448)]
// Release input[112] from Q1
vmla.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(-176)]
// Release input[208] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(400)]
// Release input[352] from Q4
vadd.s32 Q0, Q0, Q6
// input[176]: Already loaded as Q2
vmul.u32 Q1, Q2, r9
// input[272]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 20)]
vqrdmulh.s32 Q2, Q2, r8
// input[32]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 32)]
vmla.s32 Q1, Q2, r11
vstrw.u32 Q0, [r0,#(256)]
// Release input[64] from Q0
vmul.u32 Q0, Q3, r9
vsub.s32 Q2, Q4, Q1
vqrdmulh.s32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vmla.s32 Q0, Q3, r11
// input[128]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -124)]
vmul.u32 Q5, Q2, r5
vsub.s32 Q3, Q1, Q0
vqrdmulh.s32 Q2, Q2, r4
vadd.s32 Q1, Q1, Q0
vmla.s32 Q5, Q2, r11
// input[368]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 116)]
vmul.u32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vqrdmulh.s32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(-304)]
// Release input[176] from Q2
vmla.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(80)]
// Release input[272] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r0,#(128)]
// Release input[32] from Q4
vadd.s32 Q1, Q1, Q6
// input[368]: Already loaded as Q0
vmul.u32 Q2, Q0, r9
// input[80]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 80)]
vqrdmulh.s32 Q0, Q0, r8
// input[224]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -28)]
vmla.s32 Q2, Q0, r11
vstrw.u32 Q1, [r14,#(-496)]
// Release input[128] from Q1
vmul.u32 Q1, Q3, r9
vsub.s32 Q0, Q4, Q2
vqrdmulh.s32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vmla.s32 Q1, Q3, r11
// input[320]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 68)]
vmul.u32 Q5, Q0, r5
vsub.s32 Q3, Q2, Q1
vqrdmulh.s32 Q0, Q0, r4
vadd.s32 Q2, Q2, Q1
vmla.s32 Q5, Q0, r11
// input[312]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 60)]
vmul.u32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vqrdmulh.s32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(464)]
// Release input[368] from Q0
vmla.s32 Q6, Q4, r11
vstrw.u32 Q3, [r0,#(320)]
// Release input[80] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r14,#(-112)]
// Release input[224] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[312]: Already loaded as Q1
vmul.u32 Q0, Q1, r9
// input[24]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 24)]
vqrdmulh.s32 Q1, Q1, r8
// input[168]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -84)]
vmla.s32 Q0, Q1, r11
vstrw.u32 Q2, [r14,#(272)]
// Release input[320] from Q2
vmul.u32 Q2, Q3, r9
vsub.s32 Q1, Q4, Q0
vqrdmulh.s32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vmla.s32 Q2, Q3, r11
// input[264]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 12)]
vmul.u32 Q5, Q1, r5
vsub.s32 Q3, Q0, Q2
vqrdmulh.s32 Q1, Q1, r4
vadd.s32 Q0, Q0, Q2
vmla.s32 Q5, Q1, r11
// input[120]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 120)]
vmul.u32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vqrdmulh.s32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(240)]
// Release input[312] from Q1
vmla.s32 Q6, Q4, r11
vstrw.u32 Q3, [r0,#(96)]
// Release input[24] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(-336)]
// Release input[168] from Q4
vadd.s32 Q0, Q0, Q6
// input[120]: Already loaded as Q2
vmul.u32 Q1, Q2, r9
// input[216]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -36)]
vqrdmulh.s32 Q2, Q2, r8
// input[360]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 108)]
vmla.s32 Q1, Q2, r11
vstrw.u32 Q0, [r14,#(48)]
// Release input[264] from Q0
vmul.u32 Q0, Q3, r9
vsub.s32 Q2, Q4, Q1
vqrdmulh.s32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vmla.s32 Q0, Q3, r11
// input[72]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 72)]
vmul.u32 Q5, Q2, r5
vsub.s32 Q3, Q1, Q0
vqrdmulh.s32 Q2, Q2, r4
vadd.s32 Q1, Q1, Q0
vmla.s32 Q5, Q2, r11
// input[184]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -68)]
vmul.u32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vqrdmulh.s32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r0,#(480)]
// Release input[120] from Q2
vmla.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(-144)]
// Release input[216] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r14,#(432)]
// Release input[360] from Q4
vadd.s32 Q1, Q1, Q6
// input[184]: Already loaded as Q0
vmul.u32 Q2, Q0, r9
// input[280]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 28)]
vqrdmulh.s32 Q0, Q0, r8
// input[40]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 40)]
vmla.s32 Q2, Q0, r11
vstrw.u32 Q1, [r0,#(288)]
// Release input[72] from Q1
vmul.u32 Q1, Q3, r9
vsub.s32 Q0, Q4, Q2
vqrdmulh.s32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vmla.s32 Q1, Q3, r11
// input[136]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -116)]
vmul.u32 Q5, Q0, r5
vsub.s32 Q3, Q2, Q1
vqrdmulh.s32 Q0, Q0, r4
vadd.s32 Q2, Q2, Q1
vmla.s32 Q5, Q0, r11
// input[376]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 124)]
vmul.u32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vqrdmulh.s32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(-272)]
// Release input[184] from Q0
vmla.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(112)]
// Release input[280] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r0,#(160)]
// Release input[40] from Q4
vadd.s32 Q2, Q2, Q6
// input[376]: Already loaded as Q1
vmul.u32 Q0, Q1, r9
// input[88]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 88)]
vqrdmulh.s32 Q1, Q1, r8
// input[232]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -20)]
vmla.s32 Q0, Q1, r11
vstrw.u32 Q2, [r14,#(-464)]
// Release input[136] from Q2
vmul.u32 Q2, Q3, r9
vsub.s32 Q1, Q4, Q0
vqrdmulh.s32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vmla.s32 Q2, Q3, r11
// input[328]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 76)]
vmul.u32 Q5, Q1, r5
vsub.s32 Q3, Q0, Q2
vqrdmulh.s32 Q1, Q1, r4
vadd.s32 Q0, Q0, Q2
vmla.s32 Q5, Q1, r11
// input[56]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 56)]
vmul.u32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vqrdmulh.s32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(496)]
// Release input[376] from Q1
vmla.s32 Q6, Q4, r11
vstrw.u32 Q3, [r0,#(352)]
// Release input[88] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(-80)]
// Release input[232] from Q4
vadd.s32 Q0, Q0, Q6
// input[56]: Already loaded as Q2
vmul.u32 Q1, Q2, r9
// input[152]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -100)]
vqrdmulh.s32 Q2, Q2, r8
// input[296]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 44)]
vmla.s32 Q1, Q2, r11
vstrw.u32 Q0, [r14,#(304)]
// Release input[328] from Q0
vmul.u32 Q0, Q3, r9
vsub.s32 Q2, Q4, Q1
vqrdmulh.s32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vmla.s32 Q0, Q3, r11
// input[8]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 8)]
vmul.u32 Q5, Q2, r5
vsub.s32 Q3, Q1, Q0
vqrdmulh.s32 Q2, Q2, r4
vadd.s32 Q1, Q1, Q0
vmla.s32 Q5, Q2, r11
// input[248]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -4)]
vmul.u32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vqrdmulh.s32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r0,#(224)]
// Release input[56] from Q2
vmla.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(-400)]
// Release input[152] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r14,#(176)]
// Release input[296] from Q4
vadd.s32 Q1, Q1, Q6
// input[248]: Already loaded as Q0
vmul.u32 Q2, Q0, r9
// input[344]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 92)]
vqrdmulh.s32 Q0, Q0, r8
// input[104]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 104)]
vmla.s32 Q2, Q0, r11
vstrw.u32 Q1, [r0,#(32)]
// Release input[8] from Q1
vmul.u32 Q1, Q3, r9
vsub.s32 Q0, Q4, Q2
vqrdmulh.s32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vmla.s32 Q1, Q3, r11
// input[200]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -52)]
vmul.u32 Q5, Q0, r5
vsub.s32 Q3, Q2, Q1
vqrdmulh.s32 Q0, Q0, r4
vadd.s32 Q2, Q2, Q1
vmla.s32 Q5, Q0, r11
// input[180]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -72)]
vmul.u32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vqrdmulh.s32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(-16)]
// Release input[248] from Q0
vmla.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(368)]
// Release input[344] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r0,#(416)]
// Release input[104] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[180]: Already loaded as Q1
vmul.u32 Q0, Q1, r9
// input[276]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 24)]
vqrdmulh.s32 Q1, Q1, r8
// input[36]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 36)]
vmla.s32 Q0, Q1, r11
vstrw.u32 Q2, [r14,#(-208)]
// Release input[200] from Q2
vmul.u32 Q2, Q3, r9
vsub.s32 Q1, Q4, Q0
vqrdmulh.s32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vmla.s32 Q2, Q3, r11
// input[132]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -120)]
vmul.u32 Q5, Q1, r5
vsub.s32 Q3, Q0, Q2
vqrdmulh.s32 Q1, Q1, r4
vadd.s32 Q0, Q0, Q2
vmla.s32 Q5, Q1, r11
// input[372]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 120)]
vmul.u32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vqrdmulh.s32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(-288)]
// Release input[180] from Q1
vmla.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(96)]
// Release input[276] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r0,#(144)]
// Release input[36] from Q4
vadd.s32 Q0, Q0, Q6
// input[372]: Already loaded as Q2
vmul.u32 Q1, Q2, r9
// input[84]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 84)]
vqrdmulh.s32 Q2, Q2, r8
// input[228]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -24)]
vmla.s32 Q1, Q2, r11
vstrw.u32 Q0, [r14,#(-480)]
// Release input[132] from Q0
vmul.u32 Q0, Q3, r9
vsub.s32 Q2, Q4, Q1
vqrdmulh.s32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vmla.s32 Q0, Q3, r11
// input[324]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 72)]
vmul.u32 Q5, Q2, r5
vsub.s32 Q3, Q1, Q0
vqrdmulh.s32 Q2, Q2, r4
vadd.s32 Q1, Q1, Q0
vmla.s32 Q5, Q2, r11
// input[52]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 52)]
vmul.u32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vqrdmulh.s32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(480)]
// Release input[372] from Q2
vmla.s32 Q6, Q4, r11
vstrw.u32 Q3, [r0,#(336)]
// Release input[84] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r14,#(-96)]
// Release input[228] from Q4
vadd.s32 Q1, Q1, Q6
// input[52]: Already loaded as Q0
vmul.u32 Q2, Q0, r9
// input[148]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -104)]
vqrdmulh.s32 Q0, Q0, r8
// input[292]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 40)]
vmla.s32 Q2, Q0, r11
vstrw.u32 Q1, [r14,#(288)]
// Release input[324] from Q1
vmul.u32 Q1, Q3, r9
vsub.s32 Q0, Q4, Q2
vqrdmulh.s32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vmla.s32 Q1, Q3, r11
// input[4]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 4)]
vmul.u32 Q5, Q0, r5
vsub.s32 Q3, Q2, Q1
vqrdmulh.s32 Q0, Q0, r4
vadd.s32 Q2, Q2, Q1
vmla.s32 Q5, Q0, r11
// input[244]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -8)]
vmul.u32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vqrdmulh.s32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r0,#(208)]
// Release input[52] from Q0
vmla.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(-416)]
// Release input[148] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r14,#(160)]
// Release input[292] from Q4
vadd.s32 Q2, Q2, Q6
// input[244]: Already loaded as Q1
vmul.u32 Q0, Q1, r9
// input[340]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 88)]
vqrdmulh.s32 Q1, Q1, r8
// input[100]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 100)]
vmla.s32 Q0, Q1, r11
vstrw.u32 Q2, [r0,#(16)]
// Release input[4] from Q2
vmul.u32 Q2, Q3, r9
vsub.s32 Q1, Q4, Q0
vqrdmulh.s32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vmla.s32 Q2, Q3, r11
// input[196]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -56)]
vmul.u32 Q5, Q1, r5
vsub.s32 Q3, Q0, Q2
vqrdmulh.s32 Q1, Q1, r4
vadd.s32 Q0, Q0, Q2
vmla.s32 Q5, Q1, r11
// input[308]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 56)]
vmul.u32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vqrdmulh.s32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(-32)]
// Release input[244] from Q1
vmla.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(352)]
// Release input[340] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r0,#(400)]
// Release input[100] from Q4
vadd.s32 Q0, Q0, Q6
// input[308]: Already loaded as Q2
vmul.u32 Q1, Q2, r9
// input[20]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 20)]
vqrdmulh.s32 Q2, Q2, r8
// input[164]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -88)]
vmla.s32 Q1, Q2, r11
vstrw.u32 Q0, [r14,#(-224)]
// Release input[196] from Q0
vmul.u32 Q0, Q3, r9
vsub.s32 Q2, Q4, Q1
vqrdmulh.s32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vmla.s32 Q0, Q3, r11
// input[260]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 8)]
vmul.u32 Q5, Q2, r5
vsub.s32 Q3, Q1, Q0
vqrdmulh.s32 Q2, Q2, r4
vadd.s32 Q1, Q1, Q0
vmla.s32 Q5, Q2, r11
// input[116]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 116)]
vmul.u32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vqrdmulh.s32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(224)]
// Release input[308] from Q2
vmla.s32 Q6, Q4, r11
vstrw.u32 Q3, [r0,#(80)]
// Release input[20] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r14,#(-352)]
// Release input[164] from Q4
vadd.s32 Q1, Q1, Q6
// input[116]: Already loaded as Q0
vmul.u32 Q2, Q0, r9
// input[212]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -40)]
vqrdmulh.s32 Q0, Q0, r8
// input[356]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 104)]
vmla.s32 Q2, Q0, r11
vstrw.u32 Q1, [r14,#(32)]
// Release input[260] from Q1
vmul.u32 Q1, Q3, r9
vsub.s32 Q0, Q4, Q2
vqrdmulh.s32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vmla.s32 Q1, Q3, r11
// input[68]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 68)]
vmul.u32 Q5, Q0, r5
vsub.s32 Q3, Q2, Q1
vqrdmulh.s32 Q0, Q0, r4
vadd.s32 Q2, Q2, Q1
vmla.s32 Q5, Q0, r11
// input[60]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 60)]
vmul.u32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vqrdmulh.s32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r0,#(464)]
// Release input[116] from Q0
vmla.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(-160)]
// Release input[212] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r14,#(416)]
// Release input[356] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[60]: Already loaded as Q1
vmul.u32 Q0, Q1, r9
// input[156]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -96)]
vqrdmulh.s32 Q1, Q1, r8
// input[300]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 48)]
vmla.s32 Q0, Q1, r11
vstrw.u32 Q2, [r0,#(272)]
// Release input[68] from Q2
vmul.u32 Q2, Q3, r9
vsub.s32 Q1, Q4, Q0
vqrdmulh.s32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vmla.s32 Q2, Q3, r11
// input[12]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 12)]
vmul.u32 Q5, Q1, r5
vsub.s32 Q3, Q0, Q2
vqrdmulh.s32 Q1, Q1, r4
vadd.s32 Q0, Q0, Q2
vmla.s32 Q5, Q1, r11
// input[252]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 0)]
vmul.u32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vqrdmulh.s32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r0,#(240)]
// Release input[60] from Q1
vmla.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(-384)]
// Release input[156] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(192)]
// Release input[300] from Q4
vadd.s32 Q0, Q0, Q6
// input[252]: Already loaded as Q2
vmul.u32 Q1, Q2, r9
// input[348]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 96)]
vqrdmulh.s32 Q2, Q2, r8
// input[108]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 108)]
vmla.s32 Q1, Q2, r11
vstrw.u32 Q0, [r0,#(48)]
// Release input[12] from Q0
vmul.u32 Q0, Q3, r9
vsub.s32 Q2, Q4, Q1
vqrdmulh.s32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vmla.s32 Q0, Q3, r11
// input[204]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -48)]
vmul.u32 Q5, Q2, r5
vsub.s32 Q3, Q1, Q0
vqrdmulh.s32 Q2, Q2, r4
vadd.s32 Q1, Q1, Q0
vmla.s32 Q5, Q2, r11
// input[316]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 64)]
vmul.u32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vqrdmulh.s32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(0)]
// Release input[252] from Q2
vmla.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(384)]
// Release input[348] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r0,#(432)]
// Release input[108] from Q4
vadd.s32 Q1, Q1, Q6
// input[316]: Already loaded as Q0
vmul.u32 Q2, Q0, r9
// input[28]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 28)]
vqrdmulh.s32 Q0, Q0, r8
// input[172]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -80)]
vmla.s32 Q2, Q0, r11
vstrw.u32 Q1, [r14,#(-192)]
// Release input[204] from Q1
vmul.u32 Q1, Q3, r9
vsub.s32 Q0, Q4, Q2
vqrdmulh.s32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vmla.s32 Q1, Q3, r11
// input[268]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 16)]
vmul.u32 Q5, Q0, r5
vsub.s32 Q3, Q2, Q1
vqrdmulh.s32 Q0, Q0, r4
vadd.s32 Q2, Q2, Q1
vmla.s32 Q5, Q0, r11
// input[124]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 124)]
vmul.u32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vqrdmulh.s32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(256)]
// Release input[316] from Q0
vmla.s32 Q6, Q4, r11
vstrw.u32 Q3, [r0,#(112)]
// Release input[28] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r14,#(-320)]
// Release input[172] from Q4
vadd.s32 Q2, Q2, Q6
// input[124]: Already loaded as Q1
vmul.u32 Q0, Q1, r9
// input[220]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -32)]
vqrdmulh.s32 Q1, Q1, r8
// input[364]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 112)]
vmla.s32 Q0, Q1, r11
vstrw.u32 Q2, [r14,#(64)]
// Release input[268] from Q2
vmul.u32 Q2, Q3, r9
vsub.s32 Q1, Q4, Q0
vqrdmulh.s32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vmla.s32 Q2, Q3, r11
// input[76]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 76)]
vmul.u32 Q5, Q1, r5
vsub.s32 Q3, Q0, Q2
vqrdmulh.s32 Q1, Q1, r4
vadd.s32 Q0, Q0, Q2
vmla.s32 Q5, Q1, r11
// input[188]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -64)]
vmul.u32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vqrdmulh.s32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r0,#(496)]
// Release input[124] from Q1
vmla.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(-128)]
// Release input[220] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(448)]
// Release input[364] from Q4
vadd.s32 Q0, Q0, Q6
// input[188]: Already loaded as Q2
vmul.u32 Q1, Q2, r9
// input[284]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 32)]
vqrdmulh.s32 Q2, Q2, r8
// input[44]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 44)]
vmla.s32 Q1, Q2, r11
vstrw.u32 Q0, [r0,#(304)]
// Release input[76] from Q0
vmul.u32 Q0, Q3, r9
vsub.s32 Q2, Q4, Q1
vqrdmulh.s32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vmla.s32 Q0, Q3, r11
// input[140]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -112)]
vmul.u32 Q5, Q2, r5
vsub.s32 Q3, Q1, Q0
vqrdmulh.s32 Q2, Q2, r4
vadd.s32 Q1, Q1, Q0
vmla.s32 Q5, Q2, r11
// input[380]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -124)]
vmul.u32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vqrdmulh.s32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(-256)]
// Release input[188] from Q2
vmla.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(128)]
// Release input[284] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r0,#(176)]
// Release input[44] from Q4
vadd.s32 Q1, Q1, Q6
// input[380]: Already loaded as Q0
vmul.u32 Q2, Q0, r9
// input[92]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 92)]
vqrdmulh.s32 Q0, Q0, r8
// input[236]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -16)]
vmla.s32 Q2, Q0, r11
vstrw.u32 Q1, [r14,#(-448)]
// Release input[140] from Q1
vmul.u32 Q1, Q3, r9
vsub.s32 Q0, Q4, Q2
vqrdmulh.s32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vmla.s32 Q1, Q3, r11
// input[332]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 80)]
vmul.u32 Q5, Q0, r5
vsub.s32 Q3, Q2, Q1
vqrdmulh.s32 Q0, Q0, r4
vadd.s32 Q2, Q2, Q1
vmla.s32 Q5, Q0, r11
vmul.u32 Q1, Q4, r7
vsub.s32 Q0, Q3, Q5
vqrdmulh.s32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r12,#(-496)]
// Release input[380] from Q0
vmla.s32 Q1, Q4, r11
vstrw.u32 Q3, [r0,#(368)]
// Release input[92] from Q3
vsub.s32 Q4, Q2, Q1
vstrw.u32 Q4, [r14,#(-64)]
// Release input[236] from Q4
vadd.s32 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(320)]
// Release input[332] from Q2
ldrd r9, r8, [r10], #+8
// input[192]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -60)]
vmul.u32 Q1, Q0, r9
// input[0]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 0)]
vqrdmulh.s32 Q0, Q0, r8
// input[64]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 64)]
vmla.s32 Q1, Q0, r11
vsub.s32 Q0, Q2, Q1
vstrw.u32 Q0, [r14,#(-240)]
// Release input[192] from Q0
vadd.s32 Q2, Q2, Q1
// input[64]: Already loaded as Q3
vmul.u32 Q0, Q3, r9
// input[256]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 4)]
vqrdmulh.s32 Q3, Q3, r8
// input[320]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 68)]
vmla.s32 Q0, Q3, r11
vstrw.u32 Q2, [r0,#(0)]
// Release input[0] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r0,#(256)]
// Release input[64] from Q3
vadd.s32 Q1, Q1, Q0
// input[320]: Already loaded as Q4
vmul.u32 Q0, Q4, r9
// input[128]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -124)]
vqrdmulh.s32 Q4, Q4, r8
// input[96]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 96)]
vmla.s32 Q0, Q4, r11
vstrw.u32 Q1, [r14,#(16)]
// Release input[256] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r14,#(272)]
// Release input[320] from Q4
vadd.s32 Q2, Q2, Q0
ldrd r9, r8, [r10], #+8
// input[96]: Already loaded as Q3
vmul.u32 Q0, Q3, r9
// input[288]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 36)]
vqrdmulh.s32 Q3, Q3, r8
// input[352]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 100)]
vmla.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(-496)]
// Release input[128] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r0,#(384)]
// Release input[96] from Q3
vadd.s32 Q1, Q1, Q0
// input[352]: Already loaded as Q4
vmul.u32 Q0, Q4, r9
// input[160]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -92)]
vqrdmulh.s32 Q4, Q4, r8
// input[224]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -28)]
vmla.s32 Q0, Q4, r11
vstrw.u32 Q1, [r14,#(144)]
// Release input[288] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r14,#(400)]
// Release input[352] from Q4
vadd.s32 Q2, Q2, Q0
// input[224]: Already loaded as Q3
vmul.u32 Q0, Q3, r9
// input[32]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 32)]
vqrdmulh.s32 Q3, Q3, r8
// input[336]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 84)]
vmla.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(-368)]
// Release input[160] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r14,#(-112)]
// Release input[224] from Q3
vadd.s32 Q1, Q1, Q0
ldrd r9, r8, [r10], #+8
// input[336]: Already loaded as Q4
vmul.u32 Q0, Q4, r9
// input[144]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -108)]
vqrdmulh.s32 Q4, Q4, r8
// input[208]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -44)]
vmla.s32 Q0, Q4, r11
vstrw.u32 Q1, [r0,#(128)]
// Release input[32] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r14,#(336)]
// Release input[336] from Q4
vadd.s32 Q2, Q2, Q0
// input[208]: Already loaded as Q3
vmul.u32 Q0, Q3, r9
// input[16]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 16)]
vqrdmulh.s32 Q3, Q3, r8
// input[80]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 80)]
vmla.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(-432)]
// Release input[144] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r14,#(-176)]
// Release input[208] from Q3
vadd.s32 Q1, Q1, Q0
// input[80]: Already loaded as Q4
vmul.u32 Q0, Q4, r9
// input[272]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 20)]
vqrdmulh.s32 Q4, Q4, r8
// input[240]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -12)]
vmla.s32 Q0, Q4, r11
vstrw.u32 Q1, [r0,#(64)]
// Release input[16] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r0,#(320)]
// Release input[80] from Q4
vadd.s32 Q2, Q2, Q0
ldrd r9, r8, [r10], #+8
// input[240]: Already loaded as Q3
vmul.u32 Q0, Q3, r9
// input[48]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 48)]
vqrdmulh.s32 Q3, Q3, r8
// input[112]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 112)]
vmla.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(80)]
// Release input[272] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r14,#(-48)]
// Release input[240] from Q3
vadd.s32 Q1, Q1, Q0
// input[112]: Already loaded as Q4
vmul.u32 Q0, Q4, r9
// input[304]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 52)]
vqrdmulh.s32 Q4, Q4, r8
// input[368]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 116)]
vmla.s32 Q0, Q4, r11
vstrw.u32 Q1, [r0,#(192)]
// Release input[48] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r0,#(448)]
// Release input[112] from Q4
vadd.s32 Q2, Q2, Q0
// input[368]: Already loaded as Q3
vmul.u32 Q0, Q3, r9
// input[176]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -76)]
vqrdmulh.s32 Q3, Q3, r8
// input[72]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 72)]
vmla.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(208)]
// Release input[304] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r14,#(464)]
// Release input[368] from Q3
vadd.s32 Q1, Q1, Q0
ldrd r9, r8, [r10], #+8
// input[72]: Already loaded as Q4
vmul.u32 Q0, Q4, r9
// input[264]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 12)]
vqrdmulh.s32 Q4, Q4, r8
// input[328]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 76)]
vmla.s32 Q0, Q4, r11
vstrw.u32 Q1, [r14,#(-304)]
// Release input[176] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r0,#(288)]
// Release input[72] from Q4
vadd.s32 Q2, Q2, Q0
// input[328]: Already loaded as Q3
vmul.u32 Q0, Q3, r9
// input[136]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -116)]
vqrdmulh.s32 Q3, Q3, r8
// input[200]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -52)]
vmla.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(48)]
// Release input[264] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r14,#(304)]
// Release input[328] from Q3
vadd.s32 Q1, Q1, Q0
// input[200]: Already loaded as Q4
vmul.u32 Q0, Q4, r9
// input[8]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 8)]
vqrdmulh.s32 Q4, Q4, r8
// input[360]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 108)]
vmla.s32 Q0, Q4, r11
vstrw.u32 Q1, [r14,#(-464)]
// Release input[136] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r14,#(-208)]
// Release input[200] from Q4
vadd.s32 Q2, Q2, Q0
ldrd r9, r8, [r10], #+8
// input[360]: Already loaded as Q3
vmul.u32 Q0, Q3, r9
// input[168]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -84)]
vqrdmulh.s32 Q3, Q3, r8
// input[232]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -20)]
vmla.s32 Q0, Q3, r11
vstrw.u32 Q2, [r0,#(32)]
// Release input[8] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r14,#(432)]
// Release input[360] from Q3
vadd.s32 Q1, Q1, Q0
// input[232]: Already loaded as Q4
vmul.u32 Q0, Q4, r9
// input[40]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 40)]
vqrdmulh.s32 Q4, Q4, r8
// input[104]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 104)]
vmla.s32 Q0, Q4, r11
vstrw.u32 Q1, [r14,#(-336)]
// Release input[168] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r14,#(-80)]
// Release input[232] from Q4
vadd.s32 Q2, Q2, Q0
// input[104]: Already loaded as Q3
vmul.u32 Q0, Q3, r9
// input[296]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 44)]
vqrdmulh.s32 Q3, Q3, r8
// input[216]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -36)]
vmla.s32 Q0, Q3, r11
vstrw.u32 Q2, [r0,#(160)]
// Release input[40] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r0,#(416)]
// Release input[104] from Q3
vadd.s32 Q1, Q1, Q0
ldrd r9, r8, [r10], #+8
// input[216]: Already loaded as Q4
vmul.u32 Q0, Q4, r9
// input[24]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 24)]
vqrdmulh.s32 Q4, Q4, r8
// input[88]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 88)]
vmla.s32 Q0, Q4, r11
vstrw.u32 Q1, [r14,#(176)]
// Release input[296] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r14,#(-144)]
// Release input[216] from Q4
vadd.s32 Q2, Q2, Q0
// input[88]: Already loaded as Q3
vmul.u32 Q0, Q3, r9
// input[280]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 28)]
vqrdmulh.s32 Q3, Q3, r8
// input[344]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 92)]
vmla.s32 Q0, Q3, r11
vstrw.u32 Q2, [r0,#(96)]
// Release input[24] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r0,#(352)]
// Release input[88] from Q3
vadd.s32 Q1, Q1, Q0
// input[344]: Already loaded as Q4
vmul.u32 Q0, Q4, r9
// input[152]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -100)]
vqrdmulh.s32 Q4, Q4, r8
// input[120]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 120)]
vmla.s32 Q0, Q4, r11
vstrw.u32 Q1, [r14,#(112)]
// Release input[280] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r14,#(368)]
// Release input[344] from Q4
vadd.s32 Q2, Q2, Q0
ldrd r9, r8, [r10], #+8
// input[120]: Already loaded as Q3
vmul.u32 Q0, Q3, r9
// input[312]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 60)]
vqrdmulh.s32 Q3, Q3, r8
// input[376]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 124)]
vmla.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(-400)]
// Release input[152] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r0,#(480)]
// Release input[120] from Q3
vadd.s32 Q1, Q1, Q0
// input[376]: Already loaded as Q4
vmul.u32 Q0, Q4, r9
// input[184]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -68)]
vqrdmulh.s32 Q4, Q4, r8
// input[248]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -4)]
vmla.s32 Q0, Q4, r11
vstrw.u32 Q1, [r14,#(240)]
// Release input[312] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r14,#(496)]
// Release input[376] from Q4
vadd.s32 Q2, Q2, Q0
// input[248]: Already loaded as Q3
vmul.u32 Q0, Q3, r9
// input[56]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 56)]
vqrdmulh.s32 Q3, Q3, r8
// input[324]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 72)]
vmla.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(-272)]
// Release input[184] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r14,#(-16)]
// Release input[248] from Q3
vadd.s32 Q1, Q1, Q0
ldrd r9, r8, [r10], #+8
// input[324]: Already loaded as Q4
vmul.u32 Q0, Q4, r9
// input[132]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -120)]
vqrdmulh.s32 Q4, Q4, r8
// input[196]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -56)]
vmla.s32 Q0, Q4, r11
vstrw.u32 Q1, [r0,#(224)]
// Release input[56] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r14,#(288)]
// Release input[324] from Q4
vadd.s32 Q2, Q2, Q0
// input[196]: Already loaded as Q3
vmul.u32 Q0, Q3, r9
// input[4]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 4)]
vqrdmulh.s32 Q3, Q3, r8
// input[68]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 68)]
vmla.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(-480)]
// Release input[132] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r14,#(-224)]
// Release input[196] from Q3
vadd.s32 Q1, Q1, Q0
// input[68]: Already loaded as Q4
vmul.u32 Q0, Q4, r9
// input[260]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 8)]
vqrdmulh.s32 Q4, Q4, r8
// input[228]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -24)]
vmla.s32 Q0, Q4, r11
vstrw.u32 Q1, [r0,#(16)]
// Release input[4] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r0,#(272)]
// Release input[68] from Q4
vadd.s32 Q2, Q2, Q0
ldrd r9, r8, [r10], #+8
// input[228]: Already loaded as Q3
vmul.u32 Q0, Q3, r9
// input[36]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 36)]
vqrdmulh.s32 Q3, Q3, r8
// input[100]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 100)]
vmla.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(32)]
// Release input[260] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r14,#(-96)]
// Release input[228] from Q3
vadd.s32 Q1, Q1, Q0
// input[100]: Already loaded as Q4
vmul.u32 Q0, Q4, r9
// input[292]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 40)]
vqrdmulh.s32 Q4, Q4, r8
// input[356]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 104)]
vmla.s32 Q0, Q4, r11
vstrw.u32 Q1, [r0,#(144)]
// Release input[36] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r0,#(400)]
// Release input[100] from Q4
vadd.s32 Q2, Q2, Q0
// input[356]: Already loaded as Q3
vmul.u32 Q0, Q3, r9
// input[164]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -88)]
vqrdmulh.s32 Q3, Q3, r8
// input[84]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 84)]
vmla.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(160)]
// Release input[292] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r14,#(416)]
// Release input[356] from Q3
vadd.s32 Q1, Q1, Q0
ldrd r9, r8, [r10], #+8
// input[84]: Already loaded as Q4
vmul.u32 Q0, Q4, r9
// input[276]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 24)]
vqrdmulh.s32 Q4, Q4, r8
// input[340]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 88)]
vmla.s32 Q0, Q4, r11
vstrw.u32 Q1, [r14,#(-352)]
// Release input[164] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r0,#(336)]
// Release input[84] from Q4
vadd.s32 Q2, Q2, Q0
// input[340]: Already loaded as Q3
vmul.u32 Q0, Q3, r9
// input[148]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -104)]
vqrdmulh.s32 Q3, Q3, r8
// input[212]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -40)]
vmla.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(96)]
// Release input[276] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r14,#(352)]
// Release input[340] from Q3
vadd.s32 Q1, Q1, Q0
// input[212]: Already loaded as Q4
vmul.u32 Q0, Q4, r9
// input[20]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 20)]
vqrdmulh.s32 Q4, Q4, r8
// input[372]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 120)]
vmla.s32 Q0, Q4, r11
vstrw.u32 Q1, [r14,#(-416)]
// Release input[148] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r14,#(-160)]
// Release input[212] from Q4
vadd.s32 Q2, Q2, Q0
ldrd r9, r8, [r10], #+8
// input[372]: Already loaded as Q3
vmul.u32 Q0, Q3, r9
// input[180]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -72)]
vqrdmulh.s32 Q3, Q3, r8
// input[244]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -8)]
vmla.s32 Q0, Q3, r11
vstrw.u32 Q2, [r0,#(80)]
// Release input[20] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r14,#(480)]
// Release input[372] from Q3
vadd.s32 Q1, Q1, Q0
// input[244]: Already loaded as Q4
vmul.u32 Q0, Q4, r9
// input[52]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 52)]
vqrdmulh.s32 Q4, Q4, r8
// input[116]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 116)]
vmla.s32 Q0, Q4, r11
vstrw.u32 Q1, [r14,#(-288)]
// Release input[180] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r14,#(-32)]
// Release input[244] from Q4
vadd.s32 Q2, Q2, Q0
// input[116]: Already loaded as Q3
vmul.u32 Q0, Q3, r9
// input[308]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 56)]
vqrdmulh.s32 Q3, Q3, r8
// input[204]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -48)]
vmla.s32 Q0, Q3, r11
vstrw.u32 Q2, [r0,#(208)]
// Release input[52] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r0,#(464)]
// Release input[116] from Q3
vadd.s32 Q1, Q1, Q0
ldrd r9, r8, [r10], #+8
// input[204]: Already loaded as Q4
vmul.u32 Q0, Q4, r9
// input[12]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 12)]
vqrdmulh.s32 Q4, Q4, r8
// input[76]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 76)]
vmla.s32 Q0, Q4, r11
vstrw.u32 Q1, [r14,#(224)]
// Release input[308] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r14,#(-192)]
// Release input[204] from Q4
vadd.s32 Q2, Q2, Q0
// input[76]: Already loaded as Q3
vmul.u32 Q0, Q3, r9
// input[268]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 16)]
vqrdmulh.s32 Q3, Q3, r8
// input[332]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 80)]
vmla.s32 Q0, Q3, r11
vstrw.u32 Q2, [r0,#(48)]
// Release input[12] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r0,#(304)]
// Release input[76] from Q3
vadd.s32 Q1, Q1, Q0
// input[332]: Already loaded as Q4
vmul.u32 Q0, Q4, r9
// input[140]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -112)]
vqrdmulh.s32 Q4, Q4, r8
// input[108]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 108)]
vmla.s32 Q0, Q4, r11
vstrw.u32 Q1, [r14,#(64)]
// Release input[268] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r14,#(320)]
// Release input[332] from Q4
vadd.s32 Q2, Q2, Q0
ldrd r9, r8, [r10], #+8
// input[108]: Already loaded as Q3
vmul.u32 Q0, Q3, r9
// input[300]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 48)]
vqrdmulh.s32 Q3, Q3, r8
// input[364]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 112)]
vmla.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(-448)]
// Release input[140] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r0,#(432)]
// Release input[108] from Q3
vadd.s32 Q1, Q1, Q0
// input[364]: Already loaded as Q4
vmul.u32 Q0, Q4, r9
// input[172]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -80)]
vqrdmulh.s32 Q4, Q4, r8
// input[236]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -16)]
vmla.s32 Q0, Q4, r11
vstrw.u32 Q1, [r14,#(192)]
// Release input[300] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r14,#(448)]
// Release input[364] from Q4
vadd.s32 Q2, Q2, Q0
// input[236]: Already loaded as Q3
vmul.u32 Q0, Q3, r9
// input[44]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 44)]
vqrdmulh.s32 Q3, Q3, r8
// input[348]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 96)]
vmla.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(-320)]
// Release input[172] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r14,#(-64)]
// Release input[236] from Q3
vadd.s32 Q1, Q1, Q0
ldrd r9, r8, [r10], #+8
// input[348]: Already loaded as Q4
vmul.u32 Q0, Q4, r9
// input[156]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -96)]
vqrdmulh.s32 Q4, Q4, r8
// input[220]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -32)]
vmla.s32 Q0, Q4, r11
vstrw.u32 Q1, [r0,#(176)]
// Release input[44] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r14,#(384)]
// Release input[348] from Q4
vadd.s32 Q2, Q2, Q0
// input[220]: Already loaded as Q3
vmul.u32 Q0, Q3, r9
// input[28]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 28)]
vqrdmulh.s32 Q3, Q3, r8
// input[92]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 92)]
vmla.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(-384)]
// Release input[156] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r14,#(-128)]
// Release input[220] from Q3
vadd.s32 Q1, Q1, Q0
// input[92]: Already loaded as Q4
vmul.u32 Q0, Q4, r9
// input[284]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 32)]
vqrdmulh.s32 Q4, Q4, r8
// input[252]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 0)]
vmla.s32 Q0, Q4, r11
vstrw.u32 Q1, [r0,#(112)]
// Release input[28] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r0,#(368)]
// Release input[92] from Q4
vadd.s32 Q2, Q2, Q0
ldrd r9, r8, [r10], #+8
// input[252]: Already loaded as Q3
vmul.u32 Q0, Q3, r9
// input[60]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 60)]
vqrdmulh.s32 Q3, Q3, r8
// input[124]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 124)]
vmla.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(128)]
// Release input[284] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r14,#(0)]
// Release input[252] from Q3
vadd.s32 Q1, Q1, Q0
// input[124]: Already loaded as Q4
vmul.u32 Q0, Q4, r9
// input[316]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 64)]
vqrdmulh.s32 Q4, Q4, r8
// input[380]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -124)]
vmla.s32 Q0, Q4, r11
vstrw.u32 Q1, [r0,#(240)]
// Release input[60] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r0,#(496)]
// Release input[124] from Q4
vadd.s32 Q2, Q2, Q0
// input[380]: Already loaded as Q3
vmul.u32 Q0, Q3, r9
// input[188]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -64)]
vqrdmulh.s32 Q3, Q3, r8
vmla.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(256)]
// Release input[316] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r12,#(-496)]
// Release input[380] from Q3
vadd.s32 Q1, Q1, Q0
vstrw.u32 Q1, [r14,#(-256)]
// Release input[188] from Q1
.equ modulus_inv, 2228766271
movw r9, #:lower16:modulus_inv
movt r9, #:upper16:modulus_inv
// Restore MVE vector registers
vpop {d8-d15}
// Restore GPRs
pop {r4-r11,lr}
bx lr

// Line count:        3150
// Instruction count: 2196