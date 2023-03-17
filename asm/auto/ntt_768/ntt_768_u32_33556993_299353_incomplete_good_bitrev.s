
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
.word   66384763 /// zeta^512 * 2^31 = 299353^512 * 2^31 = 25038561 * 2^31
.word 3749829253 /// zeta^512 * f(q^(-1) mod 2^32) * 2^31 = 299353^512 * 375649793 * 2^31
.word     893127 /// zeta^256 * 2^31 = 299353^256 * 2^31 = 8518431 * 2^31
.word 2692621625 /// zeta^256 * f(q^(-1) mod 2^32) * 2^31 = 299353^256 * 375649793 * 2^31
.word   33393089 // zeta^  0 * 2^31 = 299353^  0 * 2^31 = 1 * 2^31
.word 2147483711 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 299353^  0 * 375649793 * 2^31
.word   33393089 // zeta^  0 * 2^31 = 299353^  0 * 2^31 = 1 * 2^31
.word 2147483711 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 299353^  0 * 375649793 * 2^31
.word   38018305 // zeta^192 * 2^31 = 299353^192 * 2^31 = 15854702 * 2^31
.word 1014623487 // zeta^192 * f(q^(-1) mod 2^32) * 2^31 = 299353^192 * 375649793 * 2^31
.word   33393089 // zeta^  0 * 2^31 = 299353^  0 * 2^31 = 1 * 2^31
.word 2147483711 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 299353^  0 * 375649793 * 2^31
.word   33393089 // zeta^  0 * 2^31 = 299353^  0 * 2^31 = 1 * 2^31
.word 2147483711 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 299353^  0 * 375649793 * 2^31
.word   38018305 // zeta^192 * 2^31 = 299353^192 * 2^31 = 15854702 * 2^31
.word 1014623487 // zeta^192 * f(q^(-1) mod 2^32) * 2^31 = 299353^192 * 375649793 * 2^31
.word   38018305 // zeta^192 * 2^31 = 299353^192 * 2^31 = 15854702 * 2^31
.word 1014623487 // zeta^192 * f(q^(-1) mod 2^32) * 2^31 = 299353^192 * 375649793 * 2^31
.word   23796181 // zeta^480 * 2^31 = 299353^480 * 2^31 = 18977417 * 2^31
.word 3361945643 // zeta^480 * f(q^(-1) mod 2^32) * 2^31 = 299353^480 * 375649793 * 2^31
.word   52637069 // zeta^672 * 2^31 = 299353^672 * 2^31 = 30296666 * 2^31
.word 1938838643 // zeta^672 * f(q^(-1) mod 2^32) * 2^31 = 299353^672 * 375649793 * 2^31
.word   23796181 // zeta^480 * 2^31 = 299353^480 * 2^31 = 18977417 * 2^31
.word 3361945643 // zeta^480 * f(q^(-1) mod 2^32) * 2^31 = 299353^480 * 375649793 * 2^31
.word   32686385 // zeta^240 * 2^31 = 299353^240 * 2^31 = 20044445 * 2^31
.word 3430230223 // zeta^240 * f(q^(-1) mod 2^32) * 2^31 = 299353^240 * 375649793 * 2^31
.word    2430825 // zeta^432 * 2^31 = 299353^432 * 2^31 = 18811302 * 2^31
.word 1203831447 // zeta^432 * f(q^(-1) mod 2^32) * 2^31 = 299353^432 * 375649793 * 2^31
.word   52637069 // zeta^672 * 2^31 = 299353^672 * 2^31 = 30296666 * 2^31
.word 1938838643 // zeta^672 * f(q^(-1) mod 2^32) * 2^31 = 299353^672 * 375649793 * 2^31
.word   62228979 // zeta^720 * 2^31 = 299353^720 * 2^31 = 20647416 * 2^31
.word 1321333773 // zeta^720 * f(q^(-1) mod 2^32) * 2^31 = 299353^720 * 375649793 * 2^31
.word   48515911 // zeta^144 * 2^31 = 299353^144 * 2^31 = 26823146 * 2^31
.word 1716550329 // zeta^144 * f(q^(-1) mod 2^32) * 2^31 = 299353^144 * 375649793 * 2^31
.word   33393089 // zeta^  0 * 2^31 = 299353^  0 * 2^31 = 1 * 2^31
.word 2147483711 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 299353^  0 * 375649793 * 2^31
.word   33393089 // zeta^  0 * 2^31 = 299353^  0 * 2^31 = 1 * 2^31
.word 2147483711 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 299353^  0 * 375649793 * 2^31
.word   38018305 // zeta^192 * 2^31 = 299353^192 * 2^31 = 15854702 * 2^31
.word 1014623487 // zeta^192 * f(q^(-1) mod 2^32) * 2^31 = 299353^192 * 375649793 * 2^31
.word   38018305 // zeta^192 * 2^31 = 299353^192 * 2^31 = 15854702 * 2^31
.word 1014623487 // zeta^192 * f(q^(-1) mod 2^32) * 2^31 = 299353^192 * 375649793 * 2^31
.word   23796181 // zeta^480 * 2^31 = 299353^480 * 2^31 = 18977417 * 2^31
.word 3361945643 // zeta^480 * f(q^(-1) mod 2^32) * 2^31 = 299353^480 * 375649793 * 2^31
.word   52637069 // zeta^672 * 2^31 = 299353^672 * 2^31 = 30296666 * 2^31
.word 1938838643 // zeta^672 * f(q^(-1) mod 2^32) * 2^31 = 299353^672 * 375649793 * 2^31
.word   23796181 // zeta^480 * 2^31 = 299353^480 * 2^31 = 18977417 * 2^31
.word 3361945643 // zeta^480 * f(q^(-1) mod 2^32) * 2^31 = 299353^480 * 375649793 * 2^31
.word   32686385 // zeta^240 * 2^31 = 299353^240 * 2^31 = 20044445 * 2^31
.word 3430230223 // zeta^240 * f(q^(-1) mod 2^32) * 2^31 = 299353^240 * 375649793 * 2^31
.word    2430825 // zeta^432 * 2^31 = 299353^432 * 2^31 = 18811302 * 2^31
.word 1203831447 // zeta^432 * f(q^(-1) mod 2^32) * 2^31 = 299353^432 * 375649793 * 2^31
.word   52637069 // zeta^672 * 2^31 = 299353^672 * 2^31 = 30296666 * 2^31
.word 1938838643 // zeta^672 * f(q^(-1) mod 2^32) * 2^31 = 299353^672 * 375649793 * 2^31
.word   62228979 // zeta^720 * 2^31 = 299353^720 * 2^31 = 20647416 * 2^31
.word 1321333773 // zeta^720 * f(q^(-1) mod 2^32) * 2^31 = 299353^720 * 375649793 * 2^31
.word   48515911 // zeta^144 * 2^31 = 299353^144 * 2^31 = 26823146 * 2^31
.word 1716550329 // zeta^144 * f(q^(-1) mod 2^32) * 2^31 = 299353^144 * 375649793 * 2^31
.word   32686385 // zeta^240 * 2^31 = 299353^240 * 2^31 = 20044445 * 2^31
.word 3430230223 // zeta^240 * f(q^(-1) mod 2^32) * 2^31 = 299353^240 * 375649793 * 2^31
.word   58757463 // zeta^504 * 2^31 = 299353^504 * 2^31 = 17352831 * 2^31
.word 3257980073 // zeta^504 * f(q^(-1) mod 2^32) * 2^31 = 299353^504 * 375649793 * 2^31
.word   41196349 // zeta^696 * 2^31 = 299353^696 * 2^31 = 10953311 * 2^31
.word 2848442051 // zeta^696 * f(q^(-1) mod 2^32) * 2^31 = 299353^696 * 375649793 * 2^31
.word    2430825 // zeta^432 * 2^31 = 299353^432 * 2^31 = 18811302 * 2^31
.word 1203831447 // zeta^432 * f(q^(-1) mod 2^32) * 2^31 = 299353^432 * 375649793 * 2^31
.word   26613973 // zeta^216 * 2^31 = 299353^216 * 2^31 = 23642097 * 2^31
.word 3660462379 // zeta^216 * f(q^(-1) mod 2^32) * 2^31 = 299353^216 * 375649793 * 2^31
.word    7832335 // zeta^408 * 2^31 = 299353^408 * 2^31 = 12267508 * 2^31
.word  785060593 // zeta^408 * f(q^(-1) mod 2^32) * 2^31 = 299353^408 * 375649793 * 2^31
.word   62228979 // zeta^720 * 2^31 = 299353^720 * 2^31 = 20647416 * 2^31
.word 1321333773 // zeta^720 * f(q^(-1) mod 2^32) * 2^31 = 299353^720 * 375649793 * 2^31
.word   12542317 // zeta^744 * 2^31 = 299353^744 * 2^31 = 3271804 * 2^31
.word  209379475 // zeta^744 * f(q^(-1) mod 2^32) * 2^31 = 299353^744 * 375649793 * 2^31
.word   18302687 // zeta^168 * 2^31 = 299353^168 * 2^31 = 3819232 * 2^31
.word  244412193 // zeta^168 * f(q^(-1) mod 2^32) * 2^31 = 299353^168 * 375649793 * 2^31
.word   48515911 // zeta^144 * 2^31 = 299353^144 * 2^31 = 26823146 * 2^31
.word 1716550329 // zeta^144 * f(q^(-1) mod 2^32) * 2^31 = 299353^144 * 375649793 * 2^31
.word   21796399 // zeta^456 * 2^31 = 299353^456 * 2^31 = 18930340 * 2^31
.word 1211449297 // zeta^456 * f(q^(-1) mod 2^32) * 2^31 = 299353^456 * 375649793 * 2^31
.word   27114239 // zeta^648 * 2^31 = 299353^648 * 2^31 = 13128918 * 2^31
.word  840186625 // zeta^648 * f(q^(-1) mod 2^32) * 2^31 = 299353^648 * 375649793 * 2^31
.word   58757463 // zeta^504 * 2^31 = 299353^504 * 2^31 = 17352831 * 2^31
.word 3257980073 // zeta^504 * f(q^(-1) mod 2^32) * 2^31 = 299353^504 * 375649793 * 2^31
.word    9383201 // zeta^252 * 2^31 = 299353^252 * 2^31 = 8471290 * 2^31
.word  542121183 // zeta^252 * f(q^(-1) mod 2^32) * 2^31 = 299353^252 * 375649793 * 2^31
.word    7721125 // zeta^444 * 2^31 = 299353^444 * 2^31 = 28113639 * 2^31
.word 3946619227 // zeta^444 * f(q^(-1) mod 2^32) * 2^31 = 299353^444 * 375649793 * 2^31
.word   41196349 // zeta^696 * 2^31 = 299353^696 * 2^31 = 10953311 * 2^31
.word 2848442051 // zeta^696 * f(q^(-1) mod 2^32) * 2^31 = 299353^696 * 375649793 * 2^31
.word    9983051 // zeta^732 * 2^31 = 299353^732 * 2^31 = 5086187 * 2^31
.word 2472974773 // zeta^732 * f(q^(-1) mod 2^32) * 2^31 = 299353^732 * 375649793 * 2^31
.word   63329695 // zeta^156 * 2^31 = 299353^156 * 2^31 = 8247799 * 2^31
.word 2675302497 // zeta^156 * f(q^(-1) mod 2^32) * 2^31 = 299353^156 * 375649793 * 2^31
.word   26613973 // zeta^216 * 2^31 = 299353^216 * 2^31 = 23642097 * 2^31
.word 3660462379 // zeta^216 * f(q^(-1) mod 2^32) * 2^31 = 299353^216 * 375649793 * 2^31
.word   16634213 // zeta^492 * 2^31 = 299353^492 * 2^31 = 29292862 * 2^31
.word 1874600091 // zeta^492 * f(q^(-1) mod 2^32) * 2^31 = 299353^492 * 375649793 * 2^31
.word    8316793 // zeta^684 * 2^31 = 299353^684 * 2^31 = 9249292 * 2^31
.word  591909511 // zeta^684 * f(q^(-1) mod 2^32) * 2^31 = 299353^684 * 375649793 * 2^31
.word    7832335 // zeta^408 * 2^31 = 299353^408 * 2^31 = 12267508 * 2^31
.word  785060593 // zeta^408 * f(q^(-1) mod 2^32) * 2^31 = 299353^408 * 375649793 * 2^31
.word    5033605 // zeta^204 * 2^31 = 299353^204 * 2^31 = 26691971 * 2^31
.word 3855639419 // zeta^204 * f(q^(-1) mod 2^32) * 2^31 = 299353^204 * 375649793 * 2^31
.word   26241327 // zeta^396 * 2^31 = 299353^396 * 2^31 = 572895 * 2^31
.word 2184146129 // zeta^396 * f(q^(-1) mod 2^32) * 2^31 = 299353^396 * 375649793 * 2^31
.word   12542317 // zeta^744 * 2^31 = 299353^744 * 2^31 = 3271804 * 2^31
.word  209379475 // zeta^744 * f(q^(-1) mod 2^32) * 2^31 = 299353^744 * 375649793 * 2^31
.word   61099389 // zeta^756 * 2^31 = 299353^756 * 2^31 = 26362414 * 2^31
.word 1687065731 // zeta^756 * f(q^(-1) mod 2^32) * 2^31 = 299353^756 * 375649793 * 2^31
.word   35733845 // zeta^180 * 2^31 = 299353^180 * 2^31 = 31254932 * 2^31
.word 2000162987 // zeta^180 * f(q^(-1) mod 2^32) * 2^31 = 299353^180 * 375649793 * 2^31
.word   18302687 // zeta^168 * 2^31 = 299353^168 * 2^31 = 3819232 * 2^31
.word  244412193 // zeta^168 * f(q^(-1) mod 2^32) * 2^31 = 299353^168 * 375649793 * 2^31
.word   46002083 // zeta^468 * 2^31 = 299353^468 * 2^31 = 19648405 * 2^31
.word 3404885597 // zeta^468 * f(q^(-1) mod 2^32) * 2^31 = 299353^468 * 375649793 * 2^31
.word   54335767 // zeta^660 * 2^31 = 299353^660 * 2^31 = 6490403 * 2^31
.word 2562837737 // zeta^660 * f(q^(-1) mod 2^32) * 2^31 = 299353^660 * 375649793 * 2^31
.word   21796399 // zeta^456 * 2^31 = 299353^456 * 2^31 = 18930340 * 2^31
.word 1211449297 // zeta^456 * f(q^(-1) mod 2^32) * 2^31 = 299353^456 * 375649793 * 2^31
.word   10391631 // zeta^228 * 2^31 = 299353^228 * 2^31 = 2138810 * 2^31
.word  136873393 // zeta^228 * f(q^(-1) mod 2^32) * 2^31 = 299353^228 * 375649793 * 2^31
.word    1316163 // zeta^420 * 2^31 = 299353^420 * 2^31 = 14833295 * 2^31
.word 3096742077 // zeta^420 * f(q^(-1) mod 2^32) * 2^31 = 299353^420 * 375649793 * 2^31
.word   27114239 // zeta^648 * 2^31 = 299353^648 * 2^31 = 13128918 * 2^31
.word  840186625 // zeta^648 * f(q^(-1) mod 2^32) * 2^31 = 299353^648 * 375649793 * 2^31
.word   54842419 // zeta^708 * 2^31 = 299353^708 * 2^31 = 27028662 * 2^31
.word 1729702349 // zeta^708 * f(q^(-1) mod 2^32) * 2^31 = 299353^708 * 375649793 * 2^31
.word   31719253 // zeta^132 * 2^31 = 299353^132 * 2^31 = 23825509 * 2^31
.word 3672199851 // zeta^132 * f(q^(-1) mod 2^32) * 2^31 = 299353^132 * 375649793 * 2^31
.text
.align 4
roots_addr: .word roots
.syntax unified
.type ntt_768_u32_33556993_299353_incomplete_good_bitrev, %function
.global ntt_768_u32_33556993_299353_incomplete_good_bitrev
ntt_768_u32_33556993_299353_incomplete_good_bitrev:
// Save GPRs
push {r4-r11,lr}
// Save MVE vector registers
vpush {d8-d15}
// Use r14 as marker for r0 + 1008
add r14, r0, #1008
// Use r12 as marker for r0 + 2016
add r12, r14, #1008
// Use r11 as marker for r0 + 3024
add r11, r12, #1008
.equ modulus, 33556993
movw r10, #:lower16:modulus
movt r10, #:upper16:modulus
ldr r9, roots_addr
ldrd r8, r7, [r9], #+8
ldrd r6, r5, [r9], #+8
// input[256]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 4)]
// input[512]: Load as Q1
vldrw.u32 Q1, [r12, #(4 * 8)]
vsub.s32 Q2, Q0, Q1
vqrdmulh.s32 Q3, Q2, r8
vadd.s32 Q5, Q0, Q1
// Release input[256] from Q0
vmul.u32 Q4, Q2, r7
// input[0]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 0)]
vqrdmlah.s32 Q3, Q4, r10
vsub.s32 Q4, Q0, Q1
// Release input[512] from Q1
// input[640]: Load as Q1
vldrw.u32 Q1, [r11, #(4 * -116)]
vadd.s32 Q6, Q4, Q3
// input[128]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -124)]
vsub.s32 Q4, Q4, Q3
vstrw.u32 Q6, [r14,#(16)]
vsub.s32 Q4, Q4, Q2
vstrw.u32 Q4, [r12,#(32)]
vadd.s32 Q5, Q5, Q0
// Release input[0] from Q0
vstrw.u32 Q5, [r0,#(0)]
// input[640]: Already loaded as Q1
// input[128]: Already loaded as Q7
vsub.s32 Q0, Q1, Q7
vqrdmulh.s32 Q2, Q0, r8
vadd.s32 Q4, Q1, Q7
// Release input[640] from Q1
vmul.u32 Q3, Q0, r7
// input[384]: Load as Q1
vldrw.u32 Q1, [r12, #(4 * -120)]
vqrdmlah.s32 Q2, Q3, r10
vsub.s32 Q3, Q1, Q7
// Release input[128] from Q7
// input[64]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 64)]
vadd.s32 Q6, Q3, Q2
// input[320]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * 68)]
vsub.s32 Q3, Q3, Q2
vstrw.u32 Q6, [r11,#(-464)]
vsub.s32 Q3, Q3, Q0
vstrw.u32 Q3, [r14,#(-496)]
vadd.s32 Q4, Q4, Q1
// Release input[384] from Q1
vstrw.u32 Q4, [r12,#(-480)]
// input[64]: Already loaded as Q5
// input[320]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[64] from Q5
vmul.u32 Q2, Q0, r7
// input[576]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * 72)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[320] from Q7
// input[448]: Load as Q5
vldrw.u32 Q5, [r12, #(4 * -56)]
vadd.s32 Q6, Q2, Q1
// input[704]: Load as Q7
vldrw.u32 Q7, [r11, #(4 * -52)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r0,#(256)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(272)]
vadd.s32 Q3, Q3, Q4
// Release input[576] from Q4
vstrw.u32 Q3, [r12,#(288)]
// input[448]: Already loaded as Q5
// input[704]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[448] from Q5
vmul.u32 Q2, Q0, r7
// input[192]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -60)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[704] from Q7
// input[544]: Load as Q5
vldrw.u32 Q5, [r12, #(4 * 40)]
vadd.s32 Q6, Q2, Q1
// input[32]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 32)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r12,#(-224)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r11,#(-208)]
vadd.s32 Q3, Q3, Q4
// Release input[192] from Q4
vstrw.u32 Q3, [r14,#(-240)]
// input[544]: Already loaded as Q5
// input[32]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[544] from Q5
vmul.u32 Q2, Q0, r7
// input[288]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 36)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[32] from Q7
// input[160]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -92)]
vadd.s32 Q6, Q2, Q1
// input[416]: Load as Q7
vldrw.u32 Q7, [r12, #(4 * -88)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r12,#(160)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(128)]
vadd.s32 Q3, Q3, Q4
// Release input[288] from Q4
vstrw.u32 Q3, [r14,#(144)]
// input[160]: Already loaded as Q5
// input[416]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[160] from Q5
vmul.u32 Q2, Q0, r7
// input[672]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -84)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[416] from Q7
// input[352]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 100)]
vadd.s32 Q6, Q2, Q1
// input[608]: Load as Q7
vldrw.u32 Q7, [r12, #(4 * 104)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(-368)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r12,#(-352)]
vadd.s32 Q3, Q3, Q4
// Release input[672] from Q4
vstrw.u32 Q3, [r11,#(-336)]
// input[352]: Already loaded as Q5
// input[608]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[352] from Q5
vmul.u32 Q2, Q0, r7
// input[96]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 96)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[608] from Q7
// input[736]: Load as Q5
vldrw.u32 Q5, [r11, #(4 * -20)]
vadd.s32 Q6, Q2, Q1
// input[224]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -28)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(400)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r12,#(416)]
vadd.s32 Q3, Q3, Q4
// Release input[96] from Q4
vstrw.u32 Q3, [r0,#(384)]
// input[736]: Already loaded as Q5
// input[224]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[736] from Q5
vmul.u32 Q2, Q0, r7
// input[480]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * -24)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[224] from Q7
// input[16]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 16)]
vadd.s32 Q6, Q2, Q1
// input[272]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * 20)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r11,#(-80)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-112)]
vadd.s32 Q3, Q3, Q4
// Release input[480] from Q4
vstrw.u32 Q3, [r12,#(-96)]
// input[16]: Already loaded as Q5
// input[272]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[16] from Q5
vmul.u32 Q2, Q0, r7
// input[528]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * 24)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[272] from Q7
// input[400]: Load as Q5
vldrw.u32 Q5, [r12, #(4 * -104)]
vadd.s32 Q6, Q2, Q1
// input[656]: Load as Q7
vldrw.u32 Q7, [r11, #(4 * -100)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r0,#(64)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(80)]
vadd.s32 Q3, Q3, Q4
// Release input[528] from Q4
vstrw.u32 Q3, [r12,#(96)]
// input[400]: Already loaded as Q5
// input[656]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[400] from Q5
vmul.u32 Q2, Q0, r7
// input[144]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -108)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[656] from Q7
// input[592]: Load as Q5
vldrw.u32 Q5, [r12, #(4 * 88)]
vadd.s32 Q6, Q2, Q1
// input[80]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 80)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r12,#(-416)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r11,#(-400)]
vadd.s32 Q3, Q3, Q4
// Release input[144] from Q4
vstrw.u32 Q3, [r14,#(-432)]
// input[592]: Already loaded as Q5
// input[80]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[592] from Q5
vmul.u32 Q2, Q0, r7
// input[336]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 84)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[80] from Q7
// input[208]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -44)]
vadd.s32 Q6, Q2, Q1
// input[464]: Load as Q7
vldrw.u32 Q7, [r12, #(4 * -40)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r12,#(352)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(320)]
vadd.s32 Q3, Q3, Q4
// Release input[336] from Q4
vstrw.u32 Q3, [r14,#(336)]
// input[208]: Already loaded as Q5
// input[464]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[208] from Q5
vmul.u32 Q2, Q0, r7
// input[720]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -36)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[464] from Q7
// input[304]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 52)]
vadd.s32 Q6, Q2, Q1
// input[560]: Load as Q7
vldrw.u32 Q7, [r12, #(4 * 56)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(-176)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r12,#(-160)]
vadd.s32 Q3, Q3, Q4
// Release input[720] from Q4
vstrw.u32 Q3, [r11,#(-144)]
// input[304]: Already loaded as Q5
// input[560]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[304] from Q5
vmul.u32 Q2, Q0, r7
// input[48]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 48)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[560] from Q7
// input[688]: Load as Q5
vldrw.u32 Q5, [r11, #(4 * -68)]
vadd.s32 Q6, Q2, Q1
// input[176]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -76)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(208)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r12,#(224)]
vadd.s32 Q3, Q3, Q4
// Release input[48] from Q4
vstrw.u32 Q3, [r0,#(192)]
// input[688]: Already loaded as Q5
// input[176]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[688] from Q5
vmul.u32 Q2, Q0, r7
// input[432]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * -72)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[176] from Q7
// input[112]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 112)]
vadd.s32 Q6, Q2, Q1
// input[368]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * 116)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r11,#(-272)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-304)]
vadd.s32 Q3, Q3, Q4
// Release input[432] from Q4
vstrw.u32 Q3, [r12,#(-288)]
// input[112]: Already loaded as Q5
// input[368]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[112] from Q5
vmul.u32 Q2, Q0, r7
// input[624]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * 120)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[368] from Q7
// input[496]: Load as Q5
vldrw.u32 Q5, [r12, #(4 * -8)]
vadd.s32 Q6, Q2, Q1
// input[752]: Load as Q7
vldrw.u32 Q7, [r11, #(4 * -4)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r0,#(448)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(464)]
vadd.s32 Q3, Q3, Q4
// Release input[624] from Q4
vstrw.u32 Q3, [r12,#(480)]
// input[496]: Already loaded as Q5
// input[752]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[496] from Q5
vmul.u32 Q2, Q0, r7
// input[240]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -12)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[752] from Q7
// input[520]: Load as Q5
vldrw.u32 Q5, [r12, #(4 * 16)]
vadd.s32 Q6, Q2, Q1
// input[8]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 8)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r12,#(-32)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r11,#(-16)]
vadd.s32 Q3, Q3, Q4
// Release input[240] from Q4
vstrw.u32 Q3, [r14,#(-48)]
// input[520]: Already loaded as Q5
// input[8]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[520] from Q5
vmul.u32 Q2, Q0, r7
// input[264]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 12)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[8] from Q7
// input[136]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -116)]
vadd.s32 Q6, Q2, Q1
// input[392]: Load as Q7
vldrw.u32 Q7, [r12, #(4 * -112)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r12,#(64)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(32)]
vadd.s32 Q3, Q3, Q4
// Release input[264] from Q4
vstrw.u32 Q3, [r14,#(48)]
// input[136]: Already loaded as Q5
// input[392]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[136] from Q5
vmul.u32 Q2, Q0, r7
// input[648]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -108)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[392] from Q7
// input[328]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 76)]
vadd.s32 Q6, Q2, Q1
// input[584]: Load as Q7
vldrw.u32 Q7, [r12, #(4 * 80)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(-464)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r12,#(-448)]
vadd.s32 Q3, Q3, Q4
// Release input[648] from Q4
vstrw.u32 Q3, [r11,#(-432)]
// input[328]: Already loaded as Q5
// input[584]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[328] from Q5
vmul.u32 Q2, Q0, r7
// input[72]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 72)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[584] from Q7
// input[712]: Load as Q5
vldrw.u32 Q5, [r11, #(4 * -44)]
vadd.s32 Q6, Q2, Q1
// input[200]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -52)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(304)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r12,#(320)]
vadd.s32 Q3, Q3, Q4
// Release input[72] from Q4
vstrw.u32 Q3, [r0,#(288)]
// input[712]: Already loaded as Q5
// input[200]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[712] from Q5
vmul.u32 Q2, Q0, r7
// input[456]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * -48)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[200] from Q7
// input[40]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 40)]
vadd.s32 Q6, Q2, Q1
// input[296]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * 44)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r11,#(-176)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-208)]
vadd.s32 Q3, Q3, Q4
// Release input[456] from Q4
vstrw.u32 Q3, [r12,#(-192)]
// input[40]: Already loaded as Q5
// input[296]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[40] from Q5
vmul.u32 Q2, Q0, r7
// input[552]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * 48)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[296] from Q7
// input[424]: Load as Q5
vldrw.u32 Q5, [r12, #(4 * -80)]
vadd.s32 Q6, Q2, Q1
// input[680]: Load as Q7
vldrw.u32 Q7, [r11, #(4 * -76)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r0,#(160)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(176)]
vadd.s32 Q3, Q3, Q4
// Release input[552] from Q4
vstrw.u32 Q3, [r12,#(192)]
// input[424]: Already loaded as Q5
// input[680]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[424] from Q5
vmul.u32 Q2, Q0, r7
// input[168]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -84)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[680] from Q7
// input[616]: Load as Q5
vldrw.u32 Q5, [r12, #(4 * 112)]
vadd.s32 Q6, Q2, Q1
// input[104]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 104)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r12,#(-320)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r11,#(-304)]
vadd.s32 Q3, Q3, Q4
// Release input[168] from Q4
vstrw.u32 Q3, [r14,#(-336)]
// input[616]: Already loaded as Q5
// input[104]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[616] from Q5
vmul.u32 Q2, Q0, r7
// input[360]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 108)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[104] from Q7
// input[232]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -20)]
vadd.s32 Q6, Q2, Q1
// input[488]: Load as Q7
vldrw.u32 Q7, [r12, #(4 * -16)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r12,#(448)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(416)]
vadd.s32 Q3, Q3, Q4
// Release input[360] from Q4
vstrw.u32 Q3, [r14,#(432)]
// input[232]: Already loaded as Q5
// input[488]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[232] from Q5
vmul.u32 Q2, Q0, r7
// input[744]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -12)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[488] from Q7
// input[280]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 28)]
vadd.s32 Q6, Q2, Q1
// input[536]: Load as Q7
vldrw.u32 Q7, [r12, #(4 * 32)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(-80)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r12,#(-64)]
vadd.s32 Q3, Q3, Q4
// Release input[744] from Q4
vstrw.u32 Q3, [r11,#(-48)]
// input[280]: Already loaded as Q5
// input[536]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[280] from Q5
vmul.u32 Q2, Q0, r7
// input[24]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 24)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[536] from Q7
// input[664]: Load as Q5
vldrw.u32 Q5, [r11, #(4 * -92)]
vadd.s32 Q6, Q2, Q1
// input[152]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -100)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(112)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r12,#(128)]
vadd.s32 Q3, Q3, Q4
// Release input[24] from Q4
vstrw.u32 Q3, [r0,#(96)]
// input[664]: Already loaded as Q5
// input[152]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[664] from Q5
vmul.u32 Q2, Q0, r7
// input[408]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * -96)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[152] from Q7
// input[88]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 88)]
vadd.s32 Q6, Q2, Q1
// input[344]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * 92)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r11,#(-368)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-400)]
vadd.s32 Q3, Q3, Q4
// Release input[408] from Q4
vstrw.u32 Q3, [r12,#(-384)]
// input[88]: Already loaded as Q5
// input[344]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[88] from Q5
vmul.u32 Q2, Q0, r7
// input[600]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * 96)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[344] from Q7
// input[472]: Load as Q5
vldrw.u32 Q5, [r12, #(4 * -32)]
vadd.s32 Q6, Q2, Q1
// input[728]: Load as Q7
vldrw.u32 Q7, [r11, #(4 * -28)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r0,#(352)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(368)]
vadd.s32 Q3, Q3, Q4
// Release input[600] from Q4
vstrw.u32 Q3, [r12,#(384)]
// input[472]: Already loaded as Q5
// input[728]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[472] from Q5
vmul.u32 Q2, Q0, r7
// input[216]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -36)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[728] from Q7
// input[568]: Load as Q5
vldrw.u32 Q5, [r12, #(4 * 64)]
vadd.s32 Q6, Q2, Q1
// input[56]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 56)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r12,#(-128)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r11,#(-112)]
vadd.s32 Q3, Q3, Q4
// Release input[216] from Q4
vstrw.u32 Q3, [r14,#(-144)]
// input[568]: Already loaded as Q5
// input[56]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[568] from Q5
vmul.u32 Q2, Q0, r7
// input[312]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 60)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[56] from Q7
// input[184]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -68)]
vadd.s32 Q6, Q2, Q1
// input[440]: Load as Q7
vldrw.u32 Q7, [r12, #(4 * -64)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r12,#(256)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(224)]
vadd.s32 Q3, Q3, Q4
// Release input[312] from Q4
vstrw.u32 Q3, [r14,#(240)]
// input[184]: Already loaded as Q5
// input[440]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[184] from Q5
vmul.u32 Q2, Q0, r7
// input[696]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -60)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[440] from Q7
// input[376]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 124)]
vadd.s32 Q6, Q2, Q1
// input[632]: Load as Q7
vldrw.u32 Q7, [r11, #(4 * -124)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(-272)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r12,#(-256)]
vadd.s32 Q3, Q3, Q4
// Release input[696] from Q4
vstrw.u32 Q3, [r11,#(-240)]
// input[376]: Already loaded as Q5
// input[632]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[376] from Q5
vmul.u32 Q2, Q0, r7
// input[120]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 120)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[632] from Q7
// input[760]: Load as Q5
vldrw.u32 Q5, [r11, #(4 * 4)]
vadd.s32 Q6, Q2, Q1
// input[248]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -4)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(496)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r11,#(-496)]
vadd.s32 Q3, Q3, Q4
// Release input[120] from Q4
vstrw.u32 Q3, [r0,#(480)]
// input[760]: Already loaded as Q5
// input[248]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[760] from Q5
vmul.u32 Q2, Q0, r7
// input[504]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * 0)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[248] from Q7
// input[4]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 4)]
vadd.s32 Q6, Q2, Q1
// input[260]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * 8)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r11,#(16)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-16)]
vadd.s32 Q3, Q3, Q4
// Release input[504] from Q4
vstrw.u32 Q3, [r12,#(0)]
// input[4]: Already loaded as Q5
// input[260]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[4] from Q5
vmul.u32 Q2, Q0, r7
// input[516]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * 12)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[260] from Q7
// input[388]: Load as Q5
vldrw.u32 Q5, [r12, #(4 * -116)]
vadd.s32 Q6, Q2, Q1
// input[644]: Load as Q7
vldrw.u32 Q7, [r11, #(4 * -112)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r0,#(16)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(32)]
vadd.s32 Q3, Q3, Q4
// Release input[516] from Q4
vstrw.u32 Q3, [r12,#(48)]
// input[388]: Already loaded as Q5
// input[644]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[388] from Q5
vmul.u32 Q2, Q0, r7
// input[132]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -120)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[644] from Q7
// input[580]: Load as Q5
vldrw.u32 Q5, [r12, #(4 * 76)]
vadd.s32 Q6, Q2, Q1
// input[68]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 68)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r12,#(-464)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r11,#(-448)]
vadd.s32 Q3, Q3, Q4
// Release input[132] from Q4
vstrw.u32 Q3, [r14,#(-480)]
// input[580]: Already loaded as Q5
// input[68]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[580] from Q5
vmul.u32 Q2, Q0, r7
// input[324]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 72)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[68] from Q7
// input[196]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -56)]
vadd.s32 Q6, Q2, Q1
// input[452]: Load as Q7
vldrw.u32 Q7, [r12, #(4 * -52)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r12,#(304)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(272)]
vadd.s32 Q3, Q3, Q4
// Release input[324] from Q4
vstrw.u32 Q3, [r14,#(288)]
// input[196]: Already loaded as Q5
// input[452]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[196] from Q5
vmul.u32 Q2, Q0, r7
// input[708]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -48)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[452] from Q7
// input[292]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 40)]
vadd.s32 Q6, Q2, Q1
// input[548]: Load as Q7
vldrw.u32 Q7, [r12, #(4 * 44)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(-224)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r12,#(-208)]
vadd.s32 Q3, Q3, Q4
// Release input[708] from Q4
vstrw.u32 Q3, [r11,#(-192)]
// input[292]: Already loaded as Q5
// input[548]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[292] from Q5
vmul.u32 Q2, Q0, r7
// input[36]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 36)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[548] from Q7
// input[676]: Load as Q5
vldrw.u32 Q5, [r11, #(4 * -80)]
vadd.s32 Q6, Q2, Q1
// input[164]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -88)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(160)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r12,#(176)]
vadd.s32 Q3, Q3, Q4
// Release input[36] from Q4
vstrw.u32 Q3, [r0,#(144)]
// input[676]: Already loaded as Q5
// input[164]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[676] from Q5
vmul.u32 Q2, Q0, r7
// input[420]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * -84)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[164] from Q7
// input[100]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 100)]
vadd.s32 Q6, Q2, Q1
// input[356]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * 104)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r11,#(-320)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-352)]
vadd.s32 Q3, Q3, Q4
// Release input[420] from Q4
vstrw.u32 Q3, [r12,#(-336)]
// input[100]: Already loaded as Q5
// input[356]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[100] from Q5
vmul.u32 Q2, Q0, r7
// input[612]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * 108)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[356] from Q7
// input[484]: Load as Q5
vldrw.u32 Q5, [r12, #(4 * -20)]
vadd.s32 Q6, Q2, Q1
// input[740]: Load as Q7
vldrw.u32 Q7, [r11, #(4 * -16)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r0,#(400)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(416)]
vadd.s32 Q3, Q3, Q4
// Release input[612] from Q4
vstrw.u32 Q3, [r12,#(432)]
// input[484]: Already loaded as Q5
// input[740]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[484] from Q5
vmul.u32 Q2, Q0, r7
// input[228]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -24)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[740] from Q7
// input[532]: Load as Q5
vldrw.u32 Q5, [r12, #(4 * 28)]
vadd.s32 Q6, Q2, Q1
// input[20]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 20)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r12,#(-80)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r11,#(-64)]
vadd.s32 Q3, Q3, Q4
// Release input[228] from Q4
vstrw.u32 Q3, [r14,#(-96)]
// input[532]: Already loaded as Q5
// input[20]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[532] from Q5
vmul.u32 Q2, Q0, r7
// input[276]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 24)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[20] from Q7
// input[148]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -104)]
vadd.s32 Q6, Q2, Q1
// input[404]: Load as Q7
vldrw.u32 Q7, [r12, #(4 * -100)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r12,#(112)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(80)]
vadd.s32 Q3, Q3, Q4
// Release input[276] from Q4
vstrw.u32 Q3, [r14,#(96)]
// input[148]: Already loaded as Q5
// input[404]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[148] from Q5
vmul.u32 Q2, Q0, r7
// input[660]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -96)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[404] from Q7
// input[340]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 88)]
vadd.s32 Q6, Q2, Q1
// input[596]: Load as Q7
vldrw.u32 Q7, [r12, #(4 * 92)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(-416)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r12,#(-400)]
vadd.s32 Q3, Q3, Q4
// Release input[660] from Q4
vstrw.u32 Q3, [r11,#(-384)]
// input[340]: Already loaded as Q5
// input[596]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[340] from Q5
vmul.u32 Q2, Q0, r7
// input[84]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 84)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[596] from Q7
// input[724]: Load as Q5
vldrw.u32 Q5, [r11, #(4 * -32)]
vadd.s32 Q6, Q2, Q1
// input[212]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -40)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(352)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r12,#(368)]
vadd.s32 Q3, Q3, Q4
// Release input[84] from Q4
vstrw.u32 Q3, [r0,#(336)]
// input[724]: Already loaded as Q5
// input[212]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[724] from Q5
vmul.u32 Q2, Q0, r7
// input[468]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * -36)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[212] from Q7
// input[52]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 52)]
vadd.s32 Q6, Q2, Q1
// input[308]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * 56)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r11,#(-128)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-160)]
vadd.s32 Q3, Q3, Q4
// Release input[468] from Q4
vstrw.u32 Q3, [r12,#(-144)]
// input[52]: Already loaded as Q5
// input[308]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[52] from Q5
vmul.u32 Q2, Q0, r7
// input[564]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * 60)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[308] from Q7
// input[436]: Load as Q5
vldrw.u32 Q5, [r12, #(4 * -68)]
vadd.s32 Q6, Q2, Q1
// input[692]: Load as Q7
vldrw.u32 Q7, [r11, #(4 * -64)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r0,#(208)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(224)]
vadd.s32 Q3, Q3, Q4
// Release input[564] from Q4
vstrw.u32 Q3, [r12,#(240)]
// input[436]: Already loaded as Q5
// input[692]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[436] from Q5
vmul.u32 Q2, Q0, r7
// input[180]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -72)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[692] from Q7
// input[628]: Load as Q5
vldrw.u32 Q5, [r12, #(4 * 124)]
vadd.s32 Q6, Q2, Q1
// input[116]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 116)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r12,#(-272)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r11,#(-256)]
vadd.s32 Q3, Q3, Q4
// Release input[180] from Q4
vstrw.u32 Q3, [r14,#(-288)]
// input[628]: Already loaded as Q5
// input[116]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[628] from Q5
vmul.u32 Q2, Q0, r7
// input[372]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 120)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[116] from Q7
// input[244]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -8)]
vadd.s32 Q6, Q2, Q1
// input[500]: Load as Q7
vldrw.u32 Q7, [r12, #(4 * -4)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r12,#(496)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(464)]
vadd.s32 Q3, Q3, Q4
// Release input[372] from Q4
vstrw.u32 Q3, [r14,#(480)]
// input[244]: Already loaded as Q5
// input[500]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[244] from Q5
vmul.u32 Q2, Q0, r7
// input[756]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * 0)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[500] from Q7
// input[268]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 16)]
vadd.s32 Q6, Q2, Q1
// input[524]: Load as Q7
vldrw.u32 Q7, [r12, #(4 * 20)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(-32)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r12,#(-16)]
vadd.s32 Q3, Q3, Q4
// Release input[756] from Q4
vstrw.u32 Q3, [r11,#(0)]
// input[268]: Already loaded as Q5
// input[524]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[268] from Q5
vmul.u32 Q2, Q0, r7
// input[12]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 12)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[524] from Q7
// input[652]: Load as Q5
vldrw.u32 Q5, [r11, #(4 * -104)]
vadd.s32 Q6, Q2, Q1
// input[140]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -112)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(64)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r12,#(80)]
vadd.s32 Q3, Q3, Q4
// Release input[12] from Q4
vstrw.u32 Q3, [r0,#(48)]
// input[652]: Already loaded as Q5
// input[140]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[652] from Q5
vmul.u32 Q2, Q0, r7
// input[396]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * -108)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[140] from Q7
// input[76]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 76)]
vadd.s32 Q6, Q2, Q1
// input[332]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * 80)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r11,#(-416)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-448)]
vadd.s32 Q3, Q3, Q4
// Release input[396] from Q4
vstrw.u32 Q3, [r12,#(-432)]
// input[76]: Already loaded as Q5
// input[332]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[76] from Q5
vmul.u32 Q2, Q0, r7
// input[588]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * 84)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[332] from Q7
// input[460]: Load as Q5
vldrw.u32 Q5, [r12, #(4 * -44)]
vadd.s32 Q6, Q2, Q1
// input[716]: Load as Q7
vldrw.u32 Q7, [r11, #(4 * -40)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r0,#(304)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(320)]
vadd.s32 Q3, Q3, Q4
// Release input[588] from Q4
vstrw.u32 Q3, [r12,#(336)]
// input[460]: Already loaded as Q5
// input[716]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[460] from Q5
vmul.u32 Q2, Q0, r7
// input[204]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -48)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[716] from Q7
// input[556]: Load as Q5
vldrw.u32 Q5, [r12, #(4 * 52)]
vadd.s32 Q6, Q2, Q1
// input[44]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 44)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r12,#(-176)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r11,#(-160)]
vadd.s32 Q3, Q3, Q4
// Release input[204] from Q4
vstrw.u32 Q3, [r14,#(-192)]
// input[556]: Already loaded as Q5
// input[44]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[556] from Q5
vmul.u32 Q2, Q0, r7
// input[300]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 48)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[44] from Q7
// input[172]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -80)]
vadd.s32 Q6, Q2, Q1
// input[428]: Load as Q7
vldrw.u32 Q7, [r12, #(4 * -76)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r12,#(208)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(176)]
vadd.s32 Q3, Q3, Q4
// Release input[300] from Q4
vstrw.u32 Q3, [r14,#(192)]
// input[172]: Already loaded as Q5
// input[428]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[172] from Q5
vmul.u32 Q2, Q0, r7
// input[684]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -72)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[428] from Q7
// input[364]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 112)]
vadd.s32 Q6, Q2, Q1
// input[620]: Load as Q7
vldrw.u32 Q7, [r12, #(4 * 116)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(-320)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r12,#(-304)]
vadd.s32 Q3, Q3, Q4
// Release input[684] from Q4
vstrw.u32 Q3, [r11,#(-288)]
// input[364]: Already loaded as Q5
// input[620]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[364] from Q5
vmul.u32 Q2, Q0, r7
// input[108]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 108)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[620] from Q7
// input[748]: Load as Q5
vldrw.u32 Q5, [r11, #(4 * -8)]
vadd.s32 Q6, Q2, Q1
// input[236]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -16)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(448)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r12,#(464)]
vadd.s32 Q3, Q3, Q4
// Release input[108] from Q4
vstrw.u32 Q3, [r0,#(432)]
// input[748]: Already loaded as Q5
// input[236]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[748] from Q5
vmul.u32 Q2, Q0, r7
// input[492]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * -12)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[236] from Q7
// input[28]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 28)]
vadd.s32 Q6, Q2, Q1
// input[284]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * 32)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r11,#(-32)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-64)]
vadd.s32 Q3, Q3, Q4
// Release input[492] from Q4
vstrw.u32 Q3, [r12,#(-48)]
// input[28]: Already loaded as Q5
// input[284]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[28] from Q5
vmul.u32 Q2, Q0, r7
// input[540]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * 36)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[284] from Q7
// input[412]: Load as Q5
vldrw.u32 Q5, [r12, #(4 * -92)]
vadd.s32 Q6, Q2, Q1
// input[668]: Load as Q7
vldrw.u32 Q7, [r11, #(4 * -88)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r0,#(112)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(128)]
vadd.s32 Q3, Q3, Q4
// Release input[540] from Q4
vstrw.u32 Q3, [r12,#(144)]
// input[412]: Already loaded as Q5
// input[668]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[412] from Q5
vmul.u32 Q2, Q0, r7
// input[156]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -96)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[668] from Q7
// input[604]: Load as Q5
vldrw.u32 Q5, [r12, #(4 * 100)]
vadd.s32 Q6, Q2, Q1
// input[92]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 92)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r12,#(-368)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r11,#(-352)]
vadd.s32 Q3, Q3, Q4
// Release input[156] from Q4
vstrw.u32 Q3, [r14,#(-384)]
// input[604]: Already loaded as Q5
// input[92]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[604] from Q5
vmul.u32 Q2, Q0, r7
// input[348]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 96)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[92] from Q7
// input[220]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -32)]
vadd.s32 Q6, Q2, Q1
// input[476]: Load as Q7
vldrw.u32 Q7, [r12, #(4 * -28)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r12,#(400)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(368)]
vadd.s32 Q3, Q3, Q4
// Release input[348] from Q4
vstrw.u32 Q3, [r14,#(384)]
// input[220]: Already loaded as Q5
// input[476]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[220] from Q5
vmul.u32 Q2, Q0, r7
// input[732]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -24)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[476] from Q7
// input[316]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 64)]
vadd.s32 Q6, Q2, Q1
// input[572]: Load as Q7
vldrw.u32 Q7, [r12, #(4 * 68)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(-128)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r12,#(-112)]
vadd.s32 Q3, Q3, Q4
// Release input[732] from Q4
vstrw.u32 Q3, [r11,#(-96)]
// input[316]: Already loaded as Q5
// input[572]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[316] from Q5
vmul.u32 Q2, Q0, r7
// input[60]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 60)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[572] from Q7
// input[700]: Load as Q5
vldrw.u32 Q5, [r11, #(4 * -56)]
vadd.s32 Q6, Q2, Q1
// input[188]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -64)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(256)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r12,#(272)]
vadd.s32 Q3, Q3, Q4
// Release input[60] from Q4
vstrw.u32 Q3, [r0,#(240)]
// input[700]: Already loaded as Q5
// input[188]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[700] from Q5
vmul.u32 Q2, Q0, r7
// input[444]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * -60)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[188] from Q7
// input[124]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 124)]
vadd.s32 Q6, Q2, Q1
// input[380]: Load as Q7
vldrw.u32 Q7, [r12, #(4 * -124)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r11,#(-224)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-256)]
vadd.s32 Q3, Q3, Q4
// Release input[444] from Q4
vstrw.u32 Q3, [r12,#(-240)]
// input[124]: Already loaded as Q5
// input[380]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[124] from Q5
vmul.u32 Q2, Q0, r7
// input[636]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -120)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[380] from Q7
// input[508]: Load as Q5
vldrw.u32 Q5, [r12, #(4 * 4)]
vadd.s32 Q6, Q2, Q1
// input[764]: Load as Q7
vldrw.u32 Q7, [r11, #(4 * 8)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r0,#(496)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r12,#(-496)]
vadd.s32 Q3, Q3, Q4
// Release input[636] from Q4
vstrw.u32 Q3, [r11,#(-480)]
// input[508]: Already loaded as Q5
// input[764]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r8
vadd.s32 Q3, Q5, Q7
// Release input[508] from Q5
vmul.u32 Q2, Q0, r7
// input[252]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 0)]
vqrdmlah.s32 Q1, Q2, r10
vsub.s32 Q2, Q4, Q7
// Release input[764] from Q7
vadd.s32 Q5, Q2, Q1
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q5, [r12,#(16)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r11,#(32)]
vadd.s32 Q3, Q3, Q4
// Release input[252] from Q4
vstrw.u32 Q3, [r14,#(0)]
ldrd r8, r7, [r9], #+8
ldrd r6, r5, [r9], #+8
ldrd r4, r3, [r9], #+8
// input[264]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 12)]
// input[12]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 12)]
vsub.s32 Q2, Q0, Q1
vqrdmulh.s32 Q3, Q2, r4
// input[516]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * 12)]
vadd.s32 Q0, Q0, Q1
// Release input[12] from Q1
// input[0]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 0)]
vsub.s32 Q5, Q1, Q4
// input[396]: Load as Q6
vldrw.u32 Q6, [r12, #(4 * -108)]
vadd.s32 Q1, Q1, Q4
// Release input[516] from Q4
vmul.u32 Q2, Q2, r3
vsub.s32 Q4, Q1, Q0
// input[648]: Load as Q7
vldrw.u32 Q7, [r11, #(4 * -108)]
vqrdmlah.s32 Q3, Q2, r10
vstrw.u32 Q4, [r14,#(48)]
vadd.s32 Q1, Q1, Q0
// Release input[264] from Q0
vstrw.u32 Q1, [r0,#(0)]
// Release input[0] from Q1
vsub.s32 Q2, Q5, Q3
vstrw.u32 Q2, [r0,#(48)]
vadd.s32 Q5, Q5, Q3
vstrw.u32 Q5, [r12,#(48)]
// input[648]: Already loaded as Q7
// input[396]: Already loaded as Q6
vsub.s32 Q0, Q7, Q6
vqrdmulh.s32 Q1, Q0, r4
// input[132]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -120)]
vadd.s32 Q7, Q7, Q6
// Release input[396] from Q6
// input[384]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -120)]
vsub.s32 Q4, Q3, Q2
// input[588]: Load as Q5
vldrw.u32 Q5, [r12, #(4 * 84)]
vadd.s32 Q3, Q3, Q2
// Release input[132] from Q2
vmul.u32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q7
// input[72]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 72)]
vqrdmlah.s32 Q1, Q0, r10
vstrw.u32 Q2, [r11,#(-432)]
vadd.s32 Q3, Q3, Q7
// Release input[648] from Q7
vstrw.u32 Q3, [r12,#(-480)]
// Release input[384] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r12,#(-432)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(-480)]
// input[72]: Already loaded as Q6
// input[588]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vqrdmulh.s32 Q1, Q0, r4
// input[324]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 72)]
vadd.s32 Q6, Q6, Q5
// Release input[588] from Q5
// input[576]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * 72)]
vsub.s32 Q4, Q3, Q2
// input[204]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -48)]
vadd.s32 Q3, Q3, Q2
// Release input[324] from Q2
vmul.u32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q6
// input[456]: Load as Q7
vldrw.u32 Q7, [r12, #(4 * -48)]
vqrdmlah.s32 Q1, Q0, r10
vstrw.u32 Q2, [r0,#(288)]
vadd.s32 Q3, Q3, Q6
// Release input[72] from Q6
vstrw.u32 Q3, [r12,#(288)]
// Release input[576] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r12,#(336)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(288)]
// input[456]: Already loaded as Q7
// input[204]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vqrdmulh.s32 Q1, Q0, r4
// input[708]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * -48)]
vadd.s32 Q7, Q7, Q5
// Release input[204] from Q5
// input[192]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -60)]
vsub.s32 Q4, Q3, Q2
// input[300]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 48)]
vadd.s32 Q3, Q3, Q2
// Release input[708] from Q2
vmul.u32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q7
// input[552]: Load as Q6
vldrw.u32 Q6, [r12, #(4 * 48)]
vqrdmlah.s32 Q1, Q0, r10
vstrw.u32 Q2, [r12,#(-192)]
vadd.s32 Q3, Q3, Q7
// Release input[456] from Q7
vstrw.u32 Q3, [r14,#(-240)]
// Release input[192] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(-192)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r11,#(-192)]
// input[552]: Already loaded as Q6
// input[300]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vqrdmulh.s32 Q1, Q0, r4
// input[36]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 36)]
vadd.s32 Q6, Q6, Q5
// Release input[300] from Q5
// input[288]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 36)]
vsub.s32 Q4, Q3, Q2
// input[684]: Load as Q5
vldrw.u32 Q5, [r11, #(4 * -72)]
vadd.s32 Q3, Q3, Q2
// Release input[36] from Q2
vmul.u32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q6
// input[168]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -84)]
vqrdmlah.s32 Q1, Q0, r10
vstrw.u32 Q2, [r12,#(192)]
vadd.s32 Q3, Q3, Q6
// Release input[552] from Q6
vstrw.u32 Q3, [r14,#(144)]
// Release input[288] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(192)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r0,#(144)]
// input[168]: Already loaded as Q7
// input[684]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vqrdmulh.s32 Q1, Q0, r4
// input[420]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * -84)]
vadd.s32 Q7, Q7, Q5
// Release input[684] from Q5
// input[672]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * -84)]
vsub.s32 Q4, Q3, Q2
// input[108]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 108)]
vadd.s32 Q3, Q3, Q2
// Release input[420] from Q2
vmul.u32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q7
// input[360]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * 108)]
vqrdmlah.s32 Q1, Q0, r10
vstrw.u32 Q2, [r14,#(-336)]
vadd.s32 Q3, Q3, Q7
// Release input[168] from Q7
vstrw.u32 Q3, [r11,#(-336)]
// Release input[672] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r11,#(-288)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r12,#(-336)]
// input[360]: Already loaded as Q6
// input[108]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vqrdmulh.s32 Q1, Q0, r4
// input[612]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * 108)]
vadd.s32 Q6, Q6, Q5
// Release input[108] from Q5
// input[96]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 96)]
vsub.s32 Q4, Q3, Q2
// input[492]: Load as Q5
vldrw.u32 Q5, [r12, #(4 * -12)]
vadd.s32 Q3, Q3, Q2
// Release input[612] from Q2
vmul.u32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q6
// input[744]: Load as Q7
vldrw.u32 Q7, [r11, #(4 * -12)]
vqrdmlah.s32 Q1, Q0, r10
vstrw.u32 Q2, [r14,#(432)]
vadd.s32 Q3, Q3, Q6
// Release input[360] from Q6
vstrw.u32 Q3, [r0,#(384)]
// Release input[96] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r0,#(432)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r12,#(432)]
// input[744]: Already loaded as Q7
// input[492]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vqrdmulh.s32 Q1, Q0, r4
// input[228]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -24)]
vadd.s32 Q7, Q7, Q5
// Release input[492] from Q5
// input[480]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -24)]
vsub.s32 Q4, Q3, Q2
// input[540]: Load as Q5
vldrw.u32 Q5, [r12, #(4 * 36)]
vadd.s32 Q3, Q3, Q2
// Release input[228] from Q2
vmul.u32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q7
// input[24]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 24)]
vqrdmlah.s32 Q1, Q0, r10
vstrw.u32 Q2, [r11,#(-48)]
vadd.s32 Q3, Q3, Q7
// Release input[744] from Q7
vstrw.u32 Q3, [r12,#(-96)]
// Release input[480] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r12,#(-48)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(-96)]
// input[24]: Already loaded as Q6
// input[540]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vqrdmulh.s32 Q1, Q0, r4
// input[276]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 24)]
vadd.s32 Q6, Q6, Q5
// Release input[540] from Q5
// input[528]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * 24)]
vsub.s32 Q4, Q3, Q2
// input[156]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -96)]
vadd.s32 Q3, Q3, Q2
// Release input[276] from Q2
vmul.u32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q6
// input[408]: Load as Q7
vldrw.u32 Q7, [r12, #(4 * -96)]
vqrdmlah.s32 Q1, Q0, r10
vstrw.u32 Q2, [r0,#(96)]
vadd.s32 Q3, Q3, Q6
// Release input[24] from Q6
vstrw.u32 Q3, [r12,#(96)]
// Release input[528] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r12,#(144)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(96)]
// input[408]: Already loaded as Q7
// input[156]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vqrdmulh.s32 Q1, Q0, r4
// input[660]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * -96)]
vadd.s32 Q7, Q7, Q5
// Release input[156] from Q5
// input[144]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -108)]
vsub.s32 Q4, Q3, Q2
// input[348]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 96)]
vadd.s32 Q3, Q3, Q2
// Release input[660] from Q2
vmul.u32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q7
// input[600]: Load as Q6
vldrw.u32 Q6, [r12, #(4 * 96)]
vqrdmlah.s32 Q1, Q0, r10
vstrw.u32 Q2, [r12,#(-384)]
vadd.s32 Q3, Q3, Q7
// Release input[408] from Q7
vstrw.u32 Q3, [r14,#(-432)]
// Release input[144] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(-384)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r11,#(-384)]
// input[600]: Already loaded as Q6
// input[348]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vqrdmulh.s32 Q1, Q0, r4
// input[84]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 84)]
vadd.s32 Q6, Q6, Q5
// Release input[348] from Q5
// input[336]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 84)]
vsub.s32 Q4, Q3, Q2
// input[732]: Load as Q5
vldrw.u32 Q5, [r11, #(4 * -24)]
vadd.s32 Q3, Q3, Q2
// Release input[84] from Q2
vmul.u32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q6
// input[216]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -36)]
vqrdmlah.s32 Q1, Q0, r10
vstrw.u32 Q2, [r12,#(384)]
vadd.s32 Q3, Q3, Q6
// Release input[600] from Q6
vstrw.u32 Q3, [r14,#(336)]
// Release input[336] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(384)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r0,#(336)]
// input[216]: Already loaded as Q7
// input[732]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vqrdmulh.s32 Q1, Q0, r4
// input[468]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * -36)]
vadd.s32 Q7, Q7, Q5
// Release input[732] from Q5
// input[720]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * -36)]
vsub.s32 Q4, Q3, Q2
// input[60]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 60)]
vadd.s32 Q3, Q3, Q2
// Release input[468] from Q2
vmul.u32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q7
// input[312]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * 60)]
vqrdmlah.s32 Q1, Q0, r10
vstrw.u32 Q2, [r14,#(-144)]
vadd.s32 Q3, Q3, Q7
// Release input[216] from Q7
vstrw.u32 Q3, [r11,#(-144)]
// Release input[720] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r11,#(-96)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r12,#(-144)]
// input[312]: Already loaded as Q6
// input[60]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vqrdmulh.s32 Q1, Q0, r4
// input[564]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * 60)]
vadd.s32 Q6, Q6, Q5
// Release input[60] from Q5
// input[48]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 48)]
vsub.s32 Q4, Q3, Q2
// input[444]: Load as Q5
vldrw.u32 Q5, [r12, #(4 * -60)]
vadd.s32 Q3, Q3, Q2
// Release input[564] from Q2
vmul.u32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q6
// input[696]: Load as Q7
vldrw.u32 Q7, [r11, #(4 * -60)]
vqrdmlah.s32 Q1, Q0, r10
vstrw.u32 Q2, [r14,#(240)]
vadd.s32 Q3, Q3, Q6
// Release input[312] from Q6
vstrw.u32 Q3, [r0,#(192)]
// Release input[48] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r0,#(240)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r12,#(240)]
// input[696]: Already loaded as Q7
// input[444]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vqrdmulh.s32 Q1, Q0, r4
// input[180]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -72)]
vadd.s32 Q7, Q7, Q5
// Release input[444] from Q5
// input[432]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -72)]
vsub.s32 Q4, Q3, Q2
// input[636]: Load as Q5
vldrw.u32 Q5, [r11, #(4 * -120)]
vadd.s32 Q3, Q3, Q2
// Release input[180] from Q2
vmul.u32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q7
// input[120]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 120)]
vqrdmlah.s32 Q1, Q0, r10
vstrw.u32 Q2, [r11,#(-240)]
vadd.s32 Q3, Q3, Q7
// Release input[696] from Q7
vstrw.u32 Q3, [r12,#(-288)]
// Release input[432] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r12,#(-240)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(-288)]
// input[120]: Already loaded as Q6
// input[636]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vqrdmulh.s32 Q1, Q0, r4
// input[372]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 120)]
vadd.s32 Q6, Q6, Q5
// Release input[636] from Q5
// input[624]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * 120)]
vsub.s32 Q4, Q3, Q2
// input[252]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 0)]
vadd.s32 Q3, Q3, Q2
// Release input[372] from Q2
vmul.u32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q6
// input[504]: Load as Q7
vldrw.u32 Q7, [r12, #(4 * 0)]
vqrdmlah.s32 Q1, Q0, r10
vstrw.u32 Q2, [r0,#(480)]
vadd.s32 Q3, Q3, Q6
// Release input[120] from Q6
vstrw.u32 Q3, [r12,#(480)]
// Release input[624] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r11,#(-480)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(480)]
// input[504]: Already loaded as Q7
// input[252]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vqrdmulh.s32 Q1, Q0, r4
// input[756]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * 0)]
vadd.s32 Q7, Q7, Q5
// Release input[252] from Q5
// input[240]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -12)]
vsub.s32 Q4, Q3, Q2
// input[268]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 16)]
vadd.s32 Q3, Q3, Q2
// Release input[756] from Q2
vmul.u32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q7
// input[520]: Load as Q6
vldrw.u32 Q6, [r12, #(4 * 16)]
vqrdmlah.s32 Q1, Q0, r10
vstrw.u32 Q2, [r12,#(0)]
vadd.s32 Q3, Q3, Q7
// Release input[504] from Q7
vstrw.u32 Q3, [r14,#(-48)]
// Release input[240] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(0)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r11,#(0)]
// input[520]: Already loaded as Q6
// input[268]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vqrdmulh.s32 Q1, Q0, r4
// input[4]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 4)]
vadd.s32 Q6, Q6, Q5
// Release input[268] from Q5
// input[256]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 4)]
vsub.s32 Q4, Q3, Q2
// input[652]: Load as Q5
vldrw.u32 Q5, [r11, #(4 * -104)]
vadd.s32 Q3, Q3, Q2
// Release input[4] from Q2
vmul.u32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q6
// input[136]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -116)]
vqrdmlah.s32 Q1, Q0, r10
vstrw.u32 Q2, [r12,#(64)]
vadd.s32 Q3, Q3, Q6
// Release input[520] from Q6
vstrw.u32 Q3, [r14,#(16)]
// Release input[256] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(64)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r0,#(16)]
// input[136]: Already loaded as Q7
// input[652]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vqrdmulh.s32 Q1, Q0, r4
// input[388]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * -116)]
vadd.s32 Q7, Q7, Q5
// Release input[652] from Q5
// input[640]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * -116)]
vsub.s32 Q4, Q3, Q2
// input[76]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 76)]
vadd.s32 Q3, Q3, Q2
// Release input[388] from Q2
vmul.u32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q7
// input[328]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * 76)]
vqrdmlah.s32 Q1, Q0, r10
vstrw.u32 Q2, [r14,#(-464)]
vadd.s32 Q3, Q3, Q7
// Release input[136] from Q7
vstrw.u32 Q3, [r11,#(-464)]
// Release input[640] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r11,#(-416)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r12,#(-464)]
// input[328]: Already loaded as Q6
// input[76]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vqrdmulh.s32 Q1, Q0, r4
// input[580]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * 76)]
vadd.s32 Q6, Q6, Q5
// Release input[76] from Q5
// input[64]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 64)]
vsub.s32 Q4, Q3, Q2
// input[460]: Load as Q5
vldrw.u32 Q5, [r12, #(4 * -44)]
vadd.s32 Q3, Q3, Q2
// Release input[580] from Q2
vmul.u32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q6
// input[712]: Load as Q7
vldrw.u32 Q7, [r11, #(4 * -44)]
vqrdmlah.s32 Q1, Q0, r10
vstrw.u32 Q2, [r14,#(304)]
vadd.s32 Q3, Q3, Q6
// Release input[328] from Q6
vstrw.u32 Q3, [r0,#(256)]
// Release input[64] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r0,#(304)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r12,#(304)]
// input[712]: Already loaded as Q7
// input[460]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vqrdmulh.s32 Q1, Q0, r4
// input[196]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -56)]
vadd.s32 Q7, Q7, Q5
// Release input[460] from Q5
// input[448]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -56)]
vsub.s32 Q4, Q3, Q2
// input[556]: Load as Q5
vldrw.u32 Q5, [r12, #(4 * 52)]
vadd.s32 Q3, Q3, Q2
// Release input[196] from Q2
vmul.u32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q7
// input[40]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 40)]
vqrdmlah.s32 Q1, Q0, r10
vstrw.u32 Q2, [r11,#(-176)]
vadd.s32 Q3, Q3, Q7
// Release input[712] from Q7
vstrw.u32 Q3, [r12,#(-224)]
// Release input[448] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r12,#(-176)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(-224)]
// input[40]: Already loaded as Q6
// input[556]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vqrdmulh.s32 Q1, Q0, r4
// input[292]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 40)]
vadd.s32 Q6, Q6, Q5
// Release input[556] from Q5
// input[544]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * 40)]
vsub.s32 Q4, Q3, Q2
// input[172]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -80)]
vadd.s32 Q3, Q3, Q2
// Release input[292] from Q2
vmul.u32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q6
// input[424]: Load as Q7
vldrw.u32 Q7, [r12, #(4 * -80)]
vqrdmlah.s32 Q1, Q0, r10
vstrw.u32 Q2, [r0,#(160)]
vadd.s32 Q3, Q3, Q6
// Release input[40] from Q6
vstrw.u32 Q3, [r12,#(160)]
// Release input[544] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r12,#(208)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(160)]
// input[424]: Already loaded as Q7
// input[172]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vqrdmulh.s32 Q1, Q0, r4
// input[676]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * -80)]
vadd.s32 Q7, Q7, Q5
// Release input[172] from Q5
// input[160]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -92)]
vsub.s32 Q4, Q3, Q2
// input[364]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 112)]
vadd.s32 Q3, Q3, Q2
// Release input[676] from Q2
vmul.u32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q7
// input[616]: Load as Q6
vldrw.u32 Q6, [r12, #(4 * 112)]
vqrdmlah.s32 Q1, Q0, r10
vstrw.u32 Q2, [r12,#(-320)]
vadd.s32 Q3, Q3, Q7
// Release input[424] from Q7
vstrw.u32 Q3, [r14,#(-368)]
// Release input[160] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(-320)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r11,#(-320)]
// input[616]: Already loaded as Q6
// input[364]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vqrdmulh.s32 Q1, Q0, r4
// input[100]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 100)]
vadd.s32 Q6, Q6, Q5
// Release input[364] from Q5
// input[352]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 100)]
vsub.s32 Q4, Q3, Q2
// input[748]: Load as Q5
vldrw.u32 Q5, [r11, #(4 * -8)]
vadd.s32 Q3, Q3, Q2
// Release input[100] from Q2
vmul.u32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q6
// input[232]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -20)]
vqrdmlah.s32 Q1, Q0, r10
vstrw.u32 Q2, [r12,#(448)]
vadd.s32 Q3, Q3, Q6
// Release input[616] from Q6
vstrw.u32 Q3, [r14,#(400)]
// Release input[352] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(448)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r0,#(400)]
// input[232]: Already loaded as Q7
// input[748]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vqrdmulh.s32 Q1, Q0, r4
// input[484]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * -20)]
vadd.s32 Q7, Q7, Q5
// Release input[748] from Q5
// input[736]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * -20)]
vsub.s32 Q4, Q3, Q2
// input[28]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 28)]
vadd.s32 Q3, Q3, Q2
// Release input[484] from Q2
vmul.u32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q7
// input[280]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * 28)]
vqrdmlah.s32 Q1, Q0, r10
vstrw.u32 Q2, [r14,#(-80)]
vadd.s32 Q3, Q3, Q7
// Release input[232] from Q7
vstrw.u32 Q3, [r11,#(-80)]
// Release input[736] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r11,#(-32)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r12,#(-80)]
// input[280]: Already loaded as Q6
// input[28]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vqrdmulh.s32 Q1, Q0, r4
// input[532]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * 28)]
vadd.s32 Q6, Q6, Q5
// Release input[28] from Q5
// input[16]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 16)]
vsub.s32 Q4, Q3, Q2
// input[412]: Load as Q5
vldrw.u32 Q5, [r12, #(4 * -92)]
vadd.s32 Q3, Q3, Q2
// Release input[532] from Q2
vmul.u32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q6
// input[664]: Load as Q7
vldrw.u32 Q7, [r11, #(4 * -92)]
vqrdmlah.s32 Q1, Q0, r10
vstrw.u32 Q2, [r14,#(112)]
vadd.s32 Q3, Q3, Q6
// Release input[280] from Q6
vstrw.u32 Q3, [r0,#(64)]
// Release input[16] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r0,#(112)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r12,#(112)]
// input[664]: Already loaded as Q7
// input[412]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vqrdmulh.s32 Q1, Q0, r4
// input[148]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -104)]
vadd.s32 Q7, Q7, Q5
// Release input[412] from Q5
// input[400]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -104)]
vsub.s32 Q4, Q3, Q2
// input[604]: Load as Q5
vldrw.u32 Q5, [r12, #(4 * 100)]
vadd.s32 Q3, Q3, Q2
// Release input[148] from Q2
vmul.u32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q7
// input[88]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 88)]
vqrdmlah.s32 Q1, Q0, r10
vstrw.u32 Q2, [r11,#(-368)]
vadd.s32 Q3, Q3, Q7
// Release input[664] from Q7
vstrw.u32 Q3, [r12,#(-416)]
// Release input[400] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r12,#(-368)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(-416)]
// input[88]: Already loaded as Q6
// input[604]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vqrdmulh.s32 Q1, Q0, r4
// input[340]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 88)]
vadd.s32 Q6, Q6, Q5
// Release input[604] from Q5
// input[592]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * 88)]
vsub.s32 Q4, Q3, Q2
// input[220]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -32)]
vadd.s32 Q3, Q3, Q2
// Release input[340] from Q2
vmul.u32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q6
// input[472]: Load as Q7
vldrw.u32 Q7, [r12, #(4 * -32)]
vqrdmlah.s32 Q1, Q0, r10
vstrw.u32 Q2, [r0,#(352)]
vadd.s32 Q3, Q3, Q6
// Release input[88] from Q6
vstrw.u32 Q3, [r12,#(352)]
// Release input[592] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r12,#(400)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(352)]
// input[472]: Already loaded as Q7
// input[220]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vqrdmulh.s32 Q1, Q0, r4
// input[724]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * -32)]
vadd.s32 Q7, Q7, Q5
// Release input[220] from Q5
// input[208]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -44)]
vsub.s32 Q4, Q3, Q2
// input[316]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 64)]
vadd.s32 Q3, Q3, Q2
// Release input[724] from Q2
vmul.u32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q7
// input[568]: Load as Q6
vldrw.u32 Q6, [r12, #(4 * 64)]
vqrdmlah.s32 Q1, Q0, r10
vstrw.u32 Q2, [r12,#(-128)]
vadd.s32 Q3, Q3, Q7
// Release input[472] from Q7
vstrw.u32 Q3, [r14,#(-176)]
// Release input[208] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(-128)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r11,#(-128)]
// input[568]: Already loaded as Q6
// input[316]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vqrdmulh.s32 Q1, Q0, r4
// input[52]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 52)]
vadd.s32 Q6, Q6, Q5
// Release input[316] from Q5
// input[304]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 52)]
vsub.s32 Q4, Q3, Q2
// input[700]: Load as Q5
vldrw.u32 Q5, [r11, #(4 * -56)]
vadd.s32 Q3, Q3, Q2
// Release input[52] from Q2
vmul.u32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q6
// input[184]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -68)]
vqrdmlah.s32 Q1, Q0, r10
vstrw.u32 Q2, [r12,#(256)]
vadd.s32 Q3, Q3, Q6
// Release input[568] from Q6
vstrw.u32 Q3, [r14,#(208)]
// Release input[304] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(256)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r0,#(208)]
// input[184]: Already loaded as Q7
// input[700]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vqrdmulh.s32 Q1, Q0, r4
// input[436]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * -68)]
vadd.s32 Q7, Q7, Q5
// Release input[700] from Q5
// input[688]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * -68)]
vsub.s32 Q4, Q3, Q2
// input[124]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 124)]
vadd.s32 Q3, Q3, Q2
// Release input[436] from Q2
vmul.u32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q7
// input[376]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * 124)]
vqrdmlah.s32 Q1, Q0, r10
vstrw.u32 Q2, [r14,#(-272)]
vadd.s32 Q3, Q3, Q7
// Release input[184] from Q7
vstrw.u32 Q3, [r11,#(-272)]
// Release input[688] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r11,#(-224)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r12,#(-272)]
// input[376]: Already loaded as Q6
// input[124]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vqrdmulh.s32 Q1, Q0, r4
// input[628]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * 124)]
vadd.s32 Q6, Q6, Q5
// Release input[124] from Q5
// input[112]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 112)]
vsub.s32 Q4, Q3, Q2
// input[508]: Load as Q5
vldrw.u32 Q5, [r12, #(4 * 4)]
vadd.s32 Q3, Q3, Q2
// Release input[628] from Q2
vmul.u32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q6
// input[760]: Load as Q7
vldrw.u32 Q7, [r11, #(4 * 4)]
vqrdmlah.s32 Q1, Q0, r10
vstrw.u32 Q2, [r14,#(496)]
vadd.s32 Q3, Q3, Q6
// Release input[376] from Q6
vstrw.u32 Q3, [r0,#(448)]
// Release input[112] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r0,#(496)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r12,#(496)]
// input[760]: Already loaded as Q7
// input[508]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vqrdmulh.s32 Q1, Q0, r4
// input[244]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -8)]
vadd.s32 Q7, Q7, Q5
// Release input[508] from Q5
// input[496]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -8)]
vsub.s32 Q4, Q3, Q2
// input[524]: Load as Q5
vldrw.u32 Q5, [r12, #(4 * 20)]
vadd.s32 Q3, Q3, Q2
// Release input[244] from Q2
vmul.u32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q7
// input[8]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 8)]
vqrdmlah.s32 Q1, Q0, r10
vstrw.u32 Q2, [r11,#(16)]
vadd.s32 Q3, Q3, Q7
// Release input[760] from Q7
vstrw.u32 Q3, [r12,#(-32)]
// Release input[496] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r12,#(16)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(-32)]
// input[8]: Already loaded as Q6
// input[524]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vqrdmulh.s32 Q1, Q0, r4
// input[260]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 8)]
vadd.s32 Q6, Q6, Q5
// Release input[524] from Q5
// input[512]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * 8)]
vsub.s32 Q4, Q3, Q2
// input[140]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -112)]
vadd.s32 Q3, Q3, Q2
// Release input[260] from Q2
vmul.u32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q6
// input[392]: Load as Q7
vldrw.u32 Q7, [r12, #(4 * -112)]
vqrdmlah.s32 Q1, Q0, r10
vstrw.u32 Q2, [r0,#(32)]
vadd.s32 Q3, Q3, Q6
// Release input[8] from Q6
vstrw.u32 Q3, [r12,#(32)]
// Release input[512] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r12,#(80)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(32)]
// input[392]: Already loaded as Q7
// input[140]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vqrdmulh.s32 Q1, Q0, r4
// input[644]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * -112)]
vadd.s32 Q7, Q7, Q5
// Release input[140] from Q5
// input[128]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -124)]
vsub.s32 Q4, Q3, Q2
// input[332]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 80)]
vadd.s32 Q3, Q3, Q2
// Release input[644] from Q2
vmul.u32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q7
// input[584]: Load as Q6
vldrw.u32 Q6, [r12, #(4 * 80)]
vqrdmlah.s32 Q1, Q0, r10
vstrw.u32 Q2, [r12,#(-448)]
vadd.s32 Q3, Q3, Q7
// Release input[392] from Q7
vstrw.u32 Q3, [r14,#(-496)]
// Release input[128] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(-448)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r11,#(-448)]
// input[584]: Already loaded as Q6
// input[332]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vqrdmulh.s32 Q1, Q0, r4
// input[68]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 68)]
vadd.s32 Q6, Q6, Q5
// Release input[332] from Q5
// input[320]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 68)]
vsub.s32 Q4, Q3, Q2
// input[716]: Load as Q5
vldrw.u32 Q5, [r11, #(4 * -40)]
vadd.s32 Q3, Q3, Q2
// Release input[68] from Q2
vmul.u32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q6
// input[200]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -52)]
vqrdmlah.s32 Q1, Q0, r10
vstrw.u32 Q2, [r12,#(320)]
vadd.s32 Q3, Q3, Q6
// Release input[584] from Q6
vstrw.u32 Q3, [r14,#(272)]
// Release input[320] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(320)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r0,#(272)]
// input[200]: Already loaded as Q7
// input[716]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vqrdmulh.s32 Q1, Q0, r4
// input[452]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * -52)]
vadd.s32 Q7, Q7, Q5
// Release input[716] from Q5
// input[704]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * -52)]
vsub.s32 Q4, Q3, Q2
// input[44]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 44)]
vadd.s32 Q3, Q3, Q2
// Release input[452] from Q2
vmul.u32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q7
// input[296]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * 44)]
vqrdmlah.s32 Q1, Q0, r10
vstrw.u32 Q2, [r14,#(-208)]
vadd.s32 Q3, Q3, Q7
// Release input[200] from Q7
vstrw.u32 Q3, [r11,#(-208)]
// Release input[704] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r11,#(-160)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r12,#(-208)]
// input[296]: Already loaded as Q6
// input[44]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vqrdmulh.s32 Q1, Q0, r4
// input[548]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * 44)]
vadd.s32 Q6, Q6, Q5
// Release input[44] from Q5
// input[32]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 32)]
vsub.s32 Q4, Q3, Q2
// input[428]: Load as Q5
vldrw.u32 Q5, [r12, #(4 * -76)]
vadd.s32 Q3, Q3, Q2
// Release input[548] from Q2
vmul.u32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q6
// input[680]: Load as Q7
vldrw.u32 Q7, [r11, #(4 * -76)]
vqrdmlah.s32 Q1, Q0, r10
vstrw.u32 Q2, [r14,#(176)]
vadd.s32 Q3, Q3, Q6
// Release input[296] from Q6
vstrw.u32 Q3, [r0,#(128)]
// Release input[32] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r0,#(176)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r12,#(176)]
// input[680]: Already loaded as Q7
// input[428]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vqrdmulh.s32 Q1, Q0, r4
// input[164]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -88)]
vadd.s32 Q7, Q7, Q5
// Release input[428] from Q5
// input[416]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -88)]
vsub.s32 Q4, Q3, Q2
// input[620]: Load as Q5
vldrw.u32 Q5, [r12, #(4 * 116)]
vadd.s32 Q3, Q3, Q2
// Release input[164] from Q2
vmul.u32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q7
// input[104]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 104)]
vqrdmlah.s32 Q1, Q0, r10
vstrw.u32 Q2, [r11,#(-304)]
vadd.s32 Q3, Q3, Q7
// Release input[680] from Q7
vstrw.u32 Q3, [r12,#(-352)]
// Release input[416] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r12,#(-304)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(-352)]
// input[104]: Already loaded as Q6
// input[620]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vqrdmulh.s32 Q1, Q0, r4
// input[356]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 104)]
vadd.s32 Q6, Q6, Q5
// Release input[620] from Q5
// input[608]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * 104)]
vsub.s32 Q4, Q3, Q2
// input[236]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -16)]
vadd.s32 Q3, Q3, Q2
// Release input[356] from Q2
vmul.u32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q6
// input[488]: Load as Q7
vldrw.u32 Q7, [r12, #(4 * -16)]
vqrdmlah.s32 Q1, Q0, r10
vstrw.u32 Q2, [r0,#(416)]
vadd.s32 Q3, Q3, Q6
// Release input[104] from Q6
vstrw.u32 Q3, [r12,#(416)]
// Release input[608] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r12,#(464)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(416)]
// input[488]: Already loaded as Q7
// input[236]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vqrdmulh.s32 Q1, Q0, r4
// input[740]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * -16)]
vadd.s32 Q7, Q7, Q5
// Release input[236] from Q5
// input[224]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -28)]
vsub.s32 Q4, Q3, Q2
// input[284]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 32)]
vadd.s32 Q3, Q3, Q2
// Release input[740] from Q2
vmul.u32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q7
// input[536]: Load as Q6
vldrw.u32 Q6, [r12, #(4 * 32)]
vqrdmlah.s32 Q1, Q0, r10
vstrw.u32 Q2, [r12,#(-64)]
vadd.s32 Q3, Q3, Q7
// Release input[488] from Q7
vstrw.u32 Q3, [r14,#(-112)]
// Release input[224] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(-64)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r11,#(-64)]
// input[536]: Already loaded as Q6
// input[284]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vqrdmulh.s32 Q1, Q0, r4
// input[20]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 20)]
vadd.s32 Q6, Q6, Q5
// Release input[284] from Q5
// input[272]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 20)]
vsub.s32 Q4, Q3, Q2
// input[668]: Load as Q5
vldrw.u32 Q5, [r11, #(4 * -88)]
vadd.s32 Q3, Q3, Q2
// Release input[20] from Q2
vmul.u32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q6
// input[152]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -100)]
vqrdmlah.s32 Q1, Q0, r10
vstrw.u32 Q2, [r12,#(128)]
vadd.s32 Q3, Q3, Q6
// Release input[536] from Q6
vstrw.u32 Q3, [r14,#(80)]
// Release input[272] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(128)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r0,#(80)]
// input[152]: Already loaded as Q7
// input[668]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vqrdmulh.s32 Q1, Q0, r4
// input[404]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * -100)]
vadd.s32 Q7, Q7, Q5
// Release input[668] from Q5
// input[656]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * -100)]
vsub.s32 Q4, Q3, Q2
// input[92]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 92)]
vadd.s32 Q3, Q3, Q2
// Release input[404] from Q2
vmul.u32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q7
// input[344]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * 92)]
vqrdmlah.s32 Q1, Q0, r10
vstrw.u32 Q2, [r14,#(-400)]
vadd.s32 Q3, Q3, Q7
// Release input[152] from Q7
vstrw.u32 Q3, [r11,#(-400)]
// Release input[656] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r11,#(-352)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r12,#(-400)]
// input[344]: Already loaded as Q6
// input[92]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vqrdmulh.s32 Q1, Q0, r4
// input[596]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * 92)]
vadd.s32 Q6, Q6, Q5
// Release input[92] from Q5
// input[80]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 80)]
vsub.s32 Q4, Q3, Q2
// input[476]: Load as Q5
vldrw.u32 Q5, [r12, #(4 * -28)]
vadd.s32 Q3, Q3, Q2
// Release input[596] from Q2
vmul.u32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q6
// input[728]: Load as Q7
vldrw.u32 Q7, [r11, #(4 * -28)]
vqrdmlah.s32 Q1, Q0, r10
vstrw.u32 Q2, [r14,#(368)]
vadd.s32 Q3, Q3, Q6
// Release input[344] from Q6
vstrw.u32 Q3, [r0,#(320)]
// Release input[80] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r0,#(368)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r12,#(368)]
// input[728]: Already loaded as Q7
// input[476]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vqrdmulh.s32 Q1, Q0, r4
// input[212]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -40)]
vadd.s32 Q7, Q7, Q5
// Release input[476] from Q5
// input[464]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -40)]
vsub.s32 Q4, Q3, Q2
// input[572]: Load as Q5
vldrw.u32 Q5, [r12, #(4 * 68)]
vadd.s32 Q3, Q3, Q2
// Release input[212] from Q2
vmul.u32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q7
// input[56]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 56)]
vqrdmlah.s32 Q1, Q0, r10
vstrw.u32 Q2, [r11,#(-112)]
vadd.s32 Q3, Q3, Q7
// Release input[728] from Q7
vstrw.u32 Q3, [r12,#(-160)]
// Release input[464] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r12,#(-112)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(-160)]
// input[56]: Already loaded as Q6
// input[572]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vqrdmulh.s32 Q1, Q0, r4
// input[308]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 56)]
vadd.s32 Q6, Q6, Q5
// Release input[572] from Q5
// input[560]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * 56)]
vsub.s32 Q4, Q3, Q2
// input[188]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -64)]
vadd.s32 Q3, Q3, Q2
// Release input[308] from Q2
vmul.u32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q6
// input[440]: Load as Q7
vldrw.u32 Q7, [r12, #(4 * -64)]
vqrdmlah.s32 Q1, Q0, r10
vstrw.u32 Q2, [r0,#(224)]
vadd.s32 Q3, Q3, Q6
// Release input[56] from Q6
vstrw.u32 Q3, [r12,#(224)]
// Release input[560] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r12,#(272)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(224)]
// input[440]: Already loaded as Q7
// input[188]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vqrdmulh.s32 Q1, Q0, r4
// input[692]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * -64)]
vadd.s32 Q7, Q7, Q5
// Release input[188] from Q5
// input[176]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -76)]
vsub.s32 Q4, Q3, Q2
// input[380]: Load as Q5
vldrw.u32 Q5, [r12, #(4 * -124)]
vadd.s32 Q3, Q3, Q2
// Release input[692] from Q2
vmul.u32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q7
// input[632]: Load as Q6
vldrw.u32 Q6, [r11, #(4 * -124)]
vqrdmlah.s32 Q1, Q0, r10
vstrw.u32 Q2, [r12,#(-256)]
vadd.s32 Q3, Q3, Q7
// Release input[440] from Q7
vstrw.u32 Q3, [r14,#(-304)]
// Release input[176] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(-256)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r11,#(-256)]
// input[632]: Already loaded as Q6
// input[380]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vqrdmulh.s32 Q1, Q0, r4
// input[116]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 116)]
vadd.s32 Q6, Q6, Q5
// Release input[380] from Q5
// input[368]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 116)]
vsub.s32 Q4, Q3, Q2
// input[764]: Load as Q5
vldrw.u32 Q5, [r11, #(4 * 8)]
vadd.s32 Q3, Q3, Q2
// Release input[116] from Q2
vmul.u32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q6
// input[248]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -4)]
vqrdmlah.s32 Q1, Q0, r10
vstrw.u32 Q2, [r11,#(-496)]
vadd.s32 Q3, Q3, Q6
// Release input[632] from Q6
vstrw.u32 Q3, [r14,#(464)]
// Release input[368] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r12,#(-496)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r0,#(464)]
// input[248]: Already loaded as Q7
// input[764]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vqrdmulh.s32 Q1, Q0, r4
// input[500]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * -4)]
vadd.s32 Q7, Q7, Q5
// Release input[764] from Q5
// input[752]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * -4)]
vsub.s32 Q4, Q3, Q2
// input[48]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 48)]
vadd.s32 Q3, Q3, Q2
// Release input[500] from Q2
vmul.u32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q7
// input[288]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * 36)]
vqrdmlah.s32 Q1, Q0, r10
vstrw.u32 Q2, [r14,#(-16)]
vadd.s32 Q3, Q3, Q7
// Release input[248] from Q7
vstrw.u32 Q3, [r11,#(-16)]
// Release input[752] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r11,#(32)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r12,#(-16)]
ldrd r8, r7, [r9], #+8
ldrd r6, r5, [r9], #+8
ldrd r4, r3, [r9], #+8
// input[48]: Already loaded as Q5
vqrdmulh.s32 Q0, Q5, r8
// input[528]: Load as Q1
vldrw.u32 Q1, [r12, #(4 * 24)]
vmul.u32 Q5, Q5, r7
// input[288]: Already loaded as Q6
vqrdmlah.s32 Q0, Q5, r10
vqrdmulh.s32 Q2, Q1, r8
vsub.s32 Q5, Q6, Q0
vmul.u32 Q1, Q1, r7
vadd.s32 Q6, Q6, Q0
vqrdmlah.s32 Q2, Q1, r10
// input[0]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 0)]
vqrdmulh.s32 Q3, Q5, r4
vsub.s32 Q1, Q0, Q2
vmul.u32 Q5, Q5, r3
vadd.s32 Q0, Q0, Q2
vqrdmlah.s32 Q3, Q5, r10
// input[432]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * -72)]
vqrdmulh.s32 Q4, Q6, r6
vsub.s32 Q5, Q1, Q3
vmul.u32 Q6, Q6, r5
vadd.s32 Q1, Q1, Q3
vstrw.u32 Q5, [r0,#(192)]
// Release input[48] from Q5
vqrdmlah.s32 Q4, Q6, r10
vstrw.u32 Q1, [r12,#(96)]
// Release input[528] from Q1
vsub.s32 Q6, Q0, Q4
vstrw.u32 Q6, [r14,#(144)]
// Release input[288] from Q6
vadd.s32 Q0, Q0, Q4
// input[432]: Already loaded as Q2
vqrdmulh.s32 Q1, Q2, r8
// input[144]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -108)]
vmul.u32 Q2, Q2, r7
// input[672]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -84)]
vqrdmlah.s32 Q1, Q2, r10
vstrw.u32 Q0, [r0,#(0)]
// Release input[0] from Q0
vqrdmulh.s32 Q0, Q3, r8
vsub.s32 Q2, Q4, Q1
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q0, Q3, r10
// input[384]: Load as Q1
vldrw.u32 Q1, [r12, #(4 * -120)]
vqrdmulh.s32 Q5, Q2, r4
vsub.s32 Q3, Q1, Q0
vmul.u32 Q2, Q2, r3
vadd.s32 Q1, Q1, Q0
vqrdmlah.s32 Q5, Q2, r10
// input[624]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * 120)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r12,#(-288)]
// Release input[432] from Q2
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r14,#(-432)]
// Release input[144] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r11,#(-336)]
// Release input[672] from Q4
vadd.s32 Q1, Q1, Q6
// input[624]: Already loaded as Q0
vqrdmulh.s32 Q2, Q0, r8
// input[336]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 84)]
vmul.u32 Q0, Q0, r7
// input[96]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 96)]
vqrdmlah.s32 Q2, Q0, r10
vstrw.u32 Q1, [r12,#(-480)]
// Release input[384] from Q1
vqrdmulh.s32 Q1, Q3, r8
vsub.s32 Q0, Q4, Q2
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q1, Q3, r10
// input[576]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * 72)]
vqrdmulh.s32 Q5, Q0, r4
vsub.s32 Q3, Q2, Q1
vmul.u32 Q0, Q0, r3
vadd.s32 Q2, Q2, Q1
vqrdmlah.s32 Q5, Q0, r10
// input[240]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -12)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r12,#(480)]
// Release input[624] from Q0
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r14,#(336)]
// Release input[336] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r0,#(384)]
// Release input[96] from Q4
vadd.s32 Q2, Q2, Q6
// input[240]: Already loaded as Q1
vqrdmulh.s32 Q0, Q1, r8
// input[720]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * -36)]
vmul.u32 Q1, Q1, r7
// input[480]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * -24)]
vqrdmlah.s32 Q0, Q1, r10
vstrw.u32 Q2, [r12,#(288)]
// Release input[576] from Q2
vqrdmulh.s32 Q2, Q3, r8
vsub.s32 Q1, Q4, Q0
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q2, Q3, r10
// input[192]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -60)]
vqrdmulh.s32 Q5, Q1, r4
vsub.s32 Q3, Q0, Q2
vmul.u32 Q1, Q1, r3
vadd.s32 Q0, Q0, Q2
vqrdmlah.s32 Q5, Q1, r10
// input[304]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 52)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(-48)]
// Release input[240] from Q1
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r11,#(-144)]
// Release input[720] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r12,#(-96)]
// Release input[480] from Q4
vadd.s32 Q0, Q0, Q6
// input[304]: Already loaded as Q2
vqrdmulh.s32 Q1, Q2, r8
// input[16]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 16)]
vmul.u32 Q2, Q2, r7
// input[544]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * 40)]
vqrdmlah.s32 Q1, Q2, r10
vstrw.u32 Q0, [r14,#(-240)]
// Release input[192] from Q0
vqrdmulh.s32 Q0, Q3, r8
vsub.s32 Q2, Q4, Q1
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q0, Q3, r10
// input[256]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 4)]
vqrdmulh.s32 Q5, Q2, r4
vsub.s32 Q3, Q1, Q0
vmul.u32 Q2, Q2, r3
vadd.s32 Q1, Q1, Q0
vqrdmlah.s32 Q5, Q2, r10
// input[688]: Load as Q0
vldrw.u32 Q0, [r11, #(4 * -68)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(208)]
// Release input[304] from Q2
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r0,#(64)]
// Release input[16] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r12,#(160)]
// Release input[544] from Q4
vadd.s32 Q1, Q1, Q6
// input[688]: Already loaded as Q0
vqrdmulh.s32 Q2, Q0, r8
// input[400]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -104)]
vmul.u32 Q0, Q0, r7
// input[160]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -92)]
vqrdmlah.s32 Q2, Q0, r10
vstrw.u32 Q1, [r14,#(16)]
// Release input[256] from Q1
vqrdmulh.s32 Q1, Q3, r8
vsub.s32 Q0, Q4, Q2
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q1, Q3, r10
// input[640]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * -116)]
vqrdmulh.s32 Q5, Q0, r4
vsub.s32 Q3, Q2, Q1
vmul.u32 Q0, Q0, r3
vadd.s32 Q2, Q2, Q1
vqrdmlah.s32 Q5, Q0, r10
// input[112]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 112)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r11,#(-272)]
// Release input[688] from Q0
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r12,#(-416)]
// Release input[400] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r14,#(-368)]
// Release input[160] from Q4
vadd.s32 Q2, Q2, Q6
// input[112]: Already loaded as Q1
vqrdmulh.s32 Q0, Q1, r8
// input[592]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * 88)]
vmul.u32 Q1, Q1, r7
// input[352]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 100)]
vqrdmlah.s32 Q0, Q1, r10
vstrw.u32 Q2, [r11,#(-464)]
// Release input[640] from Q2
vqrdmulh.s32 Q2, Q3, r8
vsub.s32 Q1, Q4, Q0
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q2, Q3, r10
// input[64]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 64)]
vqrdmulh.s32 Q5, Q1, r4
vsub.s32 Q3, Q0, Q2
vmul.u32 Q1, Q1, r3
vadd.s32 Q0, Q0, Q2
vqrdmlah.s32 Q5, Q1, r10
// input[496]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * -8)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r0,#(448)]
// Release input[112] from Q1
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r12,#(352)]
// Release input[592] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(400)]
// Release input[352] from Q4
vadd.s32 Q0, Q0, Q6
// input[496]: Already loaded as Q2
vqrdmulh.s32 Q1, Q2, r8
// input[208]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -44)]
vmul.u32 Q2, Q2, r7
// input[736]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -20)]
vqrdmlah.s32 Q1, Q2, r10
vstrw.u32 Q0, [r0,#(256)]
// Release input[64] from Q0
vqrdmulh.s32 Q0, Q3, r8
vsub.s32 Q2, Q4, Q1
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q0, Q3, r10
// input[448]: Load as Q1
vldrw.u32 Q1, [r12, #(4 * -56)]
vqrdmulh.s32 Q5, Q2, r4
vsub.s32 Q3, Q1, Q0
vmul.u32 Q2, Q2, r3
vadd.s32 Q1, Q1, Q0
vqrdmlah.s32 Q5, Q2, r10
// input[560]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * 56)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r12,#(-32)]
// Release input[496] from Q2
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r14,#(-176)]
// Release input[208] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r11,#(-80)]
// Release input[736] from Q4
vadd.s32 Q1, Q1, Q6
// input[560]: Already loaded as Q0
vqrdmulh.s32 Q2, Q0, r8
// input[272]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 20)]
vmul.u32 Q0, Q0, r7
// input[32]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 32)]
vqrdmlah.s32 Q2, Q0, r10
vstrw.u32 Q1, [r12,#(-224)]
// Release input[448] from Q1
vqrdmulh.s32 Q1, Q3, r8
vsub.s32 Q0, Q4, Q2
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q1, Q3, r10
// input[512]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * 8)]
vqrdmulh.s32 Q5, Q0, r4
vsub.s32 Q3, Q2, Q1
vmul.u32 Q0, Q0, r3
vadd.s32 Q2, Q2, Q1
vqrdmlah.s32 Q5, Q0, r10
// input[176]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -76)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r12,#(224)]
// Release input[560] from Q0
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r14,#(80)]
// Release input[272] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r0,#(128)]
// Release input[32] from Q4
vadd.s32 Q2, Q2, Q6
// input[176]: Already loaded as Q1
vqrdmulh.s32 Q0, Q1, r8
// input[656]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * -100)]
vmul.u32 Q1, Q1, r7
// input[416]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * -88)]
vqrdmlah.s32 Q0, Q1, r10
vstrw.u32 Q2, [r12,#(32)]
// Release input[512] from Q2
vqrdmulh.s32 Q2, Q3, r8
vsub.s32 Q1, Q4, Q0
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q2, Q3, r10
// input[128]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -124)]
vqrdmulh.s32 Q5, Q1, r4
vsub.s32 Q3, Q0, Q2
vmul.u32 Q1, Q1, r3
vadd.s32 Q0, Q0, Q2
vqrdmlah.s32 Q5, Q1, r10
// input[368]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 116)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(-304)]
// Release input[176] from Q1
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r11,#(-400)]
// Release input[656] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r12,#(-352)]
// Release input[416] from Q4
vadd.s32 Q0, Q0, Q6
// input[368]: Already loaded as Q2
vqrdmulh.s32 Q1, Q2, r8
// input[80]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 80)]
vmul.u32 Q2, Q2, r7
// input[608]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * 104)]
vqrdmlah.s32 Q1, Q2, r10
vstrw.u32 Q0, [r14,#(-496)]
// Release input[128] from Q0
vqrdmulh.s32 Q0, Q3, r8
vsub.s32 Q2, Q4, Q1
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q0, Q3, r10
// input[320]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 68)]
vqrdmulh.s32 Q5, Q2, r4
vsub.s32 Q3, Q1, Q0
vmul.u32 Q2, Q2, r3
vadd.s32 Q1, Q1, Q0
vqrdmlah.s32 Q5, Q2, r10
// input[752]: Load as Q0
vldrw.u32 Q0, [r11, #(4 * -4)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(464)]
// Release input[368] from Q2
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r0,#(320)]
// Release input[80] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r12,#(416)]
// Release input[608] from Q4
vadd.s32 Q1, Q1, Q6
// input[752]: Already loaded as Q0
vqrdmulh.s32 Q2, Q0, r8
// input[464]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -40)]
vmul.u32 Q0, Q0, r7
// input[224]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -28)]
vqrdmlah.s32 Q2, Q0, r10
vstrw.u32 Q1, [r14,#(272)]
// Release input[320] from Q1
vqrdmulh.s32 Q1, Q3, r8
vsub.s32 Q0, Q4, Q2
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q1, Q3, r10
// input[704]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * -52)]
vqrdmulh.s32 Q5, Q0, r4
vsub.s32 Q3, Q2, Q1
vmul.u32 Q0, Q0, r3
vadd.s32 Q2, Q2, Q1
vqrdmlah.s32 Q5, Q0, r10
// input[312]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 60)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r11,#(-16)]
// Release input[752] from Q0
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r12,#(-160)]
// Release input[464] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r14,#(-112)]
// Release input[224] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r8, r7, [r9], #+8
ldrd r6, r5, [r9], #+8
ldrd r4, r3, [r9], #+8
// input[312]: Already loaded as Q1
vqrdmulh.s32 Q0, Q1, r8
// input[24]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 24)]
vmul.u32 Q1, Q1, r7
// input[552]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * 48)]
vqrdmlah.s32 Q0, Q1, r10
vstrw.u32 Q2, [r11,#(-208)]
// Release input[704] from Q2
vqrdmulh.s32 Q2, Q3, r8
vsub.s32 Q1, Q4, Q0
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q2, Q3, r10
// input[264]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 12)]
vqrdmulh.s32 Q5, Q1, r4
vsub.s32 Q3, Q0, Q2
vmul.u32 Q1, Q1, r3
vadd.s32 Q0, Q0, Q2
vqrdmlah.s32 Q5, Q1, r10
// input[696]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * -60)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(240)]
// Release input[312] from Q1
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r0,#(96)]
// Release input[24] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r12,#(192)]
// Release input[552] from Q4
vadd.s32 Q0, Q0, Q6
// input[696]: Already loaded as Q2
vqrdmulh.s32 Q1, Q2, r8
// input[408]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -96)]
vmul.u32 Q2, Q2, r7
// input[168]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -84)]
vqrdmlah.s32 Q1, Q2, r10
vstrw.u32 Q0, [r14,#(48)]
// Release input[264] from Q0
vqrdmulh.s32 Q0, Q3, r8
vsub.s32 Q2, Q4, Q1
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q0, Q3, r10
// input[648]: Load as Q1
vldrw.u32 Q1, [r11, #(4 * -108)]
vqrdmulh.s32 Q5, Q2, r4
vsub.s32 Q3, Q1, Q0
vmul.u32 Q2, Q2, r3
vadd.s32 Q1, Q1, Q0
vqrdmlah.s32 Q5, Q2, r10
// input[120]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 120)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r11,#(-240)]
// Release input[696] from Q2
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r12,#(-384)]
// Release input[408] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r14,#(-336)]
// Release input[168] from Q4
vadd.s32 Q1, Q1, Q6
// input[120]: Already loaded as Q0
vqrdmulh.s32 Q2, Q0, r8
// input[600]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * 96)]
vmul.u32 Q0, Q0, r7
// input[360]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 108)]
vqrdmlah.s32 Q2, Q0, r10
vstrw.u32 Q1, [r11,#(-432)]
// Release input[648] from Q1
vqrdmulh.s32 Q1, Q3, r8
vsub.s32 Q0, Q4, Q2
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q1, Q3, r10
// input[72]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 72)]
vqrdmulh.s32 Q5, Q0, r4
vsub.s32 Q3, Q2, Q1
vmul.u32 Q0, Q0, r3
vadd.s32 Q2, Q2, Q1
vqrdmlah.s32 Q5, Q0, r10
// input[504]: Load as Q1
vldrw.u32 Q1, [r12, #(4 * 0)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r0,#(480)]
// Release input[120] from Q0
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r12,#(384)]
// Release input[600] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r14,#(432)]
// Release input[360] from Q4
vadd.s32 Q2, Q2, Q6
// input[504]: Already loaded as Q1
vqrdmulh.s32 Q0, Q1, r8
// input[216]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -36)]
vmul.u32 Q1, Q1, r7
// input[744]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -12)]
vqrdmlah.s32 Q0, Q1, r10
vstrw.u32 Q2, [r0,#(288)]
// Release input[72] from Q2
vqrdmulh.s32 Q2, Q3, r8
vsub.s32 Q1, Q4, Q0
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q2, Q3, r10
// input[456]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -48)]
vqrdmulh.s32 Q5, Q1, r4
vsub.s32 Q3, Q0, Q2
vmul.u32 Q1, Q1, r3
vadd.s32 Q0, Q0, Q2
vqrdmlah.s32 Q5, Q1, r10
// input[568]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * 64)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r12,#(0)]
// Release input[504] from Q1
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r14,#(-144)]
// Release input[216] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r11,#(-48)]
// Release input[744] from Q4
vadd.s32 Q0, Q0, Q6
// input[568]: Already loaded as Q2
vqrdmulh.s32 Q1, Q2, r8
// input[280]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 28)]
vmul.u32 Q2, Q2, r7
// input[40]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 40)]
vqrdmlah.s32 Q1, Q2, r10
vstrw.u32 Q0, [r12,#(-192)]
// Release input[456] from Q0
vqrdmulh.s32 Q0, Q3, r8
vsub.s32 Q2, Q4, Q1
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q0, Q3, r10
// input[520]: Load as Q1
vldrw.u32 Q1, [r12, #(4 * 16)]
vqrdmulh.s32 Q5, Q2, r4
vsub.s32 Q3, Q1, Q0
vmul.u32 Q2, Q2, r3
vadd.s32 Q1, Q1, Q0
vqrdmlah.s32 Q5, Q2, r10
// input[184]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -68)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r12,#(256)]
// Release input[568] from Q2
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r14,#(112)]
// Release input[280] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r0,#(160)]
// Release input[40] from Q4
vadd.s32 Q1, Q1, Q6
// input[184]: Already loaded as Q0
vqrdmulh.s32 Q2, Q0, r8
// input[664]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * -92)]
vmul.u32 Q0, Q0, r7
// input[424]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * -80)]
vqrdmlah.s32 Q2, Q0, r10
vstrw.u32 Q1, [r12,#(64)]
// Release input[520] from Q1
vqrdmulh.s32 Q1, Q3, r8
vsub.s32 Q0, Q4, Q2
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q1, Q3, r10
// input[136]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -116)]
vqrdmulh.s32 Q5, Q0, r4
vsub.s32 Q3, Q2, Q1
vmul.u32 Q0, Q0, r3
vadd.s32 Q2, Q2, Q1
vqrdmlah.s32 Q5, Q0, r10
// input[376]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 124)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(-272)]
// Release input[184] from Q0
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r11,#(-368)]
// Release input[664] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r12,#(-320)]
// Release input[424] from Q4
vadd.s32 Q2, Q2, Q6
// input[376]: Already loaded as Q1
vqrdmulh.s32 Q0, Q1, r8
// input[88]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 88)]
vmul.u32 Q1, Q1, r7
// input[616]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * 112)]
vqrdmlah.s32 Q0, Q1, r10
vstrw.u32 Q2, [r14,#(-464)]
// Release input[136] from Q2
vqrdmulh.s32 Q2, Q3, r8
vsub.s32 Q1, Q4, Q0
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q2, Q3, r10
// input[328]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 76)]
vqrdmulh.s32 Q5, Q1, r4
vsub.s32 Q3, Q0, Q2
vmul.u32 Q1, Q1, r3
vadd.s32 Q0, Q0, Q2
vqrdmlah.s32 Q5, Q1, r10
// input[760]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * 4)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(496)]
// Release input[376] from Q1
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r0,#(352)]
// Release input[88] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r12,#(448)]
// Release input[616] from Q4
vadd.s32 Q0, Q0, Q6
// input[760]: Already loaded as Q2
vqrdmulh.s32 Q1, Q2, r8
// input[472]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -32)]
vmul.u32 Q2, Q2, r7
// input[232]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -20)]
vqrdmlah.s32 Q1, Q2, r10
vstrw.u32 Q0, [r14,#(304)]
// Release input[328] from Q0
vqrdmulh.s32 Q0, Q3, r8
vsub.s32 Q2, Q4, Q1
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q0, Q3, r10
// input[712]: Load as Q1
vldrw.u32 Q1, [r11, #(4 * -44)]
vqrdmulh.s32 Q5, Q2, r4
vsub.s32 Q3, Q1, Q0
vmul.u32 Q2, Q2, r3
vadd.s32 Q1, Q1, Q0
vqrdmlah.s32 Q5, Q2, r10
// input[56]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 56)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r11,#(16)]
// Release input[760] from Q2
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r12,#(-128)]
// Release input[472] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r14,#(-80)]
// Release input[232] from Q4
vadd.s32 Q1, Q1, Q6
// input[56]: Already loaded as Q0
vqrdmulh.s32 Q2, Q0, r8
// input[536]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * 32)]
vmul.u32 Q0, Q0, r7
// input[296]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 44)]
vqrdmlah.s32 Q2, Q0, r10
vstrw.u32 Q1, [r11,#(-176)]
// Release input[712] from Q1
vqrdmulh.s32 Q1, Q3, r8
vsub.s32 Q0, Q4, Q2
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q1, Q3, r10
// input[8]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 8)]
vqrdmulh.s32 Q5, Q0, r4
vsub.s32 Q3, Q2, Q1
vmul.u32 Q0, Q0, r3
vadd.s32 Q2, Q2, Q1
vqrdmlah.s32 Q5, Q0, r10
// input[440]: Load as Q1
vldrw.u32 Q1, [r12, #(4 * -64)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r0,#(224)]
// Release input[56] from Q0
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r12,#(128)]
// Release input[536] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r14,#(176)]
// Release input[296] from Q4
vadd.s32 Q2, Q2, Q6
// input[440]: Already loaded as Q1
vqrdmulh.s32 Q0, Q1, r8
// input[152]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -100)]
vmul.u32 Q1, Q1, r7
// input[680]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -76)]
vqrdmlah.s32 Q0, Q1, r10
vstrw.u32 Q2, [r0,#(32)]
// Release input[8] from Q2
vqrdmulh.s32 Q2, Q3, r8
vsub.s32 Q1, Q4, Q0
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q2, Q3, r10
// input[392]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -112)]
vqrdmulh.s32 Q5, Q1, r4
vsub.s32 Q3, Q0, Q2
vmul.u32 Q1, Q1, r3
vadd.s32 Q0, Q0, Q2
vqrdmlah.s32 Q5, Q1, r10
// input[632]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * -124)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r12,#(-256)]
// Release input[440] from Q1
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r14,#(-400)]
// Release input[152] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r11,#(-304)]
// Release input[680] from Q4
vadd.s32 Q0, Q0, Q6
// input[632]: Already loaded as Q2
vqrdmulh.s32 Q1, Q2, r8
// input[344]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 92)]
vmul.u32 Q2, Q2, r7
// input[104]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 104)]
vqrdmlah.s32 Q1, Q2, r10
vstrw.u32 Q0, [r12,#(-448)]
// Release input[392] from Q0
vqrdmulh.s32 Q0, Q3, r8
vsub.s32 Q2, Q4, Q1
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q0, Q3, r10
// input[584]: Load as Q1
vldrw.u32 Q1, [r12, #(4 * 80)]
vqrdmulh.s32 Q5, Q2, r4
vsub.s32 Q3, Q1, Q0
vmul.u32 Q2, Q2, r3
vadd.s32 Q1, Q1, Q0
vqrdmlah.s32 Q5, Q2, r10
// input[248]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -4)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r11,#(-496)]
// Release input[632] from Q2
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r14,#(368)]
// Release input[344] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r0,#(416)]
// Release input[104] from Q4
vadd.s32 Q1, Q1, Q6
// input[248]: Already loaded as Q0
vqrdmulh.s32 Q2, Q0, r8
// input[728]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * -28)]
vmul.u32 Q0, Q0, r7
// input[488]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * -16)]
vqrdmlah.s32 Q2, Q0, r10
vstrw.u32 Q1, [r12,#(320)]
// Release input[584] from Q1
vqrdmulh.s32 Q1, Q3, r8
vsub.s32 Q0, Q4, Q2
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q1, Q3, r10
// input[200]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -52)]
vqrdmulh.s32 Q5, Q0, r4
vsub.s32 Q3, Q2, Q1
vmul.u32 Q0, Q0, r3
vadd.s32 Q2, Q2, Q1
vqrdmlah.s32 Q5, Q0, r10
// input[564]: Load as Q1
vldrw.u32 Q1, [r12, #(4 * 60)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(-16)]
// Release input[248] from Q0
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r11,#(-112)]
// Release input[728] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r12,#(-64)]
// Release input[488] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r8, r7, [r9], #+8
ldrd r6, r5, [r9], #+8
ldrd r4, r3, [r9], #+8
// input[564]: Already loaded as Q1
vqrdmulh.s32 Q0, Q1, r8
// input[276]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 24)]
vmul.u32 Q1, Q1, r7
// input[36]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 36)]
vqrdmlah.s32 Q0, Q1, r10
vstrw.u32 Q2, [r14,#(-208)]
// Release input[200] from Q2
vqrdmulh.s32 Q2, Q3, r8
vsub.s32 Q1, Q4, Q0
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q2, Q3, r10
// input[516]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * 12)]
vqrdmulh.s32 Q5, Q1, r4
vsub.s32 Q3, Q0, Q2
vmul.u32 Q1, Q1, r3
vadd.s32 Q0, Q0, Q2
vqrdmlah.s32 Q5, Q1, r10
// input[180]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -72)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r12,#(240)]
// Release input[564] from Q1
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r14,#(96)]
// Release input[276] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r0,#(144)]
// Release input[36] from Q4
vadd.s32 Q0, Q0, Q6
// input[180]: Already loaded as Q2
vqrdmulh.s32 Q1, Q2, r8
// input[660]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * -96)]
vmul.u32 Q2, Q2, r7
// input[420]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * -84)]
vqrdmlah.s32 Q1, Q2, r10
vstrw.u32 Q0, [r12,#(48)]
// Release input[516] from Q0
vqrdmulh.s32 Q0, Q3, r8
vsub.s32 Q2, Q4, Q1
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q0, Q3, r10
// input[132]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -120)]
vqrdmulh.s32 Q5, Q2, r4
vsub.s32 Q3, Q1, Q0
vmul.u32 Q2, Q2, r3
vadd.s32 Q1, Q1, Q0
vqrdmlah.s32 Q5, Q2, r10
// input[372]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 120)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(-288)]
// Release input[180] from Q2
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r11,#(-384)]
// Release input[660] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r12,#(-336)]
// Release input[420] from Q4
vadd.s32 Q1, Q1, Q6
// input[372]: Already loaded as Q0
vqrdmulh.s32 Q2, Q0, r8
// input[84]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 84)]
vmul.u32 Q0, Q0, r7
// input[612]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * 108)]
vqrdmlah.s32 Q2, Q0, r10
vstrw.u32 Q1, [r14,#(-480)]
// Release input[132] from Q1
vqrdmulh.s32 Q1, Q3, r8
vsub.s32 Q0, Q4, Q2
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q1, Q3, r10
// input[324]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 72)]
vqrdmulh.s32 Q5, Q0, r4
vsub.s32 Q3, Q2, Q1
vmul.u32 Q0, Q0, r3
vadd.s32 Q2, Q2, Q1
vqrdmlah.s32 Q5, Q0, r10
// input[756]: Load as Q1
vldrw.u32 Q1, [r11, #(4 * 0)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(480)]
// Release input[372] from Q0
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r0,#(336)]
// Release input[84] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r12,#(432)]
// Release input[612] from Q4
vadd.s32 Q2, Q2, Q6
// input[756]: Already loaded as Q1
vqrdmulh.s32 Q0, Q1, r8
// input[468]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -36)]
vmul.u32 Q1, Q1, r7
// input[228]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -24)]
vqrdmlah.s32 Q0, Q1, r10
vstrw.u32 Q2, [r14,#(288)]
// Release input[324] from Q2
vqrdmulh.s32 Q2, Q3, r8
vsub.s32 Q1, Q4, Q0
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q2, Q3, r10
// input[708]: Load as Q0
vldrw.u32 Q0, [r11, #(4 * -48)]
vqrdmulh.s32 Q5, Q1, r4
vsub.s32 Q3, Q0, Q2
vmul.u32 Q1, Q1, r3
vadd.s32 Q0, Q0, Q2
vqrdmlah.s32 Q5, Q1, r10
// input[52]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 52)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r11,#(0)]
// Release input[756] from Q1
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r12,#(-144)]
// Release input[468] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(-96)]
// Release input[228] from Q4
vadd.s32 Q0, Q0, Q6
// input[52]: Already loaded as Q2
vqrdmulh.s32 Q1, Q2, r8
// input[532]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * 28)]
vmul.u32 Q2, Q2, r7
// input[292]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 40)]
vqrdmlah.s32 Q1, Q2, r10
vstrw.u32 Q0, [r11,#(-192)]
// Release input[708] from Q0
vqrdmulh.s32 Q0, Q3, r8
vsub.s32 Q2, Q4, Q1
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q0, Q3, r10
// input[4]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 4)]
vqrdmulh.s32 Q5, Q2, r4
vsub.s32 Q3, Q1, Q0
vmul.u32 Q2, Q2, r3
vadd.s32 Q1, Q1, Q0
vqrdmlah.s32 Q5, Q2, r10
// input[436]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -68)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r0,#(208)]
// Release input[52] from Q2
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r12,#(112)]
// Release input[532] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r14,#(160)]
// Release input[292] from Q4
vadd.s32 Q1, Q1, Q6
// input[436]: Already loaded as Q0
vqrdmulh.s32 Q2, Q0, r8
// input[148]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -104)]
vmul.u32 Q0, Q0, r7
// input[676]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -80)]
vqrdmlah.s32 Q2, Q0, r10
vstrw.u32 Q1, [r0,#(16)]
// Release input[4] from Q1
vqrdmulh.s32 Q1, Q3, r8
vsub.s32 Q0, Q4, Q2
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q1, Q3, r10
// input[388]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * -116)]
vqrdmulh.s32 Q5, Q0, r4
vsub.s32 Q3, Q2, Q1
vmul.u32 Q0, Q0, r3
vadd.s32 Q2, Q2, Q1
vqrdmlah.s32 Q5, Q0, r10
// input[628]: Load as Q1
vldrw.u32 Q1, [r12, #(4 * 124)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r12,#(-272)]
// Release input[436] from Q0
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r14,#(-416)]
// Release input[148] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r11,#(-320)]
// Release input[676] from Q4
vadd.s32 Q2, Q2, Q6
// input[628]: Already loaded as Q1
vqrdmulh.s32 Q0, Q1, r8
// input[340]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 88)]
vmul.u32 Q1, Q1, r7
// input[100]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 100)]
vqrdmlah.s32 Q0, Q1, r10
vstrw.u32 Q2, [r12,#(-464)]
// Release input[388] from Q2
vqrdmulh.s32 Q2, Q3, r8
vsub.s32 Q1, Q4, Q0
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q2, Q3, r10
// input[580]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * 76)]
vqrdmulh.s32 Q5, Q1, r4
vsub.s32 Q3, Q0, Q2
vmul.u32 Q1, Q1, r3
vadd.s32 Q0, Q0, Q2
vqrdmlah.s32 Q5, Q1, r10
// input[244]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -8)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r12,#(496)]
// Release input[628] from Q1
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r14,#(352)]
// Release input[340] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r0,#(400)]
// Release input[100] from Q4
vadd.s32 Q0, Q0, Q6
// input[244]: Already loaded as Q2
vqrdmulh.s32 Q1, Q2, r8
// input[724]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * -32)]
vmul.u32 Q2, Q2, r7
// input[484]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * -20)]
vqrdmlah.s32 Q1, Q2, r10
vstrw.u32 Q0, [r12,#(304)]
// Release input[580] from Q0
vqrdmulh.s32 Q0, Q3, r8
vsub.s32 Q2, Q4, Q1
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q0, Q3, r10
// input[196]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -56)]
vqrdmulh.s32 Q5, Q2, r4
vsub.s32 Q3, Q1, Q0
vmul.u32 Q2, Q2, r3
vadd.s32 Q1, Q1, Q0
vqrdmlah.s32 Q5, Q2, r10
// input[308]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 56)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(-32)]
// Release input[244] from Q2
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r11,#(-128)]
// Release input[724] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r12,#(-80)]
// Release input[484] from Q4
vadd.s32 Q1, Q1, Q6
// input[308]: Already loaded as Q0
vqrdmulh.s32 Q2, Q0, r8
// input[20]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 20)]
vmul.u32 Q0, Q0, r7
// input[548]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * 44)]
vqrdmlah.s32 Q2, Q0, r10
vstrw.u32 Q1, [r14,#(-224)]
// Release input[196] from Q1
vqrdmulh.s32 Q1, Q3, r8
vsub.s32 Q0, Q4, Q2
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q1, Q3, r10
// input[260]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 8)]
vqrdmulh.s32 Q5, Q0, r4
vsub.s32 Q3, Q2, Q1
vmul.u32 Q0, Q0, r3
vadd.s32 Q2, Q2, Q1
vqrdmlah.s32 Q5, Q0, r10
// input[692]: Load as Q1
vldrw.u32 Q1, [r11, #(4 * -64)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(224)]
// Release input[308] from Q0
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r0,#(80)]
// Release input[20] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r12,#(176)]
// Release input[548] from Q4
vadd.s32 Q2, Q2, Q6
// input[692]: Already loaded as Q1
vqrdmulh.s32 Q0, Q1, r8
// input[404]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -100)]
vmul.u32 Q1, Q1, r7
// input[164]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -88)]
vqrdmlah.s32 Q0, Q1, r10
vstrw.u32 Q2, [r14,#(32)]
// Release input[260] from Q2
vqrdmulh.s32 Q2, Q3, r8
vsub.s32 Q1, Q4, Q0
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q2, Q3, r10
// input[644]: Load as Q0
vldrw.u32 Q0, [r11, #(4 * -112)]
vqrdmulh.s32 Q5, Q1, r4
vsub.s32 Q3, Q0, Q2
vmul.u32 Q1, Q1, r3
vadd.s32 Q0, Q0, Q2
vqrdmlah.s32 Q5, Q1, r10
// input[116]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 116)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r11,#(-256)]
// Release input[692] from Q1
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r12,#(-400)]
// Release input[404] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(-352)]
// Release input[164] from Q4
vadd.s32 Q0, Q0, Q6
// input[116]: Already loaded as Q2
vqrdmulh.s32 Q1, Q2, r8
// input[596]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * 92)]
vmul.u32 Q2, Q2, r7
// input[356]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 104)]
vqrdmlah.s32 Q1, Q2, r10
vstrw.u32 Q0, [r11,#(-448)]
// Release input[644] from Q0
vqrdmulh.s32 Q0, Q3, r8
vsub.s32 Q2, Q4, Q1
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q0, Q3, r10
// input[68]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 68)]
vqrdmulh.s32 Q5, Q2, r4
vsub.s32 Q3, Q1, Q0
vmul.u32 Q2, Q2, r3
vadd.s32 Q1, Q1, Q0
vqrdmlah.s32 Q5, Q2, r10
// input[500]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -4)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r0,#(464)]
// Release input[116] from Q2
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r12,#(368)]
// Release input[596] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r14,#(416)]
// Release input[356] from Q4
vadd.s32 Q1, Q1, Q6
// input[500]: Already loaded as Q0
vqrdmulh.s32 Q2, Q0, r8
// input[212]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -40)]
vmul.u32 Q0, Q0, r7
// input[740]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -16)]
vqrdmlah.s32 Q2, Q0, r10
vstrw.u32 Q1, [r0,#(272)]
// Release input[68] from Q1
vqrdmulh.s32 Q1, Q3, r8
vsub.s32 Q0, Q4, Q2
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q1, Q3, r10
// input[452]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * -52)]
vqrdmulh.s32 Q5, Q0, r4
vsub.s32 Q3, Q2, Q1
vmul.u32 Q0, Q0, r3
vadd.s32 Q2, Q2, Q1
vqrdmlah.s32 Q5, Q0, r10
// input[60]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 60)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r12,#(-16)]
// Release input[500] from Q0
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r14,#(-160)]
// Release input[212] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r11,#(-64)]
// Release input[740] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r8, r7, [r9], #+8
ldrd r6, r5, [r9], #+8
ldrd r4, r3, [r9], #+8
// input[60]: Already loaded as Q1
vqrdmulh.s32 Q0, Q1, r8
// input[540]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * 36)]
vmul.u32 Q1, Q1, r7
// input[300]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 48)]
vqrdmlah.s32 Q0, Q1, r10
vstrw.u32 Q2, [r12,#(-208)]
// Release input[452] from Q2
vqrdmulh.s32 Q2, Q3, r8
vsub.s32 Q1, Q4, Q0
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q2, Q3, r10
// input[12]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 12)]
vqrdmulh.s32 Q5, Q1, r4
vsub.s32 Q3, Q0, Q2
vmul.u32 Q1, Q1, r3
vadd.s32 Q0, Q0, Q2
vqrdmlah.s32 Q5, Q1, r10
// input[444]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * -60)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r0,#(240)]
// Release input[60] from Q1
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r12,#(144)]
// Release input[540] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(192)]
// Release input[300] from Q4
vadd.s32 Q0, Q0, Q6
// input[444]: Already loaded as Q2
vqrdmulh.s32 Q1, Q2, r8
// input[156]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -96)]
vmul.u32 Q2, Q2, r7
// input[684]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -72)]
vqrdmlah.s32 Q1, Q2, r10
vstrw.u32 Q0, [r0,#(48)]
// Release input[12] from Q0
vqrdmulh.s32 Q0, Q3, r8
vsub.s32 Q2, Q4, Q1
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q0, Q3, r10
// input[396]: Load as Q1
vldrw.u32 Q1, [r12, #(4 * -108)]
vqrdmulh.s32 Q5, Q2, r4
vsub.s32 Q3, Q1, Q0
vmul.u32 Q2, Q2, r3
vadd.s32 Q1, Q1, Q0
vqrdmlah.s32 Q5, Q2, r10
// input[636]: Load as Q0
vldrw.u32 Q0, [r11, #(4 * -120)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r12,#(-240)]
// Release input[444] from Q2
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r14,#(-384)]
// Release input[156] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r11,#(-288)]
// Release input[684] from Q4
vadd.s32 Q1, Q1, Q6
// input[636]: Already loaded as Q0
vqrdmulh.s32 Q2, Q0, r8
// input[348]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 96)]
vmul.u32 Q0, Q0, r7
// input[108]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 108)]
vqrdmlah.s32 Q2, Q0, r10
vstrw.u32 Q1, [r12,#(-432)]
// Release input[396] from Q1
vqrdmulh.s32 Q1, Q3, r8
vsub.s32 Q0, Q4, Q2
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q1, Q3, r10
// input[588]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * 84)]
vqrdmulh.s32 Q5, Q0, r4
vsub.s32 Q3, Q2, Q1
vmul.u32 Q0, Q0, r3
vadd.s32 Q2, Q2, Q1
vqrdmlah.s32 Q5, Q0, r10
// input[252]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 0)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r11,#(-480)]
// Release input[636] from Q0
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r14,#(384)]
// Release input[348] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r0,#(432)]
// Release input[108] from Q4
vadd.s32 Q2, Q2, Q6
// input[252]: Already loaded as Q1
vqrdmulh.s32 Q0, Q1, r8
// input[732]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * -24)]
vmul.u32 Q1, Q1, r7
// input[492]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * -12)]
vqrdmlah.s32 Q0, Q1, r10
vstrw.u32 Q2, [r12,#(336)]
// Release input[588] from Q2
vqrdmulh.s32 Q2, Q3, r8
vsub.s32 Q1, Q4, Q0
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q2, Q3, r10
// input[204]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -48)]
vqrdmulh.s32 Q5, Q1, r4
vsub.s32 Q3, Q0, Q2
vmul.u32 Q1, Q1, r3
vadd.s32 Q0, Q0, Q2
vqrdmlah.s32 Q5, Q1, r10
// input[316]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 64)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(0)]
// Release input[252] from Q1
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r11,#(-96)]
// Release input[732] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r12,#(-48)]
// Release input[492] from Q4
vadd.s32 Q0, Q0, Q6
// input[316]: Already loaded as Q2
vqrdmulh.s32 Q1, Q2, r8
// input[28]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 28)]
vmul.u32 Q2, Q2, r7
// input[556]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * 52)]
vqrdmlah.s32 Q1, Q2, r10
vstrw.u32 Q0, [r14,#(-192)]
// Release input[204] from Q0
vqrdmulh.s32 Q0, Q3, r8
vsub.s32 Q2, Q4, Q1
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q0, Q3, r10
// input[268]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 16)]
vqrdmulh.s32 Q5, Q2, r4
vsub.s32 Q3, Q1, Q0
vmul.u32 Q2, Q2, r3
vadd.s32 Q1, Q1, Q0
vqrdmlah.s32 Q5, Q2, r10
// input[700]: Load as Q0
vldrw.u32 Q0, [r11, #(4 * -56)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(256)]
// Release input[316] from Q2
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r0,#(112)]
// Release input[28] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r12,#(208)]
// Release input[556] from Q4
vadd.s32 Q1, Q1, Q6
// input[700]: Already loaded as Q0
vqrdmulh.s32 Q2, Q0, r8
// input[412]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -92)]
vmul.u32 Q0, Q0, r7
// input[172]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -80)]
vqrdmlah.s32 Q2, Q0, r10
vstrw.u32 Q1, [r14,#(64)]
// Release input[268] from Q1
vqrdmulh.s32 Q1, Q3, r8
vsub.s32 Q0, Q4, Q2
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q1, Q3, r10
// input[652]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * -104)]
vqrdmulh.s32 Q5, Q0, r4
vsub.s32 Q3, Q2, Q1
vmul.u32 Q0, Q0, r3
vadd.s32 Q2, Q2, Q1
vqrdmlah.s32 Q5, Q0, r10
// input[124]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 124)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r11,#(-224)]
// Release input[700] from Q0
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r12,#(-368)]
// Release input[412] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r14,#(-320)]
// Release input[172] from Q4
vadd.s32 Q2, Q2, Q6
// input[124]: Already loaded as Q1
vqrdmulh.s32 Q0, Q1, r8
// input[604]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * 100)]
vmul.u32 Q1, Q1, r7
// input[364]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 112)]
vqrdmlah.s32 Q0, Q1, r10
vstrw.u32 Q2, [r11,#(-416)]
// Release input[652] from Q2
vqrdmulh.s32 Q2, Q3, r8
vsub.s32 Q1, Q4, Q0
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q2, Q3, r10
// input[76]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 76)]
vqrdmulh.s32 Q5, Q1, r4
vsub.s32 Q3, Q0, Q2
vmul.u32 Q1, Q1, r3
vadd.s32 Q0, Q0, Q2
vqrdmlah.s32 Q5, Q1, r10
// input[508]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * 4)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r0,#(496)]
// Release input[124] from Q1
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r12,#(400)]
// Release input[604] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(448)]
// Release input[364] from Q4
vadd.s32 Q0, Q0, Q6
// input[508]: Already loaded as Q2
vqrdmulh.s32 Q1, Q2, r8
// input[220]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -32)]
vmul.u32 Q2, Q2, r7
// input[748]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -8)]
vqrdmlah.s32 Q1, Q2, r10
vstrw.u32 Q0, [r0,#(304)]
// Release input[76] from Q0
vqrdmulh.s32 Q0, Q3, r8
vsub.s32 Q2, Q4, Q1
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q0, Q3, r10
// input[460]: Load as Q1
vldrw.u32 Q1, [r12, #(4 * -44)]
vqrdmulh.s32 Q5, Q2, r4
vsub.s32 Q3, Q1, Q0
vmul.u32 Q2, Q2, r3
vadd.s32 Q1, Q1, Q0
vqrdmlah.s32 Q5, Q2, r10
// input[572]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * 68)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r12,#(16)]
// Release input[508] from Q2
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r14,#(-128)]
// Release input[220] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r11,#(-32)]
// Release input[748] from Q4
vadd.s32 Q1, Q1, Q6
// input[572]: Already loaded as Q0
vqrdmulh.s32 Q2, Q0, r8
// input[284]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 32)]
vmul.u32 Q0, Q0, r7
// input[44]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 44)]
vqrdmlah.s32 Q2, Q0, r10
vstrw.u32 Q1, [r12,#(-176)]
// Release input[460] from Q1
vqrdmulh.s32 Q1, Q3, r8
vsub.s32 Q0, Q4, Q2
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q1, Q3, r10
// input[524]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * 20)]
vqrdmulh.s32 Q5, Q0, r4
vsub.s32 Q3, Q2, Q1
vmul.u32 Q0, Q0, r3
vadd.s32 Q2, Q2, Q1
vqrdmlah.s32 Q5, Q0, r10
// input[188]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -64)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r12,#(272)]
// Release input[572] from Q0
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r14,#(128)]
// Release input[284] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r0,#(176)]
// Release input[44] from Q4
vadd.s32 Q2, Q2, Q6
// input[188]: Already loaded as Q1
vqrdmulh.s32 Q0, Q1, r8
// input[668]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * -88)]
vmul.u32 Q1, Q1, r7
// input[428]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * -76)]
vqrdmlah.s32 Q0, Q1, r10
vstrw.u32 Q2, [r12,#(80)]
// Release input[524] from Q2
vqrdmulh.s32 Q2, Q3, r8
vsub.s32 Q1, Q4, Q0
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q2, Q3, r10
// input[140]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -112)]
vqrdmulh.s32 Q5, Q1, r4
vsub.s32 Q3, Q0, Q2
vmul.u32 Q1, Q1, r3
vadd.s32 Q0, Q0, Q2
vqrdmlah.s32 Q5, Q1, r10
// input[380]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * -124)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(-256)]
// Release input[188] from Q1
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r11,#(-352)]
// Release input[668] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r12,#(-304)]
// Release input[428] from Q4
vadd.s32 Q0, Q0, Q6
// input[380]: Already loaded as Q2
vqrdmulh.s32 Q1, Q2, r8
// input[92]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 92)]
vmul.u32 Q2, Q2, r7
// input[620]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * 116)]
vqrdmlah.s32 Q1, Q2, r10
vstrw.u32 Q0, [r14,#(-448)]
// Release input[140] from Q0
vqrdmulh.s32 Q0, Q3, r8
vsub.s32 Q2, Q4, Q1
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q0, Q3, r10
// input[332]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 80)]
vqrdmulh.s32 Q5, Q2, r4
vsub.s32 Q3, Q1, Q0
vmul.u32 Q2, Q2, r3
vadd.s32 Q1, Q1, Q0
vqrdmlah.s32 Q5, Q2, r10
// input[764]: Load as Q0
vldrw.u32 Q0, [r11, #(4 * 8)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r12,#(-496)]
// Release input[380] from Q2
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r0,#(368)]
// Release input[92] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r12,#(464)]
// Release input[620] from Q4
vadd.s32 Q1, Q1, Q6
// input[764]: Already loaded as Q0
vqrdmulh.s32 Q2, Q0, r8
// input[476]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -28)]
vmul.u32 Q0, Q0, r7
// input[236]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -16)]
vqrdmlah.s32 Q2, Q0, r10
vstrw.u32 Q1, [r14,#(320)]
// Release input[332] from Q1
vqrdmulh.s32 Q1, Q3, r8
vsub.s32 Q0, Q4, Q2
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q1, Q3, r10
// input[716]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * -40)]
vqrdmulh.s32 Q5, Q0, r4
vsub.s32 Q3, Q2, Q1
vmul.u32 Q0, Q0, r3
vadd.s32 Q2, Q2, Q1
vqrdmlah.s32 Q5, Q0, r10
// input[192]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -60)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r11,#(32)]
// Release input[764] from Q0
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r12,#(-112)]
// Release input[476] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r14,#(-64)]
// Release input[236] from Q4
vadd.s32 Q2, Q2, Q6
vstrw.u32 Q2, [r11,#(-160)]
// Release input[716] from Q2
ldrd r8, r7, [r9], #+8
ldrd r6, r5, [r9], #+8
ldrd r4, r3, [r9], #+8
// input[192]: Already loaded as Q1
vqrdmulh.s32 Q0, Q1, r8
// input[576]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * 72)]
vmul.u32 Q1, Q1, r7
// input[384]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -120)]
vqrdmlah.s32 Q0, Q1, r10
vqrdmulh.s32 Q4, Q2, r8
vsub.s32 Q1, Q3, Q0
vmul.u32 Q2, Q2, r7
vadd.s32 Q3, Q3, Q0
vqrdmlah.s32 Q4, Q2, r10
// input[0]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 0)]
vqrdmulh.s32 Q5, Q1, r4
vsub.s32 Q2, Q0, Q4
vmul.u32 Q1, Q1, r3
vadd.s32 Q0, Q0, Q4
vqrdmlah.s32 Q5, Q1, r10
// input[448]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * -56)]
vqrdmulh.s32 Q6, Q3, r6
vsub.s32 Q1, Q2, Q5
vmul.u32 Q3, Q3, r5
vadd.s32 Q2, Q2, Q5
vstrw.u32 Q1, [r14,#(-240)]
// Release input[192] from Q1
vqrdmlah.s32 Q6, Q3, r10
vstrw.u32 Q2, [r12,#(288)]
// Release input[576] from Q2
vsub.s32 Q3, Q0, Q6
vstrw.u32 Q3, [r12,#(-480)]
// Release input[384] from Q3
vadd.s32 Q0, Q0, Q6
// input[448]: Already loaded as Q4
vqrdmulh.s32 Q1, Q4, r8
// input[64]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 64)]
vmul.u32 Q4, Q4, r7
// input[640]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * -116)]
vqrdmlah.s32 Q1, Q4, r10
vstrw.u32 Q0, [r0,#(0)]
// Release input[0] from Q0
vqrdmulh.s32 Q0, Q2, r8
vsub.s32 Q4, Q3, Q1
vmul.u32 Q2, Q2, r7
vadd.s32 Q3, Q3, Q1
vqrdmlah.s32 Q0, Q2, r10
// input[256]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 4)]
vqrdmulh.s32 Q5, Q4, r4
vsub.s32 Q2, Q1, Q0
vmul.u32 Q4, Q4, r3
vadd.s32 Q1, Q1, Q0
vqrdmlah.s32 Q5, Q4, r10
// input[704]: Load as Q0
vldrw.u32 Q0, [r11, #(4 * -52)]
vqrdmulh.s32 Q6, Q3, r6
vsub.s32 Q4, Q2, Q5
vmul.u32 Q3, Q3, r5
vadd.s32 Q2, Q2, Q5
vstrw.u32 Q4, [r12,#(-224)]
// Release input[448] from Q4
vqrdmlah.s32 Q6, Q3, r10
vstrw.u32 Q2, [r0,#(256)]
// Release input[64] from Q2
vsub.s32 Q3, Q1, Q6
vstrw.u32 Q3, [r11,#(-464)]
// Release input[640] from Q3
vadd.s32 Q1, Q1, Q6
// input[704]: Already loaded as Q0
vqrdmulh.s32 Q2, Q0, r8
// input[320]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 68)]
vmul.u32 Q0, Q0, r7
// input[128]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -124)]
vqrdmlah.s32 Q2, Q0, r10
vstrw.u32 Q1, [r14,#(16)]
// Release input[256] from Q1
vqrdmulh.s32 Q1, Q3, r8
vsub.s32 Q0, Q4, Q2
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q1, Q3, r10
// input[512]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * 8)]
vqrdmulh.s32 Q5, Q0, r4
vsub.s32 Q3, Q2, Q1
vmul.u32 Q0, Q0, r3
vadd.s32 Q2, Q2, Q1
vqrdmlah.s32 Q5, Q0, r10
// input[480]: Load as Q1
vldrw.u32 Q1, [r12, #(4 * -24)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r11,#(-208)]
// Release input[704] from Q0
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r14,#(272)]
// Release input[320] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r14,#(-496)]
// Release input[128] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r8, r7, [r9], #+8
ldrd r6, r5, [r9], #+8
ldrd r4, r3, [r9], #+8
// input[480]: Already loaded as Q1
vqrdmulh.s32 Q0, Q1, r8
// input[96]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 96)]
vmul.u32 Q1, Q1, r7
// input[672]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -84)]
vqrdmlah.s32 Q0, Q1, r10
vstrw.u32 Q2, [r12,#(32)]
// Release input[512] from Q2
vqrdmulh.s32 Q2, Q3, r8
vsub.s32 Q1, Q4, Q0
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q2, Q3, r10
// input[288]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 36)]
vqrdmulh.s32 Q5, Q1, r4
vsub.s32 Q3, Q0, Q2
vmul.u32 Q1, Q1, r3
vadd.s32 Q0, Q0, Q2
vqrdmlah.s32 Q5, Q1, r10
// input[736]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * -20)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r12,#(-96)]
// Release input[480] from Q1
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r0,#(384)]
// Release input[96] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r11,#(-336)]
// Release input[672] from Q4
vadd.s32 Q0, Q0, Q6
// input[736]: Already loaded as Q2
vqrdmulh.s32 Q1, Q2, r8
// input[352]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 100)]
vmul.u32 Q2, Q2, r7
// input[160]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -92)]
vqrdmlah.s32 Q1, Q2, r10
vstrw.u32 Q0, [r14,#(144)]
// Release input[288] from Q0
vqrdmulh.s32 Q0, Q3, r8
vsub.s32 Q2, Q4, Q1
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q0, Q3, r10
// input[544]: Load as Q1
vldrw.u32 Q1, [r12, #(4 * 40)]
vqrdmulh.s32 Q5, Q2, r4
vsub.s32 Q3, Q1, Q0
vmul.u32 Q2, Q2, r3
vadd.s32 Q1, Q1, Q0
vqrdmlah.s32 Q5, Q2, r10
// input[224]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -28)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r11,#(-80)]
// Release input[736] from Q2
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r14,#(400)]
// Release input[352] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r14,#(-368)]
// Release input[160] from Q4
vadd.s32 Q1, Q1, Q6
// input[224]: Already loaded as Q0
vqrdmulh.s32 Q2, Q0, r8
// input[608]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * 104)]
vmul.u32 Q0, Q0, r7
// input[416]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * -88)]
vqrdmlah.s32 Q2, Q0, r10
vstrw.u32 Q1, [r12,#(160)]
// Release input[544] from Q1
vqrdmulh.s32 Q1, Q3, r8
vsub.s32 Q0, Q4, Q2
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q1, Q3, r10
// input[32]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 32)]
vqrdmulh.s32 Q5, Q0, r4
vsub.s32 Q3, Q2, Q1
vmul.u32 Q0, Q0, r3
vadd.s32 Q2, Q2, Q1
vqrdmlah.s32 Q5, Q0, r10
// input[720]: Load as Q1
vldrw.u32 Q1, [r11, #(4 * -36)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(-112)]
// Release input[224] from Q0
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r12,#(416)]
// Release input[608] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r12,#(-352)]
// Release input[416] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r8, r7, [r9], #+8
ldrd r6, r5, [r9], #+8
ldrd r4, r3, [r9], #+8
// input[720]: Already loaded as Q1
vqrdmulh.s32 Q0, Q1, r8
// input[336]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 84)]
vmul.u32 Q1, Q1, r7
// input[144]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -108)]
vqrdmlah.s32 Q0, Q1, r10
vstrw.u32 Q2, [r0,#(128)]
// Release input[32] from Q2
vqrdmulh.s32 Q2, Q3, r8
vsub.s32 Q1, Q4, Q0
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q2, Q3, r10
// input[528]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * 24)]
vqrdmulh.s32 Q5, Q1, r4
vsub.s32 Q3, Q0, Q2
vmul.u32 Q1, Q1, r3
vadd.s32 Q0, Q0, Q2
vqrdmlah.s32 Q5, Q1, r10
// input[208]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -44)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r11,#(-144)]
// Release input[720] from Q1
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r14,#(336)]
// Release input[336] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(-432)]
// Release input[144] from Q4
vadd.s32 Q0, Q0, Q6
// input[208]: Already loaded as Q2
vqrdmulh.s32 Q1, Q2, r8
// input[592]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * 88)]
vmul.u32 Q2, Q2, r7
// input[400]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * -104)]
vqrdmlah.s32 Q1, Q2, r10
vstrw.u32 Q0, [r12,#(96)]
// Release input[528] from Q0
vqrdmulh.s32 Q0, Q3, r8
vsub.s32 Q2, Q4, Q1
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q0, Q3, r10
// input[16]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 16)]
vqrdmulh.s32 Q5, Q2, r4
vsub.s32 Q3, Q1, Q0
vmul.u32 Q2, Q2, r3
vadd.s32 Q1, Q1, Q0
vqrdmlah.s32 Q5, Q2, r10
// input[464]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -40)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(-176)]
// Release input[208] from Q2
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r12,#(352)]
// Release input[592] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r12,#(-416)]
// Release input[400] from Q4
vadd.s32 Q1, Q1, Q6
// input[464]: Already loaded as Q0
vqrdmulh.s32 Q2, Q0, r8
// input[80]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 80)]
vmul.u32 Q0, Q0, r7
// input[656]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -100)]
vqrdmlah.s32 Q2, Q0, r10
vstrw.u32 Q1, [r0,#(64)]
// Release input[16] from Q1
vqrdmulh.s32 Q1, Q3, r8
vsub.s32 Q0, Q4, Q2
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q1, Q3, r10
// input[272]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 20)]
vqrdmulh.s32 Q5, Q0, r4
vsub.s32 Q3, Q2, Q1
vmul.u32 Q0, Q0, r3
vadd.s32 Q2, Q2, Q1
vqrdmlah.s32 Q5, Q0, r10
// input[240]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -12)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r12,#(-160)]
// Release input[464] from Q0
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r0,#(320)]
// Release input[80] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r11,#(-400)]
// Release input[656] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r8, r7, [r9], #+8
ldrd r6, r5, [r9], #+8
ldrd r4, r3, [r9], #+8
// input[240]: Already loaded as Q1
vqrdmulh.s32 Q0, Q1, r8
// input[624]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * 120)]
vmul.u32 Q1, Q1, r7
// input[432]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * -72)]
vqrdmlah.s32 Q0, Q1, r10
vstrw.u32 Q2, [r14,#(80)]
// Release input[272] from Q2
vqrdmulh.s32 Q2, Q3, r8
vsub.s32 Q1, Q4, Q0
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q2, Q3, r10
// input[48]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 48)]
vqrdmulh.s32 Q5, Q1, r4
vsub.s32 Q3, Q0, Q2
vmul.u32 Q1, Q1, r3
vadd.s32 Q0, Q0, Q2
vqrdmlah.s32 Q5, Q1, r10
// input[496]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * -8)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(-48)]
// Release input[240] from Q1
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r12,#(480)]
// Release input[624] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r12,#(-288)]
// Release input[432] from Q4
vadd.s32 Q0, Q0, Q6
// input[496]: Already loaded as Q2
vqrdmulh.s32 Q1, Q2, r8
// input[112]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 112)]
vmul.u32 Q2, Q2, r7
// input[688]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -68)]
vqrdmlah.s32 Q1, Q2, r10
vstrw.u32 Q0, [r0,#(192)]
// Release input[48] from Q0
vqrdmulh.s32 Q0, Q3, r8
vsub.s32 Q2, Q4, Q1
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q0, Q3, r10
// input[304]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 52)]
vqrdmulh.s32 Q5, Q2, r4
vsub.s32 Q3, Q1, Q0
vmul.u32 Q2, Q2, r3
vadd.s32 Q1, Q1, Q0
vqrdmlah.s32 Q5, Q2, r10
// input[752]: Load as Q0
vldrw.u32 Q0, [r11, #(4 * -4)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r12,#(-32)]
// Release input[496] from Q2
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r0,#(448)]
// Release input[112] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r11,#(-272)]
// Release input[688] from Q4
vadd.s32 Q1, Q1, Q6
// input[752]: Already loaded as Q0
vqrdmulh.s32 Q2, Q0, r8
// input[368]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 116)]
vmul.u32 Q0, Q0, r7
// input[176]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -76)]
vqrdmlah.s32 Q2, Q0, r10
vstrw.u32 Q1, [r14,#(208)]
// Release input[304] from Q1
vqrdmulh.s32 Q1, Q3, r8
vsub.s32 Q0, Q4, Q2
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q1, Q3, r10
// input[560]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * 56)]
vqrdmulh.s32 Q5, Q0, r4
vsub.s32 Q3, Q2, Q1
vmul.u32 Q0, Q0, r3
vadd.s32 Q2, Q2, Q1
vqrdmlah.s32 Q5, Q0, r10
// input[456]: Load as Q1
vldrw.u32 Q1, [r12, #(4 * -48)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r11,#(-16)]
// Release input[752] from Q0
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r14,#(464)]
// Release input[368] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r14,#(-304)]
// Release input[176] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r8, r7, [r9], #+8
ldrd r6, r5, [r9], #+8
ldrd r4, r3, [r9], #+8
// input[456]: Already loaded as Q1
vqrdmulh.s32 Q0, Q1, r8
// input[72]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 72)]
vmul.u32 Q1, Q1, r7
// input[648]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -108)]
vqrdmlah.s32 Q0, Q1, r10
vstrw.u32 Q2, [r12,#(224)]
// Release input[560] from Q2
vqrdmulh.s32 Q2, Q3, r8
vsub.s32 Q1, Q4, Q0
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q2, Q3, r10
// input[264]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 12)]
vqrdmulh.s32 Q5, Q1, r4
vsub.s32 Q3, Q0, Q2
vmul.u32 Q1, Q1, r3
vadd.s32 Q0, Q0, Q2
vqrdmlah.s32 Q5, Q1, r10
// input[712]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * -44)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r12,#(-192)]
// Release input[456] from Q1
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r0,#(288)]
// Release input[72] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r11,#(-432)]
// Release input[648] from Q4
vadd.s32 Q0, Q0, Q6
// input[712]: Already loaded as Q2
vqrdmulh.s32 Q1, Q2, r8
// input[328]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 76)]
vmul.u32 Q2, Q2, r7
// input[136]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -116)]
vqrdmlah.s32 Q1, Q2, r10
vstrw.u32 Q0, [r14,#(48)]
// Release input[264] from Q0
vqrdmulh.s32 Q0, Q3, r8
vsub.s32 Q2, Q4, Q1
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q0, Q3, r10
// input[520]: Load as Q1
vldrw.u32 Q1, [r12, #(4 * 16)]
vqrdmulh.s32 Q5, Q2, r4
vsub.s32 Q3, Q1, Q0
vmul.u32 Q2, Q2, r3
vadd.s32 Q1, Q1, Q0
vqrdmlah.s32 Q5, Q2, r10
// input[200]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -52)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r11,#(-176)]
// Release input[712] from Q2
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r14,#(304)]
// Release input[328] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r14,#(-464)]
// Release input[136] from Q4
vadd.s32 Q1, Q1, Q6
// input[200]: Already loaded as Q0
vqrdmulh.s32 Q2, Q0, r8
// input[584]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * 80)]
vmul.u32 Q0, Q0, r7
// input[392]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * -112)]
vqrdmlah.s32 Q2, Q0, r10
vstrw.u32 Q1, [r12,#(64)]
// Release input[520] from Q1
vqrdmulh.s32 Q1, Q3, r8
vsub.s32 Q0, Q4, Q2
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q1, Q3, r10
// input[8]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 8)]
vqrdmulh.s32 Q5, Q0, r4
vsub.s32 Q3, Q2, Q1
vmul.u32 Q0, Q0, r3
vadd.s32 Q2, Q2, Q1
vqrdmlah.s32 Q5, Q0, r10
// input[744]: Load as Q1
vldrw.u32 Q1, [r11, #(4 * -12)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(-208)]
// Release input[200] from Q0
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r12,#(320)]
// Release input[584] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r12,#(-448)]
// Release input[392] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r8, r7, [r9], #+8
ldrd r6, r5, [r9], #+8
ldrd r4, r3, [r9], #+8
// input[744]: Already loaded as Q1
vqrdmulh.s32 Q0, Q1, r8
// input[360]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 108)]
vmul.u32 Q1, Q1, r7
// input[168]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -84)]
vqrdmlah.s32 Q0, Q1, r10
vstrw.u32 Q2, [r0,#(32)]
// Release input[8] from Q2
vqrdmulh.s32 Q2, Q3, r8
vsub.s32 Q1, Q4, Q0
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q2, Q3, r10
// input[552]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * 48)]
vqrdmulh.s32 Q5, Q1, r4
vsub.s32 Q3, Q0, Q2
vmul.u32 Q1, Q1, r3
vadd.s32 Q0, Q0, Q2
vqrdmlah.s32 Q5, Q1, r10
// input[232]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -20)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r11,#(-48)]
// Release input[744] from Q1
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r14,#(432)]
// Release input[360] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(-336)]
// Release input[168] from Q4
vadd.s32 Q0, Q0, Q6
// input[232]: Already loaded as Q2
vqrdmulh.s32 Q1, Q2, r8
// input[616]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * 112)]
vmul.u32 Q2, Q2, r7
// input[424]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * -80)]
vqrdmlah.s32 Q1, Q2, r10
vstrw.u32 Q0, [r12,#(192)]
// Release input[552] from Q0
vqrdmulh.s32 Q0, Q3, r8
vsub.s32 Q2, Q4, Q1
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q0, Q3, r10
// input[40]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 40)]
vqrdmulh.s32 Q5, Q2, r4
vsub.s32 Q3, Q1, Q0
vmul.u32 Q2, Q2, r3
vadd.s32 Q1, Q1, Q0
vqrdmlah.s32 Q5, Q2, r10
// input[488]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -16)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(-80)]
// Release input[232] from Q2
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r12,#(448)]
// Release input[616] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r12,#(-320)]
// Release input[424] from Q4
vadd.s32 Q1, Q1, Q6
// input[488]: Already loaded as Q0
vqrdmulh.s32 Q2, Q0, r8
// input[104]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 104)]
vmul.u32 Q0, Q0, r7
// input[680]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -76)]
vqrdmlah.s32 Q2, Q0, r10
vstrw.u32 Q1, [r0,#(160)]
// Release input[40] from Q1
vqrdmulh.s32 Q1, Q3, r8
vsub.s32 Q0, Q4, Q2
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q1, Q3, r10
// input[296]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 44)]
vqrdmulh.s32 Q5, Q0, r4
vsub.s32 Q3, Q2, Q1
vmul.u32 Q0, Q0, r3
vadd.s32 Q2, Q2, Q1
vqrdmlah.s32 Q5, Q0, r10
// input[216]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -36)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r12,#(-64)]
// Release input[488] from Q0
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r0,#(416)]
// Release input[104] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r11,#(-304)]
// Release input[680] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r8, r7, [r9], #+8
ldrd r6, r5, [r9], #+8
ldrd r4, r3, [r9], #+8
// input[216]: Already loaded as Q1
vqrdmulh.s32 Q0, Q1, r8
// input[600]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * 96)]
vmul.u32 Q1, Q1, r7
// input[408]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * -96)]
vqrdmlah.s32 Q0, Q1, r10
vstrw.u32 Q2, [r14,#(176)]
// Release input[296] from Q2
vqrdmulh.s32 Q2, Q3, r8
vsub.s32 Q1, Q4, Q0
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q2, Q3, r10
// input[24]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 24)]
vqrdmulh.s32 Q5, Q1, r4
vsub.s32 Q3, Q0, Q2
vmul.u32 Q1, Q1, r3
vadd.s32 Q0, Q0, Q2
vqrdmlah.s32 Q5, Q1, r10
// input[472]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * -32)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(-144)]
// Release input[216] from Q1
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r12,#(384)]
// Release input[600] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r12,#(-384)]
// Release input[408] from Q4
vadd.s32 Q0, Q0, Q6
// input[472]: Already loaded as Q2
vqrdmulh.s32 Q1, Q2, r8
// input[88]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 88)]
vmul.u32 Q2, Q2, r7
// input[664]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -92)]
vqrdmlah.s32 Q1, Q2, r10
vstrw.u32 Q0, [r0,#(96)]
// Release input[24] from Q0
vqrdmulh.s32 Q0, Q3, r8
vsub.s32 Q2, Q4, Q1
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q0, Q3, r10
// input[280]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 28)]
vqrdmulh.s32 Q5, Q2, r4
vsub.s32 Q3, Q1, Q0
vmul.u32 Q2, Q2, r3
vadd.s32 Q1, Q1, Q0
vqrdmlah.s32 Q5, Q2, r10
// input[728]: Load as Q0
vldrw.u32 Q0, [r11, #(4 * -28)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r12,#(-128)]
// Release input[472] from Q2
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r0,#(352)]
// Release input[88] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r11,#(-368)]
// Release input[664] from Q4
vadd.s32 Q1, Q1, Q6
// input[728]: Already loaded as Q0
vqrdmulh.s32 Q2, Q0, r8
// input[344]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 92)]
vmul.u32 Q0, Q0, r7
// input[152]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -100)]
vqrdmlah.s32 Q2, Q0, r10
vstrw.u32 Q1, [r14,#(112)]
// Release input[280] from Q1
vqrdmulh.s32 Q1, Q3, r8
vsub.s32 Q0, Q4, Q2
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q1, Q3, r10
// input[536]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * 32)]
vqrdmulh.s32 Q5, Q0, r4
vsub.s32 Q3, Q2, Q1
vmul.u32 Q0, Q0, r3
vadd.s32 Q2, Q2, Q1
vqrdmlah.s32 Q5, Q0, r10
// input[504]: Load as Q1
vldrw.u32 Q1, [r12, #(4 * 0)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r11,#(-112)]
// Release input[728] from Q0
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r14,#(368)]
// Release input[344] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r14,#(-400)]
// Release input[152] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r8, r7, [r9], #+8
ldrd r6, r5, [r9], #+8
ldrd r4, r3, [r9], #+8
// input[504]: Already loaded as Q1
vqrdmulh.s32 Q0, Q1, r8
// input[120]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 120)]
vmul.u32 Q1, Q1, r7
// input[696]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -60)]
vqrdmlah.s32 Q0, Q1, r10
vstrw.u32 Q2, [r12,#(128)]
// Release input[536] from Q2
vqrdmulh.s32 Q2, Q3, r8
vsub.s32 Q1, Q4, Q0
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q2, Q3, r10
// input[312]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 60)]
vqrdmulh.s32 Q5, Q1, r4
vsub.s32 Q3, Q0, Q2
vmul.u32 Q1, Q1, r3
vadd.s32 Q0, Q0, Q2
vqrdmlah.s32 Q5, Q1, r10
// input[760]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * 4)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r12,#(0)]
// Release input[504] from Q1
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r0,#(480)]
// Release input[120] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r11,#(-240)]
// Release input[696] from Q4
vadd.s32 Q0, Q0, Q6
// input[760]: Already loaded as Q2
vqrdmulh.s32 Q1, Q2, r8
// input[376]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 124)]
vmul.u32 Q2, Q2, r7
// input[184]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -68)]
vqrdmlah.s32 Q1, Q2, r10
vstrw.u32 Q0, [r14,#(240)]
// Release input[312] from Q0
vqrdmulh.s32 Q0, Q3, r8
vsub.s32 Q2, Q4, Q1
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q0, Q3, r10
// input[568]: Load as Q1
vldrw.u32 Q1, [r12, #(4 * 64)]
vqrdmulh.s32 Q5, Q2, r4
vsub.s32 Q3, Q1, Q0
vmul.u32 Q2, Q2, r3
vadd.s32 Q1, Q1, Q0
vqrdmlah.s32 Q5, Q2, r10
// input[248]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -4)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r11,#(16)]
// Release input[760] from Q2
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r14,#(496)]
// Release input[376] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r14,#(-272)]
// Release input[184] from Q4
vadd.s32 Q1, Q1, Q6
// input[248]: Already loaded as Q0
vqrdmulh.s32 Q2, Q0, r8
// input[632]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * -124)]
vmul.u32 Q0, Q0, r7
// input[440]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * -64)]
vqrdmlah.s32 Q2, Q0, r10
vstrw.u32 Q1, [r12,#(256)]
// Release input[568] from Q1
vqrdmulh.s32 Q1, Q3, r8
vsub.s32 Q0, Q4, Q2
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q1, Q3, r10
// input[56]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 56)]
vqrdmulh.s32 Q5, Q0, r4
vsub.s32 Q3, Q2, Q1
vmul.u32 Q0, Q0, r3
vadd.s32 Q2, Q2, Q1
vqrdmlah.s32 Q5, Q0, r10
// input[708]: Load as Q1
vldrw.u32 Q1, [r11, #(4 * -48)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(-16)]
// Release input[248] from Q0
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r11,#(-496)]
// Release input[632] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r12,#(-256)]
// Release input[440] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r8, r7, [r9], #+8
ldrd r6, r5, [r9], #+8
ldrd r4, r3, [r9], #+8
// input[708]: Already loaded as Q1
vqrdmulh.s32 Q0, Q1, r8
// input[324]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 72)]
vmul.u32 Q1, Q1, r7
// input[132]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -120)]
vqrdmlah.s32 Q0, Q1, r10
vstrw.u32 Q2, [r0,#(224)]
// Release input[56] from Q2
vqrdmulh.s32 Q2, Q3, r8
vsub.s32 Q1, Q4, Q0
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q2, Q3, r10
// input[516]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * 12)]
vqrdmulh.s32 Q5, Q1, r4
vsub.s32 Q3, Q0, Q2
vmul.u32 Q1, Q1, r3
vadd.s32 Q0, Q0, Q2
vqrdmlah.s32 Q5, Q1, r10
// input[196]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -56)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r11,#(-192)]
// Release input[708] from Q1
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r14,#(288)]
// Release input[324] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(-480)]
// Release input[132] from Q4
vadd.s32 Q0, Q0, Q6
// input[196]: Already loaded as Q2
vqrdmulh.s32 Q1, Q2, r8
// input[580]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * 76)]
vmul.u32 Q2, Q2, r7
// input[388]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * -116)]
vqrdmlah.s32 Q1, Q2, r10
vstrw.u32 Q0, [r12,#(48)]
// Release input[516] from Q0
vqrdmulh.s32 Q0, Q3, r8
vsub.s32 Q2, Q4, Q1
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q0, Q3, r10
// input[4]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 4)]
vqrdmulh.s32 Q5, Q2, r4
vsub.s32 Q3, Q1, Q0
vmul.u32 Q2, Q2, r3
vadd.s32 Q1, Q1, Q0
vqrdmlah.s32 Q5, Q2, r10
// input[452]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -52)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(-224)]
// Release input[196] from Q2
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r12,#(304)]
// Release input[580] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r12,#(-464)]
// Release input[388] from Q4
vadd.s32 Q1, Q1, Q6
// input[452]: Already loaded as Q0
vqrdmulh.s32 Q2, Q0, r8
// input[68]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 68)]
vmul.u32 Q0, Q0, r7
// input[644]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -112)]
vqrdmlah.s32 Q2, Q0, r10
vstrw.u32 Q1, [r0,#(16)]
// Release input[4] from Q1
vqrdmulh.s32 Q1, Q3, r8
vsub.s32 Q0, Q4, Q2
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q1, Q3, r10
// input[260]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 8)]
vqrdmulh.s32 Q5, Q0, r4
vsub.s32 Q3, Q2, Q1
vmul.u32 Q0, Q0, r3
vadd.s32 Q2, Q2, Q1
vqrdmlah.s32 Q5, Q0, r10
// input[228]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -24)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r12,#(-208)]
// Release input[452] from Q0
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r0,#(272)]
// Release input[68] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r11,#(-448)]
// Release input[644] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r8, r7, [r9], #+8
ldrd r6, r5, [r9], #+8
ldrd r4, r3, [r9], #+8
// input[228]: Already loaded as Q1
vqrdmulh.s32 Q0, Q1, r8
// input[612]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * 108)]
vmul.u32 Q1, Q1, r7
// input[420]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * -84)]
vqrdmlah.s32 Q0, Q1, r10
vstrw.u32 Q2, [r14,#(32)]
// Release input[260] from Q2
vqrdmulh.s32 Q2, Q3, r8
vsub.s32 Q1, Q4, Q0
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q2, Q3, r10
// input[36]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 36)]
vqrdmulh.s32 Q5, Q1, r4
vsub.s32 Q3, Q0, Q2
vmul.u32 Q1, Q1, r3
vadd.s32 Q0, Q0, Q2
vqrdmlah.s32 Q5, Q1, r10
// input[484]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * -20)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(-96)]
// Release input[228] from Q1
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r12,#(432)]
// Release input[612] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r12,#(-336)]
// Release input[420] from Q4
vadd.s32 Q0, Q0, Q6
// input[484]: Already loaded as Q2
vqrdmulh.s32 Q1, Q2, r8
// input[100]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 100)]
vmul.u32 Q2, Q2, r7
// input[676]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -80)]
vqrdmlah.s32 Q1, Q2, r10
vstrw.u32 Q0, [r0,#(144)]
// Release input[36] from Q0
vqrdmulh.s32 Q0, Q3, r8
vsub.s32 Q2, Q4, Q1
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q0, Q3, r10
// input[292]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 40)]
vqrdmulh.s32 Q5, Q2, r4
vsub.s32 Q3, Q1, Q0
vmul.u32 Q2, Q2, r3
vadd.s32 Q1, Q1, Q0
vqrdmlah.s32 Q5, Q2, r10
// input[740]: Load as Q0
vldrw.u32 Q0, [r11, #(4 * -16)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r12,#(-80)]
// Release input[484] from Q2
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r0,#(400)]
// Release input[100] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r11,#(-320)]
// Release input[676] from Q4
vadd.s32 Q1, Q1, Q6
// input[740]: Already loaded as Q0
vqrdmulh.s32 Q2, Q0, r8
// input[356]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 104)]
vmul.u32 Q0, Q0, r7
// input[164]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -88)]
vqrdmlah.s32 Q2, Q0, r10
vstrw.u32 Q1, [r14,#(160)]
// Release input[292] from Q1
vqrdmulh.s32 Q1, Q3, r8
vsub.s32 Q0, Q4, Q2
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q1, Q3, r10
// input[548]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * 44)]
vqrdmulh.s32 Q5, Q0, r4
vsub.s32 Q3, Q2, Q1
vmul.u32 Q0, Q0, r3
vadd.s32 Q2, Q2, Q1
vqrdmlah.s32 Q5, Q0, r10
// input[468]: Load as Q1
vldrw.u32 Q1, [r12, #(4 * -36)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r11,#(-64)]
// Release input[740] from Q0
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r14,#(416)]
// Release input[356] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r14,#(-352)]
// Release input[164] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r8, r7, [r9], #+8
ldrd r6, r5, [r9], #+8
ldrd r4, r3, [r9], #+8
// input[468]: Already loaded as Q1
vqrdmulh.s32 Q0, Q1, r8
// input[84]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 84)]
vmul.u32 Q1, Q1, r7
// input[660]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -96)]
vqrdmlah.s32 Q0, Q1, r10
vstrw.u32 Q2, [r12,#(176)]
// Release input[548] from Q2
vqrdmulh.s32 Q2, Q3, r8
vsub.s32 Q1, Q4, Q0
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q2, Q3, r10
// input[276]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 24)]
vqrdmulh.s32 Q5, Q1, r4
vsub.s32 Q3, Q0, Q2
vmul.u32 Q1, Q1, r3
vadd.s32 Q0, Q0, Q2
vqrdmlah.s32 Q5, Q1, r10
// input[724]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * -32)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r12,#(-144)]
// Release input[468] from Q1
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r0,#(336)]
// Release input[84] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r11,#(-384)]
// Release input[660] from Q4
vadd.s32 Q0, Q0, Q6
// input[724]: Already loaded as Q2
vqrdmulh.s32 Q1, Q2, r8
// input[340]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 88)]
vmul.u32 Q2, Q2, r7
// input[148]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -104)]
vqrdmlah.s32 Q1, Q2, r10
vstrw.u32 Q0, [r14,#(96)]
// Release input[276] from Q0
vqrdmulh.s32 Q0, Q3, r8
vsub.s32 Q2, Q4, Q1
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q0, Q3, r10
// input[532]: Load as Q1
vldrw.u32 Q1, [r12, #(4 * 28)]
vqrdmulh.s32 Q5, Q2, r4
vsub.s32 Q3, Q1, Q0
vmul.u32 Q2, Q2, r3
vadd.s32 Q1, Q1, Q0
vqrdmlah.s32 Q5, Q2, r10
// input[212]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -40)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r11,#(-128)]
// Release input[724] from Q2
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r14,#(352)]
// Release input[340] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r14,#(-416)]
// Release input[148] from Q4
vadd.s32 Q1, Q1, Q6
// input[212]: Already loaded as Q0
vqrdmulh.s32 Q2, Q0, r8
// input[596]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * 92)]
vmul.u32 Q0, Q0, r7
// input[404]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * -100)]
vqrdmlah.s32 Q2, Q0, r10
vstrw.u32 Q1, [r12,#(112)]
// Release input[532] from Q1
vqrdmulh.s32 Q1, Q3, r8
vsub.s32 Q0, Q4, Q2
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q1, Q3, r10
// input[20]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 20)]
vqrdmulh.s32 Q5, Q0, r4
vsub.s32 Q3, Q2, Q1
vmul.u32 Q0, Q0, r3
vadd.s32 Q2, Q2, Q1
vqrdmlah.s32 Q5, Q0, r10
// input[756]: Load as Q1
vldrw.u32 Q1, [r11, #(4 * 0)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(-160)]
// Release input[212] from Q0
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r12,#(368)]
// Release input[596] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r12,#(-400)]
// Release input[404] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r8, r7, [r9], #+8
ldrd r6, r5, [r9], #+8
ldrd r4, r3, [r9], #+8
// input[756]: Already loaded as Q1
vqrdmulh.s32 Q0, Q1, r8
// input[372]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 120)]
vmul.u32 Q1, Q1, r7
// input[180]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -72)]
vqrdmlah.s32 Q0, Q1, r10
vstrw.u32 Q2, [r0,#(80)]
// Release input[20] from Q2
vqrdmulh.s32 Q2, Q3, r8
vsub.s32 Q1, Q4, Q0
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q2, Q3, r10
// input[564]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * 60)]
vqrdmulh.s32 Q5, Q1, r4
vsub.s32 Q3, Q0, Q2
vmul.u32 Q1, Q1, r3
vadd.s32 Q0, Q0, Q2
vqrdmlah.s32 Q5, Q1, r10
// input[244]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -8)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r11,#(0)]
// Release input[756] from Q1
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r14,#(480)]
// Release input[372] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(-288)]
// Release input[180] from Q4
vadd.s32 Q0, Q0, Q6
// input[244]: Already loaded as Q2
vqrdmulh.s32 Q1, Q2, r8
// input[628]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * 124)]
vmul.u32 Q2, Q2, r7
// input[436]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * -68)]
vqrdmlah.s32 Q1, Q2, r10
vstrw.u32 Q0, [r12,#(240)]
// Release input[564] from Q0
vqrdmulh.s32 Q0, Q3, r8
vsub.s32 Q2, Q4, Q1
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q0, Q3, r10
// input[52]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 52)]
vqrdmulh.s32 Q5, Q2, r4
vsub.s32 Q3, Q1, Q0
vmul.u32 Q2, Q2, r3
vadd.s32 Q1, Q1, Q0
vqrdmlah.s32 Q5, Q2, r10
// input[500]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -4)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(-32)]
// Release input[244] from Q2
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r12,#(496)]
// Release input[628] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r12,#(-272)]
// Release input[436] from Q4
vadd.s32 Q1, Q1, Q6
// input[500]: Already loaded as Q0
vqrdmulh.s32 Q2, Q0, r8
// input[116]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 116)]
vmul.u32 Q0, Q0, r7
// input[692]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -64)]
vqrdmlah.s32 Q2, Q0, r10
vstrw.u32 Q1, [r0,#(208)]
// Release input[52] from Q1
vqrdmulh.s32 Q1, Q3, r8
vsub.s32 Q0, Q4, Q2
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q1, Q3, r10
// input[308]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 56)]
vqrdmulh.s32 Q5, Q0, r4
vsub.s32 Q3, Q2, Q1
vmul.u32 Q0, Q0, r3
vadd.s32 Q2, Q2, Q1
vqrdmlah.s32 Q5, Q0, r10
// input[204]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -48)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r12,#(-16)]
// Release input[500] from Q0
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r0,#(464)]
// Release input[116] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r11,#(-256)]
// Release input[692] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r8, r7, [r9], #+8
ldrd r6, r5, [r9], #+8
ldrd r4, r3, [r9], #+8
// input[204]: Already loaded as Q1
vqrdmulh.s32 Q0, Q1, r8
// input[588]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * 84)]
vmul.u32 Q1, Q1, r7
// input[396]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * -108)]
vqrdmlah.s32 Q0, Q1, r10
vstrw.u32 Q2, [r14,#(224)]
// Release input[308] from Q2
vqrdmulh.s32 Q2, Q3, r8
vsub.s32 Q1, Q4, Q0
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q2, Q3, r10
// input[12]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 12)]
vqrdmulh.s32 Q5, Q1, r4
vsub.s32 Q3, Q0, Q2
vmul.u32 Q1, Q1, r3
vadd.s32 Q0, Q0, Q2
vqrdmlah.s32 Q5, Q1, r10
// input[460]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * -44)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(-192)]
// Release input[204] from Q1
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r12,#(336)]
// Release input[588] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r12,#(-432)]
// Release input[396] from Q4
vadd.s32 Q0, Q0, Q6
// input[460]: Already loaded as Q2
vqrdmulh.s32 Q1, Q2, r8
// input[76]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 76)]
vmul.u32 Q2, Q2, r7
// input[652]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -104)]
vqrdmlah.s32 Q1, Q2, r10
vstrw.u32 Q0, [r0,#(48)]
// Release input[12] from Q0
vqrdmulh.s32 Q0, Q3, r8
vsub.s32 Q2, Q4, Q1
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q0, Q3, r10
// input[268]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 16)]
vqrdmulh.s32 Q5, Q2, r4
vsub.s32 Q3, Q1, Q0
vmul.u32 Q2, Q2, r3
vadd.s32 Q1, Q1, Q0
vqrdmlah.s32 Q5, Q2, r10
// input[716]: Load as Q0
vldrw.u32 Q0, [r11, #(4 * -40)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r12,#(-176)]
// Release input[460] from Q2
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r0,#(304)]
// Release input[76] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r11,#(-416)]
// Release input[652] from Q4
vadd.s32 Q1, Q1, Q6
// input[716]: Already loaded as Q0
vqrdmulh.s32 Q2, Q0, r8
// input[332]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 80)]
vmul.u32 Q0, Q0, r7
// input[140]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -112)]
vqrdmlah.s32 Q2, Q0, r10
vstrw.u32 Q1, [r14,#(64)]
// Release input[268] from Q1
vqrdmulh.s32 Q1, Q3, r8
vsub.s32 Q0, Q4, Q2
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q1, Q3, r10
// input[524]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * 20)]
vqrdmulh.s32 Q5, Q0, r4
vsub.s32 Q3, Q2, Q1
vmul.u32 Q0, Q0, r3
vadd.s32 Q2, Q2, Q1
vqrdmlah.s32 Q5, Q0, r10
// input[492]: Load as Q1
vldrw.u32 Q1, [r12, #(4 * -12)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r11,#(-160)]
// Release input[716] from Q0
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r14,#(320)]
// Release input[332] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r14,#(-448)]
// Release input[140] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r8, r7, [r9], #+8
ldrd r6, r5, [r9], #+8
ldrd r4, r3, [r9], #+8
// input[492]: Already loaded as Q1
vqrdmulh.s32 Q0, Q1, r8
// input[108]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 108)]
vmul.u32 Q1, Q1, r7
// input[684]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -72)]
vqrdmlah.s32 Q0, Q1, r10
vstrw.u32 Q2, [r12,#(80)]
// Release input[524] from Q2
vqrdmulh.s32 Q2, Q3, r8
vsub.s32 Q1, Q4, Q0
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q2, Q3, r10
// input[300]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 48)]
vqrdmulh.s32 Q5, Q1, r4
vsub.s32 Q3, Q0, Q2
vmul.u32 Q1, Q1, r3
vadd.s32 Q0, Q0, Q2
vqrdmlah.s32 Q5, Q1, r10
// input[748]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * -8)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r12,#(-48)]
// Release input[492] from Q1
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r0,#(432)]
// Release input[108] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r11,#(-288)]
// Release input[684] from Q4
vadd.s32 Q0, Q0, Q6
// input[748]: Already loaded as Q2
vqrdmulh.s32 Q1, Q2, r8
// input[364]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 112)]
vmul.u32 Q2, Q2, r7
// input[172]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -80)]
vqrdmlah.s32 Q1, Q2, r10
vstrw.u32 Q0, [r14,#(192)]
// Release input[300] from Q0
vqrdmulh.s32 Q0, Q3, r8
vsub.s32 Q2, Q4, Q1
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q0, Q3, r10
// input[556]: Load as Q1
vldrw.u32 Q1, [r12, #(4 * 52)]
vqrdmulh.s32 Q5, Q2, r4
vsub.s32 Q3, Q1, Q0
vmul.u32 Q2, Q2, r3
vadd.s32 Q1, Q1, Q0
vqrdmlah.s32 Q5, Q2, r10
// input[236]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -16)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r11,#(-32)]
// Release input[748] from Q2
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r14,#(448)]
// Release input[364] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r14,#(-320)]
// Release input[172] from Q4
vadd.s32 Q1, Q1, Q6
// input[236]: Already loaded as Q0
vqrdmulh.s32 Q2, Q0, r8
// input[620]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * 116)]
vmul.u32 Q0, Q0, r7
// input[428]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * -76)]
vqrdmlah.s32 Q2, Q0, r10
vstrw.u32 Q1, [r12,#(208)]
// Release input[556] from Q1
vqrdmulh.s32 Q1, Q3, r8
vsub.s32 Q0, Q4, Q2
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q1, Q3, r10
// input[44]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 44)]
vqrdmulh.s32 Q5, Q0, r4
vsub.s32 Q3, Q2, Q1
vmul.u32 Q0, Q0, r3
vadd.s32 Q2, Q2, Q1
vqrdmlah.s32 Q5, Q0, r10
// input[732]: Load as Q1
vldrw.u32 Q1, [r11, #(4 * -24)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(-64)]
// Release input[236] from Q0
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r12,#(464)]
// Release input[620] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r12,#(-304)]
// Release input[428] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r8, r7, [r9], #+8
ldrd r6, r5, [r9], #+8
ldrd r4, r3, [r9], #+8
// input[732]: Already loaded as Q1
vqrdmulh.s32 Q0, Q1, r8
// input[348]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 96)]
vmul.u32 Q1, Q1, r7
// input[156]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -96)]
vqrdmlah.s32 Q0, Q1, r10
vstrw.u32 Q2, [r0,#(176)]
// Release input[44] from Q2
vqrdmulh.s32 Q2, Q3, r8
vsub.s32 Q1, Q4, Q0
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q2, Q3, r10
// input[540]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * 36)]
vqrdmulh.s32 Q5, Q1, r4
vsub.s32 Q3, Q0, Q2
vmul.u32 Q1, Q1, r3
vadd.s32 Q0, Q0, Q2
vqrdmlah.s32 Q5, Q1, r10
// input[220]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -32)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r11,#(-96)]
// Release input[732] from Q1
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r14,#(384)]
// Release input[348] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(-384)]
// Release input[156] from Q4
vadd.s32 Q0, Q0, Q6
// input[220]: Already loaded as Q2
vqrdmulh.s32 Q1, Q2, r8
// input[604]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * 100)]
vmul.u32 Q2, Q2, r7
// input[412]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * -92)]
vqrdmlah.s32 Q1, Q2, r10
vstrw.u32 Q0, [r12,#(144)]
// Release input[540] from Q0
vqrdmulh.s32 Q0, Q3, r8
vsub.s32 Q2, Q4, Q1
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q0, Q3, r10
// input[28]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 28)]
vqrdmulh.s32 Q5, Q2, r4
vsub.s32 Q3, Q1, Q0
vmul.u32 Q2, Q2, r3
vadd.s32 Q1, Q1, Q0
vqrdmlah.s32 Q5, Q2, r10
// input[476]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -28)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(-128)]
// Release input[220] from Q2
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r12,#(400)]
// Release input[604] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r12,#(-368)]
// Release input[412] from Q4
vadd.s32 Q1, Q1, Q6
// input[476]: Already loaded as Q0
vqrdmulh.s32 Q2, Q0, r8
// input[92]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 92)]
vmul.u32 Q0, Q0, r7
// input[668]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -88)]
vqrdmlah.s32 Q2, Q0, r10
vstrw.u32 Q1, [r0,#(112)]
// Release input[28] from Q1
vqrdmulh.s32 Q1, Q3, r8
vsub.s32 Q0, Q4, Q2
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q1, Q3, r10
// input[284]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 32)]
vqrdmulh.s32 Q5, Q0, r4
vsub.s32 Q3, Q2, Q1
vmul.u32 Q0, Q0, r3
vadd.s32 Q2, Q2, Q1
vqrdmlah.s32 Q5, Q0, r10
// input[252]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 0)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r12,#(-112)]
// Release input[476] from Q0
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r0,#(368)]
// Release input[92] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r11,#(-352)]
// Release input[668] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r8, r7, [r9], #+8
ldrd r6, r5, [r9], #+8
ldrd r4, r3, [r9], #+8
// input[252]: Already loaded as Q1
vqrdmulh.s32 Q0, Q1, r8
// input[636]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * -120)]
vmul.u32 Q1, Q1, r7
// input[444]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * -60)]
vqrdmlah.s32 Q0, Q1, r10
vstrw.u32 Q2, [r14,#(128)]
// Release input[284] from Q2
vqrdmulh.s32 Q2, Q3, r8
vsub.s32 Q1, Q4, Q0
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q2, Q3, r10
// input[60]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 60)]
vqrdmulh.s32 Q5, Q1, r4
vsub.s32 Q3, Q0, Q2
vmul.u32 Q1, Q1, r3
vadd.s32 Q0, Q0, Q2
vqrdmlah.s32 Q5, Q1, r10
// input[508]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * 4)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(0)]
// Release input[252] from Q1
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r11,#(-480)]
// Release input[636] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r12,#(-240)]
// Release input[444] from Q4
vadd.s32 Q0, Q0, Q6
// input[508]: Already loaded as Q2
vqrdmulh.s32 Q1, Q2, r8
// input[124]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 124)]
vmul.u32 Q2, Q2, r7
// input[700]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -56)]
vqrdmlah.s32 Q1, Q2, r10
vstrw.u32 Q0, [r0,#(240)]
// Release input[60] from Q0
vqrdmulh.s32 Q0, Q3, r8
vsub.s32 Q2, Q4, Q1
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q0, Q3, r10
// input[316]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 64)]
vqrdmulh.s32 Q5, Q2, r4
vsub.s32 Q3, Q1, Q0
vmul.u32 Q2, Q2, r3
vadd.s32 Q1, Q1, Q0
vqrdmlah.s32 Q5, Q2, r10
// input[764]: Load as Q0
vldrw.u32 Q0, [r11, #(4 * 8)]
vqrdmulh.s32 Q6, Q4, r6
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r12,#(16)]
// Release input[508] from Q2
vqrdmlah.s32 Q6, Q4, r10
vstrw.u32 Q3, [r0,#(496)]
// Release input[124] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r11,#(-224)]
// Release input[700] from Q4
vadd.s32 Q1, Q1, Q6
// input[764]: Already loaded as Q0
vqrdmulh.s32 Q2, Q0, r8
// input[380]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -124)]
vmul.u32 Q0, Q0, r7
// input[188]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -64)]
vqrdmlah.s32 Q2, Q0, r10
vstrw.u32 Q1, [r14,#(256)]
// Release input[316] from Q1
vqrdmulh.s32 Q1, Q3, r8
vsub.s32 Q0, Q4, Q2
vmul.u32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q1, Q3, r10
// input[572]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * 68)]
vqrdmulh.s32 Q5, Q0, r4
vsub.s32 Q3, Q2, Q1
vmul.u32 Q0, Q0, r3
vadd.s32 Q2, Q2, Q1
vqrdmlah.s32 Q5, Q0, r10
vqrdmulh.s32 Q1, Q4, r6
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r11,#(32)]
// Release input[764] from Q0
vqrdmlah.s32 Q1, Q4, r10
vstrw.u32 Q3, [r12,#(-496)]
// Release input[380] from Q3
vsub.s32 Q4, Q2, Q1
vstrw.u32 Q4, [r14,#(-256)]
// Release input[188] from Q4
vadd.s32 Q2, Q2, Q1
vstrw.u32 Q2, [r12,#(272)]
// Release input[572] from Q2
.equ modulus_inv, 3919317503
movw r8, #:lower16:modulus_inv
movt r8, #:upper16:modulus_inv
// Restore MVE vector registers
vpop {d8-d15}
// Restore GPRs
pop {r4-r11,lr}
bx lr

// Line count:        6705
// Instruction count: 4845