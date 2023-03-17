
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
.word   33393089 // zeta^  0 * 2^31 = 26036764^  0 * 2^31 = 1 * 2^31
.word 2147483711 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 26036764^  0 * 375649793 * 2^31
.word   33393089 // zeta^  0 * 2^31 = 26036764^  0 * 2^31 = 1 * 2^31
.word 2147483711 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 26036764^  0 * 375649793 * 2^31
.word   29095681 // zeta^ 64 * 2^31 = 26036764^ 64 * 2^31 = 17702291 * 2^31
.word 3280343807 // zeta^ 64 * f(q^(-1) mod 2^32) * 2^31 = 26036764^ 64 * 375649793 * 2^31
.word   33393089 // zeta^  0 * 2^31 = 26036764^  0 * 2^31 = 1 * 2^31
.word 2147483711 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 26036764^  0 * 375649793 * 2^31
.word   33393089 // zeta^  0 * 2^31 = 26036764^  0 * 2^31 = 1 * 2^31
.word 2147483711 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 26036764^  0 * 375649793 * 2^31
.word   29095681 // zeta^ 64 * 2^31 = 26036764^ 64 * 2^31 = 17702291 * 2^31
.word 3280343807 // zeta^ 64 * f(q^(-1) mod 2^32) * 2^31 = 26036764^ 64 * 375649793 * 2^31
.word   29095681 // zeta^ 64 * 2^31 = 26036764^ 64 * 2^31 = 17702291 * 2^31
.word 3280343807 // zeta^ 64 * f(q^(-1) mod 2^32) * 2^31 = 26036764^ 64 * 375649793 * 2^31
.word   14476917 // zeta^ 32 * 2^31 = 26036764^ 32 * 2^31 = 3260327 * 2^31
.word 2356128651 // zeta^ 32 * f(q^(-1) mod 2^32) * 2^31 = 26036764^ 32 * 375649793 * 2^31
.word   43317805 // zeta^ 96 * 2^31 = 26036764^ 96 * 2^31 = 14579576 * 2^31
.word  933021651 // zeta^ 96 * f(q^(-1) mod 2^32) * 2^31 = 26036764^ 96 * 375649793 * 2^31
.word   14476917 // zeta^ 32 * 2^31 = 26036764^ 32 * 2^31 = 3260327 * 2^31
.word 2356128651 // zeta^ 32 * f(q^(-1) mod 2^32) * 2^31 = 26036764^ 32 * 375649793 * 2^31
.word   18598075 // zeta^ 16 * 2^31 = 26036764^ 16 * 2^31 = 6733847 * 2^31
.word 2578416965 // zeta^ 16 * f(q^(-1) mod 2^32) * 2^31 = 26036764^ 16 * 375649793 * 2^31
.word    4885007 // zeta^ 80 * 2^31 = 26036764^ 80 * 2^31 = 12909577 * 2^31
.word 2973633521 // zeta^ 80 * f(q^(-1) mod 2^32) * 2^31 = 26036764^ 80 * 375649793 * 2^31
.word   43317805 // zeta^ 96 * 2^31 = 26036764^ 96 * 2^31 = 14579576 * 2^31
.word  933021651 // zeta^ 96 * f(q^(-1) mod 2^32) * 2^31 = 26036764^ 96 * 375649793 * 2^31
.word   64683161 // zeta^ 48 * 2^31 = 26036764^ 48 * 2^31 = 14745691 * 2^31
.word 3091135847 // zeta^ 48 * f(q^(-1) mod 2^32) * 2^31 = 26036764^ 48 * 375649793 * 2^31
.word   34427601 // zeta^112 * 2^31 = 26036764^112 * 2^31 = 13512548 * 2^31
.word  864737071 // zeta^112 * f(q^(-1) mod 2^32) * 2^31 = 26036764^112 * 375649793 * 2^31
.word   33393089 // zeta^  0 * 2^31 = 26036764^  0 * 2^31 = 1 * 2^31
.word 2147483711 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 26036764^  0 * 375649793 * 2^31
.word   33393089 // zeta^  0 * 2^31 = 26036764^  0 * 2^31 = 1 * 2^31
.word 2147483711 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 26036764^  0 * 375649793 * 2^31
.word   29095681 // zeta^ 64 * 2^31 = 26036764^ 64 * 2^31 = 17702291 * 2^31
.word 3280343807 // zeta^ 64 * f(q^(-1) mod 2^32) * 2^31 = 26036764^ 64 * 375649793 * 2^31
.word   29095681 // zeta^ 64 * 2^31 = 26036764^ 64 * 2^31 = 17702291 * 2^31
.word 3280343807 // zeta^ 64 * f(q^(-1) mod 2^32) * 2^31 = 26036764^ 64 * 375649793 * 2^31
.word   14476917 // zeta^ 32 * 2^31 = 26036764^ 32 * 2^31 = 3260327 * 2^31
.word 2356128651 // zeta^ 32 * f(q^(-1) mod 2^32) * 2^31 = 26036764^ 32 * 375649793 * 2^31
.word   43317805 // zeta^ 96 * 2^31 = 26036764^ 96 * 2^31 = 14579576 * 2^31
.word  933021651 // zeta^ 96 * f(q^(-1) mod 2^32) * 2^31 = 26036764^ 96 * 375649793 * 2^31
.word   14476917 // zeta^ 32 * 2^31 = 26036764^ 32 * 2^31 = 3260327 * 2^31
.word 2356128651 // zeta^ 32 * f(q^(-1) mod 2^32) * 2^31 = 26036764^ 32 * 375649793 * 2^31
.word   18598075 // zeta^ 16 * 2^31 = 26036764^ 16 * 2^31 = 6733847 * 2^31
.word 2578416965 // zeta^ 16 * f(q^(-1) mod 2^32) * 2^31 = 26036764^ 16 * 375649793 * 2^31
.word    4885007 // zeta^ 80 * 2^31 = 26036764^ 80 * 2^31 = 12909577 * 2^31
.word 2973633521 // zeta^ 80 * f(q^(-1) mod 2^32) * 2^31 = 26036764^ 80 * 375649793 * 2^31
.word   43317805 // zeta^ 96 * 2^31 = 26036764^ 96 * 2^31 = 14579576 * 2^31
.word  933021651 // zeta^ 96 * f(q^(-1) mod 2^32) * 2^31 = 26036764^ 96 * 375649793 * 2^31
.word   64683161 // zeta^ 48 * 2^31 = 26036764^ 48 * 2^31 = 14745691 * 2^31
.word 3091135847 // zeta^ 48 * f(q^(-1) mod 2^32) * 2^31 = 26036764^ 48 * 375649793 * 2^31
.word   34427601 // zeta^112 * 2^31 = 26036764^112 * 2^31 = 13512548 * 2^31
.word  864737071 // zeta^112 * f(q^(-1) mod 2^32) * 2^31 = 26036764^112 * 375649793 * 2^31
.word   18598075 // zeta^ 16 * 2^31 = 26036764^ 16 * 2^31 = 6733847 * 2^31
.word 2578416965 // zeta^ 16 * f(q^(-1) mod 2^32) * 2^31 = 26036764^ 16 * 375649793 * 2^31
.word   39999747 // zeta^  8 * 2^31 = 26036764^  8 * 2^31 = 20428075 * 2^31
.word 3454780669 // zeta^  8 * f(q^(-1) mod 2^32) * 2^31 = 26036764^  8 * 375649793 * 2^31
.word   45317587 // zeta^ 72 * 2^31 = 26036764^ 72 * 2^31 = 14626653 * 2^31
.word 3083517997 // zeta^ 72 * f(q^(-1) mod 2^32) * 2^31 = 26036764^ 72 * 375649793 * 2^31
.word    4885007 // zeta^ 80 * 2^31 = 26036764^ 80 * 2^31 = 12909577 * 2^31
.word 2973633521 // zeta^ 80 * f(q^(-1) mod 2^32) * 2^31 = 26036764^ 80 * 375649793 * 2^31
.word   48811299 // zeta^ 40 * 2^31 = 26036764^ 40 * 2^31 = 29737761 * 2^31
.word 4050555101 // zeta^ 40 * f(q^(-1) mod 2^32) * 2^31 = 26036764^ 40 * 375649793 * 2^31
.word   54571669 // zeta^104 * 2^31 = 26036764^104 * 2^31 = 30285189 * 2^31
.word 4085587819 // zeta^104 * f(q^(-1) mod 2^32) * 2^31 = 26036764^104 * 375649793 * 2^31
.word   64683161 // zeta^ 48 * 2^31 = 26036764^ 48 * 2^31 = 14745691 * 2^31
.word 3091135847 // zeta^ 48 * f(q^(-1) mod 2^32) * 2^31 = 26036764^ 48 * 375649793 * 2^31
.word   59281651 // zeta^ 24 * 2^31 = 26036764^ 24 * 2^31 = 21289485 * 2^31
.word 3509906701 // zeta^ 24 * f(q^(-1) mod 2^32) * 2^31 = 26036764^ 24 * 375649793 * 2^31
.word   40500013 // zeta^ 88 * 2^31 = 26036764^ 88 * 2^31 = 9914896 * 2^31
.word  634504915 // zeta^ 88 * f(q^(-1) mod 2^32) * 2^31 = 26036764^ 88 * 375649793 * 2^31
.word   34427601 // zeta^112 * 2^31 = 26036764^112 * 2^31 = 13512548 * 2^31
.word  864737071 // zeta^112 * f(q^(-1) mod 2^32) * 2^31 = 26036764^112 * 375649793 * 2^31
.word   25917637 // zeta^ 56 * 2^31 = 26036764^ 56 * 2^31 = 22603682 * 2^31
.word 1446525243 // zeta^ 56 * f(q^(-1) mod 2^32) * 2^31 = 26036764^ 56 * 375649793 * 2^31
.word    8356523 // zeta^120 * 2^31 = 26036764^120 * 2^31 = 16204162 * 2^31
.word 1036987221 // zeta^120 * f(q^(-1) mod 2^32) * 2^31 = 26036764^120 * 375649793 * 2^31
.word   39999747 // zeta^  8 * 2^31 = 26036764^  8 * 2^31 = 20428075 * 2^31
.word 3454780669 // zeta^  8 * f(q^(-1) mod 2^32) * 2^31 = 26036764^  8 * 375649793 * 2^31
.word   31719253 // zeta^  4 * 2^31 = 26036764^  4 * 2^31 = 23825509 * 2^31
.word 3672199851 // zeta^  4 * f(q^(-1) mod 2^32) * 2^31 = 26036764^  4 * 375649793 * 2^31
.word   54842419 // zeta^ 68 * 2^31 = 26036764^ 68 * 2^31 = 27028662 * 2^31
.word 1729702349 // zeta^ 68 * f(q^(-1) mod 2^32) * 2^31 = 26036764^ 68 * 375649793 * 2^31
.word   45317587 // zeta^ 72 * 2^31 = 26036764^ 72 * 2^31 = 14626653 * 2^31
.word 3083517997 // zeta^ 72 * f(q^(-1) mod 2^32) * 2^31 = 26036764^ 72 * 375649793 * 2^31
.word    1316163 // zeta^ 36 * 2^31 = 26036764^ 36 * 2^31 = 14833295 * 2^31
.word 3096742077 // zeta^ 36 * f(q^(-1) mod 2^32) * 2^31 = 26036764^ 36 * 375649793 * 2^31
.word   10391631 // zeta^100 * 2^31 = 26036764^100 * 2^31 = 2138810 * 2^31
.word  136873393 // zeta^100 * f(q^(-1) mod 2^32) * 2^31 = 26036764^100 * 375649793 * 2^31
.word   48811299 // zeta^ 40 * 2^31 = 26036764^ 40 * 2^31 = 29737761 * 2^31
.word 4050555101 // zeta^ 40 * f(q^(-1) mod 2^32) * 2^31 = 26036764^ 40 * 375649793 * 2^31
.word   54335767 // zeta^ 20 * 2^31 = 26036764^ 20 * 2^31 = 6490403 * 2^31
.word 2562837737 // zeta^ 20 * f(q^(-1) mod 2^32) * 2^31 = 26036764^ 20 * 375649793 * 2^31
.word   46002083 // zeta^ 84 * 2^31 = 26036764^ 84 * 2^31 = 19648405 * 2^31
.word 3404885597 // zeta^ 84 * f(q^(-1) mod 2^32) * 2^31 = 26036764^ 84 * 375649793 * 2^31
.word   54571669 // zeta^104 * 2^31 = 26036764^104 * 2^31 = 30285189 * 2^31
.word 4085587819 // zeta^104 * f(q^(-1) mod 2^32) * 2^31 = 26036764^104 * 375649793 * 2^31
.word   35733845 // zeta^ 52 * 2^31 = 26036764^ 52 * 2^31 = 31254932 * 2^31
.word 2000162987 // zeta^ 52 * f(q^(-1) mod 2^32) * 2^31 = 26036764^ 52 * 375649793 * 2^31
.word   61099389 // zeta^116 * 2^31 = 26036764^116 * 2^31 = 26362414 * 2^31
.word 1687065731 // zeta^116 * f(q^(-1) mod 2^32) * 2^31 = 26036764^116 * 375649793 * 2^31
.word   59281651 // zeta^ 24 * 2^31 = 26036764^ 24 * 2^31 = 21289485 * 2^31
.word 3509906701 // zeta^ 24 * f(q^(-1) mod 2^32) * 2^31 = 26036764^ 24 * 375649793 * 2^31
.word   26241327 // zeta^ 12 * 2^31 = 26036764^ 12 * 2^31 = 572895 * 2^31
.word 2184146129 // zeta^ 12 * f(q^(-1) mod 2^32) * 2^31 = 26036764^ 12 * 375649793 * 2^31
.word    5033605 // zeta^ 76 * 2^31 = 26036764^ 76 * 2^31 = 26691971 * 2^31
.word 3855639419 // zeta^ 76 * f(q^(-1) mod 2^32) * 2^31 = 26036764^ 76 * 375649793 * 2^31
.word   40500013 // zeta^ 88 * 2^31 = 26036764^ 88 * 2^31 = 9914896 * 2^31
.word  634504915 // zeta^ 88 * f(q^(-1) mod 2^32) * 2^31 = 26036764^ 88 * 375649793 * 2^31
.word    8316793 // zeta^ 44 * 2^31 = 26036764^ 44 * 2^31 = 9249292 * 2^31
.word  591909511 // zeta^ 44 * f(q^(-1) mod 2^32) * 2^31 = 26036764^ 44 * 375649793 * 2^31
.word   16634213 // zeta^108 * 2^31 = 26036764^108 * 2^31 = 29292862 * 2^31
.word 1874600091 // zeta^108 * f(q^(-1) mod 2^32) * 2^31 = 26036764^108 * 375649793 * 2^31
.word   25917637 // zeta^ 56 * 2^31 = 26036764^ 56 * 2^31 = 22603682 * 2^31
.word 1446525243 // zeta^ 56 * f(q^(-1) mod 2^32) * 2^31 = 26036764^ 56 * 375649793 * 2^31
.word   63329695 // zeta^ 28 * 2^31 = 26036764^ 28 * 2^31 = 8247799 * 2^31
.word 2675302497 // zeta^ 28 * f(q^(-1) mod 2^32) * 2^31 = 26036764^ 28 * 375649793 * 2^31
.word    9983051 // zeta^ 92 * 2^31 = 26036764^ 92 * 2^31 = 5086187 * 2^31
.word 2472974773 // zeta^ 92 * f(q^(-1) mod 2^32) * 2^31 = 26036764^ 92 * 375649793 * 2^31
.word    8356523 // zeta^120 * 2^31 = 26036764^120 * 2^31 = 16204162 * 2^31
.word 1036987221 // zeta^120 * f(q^(-1) mod 2^32) * 2^31 = 26036764^120 * 375649793 * 2^31
.word    7721125 // zeta^ 60 * 2^31 = 26036764^ 60 * 2^31 = 28113639 * 2^31
.word 3946619227 // zeta^ 60 * f(q^(-1) mod 2^32) * 2^31 = 26036764^ 60 * 375649793 * 2^31
.word    9383201 // zeta^124 * 2^31 = 26036764^124 * 2^31 = 8471290 * 2^31
.word  542121183 // zeta^124 * f(q^(-1) mod 2^32) * 2^31 = 26036764^124 * 375649793 * 2^31
.text
.align 4
roots_addr: .word roots
.syntax unified
.type ntt_256_u32_33556993_26036764_incomplete, %function
.global ntt_256_u32_33556993_26036764_incomplete
ntt_256_u32_33556993_26036764_incomplete:
// Save GPRs
push {r4-r11,lr}
// Save MVE vector registers
vpush {d0-d15}
// Use r14 as marker for r0 + 1008
add r14, r0, #1008
// Using modulus 33556993
.equ modulus, 33556993
movw r12, #:lower16:modulus
movt r12, #:upper16:modulus
ldr r11, roots_addr
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[192]: Load as Q0
vldrw.u32 Q0, [r14, #-240]
vqrdmulh.s32 Q1, Q0, r10
// input[128]: Load as Q2
vldrw.u32 Q2, [r14, #-496]
vmul.u32 Q0, Q0, r9
// input[64]: Load as Q3
vldrw.u32 Q3, [r0, #256]
vqrdmlah.s32 Q1, Q0, r12
vqrdmulh.s32 Q4, Q2, r10
vsub.s32 Q0, Q3, Q1
vmul.u32 Q2, Q2, r9
vadd.s32 Q3, Q3, Q1
vqrdmlah.s32 Q4, Q2, r12
// input[0]: Load as Q1
vldrw.u32 Q1, [r0, #0]
vqrdmulh.s32 Q5, Q0, r6
vsub.s32 Q2, Q1, Q4
vmul.u32 Q0, Q0, r5
vadd.s32 Q1, Q1, Q4
vqrdmlah.s32 Q5, Q0, r12
// input[196]: Load as Q4
vldrw.u32 Q4, [r14, #-224]
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
vldrw.u32 Q2, [r14, #-480]
vmul.u32 Q4, Q4, r9
// input[68]: Load as Q3
vldrw.u32 Q3, [r0, #272]
vqrdmlah.s32 Q0, Q4, r12
vstrw.u32 Q1, [r0,#(0)]
// Release input[0] from Q1
vqrdmulh.s32 Q1, Q2, r10
vsub.s32 Q4, Q3, Q0
vmul.u32 Q2, Q2, r9
vadd.s32 Q3, Q3, Q0
vqrdmlah.s32 Q1, Q2, r12
// input[4]: Load as Q0
vldrw.u32 Q0, [r0, #16]
vqrdmulh.s32 Q5, Q4, r6
vsub.s32 Q2, Q0, Q1
vmul.u32 Q4, Q4, r5
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q4, r12
// input[200]: Load as Q1
vldrw.u32 Q1, [r14, #-208]
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
vldrw.u32 Q3, [r14, #-464]
vmul.u32 Q1, Q1, r9
// input[72]: Load as Q4
vldrw.u32 Q4, [r0, #288]
vqrdmlah.s32 Q2, Q1, r12
vstrw.u32 Q0, [r0,#(16)]
// Release input[4] from Q0
vqrdmulh.s32 Q0, Q3, r10
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r12
// input[8]: Load as Q2
vldrw.u32 Q2, [r0, #32]
vqrdmulh.s32 Q5, Q1, r6
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r5
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r12
// input[204]: Load as Q0
vldrw.u32 Q0, [r14, #-192]
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
vldrw.u32 Q3, [r14, #-448]
vmul.u32 Q0, Q0, r9
// input[76]: Load as Q4
vldrw.u32 Q4, [r0, #304]
vqrdmlah.s32 Q1, Q0, r12
vstrw.u32 Q2, [r0,#(32)]
// Release input[8] from Q2
vqrdmulh.s32 Q2, Q3, r10
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r12
// input[12]: Load as Q1
vldrw.u32 Q1, [r0, #48]
vqrdmulh.s32 Q5, Q0, r6
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r5
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r12
// input[208]: Load as Q2
vldrw.u32 Q2, [r14, #-176]
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
vldrw.u32 Q3, [r14, #-432]
vmul.u32 Q2, Q2, r9
// input[80]: Load as Q4
vldrw.u32 Q4, [r0, #320]
vqrdmlah.s32 Q0, Q2, r12
vstrw.u32 Q1, [r0,#(48)]
// Release input[12] from Q1
vqrdmulh.s32 Q1, Q3, r10
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r12
// input[16]: Load as Q0
vldrw.u32 Q0, [r0, #64]
vqrdmulh.s32 Q5, Q2, r6
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r5
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r12
// input[212]: Load as Q1
vldrw.u32 Q1, [r14, #-160]
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
vldrw.u32 Q3, [r14, #-416]
vmul.u32 Q1, Q1, r9
// input[84]: Load as Q4
vldrw.u32 Q4, [r0, #336]
vqrdmlah.s32 Q2, Q1, r12
vstrw.u32 Q0, [r0,#(64)]
// Release input[16] from Q0
vqrdmulh.s32 Q0, Q3, r10
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r12
// input[20]: Load as Q2
vldrw.u32 Q2, [r0, #80]
vqrdmulh.s32 Q5, Q1, r6
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r5
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r12
// input[216]: Load as Q0
vldrw.u32 Q0, [r14, #-144]
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
vldrw.u32 Q3, [r14, #-400]
vmul.u32 Q0, Q0, r9
// input[88]: Load as Q4
vldrw.u32 Q4, [r0, #352]
vqrdmlah.s32 Q1, Q0, r12
vstrw.u32 Q2, [r0,#(80)]
// Release input[20] from Q2
vqrdmulh.s32 Q2, Q3, r10
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r12
// input[24]: Load as Q1
vldrw.u32 Q1, [r0, #96]
vqrdmulh.s32 Q5, Q0, r6
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r5
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r12
// input[220]: Load as Q2
vldrw.u32 Q2, [r14, #-128]
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
vldrw.u32 Q3, [r14, #-384]
vmul.u32 Q2, Q2, r9
// input[92]: Load as Q4
vldrw.u32 Q4, [r0, #368]
vqrdmlah.s32 Q0, Q2, r12
vstrw.u32 Q1, [r0,#(96)]
// Release input[24] from Q1
vqrdmulh.s32 Q1, Q3, r10
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r12
// input[28]: Load as Q0
vldrw.u32 Q0, [r0, #112]
vqrdmulh.s32 Q5, Q2, r6
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r5
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r12
// input[224]: Load as Q1
vldrw.u32 Q1, [r14, #-112]
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
vldrw.u32 Q3, [r14, #-368]
vmul.u32 Q1, Q1, r9
// input[96]: Load as Q4
vldrw.u32 Q4, [r0, #384]
vqrdmlah.s32 Q2, Q1, r12
vstrw.u32 Q0, [r0,#(112)]
// Release input[28] from Q0
vqrdmulh.s32 Q0, Q3, r10
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r12
// input[32]: Load as Q2
vldrw.u32 Q2, [r0, #128]
vqrdmulh.s32 Q5, Q1, r6
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r5
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r12
// input[228]: Load as Q0
vldrw.u32 Q0, [r14, #-96]
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
vldrw.u32 Q3, [r14, #-352]
vmul.u32 Q0, Q0, r9
// input[100]: Load as Q4
vldrw.u32 Q4, [r0, #400]
vqrdmlah.s32 Q1, Q0, r12
vstrw.u32 Q2, [r0,#(128)]
// Release input[32] from Q2
vqrdmulh.s32 Q2, Q3, r10
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r12
// input[36]: Load as Q1
vldrw.u32 Q1, [r0, #144]
vqrdmulh.s32 Q5, Q0, r6
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r5
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r12
// input[232]: Load as Q2
vldrw.u32 Q2, [r14, #-80]
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
vldrw.u32 Q3, [r14, #-336]
vmul.u32 Q2, Q2, r9
// input[104]: Load as Q4
vldrw.u32 Q4, [r0, #416]
vqrdmlah.s32 Q0, Q2, r12
vstrw.u32 Q1, [r0,#(144)]
// Release input[36] from Q1
vqrdmulh.s32 Q1, Q3, r10
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r12
// input[40]: Load as Q0
vldrw.u32 Q0, [r0, #160]
vqrdmulh.s32 Q5, Q2, r6
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r5
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r12
// input[236]: Load as Q1
vldrw.u32 Q1, [r14, #-64]
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
vldrw.u32 Q3, [r14, #-320]
vmul.u32 Q1, Q1, r9
// input[108]: Load as Q4
vldrw.u32 Q4, [r0, #432]
vqrdmlah.s32 Q2, Q1, r12
vstrw.u32 Q0, [r0,#(160)]
// Release input[40] from Q0
vqrdmulh.s32 Q0, Q3, r10
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r12
// input[44]: Load as Q2
vldrw.u32 Q2, [r0, #176]
vqrdmulh.s32 Q5, Q1, r6
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r5
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r12
// input[240]: Load as Q0
vldrw.u32 Q0, [r14, #-48]
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
vldrw.u32 Q3, [r14, #-304]
vmul.u32 Q0, Q0, r9
// input[112]: Load as Q4
vldrw.u32 Q4, [r0, #448]
vqrdmlah.s32 Q1, Q0, r12
vstrw.u32 Q2, [r0,#(176)]
// Release input[44] from Q2
vqrdmulh.s32 Q2, Q3, r10
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r12
// input[48]: Load as Q1
vldrw.u32 Q1, [r0, #192]
vqrdmulh.s32 Q5, Q0, r6
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r5
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r12
// input[244]: Load as Q2
vldrw.u32 Q2, [r14, #-32]
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
vldrw.u32 Q3, [r14, #-288]
vmul.u32 Q2, Q2, r9
// input[116]: Load as Q4
vldrw.u32 Q4, [r0, #464]
vqrdmlah.s32 Q0, Q2, r12
vstrw.u32 Q1, [r0,#(192)]
// Release input[48] from Q1
vqrdmulh.s32 Q1, Q3, r10
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r12
// input[52]: Load as Q0
vldrw.u32 Q0, [r0, #208]
vqrdmulh.s32 Q5, Q2, r6
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r5
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r12
// input[248]: Load as Q1
vldrw.u32 Q1, [r14, #-16]
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
vldrw.u32 Q3, [r14, #-272]
vmul.u32 Q1, Q1, r9
// input[120]: Load as Q4
vldrw.u32 Q4, [r0, #480]
vqrdmlah.s32 Q2, Q1, r12
vstrw.u32 Q0, [r0,#(208)]
// Release input[52] from Q0
vqrdmulh.s32 Q0, Q3, r10
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r12
// input[56]: Load as Q2
vldrw.u32 Q2, [r0, #224]
vqrdmulh.s32 Q5, Q1, r6
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r5
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r12
// input[252]: Load as Q0
vldrw.u32 Q0, [r14, #0]
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
vldrw.u32 Q3, [r14, #-256]
vmul.u32 Q0, Q0, r9
// input[124]: Load as Q4
vldrw.u32 Q4, [r0, #496]
vqrdmlah.s32 Q1, Q0, r12
vstrw.u32 Q2, [r0,#(224)]
// Release input[56] from Q2
vqrdmulh.s32 Q2, Q3, r10
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r12
// input[60]: Load as Q1
vldrw.u32 Q1, [r0, #240]
vqrdmulh.s32 Q5, Q0, r6
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r5
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r12
// input[48]: Load as Q2
vldrw.u32 Q2, [r0, #192]
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
vldrw.u32 Q3, [r0, #128]
vmul.u32 Q2, Q2, r9
// input[16]: Load as Q4
vldrw.u32 Q4, [r0, #64]
vqrdmlah.s32 Q0, Q2, r12
vstrw.u32 Q1, [r0,#(240)]
// Release input[60] from Q1
vqrdmulh.s32 Q1, Q3, r10
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r12
// input[0]: Load as Q0
vldrw.u32 Q0, [r0, #0]
vqrdmulh.s32 Q5, Q2, r6
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r5
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r12
// input[52]: Load as Q1
vldrw.u32 Q1, [r0, #208]
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
vldrw.u32 Q3, [r0, #144]
vmul.u32 Q1, Q1, r9
// input[20]: Load as Q4
vldrw.u32 Q4, [r0, #80]
vqrdmlah.s32 Q2, Q1, r12
vstrw.u32 Q0, [r0,#(0)]
// Release input[0] from Q0
vqrdmulh.s32 Q0, Q3, r10
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r12
// input[4]: Load as Q2
vldrw.u32 Q2, [r0, #16]
vqrdmulh.s32 Q5, Q1, r6
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r5
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r12
// input[56]: Load as Q0
vldrw.u32 Q0, [r0, #224]
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
vldrw.u32 Q3, [r0, #160]
vmul.u32 Q0, Q0, r9
// input[24]: Load as Q4
vldrw.u32 Q4, [r0, #96]
vqrdmlah.s32 Q1, Q0, r12
vstrw.u32 Q2, [r0,#(16)]
// Release input[4] from Q2
vqrdmulh.s32 Q2, Q3, r10
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r12
// input[8]: Load as Q1
vldrw.u32 Q1, [r0, #32]
vqrdmulh.s32 Q5, Q0, r6
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r5
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r12
// input[60]: Load as Q2
vldrw.u32 Q2, [r0, #240]
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
vldrw.u32 Q3, [r0, #176]
vmul.u32 Q2, Q2, r9
// input[28]: Load as Q4
vldrw.u32 Q4, [r0, #112]
vqrdmlah.s32 Q0, Q2, r12
vstrw.u32 Q1, [r0,#(32)]
// Release input[8] from Q1
vqrdmulh.s32 Q1, Q3, r10
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r12
// input[12]: Load as Q0
vldrw.u32 Q0, [r0, #48]
vqrdmulh.s32 Q5, Q2, r6
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r5
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r12
// input[112]: Load as Q1
vldrw.u32 Q1, [r0, #448]
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
vldrw.u32 Q3, [r0, #384]
vmul.u32 Q1, Q1, r9
// input[80]: Load as Q4
vldrw.u32 Q4, [r0, #320]
vqrdmlah.s32 Q2, Q1, r12
vstrw.u32 Q0, [r0,#(48)]
// Release input[12] from Q0
vqrdmulh.s32 Q0, Q3, r10
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r12
// input[64]: Load as Q2
vldrw.u32 Q2, [r0, #256]
vqrdmulh.s32 Q5, Q1, r6
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r5
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r12
// input[116]: Load as Q0
vldrw.u32 Q0, [r0, #464]
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
vldrw.u32 Q3, [r0, #400]
vmul.u32 Q0, Q0, r9
// input[84]: Load as Q4
vldrw.u32 Q4, [r0, #336]
vqrdmlah.s32 Q1, Q0, r12
vstrw.u32 Q2, [r0,#(256)]
// Release input[64] from Q2
vqrdmulh.s32 Q2, Q3, r10
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r12
// input[68]: Load as Q1
vldrw.u32 Q1, [r0, #272]
vqrdmulh.s32 Q5, Q0, r6
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r5
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r12
// input[120]: Load as Q2
vldrw.u32 Q2, [r0, #480]
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
vldrw.u32 Q3, [r0, #416]
vmul.u32 Q2, Q2, r9
// input[88]: Load as Q4
vldrw.u32 Q4, [r0, #352]
vqrdmlah.s32 Q0, Q2, r12
vstrw.u32 Q1, [r0,#(272)]
// Release input[68] from Q1
vqrdmulh.s32 Q1, Q3, r10
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r12
// input[72]: Load as Q0
vldrw.u32 Q0, [r0, #288]
vqrdmulh.s32 Q5, Q2, r6
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r5
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r12
// input[124]: Load as Q1
vldrw.u32 Q1, [r0, #496]
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
vldrw.u32 Q3, [r0, #432]
vmul.u32 Q1, Q1, r9
// input[92]: Load as Q4
vldrw.u32 Q4, [r0, #368]
vqrdmlah.s32 Q2, Q1, r12
vstrw.u32 Q0, [r0,#(288)]
// Release input[72] from Q0
vqrdmulh.s32 Q0, Q3, r10
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r12
// input[76]: Load as Q2
vldrw.u32 Q2, [r0, #304]
vqrdmulh.s32 Q5, Q1, r6
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r5
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r12
// input[176]: Load as Q0
vldrw.u32 Q0, [r14, #-304]
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
vldrw.u32 Q3, [r14, #-368]
vmul.u32 Q0, Q0, r9
// input[144]: Load as Q4
vldrw.u32 Q4, [r14, #-432]
vqrdmlah.s32 Q1, Q0, r12
vstrw.u32 Q2, [r0,#(304)]
// Release input[76] from Q2
vqrdmulh.s32 Q2, Q3, r10
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r12
// input[128]: Load as Q1
vldrw.u32 Q1, [r14, #-496]
vqrdmulh.s32 Q5, Q0, r6
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r5
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r12
// input[180]: Load as Q2
vldrw.u32 Q2, [r14, #-288]
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
vldrw.u32 Q3, [r14, #-352]
vmul.u32 Q2, Q2, r9
// input[148]: Load as Q4
vldrw.u32 Q4, [r14, #-416]
vqrdmlah.s32 Q0, Q2, r12
vstrw.u32 Q1, [r14,#(-496)]
// Release input[128] from Q1
vqrdmulh.s32 Q1, Q3, r10
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r12
// input[132]: Load as Q0
vldrw.u32 Q0, [r14, #-480]
vqrdmulh.s32 Q5, Q2, r6
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r5
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r12
// input[184]: Load as Q1
vldrw.u32 Q1, [r14, #-272]
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
vldrw.u32 Q3, [r14, #-336]
vmul.u32 Q1, Q1, r9
// input[152]: Load as Q4
vldrw.u32 Q4, [r14, #-400]
vqrdmlah.s32 Q2, Q1, r12
vstrw.u32 Q0, [r14,#(-480)]
// Release input[132] from Q0
vqrdmulh.s32 Q0, Q3, r10
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r12
// input[136]: Load as Q2
vldrw.u32 Q2, [r14, #-464]
vqrdmulh.s32 Q5, Q1, r6
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r5
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r12
// input[188]: Load as Q0
vldrw.u32 Q0, [r14, #-256]
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
vldrw.u32 Q3, [r14, #-320]
vmul.u32 Q0, Q0, r9
// input[156]: Load as Q4
vldrw.u32 Q4, [r14, #-384]
vqrdmlah.s32 Q1, Q0, r12
vstrw.u32 Q2, [r14,#(-464)]
// Release input[136] from Q2
vqrdmulh.s32 Q2, Q3, r10
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r12
// input[140]: Load as Q1
vldrw.u32 Q1, [r14, #-448]
vqrdmulh.s32 Q5, Q0, r6
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r5
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r12
// input[240]: Load as Q2
vldrw.u32 Q2, [r14, #-48]
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
vldrw.u32 Q3, [r14, #-112]
vmul.u32 Q2, Q2, r9
// input[208]: Load as Q4
vldrw.u32 Q4, [r14, #-176]
vqrdmlah.s32 Q0, Q2, r12
vstrw.u32 Q1, [r14,#(-448)]
// Release input[140] from Q1
vqrdmulh.s32 Q1, Q3, r10
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r12
// input[192]: Load as Q0
vldrw.u32 Q0, [r14, #-240]
vqrdmulh.s32 Q5, Q2, r6
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r5
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r12
// input[244]: Load as Q1
vldrw.u32 Q1, [r14, #-32]
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
vldrw.u32 Q3, [r14, #-96]
vmul.u32 Q1, Q1, r9
// input[212]: Load as Q4
vldrw.u32 Q4, [r14, #-160]
vqrdmlah.s32 Q2, Q1, r12
vstrw.u32 Q0, [r14,#(-240)]
// Release input[192] from Q0
vqrdmulh.s32 Q0, Q3, r10
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r12
// input[196]: Load as Q2
vldrw.u32 Q2, [r14, #-224]
vqrdmulh.s32 Q5, Q1, r6
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r5
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r12
// input[248]: Load as Q0
vldrw.u32 Q0, [r14, #-16]
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
vldrw.u32 Q3, [r14, #-80]
vmul.u32 Q0, Q0, r9
// input[216]: Load as Q4
vldrw.u32 Q4, [r14, #-144]
vqrdmlah.s32 Q1, Q0, r12
vstrw.u32 Q2, [r14,#(-224)]
// Release input[196] from Q2
vqrdmulh.s32 Q2, Q3, r10
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r12
// input[200]: Load as Q1
vldrw.u32 Q1, [r14, #-208]
vqrdmulh.s32 Q5, Q0, r6
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r5
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r12
// input[252]: Load as Q2
vldrw.u32 Q2, [r14, #0]
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
vldrw.u32 Q3, [r14, #-64]
vmul.u32 Q2, Q2, r9
// input[220]: Load as Q4
vldrw.u32 Q4, [r14, #-128]
vqrdmlah.s32 Q0, Q2, r12
vstrw.u32 Q1, [r14,#(-208)]
// Release input[200] from Q1
vqrdmulh.s32 Q1, Q3, r10
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r12
// input[204]: Load as Q0
vldrw.u32 Q0, [r14, #-192]
vqrdmulh.s32 Q5, Q2, r6
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r5
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r12
// input[12]: Load as Q1
vldrw.u32 Q1, [r0, #48]
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
vldrw.u32 Q3, [r0, #32]
vmul.u32 Q1, Q1, r9
// input[4]: Load as Q4
vldrw.u32 Q4, [r0, #16]
vqrdmlah.s32 Q2, Q1, r12
vstrw.u32 Q0, [r14,#(-192)]
// Release input[204] from Q0
vqrdmulh.s32 Q0, Q3, r10
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r12
// input[0]: Load as Q2
vldrw.u32 Q2, [r0, #0]
vqrdmulh.s32 Q5, Q1, r6
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r5
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r12
// input[28]: Load as Q0
vldrw.u32 Q0, [r0, #112]
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
vldrw.u32 Q3, [r0, #96]
vmul.u32 Q0, Q0, r9
// input[20]: Load as Q4
vldrw.u32 Q4, [r0, #80]
vqrdmlah.s32 Q1, Q0, r12
vstrw.u32 Q2, [r0,#(0)]
// Release input[0] from Q2
vqrdmulh.s32 Q2, Q3, r10
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r12
// input[16]: Load as Q1
vldrw.u32 Q1, [r0, #64]
vqrdmulh.s32 Q5, Q0, r6
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r5
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r12
// input[44]: Load as Q2
vldrw.u32 Q2, [r0, #176]
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
vldrw.u32 Q3, [r0, #160]
vmul.u32 Q2, Q2, r9
// input[36]: Load as Q4
vldrw.u32 Q4, [r0, #144]
vqrdmlah.s32 Q0, Q2, r12
vstrw.u32 Q1, [r0,#(64)]
// Release input[16] from Q1
vqrdmulh.s32 Q1, Q3, r10
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r12
// input[32]: Load as Q0
vldrw.u32 Q0, [r0, #128]
vqrdmulh.s32 Q5, Q2, r6
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r5
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r12
// input[60]: Load as Q1
vldrw.u32 Q1, [r0, #240]
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
vldrw.u32 Q3, [r0, #224]
vmul.u32 Q1, Q1, r9
// input[52]: Load as Q4
vldrw.u32 Q4, [r0, #208]
vqrdmlah.s32 Q2, Q1, r12
vstrw.u32 Q0, [r0,#(128)]
// Release input[32] from Q0
vqrdmulh.s32 Q0, Q3, r10
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r12
// input[48]: Load as Q2
vldrw.u32 Q2, [r0, #192]
vqrdmulh.s32 Q5, Q1, r6
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r5
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r12
// input[76]: Load as Q0
vldrw.u32 Q0, [r0, #304]
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
vldrw.u32 Q3, [r0, #288]
vmul.u32 Q0, Q0, r9
// input[68]: Load as Q4
vldrw.u32 Q4, [r0, #272]
vqrdmlah.s32 Q1, Q0, r12
vstrw.u32 Q2, [r0,#(192)]
// Release input[48] from Q2
vqrdmulh.s32 Q2, Q3, r10
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r12
// input[64]: Load as Q1
vldrw.u32 Q1, [r0, #256]
vqrdmulh.s32 Q5, Q0, r6
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r5
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r12
// input[92]: Load as Q2
vldrw.u32 Q2, [r0, #368]
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
vldrw.u32 Q3, [r0, #352]
vmul.u32 Q2, Q2, r9
// input[84]: Load as Q4
vldrw.u32 Q4, [r0, #336]
vqrdmlah.s32 Q0, Q2, r12
vstrw.u32 Q1, [r0,#(256)]
// Release input[64] from Q1
vqrdmulh.s32 Q1, Q3, r10
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r12
// input[80]: Load as Q0
vldrw.u32 Q0, [r0, #320]
vqrdmulh.s32 Q5, Q2, r6
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r5
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r12
// input[108]: Load as Q1
vldrw.u32 Q1, [r0, #432]
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
vldrw.u32 Q3, [r0, #416]
vmul.u32 Q1, Q1, r9
// input[100]: Load as Q4
vldrw.u32 Q4, [r0, #400]
vqrdmlah.s32 Q2, Q1, r12
vstrw.u32 Q0, [r0,#(320)]
// Release input[80] from Q0
vqrdmulh.s32 Q0, Q3, r10
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r12
// input[96]: Load as Q2
vldrw.u32 Q2, [r0, #384]
vqrdmulh.s32 Q5, Q1, r6
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r5
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r12
// input[124]: Load as Q0
vldrw.u32 Q0, [r0, #496]
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
vldrw.u32 Q3, [r0, #480]
vmul.u32 Q0, Q0, r9
// input[116]: Load as Q4
vldrw.u32 Q4, [r0, #464]
vqrdmlah.s32 Q1, Q0, r12
vstrw.u32 Q2, [r0,#(384)]
// Release input[96] from Q2
vqrdmulh.s32 Q2, Q3, r10
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r12
// input[112]: Load as Q1
vldrw.u32 Q1, [r0, #448]
vqrdmulh.s32 Q5, Q0, r6
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r5
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r12
// input[140]: Load as Q2
vldrw.u32 Q2, [r14, #-448]
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
vldrw.u32 Q3, [r14, #-464]
vmul.u32 Q2, Q2, r9
// input[132]: Load as Q4
vldrw.u32 Q4, [r14, #-480]
vqrdmlah.s32 Q0, Q2, r12
vstrw.u32 Q1, [r0,#(448)]
// Release input[112] from Q1
vqrdmulh.s32 Q1, Q3, r10
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r12
// input[128]: Load as Q0
vldrw.u32 Q0, [r14, #-496]
vqrdmulh.s32 Q5, Q2, r6
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r5
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r12
// input[156]: Load as Q1
vldrw.u32 Q1, [r14, #-384]
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
vldrw.u32 Q3, [r14, #-400]
vmul.u32 Q1, Q1, r9
// input[148]: Load as Q4
vldrw.u32 Q4, [r14, #-416]
vqrdmlah.s32 Q2, Q1, r12
vstrw.u32 Q0, [r14,#(-496)]
// Release input[128] from Q0
vqrdmulh.s32 Q0, Q3, r10
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r12
// input[144]: Load as Q2
vldrw.u32 Q2, [r14, #-432]
vqrdmulh.s32 Q5, Q1, r6
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r5
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r12
// input[172]: Load as Q0
vldrw.u32 Q0, [r14, #-320]
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
vldrw.u32 Q3, [r14, #-336]
vmul.u32 Q0, Q0, r9
// input[164]: Load as Q4
vldrw.u32 Q4, [r14, #-352]
vqrdmlah.s32 Q1, Q0, r12
vstrw.u32 Q2, [r14,#(-432)]
// Release input[144] from Q2
vqrdmulh.s32 Q2, Q3, r10
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r12
// input[160]: Load as Q1
vldrw.u32 Q1, [r14, #-368]
vqrdmulh.s32 Q5, Q0, r6
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r5
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r12
// input[188]: Load as Q2
vldrw.u32 Q2, [r14, #-256]
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
vldrw.u32 Q3, [r14, #-272]
vmul.u32 Q2, Q2, r9
// input[180]: Load as Q4
vldrw.u32 Q4, [r14, #-288]
vqrdmlah.s32 Q0, Q2, r12
vstrw.u32 Q1, [r14,#(-368)]
// Release input[160] from Q1
vqrdmulh.s32 Q1, Q3, r10
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r12
// input[176]: Load as Q0
vldrw.u32 Q0, [r14, #-304]
vqrdmulh.s32 Q5, Q2, r6
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r5
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r12
// input[204]: Load as Q1
vldrw.u32 Q1, [r14, #-192]
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
vldrw.u32 Q3, [r14, #-208]
vmul.u32 Q1, Q1, r9
// input[196]: Load as Q4
vldrw.u32 Q4, [r14, #-224]
vqrdmlah.s32 Q2, Q1, r12
vstrw.u32 Q0, [r14,#(-304)]
// Release input[176] from Q0
vqrdmulh.s32 Q0, Q3, r10
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r12
// input[192]: Load as Q2
vldrw.u32 Q2, [r14, #-240]
vqrdmulh.s32 Q5, Q1, r6
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r5
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r12
// input[220]: Load as Q0
vldrw.u32 Q0, [r14, #-128]
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
vldrw.u32 Q3, [r14, #-144]
vmul.u32 Q0, Q0, r9
// input[212]: Load as Q4
vldrw.u32 Q4, [r14, #-160]
vqrdmlah.s32 Q1, Q0, r12
vstrw.u32 Q2, [r14,#(-240)]
// Release input[192] from Q2
vqrdmulh.s32 Q2, Q3, r10
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r12
// input[208]: Load as Q1
vldrw.u32 Q1, [r14, #-176]
vqrdmulh.s32 Q5, Q0, r6
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r5
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r12
// input[236]: Load as Q2
vldrw.u32 Q2, [r14, #-64]
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
vldrw.u32 Q3, [r14, #-80]
vmul.u32 Q2, Q2, r9
// input[228]: Load as Q4
vldrw.u32 Q4, [r14, #-96]
vqrdmlah.s32 Q0, Q2, r12
vstrw.u32 Q1, [r14,#(-176)]
// Release input[208] from Q1
vqrdmulh.s32 Q1, Q3, r10
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r12
// input[224]: Load as Q0
vldrw.u32 Q0, [r14, #-112]
vqrdmulh.s32 Q5, Q2, r6
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r5
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r12
// input[252]: Load as Q1
vldrw.u32 Q1, [r14, #0]
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
vldrw.u32 Q3, [r14, #-16]
vmul.u32 Q1, Q1, r9
// input[244]: Load as Q4
vldrw.u32 Q4, [r14, #-32]
vqrdmlah.s32 Q2, Q1, r12
vstrw.u32 Q0, [r14,#(-112)]
// Release input[224] from Q0
vqrdmulh.s32 Q0, Q3, r10
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r12
// input[240]: Load as Q2
vldrw.u32 Q2, [r14, #-48]
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
// Modular inverse of 33556993 mod 2^32 = 375649793
.equ modulus_inv, 3919317503
movw r10, #:lower16:modulus_inv
movt r10, #:upper16:modulus_inv
// Restore MVE vector registers
vpop {d0-d15}
// Restore GPRs
pop {r4-r11,lr}
bx lr

// Line count:        1995
// Instruction count: 1557