
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
roots_inv:
.word   57730785
.word 3752846111
.word   42601623
.word 2096617833
.word   43352521
.word 3690485815
.word   59392861
.word  348348067
.word   65052633
.word 2878986791
.word   58217677
.word 4056132915
.word   57130935
.word 1821992521
.word   14439459
.word 3133213149
.word   30030779
.word 2105479749
.word    3784291
.word 1619664797
.word   48646815
.word  736619361
.word   15892551
.word 1112819129
.word   50479773
.word 2420367203
.word   20532335
.word 3597076881
.word   46242673
.word  523030159
.word   58797193
.word 3703057783
.word   34903951
.word 1308294769
.word   48022295
.word 1841701609
.word   62080381
.word  439327875
.word   55892463
.word 2714926097
.word    5286953
.word 1617227223
.word   40872659
.word 2110821165
.word   42133307
.word 3044632261
.word   54343827
.word 2777449837
.word    6014597
.word 2607901563
.word   25291403
.word 2170258293
.word   14166063
.word 3026038225
.word   31380141
.word 2294804307
.word   31709009
.word 3537982127
.word   12550399
.word  749630721
.word   21111903
.word  890081697
.word   65984707
.word 3797730621
.word   52266271
.word 2046406881
.word   12778219
.word 1732129557
.word   39517177
.word 3090726407
.word   12656259
.word 1564737405
.word   56722355
.word 4158093901
.word   27185869
.word 1015623475
.word   14750755
.word 3929819613
.word   65797823
.word 1198225217
.word   13164949
.word 3956469867
.word    1145583
.word  526375697
.word   12271567
.word 2565264945
.word   22449375
.word  789457185
.word   31982975
.word 4273139841
.word   35394733
.word  622767443
.word   23998611
.word 2970324333
.word   62038423
.word 3718333545
.word   32686385
.word 3430230223
.word   58757463
.word 3257980073
.word   41196349
.word 2848442051
.word    2430825
.word 1203831447
.word   26613973
.word 3660462379
.word    7832335
.word  785060593
.word   62228979
.word 1321333773
.word   12542317
.word  209379475
.word   18302687
.word  244412193
.word   48515911
.word 1716550329
.word   21796399
.word 1211449297
.word   27114239
.word  840186625
.word   33696409
.word 1239666535
.word   23796181
.word 3361945643
.word   52637069
.word 1938838643
.text
.align 4
roots_addr: .word roots_inv
.syntax unified
.type inv_ntt_n256_u32_33556993_28678040_incomplete, %function
.global inv_ntt_n256_u32_33556993_28678040_incomplete
inv_ntt_n256_u32_33556993_28678040_incomplete:
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
// input[0]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 0)]
// input[4]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 4)]
vsub.s32 Q0, Q2, Q3
// input[8]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 8)]
vadd.s32 Q2, Q2, Q3
// input[12]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 12)]
vqrdmulh.s32 Q3, Q0, r8
vsub.s32 Q1, Q4, Q5
vmul.u32 Q0, Q0, r7
vadd.s32 Q4, Q4, Q5
vqrdmlah.s32 Q3, Q0, r12
vqrdmulh.s32 Q5, Q1, r6
vsub.s32 Q0, Q2, Q4
vmul.u32 Q1, Q1, r5
vadd.s32 Q2, Q2, Q4
vqrdmlah.s32 Q5, Q1, r12
// input[16]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 16)]
vqrdmulh.s32 Q4, Q0, r10
vsub.s32 Q1, Q3, Q5
vmul.u32 Q0, Q0, r9
// input[20]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 20)]
vadd.s32 Q3, Q3, Q5
vqrdmlah.s32 Q4, Q0, r12
vstrw.u32 Q4, [r0,#(32)]
// Release input[8] from Q4
vqrdmulh.s32 Q5, Q1, r10
vstrw.u32 Q2, [r0,#(0)]
// Release input[0] from Q2
vmul.u32 Q1, Q1, r9
vstrw.u32 Q3, [r0,#(16)]
// Release input[4] from Q3
vqrdmlah.s32 Q5, Q1, r12
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[16]: Already loaded as Q6
// input[20]: Already loaded as Q7
vsub.s32 Q0, Q6, Q7
// input[24]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 24)]
vadd.s32 Q6, Q6, Q7
// input[28]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 28)]
vqrdmulh.s32 Q7, Q0, r8
vsub.s32 Q1, Q2, Q3
vmul.u32 Q0, Q0, r7
vadd.s32 Q2, Q2, Q3
vqrdmlah.s32 Q7, Q0, r12
vstrw.u32 Q5, [r0,#(48)]
// Release input[12] from Q5
vqrdmulh.s32 Q3, Q1, r6
vsub.s32 Q0, Q6, Q2
vmul.u32 Q1, Q1, r5
vadd.s32 Q6, Q6, Q2
vqrdmlah.s32 Q3, Q1, r12
// input[32]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 32)]
vqrdmulh.s32 Q2, Q0, r10
vsub.s32 Q1, Q7, Q3
vmul.u32 Q0, Q0, r9
// input[36]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 36)]
vadd.s32 Q7, Q7, Q3
vqrdmlah.s32 Q2, Q0, r12
vstrw.u32 Q2, [r0,#(96)]
// Release input[24] from Q2
vqrdmulh.s32 Q3, Q1, r10
vstrw.u32 Q6, [r0,#(64)]
// Release input[16] from Q6
vmul.u32 Q1, Q1, r9
vstrw.u32 Q7, [r0,#(80)]
// Release input[20] from Q7
vqrdmlah.s32 Q3, Q1, r12
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[32]: Already loaded as Q4
// input[36]: Already loaded as Q5
vsub.s32 Q0, Q4, Q5
// input[40]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 40)]
vadd.s32 Q4, Q4, Q5
// input[44]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 44)]
vqrdmulh.s32 Q5, Q0, r8
vsub.s32 Q1, Q2, Q6
vmul.u32 Q0, Q0, r7
vadd.s32 Q2, Q2, Q6
vqrdmlah.s32 Q5, Q0, r12
vstrw.u32 Q3, [r0,#(112)]
// Release input[28] from Q3
vqrdmulh.s32 Q6, Q1, r6
vsub.s32 Q0, Q4, Q2
vmul.u32 Q1, Q1, r5
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q6, Q1, r12
// input[48]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 48)]
vqrdmulh.s32 Q2, Q0, r10
vsub.s32 Q1, Q5, Q6
vmul.u32 Q0, Q0, r9
// input[52]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 52)]
vadd.s32 Q5, Q5, Q6
vqrdmlah.s32 Q2, Q0, r12
vstrw.u32 Q2, [r0,#(160)]
// Release input[40] from Q2
vqrdmulh.s32 Q6, Q1, r10
vstrw.u32 Q4, [r0,#(128)]
// Release input[32] from Q4
vmul.u32 Q1, Q1, r9
vstrw.u32 Q5, [r0,#(144)]
// Release input[36] from Q5
vqrdmlah.s32 Q6, Q1, r12
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[48]: Already loaded as Q3
// input[52]: Already loaded as Q7
vsub.s32 Q0, Q3, Q7
// input[56]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 56)]
vadd.s32 Q3, Q3, Q7
// input[60]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 60)]
vqrdmulh.s32 Q7, Q0, r8
vsub.s32 Q1, Q2, Q4
vmul.u32 Q0, Q0, r7
vadd.s32 Q2, Q2, Q4
vqrdmlah.s32 Q7, Q0, r12
vstrw.u32 Q6, [r0,#(176)]
// Release input[44] from Q6
vqrdmulh.s32 Q4, Q1, r6
vsub.s32 Q0, Q3, Q2
vmul.u32 Q1, Q1, r5
vadd.s32 Q3, Q3, Q2
vqrdmlah.s32 Q4, Q1, r12
// input[64]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 64)]
vqrdmulh.s32 Q2, Q0, r10
vsub.s32 Q1, Q7, Q4
vmul.u32 Q0, Q0, r9
// input[68]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 68)]
vadd.s32 Q7, Q7, Q4
vqrdmlah.s32 Q2, Q0, r12
vstrw.u32 Q2, [r0,#(224)]
// Release input[56] from Q2
vqrdmulh.s32 Q4, Q1, r10
vstrw.u32 Q3, [r0,#(192)]
// Release input[48] from Q3
vmul.u32 Q1, Q1, r9
vstrw.u32 Q7, [r0,#(208)]
// Release input[52] from Q7
vqrdmlah.s32 Q4, Q1, r12
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[64]: Already loaded as Q5
// input[68]: Already loaded as Q6
vsub.s32 Q0, Q5, Q6
// input[72]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 72)]
vadd.s32 Q5, Q5, Q6
// input[76]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 76)]
vqrdmulh.s32 Q6, Q0, r8
vsub.s32 Q1, Q2, Q3
vmul.u32 Q0, Q0, r7
vadd.s32 Q2, Q2, Q3
vqrdmlah.s32 Q6, Q0, r12
vstrw.u32 Q4, [r0,#(240)]
// Release input[60] from Q4
vqrdmulh.s32 Q3, Q1, r6
vsub.s32 Q0, Q5, Q2
vmul.u32 Q1, Q1, r5
vadd.s32 Q5, Q5, Q2
vqrdmlah.s32 Q3, Q1, r12
// input[80]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 80)]
vqrdmulh.s32 Q2, Q0, r10
vsub.s32 Q1, Q6, Q3
vmul.u32 Q0, Q0, r9
// input[84]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 84)]
vadd.s32 Q6, Q6, Q3
vqrdmlah.s32 Q2, Q0, r12
vstrw.u32 Q2, [r0,#(288)]
// Release input[72] from Q2
vqrdmulh.s32 Q3, Q1, r10
vstrw.u32 Q5, [r0,#(256)]
// Release input[64] from Q5
vmul.u32 Q1, Q1, r9
vstrw.u32 Q6, [r0,#(272)]
// Release input[68] from Q6
vqrdmlah.s32 Q3, Q1, r12
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[80]: Already loaded as Q4
// input[84]: Already loaded as Q7
vsub.s32 Q0, Q4, Q7
// input[88]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 88)]
vadd.s32 Q4, Q4, Q7
// input[92]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 92)]
vqrdmulh.s32 Q7, Q0, r8
vsub.s32 Q1, Q2, Q5
vmul.u32 Q0, Q0, r7
vadd.s32 Q2, Q2, Q5
vqrdmlah.s32 Q7, Q0, r12
vstrw.u32 Q3, [r0,#(304)]
// Release input[76] from Q3
vqrdmulh.s32 Q5, Q1, r6
vsub.s32 Q0, Q4, Q2
vmul.u32 Q1, Q1, r5
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q5, Q1, r12
// input[96]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 96)]
vqrdmulh.s32 Q2, Q0, r10
vsub.s32 Q1, Q7, Q5
vmul.u32 Q0, Q0, r9
// input[100]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 100)]
vadd.s32 Q7, Q7, Q5
vqrdmlah.s32 Q2, Q0, r12
vstrw.u32 Q2, [r0,#(352)]
// Release input[88] from Q2
vqrdmulh.s32 Q5, Q1, r10
vstrw.u32 Q4, [r0,#(320)]
// Release input[80] from Q4
vmul.u32 Q1, Q1, r9
vstrw.u32 Q7, [r0,#(336)]
// Release input[84] from Q7
vqrdmlah.s32 Q5, Q1, r12
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[96]: Already loaded as Q3
// input[100]: Already loaded as Q6
vsub.s32 Q0, Q3, Q6
// input[104]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 104)]
vadd.s32 Q3, Q3, Q6
// input[108]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 108)]
vqrdmulh.s32 Q6, Q0, r8
vsub.s32 Q1, Q2, Q4
vmul.u32 Q0, Q0, r7
vadd.s32 Q2, Q2, Q4
vqrdmlah.s32 Q6, Q0, r12
vstrw.u32 Q5, [r0,#(368)]
// Release input[92] from Q5
vqrdmulh.s32 Q4, Q1, r6
vsub.s32 Q0, Q3, Q2
vmul.u32 Q1, Q1, r5
vadd.s32 Q3, Q3, Q2
vqrdmlah.s32 Q4, Q1, r12
// input[112]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 112)]
vqrdmulh.s32 Q2, Q0, r10
vsub.s32 Q1, Q6, Q4
vmul.u32 Q0, Q0, r9
// input[116]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 116)]
vadd.s32 Q6, Q6, Q4
vqrdmlah.s32 Q2, Q0, r12
vstrw.u32 Q2, [r0,#(416)]
// Release input[104] from Q2
vqrdmulh.s32 Q4, Q1, r10
vstrw.u32 Q3, [r0,#(384)]
// Release input[96] from Q3
vmul.u32 Q1, Q1, r9
vstrw.u32 Q6, [r0,#(400)]
// Release input[100] from Q6
vqrdmlah.s32 Q4, Q1, r12
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[112]: Already loaded as Q5
// input[116]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
// input[120]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 120)]
vadd.s32 Q5, Q5, Q7
// input[124]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 124)]
vqrdmulh.s32 Q7, Q0, r8
vsub.s32 Q1, Q2, Q3
vmul.u32 Q0, Q0, r7
vadd.s32 Q2, Q2, Q3
vqrdmlah.s32 Q7, Q0, r12
vstrw.u32 Q4, [r0,#(432)]
// Release input[108] from Q4
vqrdmulh.s32 Q3, Q1, r6
vsub.s32 Q0, Q5, Q2
vmul.u32 Q1, Q1, r5
vadd.s32 Q5, Q5, Q2
vqrdmlah.s32 Q3, Q1, r12
// input[128]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -124)]
vqrdmulh.s32 Q2, Q0, r10
vsub.s32 Q1, Q7, Q3
vmul.u32 Q0, Q0, r9
// input[132]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * -120)]
vadd.s32 Q7, Q7, Q3
vqrdmlah.s32 Q2, Q0, r12
vstrw.u32 Q2, [r0,#(480)]
// Release input[120] from Q2
vqrdmulh.s32 Q3, Q1, r10
vstrw.u32 Q5, [r0,#(448)]
// Release input[112] from Q5
vmul.u32 Q1, Q1, r9
vstrw.u32 Q7, [r0,#(464)]
// Release input[116] from Q7
vqrdmlah.s32 Q3, Q1, r12
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[128]: Already loaded as Q4
// input[132]: Already loaded as Q6
vsub.s32 Q0, Q4, Q6
// input[136]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -116)]
vadd.s32 Q4, Q4, Q6
// input[140]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -112)]
vqrdmulh.s32 Q6, Q0, r8
vsub.s32 Q1, Q2, Q5
vmul.u32 Q0, Q0, r7
vadd.s32 Q2, Q2, Q5
vqrdmlah.s32 Q6, Q0, r12
vstrw.u32 Q3, [r0,#(496)]
// Release input[124] from Q3
vqrdmulh.s32 Q5, Q1, r6
vsub.s32 Q0, Q4, Q2
vmul.u32 Q1, Q1, r5
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q5, Q1, r12
// input[144]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -108)]
vqrdmulh.s32 Q2, Q0, r10
vsub.s32 Q1, Q6, Q5
vmul.u32 Q0, Q0, r9
// input[148]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -104)]
vadd.s32 Q6, Q6, Q5
vqrdmlah.s32 Q2, Q0, r12
vstrw.u32 Q2, [r14,#(-464)]
// Release input[136] from Q2
vqrdmulh.s32 Q5, Q1, r10
vstrw.u32 Q4, [r14,#(-496)]
// Release input[128] from Q4
vmul.u32 Q1, Q1, r9
vstrw.u32 Q6, [r14,#(-480)]
// Release input[132] from Q6
vqrdmlah.s32 Q5, Q1, r12
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[144]: Already loaded as Q3
// input[148]: Already loaded as Q7
vsub.s32 Q0, Q3, Q7
// input[152]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -100)]
vadd.s32 Q3, Q3, Q7
// input[156]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -96)]
vqrdmulh.s32 Q7, Q0, r8
vsub.s32 Q1, Q2, Q4
vmul.u32 Q0, Q0, r7
vadd.s32 Q2, Q2, Q4
vqrdmlah.s32 Q7, Q0, r12
vstrw.u32 Q5, [r14,#(-448)]
// Release input[140] from Q5
vqrdmulh.s32 Q4, Q1, r6
vsub.s32 Q0, Q3, Q2
vmul.u32 Q1, Q1, r5
vadd.s32 Q3, Q3, Q2
vqrdmlah.s32 Q4, Q1, r12
// input[160]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -92)]
vqrdmulh.s32 Q2, Q0, r10
vsub.s32 Q1, Q7, Q4
vmul.u32 Q0, Q0, r9
// input[164]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * -88)]
vadd.s32 Q7, Q7, Q4
vqrdmlah.s32 Q2, Q0, r12
vstrw.u32 Q2, [r14,#(-400)]
// Release input[152] from Q2
vqrdmulh.s32 Q4, Q1, r10
vstrw.u32 Q3, [r14,#(-432)]
// Release input[144] from Q3
vmul.u32 Q1, Q1, r9
vstrw.u32 Q7, [r14,#(-416)]
// Release input[148] from Q7
vqrdmlah.s32 Q4, Q1, r12
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[160]: Already loaded as Q5
// input[164]: Already loaded as Q6
vsub.s32 Q0, Q5, Q6
// input[168]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -84)]
vadd.s32 Q5, Q5, Q6
// input[172]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -80)]
vqrdmulh.s32 Q6, Q0, r8
vsub.s32 Q1, Q2, Q3
vmul.u32 Q0, Q0, r7
vadd.s32 Q2, Q2, Q3
vqrdmlah.s32 Q6, Q0, r12
vstrw.u32 Q4, [r14,#(-384)]
// Release input[156] from Q4
vqrdmulh.s32 Q3, Q1, r6
vsub.s32 Q0, Q5, Q2
vmul.u32 Q1, Q1, r5
vadd.s32 Q5, Q5, Q2
vqrdmlah.s32 Q3, Q1, r12
// input[176]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -76)]
vqrdmulh.s32 Q2, Q0, r10
vsub.s32 Q1, Q6, Q3
vmul.u32 Q0, Q0, r9
// input[180]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -72)]
vadd.s32 Q6, Q6, Q3
vqrdmlah.s32 Q2, Q0, r12
vstrw.u32 Q2, [r14,#(-336)]
// Release input[168] from Q2
vqrdmulh.s32 Q3, Q1, r10
vstrw.u32 Q5, [r14,#(-368)]
// Release input[160] from Q5
vmul.u32 Q1, Q1, r9
vstrw.u32 Q6, [r14,#(-352)]
// Release input[164] from Q6
vqrdmlah.s32 Q3, Q1, r12
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[176]: Already loaded as Q4
// input[180]: Already loaded as Q7
vsub.s32 Q0, Q4, Q7
// input[184]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -68)]
vadd.s32 Q4, Q4, Q7
// input[188]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -64)]
vqrdmulh.s32 Q7, Q0, r8
vsub.s32 Q1, Q2, Q5
vmul.u32 Q0, Q0, r7
vadd.s32 Q2, Q2, Q5
vqrdmlah.s32 Q7, Q0, r12
vstrw.u32 Q3, [r14,#(-320)]
// Release input[172] from Q3
vqrdmulh.s32 Q5, Q1, r6
vsub.s32 Q0, Q4, Q2
vmul.u32 Q1, Q1, r5
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q5, Q1, r12
// input[192]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -60)]
vqrdmulh.s32 Q2, Q0, r10
vsub.s32 Q1, Q7, Q5
vmul.u32 Q0, Q0, r9
// input[196]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * -56)]
vadd.s32 Q7, Q7, Q5
vqrdmlah.s32 Q2, Q0, r12
vstrw.u32 Q2, [r14,#(-272)]
// Release input[184] from Q2
vqrdmulh.s32 Q5, Q1, r10
vstrw.u32 Q4, [r14,#(-304)]
// Release input[176] from Q4
vmul.u32 Q1, Q1, r9
vstrw.u32 Q7, [r14,#(-288)]
// Release input[180] from Q7
vqrdmlah.s32 Q5, Q1, r12
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[192]: Already loaded as Q3
// input[196]: Already loaded as Q6
vsub.s32 Q0, Q3, Q6
// input[200]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -52)]
vadd.s32 Q3, Q3, Q6
// input[204]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -48)]
vqrdmulh.s32 Q6, Q0, r8
vsub.s32 Q1, Q2, Q4
vmul.u32 Q0, Q0, r7
vadd.s32 Q2, Q2, Q4
vqrdmlah.s32 Q6, Q0, r12
vstrw.u32 Q5, [r14,#(-256)]
// Release input[188] from Q5
vqrdmulh.s32 Q4, Q1, r6
vsub.s32 Q0, Q3, Q2
vmul.u32 Q1, Q1, r5
vadd.s32 Q3, Q3, Q2
vqrdmlah.s32 Q4, Q1, r12
// input[208]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -44)]
vqrdmulh.s32 Q2, Q0, r10
vsub.s32 Q1, Q6, Q4
vmul.u32 Q0, Q0, r9
// input[212]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -40)]
vadd.s32 Q6, Q6, Q4
vqrdmlah.s32 Q2, Q0, r12
vstrw.u32 Q2, [r14,#(-208)]
// Release input[200] from Q2
vqrdmulh.s32 Q4, Q1, r10
vstrw.u32 Q3, [r14,#(-240)]
// Release input[192] from Q3
vmul.u32 Q1, Q1, r9
vstrw.u32 Q6, [r14,#(-224)]
// Release input[196] from Q6
vqrdmlah.s32 Q4, Q1, r12
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[208]: Already loaded as Q5
// input[212]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
// input[216]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -36)]
vadd.s32 Q5, Q5, Q7
// input[220]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -32)]
vqrdmulh.s32 Q7, Q0, r8
vsub.s32 Q1, Q2, Q3
vmul.u32 Q0, Q0, r7
vadd.s32 Q2, Q2, Q3
vqrdmlah.s32 Q7, Q0, r12
vstrw.u32 Q4, [r14,#(-192)]
// Release input[204] from Q4
vqrdmulh.s32 Q3, Q1, r6
vsub.s32 Q0, Q5, Q2
vmul.u32 Q1, Q1, r5
vadd.s32 Q5, Q5, Q2
vqrdmlah.s32 Q3, Q1, r12
// input[224]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -28)]
vqrdmulh.s32 Q2, Q0, r10
vsub.s32 Q1, Q7, Q3
vmul.u32 Q0, Q0, r9
// input[228]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * -24)]
vadd.s32 Q7, Q7, Q3
vqrdmlah.s32 Q2, Q0, r12
vstrw.u32 Q2, [r14,#(-144)]
// Release input[216] from Q2
vqrdmulh.s32 Q3, Q1, r10
vstrw.u32 Q5, [r14,#(-176)]
// Release input[208] from Q5
vmul.u32 Q1, Q1, r9
vstrw.u32 Q7, [r14,#(-160)]
// Release input[212] from Q7
vqrdmlah.s32 Q3, Q1, r12
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[224]: Already loaded as Q4
// input[228]: Already loaded as Q6
vsub.s32 Q0, Q4, Q6
// input[232]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -20)]
vadd.s32 Q4, Q4, Q6
// input[236]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -16)]
vqrdmulh.s32 Q6, Q0, r8
vsub.s32 Q1, Q2, Q5
vmul.u32 Q0, Q0, r7
vadd.s32 Q2, Q2, Q5
vqrdmlah.s32 Q6, Q0, r12
vstrw.u32 Q3, [r14,#(-128)]
// Release input[220] from Q3
vqrdmulh.s32 Q5, Q1, r6
vsub.s32 Q0, Q4, Q2
vmul.u32 Q1, Q1, r5
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q5, Q1, r12
// input[240]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -12)]
vqrdmulh.s32 Q2, Q0, r10
vsub.s32 Q1, Q6, Q5
vmul.u32 Q0, Q0, r9
// input[244]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -8)]
vadd.s32 Q6, Q6, Q5
vqrdmlah.s32 Q2, Q0, r12
vstrw.u32 Q2, [r14,#(-80)]
// Release input[232] from Q2
vqrdmulh.s32 Q5, Q1, r10
vstrw.u32 Q4, [r14,#(-112)]
// Release input[224] from Q4
vmul.u32 Q1, Q1, r9
vstrw.u32 Q6, [r14,#(-96)]
// Release input[228] from Q6
vqrdmlah.s32 Q5, Q1, r12
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[240]: Already loaded as Q3
// input[244]: Already loaded as Q7
vsub.s32 Q0, Q3, Q7
// input[248]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -4)]
vadd.s32 Q3, Q3, Q7
// input[252]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 0)]
vqrdmulh.s32 Q7, Q0, r8
vsub.s32 Q1, Q2, Q4
vmul.u32 Q0, Q0, r7
vadd.s32 Q2, Q2, Q4
vqrdmlah.s32 Q7, Q0, r12
vstrw.u32 Q5, [r14,#(-64)]
// Release input[236] from Q5
vqrdmulh.s32 Q4, Q1, r6
vsub.s32 Q0, Q3, Q2
vmul.u32 Q1, Q1, r5
vadd.s32 Q3, Q3, Q2
vqrdmlah.s32 Q4, Q1, r12
// input[0]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 0)]
vqrdmulh.s32 Q2, Q0, r10
vsub.s32 Q1, Q7, Q4
vmul.u32 Q0, Q0, r9
// input[16]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 16)]
vadd.s32 Q7, Q7, Q4
vqrdmlah.s32 Q2, Q0, r12
vstrw.u32 Q2, [r14,#(-16)]
// Release input[248] from Q2
vqrdmulh.s32 Q4, Q1, r10
vstrw.u32 Q3, [r14,#(-48)]
// Release input[240] from Q3
vmul.u32 Q1, Q1, r9
vstrw.u32 Q7, [r14,#(-32)]
// Release input[244] from Q7
vqrdmlah.s32 Q4, Q1, r12
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[0]: Already loaded as Q5
// input[16]: Already loaded as Q6
vsub.s32 Q0, Q5, Q6
// input[32]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 32)]
vadd.s32 Q5, Q5, Q6
// input[48]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 48)]
vqrdmulh.s32 Q6, Q0, r8
vsub.s32 Q1, Q2, Q3
vmul.u32 Q0, Q0, r7
vadd.s32 Q2, Q2, Q3
vqrdmlah.s32 Q6, Q0, r12
vstrw.u32 Q4, [r14,#(0)]
// Release input[252] from Q4
vqrdmulh.s32 Q3, Q1, r6
vsub.s32 Q0, Q5, Q2
vmul.u32 Q1, Q1, r5
vadd.s32 Q5, Q5, Q2
vqrdmlah.s32 Q3, Q1, r12
// input[4]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 4)]
vqrdmulh.s32 Q2, Q0, r10
vsub.s32 Q1, Q6, Q3
vmul.u32 Q0, Q0, r9
// input[20]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 20)]
vadd.s32 Q6, Q6, Q3
vqrdmlah.s32 Q2, Q0, r12
vstrw.u32 Q2, [r0,#(128)]
// Release input[32] from Q2
vqrdmulh.s32 Q3, Q1, r10
vstrw.u32 Q5, [r0,#(0)]
// Release input[0] from Q5
vmul.u32 Q1, Q1, r9
vstrw.u32 Q6, [r0,#(64)]
// Release input[16] from Q6
vqrdmlah.s32 Q3, Q1, r12
// input[4]: Already loaded as Q4
// input[20]: Already loaded as Q7
vsub.s32 Q0, Q4, Q7
// input[36]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 36)]
vadd.s32 Q4, Q4, Q7
// input[52]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 52)]
vqrdmulh.s32 Q7, Q0, r8
vsub.s32 Q1, Q2, Q5
vmul.u32 Q0, Q0, r7
vadd.s32 Q2, Q2, Q5
vqrdmlah.s32 Q7, Q0, r12
vstrw.u32 Q3, [r0,#(192)]
// Release input[48] from Q3
vqrdmulh.s32 Q5, Q1, r6
vsub.s32 Q0, Q4, Q2
vmul.u32 Q1, Q1, r5
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q5, Q1, r12
// input[8]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 8)]
vqrdmulh.s32 Q2, Q0, r10
vsub.s32 Q1, Q7, Q5
vmul.u32 Q0, Q0, r9
// input[24]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 24)]
vadd.s32 Q7, Q7, Q5
vqrdmlah.s32 Q2, Q0, r12
vstrw.u32 Q2, [r0,#(144)]
// Release input[36] from Q2
vqrdmulh.s32 Q5, Q1, r10
vstrw.u32 Q4, [r0,#(16)]
// Release input[4] from Q4
vmul.u32 Q1, Q1, r9
vstrw.u32 Q7, [r0,#(80)]
// Release input[20] from Q7
vqrdmlah.s32 Q5, Q1, r12
// input[8]: Already loaded as Q3
// input[24]: Already loaded as Q6
vsub.s32 Q0, Q3, Q6
// input[40]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 40)]
vadd.s32 Q3, Q3, Q6
// input[56]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 56)]
vqrdmulh.s32 Q6, Q0, r8
vsub.s32 Q1, Q2, Q4
vmul.u32 Q0, Q0, r7
vadd.s32 Q2, Q2, Q4
vqrdmlah.s32 Q6, Q0, r12
vstrw.u32 Q5, [r0,#(208)]
// Release input[52] from Q5
vqrdmulh.s32 Q4, Q1, r6
vsub.s32 Q0, Q3, Q2
vmul.u32 Q1, Q1, r5
vadd.s32 Q3, Q3, Q2
vqrdmlah.s32 Q4, Q1, r12
// input[12]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 12)]
vqrdmulh.s32 Q2, Q0, r10
vsub.s32 Q1, Q6, Q4
vmul.u32 Q0, Q0, r9
// input[28]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 28)]
vadd.s32 Q6, Q6, Q4
vqrdmlah.s32 Q2, Q0, r12
vstrw.u32 Q2, [r0,#(160)]
// Release input[40] from Q2
vqrdmulh.s32 Q4, Q1, r10
vstrw.u32 Q3, [r0,#(32)]
// Release input[8] from Q3
vmul.u32 Q1, Q1, r9
vstrw.u32 Q6, [r0,#(96)]
// Release input[24] from Q6
vqrdmlah.s32 Q4, Q1, r12
// input[12]: Already loaded as Q5
// input[28]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
// input[44]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 44)]
vadd.s32 Q5, Q5, Q7
// input[60]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 60)]
vqrdmulh.s32 Q7, Q0, r8
vsub.s32 Q1, Q2, Q3
vmul.u32 Q0, Q0, r7
vadd.s32 Q2, Q2, Q3
vqrdmlah.s32 Q7, Q0, r12
vstrw.u32 Q4, [r0,#(224)]
// Release input[56] from Q4
vqrdmulh.s32 Q3, Q1, r6
vsub.s32 Q0, Q5, Q2
vmul.u32 Q1, Q1, r5
vadd.s32 Q5, Q5, Q2
vqrdmlah.s32 Q3, Q1, r12
// input[64]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 64)]
vqrdmulh.s32 Q2, Q0, r10
vsub.s32 Q1, Q7, Q3
vmul.u32 Q0, Q0, r9
// input[80]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 80)]
vadd.s32 Q7, Q7, Q3
vqrdmlah.s32 Q2, Q0, r12
vstrw.u32 Q2, [r0,#(176)]
// Release input[44] from Q2
vqrdmulh.s32 Q3, Q1, r10
vstrw.u32 Q5, [r0,#(48)]
// Release input[12] from Q5
vmul.u32 Q1, Q1, r9
vstrw.u32 Q7, [r0,#(112)]
// Release input[28] from Q7
vqrdmlah.s32 Q3, Q1, r12
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[64]: Already loaded as Q4
// input[80]: Already loaded as Q6
vsub.s32 Q0, Q4, Q6
// input[96]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 96)]
vadd.s32 Q4, Q4, Q6
// input[112]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 112)]
vqrdmulh.s32 Q6, Q0, r8
vsub.s32 Q1, Q2, Q5
vmul.u32 Q0, Q0, r7
vadd.s32 Q2, Q2, Q5
vqrdmlah.s32 Q6, Q0, r12
vstrw.u32 Q3, [r0,#(240)]
// Release input[60] from Q3
vqrdmulh.s32 Q5, Q1, r6
vsub.s32 Q0, Q4, Q2
vmul.u32 Q1, Q1, r5
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q5, Q1, r12
// input[68]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 68)]
vqrdmulh.s32 Q2, Q0, r10
vsub.s32 Q1, Q6, Q5
vmul.u32 Q0, Q0, r9
// input[84]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 84)]
vadd.s32 Q6, Q6, Q5
vqrdmlah.s32 Q2, Q0, r12
vstrw.u32 Q2, [r0,#(384)]
// Release input[96] from Q2
vqrdmulh.s32 Q5, Q1, r10
vstrw.u32 Q4, [r0,#(256)]
// Release input[64] from Q4
vmul.u32 Q1, Q1, r9
vstrw.u32 Q6, [r0,#(320)]
// Release input[80] from Q6
vqrdmlah.s32 Q5, Q1, r12
// input[68]: Already loaded as Q3
// input[84]: Already loaded as Q7
vsub.s32 Q0, Q3, Q7
// input[100]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 100)]
vadd.s32 Q3, Q3, Q7
// input[116]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 116)]
vqrdmulh.s32 Q7, Q0, r8
vsub.s32 Q1, Q2, Q4
vmul.u32 Q0, Q0, r7
vadd.s32 Q2, Q2, Q4
vqrdmlah.s32 Q7, Q0, r12
vstrw.u32 Q5, [r0,#(448)]
// Release input[112] from Q5
vqrdmulh.s32 Q4, Q1, r6
vsub.s32 Q0, Q3, Q2
vmul.u32 Q1, Q1, r5
vadd.s32 Q3, Q3, Q2
vqrdmlah.s32 Q4, Q1, r12
// input[72]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 72)]
vqrdmulh.s32 Q2, Q0, r10
vsub.s32 Q1, Q7, Q4
vmul.u32 Q0, Q0, r9
// input[88]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 88)]
vadd.s32 Q7, Q7, Q4
vqrdmlah.s32 Q2, Q0, r12
vstrw.u32 Q2, [r0,#(400)]
// Release input[100] from Q2
vqrdmulh.s32 Q4, Q1, r10
vstrw.u32 Q3, [r0,#(272)]
// Release input[68] from Q3
vmul.u32 Q1, Q1, r9
vstrw.u32 Q7, [r0,#(336)]
// Release input[84] from Q7
vqrdmlah.s32 Q4, Q1, r12
// input[72]: Already loaded as Q5
// input[88]: Already loaded as Q6
vsub.s32 Q0, Q5, Q6
// input[104]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 104)]
vadd.s32 Q5, Q5, Q6
// input[120]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 120)]
vqrdmulh.s32 Q6, Q0, r8
vsub.s32 Q1, Q2, Q3
vmul.u32 Q0, Q0, r7
vadd.s32 Q2, Q2, Q3
vqrdmlah.s32 Q6, Q0, r12
vstrw.u32 Q4, [r0,#(464)]
// Release input[116] from Q4
vqrdmulh.s32 Q3, Q1, r6
vsub.s32 Q0, Q5, Q2
vmul.u32 Q1, Q1, r5
vadd.s32 Q5, Q5, Q2
vqrdmlah.s32 Q3, Q1, r12
// input[76]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 76)]
vqrdmulh.s32 Q2, Q0, r10
vsub.s32 Q1, Q6, Q3
vmul.u32 Q0, Q0, r9
// input[92]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 92)]
vadd.s32 Q6, Q6, Q3
vqrdmlah.s32 Q2, Q0, r12
vstrw.u32 Q2, [r0,#(416)]
// Release input[104] from Q2
vqrdmulh.s32 Q3, Q1, r10
vstrw.u32 Q5, [r0,#(288)]
// Release input[72] from Q5
vmul.u32 Q1, Q1, r9
vstrw.u32 Q6, [r0,#(352)]
// Release input[88] from Q6
vqrdmlah.s32 Q3, Q1, r12
// input[76]: Already loaded as Q4
// input[92]: Already loaded as Q7
vsub.s32 Q0, Q4, Q7
// input[108]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 108)]
vadd.s32 Q4, Q4, Q7
// input[124]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 124)]
vqrdmulh.s32 Q7, Q0, r8
vsub.s32 Q1, Q2, Q5
vmul.u32 Q0, Q0, r7
vadd.s32 Q2, Q2, Q5
vqrdmlah.s32 Q7, Q0, r12
vstrw.u32 Q3, [r0,#(480)]
// Release input[120] from Q3
vqrdmulh.s32 Q5, Q1, r6
vsub.s32 Q0, Q4, Q2
vmul.u32 Q1, Q1, r5
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q5, Q1, r12
// input[128]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -124)]
vqrdmulh.s32 Q2, Q0, r10
vsub.s32 Q1, Q7, Q5
vmul.u32 Q0, Q0, r9
// input[144]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * -108)]
vadd.s32 Q7, Q7, Q5
vqrdmlah.s32 Q2, Q0, r12
vstrw.u32 Q2, [r0,#(432)]
// Release input[108] from Q2
vqrdmulh.s32 Q5, Q1, r10
vstrw.u32 Q4, [r0,#(304)]
// Release input[76] from Q4
vmul.u32 Q1, Q1, r9
vstrw.u32 Q7, [r0,#(368)]
// Release input[92] from Q7
vqrdmlah.s32 Q5, Q1, r12
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[128]: Already loaded as Q3
// input[144]: Already loaded as Q6
vsub.s32 Q0, Q3, Q6
// input[160]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -92)]
vadd.s32 Q3, Q3, Q6
// input[176]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -76)]
vqrdmulh.s32 Q6, Q0, r8
vsub.s32 Q1, Q2, Q4
vmul.u32 Q0, Q0, r7
vadd.s32 Q2, Q2, Q4
vqrdmlah.s32 Q6, Q0, r12
vstrw.u32 Q5, [r0,#(496)]
// Release input[124] from Q5
vqrdmulh.s32 Q4, Q1, r6
vsub.s32 Q0, Q3, Q2
vmul.u32 Q1, Q1, r5
vadd.s32 Q3, Q3, Q2
vqrdmlah.s32 Q4, Q1, r12
// input[132]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -120)]
vqrdmulh.s32 Q2, Q0, r10
vsub.s32 Q1, Q6, Q4
vmul.u32 Q0, Q0, r9
// input[148]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -104)]
vadd.s32 Q6, Q6, Q4
vqrdmlah.s32 Q2, Q0, r12
vstrw.u32 Q2, [r14,#(-368)]
// Release input[160] from Q2
vqrdmulh.s32 Q4, Q1, r10
vstrw.u32 Q3, [r14,#(-496)]
// Release input[128] from Q3
vmul.u32 Q1, Q1, r9
vstrw.u32 Q6, [r14,#(-432)]
// Release input[144] from Q6
vqrdmlah.s32 Q4, Q1, r12
// input[132]: Already loaded as Q5
// input[148]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
// input[164]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -88)]
vadd.s32 Q5, Q5, Q7
// input[180]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -72)]
vqrdmulh.s32 Q7, Q0, r8
vsub.s32 Q1, Q2, Q3
vmul.u32 Q0, Q0, r7
vadd.s32 Q2, Q2, Q3
vqrdmlah.s32 Q7, Q0, r12
vstrw.u32 Q4, [r14,#(-304)]
// Release input[176] from Q4
vqrdmulh.s32 Q3, Q1, r6
vsub.s32 Q0, Q5, Q2
vmul.u32 Q1, Q1, r5
vadd.s32 Q5, Q5, Q2
vqrdmlah.s32 Q3, Q1, r12
// input[136]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -116)]
vqrdmulh.s32 Q2, Q0, r10
vsub.s32 Q1, Q7, Q3
vmul.u32 Q0, Q0, r9
// input[152]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * -100)]
vadd.s32 Q7, Q7, Q3
vqrdmlah.s32 Q2, Q0, r12
vstrw.u32 Q2, [r14,#(-352)]
// Release input[164] from Q2
vqrdmulh.s32 Q3, Q1, r10
vstrw.u32 Q5, [r14,#(-480)]
// Release input[132] from Q5
vmul.u32 Q1, Q1, r9
vstrw.u32 Q7, [r14,#(-416)]
// Release input[148] from Q7
vqrdmlah.s32 Q3, Q1, r12
// input[136]: Already loaded as Q4
// input[152]: Already loaded as Q6
vsub.s32 Q0, Q4, Q6
// input[168]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -84)]
vadd.s32 Q4, Q4, Q6
// input[184]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -68)]
vqrdmulh.s32 Q6, Q0, r8
vsub.s32 Q1, Q2, Q5
vmul.u32 Q0, Q0, r7
vadd.s32 Q2, Q2, Q5
vqrdmlah.s32 Q6, Q0, r12
vstrw.u32 Q3, [r14,#(-288)]
// Release input[180] from Q3
vqrdmulh.s32 Q5, Q1, r6
vsub.s32 Q0, Q4, Q2
vmul.u32 Q1, Q1, r5
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q5, Q1, r12
// input[140]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -112)]
vqrdmulh.s32 Q2, Q0, r10
vsub.s32 Q1, Q6, Q5
vmul.u32 Q0, Q0, r9
// input[156]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -96)]
vadd.s32 Q6, Q6, Q5
vqrdmlah.s32 Q2, Q0, r12
vstrw.u32 Q2, [r14,#(-336)]
// Release input[168] from Q2
vqrdmulh.s32 Q5, Q1, r10
vstrw.u32 Q4, [r14,#(-464)]
// Release input[136] from Q4
vmul.u32 Q1, Q1, r9
vstrw.u32 Q6, [r14,#(-400)]
// Release input[152] from Q6
vqrdmlah.s32 Q5, Q1, r12
// input[140]: Already loaded as Q3
// input[156]: Already loaded as Q7
vsub.s32 Q0, Q3, Q7
// input[172]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -80)]
vadd.s32 Q3, Q3, Q7
// input[188]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -64)]
vqrdmulh.s32 Q7, Q0, r8
vsub.s32 Q1, Q2, Q4
vmul.u32 Q0, Q0, r7
vadd.s32 Q2, Q2, Q4
vqrdmlah.s32 Q7, Q0, r12
vstrw.u32 Q5, [r14,#(-272)]
// Release input[184] from Q5
vqrdmulh.s32 Q4, Q1, r6
vsub.s32 Q0, Q3, Q2
vmul.u32 Q1, Q1, r5
vadd.s32 Q3, Q3, Q2
vqrdmlah.s32 Q4, Q1, r12
// input[192]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -60)]
vqrdmulh.s32 Q2, Q0, r10
vsub.s32 Q1, Q7, Q4
vmul.u32 Q0, Q0, r9
// input[208]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * -44)]
vadd.s32 Q7, Q7, Q4
vqrdmlah.s32 Q2, Q0, r12
vstrw.u32 Q2, [r14,#(-320)]
// Release input[172] from Q2
vqrdmulh.s32 Q4, Q1, r10
vstrw.u32 Q3, [r14,#(-448)]
// Release input[140] from Q3
vmul.u32 Q1, Q1, r9
vstrw.u32 Q7, [r14,#(-384)]
// Release input[156] from Q7
vqrdmlah.s32 Q4, Q1, r12
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[192]: Already loaded as Q5
// input[208]: Already loaded as Q6
vsub.s32 Q0, Q5, Q6
// input[224]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -28)]
vadd.s32 Q5, Q5, Q6
// input[240]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -12)]
vqrdmulh.s32 Q6, Q0, r8
vsub.s32 Q1, Q2, Q3
vmul.u32 Q0, Q0, r7
vadd.s32 Q2, Q2, Q3
vqrdmlah.s32 Q6, Q0, r12
vstrw.u32 Q4, [r14,#(-256)]
// Release input[188] from Q4
vqrdmulh.s32 Q3, Q1, r6
vsub.s32 Q0, Q5, Q2
vmul.u32 Q1, Q1, r5
vadd.s32 Q5, Q5, Q2
vqrdmlah.s32 Q3, Q1, r12
// input[196]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -56)]
vqrdmulh.s32 Q2, Q0, r10
vsub.s32 Q1, Q6, Q3
vmul.u32 Q0, Q0, r9
// input[212]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -40)]
vadd.s32 Q6, Q6, Q3
vqrdmlah.s32 Q2, Q0, r12
vstrw.u32 Q2, [r14,#(-112)]
// Release input[224] from Q2
vqrdmulh.s32 Q3, Q1, r10
vstrw.u32 Q5, [r14,#(-240)]
// Release input[192] from Q5
vmul.u32 Q1, Q1, r9
vstrw.u32 Q6, [r14,#(-176)]
// Release input[208] from Q6
vqrdmlah.s32 Q3, Q1, r12
// input[196]: Already loaded as Q4
// input[212]: Already loaded as Q7
vsub.s32 Q0, Q4, Q7
// input[228]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -24)]
vadd.s32 Q4, Q4, Q7
// input[244]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -8)]
vqrdmulh.s32 Q7, Q0, r8
vsub.s32 Q1, Q2, Q5
vmul.u32 Q0, Q0, r7
vadd.s32 Q2, Q2, Q5
vqrdmlah.s32 Q7, Q0, r12
vstrw.u32 Q3, [r14,#(-48)]
// Release input[240] from Q3
vqrdmulh.s32 Q5, Q1, r6
vsub.s32 Q0, Q4, Q2
vmul.u32 Q1, Q1, r5
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q5, Q1, r12
// input[200]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -52)]
vqrdmulh.s32 Q2, Q0, r10
vsub.s32 Q1, Q7, Q5
vmul.u32 Q0, Q0, r9
// input[216]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * -36)]
vadd.s32 Q7, Q7, Q5
vqrdmlah.s32 Q2, Q0, r12
vstrw.u32 Q2, [r14,#(-96)]
// Release input[228] from Q2
vqrdmulh.s32 Q5, Q1, r10
vstrw.u32 Q4, [r14,#(-224)]
// Release input[196] from Q4
vmul.u32 Q1, Q1, r9
vstrw.u32 Q7, [r14,#(-160)]
// Release input[212] from Q7
vqrdmlah.s32 Q5, Q1, r12
// input[200]: Already loaded as Q3
// input[216]: Already loaded as Q6
vsub.s32 Q0, Q3, Q6
// input[232]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -20)]
vadd.s32 Q3, Q3, Q6
// input[248]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -4)]
vqrdmulh.s32 Q6, Q0, r8
vsub.s32 Q1, Q2, Q4
vmul.u32 Q0, Q0, r7
vadd.s32 Q2, Q2, Q4
vqrdmlah.s32 Q6, Q0, r12
vstrw.u32 Q5, [r14,#(-32)]
// Release input[244] from Q5
vqrdmulh.s32 Q4, Q1, r6
vsub.s32 Q0, Q3, Q2
vmul.u32 Q1, Q1, r5
vadd.s32 Q3, Q3, Q2
vqrdmlah.s32 Q4, Q1, r12
// input[204]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -48)]
vqrdmulh.s32 Q2, Q0, r10
vsub.s32 Q1, Q6, Q4
vmul.u32 Q0, Q0, r9
// input[220]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -32)]
vadd.s32 Q6, Q6, Q4
vqrdmlah.s32 Q2, Q0, r12
vstrw.u32 Q2, [r14,#(-80)]
// Release input[232] from Q2
vqrdmulh.s32 Q4, Q1, r10
vstrw.u32 Q3, [r14,#(-208)]
// Release input[200] from Q3
vmul.u32 Q1, Q1, r9
vstrw.u32 Q6, [r14,#(-144)]
// Release input[216] from Q6
vqrdmlah.s32 Q4, Q1, r12
// input[204]: Already loaded as Q5
// input[220]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
// input[236]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -16)]
vadd.s32 Q5, Q5, Q7
// input[252]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 0)]
vqrdmulh.s32 Q7, Q0, r8
vsub.s32 Q1, Q2, Q3
vmul.u32 Q0, Q0, r7
vadd.s32 Q2, Q2, Q3
vqrdmlah.s32 Q7, Q0, r12
vstrw.u32 Q4, [r14,#(-16)]
// Release input[248] from Q4
vqrdmulh.s32 Q3, Q1, r6
vsub.s32 Q0, Q5, Q2
vmul.u32 Q1, Q1, r5
vadd.s32 Q5, Q5, Q2
vqrdmlah.s32 Q3, Q1, r12
// input[0]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 0)]
vqrdmulh.s32 Q2, Q0, r10
vsub.s32 Q1, Q7, Q3
vmul.u32 Q0, Q0, r9
// input[64]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 64)]
vadd.s32 Q7, Q7, Q3
vqrdmlah.s32 Q2, Q0, r12
vstrw.u32 Q2, [r14,#(-64)]
// Release input[236] from Q2
vqrdmulh.s32 Q3, Q1, r10
vstrw.u32 Q5, [r14,#(-192)]
// Release input[204] from Q5
vmul.u32 Q1, Q1, r9
vstrw.u32 Q7, [r14,#(-128)]
// Release input[220] from Q7
vqrdmlah.s32 Q3, Q1, r12
vstrw.u32 Q3, [r14,#(0)]
// Release input[252] from Q3
// Release input[0] from Q4
// Release input[64] from Q6
mov r10, #0
.equ const_barrett, 63
movw r9, #:lower16:const_barrett
movt r9, #:upper16:const_barrett
vidup.u32 Q0, r10, #1
vshl.u32 Q0, Q0, #6
vldrw.32 Q1, [r0, Q0, UXTW #2]
vqrdmulh.s32 Q2, Q1, r9
neg r12, r12
vmla.s32 Q1, Q2, r12
neg r12, r12
vstrw.32 Q1, [r0, Q0, UXTW #2]
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
mov r11, #0
.equ q_half, 16778496
movw r4, #:lower16:q_half
movt r4, #:upper16:q_half
.equ pow_2_n_mod_q, 33551871
movw r3, #:lower16:pow_2_n_mod_q
movt r3, #:upper16:pow_2_n_mod_q
.equ pow_2_n_mod_q_twisted, 4227858433
movw r2, #:lower16:pow_2_n_mod_q_twisted
movt r2, #:upper16:pow_2_n_mod_q_twisted
// input[0]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 0)]
// input[64]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 64)]
vsub.s32 Q2, Q0, Q1
// input[128]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -124)]
vadd.s32 Q0, Q0, Q1
// input[192]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -60)]
vqrdmulh.s32 Q1, Q2, r8
vsub.s32 Q5, Q3, Q4
vmul.u32 Q2, Q2, r7
vadd.s32 Q3, Q3, Q4
vqrdmlah.s32 Q1, Q2, r12
vqrdmulh.s32 Q4, Q5, r6
vsub.s32 Q2, Q0, Q3
vmul.u32 Q5, Q5, r5
vadd.s32 Q0, Q0, Q3
vqrdmlah.s32 Q4, Q5, r12
// input[4]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 4)]
vqrdmulh.s32 Q3, Q2, r10
vsub.s32 Q6, Q1, Q4
vmul.u32 Q2, Q2, r9
vadd.s32 Q1, Q1, Q4
vqrdmlah.s32 Q3, Q2, r12
// input[68]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 68)]
vqrdmulh.s32 Q2, Q0, r3
vshr.s32 Q3, Q3, #1
vpt.s32 LT, Q3, r11
vaddt.s32 Q3, Q3, r12
vpt.s32 GE, Q3, r4
vsubt.s32 Q3, Q3, r12
vmul.u32 Q0, Q0, r2
vstrw.u32 Q3, [r14,#(-496)]
// Release input[128] from Q3
vqrdmlah.s32 Q2, Q0, r12
// Release input[0] from Q0
vqrdmulh.s32 Q0, Q1, r3
vshr.s32 Q2, Q2, #1
vpt.s32 LT, Q2, r11
vaddt.s32 Q2, Q2, r12
vpt.s32 GE, Q2, r4
vsubt.s32 Q2, Q2, r12
vmul.u32 Q1, Q1, r2
// input[132]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -120)]
vqrdmlah.s32 Q0, Q1, r12
vstrw.u32 Q2, [r0,#(0)]
vqrdmulh.s32 Q4, Q6, r10
vshr.s32 Q0, Q0, #1
vpt.s32 LT, Q0, r11
vaddt.s32 Q0, Q0, r12
vpt.s32 GE, Q0, r4
vsubt.s32 Q0, Q0, r12
vmul.u32 Q6, Q6, r9
vstrw.u32 Q0, [r0,#(256)]
// Release input[64] from Q1
// input[4]: Already loaded as Q5
// input[68]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
// input[132]: Already loaded as Q3
vqrdmlah.s32 Q4, Q6, r12
vadd.s32 Q5, Q5, Q7
// input[196]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -56)]
vqrdmulh.s32 Q7, Q0, r8
vsub.s32 Q2, Q3, Q1
vmul.u32 Q0, Q0, r7
vadd.s32 Q3, Q3, Q1
vqrdmlah.s32 Q7, Q0, r12
vshr.s32 Q4, Q4, #1
vpt.s32 LT, Q4, r11
vaddt.s32 Q4, Q4, r12
vpt.s32 GE, Q4, r4
vsubt.s32 Q4, Q4, r12
vstrw.u32 Q4, [r14,#(-240)]
// Release input[192] from Q4
vqrdmulh.s32 Q1, Q2, r6
vsub.s32 Q0, Q5, Q3
vmul.u32 Q2, Q2, r5
vadd.s32 Q5, Q5, Q3
vqrdmlah.s32 Q1, Q2, r12
// input[8]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 8)]
vqrdmulh.s32 Q3, Q0, r10
vsub.s32 Q4, Q7, Q1
vmul.u32 Q0, Q0, r9
vadd.s32 Q7, Q7, Q1
vqrdmlah.s32 Q3, Q0, r12
// input[72]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 72)]
vqrdmulh.s32 Q0, Q5, r3
vshr.s32 Q3, Q3, #1
vpt.s32 LT, Q3, r11
vaddt.s32 Q3, Q3, r12
vpt.s32 GE, Q3, r4
vsubt.s32 Q3, Q3, r12
vmul.u32 Q5, Q5, r2
vstrw.u32 Q3, [r14,#(-480)]
// Release input[132] from Q3
vqrdmlah.s32 Q0, Q5, r12
// Release input[4] from Q5
vqrdmulh.s32 Q3, Q7, r3
vshr.s32 Q0, Q0, #1
vpt.s32 LT, Q0, r11
vaddt.s32 Q0, Q0, r12
vpt.s32 GE, Q0, r4
vsubt.s32 Q0, Q0, r12
vmul.u32 Q7, Q7, r2
// input[136]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -116)]
vqrdmlah.s32 Q3, Q7, r12
vstrw.u32 Q0, [r0,#(16)]
vqrdmulh.s32 Q1, Q4, r10
vshr.s32 Q3, Q3, #1
vpt.s32 LT, Q3, r11
vaddt.s32 Q3, Q3, r12
vpt.s32 GE, Q3, r4
vsubt.s32 Q3, Q3, r12
vmul.u32 Q4, Q4, r9
vstrw.u32 Q3, [r0,#(272)]
// Release input[68] from Q7
// input[8]: Already loaded as Q2
// input[72]: Already loaded as Q6
vsub.s32 Q0, Q2, Q6
// input[136]: Already loaded as Q5
vqrdmlah.s32 Q1, Q4, r12
vadd.s32 Q2, Q2, Q6
// input[200]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -52)]
vqrdmulh.s32 Q6, Q0, r8
vsub.s32 Q4, Q5, Q3
vmul.u32 Q0, Q0, r7
vadd.s32 Q5, Q5, Q3
vqrdmlah.s32 Q6, Q0, r12
vshr.s32 Q1, Q1, #1
vpt.s32 LT, Q1, r11
vaddt.s32 Q1, Q1, r12
vpt.s32 GE, Q1, r4
vsubt.s32 Q1, Q1, r12
vstrw.u32 Q1, [r14,#(-224)]
// Release input[196] from Q1
vqrdmulh.s32 Q3, Q4, r6
vsub.s32 Q0, Q2, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q2, Q2, Q5
vqrdmlah.s32 Q3, Q4, r12
// input[12]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 12)]
vqrdmulh.s32 Q5, Q0, r10
vsub.s32 Q4, Q6, Q3
vmul.u32 Q0, Q0, r9
vadd.s32 Q6, Q6, Q3
vqrdmlah.s32 Q5, Q0, r12
// input[76]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 76)]
vqrdmulh.s32 Q0, Q2, r3
vshr.s32 Q5, Q5, #1
vpt.s32 LT, Q5, r11
vaddt.s32 Q5, Q5, r12
vpt.s32 GE, Q5, r4
vsubt.s32 Q5, Q5, r12
vmul.u32 Q2, Q2, r2
vstrw.u32 Q5, [r14,#(-464)]
// Release input[136] from Q5
vqrdmlah.s32 Q0, Q2, r12
// Release input[8] from Q2
vqrdmulh.s32 Q2, Q6, r3
vshr.s32 Q0, Q0, #1
vpt.s32 LT, Q0, r11
vaddt.s32 Q0, Q0, r12
vpt.s32 GE, Q0, r4
vsubt.s32 Q0, Q0, r12
vmul.u32 Q6, Q6, r2
// input[140]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -112)]
vqrdmlah.s32 Q2, Q6, r12
vstrw.u32 Q0, [r0,#(32)]
vqrdmulh.s32 Q3, Q4, r10
vshr.s32 Q2, Q2, #1
vpt.s32 LT, Q2, r11
vaddt.s32 Q2, Q2, r12
vpt.s32 GE, Q2, r4
vsubt.s32 Q2, Q2, r12
vmul.u32 Q4, Q4, r9
vstrw.u32 Q2, [r0,#(288)]
// Release input[72] from Q6
// input[12]: Already loaded as Q1
// input[76]: Already loaded as Q7
vsub.s32 Q0, Q1, Q7
// input[140]: Already loaded as Q5
vqrdmlah.s32 Q3, Q4, r12
vadd.s32 Q1, Q1, Q7
// input[204]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -48)]
vqrdmulh.s32 Q7, Q0, r8
vsub.s32 Q4, Q5, Q2
vmul.u32 Q0, Q0, r7
vadd.s32 Q5, Q5, Q2
vqrdmlah.s32 Q7, Q0, r12
vshr.s32 Q3, Q3, #1
vpt.s32 LT, Q3, r11
vaddt.s32 Q3, Q3, r12
vpt.s32 GE, Q3, r4
vsubt.s32 Q3, Q3, r12
vstrw.u32 Q3, [r14,#(-208)]
// Release input[200] from Q3
vqrdmulh.s32 Q2, Q4, r6
vsub.s32 Q0, Q1, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q1, Q1, Q5
vqrdmlah.s32 Q2, Q4, r12
// input[16]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 16)]
vqrdmulh.s32 Q5, Q0, r10
vsub.s32 Q4, Q7, Q2
vmul.u32 Q0, Q0, r9
vadd.s32 Q7, Q7, Q2
vqrdmlah.s32 Q5, Q0, r12
// input[80]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 80)]
vqrdmulh.s32 Q0, Q1, r3
vshr.s32 Q5, Q5, #1
vpt.s32 LT, Q5, r11
vaddt.s32 Q5, Q5, r12
vpt.s32 GE, Q5, r4
vsubt.s32 Q5, Q5, r12
vmul.u32 Q1, Q1, r2
vstrw.u32 Q5, [r14,#(-448)]
// Release input[140] from Q5
vqrdmlah.s32 Q0, Q1, r12
// Release input[12] from Q1
vqrdmulh.s32 Q1, Q7, r3
vshr.s32 Q0, Q0, #1
vpt.s32 LT, Q0, r11
vaddt.s32 Q0, Q0, r12
vpt.s32 GE, Q0, r4
vsubt.s32 Q0, Q0, r12
vmul.u32 Q7, Q7, r2
// input[144]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -108)]
vqrdmlah.s32 Q1, Q7, r12
vstrw.u32 Q0, [r0,#(48)]
vqrdmulh.s32 Q2, Q4, r10
vshr.s32 Q1, Q1, #1
vpt.s32 LT, Q1, r11
vaddt.s32 Q1, Q1, r12
vpt.s32 GE, Q1, r4
vsubt.s32 Q1, Q1, r12
vmul.u32 Q4, Q4, r9
vstrw.u32 Q1, [r0,#(304)]
// Release input[76] from Q7
// input[16]: Already loaded as Q3
// input[80]: Already loaded as Q6
vsub.s32 Q0, Q3, Q6
// input[144]: Already loaded as Q5
vqrdmlah.s32 Q2, Q4, r12
vadd.s32 Q3, Q3, Q6
// input[208]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -44)]
vqrdmulh.s32 Q6, Q0, r8
vsub.s32 Q4, Q5, Q1
vmul.u32 Q0, Q0, r7
vadd.s32 Q5, Q5, Q1
vqrdmlah.s32 Q6, Q0, r12
vshr.s32 Q2, Q2, #1
vpt.s32 LT, Q2, r11
vaddt.s32 Q2, Q2, r12
vpt.s32 GE, Q2, r4
vsubt.s32 Q2, Q2, r12
vstrw.u32 Q2, [r14,#(-192)]
// Release input[204] from Q2
vqrdmulh.s32 Q1, Q4, r6
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vqrdmlah.s32 Q1, Q4, r12
// input[20]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 20)]
vqrdmulh.s32 Q5, Q0, r10
vsub.s32 Q4, Q6, Q1
vmul.u32 Q0, Q0, r9
vadd.s32 Q6, Q6, Q1
vqrdmlah.s32 Q5, Q0, r12
// input[84]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 84)]
vqrdmulh.s32 Q0, Q3, r3
vshr.s32 Q5, Q5, #1
vpt.s32 LT, Q5, r11
vaddt.s32 Q5, Q5, r12
vpt.s32 GE, Q5, r4
vsubt.s32 Q5, Q5, r12
vmul.u32 Q3, Q3, r2
vstrw.u32 Q5, [r14,#(-432)]
// Release input[144] from Q5
vqrdmlah.s32 Q0, Q3, r12
// Release input[16] from Q3
vqrdmulh.s32 Q3, Q6, r3
vshr.s32 Q0, Q0, #1
vpt.s32 LT, Q0, r11
vaddt.s32 Q0, Q0, r12
vpt.s32 GE, Q0, r4
vsubt.s32 Q0, Q0, r12
vmul.u32 Q6, Q6, r2
// input[148]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -104)]
vqrdmlah.s32 Q3, Q6, r12
vstrw.u32 Q0, [r0,#(64)]
vqrdmulh.s32 Q1, Q4, r10
vshr.s32 Q3, Q3, #1
vpt.s32 LT, Q3, r11
vaddt.s32 Q3, Q3, r12
vpt.s32 GE, Q3, r4
vsubt.s32 Q3, Q3, r12
vmul.u32 Q4, Q4, r9
vstrw.u32 Q3, [r0,#(320)]
// Release input[80] from Q6
// input[20]: Already loaded as Q2
// input[84]: Already loaded as Q7
vsub.s32 Q0, Q2, Q7
// input[148]: Already loaded as Q5
vqrdmlah.s32 Q1, Q4, r12
vadd.s32 Q2, Q2, Q7
// input[212]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -40)]
vqrdmulh.s32 Q7, Q0, r8
vsub.s32 Q4, Q5, Q3
vmul.u32 Q0, Q0, r7
vadd.s32 Q5, Q5, Q3
vqrdmlah.s32 Q7, Q0, r12
vshr.s32 Q1, Q1, #1
vpt.s32 LT, Q1, r11
vaddt.s32 Q1, Q1, r12
vpt.s32 GE, Q1, r4
vsubt.s32 Q1, Q1, r12
vstrw.u32 Q1, [r14,#(-176)]
// Release input[208] from Q1
vqrdmulh.s32 Q3, Q4, r6
vsub.s32 Q0, Q2, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q2, Q2, Q5
vqrdmlah.s32 Q3, Q4, r12
// input[24]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 24)]
vqrdmulh.s32 Q5, Q0, r10
vsub.s32 Q4, Q7, Q3
vmul.u32 Q0, Q0, r9
vadd.s32 Q7, Q7, Q3
vqrdmlah.s32 Q5, Q0, r12
// input[88]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 88)]
vqrdmulh.s32 Q0, Q2, r3
vshr.s32 Q5, Q5, #1
vpt.s32 LT, Q5, r11
vaddt.s32 Q5, Q5, r12
vpt.s32 GE, Q5, r4
vsubt.s32 Q5, Q5, r12
vmul.u32 Q2, Q2, r2
vstrw.u32 Q5, [r14,#(-416)]
// Release input[148] from Q5
vqrdmlah.s32 Q0, Q2, r12
// Release input[20] from Q2
vqrdmulh.s32 Q2, Q7, r3
vshr.s32 Q0, Q0, #1
vpt.s32 LT, Q0, r11
vaddt.s32 Q0, Q0, r12
vpt.s32 GE, Q0, r4
vsubt.s32 Q0, Q0, r12
vmul.u32 Q7, Q7, r2
// input[152]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -100)]
vqrdmlah.s32 Q2, Q7, r12
vstrw.u32 Q0, [r0,#(80)]
vqrdmulh.s32 Q3, Q4, r10
vshr.s32 Q2, Q2, #1
vpt.s32 LT, Q2, r11
vaddt.s32 Q2, Q2, r12
vpt.s32 GE, Q2, r4
vsubt.s32 Q2, Q2, r12
vmul.u32 Q4, Q4, r9
vstrw.u32 Q2, [r0,#(336)]
// Release input[84] from Q7
// input[24]: Already loaded as Q1
// input[88]: Already loaded as Q6
vsub.s32 Q0, Q1, Q6
// input[152]: Already loaded as Q5
vqrdmlah.s32 Q3, Q4, r12
vadd.s32 Q1, Q1, Q6
// input[216]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -36)]
vqrdmulh.s32 Q6, Q0, r8
vsub.s32 Q4, Q5, Q2
vmul.u32 Q0, Q0, r7
vadd.s32 Q5, Q5, Q2
vqrdmlah.s32 Q6, Q0, r12
vshr.s32 Q3, Q3, #1
vpt.s32 LT, Q3, r11
vaddt.s32 Q3, Q3, r12
vpt.s32 GE, Q3, r4
vsubt.s32 Q3, Q3, r12
vstrw.u32 Q3, [r14,#(-160)]
// Release input[212] from Q3
vqrdmulh.s32 Q2, Q4, r6
vsub.s32 Q0, Q1, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q1, Q1, Q5
vqrdmlah.s32 Q2, Q4, r12
// input[28]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 28)]
vqrdmulh.s32 Q5, Q0, r10
vsub.s32 Q4, Q6, Q2
vmul.u32 Q0, Q0, r9
vadd.s32 Q6, Q6, Q2
vqrdmlah.s32 Q5, Q0, r12
// input[92]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 92)]
vqrdmulh.s32 Q0, Q1, r3
vshr.s32 Q5, Q5, #1
vpt.s32 LT, Q5, r11
vaddt.s32 Q5, Q5, r12
vpt.s32 GE, Q5, r4
vsubt.s32 Q5, Q5, r12
vmul.u32 Q1, Q1, r2
vstrw.u32 Q5, [r14,#(-400)]
// Release input[152] from Q5
vqrdmlah.s32 Q0, Q1, r12
// Release input[24] from Q1
vqrdmulh.s32 Q1, Q6, r3
vshr.s32 Q0, Q0, #1
vpt.s32 LT, Q0, r11
vaddt.s32 Q0, Q0, r12
vpt.s32 GE, Q0, r4
vsubt.s32 Q0, Q0, r12
vmul.u32 Q6, Q6, r2
// input[156]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -96)]
vqrdmlah.s32 Q1, Q6, r12
vstrw.u32 Q0, [r0,#(96)]
vqrdmulh.s32 Q2, Q4, r10
vshr.s32 Q1, Q1, #1
vpt.s32 LT, Q1, r11
vaddt.s32 Q1, Q1, r12
vpt.s32 GE, Q1, r4
vsubt.s32 Q1, Q1, r12
vmul.u32 Q4, Q4, r9
vstrw.u32 Q1, [r0,#(352)]
// Release input[88] from Q6
// input[28]: Already loaded as Q3
// input[92]: Already loaded as Q7
vsub.s32 Q0, Q3, Q7
// input[156]: Already loaded as Q5
vqrdmlah.s32 Q2, Q4, r12
vadd.s32 Q3, Q3, Q7
// input[220]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -32)]
vqrdmulh.s32 Q7, Q0, r8
vsub.s32 Q4, Q5, Q1
vmul.u32 Q0, Q0, r7
vadd.s32 Q5, Q5, Q1
vqrdmlah.s32 Q7, Q0, r12
vshr.s32 Q2, Q2, #1
vpt.s32 LT, Q2, r11
vaddt.s32 Q2, Q2, r12
vpt.s32 GE, Q2, r4
vsubt.s32 Q2, Q2, r12
vstrw.u32 Q2, [r14,#(-144)]
// Release input[216] from Q2
vqrdmulh.s32 Q1, Q4, r6
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vqrdmlah.s32 Q1, Q4, r12
// input[32]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 32)]
vqrdmulh.s32 Q5, Q0, r10
vsub.s32 Q4, Q7, Q1
vmul.u32 Q0, Q0, r9
vadd.s32 Q7, Q7, Q1
vqrdmlah.s32 Q5, Q0, r12
// input[96]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 96)]
vqrdmulh.s32 Q0, Q3, r3
vshr.s32 Q5, Q5, #1
vpt.s32 LT, Q5, r11
vaddt.s32 Q5, Q5, r12
vpt.s32 GE, Q5, r4
vsubt.s32 Q5, Q5, r12
vmul.u32 Q3, Q3, r2
vstrw.u32 Q5, [r14,#(-384)]
// Release input[156] from Q5
vqrdmlah.s32 Q0, Q3, r12
// Release input[28] from Q3
vqrdmulh.s32 Q3, Q7, r3
vshr.s32 Q0, Q0, #1
vpt.s32 LT, Q0, r11
vaddt.s32 Q0, Q0, r12
vpt.s32 GE, Q0, r4
vsubt.s32 Q0, Q0, r12
vmul.u32 Q7, Q7, r2
// input[160]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -92)]
vqrdmlah.s32 Q3, Q7, r12
vstrw.u32 Q0, [r0,#(112)]
vqrdmulh.s32 Q1, Q4, r10
vshr.s32 Q3, Q3, #1
vpt.s32 LT, Q3, r11
vaddt.s32 Q3, Q3, r12
vpt.s32 GE, Q3, r4
vsubt.s32 Q3, Q3, r12
vmul.u32 Q4, Q4, r9
vstrw.u32 Q3, [r0,#(368)]
// Release input[92] from Q7
// input[32]: Already loaded as Q2
// input[96]: Already loaded as Q6
vsub.s32 Q0, Q2, Q6
// input[160]: Already loaded as Q5
vqrdmlah.s32 Q1, Q4, r12
vadd.s32 Q2, Q2, Q6
// input[224]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -28)]
vqrdmulh.s32 Q6, Q0, r8
vsub.s32 Q4, Q5, Q3
vmul.u32 Q0, Q0, r7
vadd.s32 Q5, Q5, Q3
vqrdmlah.s32 Q6, Q0, r12
vshr.s32 Q1, Q1, #1
vpt.s32 LT, Q1, r11
vaddt.s32 Q1, Q1, r12
vpt.s32 GE, Q1, r4
vsubt.s32 Q1, Q1, r12
vstrw.u32 Q1, [r14,#(-128)]
// Release input[220] from Q1
vqrdmulh.s32 Q3, Q4, r6
vsub.s32 Q0, Q2, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q2, Q2, Q5
vqrdmlah.s32 Q3, Q4, r12
// input[36]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 36)]
vqrdmulh.s32 Q5, Q0, r10
vsub.s32 Q4, Q6, Q3
vmul.u32 Q0, Q0, r9
vadd.s32 Q6, Q6, Q3
vqrdmlah.s32 Q5, Q0, r12
// input[100]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 100)]
vqrdmulh.s32 Q0, Q2, r3
vshr.s32 Q5, Q5, #1
vpt.s32 LT, Q5, r11
vaddt.s32 Q5, Q5, r12
vpt.s32 GE, Q5, r4
vsubt.s32 Q5, Q5, r12
vmul.u32 Q2, Q2, r2
vstrw.u32 Q5, [r14,#(-368)]
// Release input[160] from Q5
vqrdmlah.s32 Q0, Q2, r12
// Release input[32] from Q2
vqrdmulh.s32 Q2, Q6, r3
vshr.s32 Q0, Q0, #1
vpt.s32 LT, Q0, r11
vaddt.s32 Q0, Q0, r12
vpt.s32 GE, Q0, r4
vsubt.s32 Q0, Q0, r12
vmul.u32 Q6, Q6, r2
// input[164]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -88)]
vqrdmlah.s32 Q2, Q6, r12
vstrw.u32 Q0, [r0,#(128)]
vqrdmulh.s32 Q3, Q4, r10
vshr.s32 Q2, Q2, #1
vpt.s32 LT, Q2, r11
vaddt.s32 Q2, Q2, r12
vpt.s32 GE, Q2, r4
vsubt.s32 Q2, Q2, r12
vmul.u32 Q4, Q4, r9
vstrw.u32 Q2, [r0,#(384)]
// Release input[96] from Q6
// input[36]: Already loaded as Q1
// input[100]: Already loaded as Q7
vsub.s32 Q0, Q1, Q7
// input[164]: Already loaded as Q5
vqrdmlah.s32 Q3, Q4, r12
vadd.s32 Q1, Q1, Q7
// input[228]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -24)]
vqrdmulh.s32 Q7, Q0, r8
vsub.s32 Q4, Q5, Q2
vmul.u32 Q0, Q0, r7
vadd.s32 Q5, Q5, Q2
vqrdmlah.s32 Q7, Q0, r12
vshr.s32 Q3, Q3, #1
vpt.s32 LT, Q3, r11
vaddt.s32 Q3, Q3, r12
vpt.s32 GE, Q3, r4
vsubt.s32 Q3, Q3, r12
vstrw.u32 Q3, [r14,#(-112)]
// Release input[224] from Q3
vqrdmulh.s32 Q2, Q4, r6
vsub.s32 Q0, Q1, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q1, Q1, Q5
vqrdmlah.s32 Q2, Q4, r12
// input[40]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 40)]
vqrdmulh.s32 Q5, Q0, r10
vsub.s32 Q4, Q7, Q2
vmul.u32 Q0, Q0, r9
vadd.s32 Q7, Q7, Q2
vqrdmlah.s32 Q5, Q0, r12
// input[104]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 104)]
vqrdmulh.s32 Q0, Q1, r3
vshr.s32 Q5, Q5, #1
vpt.s32 LT, Q5, r11
vaddt.s32 Q5, Q5, r12
vpt.s32 GE, Q5, r4
vsubt.s32 Q5, Q5, r12
vmul.u32 Q1, Q1, r2
vstrw.u32 Q5, [r14,#(-352)]
// Release input[164] from Q5
vqrdmlah.s32 Q0, Q1, r12
// Release input[36] from Q1
vqrdmulh.s32 Q1, Q7, r3
vshr.s32 Q0, Q0, #1
vpt.s32 LT, Q0, r11
vaddt.s32 Q0, Q0, r12
vpt.s32 GE, Q0, r4
vsubt.s32 Q0, Q0, r12
vmul.u32 Q7, Q7, r2
// input[168]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -84)]
vqrdmlah.s32 Q1, Q7, r12
vstrw.u32 Q0, [r0,#(144)]
vqrdmulh.s32 Q2, Q4, r10
vshr.s32 Q1, Q1, #1
vpt.s32 LT, Q1, r11
vaddt.s32 Q1, Q1, r12
vpt.s32 GE, Q1, r4
vsubt.s32 Q1, Q1, r12
vmul.u32 Q4, Q4, r9
vstrw.u32 Q1, [r0,#(400)]
// Release input[100] from Q7
// input[40]: Already loaded as Q3
// input[104]: Already loaded as Q6
vsub.s32 Q0, Q3, Q6
// input[168]: Already loaded as Q5
vqrdmlah.s32 Q2, Q4, r12
vadd.s32 Q3, Q3, Q6
// input[232]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -20)]
vqrdmulh.s32 Q6, Q0, r8
vsub.s32 Q4, Q5, Q1
vmul.u32 Q0, Q0, r7
vadd.s32 Q5, Q5, Q1
vqrdmlah.s32 Q6, Q0, r12
vshr.s32 Q2, Q2, #1
vpt.s32 LT, Q2, r11
vaddt.s32 Q2, Q2, r12
vpt.s32 GE, Q2, r4
vsubt.s32 Q2, Q2, r12
vstrw.u32 Q2, [r14,#(-96)]
// Release input[228] from Q2
vqrdmulh.s32 Q1, Q4, r6
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vqrdmlah.s32 Q1, Q4, r12
// input[44]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 44)]
vqrdmulh.s32 Q5, Q0, r10
vsub.s32 Q4, Q6, Q1
vmul.u32 Q0, Q0, r9
vadd.s32 Q6, Q6, Q1
vqrdmlah.s32 Q5, Q0, r12
// input[108]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 108)]
vqrdmulh.s32 Q0, Q3, r3
vshr.s32 Q5, Q5, #1
vpt.s32 LT, Q5, r11
vaddt.s32 Q5, Q5, r12
vpt.s32 GE, Q5, r4
vsubt.s32 Q5, Q5, r12
vmul.u32 Q3, Q3, r2
vstrw.u32 Q5, [r14,#(-336)]
// Release input[168] from Q5
vqrdmlah.s32 Q0, Q3, r12
// Release input[40] from Q3
vqrdmulh.s32 Q3, Q6, r3
vshr.s32 Q0, Q0, #1
vpt.s32 LT, Q0, r11
vaddt.s32 Q0, Q0, r12
vpt.s32 GE, Q0, r4
vsubt.s32 Q0, Q0, r12
vmul.u32 Q6, Q6, r2
// input[172]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -80)]
vqrdmlah.s32 Q3, Q6, r12
vstrw.u32 Q0, [r0,#(160)]
vqrdmulh.s32 Q1, Q4, r10
vshr.s32 Q3, Q3, #1
vpt.s32 LT, Q3, r11
vaddt.s32 Q3, Q3, r12
vpt.s32 GE, Q3, r4
vsubt.s32 Q3, Q3, r12
vmul.u32 Q4, Q4, r9
vstrw.u32 Q3, [r0,#(416)]
// Release input[104] from Q6
// input[44]: Already loaded as Q2
// input[108]: Already loaded as Q7
vsub.s32 Q0, Q2, Q7
// input[172]: Already loaded as Q5
vqrdmlah.s32 Q1, Q4, r12
vadd.s32 Q2, Q2, Q7
// input[236]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -16)]
vqrdmulh.s32 Q7, Q0, r8
vsub.s32 Q4, Q5, Q3
vmul.u32 Q0, Q0, r7
vadd.s32 Q5, Q5, Q3
vqrdmlah.s32 Q7, Q0, r12
vshr.s32 Q1, Q1, #1
vpt.s32 LT, Q1, r11
vaddt.s32 Q1, Q1, r12
vpt.s32 GE, Q1, r4
vsubt.s32 Q1, Q1, r12
vstrw.u32 Q1, [r14,#(-80)]
// Release input[232] from Q1
vqrdmulh.s32 Q3, Q4, r6
vsub.s32 Q0, Q2, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q2, Q2, Q5
vqrdmlah.s32 Q3, Q4, r12
// input[48]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 48)]
vqrdmulh.s32 Q5, Q0, r10
vsub.s32 Q4, Q7, Q3
vmul.u32 Q0, Q0, r9
vadd.s32 Q7, Q7, Q3
vqrdmlah.s32 Q5, Q0, r12
// input[112]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 112)]
vqrdmulh.s32 Q0, Q2, r3
vshr.s32 Q5, Q5, #1
vpt.s32 LT, Q5, r11
vaddt.s32 Q5, Q5, r12
vpt.s32 GE, Q5, r4
vsubt.s32 Q5, Q5, r12
vmul.u32 Q2, Q2, r2
vstrw.u32 Q5, [r14,#(-320)]
// Release input[172] from Q5
vqrdmlah.s32 Q0, Q2, r12
// Release input[44] from Q2
vqrdmulh.s32 Q2, Q7, r3
vshr.s32 Q0, Q0, #1
vpt.s32 LT, Q0, r11
vaddt.s32 Q0, Q0, r12
vpt.s32 GE, Q0, r4
vsubt.s32 Q0, Q0, r12
vmul.u32 Q7, Q7, r2
// input[176]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -76)]
vqrdmlah.s32 Q2, Q7, r12
vstrw.u32 Q0, [r0,#(176)]
vqrdmulh.s32 Q3, Q4, r10
vshr.s32 Q2, Q2, #1
vpt.s32 LT, Q2, r11
vaddt.s32 Q2, Q2, r12
vpt.s32 GE, Q2, r4
vsubt.s32 Q2, Q2, r12
vmul.u32 Q4, Q4, r9
vstrw.u32 Q2, [r0,#(432)]
// Release input[108] from Q7
// input[48]: Already loaded as Q1
// input[112]: Already loaded as Q6
vsub.s32 Q0, Q1, Q6
// input[176]: Already loaded as Q5
vqrdmlah.s32 Q3, Q4, r12
vadd.s32 Q1, Q1, Q6
// input[240]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -12)]
vqrdmulh.s32 Q6, Q0, r8
vsub.s32 Q4, Q5, Q2
vmul.u32 Q0, Q0, r7
vadd.s32 Q5, Q5, Q2
vqrdmlah.s32 Q6, Q0, r12
vshr.s32 Q3, Q3, #1
vpt.s32 LT, Q3, r11
vaddt.s32 Q3, Q3, r12
vpt.s32 GE, Q3, r4
vsubt.s32 Q3, Q3, r12
vstrw.u32 Q3, [r14,#(-64)]
// Release input[236] from Q3
vqrdmulh.s32 Q2, Q4, r6
vsub.s32 Q0, Q1, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q1, Q1, Q5
vqrdmlah.s32 Q2, Q4, r12
// input[52]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 52)]
vqrdmulh.s32 Q5, Q0, r10
vsub.s32 Q4, Q6, Q2
vmul.u32 Q0, Q0, r9
vadd.s32 Q6, Q6, Q2
vqrdmlah.s32 Q5, Q0, r12
// input[116]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 116)]
vqrdmulh.s32 Q0, Q1, r3
vshr.s32 Q5, Q5, #1
vpt.s32 LT, Q5, r11
vaddt.s32 Q5, Q5, r12
vpt.s32 GE, Q5, r4
vsubt.s32 Q5, Q5, r12
vmul.u32 Q1, Q1, r2
vstrw.u32 Q5, [r14,#(-304)]
// Release input[176] from Q5
vqrdmlah.s32 Q0, Q1, r12
// Release input[48] from Q1
vqrdmulh.s32 Q1, Q6, r3
vshr.s32 Q0, Q0, #1
vpt.s32 LT, Q0, r11
vaddt.s32 Q0, Q0, r12
vpt.s32 GE, Q0, r4
vsubt.s32 Q0, Q0, r12
vmul.u32 Q6, Q6, r2
// input[180]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -72)]
vqrdmlah.s32 Q1, Q6, r12
vstrw.u32 Q0, [r0,#(192)]
vqrdmulh.s32 Q2, Q4, r10
vshr.s32 Q1, Q1, #1
vpt.s32 LT, Q1, r11
vaddt.s32 Q1, Q1, r12
vpt.s32 GE, Q1, r4
vsubt.s32 Q1, Q1, r12
vmul.u32 Q4, Q4, r9
vstrw.u32 Q1, [r0,#(448)]
// Release input[112] from Q6
// input[52]: Already loaded as Q3
// input[116]: Already loaded as Q7
vsub.s32 Q0, Q3, Q7
// input[180]: Already loaded as Q5
vqrdmlah.s32 Q2, Q4, r12
vadd.s32 Q3, Q3, Q7
// input[244]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -8)]
vqrdmulh.s32 Q7, Q0, r8
vsub.s32 Q4, Q5, Q1
vmul.u32 Q0, Q0, r7
vadd.s32 Q5, Q5, Q1
vqrdmlah.s32 Q7, Q0, r12
vshr.s32 Q2, Q2, #1
vpt.s32 LT, Q2, r11
vaddt.s32 Q2, Q2, r12
vpt.s32 GE, Q2, r4
vsubt.s32 Q2, Q2, r12
vstrw.u32 Q2, [r14,#(-48)]
// Release input[240] from Q2
vqrdmulh.s32 Q1, Q4, r6
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vqrdmlah.s32 Q1, Q4, r12
// input[56]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 56)]
vqrdmulh.s32 Q5, Q0, r10
vsub.s32 Q4, Q7, Q1
vmul.u32 Q0, Q0, r9
vadd.s32 Q7, Q7, Q1
vqrdmlah.s32 Q5, Q0, r12
// input[120]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 120)]
vqrdmulh.s32 Q0, Q3, r3
vshr.s32 Q5, Q5, #1
vpt.s32 LT, Q5, r11
vaddt.s32 Q5, Q5, r12
vpt.s32 GE, Q5, r4
vsubt.s32 Q5, Q5, r12
vmul.u32 Q3, Q3, r2
vstrw.u32 Q5, [r14,#(-288)]
// Release input[180] from Q5
vqrdmlah.s32 Q0, Q3, r12
// Release input[52] from Q3
vqrdmulh.s32 Q3, Q7, r3
vshr.s32 Q0, Q0, #1
vpt.s32 LT, Q0, r11
vaddt.s32 Q0, Q0, r12
vpt.s32 GE, Q0, r4
vsubt.s32 Q0, Q0, r12
vmul.u32 Q7, Q7, r2
// input[184]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -68)]
vqrdmlah.s32 Q3, Q7, r12
vstrw.u32 Q0, [r0,#(208)]
vqrdmulh.s32 Q1, Q4, r10
vshr.s32 Q3, Q3, #1
vpt.s32 LT, Q3, r11
vaddt.s32 Q3, Q3, r12
vpt.s32 GE, Q3, r4
vsubt.s32 Q3, Q3, r12
vmul.u32 Q4, Q4, r9
vstrw.u32 Q3, [r0,#(464)]
// Release input[116] from Q7
// input[56]: Already loaded as Q2
// input[120]: Already loaded as Q6
vsub.s32 Q0, Q2, Q6
// input[184]: Already loaded as Q5
vqrdmlah.s32 Q1, Q4, r12
vadd.s32 Q2, Q2, Q6
// input[248]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -4)]
vqrdmulh.s32 Q6, Q0, r8
vsub.s32 Q4, Q5, Q3
vmul.u32 Q0, Q0, r7
vadd.s32 Q5, Q5, Q3
vqrdmlah.s32 Q6, Q0, r12
vshr.s32 Q1, Q1, #1
vpt.s32 LT, Q1, r11
vaddt.s32 Q1, Q1, r12
vpt.s32 GE, Q1, r4
vsubt.s32 Q1, Q1, r12
vstrw.u32 Q1, [r14,#(-32)]
// Release input[244] from Q1
vqrdmulh.s32 Q3, Q4, r6
vsub.s32 Q0, Q2, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q2, Q2, Q5
vqrdmlah.s32 Q3, Q4, r12
// input[60]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 60)]
vqrdmulh.s32 Q5, Q0, r10
vsub.s32 Q4, Q6, Q3
vmul.u32 Q0, Q0, r9
vadd.s32 Q6, Q6, Q3
vqrdmlah.s32 Q5, Q0, r12
// input[124]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 124)]
vqrdmulh.s32 Q0, Q2, r3
vshr.s32 Q5, Q5, #1
vpt.s32 LT, Q5, r11
vaddt.s32 Q5, Q5, r12
vpt.s32 GE, Q5, r4
vsubt.s32 Q5, Q5, r12
vmul.u32 Q2, Q2, r2
vstrw.u32 Q5, [r14,#(-272)]
// Release input[184] from Q5
vqrdmlah.s32 Q0, Q2, r12
// Release input[56] from Q2
vqrdmulh.s32 Q2, Q6, r3
vshr.s32 Q0, Q0, #1
vpt.s32 LT, Q0, r11
vaddt.s32 Q0, Q0, r12
vpt.s32 GE, Q0, r4
vsubt.s32 Q0, Q0, r12
vmul.u32 Q6, Q6, r2
// input[188]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -64)]
vqrdmlah.s32 Q2, Q6, r12
vstrw.u32 Q0, [r0,#(224)]
vqrdmulh.s32 Q3, Q4, r10
vshr.s32 Q2, Q2, #1
vpt.s32 LT, Q2, r11
vaddt.s32 Q2, Q2, r12
vpt.s32 GE, Q2, r4
vsubt.s32 Q2, Q2, r12
vmul.u32 Q4, Q4, r9
vstrw.u32 Q2, [r0,#(480)]
// Release input[120] from Q6
// input[60]: Already loaded as Q1
// input[124]: Already loaded as Q7
vsub.s32 Q0, Q1, Q7
// input[188]: Already loaded as Q5
vqrdmlah.s32 Q3, Q4, r12
vadd.s32 Q1, Q1, Q7
// input[252]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 0)]
vqrdmulh.s32 Q7, Q0, r8
vsub.s32 Q4, Q5, Q2
vmul.u32 Q0, Q0, r7
vadd.s32 Q5, Q5, Q2
vqrdmlah.s32 Q7, Q0, r12
vshr.s32 Q3, Q3, #1
vpt.s32 LT, Q3, r11
vaddt.s32 Q3, Q3, r12
vpt.s32 GE, Q3, r4
vsubt.s32 Q3, Q3, r12
vstrw.u32 Q3, [r14,#(-16)]
// Release input[248] from Q3
vqrdmulh.s32 Q2, Q4, r6
vsub.s32 Q0, Q1, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q1, Q1, Q5
vqrdmlah.s32 Q2, Q4, r12
vqrdmulh.s32 Q5, Q0, r10
vsub.s32 Q3, Q7, Q2
vmul.u32 Q0, Q0, r9
vadd.s32 Q7, Q7, Q2
vqrdmlah.s32 Q5, Q0, r12
vqrdmulh.s32 Q0, Q1, r3
vshr.s32 Q5, Q5, #1
vpt.s32 LT, Q5, r11
vaddt.s32 Q5, Q5, r12
vpt.s32 GE, Q5, r4
vsubt.s32 Q5, Q5, r12
vmul.u32 Q1, Q1, r2
vstrw.u32 Q5, [r14,#(-256)]
// Release input[188] from Q5
vqrdmlah.s32 Q0, Q1, r12
// Release input[60] from Q1
vqrdmulh.s32 Q1, Q7, r3
vshr.s32 Q0, Q0, #1
vpt.s32 LT, Q0, r11
vaddt.s32 Q0, Q0, r12
vpt.s32 GE, Q0, r4
vsubt.s32 Q0, Q0, r12
vmul.u32 Q7, Q7, r2
vqrdmlah.s32 Q1, Q7, r12
vstrw.u32 Q0, [r0,#(240)]
vqrdmulh.s32 Q2, Q3, r10
vshr.s32 Q1, Q1, #1
vpt.s32 LT, Q1, r11
vaddt.s32 Q1, Q1, r12
vpt.s32 GE, Q1, r4
vsubt.s32 Q1, Q1, r12
vmul.u32 Q3, Q3, r9
vstrw.u32 Q1, [r0,#(496)]
// Release input[124] from Q7
vqrdmlah.s32 Q2, Q3, r12
vshr.s32 Q2, Q2, #1
vpt.s32 LT, Q2, r11
vaddt.s32 Q2, Q2, r12
vpt.s32 GE, Q2, r4
vsubt.s32 Q2, Q2, r12
vstrw.u32 Q2, [r14,#(0)]
// Release input[252] from Q2
// Restore MVE vector registers
vpop {d8-d15}
// Restore GPRs
pop {r4-r11,lr}
bx lr

// Line count:        2302
// Instruction count: 1802