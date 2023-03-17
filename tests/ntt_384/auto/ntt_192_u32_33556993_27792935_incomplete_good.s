
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
.global ntt_192_u32_33556993_27792935_incomplete_good_twiddles
ntt_192_u32_33556993_27792935_incomplete_good_twiddles: // For base multiplication
.word   33393089 // zeta^  0 * 2^31 = 27792935^  0 * 2^31 = 1 * 2^31
.word 2147483711 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 27792935^  0 * 375649793 * 2^31
.word   66220859 // zeta^160 * 2^31 = 27792935^160 * 2^31 = 25038562 * 2^31
.word 1602345669 // zeta^160 * f(q^(-1) mod 2^32) * 2^31 = 27792935^160 * 375649793 * 2^31
.word   54773291 // zeta^ 80 * 2^31 = 27792935^ 80 * 2^31 = 2013241 * 2^31
.word 2276321237 // zeta^ 80 * f(q^(-1) mod 2^32) * 2^31 = 27792935^ 80 * 375649793 * 2^31
.word   38018305 // zeta^ 48 * 2^31 = 27792935^ 48 * 2^31 = 15854702 * 2^31
.word 1014623487 // zeta^ 48 * f(q^(-1) mod 2^32) * 2^31 = 27792935^ 48 * 375649793 * 2^31
.word   11561947 // zeta^136 * 2^31 = 27792935^136 * 2^31 = 29356361 * 2^31
.word 4026147365 // zeta^136 * f(q^(-1) mod 2^32) * 2^31 = 27792935^136 * 375649793 * 2^31
.word   59595857 // zeta^104 * 2^31 = 27792935^104 * 2^31 = 32616688 * 2^31
.word 2087308719 // zeta^104 * f(q^(-1) mod 2^32) * 2^31 = 27792935^104 * 375649793 * 2^31
.word   43317805 // zeta^ 24 * 2^31 = 27792935^ 24 * 2^31 = 14579576 * 2^31
.word  933021651 // zeta^ 24 * f(q^(-1) mod 2^32) * 2^31 = 27792935^ 24 * 375649793 * 2^31
.word    9032575 // zeta^184 * 2^31 = 27792935^184 * 2^31 = 23624597 * 2^31
.word 3659342465 // zeta^184 * f(q^(-1) mod 2^32) * 2^31 = 27792935^184 * 375649793 * 2^31
.word   52902781 // zeta^ 68 * 2^31 = 27792935^ 68 * 2^31 = 2711401 * 2^31
.word 2321000067 // zeta^ 68 * f(q^(-1) mod 2^32) * 2^31 = 27792935^ 68 * 375649793 * 2^31
.word   48515911 // zeta^ 36 * 2^31 = 27792935^ 36 * 2^31 = 26823146 * 2^31
.word 1716550329 // zeta^ 36 * f(q^(-1) mod 2^32) * 2^31 = 27792935^ 36 * 375649793 * 2^31
.word   44552409 // zeta^148 * 2^31 = 27792935^148 * 2^31 = 21166324 * 2^31
.word 1354541351 // zeta^148 * f(q^(-1) mod 2^32) * 2^31 = 27792935^148 * 375649793 * 2^31
.word   15880423 // zeta^116 * 2^31 = 27792935^116 * 2^31 = 518908 * 2^31
.word   33207577 // zeta^116 * f(q^(-1) mod 2^32) * 2^31 = 27792935^116 * 375649793 * 2^31
.word   64683161 // zeta^ 12 * 2^31 = 27792935^ 12 * 2^31 = 14745691 * 2^31
.word 3091135847 // zeta^ 12 * f(q^(-1) mod 2^32) * 2^31 = 27792935^ 12 * 375649793 * 2^31
.word    2707023 // zeta^172 * 2^31 = 27792935^172 * 2^31 = 15739856 * 2^31
.word 1007273905 // zeta^172 * f(q^(-1) mod 2^32) * 2^31 = 27792935^172 * 375649793 * 2^31
.word   48191309 // zeta^ 92 * 2^31 = 27792935^ 92 * 2^31 = 33153165 * 2^31
.word 4269124275 // zeta^ 92 * f(q^(-1) mod 2^32) * 2^31 = 27792935^ 92 * 375649793 * 2^31
.word   32686385 // zeta^ 60 * 2^31 = 27792935^ 60 * 2^31 = 20044445 * 2^31
.word 3430230223 // zeta^ 60 * f(q^(-1) mod 2^32) * 2^31 = 27792935^ 60 * 375649793 * 2^31
.word     893127 // zeta^ 64 * 2^31 = 27792935^ 64 * 2^31 = 8518431 * 2^31
.word 2692621625 // zeta^ 64 * f(q^(-1) mod 2^32) * 2^31 = 27792935^ 64 * 375649793 * 2^31
.word     729223 // zeta^ 32 * 2^31 = 27792935^ 32 * 2^31 = 8518432 * 2^31
.word  545138041 // zeta^ 32 * f(q^(-1) mod 2^32) * 2^31 = 27792935^ 32 * 375649793 * 2^31
.word   29095681 // zeta^144 * 2^31 = 27792935^144 * 2^31 = 17702291 * 2^31
.word 3280343807 // zeta^144 * f(q^(-1) mod 2^32) * 2^31 = 27792935^144 * 375649793 * 2^31
.word   50311979 // zeta^112 * 2^31 = 27792935^112 * 2^31 = 19715532 * 2^31
.word 1261697749 // zeta^112 * f(q^(-1) mod 2^32) * 2^31 = 27792935^112 * 375649793 * 2^31
.word    7518129 // zeta^  8 * 2^31 = 27792935^  8 * 2^31 = 940305 * 2^31
.word 2207658575 // zeta^  8 * f(q^(-1) mod 2^32) * 2^31 = 27792935^  8 * 375649793 * 2^31
.word   52637069 // zeta^168 * 2^31 = 27792935^168 * 2^31 = 30296666 * 2^31
.word 1938838643 // zeta^168 * f(q^(-1) mod 2^32) * 2^31 = 27792935^168 * 375649793 * 2^31
.word   58081411 // zeta^ 88 * 2^31 = 27792935^ 88 * 2^31 = 9932396 * 2^31
.word  635624829 // zeta^ 88 * f(q^(-1) mod 2^32) * 2^31 = 27792935^ 88 * 375649793 * 2^31
.word     728237 // zeta^ 56 * 2^31 = 27792935^ 56 * 2^31 = 24511972 * 2^31
.word 1568646483 // zeta^ 56 * f(q^(-1) mod 2^32) * 2^31 = 27792935^ 56 * 375649793 * 2^31
.word   18598075 // zeta^132 * 2^31 = 27792935^132 * 2^31 = 6733847 * 2^31
.word 2578416965 // zeta^132 * f(q^(-1) mod 2^32) * 2^31 = 27792935^132 * 375649793 * 2^31
.word   37943863 // zeta^100 * 2^31 = 27792935^100 * 2^31 = 9445248 * 2^31
.word  604449737 // zeta^100 * f(q^(-1) mod 2^32) * 2^31 = 27792935^100 * 375649793 * 2^31
.word   51233563 // zeta^ 20 * 2^31 = 27792935^ 20 * 2^31 = 33038085 * 2^31
.word 4261759717 // zeta^ 20 * f(q^(-1) mod 2^32) * 2^31 = 27792935^ 20 * 375649793 * 2^31
.word   62228979 // zeta^180 * 2^31 = 27792935^180 * 2^31 = 20647416 * 2^31
.word 1321333773 // zeta^180 * f(q^(-1) mod 2^32) * 2^31 = 27792935^180 * 375649793 * 2^31
.word   64406963 // zeta^ 76 * 2^31 = 27792935^ 76 * 2^31 = 17817137 * 2^31
.word 3287693389 // zeta^ 76 * f(q^(-1) mod 2^32) * 2^31 = 27792935^ 76 * 375649793 * 2^31
.word   28419145 // zeta^ 44 * 2^31 = 27792935^ 44 * 2^31 = 32562828 * 2^31
.word 2083861943 // zeta^ 44 * f(q^(-1) mod 2^32) * 2^31 = 27792935^ 44 * 375649793 * 2^31
.word   34427601 // zeta^156 * 2^31 = 27792935^156 * 2^31 = 13512548 * 2^31
.word  864737071 // zeta^156 * f(q^(-1) mod 2^32) * 2^31 = 27792935^156 * 375649793 * 2^31
.word   49061917 // zeta^124 * 2^31 = 27792935^124 * 2^31 = 13108720 * 2^31
.word  838894051 // zeta^124 * f(q^(-1) mod 2^32) * 2^31 = 27792935^124 * 375649793 * 2^31
.word   66384763 // zeta^128 * 2^31 = 27792935^128 * 2^31 = 25038561 * 2^31
.word 3749829253 // zeta^128 * f(q^(-1) mod 2^32) * 2^31 = 27792935^128 * 375649793 * 2^31
.word   33720897 // zeta^ 96 * 2^31 = 27792935^ 96 * 2^31 = 33556992 * 2^31
.word 2147483583 // zeta^ 96 * f(q^(-1) mod 2^32) * 2^31 = 27792935^ 96 * 375649793 * 2^31
.word   16802007 // zeta^ 16 * 2^31 = 27792935^ 16 * 2^31 = 13841461 * 2^31
.word 3033269545 // zeta^ 16 * f(q^(-1) mod 2^32) * 2^31 = 27792935^ 16 * 375649793 * 2^31
.word   12340695 // zeta^176 * 2^31 = 27792935^176 * 2^31 = 31543752 * 2^31
.word 2018646057 // zeta^176 * f(q^(-1) mod 2^32) * 2^31 = 27792935^176 * 375649793 * 2^31
.word   14476917 // zeta^ 72 * 2^31 = 27792935^ 72 * 2^31 = 3260327 * 2^31
.word 2356128651 // zeta^ 72 * f(q^(-1) mod 2^32) * 2^31 = 27792935^ 72 * 375649793 * 2^31
.word   55552039 // zeta^ 40 * 2^31 = 27792935^ 40 * 2^31 = 4200632 * 2^31
.word  268819929 // zeta^ 40 * f(q^(-1) mod 2^32) * 2^31 = 27792935^ 40 * 375649793 * 2^31
.word   66385749 // zeta^152 * 2^31 = 27792935^152 * 2^31 = 9045021 * 2^31
.word 2726320811 // zeta^152 * f(q^(-1) mod 2^32) * 2^31 = 27792935^152 * 375649793 * 2^31
.word   23796181 // zeta^120 * 2^31 = 27792935^120 * 2^31 = 18977417 * 2^31
.word 3361945643 // zeta^120 * f(q^(-1) mod 2^32) * 2^31 = 27792935^120 * 375649793 * 2^31
.word   29170123 // zeta^  4 * 2^31 = 27792935^  4 * 2^31 = 24111745 * 2^31
.word 3690517557 // zeta^  4 * f(q^(-1) mod 2^32) * 2^31 = 27792935^  4 * 375649793 * 2^31
.word   14211205 // zeta^164 * 2^31 = 27792935^164 * 2^31 = 30845592 * 2^31
.word 1973967227 // zeta^164 * f(q^(-1) mod 2^32) * 2^31 = 27792935^164 * 375649793 * 2^31
.word    4885007 // zeta^ 84 * 2^31 = 27792935^ 84 * 2^31 = 12909577 * 2^31
.word 2973633521 // zeta^ 84 * f(q^(-1) mod 2^32) * 2^31 = 27792935^ 84 * 375649793 * 2^31
.word   22561577 // zeta^ 52 * 2^31 = 27792935^ 52 * 2^31 = 12390669 * 2^31
.word 2940425943 // zeta^ 52 * f(q^(-1) mod 2^32) * 2^31 = 27792935^ 52 * 375649793 * 2^31
.word   38694841 // zeta^140 * 2^31 = 27792935^140 * 2^31 = 994165 * 2^31
.word 2211105351 // zeta^140 * f(q^(-1) mod 2^32) * 2^31 = 27792935^140 * 375649793 * 2^31
.word    2430825 // zeta^108 * 2^31 = 27792935^108 * 2^31 = 18811302 * 2^31
.word 1203831447 // zeta^108 * f(q^(-1) mod 2^32) * 2^31 = 27792935^108 * 375649793 * 2^31
.word   18052069 // zeta^ 28 * 2^31 = 27792935^ 28 * 2^31 = 20448273 * 2^31
.word 3456073243 // zeta^ 28 * f(q^(-1) mod 2^32) * 2^31 = 27792935^ 28 * 375649793 * 2^31
.word   18922677 // zeta^188 * 2^31 = 27792935^188 * 2^31 = 403828 * 2^31
.word   25843019 // zeta^188 * f(q^(-1) mod 2^32) * 2^31 = 27792935^188 * 375649793 * 2^31
// End of twiddles for base multiplication

.data
roots:
.word     893127 /// zeta^ 64 * 2^31 = 27792935^ 64 * 2^31 = 8518431 * 2^31
.word 2692621625 /// zeta^ 64 * f(q^(-1) mod 2^32) * 2^31 = 27792935^ 64 * 375649793 * 2^31
.word   66384763 /// zeta^128 * 2^31 = 27792935^128 * 2^31 = 25038561 * 2^31
.word 3749829253 /// zeta^128 * f(q^(-1) mod 2^32) * 2^31 = 27792935^128 * 375649793 * 2^31
.word   33393089 // zeta^  0 * 2^31 = 27792935^  0 * 2^31 = 1 * 2^31
.word 2147483711 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 27792935^  0 * 375649793 * 2^31
.word   33393089 // zeta^  0 * 2^31 = 27792935^  0 * 2^31 = 1 * 2^31
.word 2147483711 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 27792935^  0 * 375649793 * 2^31
.word   29095681 // zeta^144 * 2^31 = 27792935^144 * 2^31 = 17702291 * 2^31
.word 3280343807 // zeta^144 * f(q^(-1) mod 2^32) * 2^31 = 27792935^144 * 375649793 * 2^31
.word   33393089 // zeta^  0 * 2^31 = 27792935^  0 * 2^31 = 1 * 2^31
.word 2147483711 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 27792935^  0 * 375649793 * 2^31
.word   33393089 // zeta^  0 * 2^31 = 27792935^  0 * 2^31 = 1 * 2^31
.word 2147483711 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 27792935^  0 * 375649793 * 2^31
.word   29095681 // zeta^144 * 2^31 = 27792935^144 * 2^31 = 17702291 * 2^31
.word 3280343807 // zeta^144 * f(q^(-1) mod 2^32) * 2^31 = 27792935^144 * 375649793 * 2^31
.word   29095681 // zeta^144 * 2^31 = 27792935^144 * 2^31 = 17702291 * 2^31
.word 3280343807 // zeta^144 * f(q^(-1) mod 2^32) * 2^31 = 27792935^144 * 375649793 * 2^31
.word   14476917 // zeta^ 72 * 2^31 = 27792935^ 72 * 2^31 = 3260327 * 2^31
.word 2356128651 // zeta^ 72 * f(q^(-1) mod 2^32) * 2^31 = 27792935^ 72 * 375649793 * 2^31
.word   43317805 // zeta^ 24 * 2^31 = 27792935^ 24 * 2^31 = 14579576 * 2^31
.word  933021651 // zeta^ 24 * f(q^(-1) mod 2^32) * 2^31 = 27792935^ 24 * 375649793 * 2^31
.word   14476917 // zeta^ 72 * 2^31 = 27792935^ 72 * 2^31 = 3260327 * 2^31
.word 2356128651 // zeta^ 72 * f(q^(-1) mod 2^32) * 2^31 = 27792935^ 72 * 375649793 * 2^31
.word   18598075 // zeta^132 * 2^31 = 27792935^132 * 2^31 = 6733847 * 2^31
.word 2578416965 // zeta^132 * f(q^(-1) mod 2^32) * 2^31 = 27792935^132 * 375649793 * 2^31
.word    4885007 // zeta^ 84 * 2^31 = 27792935^ 84 * 2^31 = 12909577 * 2^31
.word 2973633521 // zeta^ 84 * f(q^(-1) mod 2^32) * 2^31 = 27792935^ 84 * 375649793 * 2^31
.word   43317805 // zeta^ 24 * 2^31 = 27792935^ 24 * 2^31 = 14579576 * 2^31
.word  933021651 // zeta^ 24 * f(q^(-1) mod 2^32) * 2^31 = 27792935^ 24 * 375649793 * 2^31
.word   64683161 // zeta^ 12 * 2^31 = 27792935^ 12 * 2^31 = 14745691 * 2^31
.word 3091135847 // zeta^ 12 * f(q^(-1) mod 2^32) * 2^31 = 27792935^ 12 * 375649793 * 2^31
.word   34427601 // zeta^156 * 2^31 = 27792935^156 * 2^31 = 13512548 * 2^31
.word  864737071 // zeta^156 * f(q^(-1) mod 2^32) * 2^31 = 27792935^156 * 375649793 * 2^31
.text
.align 4
roots_addr: .word roots
.syntax unified
.type ntt_192_u32_33556993_27792935_incomplete_good, %function
.global ntt_192_u32_33556993_27792935_incomplete_good
ntt_192_u32_33556993_27792935_incomplete_good:
// Save GPRs
push {r4-r11,lr}
// Save MVE vector registers
vpush {d0-d15}
// Use r14 as marker for r0 + 1008
add r14, r0, #1008
.equ modulus, 33556993
movw r12, #:lower16:modulus
movt r12, #:upper16:modulus
ldr r11, roots_addr
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
// input[0]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 0)]
// input[64]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 64)]
// input[128]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -124)]
vadd.s32 Q3, Q0, Q1
vadd.s32 Q3, Q3, Q2
vstrw.u32 Q3, [r0,#(0)]
vsub.s32 Q3, Q0, Q2
// Release input[0] from Q0
vsub.s32 Q0, Q1, Q2
vqrdmulh.s32 Q4, Q0, r10
vmul.u32 Q5, Q0, r9
vqrdmlah.s32 Q4, Q5, r12
vadd.s32 Q1, Q3, Q4
vstrw.u32 Q1, [r0,#(256)]
// Release input[64] from Q1
vqrdmulh.s32 Q1, Q0, r8
vmul.u32 Q0, Q0, r7
vqrdmlah.s32 Q1, Q0, r12
vadd.s32 Q2, Q3, Q1
vstrw.u32 Q2, [r14,#(-496)]
// Release input[128] from Q2
// input[132]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -120)]
// input[4]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 4)]
// input[68]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 68)]
vadd.s32 Q3, Q0, Q1
vadd.s32 Q3, Q3, Q2
vstrw.u32 Q3, [r14,#(-480)]
vsub.s32 Q3, Q0, Q2
// Release input[132] from Q0
vsub.s32 Q0, Q1, Q2
vqrdmulh.s32 Q4, Q0, r10
vmul.u32 Q5, Q0, r9
vqrdmlah.s32 Q4, Q5, r12
vadd.s32 Q1, Q3, Q4
vstrw.u32 Q1, [r0,#(16)]
// Release input[4] from Q1
vqrdmulh.s32 Q1, Q0, r8
vmul.u32 Q0, Q0, r7
vqrdmlah.s32 Q1, Q0, r12
vadd.s32 Q2, Q3, Q1
vstrw.u32 Q2, [r0,#(272)]
// Release input[68] from Q2
// input[72]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 72)]
// input[136]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -116)]
// input[8]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 8)]
vadd.s32 Q3, Q0, Q1
vadd.s32 Q3, Q3, Q2
vstrw.u32 Q3, [r0,#(288)]
vsub.s32 Q3, Q0, Q2
// Release input[72] from Q0
vsub.s32 Q0, Q1, Q2
vqrdmulh.s32 Q4, Q0, r10
vmul.u32 Q5, Q0, r9
vqrdmlah.s32 Q4, Q5, r12
vadd.s32 Q1, Q3, Q4
vstrw.u32 Q1, [r14,#(-464)]
// Release input[136] from Q1
vqrdmulh.s32 Q1, Q0, r8
vmul.u32 Q0, Q0, r7
vqrdmlah.s32 Q1, Q0, r12
vadd.s32 Q2, Q3, Q1
vstrw.u32 Q2, [r0,#(32)]
// Release input[8] from Q2
// input[12]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 12)]
// input[76]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 76)]
// input[140]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -112)]
vadd.s32 Q3, Q0, Q1
vadd.s32 Q3, Q3, Q2
vstrw.u32 Q3, [r0,#(48)]
vsub.s32 Q3, Q0, Q2
// Release input[12] from Q0
vsub.s32 Q0, Q1, Q2
vqrdmulh.s32 Q4, Q0, r10
vmul.u32 Q5, Q0, r9
vqrdmlah.s32 Q4, Q5, r12
vadd.s32 Q1, Q3, Q4
vstrw.u32 Q1, [r0,#(304)]
// Release input[76] from Q1
vqrdmulh.s32 Q1, Q0, r8
vmul.u32 Q0, Q0, r7
vqrdmlah.s32 Q1, Q0, r12
vadd.s32 Q2, Q3, Q1
vstrw.u32 Q2, [r14,#(-448)]
// Release input[140] from Q2
// input[144]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -108)]
// input[16]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 16)]
// input[80]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 80)]
vadd.s32 Q3, Q0, Q1
vadd.s32 Q3, Q3, Q2
vstrw.u32 Q3, [r14,#(-432)]
vsub.s32 Q3, Q0, Q2
// Release input[144] from Q0
vsub.s32 Q0, Q1, Q2
vqrdmulh.s32 Q4, Q0, r10
vmul.u32 Q5, Q0, r9
vqrdmlah.s32 Q4, Q5, r12
vadd.s32 Q1, Q3, Q4
vstrw.u32 Q1, [r0,#(64)]
// Release input[16] from Q1
vqrdmulh.s32 Q1, Q0, r8
vmul.u32 Q0, Q0, r7
vqrdmlah.s32 Q1, Q0, r12
vadd.s32 Q2, Q3, Q1
vstrw.u32 Q2, [r0,#(320)]
// Release input[80] from Q2
// input[84]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 84)]
// input[148]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -104)]
// input[20]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 20)]
vadd.s32 Q3, Q0, Q1
vadd.s32 Q3, Q3, Q2
vstrw.u32 Q3, [r0,#(336)]
vsub.s32 Q3, Q0, Q2
// Release input[84] from Q0
vsub.s32 Q0, Q1, Q2
vqrdmulh.s32 Q4, Q0, r10
vmul.u32 Q5, Q0, r9
vqrdmlah.s32 Q4, Q5, r12
vadd.s32 Q1, Q3, Q4
vstrw.u32 Q1, [r14,#(-416)]
// Release input[148] from Q1
vqrdmulh.s32 Q1, Q0, r8
vmul.u32 Q0, Q0, r7
vqrdmlah.s32 Q1, Q0, r12
vadd.s32 Q2, Q3, Q1
vstrw.u32 Q2, [r0,#(80)]
// Release input[20] from Q2
// input[24]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 24)]
// input[88]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 88)]
// input[152]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -100)]
vadd.s32 Q3, Q0, Q1
vadd.s32 Q3, Q3, Q2
vstrw.u32 Q3, [r0,#(96)]
vsub.s32 Q3, Q0, Q2
// Release input[24] from Q0
vsub.s32 Q0, Q1, Q2
vqrdmulh.s32 Q4, Q0, r10
vmul.u32 Q5, Q0, r9
vqrdmlah.s32 Q4, Q5, r12
vadd.s32 Q1, Q3, Q4
vstrw.u32 Q1, [r0,#(352)]
// Release input[88] from Q1
vqrdmulh.s32 Q1, Q0, r8
vmul.u32 Q0, Q0, r7
vqrdmlah.s32 Q1, Q0, r12
vadd.s32 Q2, Q3, Q1
vstrw.u32 Q2, [r14,#(-400)]
// Release input[152] from Q2
// input[156]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -96)]
// input[28]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 28)]
// input[92]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 92)]
vadd.s32 Q3, Q0, Q1
vadd.s32 Q3, Q3, Q2
vstrw.u32 Q3, [r14,#(-384)]
vsub.s32 Q3, Q0, Q2
// Release input[156] from Q0
vsub.s32 Q0, Q1, Q2
vqrdmulh.s32 Q4, Q0, r10
vmul.u32 Q5, Q0, r9
vqrdmlah.s32 Q4, Q5, r12
vadd.s32 Q1, Q3, Q4
vstrw.u32 Q1, [r0,#(112)]
// Release input[28] from Q1
vqrdmulh.s32 Q1, Q0, r8
vmul.u32 Q0, Q0, r7
vqrdmlah.s32 Q1, Q0, r12
vadd.s32 Q2, Q3, Q1
vstrw.u32 Q2, [r0,#(368)]
// Release input[92] from Q2
// input[96]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 96)]
// input[160]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -92)]
// input[32]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 32)]
vadd.s32 Q3, Q0, Q1
vadd.s32 Q3, Q3, Q2
vstrw.u32 Q3, [r0,#(384)]
vsub.s32 Q3, Q0, Q2
// Release input[96] from Q0
vsub.s32 Q0, Q1, Q2
vqrdmulh.s32 Q4, Q0, r10
vmul.u32 Q5, Q0, r9
vqrdmlah.s32 Q4, Q5, r12
vadd.s32 Q1, Q3, Q4
vstrw.u32 Q1, [r14,#(-368)]
// Release input[160] from Q1
vqrdmulh.s32 Q1, Q0, r8
vmul.u32 Q0, Q0, r7
vqrdmlah.s32 Q1, Q0, r12
vadd.s32 Q2, Q3, Q1
vstrw.u32 Q2, [r0,#(128)]
// Release input[32] from Q2
// input[36]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 36)]
// input[100]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 100)]
// input[164]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -88)]
vadd.s32 Q3, Q0, Q1
vadd.s32 Q3, Q3, Q2
vstrw.u32 Q3, [r0,#(144)]
vsub.s32 Q3, Q0, Q2
// Release input[36] from Q0
vsub.s32 Q0, Q1, Q2
vqrdmulh.s32 Q4, Q0, r10
vmul.u32 Q5, Q0, r9
vqrdmlah.s32 Q4, Q5, r12
vadd.s32 Q1, Q3, Q4
vstrw.u32 Q1, [r0,#(400)]
// Release input[100] from Q1
vqrdmulh.s32 Q1, Q0, r8
vmul.u32 Q0, Q0, r7
vqrdmlah.s32 Q1, Q0, r12
vadd.s32 Q2, Q3, Q1
vstrw.u32 Q2, [r14,#(-352)]
// Release input[164] from Q2
// input[168]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -84)]
// input[40]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 40)]
// input[104]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 104)]
vadd.s32 Q3, Q0, Q1
vadd.s32 Q3, Q3, Q2
vstrw.u32 Q3, [r14,#(-336)]
vsub.s32 Q3, Q0, Q2
// Release input[168] from Q0
vsub.s32 Q0, Q1, Q2
vqrdmulh.s32 Q4, Q0, r10
vmul.u32 Q5, Q0, r9
vqrdmlah.s32 Q4, Q5, r12
vadd.s32 Q1, Q3, Q4
vstrw.u32 Q1, [r0,#(160)]
// Release input[40] from Q1
vqrdmulh.s32 Q1, Q0, r8
vmul.u32 Q0, Q0, r7
vqrdmlah.s32 Q1, Q0, r12
vadd.s32 Q2, Q3, Q1
vstrw.u32 Q2, [r0,#(416)]
// Release input[104] from Q2
// input[108]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 108)]
// input[172]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -80)]
// input[44]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 44)]
vadd.s32 Q3, Q0, Q1
vadd.s32 Q3, Q3, Q2
vstrw.u32 Q3, [r0,#(432)]
vsub.s32 Q3, Q0, Q2
// Release input[108] from Q0
vsub.s32 Q0, Q1, Q2
vqrdmulh.s32 Q4, Q0, r10
vmul.u32 Q5, Q0, r9
vqrdmlah.s32 Q4, Q5, r12
vadd.s32 Q1, Q3, Q4
vstrw.u32 Q1, [r14,#(-320)]
// Release input[172] from Q1
vqrdmulh.s32 Q1, Q0, r8
vmul.u32 Q0, Q0, r7
vqrdmlah.s32 Q1, Q0, r12
vadd.s32 Q2, Q3, Q1
vstrw.u32 Q2, [r0,#(176)]
// Release input[44] from Q2
// input[48]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 48)]
// input[112]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 112)]
// input[176]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -76)]
vadd.s32 Q3, Q0, Q1
vadd.s32 Q3, Q3, Q2
vstrw.u32 Q3, [r0,#(192)]
vsub.s32 Q3, Q0, Q2
// Release input[48] from Q0
vsub.s32 Q0, Q1, Q2
vqrdmulh.s32 Q4, Q0, r10
vmul.u32 Q5, Q0, r9
vqrdmlah.s32 Q4, Q5, r12
vadd.s32 Q1, Q3, Q4
vstrw.u32 Q1, [r0,#(448)]
// Release input[112] from Q1
vqrdmulh.s32 Q1, Q0, r8
vmul.u32 Q0, Q0, r7
vqrdmlah.s32 Q1, Q0, r12
vadd.s32 Q2, Q3, Q1
vstrw.u32 Q2, [r14,#(-304)]
// Release input[176] from Q2
// input[180]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -72)]
// input[52]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 52)]
// input[116]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 116)]
vadd.s32 Q3, Q0, Q1
vadd.s32 Q3, Q3, Q2
vstrw.u32 Q3, [r14,#(-288)]
vsub.s32 Q3, Q0, Q2
// Release input[180] from Q0
vsub.s32 Q0, Q1, Q2
vqrdmulh.s32 Q4, Q0, r10
vmul.u32 Q5, Q0, r9
vqrdmlah.s32 Q4, Q5, r12
vadd.s32 Q1, Q3, Q4
vstrw.u32 Q1, [r0,#(208)]
// Release input[52] from Q1
vqrdmulh.s32 Q1, Q0, r8
vmul.u32 Q0, Q0, r7
vqrdmlah.s32 Q1, Q0, r12
vadd.s32 Q2, Q3, Q1
vstrw.u32 Q2, [r0,#(464)]
// Release input[116] from Q2
// input[120]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 120)]
// input[184]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -68)]
// input[56]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 56)]
vadd.s32 Q3, Q0, Q1
vadd.s32 Q3, Q3, Q2
vstrw.u32 Q3, [r0,#(480)]
vsub.s32 Q3, Q0, Q2
// Release input[120] from Q0
vsub.s32 Q0, Q1, Q2
vqrdmulh.s32 Q4, Q0, r10
vmul.u32 Q5, Q0, r9
vqrdmlah.s32 Q4, Q5, r12
vadd.s32 Q1, Q3, Q4
vstrw.u32 Q1, [r14,#(-272)]
// Release input[184] from Q1
vqrdmulh.s32 Q1, Q0, r8
vmul.u32 Q0, Q0, r7
vqrdmlah.s32 Q1, Q0, r12
vadd.s32 Q2, Q3, Q1
vstrw.u32 Q2, [r0,#(224)]
// Release input[56] from Q2
// input[60]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 60)]
// input[124]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 124)]
// input[188]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -64)]
vadd.s32 Q3, Q0, Q1
vadd.s32 Q3, Q3, Q2
vstrw.u32 Q3, [r0,#(240)]
vsub.s32 Q3, Q0, Q2
// Release input[60] from Q0
vsub.s32 Q0, Q1, Q2
vqrdmulh.s32 Q4, Q0, r10
vmul.u32 Q5, Q0, r9
vqrdmlah.s32 Q4, Q5, r12
vadd.s32 Q1, Q3, Q4
vstrw.u32 Q1, [r0,#(496)]
// Release input[124] from Q1
vqrdmulh.s32 Q1, Q0, r8
vmul.u32 Q0, Q0, r7
vqrdmlah.s32 Q1, Q0, r12
vadd.s32 Q2, Q3, Q1
vstrw.u32 Q2, [r14,#(-256)]
// Release input[188] from Q2
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[48]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 48)]
vqrdmulh.s32 Q1, Q0, r10
// input[96]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 96)]
vmul.u32 Q0, Q0, r9
// input[144]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -108)]
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
// input[180]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -72)]
vqrdmulh.s32 Q6, Q3, r8
vsub.s32 Q0, Q2, Q5
vmul.u32 Q3, Q3, r7
vadd.s32 Q2, Q2, Q5
vstrw.u32 Q0, [r0,#(192)]
// Release input[48] from Q0
vqrdmlah.s32 Q6, Q3, r12
vstrw.u32 Q2, [r0,#(384)]
// Release input[96] from Q2
vsub.s32 Q3, Q1, Q6
vstrw.u32 Q3, [r14,#(-432)]
// Release input[144] from Q3
vadd.s32 Q1, Q1, Q6
// input[180]: Already loaded as Q4
vqrdmulh.s32 Q0, Q4, r10
// input[36]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 36)]
vmul.u32 Q4, Q4, r9
// input[84]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 84)]
vqrdmlah.s32 Q0, Q4, r12
vstrw.u32 Q1, [r0,#(0)]
// Release input[0] from Q1
vqrdmulh.s32 Q1, Q2, r10
vsub.s32 Q4, Q3, Q0
vmul.u32 Q2, Q2, r9
vadd.s32 Q3, Q3, Q0
vqrdmlah.s32 Q1, Q2, r12
// input[132]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -120)]
vqrdmulh.s32 Q5, Q4, r6
vsub.s32 Q2, Q0, Q1
vmul.u32 Q4, Q4, r5
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q4, r12
// input[120]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 120)]
vqrdmulh.s32 Q6, Q3, r8
vsub.s32 Q4, Q2, Q5
vmul.u32 Q3, Q3, r7
vadd.s32 Q2, Q2, Q5
vstrw.u32 Q4, [r14,#(-288)]
// Release input[180] from Q4
vqrdmlah.s32 Q6, Q3, r12
vstrw.u32 Q2, [r0,#(144)]
// Release input[36] from Q2
vsub.s32 Q3, Q0, Q6
vstrw.u32 Q3, [r0,#(336)]
// Release input[84] from Q3
vadd.s32 Q0, Q0, Q6
// input[120]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r10
// input[168]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -84)]
vmul.u32 Q1, Q1, r9
// input[24]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 24)]
vqrdmlah.s32 Q2, Q1, r12
vstrw.u32 Q0, [r14,#(-480)]
// Release input[132] from Q0
vqrdmulh.s32 Q0, Q3, r10
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r12
// input[72]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 72)]
vqrdmulh.s32 Q5, Q1, r6
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r5
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r12
// input[60]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 60)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r0,#(480)]
// Release input[120] from Q1
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r14,#(-336)]
// Release input[168] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r0,#(96)]
// Release input[24] from Q4
vadd.s32 Q2, Q2, Q6
// input[60]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r10
// input[108]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 108)]
vmul.u32 Q0, Q0, r9
// input[156]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -96)]
vqrdmlah.s32 Q1, Q0, r12
vstrw.u32 Q2, [r0,#(288)]
// Release input[72] from Q2
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
// input[112]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 112)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r0,#(240)]
// Release input[60] from Q0
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r0,#(432)]
// Release input[108] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r14,#(-384)]
// Release input[156] from Q4
vadd.s32 Q1, Q1, Q6
// input[112]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r10
// input[160]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -92)]
vmul.u32 Q2, Q2, r9
// input[16]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 16)]
vqrdmlah.s32 Q0, Q2, r12
vstrw.u32 Q1, [r0,#(48)]
// Release input[12] from Q1
vqrdmulh.s32 Q1, Q3, r10
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r12
// input[64]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 64)]
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
vstrw.u32 Q2, [r0,#(448)]
// Release input[112] from Q2
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r14,#(-368)]
// Release input[160] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r0,#(64)]
// Release input[16] from Q4
vadd.s32 Q0, Q0, Q6
// input[52]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r10
// input[100]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 100)]
vmul.u32 Q1, Q1, r9
// input[148]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -104)]
vqrdmlah.s32 Q2, Q1, r12
vstrw.u32 Q0, [r0,#(256)]
// Release input[64] from Q0
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
// input[184]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -68)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r0,#(208)]
// Release input[52] from Q1
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r0,#(400)]
// Release input[100] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r14,#(-416)]
// Release input[148] from Q4
vadd.s32 Q2, Q2, Q6
// input[184]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r10
// input[40]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 40)]
vmul.u32 Q0, Q0, r9
// input[88]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 88)]
vqrdmlah.s32 Q1, Q0, r12
vstrw.u32 Q2, [r0,#(16)]
// Release input[4] from Q2
vqrdmulh.s32 Q2, Q3, r10
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r12
// input[136]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -116)]
vqrdmulh.s32 Q5, Q0, r6
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r5
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r12
// input[124]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 124)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(-272)]
// Release input[184] from Q0
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r0,#(160)]
// Release input[40] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r0,#(352)]
// Release input[88] from Q4
vadd.s32 Q1, Q1, Q6
// input[124]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r10
// input[172]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -80)]
vmul.u32 Q2, Q2, r9
// input[28]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 28)]
vqrdmlah.s32 Q0, Q2, r12
vstrw.u32 Q1, [r14,#(-464)]
// Release input[136] from Q1
vqrdmulh.s32 Q1, Q3, r10
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r12
// input[76]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 76)]
vqrdmulh.s32 Q5, Q2, r6
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r5
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r12
// input[176]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -76)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r0,#(496)]
// Release input[124] from Q2
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r14,#(-320)]
// Release input[172] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r0,#(112)]
// Release input[28] from Q4
vadd.s32 Q0, Q0, Q6
// input[176]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r10
// input[32]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 32)]
vmul.u32 Q1, Q1, r9
// input[80]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 80)]
vqrdmlah.s32 Q2, Q1, r12
vstrw.u32 Q0, [r0,#(304)]
// Release input[76] from Q0
vqrdmulh.s32 Q0, Q3, r10
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r12
// input[128]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -124)]
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
vstrw.u32 Q1, [r14,#(-304)]
// Release input[176] from Q1
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r0,#(128)]
// Release input[32] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r0,#(320)]
// Release input[80] from Q4
vadd.s32 Q2, Q2, Q6
// input[116]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r10
// input[164]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -88)]
vmul.u32 Q0, Q0, r9
// input[20]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 20)]
vqrdmlah.s32 Q1, Q0, r12
vstrw.u32 Q2, [r14,#(-496)]
// Release input[128] from Q2
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
// input[56]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 56)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r0,#(464)]
// Release input[116] from Q0
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r14,#(-352)]
// Release input[164] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r0,#(80)]
// Release input[20] from Q4
vadd.s32 Q1, Q1, Q6
// input[56]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r10
// input[104]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 104)]
vmul.u32 Q2, Q2, r9
// input[152]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -100)]
vqrdmlah.s32 Q0, Q2, r12
vstrw.u32 Q1, [r0,#(272)]
// Release input[68] from Q1
vqrdmulh.s32 Q1, Q3, r10
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r12
// input[8]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 8)]
vqrdmulh.s32 Q5, Q2, r6
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r5
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r12
// input[188]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -64)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r0,#(224)]
// Release input[56] from Q2
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r0,#(416)]
// Release input[104] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(-400)]
// Release input[152] from Q4
vadd.s32 Q0, Q0, Q6
// input[188]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r10
// input[44]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 44)]
vmul.u32 Q1, Q1, r9
// input[92]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 92)]
vqrdmlah.s32 Q2, Q1, r12
vstrw.u32 Q0, [r0,#(32)]
// Release input[8] from Q0
vqrdmulh.s32 Q0, Q3, r10
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r12
// input[140]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -112)]
vqrdmulh.s32 Q5, Q1, r6
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r5
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r12
// input[12]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 12)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(-256)]
// Release input[188] from Q1
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r0,#(176)]
// Release input[44] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r0,#(368)]
// Release input[92] from Q4
vadd.s32 Q2, Q2, Q6
vstrw.u32 Q2, [r14,#(-448)]
// Release input[140] from Q2
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[12]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r10
// input[72]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 72)]
vmul.u32 Q0, Q0, r9
// input[132]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -120)]
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
// input[76]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 76)]
vqrdmulh.s32 Q6, Q3, r8
vsub.s32 Q0, Q2, Q5
vmul.u32 Q3, Q3, r7
vadd.s32 Q2, Q2, Q5
vstrw.u32 Q0, [r0,#(48)]
// Release input[12] from Q0
vqrdmlah.s32 Q6, Q3, r12
vstrw.u32 Q2, [r0,#(288)]
// Release input[72] from Q2
vsub.s32 Q3, Q1, Q6
vstrw.u32 Q3, [r14,#(-480)]
// Release input[132] from Q3
vadd.s32 Q1, Q1, Q6
// input[76]: Already loaded as Q4
vqrdmulh.s32 Q0, Q4, r10
// input[136]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -116)]
vmul.u32 Q4, Q4, r9
// input[4]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 4)]
vqrdmlah.s32 Q0, Q4, r12
vstrw.u32 Q1, [r0,#(0)]
// Release input[0] from Q1
vqrdmulh.s32 Q1, Q2, r10
vsub.s32 Q4, Q3, Q0
vmul.u32 Q2, Q2, r9
vadd.s32 Q3, Q3, Q0
vqrdmlah.s32 Q1, Q2, r12
// input[64]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 64)]
vqrdmulh.s32 Q5, Q4, r6
vsub.s32 Q2, Q0, Q1
vmul.u32 Q4, Q4, r5
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q4, r12
// input[140]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -112)]
vqrdmulh.s32 Q6, Q3, r8
vsub.s32 Q4, Q2, Q5
vmul.u32 Q3, Q3, r7
vadd.s32 Q2, Q2, Q5
vstrw.u32 Q4, [r0,#(304)]
// Release input[76] from Q4
vqrdmlah.s32 Q6, Q3, r12
vstrw.u32 Q2, [r14,#(-464)]
// Release input[136] from Q2
vsub.s32 Q3, Q0, Q6
vstrw.u32 Q3, [r0,#(16)]
// Release input[4] from Q3
vadd.s32 Q0, Q0, Q6
// input[140]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r10
// input[8]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 8)]
vmul.u32 Q1, Q1, r9
// input[68]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 68)]
vqrdmlah.s32 Q2, Q1, r12
vstrw.u32 Q0, [r0,#(256)]
// Release input[64] from Q0
vqrdmulh.s32 Q0, Q3, r10
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r12
// input[128]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -124)]
vqrdmulh.s32 Q5, Q1, r6
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r5
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r12
// input[156]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -96)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(-448)]
// Release input[140] from Q1
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r0,#(32)]
// Release input[8] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r0,#(272)]
// Release input[68] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[156]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r10
// input[24]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 24)]
vmul.u32 Q0, Q0, r9
// input[84]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 84)]
vqrdmlah.s32 Q1, Q0, r12
vstrw.u32 Q2, [r14,#(-496)]
// Release input[128] from Q2
vqrdmulh.s32 Q2, Q3, r10
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r12
// input[144]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -108)]
vqrdmulh.s32 Q5, Q0, r6
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r5
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r12
// input[28]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 28)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(-384)]
// Release input[156] from Q0
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r0,#(96)]
// Release input[24] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r0,#(336)]
// Release input[84] from Q4
vadd.s32 Q1, Q1, Q6
// input[28]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r10
// input[88]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 88)]
vmul.u32 Q2, Q2, r9
// input[148]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -104)]
vqrdmlah.s32 Q0, Q2, r12
vstrw.u32 Q1, [r14,#(-432)]
// Release input[144] from Q1
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
// input[92]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 92)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r0,#(112)]
// Release input[28] from Q2
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r0,#(352)]
// Release input[88] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(-416)]
// Release input[148] from Q4
vadd.s32 Q0, Q0, Q6
// input[92]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r10
// input[152]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -100)]
vmul.u32 Q1, Q1, r9
// input[20]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 20)]
vqrdmlah.s32 Q2, Q1, r12
vstrw.u32 Q0, [r0,#(64)]
// Release input[16] from Q0
vqrdmulh.s32 Q0, Q3, r10
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r12
// input[80]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 80)]
vqrdmulh.s32 Q5, Q1, r6
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r5
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r12
// input[108]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 108)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r0,#(368)]
// Release input[92] from Q1
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r14,#(-400)]
// Release input[152] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r0,#(80)]
// Release input[20] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[108]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r10
// input[168]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -84)]
vmul.u32 Q0, Q0, r9
// input[36]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 36)]
vqrdmlah.s32 Q1, Q0, r12
vstrw.u32 Q2, [r0,#(320)]
// Release input[80] from Q2
vqrdmulh.s32 Q2, Q3, r10
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r12
// input[96]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 96)]
vqrdmulh.s32 Q5, Q0, r6
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r5
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r12
// input[172]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -80)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r0,#(432)]
// Release input[108] from Q0
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r14,#(-336)]
// Release input[168] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r0,#(144)]
// Release input[36] from Q4
vadd.s32 Q1, Q1, Q6
// input[172]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r10
// input[40]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 40)]
vmul.u32 Q2, Q2, r9
// input[100]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 100)]
vqrdmlah.s32 Q0, Q2, r12
vstrw.u32 Q1, [r0,#(384)]
// Release input[96] from Q1
vqrdmulh.s32 Q1, Q3, r10
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r12
// input[160]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -92)]
vqrdmulh.s32 Q5, Q2, r6
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r5
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r12
// input[44]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 44)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(-320)]
// Release input[172] from Q2
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r0,#(160)]
// Release input[40] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r0,#(400)]
// Release input[100] from Q4
vadd.s32 Q0, Q0, Q6
// input[44]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r10
// input[104]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 104)]
vmul.u32 Q1, Q1, r9
// input[164]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -88)]
vqrdmlah.s32 Q2, Q1, r12
vstrw.u32 Q0, [r14,#(-368)]
// Release input[160] from Q0
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
// input[60]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 60)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r0,#(176)]
// Release input[44] from Q1
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r0,#(416)]
// Release input[104] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r14,#(-352)]
// Release input[164] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[60]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r10
// input[120]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 120)]
vmul.u32 Q0, Q0, r9
// input[180]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -72)]
vqrdmlah.s32 Q1, Q0, r12
vstrw.u32 Q2, [r0,#(128)]
// Release input[32] from Q2
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
// input[124]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 124)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r0,#(240)]
// Release input[60] from Q0
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r0,#(480)]
// Release input[120] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r14,#(-288)]
// Release input[180] from Q4
vadd.s32 Q1, Q1, Q6
// input[124]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r10
// input[184]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -68)]
vmul.u32 Q2, Q2, r9
// input[52]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 52)]
vqrdmlah.s32 Q0, Q2, r12
vstrw.u32 Q1, [r0,#(192)]
// Release input[48] from Q1
vqrdmulh.s32 Q1, Q3, r10
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r12
// input[112]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 112)]
vqrdmulh.s32 Q5, Q2, r6
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r5
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r12
// input[188]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -64)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r0,#(496)]
// Release input[124] from Q2
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r14,#(-272)]
// Release input[184] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r0,#(208)]
// Release input[52] from Q4
vadd.s32 Q0, Q0, Q6
// input[188]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r10
// input[56]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 56)]
vmul.u32 Q1, Q1, r9
// input[116]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 116)]
vqrdmlah.s32 Q2, Q1, r12
vstrw.u32 Q0, [r0,#(448)]
// Release input[112] from Q0
vqrdmulh.s32 Q0, Q3, r10
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r12
// input[176]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -76)]
vqrdmulh.s32 Q5, Q1, r6
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r5
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r12
vqrdmulh.s32 Q0, Q4, r8
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(-256)]
// Release input[188] from Q1
vqrdmlah.s32 Q0, Q4, r12
vstrw.u32 Q3, [r0,#(224)]
// Release input[56] from Q3
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r0,#(464)]
// Release input[116] from Q4
vadd.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-304)]
// Release input[176] from Q2
.equ modulus_inv, 3919317503
movw r10, #:lower16:modulus_inv
movt r10, #:upper16:modulus_inv
// Restore MVE vector registers
vpop {d0-d15}
// Restore GPRs
pop {r4-r11,lr}
bx lr

// Line count:        1451
// Instruction count: 1134