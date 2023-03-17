
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
.type copy_with_multireader_u16, %function
.global copy_with_multireader_u16
copy_with_multireader_u16:
// Save GPRs
push {r4-r11,lr}
// Save MVE vector registers
vpush {d0-d15}
// Temporarily shift r0 to increase addressing range.
add r0, r0, #252
// Use r12 as marker for r0 + 756
add r12, r0, #504
// Use r11 as marker for r0 + 1260
add r11, r12, #504
// Use r10 as marker for r0 + 1764
add r10, r11, #504
// Use r9 as marker for r0 + 2268
add r9, r10, #504
mov r14, #42
// unnamed[0]: Load as Q0
vldrh.u16 Q0, [r0, #-252]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r0,#(-252)]
// Release unnamed[0] from Q0
// unnamed[8]: Load as Q0
vldrh.u16 Q0, [r0, #-236]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r0,#(-236)]
// Release unnamed[8] from Q0
// unnamed[16]: Load as Q0
vldrh.u16 Q0, [r0, #-220]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r0,#(-220)]
// Release unnamed[16] from Q0
// unnamed[24]: Load as Q0
vldrh.u16 Q0, [r0, #-204]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r0,#(-204)]
// Release unnamed[24] from Q0
// unnamed[32]: Load as Q0
vldrh.u16 Q0, [r0, #-188]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r0,#(-188)]
// Release unnamed[32] from Q0
// unnamed[40]: Load as Q0
vldrh.u16 Q0, [r0, #-172]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r0,#(-172)]
// Release unnamed[40] from Q0
// unnamed[48]: Load as Q0
vldrh.u16 Q0, [r0, #-156]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r0,#(-156)]
// Release unnamed[48] from Q0
// unnamed[56]: Load as Q0
vldrh.u16 Q0, [r0, #-140]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r0,#(-140)]
// Release unnamed[56] from Q0
// unnamed[64]: Load as Q0
vldrh.u16 Q0, [r0, #-124]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r0,#(-124)]
// Release unnamed[64] from Q0
// unnamed[72]: Load as Q0
vldrh.u16 Q0, [r0, #-108]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r0,#(-108)]
// Release unnamed[72] from Q0
// unnamed[80]: Load as Q0
vldrh.u16 Q0, [r0, #-92]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r0,#(-92)]
// Release unnamed[80] from Q0
// unnamed[88]: Load as Q0
vldrh.u16 Q0, [r0, #-76]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r0,#(-76)]
// Release unnamed[88] from Q0
// unnamed[96]: Load as Q0
vldrh.u16 Q0, [r0, #-60]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r0,#(-60)]
// Release unnamed[96] from Q0
// unnamed[104]: Load as Q0
vldrh.u16 Q0, [r0, #-44]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r0,#(-44)]
// Release unnamed[104] from Q0
// unnamed[112]: Load as Q0
vldrh.u16 Q0, [r0, #-28]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r0,#(-28)]
// Release unnamed[112] from Q0
// unnamed[120]: Load as Q0
vldrh.u16 Q0, [r0, #-12]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r0,#(-12)]
// Release unnamed[120] from Q0
// unnamed[128]: Load as Q0
vldrh.u16 Q0, [r0, #4]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r0,#(4)]
// Release unnamed[128] from Q0
// unnamed[136]: Load as Q0
vldrh.u16 Q0, [r0, #20]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r0,#(20)]
// Release unnamed[136] from Q0
// unnamed[144]: Load as Q0
vldrh.u16 Q0, [r0, #36]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r0,#(36)]
// Release unnamed[144] from Q0
// unnamed[152]: Load as Q0
vldrh.u16 Q0, [r0, #52]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r0,#(52)]
// Release unnamed[152] from Q0
// unnamed[160]: Load as Q0
vldrh.u16 Q0, [r0, #68]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r0,#(68)]
// Release unnamed[160] from Q0
// unnamed[168]: Load as Q0
vldrh.u16 Q0, [r0, #84]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r0,#(84)]
// Release unnamed[168] from Q0
// unnamed[176]: Load as Q0
vldrh.u16 Q0, [r0, #100]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r0,#(100)]
// Release unnamed[176] from Q0
// unnamed[184]: Load as Q0
vldrh.u16 Q0, [r0, #116]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r0,#(116)]
// Release unnamed[184] from Q0
// unnamed[192]: Load as Q0
vldrh.u16 Q0, [r0, #132]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r0,#(132)]
// Release unnamed[192] from Q0
// unnamed[200]: Load as Q0
vldrh.u16 Q0, [r0, #148]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r0,#(148)]
// Release unnamed[200] from Q0
// unnamed[208]: Load as Q0
vldrh.u16 Q0, [r0, #164]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r0,#(164)]
// Release unnamed[208] from Q0
// unnamed[216]: Load as Q0
vldrh.u16 Q0, [r0, #180]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r0,#(180)]
// Release unnamed[216] from Q0
// unnamed[224]: Load as Q0
vldrh.u16 Q0, [r0, #196]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r0,#(196)]
// Release unnamed[224] from Q0
// unnamed[232]: Load as Q0
vldrh.u16 Q0, [r0, #212]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r0,#(212)]
// Release unnamed[232] from Q0
// unnamed[240]: Load as Q0
vldrh.u16 Q0, [r0, #228]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r0,#(228)]
// Release unnamed[240] from Q0
// unnamed[248]: Load as Q0
vldrh.u16 Q0, [r0, #244]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r0,#(244)]
// Release unnamed[248] from Q0
// unnamed[256]: Load as Q0
vldrh.u16 Q0, [r12, #-244]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r12,#(-244)]
// Release unnamed[256] from Q0
// unnamed[264]: Load as Q0
vldrh.u16 Q0, [r12, #-228]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r12,#(-228)]
// Release unnamed[264] from Q0
// unnamed[272]: Load as Q0
vldrh.u16 Q0, [r12, #-212]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r12,#(-212)]
// Release unnamed[272] from Q0
// unnamed[280]: Load as Q0
vldrh.u16 Q0, [r12, #-196]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r12,#(-196)]
// Release unnamed[280] from Q0
// unnamed[288]: Load as Q0
vldrh.u16 Q0, [r12, #-180]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r12,#(-180)]
// Release unnamed[288] from Q0
// unnamed[296]: Load as Q0
vldrh.u16 Q0, [r12, #-164]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r12,#(-164)]
// Release unnamed[296] from Q0
// unnamed[304]: Load as Q0
vldrh.u16 Q0, [r12, #-148]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r12,#(-148)]
// Release unnamed[304] from Q0
// unnamed[312]: Load as Q0
vldrh.u16 Q0, [r12, #-132]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r12,#(-132)]
// Release unnamed[312] from Q0
// unnamed[320]: Load as Q0
vldrh.u16 Q0, [r12, #-116]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r12,#(-116)]
// Release unnamed[320] from Q0
// unnamed[328]: Load as Q0
vldrh.u16 Q0, [r12, #-100]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r12,#(-100)]
// Release unnamed[328] from Q0
// unnamed[336]: Load as Q0
vldrh.u16 Q0, [r12, #-84]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r12,#(-84)]
// Release unnamed[336] from Q0
// unnamed[344]: Load as Q0
vldrh.u16 Q0, [r12, #-68]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r12,#(-68)]
// Release unnamed[344] from Q0
// unnamed[352]: Load as Q0
vldrh.u16 Q0, [r12, #-52]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r12,#(-52)]
// Release unnamed[352] from Q0
// unnamed[360]: Load as Q0
vldrh.u16 Q0, [r12, #-36]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r12,#(-36)]
// Release unnamed[360] from Q0
// unnamed[368]: Load as Q0
vldrh.u16 Q0, [r12, #-20]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r12,#(-20)]
// Release unnamed[368] from Q0
// unnamed[376]: Load as Q0
vldrh.u16 Q0, [r12, #-4]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r12,#(-4)]
// Release unnamed[376] from Q0
// unnamed[384]: Load as Q0
vldrh.u16 Q0, [r12, #12]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r12,#(12)]
// Release unnamed[384] from Q0
// unnamed[392]: Load as Q0
vldrh.u16 Q0, [r12, #28]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r12,#(28)]
// Release unnamed[392] from Q0
// unnamed[400]: Load as Q0
vldrh.u16 Q0, [r12, #44]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r12,#(44)]
// Release unnamed[400] from Q0
// unnamed[408]: Load as Q0
vldrh.u16 Q0, [r12, #60]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r12,#(60)]
// Release unnamed[408] from Q0
// unnamed[416]: Load as Q0
vldrh.u16 Q0, [r12, #76]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r12,#(76)]
// Release unnamed[416] from Q0
// unnamed[424]: Load as Q0
vldrh.u16 Q0, [r12, #92]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r12,#(92)]
// Release unnamed[424] from Q0
// unnamed[432]: Load as Q0
vldrh.u16 Q0, [r12, #108]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r12,#(108)]
// Release unnamed[432] from Q0
// unnamed[440]: Load as Q0
vldrh.u16 Q0, [r12, #124]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r12,#(124)]
// Release unnamed[440] from Q0
// unnamed[448]: Load as Q0
vldrh.u16 Q0, [r12, #140]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r12,#(140)]
// Release unnamed[448] from Q0
// unnamed[456]: Load as Q0
vldrh.u16 Q0, [r12, #156]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r12,#(156)]
// Release unnamed[456] from Q0
// unnamed[464]: Load as Q0
vldrh.u16 Q0, [r12, #172]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r12,#(172)]
// Release unnamed[464] from Q0
// unnamed[472]: Load as Q0
vldrh.u16 Q0, [r12, #188]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r12,#(188)]
// Release unnamed[472] from Q0
// unnamed[480]: Load as Q0
vldrh.u16 Q0, [r12, #204]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r12,#(204)]
// Release unnamed[480] from Q0
// unnamed[488]: Load as Q0
vldrh.u16 Q0, [r12, #220]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r12,#(220)]
// Release unnamed[488] from Q0
// unnamed[496]: Load as Q0
vldrh.u16 Q0, [r12, #236]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r12,#(236)]
// Release unnamed[496] from Q0
// unnamed[504]: Load as Q0
vldrh.u16 Q0, [r12, #252]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r12,#(252)]
// Release unnamed[504] from Q0
// unnamed[512]: Load as Q0
vldrh.u16 Q0, [r11, #-236]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r11,#(-236)]
// Release unnamed[512] from Q0
// unnamed[520]: Load as Q0
vldrh.u16 Q0, [r11, #-220]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r11,#(-220)]
// Release unnamed[520] from Q0
// unnamed[528]: Load as Q0
vldrh.u16 Q0, [r11, #-204]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r11,#(-204)]
// Release unnamed[528] from Q0
// unnamed[536]: Load as Q0
vldrh.u16 Q0, [r11, #-188]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r11,#(-188)]
// Release unnamed[536] from Q0
// unnamed[544]: Load as Q0
vldrh.u16 Q0, [r11, #-172]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r11,#(-172)]
// Release unnamed[544] from Q0
// unnamed[552]: Load as Q0
vldrh.u16 Q0, [r11, #-156]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r11,#(-156)]
// Release unnamed[552] from Q0
// unnamed[560]: Load as Q0
vldrh.u16 Q0, [r11, #-140]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r11,#(-140)]
// Release unnamed[560] from Q0
// unnamed[568]: Load as Q0
vldrh.u16 Q0, [r11, #-124]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r11,#(-124)]
// Release unnamed[568] from Q0
// unnamed[576]: Load as Q0
vldrh.u16 Q0, [r11, #-108]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r11,#(-108)]
// Release unnamed[576] from Q0
// unnamed[584]: Load as Q0
vldrh.u16 Q0, [r11, #-92]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r11,#(-92)]
// Release unnamed[584] from Q0
// unnamed[592]: Load as Q0
vldrh.u16 Q0, [r11, #-76]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r11,#(-76)]
// Release unnamed[592] from Q0
// unnamed[600]: Load as Q0
vldrh.u16 Q0, [r11, #-60]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r11,#(-60)]
// Release unnamed[600] from Q0
// unnamed[608]: Load as Q0
vldrh.u16 Q0, [r11, #-44]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r11,#(-44)]
// Release unnamed[608] from Q0
// unnamed[616]: Load as Q0
vldrh.u16 Q0, [r11, #-28]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r11,#(-28)]
// Release unnamed[616] from Q0
// unnamed[624]: Load as Q0
vldrh.u16 Q0, [r11, #-12]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r11,#(-12)]
// Release unnamed[624] from Q0
// unnamed[632]: Load as Q0
vldrh.u16 Q0, [r11, #4]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r11,#(4)]
// Release unnamed[632] from Q0
// unnamed[640]: Load as Q0
vldrh.u16 Q0, [r11, #20]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r11,#(20)]
// Release unnamed[640] from Q0
// unnamed[648]: Load as Q0
vldrh.u16 Q0, [r11, #36]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r11,#(36)]
// Release unnamed[648] from Q0
// unnamed[656]: Load as Q0
vldrh.u16 Q0, [r11, #52]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r11,#(52)]
// Release unnamed[656] from Q0
// unnamed[664]: Load as Q0
vldrh.u16 Q0, [r11, #68]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r11,#(68)]
// Release unnamed[664] from Q0
// unnamed[672]: Load as Q0
vldrh.u16 Q0, [r11, #84]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r11,#(84)]
// Release unnamed[672] from Q0
// unnamed[680]: Load as Q0
vldrh.u16 Q0, [r11, #100]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r11,#(100)]
// Release unnamed[680] from Q0
// unnamed[688]: Load as Q0
vldrh.u16 Q0, [r11, #116]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r11,#(116)]
// Release unnamed[688] from Q0
// unnamed[696]: Load as Q0
vldrh.u16 Q0, [r11, #132]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r11,#(132)]
// Release unnamed[696] from Q0
// unnamed[704]: Load as Q0
vldrh.u16 Q0, [r11, #148]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r11,#(148)]
// Release unnamed[704] from Q0
// unnamed[712]: Load as Q0
vldrh.u16 Q0, [r11, #164]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r11,#(164)]
// Release unnamed[712] from Q0
// unnamed[720]: Load as Q0
vldrh.u16 Q0, [r11, #180]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r11,#(180)]
// Release unnamed[720] from Q0
// unnamed[728]: Load as Q0
vldrh.u16 Q0, [r11, #196]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r11,#(196)]
// Release unnamed[728] from Q0
// unnamed[736]: Load as Q0
vldrh.u16 Q0, [r11, #212]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r11,#(212)]
// Release unnamed[736] from Q0
// unnamed[744]: Load as Q0
vldrh.u16 Q0, [r11, #228]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r11,#(228)]
// Release unnamed[744] from Q0
// unnamed[752]: Load as Q0
vldrh.u16 Q0, [r11, #244]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r11,#(244)]
// Release unnamed[752] from Q0
// unnamed[760]: Load as Q0
vldrh.u16 Q0, [r10, #-244]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r10,#(-244)]
// Release unnamed[760] from Q0
// unnamed[768]: Load as Q0
vldrh.u16 Q0, [r10, #-228]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r10,#(-228)]
// Release unnamed[768] from Q0
// unnamed[776]: Load as Q0
vldrh.u16 Q0, [r10, #-212]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r10,#(-212)]
// Release unnamed[776] from Q0
// unnamed[784]: Load as Q0
vldrh.u16 Q0, [r10, #-196]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r10,#(-196)]
// Release unnamed[784] from Q0
// unnamed[792]: Load as Q0
vldrh.u16 Q0, [r10, #-180]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r10,#(-180)]
// Release unnamed[792] from Q0
// unnamed[800]: Load as Q0
vldrh.u16 Q0, [r10, #-164]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r10,#(-164)]
// Release unnamed[800] from Q0
// unnamed[808]: Load as Q0
vldrh.u16 Q0, [r10, #-148]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r10,#(-148)]
// Release unnamed[808] from Q0
// unnamed[816]: Load as Q0
vldrh.u16 Q0, [r10, #-132]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r10,#(-132)]
// Release unnamed[816] from Q0
// unnamed[824]: Load as Q0
vldrh.u16 Q0, [r10, #-116]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r10,#(-116)]
// Release unnamed[824] from Q0
// unnamed[832]: Load as Q0
vldrh.u16 Q0, [r10, #-100]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r10,#(-100)]
// Release unnamed[832] from Q0
// unnamed[840]: Load as Q0
vldrh.u16 Q0, [r10, #-84]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r10,#(-84)]
// Release unnamed[840] from Q0
// unnamed[848]: Load as Q0
vldrh.u16 Q0, [r10, #-68]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r10,#(-68)]
// Release unnamed[848] from Q0
// unnamed[856]: Load as Q0
vldrh.u16 Q0, [r10, #-52]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r10,#(-52)]
// Release unnamed[856] from Q0
// unnamed[864]: Load as Q0
vldrh.u16 Q0, [r10, #-36]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r10,#(-36)]
// Release unnamed[864] from Q0
// unnamed[872]: Load as Q0
vldrh.u16 Q0, [r10, #-20]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r10,#(-20)]
// Release unnamed[872] from Q0
// unnamed[880]: Load as Q0
vldrh.u16 Q0, [r10, #-4]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r10,#(-4)]
// Release unnamed[880] from Q0
// unnamed[888]: Load as Q0
vldrh.u16 Q0, [r10, #12]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r10,#(12)]
// Release unnamed[888] from Q0
// unnamed[896]: Load as Q0
vldrh.u16 Q0, [r10, #28]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r10,#(28)]
// Release unnamed[896] from Q0
// unnamed[904]: Load as Q0
vldrh.u16 Q0, [r10, #44]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r10,#(44)]
// Release unnamed[904] from Q0
// unnamed[912]: Load as Q0
vldrh.u16 Q0, [r10, #60]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r10,#(60)]
// Release unnamed[912] from Q0
// unnamed[920]: Load as Q0
vldrh.u16 Q0, [r10, #76]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r10,#(76)]
// Release unnamed[920] from Q0
// unnamed[928]: Load as Q0
vldrh.u16 Q0, [r10, #92]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r10,#(92)]
// Release unnamed[928] from Q0
// unnamed[936]: Load as Q0
vldrh.u16 Q0, [r10, #108]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r10,#(108)]
// Release unnamed[936] from Q0
// unnamed[944]: Load as Q0
vldrh.u16 Q0, [r10, #124]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r10,#(124)]
// Release unnamed[944] from Q0
// unnamed[952]: Load as Q0
vldrh.u16 Q0, [r10, #140]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r10,#(140)]
// Release unnamed[952] from Q0
// unnamed[960]: Load as Q0
vldrh.u16 Q0, [r10, #156]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r10,#(156)]
// Release unnamed[960] from Q0
// unnamed[968]: Load as Q0
vldrh.u16 Q0, [r10, #172]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r10,#(172)]
// Release unnamed[968] from Q0
// unnamed[976]: Load as Q0
vldrh.u16 Q0, [r10, #188]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r10,#(188)]
// Release unnamed[976] from Q0
// unnamed[984]: Load as Q0
vldrh.u16 Q0, [r10, #204]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r10,#(204)]
// Release unnamed[984] from Q0
// unnamed[992]: Load as Q0
vldrh.u16 Q0, [r10, #220]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r10,#(220)]
// Release unnamed[992] from Q0
// unnamed[1000]: Load as Q0
vldrh.u16 Q0, [r10, #236]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r10,#(236)]
// Release unnamed[1000] from Q0
// unnamed[1008]: Load as Q0
vldrh.u16 Q0, [r10, #252]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r10,#(252)]
// Release unnamed[1008] from Q0
// unnamed[1016]: Load as Q0
vldrh.u16 Q0, [r9, #-236]
vstrh.u16 Q0, [r1], #+16
vdup.u16 Q0, r14
vstrh.u16 Q0, [r9,#(-236)]
// Release unnamed[1016] from Q0
// Undo temporary shift of r0
sub r0, r0, #252
// Restore MVE vector registers
vpop {d0-d15}
// Restore GPRs
pop {r4-r11,lr}
bx lr

// Line count:        796
// Instruction count: 530