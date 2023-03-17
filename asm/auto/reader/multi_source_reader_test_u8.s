
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
.type copy_with_multireader_u8, %function
.global copy_with_multireader_u8
copy_with_multireader_u8:
// Save GPRs
push {r4-r11,lr}
// Save MVE vector registers
vpush {d0-d15}
// Temporarily shift r0 to increase addressing range.
add r0, r0, #126
// Use r12 as marker for r0 + 378
add r12, r0, #252
// Use r11 as marker for r0 + 630
add r11, r12, #252
// Use r10 as marker for r0 + 882
add r10, r11, #252
// Use r9 as marker for r0 + 1134
add r9, r10, #252
// Use r8 as marker for r0 + 1386
add r8, r9, #252
// Use r7 as marker for r0 + 1638
add r7, r8, #252
// Use r6 as marker for r0 + 1890
add r6, r7, #252
// Use r5 as marker for r0 + 2142
add r5, r6, #252
mov r14, #42
// unnamed[0]: Load as Q0
vldrb.u8 Q0, [r0, #-126]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r0,#(-126)]
// Release unnamed[0] from Q0
// unnamed[16]: Load as Q0
vldrb.u8 Q0, [r0, #-110]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r0,#(-110)]
// Release unnamed[16] from Q0
// unnamed[32]: Load as Q0
vldrb.u8 Q0, [r0, #-94]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r0,#(-94)]
// Release unnamed[32] from Q0
// unnamed[48]: Load as Q0
vldrb.u8 Q0, [r0, #-78]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r0,#(-78)]
// Release unnamed[48] from Q0
// unnamed[64]: Load as Q0
vldrb.u8 Q0, [r0, #-62]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r0,#(-62)]
// Release unnamed[64] from Q0
// unnamed[80]: Load as Q0
vldrb.u8 Q0, [r0, #-46]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r0,#(-46)]
// Release unnamed[80] from Q0
// unnamed[96]: Load as Q0
vldrb.u8 Q0, [r0, #-30]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r0,#(-30)]
// Release unnamed[96] from Q0
// unnamed[112]: Load as Q0
vldrb.u8 Q0, [r0, #-14]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r0,#(-14)]
// Release unnamed[112] from Q0
// unnamed[128]: Load as Q0
vldrb.u8 Q0, [r0, #2]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r0,#(2)]
// Release unnamed[128] from Q0
// unnamed[144]: Load as Q0
vldrb.u8 Q0, [r0, #18]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r0,#(18)]
// Release unnamed[144] from Q0
// unnamed[160]: Load as Q0
vldrb.u8 Q0, [r0, #34]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r0,#(34)]
// Release unnamed[160] from Q0
// unnamed[176]: Load as Q0
vldrb.u8 Q0, [r0, #50]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r0,#(50)]
// Release unnamed[176] from Q0
// unnamed[192]: Load as Q0
vldrb.u8 Q0, [r0, #66]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r0,#(66)]
// Release unnamed[192] from Q0
// unnamed[208]: Load as Q0
vldrb.u8 Q0, [r0, #82]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r0,#(82)]
// Release unnamed[208] from Q0
// unnamed[224]: Load as Q0
vldrb.u8 Q0, [r0, #98]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r0,#(98)]
// Release unnamed[224] from Q0
// unnamed[240]: Load as Q0
vldrb.u8 Q0, [r0, #114]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r0,#(114)]
// Release unnamed[240] from Q0
// unnamed[256]: Load as Q0
vldrb.u8 Q0, [r12, #-122]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r12,#(-122)]
// Release unnamed[256] from Q0
// unnamed[272]: Load as Q0
vldrb.u8 Q0, [r12, #-106]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r12,#(-106)]
// Release unnamed[272] from Q0
// unnamed[288]: Load as Q0
vldrb.u8 Q0, [r12, #-90]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r12,#(-90)]
// Release unnamed[288] from Q0
// unnamed[304]: Load as Q0
vldrb.u8 Q0, [r12, #-74]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r12,#(-74)]
// Release unnamed[304] from Q0
// unnamed[320]: Load as Q0
vldrb.u8 Q0, [r12, #-58]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r12,#(-58)]
// Release unnamed[320] from Q0
// unnamed[336]: Load as Q0
vldrb.u8 Q0, [r12, #-42]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r12,#(-42)]
// Release unnamed[336] from Q0
// unnamed[352]: Load as Q0
vldrb.u8 Q0, [r12, #-26]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r12,#(-26)]
// Release unnamed[352] from Q0
// unnamed[368]: Load as Q0
vldrb.u8 Q0, [r12, #-10]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r12,#(-10)]
// Release unnamed[368] from Q0
// unnamed[384]: Load as Q0
vldrb.u8 Q0, [r12, #6]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r12,#(6)]
// Release unnamed[384] from Q0
// unnamed[400]: Load as Q0
vldrb.u8 Q0, [r12, #22]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r12,#(22)]
// Release unnamed[400] from Q0
// unnamed[416]: Load as Q0
vldrb.u8 Q0, [r12, #38]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r12,#(38)]
// Release unnamed[416] from Q0
// unnamed[432]: Load as Q0
vldrb.u8 Q0, [r12, #54]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r12,#(54)]
// Release unnamed[432] from Q0
// unnamed[448]: Load as Q0
vldrb.u8 Q0, [r12, #70]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r12,#(70)]
// Release unnamed[448] from Q0
// unnamed[464]: Load as Q0
vldrb.u8 Q0, [r12, #86]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r12,#(86)]
// Release unnamed[464] from Q0
// unnamed[480]: Load as Q0
vldrb.u8 Q0, [r12, #102]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r12,#(102)]
// Release unnamed[480] from Q0
// unnamed[496]: Load as Q0
vldrb.u8 Q0, [r12, #118]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r12,#(118)]
// Release unnamed[496] from Q0
// unnamed[512]: Load as Q0
vldrb.u8 Q0, [r11, #-118]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r11,#(-118)]
// Release unnamed[512] from Q0
// unnamed[528]: Load as Q0
vldrb.u8 Q0, [r11, #-102]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r11,#(-102)]
// Release unnamed[528] from Q0
// unnamed[544]: Load as Q0
vldrb.u8 Q0, [r11, #-86]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r11,#(-86)]
// Release unnamed[544] from Q0
// unnamed[560]: Load as Q0
vldrb.u8 Q0, [r11, #-70]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r11,#(-70)]
// Release unnamed[560] from Q0
// unnamed[576]: Load as Q0
vldrb.u8 Q0, [r11, #-54]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r11,#(-54)]
// Release unnamed[576] from Q0
// unnamed[592]: Load as Q0
vldrb.u8 Q0, [r11, #-38]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r11,#(-38)]
// Release unnamed[592] from Q0
// unnamed[608]: Load as Q0
vldrb.u8 Q0, [r11, #-22]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r11,#(-22)]
// Release unnamed[608] from Q0
// unnamed[624]: Load as Q0
vldrb.u8 Q0, [r11, #-6]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r11,#(-6)]
// Release unnamed[624] from Q0
// unnamed[640]: Load as Q0
vldrb.u8 Q0, [r11, #10]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r11,#(10)]
// Release unnamed[640] from Q0
// unnamed[656]: Load as Q0
vldrb.u8 Q0, [r11, #26]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r11,#(26)]
// Release unnamed[656] from Q0
// unnamed[672]: Load as Q0
vldrb.u8 Q0, [r11, #42]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r11,#(42)]
// Release unnamed[672] from Q0
// unnamed[688]: Load as Q0
vldrb.u8 Q0, [r11, #58]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r11,#(58)]
// Release unnamed[688] from Q0
// unnamed[704]: Load as Q0
vldrb.u8 Q0, [r11, #74]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r11,#(74)]
// Release unnamed[704] from Q0
// unnamed[720]: Load as Q0
vldrb.u8 Q0, [r11, #90]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r11,#(90)]
// Release unnamed[720] from Q0
// unnamed[736]: Load as Q0
vldrb.u8 Q0, [r11, #106]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r11,#(106)]
// Release unnamed[736] from Q0
// unnamed[752]: Load as Q0
vldrb.u8 Q0, [r11, #122]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r11,#(122)]
// Release unnamed[752] from Q0
// unnamed[768]: Load as Q0
vldrb.u8 Q0, [r10, #-114]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r10,#(-114)]
// Release unnamed[768] from Q0
// unnamed[784]: Load as Q0
vldrb.u8 Q0, [r10, #-98]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r10,#(-98)]
// Release unnamed[784] from Q0
// unnamed[800]: Load as Q0
vldrb.u8 Q0, [r10, #-82]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r10,#(-82)]
// Release unnamed[800] from Q0
// unnamed[816]: Load as Q0
vldrb.u8 Q0, [r10, #-66]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r10,#(-66)]
// Release unnamed[816] from Q0
// unnamed[832]: Load as Q0
vldrb.u8 Q0, [r10, #-50]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r10,#(-50)]
// Release unnamed[832] from Q0
// unnamed[848]: Load as Q0
vldrb.u8 Q0, [r10, #-34]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r10,#(-34)]
// Release unnamed[848] from Q0
// unnamed[864]: Load as Q0
vldrb.u8 Q0, [r10, #-18]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r10,#(-18)]
// Release unnamed[864] from Q0
// unnamed[880]: Load as Q0
vldrb.u8 Q0, [r10, #-2]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r10,#(-2)]
// Release unnamed[880] from Q0
// unnamed[896]: Load as Q0
vldrb.u8 Q0, [r10, #14]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r10,#(14)]
// Release unnamed[896] from Q0
// unnamed[912]: Load as Q0
vldrb.u8 Q0, [r10, #30]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r10,#(30)]
// Release unnamed[912] from Q0
// unnamed[928]: Load as Q0
vldrb.u8 Q0, [r10, #46]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r10,#(46)]
// Release unnamed[928] from Q0
// unnamed[944]: Load as Q0
vldrb.u8 Q0, [r10, #62]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r10,#(62)]
// Release unnamed[944] from Q0
// unnamed[960]: Load as Q0
vldrb.u8 Q0, [r10, #78]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r10,#(78)]
// Release unnamed[960] from Q0
// unnamed[976]: Load as Q0
vldrb.u8 Q0, [r10, #94]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r10,#(94)]
// Release unnamed[976] from Q0
// unnamed[992]: Load as Q0
vldrb.u8 Q0, [r10, #110]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r10,#(110)]
// Release unnamed[992] from Q0
// unnamed[1008]: Load as Q0
vldrb.u8 Q0, [r10, #126]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r10,#(126)]
// Release unnamed[1008] from Q0
// unnamed[1024]: Load as Q0
vldrb.u8 Q0, [r9, #-110]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r9,#(-110)]
// Release unnamed[1024] from Q0
// unnamed[1040]: Load as Q0
vldrb.u8 Q0, [r9, #-94]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r9,#(-94)]
// Release unnamed[1040] from Q0
// unnamed[1056]: Load as Q0
vldrb.u8 Q0, [r9, #-78]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r9,#(-78)]
// Release unnamed[1056] from Q0
// unnamed[1072]: Load as Q0
vldrb.u8 Q0, [r9, #-62]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r9,#(-62)]
// Release unnamed[1072] from Q0
// unnamed[1088]: Load as Q0
vldrb.u8 Q0, [r9, #-46]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r9,#(-46)]
// Release unnamed[1088] from Q0
// unnamed[1104]: Load as Q0
vldrb.u8 Q0, [r9, #-30]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r9,#(-30)]
// Release unnamed[1104] from Q0
// unnamed[1120]: Load as Q0
vldrb.u8 Q0, [r9, #-14]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r9,#(-14)]
// Release unnamed[1120] from Q0
// unnamed[1136]: Load as Q0
vldrb.u8 Q0, [r9, #2]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r9,#(2)]
// Release unnamed[1136] from Q0
// unnamed[1152]: Load as Q0
vldrb.u8 Q0, [r9, #18]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r9,#(18)]
// Release unnamed[1152] from Q0
// unnamed[1168]: Load as Q0
vldrb.u8 Q0, [r9, #34]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r9,#(34)]
// Release unnamed[1168] from Q0
// unnamed[1184]: Load as Q0
vldrb.u8 Q0, [r9, #50]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r9,#(50)]
// Release unnamed[1184] from Q0
// unnamed[1200]: Load as Q0
vldrb.u8 Q0, [r9, #66]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r9,#(66)]
// Release unnamed[1200] from Q0
// unnamed[1216]: Load as Q0
vldrb.u8 Q0, [r9, #82]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r9,#(82)]
// Release unnamed[1216] from Q0
// unnamed[1232]: Load as Q0
vldrb.u8 Q0, [r9, #98]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r9,#(98)]
// Release unnamed[1232] from Q0
// unnamed[1248]: Load as Q0
vldrb.u8 Q0, [r9, #114]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r9,#(114)]
// Release unnamed[1248] from Q0
// unnamed[1264]: Load as Q0
vldrb.u8 Q0, [r8, #-122]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r8,#(-122)]
// Release unnamed[1264] from Q0
// unnamed[1280]: Load as Q0
vldrb.u8 Q0, [r8, #-106]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r8,#(-106)]
// Release unnamed[1280] from Q0
// unnamed[1296]: Load as Q0
vldrb.u8 Q0, [r8, #-90]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r8,#(-90)]
// Release unnamed[1296] from Q0
// unnamed[1312]: Load as Q0
vldrb.u8 Q0, [r8, #-74]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r8,#(-74)]
// Release unnamed[1312] from Q0
// unnamed[1328]: Load as Q0
vldrb.u8 Q0, [r8, #-58]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r8,#(-58)]
// Release unnamed[1328] from Q0
// unnamed[1344]: Load as Q0
vldrb.u8 Q0, [r8, #-42]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r8,#(-42)]
// Release unnamed[1344] from Q0
// unnamed[1360]: Load as Q0
vldrb.u8 Q0, [r8, #-26]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r8,#(-26)]
// Release unnamed[1360] from Q0
// unnamed[1376]: Load as Q0
vldrb.u8 Q0, [r8, #-10]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r8,#(-10)]
// Release unnamed[1376] from Q0
// unnamed[1392]: Load as Q0
vldrb.u8 Q0, [r8, #6]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r8,#(6)]
// Release unnamed[1392] from Q0
// unnamed[1408]: Load as Q0
vldrb.u8 Q0, [r8, #22]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r8,#(22)]
// Release unnamed[1408] from Q0
// unnamed[1424]: Load as Q0
vldrb.u8 Q0, [r8, #38]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r8,#(38)]
// Release unnamed[1424] from Q0
// unnamed[1440]: Load as Q0
vldrb.u8 Q0, [r8, #54]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r8,#(54)]
// Release unnamed[1440] from Q0
// unnamed[1456]: Load as Q0
vldrb.u8 Q0, [r8, #70]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r8,#(70)]
// Release unnamed[1456] from Q0
// unnamed[1472]: Load as Q0
vldrb.u8 Q0, [r8, #86]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r8,#(86)]
// Release unnamed[1472] from Q0
// unnamed[1488]: Load as Q0
vldrb.u8 Q0, [r8, #102]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r8,#(102)]
// Release unnamed[1488] from Q0
// unnamed[1504]: Load as Q0
vldrb.u8 Q0, [r8, #118]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r8,#(118)]
// Release unnamed[1504] from Q0
// unnamed[1520]: Load as Q0
vldrb.u8 Q0, [r7, #-118]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r7,#(-118)]
// Release unnamed[1520] from Q0
// unnamed[1536]: Load as Q0
vldrb.u8 Q0, [r7, #-102]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r7,#(-102)]
// Release unnamed[1536] from Q0
// unnamed[1552]: Load as Q0
vldrb.u8 Q0, [r7, #-86]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r7,#(-86)]
// Release unnamed[1552] from Q0
// unnamed[1568]: Load as Q0
vldrb.u8 Q0, [r7, #-70]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r7,#(-70)]
// Release unnamed[1568] from Q0
// unnamed[1584]: Load as Q0
vldrb.u8 Q0, [r7, #-54]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r7,#(-54)]
// Release unnamed[1584] from Q0
// unnamed[1600]: Load as Q0
vldrb.u8 Q0, [r7, #-38]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r7,#(-38)]
// Release unnamed[1600] from Q0
// unnamed[1616]: Load as Q0
vldrb.u8 Q0, [r7, #-22]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r7,#(-22)]
// Release unnamed[1616] from Q0
// unnamed[1632]: Load as Q0
vldrb.u8 Q0, [r7, #-6]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r7,#(-6)]
// Release unnamed[1632] from Q0
// unnamed[1648]: Load as Q0
vldrb.u8 Q0, [r7, #10]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r7,#(10)]
// Release unnamed[1648] from Q0
// unnamed[1664]: Load as Q0
vldrb.u8 Q0, [r7, #26]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r7,#(26)]
// Release unnamed[1664] from Q0
// unnamed[1680]: Load as Q0
vldrb.u8 Q0, [r7, #42]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r7,#(42)]
// Release unnamed[1680] from Q0
// unnamed[1696]: Load as Q0
vldrb.u8 Q0, [r7, #58]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r7,#(58)]
// Release unnamed[1696] from Q0
// unnamed[1712]: Load as Q0
vldrb.u8 Q0, [r7, #74]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r7,#(74)]
// Release unnamed[1712] from Q0
// unnamed[1728]: Load as Q0
vldrb.u8 Q0, [r7, #90]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r7,#(90)]
// Release unnamed[1728] from Q0
// unnamed[1744]: Load as Q0
vldrb.u8 Q0, [r7, #106]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r7,#(106)]
// Release unnamed[1744] from Q0
// unnamed[1760]: Load as Q0
vldrb.u8 Q0, [r7, #122]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r7,#(122)]
// Release unnamed[1760] from Q0
// unnamed[1776]: Load as Q0
vldrb.u8 Q0, [r6, #-114]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r6,#(-114)]
// Release unnamed[1776] from Q0
// unnamed[1792]: Load as Q0
vldrb.u8 Q0, [r6, #-98]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r6,#(-98)]
// Release unnamed[1792] from Q0
// unnamed[1808]: Load as Q0
vldrb.u8 Q0, [r6, #-82]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r6,#(-82)]
// Release unnamed[1808] from Q0
// unnamed[1824]: Load as Q0
vldrb.u8 Q0, [r6, #-66]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r6,#(-66)]
// Release unnamed[1824] from Q0
// unnamed[1840]: Load as Q0
vldrb.u8 Q0, [r6, #-50]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r6,#(-50)]
// Release unnamed[1840] from Q0
// unnamed[1856]: Load as Q0
vldrb.u8 Q0, [r6, #-34]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r6,#(-34)]
// Release unnamed[1856] from Q0
// unnamed[1872]: Load as Q0
vldrb.u8 Q0, [r6, #-18]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r6,#(-18)]
// Release unnamed[1872] from Q0
// unnamed[1888]: Load as Q0
vldrb.u8 Q0, [r6, #-2]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r6,#(-2)]
// Release unnamed[1888] from Q0
// unnamed[1904]: Load as Q0
vldrb.u8 Q0, [r6, #14]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r6,#(14)]
// Release unnamed[1904] from Q0
// unnamed[1920]: Load as Q0
vldrb.u8 Q0, [r6, #30]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r6,#(30)]
// Release unnamed[1920] from Q0
// unnamed[1936]: Load as Q0
vldrb.u8 Q0, [r6, #46]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r6,#(46)]
// Release unnamed[1936] from Q0
// unnamed[1952]: Load as Q0
vldrb.u8 Q0, [r6, #62]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r6,#(62)]
// Release unnamed[1952] from Q0
// unnamed[1968]: Load as Q0
vldrb.u8 Q0, [r6, #78]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r6,#(78)]
// Release unnamed[1968] from Q0
// unnamed[1984]: Load as Q0
vldrb.u8 Q0, [r6, #94]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r6,#(94)]
// Release unnamed[1984] from Q0
// unnamed[2000]: Load as Q0
vldrb.u8 Q0, [r6, #110]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r6,#(110)]
// Release unnamed[2000] from Q0
// unnamed[2016]: Load as Q0
vldrb.u8 Q0, [r6, #126]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r6,#(126)]
// Release unnamed[2016] from Q0
// unnamed[2032]: Load as Q0
vldrb.u8 Q0, [r5, #-110]
vstrb.u8 Q0, [r1], #+16
vdup.u8 Q0, r14
vstrb.u8 Q0, [r5,#(-110)]
// Release unnamed[2032] from Q0
// Undo temporary shift of r0
sub r0, r0, #126
// Restore MVE vector registers
vpop {d0-d15}
// Restore GPRs
pop {r4-r11,lr}
bx lr

// Line count:        804
// Instruction count: 534