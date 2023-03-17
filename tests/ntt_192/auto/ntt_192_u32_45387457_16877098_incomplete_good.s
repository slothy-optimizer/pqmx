
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
.global ntt_192_u32_45387457_16877098_incomplete_good_twiddles
ntt_192_u32_45387457_16877098_incomplete_good_twiddles: // For base multiplication
.word    3050923 // zeta^  0 * 2^31 = 16877098^  0 * 2^31 = 1 * 2^31
.word 1370315925 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 16877098^  0 * 450429249 * 2^31
.word   58792077 // zeta^160 * 2^31 = 16877098^160 * 2^31 = 27201077 * 2^31
.word 2040215347 // zeta^160 * f(q^(-1) mod 2^32) * 2^31 = 16877098^160 * 450429249 * 2^31
.word    9560897 // zeta^ 80 * 2^31 = 16877098^ 80 * 2^31 = 43749424 * 2^31
.word  217647999 // zeta^ 80 * f(q^(-1) mod 2^32) * 2^31 = 16877098^ 80 * 450429249 * 2^31
.word   16322801 // zeta^ 48 * 2^31 = 16877098^ 48 * 2^31 = 14738418 * 2^31
.word 4050174415 // zeta^ 48 * f(q^(-1) mod 2^32) * 2^31 = 16877098^ 48 * 450429249 * 2^31
.word   65472817 // zeta^136 * 2^31 = 16877098^136 * 2^31 = 6908982 * 2^31
.word 1455716751 // zeta^136 * f(q^(-1) mod 2^32) * 2^31 = 16877098^136 * 450429249 * 2^31
.word   34650023 // zeta^104 * 2^31 = 16877098^104 * 2^31 = 38432301 * 2^31
.word 3329931161 // zeta^104 * f(q^(-1) mod 2^32) * 2^31 = 16877098^104 * 450429249 * 2^31
.word   22720737 // zeta^ 24 * 2^31 = 16877098^ 24 * 2^31 = 40340716 * 2^31
.word 2223977951 // zeta^ 24 * f(q^(-1) mod 2^32) * 2^31 = 16877098^ 24 * 450429249 * 2^31
.word   41602881 // zeta^184 * 2^31 = 16877098^184 * 2^31 = 24079121 * 2^31
.word 2615746431 // zeta^184 * f(q^(-1) mod 2^32) * 2^31 = 16877098^184 * 450429249 * 2^31
.word   16163777 // zeta^ 68 * 2^31 = 16877098^ 68 * 2^31 = 4138342 * 2^31
.word 1646504703 // zeta^ 68 * f(q^(-1) mod 2^32) * 2^31 = 16877098^ 68 * 450429249 * 2^31
.word   34282441 // zeta^ 36 * 2^31 = 16877098^ 36 * 2^31 = 21015440 * 2^31
.word 2024876279 // zeta^ 36 * f(q^(-1) mod 2^32) * 2^31 = 16877098^ 36 * 450429249 * 2^31
.word   63685223 // zeta^148 * 2^31 = 16877098^148 * 2^31 = 12104035 * 2^31
.word 4264705241 // zeta^148 * f(q^(-1) mod 2^32) * 2^31 = 16877098^148 * 450429249 * 2^31
.word   43044525 // zeta^116 * 2^31 = 16877098^116 * 2^31 = 41757216 * 2^31
.word   96983315 // zeta^116 * f(q^(-1) mod 2^32) * 2^31 = 16877098^116 * 450429249 * 2^31
.word   87208369 // zeta^ 12 * 2^31 = 16877098^ 12 * 2^31 = 38013065 * 2^31
.word 3798348047 // zeta^ 12 * f(q^(-1) mod 2^32) * 2^31 = 16877098^ 12 * 450429249 * 2^31
.word    8670255 // zeta^172 * 2^31 = 16877098^172 * 2^31 = 4764854 * 2^31
.word    4552977 // zeta^172 * f(q^(-1) mod 2^32) * 2^31 = 16877098^172 * 450429249 * 2^31
.word   26490773 // zeta^ 92 * 2^31 = 16877098^ 92 * 2^31 = 34257499 * 2^31
.word 3319352875 // zeta^ 92 * f(q^(-1) mod 2^32) * 2^31 = 16877098^ 92 * 450429249 * 2^31
.word   25361455 // zeta^ 60 * 2^31 = 16877098^ 60 * 2^31 = 20563366 * 2^31
.word 2431306001 // zeta^ 60 * f(q^(-1) mod 2^32) * 2^31 = 16877098^ 60 * 450429249 * 2^31
.word   31982837 // zeta^ 64 * 2^31 = 16877098^ 64 * 2^31 = 18186380 * 2^31
.word 2254751947 // zeta^ 64 * f(q^(-1) mod 2^32) * 2^31 = 16877098^ 64 * 450429249 * 2^31
.word   80421217 // zeta^ 32 * 2^31 = 16877098^ 32 * 2^31 = 18186381 * 2^31
.word 3625067871 // zeta^ 32 * f(q^(-1) mod 2^32) * 2^31 = 16877098^ 32 * 450429249 * 2^31
.word   74452113 // zeta^144 * 2^31 = 16877098^144 * 2^31 = 30649039 * 2^31
.word  244792879 // zeta^144 * f(q^(-1) mod 2^32) * 2^31 = 16877098^144 * 450429249 * 2^31
.word   38625553 // zeta^112 * 2^31 = 16877098^112 * 2^31 = 29011006 * 2^31
.word  462440879 // zeta^112 * f(q^(-1) mod 2^32) * 2^31 = 16877098^112 * 450429249 * 2^31
.word   56124891 // zeta^  8 * 2^31 = 16877098^  8 * 2^31 = 6955156 * 2^31
.word  965036133 // zeta^  8 * f(q^(-1) mod 2^32) * 2^31 = 16877098^  8 * 450429249 * 2^31
.word   76210251 // zeta^168 * 2^31 = 16877098^168 * 2^31 = 13864138 * 2^31
.word 2420752885 // zeta^168 * f(q^(-1) mod 2^32) * 2^31 = 16877098^168 * 450429249 * 2^31
.word   49172033 // zeta^ 88 * 2^31 = 16877098^ 88 * 2^31 = 21308336 * 2^31
.word 1679220863 // zeta^ 88 * f(q^(-1) mod 2^32) * 2^31 = 16877098^ 88 * 450429249 * 2^31
.word   26505313 // zeta^ 56 * 2^31 = 16877098^ 56 * 2^31 = 16261595 * 2^31
.word 3903198815 // zeta^ 56 * f(q^(-1) mod 2^32) * 2^31 = 16877098^ 56 * 450429249 * 2^31
.word   56492473 // zeta^132 * 2^31 = 16877098^132 * 2^31 = 24372017 * 2^31
.word 2270091015 // zeta^132 * f(q^(-1) mod 2^32) * 2^31 = 16877098^132 * 450429249 * 2^31
.word   27268793 // zeta^100 * 2^31 = 16877098^100 * 2^31 = 28510359 * 2^31
.word 3916595719 // zeta^100 * f(q^(-1) mod 2^32) * 2^31 = 16877098^100 * 450429249 * 2^31
.word   47730389 // zeta^ 20 * 2^31 = 16877098^ 20 * 2^31 = 3630241 * 2^31
.word 4197983979 // zeta^ 20 * f(q^(-1) mod 2^32) * 2^31 = 16877098^ 20 * 450429249 * 2^31
.word   66028155 // zeta^180 * 2^31 = 16877098^180 * 2^31 = 15734276 * 2^31
.word 4167721925 // zeta^180 * f(q^(-1) mod 2^32) * 2^31 = 16877098^180 * 450429249 * 2^31
.word   82104659 // zeta^ 76 * 2^31 = 16877098^ 76 * 2^31 = 40622603 * 2^31
.word 4290414317 // zeta^ 76 * f(q^(-1) mod 2^32) * 2^31 = 16877098^ 76 * 450429249 * 2^31
.word   33150657 // zeta^ 44 * 2^31 = 16877098^ 44 * 2^31 = 33248211 * 2^31
.word 3793795071 // zeta^ 44 * f(q^(-1) mod 2^32) * 2^31 = 16877098^ 44 * 450429249 * 2^31
.word   65413459 // zeta^156 * 2^31 = 16877098^156 * 2^31 = 24824091 * 2^31
.word 1863661293 // zeta^156 * f(q^(-1) mod 2^32) * 2^31 = 16877098^156 * 450429249 * 2^31
.word   46516775 // zeta^124 * 2^31 = 16877098^124 * 2^31 = 13694133 * 2^31
.word  888046873 // zeta^124 * f(q^(-1) mod 2^32) * 2^31 = 16877098^124 * 450429249 * 2^31
.word   10353697 // zeta^128 * 2^31 = 16877098^128 * 2^31 = 27201076 * 2^31
.word  669899423 // zeta^128 * f(q^(-1) mod 2^32) * 2^31 = 16877098^128 * 450429249 * 2^31
.word   87723991 // zeta^ 96 * 2^31 = 16877098^ 96 * 2^31 = 45387456 * 2^31
.word 2924651369 // zeta^ 96 * f(q^(-1) mod 2^32) * 2^31 = 16877098^ 96 * 450429249 * 2^31
.word   52149361 // zeta^ 16 * 2^31 = 16877098^ 16 * 2^31 = 16376451 * 2^31
.word 3832526415 // zeta^ 16 * f(q^(-1) mod 2^32) * 2^31 = 16877098^ 16 * 450429249 * 2^31
.word   81214017 // zeta^176 * 2^31 = 16877098^176 * 2^31 = 1638033 * 2^31
.word 4077319295 // zeta^176 * f(q^(-1) mod 2^32) * 2^31 = 16877098^176 * 450429249 * 2^31
.word   14564663 // zeta^ 72 * 2^31 = 16877098^ 72 * 2^31 = 31523319 * 2^31
.word 1874214409 // zeta^ 72 * f(q^(-1) mod 2^32) * 2^31 = 16877098^ 72 * 450429249 * 2^31
.word   25302097 // zeta^ 40 * 2^31 = 16877098^ 40 * 2^31 = 38478475 * 2^31
.word 2839250543 // zeta^ 40 * f(q^(-1) mod 2^32) * 2^31 = 16877098^ 40 * 450429249 * 2^31
.word   64269601 // zeta^152 * 2^31 = 16877098^152 * 2^31 = 29125862 * 2^31
.word  391768479 // zeta^152 * f(q^(-1) mod 2^32) * 2^31 = 16877098^152 * 450429249 * 2^31
.word   68054177 // zeta^120 * 2^31 = 16877098^120 * 2^31 = 5046741 * 2^31
.word 2070989343 // zeta^120 * f(q^(-1) mod 2^32) * 2^31 = 16877098^120 * 450429249 * 2^31
.word   63506121 // zeta^  4 * 2^31 = 16877098^  4 * 2^31 = 16877098 * 2^31
.word  378371575 // zeta^  4 * f(q^(-1) mod 2^32) * 2^31 = 16877098^  4 * 450429249 * 2^31
.word   74611137 // zeta^164 * 2^31 = 16877098^164 * 2^31 = 41249115 * 2^31
.word 2648462591 // zeta^164 * f(q^(-1) mod 2^32) * 2^31 = 16877098^164 * 450429249 * 2^31
.word   24746759 // zeta^ 84 * 2^31 = 16877098^ 84 * 2^31 = 29653181 * 2^31
.word  127245369 // zeta^ 84 * f(q^(-1) mod 2^32) * 2^31 = 16877098^ 84 * 450429249 * 2^31
.word   27089691 // zeta^ 52 * 2^31 = 16877098^ 52 * 2^31 = 33283422 * 2^31
.word   30262053 // zeta^ 52 * f(q^(-1) mod 2^32) * 2^31 = 16877098^ 52 * 450429249 * 2^31
.word   57624257 // zeta^140 * 2^31 = 16877098^140 * 2^31 = 12139246 * 2^31
.word  501172223 // zeta^140 * f(q^(-1) mod 2^32) * 2^31 = 16877098^140 * 450429249 * 2^31
.word    3566545 // zeta^108 * 2^31 = 16877098^108 * 2^31 = 7374392 * 2^31
.word  496619247 // zeta^108 * f(q^(-1) mod 2^32) * 2^31 = 16877098^108 * 450429249 * 2^31
.word   44258139 // zeta^ 28 * 2^31 = 16877098^ 28 * 2^31 = 31693324 * 2^31
.word 3406920421 // zeta^ 28 * f(q^(-1) mod 2^32) * 2^31 = 16877098^ 28 * 450429249 * 2^31
.word   64284141 // zeta^188 * 2^31 = 16877098^188 * 2^31 = 11129958 * 2^31
.word  975614419 // zeta^188 * f(q^(-1) mod 2^32) * 2^31 = 16877098^188 * 450429249 * 2^31
// End of twiddles for base multiplication

.global ntt_192_u32_45387457_16877098_incomplete_good_scale
ntt_192_u32_45387457_16877098_incomplete_good_scale: // Constants for scaling by 1/N
.word 3050923 // 1/48
.word 1370315925 // 1/48 twisted
.data
roots:
.word    9023783 /// zeta^ 64 * 2^31 = 16877098^ 64 * 2^31 = 18186380 * 2^31
.word  860479001 /// zeta^ 64 * f(q^(-1) mod 2^32) * 2^31 = 16877098^ 64 * 450429249 * 2^31
.word   22090505 /// zeta^128 * 2^31 = 16877098^128 * 2^31 = 27201076 * 2^31
.word 1287004599 /// zeta^128 * f(q^(-1) mod 2^32) * 2^31 = 16877098^128 * 450429249 * 2^31
.word   14273169 // zeta^  0 * 2^31 = 16877098^  0 * 2^31 = 1 * 2^31
.word 2147483695 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 16877098^  0 * 450429249 * 2^31
.word   14273169 // zeta^  0 * 2^31 = 16877098^  0 * 2^31 = 1 * 2^31
.word 2147483695 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 16877098^  0 * 450429249 * 2^31
.word   78782351 // zeta^144 * 2^31 = 16877098^144 * 2^31 = 30649039 * 2^31
.word 3597626801 // zeta^144 * f(q^(-1) mod 2^32) * 2^31 = 16877098^144 * 450429249 * 2^31
.word   14273169 // zeta^  0 * 2^31 = 16877098^  0 * 2^31 = 1 * 2^31
.word 2147483695 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 16877098^  0 * 450429249 * 2^31
.word   14273169 // zeta^  0 * 2^31 = 16877098^  0 * 2^31 = 1 * 2^31
.word 2147483695 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 16877098^  0 * 450429249 * 2^31
.word   78782351 // zeta^144 * 2^31 = 16877098^144 * 2^31 = 30649039 * 2^31
.word 3597626801 // zeta^144 * f(q^(-1) mod 2^32) * 2^31 = 16877098^144 * 450429249 * 2^31
.word   78782351 // zeta^144 * 2^31 = 16877098^144 * 2^31 = 30649039 * 2^31
.word 3597626801 // zeta^144 * f(q^(-1) mod 2^32) * 2^31 = 16877098^144 * 450429249 * 2^31
.word   88323005 // zeta^ 72 * 2^31 = 16877098^ 72 * 2^31 = 31523319 * 2^31
.word 3638992899 // zeta^ 72 * f(q^(-1) mod 2^32) * 2^31 = 16877098^ 72 * 450429249 * 2^31
.word   84188761 // zeta^ 24 * 2^31 = 16877098^ 24 * 2^31 = 40340716 * 2^31
.word 1908699751 // zeta^ 24 * f(q^(-1) mod 2^32) * 2^31 = 16877098^ 24 * 450429249 * 2^31
.word   88323005 // zeta^ 72 * 2^31 = 16877098^ 72 * 2^31 = 31523319 * 2^31
.word 3638992899 // zeta^ 72 * f(q^(-1) mod 2^32) * 2^31 = 16877098^ 72 * 450429249 * 2^31
.word   16804439 // zeta^132 * 2^31 = 16877098^132 * 2^31 = 24372017 * 2^31
.word 3300632809 // zeta^132 * f(q^(-1) mod 2^32) * 2^31 = 16877098^132 * 450429249 * 2^31
.word   19157039 // zeta^ 84 * 2^31 = 16877098^ 84 * 2^31 = 29653181 * 2^31
.word 3550508305 // zeta^ 84 * f(q^(-1) mod 2^32) * 2^31 = 16877098^ 84 * 450429249 * 2^31
.word   84188761 // zeta^ 24 * 2^31 = 16877098^ 24 * 2^31 = 40340716 * 2^31
.word 1908699751 // zeta^ 24 * f(q^(-1) mod 2^32) * 2^31 = 16877098^ 24 * 450429249 * 2^31
.word   65804887 // zeta^ 12 * 2^31 = 16877098^ 12 * 2^31 = 38013065 * 2^31
.word 3946051817 // zeta^ 12 * f(q^(-1) mod 2^32) * 2^31 = 16877098^ 12 * 450429249 * 2^31
.word   82969997 // zeta^156 * 2^31 = 16877098^156 * 2^31 = 24824091 * 2^31
.word 3322022451 // zeta^156 * f(q^(-1) mod 2^32) * 2^31 = 16877098^156 * 450429249 * 2^31
.text
.align 4
roots_addr: .word roots
.syntax unified
.type ntt_192_u32_45387457_16877098_incomplete_good, %function
.global ntt_192_u32_45387457_16877098_incomplete_good
ntt_192_u32_45387457_16877098_incomplete_good:
// Save GPRs
push {r4-r11,lr}
// Save MVE vector registers
vpush {d8-d15}
// Use r14 as marker for r0 + 1008
add r14, r0, #1008
.equ modulus, 45387457
movw r12, #:lower16:modulus
movt r12, #:upper16:modulus
ldr r11, roots_addr
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
// input[64]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 64)]
// input[128]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -124)]
vsub.s32 Q2, Q0, Q1
vqrdmulh.s32 Q3, Q2, r10
vadd.s32 Q5, Q0, Q1
// Release input[64] from Q0
vmul.u32 Q4, Q2, r9
// input[0]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 0)]
vqrdmlah.s32 Q3, Q4, r12
vsub.s32 Q4, Q0, Q1
// Release input[128] from Q1
// input[4]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 4)]
vadd.s32 Q6, Q4, Q3
// input[68]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 68)]
vsub.s32 Q4, Q4, Q3
vstrw.u32 Q6, [r0,#(256)]
vsub.s32 Q4, Q4, Q2
vstrw.u32 Q4, [r14,#(-496)]
vadd.s32 Q5, Q5, Q0
// Release input[0] from Q0
vstrw.u32 Q5, [r0,#(0)]
// input[4]: Already loaded as Q1
// input[68]: Already loaded as Q7
vsub.s32 Q0, Q1, Q7
vqrdmulh.s32 Q2, Q0, r10
vadd.s32 Q4, Q1, Q7
// Release input[4] from Q1
vmul.u32 Q3, Q0, r9
// input[132]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -120)]
vqrdmlah.s32 Q2, Q3, r12
vsub.s32 Q3, Q1, Q7
// Release input[68] from Q7
// input[136]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -116)]
vadd.s32 Q6, Q3, Q2
// input[8]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 8)]
vsub.s32 Q3, Q3, Q2
vstrw.u32 Q6, [r0,#(16)]
vsub.s32 Q3, Q3, Q0
vstrw.u32 Q3, [r0,#(272)]
vadd.s32 Q4, Q4, Q1
// Release input[132] from Q1
vstrw.u32 Q4, [r14,#(-480)]
// input[136]: Already loaded as Q5
// input[8]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r10
vadd.s32 Q3, Q5, Q7
// Release input[136] from Q5
vmul.u32 Q2, Q0, r9
// input[72]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 72)]
vqrdmlah.s32 Q1, Q2, r12
vsub.s32 Q2, Q4, Q7
// Release input[8] from Q7
// input[76]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 76)]
vadd.s32 Q6, Q2, Q1
// input[140]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -112)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(-464)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(32)]
vadd.s32 Q3, Q3, Q4
// Release input[72] from Q4
vstrw.u32 Q3, [r0,#(288)]
// input[76]: Already loaded as Q5
// input[140]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r10
vadd.s32 Q3, Q5, Q7
// Release input[76] from Q5
vmul.u32 Q2, Q0, r9
// input[12]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 12)]
vqrdmlah.s32 Q1, Q2, r12
vsub.s32 Q2, Q4, Q7
// Release input[140] from Q7
// input[16]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 16)]
vadd.s32 Q6, Q2, Q1
// input[80]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 80)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r0,#(304)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-448)]
vadd.s32 Q3, Q3, Q4
// Release input[12] from Q4
vstrw.u32 Q3, [r0,#(48)]
// input[16]: Already loaded as Q5
// input[80]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r10
vadd.s32 Q3, Q5, Q7
// Release input[16] from Q5
vmul.u32 Q2, Q0, r9
// input[144]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -108)]
vqrdmlah.s32 Q1, Q2, r12
vsub.s32 Q2, Q4, Q7
// Release input[80] from Q7
// input[148]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -104)]
vadd.s32 Q6, Q2, Q1
// input[20]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 20)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r0,#(64)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(320)]
vadd.s32 Q3, Q3, Q4
// Release input[144] from Q4
vstrw.u32 Q3, [r14,#(-432)]
// input[148]: Already loaded as Q5
// input[20]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r10
vadd.s32 Q3, Q5, Q7
// Release input[148] from Q5
vmul.u32 Q2, Q0, r9
// input[84]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 84)]
vqrdmlah.s32 Q1, Q2, r12
vsub.s32 Q2, Q4, Q7
// Release input[20] from Q7
// input[88]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 88)]
vadd.s32 Q6, Q2, Q1
// input[152]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -100)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(-416)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(80)]
vadd.s32 Q3, Q3, Q4
// Release input[84] from Q4
vstrw.u32 Q3, [r0,#(336)]
// input[88]: Already loaded as Q5
// input[152]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r10
vadd.s32 Q3, Q5, Q7
// Release input[88] from Q5
vmul.u32 Q2, Q0, r9
// input[24]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 24)]
vqrdmlah.s32 Q1, Q2, r12
vsub.s32 Q2, Q4, Q7
// Release input[152] from Q7
// input[28]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 28)]
vadd.s32 Q6, Q2, Q1
// input[92]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 92)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r0,#(352)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-400)]
vadd.s32 Q3, Q3, Q4
// Release input[24] from Q4
vstrw.u32 Q3, [r0,#(96)]
// input[28]: Already loaded as Q5
// input[92]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r10
vadd.s32 Q3, Q5, Q7
// Release input[28] from Q5
vmul.u32 Q2, Q0, r9
// input[156]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -96)]
vqrdmlah.s32 Q1, Q2, r12
vsub.s32 Q2, Q4, Q7
// Release input[92] from Q7
// input[160]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -92)]
vadd.s32 Q6, Q2, Q1
// input[32]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 32)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r0,#(112)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(368)]
vadd.s32 Q3, Q3, Q4
// Release input[156] from Q4
vstrw.u32 Q3, [r14,#(-384)]
// input[160]: Already loaded as Q5
// input[32]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r10
vadd.s32 Q3, Q5, Q7
// Release input[160] from Q5
vmul.u32 Q2, Q0, r9
// input[96]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 96)]
vqrdmlah.s32 Q1, Q2, r12
vsub.s32 Q2, Q4, Q7
// Release input[32] from Q7
// input[100]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 100)]
vadd.s32 Q6, Q2, Q1
// input[164]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -88)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(-368)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(128)]
vadd.s32 Q3, Q3, Q4
// Release input[96] from Q4
vstrw.u32 Q3, [r0,#(384)]
// input[100]: Already loaded as Q5
// input[164]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r10
vadd.s32 Q3, Q5, Q7
// Release input[100] from Q5
vmul.u32 Q2, Q0, r9
// input[36]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 36)]
vqrdmlah.s32 Q1, Q2, r12
vsub.s32 Q2, Q4, Q7
// Release input[164] from Q7
// input[40]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 40)]
vadd.s32 Q6, Q2, Q1
// input[104]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 104)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r0,#(400)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-352)]
vadd.s32 Q3, Q3, Q4
// Release input[36] from Q4
vstrw.u32 Q3, [r0,#(144)]
// input[40]: Already loaded as Q5
// input[104]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r10
vadd.s32 Q3, Q5, Q7
// Release input[40] from Q5
vmul.u32 Q2, Q0, r9
// input[168]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -84)]
vqrdmlah.s32 Q1, Q2, r12
vsub.s32 Q2, Q4, Q7
// Release input[104] from Q7
// input[172]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -80)]
vadd.s32 Q6, Q2, Q1
// input[44]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 44)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r0,#(160)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(416)]
vadd.s32 Q3, Q3, Q4
// Release input[168] from Q4
vstrw.u32 Q3, [r14,#(-336)]
// input[172]: Already loaded as Q5
// input[44]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r10
vadd.s32 Q3, Q5, Q7
// Release input[172] from Q5
vmul.u32 Q2, Q0, r9
// input[108]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 108)]
vqrdmlah.s32 Q1, Q2, r12
vsub.s32 Q2, Q4, Q7
// Release input[44] from Q7
// input[112]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 112)]
vadd.s32 Q6, Q2, Q1
// input[176]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -76)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(-320)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(176)]
vadd.s32 Q3, Q3, Q4
// Release input[108] from Q4
vstrw.u32 Q3, [r0,#(432)]
// input[112]: Already loaded as Q5
// input[176]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r10
vadd.s32 Q3, Q5, Q7
// Release input[112] from Q5
vmul.u32 Q2, Q0, r9
// input[48]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 48)]
vqrdmlah.s32 Q1, Q2, r12
vsub.s32 Q2, Q4, Q7
// Release input[176] from Q7
// input[52]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 52)]
vadd.s32 Q6, Q2, Q1
// input[116]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 116)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r0,#(448)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-304)]
vadd.s32 Q3, Q3, Q4
// Release input[48] from Q4
vstrw.u32 Q3, [r0,#(192)]
// input[52]: Already loaded as Q5
// input[116]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r10
vadd.s32 Q3, Q5, Q7
// Release input[52] from Q5
vmul.u32 Q2, Q0, r9
// input[180]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -72)]
vqrdmlah.s32 Q1, Q2, r12
vsub.s32 Q2, Q4, Q7
// Release input[116] from Q7
// input[184]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -68)]
vadd.s32 Q6, Q2, Q1
// input[56]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 56)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r0,#(208)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(464)]
vadd.s32 Q3, Q3, Q4
// Release input[180] from Q4
vstrw.u32 Q3, [r14,#(-288)]
// input[184]: Already loaded as Q5
// input[56]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r10
vadd.s32 Q3, Q5, Q7
// Release input[184] from Q5
vmul.u32 Q2, Q0, r9
// input[120]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 120)]
vqrdmlah.s32 Q1, Q2, r12
vsub.s32 Q2, Q4, Q7
// Release input[56] from Q7
// input[124]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 124)]
vadd.s32 Q6, Q2, Q1
// input[188]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -64)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(-272)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(224)]
vadd.s32 Q3, Q3, Q4
// Release input[120] from Q4
vstrw.u32 Q3, [r0,#(480)]
// input[124]: Already loaded as Q5
// input[188]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vqrdmulh.s32 Q1, Q0, r10
vadd.s32 Q3, Q5, Q7
// Release input[124] from Q5
vmul.u32 Q2, Q0, r9
// input[60]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 60)]
vqrdmlah.s32 Q1, Q2, r12
vsub.s32 Q2, Q4, Q7
// Release input[188] from Q7
vadd.s32 Q5, Q2, Q1
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q5, [r0,#(496)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-256)]
vadd.s32 Q3, Q3, Q4
// Release input[60] from Q4
vstrw.u32 Q3, [r0,#(240)]
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[144]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -108)]
// input[48]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 48)]
vsub.s32 Q2, Q0, Q1
vqrdmulh.s32 Q3, Q2, r6
// input[96]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 96)]
vadd.s32 Q0, Q0, Q1
// Release input[48] from Q1
// input[0]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 0)]
vsub.s32 Q5, Q1, Q4
// input[180]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * -72)]
vadd.s32 Q1, Q1, Q4
// Release input[96] from Q4
vmul.u32 Q2, Q2, r5
vsub.s32 Q4, Q1, Q0
// input[84]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 84)]
vqrdmlah.s32 Q3, Q2, r12
vstrw.u32 Q4, [r14,#(-432)]
vadd.s32 Q1, Q1, Q0
// Release input[144] from Q0
vstrw.u32 Q1, [r0,#(0)]
// Release input[0] from Q1
vsub.s32 Q2, Q5, Q3
vstrw.u32 Q2, [r0,#(192)]
vadd.s32 Q5, Q5, Q3
vstrw.u32 Q5, [r0,#(384)]
// input[84]: Already loaded as Q7
// input[180]: Already loaded as Q6
vsub.s32 Q0, Q7, Q6
vqrdmulh.s32 Q1, Q0, r6
// input[36]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 36)]
vadd.s32 Q7, Q7, Q6
// Release input[180] from Q6
// input[132]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -120)]
vsub.s32 Q4, Q3, Q2
// input[120]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 120)]
vadd.s32 Q3, Q3, Q2
// Release input[36] from Q2
vmul.u32 Q0, Q0, r5
vsub.s32 Q2, Q3, Q7
// input[24]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 24)]
vqrdmlah.s32 Q1, Q0, r12
vstrw.u32 Q2, [r0,#(336)]
vadd.s32 Q3, Q3, Q7
// Release input[84] from Q7
vstrw.u32 Q3, [r14,#(-480)]
// Release input[132] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(-288)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r0,#(144)]
// input[24]: Already loaded as Q6
// input[120]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vqrdmulh.s32 Q1, Q0, r6
// input[168]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -84)]
vadd.s32 Q6, Q6, Q5
// Release input[120] from Q5
// input[72]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 72)]
vsub.s32 Q4, Q3, Q2
// input[60]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 60)]
vadd.s32 Q3, Q3, Q2
// Release input[168] from Q2
vmul.u32 Q0, Q0, r5
vsub.s32 Q2, Q3, Q6
// input[156]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -96)]
vqrdmlah.s32 Q1, Q0, r12
vstrw.u32 Q2, [r0,#(96)]
vadd.s32 Q3, Q3, Q6
// Release input[24] from Q6
vstrw.u32 Q3, [r0,#(288)]
// Release input[72] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r0,#(480)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(-336)]
// input[156]: Already loaded as Q7
// input[60]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vqrdmulh.s32 Q1, Q0, r6
// input[108]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 108)]
vadd.s32 Q7, Q7, Q5
// Release input[60] from Q5
// input[12]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 12)]
vsub.s32 Q4, Q3, Q2
// input[112]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 112)]
vadd.s32 Q3, Q3, Q2
// Release input[108] from Q2
vmul.u32 Q0, Q0, r5
vsub.s32 Q2, Q3, Q7
// input[16]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 16)]
vqrdmlah.s32 Q1, Q0, r12
vstrw.u32 Q2, [r14,#(-384)]
vadd.s32 Q3, Q3, Q7
// Release input[156] from Q7
vstrw.u32 Q3, [r0,#(48)]
// Release input[12] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r0,#(240)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r0,#(432)]
// input[16]: Already loaded as Q6
// input[112]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vqrdmulh.s32 Q1, Q0, r6
// input[160]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -92)]
vadd.s32 Q6, Q6, Q5
// Release input[112] from Q5
// input[64]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 64)]
vsub.s32 Q4, Q3, Q2
// input[52]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 52)]
vadd.s32 Q3, Q3, Q2
// Release input[160] from Q2
vmul.u32 Q0, Q0, r5
vsub.s32 Q2, Q3, Q6
// input[148]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -104)]
vqrdmlah.s32 Q1, Q0, r12
vstrw.u32 Q2, [r0,#(64)]
vadd.s32 Q3, Q3, Q6
// Release input[16] from Q6
vstrw.u32 Q3, [r0,#(256)]
// Release input[64] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r0,#(448)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(-368)]
// input[148]: Already loaded as Q7
// input[52]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vqrdmulh.s32 Q1, Q0, r6
// input[100]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 100)]
vadd.s32 Q7, Q7, Q5
// Release input[52] from Q5
// input[4]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 4)]
vsub.s32 Q4, Q3, Q2
// input[184]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -68)]
vadd.s32 Q3, Q3, Q2
// Release input[100] from Q2
vmul.u32 Q0, Q0, r5
vsub.s32 Q2, Q3, Q7
// input[88]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 88)]
vqrdmlah.s32 Q1, Q0, r12
vstrw.u32 Q2, [r14,#(-416)]
vadd.s32 Q3, Q3, Q7
// Release input[148] from Q7
vstrw.u32 Q3, [r0,#(16)]
// Release input[4] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r0,#(208)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r0,#(400)]
// input[88]: Already loaded as Q6
// input[184]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vqrdmulh.s32 Q1, Q0, r6
// input[40]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 40)]
vadd.s32 Q6, Q6, Q5
// Release input[184] from Q5
// input[136]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -116)]
vsub.s32 Q4, Q3, Q2
// input[124]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 124)]
vadd.s32 Q3, Q3, Q2
// Release input[40] from Q2
vmul.u32 Q0, Q0, r5
vsub.s32 Q2, Q3, Q6
// input[28]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 28)]
vqrdmlah.s32 Q1, Q0, r12
vstrw.u32 Q2, [r0,#(352)]
vadd.s32 Q3, Q3, Q6
// Release input[88] from Q6
vstrw.u32 Q3, [r14,#(-464)]
// Release input[136] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(-272)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r0,#(160)]
// input[28]: Already loaded as Q7
// input[124]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vqrdmulh.s32 Q1, Q0, r6
// input[172]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -80)]
vadd.s32 Q7, Q7, Q5
// Release input[124] from Q5
// input[76]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 76)]
vsub.s32 Q4, Q3, Q2
// input[176]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -76)]
vadd.s32 Q3, Q3, Q2
// Release input[172] from Q2
vmul.u32 Q0, Q0, r5
vsub.s32 Q2, Q3, Q7
// input[80]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 80)]
vqrdmlah.s32 Q1, Q0, r12
vstrw.u32 Q2, [r0,#(112)]
vadd.s32 Q3, Q3, Q7
// Release input[28] from Q7
vstrw.u32 Q3, [r0,#(304)]
// Release input[76] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r0,#(496)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(-320)]
// input[80]: Already loaded as Q6
// input[176]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vqrdmulh.s32 Q1, Q0, r6
// input[32]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 32)]
vadd.s32 Q6, Q6, Q5
// Release input[176] from Q5
// input[128]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -124)]
vsub.s32 Q4, Q3, Q2
// input[116]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 116)]
vadd.s32 Q3, Q3, Q2
// Release input[32] from Q2
vmul.u32 Q0, Q0, r5
vsub.s32 Q2, Q3, Q6
// input[20]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 20)]
vqrdmlah.s32 Q1, Q0, r12
vstrw.u32 Q2, [r0,#(320)]
vadd.s32 Q3, Q3, Q6
// Release input[80] from Q6
vstrw.u32 Q3, [r14,#(-496)]
// Release input[128] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(-304)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r0,#(128)]
// input[20]: Already loaded as Q7
// input[116]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vqrdmulh.s32 Q1, Q0, r6
// input[164]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -88)]
vadd.s32 Q7, Q7, Q5
// Release input[116] from Q5
// input[68]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 68)]
vsub.s32 Q4, Q3, Q2
// input[56]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 56)]
vadd.s32 Q3, Q3, Q2
// Release input[164] from Q2
vmul.u32 Q0, Q0, r5
vsub.s32 Q2, Q3, Q7
// input[152]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * -100)]
vqrdmlah.s32 Q1, Q0, r12
vstrw.u32 Q2, [r0,#(80)]
vadd.s32 Q3, Q3, Q7
// Release input[20] from Q7
vstrw.u32 Q3, [r0,#(272)]
// Release input[68] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r0,#(464)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(-352)]
// input[152]: Already loaded as Q6
// input[56]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vqrdmulh.s32 Q1, Q0, r6
// input[104]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 104)]
vadd.s32 Q6, Q6, Q5
// Release input[56] from Q5
// input[8]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 8)]
vsub.s32 Q4, Q3, Q2
// input[188]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -64)]
vadd.s32 Q3, Q3, Q2
// Release input[104] from Q2
vmul.u32 Q0, Q0, r5
vsub.s32 Q2, Q3, Q6
// input[92]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 92)]
vqrdmlah.s32 Q1, Q0, r12
vstrw.u32 Q2, [r14,#(-400)]
vadd.s32 Q3, Q3, Q6
// Release input[152] from Q6
vstrw.u32 Q3, [r0,#(32)]
// Release input[8] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r0,#(224)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r0,#(416)]
// input[92]: Already loaded as Q7
// input[188]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vqrdmulh.s32 Q1, Q0, r6
// input[44]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 44)]
vadd.s32 Q7, Q7, Q5
// Release input[188] from Q5
// input[140]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -112)]
vsub.s32 Q4, Q3, Q2
// input[12]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 12)]
vadd.s32 Q3, Q3, Q2
// Release input[44] from Q2
vmul.u32 Q0, Q0, r5
vsub.s32 Q2, Q3, Q7
// input[132]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * -120)]
vqrdmlah.s32 Q1, Q0, r12
vstrw.u32 Q2, [r0,#(368)]
vadd.s32 Q3, Q3, Q7
// Release input[92] from Q7
vstrw.u32 Q3, [r14,#(-448)]
// Release input[140] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(-256)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r0,#(176)]
ldrd r10, r9, [r11], #+8
ldrd r8, r7, [r11], #+8
ldrd r6, r5, [r11], #+8
// input[12]: Already loaded as Q5
vqrdmulh.s32 Q0, Q5, r10
// input[72]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 72)]
vmul.u32 Q5, Q5, r9
// input[132]: Already loaded as Q6
vqrdmlah.s32 Q0, Q5, r12
vqrdmulh.s32 Q2, Q1, r10
vsub.s32 Q5, Q6, Q0
vmul.u32 Q1, Q1, r9
vadd.s32 Q6, Q6, Q0
vqrdmlah.s32 Q2, Q1, r12
// input[0]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 0)]
vqrdmulh.s32 Q3, Q5, r6
vsub.s32 Q1, Q0, Q2
vmul.u32 Q5, Q5, r5
vadd.s32 Q0, Q0, Q2
vqrdmlah.s32 Q3, Q5, r12
// input[76]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 76)]
vqrdmulh.s32 Q4, Q6, r8
vsub.s32 Q5, Q1, Q3
vmul.u32 Q6, Q6, r7
vadd.s32 Q1, Q1, Q3
vstrw.u32 Q5, [r0,#(48)]
// Release input[12] from Q5
vqrdmlah.s32 Q4, Q6, r12
vstrw.u32 Q1, [r0,#(288)]
// Release input[72] from Q1
vsub.s32 Q6, Q0, Q4
vstrw.u32 Q6, [r14,#(-480)]
// Release input[132] from Q6
vadd.s32 Q0, Q0, Q4
// input[76]: Already loaded as Q2
vqrdmulh.s32 Q1, Q2, r10
// input[136]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -116)]
vmul.u32 Q2, Q2, r9
// input[4]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 4)]
vqrdmlah.s32 Q1, Q2, r12
vstrw.u32 Q0, [r0,#(0)]
// Release input[0] from Q0
vqrdmulh.s32 Q0, Q3, r10
vsub.s32 Q2, Q4, Q1
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q0, Q3, r12
// input[64]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 64)]
vqrdmulh.s32 Q5, Q2, r6
vsub.s32 Q3, Q1, Q0
vmul.u32 Q2, Q2, r5
vadd.s32 Q1, Q1, Q0
vqrdmlah.s32 Q5, Q2, r12
// input[140]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -112)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r0,#(304)]
// Release input[76] from Q2
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r14,#(-464)]
// Release input[136] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r0,#(16)]
// Release input[4] from Q4
vadd.s32 Q1, Q1, Q6
// input[140]: Already loaded as Q0
vqrdmulh.s32 Q2, Q0, r10
// input[8]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 8)]
vmul.u32 Q0, Q0, r9
// input[68]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 68)]
vqrdmlah.s32 Q2, Q0, r12
vstrw.u32 Q1, [r0,#(256)]
// Release input[64] from Q1
vqrdmulh.s32 Q1, Q3, r10
vsub.s32 Q0, Q4, Q2
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q1, Q3, r12
// input[128]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -124)]
vqrdmulh.s32 Q5, Q0, r6
vsub.s32 Q3, Q2, Q1
vmul.u32 Q0, Q0, r5
vadd.s32 Q2, Q2, Q1
vqrdmlah.s32 Q5, Q0, r12
// input[156]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -96)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(-448)]
// Release input[140] from Q0
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
// input[156]: Already loaded as Q1
vqrdmulh.s32 Q0, Q1, r10
// input[24]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 24)]
vmul.u32 Q1, Q1, r9
// input[84]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 84)]
vqrdmlah.s32 Q0, Q1, r12
vstrw.u32 Q2, [r14,#(-496)]
// Release input[128] from Q2
vqrdmulh.s32 Q2, Q3, r10
vsub.s32 Q1, Q4, Q0
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q2, Q3, r12
// input[144]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -108)]
vqrdmulh.s32 Q5, Q1, r6
vsub.s32 Q3, Q0, Q2
vmul.u32 Q1, Q1, r5
vadd.s32 Q0, Q0, Q2
vqrdmlah.s32 Q5, Q1, r12
// input[28]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 28)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(-384)]
// Release input[156] from Q1
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r0,#(96)]
// Release input[24] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r0,#(336)]
// Release input[84] from Q4
vadd.s32 Q0, Q0, Q6
// input[28]: Already loaded as Q2
vqrdmulh.s32 Q1, Q2, r10
// input[88]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 88)]
vmul.u32 Q2, Q2, r9
// input[148]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -104)]
vqrdmlah.s32 Q1, Q2, r12
vstrw.u32 Q0, [r14,#(-432)]
// Release input[144] from Q0
vqrdmulh.s32 Q0, Q3, r10
vsub.s32 Q2, Q4, Q1
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q0, Q3, r12
// input[16]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 16)]
vqrdmulh.s32 Q5, Q2, r6
vsub.s32 Q3, Q1, Q0
vmul.u32 Q2, Q2, r5
vadd.s32 Q1, Q1, Q0
vqrdmlah.s32 Q5, Q2, r12
// input[92]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 92)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r0,#(112)]
// Release input[28] from Q2
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r0,#(352)]
// Release input[88] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r14,#(-416)]
// Release input[148] from Q4
vadd.s32 Q1, Q1, Q6
// input[92]: Already loaded as Q0
vqrdmulh.s32 Q2, Q0, r10
// input[152]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -100)]
vmul.u32 Q0, Q0, r9
// input[20]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 20)]
vqrdmlah.s32 Q2, Q0, r12
vstrw.u32 Q1, [r0,#(64)]
// Release input[16] from Q1
vqrdmulh.s32 Q1, Q3, r10
vsub.s32 Q0, Q4, Q2
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q1, Q3, r12
// input[80]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 80)]
vqrdmulh.s32 Q5, Q0, r6
vsub.s32 Q3, Q2, Q1
vmul.u32 Q0, Q0, r5
vadd.s32 Q2, Q2, Q1
vqrdmlah.s32 Q5, Q0, r12
// input[108]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 108)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r0,#(368)]
// Release input[92] from Q0
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
// input[108]: Already loaded as Q1
vqrdmulh.s32 Q0, Q1, r10
// input[168]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -84)]
vmul.u32 Q1, Q1, r9
// input[36]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 36)]
vqrdmlah.s32 Q0, Q1, r12
vstrw.u32 Q2, [r0,#(320)]
// Release input[80] from Q2
vqrdmulh.s32 Q2, Q3, r10
vsub.s32 Q1, Q4, Q0
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q2, Q3, r12
// input[96]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 96)]
vqrdmulh.s32 Q5, Q1, r6
vsub.s32 Q3, Q0, Q2
vmul.u32 Q1, Q1, r5
vadd.s32 Q0, Q0, Q2
vqrdmlah.s32 Q5, Q1, r12
// input[172]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -80)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r0,#(432)]
// Release input[108] from Q1
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r14,#(-336)]
// Release input[168] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r0,#(144)]
// Release input[36] from Q4
vadd.s32 Q0, Q0, Q6
// input[172]: Already loaded as Q2
vqrdmulh.s32 Q1, Q2, r10
// input[40]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 40)]
vmul.u32 Q2, Q2, r9
// input[100]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 100)]
vqrdmlah.s32 Q1, Q2, r12
vstrw.u32 Q0, [r0,#(384)]
// Release input[96] from Q0
vqrdmulh.s32 Q0, Q3, r10
vsub.s32 Q2, Q4, Q1
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q0, Q3, r12
// input[160]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -92)]
vqrdmulh.s32 Q5, Q2, r6
vsub.s32 Q3, Q1, Q0
vmul.u32 Q2, Q2, r5
vadd.s32 Q1, Q1, Q0
vqrdmlah.s32 Q5, Q2, r12
// input[44]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 44)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(-320)]
// Release input[172] from Q2
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r0,#(160)]
// Release input[40] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r0,#(400)]
// Release input[100] from Q4
vadd.s32 Q1, Q1, Q6
// input[44]: Already loaded as Q0
vqrdmulh.s32 Q2, Q0, r10
// input[104]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 104)]
vmul.u32 Q0, Q0, r9
// input[164]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -88)]
vqrdmlah.s32 Q2, Q0, r12
vstrw.u32 Q1, [r14,#(-368)]
// Release input[160] from Q1
vqrdmulh.s32 Q1, Q3, r10
vsub.s32 Q0, Q4, Q2
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q1, Q3, r12
// input[32]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 32)]
vqrdmulh.s32 Q5, Q0, r6
vsub.s32 Q3, Q2, Q1
vmul.u32 Q0, Q0, r5
vadd.s32 Q2, Q2, Q1
vqrdmlah.s32 Q5, Q0, r12
// input[60]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 60)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r0,#(176)]
// Release input[44] from Q0
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
// input[60]: Already loaded as Q1
vqrdmulh.s32 Q0, Q1, r10
// input[120]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 120)]
vmul.u32 Q1, Q1, r9
// input[180]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -72)]
vqrdmlah.s32 Q0, Q1, r12
vstrw.u32 Q2, [r0,#(128)]
// Release input[32] from Q2
vqrdmulh.s32 Q2, Q3, r10
vsub.s32 Q1, Q4, Q0
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q2, Q3, r12
// input[48]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 48)]
vqrdmulh.s32 Q5, Q1, r6
vsub.s32 Q3, Q0, Q2
vmul.u32 Q1, Q1, r5
vadd.s32 Q0, Q0, Q2
vqrdmlah.s32 Q5, Q1, r12
// input[124]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 124)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r0,#(240)]
// Release input[60] from Q1
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r0,#(480)]
// Release input[120] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(-288)]
// Release input[180] from Q4
vadd.s32 Q0, Q0, Q6
// input[124]: Already loaded as Q2
vqrdmulh.s32 Q1, Q2, r10
// input[184]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -68)]
vmul.u32 Q2, Q2, r9
// input[52]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 52)]
vqrdmlah.s32 Q1, Q2, r12
vstrw.u32 Q0, [r0,#(192)]
// Release input[48] from Q0
vqrdmulh.s32 Q0, Q3, r10
vsub.s32 Q2, Q4, Q1
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q0, Q3, r12
// input[112]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 112)]
vqrdmulh.s32 Q5, Q2, r6
vsub.s32 Q3, Q1, Q0
vmul.u32 Q2, Q2, r5
vadd.s32 Q1, Q1, Q0
vqrdmlah.s32 Q5, Q2, r12
// input[188]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -64)]
vqrdmulh.s32 Q6, Q4, r8
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r0,#(496)]
// Release input[124] from Q2
vqrdmlah.s32 Q6, Q4, r12
vstrw.u32 Q3, [r14,#(-272)]
// Release input[184] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r0,#(208)]
// Release input[52] from Q4
vadd.s32 Q1, Q1, Q6
// input[188]: Already loaded as Q0
vqrdmulh.s32 Q2, Q0, r10
// input[56]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 56)]
vmul.u32 Q0, Q0, r9
// input[116]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 116)]
vqrdmlah.s32 Q2, Q0, r12
vstrw.u32 Q1, [r0,#(448)]
// Release input[112] from Q1
vqrdmulh.s32 Q1, Q3, r10
vsub.s32 Q0, Q4, Q2
vmul.u32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q1, Q3, r12
// input[176]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -76)]
vqrdmulh.s32 Q5, Q0, r6
vsub.s32 Q3, Q2, Q1
vmul.u32 Q0, Q0, r5
vadd.s32 Q2, Q2, Q1
vqrdmlah.s32 Q5, Q0, r12
vqrdmulh.s32 Q1, Q4, r8
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(-256)]
// Release input[188] from Q0
vqrdmlah.s32 Q1, Q4, r12
vstrw.u32 Q3, [r0,#(224)]
// Release input[56] from Q3
vsub.s32 Q4, Q2, Q1
vstrw.u32 Q4, [r0,#(464)]
// Release input[116] from Q4
vadd.s32 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(-304)]
// Release input[176] from Q2
.equ modulus_inv, 3844538047
movw r10, #:lower16:modulus_inv
movt r10, #:upper16:modulus_inv
// Restore MVE vector registers
vpop {d8-d15}
// Restore GPRs
pop {r4-r11,lr}
bx lr

// Line count:        1357
// Instruction count: 998