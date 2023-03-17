
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
.word   29095681
.word 3280343807
.word   14476917
.word 2356128651
.word   43317805
.word  933021651
.word   18598075
.word 2578416965
.word   39999747
.word 3454780669
.word   45317587
.word 3083517997
.word    4885007
.word 2973633521
.word   48811299
.word 4050555101
.word   54571669
.word 4085587819
.word   64683161
.word 3091135847
.word   59281651
.word 3509906701
.word   40500013
.word  634504915
.word   34427601
.word  864737071
.word   25917637
.word 1446525243
.word    8356523
.word 1036987221
.word   31719253
.word 3672199851
.word    5075563
.word  576633749
.word   43115375
.word 1324642961
.word   54842419
.word 1729702349
.word   35131011
.word   21827453
.word   44664611
.word 3505510109
.word    1316163
.word 3096742077
.word   65968403
.word 3768591597
.word   53949037
.word  338497427
.word   10391631
.word  136873393
.word   52363231
.word  365147681
.word   39928117
.word 3279343819
.word   54335767
.word 2562837737
.word   54457727
.word 2730229889
.word   27596809
.word 1204240887
.word   46002083
.word 3404885597
.word   14847715
.word 2248560413
.word    1129279
.word  497236673
.word   35733845
.word 2000162987
.word   54563587
.word 3545336573
.word   35404977
.word  756985167
.word   61099389
.word 1687065731
.word   52947923
.word 1268929069
.word   41822583
.word 2124709001
.word   26241327
.word 2184146129
.word   12770159
.word 1517517457
.word   24980679
.word 1250335033
.word    5033605
.word 3855639419
.word   61827033
.word 2677740071
.word   11221523
.word 1580041197
.word    8316793
.word  591909511
.word   19091691
.word 2453265685
.word   32210035
.word 2986672525
.word   16634213
.word 1874600091
.word   20871313
.word 3771937135
.word   46581651
.word  697890413
.word   63329695
.word 2675302497
.word   51221435
.word 3182148165
.word   18467171
.word 3558347933
.word    9983051
.word 2472974773
.word   37083207
.word 2189487545
.word   52674527
.word 1161754145
.word    7721125
.word 3946619227
.word    8896309
.word  238834379
.word    2061353
.word 1415980503
.word    9383201
.word  542121183
.word   23761465
.word  604481479
.word   24512363
.word 2198349461
.text
.align 4
roots_addr: .word roots
.syntax unified
.type ntt_n256_u32_33556993_28678040_incomplete, %function
.global ntt_n256_u32_33556993_28678040_incomplete
ntt_n256_u32_33556993_28678040_incomplete:
// Save GPRs
push {r4-r11,lr}
// Save MVE vector registers
vpush {d8-d15}
// Use r14 as marker for r0 + 1008
add r14, r0, #1008
.equ modulus, 33556993
movw r12, #:lower16:modulus
movt r12, #:upper16:modulus
ldr r11, roots_addr
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[192]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -60)]
vqrdmulh.s32 Q1, Q0, r10
// input[128]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -124)]
vmul.u32 Q0, Q0, r9
// input[64]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 64)]
vqrdmlah.s32 Q1, Q0, r12
vqrdmulh.s32 Q4, Q2, r10
vsub.s32 Q0, Q3, Q1
vmul.u32 Q2, Q2, r9
vadd.s32 Q3, Q3, Q1
vqrdmlah.s32 Q4, Q2, r12
// input[0]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 0)]
vqrdmulh.s32 Q5, Q0, r6
vsub.s32 Q2, Q1, Q4
vmul.u32 Q0, Q0, r5
vadd.s32 Q1, Q1, Q4
vqrdmlah.s32 Q5, Q0, r12
// input[196]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -56)]
vqrdmulh.s32 Q6, Q3, r8
vsub.s32 Q0, Q2, Q5
vmul.u32 Q3, Q3, r7
vadd.s32 Q2, Q2, Q5
vstrw.u32 Q0, [r14,#(-240)]
// Release input[192] from Q0
vqrdmlah.s32 Q6, Q3, r12
vstrw.u32 Q2, [r14,#(-496)]
// Release input[128] from Q2
vsub.s32 Q3, Q1, Q6
vstrw.u32 Q3, [r0,#(256)]
// Release input[64] from Q3
vadd.s32 Q1, Q1, Q6
// input[196]: Already loaded as Q4
vqrdmulh.s32 Q0, Q4, r10
// input[132]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -120)]
vmul.u32 Q4, Q4, r9
// input[68]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 68)]
vqrdmlah.s32 Q0, Q4, r12
vstrw.u32 Q1, [r0,#(0)]
// Release input[0] from Q1
vqrdmulh.s32 Q1, Q2, r10
vsub.s32 Q4, Q3, Q0
vmul.u32 Q2, Q2, r9
vadd.s32 Q3, Q3, Q0
vqrdmlah.s32 Q1, Q2, r12
// input[4]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 4)]
vqrdmulh.s32 Q5, Q4, r6
vsub.s32 Q2, Q0, Q1
vmul.u32 Q4, Q4, r5
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q4, r12
// input[200]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -52)]
vqrdmulh.s32 Q6, Q3, r8
vsub.s32 Q4, Q2, Q5
vmul.u32 Q3, Q3, r7
vadd.s32 Q2, Q2, Q5
vstrw.u32 Q4, [r14,#(-224)]
// Release input[196] from Q4
vqrdmlah.s32 Q6, Q3, r12
vstrw.u32 Q2, [r14,#(-480)]
// Release input[132] from Q2
vsub.s32 Q3, Q0, Q6
vstrw.u32 Q3, [r0,#(272)]
// Release input[68] from Q3
vadd.s32 Q0, Q0, Q6
// input[200]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r10
// input[136]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -116)]
vmul.u32 Q1, Q1, r9
// input[72]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 72)]
vqrdmlah.s32 Q2, Q1, r12
vstrw.u32 Q0, [r0,#(16)]
// Release input[4] from Q0
vqrdmulh.s32 Q0, Q3, r10
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r12
// input[8]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 8)]
vqrdmulh.s32 Q5, Q1, r6
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r5
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r12
// input[204]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -48)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(-208)]
// Release input[200] from Q1
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r14,#(-464)]
// Release input[136] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r0,#(288)]
// Release input[72] from Q4
vadd.s32 Q2, Q2, Q6
// input[204]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r10
// input[140]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -112)]
vmul.u32 Q0, Q0, r9
// input[76]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 76)]
vqrdmlah.s32 Q1, Q0, r12
vstrw.u32 Q2, [r0,#(32)]
// Release input[8] from Q2
vqrdmulh.s32 Q2, Q3, r10
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r12
// input[12]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 12)]
vqrdmulh.s32 Q5, Q0, r6
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r5
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r12
// input[208]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -44)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(-192)]
// Release input[204] from Q0
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r14,#(-448)]
// Release input[140] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r0,#(304)]
// Release input[76] from Q4
vadd.s32 Q1, Q1, Q6
// input[208]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r10
// input[144]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -108)]
vmul.u32 Q2, Q2, r9
// input[80]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 80)]
vqrdmlah.s32 Q0, Q2, r12
vstrw.u32 Q1, [r0,#(48)]
// Release input[12] from Q1
vqrdmulh.s32 Q1, Q3, r10
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r12
// input[16]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 16)]
vqrdmulh.s32 Q5, Q2, r6
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r5
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r12
// input[212]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -40)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(-176)]
// Release input[208] from Q2
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r14,#(-432)]
// Release input[144] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r0,#(320)]
// Release input[80] from Q4
vadd.s32 Q0, Q0, Q6
// input[212]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r10
// input[148]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -104)]
vmul.u32 Q1, Q1, r9
// input[84]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 84)]
vqrdmlah.s32 Q2, Q1, r12
vstrw.u32 Q0, [r0,#(64)]
// Release input[16] from Q0
vqrdmulh.s32 Q0, Q3, r10
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r12
// input[20]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 20)]
vqrdmulh.s32 Q5, Q1, r6
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r5
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r12
// input[216]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -36)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(-160)]
// Release input[212] from Q1
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r14,#(-416)]
// Release input[148] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r0,#(336)]
// Release input[84] from Q4
vadd.s32 Q2, Q2, Q6
// input[216]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r10
// input[152]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -100)]
vmul.u32 Q0, Q0, r9
// input[88]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 88)]
vqrdmlah.s32 Q1, Q0, r12
vstrw.u32 Q2, [r0,#(80)]
// Release input[20] from Q2
vqrdmulh.s32 Q2, Q3, r10
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r12
// input[24]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 24)]
vqrdmulh.s32 Q5, Q0, r6
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r5
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r12
// input[220]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -32)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(-144)]
// Release input[216] from Q0
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r14,#(-400)]
// Release input[152] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r0,#(352)]
// Release input[88] from Q4
vadd.s32 Q1, Q1, Q6
// input[220]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r10
// input[156]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -96)]
vmul.u32 Q2, Q2, r9
// input[92]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 92)]
vqrdmlah.s32 Q0, Q2, r12
vstrw.u32 Q1, [r0,#(96)]
// Release input[24] from Q1
vqrdmulh.s32 Q1, Q3, r10
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r12
// input[28]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 28)]
vqrdmulh.s32 Q5, Q2, r6
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r5
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r12
// input[224]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -28)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(-128)]
// Release input[220] from Q2
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r14,#(-384)]
// Release input[156] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r0,#(368)]
// Release input[92] from Q4
vadd.s32 Q0, Q0, Q6
// input[224]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r10
// input[160]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -92)]
vmul.u32 Q1, Q1, r9
// input[96]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 96)]
vqrdmlah.s32 Q2, Q1, r12
vstrw.u32 Q0, [r0,#(112)]
// Release input[28] from Q0
vqrdmulh.s32 Q0, Q3, r10
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r12
// input[32]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 32)]
vqrdmulh.s32 Q5, Q1, r6
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r5
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r12
// input[228]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -24)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(-112)]
// Release input[224] from Q1
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r14,#(-368)]
// Release input[160] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r0,#(384)]
// Release input[96] from Q4
vadd.s32 Q2, Q2, Q6
// input[228]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r10
// input[164]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -88)]
vmul.u32 Q0, Q0, r9
// input[100]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 100)]
vqrdmlah.s32 Q1, Q0, r12
vstrw.u32 Q2, [r0,#(128)]
// Release input[32] from Q2
vqrdmulh.s32 Q2, Q3, r10
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r12
// input[36]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 36)]
vqrdmulh.s32 Q5, Q0, r6
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r5
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r12
// input[232]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -20)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(-96)]
// Release input[228] from Q0
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r14,#(-352)]
// Release input[164] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r0,#(400)]
// Release input[100] from Q4
vadd.s32 Q1, Q1, Q6
// input[232]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r10
// input[168]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -84)]
vmul.u32 Q2, Q2, r9
// input[104]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 104)]
vqrdmlah.s32 Q0, Q2, r12
vstrw.u32 Q1, [r0,#(144)]
// Release input[36] from Q1
vqrdmulh.s32 Q1, Q3, r10
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r12
// input[40]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 40)]
vqrdmulh.s32 Q5, Q2, r6
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r5
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r12
// input[236]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -16)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(-80)]
// Release input[232] from Q2
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r14,#(-336)]
// Release input[168] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r0,#(416)]
// Release input[104] from Q4
vadd.s32 Q0, Q0, Q6
// input[236]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r10
// input[172]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -80)]
vmul.u32 Q1, Q1, r9
// input[108]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 108)]
vqrdmlah.s32 Q2, Q1, r12
vstrw.u32 Q0, [r0,#(160)]
// Release input[40] from Q0
vqrdmulh.s32 Q0, Q3, r10
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r12
// input[44]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 44)]
vqrdmulh.s32 Q5, Q1, r6
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r5
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r12
// input[240]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -12)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(-64)]
// Release input[236] from Q1
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r14,#(-320)]
// Release input[172] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r0,#(432)]
// Release input[108] from Q4
vadd.s32 Q2, Q2, Q6
// input[240]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r10
// input[176]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -76)]
vmul.u32 Q0, Q0, r9
// input[112]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 112)]
vqrdmlah.s32 Q1, Q0, r12
vstrw.u32 Q2, [r0,#(176)]
// Release input[44] from Q2
vqrdmulh.s32 Q2, Q3, r10
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r12
// input[48]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 48)]
vqrdmulh.s32 Q5, Q0, r6
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r5
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r12
// input[244]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -8)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(-48)]
// Release input[240] from Q0
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r14,#(-304)]
// Release input[176] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r0,#(448)]
// Release input[112] from Q4
vadd.s32 Q1, Q1, Q6
// input[244]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r10
// input[180]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -72)]
vmul.u32 Q2, Q2, r9
// input[116]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 116)]
vqrdmlah.s32 Q0, Q2, r12
vstrw.u32 Q1, [r0,#(192)]
// Release input[48] from Q1
vqrdmulh.s32 Q1, Q3, r10
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r12
// input[52]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 52)]
vqrdmulh.s32 Q5, Q2, r6
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r5
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r12
// input[248]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -4)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(-32)]
// Release input[244] from Q2
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r14,#(-288)]
// Release input[180] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r0,#(464)]
// Release input[116] from Q4
vadd.s32 Q0, Q0, Q6
// input[248]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r10
// input[184]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -68)]
vmul.u32 Q1, Q1, r9
// input[120]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 120)]
vqrdmlah.s32 Q2, Q1, r12
vstrw.u32 Q0, [r0,#(208)]
// Release input[52] from Q0
vqrdmulh.s32 Q0, Q3, r10
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r12
// input[56]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 56)]
vqrdmulh.s32 Q5, Q1, r6
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r5
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r12
// input[252]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 0)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(-16)]
// Release input[248] from Q1
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r14,#(-272)]
// Release input[184] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r0,#(480)]
// Release input[120] from Q4
vadd.s32 Q2, Q2, Q6
// input[252]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r10
// input[188]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -64)]
vmul.u32 Q0, Q0, r9
// input[124]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 124)]
vqrdmlah.s32 Q1, Q0, r12
vstrw.u32 Q2, [r0,#(224)]
// Release input[56] from Q2
vqrdmulh.s32 Q2, Q3, r10
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r12
// input[60]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 60)]
vqrdmulh.s32 Q5, Q0, r6
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r5
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r12
// input[48]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 48)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(0)]
// Release input[252] from Q0
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r14,#(-256)]
// Release input[188] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r0,#(496)]
// Release input[124] from Q4
vadd.s32 Q1, Q1, Q6
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[48]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r10
// input[32]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 32)]
vmul.u32 Q2, Q2, r9
// input[16]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 16)]
vqrdmlah.s32 Q0, Q2, r12
vstrw.u32 Q1, [r0,#(240)]
// Release input[60] from Q1
vqrdmulh.s32 Q1, Q3, r10
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r12
// input[0]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 0)]
vqrdmulh.s32 Q5, Q2, r6
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r5
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r12
// input[52]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 52)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r0,#(192)]
// Release input[48] from Q2
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r0,#(128)]
// Release input[32] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r0,#(64)]
// Release input[16] from Q4
vadd.s32 Q0, Q0, Q6
// input[52]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r10
// input[36]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 36)]
vmul.u32 Q1, Q1, r9
// input[20]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 20)]
vqrdmlah.s32 Q2, Q1, r12
vstrw.u32 Q0, [r0,#(0)]
// Release input[0] from Q0
vqrdmulh.s32 Q0, Q3, r10
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r12
// input[4]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 4)]
vqrdmulh.s32 Q5, Q1, r6
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r5
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r12
// input[56]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 56)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r0,#(208)]
// Release input[52] from Q1
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r0,#(144)]
// Release input[36] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r0,#(80)]
// Release input[20] from Q4
vadd.s32 Q2, Q2, Q6
// input[56]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r10
// input[40]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 40)]
vmul.u32 Q0, Q0, r9
// input[24]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 24)]
vqrdmlah.s32 Q1, Q0, r12
vstrw.u32 Q2, [r0,#(16)]
// Release input[4] from Q2
vqrdmulh.s32 Q2, Q3, r10
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r12
// input[8]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 8)]
vqrdmulh.s32 Q5, Q0, r6
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r5
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r12
// input[60]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 60)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r0,#(224)]
// Release input[56] from Q0
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r0,#(160)]
// Release input[40] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r0,#(96)]
// Release input[24] from Q4
vadd.s32 Q1, Q1, Q6
// input[60]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r10
// input[44]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 44)]
vmul.u32 Q2, Q2, r9
// input[28]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 28)]
vqrdmlah.s32 Q0, Q2, r12
vstrw.u32 Q1, [r0,#(32)]
// Release input[8] from Q1
vqrdmulh.s32 Q1, Q3, r10
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r12
// input[12]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 12)]
vqrdmulh.s32 Q5, Q2, r6
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r5
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r12
// input[112]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 112)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r0,#(240)]
// Release input[60] from Q2
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r0,#(176)]
// Release input[44] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r0,#(112)]
// Release input[28] from Q4
vadd.s32 Q0, Q0, Q6
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[112]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r10
// input[96]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 96)]
vmul.u32 Q1, Q1, r9
// input[80]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 80)]
vqrdmlah.s32 Q2, Q1, r12
vstrw.u32 Q0, [r0,#(48)]
// Release input[12] from Q0
vqrdmulh.s32 Q0, Q3, r10
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r12
// input[64]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 64)]
vqrdmulh.s32 Q5, Q1, r6
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r5
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r12
// input[116]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 116)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r0,#(448)]
// Release input[112] from Q1
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r0,#(384)]
// Release input[96] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r0,#(320)]
// Release input[80] from Q4
vadd.s32 Q2, Q2, Q6
// input[116]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r10
// input[100]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 100)]
vmul.u32 Q0, Q0, r9
// input[84]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 84)]
vqrdmlah.s32 Q1, Q0, r12
vstrw.u32 Q2, [r0,#(256)]
// Release input[64] from Q2
vqrdmulh.s32 Q2, Q3, r10
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r12
// input[68]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 68)]
vqrdmulh.s32 Q5, Q0, r6
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r5
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r12
// input[120]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 120)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r0,#(464)]
// Release input[116] from Q0
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r0,#(400)]
// Release input[100] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r0,#(336)]
// Release input[84] from Q4
vadd.s32 Q1, Q1, Q6
// input[120]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r10
// input[104]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 104)]
vmul.u32 Q2, Q2, r9
// input[88]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 88)]
vqrdmlah.s32 Q0, Q2, r12
vstrw.u32 Q1, [r0,#(272)]
// Release input[68] from Q1
vqrdmulh.s32 Q1, Q3, r10
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r12
// input[72]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 72)]
vqrdmulh.s32 Q5, Q2, r6
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r5
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r12
// input[124]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 124)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r0,#(480)]
// Release input[120] from Q2
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r0,#(416)]
// Release input[104] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r0,#(352)]
// Release input[88] from Q4
vadd.s32 Q0, Q0, Q6
// input[124]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r10
// input[108]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 108)]
vmul.u32 Q1, Q1, r9
// input[92]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 92)]
vqrdmlah.s32 Q2, Q1, r12
vstrw.u32 Q0, [r0,#(288)]
// Release input[72] from Q0
vqrdmulh.s32 Q0, Q3, r10
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r12
// input[76]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 76)]
vqrdmulh.s32 Q5, Q1, r6
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r5
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r12
// input[176]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -76)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r0,#(496)]
// Release input[124] from Q1
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r0,#(432)]
// Release input[108] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r0,#(368)]
// Release input[92] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[176]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r10
// input[160]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -92)]
vmul.u32 Q0, Q0, r9
// input[144]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -108)]
vqrdmlah.s32 Q1, Q0, r12
vstrw.u32 Q2, [r0,#(304)]
// Release input[76] from Q2
vqrdmulh.s32 Q2, Q3, r10
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r12
// input[128]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -124)]
vqrdmulh.s32 Q5, Q0, r6
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r5
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r12
// input[180]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -72)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(-304)]
// Release input[176] from Q0
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r14,#(-368)]
// Release input[160] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r14,#(-432)]
// Release input[144] from Q4
vadd.s32 Q1, Q1, Q6
// input[180]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r10
// input[164]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -88)]
vmul.u32 Q2, Q2, r9
// input[148]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -104)]
vqrdmlah.s32 Q0, Q2, r12
vstrw.u32 Q1, [r14,#(-496)]
// Release input[128] from Q1
vqrdmulh.s32 Q1, Q3, r10
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r12
// input[132]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -120)]
vqrdmulh.s32 Q5, Q2, r6
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r5
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r12
// input[184]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -68)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(-288)]
// Release input[180] from Q2
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r14,#(-352)]
// Release input[164] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(-416)]
// Release input[148] from Q4
vadd.s32 Q0, Q0, Q6
// input[184]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r10
// input[168]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -84)]
vmul.u32 Q1, Q1, r9
// input[152]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -100)]
vqrdmlah.s32 Q2, Q1, r12
vstrw.u32 Q0, [r14,#(-480)]
// Release input[132] from Q0
vqrdmulh.s32 Q0, Q3, r10
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r12
// input[136]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -116)]
vqrdmulh.s32 Q5, Q1, r6
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r5
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r12
// input[188]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -64)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(-272)]
// Release input[184] from Q1
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r14,#(-336)]
// Release input[168] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r14,#(-400)]
// Release input[152] from Q4
vadd.s32 Q2, Q2, Q6
// input[188]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r10
// input[172]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -80)]
vmul.u32 Q0, Q0, r9
// input[156]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -96)]
vqrdmlah.s32 Q1, Q0, r12
vstrw.u32 Q2, [r14,#(-464)]
// Release input[136] from Q2
vqrdmulh.s32 Q2, Q3, r10
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r12
// input[140]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -112)]
vqrdmulh.s32 Q5, Q0, r6
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r5
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r12
// input[240]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -12)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(-256)]
// Release input[188] from Q0
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r14,#(-320)]
// Release input[172] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r14,#(-384)]
// Release input[156] from Q4
vadd.s32 Q1, Q1, Q6
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[240]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r10
// input[224]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -28)]
vmul.u32 Q2, Q2, r9
// input[208]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -44)]
vqrdmlah.s32 Q0, Q2, r12
vstrw.u32 Q1, [r14,#(-448)]
// Release input[140] from Q1
vqrdmulh.s32 Q1, Q3, r10
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r12
// input[192]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -60)]
vqrdmulh.s32 Q5, Q2, r6
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r5
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r12
// input[244]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -8)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(-48)]
// Release input[240] from Q2
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r14,#(-112)]
// Release input[224] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(-176)]
// Release input[208] from Q4
vadd.s32 Q0, Q0, Q6
// input[244]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r10
// input[228]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -24)]
vmul.u32 Q1, Q1, r9
// input[212]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -40)]
vqrdmlah.s32 Q2, Q1, r12
vstrw.u32 Q0, [r14,#(-240)]
// Release input[192] from Q0
vqrdmulh.s32 Q0, Q3, r10
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r12
// input[196]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -56)]
vqrdmulh.s32 Q5, Q1, r6
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r5
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r12
// input[248]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -4)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(-32)]
// Release input[244] from Q1
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r14,#(-96)]
// Release input[228] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r14,#(-160)]
// Release input[212] from Q4
vadd.s32 Q2, Q2, Q6
// input[248]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r10
// input[232]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -20)]
vmul.u32 Q0, Q0, r9
// input[216]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -36)]
vqrdmlah.s32 Q1, Q0, r12
vstrw.u32 Q2, [r14,#(-224)]
// Release input[196] from Q2
vqrdmulh.s32 Q2, Q3, r10
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r12
// input[200]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -52)]
vqrdmulh.s32 Q5, Q0, r6
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r5
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r12
// input[252]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 0)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(-16)]
// Release input[248] from Q0
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r14,#(-80)]
// Release input[232] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r14,#(-144)]
// Release input[216] from Q4
vadd.s32 Q1, Q1, Q6
// input[252]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r10
// input[236]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -16)]
vmul.u32 Q2, Q2, r9
// input[220]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -32)]
vqrdmlah.s32 Q0, Q2, r12
vstrw.u32 Q1, [r14,#(-208)]
// Release input[200] from Q1
vqrdmulh.s32 Q1, Q3, r10
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r12
// input[204]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -48)]
vqrdmulh.s32 Q5, Q2, r6
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r5
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r12
// input[12]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 12)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(0)]
// Release input[252] from Q2
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r14,#(-64)]
// Release input[236] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(-128)]
// Release input[220] from Q4
vadd.s32 Q0, Q0, Q6
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[12]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r10
// input[8]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 8)]
vmul.u32 Q1, Q1, r9
// input[4]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 4)]
vqrdmlah.s32 Q2, Q1, r12
vstrw.u32 Q0, [r14,#(-192)]
// Release input[204] from Q0
vqrdmulh.s32 Q0, Q3, r10
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r12
// input[0]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 0)]
vqrdmulh.s32 Q5, Q1, r6
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r5
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r12
// input[28]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 28)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r0,#(48)]
// Release input[12] from Q1
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r0,#(32)]
// Release input[8] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r0,#(16)]
// Release input[4] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[28]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r10
// input[24]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 24)]
vmul.u32 Q0, Q0, r9
// input[20]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 20)]
vqrdmlah.s32 Q1, Q0, r12
vstrw.u32 Q2, [r0,#(0)]
// Release input[0] from Q2
vqrdmulh.s32 Q2, Q3, r10
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r12
// input[16]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 16)]
vqrdmulh.s32 Q5, Q0, r6
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r5
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r12
// input[44]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 44)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r0,#(112)]
// Release input[28] from Q0
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r0,#(96)]
// Release input[24] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r0,#(80)]
// Release input[20] from Q4
vadd.s32 Q1, Q1, Q6
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[44]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r10
// input[40]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 40)]
vmul.u32 Q2, Q2, r9
// input[36]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 36)]
vqrdmlah.s32 Q0, Q2, r12
vstrw.u32 Q1, [r0,#(64)]
// Release input[16] from Q1
vqrdmulh.s32 Q1, Q3, r10
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r12
// input[32]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 32)]
vqrdmulh.s32 Q5, Q2, r6
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r5
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r12
// input[60]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 60)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r0,#(176)]
// Release input[44] from Q2
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r0,#(160)]
// Release input[40] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r0,#(144)]
// Release input[36] from Q4
vadd.s32 Q0, Q0, Q6
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[60]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r10
// input[56]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 56)]
vmul.u32 Q1, Q1, r9
// input[52]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 52)]
vqrdmlah.s32 Q2, Q1, r12
vstrw.u32 Q0, [r0,#(128)]
// Release input[32] from Q0
vqrdmulh.s32 Q0, Q3, r10
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r12
// input[48]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 48)]
vqrdmulh.s32 Q5, Q1, r6
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r5
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r12
// input[76]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 76)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r0,#(240)]
// Release input[60] from Q1
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r0,#(224)]
// Release input[56] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r0,#(208)]
// Release input[52] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[76]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r10
// input[72]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 72)]
vmul.u32 Q0, Q0, r9
// input[68]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 68)]
vqrdmlah.s32 Q1, Q0, r12
vstrw.u32 Q2, [r0,#(192)]
// Release input[48] from Q2
vqrdmulh.s32 Q2, Q3, r10
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r12
// input[64]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 64)]
vqrdmulh.s32 Q5, Q0, r6
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r5
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r12
// input[92]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 92)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r0,#(304)]
// Release input[76] from Q0
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r0,#(288)]
// Release input[72] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r0,#(272)]
// Release input[68] from Q4
vadd.s32 Q1, Q1, Q6
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[92]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r10
// input[88]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 88)]
vmul.u32 Q2, Q2, r9
// input[84]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 84)]
vqrdmlah.s32 Q0, Q2, r12
vstrw.u32 Q1, [r0,#(256)]
// Release input[64] from Q1
vqrdmulh.s32 Q1, Q3, r10
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r12
// input[80]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 80)]
vqrdmulh.s32 Q5, Q2, r6
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r5
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r12
// input[108]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 108)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r0,#(368)]
// Release input[92] from Q2
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r0,#(352)]
// Release input[88] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r0,#(336)]
// Release input[84] from Q4
vadd.s32 Q0, Q0, Q6
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[108]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r10
// input[104]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 104)]
vmul.u32 Q1, Q1, r9
// input[100]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 100)]
vqrdmlah.s32 Q2, Q1, r12
vstrw.u32 Q0, [r0,#(320)]
// Release input[80] from Q0
vqrdmulh.s32 Q0, Q3, r10
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r12
// input[96]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 96)]
vqrdmulh.s32 Q5, Q1, r6
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r5
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r12
// input[124]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 124)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r0,#(432)]
// Release input[108] from Q1
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r0,#(416)]
// Release input[104] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r0,#(400)]
// Release input[100] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[124]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r10
// input[120]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 120)]
vmul.u32 Q0, Q0, r9
// input[116]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 116)]
vqrdmlah.s32 Q1, Q0, r12
vstrw.u32 Q2, [r0,#(384)]
// Release input[96] from Q2
vqrdmulh.s32 Q2, Q3, r10
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r12
// input[112]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 112)]
vqrdmulh.s32 Q5, Q0, r6
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r5
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r12
// input[140]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -112)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r0,#(496)]
// Release input[124] from Q0
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r0,#(480)]
// Release input[120] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r0,#(464)]
// Release input[116] from Q4
vadd.s32 Q1, Q1, Q6
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[140]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r10
// input[136]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -116)]
vmul.u32 Q2, Q2, r9
// input[132]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -120)]
vqrdmlah.s32 Q0, Q2, r12
vstrw.u32 Q1, [r0,#(448)]
// Release input[112] from Q1
vqrdmulh.s32 Q1, Q3, r10
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r12
// input[128]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -124)]
vqrdmulh.s32 Q5, Q2, r6
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r5
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r12
// input[156]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -96)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(-448)]
// Release input[140] from Q2
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r14,#(-464)]
// Release input[136] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(-480)]
// Release input[132] from Q4
vadd.s32 Q0, Q0, Q6
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[156]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r10
// input[152]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -100)]
vmul.u32 Q1, Q1, r9
// input[148]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -104)]
vqrdmlah.s32 Q2, Q1, r12
vstrw.u32 Q0, [r14,#(-496)]
// Release input[128] from Q0
vqrdmulh.s32 Q0, Q3, r10
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r12
// input[144]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -108)]
vqrdmulh.s32 Q5, Q1, r6
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r5
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r12
// input[172]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -80)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(-384)]
// Release input[156] from Q1
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r14,#(-400)]
// Release input[152] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r14,#(-416)]
// Release input[148] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[172]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r10
// input[168]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -84)]
vmul.u32 Q0, Q0, r9
// input[164]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -88)]
vqrdmlah.s32 Q1, Q0, r12
vstrw.u32 Q2, [r14,#(-432)]
// Release input[144] from Q2
vqrdmulh.s32 Q2, Q3, r10
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r12
// input[160]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -92)]
vqrdmulh.s32 Q5, Q0, r6
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r5
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r12
// input[188]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -64)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(-320)]
// Release input[172] from Q0
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r14,#(-336)]
// Release input[168] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r14,#(-352)]
// Release input[164] from Q4
vadd.s32 Q1, Q1, Q6
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[188]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r10
// input[184]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -68)]
vmul.u32 Q2, Q2, r9
// input[180]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -72)]
vqrdmlah.s32 Q0, Q2, r12
vstrw.u32 Q1, [r14,#(-368)]
// Release input[160] from Q1
vqrdmulh.s32 Q1, Q3, r10
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r12
// input[176]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -76)]
vqrdmulh.s32 Q5, Q2, r6
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r5
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r12
// input[204]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -48)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(-256)]
// Release input[188] from Q2
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r14,#(-272)]
// Release input[184] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(-288)]
// Release input[180] from Q4
vadd.s32 Q0, Q0, Q6
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[204]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r10
// input[200]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -52)]
vmul.u32 Q1, Q1, r9
// input[196]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -56)]
vqrdmlah.s32 Q2, Q1, r12
vstrw.u32 Q0, [r14,#(-304)]
// Release input[176] from Q0
vqrdmulh.s32 Q0, Q3, r10
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r12
// input[192]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -60)]
vqrdmulh.s32 Q5, Q1, r6
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r5
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r12
// input[220]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -32)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(-192)]
// Release input[204] from Q1
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r14,#(-208)]
// Release input[200] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r14,#(-224)]
// Release input[196] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[220]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r10
// input[216]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -36)]
vmul.u32 Q0, Q0, r9
// input[212]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -40)]
vqrdmlah.s32 Q1, Q0, r12
vstrw.u32 Q2, [r14,#(-240)]
// Release input[192] from Q2
vqrdmulh.s32 Q2, Q3, r10
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r12
// input[208]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -44)]
vqrdmulh.s32 Q5, Q0, r6
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r5
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r12
// input[236]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -16)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(-128)]
// Release input[220] from Q0
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r14,#(-144)]
// Release input[216] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r14,#(-160)]
// Release input[212] from Q4
vadd.s32 Q1, Q1, Q6
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[236]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r10
// input[232]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -20)]
vmul.u32 Q2, Q2, r9
// input[228]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -24)]
vqrdmlah.s32 Q0, Q2, r12
vstrw.u32 Q1, [r14,#(-176)]
// Release input[208] from Q1
vqrdmulh.s32 Q1, Q3, r10
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r12
// input[224]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -28)]
vqrdmulh.s32 Q5, Q2, r6
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r5
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r12
// input[252]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 0)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(-64)]
// Release input[236] from Q2
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r14,#(-80)]
// Release input[232] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(-96)]
// Release input[228] from Q4
vadd.s32 Q0, Q0, Q6
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[252]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r10
// input[248]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -4)]
vmul.u32 Q1, Q1, r9
// input[244]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -8)]
vqrdmlah.s32 Q2, Q1, r12
vstrw.u32 Q0, [r14,#(-112)]
// Release input[224] from Q0
vqrdmulh.s32 Q0, Q3, r10
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r12
// input[240]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -12)]
vqrdmulh.s32 Q5, Q1, r6
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r5
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r12
vqrdmulh.s32 Q0, Q4, r8
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(0)]
// Release input[252] from Q1
vqrdmlah.s32 Q0, Q4, r12
vstrw.u32 Q3, [r14,#(-16)]
// Release input[248] from Q3
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r14,#(-32)]
// Release input[244] from Q4
vadd.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-48)]
// Release input[240] from Q2
.equ modulus_inv, 3919317503
movw r10, #:lower16:modulus_inv
movt r10, #:upper16:modulus_inv
// Restore MVE vector registers
vpop {d8-d15}
// Restore GPRs
pop {r4-r11,lr}
bx lr

// Line count:        1993
// Instruction count: 1557