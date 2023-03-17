
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
.type permute_and_clear_u16, %function
.global permute_and_clear_u16
permute_and_clear_u16:
// Save GPRs
push {r4-r11,lr}
// Save MVE vector registers
vpush {d8-d15}
// Use r14 as marker for r0 + 504
add r14, r0, #504
// Use r12 as marker for r0 + 1008
add r12, r14, #504
// Use r11 as marker for r0 + 1512
add r11, r12, #504
// Use r10 as marker for r0 + 2016
add r10, r11, #504
/* PERMUTE: range(0, 1024, 8) */
mov r9, #42
// unnamed[0]: Load as Q0
vldrh.u16 Q0, [r0, #(2 * 0)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r0,#(0)]
// Release unnamed[0] from Q0
// unnamed[8]: Load as Q0
vldrh.u16 Q0, [r0, #(2 * 8)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r0,#(16)]
// Release unnamed[8] from Q0
// unnamed[16]: Load as Q0
vldrh.u16 Q0, [r0, #(2 * 16)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r0,#(32)]
// Release unnamed[16] from Q0
// unnamed[24]: Load as Q0
vldrh.u16 Q0, [r0, #(2 * 24)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r0,#(48)]
// Release unnamed[24] from Q0
// unnamed[32]: Load as Q0
vldrh.u16 Q0, [r0, #(2 * 32)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r0,#(64)]
// Release unnamed[32] from Q0
// unnamed[40]: Load as Q0
vldrh.u16 Q0, [r0, #(2 * 40)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r0,#(80)]
// Release unnamed[40] from Q0
// unnamed[48]: Load as Q0
vldrh.u16 Q0, [r0, #(2 * 48)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r0,#(96)]
// Release unnamed[48] from Q0
// unnamed[56]: Load as Q0
vldrh.u16 Q0, [r0, #(2 * 56)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r0,#(112)]
// Release unnamed[56] from Q0
// unnamed[64]: Load as Q0
vldrh.u16 Q0, [r0, #(2 * 64)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r0,#(128)]
// Release unnamed[64] from Q0
// unnamed[72]: Load as Q0
vldrh.u16 Q0, [r0, #(2 * 72)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r0,#(144)]
// Release unnamed[72] from Q0
// unnamed[80]: Load as Q0
vldrh.u16 Q0, [r0, #(2 * 80)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r0,#(160)]
// Release unnamed[80] from Q0
// unnamed[88]: Load as Q0
vldrh.u16 Q0, [r0, #(2 * 88)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r0,#(176)]
// Release unnamed[88] from Q0
// unnamed[96]: Load as Q0
vldrh.u16 Q0, [r0, #(2 * 96)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r0,#(192)]
// Release unnamed[96] from Q0
// unnamed[104]: Load as Q0
vldrh.u16 Q0, [r0, #(2 * 104)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r0,#(208)]
// Release unnamed[104] from Q0
// unnamed[112]: Load as Q0
vldrh.u16 Q0, [r0, #(2 * 112)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r0,#(224)]
// Release unnamed[112] from Q0
// unnamed[120]: Load as Q0
vldrh.u16 Q0, [r0, #(2 * 120)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r0,#(240)]
// Release unnamed[120] from Q0
// unnamed[128]: Load as Q0
vldrh.u16 Q0, [r14, #(2 * -124)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r14,#(-248)]
// Release unnamed[128] from Q0
// unnamed[136]: Load as Q0
vldrh.u16 Q0, [r14, #(2 * -116)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r14,#(-232)]
// Release unnamed[136] from Q0
// unnamed[144]: Load as Q0
vldrh.u16 Q0, [r14, #(2 * -108)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r14,#(-216)]
// Release unnamed[144] from Q0
// unnamed[152]: Load as Q0
vldrh.u16 Q0, [r14, #(2 * -100)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r14,#(-200)]
// Release unnamed[152] from Q0
// unnamed[160]: Load as Q0
vldrh.u16 Q0, [r14, #(2 * -92)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r14,#(-184)]
// Release unnamed[160] from Q0
// unnamed[168]: Load as Q0
vldrh.u16 Q0, [r14, #(2 * -84)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r14,#(-168)]
// Release unnamed[168] from Q0
// unnamed[176]: Load as Q0
vldrh.u16 Q0, [r14, #(2 * -76)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r14,#(-152)]
// Release unnamed[176] from Q0
// unnamed[184]: Load as Q0
vldrh.u16 Q0, [r14, #(2 * -68)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r14,#(-136)]
// Release unnamed[184] from Q0
// unnamed[192]: Load as Q0
vldrh.u16 Q0, [r14, #(2 * -60)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r14,#(-120)]
// Release unnamed[192] from Q0
// unnamed[200]: Load as Q0
vldrh.u16 Q0, [r14, #(2 * -52)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r14,#(-104)]
// Release unnamed[200] from Q0
// unnamed[208]: Load as Q0
vldrh.u16 Q0, [r14, #(2 * -44)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r14,#(-88)]
// Release unnamed[208] from Q0
// unnamed[216]: Load as Q0
vldrh.u16 Q0, [r14, #(2 * -36)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r14,#(-72)]
// Release unnamed[216] from Q0
// unnamed[224]: Load as Q0
vldrh.u16 Q0, [r14, #(2 * -28)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r14,#(-56)]
// Release unnamed[224] from Q0
// unnamed[232]: Load as Q0
vldrh.u16 Q0, [r14, #(2 * -20)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r14,#(-40)]
// Release unnamed[232] from Q0
// unnamed[240]: Load as Q0
vldrh.u16 Q0, [r14, #(2 * -12)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r14,#(-24)]
// Release unnamed[240] from Q0
// unnamed[248]: Load as Q0
vldrh.u16 Q0, [r14, #(2 * -4)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r14,#(-8)]
// Release unnamed[248] from Q0
// unnamed[256]: Load as Q0
vldrh.u16 Q0, [r14, #(2 * 4)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r14,#(8)]
// Release unnamed[256] from Q0
// unnamed[264]: Load as Q0
vldrh.u16 Q0, [r14, #(2 * 12)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r14,#(24)]
// Release unnamed[264] from Q0
// unnamed[272]: Load as Q0
vldrh.u16 Q0, [r14, #(2 * 20)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r14,#(40)]
// Release unnamed[272] from Q0
// unnamed[280]: Load as Q0
vldrh.u16 Q0, [r14, #(2 * 28)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r14,#(56)]
// Release unnamed[280] from Q0
// unnamed[288]: Load as Q0
vldrh.u16 Q0, [r14, #(2 * 36)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r14,#(72)]
// Release unnamed[288] from Q0
// unnamed[296]: Load as Q0
vldrh.u16 Q0, [r14, #(2 * 44)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r14,#(88)]
// Release unnamed[296] from Q0
// unnamed[304]: Load as Q0
vldrh.u16 Q0, [r14, #(2 * 52)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r14,#(104)]
// Release unnamed[304] from Q0
// unnamed[312]: Load as Q0
vldrh.u16 Q0, [r14, #(2 * 60)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r14,#(120)]
// Release unnamed[312] from Q0
// unnamed[320]: Load as Q0
vldrh.u16 Q0, [r14, #(2 * 68)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r14,#(136)]
// Release unnamed[320] from Q0
// unnamed[328]: Load as Q0
vldrh.u16 Q0, [r14, #(2 * 76)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r14,#(152)]
// Release unnamed[328] from Q0
// unnamed[336]: Load as Q0
vldrh.u16 Q0, [r14, #(2 * 84)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r14,#(168)]
// Release unnamed[336] from Q0
// unnamed[344]: Load as Q0
vldrh.u16 Q0, [r14, #(2 * 92)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r14,#(184)]
// Release unnamed[344] from Q0
// unnamed[352]: Load as Q0
vldrh.u16 Q0, [r14, #(2 * 100)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r14,#(200)]
// Release unnamed[352] from Q0
// unnamed[360]: Load as Q0
vldrh.u16 Q0, [r14, #(2 * 108)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r14,#(216)]
// Release unnamed[360] from Q0
// unnamed[368]: Load as Q0
vldrh.u16 Q0, [r14, #(2 * 116)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r14,#(232)]
// Release unnamed[368] from Q0
// unnamed[376]: Load as Q0
vldrh.u16 Q0, [r14, #(2 * 124)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r14,#(248)]
// Release unnamed[376] from Q0
// unnamed[384]: Load as Q0
vldrh.u16 Q0, [r12, #(2 * -120)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r12,#(-240)]
// Release unnamed[384] from Q0
// unnamed[392]: Load as Q0
vldrh.u16 Q0, [r12, #(2 * -112)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r12,#(-224)]
// Release unnamed[392] from Q0
// unnamed[400]: Load as Q0
vldrh.u16 Q0, [r12, #(2 * -104)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r12,#(-208)]
// Release unnamed[400] from Q0
// unnamed[408]: Load as Q0
vldrh.u16 Q0, [r12, #(2 * -96)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r12,#(-192)]
// Release unnamed[408] from Q0
// unnamed[416]: Load as Q0
vldrh.u16 Q0, [r12, #(2 * -88)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r12,#(-176)]
// Release unnamed[416] from Q0
// unnamed[424]: Load as Q0
vldrh.u16 Q0, [r12, #(2 * -80)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r12,#(-160)]
// Release unnamed[424] from Q0
// unnamed[432]: Load as Q0
vldrh.u16 Q0, [r12, #(2 * -72)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r12,#(-144)]
// Release unnamed[432] from Q0
// unnamed[440]: Load as Q0
vldrh.u16 Q0, [r12, #(2 * -64)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r12,#(-128)]
// Release unnamed[440] from Q0
// unnamed[448]: Load as Q0
vldrh.u16 Q0, [r12, #(2 * -56)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r12,#(-112)]
// Release unnamed[448] from Q0
// unnamed[456]: Load as Q0
vldrh.u16 Q0, [r12, #(2 * -48)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r12,#(-96)]
// Release unnamed[456] from Q0
// unnamed[464]: Load as Q0
vldrh.u16 Q0, [r12, #(2 * -40)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r12,#(-80)]
// Release unnamed[464] from Q0
// unnamed[472]: Load as Q0
vldrh.u16 Q0, [r12, #(2 * -32)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r12,#(-64)]
// Release unnamed[472] from Q0
// unnamed[480]: Load as Q0
vldrh.u16 Q0, [r12, #(2 * -24)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r12,#(-48)]
// Release unnamed[480] from Q0
// unnamed[488]: Load as Q0
vldrh.u16 Q0, [r12, #(2 * -16)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r12,#(-32)]
// Release unnamed[488] from Q0
// unnamed[496]: Load as Q0
vldrh.u16 Q0, [r12, #(2 * -8)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r12,#(-16)]
// Release unnamed[496] from Q0
// unnamed[504]: Load as Q0
vldrh.u16 Q0, [r12, #(2 * 0)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r12,#(0)]
// Release unnamed[504] from Q0
// unnamed[512]: Load as Q0
vldrh.u16 Q0, [r12, #(2 * 8)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r12,#(16)]
// Release unnamed[512] from Q0
// unnamed[520]: Load as Q0
vldrh.u16 Q0, [r12, #(2 * 16)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r12,#(32)]
// Release unnamed[520] from Q0
// unnamed[528]: Load as Q0
vldrh.u16 Q0, [r12, #(2 * 24)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r12,#(48)]
// Release unnamed[528] from Q0
// unnamed[536]: Load as Q0
vldrh.u16 Q0, [r12, #(2 * 32)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r12,#(64)]
// Release unnamed[536] from Q0
// unnamed[544]: Load as Q0
vldrh.u16 Q0, [r12, #(2 * 40)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r12,#(80)]
// Release unnamed[544] from Q0
// unnamed[552]: Load as Q0
vldrh.u16 Q0, [r12, #(2 * 48)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r12,#(96)]
// Release unnamed[552] from Q0
// unnamed[560]: Load as Q0
vldrh.u16 Q0, [r12, #(2 * 56)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r12,#(112)]
// Release unnamed[560] from Q0
// unnamed[568]: Load as Q0
vldrh.u16 Q0, [r12, #(2 * 64)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r12,#(128)]
// Release unnamed[568] from Q0
// unnamed[576]: Load as Q0
vldrh.u16 Q0, [r12, #(2 * 72)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r12,#(144)]
// Release unnamed[576] from Q0
// unnamed[584]: Load as Q0
vldrh.u16 Q0, [r12, #(2 * 80)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r12,#(160)]
// Release unnamed[584] from Q0
// unnamed[592]: Load as Q0
vldrh.u16 Q0, [r12, #(2 * 88)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r12,#(176)]
// Release unnamed[592] from Q0
// unnamed[600]: Load as Q0
vldrh.u16 Q0, [r12, #(2 * 96)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r12,#(192)]
// Release unnamed[600] from Q0
// unnamed[608]: Load as Q0
vldrh.u16 Q0, [r12, #(2 * 104)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r12,#(208)]
// Release unnamed[608] from Q0
// unnamed[616]: Load as Q0
vldrh.u16 Q0, [r12, #(2 * 112)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r12,#(224)]
// Release unnamed[616] from Q0
// unnamed[624]: Load as Q0
vldrh.u16 Q0, [r12, #(2 * 120)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r12,#(240)]
// Release unnamed[624] from Q0
// unnamed[632]: Load as Q0
vldrh.u16 Q0, [r11, #(2 * -124)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r11,#(-248)]
// Release unnamed[632] from Q0
// unnamed[640]: Load as Q0
vldrh.u16 Q0, [r11, #(2 * -116)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r11,#(-232)]
// Release unnamed[640] from Q0
// unnamed[648]: Load as Q0
vldrh.u16 Q0, [r11, #(2 * -108)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r11,#(-216)]
// Release unnamed[648] from Q0
// unnamed[656]: Load as Q0
vldrh.u16 Q0, [r11, #(2 * -100)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r11,#(-200)]
// Release unnamed[656] from Q0
// unnamed[664]: Load as Q0
vldrh.u16 Q0, [r11, #(2 * -92)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r11,#(-184)]
// Release unnamed[664] from Q0
// unnamed[672]: Load as Q0
vldrh.u16 Q0, [r11, #(2 * -84)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r11,#(-168)]
// Release unnamed[672] from Q0
// unnamed[680]: Load as Q0
vldrh.u16 Q0, [r11, #(2 * -76)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r11,#(-152)]
// Release unnamed[680] from Q0
// unnamed[688]: Load as Q0
vldrh.u16 Q0, [r11, #(2 * -68)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r11,#(-136)]
// Release unnamed[688] from Q0
// unnamed[696]: Load as Q0
vldrh.u16 Q0, [r11, #(2 * -60)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r11,#(-120)]
// Release unnamed[696] from Q0
// unnamed[704]: Load as Q0
vldrh.u16 Q0, [r11, #(2 * -52)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r11,#(-104)]
// Release unnamed[704] from Q0
// unnamed[712]: Load as Q0
vldrh.u16 Q0, [r11, #(2 * -44)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r11,#(-88)]
// Release unnamed[712] from Q0
// unnamed[720]: Load as Q0
vldrh.u16 Q0, [r11, #(2 * -36)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r11,#(-72)]
// Release unnamed[720] from Q0
// unnamed[728]: Load as Q0
vldrh.u16 Q0, [r11, #(2 * -28)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r11,#(-56)]
// Release unnamed[728] from Q0
// unnamed[736]: Load as Q0
vldrh.u16 Q0, [r11, #(2 * -20)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r11,#(-40)]
// Release unnamed[736] from Q0
// unnamed[744]: Load as Q0
vldrh.u16 Q0, [r11, #(2 * -12)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r11,#(-24)]
// Release unnamed[744] from Q0
// unnamed[752]: Load as Q0
vldrh.u16 Q0, [r11, #(2 * -4)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r11,#(-8)]
// Release unnamed[752] from Q0
// unnamed[760]: Load as Q0
vldrh.u16 Q0, [r11, #(2 * 4)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r11,#(8)]
// Release unnamed[760] from Q0
// unnamed[768]: Load as Q0
vldrh.u16 Q0, [r11, #(2 * 12)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r11,#(24)]
// Release unnamed[768] from Q0
// unnamed[776]: Load as Q0
vldrh.u16 Q0, [r11, #(2 * 20)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r11,#(40)]
// Release unnamed[776] from Q0
// unnamed[784]: Load as Q0
vldrh.u16 Q0, [r11, #(2 * 28)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r11,#(56)]
// Release unnamed[784] from Q0
// unnamed[792]: Load as Q0
vldrh.u16 Q0, [r11, #(2 * 36)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r11,#(72)]
// Release unnamed[792] from Q0
// unnamed[800]: Load as Q0
vldrh.u16 Q0, [r11, #(2 * 44)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r11,#(88)]
// Release unnamed[800] from Q0
// unnamed[808]: Load as Q0
vldrh.u16 Q0, [r11, #(2 * 52)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r11,#(104)]
// Release unnamed[808] from Q0
// unnamed[816]: Load as Q0
vldrh.u16 Q0, [r11, #(2 * 60)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r11,#(120)]
// Release unnamed[816] from Q0
// unnamed[824]: Load as Q0
vldrh.u16 Q0, [r11, #(2 * 68)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r11,#(136)]
// Release unnamed[824] from Q0
// unnamed[832]: Load as Q0
vldrh.u16 Q0, [r11, #(2 * 76)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r11,#(152)]
// Release unnamed[832] from Q0
// unnamed[840]: Load as Q0
vldrh.u16 Q0, [r11, #(2 * 84)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r11,#(168)]
// Release unnamed[840] from Q0
// unnamed[848]: Load as Q0
vldrh.u16 Q0, [r11, #(2 * 92)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r11,#(184)]
// Release unnamed[848] from Q0
// unnamed[856]: Load as Q0
vldrh.u16 Q0, [r11, #(2 * 100)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r11,#(200)]
// Release unnamed[856] from Q0
// unnamed[864]: Load as Q0
vldrh.u16 Q0, [r11, #(2 * 108)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r11,#(216)]
// Release unnamed[864] from Q0
// unnamed[872]: Load as Q0
vldrh.u16 Q0, [r11, #(2 * 116)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r11,#(232)]
// Release unnamed[872] from Q0
// unnamed[880]: Load as Q0
vldrh.u16 Q0, [r11, #(2 * 124)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r11,#(248)]
// Release unnamed[880] from Q0
// unnamed[888]: Load as Q0
vldrh.u16 Q0, [r10, #(2 * -120)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r10,#(-240)]
// Release unnamed[888] from Q0
// unnamed[896]: Load as Q0
vldrh.u16 Q0, [r10, #(2 * -112)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r10,#(-224)]
// Release unnamed[896] from Q0
// unnamed[904]: Load as Q0
vldrh.u16 Q0, [r10, #(2 * -104)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r10,#(-208)]
// Release unnamed[904] from Q0
// unnamed[912]: Load as Q0
vldrh.u16 Q0, [r10, #(2 * -96)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r10,#(-192)]
// Release unnamed[912] from Q0
// unnamed[920]: Load as Q0
vldrh.u16 Q0, [r10, #(2 * -88)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r10,#(-176)]
// Release unnamed[920] from Q0
// unnamed[928]: Load as Q0
vldrh.u16 Q0, [r10, #(2 * -80)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r10,#(-160)]
// Release unnamed[928] from Q0
// unnamed[936]: Load as Q0
vldrh.u16 Q0, [r10, #(2 * -72)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r10,#(-144)]
// Release unnamed[936] from Q0
// unnamed[944]: Load as Q0
vldrh.u16 Q0, [r10, #(2 * -64)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r10,#(-128)]
// Release unnamed[944] from Q0
// unnamed[952]: Load as Q0
vldrh.u16 Q0, [r10, #(2 * -56)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r10,#(-112)]
// Release unnamed[952] from Q0
// unnamed[960]: Load as Q0
vldrh.u16 Q0, [r10, #(2 * -48)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r10,#(-96)]
// Release unnamed[960] from Q0
// unnamed[968]: Load as Q0
vldrh.u16 Q0, [r10, #(2 * -40)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r10,#(-80)]
// Release unnamed[968] from Q0
// unnamed[976]: Load as Q0
vldrh.u16 Q0, [r10, #(2 * -32)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r10,#(-64)]
// Release unnamed[976] from Q0
// unnamed[984]: Load as Q0
vldrh.u16 Q0, [r10, #(2 * -24)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r10,#(-48)]
// Release unnamed[984] from Q0
// unnamed[992]: Load as Q0
vldrh.u16 Q0, [r10, #(2 * -16)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r10,#(-32)]
// Release unnamed[992] from Q0
// unnamed[1000]: Load as Q0
vldrh.u16 Q0, [r10, #(2 * -8)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r10,#(-16)]
// Release unnamed[1000] from Q0
// unnamed[1008]: Load as Q0
vldrh.u16 Q0, [r10, #(2 * 0)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r10,#(0)]
// Release unnamed[1008] from Q0
// unnamed[1016]: Load as Q0
vldrh.u16 Q0, [r10, #(2 * 8)]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r9
vstrh.u16 Q0, [r10,#(16)]
// Release unnamed[1016] from Q0
// Restore MVE vector registers
vpop {d8-d15}
// Restore GPRs
pop {r4-r11,lr}
bx lr

// Line count:        793
// Instruction count: 529