
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
.type permute_and_clear_u8, %function
.global permute_and_clear_u8
permute_and_clear_u8:
// Save GPRs
push {r4-r11,lr}
// Save MVE vector registers
vpush {d8-d15}
// Use r14 as marker for r0 + 252
add r14, r0, #252
// Use r12 as marker for r0 + 504
add r12, r14, #252
// Use r11 as marker for r0 + 756
add r11, r12, #252
// Use r10 as marker for r0 + 1008
add r10, r11, #252
// Use r9 as marker for r0 + 1260
add r9, r10, #252
// Use r8 as marker for r0 + 1512
add r8, r9, #252
// Use r7 as marker for r0 + 1764
add r7, r8, #252
// Use r6 as marker for r0 + 2016
add r6, r7, #252
/* PERMUTE: range(0, 2048, 16) */
mov r5, #42
// unnamed[0]: Load as Q0
vldrb.u8 Q0, [r0, #(1 * 0)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r0,#(0)]
// Release unnamed[0] from Q0
// unnamed[16]: Load as Q0
vldrb.u8 Q0, [r0, #(1 * 16)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r0,#(16)]
// Release unnamed[16] from Q0
// unnamed[32]: Load as Q0
vldrb.u8 Q0, [r0, #(1 * 32)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r0,#(32)]
// Release unnamed[32] from Q0
// unnamed[48]: Load as Q0
vldrb.u8 Q0, [r0, #(1 * 48)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r0,#(48)]
// Release unnamed[48] from Q0
// unnamed[64]: Load as Q0
vldrb.u8 Q0, [r0, #(1 * 64)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r0,#(64)]
// Release unnamed[64] from Q0
// unnamed[80]: Load as Q0
vldrb.u8 Q0, [r0, #(1 * 80)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r0,#(80)]
// Release unnamed[80] from Q0
// unnamed[96]: Load as Q0
vldrb.u8 Q0, [r0, #(1 * 96)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r0,#(96)]
// Release unnamed[96] from Q0
// unnamed[112]: Load as Q0
vldrb.u8 Q0, [r0, #(1 * 112)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r0,#(112)]
// Release unnamed[112] from Q0
// unnamed[128]: Load as Q0
vldrb.u8 Q0, [r14, #(1 * -124)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r14,#(-124)]
// Release unnamed[128] from Q0
// unnamed[144]: Load as Q0
vldrb.u8 Q0, [r14, #(1 * -108)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r14,#(-108)]
// Release unnamed[144] from Q0
// unnamed[160]: Load as Q0
vldrb.u8 Q0, [r14, #(1 * -92)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r14,#(-92)]
// Release unnamed[160] from Q0
// unnamed[176]: Load as Q0
vldrb.u8 Q0, [r14, #(1 * -76)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r14,#(-76)]
// Release unnamed[176] from Q0
// unnamed[192]: Load as Q0
vldrb.u8 Q0, [r14, #(1 * -60)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r14,#(-60)]
// Release unnamed[192] from Q0
// unnamed[208]: Load as Q0
vldrb.u8 Q0, [r14, #(1 * -44)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r14,#(-44)]
// Release unnamed[208] from Q0
// unnamed[224]: Load as Q0
vldrb.u8 Q0, [r14, #(1 * -28)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r14,#(-28)]
// Release unnamed[224] from Q0
// unnamed[240]: Load as Q0
vldrb.u8 Q0, [r14, #(1 * -12)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r14,#(-12)]
// Release unnamed[240] from Q0
// unnamed[256]: Load as Q0
vldrb.u8 Q0, [r14, #(1 * 4)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r14,#(4)]
// Release unnamed[256] from Q0
// unnamed[272]: Load as Q0
vldrb.u8 Q0, [r14, #(1 * 20)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r14,#(20)]
// Release unnamed[272] from Q0
// unnamed[288]: Load as Q0
vldrb.u8 Q0, [r14, #(1 * 36)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r14,#(36)]
// Release unnamed[288] from Q0
// unnamed[304]: Load as Q0
vldrb.u8 Q0, [r14, #(1 * 52)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r14,#(52)]
// Release unnamed[304] from Q0
// unnamed[320]: Load as Q0
vldrb.u8 Q0, [r14, #(1 * 68)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r14,#(68)]
// Release unnamed[320] from Q0
// unnamed[336]: Load as Q0
vldrb.u8 Q0, [r14, #(1 * 84)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r14,#(84)]
// Release unnamed[336] from Q0
// unnamed[352]: Load as Q0
vldrb.u8 Q0, [r14, #(1 * 100)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r14,#(100)]
// Release unnamed[352] from Q0
// unnamed[368]: Load as Q0
vldrb.u8 Q0, [r14, #(1 * 116)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r14,#(116)]
// Release unnamed[368] from Q0
// unnamed[384]: Load as Q0
vldrb.u8 Q0, [r12, #(1 * -120)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r12,#(-120)]
// Release unnamed[384] from Q0
// unnamed[400]: Load as Q0
vldrb.u8 Q0, [r12, #(1 * -104)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r12,#(-104)]
// Release unnamed[400] from Q0
// unnamed[416]: Load as Q0
vldrb.u8 Q0, [r12, #(1 * -88)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r12,#(-88)]
// Release unnamed[416] from Q0
// unnamed[432]: Load as Q0
vldrb.u8 Q0, [r12, #(1 * -72)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r12,#(-72)]
// Release unnamed[432] from Q0
// unnamed[448]: Load as Q0
vldrb.u8 Q0, [r12, #(1 * -56)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r12,#(-56)]
// Release unnamed[448] from Q0
// unnamed[464]: Load as Q0
vldrb.u8 Q0, [r12, #(1 * -40)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r12,#(-40)]
// Release unnamed[464] from Q0
// unnamed[480]: Load as Q0
vldrb.u8 Q0, [r12, #(1 * -24)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r12,#(-24)]
// Release unnamed[480] from Q0
// unnamed[496]: Load as Q0
vldrb.u8 Q0, [r12, #(1 * -8)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r12,#(-8)]
// Release unnamed[496] from Q0
// unnamed[512]: Load as Q0
vldrb.u8 Q0, [r12, #(1 * 8)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r12,#(8)]
// Release unnamed[512] from Q0
// unnamed[528]: Load as Q0
vldrb.u8 Q0, [r12, #(1 * 24)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r12,#(24)]
// Release unnamed[528] from Q0
// unnamed[544]: Load as Q0
vldrb.u8 Q0, [r12, #(1 * 40)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r12,#(40)]
// Release unnamed[544] from Q0
// unnamed[560]: Load as Q0
vldrb.u8 Q0, [r12, #(1 * 56)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r12,#(56)]
// Release unnamed[560] from Q0
// unnamed[576]: Load as Q0
vldrb.u8 Q0, [r12, #(1 * 72)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r12,#(72)]
// Release unnamed[576] from Q0
// unnamed[592]: Load as Q0
vldrb.u8 Q0, [r12, #(1 * 88)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r12,#(88)]
// Release unnamed[592] from Q0
// unnamed[608]: Load as Q0
vldrb.u8 Q0, [r12, #(1 * 104)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r12,#(104)]
// Release unnamed[608] from Q0
// unnamed[624]: Load as Q0
vldrb.u8 Q0, [r12, #(1 * 120)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r12,#(120)]
// Release unnamed[624] from Q0
// unnamed[640]: Load as Q0
vldrb.u8 Q0, [r11, #(1 * -116)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r11,#(-116)]
// Release unnamed[640] from Q0
// unnamed[656]: Load as Q0
vldrb.u8 Q0, [r11, #(1 * -100)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r11,#(-100)]
// Release unnamed[656] from Q0
// unnamed[672]: Load as Q0
vldrb.u8 Q0, [r11, #(1 * -84)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r11,#(-84)]
// Release unnamed[672] from Q0
// unnamed[688]: Load as Q0
vldrb.u8 Q0, [r11, #(1 * -68)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r11,#(-68)]
// Release unnamed[688] from Q0
// unnamed[704]: Load as Q0
vldrb.u8 Q0, [r11, #(1 * -52)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r11,#(-52)]
// Release unnamed[704] from Q0
// unnamed[720]: Load as Q0
vldrb.u8 Q0, [r11, #(1 * -36)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r11,#(-36)]
// Release unnamed[720] from Q0
// unnamed[736]: Load as Q0
vldrb.u8 Q0, [r11, #(1 * -20)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r11,#(-20)]
// Release unnamed[736] from Q0
// unnamed[752]: Load as Q0
vldrb.u8 Q0, [r11, #(1 * -4)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r11,#(-4)]
// Release unnamed[752] from Q0
// unnamed[768]: Load as Q0
vldrb.u8 Q0, [r11, #(1 * 12)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r11,#(12)]
// Release unnamed[768] from Q0
// unnamed[784]: Load as Q0
vldrb.u8 Q0, [r11, #(1 * 28)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r11,#(28)]
// Release unnamed[784] from Q0
// unnamed[800]: Load as Q0
vldrb.u8 Q0, [r11, #(1 * 44)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r11,#(44)]
// Release unnamed[800] from Q0
// unnamed[816]: Load as Q0
vldrb.u8 Q0, [r11, #(1 * 60)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r11,#(60)]
// Release unnamed[816] from Q0
// unnamed[832]: Load as Q0
vldrb.u8 Q0, [r11, #(1 * 76)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r11,#(76)]
// Release unnamed[832] from Q0
// unnamed[848]: Load as Q0
vldrb.u8 Q0, [r11, #(1 * 92)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r11,#(92)]
// Release unnamed[848] from Q0
// unnamed[864]: Load as Q0
vldrb.u8 Q0, [r11, #(1 * 108)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r11,#(108)]
// Release unnamed[864] from Q0
// unnamed[880]: Load as Q0
vldrb.u8 Q0, [r11, #(1 * 124)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r11,#(124)]
// Release unnamed[880] from Q0
// unnamed[896]: Load as Q0
vldrb.u8 Q0, [r10, #(1 * -112)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r10,#(-112)]
// Release unnamed[896] from Q0
// unnamed[912]: Load as Q0
vldrb.u8 Q0, [r10, #(1 * -96)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r10,#(-96)]
// Release unnamed[912] from Q0
// unnamed[928]: Load as Q0
vldrb.u8 Q0, [r10, #(1 * -80)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r10,#(-80)]
// Release unnamed[928] from Q0
// unnamed[944]: Load as Q0
vldrb.u8 Q0, [r10, #(1 * -64)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r10,#(-64)]
// Release unnamed[944] from Q0
// unnamed[960]: Load as Q0
vldrb.u8 Q0, [r10, #(1 * -48)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r10,#(-48)]
// Release unnamed[960] from Q0
// unnamed[976]: Load as Q0
vldrb.u8 Q0, [r10, #(1 * -32)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r10,#(-32)]
// Release unnamed[976] from Q0
// unnamed[992]: Load as Q0
vldrb.u8 Q0, [r10, #(1 * -16)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r10,#(-16)]
// Release unnamed[992] from Q0
// unnamed[1008]: Load as Q0
vldrb.u8 Q0, [r10, #(1 * 0)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r10,#(0)]
// Release unnamed[1008] from Q0
// unnamed[1024]: Load as Q0
vldrb.u8 Q0, [r10, #(1 * 16)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r10,#(16)]
// Release unnamed[1024] from Q0
// unnamed[1040]: Load as Q0
vldrb.u8 Q0, [r10, #(1 * 32)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r10,#(32)]
// Release unnamed[1040] from Q0
// unnamed[1056]: Load as Q0
vldrb.u8 Q0, [r10, #(1 * 48)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r10,#(48)]
// Release unnamed[1056] from Q0
// unnamed[1072]: Load as Q0
vldrb.u8 Q0, [r10, #(1 * 64)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r10,#(64)]
// Release unnamed[1072] from Q0
// unnamed[1088]: Load as Q0
vldrb.u8 Q0, [r10, #(1 * 80)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r10,#(80)]
// Release unnamed[1088] from Q0
// unnamed[1104]: Load as Q0
vldrb.u8 Q0, [r10, #(1 * 96)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r10,#(96)]
// Release unnamed[1104] from Q0
// unnamed[1120]: Load as Q0
vldrb.u8 Q0, [r10, #(1 * 112)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r10,#(112)]
// Release unnamed[1120] from Q0
// unnamed[1136]: Load as Q0
vldrb.u8 Q0, [r9, #(1 * -124)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r9,#(-124)]
// Release unnamed[1136] from Q0
// unnamed[1152]: Load as Q0
vldrb.u8 Q0, [r9, #(1 * -108)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r9,#(-108)]
// Release unnamed[1152] from Q0
// unnamed[1168]: Load as Q0
vldrb.u8 Q0, [r9, #(1 * -92)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r9,#(-92)]
// Release unnamed[1168] from Q0
// unnamed[1184]: Load as Q0
vldrb.u8 Q0, [r9, #(1 * -76)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r9,#(-76)]
// Release unnamed[1184] from Q0
// unnamed[1200]: Load as Q0
vldrb.u8 Q0, [r9, #(1 * -60)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r9,#(-60)]
// Release unnamed[1200] from Q0
// unnamed[1216]: Load as Q0
vldrb.u8 Q0, [r9, #(1 * -44)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r9,#(-44)]
// Release unnamed[1216] from Q0
// unnamed[1232]: Load as Q0
vldrb.u8 Q0, [r9, #(1 * -28)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r9,#(-28)]
// Release unnamed[1232] from Q0
// unnamed[1248]: Load as Q0
vldrb.u8 Q0, [r9, #(1 * -12)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r9,#(-12)]
// Release unnamed[1248] from Q0
// unnamed[1264]: Load as Q0
vldrb.u8 Q0, [r9, #(1 * 4)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r9,#(4)]
// Release unnamed[1264] from Q0
// unnamed[1280]: Load as Q0
vldrb.u8 Q0, [r9, #(1 * 20)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r9,#(20)]
// Release unnamed[1280] from Q0
// unnamed[1296]: Load as Q0
vldrb.u8 Q0, [r9, #(1 * 36)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r9,#(36)]
// Release unnamed[1296] from Q0
// unnamed[1312]: Load as Q0
vldrb.u8 Q0, [r9, #(1 * 52)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r9,#(52)]
// Release unnamed[1312] from Q0
// unnamed[1328]: Load as Q0
vldrb.u8 Q0, [r9, #(1 * 68)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r9,#(68)]
// Release unnamed[1328] from Q0
// unnamed[1344]: Load as Q0
vldrb.u8 Q0, [r9, #(1 * 84)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r9,#(84)]
// Release unnamed[1344] from Q0
// unnamed[1360]: Load as Q0
vldrb.u8 Q0, [r9, #(1 * 100)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r9,#(100)]
// Release unnamed[1360] from Q0
// unnamed[1376]: Load as Q0
vldrb.u8 Q0, [r9, #(1 * 116)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r9,#(116)]
// Release unnamed[1376] from Q0
// unnamed[1392]: Load as Q0
vldrb.u8 Q0, [r8, #(1 * -120)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r8,#(-120)]
// Release unnamed[1392] from Q0
// unnamed[1408]: Load as Q0
vldrb.u8 Q0, [r8, #(1 * -104)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r8,#(-104)]
// Release unnamed[1408] from Q0
// unnamed[1424]: Load as Q0
vldrb.u8 Q0, [r8, #(1 * -88)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r8,#(-88)]
// Release unnamed[1424] from Q0
// unnamed[1440]: Load as Q0
vldrb.u8 Q0, [r8, #(1 * -72)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r8,#(-72)]
// Release unnamed[1440] from Q0
// unnamed[1456]: Load as Q0
vldrb.u8 Q0, [r8, #(1 * -56)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r8,#(-56)]
// Release unnamed[1456] from Q0
// unnamed[1472]: Load as Q0
vldrb.u8 Q0, [r8, #(1 * -40)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r8,#(-40)]
// Release unnamed[1472] from Q0
// unnamed[1488]: Load as Q0
vldrb.u8 Q0, [r8, #(1 * -24)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r8,#(-24)]
// Release unnamed[1488] from Q0
// unnamed[1504]: Load as Q0
vldrb.u8 Q0, [r8, #(1 * -8)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r8,#(-8)]
// Release unnamed[1504] from Q0
// unnamed[1520]: Load as Q0
vldrb.u8 Q0, [r8, #(1 * 8)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r8,#(8)]
// Release unnamed[1520] from Q0
// unnamed[1536]: Load as Q0
vldrb.u8 Q0, [r8, #(1 * 24)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r8,#(24)]
// Release unnamed[1536] from Q0
// unnamed[1552]: Load as Q0
vldrb.u8 Q0, [r8, #(1 * 40)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r8,#(40)]
// Release unnamed[1552] from Q0
// unnamed[1568]: Load as Q0
vldrb.u8 Q0, [r8, #(1 * 56)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r8,#(56)]
// Release unnamed[1568] from Q0
// unnamed[1584]: Load as Q0
vldrb.u8 Q0, [r8, #(1 * 72)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r8,#(72)]
// Release unnamed[1584] from Q0
// unnamed[1600]: Load as Q0
vldrb.u8 Q0, [r8, #(1 * 88)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r8,#(88)]
// Release unnamed[1600] from Q0
// unnamed[1616]: Load as Q0
vldrb.u8 Q0, [r8, #(1 * 104)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r8,#(104)]
// Release unnamed[1616] from Q0
// unnamed[1632]: Load as Q0
vldrb.u8 Q0, [r8, #(1 * 120)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r8,#(120)]
// Release unnamed[1632] from Q0
// unnamed[1648]: Load as Q0
vldrb.u8 Q0, [r7, #(1 * -116)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r7,#(-116)]
// Release unnamed[1648] from Q0
// unnamed[1664]: Load as Q0
vldrb.u8 Q0, [r7, #(1 * -100)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r7,#(-100)]
// Release unnamed[1664] from Q0
// unnamed[1680]: Load as Q0
vldrb.u8 Q0, [r7, #(1 * -84)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r7,#(-84)]
// Release unnamed[1680] from Q0
// unnamed[1696]: Load as Q0
vldrb.u8 Q0, [r7, #(1 * -68)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r7,#(-68)]
// Release unnamed[1696] from Q0
// unnamed[1712]: Load as Q0
vldrb.u8 Q0, [r7, #(1 * -52)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r7,#(-52)]
// Release unnamed[1712] from Q0
// unnamed[1728]: Load as Q0
vldrb.u8 Q0, [r7, #(1 * -36)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r7,#(-36)]
// Release unnamed[1728] from Q0
// unnamed[1744]: Load as Q0
vldrb.u8 Q0, [r7, #(1 * -20)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r7,#(-20)]
// Release unnamed[1744] from Q0
// unnamed[1760]: Load as Q0
vldrb.u8 Q0, [r7, #(1 * -4)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r7,#(-4)]
// Release unnamed[1760] from Q0
// unnamed[1776]: Load as Q0
vldrb.u8 Q0, [r7, #(1 * 12)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r7,#(12)]
// Release unnamed[1776] from Q0
// unnamed[1792]: Load as Q0
vldrb.u8 Q0, [r7, #(1 * 28)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r7,#(28)]
// Release unnamed[1792] from Q0
// unnamed[1808]: Load as Q0
vldrb.u8 Q0, [r7, #(1 * 44)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r7,#(44)]
// Release unnamed[1808] from Q0
// unnamed[1824]: Load as Q0
vldrb.u8 Q0, [r7, #(1 * 60)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r7,#(60)]
// Release unnamed[1824] from Q0
// unnamed[1840]: Load as Q0
vldrb.u8 Q0, [r7, #(1 * 76)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r7,#(76)]
// Release unnamed[1840] from Q0
// unnamed[1856]: Load as Q0
vldrb.u8 Q0, [r7, #(1 * 92)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r7,#(92)]
// Release unnamed[1856] from Q0
// unnamed[1872]: Load as Q0
vldrb.u8 Q0, [r7, #(1 * 108)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r7,#(108)]
// Release unnamed[1872] from Q0
// unnamed[1888]: Load as Q0
vldrb.u8 Q0, [r7, #(1 * 124)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r7,#(124)]
// Release unnamed[1888] from Q0
// unnamed[1904]: Load as Q0
vldrb.u8 Q0, [r6, #(1 * -112)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r6,#(-112)]
// Release unnamed[1904] from Q0
// unnamed[1920]: Load as Q0
vldrb.u8 Q0, [r6, #(1 * -96)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r6,#(-96)]
// Release unnamed[1920] from Q0
// unnamed[1936]: Load as Q0
vldrb.u8 Q0, [r6, #(1 * -80)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r6,#(-80)]
// Release unnamed[1936] from Q0
// unnamed[1952]: Load as Q0
vldrb.u8 Q0, [r6, #(1 * -64)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r6,#(-64)]
// Release unnamed[1952] from Q0
// unnamed[1968]: Load as Q0
vldrb.u8 Q0, [r6, #(1 * -48)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r6,#(-48)]
// Release unnamed[1968] from Q0
// unnamed[1984]: Load as Q0
vldrb.u8 Q0, [r6, #(1 * -32)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r6,#(-32)]
// Release unnamed[1984] from Q0
// unnamed[2000]: Load as Q0
vldrb.u8 Q0, [r6, #(1 * -16)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r6,#(-16)]
// Release unnamed[2000] from Q0
// unnamed[2016]: Load as Q0
vldrb.u8 Q0, [r6, #(1 * 0)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r6,#(0)]
// Release unnamed[2016] from Q0
// unnamed[2032]: Load as Q0
vldrb.u8 Q0, [r6, #(1 * 16)]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r5
vstrb.u8 Q0, [r6,#(16)]
// Release unnamed[2032] from Q0
// Restore MVE vector registers
vpop {d8-d15}
// Restore GPRs
pop {r4-r11,lr}
bx lr

// Line count:        801
// Instruction count: 533