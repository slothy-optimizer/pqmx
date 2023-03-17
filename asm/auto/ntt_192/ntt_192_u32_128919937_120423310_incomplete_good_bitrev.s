
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
.word    2223847 /// zeta^128 * 2^31 = 120423310^128 * 2^31 = 2223847 * 2^31
.word   37043728 /// zeta^128 * f(q^(-1) mod 2^32) * 2^31 = 120423310^128 * 1521161857 * 2^31
.word  126696089 /// zeta^ 64 * 2^31 = 120423310^ 64 * 2^31 = 126696089 * 2^31
.word 2110439903 /// zeta^ 64 * f(q^(-1) mod 2^32) * 2^31 = 120423310^ 64 * 1521161857 * 2^31
.word          1 // zeta^  0 * 2^31 = 120423310^  0 * 2^31 = 1 * 2^31
.word         17 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 120423310^  0 * 1521161857 * 2^31
.word          1 // zeta^  0 * 2^31 = 120423310^  0 * 2^31 = 1 * 2^31
.word         17 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 120423310^  0 * 1521161857 * 2^31
.word   14136207 // zeta^ 48 * 2^31 = 120423310^ 48 * 2^31 = 14136207 * 2^31
.word  235473846 // zeta^ 48 * f(q^(-1) mod 2^32) * 2^31 = 120423310^ 48 * 1521161857 * 2^31
.word          1 // zeta^  0 * 2^31 = 120423310^  0 * 2^31 = 1 * 2^31
.word         17 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 120423310^  0 * 1521161857 * 2^31
.word          1 // zeta^  0 * 2^31 = 120423310^  0 * 2^31 = 1 * 2^31
.word         17 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 120423310^  0 * 1521161857 * 2^31
.word   14136207 // zeta^ 48 * 2^31 = 120423310^ 48 * 2^31 = 14136207 * 2^31
.word  235473846 // zeta^ 48 * f(q^(-1) mod 2^32) * 2^31 = 120423310^ 48 * 1521161857 * 2^31
.word   14136207 // zeta^ 48 * 2^31 = 120423310^ 48 * 2^31 = 14136207 * 2^31
.word  235473846 // zeta^ 48 * f(q^(-1) mod 2^32) * 2^31 = 120423310^ 48 * 1521161857 * 2^31
.word   90707656 // zeta^120 * 2^31 = 120423310^120 * 2^31 = 90707656 * 2^31
.word 1510962637 // zeta^120 * f(q^(-1) mod 2^32) * 2^31 = 120423310^120 * 1521161857 * 2^31
.word   13510762 // zeta^168 * 2^31 = 120423310^168 * 2^31 = 13510762 * 2^31
.word  225055497 // zeta^168 * f(q^(-1) mod 2^32) * 2^31 = 120423310^168 * 1521161857 * 2^31
.word   90707656 // zeta^120 * 2^31 = 120423310^120 * 2^31 = 90707656 * 2^31
.word 1510962637 // zeta^120 * f(q^(-1) mod 2^32) * 2^31 = 120423310^120 * 1521161857 * 2^31
.word   72023844 // zeta^ 60 * 2^31 = 120423310^ 60 * 2^31 = 72023844 * 2^31
.word 1199737068 // zeta^ 60 * f(q^(-1) mod 2^32) * 2^31 = 120423310^ 60 * 1521161857 * 2^31
.word   54461578 // zeta^108 * 2^31 = 120423310^108 * 2^31 = 54461578 * 2^31
.word  907193650 // zeta^108 * f(q^(-1) mod 2^32) * 2^31 = 120423310^108 * 1521161857 * 2^31
.word   13510762 // zeta^168 * 2^31 = 120423310^168 * 2^31 = 13510762 * 2^31
.word  225055497 // zeta^168 * f(q^(-1) mod 2^32) * 2^31 = 120423310^168 * 1521161857 * 2^31
.word   83601662 // zeta^180 * 2^31 = 120423310^180 * 2^31 = 83601662 * 2^31
.word 1392594553 // zeta^180 * f(q^(-1) mod 2^32) * 2^31 = 120423310^180 * 1521161857 * 2^31
.word   47897664 // zeta^ 36 * 2^31 = 120423310^ 36 * 2^31 = 47897664 * 2^31
.word  797855263 // zeta^ 36 * f(q^(-1) mod 2^32) * 2^31 = 120423310^ 36 * 1521161857 * 2^31
.text
.align 4
roots_addr: .word roots
.syntax unified
.type ntt_192_u32_128919937_120423310_incomplete_good_bitrev, %function
.global ntt_192_u32_128919937_120423310_incomplete_good_bitrev
ntt_192_u32_128919937_120423310_incomplete_good_bitrev:
// Save GPRs
push {r4-r11,lr}
// Save MVE vector registers
vpush {d8-d15}
// Use r14 as marker for r0 + 1008
add r14, r0, #1008
.equ modulus, -128919937
movw r12, #:lower16:modulus
movt r12, #:upper16:modulus
ldr r11, roots_addr
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
// input[64]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 64)]
// input[128]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -124)]
vsub.s32 Q2, Q0, Q1
vmul.u32 Q3, Q2, r10
vadd.s32 Q5, Q0, Q1
// Release input[64] from Q0
vqrdmulh.s32 Q4, Q2, r9
// input[0]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 0)]
vmla.s32 Q3, Q4, r12
vsub.s32 Q4, Q0, Q1
// Release input[128] from Q1
// input[160]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -92)]
vadd.s32 Q6, Q4, Q3
// input[32]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 32)]
vsub.s32 Q4, Q4, Q3
vstrw.u32 Q6, [r0,#(256)]
vsub.s32 Q4, Q4, Q2
vstrw.u32 Q4, [r14,#(-496)]
vadd.s32 Q5, Q5, Q0
// Release input[0] from Q0
vstrw.u32 Q5, [r0,#(0)]
// input[160]: Already loaded as Q1
// input[32]: Already loaded as Q7
vsub.s32 Q0, Q1, Q7
vmul.u32 Q2, Q0, r10
vadd.s32 Q4, Q1, Q7
// Release input[160] from Q1
vqrdmulh.s32 Q3, Q0, r9
// input[96]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 96)]
vmla.s32 Q2, Q3, r12
vsub.s32 Q3, Q1, Q7
// Release input[32] from Q7
// input[16]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 16)]
vadd.s32 Q6, Q3, Q2
// input[80]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 80)]
vsub.s32 Q3, Q3, Q2
vstrw.u32 Q6, [r14,#(-368)]
vsub.s32 Q3, Q3, Q0
vstrw.u32 Q3, [r0,#(128)]
vadd.s32 Q4, Q4, Q1
// Release input[96] from Q1
vstrw.u32 Q4, [r0,#(384)]
// input[16]: Already loaded as Q5
// input[80]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r10
vadd.s32 Q3, Q5, Q7
// Release input[16] from Q5
vqrdmulh.s32 Q2, Q0, r9
// input[144]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -108)]
vmla.s32 Q1, Q2, r12
vsub.s32 Q2, Q4, Q7
// Release input[80] from Q7
// input[112]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 112)]
vadd.s32 Q6, Q2, Q1
// input[176]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -76)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r0,#(64)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(320)]
vadd.s32 Q3, Q3, Q4
// Release input[144] from Q4
vstrw.u32 Q3, [r14,#(-432)]
// input[112]: Already loaded as Q5
// input[176]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r10
vadd.s32 Q3, Q5, Q7
// Release input[112] from Q5
vqrdmulh.s32 Q2, Q0, r9
// input[48]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 48)]
vmla.s32 Q1, Q2, r12
vsub.s32 Q2, Q4, Q7
// Release input[176] from Q7
// input[136]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -116)]
vadd.s32 Q6, Q2, Q1
// input[8]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 8)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r0,#(448)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-304)]
vadd.s32 Q3, Q3, Q4
// Release input[48] from Q4
vstrw.u32 Q3, [r0,#(192)]
// input[136]: Already loaded as Q5
// input[8]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r10
vadd.s32 Q3, Q5, Q7
// Release input[136] from Q5
vqrdmulh.s32 Q2, Q0, r9
// input[72]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 72)]
vmla.s32 Q1, Q2, r12
vsub.s32 Q2, Q4, Q7
// Release input[8] from Q7
// input[40]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 40)]
vadd.s32 Q6, Q2, Q1
// input[104]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 104)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(-464)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(32)]
vadd.s32 Q3, Q3, Q4
// Release input[72] from Q4
vstrw.u32 Q3, [r0,#(288)]
// input[40]: Already loaded as Q5
// input[104]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r10
vadd.s32 Q3, Q5, Q7
// Release input[40] from Q5
vqrdmulh.s32 Q2, Q0, r9
// input[168]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -84)]
vmla.s32 Q1, Q2, r12
vsub.s32 Q2, Q4, Q7
// Release input[104] from Q7
// input[88]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 88)]
vadd.s32 Q6, Q2, Q1
// input[152]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -100)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r0,#(160)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(416)]
vadd.s32 Q3, Q3, Q4
// Release input[168] from Q4
vstrw.u32 Q3, [r14,#(-336)]
// input[88]: Already loaded as Q5
// input[152]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r10
vadd.s32 Q3, Q5, Q7
// Release input[88] from Q5
vqrdmulh.s32 Q2, Q0, r9
// input[24]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 24)]
vmla.s32 Q1, Q2, r12
vsub.s32 Q2, Q4, Q7
// Release input[152] from Q7
// input[184]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -68)]
vadd.s32 Q6, Q2, Q1
// input[56]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 56)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r0,#(352)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-400)]
vadd.s32 Q3, Q3, Q4
// Release input[24] from Q4
vstrw.u32 Q3, [r0,#(96)]
// input[184]: Already loaded as Q5
// input[56]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r10
vadd.s32 Q3, Q5, Q7
// Release input[184] from Q5
vqrdmulh.s32 Q2, Q0, r9
// input[120]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 120)]
vmla.s32 Q1, Q2, r12
vsub.s32 Q2, Q4, Q7
// Release input[56] from Q7
// input[4]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 4)]
vadd.s32 Q6, Q2, Q1
// input[68]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 68)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(-272)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(224)]
vadd.s32 Q3, Q3, Q4
// Release input[120] from Q4
vstrw.u32 Q3, [r0,#(480)]
// input[4]: Already loaded as Q5
// input[68]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r10
vadd.s32 Q3, Q5, Q7
// Release input[4] from Q5
vqrdmulh.s32 Q2, Q0, r9
// input[132]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -120)]
vmla.s32 Q1, Q2, r12
vsub.s32 Q2, Q4, Q7
// Release input[68] from Q7
// input[100]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 100)]
vadd.s32 Q6, Q2, Q1
// input[164]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -88)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r0,#(16)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(272)]
vadd.s32 Q3, Q3, Q4
// Release input[132] from Q4
vstrw.u32 Q3, [r14,#(-480)]
// input[100]: Already loaded as Q5
// input[164]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r10
vadd.s32 Q3, Q5, Q7
// Release input[100] from Q5
vqrdmulh.s32 Q2, Q0, r9
// input[36]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 36)]
vmla.s32 Q1, Q2, r12
vsub.s32 Q2, Q4, Q7
// Release input[164] from Q7
// input[148]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -104)]
vadd.s32 Q6, Q2, Q1
// input[20]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 20)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r0,#(400)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-352)]
vadd.s32 Q3, Q3, Q4
// Release input[36] from Q4
vstrw.u32 Q3, [r0,#(144)]
// input[148]: Already loaded as Q5
// input[20]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r10
vadd.s32 Q3, Q5, Q7
// Release input[148] from Q5
vqrdmulh.s32 Q2, Q0, r9
// input[84]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 84)]
vmla.s32 Q1, Q2, r12
vsub.s32 Q2, Q4, Q7
// Release input[20] from Q7
// input[52]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 52)]
vadd.s32 Q6, Q2, Q1
// input[116]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 116)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(-416)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(80)]
vadd.s32 Q3, Q3, Q4
// Release input[84] from Q4
vstrw.u32 Q3, [r0,#(336)]
// input[52]: Already loaded as Q5
// input[116]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r10
vadd.s32 Q3, Q5, Q7
// Release input[52] from Q5
vqrdmulh.s32 Q2, Q0, r9
// input[180]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -72)]
vmla.s32 Q1, Q2, r12
vsub.s32 Q2, Q4, Q7
// Release input[116] from Q7
// input[76]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 76)]
vadd.s32 Q6, Q2, Q1
// input[140]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -112)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r0,#(208)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(464)]
vadd.s32 Q3, Q3, Q4
// Release input[180] from Q4
vstrw.u32 Q3, [r14,#(-288)]
// input[76]: Already loaded as Q5
// input[140]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r10
vadd.s32 Q3, Q5, Q7
// Release input[76] from Q5
vqrdmulh.s32 Q2, Q0, r9
// input[12]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 12)]
vmla.s32 Q1, Q2, r12
vsub.s32 Q2, Q4, Q7
// Release input[140] from Q7
// input[172]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -80)]
vadd.s32 Q6, Q2, Q1
// input[44]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 44)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r0,#(304)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-448)]
vadd.s32 Q3, Q3, Q4
// Release input[12] from Q4
vstrw.u32 Q3, [r0,#(48)]
// input[172]: Already loaded as Q5
// input[44]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r10
vadd.s32 Q3, Q5, Q7
// Release input[172] from Q5
vqrdmulh.s32 Q2, Q0, r9
// input[108]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 108)]
vmla.s32 Q1, Q2, r12
vsub.s32 Q2, Q4, Q7
// Release input[44] from Q7
// input[28]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 28)]
vadd.s32 Q6, Q2, Q1
// input[92]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 92)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(-320)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(176)]
vadd.s32 Q3, Q3, Q4
// Release input[108] from Q4
vstrw.u32 Q3, [r0,#(432)]
// input[28]: Already loaded as Q5
// input[92]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r10
vadd.s32 Q3, Q5, Q7
// Release input[28] from Q5
vqrdmulh.s32 Q2, Q0, r9
// input[156]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -96)]
vmla.s32 Q1, Q2, r12
vsub.s32 Q2, Q4, Q7
// Release input[92] from Q7
// input[124]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 124)]
vadd.s32 Q6, Q2, Q1
// input[188]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -64)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r0,#(112)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(368)]
vadd.s32 Q3, Q3, Q4
// Release input[156] from Q4
vstrw.u32 Q3, [r14,#(-384)]
// input[124]: Already loaded as Q5
// input[188]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r10
vadd.s32 Q3, Q5, Q7
// Release input[124] from Q5
vqrdmulh.s32 Q2, Q0, r9
// input[60]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 60)]
vmla.s32 Q1, Q2, r12
vsub.s32 Q2, Q4, Q7
// Release input[188] from Q7
vadd.s32 Q5, Q2, Q1
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q5, [r0,#(496)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-256)]
vadd.s32 Q3, Q3, Q4
// Release input[60] from Q4
vstrw.u32 Q3, [r0,#(240)]
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[72]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 72)]
// input[12]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 12)]
vsub.s32 Q2, Q0, Q1
vmul.u32 Q3, Q2, r6
// input[132]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -120)]
vadd.s32 Q0, Q0, Q1
// Release input[12] from Q1
// input[0]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 0)]
vsub.s32 Q5, Q1, Q4
// input[108]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 108)]
vadd.s32 Q1, Q1, Q4
// Release input[132] from Q4
vqrdmulh.s32 Q2, Q2, r5
vsub.s32 Q4, Q1, Q0
// input[168]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -84)]
vmla.s32 Q3, Q2, r12
vstrw.u32 Q4, [r0,#(288)]
vadd.s32 Q1, Q1, Q0
// Release input[72] from Q0
vstrw.u32 Q1, [r0,#(0)]
// Release input[0] from Q1
vsub.s32 Q2, Q5, Q3
vstrw.u32 Q2, [r0,#(48)]
vadd.s32 Q5, Q5, Q3
vstrw.u32 Q5, [r14,#(-480)]
// input[168]: Already loaded as Q7
// input[108]: Already loaded as Q6
vsub.s32 Q0, Q7, Q6
vmul.u32 Q1, Q0, r6
// input[36]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 36)]
vadd.s32 Q7, Q7, Q6
// Release input[108] from Q6
// input[96]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 96)]
vsub.s32 Q4, Q3, Q2
// input[156]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -96)]
vadd.s32 Q3, Q3, Q2
// Release input[36] from Q2
vqrdmulh.s32 Q0, Q0, r5
vsub.s32 Q2, Q3, Q7
// input[24]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 24)]
vmla.s32 Q1, Q0, r12
vstrw.u32 Q2, [r14,#(-336)]
vadd.s32 Q3, Q3, Q7
// Release input[168] from Q7
vstrw.u32 Q3, [r0,#(384)]
// Release input[96] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r0,#(432)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r0,#(144)]
// input[24]: Already loaded as Q6
// input[156]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vmul.u32 Q1, Q0, r6
// input[84]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 84)]
vadd.s32 Q6, Q6, Q5
// Release input[156] from Q5
// input[144]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -108)]
vsub.s32 Q4, Q3, Q2
// input[60]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 60)]
vadd.s32 Q3, Q3, Q2
// Release input[84] from Q2
vqrdmulh.s32 Q0, Q0, r5
vsub.s32 Q2, Q3, Q6
// input[120]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 120)]
vmla.s32 Q1, Q0, r12
vstrw.u32 Q2, [r0,#(96)]
vadd.s32 Q3, Q3, Q6
// Release input[24] from Q6
vstrw.u32 Q3, [r14,#(-432)]
// Release input[144] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(-384)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r0,#(336)]
// input[120]: Already loaded as Q7
// input[60]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vmul.u32 Q1, Q0, r6
// input[180]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -72)]
vadd.s32 Q7, Q7, Q5
// Release input[60] from Q5
// input[48]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 48)]
vsub.s32 Q4, Q3, Q2
// input[76]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 76)]
vadd.s32 Q3, Q3, Q2
// Release input[180] from Q2
vqrdmulh.s32 Q0, Q0, r5
vsub.s32 Q2, Q3, Q7
// input[136]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * -116)]
vmla.s32 Q1, Q0, r12
vstrw.u32 Q2, [r0,#(480)]
vadd.s32 Q3, Q3, Q7
// Release input[120] from Q7
vstrw.u32 Q3, [r0,#(192)]
// Release input[48] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r0,#(240)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(-288)]
// input[136]: Already loaded as Q6
// input[76]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vmul.u32 Q1, Q0, r6
// input[4]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 4)]
vadd.s32 Q6, Q6, Q5
// Release input[76] from Q5
// input[64]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 64)]
vsub.s32 Q4, Q3, Q2
// input[172]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -80)]
vadd.s32 Q3, Q3, Q2
// Release input[4] from Q2
vqrdmulh.s32 Q0, Q0, r5
vsub.s32 Q2, Q3, Q6
// input[40]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 40)]
vmla.s32 Q1, Q0, r12
vstrw.u32 Q2, [r14,#(-464)]
vadd.s32 Q3, Q3, Q6
// Release input[136] from Q6
vstrw.u32 Q3, [r0,#(256)]
// Release input[64] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r0,#(304)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r0,#(16)]
// input[40]: Already loaded as Q7
// input[172]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vmul.u32 Q1, Q0, r6
// input[100]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 100)]
vadd.s32 Q7, Q7, Q5
// Release input[172] from Q5
// input[160]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -92)]
vsub.s32 Q4, Q3, Q2
// input[28]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 28)]
vadd.s32 Q3, Q3, Q2
// Release input[100] from Q2
vqrdmulh.s32 Q0, Q0, r5
vsub.s32 Q2, Q3, Q7
// input[88]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 88)]
vmla.s32 Q1, Q0, r12
vstrw.u32 Q2, [r0,#(160)]
vadd.s32 Q3, Q3, Q7
// Release input[40] from Q7
vstrw.u32 Q3, [r14,#(-368)]
// Release input[160] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(-320)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r0,#(400)]
// input[88]: Already loaded as Q6
// input[28]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vmul.u32 Q1, Q0, r6
// input[148]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -104)]
vadd.s32 Q6, Q6, Q5
// Release input[28] from Q5
// input[16]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 16)]
vsub.s32 Q4, Q3, Q2
// input[124]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 124)]
vadd.s32 Q3, Q3, Q2
// Release input[148] from Q2
vqrdmulh.s32 Q0, Q0, r5
vsub.s32 Q2, Q3, Q6
// input[184]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -68)]
vmla.s32 Q1, Q0, r12
vstrw.u32 Q2, [r0,#(352)]
vadd.s32 Q3, Q3, Q6
// Release input[88] from Q6
vstrw.u32 Q3, [r0,#(64)]
// Release input[16] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r0,#(112)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(-416)]
// input[184]: Already loaded as Q7
// input[124]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vmul.u32 Q1, Q0, r6
// input[52]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 52)]
vadd.s32 Q7, Q7, Q5
// Release input[124] from Q5
// input[112]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 112)]
vsub.s32 Q4, Q3, Q2
// input[140]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -112)]
vadd.s32 Q3, Q3, Q2
// Release input[52] from Q2
vqrdmulh.s32 Q0, Q0, r5
vsub.s32 Q2, Q3, Q7
// input[8]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 8)]
vmla.s32 Q1, Q0, r12
vstrw.u32 Q2, [r14,#(-272)]
vadd.s32 Q3, Q3, Q7
// Release input[184] from Q7
vstrw.u32 Q3, [r0,#(448)]
// Release input[112] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r0,#(496)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r0,#(208)]
// input[8]: Already loaded as Q6
// input[140]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vmul.u32 Q1, Q0, r6
// input[68]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 68)]
vadd.s32 Q6, Q6, Q5
// Release input[140] from Q5
// input[128]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -124)]
vsub.s32 Q4, Q3, Q2
// input[44]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 44)]
vadd.s32 Q3, Q3, Q2
// Release input[68] from Q2
vqrdmulh.s32 Q0, Q0, r5
vsub.s32 Q2, Q3, Q6
// input[104]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 104)]
vmla.s32 Q1, Q0, r12
vstrw.u32 Q2, [r0,#(32)]
vadd.s32 Q3, Q3, Q6
// Release input[8] from Q6
vstrw.u32 Q3, [r14,#(-496)]
// Release input[128] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(-448)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r0,#(272)]
// input[104]: Already loaded as Q7
// input[44]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vmul.u32 Q1, Q0, r6
// input[164]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -88)]
vadd.s32 Q7, Q7, Q5
// Release input[44] from Q5
// input[32]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 32)]
vsub.s32 Q4, Q3, Q2
// input[92]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 92)]
vadd.s32 Q3, Q3, Q2
// Release input[164] from Q2
vqrdmulh.s32 Q0, Q0, r5
vsub.s32 Q2, Q3, Q7
// input[152]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * -100)]
vmla.s32 Q1, Q0, r12
vstrw.u32 Q2, [r0,#(416)]
vadd.s32 Q3, Q3, Q7
// Release input[104] from Q7
vstrw.u32 Q3, [r0,#(128)]
// Release input[32] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r0,#(176)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(-352)]
// input[152]: Already loaded as Q6
// input[92]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vmul.u32 Q1, Q0, r6
// input[20]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 20)]
vadd.s32 Q6, Q6, Q5
// Release input[92] from Q5
// input[80]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 80)]
vsub.s32 Q4, Q3, Q2
// input[188]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -64)]
vadd.s32 Q3, Q3, Q2
// Release input[20] from Q2
vqrdmulh.s32 Q0, Q0, r5
vsub.s32 Q2, Q3, Q6
// input[56]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 56)]
vmla.s32 Q1, Q0, r12
vstrw.u32 Q2, [r14,#(-400)]
vadd.s32 Q3, Q3, Q6
// Release input[152] from Q6
vstrw.u32 Q3, [r0,#(320)]
// Release input[80] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r0,#(368)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r0,#(80)]
// input[56]: Already loaded as Q7
// input[188]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vmul.u32 Q1, Q0, r6
// input[116]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 116)]
vadd.s32 Q7, Q7, Q5
// Release input[188] from Q5
// input[176]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -76)]
vsub.s32 Q4, Q3, Q2
// input[48]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 48)]
vadd.s32 Q3, Q3, Q2
// Release input[116] from Q2
vqrdmulh.s32 Q0, Q0, r5
vsub.s32 Q2, Q3, Q7
// input[96]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 96)]
vmla.s32 Q1, Q0, r12
vstrw.u32 Q2, [r0,#(224)]
vadd.s32 Q3, Q3, Q7
// Release input[56] from Q7
vstrw.u32 Q3, [r14,#(-304)]
// Release input[176] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(-256)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r0,#(464)]
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[48]: Already loaded as Q5
vmul.u32 Q0, Q5, r10
// input[144]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -108)]
vqrdmulh.s32 Q5, Q5, r9
// input[96]: Already loaded as Q6
vmla.s32 Q0, Q5, r12
vmul.u32 Q2, Q1, r10
vsub.s32 Q5, Q6, Q0
vqrdmulh.s32 Q1, Q1, r9
vadd.s32 Q6, Q6, Q0
vmla.s32 Q2, Q1, r12
// input[0]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 0)]
vmul.u32 Q3, Q5, r6
vsub.s32 Q1, Q0, Q2
vqrdmulh.s32 Q5, Q5, r5
vadd.s32 Q0, Q0, Q2
vmla.s32 Q3, Q5, r12
// input[112]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 112)]
vmul.u32 Q4, Q6, r8
vsub.s32 Q5, Q1, Q3
vqrdmulh.s32 Q6, Q6, r7
vadd.s32 Q1, Q1, Q3
vstrw.u32 Q5, [r0,#(192)]
// Release input[48] from Q5
vmla.s32 Q4, Q6, r12
vstrw.u32 Q1, [r14,#(-432)]
// Release input[144] from Q1
vsub.s32 Q6, Q0, Q4
vstrw.u32 Q6, [r0,#(384)]
// Release input[96] from Q6
vadd.s32 Q0, Q0, Q4
// input[112]: Already loaded as Q2
vmul.u32 Q1, Q2, r10
// input[16]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 16)]
vqrdmulh.s32 Q2, Q2, r9
// input[160]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -92)]
vmla.s32 Q1, Q2, r12
vstrw.u32 Q0, [r0,#(0)]
// Release input[0] from Q0
vmul.u32 Q0, Q3, r10
vsub.s32 Q2, Q4, Q1
vqrdmulh.s32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q1
vmla.s32 Q0, Q3, r12
// input[64]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 64)]
vmul.u32 Q5, Q2, r6
vsub.s32 Q3, Q1, Q0
vqrdmulh.s32 Q2, Q2, r5
vadd.s32 Q1, Q1, Q0
vmla.s32 Q5, Q2, r12
// input[176]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -76)]
vmul.u32 Q6, Q4, r8
vsub.s32 Q2, Q3, Q5
vqrdmulh.s32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r0,#(448)]
// Release input[112] from Q2
vmla.s32 Q6, Q4, r12
vstrw.u32 Q3, [r0,#(64)]
// Release input[16] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r14,#(-368)]
// Release input[160] from Q4
vadd.s32 Q1, Q1, Q6
// input[176]: Already loaded as Q0
vmul.u32 Q2, Q0, r10
// input[80]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 80)]
vqrdmulh.s32 Q0, Q0, r9
// input[32]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 32)]
vmla.s32 Q2, Q0, r12
vstrw.u32 Q1, [r0,#(256)]
// Release input[64] from Q1
vmul.u32 Q1, Q3, r10
vsub.s32 Q0, Q4, Q2
vqrdmulh.s32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q2
vmla.s32 Q1, Q3, r12
// input[128]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -124)]
vmul.u32 Q5, Q0, r6
vsub.s32 Q3, Q2, Q1
vqrdmulh.s32 Q0, Q0, r5
vadd.s32 Q2, Q2, Q1
vmla.s32 Q5, Q0, r12
// input[120]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 120)]
vmul.u32 Q6, Q4, r8
vsub.s32 Q0, Q3, Q5
vqrdmulh.s32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(-304)]
// Release input[176] from Q0
vmla.s32 Q6, Q4, r12
vstrw.u32 Q3, [r0,#(320)]
// Release input[80] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r0,#(128)]
// Release input[32] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[120]: Already loaded as Q1
vmul.u32 Q0, Q1, r10
// input[24]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 24)]
vqrdmulh.s32 Q1, Q1, r9
// input[168]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -84)]
vmla.s32 Q0, Q1, r12
vstrw.u32 Q2, [r14,#(-496)]
// Release input[128] from Q2
vmul.u32 Q2, Q3, r10
vsub.s32 Q1, Q4, Q0
vqrdmulh.s32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q0
vmla.s32 Q2, Q3, r12
// input[72]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 72)]
vmul.u32 Q5, Q1, r6
vsub.s32 Q3, Q0, Q2
vqrdmulh.s32 Q1, Q1, r5
vadd.s32 Q0, Q0, Q2
vmla.s32 Q5, Q1, r12
// input[184]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -68)]
vmul.u32 Q6, Q4, r8
vsub.s32 Q1, Q3, Q5
vqrdmulh.s32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r0,#(480)]
// Release input[120] from Q1
vmla.s32 Q6, Q4, r12
vstrw.u32 Q3, [r0,#(96)]
// Release input[24] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(-336)]
// Release input[168] from Q4
vadd.s32 Q0, Q0, Q6
// input[184]: Already loaded as Q2
vmul.u32 Q1, Q2, r10
// input[88]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 88)]
vqrdmulh.s32 Q2, Q2, r9
// input[40]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 40)]
vmla.s32 Q1, Q2, r12
vstrw.u32 Q0, [r0,#(288)]
// Release input[72] from Q0
vmul.u32 Q0, Q3, r10
vsub.s32 Q2, Q4, Q1
vqrdmulh.s32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q1
vmla.s32 Q0, Q3, r12
// input[136]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -116)]
vmul.u32 Q5, Q2, r6
vsub.s32 Q3, Q1, Q0
vqrdmulh.s32 Q2, Q2, r5
vadd.s32 Q1, Q1, Q0
vmla.s32 Q5, Q2, r12
// input[56]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 56)]
vmul.u32 Q6, Q4, r8
vsub.s32 Q2, Q3, Q5
vqrdmulh.s32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(-272)]
// Release input[184] from Q2
vmla.s32 Q6, Q4, r12
vstrw.u32 Q3, [r0,#(352)]
// Release input[88] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r0,#(160)]
// Release input[40] from Q4
vadd.s32 Q1, Q1, Q6
// input[56]: Already loaded as Q0
vmul.u32 Q2, Q0, r10
// input[152]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -100)]
vqrdmulh.s32 Q0, Q0, r9
// input[104]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 104)]
vmla.s32 Q2, Q0, r12
vstrw.u32 Q1, [r14,#(-464)]
// Release input[136] from Q1
vmul.u32 Q1, Q3, r10
vsub.s32 Q0, Q4, Q2
vqrdmulh.s32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q2
vmla.s32 Q1, Q3, r12
// input[8]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 8)]
vmul.u32 Q5, Q0, r6
vsub.s32 Q3, Q2, Q1
vqrdmulh.s32 Q0, Q0, r5
vadd.s32 Q2, Q2, Q1
vmla.s32 Q5, Q0, r12
// input[180]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -72)]
vmul.u32 Q6, Q4, r8
vsub.s32 Q0, Q3, Q5
vqrdmulh.s32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r0,#(224)]
// Release input[56] from Q0
vmla.s32 Q6, Q4, r12
vstrw.u32 Q3, [r14,#(-400)]
// Release input[152] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r0,#(416)]
// Release input[104] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[180]: Already loaded as Q1
vmul.u32 Q0, Q1, r10
// input[84]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 84)]
vqrdmulh.s32 Q1, Q1, r9
// input[36]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 36)]
vmla.s32 Q0, Q1, r12
vstrw.u32 Q2, [r0,#(32)]
// Release input[8] from Q2
vmul.u32 Q2, Q3, r10
vsub.s32 Q1, Q4, Q0
vqrdmulh.s32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q0
vmla.s32 Q2, Q3, r12
// input[132]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -120)]
vmul.u32 Q5, Q1, r6
vsub.s32 Q3, Q0, Q2
vqrdmulh.s32 Q1, Q1, r5
vadd.s32 Q0, Q0, Q2
vmla.s32 Q5, Q1, r12
// input[52]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 52)]
vmul.u32 Q6, Q4, r8
vsub.s32 Q1, Q3, Q5
vqrdmulh.s32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(-288)]
// Release input[180] from Q1
vmla.s32 Q6, Q4, r12
vstrw.u32 Q3, [r0,#(336)]
// Release input[84] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r0,#(144)]
// Release input[36] from Q4
vadd.s32 Q0, Q0, Q6
// input[52]: Already loaded as Q2
vmul.u32 Q1, Q2, r10
// input[148]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -104)]
vqrdmulh.s32 Q2, Q2, r9
// input[100]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 100)]
vmla.s32 Q1, Q2, r12
vstrw.u32 Q0, [r14,#(-480)]
// Release input[132] from Q0
vmul.u32 Q0, Q3, r10
vsub.s32 Q2, Q4, Q1
vqrdmulh.s32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q1
vmla.s32 Q0, Q3, r12
// input[4]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 4)]
vmul.u32 Q5, Q2, r6
vsub.s32 Q3, Q1, Q0
vqrdmulh.s32 Q2, Q2, r5
vadd.s32 Q1, Q1, Q0
vmla.s32 Q5, Q2, r12
// input[116]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 116)]
vmul.u32 Q6, Q4, r8
vsub.s32 Q2, Q3, Q5
vqrdmulh.s32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r0,#(208)]
// Release input[52] from Q2
vmla.s32 Q6, Q4, r12
vstrw.u32 Q3, [r14,#(-416)]
// Release input[148] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r0,#(400)]
// Release input[100] from Q4
vadd.s32 Q1, Q1, Q6
// input[116]: Already loaded as Q0
vmul.u32 Q2, Q0, r10
// input[20]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 20)]
vqrdmulh.s32 Q0, Q0, r9
// input[164]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -88)]
vmla.s32 Q2, Q0, r12
vstrw.u32 Q1, [r0,#(16)]
// Release input[4] from Q1
vmul.u32 Q1, Q3, r10
vsub.s32 Q0, Q4, Q2
vqrdmulh.s32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q2
vmla.s32 Q1, Q3, r12
// input[68]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 68)]
vmul.u32 Q5, Q0, r6
vsub.s32 Q3, Q2, Q1
vqrdmulh.s32 Q0, Q0, r5
vadd.s32 Q2, Q2, Q1
vmla.s32 Q5, Q0, r12
// input[60]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 60)]
vmul.u32 Q6, Q4, r8
vsub.s32 Q0, Q3, Q5
vqrdmulh.s32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r0,#(464)]
// Release input[116] from Q0
vmla.s32 Q6, Q4, r12
vstrw.u32 Q3, [r0,#(80)]
// Release input[20] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r14,#(-352)]
// Release input[164] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[60]: Already loaded as Q1
vmul.u32 Q0, Q1, r10
// input[156]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -96)]
vqrdmulh.s32 Q1, Q1, r9
// input[108]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 108)]
vmla.s32 Q0, Q1, r12
vstrw.u32 Q2, [r0,#(272)]
// Release input[68] from Q2
vmul.u32 Q2, Q3, r10
vsub.s32 Q1, Q4, Q0
vqrdmulh.s32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q0
vmla.s32 Q2, Q3, r12
// input[12]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 12)]
vmul.u32 Q5, Q1, r6
vsub.s32 Q3, Q0, Q2
vqrdmulh.s32 Q1, Q1, r5
vadd.s32 Q0, Q0, Q2
vmla.s32 Q5, Q1, r12
// input[124]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 124)]
vmul.u32 Q6, Q4, r8
vsub.s32 Q1, Q3, Q5
vqrdmulh.s32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r0,#(240)]
// Release input[60] from Q1
vmla.s32 Q6, Q4, r12
vstrw.u32 Q3, [r14,#(-384)]
// Release input[156] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r0,#(432)]
// Release input[108] from Q4
vadd.s32 Q0, Q0, Q6
// input[124]: Already loaded as Q2
vmul.u32 Q1, Q2, r10
// input[28]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 28)]
vqrdmulh.s32 Q2, Q2, r9
// input[172]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -80)]
vmla.s32 Q1, Q2, r12
vstrw.u32 Q0, [r0,#(48)]
// Release input[12] from Q0
vmul.u32 Q0, Q3, r10
vsub.s32 Q2, Q4, Q1
vqrdmulh.s32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q1
vmla.s32 Q0, Q3, r12
// input[76]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 76)]
vmul.u32 Q5, Q2, r6
vsub.s32 Q3, Q1, Q0
vqrdmulh.s32 Q2, Q2, r5
vadd.s32 Q1, Q1, Q0
vmla.s32 Q5, Q2, r12
// input[188]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -64)]
vmul.u32 Q6, Q4, r8
vsub.s32 Q2, Q3, Q5
vqrdmulh.s32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r0,#(496)]
// Release input[124] from Q2
vmla.s32 Q6, Q4, r12
vstrw.u32 Q3, [r0,#(112)]
// Release input[28] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r14,#(-320)]
// Release input[172] from Q4
vadd.s32 Q1, Q1, Q6
// input[188]: Already loaded as Q0
vmul.u32 Q2, Q0, r10
// input[92]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 92)]
vqrdmulh.s32 Q0, Q0, r9
// input[44]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 44)]
vmla.s32 Q2, Q0, r12
vstrw.u32 Q1, [r0,#(304)]
// Release input[76] from Q1
vmul.u32 Q1, Q3, r10
vsub.s32 Q0, Q4, Q2
vqrdmulh.s32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q2
vmla.s32 Q1, Q3, r12
// input[140]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -112)]
vmul.u32 Q5, Q0, r6
vsub.s32 Q3, Q2, Q1
vqrdmulh.s32 Q0, Q0, r5
vadd.s32 Q2, Q2, Q1
vmla.s32 Q5, Q0, r12
vmul.u32 Q1, Q4, r8
vsub.s32 Q0, Q3, Q5
vqrdmulh.s32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(-256)]
// Release input[188] from Q0
vmla.s32 Q1, Q4, r12
vstrw.u32 Q3, [r0,#(368)]
// Release input[92] from Q3
vsub.s32 Q4, Q2, Q1
vstrw.u32 Q4, [r0,#(176)]
// Release input[44] from Q4
vadd.s32 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(-448)]
// Release input[140] from Q2
.equ modulus_inv, 2773805439
movw r10, #:lower16:modulus_inv
movt r10, #:upper16:modulus_inv
// Restore MVE vector registers
vpop {d8-d15}
// Restore GPRs
pop {r4-r11,lr}
bx lr

// Line count:        1253
// Instruction count: 895