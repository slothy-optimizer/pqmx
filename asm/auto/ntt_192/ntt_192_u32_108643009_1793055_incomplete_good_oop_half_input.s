
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
.global ntt_192_u32_108643009_1793055_incomplete_good_oop_half_input_twiddles
ntt_192_u32_108643009_1793055_incomplete_good_oop_half_input_twiddles: // For base multiplication
.word  125819369 // zeta^  0 * 2^31 = 1793055^  0 * 2^31 = 1 * 2^31
.word 3200325335 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 1793055^  0 * 3479293249 * 2^31
.word    7219049 // zeta^160 * 2^31 = 1793055^160 * 2^31 = 40973034 * 2^31
.word 3635407191 // zeta^160 * f(q^(-1) mod 2^32) * 2^31 = 1793055^160 * 3479293249 * 2^31
.word   20524789 // zeta^ 80 * 2^31 = 1793055^ 80 * 2^31 = 13028154 * 2^31
.word     778955 // zeta^ 80 * f(q^(-1) mod 2^32) * 2^31 = 1793055^ 80 * 3479293249 * 2^31
.word   41573363 // zeta^ 48 * 2^31 = 1793055^ 48 * 2^31 = 21597933 * 2^31
.word  255463501 // zeta^ 48 * f(q^(-1) mod 2^32) * 2^31 = 1793055^ 48 * 3479293249 * 2^31
.word   90655441 // zeta^136 * 2^31 = 1793055^136 * 2^31 = 21310129 * 2^31
.word 2443944943 // zeta^136 * f(q^(-1) mod 2^32) * 2^31 = 1793055^136 * 3479293249 * 2^31
.word  147417303 // zeta^104 * 2^31 = 1793055^104 * 2^31 = 26332312 * 2^31
.word 3916510825 // zeta^104 * f(q^(-1) mod 2^32) * 2^31 = 1793055^104 * 3479293249 * 2^31
.word   11354681 // zeta^ 24 * 2^31 = 1793055^ 24 * 2^31 = 82308834 * 2^31
.word 3881929351 // zeta^ 24 * f(q^(-1) mod 2^32) * 2^31 = 1793055^ 24 * 3479293249 * 2^31
.word  183168985 // zeta^184 * 2^31 = 1793055^184 * 2^31 = 38250802 * 2^31
.word 3222230247 // zeta^184 * f(q^(-1) mod 2^32) * 2^31 = 1793055^184 * 3479293249 * 2^31
.word   10759601 // zeta^ 68 * 2^31 = 1793055^ 68 * 2^31 = 106639146 * 2^31
.word 4004030735 // zeta^ 68 * f(q^(-1) mod 2^32) * 2^31 = 1793055^ 68 * 3479293249 * 2^31
.word   48748081 // zeta^ 36 * 2^31 = 1793055^ 36 * 2^31 = 108432201 * 2^31
.word 3574358159 // zeta^ 36 * f(q^(-1) mod 2^32) * 2^31 = 1793055^ 36 * 3479293249 * 2^31
.word  118657223 // zeta^148 * 2^31 = 1793055^148 * 2^31 = 62017780 * 2^31
.word 2448614009 // zeta^148 * f(q^(-1) mod 2^32) * 2^31 = 1793055^148 * 3479293249 * 2^31
.word  135399931 // zeta^116 * 2^31 = 1793055^116 * 2^31 = 56179088 * 2^31
.word 3293739077 // zeta^116 * f(q^(-1) mod 2^32) * 2^31 = 1793055^116 * 3479293249 * 2^31
.word   22236245 // zeta^ 12 * 2^31 = 1793055^ 12 * 2^31 = 98874168 * 2^31
.word 1317309803 // zeta^ 12 * f(q^(-1) mod 2^32) * 2^31 = 1793055^ 12 * 3479293249 * 2^31
.word  173577835 // zeta^172 * 2^31 = 1793055^172 * 2^31 = 42747918 * 2^31
.word 3951239125 // zeta^172 * f(q^(-1) mod 2^32) * 2^31 = 1793055^172 * 3479293249 * 2^31
.word   97528185 // zeta^ 92 * 2^31 = 1793055^ 92 * 2^31 = 105229554 * 2^31
.word 1192661831 // zeta^ 92 * f(q^(-1) mod 2^32) * 2^31 = 1793055^ 92 * 3479293249 * 2^31
.word   73825049 // zeta^ 60 * 2^31 = 1793055^ 60 * 2^31 = 14289518 * 2^31
.word 4126063015 // zeta^ 60 * f(q^(-1) mod 2^32) * 2^31 = 1793055^ 60 * 3479293249 * 2^31
.word  210066969 // zeta^ 64 * 2^31 = 1793055^ 64 * 2^31 = 67669975 * 2^31
.word  659560103 // zeta^ 64 * f(q^(-1) mod 2^32) * 2^31 = 1793055^ 64 * 3479293249 * 2^31
.word    9957311 // zeta^ 32 * 2^31 = 1793055^ 32 * 2^31 = 67669976 * 2^31
.word 3859885441 // zeta^ 32 * f(q^(-1) mod 2^32) * 2^31 = 1793055^ 32 * 3479293249 * 2^31
.word  175712655 // zeta^144 * 2^31 = 1793055^144 * 2^31 = 87045076 * 2^31
.word 4039503793 // zeta^144 * f(q^(-1) mod 2^32) * 2^31 = 1793055^144 * 3479293249 * 2^31
.word   87594435 // zeta^112 * 2^31 = 1793055^112 * 2^31 = 100073230 * 2^31
.word 4040282749 // zeta^112 * f(q^(-1) mod 2^32) * 2^31 = 1793055^112 * 3479293249 * 2^31
.word   69868715 // zeta^  8 * 2^31 = 1793055^  8 * 2^31 = 82310697 * 2^31
.word  378456469 // zeta^  8 * f(q^(-1) mod 2^32) * 2^31 = 1793055^  8 * 3479293249 * 2^31
.word   51881147 // zeta^168 * 2^31 = 1793055^168 * 2^31 = 103620826 * 2^31
.word 2822401413 // zeta^168 * f(q^(-1) mod 2^32) * 2^31 = 1793055^168 * 3479293249 * 2^31
.word   34117033 // zeta^ 88 * 2^31 = 1793055^ 88 * 2^31 = 70392207 * 2^31
.word 1072737047 // zeta^ 88 * f(q^(-1) mod 2^32) * 2^31 = 1793055^ 88 * 3479293249 * 2^31
.word  154114723 // zeta^ 56 * 2^31 = 1793055^ 56 * 2^31 = 44058032 * 2^31
.word  659699101 // zeta^ 56 * f(q^(-1) mod 2^32) * 2^31 = 1793055^ 56 * 3479293249 * 2^31
.word  168537937 // zeta^132 * 2^31 = 1793055^132 * 2^31 = 210808 * 2^31
.word  720609135 // zeta^132 * f(q^(-1) mod 2^32) * 2^31 = 1793055^132 * 3479293249 * 2^31
.word   70654529 // zeta^100 * 2^31 = 1793055^100 * 2^31 = 106849954 * 2^31
.word  429672575 // zeta^100 * f(q^(-1) mod 2^32) * 2^31 = 1793055^100 * 3479293249 * 2^31
.word   81886087 // zeta^ 20 * 2^31 = 1793055^ 20 * 2^31 = 52463921 * 2^31
.word 1001228217 // zeta^ 20 * f(q^(-1) mod 2^32) * 2^31 = 1793055^ 20 * 3479293249 * 2^31
.word   91900301 // zeta^180 * 2^31 = 1793055^180 * 2^31 = 5838692 * 2^31
.word 3449842227 // zeta^180 * f(q^(-1) mod 2^32) * 2^31 = 1793055^180 * 3479293249 * 2^31
.word   43708183 // zeta^ 76 * 2^31 = 1793055^ 76 * 2^31 = 65895091 * 2^31
.word  343728169 // zeta^ 76 * f(q^(-1) mod 2^32) * 2^31 = 1793055^ 76 * 3479293249 * 2^31
.word  174587437 // zeta^ 44 * 2^31 = 1793055^ 44 * 2^31 = 56126250 * 2^31
.word 1661037971 // zeta^ 44 * f(q^(-1) mod 2^32) * 2^31 = 1793055^ 44 * 3479293249 * 2^31
.word  143460969 // zeta^156 * 2^31 = 1793055^156 * 2^31 = 94353491 * 2^31
.word  168904279 // zeta^156 * f(q^(-1) mod 2^32) * 2^31 = 1793055^156 * 3479293249 * 2^31
.word  132346145 // zeta^124 * 2^31 = 1793055^124 * 2^31 = 90940036 * 2^31
.word 1361566111 // zeta^124 * f(q^(-1) mod 2^32) * 2^31 = 1793055^124 * 3479293249 * 2^31
.word  207328707 // zeta^128 * 2^31 = 1793055^128 * 2^31 = 40973033 * 2^31
.word  435081853 // zeta^128 * f(q^(-1) mod 2^32) * 2^31 = 1793055^128 * 3479293249 * 2^31
.word   91466649 // zeta^ 96 * 2^31 = 1793055^ 96 * 2^31 = 108643008 * 2^31
.word 1094641959 // zeta^ 96 * f(q^(-1) mod 2^32) * 2^31 = 1793055^ 96 * 3479293249 * 2^31
.word  129691583 // zeta^ 16 * 2^31 = 1793055^ 16 * 2^31 = 8569779 * 2^31
.word  254684545 // zeta^ 16 * f(q^(-1) mod 2^32) * 2^31 = 1793055^ 16 * 3479293249 * 2^31
.word  196761229 // zeta^176 * 2^31 = 1793055^176 * 2^31 = 95614855 * 2^31
.word 4294188339 // zeta^176 * f(q^(-1) mod 2^32) * 2^31 = 1793055^176 * 3479293249 * 2^31
.word  165404871 // zeta^ 72 * 2^31 = 1793055^ 72 * 2^31 = 5022183 * 2^31
.word 1472565881 // zeta^ 72 * f(q^(-1) mod 2^32) * 2^31 = 1793055^ 72 * 3479293249 * 2^31
.word  126630577 // zeta^ 40 * 2^31 = 1793055^ 40 * 2^31 = 87332880 * 2^31
.word 1851022351 // zeta^ 40 * f(q^(-1) mod 2^32) * 2^31 = 1793055^ 40 * 3479293249 * 2^31
.word   63171295 // zeta^152 * 2^31 = 1793055^152 * 2^31 = 64584977 * 2^31
.word 3635268193 // zeta^152 * f(q^(-1) mod 2^32) * 2^31 = 1793055^152 * 3479293249 * 2^31
.word  205931337 // zeta^120 * 2^31 = 1793055^120 * 2^31 = 26334175 * 2^31
.word  413037943 // zeta^120 * f(q^(-1) mod 2^32) * 2^31 = 1793055^120 * 3479293249 * 2^31
.word  146631489 // zeta^  4 * 2^31 = 1793055^  4 * 2^31 = 1793055 * 2^31
.word 3865294719 // zeta^  4 * f(q^(-1) mod 2^32) * 2^31 = 1793055^  4 * 3479293249 * 2^31
.word  206526417 // zeta^164 * 2^31 = 1793055^164 * 2^31 = 2003863 * 2^31
.word  290936559 // zeta^164 * f(q^(-1) mod 2^32) * 2^31 = 1793055^164 * 3479293249 * 2^31
.word  125385717 // zeta^ 84 * 2^31 = 1793055^ 84 * 2^31 = 102804317 * 2^31
.word  845125067 // zeta^ 84 * f(q^(-1) mod 2^32) * 2^31 = 1793055^ 84 * 3479293249 * 2^31
.word   98628795 // zeta^ 52 * 2^31 = 1793055^ 52 * 2^31 = 46625229 * 2^31
.word 1846353285 // zeta^ 52 * f(q^(-1) mod 2^32) * 2^31 = 1793055^ 52 * 3479293249 * 2^31
.word   42698581 // zeta^140 * 2^31 = 1793055^140 * 2^31 = 52516759 * 2^31
.word 2633929323 // zeta^140 * f(q^(-1) mod 2^32) * 2^31 = 1793055^140 * 3479293249 * 2^31
.word  195049773 // zeta^108 * 2^31 = 1793055^108 * 2^31 = 9768841 * 2^31
.word 2977657491 // zeta^108 * f(q^(-1) mod 2^32) * 2^31 = 1793055^108 * 3479293249 * 2^31
.word   84939873 // zeta^ 28 * 2^31 = 1793055^ 28 * 2^31 = 17702973 * 2^31
.word 2933401183 // zeta^ 28 * f(q^(-1) mod 2^32) * 2^31 = 1793055^ 28 * 3479293249 * 2^31
.word  119757833 // zeta^188 * 2^31 = 1793055^188 * 2^31 = 3413455 * 2^31
.word 3102305463 // zeta^188 * f(q^(-1) mod 2^32) * 2^31 = 1793055^188 * 3479293249 * 2^31
// End of twiddles for base multiplication

.global ntt_192_u32_108643009_1793055_incomplete_good_oop_half_input_scale
ntt_192_u32_108643009_1793055_incomplete_good_oop_half_input_scale: // Constants for scaling by 1/N
.word 125819369 // 1/48
.word 3200325335 // 1/48 twisted
.data
roots:
.word   67669975 /// zeta^ 64 * 2^31 = 1793055^ 64 * 2^31 = 67669975 * 2^31
.word 1337593335 /// zeta^ 64 * f(q^(-1) mod 2^32) * 2^31 = 1793055^ 64 * 3479293249 * 2^31
.word   40973033 /// zeta^128 * 2^31 = 1793055^128 * 2^31 = 40973033 * 2^31
.word  809890293 /// zeta^128 * f(q^(-1) mod 2^32) * 2^31 = 1793055^128 * 3479293249 * 2^31
.word          1 // zeta^  0 * 2^31 = 1793055^  0 * 2^31 = 1 * 2^31
.word         20 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 1793055^  0 * 3479293249 * 2^31
.word          1 // zeta^  0 * 2^31 = 1793055^  0 * 2^31 = 1 * 2^31
.word         20 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 1793055^  0 * 3479293249 * 2^31
.word   87045076 // zeta^144 * 2^31 = 1793055^144 * 2^31 = 87045076 * 2^31
.word 1720569773 // zeta^144 * f(q^(-1) mod 2^32) * 2^31 = 1793055^144 * 3479293249 * 2^31
.word          1 // zeta^  0 * 2^31 = 1793055^  0 * 2^31 = 1 * 2^31
.word         20 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 1793055^  0 * 3479293249 * 2^31
.word          1 // zeta^  0 * 2^31 = 1793055^  0 * 2^31 = 1 * 2^31
.word         20 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 1793055^  0 * 3479293249 * 2^31
.word   87045076 // zeta^144 * 2^31 = 1793055^144 * 2^31 = 87045076 * 2^31
.word 1720569773 // zeta^144 * f(q^(-1) mod 2^32) * 2^31 = 1793055^144 * 3479293249 * 2^31
.word   87045076 // zeta^144 * 2^31 = 1793055^144 * 2^31 = 87045076 * 2^31
.word 1720569773 // zeta^144 * f(q^(-1) mod 2^32) * 2^31 = 1793055^144 * 3479293249 * 2^31
.word    5022183 // zeta^ 72 * 2^31 = 1793055^ 72 * 2^31 = 5022183 * 2^31
.word   99270592 // zeta^ 72 * f(q^(-1) mod 2^32) * 2^31 = 1793055^ 72 * 3479293249 * 2^31
.word   82308834 // zeta^ 24 * 2^31 = 1793055^ 24 * 2^31 = 82308834 * 2^31
.word 1626951211 // zeta^ 24 * f(q^(-1) mod 2^32) * 2^31 = 1793055^ 24 * 3479293249 * 2^31
.word    5022183 // zeta^ 72 * 2^31 = 1793055^ 72 * 2^31 = 5022183 * 2^31
.word   99270592 // zeta^ 72 * f(q^(-1) mod 2^32) * 2^31 = 1793055^ 72 * 3479293249 * 2^31
.word     210808 // zeta^132 * 2^31 = 1793055^132 * 2^31 = 210808 * 2^31
.word    4166920 // zeta^132 * f(q^(-1) mod 2^32) * 2^31 = 1793055^132 * 3479293249 * 2^31
.word  102804317 // zeta^ 84 * 2^31 = 1793055^ 84 * 2^31 = 102804317 * 2^31
.word 2032073593 // zeta^ 84 * f(q^(-1) mod 2^32) * 2^31 = 1793055^ 84 * 3479293249 * 2^31
.word   82308834 // zeta^ 24 * 2^31 = 1793055^ 24 * 2^31 = 82308834 * 2^31
.word 1626951211 // zeta^ 24 * f(q^(-1) mod 2^32) * 2^31 = 1793055^ 24 * 3479293249 * 2^31
.word   98874168 // zeta^ 12 * 2^31 = 1793055^ 12 * 2^31 = 98874168 * 2^31
.word 1954388607 // zeta^ 12 * f(q^(-1) mod 2^32) * 2^31 = 1793055^ 12 * 3479293249 * 2^31
.word   94353491 // zeta^156 * 2^31 = 1793055^156 * 2^31 = 94353491 * 2^31
.word 1865030994 // zeta^156 * f(q^(-1) mod 2^32) * 2^31 = 1793055^156 * 3479293249 * 2^31
.text
.align 4
roots_addr: .word roots
.syntax unified
.type ntt_192_u32_108643009_1793055_incomplete_good_oop_half_input, %function
.global ntt_192_u32_108643009_1793055_incomplete_good_oop_half_input
ntt_192_u32_108643009_1793055_incomplete_good_oop_half_input:
// Save GPRs
push {r4-r11,lr}
// Save MVE vector registers
vpush {d8-d15}
// Use r14 as marker for r0 + 256
add r14, r0, #256
// Use r12 as marker for r0 + 512
add r12, r14, #256
// Use r11 as marker for r1 + 1008
add r11, r1, #1008
.equ modulus, -108643009
movw r10, #:lower16:modulus
movt r10, #:upper16:modulus
ldr r9, roots_addr
ldrd r8, r7, [r9], #+8
ldrd r6, r5, [r9], #+8
// input[64]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 64)]
// input[0]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 0)]
vmul.u32 Q2, Q0, r8
vadd.s32 Q4, Q1, Q0
// input[4]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 4)]
vqrdmulh.s32 Q3, Q0, r7
// input[68]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 68)]
vsub.s32 Q5, Q1, Q0
vmla.s32 Q2, Q3, r10
vstrw.u32 Q4, [r1,#(0)]
vadd.s32 Q3, Q1, Q2
vstrw.u32 Q3, [r1,#(256)]
vsub.s32 Q5, Q5, Q2
vstrw.u32 Q5, [r11,#(-496)]
// Release input[0] from Q1
// Release input[64] from Q0
// input[4]: Already loaded as Q6
// input[68]: Already loaded as Q7
vsub.s32 Q0, Q6, Q7
vmul.u32 Q1, Q0, r8
// input[72]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 72)]
vadd.s32 Q2, Q6, Q7
vqrdmulh.s32 Q0, Q0, r7
// input[8]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 8)]
vmla.s32 Q1, Q0, r10
vneg.s32 Q0, Q6
// Release input[4] from Q6
vstrw.u32 Q2, [r11,#(-480)]
vsub.s32 Q5, Q1, Q7
// Release input[68] from Q7
vstrw.u32 Q5, [r1,#(16)]
vsub.s32 Q0, Q0, Q1
vstrw.u32 Q0, [r1,#(272)]
// input[8]: Already loaded as Q4
// input[72]: Already loaded as Q3
vmul.u32 Q0, Q4, r8
vadd.s32 Q2, Q3, Q4
// input[12]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 12)]
vqrdmulh.s32 Q1, Q4, r7
// input[76]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 76)]
vsub.s32 Q5, Q3, Q4
vmla.s32 Q0, Q1, r10
vstrw.u32 Q2, [r1,#(288)]
vadd.s32 Q1, Q3, Q0
vstrw.u32 Q1, [r1,#(32)]
vsub.s32 Q5, Q5, Q0
vstrw.u32 Q5, [r11,#(-464)]
// Release input[72] from Q3
// Release input[8] from Q4
// input[76]: Already loaded as Q7
// input[12]: Already loaded as Q6
vmul.u32 Q0, Q7, r8
vadd.s32 Q2, Q6, Q7
// input[16]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 16)]
vqrdmulh.s32 Q1, Q7, r7
// input[80]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 80)]
vsub.s32 Q3, Q6, Q7
vmla.s32 Q0, Q1, r10
vstrw.u32 Q2, [r1,#(48)]
vadd.s32 Q1, Q6, Q0
vstrw.u32 Q1, [r1,#(304)]
vsub.s32 Q3, Q3, Q0
vstrw.u32 Q3, [r11,#(-448)]
// Release input[12] from Q6
// Release input[76] from Q7
// input[16]: Already loaded as Q4
// input[80]: Already loaded as Q5
vsub.s32 Q0, Q4, Q5
vmul.u32 Q1, Q0, r8
// input[84]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 84)]
vadd.s32 Q2, Q4, Q5
vqrdmulh.s32 Q0, Q0, r7
// input[20]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 20)]
vmla.s32 Q1, Q0, r10
vneg.s32 Q0, Q4
// Release input[16] from Q4
vstrw.u32 Q2, [r11,#(-432)]
vsub.s32 Q4, Q1, Q5
// Release input[80] from Q5
vstrw.u32 Q4, [r1,#(64)]
vsub.s32 Q0, Q0, Q1
vstrw.u32 Q0, [r1,#(320)]
// input[20]: Already loaded as Q6
// input[84]: Already loaded as Q3
vmul.u32 Q0, Q6, r8
vadd.s32 Q2, Q3, Q6
// input[24]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 24)]
vqrdmulh.s32 Q1, Q6, r7
// input[88]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 88)]
vsub.s32 Q4, Q3, Q6
vmla.s32 Q0, Q1, r10
vstrw.u32 Q2, [r1,#(336)]
vadd.s32 Q1, Q3, Q0
vstrw.u32 Q1, [r1,#(80)]
vsub.s32 Q4, Q4, Q0
vstrw.u32 Q4, [r11,#(-416)]
// Release input[84] from Q3
// Release input[20] from Q6
// input[88]: Already loaded as Q7
// input[24]: Already loaded as Q5
vmul.u32 Q0, Q7, r8
vadd.s32 Q2, Q5, Q7
// input[28]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 28)]
vqrdmulh.s32 Q1, Q7, r7
// input[92]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 92)]
vsub.s32 Q3, Q5, Q7
vmla.s32 Q0, Q1, r10
vstrw.u32 Q2, [r1,#(96)]
vadd.s32 Q1, Q5, Q0
vstrw.u32 Q1, [r1,#(352)]
vsub.s32 Q3, Q3, Q0
vstrw.u32 Q3, [r11,#(-400)]
// Release input[24] from Q5
// Release input[88] from Q7
// input[28]: Already loaded as Q4
// input[92]: Already loaded as Q6
vsub.s32 Q0, Q4, Q6
vmul.u32 Q1, Q0, r8
vadd.s32 Q2, Q4, Q6
vqrdmulh.s32 Q0, Q0, r7
// input[32]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 32)]
vmla.s32 Q1, Q0, r10
vneg.s32 Q0, Q4
// Release input[28] from Q4
vstrw.u32 Q2, [r11,#(-384)]
vsub.s32 Q4, Q1, Q6
// Release input[92] from Q6
vstrw.u32 Q4, [r1,#(112)]
vsub.s32 Q0, Q0, Q1
vstrw.u32 Q0, [r1,#(368)]
// input[32]: Already loaded as Q3
vmul.u32 Q0, Q3, r8
vneg.s32 Q1, Q3
// input[36]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 36)]
vqrdmulh.s32 Q2, Q3, r7
vstrw.u32 Q3, [r1,#(384)]
vmla.s32 Q0, Q2, r10
vstrw.u32 Q0, [r1,#(128)]
vsub.s32 Q1, Q1, Q0
vstrw.u32 Q1, [r11,#(-368)]
// Release input[32] from Q3
// input[36]: Already loaded as Q4
vstrw.u32 Q4, [r1,#(144)]
vstrw.u32 Q4, [r1,#(400)]
vstrw.u32 Q4, [r11,#(-352)]
// Release input[36] from Q4
// input[40]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 40)]
vmul.u32 Q1, Q0, r8
vneg.s32 Q2, Q0
// input[44]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 44)]
vqrdmulh.s32 Q3, Q0, r7
vstrw.u32 Q0, [r11,#(-336)]
vmla.s32 Q1, Q3, r10
vstrw.u32 Q1, [r1,#(160)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q2, [r1,#(416)]
// Release input[40] from Q0
// input[44]: Already loaded as Q4
vmul.u32 Q0, Q4, r8
vneg.s32 Q1, Q4
// input[48]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 48)]
vqrdmulh.s32 Q2, Q4, r7
vstrw.u32 Q4, [r1,#(432)]
vmla.s32 Q0, Q2, r10
vstrw.u32 Q0, [r1,#(176)]
vsub.s32 Q1, Q1, Q0
vstrw.u32 Q1, [r11,#(-320)]
// Release input[44] from Q4
// input[48]: Already loaded as Q3
vstrw.u32 Q3, [r1,#(192)]
vstrw.u32 Q3, [r1,#(448)]
vstrw.u32 Q3, [r11,#(-304)]
// Release input[48] from Q3
// input[52]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 52)]
vmul.u32 Q1, Q0, r8
vneg.s32 Q2, Q0
// input[56]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 56)]
vqrdmulh.s32 Q3, Q0, r7
vstrw.u32 Q0, [r11,#(-288)]
vmla.s32 Q1, Q3, r10
vstrw.u32 Q1, [r1,#(208)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q2, [r1,#(464)]
// Release input[52] from Q0
// input[56]: Already loaded as Q4
vmul.u32 Q0, Q4, r8
vneg.s32 Q1, Q4
// input[60]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 60)]
vqrdmulh.s32 Q2, Q4, r7
vstrw.u32 Q4, [r1,#(480)]
vmla.s32 Q0, Q2, r10
vstrw.u32 Q0, [r1,#(224)]
vsub.s32 Q1, Q1, Q0
vstrw.u32 Q1, [r11,#(-272)]
// Release input[56] from Q4
// input[60]: Already loaded as Q3
vstrw.u32 Q3, [r1,#(240)]
vstrw.u32 Q3, [r1,#(496)]
vstrw.u32 Q3, [r11,#(-256)]
// Release input[60] from Q3
//////////// END OF RADIX 3 //////////////////////////
ldrd r8, r7, [r9], #+8
ldrd r6, r5, [r9], #+8
ldrd r4, r3, [r9], #+8
// output[144]: Load as Q0
vldrw.u32 Q0, [r11, #(4 * -108)]
// output[48]: Load as Q1
vldrw.u32 Q1, [r1, #(4 * 48)]
vsub.s32 Q2, Q0, Q1
vmul.u32 Q3, Q2, r4
// output[96]: Load as Q4
vldrw.u32 Q4, [r1, #(4 * 96)]
vadd.s32 Q0, Q0, Q1
// Release output[48] from Q1
// output[0]: Load as Q1
vldrw.u32 Q1, [r1, #(4 * 0)]
vsub.s32 Q5, Q1, Q4
// output[180]: Load as Q6
vldrw.u32 Q6, [r11, #(4 * -72)]
vadd.s32 Q1, Q1, Q4
// Release output[96] from Q4
vqrdmulh.s32 Q2, Q2, r3
vsub.s32 Q4, Q1, Q0
// output[84]: Load as Q7
vldrw.u32 Q7, [r1, #(4 * 84)]
vmla.s32 Q3, Q2, r10
vstrw.u32 Q4, [r11,#(-432)]
vadd.s32 Q1, Q1, Q0
// Release output[144] from Q0
vstrw.u32 Q1, [r1,#(0)]
// Release output[0] from Q1
vsub.s32 Q2, Q5, Q3
vstrw.u32 Q2, [r1,#(192)]
vadd.s32 Q5, Q5, Q3
vstrw.u32 Q5, [r1,#(384)]
// output[84]: Already loaded as Q7
// output[180]: Already loaded as Q6
vsub.s32 Q0, Q7, Q6
vmul.u32 Q1, Q0, r4
// output[36]: Load as Q2
vldrw.u32 Q2, [r1, #(4 * 36)]
vadd.s32 Q7, Q7, Q6
// Release output[180] from Q6
// output[132]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * -120)]
vsub.s32 Q4, Q3, Q2
// output[120]: Load as Q5
vldrw.u32 Q5, [r1, #(4 * 120)]
vadd.s32 Q3, Q3, Q2
// Release output[36] from Q2
vqrdmulh.s32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q7
// output[24]: Load as Q6
vldrw.u32 Q6, [r1, #(4 * 24)]
vmla.s32 Q1, Q0, r10
vstrw.u32 Q2, [r1,#(336)]
vadd.s32 Q3, Q3, Q7
// Release output[84] from Q7
vstrw.u32 Q3, [r11,#(-480)]
// Release output[132] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r11,#(-288)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r1,#(144)]
// output[24]: Already loaded as Q6
// output[120]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vmul.u32 Q1, Q0, r4
// output[168]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * -84)]
vadd.s32 Q6, Q6, Q5
// Release output[120] from Q5
// output[72]: Load as Q3
vldrw.u32 Q3, [r1, #(4 * 72)]
vsub.s32 Q4, Q3, Q2
// output[60]: Load as Q5
vldrw.u32 Q5, [r1, #(4 * 60)]
vadd.s32 Q3, Q3, Q2
// Release output[168] from Q2
vqrdmulh.s32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q6
// output[156]: Load as Q7
vldrw.u32 Q7, [r11, #(4 * -96)]
vmla.s32 Q1, Q0, r10
vstrw.u32 Q2, [r1,#(96)]
vadd.s32 Q3, Q3, Q6
// Release output[24] from Q6
vstrw.u32 Q3, [r1,#(288)]
// Release output[72] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r1,#(480)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r11,#(-336)]
// output[156]: Already loaded as Q7
// output[60]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vmul.u32 Q1, Q0, r4
// output[108]: Load as Q2
vldrw.u32 Q2, [r1, #(4 * 108)]
vadd.s32 Q7, Q7, Q5
// Release output[60] from Q5
// output[12]: Load as Q3
vldrw.u32 Q3, [r1, #(4 * 12)]
vsub.s32 Q4, Q3, Q2
// output[112]: Load as Q5
vldrw.u32 Q5, [r1, #(4 * 112)]
vadd.s32 Q3, Q3, Q2
// Release output[108] from Q2
vqrdmulh.s32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q7
// output[16]: Load as Q6
vldrw.u32 Q6, [r1, #(4 * 16)]
vmla.s32 Q1, Q0, r10
vstrw.u32 Q2, [r11,#(-384)]
vadd.s32 Q3, Q3, Q7
// Release output[156] from Q7
vstrw.u32 Q3, [r1,#(48)]
// Release output[12] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r1,#(240)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r1,#(432)]
// output[16]: Already loaded as Q6
// output[112]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vmul.u32 Q1, Q0, r4
// output[160]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * -92)]
vadd.s32 Q6, Q6, Q5
// Release output[112] from Q5
// output[64]: Load as Q3
vldrw.u32 Q3, [r1, #(4 * 64)]
vsub.s32 Q4, Q3, Q2
// output[52]: Load as Q5
vldrw.u32 Q5, [r1, #(4 * 52)]
vadd.s32 Q3, Q3, Q2
// Release output[160] from Q2
vqrdmulh.s32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q6
// output[148]: Load as Q7
vldrw.u32 Q7, [r11, #(4 * -104)]
vmla.s32 Q1, Q0, r10
vstrw.u32 Q2, [r1,#(64)]
vadd.s32 Q3, Q3, Q6
// Release output[16] from Q6
vstrw.u32 Q3, [r1,#(256)]
// Release output[64] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r1,#(448)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r11,#(-368)]
// output[148]: Already loaded as Q7
// output[52]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vmul.u32 Q1, Q0, r4
// output[100]: Load as Q2
vldrw.u32 Q2, [r1, #(4 * 100)]
vadd.s32 Q7, Q7, Q5
// Release output[52] from Q5
// output[4]: Load as Q3
vldrw.u32 Q3, [r1, #(4 * 4)]
vsub.s32 Q4, Q3, Q2
// output[184]: Load as Q5
vldrw.u32 Q5, [r11, #(4 * -68)]
vadd.s32 Q3, Q3, Q2
// Release output[100] from Q2
vqrdmulh.s32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q7
// output[88]: Load as Q6
vldrw.u32 Q6, [r1, #(4 * 88)]
vmla.s32 Q1, Q0, r10
vstrw.u32 Q2, [r11,#(-416)]
vadd.s32 Q3, Q3, Q7
// Release output[148] from Q7
vstrw.u32 Q3, [r1,#(16)]
// Release output[4] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r1,#(208)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r1,#(400)]
// output[88]: Already loaded as Q6
// output[184]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vmul.u32 Q1, Q0, r4
// output[40]: Load as Q2
vldrw.u32 Q2, [r1, #(4 * 40)]
vadd.s32 Q6, Q6, Q5
// Release output[184] from Q5
// output[136]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * -116)]
vsub.s32 Q4, Q3, Q2
// output[124]: Load as Q5
vldrw.u32 Q5, [r1, #(4 * 124)]
vadd.s32 Q3, Q3, Q2
// Release output[40] from Q2
vqrdmulh.s32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q6
// output[28]: Load as Q7
vldrw.u32 Q7, [r1, #(4 * 28)]
vmla.s32 Q1, Q0, r10
vstrw.u32 Q2, [r1,#(352)]
vadd.s32 Q3, Q3, Q6
// Release output[88] from Q6
vstrw.u32 Q3, [r11,#(-464)]
// Release output[136] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r11,#(-272)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r1,#(160)]
// output[28]: Already loaded as Q7
// output[124]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vmul.u32 Q1, Q0, r4
// output[172]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * -80)]
vadd.s32 Q7, Q7, Q5
// Release output[124] from Q5
// output[76]: Load as Q3
vldrw.u32 Q3, [r1, #(4 * 76)]
vsub.s32 Q4, Q3, Q2
// output[176]: Load as Q5
vldrw.u32 Q5, [r11, #(4 * -76)]
vadd.s32 Q3, Q3, Q2
// Release output[172] from Q2
vqrdmulh.s32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q7
// output[80]: Load as Q6
vldrw.u32 Q6, [r1, #(4 * 80)]
vmla.s32 Q1, Q0, r10
vstrw.u32 Q2, [r1,#(112)]
vadd.s32 Q3, Q3, Q7
// Release output[28] from Q7
vstrw.u32 Q3, [r1,#(304)]
// Release output[76] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r1,#(496)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r11,#(-320)]
// output[80]: Already loaded as Q6
// output[176]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vmul.u32 Q1, Q0, r4
// output[32]: Load as Q2
vldrw.u32 Q2, [r1, #(4 * 32)]
vadd.s32 Q6, Q6, Q5
// Release output[176] from Q5
// output[128]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * -124)]
vsub.s32 Q4, Q3, Q2
// output[116]: Load as Q5
vldrw.u32 Q5, [r1, #(4 * 116)]
vadd.s32 Q3, Q3, Q2
// Release output[32] from Q2
vqrdmulh.s32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q6
// output[20]: Load as Q7
vldrw.u32 Q7, [r1, #(4 * 20)]
vmla.s32 Q1, Q0, r10
vstrw.u32 Q2, [r1,#(320)]
vadd.s32 Q3, Q3, Q6
// Release output[80] from Q6
vstrw.u32 Q3, [r11,#(-496)]
// Release output[128] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r11,#(-304)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r1,#(128)]
// output[20]: Already loaded as Q7
// output[116]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vmul.u32 Q1, Q0, r4
// output[164]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * -88)]
vadd.s32 Q7, Q7, Q5
// Release output[116] from Q5
// output[68]: Load as Q3
vldrw.u32 Q3, [r1, #(4 * 68)]
vsub.s32 Q4, Q3, Q2
// output[56]: Load as Q5
vldrw.u32 Q5, [r1, #(4 * 56)]
vadd.s32 Q3, Q3, Q2
// Release output[164] from Q2
vqrdmulh.s32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q7
// output[152]: Load as Q6
vldrw.u32 Q6, [r11, #(4 * -100)]
vmla.s32 Q1, Q0, r10
vstrw.u32 Q2, [r1,#(80)]
vadd.s32 Q3, Q3, Q7
// Release output[20] from Q7
vstrw.u32 Q3, [r1,#(272)]
// Release output[68] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r1,#(464)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r11,#(-352)]
// output[152]: Already loaded as Q6
// output[56]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vmul.u32 Q1, Q0, r4
// output[104]: Load as Q2
vldrw.u32 Q2, [r1, #(4 * 104)]
vadd.s32 Q6, Q6, Q5
// Release output[56] from Q5
// output[8]: Load as Q3
vldrw.u32 Q3, [r1, #(4 * 8)]
vsub.s32 Q4, Q3, Q2
// output[188]: Load as Q5
vldrw.u32 Q5, [r11, #(4 * -64)]
vadd.s32 Q3, Q3, Q2
// Release output[104] from Q2
vqrdmulh.s32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q6
// output[92]: Load as Q7
vldrw.u32 Q7, [r1, #(4 * 92)]
vmla.s32 Q1, Q0, r10
vstrw.u32 Q2, [r11,#(-400)]
vadd.s32 Q3, Q3, Q6
// Release output[152] from Q6
vstrw.u32 Q3, [r1,#(32)]
// Release output[8] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r1,#(224)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r1,#(416)]
// output[92]: Already loaded as Q7
// output[188]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vmul.u32 Q1, Q0, r4
// output[44]: Load as Q2
vldrw.u32 Q2, [r1, #(4 * 44)]
vadd.s32 Q7, Q7, Q5
// Release output[188] from Q5
// output[140]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * -112)]
vsub.s32 Q4, Q3, Q2
// output[12]: Load as Q5
vldrw.u32 Q5, [r1, #(4 * 12)]
vadd.s32 Q3, Q3, Q2
// Release output[44] from Q2
vqrdmulh.s32 Q0, Q0, r3
vsub.s32 Q2, Q3, Q7
// output[132]: Load as Q6
vldrw.u32 Q6, [r11, #(4 * -120)]
vmla.s32 Q1, Q0, r10
vstrw.u32 Q2, [r1,#(368)]
vadd.s32 Q3, Q3, Q7
// Release output[92] from Q7
vstrw.u32 Q3, [r11,#(-448)]
// Release output[140] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r11,#(-256)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r1,#(176)]
ldrd r8, r7, [r9], #+8
ldrd r6, r5, [r9], #+8
ldrd r4, r3, [r9], #+8
// output[12]: Already loaded as Q5
vmul.u32 Q0, Q5, r8
// output[72]: Load as Q1
vldrw.u32 Q1, [r1, #(4 * 72)]
vqrdmulh.s32 Q5, Q5, r7
// output[132]: Already loaded as Q6
vmla.s32 Q0, Q5, r10
vmul.u32 Q2, Q1, r8
vsub.s32 Q5, Q6, Q0
vqrdmulh.s32 Q1, Q1, r7
vadd.s32 Q6, Q6, Q0
vmla.s32 Q2, Q1, r10
// output[0]: Load as Q0
vldrw.u32 Q0, [r1, #(4 * 0)]
vmul.u32 Q3, Q5, r4
vsub.s32 Q1, Q0, Q2
vqrdmulh.s32 Q5, Q5, r3
vadd.s32 Q0, Q0, Q2
vmla.s32 Q3, Q5, r10
// output[76]: Load as Q2
vldrw.u32 Q2, [r1, #(4 * 76)]
vmul.u32 Q4, Q6, r6
vsub.s32 Q5, Q1, Q3
vqrdmulh.s32 Q6, Q6, r5
vadd.s32 Q1, Q1, Q3
vstrw.u32 Q5, [r1,#(48)]
// Release output[12] from Q5
vmla.s32 Q4, Q6, r10
vstrw.u32 Q1, [r1,#(288)]
// Release output[72] from Q1
vsub.s32 Q6, Q0, Q4
vstrw.u32 Q6, [r11,#(-480)]
// Release output[132] from Q6
vadd.s32 Q0, Q0, Q4
// output[76]: Already loaded as Q2
vmul.u32 Q1, Q2, r8
// output[136]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * -116)]
vqrdmulh.s32 Q2, Q2, r7
// output[4]: Load as Q4
vldrw.u32 Q4, [r1, #(4 * 4)]
vmla.s32 Q1, Q2, r10
vstrw.u32 Q0, [r1,#(0)]
// Release output[0] from Q0
vmul.u32 Q0, Q3, r8
vsub.s32 Q2, Q4, Q1
vqrdmulh.s32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q1
vmla.s32 Q0, Q3, r10
// output[64]: Load as Q1
vldrw.u32 Q1, [r1, #(4 * 64)]
vmul.u32 Q5, Q2, r4
vsub.s32 Q3, Q1, Q0
vqrdmulh.s32 Q2, Q2, r3
vadd.s32 Q1, Q1, Q0
vmla.s32 Q5, Q2, r10
// output[140]: Load as Q0
vldrw.u32 Q0, [r11, #(4 * -112)]
vmul.u32 Q6, Q4, r6
vsub.s32 Q2, Q3, Q5
vqrdmulh.s32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r1,#(304)]
// Release output[76] from Q2
vmla.s32 Q6, Q4, r10
vstrw.u32 Q3, [r11,#(-464)]
// Release output[136] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r1,#(16)]
// Release output[4] from Q4
vadd.s32 Q1, Q1, Q6
// output[140]: Already loaded as Q0
vmul.u32 Q2, Q0, r8
// output[8]: Load as Q3
vldrw.u32 Q3, [r1, #(4 * 8)]
vqrdmulh.s32 Q0, Q0, r7
// output[68]: Load as Q4
vldrw.u32 Q4, [r1, #(4 * 68)]
vmla.s32 Q2, Q0, r10
vstrw.u32 Q1, [r1,#(256)]
// Release output[64] from Q1
vmul.u32 Q1, Q3, r8
vsub.s32 Q0, Q4, Q2
vqrdmulh.s32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q2
vmla.s32 Q1, Q3, r10
// output[128]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * -124)]
vmul.u32 Q5, Q0, r4
vsub.s32 Q3, Q2, Q1
vqrdmulh.s32 Q0, Q0, r3
vadd.s32 Q2, Q2, Q1
vmla.s32 Q5, Q0, r10
// output[156]: Load as Q1
vldrw.u32 Q1, [r11, #(4 * -96)]
vmul.u32 Q6, Q4, r6
vsub.s32 Q0, Q3, Q5
vqrdmulh.s32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r11,#(-448)]
// Release output[140] from Q0
vmla.s32 Q6, Q4, r10
vstrw.u32 Q3, [r1,#(32)]
// Release output[8] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r1,#(272)]
// Release output[68] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r8, r7, [r9], #+8
ldrd r6, r5, [r9], #+8
ldrd r4, r3, [r9], #+8
// output[156]: Already loaded as Q1
vmul.u32 Q0, Q1, r8
// output[24]: Load as Q3
vldrw.u32 Q3, [r1, #(4 * 24)]
vqrdmulh.s32 Q1, Q1, r7
// output[84]: Load as Q4
vldrw.u32 Q4, [r1, #(4 * 84)]
vmla.s32 Q0, Q1, r10
vstrw.u32 Q2, [r11,#(-496)]
// Release output[128] from Q2
vmul.u32 Q2, Q3, r8
vsub.s32 Q1, Q4, Q0
vqrdmulh.s32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q0
vmla.s32 Q2, Q3, r10
// output[144]: Load as Q0
vldrw.u32 Q0, [r11, #(4 * -108)]
vmul.u32 Q5, Q1, r4
vsub.s32 Q3, Q0, Q2
vqrdmulh.s32 Q1, Q1, r3
vadd.s32 Q0, Q0, Q2
vmla.s32 Q5, Q1, r10
// output[28]: Load as Q2
vldrw.u32 Q2, [r1, #(4 * 28)]
vmul.u32 Q6, Q4, r6
vsub.s32 Q1, Q3, Q5
vqrdmulh.s32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r11,#(-384)]
// Release output[156] from Q1
vmla.s32 Q6, Q4, r10
vstrw.u32 Q3, [r1,#(96)]
// Release output[24] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r1,#(336)]
// Release output[84] from Q4
vadd.s32 Q0, Q0, Q6
// output[28]: Already loaded as Q2
vmul.u32 Q1, Q2, r8
// output[88]: Load as Q3
vldrw.u32 Q3, [r1, #(4 * 88)]
vqrdmulh.s32 Q2, Q2, r7
// output[148]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -104)]
vmla.s32 Q1, Q2, r10
vstrw.u32 Q0, [r11,#(-432)]
// Release output[144] from Q0
vmul.u32 Q0, Q3, r8
vsub.s32 Q2, Q4, Q1
vqrdmulh.s32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q1
vmla.s32 Q0, Q3, r10
// output[16]: Load as Q1
vldrw.u32 Q1, [r1, #(4 * 16)]
vmul.u32 Q5, Q2, r4
vsub.s32 Q3, Q1, Q0
vqrdmulh.s32 Q2, Q2, r3
vadd.s32 Q1, Q1, Q0
vmla.s32 Q5, Q2, r10
// output[92]: Load as Q0
vldrw.u32 Q0, [r1, #(4 * 92)]
vmul.u32 Q6, Q4, r6
vsub.s32 Q2, Q3, Q5
vqrdmulh.s32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r1,#(112)]
// Release output[28] from Q2
vmla.s32 Q6, Q4, r10
vstrw.u32 Q3, [r1,#(352)]
// Release output[88] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r11,#(-416)]
// Release output[148] from Q4
vadd.s32 Q1, Q1, Q6
// output[92]: Already loaded as Q0
vmul.u32 Q2, Q0, r8
// output[152]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * -100)]
vqrdmulh.s32 Q0, Q0, r7
// output[20]: Load as Q4
vldrw.u32 Q4, [r1, #(4 * 20)]
vmla.s32 Q2, Q0, r10
vstrw.u32 Q1, [r1,#(64)]
// Release output[16] from Q1
vmul.u32 Q1, Q3, r8
vsub.s32 Q0, Q4, Q2
vqrdmulh.s32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q2
vmla.s32 Q1, Q3, r10
// output[80]: Load as Q2
vldrw.u32 Q2, [r1, #(4 * 80)]
vmul.u32 Q5, Q0, r4
vsub.s32 Q3, Q2, Q1
vqrdmulh.s32 Q0, Q0, r3
vadd.s32 Q2, Q2, Q1
vmla.s32 Q5, Q0, r10
// output[108]: Load as Q1
vldrw.u32 Q1, [r1, #(4 * 108)]
vmul.u32 Q6, Q4, r6
vsub.s32 Q0, Q3, Q5
vqrdmulh.s32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r1,#(368)]
// Release output[92] from Q0
vmla.s32 Q6, Q4, r10
vstrw.u32 Q3, [r11,#(-400)]
// Release output[152] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r1,#(80)]
// Release output[20] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r8, r7, [r9], #+8
ldrd r6, r5, [r9], #+8
ldrd r4, r3, [r9], #+8
// output[108]: Already loaded as Q1
vmul.u32 Q0, Q1, r8
// output[168]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * -84)]
vqrdmulh.s32 Q1, Q1, r7
// output[36]: Load as Q4
vldrw.u32 Q4, [r1, #(4 * 36)]
vmla.s32 Q0, Q1, r10
vstrw.u32 Q2, [r1,#(320)]
// Release output[80] from Q2
vmul.u32 Q2, Q3, r8
vsub.s32 Q1, Q4, Q0
vqrdmulh.s32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q0
vmla.s32 Q2, Q3, r10
// output[96]: Load as Q0
vldrw.u32 Q0, [r1, #(4 * 96)]
vmul.u32 Q5, Q1, r4
vsub.s32 Q3, Q0, Q2
vqrdmulh.s32 Q1, Q1, r3
vadd.s32 Q0, Q0, Q2
vmla.s32 Q5, Q1, r10
// output[172]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * -80)]
vmul.u32 Q6, Q4, r6
vsub.s32 Q1, Q3, Q5
vqrdmulh.s32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r1,#(432)]
// Release output[108] from Q1
vmla.s32 Q6, Q4, r10
vstrw.u32 Q3, [r11,#(-336)]
// Release output[168] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r1,#(144)]
// Release output[36] from Q4
vadd.s32 Q0, Q0, Q6
// output[172]: Already loaded as Q2
vmul.u32 Q1, Q2, r8
// output[40]: Load as Q3
vldrw.u32 Q3, [r1, #(4 * 40)]
vqrdmulh.s32 Q2, Q2, r7
// output[100]: Load as Q4
vldrw.u32 Q4, [r1, #(4 * 100)]
vmla.s32 Q1, Q2, r10
vstrw.u32 Q0, [r1,#(384)]
// Release output[96] from Q0
vmul.u32 Q0, Q3, r8
vsub.s32 Q2, Q4, Q1
vqrdmulh.s32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q1
vmla.s32 Q0, Q3, r10
// output[160]: Load as Q1
vldrw.u32 Q1, [r11, #(4 * -92)]
vmul.u32 Q5, Q2, r4
vsub.s32 Q3, Q1, Q0
vqrdmulh.s32 Q2, Q2, r3
vadd.s32 Q1, Q1, Q0
vmla.s32 Q5, Q2, r10
// output[44]: Load as Q0
vldrw.u32 Q0, [r1, #(4 * 44)]
vmul.u32 Q6, Q4, r6
vsub.s32 Q2, Q3, Q5
vqrdmulh.s32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r11,#(-320)]
// Release output[172] from Q2
vmla.s32 Q6, Q4, r10
vstrw.u32 Q3, [r1,#(160)]
// Release output[40] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r1,#(400)]
// Release output[100] from Q4
vadd.s32 Q1, Q1, Q6
// output[44]: Already loaded as Q0
vmul.u32 Q2, Q0, r8
// output[104]: Load as Q3
vldrw.u32 Q3, [r1, #(4 * 104)]
vqrdmulh.s32 Q0, Q0, r7
// output[164]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -88)]
vmla.s32 Q2, Q0, r10
vstrw.u32 Q1, [r11,#(-368)]
// Release output[160] from Q1
vmul.u32 Q1, Q3, r8
vsub.s32 Q0, Q4, Q2
vqrdmulh.s32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q2
vmla.s32 Q1, Q3, r10
// output[32]: Load as Q2
vldrw.u32 Q2, [r1, #(4 * 32)]
vmul.u32 Q5, Q0, r4
vsub.s32 Q3, Q2, Q1
vqrdmulh.s32 Q0, Q0, r3
vadd.s32 Q2, Q2, Q1
vmla.s32 Q5, Q0, r10
// output[60]: Load as Q1
vldrw.u32 Q1, [r1, #(4 * 60)]
vmul.u32 Q6, Q4, r6
vsub.s32 Q0, Q3, Q5
vqrdmulh.s32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r1,#(176)]
// Release output[44] from Q0
vmla.s32 Q6, Q4, r10
vstrw.u32 Q3, [r1,#(416)]
// Release output[104] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r11,#(-352)]
// Release output[164] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r8, r7, [r9], #+8
ldrd r6, r5, [r9], #+8
ldrd r4, r3, [r9], #+8
// output[60]: Already loaded as Q1
vmul.u32 Q0, Q1, r8
// output[120]: Load as Q3
vldrw.u32 Q3, [r1, #(4 * 120)]
vqrdmulh.s32 Q1, Q1, r7
// output[180]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -72)]
vmla.s32 Q0, Q1, r10
vstrw.u32 Q2, [r1,#(128)]
// Release output[32] from Q2
vmul.u32 Q2, Q3, r8
vsub.s32 Q1, Q4, Q0
vqrdmulh.s32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q0
vmla.s32 Q2, Q3, r10
// output[48]: Load as Q0
vldrw.u32 Q0, [r1, #(4 * 48)]
vmul.u32 Q5, Q1, r4
vsub.s32 Q3, Q0, Q2
vqrdmulh.s32 Q1, Q1, r3
vadd.s32 Q0, Q0, Q2
vmla.s32 Q5, Q1, r10
// output[124]: Load as Q2
vldrw.u32 Q2, [r1, #(4 * 124)]
vmul.u32 Q6, Q4, r6
vsub.s32 Q1, Q3, Q5
vqrdmulh.s32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r1,#(240)]
// Release output[60] from Q1
vmla.s32 Q6, Q4, r10
vstrw.u32 Q3, [r1,#(480)]
// Release output[120] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r11,#(-288)]
// Release output[180] from Q4
vadd.s32 Q0, Q0, Q6
// output[124]: Already loaded as Q2
vmul.u32 Q1, Q2, r8
// output[184]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * -68)]
vqrdmulh.s32 Q2, Q2, r7
// output[52]: Load as Q4
vldrw.u32 Q4, [r1, #(4 * 52)]
vmla.s32 Q1, Q2, r10
vstrw.u32 Q0, [r1,#(192)]
// Release output[48] from Q0
vmul.u32 Q0, Q3, r8
vsub.s32 Q2, Q4, Q1
vqrdmulh.s32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q1
vmla.s32 Q0, Q3, r10
// output[112]: Load as Q1
vldrw.u32 Q1, [r1, #(4 * 112)]
vmul.u32 Q5, Q2, r4
vsub.s32 Q3, Q1, Q0
vqrdmulh.s32 Q2, Q2, r3
vadd.s32 Q1, Q1, Q0
vmla.s32 Q5, Q2, r10
// output[188]: Load as Q0
vldrw.u32 Q0, [r11, #(4 * -64)]
vmul.u32 Q6, Q4, r6
vsub.s32 Q2, Q3, Q5
vqrdmulh.s32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r1,#(496)]
// Release output[124] from Q2
vmla.s32 Q6, Q4, r10
vstrw.u32 Q3, [r11,#(-272)]
// Release output[184] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r1,#(208)]
// Release output[52] from Q4
vadd.s32 Q1, Q1, Q6
// output[188]: Already loaded as Q0
vmul.u32 Q2, Q0, r8
// output[56]: Load as Q3
vldrw.u32 Q3, [r1, #(4 * 56)]
vqrdmulh.s32 Q0, Q0, r7
// output[116]: Load as Q4
vldrw.u32 Q4, [r1, #(4 * 116)]
vmla.s32 Q2, Q0, r10
vstrw.u32 Q1, [r1,#(448)]
// Release output[112] from Q1
vmul.u32 Q1, Q3, r8
vsub.s32 Q0, Q4, Q2
vqrdmulh.s32 Q3, Q3, r7
vadd.s32 Q4, Q4, Q2
vmla.s32 Q1, Q3, r10
// output[176]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * -76)]
vmul.u32 Q5, Q0, r4
vsub.s32 Q3, Q2, Q1
vqrdmulh.s32 Q0, Q0, r3
vadd.s32 Q2, Q2, Q1
vmla.s32 Q5, Q0, r10
vmul.u32 Q1, Q4, r6
vsub.s32 Q0, Q3, Q5
vqrdmulh.s32 Q4, Q4, r5
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r11,#(-256)]
// Release output[188] from Q0
vmla.s32 Q1, Q4, r10
vstrw.u32 Q3, [r1,#(224)]
// Release output[56] from Q3
vsub.s32 Q4, Q2, Q1
vstrw.u32 Q4, [r1,#(464)]
// Release output[116] from Q4
vadd.s32 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(-304)]
// Release output[176] from Q2
.equ modulus_inv, 815674047
movw r14, #:lower16:modulus_inv
movt r14, #:upper16:modulus_inv
// Restore MVE vector registers
vpop {d8-d15}
// Restore GPRs
pop {r4-r11,lr}
bx lr

// Line count:        1204
// Instruction count: 900