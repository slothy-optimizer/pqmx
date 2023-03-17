
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
.global ntt_192_u32_114826273_107284677_incomplete_good_oop_half_input_twiddles
ntt_192_u32_114826273_107284677_incomplete_good_oop_half_input_twiddles: // For base multiplication
.word  172045843 // zeta^  0 * 2^31 = 107284677^  0 * 2^31 = 1 * 2^31
.word 3105084493 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 107284677^  0 * 553543649 * 2^31
.word   89562401 // zeta^160 * 2^31 = 107284677^160 * 2^31 = 71938546 * 2^31
.word 1860804351 // zeta^160 * f(q^(-1) mod 2^32) * 2^31 = 107284677^160 * 553543649 * 2^31
.word   78731003 // zeta^ 80 * 2^31 = 107284677^ 80 * 2^31 = 1326612 * 2^31
.word 3642331237 // zeta^ 80 * f(q^(-1) mod 2^32) * 2^31 = 107284677^ 80 * 553543649 * 2^31
.word   21975303 // zeta^ 48 * 2^31 = 107284677^ 48 * 2^31 = 11544119 * 2^31
.word 2864576473 // zeta^ 48 * f(q^(-1) mod 2^32) * 2^31 = 107284677^ 48 * 553543649 * 2^31
.word  168650109 // zeta^136 * 2^31 = 107284677^136 * 2^31 = 85313027 * 2^31
.word 1952350755 // zeta^136 * f(q^(-1) mod 2^32) * 2^31 = 107284677^136 * 553543649 * 2^31
.word   92010389 // zeta^104 * 2^31 = 107284677^104 * 2^31 = 79315144 * 2^31
.word  127431435 // zeta^104 * f(q^(-1) mod 2^32) * 2^31 = 107284677^104 * 553543649 * 2^31
.word  121600131 // zeta^ 24 * 2^31 = 107284677^ 24 * 2^31 = 32481077 * 2^31
.word  633364445 // zeta^ 24 * f(q^(-1) mod 2^32) * 2^31 = 107284677^ 24 * 553543649 * 2^31
.word   35578973 // zeta^184 * 2^31 = 107284677^184 * 2^31 = 55506216 * 2^31
.word 2159140675 // zeta^184 * f(q^(-1) mod 2^32) * 2^31 = 107284677^184 * 553543649 * 2^31
.word   55680185 // zeta^ 68 * 2^31 = 107284677^ 68 * 2^31 = 46436470 * 2^31
.word 2678641255 // zeta^ 68 * f(q^(-1) mod 2^32) * 2^31 = 107284677^ 68 * 553543649 * 2^31
.word  184439943 // zeta^ 36 * 2^31 = 107284677^ 36 * 2^31 = 38894874 * 2^31
.word 1149461593 // zeta^ 36 * f(q^(-1) mod 2^32) * 2^31 = 107284677^ 36 * 553543649 * 2^31
.word  212208961 // zeta^148 * 2^31 = 107284677^148 * 2^31 = 31137870 * 2^31
.word 3426431711 // zeta^148 * f(q^(-1) mod 2^32) * 2^31 = 107284677^148 * 553543649 * 2^31
.word   36836787 // zeta^116 * 2^31 = 107284677^116 * 2^31 = 72551608 * 2^31
.word   61204653 // zeta^116 * f(q^(-1) mod 2^32) * 2^31 = 107284677^116 * 553543649 * 2^31
.word   24016093 // zeta^ 12 * 2^31 = 107284677^ 12 * 2^31 = 106011292 * 2^31
.word 3114294979 // zeta^ 12 * f(q^(-1) mod 2^32) * 2^31 = 107284677^ 12 * 553543649 * 2^31
.word  162365217 // zeta^172 * 2^31 = 107284677^172 * 2^31 = 18107895 * 2^31
.word 1839135999 // zeta^172 * f(q^(-1) mod 2^32) * 2^31 = 107284677^172 * 553543649 * 2^31
.word  224634063 // zeta^ 92 * 2^31 = 107284677^ 92 * 2^31 = 77720494 * 2^31
.word 3199917329 // zeta^ 92 * f(q^(-1) mod 2^32) * 2^31 = 107284677^ 92 * 553543649 * 2^31
.word   44136757 // zeta^ 60 * 2^31 = 107284677^ 60 * 2^31 = 35185048 * 2^31
.word 3585746283 // zeta^ 60 * f(q^(-1) mod 2^32) * 2^31 = 107284677^ 60 * 553543649 * 2^31
.word  140090145 // zeta^ 64 * 2^31 = 107284677^ 64 * 2^31 = 42887727 * 2^31
.word 2434162943 // zeta^ 64 * f(q^(-1) mod 2^32) * 2^31 = 107284677^ 64 * 553543649 * 2^31
.word  197309715 // zeta^ 32 * 2^31 = 107284677^ 32 * 2^31 = 42887728 * 2^31
.word 1244280141 // zeta^ 32 * f(q^(-1) mod 2^32) * 2^31 = 107284677^ 32 * 553543649 * 2^31
.word  207677243 // zeta^144 * 2^31 = 107284677^144 * 2^31 = 103282154 * 2^31
.word 1430390821 // zeta^144 * f(q^(-1) mod 2^32) * 2^31 = 107284677^144 * 553543649 * 2^31
.word  171581973 // zeta^112 * 2^31 = 107284677^112 * 2^31 = 104608766 * 2^31
.word  777754763 // zeta^112 * f(q^(-1) mod 2^32) * 2^31 = 107284677^112 * 553543649 * 2^31
.word  137642157 // zeta^  8 * 2^31 = 107284677^  8 * 2^31 = 35511129 * 2^31
.word 4167535859 // zeta^  8 * f(q^(-1) mod 2^32) * 2^31 = 107284677^  8 * 553543649 * 2^31
.word  191465993 // zeta^168 * 2^31 = 107284677^168 * 2^31 = 5997883 * 2^31
.word 1824919319 // zeta^168 * f(q^(-1) mod 2^32) * 2^31 = 107284677^168 * 553543649 * 2^31
.word  194073573 // zeta^ 88 * 2^31 = 107284677^ 88 * 2^31 = 59320057 * 2^31
.word 2135826619 // zeta^ 88 * f(q^(-1) mod 2^32) * 2^31 = 107284677^ 88 * 553543649 * 2^31
.word  200847431 // zeta^ 56 * 2^31 = 107284677^ 56 * 2^31 = 91801134 * 2^31
.word 2769191065 // zeta^ 56 * f(q^(-1) mod 2^32) * 2^31 = 107284677^ 56 * 553543649 * 2^31
.word   45212603 // zeta^132 * 2^31 = 107284677^132 * 2^31 = 75931399 * 2^31
.word 3145505701 // zeta^132 * f(q^(-1) mod 2^32) * 2^31 = 107284677^132 * 553543649 * 2^31
.word  215719061 // zeta^100 * 2^31 = 107284677^100 * 2^31 = 7541596 * 2^31
.word 1529179659 // zeta^100 * f(q^(-1) mod 2^32) * 2^31 = 107284677^100 * 553543649 * 2^31
.word  192815759 // zeta^ 20 * 2^31 = 107284677^ 20 * 2^31 = 42274665 * 2^31
.word 4233762641 // zeta^ 20 * f(q^(-1) mod 2^32) * 2^31 = 107284677^ 20 * 553543649 * 2^31
.word   60545901 // zeta^180 * 2^31 = 107284677^180 * 2^31 = 73412535 * 2^31
.word 3365227059 // zeta^180 * f(q^(-1) mod 2^32) * 2^31 = 107284677^180 * 553543649 * 2^31
.word   67287329 // zeta^ 76 * 2^31 = 107284677^ 76 * 2^31 = 96718378 * 2^31
.word 2455831295 // zeta^ 76 * f(q^(-1) mod 2^32) * 2^31 = 107284677^ 76 * 553543649 * 2^31
.word  206129695 // zeta^ 44 * 2^31 = 107284677^ 44 * 2^31 = 87903397 * 2^31
.word 1275158977 // zeta^ 44 * f(q^(-1) mod 2^32) * 2^31 = 107284677^ 44 * 553543649 * 2^31
.word  185515789 // zeta^156 * 2^31 = 107284677^156 * 2^31 = 79641225 * 2^31
.word  709221011 // zeta^156 * f(q^(-1) mod 2^32) * 2^31 = 107284677^156 * 553543649 * 2^31
.word   65671033 // zeta^124 * 2^31 = 107284677^124 * 2^31 = 42535446 * 2^31
.word 3909138343 // zeta^124 * f(q^(-1) mod 2^32) * 2^31 = 107284677^124 * 553543649 * 2^31
.word   32342831 // zeta^128 * 2^31 = 107284677^128 * 2^31 = 71938545 * 2^31
.word 3050687153 // zeta^128 * f(q^(-1) mod 2^32) * 2^31 = 107284677^128 * 553543649 * 2^31
.word   57606703 // zeta^ 96 * 2^31 = 107284677^ 96 * 2^31 = 114826272 * 2^31
.word 1189882801 // zeta^ 96 * f(q^(-1) mod 2^32) * 2^31 = 107284677^ 96 * 553543649 * 2^31
.word   58070573 // zeta^ 16 * 2^31 = 107284677^ 16 * 2^31 = 10217507 * 2^31
.word 3517212531 // zeta^ 16 * f(q^(-1) mod 2^32) * 2^31 = 107284677^ 16 * 553543649 * 2^31
.word  150921543 // zeta^176 * 2^31 = 107284677^176 * 2^31 = 113499661 * 2^31
.word  652636057 // zeta^176 * f(q^(-1) mod 2^32) * 2^31 = 107284677^176 * 553543649 * 2^31
.word   38186553 // zeta^ 72 * 2^31 = 107284677^ 72 * 2^31 = 108828390 * 2^31
.word 2470047975 // zeta^ 72 * f(q^(-1) mod 2^32) * 2^31 = 107284677^ 72 * 553543649 * 2^31
.word   61002437 // zeta^ 40 * 2^31 = 107284677^ 40 * 2^31 = 29513246 * 2^31
.word 2342616539 // zeta^ 40 * f(q^(-1) mod 2^32) * 2^31 = 107284677^ 40 * 553543649 * 2^31
.word   28805115 // zeta^152 * 2^31 = 107284677^152 * 2^31 = 23025139 * 2^31
.word 1525776229 // zeta^152 * f(q^(-1) mod 2^32) * 2^31 = 107284677^152 * 553543649 * 2^31
.word  108052415 // zeta^120 * 2^31 = 107284677^120 * 2^31 = 82345196 * 2^31
.word 3661602849 // zeta^120 * f(q^(-1) mod 2^32) * 2^31 = 107284677^120 * 553543649 * 2^31
.word   13933485 // zeta^  4 * 2^31 = 107284677^  4 * 2^31 = 107284677 * 2^31
.word 2765787635 // zeta^  4 * f(q^(-1) mod 2^32) * 2^31 = 107284677^  4 * 553543649 * 2^31
.word  173972361 // zeta^164 * 2^31 = 107284677^164 * 2^31 = 68389803 * 2^31
.word 1616326039 // zeta^164 * f(q^(-1) mod 2^32) * 2^31 = 107284677^164 * 553543649 * 2^31
.word  169106645 // zeta^ 84 * 2^31 = 107284677^ 84 * 2^31 = 41413738 * 2^31
.word  929740235 // zeta^ 84 * f(q^(-1) mod 2^32) * 2^31 = 107284677^ 84 * 553543649 * 2^31
.word   17443585 // zeta^ 52 * 2^31 = 107284677^ 52 * 2^31 = 83688403 * 2^31
.word  868535583 // zeta^ 52 * f(q^(-1) mod 2^32) * 2^31 = 107284677^ 52 * 553543649 * 2^31
.word   23522851 // zeta^140 * 2^31 = 107284677^140 * 2^31 = 26922876 * 2^31
.word 3019808317 // zeta^140 * f(q^(-1) mod 2^32) * 2^31 = 107284677^140 * 553543649 * 2^31
.word  205636453 // zeta^108 * 2^31 = 107284677^108 * 2^31 = 8814981 * 2^31
.word 1180672315 // zeta^108 * f(q^(-1) mod 2^32) * 2^31 = 107284677^108 * 553543649 * 2^31
.word  163981513 // zeta^ 28 * 2^31 = 107284677^ 28 * 2^31 = 72290827 * 2^31
.word  385828951 // zeta^ 28 * f(q^(-1) mod 2^32) * 2^31 = 107284677^ 28 * 553543649 * 2^31
.word    5018483 // zeta^188 * 2^31 = 107284677^188 * 2^31 = 37105779 * 2^31
.word 1095049965 // zeta^188 * f(q^(-1) mod 2^32) * 2^31 = 107284677^188 * 553543649 * 2^31
// End of twiddles for base multiplication

.global ntt_192_u32_114826273_107284677_incomplete_good_oop_half_input_scale
ntt_192_u32_114826273_107284677_incomplete_good_oop_half_input_scale: // Constants for scaling by 1/N
.word 172045843 // 1/48
.word 3105084493 // 1/48 twisted
.data
roots:
.word   42887727 /// zeta^ 64 * 2^31 = 107284677^ 64 * 2^31 = 42887727 * 2^31
.word  802087275 /// zeta^ 64 * f(q^(-1) mod 2^32) * 2^31 = 107284677^ 64 * 553543649 * 2^31
.word   71938545 /// zeta^128 * 2^31 = 107284677^128 * 2^31 = 71938545 * 2^31
.word 1345396354 /// zeta^128 * f(q^(-1) mod 2^32) * 2^31 = 107284677^128 * 553543649 * 2^31
.word          1 // zeta^  0 * 2^31 = 107284677^  0 * 2^31 = 1 * 2^31
.word         19 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 107284677^  0 * 553543649 * 2^31
.word          1 // zeta^  0 * 2^31 = 107284677^  0 * 2^31 = 1 * 2^31
.word         19 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 107284677^  0 * 553543649 * 2^31
.word  103282154 // zeta^144 * 2^31 = 107284677^144 * 2^31 = 103282154 * 2^31
.word 1931585264 // zeta^144 * f(q^(-1) mod 2^32) * 2^31 = 107284677^144 * 553543649 * 2^31
.word          1 // zeta^  0 * 2^31 = 107284677^  0 * 2^31 = 1 * 2^31
.word         19 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 107284677^  0 * 553543649 * 2^31
.word          1 // zeta^  0 * 2^31 = 107284677^  0 * 2^31 = 1 * 2^31
.word         19 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 107284677^  0 * 553543649 * 2^31
.word  103282154 // zeta^144 * 2^31 = 107284677^144 * 2^31 = 103282154 * 2^31
.word 1931585264 // zeta^144 * f(q^(-1) mod 2^32) * 2^31 = 107284677^144 * 553543649 * 2^31
.word  103282154 // zeta^144 * 2^31 = 107284677^144 * 2^31 = 103282154 * 2^31
.word 1931585264 // zeta^144 * f(q^(-1) mod 2^32) * 2^31 = 107284677^144 * 553543649 * 2^31
.word  108828390 // zeta^ 72 * 2^31 = 107284677^ 72 * 2^31 = 108828390 * 2^31
.word 2035311100 // zeta^ 72 * f(q^(-1) mod 2^32) * 2^31 = 107284677^ 72 * 553543649 * 2^31
.word   32481077 // zeta^ 24 * 2^31 = 107284677^ 24 * 2^31 = 32481077 * 2^31
.word  607461863 // zeta^ 24 * f(q^(-1) mod 2^32) * 2^31 = 107284677^ 24 * 553543649 * 2^31
.word  108828390 // zeta^ 72 * 2^31 = 107284677^ 72 * 2^31 = 108828390 * 2^31
.word 2035311100 // zeta^ 72 * f(q^(-1) mod 2^32) * 2^31 = 107284677^ 72 * 553543649 * 2^31
.word   75931399 // zeta^132 * 2^31 = 107284677^132 * 2^31 = 75931399 * 2^31
.word 1420070803 // zeta^132 * f(q^(-1) mod 2^32) * 2^31 = 107284677^132 * 553543649 * 2^31
.word   41413738 // zeta^ 84 * 2^31 = 107284677^ 84 * 2^31 = 41413738 * 2^31
.word  774520698 // zeta^ 84 * f(q^(-1) mod 2^32) * 2^31 = 107284677^ 84 * 553543649 * 2^31
.word   32481077 // zeta^ 24 * 2^31 = 107284677^ 24 * 2^31 = 32481077 * 2^31
.word  607461863 // zeta^ 24 * f(q^(-1) mod 2^32) * 2^31 = 107284677^ 24 * 553543649 * 2^31
.word  106011292 // zeta^ 12 * 2^31 = 107284677^ 12 * 2^31 = 106011292 * 2^31
.word 1982625667 // zeta^ 12 * f(q^(-1) mod 2^32) * 2^31 = 107284677^ 12 * 553543649 * 2^31
.word   79641225 // zeta^156 * 2^31 = 107284677^156 * 2^31 = 79641225 * 2^31
.word 1489452056 // zeta^156 * f(q^(-1) mod 2^32) * 2^31 = 107284677^156 * 553543649 * 2^31
.text
.align 4
roots_addr: .word roots
.syntax unified
.type ntt_192_u32_114826273_107284677_incomplete_good_oop_half_input, %function
.global ntt_192_u32_114826273_107284677_incomplete_good_oop_half_input
ntt_192_u32_114826273_107284677_incomplete_good_oop_half_input:
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
.equ modulus, -114826273
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
.equ modulus_inv, 3741423647
movw r14, #:lower16:modulus_inv
movt r14, #:upper16:modulus_inv
// Restore MVE vector registers
vpop {d8-d15}
// Restore GPRs
pop {r4-r11,lr}
bx lr

// Line count:        1204
// Instruction count: 900