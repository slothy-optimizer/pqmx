
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
.word   57730785 // zeta^504 * 2^31 = 28678040^504 * 2^31 = 25085703 * 2^31
.word 3752846111 // zeta^504 * f(q^(-1) mod 2^32) * 2^31 = 28678040^504 * 375649793 * 2^31
.word   42601623 // zeta^508 * 2^31 = 28678040^508 * 2^31 = 32762154 * 2^31
.word 2096617833 // zeta^508 * f(q^(-1) mod 2^32) * 2^31 = 28678040^508 * 375649793 * 2^31
.word   43352521 // zeta^380 * 2^31 = 28678040^380 * 2^31 = 24111249 * 2^31
.word 3690485815 // zeta^380 * f(q^(-1) mod 2^32) * 2^31 = 28678040^380 * 375649793 * 2^31
.word   59392861 // zeta^376 * 2^31 = 28678040^376 * 2^31 = 5443354 * 2^31
.word  348348067 // zeta^376 * f(q^(-1) mod 2^32) * 2^31 = 28678040^376 * 375649793 * 2^31
.word   65052633 // zeta^444 * 2^31 = 28678040^444 * 2^31 = 11430609 * 2^31
.word 2878986791 // zeta^444 * f(q^(-1) mod 2^32) * 2^31 = 28678040^444 * 375649793 * 2^31
.word   58217677 // zeta^316 * 2^31 = 28678040^316 * 2^31 = 29824921 * 2^31
.word 4056132915 // zeta^316 * f(q^(-1) mod 2^32) * 2^31 = 28678040^316 * 375649793 * 2^31
.word   57130935 // zeta^440 * 2^31 = 28678040^440 * 2^31 = 28470806 * 2^31
.word 1821992521 // zeta^440 * f(q^(-1) mod 2^32) * 2^31 = 28678040^440 * 375649793 * 2^31
.word   14439459 // zeta^476 * 2^31 = 28678040^476 * 2^31 = 15403199 * 2^31
.word 3133213149 // zeta^476 * f(q^(-1) mod 2^32) * 2^31 = 28678040^476 * 375649793 * 2^31
.word   30030779 // zeta^348 * 2^31 = 28678040^348 * 2^31 = 32900632 * 2^31
.word 2105479749 // zeta^348 * f(q^(-1) mod 2^32) * 2^31 = 28678040^348 * 375649793 * 2^31
.word    3784291 // zeta^312 * 2^31 = 28678040^312 * 2^31 = 25309194 * 2^31
.word 1619664797 // zeta^312 * f(q^(-1) mod 2^32) * 2^31 = 28678040^312 * 375649793 * 2^31
.word   48646815 // zeta^412 * 2^31 = 28678040^412 * 2^31 = 11510556 * 2^31
.word  736619361 // zeta^412 * f(q^(-1) mod 2^32) * 2^31 = 28678040^412 * 375649793 * 2^31
.word   15892551 // zeta^284 * 2^31 = 28678040^284 * 2^31 = 17389126 * 2^31
.word 1112819129 // zeta^284 * f(q^(-1) mod 2^32) * 2^31 = 28678040^284 * 375649793 * 2^31
.word   50479773 // zeta^472 * 2^31 = 28678040^472 * 2^31 = 4264131 * 2^31
.word 2420367203 // zeta^472 * f(q^(-1) mod 2^32) * 2^31 = 28678040^472 * 375649793 * 2^31
.word   20532335 // zeta^492 * 2^31 = 28678040^492 * 2^31 = 22651623 * 2^31
.word 3597076881 // zeta^492 * f(q^(-1) mod 2^32) * 2^31 = 28678040^492 * 375649793 * 2^31
.word   46242673 // zeta^364 * 2^31 = 28678040^364 * 2^31 = 8172970 * 2^31
.word  523030159 // zeta^364 * f(q^(-1) mod 2^32) * 2^31 = 28678040^364 * 375649793 * 2^31
.word   58797193 // zeta^344 * 2^31 = 28678040^344 * 2^31 = 24307701 * 2^31
.word 3703057783 // zeta^344 * f(q^(-1) mod 2^32) * 2^31 = 28678040^344 * 375649793 * 2^31
.word   34903951 // zeta^428 * 2^31 = 28678040^428 * 2^31 = 20443666 * 2^31
.word 1308294769 // zeta^428 * f(q^(-1) mod 2^32) * 2^31 = 28678040^428 * 375649793 * 2^31
.word   48022295 // zeta^300 * 2^31 = 28678040^300 * 2^31 = 28778784 * 2^31
.word 1841701609 // zeta^300 * f(q^(-1) mod 2^32) * 2^31 = 28678040^300 * 375649793 * 2^31
.word   62080381 // zeta^408 * 2^31 = 28678040^408 * 2^31 = 6865022 * 2^31
.word  439327875 // zeta^408 * f(q^(-1) mod 2^32) * 2^31 = 28678040^408 * 375649793 * 2^31
.word   55892463 // zeta^460 * 2^31 = 28678040^460 * 2^31 = 8866965 * 2^31
.word 2714926097 // zeta^460 * f(q^(-1) mod 2^32) * 2^31 = 28678040^460 * 375649793 * 2^31
.word    5286953 // zeta^332 * 2^31 = 28678040^332 * 2^31 = 25271104 * 2^31
.word 1617227223 // zeta^332 * f(q^(-1) mod 2^32) * 2^31 = 28678040^332 * 375649793 * 2^31
.word   40872659 // zeta^280 * 2^31 = 28678040^280 * 2^31 = 32984098 * 2^31
.word 2110821165 // zeta^280 * f(q^(-1) mod 2^32) * 2^31 = 28678040^280 * 375649793 * 2^31
.word   42133307 // zeta^396 * 2^31 = 28678040^396 * 2^31 = 14019017 * 2^31
.word 3044632261 // zeta^396 * f(q^(-1) mod 2^32) * 2^31 = 28678040^396 * 375649793 * 2^31
.word   54343827 // zeta^268 * 2^31 = 28678040^268 * 2^31 = 9843973 * 2^31
.word 2777449837 // zeta^268 * f(q^(-1) mod 2^32) * 2^31 = 28678040^268 * 375649793 * 2^31
.word    6014597 // zeta^488 * 2^31 = 28678040^488 * 2^31 = 7194579 * 2^31
.word 2607901563 // zeta^488 * f(q^(-1) mod 2^32) * 2^31 = 28678040^488 * 375649793 * 2^31
.word   25291403 // zeta^500 * 2^31 = 28678040^500 * 2^31 = 355881 * 2^31
.word 2170258293 // zeta^500 * f(q^(-1) mod 2^32) * 2^31 = 28678040^500 * 375649793 * 2^31
.word   14166063 // zeta^372 * 2^31 = 28678040^372 * 2^31 = 13728463 * 2^31
.word 3026038225 // zeta^372 * f(q^(-1) mod 2^32) * 2^31 = 28678040^372 * 375649793 * 2^31
.word   31380141 // zeta^360 * 2^31 = 28678040^360 * 2^31 = 2302061 * 2^31
.word 2294804307 // zeta^360 * f(q^(-1) mod 2^32) * 2^31 = 28678040^360 * 375649793 * 2^31
.word   31709009 // zeta^436 * 2^31 = 28678040^436 * 2^31 = 21728197 * 2^31
.word 3537982127 // zeta^436 * f(q^(-1) mod 2^32) * 2^31 = 28678040^436 * 375649793 * 2^31
.word   12550399 // zeta^308 * 2^31 = 28678040^308 * 2^31 = 11713874 * 2^31
.word  749630721 // zeta^308 * f(q^(-1) mod 2^32) * 2^31 = 28678040^308 * 375649793 * 2^31
.word   21111903 // zeta^424 * 2^31 = 28678040^424 * 2^31 = 13908588 * 2^31
.word  890081697 // zeta^424 * f(q^(-1) mod 2^32) * 2^31 = 28678040^424 * 375649793 * 2^31
.word   65984707 // zeta^468 * 2^31 = 28678040^468 * 2^31 = 25787077 * 2^31
.word 3797730621 // zeta^468 * f(q^(-1) mod 2^32) * 2^31 = 28678040^468 * 375649793 * 2^31
.word   52266271 // zeta^340 * 2^31 = 28678040^340 * 2^31 = 31977548 * 2^31
.word 2046406881 // zeta^340 * f(q^(-1) mod 2^32) * 2^31 = 28678040^340 * 375649793 * 2^31
.word   12778219 // zeta^296 * 2^31 = 28678040^296 * 2^31 = 27066590 * 2^31
.word 1732129557 // zeta^296 * f(q^(-1) mod 2^32) * 2^31 = 28678040^296 * 375649793 * 2^31
.word   39517177 // zeta^404 * 2^31 = 28678040^404 * 2^31 = 14739293 * 2^31
.word 3090726407 // zeta^404 * f(q^(-1) mod 2^32) * 2^31 = 28678040^404 * 375649793 * 2^31
.word   12656259 // zeta^276 * 2^31 = 28678040^276 * 2^31 = 24450888 * 2^31
.word 1564737405 // zeta^276 * f(q^(-1) mod 2^32) * 2^31 = 28678040^276 * 375649793 * 2^31
.word   56722355 // zeta^456 * 2^31 = 28678040^456 * 2^31 = 31418183 * 2^31
.word 4158093901 // zeta^456 * f(q^(-1) mod 2^32) * 2^31 = 28678040^456 * 375649793 * 2^31
.word   27185869 // zeta^484 * 2^31 = 28678040^484 * 2^31 = 15870328 * 2^31
.word 1015623475 // zeta^484 * f(q^(-1) mod 2^32) * 2^31 = 28678040^484 * 375649793 * 2^31
.word   14750755 // zeta^356 * 2^31 = 28678040^356 * 2^31 = 27851125 * 2^31
.word 3929819613 // zeta^356 * f(q^(-1) mod 2^32) * 2^31 = 28678040^356 * 375649793 * 2^31
.word   65797823 // zeta^328 * 2^31 = 28678040^328 * 2^31 = 18723698 * 2^31
.word 1198225217 // zeta^328 * f(q^(-1) mod 2^32) * 2^31 = 28678040^328 * 375649793 * 2^31
.word   13164949 // zeta^420 * 2^31 = 28678040^420 * 2^31 = 28267567 * 2^31
.word 3956469867 // zeta^420 * f(q^(-1) mod 2^32) * 2^31 = 28678040^420 * 375649793 * 2^31
.word    1145583 // zeta^292 * 2^31 = 28678040^292 * 2^31 = 8225248 * 2^31
.word  526375697 // zeta^292 * f(q^(-1) mod 2^32) * 2^31 = 28678040^292 * 375649793 * 2^31
.word   12271567 // zeta^392 * 2^31 = 28678040^392 * 2^31 = 6528331 * 2^31
.word 2565264945 // zeta^392 * f(q^(-1) mod 2^32) * 2^31 = 28678040^392 * 375649793 * 2^31
.word   22449375 // zeta^452 * 2^31 = 28678040^452 * 2^31 = 12336210 * 2^31
.word  789457185 // zeta^452 * f(q^(-1) mod 2^32) * 2^31 = 28678040^452 * 375649793 * 2^31
.word   31982975 // zeta^324 * 2^31 = 28678040^324 * 2^31 = 33215913 * 2^31
.word 4273139841 // zeta^324 * f(q^(-1) mod 2^32) * 2^31 = 28678040^324 * 375649793 * 2^31
.word   35394733 // zeta^264 * 2^31 = 28678040^264 * 2^31 = 9731484 * 2^31
.word  622767443 // zeta^264 * f(q^(-1) mod 2^32) * 2^31 = 28678040^264 * 375649793 * 2^31
.word   23998611 // zeta^388 * 2^31 = 28678040^388 * 2^31 = 12857867 * 2^31
.word 2970324333 // zeta^388 * f(q^(-1) mod 2^32) * 2^31 = 28678040^388 * 375649793 * 2^31
.word   62038423 // zeta^260 * 2^31 = 28678040^260 * 2^31 = 24546403 * 2^31
.word 3718333545 // zeta^260 * f(q^(-1) mod 2^32) * 2^31 = 28678040^260 * 375649793 * 2^31
.word   32686385 // zeta^480 * 2^31 = 28678040^480 * 2^31 = 20044445 * 2^31
.word 3430230223 // zeta^480 * f(q^(-1) mod 2^32) * 2^31 = 28678040^480 * 375649793 * 2^31
.word   58757463 // zeta^496 * 2^31 = 28678040^496 * 2^31 = 17352831 * 2^31
.word 3257980073 // zeta^496 * f(q^(-1) mod 2^32) * 2^31 = 28678040^496 * 375649793 * 2^31
.word   41196349 // zeta^368 * 2^31 = 28678040^368 * 2^31 = 10953311 * 2^31
.word 2848442051 // zeta^368 * f(q^(-1) mod 2^32) * 2^31 = 28678040^368 * 375649793 * 2^31
.word    2430825 // zeta^352 * 2^31 = 28678040^352 * 2^31 = 18811302 * 2^31
.word 1203831447 // zeta^352 * f(q^(-1) mod 2^32) * 2^31 = 28678040^352 * 375649793 * 2^31
.word   26613973 // zeta^432 * 2^31 = 28678040^432 * 2^31 = 23642097 * 2^31
.word 3660462379 // zeta^432 * f(q^(-1) mod 2^32) * 2^31 = 28678040^432 * 375649793 * 2^31
.word    7832335 // zeta^304 * 2^31 = 28678040^304 * 2^31 = 12267508 * 2^31
.word  785060593 // zeta^304 * f(q^(-1) mod 2^32) * 2^31 = 28678040^304 * 375649793 * 2^31
.word   62228979 // zeta^416 * 2^31 = 28678040^416 * 2^31 = 20647416 * 2^31
.word 1321333773 // zeta^416 * f(q^(-1) mod 2^32) * 2^31 = 28678040^416 * 375649793 * 2^31
.word   12542317 // zeta^464 * 2^31 = 28678040^464 * 2^31 = 3271804 * 2^31
.word  209379475 // zeta^464 * f(q^(-1) mod 2^32) * 2^31 = 28678040^464 * 375649793 * 2^31
.word   18302687 // zeta^336 * 2^31 = 28678040^336 * 2^31 = 3819232 * 2^31
.word  244412193 // zeta^336 * f(q^(-1) mod 2^32) * 2^31 = 28678040^336 * 375649793 * 2^31
.word   48515911 // zeta^288 * 2^31 = 28678040^288 * 2^31 = 26823146 * 2^31
.word 1716550329 // zeta^288 * f(q^(-1) mod 2^32) * 2^31 = 28678040^288 * 375649793 * 2^31
.word   21796399 // zeta^400 * 2^31 = 28678040^400 * 2^31 = 18930340 * 2^31
.word 1211449297 // zeta^400 * f(q^(-1) mod 2^32) * 2^31 = 28678040^400 * 375649793 * 2^31
.word   27114239 // zeta^272 * 2^31 = 28678040^272 * 2^31 = 13128918 * 2^31
.word  840186625 // zeta^272 * f(q^(-1) mod 2^32) * 2^31 = 28678040^272 * 375649793 * 2^31
.word   36501331 // zeta^384 * 2^31 = 28678040^384 * 2^31 = 15854702 * 2^31
.word   17843885 // zeta^384 * f(q^(-1) mod 2^32) * 2^31 = 28678040^384 * 375649793 * 2^31
.word   23796181 // zeta^448 * 2^31 = 28678040^448 * 2^31 = 18977417 * 2^31
.word 3361945643 // zeta^448 * f(q^(-1) mod 2^32) * 2^31 = 28678040^448 * 375649793 * 2^31
.word   52637069 // zeta^320 * 2^31 = 28678040^320 * 2^31 = 30296666 * 2^31
.word 1938838643 // zeta^320 * f(q^(-1) mod 2^32) * 2^31 = 28678040^320 * 375649793 * 2^31
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
.equ pow_2_n_mod_q, 34739919
movw r3, #:lower16:pow_2_n_mod_q
movt r3, #:upper16:pow_2_n_mod_q
.equ pow_2_n_mod_q_twisted, 4294311729
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