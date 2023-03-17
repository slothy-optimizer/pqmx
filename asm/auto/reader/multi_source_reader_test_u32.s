
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
.type copy_with_multireader_u32, %function
.global copy_with_multireader_u32
copy_with_multireader_u32:
// Save GPRs
push {r4-r11,lr}
// Save MVE vector registers
vpush {d0-d15}
// Temporarily shift r0 to increase addressing range.
add r0, r0, #504
// Use r12 as marker for r0 + 1512
add r12, r0, #1008
// Use r11 as marker for r0 + 2520
add r11, r12, #1008
mov r14, #42
// unnamed[0]: Load as Q0
vldrw.u32 Q0, [r0, #-504]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(-504)]
// Release unnamed[0] from Q0
// unnamed[4]: Load as Q0
vldrw.u32 Q0, [r0, #-488]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(-488)]
// Release unnamed[4] from Q0
// unnamed[8]: Load as Q0
vldrw.u32 Q0, [r0, #-472]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(-472)]
// Release unnamed[8] from Q0
// unnamed[12]: Load as Q0
vldrw.u32 Q0, [r0, #-456]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(-456)]
// Release unnamed[12] from Q0
// unnamed[16]: Load as Q0
vldrw.u32 Q0, [r0, #-440]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(-440)]
// Release unnamed[16] from Q0
// unnamed[20]: Load as Q0
vldrw.u32 Q0, [r0, #-424]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(-424)]
// Release unnamed[20] from Q0
// unnamed[24]: Load as Q0
vldrw.u32 Q0, [r0, #-408]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(-408)]
// Release unnamed[24] from Q0
// unnamed[28]: Load as Q0
vldrw.u32 Q0, [r0, #-392]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(-392)]
// Release unnamed[28] from Q0
// unnamed[32]: Load as Q0
vldrw.u32 Q0, [r0, #-376]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(-376)]
// Release unnamed[32] from Q0
// unnamed[36]: Load as Q0
vldrw.u32 Q0, [r0, #-360]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(-360)]
// Release unnamed[36] from Q0
// unnamed[40]: Load as Q0
vldrw.u32 Q0, [r0, #-344]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(-344)]
// Release unnamed[40] from Q0
// unnamed[44]: Load as Q0
vldrw.u32 Q0, [r0, #-328]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(-328)]
// Release unnamed[44] from Q0
// unnamed[48]: Load as Q0
vldrw.u32 Q0, [r0, #-312]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(-312)]
// Release unnamed[48] from Q0
// unnamed[52]: Load as Q0
vldrw.u32 Q0, [r0, #-296]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(-296)]
// Release unnamed[52] from Q0
// unnamed[56]: Load as Q0
vldrw.u32 Q0, [r0, #-280]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(-280)]
// Release unnamed[56] from Q0
// unnamed[60]: Load as Q0
vldrw.u32 Q0, [r0, #-264]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(-264)]
// Release unnamed[60] from Q0
// unnamed[64]: Load as Q0
vldrw.u32 Q0, [r0, #-248]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(-248)]
// Release unnamed[64] from Q0
// unnamed[68]: Load as Q0
vldrw.u32 Q0, [r0, #-232]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(-232)]
// Release unnamed[68] from Q0
// unnamed[72]: Load as Q0
vldrw.u32 Q0, [r0, #-216]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(-216)]
// Release unnamed[72] from Q0
// unnamed[76]: Load as Q0
vldrw.u32 Q0, [r0, #-200]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(-200)]
// Release unnamed[76] from Q0
// unnamed[80]: Load as Q0
vldrw.u32 Q0, [r0, #-184]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(-184)]
// Release unnamed[80] from Q0
// unnamed[84]: Load as Q0
vldrw.u32 Q0, [r0, #-168]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(-168)]
// Release unnamed[84] from Q0
// unnamed[88]: Load as Q0
vldrw.u32 Q0, [r0, #-152]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(-152)]
// Release unnamed[88] from Q0
// unnamed[92]: Load as Q0
vldrw.u32 Q0, [r0, #-136]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(-136)]
// Release unnamed[92] from Q0
// unnamed[96]: Load as Q0
vldrw.u32 Q0, [r0, #-120]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(-120)]
// Release unnamed[96] from Q0
// unnamed[100]: Load as Q0
vldrw.u32 Q0, [r0, #-104]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(-104)]
// Release unnamed[100] from Q0
// unnamed[104]: Load as Q0
vldrw.u32 Q0, [r0, #-88]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(-88)]
// Release unnamed[104] from Q0
// unnamed[108]: Load as Q0
vldrw.u32 Q0, [r0, #-72]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(-72)]
// Release unnamed[108] from Q0
// unnamed[112]: Load as Q0
vldrw.u32 Q0, [r0, #-56]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(-56)]
// Release unnamed[112] from Q0
// unnamed[116]: Load as Q0
vldrw.u32 Q0, [r0, #-40]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(-40)]
// Release unnamed[116] from Q0
// unnamed[120]: Load as Q0
vldrw.u32 Q0, [r0, #-24]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(-24)]
// Release unnamed[120] from Q0
// unnamed[124]: Load as Q0
vldrw.u32 Q0, [r0, #-8]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(-8)]
// Release unnamed[124] from Q0
// unnamed[128]: Load as Q0
vldrw.u32 Q0, [r0, #8]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(8)]
// Release unnamed[128] from Q0
// unnamed[132]: Load as Q0
vldrw.u32 Q0, [r0, #24]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(24)]
// Release unnamed[132] from Q0
// unnamed[136]: Load as Q0
vldrw.u32 Q0, [r0, #40]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(40)]
// Release unnamed[136] from Q0
// unnamed[140]: Load as Q0
vldrw.u32 Q0, [r0, #56]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(56)]
// Release unnamed[140] from Q0
// unnamed[144]: Load as Q0
vldrw.u32 Q0, [r0, #72]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(72)]
// Release unnamed[144] from Q0
// unnamed[148]: Load as Q0
vldrw.u32 Q0, [r0, #88]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(88)]
// Release unnamed[148] from Q0
// unnamed[152]: Load as Q0
vldrw.u32 Q0, [r0, #104]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(104)]
// Release unnamed[152] from Q0
// unnamed[156]: Load as Q0
vldrw.u32 Q0, [r0, #120]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(120)]
// Release unnamed[156] from Q0
// unnamed[160]: Load as Q0
vldrw.u32 Q0, [r0, #136]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(136)]
// Release unnamed[160] from Q0
// unnamed[164]: Load as Q0
vldrw.u32 Q0, [r0, #152]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(152)]
// Release unnamed[164] from Q0
// unnamed[168]: Load as Q0
vldrw.u32 Q0, [r0, #168]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(168)]
// Release unnamed[168] from Q0
// unnamed[172]: Load as Q0
vldrw.u32 Q0, [r0, #184]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(184)]
// Release unnamed[172] from Q0
// unnamed[176]: Load as Q0
vldrw.u32 Q0, [r0, #200]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(200)]
// Release unnamed[176] from Q0
// unnamed[180]: Load as Q0
vldrw.u32 Q0, [r0, #216]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(216)]
// Release unnamed[180] from Q0
// unnamed[184]: Load as Q0
vldrw.u32 Q0, [r0, #232]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(232)]
// Release unnamed[184] from Q0
// unnamed[188]: Load as Q0
vldrw.u32 Q0, [r0, #248]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(248)]
// Release unnamed[188] from Q0
// unnamed[192]: Load as Q0
vldrw.u32 Q0, [r0, #264]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(264)]
// Release unnamed[192] from Q0
// unnamed[196]: Load as Q0
vldrw.u32 Q0, [r0, #280]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(280)]
// Release unnamed[196] from Q0
// unnamed[200]: Load as Q0
vldrw.u32 Q0, [r0, #296]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(296)]
// Release unnamed[200] from Q0
// unnamed[204]: Load as Q0
vldrw.u32 Q0, [r0, #312]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(312)]
// Release unnamed[204] from Q0
// unnamed[208]: Load as Q0
vldrw.u32 Q0, [r0, #328]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(328)]
// Release unnamed[208] from Q0
// unnamed[212]: Load as Q0
vldrw.u32 Q0, [r0, #344]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(344)]
// Release unnamed[212] from Q0
// unnamed[216]: Load as Q0
vldrw.u32 Q0, [r0, #360]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(360)]
// Release unnamed[216] from Q0
// unnamed[220]: Load as Q0
vldrw.u32 Q0, [r0, #376]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(376)]
// Release unnamed[220] from Q0
// unnamed[224]: Load as Q0
vldrw.u32 Q0, [r0, #392]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(392)]
// Release unnamed[224] from Q0
// unnamed[228]: Load as Q0
vldrw.u32 Q0, [r0, #408]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(408)]
// Release unnamed[228] from Q0
// unnamed[232]: Load as Q0
vldrw.u32 Q0, [r0, #424]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(424)]
// Release unnamed[232] from Q0
// unnamed[236]: Load as Q0
vldrw.u32 Q0, [r0, #440]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(440)]
// Release unnamed[236] from Q0
// unnamed[240]: Load as Q0
vldrw.u32 Q0, [r0, #456]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(456)]
// Release unnamed[240] from Q0
// unnamed[244]: Load as Q0
vldrw.u32 Q0, [r0, #472]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(472)]
// Release unnamed[244] from Q0
// unnamed[248]: Load as Q0
vldrw.u32 Q0, [r0, #488]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(488)]
// Release unnamed[248] from Q0
// unnamed[252]: Load as Q0
vldrw.u32 Q0, [r0, #504]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r0,#(504)]
// Release unnamed[252] from Q0
// unnamed[256]: Load as Q0
vldrw.u32 Q0, [r12, #-488]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(-488)]
// Release unnamed[256] from Q0
// unnamed[260]: Load as Q0
vldrw.u32 Q0, [r12, #-472]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(-472)]
// Release unnamed[260] from Q0
// unnamed[264]: Load as Q0
vldrw.u32 Q0, [r12, #-456]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(-456)]
// Release unnamed[264] from Q0
// unnamed[268]: Load as Q0
vldrw.u32 Q0, [r12, #-440]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(-440)]
// Release unnamed[268] from Q0
// unnamed[272]: Load as Q0
vldrw.u32 Q0, [r12, #-424]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(-424)]
// Release unnamed[272] from Q0
// unnamed[276]: Load as Q0
vldrw.u32 Q0, [r12, #-408]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(-408)]
// Release unnamed[276] from Q0
// unnamed[280]: Load as Q0
vldrw.u32 Q0, [r12, #-392]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(-392)]
// Release unnamed[280] from Q0
// unnamed[284]: Load as Q0
vldrw.u32 Q0, [r12, #-376]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(-376)]
// Release unnamed[284] from Q0
// unnamed[288]: Load as Q0
vldrw.u32 Q0, [r12, #-360]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(-360)]
// Release unnamed[288] from Q0
// unnamed[292]: Load as Q0
vldrw.u32 Q0, [r12, #-344]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(-344)]
// Release unnamed[292] from Q0
// unnamed[296]: Load as Q0
vldrw.u32 Q0, [r12, #-328]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(-328)]
// Release unnamed[296] from Q0
// unnamed[300]: Load as Q0
vldrw.u32 Q0, [r12, #-312]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(-312)]
// Release unnamed[300] from Q0
// unnamed[304]: Load as Q0
vldrw.u32 Q0, [r12, #-296]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(-296)]
// Release unnamed[304] from Q0
// unnamed[308]: Load as Q0
vldrw.u32 Q0, [r12, #-280]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(-280)]
// Release unnamed[308] from Q0
// unnamed[312]: Load as Q0
vldrw.u32 Q0, [r12, #-264]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(-264)]
// Release unnamed[312] from Q0
// unnamed[316]: Load as Q0
vldrw.u32 Q0, [r12, #-248]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(-248)]
// Release unnamed[316] from Q0
// unnamed[320]: Load as Q0
vldrw.u32 Q0, [r12, #-232]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(-232)]
// Release unnamed[320] from Q0
// unnamed[324]: Load as Q0
vldrw.u32 Q0, [r12, #-216]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(-216)]
// Release unnamed[324] from Q0
// unnamed[328]: Load as Q0
vldrw.u32 Q0, [r12, #-200]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(-200)]
// Release unnamed[328] from Q0
// unnamed[332]: Load as Q0
vldrw.u32 Q0, [r12, #-184]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(-184)]
// Release unnamed[332] from Q0
// unnamed[336]: Load as Q0
vldrw.u32 Q0, [r12, #-168]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(-168)]
// Release unnamed[336] from Q0
// unnamed[340]: Load as Q0
vldrw.u32 Q0, [r12, #-152]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(-152)]
// Release unnamed[340] from Q0
// unnamed[344]: Load as Q0
vldrw.u32 Q0, [r12, #-136]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(-136)]
// Release unnamed[344] from Q0
// unnamed[348]: Load as Q0
vldrw.u32 Q0, [r12, #-120]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(-120)]
// Release unnamed[348] from Q0
// unnamed[352]: Load as Q0
vldrw.u32 Q0, [r12, #-104]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(-104)]
// Release unnamed[352] from Q0
// unnamed[356]: Load as Q0
vldrw.u32 Q0, [r12, #-88]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(-88)]
// Release unnamed[356] from Q0
// unnamed[360]: Load as Q0
vldrw.u32 Q0, [r12, #-72]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(-72)]
// Release unnamed[360] from Q0
// unnamed[364]: Load as Q0
vldrw.u32 Q0, [r12, #-56]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(-56)]
// Release unnamed[364] from Q0
// unnamed[368]: Load as Q0
vldrw.u32 Q0, [r12, #-40]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(-40)]
// Release unnamed[368] from Q0
// unnamed[372]: Load as Q0
vldrw.u32 Q0, [r12, #-24]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(-24)]
// Release unnamed[372] from Q0
// unnamed[376]: Load as Q0
vldrw.u32 Q0, [r12, #-8]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(-8)]
// Release unnamed[376] from Q0
// unnamed[380]: Load as Q0
vldrw.u32 Q0, [r12, #8]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(8)]
// Release unnamed[380] from Q0
// unnamed[384]: Load as Q0
vldrw.u32 Q0, [r12, #24]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(24)]
// Release unnamed[384] from Q0
// unnamed[388]: Load as Q0
vldrw.u32 Q0, [r12, #40]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(40)]
// Release unnamed[388] from Q0
// unnamed[392]: Load as Q0
vldrw.u32 Q0, [r12, #56]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(56)]
// Release unnamed[392] from Q0
// unnamed[396]: Load as Q0
vldrw.u32 Q0, [r12, #72]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(72)]
// Release unnamed[396] from Q0
// unnamed[400]: Load as Q0
vldrw.u32 Q0, [r12, #88]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(88)]
// Release unnamed[400] from Q0
// unnamed[404]: Load as Q0
vldrw.u32 Q0, [r12, #104]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(104)]
// Release unnamed[404] from Q0
// unnamed[408]: Load as Q0
vldrw.u32 Q0, [r12, #120]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(120)]
// Release unnamed[408] from Q0
// unnamed[412]: Load as Q0
vldrw.u32 Q0, [r12, #136]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(136)]
// Release unnamed[412] from Q0
// unnamed[416]: Load as Q0
vldrw.u32 Q0, [r12, #152]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(152)]
// Release unnamed[416] from Q0
// unnamed[420]: Load as Q0
vldrw.u32 Q0, [r12, #168]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(168)]
// Release unnamed[420] from Q0
// unnamed[424]: Load as Q0
vldrw.u32 Q0, [r12, #184]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(184)]
// Release unnamed[424] from Q0
// unnamed[428]: Load as Q0
vldrw.u32 Q0, [r12, #200]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(200)]
// Release unnamed[428] from Q0
// unnamed[432]: Load as Q0
vldrw.u32 Q0, [r12, #216]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(216)]
// Release unnamed[432] from Q0
// unnamed[436]: Load as Q0
vldrw.u32 Q0, [r12, #232]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(232)]
// Release unnamed[436] from Q0
// unnamed[440]: Load as Q0
vldrw.u32 Q0, [r12, #248]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(248)]
// Release unnamed[440] from Q0
// unnamed[444]: Load as Q0
vldrw.u32 Q0, [r12, #264]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(264)]
// Release unnamed[444] from Q0
// unnamed[448]: Load as Q0
vldrw.u32 Q0, [r12, #280]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(280)]
// Release unnamed[448] from Q0
// unnamed[452]: Load as Q0
vldrw.u32 Q0, [r12, #296]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(296)]
// Release unnamed[452] from Q0
// unnamed[456]: Load as Q0
vldrw.u32 Q0, [r12, #312]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(312)]
// Release unnamed[456] from Q0
// unnamed[460]: Load as Q0
vldrw.u32 Q0, [r12, #328]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(328)]
// Release unnamed[460] from Q0
// unnamed[464]: Load as Q0
vldrw.u32 Q0, [r12, #344]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(344)]
// Release unnamed[464] from Q0
// unnamed[468]: Load as Q0
vldrw.u32 Q0, [r12, #360]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(360)]
// Release unnamed[468] from Q0
// unnamed[472]: Load as Q0
vldrw.u32 Q0, [r12, #376]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(376)]
// Release unnamed[472] from Q0
// unnamed[476]: Load as Q0
vldrw.u32 Q0, [r12, #392]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(392)]
// Release unnamed[476] from Q0
// unnamed[480]: Load as Q0
vldrw.u32 Q0, [r12, #408]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(408)]
// Release unnamed[480] from Q0
// unnamed[484]: Load as Q0
vldrw.u32 Q0, [r12, #424]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(424)]
// Release unnamed[484] from Q0
// unnamed[488]: Load as Q0
vldrw.u32 Q0, [r12, #440]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(440)]
// Release unnamed[488] from Q0
// unnamed[492]: Load as Q0
vldrw.u32 Q0, [r12, #456]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(456)]
// Release unnamed[492] from Q0
// unnamed[496]: Load as Q0
vldrw.u32 Q0, [r12, #472]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(472)]
// Release unnamed[496] from Q0
// unnamed[500]: Load as Q0
vldrw.u32 Q0, [r12, #488]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(488)]
// Release unnamed[500] from Q0
// unnamed[504]: Load as Q0
vldrw.u32 Q0, [r12, #504]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r12,#(504)]
// Release unnamed[504] from Q0
// unnamed[508]: Load as Q0
vldrw.u32 Q0, [r11, #-488]
vstrw.u32 Q0, [r1], #+16
vdup.u32 Q0, r14
vstrw.u32 Q0, [r11,#(-488)]
// Release unnamed[508] from Q0
// Undo temporary shift of r0
sub r0, r0, #504
// Restore MVE vector registers
vpop {d0-d15}
// Restore GPRs
pop {r4-r11,lr}
bx lr

// Line count:        792
// Instruction count: 528