
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
.global ntt_384_u32_128919937_4666088_incomplete_good_twiddles
ntt_384_u32_128919937_4666088_incomplete_good_twiddles: // For base multiplication
.word   11080701 // zeta^  0 * 2^31 = 4666088^  0 * 2^31 = 1 * 2^31
.word 3608555395 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 4666088^  0 * 1521161857 * 2^31
.word  230921307 // zeta^ 64 * 2^31 = 4666088^ 64 * 2^31 = 126696090 * 2^31
.word  719940645 // zeta^ 64 * f(q^(-1) mod 2^32) * 2^31 = 4666088^ 64 * 1521161857 * 2^31
.word  102515993 // zeta^ 32 * 2^31 = 4666088^ 32 * 2^31 = 35786897 * 2^31
.word 2350778471 // zeta^ 32 * f(q^(-1) mod 2^32) * 2^31 = 4666088^ 32 * 1521161857 * 2^31
.word   70386737 // zeta^ 96 * 2^31 = 4666088^ 96 * 2^31 = 14136207 * 2^31
.word 2410982735 // zeta^ 96 * f(q^(-1) mod 2^32) * 2^31 = 4666088^ 96 * 1521161857 * 2^31
.word  138595355 // zeta^ 16 * 2^31 = 4666088^ 16 * 2^31 = 84055869 * 2^31
.word 1153684581 // zeta^ 16 * f(q^(-1) mod 2^32) * 2^31 = 4666088^ 16 * 1521161857 * 2^31
.word  217112191 // zeta^ 80 * 2^31 = 4666088^ 80 * 2^31 = 70545107 * 2^31
.word 2192308225 // zeta^ 80 * f(q^(-1) mod 2^32) * 2^31 = 4666088^ 80 * 1521161857 * 2^31
.word  149523283 // zeta^ 48 * 2^31 = 4666088^ 48 * 2^31 = 38212281 * 2^31
.word  837200173 // zeta^ 48 * f(q^(-1) mod 2^32) * 2^31 = 4666088^ 48 * 1521161857 * 2^31
.word  101017423 // zeta^112 * 2^31 = 4666088^112 * 2^31 = 83528165 * 2^31
.word 3097569073 // zeta^112 * f(q^(-1) mod 2^32) * 2^31 = 4666088^112 * 1521161857 * 2^31
.word   99656329 // zeta^  8 * 2^31 = 4666088^  8 * 2^31 = 120423310 * 2^31
.word 2554548983 // zeta^  8 * f(q^(-1) mod 2^32) * 2^31 = 4666088^  8 * 1521161857 * 2^31
.word  162941809 // zeta^ 72 * 2^31 = 4666088^ 72 * 2^31 = 47897664 * 2^31
.word 1378698767 // zeta^ 72 * f(q^(-1) mod 2^32) * 2^31 = 4666088^ 72 * 1521161857 * 2^31
.word  180768417 // zeta^ 40 * 2^31 = 4666088^ 40 * 2^31 = 69713041 * 2^31
.word 1740999391 // zeta^ 40 * f(q^(-1) mod 2^32) * 2^31 = 4666088^ 40 * 1521161857 * 2^31
.word  197631563 // zeta^104 * 2^31 = 4666088^104 * 2^31 = 115031316 * 2^31
.word 3468020277 // zeta^104 * f(q^(-1) mod 2^32) * 2^31 = 4666088^104 * 1521161857 * 2^31
.word   87331641 // zeta^ 24 * 2^31 = 4666088^ 24 * 2^31 = 74458359 * 2^31
.word 2059921991 // zeta^ 24 * f(q^(-1) mod 2^32) * 2^31 = 4666088^ 24 * 1521161857 * 2^31
.word    4770345 // zeta^ 88 * 2^31 = 4666088^ 88 * 2^31 = 124196042 * 2^31
.word  646945623 // zeta^ 88 * f(q^(-1) mod 2^32) * 2^31 = 4666088^ 88 * 1521161857 * 2^31
.word   18419051 // zeta^ 56 * 2^31 = 4666088^ 56 * 2^31 = 80622849 * 2^31
.word 3066039061 // zeta^ 56 * f(q^(-1) mod 2^32) * 2^31 = 4666088^ 56 * 1521161857 * 2^31
.word   64594065 // zeta^120 * 2^31 = 4666088^120 * 2^31 = 72023844 * 2^31
.word  548315375 // zeta^120 * f(q^(-1) mod 2^32) * 2^31 = 4666088^120 * 1521161857 * 2^31
.word   56313901 // zeta^  4 * 2^31 = 4666088^  4 * 2^31 = 4666088 * 2^31
.word 1857930067 // zeta^  4 * f(q^(-1) mod 2^32) * 2^31 = 4666088^  4 * 1521161857 * 2^31
.word  100524275 // zeta^ 68 * 2^31 = 4666088^ 68 * 2^31 = 99928594 * 2^31
.word 2037105549 // zeta^ 68 * f(q^(-1) mod 2^32) * 2^31 = 4666088^ 68 * 1521161857 * 2^31
.word  113982537 // zeta^ 36 * 2^31 = 4666088^ 36 * 2^31 = 101970253 * 2^31
.word  765810999 // zeta^ 36 * f(q^(-1) mod 2^32) * 2^31 = 4666088^ 36 * 1521161857 * 2^31
.word   78770821 // zeta^100 * 2^31 = 4666088^100 * 2^31 = 60361599 * 2^31
.word 2527485179 // zeta^100 * f(q^(-1) mod 2^32) * 2^31 = 4666088^100 * 1521161857 * 2^31
.word    8006691 // zeta^ 20 * 2^31 = 4666088^ 20 * 2^31 = 117614805 * 2^31
.word 2034483293 // zeta^ 20 * f(q^(-1) mod 2^32) * 2^31 = 4666088^ 20 * 1521161857 * 2^31
.word  250258415 // zeta^ 84 * 2^31 = 4666088^ 84 * 2^31 = 78048497 * 2^31
.word 3406289553 // zeta^ 84 * f(q^(-1) mod 2^32) * 2^31 = 4666088^ 84 * 1521161857 * 2^31
.word   10390241 // zeta^ 52 * 2^31 = 4666088^ 52 * 2^31 = 49398437 * 2^31
.word  836873887 // zeta^ 52 * f(q^(-1) mod 2^32) * 2^31 = 4666088^ 52 * 1521161857 * 2^31
.word   14031383 // zeta^116 * 2^31 = 4666088^116 * 2^31 = 46189616 * 2^31
.word 2860638313 // zeta^116 * f(q^(-1) mod 2^32) * 2^31 = 4666088^116 * 1521161857 * 2^31
.word  141427479 // zeta^ 12 * 2^31 = 4666088^ 12 * 2^31 = 94340749 * 2^31
.word  636450665 // zeta^ 12 * f(q^(-1) mod 2^32) * 2^31 = 4666088^ 12 * 1521161857 * 2^31
.word    3413487 // zeta^ 76 * 2^31 = 4666088^ 76 * 2^31 = 14874791 * 2^31
.word 3208210577 // zeta^ 76 * f(q^(-1) mod 2^32) * 2^31 = 4666088^ 76 * 1521161857 * 2^31
.word   92531221 // zeta^ 44 * 2^31 = 4666088^ 44 * 2^31 = 8773444 * 2^31
.word  610418027 // zeta^ 44 * f(q^(-1) mod 2^32) * 2^31 = 4666088^ 44 * 1521161857 * 2^31
.word   21375489 // zeta^108 * 2^31 = 4666088^108 * 2^31 = 75066449 * 2^31
.word 3948789631 // zeta^108 * f(q^(-1) mod 2^32) * 2^31 = 4666088^108 * 1521161857 * 2^31
.word  152464147 // zeta^ 28 * 2^31 = 4666088^ 28 * 2^31 = 80969678 * 2^31
.word 1255106925 // zeta^ 28 * f(q^(-1) mod 2^32) * 2^31 = 4666088^ 28 * 1521161857 * 2^31
.word  177837625 // zeta^ 92 * 2^31 = 4666088^ 92 * 2^31 = 105375752 * 2^31
.word  329213767 // zeta^ 92 * f(q^(-1) mod 2^32) * 2^31 = 4666088^ 92 * 1521161857 * 2^31
.word   50081627 // zeta^ 60 * 2^31 = 4666088^ 60 * 2^31 = 33121106 * 2^31
.word  856772901 // zeta^ 60 * f(q^(-1) mod 2^32) * 2^31 = 4666088^ 60 * 1521161857 * 2^31
.word   57615231 // zeta^124 * 2^31 = 4666088^124 * 2^31 = 71071176 * 2^31
.word 1545417473 // zeta^124 * f(q^(-1) mod 2^32) * 2^31 = 4666088^124 * 1521161857 * 2^31
.word   90920669 // zeta^128 * 2^31 = 4666088^128 * 2^31 = 126696089 * 2^31
.word 1406352547 // zeta^128 * f(q^(-1) mod 2^32) * 2^31 = 4666088^128 * 1521161857 * 2^31
.word  246759173 // zeta^192 * 2^31 = 4666088^192 * 2^31 = 128919936 * 2^31
.word  686411899 // zeta^192 * f(q^(-1) mod 2^32) * 2^31 = 4666088^192 * 1521161857 * 2^31
.word   96790681 // zeta^160 * 2^31 = 4666088^160 * 2^31 = 107269247 * 2^31
.word   60204263 // zeta^160 * f(q^(-1) mod 2^32) * 2^31 = 4666088^160 * 1521161857 * 2^31
.word  155323881 // zeta^224 * 2^31 = 4666088^224 * 2^31 = 93133040 * 2^31
.word 1944188823 // zeta^224 * f(q^(-1) mod 2^32) * 2^31 = 4666088^224 * 1521161857 * 2^31
.word  207436773 // zeta^144 * 2^31 = 4666088^144 * 2^31 = 115409175 * 2^31
.word 1038623643 // zeta^144 * f(q^(-1) mod 2^32) * 2^31 = 4666088^144 * 1521161857 * 2^31
.word  119244519 // zeta^208 * 2^31 = 4666088^208 * 2^31 = 44864068 * 2^31
.word 3141282713 // zeta^208 * f(q^(-1) mod 2^32) * 2^31 = 4666088^208 * 1521161857 * 2^31
.word   80414077 // zeta^176 * 2^31 = 4666088^176 * 2^31 = 45315884 * 2^31
.word 2260368899 // zeta^176 * f(q^(-1) mod 2^32) * 2^31 = 4666088^176 * 1521161857 * 2^31
.word  108316591 // zeta^240 * 2^31 = 4666088^240 * 2^31 = 90707656 * 2^31
.word 3457767121 // zeta^240 * f(q^(-1) mod 2^32) * 2^31 = 4666088^240 * 1521161857 * 2^31
.word  192205417 // zeta^136 * 2^31 = 4666088^136 * 2^31 = 56394291 * 2^31
.word 3119117079 // zeta^136 * f(q^(-1) mod 2^32) * 2^31 = 4666088^136 * 1521161857 * 2^31
.word  158183545 // zeta^200 * 2^31 = 4666088^200 * 2^31 = 8496627 * 2^31
.word 1740418311 // zeta^200 * f(q^(-1) mod 2^32) * 2^31 = 4666088^200 * 1521161857 * 2^31
.word  145783083 // zeta^168 * 2^31 = 4666088^168 * 2^31 = 45318275 * 2^31
.word 1727020885 // zeta^168 * f(q^(-1) mod 2^32) * 2^31 = 4666088^168 * 1521161857 * 2^31
.word   77071457 // zeta^232 * 2^31 = 4666088^232 * 2^31 = 59206896 * 2^31
.word 2553967903 // zeta^232 * f(q^(-1) mod 2^32) * 2^31 = 4666088^232 * 1521161857 * 2^31
.word   46358641 // zeta^152 * 2^31 = 4666088^152 * 2^31 = 49737683 * 2^31
.word 2881990927 // zeta^152 * f(q^(-1) mod 2^32) * 2^31 = 4666088^152 * 1521161857 * 2^31
.word  170508233 // zeta^216 * 2^31 = 4666088^216 * 2^31 = 54461578 * 2^31
.word 2235045303 // zeta^216 * f(q^(-1) mod 2^32) * 2^31 = 4666088^216 * 1521161857 * 2^31
.word  175094951 // zeta^184 * 2^31 = 4666088^184 * 2^31 = 120320932 * 2^31
.word 1777243609 // zeta^184 * f(q^(-1) mod 2^32) * 2^31 = 4666088^184 * 1521161857 * 2^31
.word  239420823 // zeta^248 * 2^31 = 4666088^248 * 2^31 = 48297088 * 2^31
.word 1228928233 // zeta^248 * f(q^(-1) mod 2^32) * 2^31 = 4666088^248 * 1521161857 * 2^31
.word  173130311 // zeta^132 * 2^31 = 4666088^132 * 2^31 = 95262506 * 2^31
.word  179175481 // zeta^132 * f(q^(-1) mod 2^32) * 2^31 = 4666088^132 * 1521161857 * 2^31
.word  201525973 // zeta^196 * 2^31 = 4666088^196 * 2^31 = 124253849 * 2^31
.word 2437037227 // zeta^196 * f(q^(-1) mod 2^32) * 2^31 = 4666088^196 * 1521161857 * 2^31
.word   93708221 // zeta^164 * 2^31 = 4666088^164 * 2^31 = 87311283 * 2^31
.word 1761674179 // zeta^164 * f(q^(-1) mod 2^32) * 2^31 = 4666088^164 * 1521161857 * 2^31
.word  143857337 // zeta^228 * 2^31 = 4666088^228 * 2^31 = 26949684 * 2^31
.word 3529156295 // zeta^228 * f(q^(-1) mod 2^32) * 2^31 = 4666088^228 * 1521161857 * 2^31
.word  113331787 // zeta^148 * 2^31 = 4666088^148 * 2^31 = 89353629 * 2^31
.word 1371806261 // zeta^148 * f(q^(-1) mod 2^32) * 2^31 = 4666088^148 * 1521161857 * 2^31
.word  249833183 // zeta^212 * 2^31 = 4666088^212 * 2^31 = 11305132 * 2^31
.word 2260484001 // zeta^212 * f(q^(-1) mod 2^32) * 2^31 = 4666088^212 * 1521161857 * 2^31
.word  132561079 // zeta^180 * 2^31 = 4666088^180 * 2^31 = 125711116 * 2^31
.word 2023764425 // zeta^180 * f(q^(-1) mod 2^32) * 2^31 = 4666088^180 * 1521161857 * 2^31
.word  247449633 // zeta^244 * 2^31 = 4666088^244 * 2^31 = 79521500 * 2^31
.word 3458093407 // zeta^244 * f(q^(-1) mod 2^32) * 2^31 = 4666088^244 * 1521161857 * 2^31
.word  248745819 // zeta^140 * 2^31 = 4666088^140 * 2^31 = 49453979 * 2^31
.word 2571759909 // zeta^140 * f(q^(-1) mod 2^32) * 2^31 = 4666088^140 * 1521161857 * 2^31
.word  116412395 // zeta^204 * 2^31 = 4666088^204 * 2^31 = 34579188 * 2^31
.word 3658516629 // zeta^204 * f(q^(-1) mod 2^32) * 2^31 = 4666088^204 * 1521161857 * 2^31
.word   57764205 // zeta^172 * 2^31 = 4666088^172 * 2^31 = 66293005 * 2^31
.word 3338371603 // zeta^172 * f(q^(-1) mod 2^32) * 2^31 = 4666088^172 * 1521161857 * 2^31
.word  165308653 // zeta^236 * 2^31 = 4666088^236 * 2^31 = 120146493 * 2^31
.word 3684549267 // zeta^236 * f(q^(-1) mod 2^32) * 2^31 = 4666088^236 * 1521161857 * 2^31
.word  154293415 // zeta^156 * 2^31 = 4666088^156 * 2^31 = 24406074 * 2^31
.word 3369074137 // zeta^156 * f(q^(-1) mod 2^32) * 2^31 = 4666088^156 * 1521161857 * 2^31
.word  105375727 // zeta^220 * 2^31 = 4666088^220 * 2^31 = 47950259 * 2^31
.word 3039860369 // zeta^220 * f(q^(-1) mod 2^32) * 2^31 = 4666088^220 * 1521161857 * 2^31
.word  136453541 // zeta^188 * 2^31 = 4666088^188 * 2^31 = 37950070 * 2^31
.word  688644571 // zeta^188 * f(q^(-1) mod 2^32) * 2^31 = 4666088^188 * 1521161857 * 2^31
.word  207758247 // zeta^252 * 2^31 = 4666088^252 * 2^31 = 95798831 * 2^31
.word 3438194393 // zeta^252 * f(q^(-1) mod 2^32) * 2^31 = 4666088^252 * 1521161857 * 2^31
.word   26918567 // zeta^256 * 2^31 = 4666088^256 * 2^31 = 2223847 * 2^31
.word 3575026649 // zeta^256 * f(q^(-1) mod 2^32) * 2^31 = 4666088^256 * 1521161857 * 2^31
.word  166919205 // zeta^320 * 2^31 = 4666088^320 * 2^31 = 2223848 * 2^31
.word 2888614747 // zeta^320 * f(q^(-1) mod 2^32) * 2^31 = 4666088^320 * 1521161857 * 2^31
.word  187453137 // zeta^288 * 2^31 = 4666088^288 * 2^31 = 114783730 * 2^31
.word 1883984559 // zeta^288 * f(q^(-1) mod 2^32) * 2^31 = 4666088^288 * 1521161857 * 2^31
.word  161049193 // zeta^352 * 2^31 = 4666088^352 * 2^31 = 21650690 * 2^31
.word 4234763031 // zeta^352 * f(q^(-1) mod 2^32) * 2^31 = 4666088^352 * 1521161857 * 2^31
.word   40727683 // zeta^272 * 2^31 = 4666088^272 * 2^31 = 58374830 * 2^31
.word 2102659069 // zeta^272 * f(q^(-1) mod 2^32) * 2^31 = 4666088^272 * 1521161857 * 2^31
.word   50403101 // zeta^336 * 2^31 = 4666088^336 * 2^31 = 13510762 * 2^31
.word 3256343651 // zeta^336 * f(q^(-1) mod 2^32) * 2^31 = 4666088^336 * 1521161857 * 2^31
.word  156822451 // zeta^304 * 2^31 = 4666088^304 * 2^31 = 45391772 * 2^31
.word 1197398221 // zeta^304 * f(q^(-1) mod 2^32) * 2^31 = 4666088^304 * 1521161857 * 2^31
.word  177425797 // zeta^368 * 2^31 = 4666088^368 * 2^31 = 83604053 * 2^31
.word 2034598395 // zeta^368 * f(q^(-1) mod 2^32) * 2^31 = 4666088^368 * 1521161857 * 2^31
.word   94898065 // zeta^264 * 2^31 = 4666088^264 * 2^31 = 81022273 * 2^31
.word 2916268527 // zeta^264 * f(q^(-1) mod 2^32) * 2^31 = 4666088^264 * 1521161857 * 2^31
.word   65634457 // zeta^328 * 2^31 = 4666088^328 * 2^31 = 72525646 * 2^31
.word 1175850215 // zeta^328 * f(q^(-1) mod 2^32) * 2^31 = 4666088^328 * 1521161857 * 2^31
.word   60208311 // zeta^296 * 2^31 = 4666088^296 * 2^31 = 13888621 * 2^31
.word  826947017 // zeta^296 * f(q^(-1) mod 2^32) * 2^31 = 4666088^296 * 1521161857 * 2^31
.word  112056791 // zeta^360 * 2^31 = 4666088^360 * 2^31 = 83601662 * 2^31
.word 2567946409 // zeta^360 * f(q^(-1) mod 2^32) * 2^31 = 4666088^360 * 1521161857 * 2^31
.word  253069529 // zeta^280 * 2^31 = 4666088^280 * 2^31 = 4723895 * 2^31
.word 3648021671 // zeta^280 * f(q^(-1) mod 2^32) * 2^31 = 4666088^280 * 1521161857 * 2^31
.word  211481233 // zeta^344 * 2^31 = 4666088^344 * 2^31 = 79182254 * 2^31
.word 1412976367 // zeta^344 * f(q^(-1) mod 2^32) * 2^31 = 4666088^344 * 1521161857 * 2^31
.word  193245809 // zeta^312 * 2^31 = 4666088^312 * 2^31 = 56896093 * 2^31
.word 3746651919 // zeta^312 * f(q^(-1) mod 2^32) * 2^31 = 4666088^312 * 1521161857 * 2^31
.word   82744923 // zeta^376 * 2^31 = 4666088^376 * 2^31 = 8599005 * 2^31
.word 2517723685 // zeta^376 * f(q^(-1) mod 2^32) * 2^31 = 4666088^376 * 1521161857 * 2^31
.word  157315599 // zeta^260 * 2^31 = 4666088^260 * 2^31 = 28991343 * 2^31
.word 2257861745 // zeta^260 * f(q^(-1) mod 2^32) * 2^31 = 4666088^260 * 1521161857 * 2^31
.word   84709563 // zeta^324 * 2^31 = 4666088^324 * 2^31 = 33657431 * 2^31
.word 4115791813 // zeta^324 * f(q^(-1) mod 2^32) * 2^31 = 4666088^324 * 1521161857 * 2^31
.word  179069053 // zeta^292 * 2^31 = 4666088^292 * 2^31 = 68558338 * 2^31
.word 1767482115 // zeta^292 * f(q^(-1) mod 2^32) * 2^31 = 4666088^292 * 1521161857 * 2^31
.word  164131653 // zeta^356 * 2^31 = 4666088^356 * 2^31 = 41608654 * 2^31
.word 2533293115 // zeta^356 * f(q^(-1) mod 2^32) * 2^31 = 4666088^356 * 1521161857 * 2^31
.word    7581459 // zeta^276 * 2^31 = 4666088^276 * 2^31 = 50871440 * 2^31
.word  888677741 // zeta^276 * f(q^(-1) mod 2^32) * 2^31 = 4666088^276 * 1521161857 * 2^31
.word  144508087 // zeta^340 * 2^31 = 4666088^340 * 2^31 = 39566308 * 2^31
.word 2923161033 // zeta^340 * f(q^(-1) mod 2^32) * 2^31 = 4666088^340 * 1521161857 * 2^31
.word  243808491 // zeta^308 * 2^31 = 4666088^308 * 2^31 = 82730321 * 2^31
.word 1434328981 // zeta^308 * f(q^(-1) mod 2^32) * 2^31 = 4666088^308 * 1521161857 * 2^31
.word  125278795 // zeta^372 * 2^31 = 4666088^372 * 2^31 = 3208821 * 2^31
.word 2271202869 // zeta^372 * f(q^(-1) mod 2^32) * 2^31 = 4666088^372 * 1521161857 * 2^31
.word  254426387 // zeta^268 * 2^31 = 4666088^268 * 2^31 = 114045146 * 2^31
.word 1086756717 // zeta^268 * f(q^(-1) mod 2^32) * 2^31 = 4666088^268 * 1521161857 * 2^31
.word    9094055 // zeta^332 * 2^31 = 4666088^332 * 2^31 = 79465958 * 2^31
.word 1723207385 // zeta^332 * f(q^(-1) mod 2^32) * 2^31 = 4666088^332 * 1521161857 * 2^31
.word  236464385 // zeta^300 * 2^31 = 4666088^300 * 2^31 = 53853488 * 2^31
.word  346177663 // zeta^300 * f(q^(-1) mod 2^32) * 2^31 = 4666088^300 * 1521161857 * 2^31
.word  200075669 // zeta^364 * 2^31 = 4666088^364 * 2^31 = 62626932 * 2^31
.word  956595691 // zeta^364 * f(q^(-1) mod 2^32) * 2^31 = 4666088^364 * 1521161857 * 2^31
.word   80002249 // zeta^284 * 2^31 = 4666088^284 * 2^31 = 23544185 * 2^31
.word 3965753527 // zeta^284 * f(q^(-1) mod 2^32) * 2^31 = 4666088^284 * 1521161857 * 2^31
.word  103546459 // zeta^348 * 2^31 = 4666088^348 * 2^31 = 104513863 * 2^31
.word  925893157 // zeta^348 * f(q^(-1) mod 2^32) * 2^31 = 4666088^348 * 1521161857 * 2^31
.word  200224643 // zeta^316 * 2^31 = 4666088^316 * 2^31 = 57848761 * 2^31
.word 2749549821 // zeta^316 * f(q^(-1) mod 2^32) * 2^31 = 4666088^316 * 1521161857 * 2^31
.word  121386333 // zeta^380 * 2^31 = 4666088^380 * 2^31 = 90969867 * 2^31
.word 3606322723 // zeta^380 * f(q^(-1) mod 2^32) * 2^31 = 4666088^380 * 1521161857 * 2^31
// End of twiddles for base multiplication

.global ntt_384_u32_128919937_4666088_incomplete_good_scale
ntt_384_u32_128919937_4666088_incomplete_good_scale: // Constants for scaling by 1/N
.word 11080701 // 1/96
.word 3608555395 // 1/96 twisted
.data
roots:
.word    2223847 /// zeta^256 * 2^31 = 4666088^256 * 2^31 = 2223847 * 2^31
.word   37043728 /// zeta^256 * f(q^(-1) mod 2^32) * 2^31 = 4666088^256 * 1521161857 * 2^31
.word  126696089 /// zeta^128 * 2^31 = 4666088^128 * 2^31 = 126696089 * 2^31
.word 2110439903 /// zeta^128 * f(q^(-1) mod 2^32) * 2^31 = 4666088^128 * 1521161857 * 2^31
.word          1 // zeta^  0 * 2^31 = 4666088^  0 * 2^31 = 1 * 2^31
.word         17 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 4666088^  0 * 1521161857 * 2^31
.word          1 // zeta^  0 * 2^31 = 4666088^  0 * 2^31 = 1 * 2^31
.word         17 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 4666088^  0 * 1521161857 * 2^31
.word  114783730 // zeta^288 * 2^31 = 4666088^288 * 2^31 = 114783730 * 2^31
.word 1912009802 // zeta^288 * f(q^(-1) mod 2^32) * 2^31 = 4666088^288 * 1521161857 * 2^31
.word          1 // zeta^  0 * 2^31 = 4666088^  0 * 2^31 = 1 * 2^31
.word         17 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 4666088^  0 * 1521161857 * 2^31
.word          1 // zeta^  0 * 2^31 = 4666088^  0 * 2^31 = 1 * 2^31
.word         17 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 4666088^  0 * 1521161857 * 2^31
.word  114783730 // zeta^288 * 2^31 = 4666088^288 * 2^31 = 114783730 * 2^31
.word 1912009802 // zeta^288 * f(q^(-1) mod 2^32) * 2^31 = 4666088^288 * 1521161857 * 2^31
.word  114783730 // zeta^288 * 2^31 = 4666088^288 * 2^31 = 114783730 * 2^31
.word 1912009802 // zeta^288 * f(q^(-1) mod 2^32) * 2^31 = 4666088^288 * 1521161857 * 2^31
.word  115409175 // zeta^144 * 2^31 = 4666088^144 * 2^31 = 115409175 * 2^31
.word 1922428151 // zeta^144 * f(q^(-1) mod 2^32) * 2^31 = 4666088^144 * 1521161857 * 2^31
.word   38212281 // zeta^ 48 * 2^31 = 4666088^ 48 * 2^31 = 38212281 * 2^31
.word  636521011 // zeta^ 48 * f(q^(-1) mod 2^32) * 2^31 = 4666088^ 48 * 1521161857 * 2^31
.word  115409175 // zeta^144 * 2^31 = 4666088^144 * 2^31 = 115409175 * 2^31
.word 1922428151 // zeta^144 * f(q^(-1) mod 2^32) * 2^31 = 4666088^144 * 1521161857 * 2^31
.word   81022273 // zeta^264 * 2^31 = 4666088^264 * 2^31 = 81022273 * 2^31
.word 1349628385 // zeta^264 * f(q^(-1) mod 2^32) * 2^31 = 4666088^264 * 1521161857 * 2^31
.word   45318275 // zeta^168 * 2^31 = 4666088^168 * 2^31 = 45318275 * 2^31
.word  754889095 // zeta^168 * f(q^(-1) mod 2^32) * 2^31 = 4666088^168 * 1521161857 * 2^31
.word   38212281 // zeta^ 48 * 2^31 = 4666088^ 48 * 2^31 = 38212281 * 2^31
.word  636521011 // zeta^ 48 * f(q^(-1) mod 2^32) * 2^31 = 4666088^ 48 * 1521161857 * 2^31
.word   74458359 // zeta^ 24 * 2^31 = 4666088^ 24 * 2^31 = 74458359 * 2^31
.word 1240289998 // zeta^ 24 * f(q^(-1) mod 2^32) * 2^31 = 4666088^ 24 * 1521161857 * 2^31
.word   56896093 // zeta^312 * 2^31 = 4666088^312 * 2^31 = 56896093 * 2^31
.word  947746580 // zeta^312 * f(q^(-1) mod 2^32) * 2^31 = 4666088^312 * 1521161857 * 2^31
.word          1 // XX: zeta^  0 * 2^31 = 4666088^  0 * 2^31 = 1 * 2^31
.word         17 /// zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 4666088^  0 * 1521161857 * 2^31
.word  114783730 // XX: zeta^288 * 2^31 = 4666088^288 * 2^31 = 114783730 * 2^31
.word 1912009802 /// zeta^288 * f(q^(-1) mod 2^32) * 2^31 = 4666088^288 * 1521161857 * 2^31
.word  115409175 // XX: zeta^144 * 2^31 = 4666088^144 * 2^31 = 115409175 * 2^31
.word 1922428151 /// zeta^144 * f(q^(-1) mod 2^32) * 2^31 = 4666088^144 * 1521161857 * 2^31
.word   38212281 // XX: zeta^ 48 * 2^31 = 4666088^ 48 * 2^31 = 38212281 * 2^31
.word  636521011 /// zeta^ 48 * f(q^(-1) mod 2^32) * 2^31 = 4666088^ 48 * 1521161857 * 2^31
.word   81022273 // XX: zeta^264 * 2^31 = 4666088^264 * 2^31 = 81022273 * 2^31
.word 1349628385 /// zeta^264 * f(q^(-1) mod 2^32) * 2^31 = 4666088^264 * 1521161857 * 2^31
.word   45318275 // XX: zeta^168 * 2^31 = 4666088^168 * 2^31 = 45318275 * 2^31
.word  754889095 /// zeta^168 * f(q^(-1) mod 2^32) * 2^31 = 4666088^168 * 1521161857 * 2^31
.word   74458359 // XX: zeta^ 24 * 2^31 = 4666088^ 24 * 2^31 = 74458359 * 2^31
.word 1240289998 /// zeta^ 24 * f(q^(-1) mod 2^32) * 2^31 = 4666088^ 24 * 1521161857 * 2^31
.word   56896093 // XX: zeta^312 * 2^31 = 4666088^312 * 2^31 = 56896093 * 2^31
.word  947746580 /// zeta^312 * f(q^(-1) mod 2^32) * 2^31 = 4666088^312 * 1521161857 * 2^31
.word   95262506 // XX: zeta^132 * 2^31 = 4666088^132 * 2^31 = 95262506 * 2^31
.word 1586835044 /// zeta^132 * f(q^(-1) mod 2^32) * 2^31 = 4666088^132 * 1521161857 * 2^31
.word  101970253 // XX: zeta^ 36 * 2^31 = 4666088^ 36 * 2^31 = 101970253 * 2^31
.word 1698569329 /// zeta^ 36 * f(q^(-1) mod 2^32) * 2^31 = 4666088^ 36 * 1521161857 * 2^31
.word   50871440 // XX: zeta^276 * 2^31 = 4666088^276 * 2^31 = 50871440 * 2^31
.word  847390932 /// zeta^276 * f(q^(-1) mod 2^32) * 2^31 = 4666088^276 * 1521161857 * 2^31
.word  125711116 // XX: zeta^180 * 2^31 = 4666088^180 * 2^31 = 125711116 * 2^31
.word 2094032717 /// zeta^180 * f(q^(-1) mod 2^32) * 2^31 = 4666088^180 * 1521161857 * 2^31
.word   94340749 // XX: zeta^ 12 * 2^31 = 4666088^ 12 * 2^31 = 94340749 * 2^31
.word 1571480878 /// zeta^ 12 * f(q^(-1) mod 2^32) * 2^31 = 4666088^ 12 * 1521161857 * 2^31
.word   53853488 // XX: zeta^300 * 2^31 = 4666088^300 * 2^31 = 53853488 * 2^31
.word  897064392 /// zeta^300 * f(q^(-1) mod 2^32) * 2^31 = 4666088^300 * 1521161857 * 2^31
.word   24406074 // XX: zeta^156 * 2^31 = 4666088^156 * 2^31 = 24406074 * 2^31
.word  406544139 /// zeta^156 * f(q^(-1) mod 2^32) * 2^31 = 4666088^156 * 1521161857 * 2^31
.word   33121106 // XX: zeta^ 60 * 2^31 = 4666088^ 60 * 2^31 = 33121106 * 2^31
.word  551714771 /// zeta^ 60 * f(q^(-1) mod 2^32) * 2^31 = 4666088^ 60 * 1521161857 * 2^31
.text
.align 4
roots_addr: .word roots
.syntax unified
.type ntt_384_u32_128919937_4666088_incomplete_good, %function
.global ntt_384_u32_128919937_4666088_incomplete_good
ntt_384_u32_128919937_4666088_incomplete_good:
// Save GPRs
push {r4-r11,lr}
// Save MVE vector registers
vpush {d8-d15}
// Use r14 as marker for r0 + 1008
add r14, r0, #1008
// Use r12 as marker for r0 + 2016
add r12, r14, #1008
.equ modulus, -128919937
movw r11, #:lower16:modulus
movt r11, #:upper16:modulus
ldr r10, roots_addr
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
// input[256]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 4)]
// input[128]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -124)]
vsub.s32 Q2, Q0, Q1
vmul.u32 Q3, Q2, r9
vadd.s32 Q5, Q0, Q1
// Release input[256] from Q0
vqrdmulh.s32 Q4, Q2, r8
// input[0]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 0)]
vmla.s32 Q3, Q4, r11
vsub.s32 Q4, Q0, Q1
// Release input[128] from Q1
// input[4]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 4)]
vadd.s32 Q6, Q4, Q3
// input[260]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * 8)]
vsub.s32 Q4, Q4, Q3
vstrw.u32 Q6, [r14,#(16)]
vsub.s32 Q4, Q4, Q2
vstrw.u32 Q4, [r14,#(-496)]
vadd.s32 Q5, Q5, Q0
// Release input[0] from Q0
vstrw.u32 Q5, [r0,#(0)]
// input[4]: Already loaded as Q1
// input[260]: Already loaded as Q7
vsub.s32 Q0, Q1, Q7
vmul.u32 Q2, Q0, r9
vadd.s32 Q4, Q1, Q7
// Release input[4] from Q1
vqrdmulh.s32 Q3, Q0, r8
// input[132]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -120)]
vmla.s32 Q2, Q3, r11
vsub.s32 Q3, Q1, Q7
// Release input[260] from Q7
// input[136]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -116)]
vadd.s32 Q6, Q3, Q2
// input[8]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 8)]
vsub.s32 Q3, Q3, Q2
vstrw.u32 Q6, [r0,#(16)]
vsub.s32 Q3, Q3, Q0
vstrw.u32 Q3, [r14,#(32)]
vadd.s32 Q4, Q4, Q1
// Release input[132] from Q1
vstrw.u32 Q4, [r14,#(-480)]
// input[136]: Already loaded as Q5
// input[8]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[136] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[264]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 12)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[8] from Q7
// input[268]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 16)]
vadd.s32 Q6, Q2, Q1
// input[140]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -112)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(-464)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(32)]
vadd.s32 Q3, Q3, Q4
// Release input[264] from Q4
vstrw.u32 Q3, [r14,#(48)]
// input[268]: Already loaded as Q5
// input[140]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[268] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[12]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 12)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[140] from Q7
// input[16]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 16)]
vadd.s32 Q6, Q2, Q1
// input[272]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * 20)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(64)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-448)]
vadd.s32 Q3, Q3, Q4
// Release input[12] from Q4
vstrw.u32 Q3, [r0,#(48)]
// input[16]: Already loaded as Q5
// input[272]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[16] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[144]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -108)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[272] from Q7
// input[148]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -104)]
vadd.s32 Q6, Q2, Q1
// input[20]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 20)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r0,#(64)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(80)]
vadd.s32 Q3, Q3, Q4
// Release input[144] from Q4
vstrw.u32 Q3, [r14,#(-432)]
// input[148]: Already loaded as Q5
// input[20]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[148] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[276]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 24)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[20] from Q7
// input[280]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 28)]
vadd.s32 Q6, Q2, Q1
// input[152]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -100)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(-416)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(80)]
vadd.s32 Q3, Q3, Q4
// Release input[276] from Q4
vstrw.u32 Q3, [r14,#(96)]
// input[280]: Already loaded as Q5
// input[152]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[280] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[24]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 24)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[152] from Q7
// input[28]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 28)]
vadd.s32 Q6, Q2, Q1
// input[284]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * 32)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(112)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-400)]
vadd.s32 Q3, Q3, Q4
// Release input[24] from Q4
vstrw.u32 Q3, [r0,#(96)]
// input[28]: Already loaded as Q5
// input[284]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[28] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[156]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -96)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[284] from Q7
// input[160]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -92)]
vadd.s32 Q6, Q2, Q1
// input[32]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 32)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r0,#(112)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(128)]
vadd.s32 Q3, Q3, Q4
// Release input[156] from Q4
vstrw.u32 Q3, [r14,#(-384)]
// input[160]: Already loaded as Q5
// input[32]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[160] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[288]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 36)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[32] from Q7
// input[292]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 40)]
vadd.s32 Q6, Q2, Q1
// input[164]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -88)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(-368)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(128)]
vadd.s32 Q3, Q3, Q4
// Release input[288] from Q4
vstrw.u32 Q3, [r14,#(144)]
// input[292]: Already loaded as Q5
// input[164]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[292] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[36]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 36)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[164] from Q7
// input[40]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 40)]
vadd.s32 Q6, Q2, Q1
// input[296]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * 44)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(160)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-352)]
vadd.s32 Q3, Q3, Q4
// Release input[36] from Q4
vstrw.u32 Q3, [r0,#(144)]
// input[40]: Already loaded as Q5
// input[296]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[40] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[168]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -84)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[296] from Q7
// input[172]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -80)]
vadd.s32 Q6, Q2, Q1
// input[44]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 44)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r0,#(160)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(176)]
vadd.s32 Q3, Q3, Q4
// Release input[168] from Q4
vstrw.u32 Q3, [r14,#(-336)]
// input[172]: Already loaded as Q5
// input[44]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[172] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[300]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 48)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[44] from Q7
// input[304]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 52)]
vadd.s32 Q6, Q2, Q1
// input[176]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -76)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(-320)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(176)]
vadd.s32 Q3, Q3, Q4
// Release input[300] from Q4
vstrw.u32 Q3, [r14,#(192)]
// input[304]: Already loaded as Q5
// input[176]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[304] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[48]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 48)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[176] from Q7
// input[52]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 52)]
vadd.s32 Q6, Q2, Q1
// input[308]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * 56)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(208)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-304)]
vadd.s32 Q3, Q3, Q4
// Release input[48] from Q4
vstrw.u32 Q3, [r0,#(192)]
// input[52]: Already loaded as Q5
// input[308]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[52] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[180]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -72)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[308] from Q7
// input[184]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -68)]
vadd.s32 Q6, Q2, Q1
// input[56]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 56)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r0,#(208)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(224)]
vadd.s32 Q3, Q3, Q4
// Release input[180] from Q4
vstrw.u32 Q3, [r14,#(-288)]
// input[184]: Already loaded as Q5
// input[56]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[184] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[312]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 60)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[56] from Q7
// input[316]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 64)]
vadd.s32 Q6, Q2, Q1
// input[188]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -64)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(-272)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(224)]
vadd.s32 Q3, Q3, Q4
// Release input[312] from Q4
vstrw.u32 Q3, [r14,#(240)]
// input[316]: Already loaded as Q5
// input[188]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[316] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[60]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 60)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[188] from Q7
// input[64]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 64)]
vadd.s32 Q6, Q2, Q1
// input[320]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * 68)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(256)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-256)]
vadd.s32 Q3, Q3, Q4
// Release input[60] from Q4
vstrw.u32 Q3, [r0,#(240)]
// input[64]: Already loaded as Q5
// input[320]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[64] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[192]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -60)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[320] from Q7
// input[196]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -56)]
vadd.s32 Q6, Q2, Q1
// input[68]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 68)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r0,#(256)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(272)]
vadd.s32 Q3, Q3, Q4
// Release input[192] from Q4
vstrw.u32 Q3, [r14,#(-240)]
// input[196]: Already loaded as Q5
// input[68]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[196] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[324]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 72)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[68] from Q7
// input[328]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 76)]
vadd.s32 Q6, Q2, Q1
// input[200]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -52)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(-224)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(272)]
vadd.s32 Q3, Q3, Q4
// Release input[324] from Q4
vstrw.u32 Q3, [r14,#(288)]
// input[328]: Already loaded as Q5
// input[200]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[328] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[72]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 72)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[200] from Q7
// input[76]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 76)]
vadd.s32 Q6, Q2, Q1
// input[332]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * 80)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(304)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-208)]
vadd.s32 Q3, Q3, Q4
// Release input[72] from Q4
vstrw.u32 Q3, [r0,#(288)]
// input[76]: Already loaded as Q5
// input[332]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[76] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[204]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -48)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[332] from Q7
// input[208]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -44)]
vadd.s32 Q6, Q2, Q1
// input[80]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 80)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r0,#(304)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(320)]
vadd.s32 Q3, Q3, Q4
// Release input[204] from Q4
vstrw.u32 Q3, [r14,#(-192)]
// input[208]: Already loaded as Q5
// input[80]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[208] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[336]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 84)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[80] from Q7
// input[340]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 88)]
vadd.s32 Q6, Q2, Q1
// input[212]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -40)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(-176)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(320)]
vadd.s32 Q3, Q3, Q4
// Release input[336] from Q4
vstrw.u32 Q3, [r14,#(336)]
// input[340]: Already loaded as Q5
// input[212]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[340] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[84]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 84)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[212] from Q7
// input[88]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 88)]
vadd.s32 Q6, Q2, Q1
// input[344]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * 92)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(352)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-160)]
vadd.s32 Q3, Q3, Q4
// Release input[84] from Q4
vstrw.u32 Q3, [r0,#(336)]
// input[88]: Already loaded as Q5
// input[344]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[88] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[216]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -36)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[344] from Q7
// input[220]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -32)]
vadd.s32 Q6, Q2, Q1
// input[92]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 92)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r0,#(352)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(368)]
vadd.s32 Q3, Q3, Q4
// Release input[216] from Q4
vstrw.u32 Q3, [r14,#(-144)]
// input[220]: Already loaded as Q5
// input[92]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[220] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[348]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 96)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[92] from Q7
// input[352]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 100)]
vadd.s32 Q6, Q2, Q1
// input[224]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -28)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(-128)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(368)]
vadd.s32 Q3, Q3, Q4
// Release input[348] from Q4
vstrw.u32 Q3, [r14,#(384)]
// input[352]: Already loaded as Q5
// input[224]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[352] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[96]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 96)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[224] from Q7
// input[100]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 100)]
vadd.s32 Q6, Q2, Q1
// input[356]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * 104)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(400)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-112)]
vadd.s32 Q3, Q3, Q4
// Release input[96] from Q4
vstrw.u32 Q3, [r0,#(384)]
// input[100]: Already loaded as Q5
// input[356]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[100] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[228]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -24)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[356] from Q7
// input[232]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -20)]
vadd.s32 Q6, Q2, Q1
// input[104]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 104)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r0,#(400)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(416)]
vadd.s32 Q3, Q3, Q4
// Release input[228] from Q4
vstrw.u32 Q3, [r14,#(-96)]
// input[232]: Already loaded as Q5
// input[104]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[232] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[360]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 108)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[104] from Q7
// input[364]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 112)]
vadd.s32 Q6, Q2, Q1
// input[236]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -16)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(-80)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(416)]
vadd.s32 Q3, Q3, Q4
// Release input[360] from Q4
vstrw.u32 Q3, [r14,#(432)]
// input[364]: Already loaded as Q5
// input[236]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[364] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[108]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 108)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[236] from Q7
// input[112]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 112)]
vadd.s32 Q6, Q2, Q1
// input[368]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * 116)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(448)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-64)]
vadd.s32 Q3, Q3, Q4
// Release input[108] from Q4
vstrw.u32 Q3, [r0,#(432)]
// input[112]: Already loaded as Q5
// input[368]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[112] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[240]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -12)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[368] from Q7
// input[244]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -8)]
vadd.s32 Q6, Q2, Q1
// input[116]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 116)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r0,#(448)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(464)]
vadd.s32 Q3, Q3, Q4
// Release input[240] from Q4
vstrw.u32 Q3, [r14,#(-48)]
// input[244]: Already loaded as Q5
// input[116]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[244] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[372]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 120)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[116] from Q7
// input[376]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 124)]
vadd.s32 Q6, Q2, Q1
// input[248]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -4)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(-32)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(464)]
vadd.s32 Q3, Q3, Q4
// Release input[372] from Q4
vstrw.u32 Q3, [r14,#(480)]
// input[376]: Already loaded as Q5
// input[248]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[376] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[120]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 120)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[248] from Q7
// input[124]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 124)]
vadd.s32 Q6, Q2, Q1
// input[380]: Load as Q7
vldrw.u32 Q7, [r12, #(4 * -124)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q6, [r14,#(496)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-16)]
vadd.s32 Q3, Q3, Q4
// Release input[120] from Q4
vstrw.u32 Q3, [r0,#(480)]
// input[124]: Already loaded as Q5
// input[380]: Already loaded as Q7
vsub.s32 Q0, Q5, Q7
vmul.u32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[124] from Q5
vqrdmulh.s32 Q2, Q0, r8
// input[252]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 0)]
vmla.s32 Q1, Q2, r11
vsub.s32 Q2, Q4, Q7
// Release input[380] from Q7
vadd.s32 Q5, Q2, Q1
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q5, [r0,#(496)]
vsub.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r12,#(-496)]
vadd.s32 Q3, Q3, Q4
// Release input[252] from Q4
vstrw.u32 Q3, [r14,#(0)]
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[288]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 36)]
// input[96]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 96)]
vsub.s32 Q2, Q0, Q1
vmul.u32 Q3, Q2, r5
// input[192]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -60)]
vadd.s32 Q0, Q0, Q1
// Release input[96] from Q1
// input[0]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 0)]
vsub.s32 Q5, Q1, Q4
// input[228]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * -24)]
vadd.s32 Q1, Q1, Q4
// Release input[192] from Q4
vqrdmulh.s32 Q2, Q2, r4
vsub.s32 Q4, Q1, Q0
// input[36]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 36)]
vmla.s32 Q3, Q2, r11
vstrw.u32 Q4, [r14,#(144)]
vadd.s32 Q1, Q1, Q0
// Release input[288] from Q0
vstrw.u32 Q1, [r0,#(0)]
// Release input[0] from Q1
vsub.s32 Q2, Q5, Q3
vstrw.u32 Q2, [r0,#(384)]
vadd.s32 Q5, Q5, Q3
vstrw.u32 Q5, [r14,#(-240)]
// input[36]: Already loaded as Q7
// input[228]: Already loaded as Q6
vsub.s32 Q0, Q7, Q6
vmul.u32 Q1, Q0, r5
// input[324]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 72)]
vadd.s32 Q7, Q7, Q6
// Release input[228] from Q6
// input[132]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -120)]
vsub.s32 Q4, Q3, Q2
// input[360]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 108)]
vadd.s32 Q3, Q3, Q2
// Release input[324] from Q2
vqrdmulh.s32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q7
// input[168]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * -84)]
vmla.s32 Q1, Q0, r11
vstrw.u32 Q2, [r0,#(144)]
vadd.s32 Q3, Q3, Q7
// Release input[36] from Q7
vstrw.u32 Q3, [r14,#(-480)]
// Release input[132] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(-96)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(288)]
// input[168]: Already loaded as Q6
// input[360]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vmul.u32 Q1, Q0, r5
// input[72]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 72)]
vadd.s32 Q6, Q6, Q5
// Release input[360] from Q5
// input[264]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 12)]
vsub.s32 Q4, Q3, Q2
// input[108]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 108)]
vadd.s32 Q3, Q3, Q2
// Release input[72] from Q2
vqrdmulh.s32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q6
// input[300]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * 48)]
vmla.s32 Q1, Q0, r11
vstrw.u32 Q2, [r14,#(-336)]
vadd.s32 Q3, Q3, Q6
// Release input[168] from Q6
vstrw.u32 Q3, [r14,#(48)]
// Release input[264] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(432)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r0,#(288)]
// input[300]: Already loaded as Q7
// input[108]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vmul.u32 Q1, Q0, r5
// input[204]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -48)]
vadd.s32 Q7, Q7, Q5
// Release input[108] from Q5
// input[12]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 12)]
vsub.s32 Q4, Q3, Q2
// input[240]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -12)]
vadd.s32 Q3, Q3, Q2
// Release input[204] from Q2
vqrdmulh.s32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q7
// input[48]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 48)]
vmla.s32 Q1, Q0, r11
vstrw.u32 Q2, [r14,#(192)]
vadd.s32 Q3, Q3, Q7
// Release input[300] from Q7
vstrw.u32 Q3, [r0,#(48)]
// Release input[12] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r0,#(432)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(-192)]
// input[48]: Already loaded as Q6
// input[240]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vmul.u32 Q1, Q0, r5
// input[336]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 84)]
vadd.s32 Q6, Q6, Q5
// Release input[240] from Q5
// input[144]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -108)]
vsub.s32 Q4, Q3, Q2
// input[372]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 120)]
vadd.s32 Q3, Q3, Q2
// Release input[336] from Q2
vqrdmulh.s32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q6
// input[180]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -72)]
vmla.s32 Q1, Q0, r11
vstrw.u32 Q2, [r0,#(192)]
vadd.s32 Q3, Q3, Q6
// Release input[48] from Q6
vstrw.u32 Q3, [r14,#(-432)]
// Release input[144] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(-48)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(336)]
// input[180]: Already loaded as Q7
// input[372]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vmul.u32 Q1, Q0, r5
// input[84]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 84)]
vadd.s32 Q7, Q7, Q5
// Release input[372] from Q5
// input[276]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 24)]
vsub.s32 Q4, Q3, Q2
// input[120]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 120)]
vadd.s32 Q3, Q3, Q2
// Release input[84] from Q2
vqrdmulh.s32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q7
// input[312]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * 60)]
vmla.s32 Q1, Q0, r11
vstrw.u32 Q2, [r14,#(-288)]
vadd.s32 Q3, Q3, Q7
// Release input[180] from Q7
vstrw.u32 Q3, [r14,#(96)]
// Release input[276] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(480)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r0,#(336)]
// input[312]: Already loaded as Q6
// input[120]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vmul.u32 Q1, Q0, r5
// input[216]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -36)]
vadd.s32 Q6, Q6, Q5
// Release input[120] from Q5
// input[24]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 24)]
vsub.s32 Q4, Q3, Q2
// input[252]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 0)]
vadd.s32 Q3, Q3, Q2
// Release input[216] from Q2
vqrdmulh.s32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q6
// input[60]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 60)]
vmla.s32 Q1, Q0, r11
vstrw.u32 Q2, [r14,#(240)]
vadd.s32 Q3, Q3, Q6
// Release input[312] from Q6
vstrw.u32 Q3, [r0,#(96)]
// Release input[24] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r0,#(480)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(-144)]
// input[60]: Already loaded as Q7
// input[252]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vmul.u32 Q1, Q0, r5
// input[348]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 96)]
vadd.s32 Q7, Q7, Q5
// Release input[252] from Q5
// input[156]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -96)]
vsub.s32 Q4, Q3, Q2
// input[352]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 100)]
vadd.s32 Q3, Q3, Q2
// Release input[348] from Q2
vqrdmulh.s32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q7
// input[160]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * -92)]
vmla.s32 Q1, Q0, r11
vstrw.u32 Q2, [r0,#(240)]
vadd.s32 Q3, Q3, Q7
// Release input[60] from Q7
vstrw.u32 Q3, [r14,#(-384)]
// Release input[156] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(0)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(384)]
// input[160]: Already loaded as Q6
// input[352]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vmul.u32 Q1, Q0, r5
// input[64]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 64)]
vadd.s32 Q6, Q6, Q5
// Release input[352] from Q5
// input[256]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 4)]
vsub.s32 Q4, Q3, Q2
// input[100]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 100)]
vadd.s32 Q3, Q3, Q2
// Release input[64] from Q2
vqrdmulh.s32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q6
// input[292]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * 40)]
vmla.s32 Q1, Q0, r11
vstrw.u32 Q2, [r14,#(-368)]
vadd.s32 Q3, Q3, Q6
// Release input[160] from Q6
vstrw.u32 Q3, [r14,#(16)]
// Release input[256] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(400)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r0,#(256)]
// input[292]: Already loaded as Q7
// input[100]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vmul.u32 Q1, Q0, r5
// input[196]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -56)]
vadd.s32 Q7, Q7, Q5
// Release input[100] from Q5
// input[4]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 4)]
vsub.s32 Q4, Q3, Q2
// input[232]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -20)]
vadd.s32 Q3, Q3, Q2
// Release input[196] from Q2
vqrdmulh.s32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q7
// input[40]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 40)]
vmla.s32 Q1, Q0, r11
vstrw.u32 Q2, [r14,#(160)]
vadd.s32 Q3, Q3, Q7
// Release input[292] from Q7
vstrw.u32 Q3, [r0,#(16)]
// Release input[4] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r0,#(400)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(-224)]
// input[40]: Already loaded as Q6
// input[232]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vmul.u32 Q1, Q0, r5
// input[328]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 76)]
vadd.s32 Q6, Q6, Q5
// Release input[232] from Q5
// input[136]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -116)]
vsub.s32 Q4, Q3, Q2
// input[364]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 112)]
vadd.s32 Q3, Q3, Q2
// Release input[328] from Q2
vqrdmulh.s32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q6
// input[172]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -80)]
vmla.s32 Q1, Q0, r11
vstrw.u32 Q2, [r0,#(160)]
vadd.s32 Q3, Q3, Q6
// Release input[40] from Q6
vstrw.u32 Q3, [r14,#(-464)]
// Release input[136] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(-80)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(304)]
// input[172]: Already loaded as Q7
// input[364]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vmul.u32 Q1, Q0, r5
// input[76]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 76)]
vadd.s32 Q7, Q7, Q5
// Release input[364] from Q5
// input[268]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 16)]
vsub.s32 Q4, Q3, Q2
// input[112]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 112)]
vadd.s32 Q3, Q3, Q2
// Release input[76] from Q2
vqrdmulh.s32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q7
// input[304]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * 52)]
vmla.s32 Q1, Q0, r11
vstrw.u32 Q2, [r14,#(-320)]
vadd.s32 Q3, Q3, Q7
// Release input[172] from Q7
vstrw.u32 Q3, [r14,#(64)]
// Release input[268] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(448)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r0,#(304)]
// input[304]: Already loaded as Q6
// input[112]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vmul.u32 Q1, Q0, r5
// input[208]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -44)]
vadd.s32 Q6, Q6, Q5
// Release input[112] from Q5
// input[16]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 16)]
vsub.s32 Q4, Q3, Q2
// input[244]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -8)]
vadd.s32 Q3, Q3, Q2
// Release input[208] from Q2
vqrdmulh.s32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q6
// input[52]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 52)]
vmla.s32 Q1, Q0, r11
vstrw.u32 Q2, [r14,#(208)]
vadd.s32 Q3, Q3, Q6
// Release input[304] from Q6
vstrw.u32 Q3, [r0,#(64)]
// Release input[16] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r0,#(448)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(-176)]
// input[52]: Already loaded as Q7
// input[244]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vmul.u32 Q1, Q0, r5
// input[340]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 88)]
vadd.s32 Q7, Q7, Q5
// Release input[244] from Q5
// input[148]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -104)]
vsub.s32 Q4, Q3, Q2
// input[376]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 124)]
vadd.s32 Q3, Q3, Q2
// Release input[340] from Q2
vqrdmulh.s32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q7
// input[184]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * -68)]
vmla.s32 Q1, Q0, r11
vstrw.u32 Q2, [r0,#(208)]
vadd.s32 Q3, Q3, Q7
// Release input[52] from Q7
vstrw.u32 Q3, [r14,#(-416)]
// Release input[148] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(-32)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(352)]
// input[184]: Already loaded as Q6
// input[376]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vmul.u32 Q1, Q0, r5
// input[88]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 88)]
vadd.s32 Q6, Q6, Q5
// Release input[376] from Q5
// input[280]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 28)]
vsub.s32 Q4, Q3, Q2
// input[124]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 124)]
vadd.s32 Q3, Q3, Q2
// Release input[88] from Q2
vqrdmulh.s32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q6
// input[316]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * 64)]
vmla.s32 Q1, Q0, r11
vstrw.u32 Q2, [r14,#(-272)]
vadd.s32 Q3, Q3, Q6
// Release input[184] from Q6
vstrw.u32 Q3, [r14,#(112)]
// Release input[280] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(496)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r0,#(352)]
// input[316]: Already loaded as Q7
// input[124]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vmul.u32 Q1, Q0, r5
// input[220]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -32)]
vadd.s32 Q7, Q7, Q5
// Release input[124] from Q5
// input[28]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 28)]
vsub.s32 Q4, Q3, Q2
// input[224]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -28)]
vadd.s32 Q3, Q3, Q2
// Release input[220] from Q2
vqrdmulh.s32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q7
// input[32]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 32)]
vmla.s32 Q1, Q0, r11
vstrw.u32 Q2, [r14,#(256)]
vadd.s32 Q3, Q3, Q7
// Release input[316] from Q7
vstrw.u32 Q3, [r0,#(112)]
// Release input[28] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r0,#(496)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(-128)]
// input[32]: Already loaded as Q6
// input[224]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vmul.u32 Q1, Q0, r5
// input[320]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 68)]
vadd.s32 Q6, Q6, Q5
// Release input[224] from Q5
// input[128]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -124)]
vsub.s32 Q4, Q3, Q2
// input[356]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 104)]
vadd.s32 Q3, Q3, Q2
// Release input[320] from Q2
vqrdmulh.s32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q6
// input[164]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -88)]
vmla.s32 Q1, Q0, r11
vstrw.u32 Q2, [r0,#(128)]
vadd.s32 Q3, Q3, Q6
// Release input[32] from Q6
vstrw.u32 Q3, [r14,#(-496)]
// Release input[128] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(-112)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(272)]
// input[164]: Already loaded as Q7
// input[356]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vmul.u32 Q1, Q0, r5
// input[68]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 68)]
vadd.s32 Q7, Q7, Q5
// Release input[356] from Q5
// input[260]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 8)]
vsub.s32 Q4, Q3, Q2
// input[104]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 104)]
vadd.s32 Q3, Q3, Q2
// Release input[68] from Q2
vqrdmulh.s32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q7
// input[296]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * 44)]
vmla.s32 Q1, Q0, r11
vstrw.u32 Q2, [r14,#(-352)]
vadd.s32 Q3, Q3, Q7
// Release input[164] from Q7
vstrw.u32 Q3, [r14,#(32)]
// Release input[260] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(416)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r0,#(272)]
// input[296]: Already loaded as Q6
// input[104]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vmul.u32 Q1, Q0, r5
// input[200]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -52)]
vadd.s32 Q6, Q6, Q5
// Release input[104] from Q5
// input[8]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 8)]
vsub.s32 Q4, Q3, Q2
// input[236]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -16)]
vadd.s32 Q3, Q3, Q2
// Release input[200] from Q2
vqrdmulh.s32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q6
// input[44]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 44)]
vmla.s32 Q1, Q0, r11
vstrw.u32 Q2, [r14,#(176)]
vadd.s32 Q3, Q3, Q6
// Release input[296] from Q6
vstrw.u32 Q3, [r0,#(32)]
// Release input[8] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r0,#(416)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(-208)]
// input[44]: Already loaded as Q7
// input[236]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vmul.u32 Q1, Q0, r5
// input[332]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 80)]
vadd.s32 Q7, Q7, Q5
// Release input[236] from Q5
// input[140]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -112)]
vsub.s32 Q4, Q3, Q2
// input[368]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 116)]
vadd.s32 Q3, Q3, Q2
// Release input[332] from Q2
vqrdmulh.s32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q7
// input[176]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * -76)]
vmla.s32 Q1, Q0, r11
vstrw.u32 Q2, [r0,#(176)]
vadd.s32 Q3, Q3, Q7
// Release input[44] from Q7
vstrw.u32 Q3, [r14,#(-448)]
// Release input[140] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(-64)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(320)]
// input[176]: Already loaded as Q6
// input[368]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vmul.u32 Q1, Q0, r5
// input[80]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 80)]
vadd.s32 Q6, Q6, Q5
// Release input[368] from Q5
// input[272]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 20)]
vsub.s32 Q4, Q3, Q2
// input[116]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 116)]
vadd.s32 Q3, Q3, Q2
// Release input[80] from Q2
vqrdmulh.s32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q6
// input[308]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * 56)]
vmla.s32 Q1, Q0, r11
vstrw.u32 Q2, [r14,#(-304)]
vadd.s32 Q3, Q3, Q6
// Release input[176] from Q6
vstrw.u32 Q3, [r14,#(80)]
// Release input[272] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(464)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r0,#(320)]
// input[308]: Already loaded as Q7
// input[116]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vmul.u32 Q1, Q0, r5
// input[212]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -40)]
vadd.s32 Q7, Q7, Q5
// Release input[116] from Q5
// input[20]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 20)]
vsub.s32 Q4, Q3, Q2
// input[248]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * -4)]
vadd.s32 Q3, Q3, Q2
// Release input[212] from Q2
vqrdmulh.s32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q7
// input[56]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 56)]
vmla.s32 Q1, Q0, r11
vstrw.u32 Q2, [r14,#(224)]
vadd.s32 Q3, Q3, Q7
// Release input[308] from Q7
vstrw.u32 Q3, [r0,#(80)]
// Release input[20] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r0,#(464)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(-160)]
// input[56]: Already loaded as Q6
// input[248]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vmul.u32 Q1, Q0, r5
// input[344]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 92)]
vadd.s32 Q6, Q6, Q5
// Release input[248] from Q5
// input[152]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -100)]
vsub.s32 Q4, Q3, Q2
// input[380]: Load as Q5
vldrw.u32 Q5, [r12, #(4 * -124)]
vadd.s32 Q3, Q3, Q2
// Release input[344] from Q2
vqrdmulh.s32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q6
// input[188]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -64)]
vmla.s32 Q1, Q0, r11
vstrw.u32 Q2, [r0,#(224)]
vadd.s32 Q3, Q3, Q6
// Release input[56] from Q6
vstrw.u32 Q3, [r14,#(-400)]
// Release input[152] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r14,#(-16)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r14,#(368)]
// input[188]: Already loaded as Q7
// input[380]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vmul.u32 Q1, Q0, r5
// input[92]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 92)]
vadd.s32 Q7, Q7, Q5
// Release input[380] from Q5
// input[284]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 32)]
vsub.s32 Q4, Q3, Q2
// input[24]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 24)]
vadd.s32 Q3, Q3, Q2
// Release input[92] from Q2
vqrdmulh.s32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q7
// input[264]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * 12)]
vmla.s32 Q1, Q0, r11
vstrw.u32 Q2, [r14,#(-256)]
vadd.s32 Q3, Q3, Q7
// Release input[188] from Q7
vstrw.u32 Q3, [r14,#(128)]
// Release input[284] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r12,#(-496)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r0,#(368)]
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[24]: Already loaded as Q5
vmul.u32 Q0, Q5, r9
// input[144]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -108)]
vqrdmulh.s32 Q5, Q5, r8
// input[264]: Already loaded as Q6
vmla.s32 Q0, Q5, r11
vmul.u32 Q2, Q1, r9
vsub.s32 Q5, Q6, Q0
vqrdmulh.s32 Q1, Q1, r8
vadd.s32 Q6, Q6, Q0
vmla.s32 Q2, Q1, r11
// input[0]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 0)]
vmul.u32 Q3, Q5, r5
vsub.s32 Q1, Q0, Q2
vqrdmulh.s32 Q5, Q5, r4
vadd.s32 Q0, Q0, Q2
vmla.s32 Q3, Q5, r11
// input[156]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -96)]
vmul.u32 Q4, Q6, r7
vsub.s32 Q5, Q1, Q3
vqrdmulh.s32 Q6, Q6, r6
vadd.s32 Q1, Q1, Q3
vstrw.u32 Q5, [r0,#(96)]
// Release input[24] from Q5
vmla.s32 Q4, Q6, r11
vstrw.u32 Q1, [r14,#(-432)]
// Release input[144] from Q1
vsub.s32 Q6, Q0, Q4
vstrw.u32 Q6, [r14,#(48)]
// Release input[264] from Q6
vadd.s32 Q0, Q0, Q4
// input[156]: Already loaded as Q2
vmul.u32 Q1, Q2, r9
// input[276]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 24)]
vqrdmulh.s32 Q2, Q2, r8
// input[12]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 12)]
vmla.s32 Q1, Q2, r11
vstrw.u32 Q0, [r0,#(0)]
// Release input[0] from Q0
vmul.u32 Q0, Q3, r9
vsub.s32 Q2, Q4, Q1
vqrdmulh.s32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vmla.s32 Q0, Q3, r11
// input[132]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -120)]
vmul.u32 Q5, Q2, r5
vsub.s32 Q3, Q1, Q0
vqrdmulh.s32 Q2, Q2, r4
vadd.s32 Q1, Q1, Q0
vmla.s32 Q5, Q2, r11
// input[280]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 28)]
vmul.u32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vqrdmulh.s32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(-384)]
// Release input[156] from Q2
vmla.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(96)]
// Release input[276] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r0,#(48)]
// Release input[12] from Q4
vadd.s32 Q1, Q1, Q6
// input[280]: Already loaded as Q0
vmul.u32 Q2, Q0, r9
// input[16]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 16)]
vqrdmulh.s32 Q0, Q0, r8
// input[136]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -116)]
vmla.s32 Q2, Q0, r11
vstrw.u32 Q1, [r14,#(-480)]
// Release input[132] from Q1
vmul.u32 Q1, Q3, r9
vsub.s32 Q0, Q4, Q2
vqrdmulh.s32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vmla.s32 Q1, Q3, r11
// input[256]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 4)]
vmul.u32 Q5, Q0, r5
vsub.s32 Q3, Q2, Q1
vqrdmulh.s32 Q0, Q0, r4
vadd.s32 Q2, Q2, Q1
vmla.s32 Q5, Q0, r11
// input[28]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 28)]
vmul.u32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vqrdmulh.s32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(112)]
// Release input[280] from Q0
vmla.s32 Q6, Q4, r11
vstrw.u32 Q3, [r0,#(64)]
// Release input[16] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r14,#(-464)]
// Release input[136] from Q4
vadd.s32 Q2, Q2, Q6
// input[28]: Already loaded as Q1
vmul.u32 Q0, Q1, r9
// input[148]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -104)]
vqrdmulh.s32 Q1, Q1, r8
// input[268]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 16)]
vmla.s32 Q0, Q1, r11
vstrw.u32 Q2, [r14,#(16)]
// Release input[256] from Q2
vmul.u32 Q2, Q3, r9
vsub.s32 Q1, Q4, Q0
vqrdmulh.s32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vmla.s32 Q2, Q3, r11
// input[4]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 4)]
vmul.u32 Q5, Q1, r5
vsub.s32 Q3, Q0, Q2
vqrdmulh.s32 Q1, Q1, r4
vadd.s32 Q0, Q0, Q2
vmla.s32 Q5, Q1, r11
// input[152]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -100)]
vmul.u32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vqrdmulh.s32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r0,#(112)]
// Release input[28] from Q1
vmla.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(-416)]
// Release input[148] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(64)]
// Release input[268] from Q4
vadd.s32 Q0, Q0, Q6
// input[152]: Already loaded as Q2
vmul.u32 Q1, Q2, r9
// input[272]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 20)]
vqrdmulh.s32 Q2, Q2, r8
// input[8]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 8)]
vmla.s32 Q1, Q2, r11
vstrw.u32 Q0, [r0,#(16)]
// Release input[4] from Q0
vmul.u32 Q0, Q3, r9
vsub.s32 Q2, Q4, Q1
vqrdmulh.s32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vmla.s32 Q0, Q3, r11
// input[128]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -124)]
vmul.u32 Q5, Q2, r5
vsub.s32 Q3, Q1, Q0
vqrdmulh.s32 Q2, Q2, r4
vadd.s32 Q1, Q1, Q0
vmla.s32 Q5, Q2, r11
// input[284]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 32)]
vmul.u32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vqrdmulh.s32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(-400)]
// Release input[152] from Q2
vmla.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(80)]
// Release input[272] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r0,#(32)]
// Release input[8] from Q4
vadd.s32 Q1, Q1, Q6
// input[284]: Already loaded as Q0
vmul.u32 Q2, Q0, r9
// input[20]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 20)]
vqrdmulh.s32 Q0, Q0, r8
// input[140]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -112)]
vmla.s32 Q2, Q0, r11
vstrw.u32 Q1, [r14,#(-496)]
// Release input[128] from Q1
vmul.u32 Q1, Q3, r9
vsub.s32 Q0, Q4, Q2
vqrdmulh.s32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vmla.s32 Q1, Q3, r11
// input[260]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 8)]
vmul.u32 Q5, Q0, r5
vsub.s32 Q3, Q2, Q1
vqrdmulh.s32 Q0, Q0, r4
vadd.s32 Q2, Q2, Q1
vmla.s32 Q5, Q0, r11
// input[312]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 60)]
vmul.u32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vqrdmulh.s32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(128)]
// Release input[284] from Q0
vmla.s32 Q6, Q4, r11
vstrw.u32 Q3, [r0,#(80)]
// Release input[20] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r14,#(-448)]
// Release input[140] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[312]: Already loaded as Q1
vmul.u32 Q0, Q1, r9
// input[48]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 48)]
vqrdmulh.s32 Q1, Q1, r8
// input[168]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -84)]
vmla.s32 Q0, Q1, r11
vstrw.u32 Q2, [r14,#(32)]
// Release input[260] from Q2
vmul.u32 Q2, Q3, r9
vsub.s32 Q1, Q4, Q0
vqrdmulh.s32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vmla.s32 Q2, Q3, r11
// input[288]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 36)]
vmul.u32 Q5, Q1, r5
vsub.s32 Q3, Q0, Q2
vqrdmulh.s32 Q1, Q1, r4
vadd.s32 Q0, Q0, Q2
vmla.s32 Q5, Q1, r11
// input[60]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 60)]
vmul.u32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vqrdmulh.s32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(240)]
// Release input[312] from Q1
vmla.s32 Q6, Q4, r11
vstrw.u32 Q3, [r0,#(192)]
// Release input[48] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(-336)]
// Release input[168] from Q4
vadd.s32 Q0, Q0, Q6
// input[60]: Already loaded as Q2
vmul.u32 Q1, Q2, r9
// input[180]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -72)]
vqrdmulh.s32 Q2, Q2, r8
// input[300]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 48)]
vmla.s32 Q1, Q2, r11
vstrw.u32 Q0, [r14,#(144)]
// Release input[288] from Q0
vmul.u32 Q0, Q3, r9
vsub.s32 Q2, Q4, Q1
vqrdmulh.s32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vmla.s32 Q0, Q3, r11
// input[36]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 36)]
vmul.u32 Q5, Q2, r5
vsub.s32 Q3, Q1, Q0
vqrdmulh.s32 Q2, Q2, r4
vadd.s32 Q1, Q1, Q0
vmla.s32 Q5, Q2, r11
// input[184]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -68)]
vmul.u32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vqrdmulh.s32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r0,#(240)]
// Release input[60] from Q2
vmla.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(-288)]
// Release input[180] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r14,#(192)]
// Release input[300] from Q4
vadd.s32 Q1, Q1, Q6
// input[184]: Already loaded as Q0
vmul.u32 Q2, Q0, r9
// input[304]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 52)]
vqrdmulh.s32 Q0, Q0, r8
// input[40]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 40)]
vmla.s32 Q2, Q0, r11
vstrw.u32 Q1, [r0,#(144)]
// Release input[36] from Q1
vmul.u32 Q1, Q3, r9
vsub.s32 Q0, Q4, Q2
vqrdmulh.s32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vmla.s32 Q1, Q3, r11
// input[160]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -92)]
vmul.u32 Q5, Q0, r5
vsub.s32 Q3, Q2, Q1
vqrdmulh.s32 Q0, Q0, r4
vadd.s32 Q2, Q2, Q1
vmla.s32 Q5, Q0, r11
// input[316]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 64)]
vmul.u32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vqrdmulh.s32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(-272)]
// Release input[184] from Q0
vmla.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(208)]
// Release input[304] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r0,#(160)]
// Release input[40] from Q4
vadd.s32 Q2, Q2, Q6
// input[316]: Already loaded as Q1
vmul.u32 Q0, Q1, r9
// input[52]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 52)]
vqrdmulh.s32 Q1, Q1, r8
// input[172]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -80)]
vmla.s32 Q0, Q1, r11
vstrw.u32 Q2, [r14,#(-368)]
// Release input[160] from Q2
vmul.u32 Q2, Q3, r9
vsub.s32 Q1, Q4, Q0
vqrdmulh.s32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vmla.s32 Q2, Q3, r11
// input[292]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 40)]
vmul.u32 Q5, Q1, r5
vsub.s32 Q3, Q0, Q2
vqrdmulh.s32 Q1, Q1, r4
vadd.s32 Q0, Q0, Q2
vmla.s32 Q5, Q1, r11
// input[56]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 56)]
vmul.u32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vqrdmulh.s32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(256)]
// Release input[316] from Q1
vmla.s32 Q6, Q4, r11
vstrw.u32 Q3, [r0,#(208)]
// Release input[52] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(-320)]
// Release input[172] from Q4
vadd.s32 Q0, Q0, Q6
// input[56]: Already loaded as Q2
vmul.u32 Q1, Q2, r9
// input[176]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -76)]
vqrdmulh.s32 Q2, Q2, r8
// input[296]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 44)]
vmla.s32 Q1, Q2, r11
vstrw.u32 Q0, [r14,#(160)]
// Release input[292] from Q0
vmul.u32 Q0, Q3, r9
vsub.s32 Q2, Q4, Q1
vqrdmulh.s32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vmla.s32 Q0, Q3, r11
// input[32]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 32)]
vmul.u32 Q5, Q2, r5
vsub.s32 Q3, Q1, Q0
vqrdmulh.s32 Q2, Q2, r4
vadd.s32 Q1, Q1, Q0
vmla.s32 Q5, Q2, r11
// input[188]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -64)]
vmul.u32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vqrdmulh.s32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r0,#(224)]
// Release input[56] from Q2
vmla.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(-304)]
// Release input[176] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r14,#(176)]
// Release input[296] from Q4
vadd.s32 Q1, Q1, Q6
// input[188]: Already loaded as Q0
vmul.u32 Q2, Q0, r9
// input[308]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 56)]
vqrdmulh.s32 Q0, Q0, r8
// input[44]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 44)]
vmla.s32 Q2, Q0, r11
vstrw.u32 Q1, [r0,#(128)]
// Release input[32] from Q1
vmul.u32 Q1, Q3, r9
vsub.s32 Q0, Q4, Q2
vqrdmulh.s32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vmla.s32 Q1, Q3, r11
// input[164]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -88)]
vmul.u32 Q5, Q0, r5
vsub.s32 Q3, Q2, Q1
vqrdmulh.s32 Q0, Q0, r4
vadd.s32 Q2, Q2, Q1
vmla.s32 Q5, Q0, r11
// input[216]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -36)]
vmul.u32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vqrdmulh.s32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(-256)]
// Release input[188] from Q0
vmla.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(224)]
// Release input[308] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r0,#(176)]
// Release input[44] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[216]: Already loaded as Q1
vmul.u32 Q0, Q1, r9
// input[336]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 84)]
vqrdmulh.s32 Q1, Q1, r8
// input[72]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 72)]
vmla.s32 Q0, Q1, r11
vstrw.u32 Q2, [r14,#(-352)]
// Release input[164] from Q2
vmul.u32 Q2, Q3, r9
vsub.s32 Q1, Q4, Q0
vqrdmulh.s32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vmla.s32 Q2, Q3, r11
// input[192]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -60)]
vmul.u32 Q5, Q1, r5
vsub.s32 Q3, Q0, Q2
vqrdmulh.s32 Q1, Q1, r4
vadd.s32 Q0, Q0, Q2
vmla.s32 Q5, Q1, r11
// input[348]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 96)]
vmul.u32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vqrdmulh.s32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(-144)]
// Release input[216] from Q1
vmla.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(336)]
// Release input[336] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r0,#(288)]
// Release input[72] from Q4
vadd.s32 Q0, Q0, Q6
// input[348]: Already loaded as Q2
vmul.u32 Q1, Q2, r9
// input[84]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 84)]
vqrdmulh.s32 Q2, Q2, r8
// input[204]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -48)]
vmla.s32 Q1, Q2, r11
vstrw.u32 Q0, [r14,#(-240)]
// Release input[192] from Q0
vmul.u32 Q0, Q3, r9
vsub.s32 Q2, Q4, Q1
vqrdmulh.s32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vmla.s32 Q0, Q3, r11
// input[324]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 72)]
vmul.u32 Q5, Q2, r5
vsub.s32 Q3, Q1, Q0
vqrdmulh.s32 Q2, Q2, r4
vadd.s32 Q1, Q1, Q0
vmla.s32 Q5, Q2, r11
// input[88]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 88)]
vmul.u32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vqrdmulh.s32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(384)]
// Release input[348] from Q2
vmla.s32 Q6, Q4, r11
vstrw.u32 Q3, [r0,#(336)]
// Release input[84] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r14,#(-192)]
// Release input[204] from Q4
vadd.s32 Q1, Q1, Q6
// input[88]: Already loaded as Q0
vmul.u32 Q2, Q0, r9
// input[208]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -44)]
vqrdmulh.s32 Q0, Q0, r8
// input[328]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 76)]
vmla.s32 Q2, Q0, r11
vstrw.u32 Q1, [r14,#(288)]
// Release input[324] from Q1
vmul.u32 Q1, Q3, r9
vsub.s32 Q0, Q4, Q2
vqrdmulh.s32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vmla.s32 Q1, Q3, r11
// input[64]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 64)]
vmul.u32 Q5, Q0, r5
vsub.s32 Q3, Q2, Q1
vqrdmulh.s32 Q0, Q0, r4
vadd.s32 Q2, Q2, Q1
vmla.s32 Q5, Q0, r11
// input[220]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -32)]
vmul.u32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vqrdmulh.s32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r0,#(352)]
// Release input[88] from Q0
vmla.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(-176)]
// Release input[208] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r14,#(304)]
// Release input[328] from Q4
vadd.s32 Q2, Q2, Q6
// input[220]: Already loaded as Q1
vmul.u32 Q0, Q1, r9
// input[340]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 88)]
vqrdmulh.s32 Q1, Q1, r8
// input[76]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 76)]
vmla.s32 Q0, Q1, r11
vstrw.u32 Q2, [r0,#(256)]
// Release input[64] from Q2
vmul.u32 Q2, Q3, r9
vsub.s32 Q1, Q4, Q0
vqrdmulh.s32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vmla.s32 Q2, Q3, r11
// input[196]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -56)]
vmul.u32 Q5, Q1, r5
vsub.s32 Q3, Q0, Q2
vqrdmulh.s32 Q1, Q1, r4
vadd.s32 Q0, Q0, Q2
vmla.s32 Q5, Q1, r11
// input[344]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 92)]
vmul.u32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vqrdmulh.s32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(-128)]
// Release input[220] from Q1
vmla.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(352)]
// Release input[340] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r0,#(304)]
// Release input[76] from Q4
vadd.s32 Q0, Q0, Q6
// input[344]: Already loaded as Q2
vmul.u32 Q1, Q2, r9
// input[80]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 80)]
vqrdmulh.s32 Q2, Q2, r8
// input[200]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -52)]
vmla.s32 Q1, Q2, r11
vstrw.u32 Q0, [r14,#(-224)]
// Release input[196] from Q0
vmul.u32 Q0, Q3, r9
vsub.s32 Q2, Q4, Q1
vqrdmulh.s32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vmla.s32 Q0, Q3, r11
// input[320]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 68)]
vmul.u32 Q5, Q2, r5
vsub.s32 Q3, Q1, Q0
vqrdmulh.s32 Q2, Q2, r4
vadd.s32 Q1, Q1, Q0
vmla.s32 Q5, Q2, r11
// input[92]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 92)]
vmul.u32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vqrdmulh.s32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(368)]
// Release input[344] from Q2
vmla.s32 Q6, Q4, r11
vstrw.u32 Q3, [r0,#(320)]
// Release input[80] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r14,#(-208)]
// Release input[200] from Q4
vadd.s32 Q1, Q1, Q6
// input[92]: Already loaded as Q0
vmul.u32 Q2, Q0, r9
// input[212]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -40)]
vqrdmulh.s32 Q0, Q0, r8
// input[332]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 80)]
vmla.s32 Q2, Q0, r11
vstrw.u32 Q1, [r14,#(272)]
// Release input[320] from Q1
vmul.u32 Q1, Q3, r9
vsub.s32 Q0, Q4, Q2
vqrdmulh.s32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vmla.s32 Q1, Q3, r11
// input[68]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 68)]
vmul.u32 Q5, Q0, r5
vsub.s32 Q3, Q2, Q1
vqrdmulh.s32 Q0, Q0, r4
vadd.s32 Q2, Q2, Q1
vmla.s32 Q5, Q0, r11
// input[120]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 120)]
vmul.u32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vqrdmulh.s32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r0,#(368)]
// Release input[92] from Q0
vmla.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(-160)]
// Release input[212] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r14,#(320)]
// Release input[332] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[120]: Already loaded as Q1
vmul.u32 Q0, Q1, r9
// input[240]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -12)]
vqrdmulh.s32 Q1, Q1, r8
// input[360]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 108)]
vmla.s32 Q0, Q1, r11
vstrw.u32 Q2, [r0,#(272)]
// Release input[68] from Q2
vmul.u32 Q2, Q3, r9
vsub.s32 Q1, Q4, Q0
vqrdmulh.s32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vmla.s32 Q2, Q3, r11
// input[96]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 96)]
vmul.u32 Q5, Q1, r5
vsub.s32 Q3, Q0, Q2
vqrdmulh.s32 Q1, Q1, r4
vadd.s32 Q0, Q0, Q2
vmla.s32 Q5, Q1, r11
// input[252]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 0)]
vmul.u32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vqrdmulh.s32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r0,#(480)]
// Release input[120] from Q1
vmla.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(-48)]
// Release input[240] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(432)]
// Release input[360] from Q4
vadd.s32 Q0, Q0, Q6
// input[252]: Already loaded as Q2
vmul.u32 Q1, Q2, r9
// input[372]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 120)]
vqrdmulh.s32 Q2, Q2, r8
// input[108]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 108)]
vmla.s32 Q1, Q2, r11
vstrw.u32 Q0, [r0,#(384)]
// Release input[96] from Q0
vmul.u32 Q0, Q3, r9
vsub.s32 Q2, Q4, Q1
vqrdmulh.s32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vmla.s32 Q0, Q3, r11
// input[228]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -24)]
vmul.u32 Q5, Q2, r5
vsub.s32 Q3, Q1, Q0
vqrdmulh.s32 Q2, Q2, r4
vadd.s32 Q1, Q1, Q0
vmla.s32 Q5, Q2, r11
// input[376]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 124)]
vmul.u32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vqrdmulh.s32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(0)]
// Release input[252] from Q2
vmla.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(480)]
// Release input[372] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r0,#(432)]
// Release input[108] from Q4
vadd.s32 Q1, Q1, Q6
// input[376]: Already loaded as Q0
vmul.u32 Q2, Q0, r9
// input[112]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 112)]
vqrdmulh.s32 Q0, Q0, r8
// input[232]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -20)]
vmla.s32 Q2, Q0, r11
vstrw.u32 Q1, [r14,#(-96)]
// Release input[228] from Q1
vmul.u32 Q1, Q3, r9
vsub.s32 Q0, Q4, Q2
vqrdmulh.s32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vmla.s32 Q1, Q3, r11
// input[352]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 100)]
vmul.u32 Q5, Q0, r5
vsub.s32 Q3, Q2, Q1
vqrdmulh.s32 Q0, Q0, r4
vadd.s32 Q2, Q2, Q1
vmla.s32 Q5, Q0, r11
// input[124]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 124)]
vmul.u32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vqrdmulh.s32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(496)]
// Release input[376] from Q0
vmla.s32 Q6, Q4, r11
vstrw.u32 Q3, [r0,#(448)]
// Release input[112] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r14,#(-80)]
// Release input[232] from Q4
vadd.s32 Q2, Q2, Q6
// input[124]: Already loaded as Q1
vmul.u32 Q0, Q1, r9
// input[244]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -8)]
vqrdmulh.s32 Q1, Q1, r8
// input[364]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 112)]
vmla.s32 Q0, Q1, r11
vstrw.u32 Q2, [r14,#(400)]
// Release input[352] from Q2
vmul.u32 Q2, Q3, r9
vsub.s32 Q1, Q4, Q0
vqrdmulh.s32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vmla.s32 Q2, Q3, r11
// input[100]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 100)]
vmul.u32 Q5, Q1, r5
vsub.s32 Q3, Q0, Q2
vqrdmulh.s32 Q1, Q1, r4
vadd.s32 Q0, Q0, Q2
vmla.s32 Q5, Q1, r11
// input[248]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -4)]
vmul.u32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vqrdmulh.s32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r0,#(496)]
// Release input[124] from Q1
vmla.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(-32)]
// Release input[244] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(448)]
// Release input[364] from Q4
vadd.s32 Q0, Q0, Q6
// input[248]: Already loaded as Q2
vmul.u32 Q1, Q2, r9
// input[368]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 116)]
vqrdmulh.s32 Q2, Q2, r8
// input[104]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 104)]
vmla.s32 Q1, Q2, r11
vstrw.u32 Q0, [r0,#(400)]
// Release input[100] from Q0
vmul.u32 Q0, Q3, r9
vsub.s32 Q2, Q4, Q1
vqrdmulh.s32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vmla.s32 Q0, Q3, r11
// input[224]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -28)]
vmul.u32 Q5, Q2, r5
vsub.s32 Q3, Q1, Q0
vqrdmulh.s32 Q2, Q2, r4
vadd.s32 Q1, Q1, Q0
vmla.s32 Q5, Q2, r11
// input[380]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -124)]
vmul.u32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vqrdmulh.s32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(-16)]
// Release input[248] from Q2
vmla.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(464)]
// Release input[368] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r0,#(416)]
// Release input[104] from Q4
vadd.s32 Q1, Q1, Q6
// input[380]: Already loaded as Q0
vmul.u32 Q2, Q0, r9
// input[116]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 116)]
vqrdmulh.s32 Q0, Q0, r8
// input[236]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -16)]
vmla.s32 Q2, Q0, r11
vstrw.u32 Q1, [r14,#(-112)]
// Release input[224] from Q1
vmul.u32 Q1, Q3, r9
vsub.s32 Q0, Q4, Q2
vqrdmulh.s32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vmla.s32 Q1, Q3, r11
// input[356]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 104)]
vmul.u32 Q5, Q0, r5
vsub.s32 Q3, Q2, Q1
vqrdmulh.s32 Q0, Q0, r4
vadd.s32 Q2, Q2, Q1
vmla.s32 Q5, Q0, r11
vmul.u32 Q1, Q4, r7
vsub.s32 Q0, Q3, Q5
vqrdmulh.s32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r12,#(-496)]
// Release input[380] from Q0
vmla.s32 Q1, Q4, r11
vstrw.u32 Q3, [r0,#(464)]
// Release input[116] from Q3
vsub.s32 Q4, Q2, Q1
vstrw.u32 Q4, [r14,#(-64)]
// Release input[236] from Q4
vadd.s32 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(416)]
// Release input[356] from Q2
ldrd r9, r8, [r10], #+8
// input[132]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -120)]
vmul.u32 Q1, Q0, r9
// input[0]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 0)]
vqrdmulh.s32 Q0, Q0, r8
// input[4]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 4)]
vmla.s32 Q1, Q0, r11
vsub.s32 Q0, Q2, Q1
vstrw.u32 Q0, [r14,#(-480)]
// Release input[132] from Q0
vadd.s32 Q2, Q2, Q1
// input[4]: Already loaded as Q3
vmul.u32 Q0, Q3, r9
// input[256]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 4)]
vqrdmulh.s32 Q3, Q3, r8
// input[260]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 8)]
vmla.s32 Q0, Q3, r11
vstrw.u32 Q2, [r0,#(0)]
// Release input[0] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r0,#(16)]
// Release input[4] from Q3
vadd.s32 Q1, Q1, Q0
// input[260]: Already loaded as Q4
vmul.u32 Q0, Q4, r9
// input[128]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -124)]
vqrdmulh.s32 Q4, Q4, r8
// input[12]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 12)]
vmla.s32 Q0, Q4, r11
vstrw.u32 Q1, [r14,#(16)]
// Release input[256] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r14,#(32)]
// Release input[260] from Q4
vadd.s32 Q2, Q2, Q0
ldrd r9, r8, [r10], #+8
// input[12]: Already loaded as Q3
vmul.u32 Q0, Q3, r9
// input[264]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 12)]
vqrdmulh.s32 Q3, Q3, r8
// input[268]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 16)]
vmla.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(-496)]
// Release input[128] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r0,#(48)]
// Release input[12] from Q3
vadd.s32 Q1, Q1, Q0
// input[268]: Already loaded as Q4
vmul.u32 Q0, Q4, r9
// input[136]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -116)]
vqrdmulh.s32 Q4, Q4, r8
// input[140]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -112)]
vmla.s32 Q0, Q4, r11
vstrw.u32 Q1, [r14,#(48)]
// Release input[264] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r14,#(64)]
// Release input[268] from Q4
vadd.s32 Q2, Q2, Q0
// input[140]: Already loaded as Q3
vmul.u32 Q0, Q3, r9
// input[8]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 8)]
vqrdmulh.s32 Q3, Q3, r8
// input[276]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 24)]
vmla.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(-464)]
// Release input[136] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r14,#(-448)]
// Release input[140] from Q3
vadd.s32 Q1, Q1, Q0
ldrd r9, r8, [r10], #+8
// input[276]: Already loaded as Q4
vmul.u32 Q0, Q4, r9
// input[144]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -108)]
vqrdmulh.s32 Q4, Q4, r8
// input[148]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -104)]
vmla.s32 Q0, Q4, r11
vstrw.u32 Q1, [r0,#(32)]
// Release input[8] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r14,#(96)]
// Release input[276] from Q4
vadd.s32 Q2, Q2, Q0
// input[148]: Already loaded as Q3
vmul.u32 Q0, Q3, r9
// input[16]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 16)]
vqrdmulh.s32 Q3, Q3, r8
// input[20]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 20)]
vmla.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(-432)]
// Release input[144] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r14,#(-416)]
// Release input[148] from Q3
vadd.s32 Q1, Q1, Q0
// input[20]: Already loaded as Q4
vmul.u32 Q0, Q4, r9
// input[272]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 20)]
vqrdmulh.s32 Q4, Q4, r8
// input[156]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -96)]
vmla.s32 Q0, Q4, r11
vstrw.u32 Q1, [r0,#(64)]
// Release input[16] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r0,#(80)]
// Release input[20] from Q4
vadd.s32 Q2, Q2, Q0
ldrd r9, r8, [r10], #+8
// input[156]: Already loaded as Q3
vmul.u32 Q0, Q3, r9
// input[24]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 24)]
vqrdmulh.s32 Q3, Q3, r8
// input[28]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 28)]
vmla.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(80)]
// Release input[272] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r14,#(-384)]
// Release input[156] from Q3
vadd.s32 Q1, Q1, Q0
// input[28]: Already loaded as Q4
vmul.u32 Q0, Q4, r9
// input[280]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 28)]
vqrdmulh.s32 Q4, Q4, r8
// input[284]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 32)]
vmla.s32 Q0, Q4, r11
vstrw.u32 Q1, [r0,#(96)]
// Release input[24] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r0,#(112)]
// Release input[28] from Q4
vadd.s32 Q2, Q2, Q0
// input[284]: Already loaded as Q3
vmul.u32 Q0, Q3, r9
// input[152]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -100)]
vqrdmulh.s32 Q3, Q3, r8
// input[36]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 36)]
vmla.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(112)]
// Release input[280] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r14,#(128)]
// Release input[284] from Q3
vadd.s32 Q1, Q1, Q0
ldrd r9, r8, [r10], #+8
// input[36]: Already loaded as Q4
vmul.u32 Q0, Q4, r9
// input[288]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 36)]
vqrdmulh.s32 Q4, Q4, r8
// input[292]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 40)]
vmla.s32 Q0, Q4, r11
vstrw.u32 Q1, [r14,#(-400)]
// Release input[152] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r0,#(144)]
// Release input[36] from Q4
vadd.s32 Q2, Q2, Q0
// input[292]: Already loaded as Q3
vmul.u32 Q0, Q3, r9
// input[160]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -92)]
vqrdmulh.s32 Q3, Q3, r8
// input[164]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -88)]
vmla.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(144)]
// Release input[288] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r14,#(160)]
// Release input[292] from Q3
vadd.s32 Q1, Q1, Q0
// input[164]: Already loaded as Q4
vmul.u32 Q0, Q4, r9
// input[32]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 32)]
vqrdmulh.s32 Q4, Q4, r8
// input[300]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 48)]
vmla.s32 Q0, Q4, r11
vstrw.u32 Q1, [r14,#(-368)]
// Release input[160] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r14,#(-352)]
// Release input[164] from Q4
vadd.s32 Q2, Q2, Q0
ldrd r9, r8, [r10], #+8
// input[300]: Already loaded as Q3
vmul.u32 Q0, Q3, r9
// input[168]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -84)]
vqrdmulh.s32 Q3, Q3, r8
// input[172]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -80)]
vmla.s32 Q0, Q3, r11
vstrw.u32 Q2, [r0,#(128)]
// Release input[32] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r14,#(192)]
// Release input[300] from Q3
vadd.s32 Q1, Q1, Q0
// input[172]: Already loaded as Q4
vmul.u32 Q0, Q4, r9
// input[40]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 40)]
vqrdmulh.s32 Q4, Q4, r8
// input[44]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 44)]
vmla.s32 Q0, Q4, r11
vstrw.u32 Q1, [r14,#(-336)]
// Release input[168] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r14,#(-320)]
// Release input[172] from Q4
vadd.s32 Q2, Q2, Q0
// input[44]: Already loaded as Q3
vmul.u32 Q0, Q3, r9
// input[296]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 44)]
vqrdmulh.s32 Q3, Q3, r8
// input[180]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -72)]
vmla.s32 Q0, Q3, r11
vstrw.u32 Q2, [r0,#(160)]
// Release input[40] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r0,#(176)]
// Release input[44] from Q3
vadd.s32 Q1, Q1, Q0
ldrd r9, r8, [r10], #+8
// input[180]: Already loaded as Q4
vmul.u32 Q0, Q4, r9
// input[48]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 48)]
vqrdmulh.s32 Q4, Q4, r8
// input[52]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 52)]
vmla.s32 Q0, Q4, r11
vstrw.u32 Q1, [r14,#(176)]
// Release input[296] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r14,#(-288)]
// Release input[180] from Q4
vadd.s32 Q2, Q2, Q0
// input[52]: Already loaded as Q3
vmul.u32 Q0, Q3, r9
// input[304]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 52)]
vqrdmulh.s32 Q3, Q3, r8
// input[308]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 56)]
vmla.s32 Q0, Q3, r11
vstrw.u32 Q2, [r0,#(192)]
// Release input[48] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r0,#(208)]
// Release input[52] from Q3
vadd.s32 Q1, Q1, Q0
// input[308]: Already loaded as Q4
vmul.u32 Q0, Q4, r9
// input[176]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -76)]
vqrdmulh.s32 Q4, Q4, r8
// input[60]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 60)]
vmla.s32 Q0, Q4, r11
vstrw.u32 Q1, [r14,#(208)]
// Release input[304] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r14,#(224)]
// Release input[308] from Q4
vadd.s32 Q2, Q2, Q0
ldrd r9, r8, [r10], #+8
// input[60]: Already loaded as Q3
vmul.u32 Q0, Q3, r9
// input[312]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 60)]
vqrdmulh.s32 Q3, Q3, r8
// input[316]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 64)]
vmla.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(-304)]
// Release input[176] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r0,#(240)]
// Release input[60] from Q3
vadd.s32 Q1, Q1, Q0
// input[316]: Already loaded as Q4
vmul.u32 Q0, Q4, r9
// input[184]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -68)]
vqrdmulh.s32 Q4, Q4, r8
// input[188]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -64)]
vmla.s32 Q0, Q4, r11
vstrw.u32 Q1, [r14,#(240)]
// Release input[312] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r14,#(256)]
// Release input[316] from Q4
vadd.s32 Q2, Q2, Q0
// input[188]: Already loaded as Q3
vmul.u32 Q0, Q3, r9
// input[56]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 56)]
vqrdmulh.s32 Q3, Q3, r8
// input[324]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 72)]
vmla.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(-272)]
// Release input[184] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r14,#(-256)]
// Release input[188] from Q3
vadd.s32 Q1, Q1, Q0
ldrd r9, r8, [r10], #+8
// input[324]: Already loaded as Q4
vmul.u32 Q0, Q4, r9
// input[192]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -60)]
vqrdmulh.s32 Q4, Q4, r8
// input[196]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -56)]
vmla.s32 Q0, Q4, r11
vstrw.u32 Q1, [r0,#(224)]
// Release input[56] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r14,#(288)]
// Release input[324] from Q4
vadd.s32 Q2, Q2, Q0
// input[196]: Already loaded as Q3
vmul.u32 Q0, Q3, r9
// input[64]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 64)]
vqrdmulh.s32 Q3, Q3, r8
// input[68]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 68)]
vmla.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(-240)]
// Release input[192] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r14,#(-224)]
// Release input[196] from Q3
vadd.s32 Q1, Q1, Q0
// input[68]: Already loaded as Q4
vmul.u32 Q0, Q4, r9
// input[320]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 68)]
vqrdmulh.s32 Q4, Q4, r8
// input[204]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -48)]
vmla.s32 Q0, Q4, r11
vstrw.u32 Q1, [r0,#(256)]
// Release input[64] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r0,#(272)]
// Release input[68] from Q4
vadd.s32 Q2, Q2, Q0
ldrd r9, r8, [r10], #+8
// input[204]: Already loaded as Q3
vmul.u32 Q0, Q3, r9
// input[72]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 72)]
vqrdmulh.s32 Q3, Q3, r8
// input[76]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 76)]
vmla.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(272)]
// Release input[320] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r14,#(-192)]
// Release input[204] from Q3
vadd.s32 Q1, Q1, Q0
// input[76]: Already loaded as Q4
vmul.u32 Q0, Q4, r9
// input[328]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 76)]
vqrdmulh.s32 Q4, Q4, r8
// input[332]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 80)]
vmla.s32 Q0, Q4, r11
vstrw.u32 Q1, [r0,#(288)]
// Release input[72] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r0,#(304)]
// Release input[76] from Q4
vadd.s32 Q2, Q2, Q0
// input[332]: Already loaded as Q3
vmul.u32 Q0, Q3, r9
// input[200]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -52)]
vqrdmulh.s32 Q3, Q3, r8
// input[84]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 84)]
vmla.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(304)]
// Release input[328] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r14,#(320)]
// Release input[332] from Q3
vadd.s32 Q1, Q1, Q0
ldrd r9, r8, [r10], #+8
// input[84]: Already loaded as Q4
vmul.u32 Q0, Q4, r9
// input[336]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 84)]
vqrdmulh.s32 Q4, Q4, r8
// input[340]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 88)]
vmla.s32 Q0, Q4, r11
vstrw.u32 Q1, [r14,#(-208)]
// Release input[200] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r0,#(336)]
// Release input[84] from Q4
vadd.s32 Q2, Q2, Q0
// input[340]: Already loaded as Q3
vmul.u32 Q0, Q3, r9
// input[208]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -44)]
vqrdmulh.s32 Q3, Q3, r8
// input[212]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -40)]
vmla.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(336)]
// Release input[336] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r14,#(352)]
// Release input[340] from Q3
vadd.s32 Q1, Q1, Q0
// input[212]: Already loaded as Q4
vmul.u32 Q0, Q4, r9
// input[80]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 80)]
vqrdmulh.s32 Q4, Q4, r8
// input[348]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 96)]
vmla.s32 Q0, Q4, r11
vstrw.u32 Q1, [r14,#(-176)]
// Release input[208] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r14,#(-160)]
// Release input[212] from Q4
vadd.s32 Q2, Q2, Q0
ldrd r9, r8, [r10], #+8
// input[348]: Already loaded as Q3
vmul.u32 Q0, Q3, r9
// input[216]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -36)]
vqrdmulh.s32 Q3, Q3, r8
// input[220]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -32)]
vmla.s32 Q0, Q3, r11
vstrw.u32 Q2, [r0,#(320)]
// Release input[80] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r14,#(384)]
// Release input[348] from Q3
vadd.s32 Q1, Q1, Q0
// input[220]: Already loaded as Q4
vmul.u32 Q0, Q4, r9
// input[88]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 88)]
vqrdmulh.s32 Q4, Q4, r8
// input[92]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 92)]
vmla.s32 Q0, Q4, r11
vstrw.u32 Q1, [r14,#(-144)]
// Release input[216] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r14,#(-128)]
// Release input[220] from Q4
vadd.s32 Q2, Q2, Q0
// input[92]: Already loaded as Q3
vmul.u32 Q0, Q3, r9
// input[344]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 92)]
vqrdmulh.s32 Q3, Q3, r8
// input[228]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -24)]
vmla.s32 Q0, Q3, r11
vstrw.u32 Q2, [r0,#(352)]
// Release input[88] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r0,#(368)]
// Release input[92] from Q3
vadd.s32 Q1, Q1, Q0
ldrd r9, r8, [r10], #+8
// input[228]: Already loaded as Q4
vmul.u32 Q0, Q4, r9
// input[96]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 96)]
vqrdmulh.s32 Q4, Q4, r8
// input[100]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 100)]
vmla.s32 Q0, Q4, r11
vstrw.u32 Q1, [r14,#(368)]
// Release input[344] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r14,#(-96)]
// Release input[228] from Q4
vadd.s32 Q2, Q2, Q0
// input[100]: Already loaded as Q3
vmul.u32 Q0, Q3, r9
// input[352]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 100)]
vqrdmulh.s32 Q3, Q3, r8
// input[356]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 104)]
vmla.s32 Q0, Q3, r11
vstrw.u32 Q2, [r0,#(384)]
// Release input[96] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r0,#(400)]
// Release input[100] from Q3
vadd.s32 Q1, Q1, Q0
// input[356]: Already loaded as Q4
vmul.u32 Q0, Q4, r9
// input[224]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -28)]
vqrdmulh.s32 Q4, Q4, r8
// input[108]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 108)]
vmla.s32 Q0, Q4, r11
vstrw.u32 Q1, [r14,#(400)]
// Release input[352] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r14,#(416)]
// Release input[356] from Q4
vadd.s32 Q2, Q2, Q0
ldrd r9, r8, [r10], #+8
// input[108]: Already loaded as Q3
vmul.u32 Q0, Q3, r9
// input[360]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 108)]
vqrdmulh.s32 Q3, Q3, r8
// input[364]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 112)]
vmla.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(-112)]
// Release input[224] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r0,#(432)]
// Release input[108] from Q3
vadd.s32 Q1, Q1, Q0
// input[364]: Already loaded as Q4
vmul.u32 Q0, Q4, r9
// input[232]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -20)]
vqrdmulh.s32 Q4, Q4, r8
// input[236]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -16)]
vmla.s32 Q0, Q4, r11
vstrw.u32 Q1, [r14,#(432)]
// Release input[360] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r14,#(448)]
// Release input[364] from Q4
vadd.s32 Q2, Q2, Q0
// input[236]: Already loaded as Q3
vmul.u32 Q0, Q3, r9
// input[104]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 104)]
vqrdmulh.s32 Q3, Q3, r8
// input[372]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 120)]
vmla.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(-80)]
// Release input[232] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r14,#(-64)]
// Release input[236] from Q3
vadd.s32 Q1, Q1, Q0
ldrd r9, r8, [r10], #+8
// input[372]: Already loaded as Q4
vmul.u32 Q0, Q4, r9
// input[240]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -12)]
vqrdmulh.s32 Q4, Q4, r8
// input[244]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -8)]
vmla.s32 Q0, Q4, r11
vstrw.u32 Q1, [r0,#(416)]
// Release input[104] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r14,#(480)]
// Release input[372] from Q4
vadd.s32 Q2, Q2, Q0
// input[244]: Already loaded as Q3
vmul.u32 Q0, Q3, r9
// input[112]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 112)]
vqrdmulh.s32 Q3, Q3, r8
// input[116]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 116)]
vmla.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(-48)]
// Release input[240] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r14,#(-32)]
// Release input[244] from Q3
vadd.s32 Q1, Q1, Q0
// input[116]: Already loaded as Q4
vmul.u32 Q0, Q4, r9
// input[368]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 116)]
vqrdmulh.s32 Q4, Q4, r8
// input[252]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 0)]
vmla.s32 Q0, Q4, r11
vstrw.u32 Q1, [r0,#(448)]
// Release input[112] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r0,#(464)]
// Release input[116] from Q4
vadd.s32 Q2, Q2, Q0
ldrd r9, r8, [r10], #+8
// input[252]: Already loaded as Q3
vmul.u32 Q0, Q3, r9
// input[120]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 120)]
vqrdmulh.s32 Q3, Q3, r8
// input[124]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 124)]
vmla.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(464)]
// Release input[368] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r14,#(0)]
// Release input[252] from Q3
vadd.s32 Q1, Q1, Q0
// input[124]: Already loaded as Q4
vmul.u32 Q0, Q4, r9
// input[376]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 124)]
vqrdmulh.s32 Q4, Q4, r8
// input[380]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -124)]
vmla.s32 Q0, Q4, r11
vstrw.u32 Q1, [r0,#(480)]
// Release input[120] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r0,#(496)]
// Release input[124] from Q4
vadd.s32 Q2, Q2, Q0
// input[380]: Already loaded as Q3
vmul.u32 Q0, Q3, r9
// input[248]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -4)]
vqrdmulh.s32 Q3, Q3, r8
vmla.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(496)]
// Release input[376] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r12,#(-496)]
// Release input[380] from Q3
vadd.s32 Q1, Q1, Q0
vstrw.u32 Q1, [r14,#(-16)]
// Release input[248] from Q1
.equ modulus_inv, 2773805439
movw r9, #:lower16:modulus_inv
movt r9, #:upper16:modulus_inv
// Restore MVE vector registers
vpop {d8-d15}
// Restore GPRs
pop {r4-r11,lr}
bx lr

// Line count:        3350
// Instruction count: 2395