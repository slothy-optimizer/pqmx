
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
.type permute_and_clear_u32, %function
.global permute_and_clear_u32
permute_and_clear_u32:
// Save GPRs
push {r4-r11,lr}
// Save MVE vector registers
vpush {d8-d15}
// Use r14 as marker for r0 + 1008
add r14, r0, #1008
// Use r12 as marker for r0 + 2016
add r12, r14, #1008
/* PERMUTE: range(0, 512, 4) */
mov r11, #42
// unnamed[0]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 0)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r0,#(0)]
// Release unnamed[0] from Q0
// unnamed[4]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 4)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r0,#(16)]
// Release unnamed[4] from Q0
// unnamed[8]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 8)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r0,#(32)]
// Release unnamed[8] from Q0
// unnamed[12]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 12)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r0,#(48)]
// Release unnamed[12] from Q0
// unnamed[16]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 16)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r0,#(64)]
// Release unnamed[16] from Q0
// unnamed[20]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 20)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r0,#(80)]
// Release unnamed[20] from Q0
// unnamed[24]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 24)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r0,#(96)]
// Release unnamed[24] from Q0
// unnamed[28]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 28)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r0,#(112)]
// Release unnamed[28] from Q0
// unnamed[32]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 32)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r0,#(128)]
// Release unnamed[32] from Q0
// unnamed[36]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 36)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r0,#(144)]
// Release unnamed[36] from Q0
// unnamed[40]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 40)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r0,#(160)]
// Release unnamed[40] from Q0
// unnamed[44]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 44)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r0,#(176)]
// Release unnamed[44] from Q0
// unnamed[48]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 48)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r0,#(192)]
// Release unnamed[48] from Q0
// unnamed[52]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 52)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r0,#(208)]
// Release unnamed[52] from Q0
// unnamed[56]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 56)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r0,#(224)]
// Release unnamed[56] from Q0
// unnamed[60]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 60)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r0,#(240)]
// Release unnamed[60] from Q0
// unnamed[64]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 64)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r0,#(256)]
// Release unnamed[64] from Q0
// unnamed[68]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 68)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r0,#(272)]
// Release unnamed[68] from Q0
// unnamed[72]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 72)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r0,#(288)]
// Release unnamed[72] from Q0
// unnamed[76]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 76)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r0,#(304)]
// Release unnamed[76] from Q0
// unnamed[80]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 80)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r0,#(320)]
// Release unnamed[80] from Q0
// unnamed[84]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 84)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r0,#(336)]
// Release unnamed[84] from Q0
// unnamed[88]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 88)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r0,#(352)]
// Release unnamed[88] from Q0
// unnamed[92]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 92)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r0,#(368)]
// Release unnamed[92] from Q0
// unnamed[96]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 96)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r0,#(384)]
// Release unnamed[96] from Q0
// unnamed[100]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 100)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r0,#(400)]
// Release unnamed[100] from Q0
// unnamed[104]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 104)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r0,#(416)]
// Release unnamed[104] from Q0
// unnamed[108]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 108)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r0,#(432)]
// Release unnamed[108] from Q0
// unnamed[112]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 112)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r0,#(448)]
// Release unnamed[112] from Q0
// unnamed[116]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 116)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r0,#(464)]
// Release unnamed[116] from Q0
// unnamed[120]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 120)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r0,#(480)]
// Release unnamed[120] from Q0
// unnamed[124]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 124)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r0,#(496)]
// Release unnamed[124] from Q0
// unnamed[128]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -124)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(-496)]
// Release unnamed[128] from Q0
// unnamed[132]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -120)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(-480)]
// Release unnamed[132] from Q0
// unnamed[136]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -116)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(-464)]
// Release unnamed[136] from Q0
// unnamed[140]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -112)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(-448)]
// Release unnamed[140] from Q0
// unnamed[144]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -108)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(-432)]
// Release unnamed[144] from Q0
// unnamed[148]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -104)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(-416)]
// Release unnamed[148] from Q0
// unnamed[152]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -100)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(-400)]
// Release unnamed[152] from Q0
// unnamed[156]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -96)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(-384)]
// Release unnamed[156] from Q0
// unnamed[160]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -92)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(-368)]
// Release unnamed[160] from Q0
// unnamed[164]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -88)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(-352)]
// Release unnamed[164] from Q0
// unnamed[168]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -84)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(-336)]
// Release unnamed[168] from Q0
// unnamed[172]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -80)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(-320)]
// Release unnamed[172] from Q0
// unnamed[176]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -76)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(-304)]
// Release unnamed[176] from Q0
// unnamed[180]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -72)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(-288)]
// Release unnamed[180] from Q0
// unnamed[184]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -68)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(-272)]
// Release unnamed[184] from Q0
// unnamed[188]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -64)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(-256)]
// Release unnamed[188] from Q0
// unnamed[192]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -60)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(-240)]
// Release unnamed[192] from Q0
// unnamed[196]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -56)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(-224)]
// Release unnamed[196] from Q0
// unnamed[200]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -52)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(-208)]
// Release unnamed[200] from Q0
// unnamed[204]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -48)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(-192)]
// Release unnamed[204] from Q0
// unnamed[208]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -44)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(-176)]
// Release unnamed[208] from Q0
// unnamed[212]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -40)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(-160)]
// Release unnamed[212] from Q0
// unnamed[216]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -36)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(-144)]
// Release unnamed[216] from Q0
// unnamed[220]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -32)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(-128)]
// Release unnamed[220] from Q0
// unnamed[224]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -28)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(-112)]
// Release unnamed[224] from Q0
// unnamed[228]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -24)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(-96)]
// Release unnamed[228] from Q0
// unnamed[232]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -20)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(-80)]
// Release unnamed[232] from Q0
// unnamed[236]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -16)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(-64)]
// Release unnamed[236] from Q0
// unnamed[240]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -12)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(-48)]
// Release unnamed[240] from Q0
// unnamed[244]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -8)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(-32)]
// Release unnamed[244] from Q0
// unnamed[248]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -4)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(-16)]
// Release unnamed[248] from Q0
// unnamed[252]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 0)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(0)]
// Release unnamed[252] from Q0
// unnamed[256]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 4)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(16)]
// Release unnamed[256] from Q0
// unnamed[260]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 8)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(32)]
// Release unnamed[260] from Q0
// unnamed[264]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 12)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(48)]
// Release unnamed[264] from Q0
// unnamed[268]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 16)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(64)]
// Release unnamed[268] from Q0
// unnamed[272]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 20)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(80)]
// Release unnamed[272] from Q0
// unnamed[276]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 24)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(96)]
// Release unnamed[276] from Q0
// unnamed[280]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 28)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(112)]
// Release unnamed[280] from Q0
// unnamed[284]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 32)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(128)]
// Release unnamed[284] from Q0
// unnamed[288]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 36)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(144)]
// Release unnamed[288] from Q0
// unnamed[292]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 40)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(160)]
// Release unnamed[292] from Q0
// unnamed[296]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 44)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(176)]
// Release unnamed[296] from Q0
// unnamed[300]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 48)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(192)]
// Release unnamed[300] from Q0
// unnamed[304]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 52)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(208)]
// Release unnamed[304] from Q0
// unnamed[308]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 56)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(224)]
// Release unnamed[308] from Q0
// unnamed[312]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 60)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(240)]
// Release unnamed[312] from Q0
// unnamed[316]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 64)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(256)]
// Release unnamed[316] from Q0
// unnamed[320]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 68)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(272)]
// Release unnamed[320] from Q0
// unnamed[324]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 72)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(288)]
// Release unnamed[324] from Q0
// unnamed[328]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 76)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(304)]
// Release unnamed[328] from Q0
// unnamed[332]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 80)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(320)]
// Release unnamed[332] from Q0
// unnamed[336]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 84)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(336)]
// Release unnamed[336] from Q0
// unnamed[340]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 88)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(352)]
// Release unnamed[340] from Q0
// unnamed[344]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 92)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(368)]
// Release unnamed[344] from Q0
// unnamed[348]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 96)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(384)]
// Release unnamed[348] from Q0
// unnamed[352]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 100)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(400)]
// Release unnamed[352] from Q0
// unnamed[356]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 104)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(416)]
// Release unnamed[356] from Q0
// unnamed[360]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 108)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(432)]
// Release unnamed[360] from Q0
// unnamed[364]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 112)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(448)]
// Release unnamed[364] from Q0
// unnamed[368]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 116)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(464)]
// Release unnamed[368] from Q0
// unnamed[372]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 120)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(480)]
// Release unnamed[372] from Q0
// unnamed[376]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 124)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r14,#(496)]
// Release unnamed[376] from Q0
// unnamed[380]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -124)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r12,#(-496)]
// Release unnamed[380] from Q0
// unnamed[384]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -120)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r12,#(-480)]
// Release unnamed[384] from Q0
// unnamed[388]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -116)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r12,#(-464)]
// Release unnamed[388] from Q0
// unnamed[392]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -112)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r12,#(-448)]
// Release unnamed[392] from Q0
// unnamed[396]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -108)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r12,#(-432)]
// Release unnamed[396] from Q0
// unnamed[400]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -104)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r12,#(-416)]
// Release unnamed[400] from Q0
// unnamed[404]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -100)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r12,#(-400)]
// Release unnamed[404] from Q0
// unnamed[408]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -96)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r12,#(-384)]
// Release unnamed[408] from Q0
// unnamed[412]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -92)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r12,#(-368)]
// Release unnamed[412] from Q0
// unnamed[416]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -88)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r12,#(-352)]
// Release unnamed[416] from Q0
// unnamed[420]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -84)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r12,#(-336)]
// Release unnamed[420] from Q0
// unnamed[424]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -80)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r12,#(-320)]
// Release unnamed[424] from Q0
// unnamed[428]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -76)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r12,#(-304)]
// Release unnamed[428] from Q0
// unnamed[432]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -72)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r12,#(-288)]
// Release unnamed[432] from Q0
// unnamed[436]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -68)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r12,#(-272)]
// Release unnamed[436] from Q0
// unnamed[440]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -64)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r12,#(-256)]
// Release unnamed[440] from Q0
// unnamed[444]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -60)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r12,#(-240)]
// Release unnamed[444] from Q0
// unnamed[448]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -56)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r12,#(-224)]
// Release unnamed[448] from Q0
// unnamed[452]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -52)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r12,#(-208)]
// Release unnamed[452] from Q0
// unnamed[456]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -48)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r12,#(-192)]
// Release unnamed[456] from Q0
// unnamed[460]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -44)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r12,#(-176)]
// Release unnamed[460] from Q0
// unnamed[464]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -40)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r12,#(-160)]
// Release unnamed[464] from Q0
// unnamed[468]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -36)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r12,#(-144)]
// Release unnamed[468] from Q0
// unnamed[472]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -32)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r12,#(-128)]
// Release unnamed[472] from Q0
// unnamed[476]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -28)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r12,#(-112)]
// Release unnamed[476] from Q0
// unnamed[480]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -24)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r12,#(-96)]
// Release unnamed[480] from Q0
// unnamed[484]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -20)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r12,#(-80)]
// Release unnamed[484] from Q0
// unnamed[488]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -16)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r12,#(-64)]
// Release unnamed[488] from Q0
// unnamed[492]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -12)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r12,#(-48)]
// Release unnamed[492] from Q0
// unnamed[496]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -8)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r12,#(-32)]
// Release unnamed[496] from Q0
// unnamed[500]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -4)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r12,#(-16)]
// Release unnamed[500] from Q0
// unnamed[504]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * 0)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r12,#(0)]
// Release unnamed[504] from Q0
// unnamed[508]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * 4)]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r11
vstrw.u32 Q0, [r12,#(16)]
// Release unnamed[508] from Q0
// Restore MVE vector registers
vpop {d8-d15}
// Restore GPRs
pop {r4-r11,lr}
bx lr

// Line count:        789
// Instruction count: 527