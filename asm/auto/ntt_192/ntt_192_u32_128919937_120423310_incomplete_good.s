
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
.global ntt_192_u32_128919937_120423310_incomplete_good_twiddles
ntt_192_u32_128919937_120423310_incomplete_good_twiddles: // For base multiplication
.word  151081339 // zeta^  0 * 2^31 = 120423310^  0 * 2^31 = 1 * 2^31
.word 2922143493 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 120423310^  0 * 1521161857 * 2^31
.word  204918473 // zeta^160 * 2^31 = 120423310^160 * 2^31 = 2223848 * 2^31
.word 1482262199 // zeta^160 * f(q^(-1) mod 2^32) * 2^31 = 120423310^160 * 1521161857 * 2^31
.word   64661425 // zeta^ 80 * 2^31 = 120423310^ 80 * 2^31 = 107269247 * 2^31
.word  120408527 // zeta^ 80 * f(q^(-1) mod 2^32) * 2^31 = 120423310^ 80 * 1521161857 * 2^31
.word   11853537 // zeta^ 48 * 2^31 = 120423310^ 48 * 2^31 = 14136207 * 2^31
.word  526998175 // zeta^ 48 * f(q^(-1) mod 2^32) * 2^31 = 120423310^ 48 * 1521161857 * 2^31
.word  210375303 // zeta^136 * 2^31 = 120423310^136 * 2^31 = 58374830 * 2^31
.word 4205318137 // zeta^136 * f(q^(-1) mod 2^32) * 2^31 = 120423310^136 * 1521161857 * 2^31
.word  109569101 // zeta^104 * 2^31 = 120423310^104 * 2^31 = 44864068 * 2^31
.word 1987598131 // zeta^104 * f(q^(-1) mod 2^32) * 2^31 = 120423310^104 * 1521161857 * 2^31
.word  170126629 // zeta^ 24 * 2^31 = 120423310^ 24 * 2^31 = 38212281 * 2^31
.word 1674400347 // zeta^ 24 * f(q^(-1) mod 2^32) * 2^31 = 120423310^ 24 * 1521161857 * 2^31
.word  225931657 // zeta^184 * 2^31 = 120423310^184 * 2^31 = 83604053 * 2^31
.word 4069196791 // zeta^184 * f(q^(-1) mod 2^32) * 2^31 = 120423310^184 * 1521161857 * 2^31
.word  255490897 // zeta^ 68 * 2^31 = 120423310^ 68 * 2^31 = 56394291 * 2^31
.word 1943266863 // zeta^ 68 * f(q^(-1) mod 2^32) * 2^31 = 120423310^ 68 * 1521161857 * 2^31
.word  196963681 // zeta^ 36 * 2^31 = 120423310^ 36 * 2^31 = 47897664 * 2^31
.word 2757397535 // zeta^ 36 * f(q^(-1) mod 2^32) * 2^31 = 120423310^ 36 * 1521161857 * 2^31
.word  249336559 // zeta^148 * 2^31 = 120423310^148 * 2^31 = 13888621 * 2^31
.word 1653894033 // zeta^148 * f(q^(-1) mod 2^32) * 2^31 = 120423310^148 * 1521161857 * 2^31
.word   25222977 // zeta^116 * 2^31 = 120423310^116 * 2^31 = 59206896 * 2^31
.word  812968511 // zeta^116 * f(q^(-1) mod 2^32) * 2^31 = 120423310^116 * 1521161857 * 2^31
.word   45743345 // zeta^ 12 * 2^31 = 120423310^ 12 * 2^31 = 74458359 * 2^31
.word 4119843983 // zeta^ 12 * f(q^(-1) mod 2^32) * 2^31 = 120423310^ 12 * 1521161857 * 2^31
.word   36202655 // zeta^172 * 2^31 = 120423310^172 * 2^31 = 79182254 * 2^31
.word 2825952737 // zeta^172 * f(q^(-1) mod 2^32) * 2^31 = 120423310^172 * 1521161857 * 2^31
.word  221269965 // zeta^ 92 * 2^31 = 120423310^ 92 * 2^31 = 120320932 * 2^31
.word 3554487219 // zeta^ 92 * f(q^(-1) mod 2^32) * 2^31 = 120423310^ 92 * 1521161857 * 2^31
.word     268193 // zeta^ 60 * 2^31 = 120423310^ 60 * 2^31 = 72023844 * 2^31
.word 1096630751 // zeta^ 60 * f(q^(-1) mod 2^32) * 2^31 = 120423310^ 60 * 1521161857 * 2^31
.word   52921401 // zeta^ 64 * 2^31 = 120423310^ 64 * 2^31 = 126696089 * 2^31
.word 2812705095 // zeta^ 64 * f(q^(-1) mod 2^32) * 2^31 = 120423310^ 64 * 1521161857 * 2^31
.word   75082803 // zeta^ 32 * 2^31 = 120423310^ 32 * 2^31 = 126696090 * 2^31
.word 1439881293 // zeta^ 32 * f(q^(-1) mod 2^32) * 2^31 = 120423310^ 32 * 1521161857 * 2^31
.word  245986337 // zeta^144 * 2^31 = 120423310^144 * 2^31 = 114783730 * 2^31
.word 3767969119 // zeta^144 * f(q^(-1) mod 2^32) * 2^31 = 120423310^144 * 1521161857 * 2^31
.word  181727825 // zeta^112 * 2^31 = 120423310^112 * 2^31 = 93133040 * 2^31
.word 3888377647 // zeta^112 * f(q^(-1) mod 2^32) * 2^31 = 120423310^112 * 1521161857 * 2^31
.word  148270773 // zeta^  8 * 2^31 = 120423310^  8 * 2^31 = 84055869 * 2^31
.word 2307369163 // zeta^  8 * f(q^(-1) mod 2^32) * 2^31 = 120423310^  8 * 1521161857 * 2^31
.word  229726139 // zeta^168 * 2^31 = 120423310^168 * 2^31 = 13510762 * 2^31
.word 2217720005 // zeta^168 * f(q^(-1) mod 2^32) * 2^31 = 120423310^168 * 1521161857 * 2^31
.word   31908217 // zeta^ 88 * 2^31 = 120423310^ 88 * 2^31 = 45315884 * 2^31
.word  225770503 // zeta^ 88 * f(q^(-1) mod 2^32) * 2^31 = 120423310^ 88 * 1521161857 * 2^31
.word   73114909 // zeta^ 56 * 2^31 = 120423310^ 56 * 2^31 = 83528165 * 2^31
.word 1900170851 // zeta^ 56 * f(q^(-1) mod 2^32) * 2^31 = 120423310^ 56 * 1521161857 * 2^31
.word   60876193 // zeta^132 * 2^31 = 120423310^132 * 2^31 = 81022273 * 2^31
.word 1537569759 // zeta^132 * f(q^(-1) mod 2^32) * 2^31 = 120423310^132 * 1521161857 * 2^31
.word  187447153 // zeta^100 * 2^31 = 120423310^100 * 2^31 = 8496627 * 2^31
.word 3480836623 // zeta^100 * f(q^(-1) mod 2^32) * 2^31 = 120423310^100 * 1521161857 * 2^31
.word  232616897 // zeta^ 20 * 2^31 = 120423310^ 20 * 2^31 = 69713041 * 2^31
.word 3481998783 // zeta^ 20 * f(q^(-1) mod 2^32) * 2^31 = 120423310^ 20 * 1521161857 * 2^31
.word   95193645 // zeta^180 * 2^31 = 120423310^180 * 2^31 = 83601662 * 2^31
.word  840925523 // zeta^180 * f(q^(-1) mod 2^32) * 2^31 = 120423310^180 * 1521161857 * 2^31
.word  221637219 // zeta^ 76 * 2^31 = 120423310^ 76 * 2^31 = 49737683 * 2^31
.word 1469014557 // zeta^ 76 * f(q^(-1) mod 2^32) * 2^31 = 120423310^ 76 * 1521161857 * 2^31
.word  138460627 // zeta^ 44 * 2^31 = 120423310^ 44 * 2^31 = 124196042 * 2^31
.word 1293891245 // zeta^ 44 * f(q^(-1) mod 2^32) * 2^31 = 120423310^ 44 * 1521161857 * 2^31
.word  257571681 // zeta^156 * 2^31 = 120423310^156 * 2^31 = 56896093 * 2^31
.word 3198336543 // zeta^156 * f(q^(-1) mod 2^32) * 2^31 = 120423310^156 * 1521161857 * 2^31
.word   92081835 // zeta^124 * 2^31 = 120423310^124 * 2^31 = 48297088 * 2^31
.word 2457856469 // zeta^124 * f(q^(-1) mod 2^32) * 2^31 = 120423310^124 * 1521161857 * 2^31
.word  182757071 // zeta^128 * 2^31 = 120423310^128 * 2^31 = 2223847 * 2^31
.word 2855086001 // zeta^128 * f(q^(-1) mod 2^32) * 2^31 = 120423310^128 * 1521161857 * 2^31
.word  106758535 // zeta^ 96 * 2^31 = 120423310^ 96 * 2^31 = 128919936 * 2^31
.word 1372823801 // zeta^ 96 * f(q^(-1) mod 2^32) * 2^31 = 120423310^ 96 * 1521161857 * 2^31
.word   76112049 // zeta^ 16 * 2^31 = 120423310^ 16 * 2^31 = 35786897 * 2^31
.word  406589647 // zeta^ 16 * f(q^(-1) mod 2^32) * 2^31 = 120423310^ 16 * 1521161857 * 2^31
.word  193178449 // zeta^176 * 2^31 = 120423310^176 * 2^31 = 21650690 * 2^31
.word 4174558767 // zeta^176 * f(q^(-1) mod 2^32) * 2^31 = 120423310^176 * 1521161857 * 2^31
.word   28113735 // zeta^ 72 * 2^31 = 120423310^ 72 * 2^31 = 115409175 * 2^31
.word 2077247289 // zeta^ 72 * f(q^(-1) mod 2^32) * 2^31 = 120423310^ 72 * 1521161857 * 2^31
.word   47464571 // zeta^ 40 * 2^31 = 120423310^ 40 * 2^31 = 70545107 * 2^31
.word   89649157 // zeta^ 40 * f(q^(-1) mod 2^32) * 2^31 = 120423310^ 40 * 1521161857 * 2^31
.word  184724965 // zeta^152 * 2^31 = 120423310^152 * 2^31 = 45391772 * 2^31
.word 2394796443 // zeta^152 * f(q^(-1) mod 2^32) * 2^31 = 120423310^152 * 1521161857 * 2^31
.word   87713245 // zeta^120 * 2^31 = 120423310^120 * 2^31 = 90707656 * 2^31
.word 2620566947 // zeta^120 * f(q^(-1) mod 2^32) * 2^31 = 120423310^120 * 1521161857 * 2^31
.word   70392721 // zeta^  4 * 2^31 = 120423310^  4 * 2^31 = 120423310 * 2^31
.word  814130671 // zeta^  4 * f(q^(-1) mod 2^32) * 2^31 = 120423310^  4 * 1521161857 * 2^31
.word    2348977 // zeta^164 * 2^31 = 120423310^164 * 2^31 = 72525646 * 2^31
.word 2351700431 // zeta^164 * f(q^(-1) mod 2^32) * 2^31 = 120423310^164 * 1521161857 * 2^31
.word  162646229 // zeta^ 84 * 2^31 = 120423310^ 84 * 2^31 = 45318275 * 2^31
.word 3454041771 // zeta^ 84 * f(q^(-1) mod 2^32) * 2^31 = 120423310^ 84 * 1521161857 * 2^31
.word    8503315 // zeta^ 52 * 2^31 = 120423310^ 52 * 2^31 = 115031316 * 2^31
.word 2641073261 // zeta^ 52 * f(q^(-1) mod 2^32) * 2^31 = 120423310^ 52 * 1521161857 * 2^31
.word  119379247 // zeta^140 * 2^31 = 120423310^140 * 2^31 = 4723895 * 2^31
.word 3001076049 // zeta^140 * f(q^(-1) mod 2^32) * 2^31 = 120423310^140 * 1521161857 * 2^31
.word  212096529 // zeta^108 * 2^31 = 120423310^108 * 2^31 = 54461578 * 2^31
.word  175123311 // zeta^108 * f(q^(-1) mod 2^32) * 2^31 = 120423310^108 * 1521161857 * 2^31
.word  165758039 // zeta^ 28 * 2^31 = 120423310^ 28 * 2^31 = 80622849 * 2^31
.word 1837110825 // zeta^ 28 * f(q^(-1) mod 2^32) * 2^31 = 120423310^ 28 * 1521161857 * 2^31
.word   36569909 // zeta^188 * 2^31 = 120423310^188 * 2^31 = 8599005 * 2^31
.word  740480075 // zeta^188 * f(q^(-1) mod 2^32) * 2^31 = 120423310^188 * 1521161857 * 2^31
// End of twiddles for base multiplication

.global ntt_192_u32_128919937_120423310_incomplete_good_scale
ntt_192_u32_128919937_120423310_incomplete_good_scale: // Constants for scaling by 1/N
.word 151081339 // 1/48
.word 2922143493 // 1/48 twisted
.data
roots:
.word  126696089 /// zeta^ 64 * 2^31 = 120423310^ 64 * 2^31 = 126696089 * 2^31
.word 2110439903 /// zeta^ 64 * f(q^(-1) mod 2^32) * 2^31 = 120423310^ 64 * 1521161857 * 2^31
.word    2223847 /// zeta^128 * 2^31 = 120423310^128 * 2^31 = 2223847 * 2^31
.word   37043728 /// zeta^128 * f(q^(-1) mod 2^32) * 2^31 = 120423310^128 * 1521161857 * 2^31
.word          1 // zeta^  0 * 2^31 = 120423310^  0 * 2^31 = 1 * 2^31
.word         17 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 120423310^  0 * 1521161857 * 2^31
.word          1 // zeta^  0 * 2^31 = 120423310^  0 * 2^31 = 1 * 2^31
.word         17 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 120423310^  0 * 1521161857 * 2^31
.word  114783730 // zeta^144 * 2^31 = 120423310^144 * 2^31 = 114783730 * 2^31
.word 1912009802 // zeta^144 * f(q^(-1) mod 2^32) * 2^31 = 120423310^144 * 1521161857 * 2^31
.word          1 // zeta^  0 * 2^31 = 120423310^  0 * 2^31 = 1 * 2^31
.word         17 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 120423310^  0 * 1521161857 * 2^31
.word          1 // zeta^  0 * 2^31 = 120423310^  0 * 2^31 = 1 * 2^31
.word         17 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 120423310^  0 * 1521161857 * 2^31
.word  114783730 // zeta^144 * 2^31 = 120423310^144 * 2^31 = 114783730 * 2^31
.word 1912009802 // zeta^144 * f(q^(-1) mod 2^32) * 2^31 = 120423310^144 * 1521161857 * 2^31
.word  114783730 // zeta^144 * 2^31 = 120423310^144 * 2^31 = 114783730 * 2^31
.word 1912009802 // zeta^144 * f(q^(-1) mod 2^32) * 2^31 = 120423310^144 * 1521161857 * 2^31
.word  115409175 // zeta^ 72 * 2^31 = 120423310^ 72 * 2^31 = 115409175 * 2^31
.word 1922428151 // zeta^ 72 * f(q^(-1) mod 2^32) * 2^31 = 120423310^ 72 * 1521161857 * 2^31
.word   38212281 // zeta^ 24 * 2^31 = 120423310^ 24 * 2^31 = 38212281 * 2^31
.word  636521011 // zeta^ 24 * f(q^(-1) mod 2^32) * 2^31 = 120423310^ 24 * 1521161857 * 2^31
.word  115409175 // zeta^ 72 * 2^31 = 120423310^ 72 * 2^31 = 115409175 * 2^31
.word 1922428151 // zeta^ 72 * f(q^(-1) mod 2^32) * 2^31 = 120423310^ 72 * 1521161857 * 2^31
.word   81022273 // zeta^132 * 2^31 = 120423310^132 * 2^31 = 81022273 * 2^31
.word 1349628385 // zeta^132 * f(q^(-1) mod 2^32) * 2^31 = 120423310^132 * 1521161857 * 2^31
.word   45318275 // zeta^ 84 * 2^31 = 120423310^ 84 * 2^31 = 45318275 * 2^31
.word  754889095 // zeta^ 84 * f(q^(-1) mod 2^32) * 2^31 = 120423310^ 84 * 1521161857 * 2^31
.word   38212281 // zeta^ 24 * 2^31 = 120423310^ 24 * 2^31 = 38212281 * 2^31
.word  636521011 // zeta^ 24 * f(q^(-1) mod 2^32) * 2^31 = 120423310^ 24 * 1521161857 * 2^31
.word   74458359 // zeta^ 12 * 2^31 = 120423310^ 12 * 2^31 = 74458359 * 2^31
.word 1240289998 // zeta^ 12 * f(q^(-1) mod 2^32) * 2^31 = 120423310^ 12 * 1521161857 * 2^31
.word   56896093 // zeta^156 * 2^31 = 120423310^156 * 2^31 = 56896093 * 2^31
.word  947746580 // zeta^156 * f(q^(-1) mod 2^32) * 2^31 = 120423310^156 * 1521161857 * 2^31
.text
.align 4
roots_addr: .word roots
.syntax unified
.type ntt_192_u32_128919937_120423310_incomplete_good, %function
.global ntt_192_u32_128919937_120423310_incomplete_good
ntt_192_u32_128919937_120423310_incomplete_good:
// Save GPRs
push {r4-r11,lr}
// Save MVE vector registers
vpush {d8-d15}
// Use r14 as marker for r0 + 1008
add r14, r0, #1008
.equ modulus, -128919937
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
vmul.u32 Q3, Q2, r10
vadd.s32 Q5, Q0, Q1
// Release input[64] from Q0
vqrdmulh.s32 Q4, Q2, r9
// input[0]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 0)]
vmla.s32 Q3, Q4, r12
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
vmul.u32 Q2, Q0, r10
vadd.s32 Q4, Q1, Q7
// Release input[4] from Q1
vqrdmulh.s32 Q3, Q0, r9
// input[132]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -120)]
vmla.s32 Q2, Q3, r12
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
vmul.u32 Q1, Q0, r10
vadd.s32 Q3, Q5, Q7
// Release input[136] from Q5
vqrdmulh.s32 Q2, Q0, r9
// input[72]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 72)]
vmla.s32 Q1, Q2, r12
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
vmul.u32 Q1, Q0, r10
vadd.s32 Q3, Q5, Q7
// Release input[76] from Q5
vqrdmulh.s32 Q2, Q0, r9
// input[12]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 12)]
vmla.s32 Q1, Q2, r12
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
vmul.u32 Q1, Q0, r10
vadd.s32 Q3, Q5, Q7
// Release input[16] from Q5
vqrdmulh.s32 Q2, Q0, r9
// input[144]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -108)]
vmla.s32 Q1, Q2, r12
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
vmul.u32 Q1, Q0, r10
vadd.s32 Q3, Q5, Q7
// Release input[148] from Q5
vqrdmulh.s32 Q2, Q0, r9
// input[84]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 84)]
vmla.s32 Q1, Q2, r12
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
vmul.u32 Q1, Q0, r10
vadd.s32 Q3, Q5, Q7
// Release input[88] from Q5
vqrdmulh.s32 Q2, Q0, r9
// input[24]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 24)]
vmla.s32 Q1, Q2, r12
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
vmul.u32 Q1, Q0, r10
vadd.s32 Q3, Q5, Q7
// Release input[28] from Q5
vqrdmulh.s32 Q2, Q0, r9
// input[156]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -96)]
vmla.s32 Q1, Q2, r12
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
vmul.u32 Q1, Q0, r10
vadd.s32 Q3, Q5, Q7
// Release input[160] from Q5
vqrdmulh.s32 Q2, Q0, r9
// input[96]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 96)]
vmla.s32 Q1, Q2, r12
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
vmul.u32 Q1, Q0, r10
vadd.s32 Q3, Q5, Q7
// Release input[100] from Q5
vqrdmulh.s32 Q2, Q0, r9
// input[36]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 36)]
vmla.s32 Q1, Q2, r12
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
vmul.u32 Q1, Q0, r10
vadd.s32 Q3, Q5, Q7
// Release input[40] from Q5
vqrdmulh.s32 Q2, Q0, r9
// input[168]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -84)]
vmla.s32 Q1, Q2, r12
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
vmul.u32 Q1, Q0, r10
vadd.s32 Q3, Q5, Q7
// Release input[172] from Q5
vqrdmulh.s32 Q2, Q0, r9
// input[108]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 108)]
vmla.s32 Q1, Q2, r12
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
vmul.u32 Q1, Q0, r10
vadd.s32 Q3, Q5, Q7
// Release input[112] from Q5
vqrdmulh.s32 Q2, Q0, r9
// input[48]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 48)]
vmla.s32 Q1, Q2, r12
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
vmul.u32 Q1, Q0, r10
vadd.s32 Q3, Q5, Q7
// Release input[52] from Q5
vqrdmulh.s32 Q2, Q0, r9
// input[180]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -72)]
vmla.s32 Q1, Q2, r12
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
vmul.u32 Q1, Q0, r10
vadd.s32 Q3, Q5, Q7
// Release input[184] from Q5
vqrdmulh.s32 Q2, Q0, r9
// input[120]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 120)]
vmla.s32 Q1, Q2, r12
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
vmul.u32 Q1, Q0, r10
vadd.s32 Q3, Q5, Q7
// Release input[124] from Q5
vqrdmulh.s32 Q2, Q0, r9
// input[60]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 60)]
vmla.s32 Q1, Q2, r12
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
vmul.u32 Q3, Q2, r6
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
vqrdmulh.s32 Q2, Q2, r5
vsub.s32 Q4, Q1, Q0
// input[84]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 84)]
vmla.s32 Q3, Q2, r12
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
vmul.u32 Q1, Q0, r6
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
vqrdmulh.s32 Q0, Q0, r5
vsub.s32 Q2, Q3, Q7
// input[24]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 24)]
vmla.s32 Q1, Q0, r12
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
vmul.u32 Q1, Q0, r6
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
vqrdmulh.s32 Q0, Q0, r5
vsub.s32 Q2, Q3, Q6
// input[156]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -96)]
vmla.s32 Q1, Q0, r12
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
vmul.u32 Q1, Q0, r6
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
vqrdmulh.s32 Q0, Q0, r5
vsub.s32 Q2, Q3, Q7
// input[16]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 16)]
vmla.s32 Q1, Q0, r12
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
vmul.u32 Q1, Q0, r6
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
vqrdmulh.s32 Q0, Q0, r5
vsub.s32 Q2, Q3, Q6
// input[148]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -104)]
vmla.s32 Q1, Q0, r12
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
vmul.u32 Q1, Q0, r6
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
vqrdmulh.s32 Q0, Q0, r5
vsub.s32 Q2, Q3, Q7
// input[88]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 88)]
vmla.s32 Q1, Q0, r12
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
vmul.u32 Q1, Q0, r6
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
vqrdmulh.s32 Q0, Q0, r5
vsub.s32 Q2, Q3, Q6
// input[28]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 28)]
vmla.s32 Q1, Q0, r12
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
vmul.u32 Q1, Q0, r6
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
vqrdmulh.s32 Q0, Q0, r5
vsub.s32 Q2, Q3, Q7
// input[80]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 80)]
vmla.s32 Q1, Q0, r12
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
vmul.u32 Q1, Q0, r6
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
vqrdmulh.s32 Q0, Q0, r5
vsub.s32 Q2, Q3, Q6
// input[20]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 20)]
vmla.s32 Q1, Q0, r12
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
vmul.u32 Q1, Q0, r6
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
vqrdmulh.s32 Q0, Q0, r5
vsub.s32 Q2, Q3, Q7
// input[152]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * -100)]
vmla.s32 Q1, Q0, r12
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
vmul.u32 Q1, Q0, r6
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
vqrdmulh.s32 Q0, Q0, r5
vsub.s32 Q2, Q3, Q6
// input[92]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 92)]
vmla.s32 Q1, Q0, r12
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
vmul.u32 Q1, Q0, r6
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
vqrdmulh.s32 Q0, Q0, r5
vsub.s32 Q2, Q3, Q7
// input[132]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * -120)]
vmla.s32 Q1, Q0, r12
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
vmul.u32 Q0, Q5, r10
// input[72]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 72)]
vqrdmulh.s32 Q5, Q5, r9
// input[132]: Already loaded as Q6
vmla.s32 Q0, Q5, r12
vmul.u32 Q2, Q1, r10
vsub.s32 Q5, Q6, Q0
vqrdmulh.s32 Q1, Q1, r9
vadd.s32 Q6, Q6, Q0
vmla.s32 Q2, Q1, r12
// input[0]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 0)]
vmul.u32 Q3, Q5, r6
vsub.s32 Q1, Q0, Q2
vqrdmulh.s32 Q5, Q5, r5
vadd.s32 Q0, Q0, Q2
vmla.s32 Q3, Q5, r12
// input[76]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 76)]
vmul.u32 Q4, Q6, r8
vsub.s32 Q5, Q1, Q3
vqrdmulh.s32 Q6, Q6, r7
vadd.s32 Q1, Q1, Q3
vstrw.u32 Q5, [r0,#(48)]
// Release input[12] from Q5
vmla.s32 Q4, Q6, r12
vstrw.u32 Q1, [r0,#(288)]
// Release input[72] from Q1
vsub.s32 Q6, Q0, Q4
vstrw.u32 Q6, [r14,#(-480)]
// Release input[132] from Q6
vadd.s32 Q0, Q0, Q4
// input[76]: Already loaded as Q2
vmul.u32 Q1, Q2, r10
// input[136]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -116)]
vqrdmulh.s32 Q2, Q2, r9
// input[4]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 4)]
vmla.s32 Q1, Q2, r12
vstrw.u32 Q0, [r0,#(0)]
// Release input[0] from Q0
vmul.u32 Q0, Q3, r10
vsub.s32 Q2, Q4, Q1
vqrdmulh.s32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q1
vmla.s32 Q0, Q3, r12
// input[64]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 64)]
vmul.u32 Q5, Q2, r6
vsub.s32 Q3, Q1, Q0
vqrdmulh.s32 Q2, Q2, r5
vadd.s32 Q1, Q1, Q0
vmla.s32 Q5, Q2, r12
// input[140]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -112)]
vmul.u32 Q6, Q4, r8
vsub.s32 Q2, Q3, Q5
vqrdmulh.s32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r0,#(304)]
// Release input[76] from Q2
vmla.s32 Q6, Q4, r12
vstrw.u32 Q3, [r14,#(-464)]
// Release input[136] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r0,#(16)]
// Release input[4] from Q4
vadd.s32 Q1, Q1, Q6
// input[140]: Already loaded as Q0
vmul.u32 Q2, Q0, r10
// input[8]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 8)]
vqrdmulh.s32 Q0, Q0, r9
// input[68]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 68)]
vmla.s32 Q2, Q0, r12
vstrw.u32 Q1, [r0,#(256)]
// Release input[64] from Q1
vmul.u32 Q1, Q3, r10
vsub.s32 Q0, Q4, Q2
vqrdmulh.s32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q2
vmla.s32 Q1, Q3, r12
// input[128]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -124)]
vmul.u32 Q5, Q0, r6
vsub.s32 Q3, Q2, Q1
vqrdmulh.s32 Q0, Q0, r5
vadd.s32 Q2, Q2, Q1
vmla.s32 Q5, Q0, r12
// input[156]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -96)]
vmul.u32 Q6, Q4, r8
vsub.s32 Q0, Q3, Q5
vqrdmulh.s32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(-448)]
// Release input[140] from Q0
vmla.s32 Q6, Q4, r12
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
vmul.u32 Q0, Q1, r10
// input[24]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 24)]
vqrdmulh.s32 Q1, Q1, r9
// input[84]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 84)]
vmla.s32 Q0, Q1, r12
vstrw.u32 Q2, [r14,#(-496)]
// Release input[128] from Q2
vmul.u32 Q2, Q3, r10
vsub.s32 Q1, Q4, Q0
vqrdmulh.s32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q0
vmla.s32 Q2, Q3, r12
// input[144]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -108)]
vmul.u32 Q5, Q1, r6
vsub.s32 Q3, Q0, Q2
vqrdmulh.s32 Q1, Q1, r5
vadd.s32 Q0, Q0, Q2
vmla.s32 Q5, Q1, r12
// input[28]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 28)]
vmul.u32 Q6, Q4, r8
vsub.s32 Q1, Q3, Q5
vqrdmulh.s32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(-384)]
// Release input[156] from Q1
vmla.s32 Q6, Q4, r12
vstrw.u32 Q3, [r0,#(96)]
// Release input[24] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r0,#(336)]
// Release input[84] from Q4
vadd.s32 Q0, Q0, Q6
// input[28]: Already loaded as Q2
vmul.u32 Q1, Q2, r10
// input[88]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 88)]
vqrdmulh.s32 Q2, Q2, r9
// input[148]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -104)]
vmla.s32 Q1, Q2, r12
vstrw.u32 Q0, [r14,#(-432)]
// Release input[144] from Q0
vmul.u32 Q0, Q3, r10
vsub.s32 Q2, Q4, Q1
vqrdmulh.s32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q1
vmla.s32 Q0, Q3, r12
// input[16]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 16)]
vmul.u32 Q5, Q2, r6
vsub.s32 Q3, Q1, Q0
vqrdmulh.s32 Q2, Q2, r5
vadd.s32 Q1, Q1, Q0
vmla.s32 Q5, Q2, r12
// input[92]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 92)]
vmul.u32 Q6, Q4, r8
vsub.s32 Q2, Q3, Q5
vqrdmulh.s32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r0,#(112)]
// Release input[28] from Q2
vmla.s32 Q6, Q4, r12
vstrw.u32 Q3, [r0,#(352)]
// Release input[88] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r14,#(-416)]
// Release input[148] from Q4
vadd.s32 Q1, Q1, Q6
// input[92]: Already loaded as Q0
vmul.u32 Q2, Q0, r10
// input[152]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -100)]
vqrdmulh.s32 Q0, Q0, r9
// input[20]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 20)]
vmla.s32 Q2, Q0, r12
vstrw.u32 Q1, [r0,#(64)]
// Release input[16] from Q1
vmul.u32 Q1, Q3, r10
vsub.s32 Q0, Q4, Q2
vqrdmulh.s32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q2
vmla.s32 Q1, Q3, r12
// input[80]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 80)]
vmul.u32 Q5, Q0, r6
vsub.s32 Q3, Q2, Q1
vqrdmulh.s32 Q0, Q0, r5
vadd.s32 Q2, Q2, Q1
vmla.s32 Q5, Q0, r12
// input[108]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 108)]
vmul.u32 Q6, Q4, r8
vsub.s32 Q0, Q3, Q5
vqrdmulh.s32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r0,#(368)]
// Release input[92] from Q0
vmla.s32 Q6, Q4, r12
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
vmul.u32 Q0, Q1, r10
// input[168]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -84)]
vqrdmulh.s32 Q1, Q1, r9
// input[36]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 36)]
vmla.s32 Q0, Q1, r12
vstrw.u32 Q2, [r0,#(320)]
// Release input[80] from Q2
vmul.u32 Q2, Q3, r10
vsub.s32 Q1, Q4, Q0
vqrdmulh.s32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q0
vmla.s32 Q2, Q3, r12
// input[96]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 96)]
vmul.u32 Q5, Q1, r6
vsub.s32 Q3, Q0, Q2
vqrdmulh.s32 Q1, Q1, r5
vadd.s32 Q0, Q0, Q2
vmla.s32 Q5, Q1, r12
// input[172]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -80)]
vmul.u32 Q6, Q4, r8
vsub.s32 Q1, Q3, Q5
vqrdmulh.s32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r0,#(432)]
// Release input[108] from Q1
vmla.s32 Q6, Q4, r12
vstrw.u32 Q3, [r14,#(-336)]
// Release input[168] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r0,#(144)]
// Release input[36] from Q4
vadd.s32 Q0, Q0, Q6
// input[172]: Already loaded as Q2
vmul.u32 Q1, Q2, r10
// input[40]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 40)]
vqrdmulh.s32 Q2, Q2, r9
// input[100]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 100)]
vmla.s32 Q1, Q2, r12
vstrw.u32 Q0, [r0,#(384)]
// Release input[96] from Q0
vmul.u32 Q0, Q3, r10
vsub.s32 Q2, Q4, Q1
vqrdmulh.s32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q1
vmla.s32 Q0, Q3, r12
// input[160]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -92)]
vmul.u32 Q5, Q2, r6
vsub.s32 Q3, Q1, Q0
vqrdmulh.s32 Q2, Q2, r5
vadd.s32 Q1, Q1, Q0
vmla.s32 Q5, Q2, r12
// input[44]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 44)]
vmul.u32 Q6, Q4, r8
vsub.s32 Q2, Q3, Q5
vqrdmulh.s32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(-320)]
// Release input[172] from Q2
vmla.s32 Q6, Q4, r12
vstrw.u32 Q3, [r0,#(160)]
// Release input[40] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r0,#(400)]
// Release input[100] from Q4
vadd.s32 Q1, Q1, Q6
// input[44]: Already loaded as Q0
vmul.u32 Q2, Q0, r10
// input[104]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 104)]
vqrdmulh.s32 Q0, Q0, r9
// input[164]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -88)]
vmla.s32 Q2, Q0, r12
vstrw.u32 Q1, [r14,#(-368)]
// Release input[160] from Q1
vmul.u32 Q1, Q3, r10
vsub.s32 Q0, Q4, Q2
vqrdmulh.s32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q2
vmla.s32 Q1, Q3, r12
// input[32]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 32)]
vmul.u32 Q5, Q0, r6
vsub.s32 Q3, Q2, Q1
vqrdmulh.s32 Q0, Q0, r5
vadd.s32 Q2, Q2, Q1
vmla.s32 Q5, Q0, r12
// input[60]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 60)]
vmul.u32 Q6, Q4, r8
vsub.s32 Q0, Q3, Q5
vqrdmulh.s32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r0,#(176)]
// Release input[44] from Q0
vmla.s32 Q6, Q4, r12
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
vmul.u32 Q0, Q1, r10
// input[120]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 120)]
vqrdmulh.s32 Q1, Q1, r9
// input[180]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -72)]
vmla.s32 Q0, Q1, r12
vstrw.u32 Q2, [r0,#(128)]
// Release input[32] from Q2
vmul.u32 Q2, Q3, r10
vsub.s32 Q1, Q4, Q0
vqrdmulh.s32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q0
vmla.s32 Q2, Q3, r12
// input[48]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 48)]
vmul.u32 Q5, Q1, r6
vsub.s32 Q3, Q0, Q2
vqrdmulh.s32 Q1, Q1, r5
vadd.s32 Q0, Q0, Q2
vmla.s32 Q5, Q1, r12
// input[124]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 124)]
vmul.u32 Q6, Q4, r8
vsub.s32 Q1, Q3, Q5
vqrdmulh.s32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r0,#(240)]
// Release input[60] from Q1
vmla.s32 Q6, Q4, r12
vstrw.u32 Q3, [r0,#(480)]
// Release input[120] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(-288)]
// Release input[180] from Q4
vadd.s32 Q0, Q0, Q6
// input[124]: Already loaded as Q2
vmul.u32 Q1, Q2, r10
// input[184]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -68)]
vqrdmulh.s32 Q2, Q2, r9
// input[52]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 52)]
vmla.s32 Q1, Q2, r12
vstrw.u32 Q0, [r0,#(192)]
// Release input[48] from Q0
vmul.u32 Q0, Q3, r10
vsub.s32 Q2, Q4, Q1
vqrdmulh.s32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q1
vmla.s32 Q0, Q3, r12
// input[112]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 112)]
vmul.u32 Q5, Q2, r6
vsub.s32 Q3, Q1, Q0
vqrdmulh.s32 Q2, Q2, r5
vadd.s32 Q1, Q1, Q0
vmla.s32 Q5, Q2, r12
// input[188]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -64)]
vmul.u32 Q6, Q4, r8
vsub.s32 Q2, Q3, Q5
vqrdmulh.s32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r0,#(496)]
// Release input[124] from Q2
vmla.s32 Q6, Q4, r12
vstrw.u32 Q3, [r14,#(-272)]
// Release input[184] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r0,#(208)]
// Release input[52] from Q4
vadd.s32 Q1, Q1, Q6
// input[188]: Already loaded as Q0
vmul.u32 Q2, Q0, r10
// input[56]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 56)]
vqrdmulh.s32 Q0, Q0, r9
// input[116]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 116)]
vmla.s32 Q2, Q0, r12
vstrw.u32 Q1, [r0,#(448)]
// Release input[112] from Q1
vmul.u32 Q1, Q3, r10
vsub.s32 Q0, Q4, Q2
vqrdmulh.s32 Q3, Q3, r9
vadd.s32 Q4, Q4, Q2
vmla.s32 Q1, Q3, r12
// input[176]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -76)]
vmul.u32 Q5, Q0, r6
vsub.s32 Q3, Q2, Q1
vqrdmulh.s32 Q0, Q0, r5
vadd.s32 Q2, Q2, Q1
vmla.s32 Q5, Q0, r12
vmul.u32 Q1, Q4, r8
vsub.s32 Q0, Q3, Q5
vqrdmulh.s32 Q4, Q4, r7
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(-256)]
// Release input[188] from Q0
vmla.s32 Q1, Q4, r12
vstrw.u32 Q3, [r0,#(224)]
// Release input[56] from Q3
vsub.s32 Q4, Q2, Q1
vstrw.u32 Q4, [r0,#(464)]
// Release input[116] from Q4
vadd.s32 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(-304)]
// Release input[176] from Q2
.equ modulus_inv, 2773805439
movw r10, #:lower16:modulus_inv
movt r10, #:upper16:modulus_inv
// Restore MVE vector registers
vpop {d8-d15}
// Restore GPRs
pop {r4-r11,lr}
bx lr

// Line count:        1357
// Instruction count: 998