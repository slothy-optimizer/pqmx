
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
.global ntt_384_u32_88299073_4883425_incomplete_good_twiddles
ntt_384_u32_88299073_4883425_incomplete_good_twiddles: // For base multiplication
.word   75231281 // zeta^  0 * 2^31 = 4883425^  0 * 2^31 = 1 * 2^31
.word 3951395343 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 4883425^  0 * 2066201025 * 2^31
.word   15452769 // zeta^ 64 * 2^31 = 4883425^ 64 * 2^31 = 85764717 * 2^31
.word 2033538015 // zeta^ 64 * f(q^(-1) mod 2^32) * 2^31 = 4883425^ 64 * 2066201025 * 2^31
.word   19987225 // zeta^ 32 * 2^31 = 4883425^ 32 * 2^31 = 19144749 * 2^31
.word 1892589863 // zeta^ 32 * f(q^(-1) mod 2^32) * 2^31 = 4883425^ 32 * 2066201025 * 2^31
.word   50503029 // zeta^ 96 * 2^31 = 4883425^ 96 * 2^31 = 24724272 * 2^31
.word 2741681611 // zeta^ 96 * f(q^(-1) mod 2^32) * 2^31 = 4883425^ 96 * 2066201025 * 2^31
.word   81982457 // zeta^ 16 * 2^31 = 4883425^ 16 * 2^31 = 76960665 * 2^31
.word 2158501959 // zeta^ 16 * f(q^(-1) mod 2^32) * 2^31 = 4883425^ 16 * 2066201025 * 2^31
.word   20023469 // zeta^ 80 * 2^31 = 4883425^ 80 * 2^31 = 41822566 * 2^31
.word 1552412819 // zeta^ 80 * f(q^(-1) mod 2^32) * 2^31 = 4883425^ 80 * 2066201025 * 2^31
.word   55876839 // zeta^ 48 * 2^31 = 4883425^ 48 * 2^31 = 22179761 * 2^31
.word 1939982041 // zeta^ 48 * f(q^(-1) mod 2^32) * 2^31 = 4883425^ 48 * 2066201025 * 2^31
.word   43619891 // zeta^112 * 2^31 = 4883425^112 * 2^31 = 44400103 * 2^31
.word 2850416781 // zeta^112 * f(q^(-1) mod 2^32) * 2^31 = 4883425^112 * 2066201025 * 2^31
.word  172662323 // zeta^  8 * 2^31 = 4883425^  8 * 2^31 = 26094785 * 2^31
.word 3064389773 // zeta^  8 * f(q^(-1) mod 2^32) * 2^31 = 4883425^  8 * 2066201025 * 2^31
.word   71853543 // zeta^ 72 * 2^31 = 4883425^ 72 * 2^31 = 58369496 * 2^31
.word 4036378073 // zeta^ 72 * f(q^(-1) mod 2^32) * 2^31 = 4883425^ 72 * 2066201025 * 2^31
.word   23697415 // zeta^ 40 * 2^31 = 4883425^ 40 * 2^31 = 55309930 * 2^31
.word  443962297 // zeta^ 40 * f(q^(-1) mod 2^32) * 2^31 = 4883425^ 40 * 2066201025 * 2^31
.word   76499159 // zeta^104 * 2^31 = 4883425^104 * 2^31 = 78628712 * 2^31
.word 2660611817 // zeta^104 * f(q^(-1) mod 2^32) * 2^31 = 4883425^104 * 2066201025 * 2^31
.word   56990949 // zeta^ 24 * 2^31 = 4883425^ 24 * 2^31 = 9497777 * 2^31
.word  337656411 // zeta^ 24 * f(q^(-1) mod 2^32) * 2^31 = 4883425^ 24 * 2066201025 * 2^31
.word  120013125 // zeta^ 88 * 2^31 = 4883425^ 88 * 2^31 = 20668553 * 2^31
.word  616164859 // zeta^ 88 * f(q^(-1) mod 2^32) * 2^31 = 4883425^ 88 * 2066201025 * 2^31
.word   28856125 // zeta^ 56 * 2^31 = 4883425^ 56 * 2^31 = 41675533 * 2^31
.word  561917443 // zeta^ 56 * f(q^(-1) mod 2^32) * 2^31 = 4883425^ 56 * 2066201025 * 2^31
.word  159401217 // zeta^120 * 2^31 = 4883425^120 * 2^31 = 65038662 * 2^31
.word  642203967 // zeta^120 * f(q^(-1) mod 2^32) * 2^31 = 4883425^120 * 2066201025 * 2^31
.word   12190033 // zeta^  4 * 2^31 = 4883425^  4 * 2^31 = 4883425 * 2^31
.word 3933894895 // zeta^  4 * f(q^(-1) mod 2^32) * 2^31 = 4883425^  4 * 2066201025 * 2^31
.word  108088419 // zeta^ 68 * 2^31 = 4883425^ 68 * 2^31 = 13818672 * 2^31
.word  273473117 // zeta^ 68 * f(q^(-1) mod 2^32) * 2^31 = 4883425^ 68 * 2066201025 * 2^31
.word  142353279 // zeta^ 36 * 2^31 = 4883425^ 36 * 2^31 = 4402195 * 2^31
.word 2003400257 // zeta^ 36 * f(q^(-1) mod 2^32) * 2^31 = 4883425^ 36 * 2066201025 * 2^31
.word  143392463 // zeta^100 * 2^31 = 4883425^100 * 2^31 = 35160276 * 2^31
.word  482889457 // zeta^100 * f(q^(-1) mod 2^32) * 2^31 = 4883425^100 * 2066201025 * 2^31
.word  119167385 // zeta^ 20 * 2^31 = 4883425^ 20 * 2^31 = 52712221 * 2^31
.word 1897128615 // zeta^ 20 * f(q^(-1) mod 2^32) * 2^31 = 4883425^ 20 * 2066201025 * 2^31
.word    9268541 // zeta^ 84 * 2^31 = 4883425^ 84 * 2^31 = 19136236 * 2^31
.word 1847889923 // zeta^ 84 * f(q^(-1) mod 2^32) * 2^31 = 4883425^ 84 * 2066201025 * 2^31
.word   80397967 // zeta^ 52 * 2^31 = 4883425^ 52 * 2^31 = 81877099 * 2^31
.word 3839489841 // zeta^ 52 * f(q^(-1) mod 2^32) * 2^31 = 4883425^ 52 * 2066201025 * 2^31
.word   16520015 // zeta^116 * 2^31 = 4883425^116 * 2^31 = 18306165 * 2^31
.word  838359665 // zeta^116 * f(q^(-1) mod 2^32) * 2^31 = 4883425^116 * 2066201025 * 2^31
.word  115982427 // zeta^ 12 * 2^31 = 4883425^ 12 * 2^31 = 27771120 * 2^31
.word 3605477477 // zeta^ 12 * f(q^(-1) mod 2^32) * 2^31 = 4883425^ 12 * 2066201025 * 2^31
.word   55226367 // zeta^ 76 * 2^31 = 4883425^ 76 * 2^31 = 50302558 * 2^31
.word  917047745 // zeta^ 76 * f(q^(-1) mod 2^32) * 2^31 = 4883425^ 76 * 2066201025 * 2^31
.word  136968867 // zeta^ 44 * 2^31 = 4883425^ 44 * 2^31 = 63650411 * 2^31
.word   40189981 // zeta^ 44 * f(q^(-1) mod 2^32) * 2^31 = 4883425^ 44 * 2066201025 * 2^31
.word   68313423 // zeta^108 * 2^31 = 4883425^108 * 2^31 = 69050800 * 2^31
.word 3720973425 // zeta^108 * f(q^(-1) mod 2^32) * 2^31 = 4883425^108 * 2066201025 * 2^31
.word  117342749 // zeta^ 28 * 2^31 = 4883425^ 28 * 2^31 = 32879858 * 2^31
.word  212726563 // zeta^ 28 * f(q^(-1) mod 2^32) * 2^31 = 4883425^ 28 * 2066201025 * 2^31
.word   64009947 // zeta^ 92 * 2^31 = 4883425^ 92 * 2^31 = 70872893 * 2^31
.word  925164005 // zeta^ 92 * f(q^(-1) mod 2^32) * 2^31 = 4883425^ 92 * 2066201025 * 2^31
.word   55029279 // zeta^ 60 * 2^31 = 4883425^ 60 * 2^31 = 42569847 * 2^31
.word 1315460001 // zeta^ 60 * f(q^(-1) mod 2^32) * 2^31 = 4883425^ 60 * 2066201025 * 2^31
.word   99141453 // zeta^124 * 2^31 = 4883425^124 * 2^31 = 15592642 * 2^31
.word 4156561907 // zeta^124 * f(q^(-1) mod 2^32) * 2^31 = 4883425^124 * 2066201025 * 2^31
.word   28520561 // zeta^128 * 2^31 = 4883425^128 * 2^31 = 85764716 * 2^31
.word 2377109967 // zeta^128 * f(q^(-1) mod 2^32) * 2^31 = 4883425^128 * 2066201025 * 2^31
.word  101366865 // zeta^192 * 2^31 = 4883425^192 * 2^31 = 88299072 * 2^31
.word  343571951 // zeta^192 * f(q^(-1) mod 2^32) * 2^31 = 4883425^192 * 2066201025 * 2^31
.word  118814877 // zeta^160 * 2^31 = 4883425^160 * 2^31 = 5579523 * 2^31
.word  849091747 // zeta^160 * f(q^(-1) mod 2^32) * 2^31 = 4883425^160 * 2066201025 * 2^31
.word  156610921 // zeta^224 * 2^31 = 4883425^224 * 2^31 = 69154324 * 2^31
.word 2402377431 // zeta^224 * f(q^(-1) mod 2^32) * 2^31 = 4883425^224 * 2066201025 * 2^31
.word   26340085 // zeta^144 * 2^31 = 4883425^144 * 2^31 = 53160974 * 2^31
.word 3688878155 // zeta^144 * f(q^(-1) mod 2^32) * 2^31 = 4883425^144 * 2066201025 * 2^31
.word   94615689 // zeta^208 * 2^31 = 4883425^208 * 2^31 = 11338408 * 2^31
.word 2136465335 // zeta^208 * f(q^(-1) mod 2^32) * 2^31 = 4883425^208 * 2066201025 * 2^31
.word   76042125 // zeta^176 * 2^31 = 4883425^176 * 2^31 = 22220342 * 2^31
.word  910434739 // zeta^176 * f(q^(-1) mod 2^32) * 2^31 = 4883425^176 * 2066201025 * 2^31
.word  120721307 // zeta^240 * 2^31 = 4883425^240 * 2^31 = 66119312 * 2^31
.word 2354985253 // zeta^240 * f(q^(-1) mod 2^32) * 2^31 = 4883425^240 * 2066201025 * 2^31
.word  164088439 // zeta^136 * 2^31 = 4883425^136 * 2^31 = 32274711 * 2^31
.word  971988297 // zeta^136 * f(q^(-1) mod 2^32) * 2^31 = 4883425^136 * 2066201025 * 2^31
.word    3935823 // zeta^200 * 2^31 = 4883425^200 * 2^31 = 62204288 * 2^31
.word 1230577521 // zeta^200 * f(q^(-1) mod 2^32) * 2^31 = 4883425^200 * 2066201025 * 2^31
.word  141100817 // zeta^168 * 2^31 = 4883425^168 * 2^31 = 23318782 * 2^31
.word 2216649519 // zeta^168 * f(q^(-1) mod 2^32) * 2^31 = 4883425^168 * 2066201025 * 2^31
.word  152900731 // zeta^232 * 2^31 = 4883425^232 * 2^31 = 32989143 * 2^31
.word 3851004997 // zeta^232 * f(q^(-1) mod 2^32) * 2^31 = 4883425^232 * 2066201025 * 2^31
.word  151321249 // zeta^152 * 2^31 = 4883425^152 * 2^31 = 11170776 * 2^31
.word  278508447 // zeta^152 * f(q^(-1) mod 2^32) * 2^31 = 4883425^152 * 2066201025 * 2^31
.word  119607197 // zeta^216 * 2^31 = 4883425^216 * 2^31 = 78801296 * 2^31
.word 3957310883 // zeta^216 * f(q^(-1) mod 2^32) * 2^31 = 4883425^216 * 2066201025 * 2^31
.word   42246019 // zeta^184 * 2^31 = 4883425^184 * 2^31 = 23363129 * 2^31
.word   80286525 // zeta^184 * f(q^(-1) mod 2^32) * 2^31 = 4883425^184 * 2066201025 * 2^31
.word  147742021 // zeta^248 * 2^31 = 4883425^248 * 2^31 = 46623540 * 2^31
.word 3733049851 // zeta^248 * f(q^(-1) mod 2^32) * 2^31 = 4883425^248 * 2066201025 * 2^31
.word    7599313 // zeta^132 * 2^31 = 4883425^132 * 2^31 = 8935247 * 2^31
.word  634545519 // zeta^132 * f(q^(-1) mod 2^32) * 2^31 = 4883425^132 * 2066201025 * 2^31
.word  164408113 // zeta^196 * 2^31 = 4883425^196 * 2^31 = 83415648 * 2^31
.word  361072399 // zeta^196 * f(q^(-1) mod 2^32) * 2^31 = 4883425^196 * 2066201025 * 2^31
.word   89338257 // zeta^164 * 2^31 = 4883425^164 * 2^31 = 30758081 * 2^31
.word 2774456495 // zeta^164 * f(q^(-1) mod 2^32) * 2^31 = 4883425^164 * 2066201025 * 2^31
.word   34244867 // zeta^228 * 2^31 = 4883425^228 * 2^31 = 83896878 * 2^31
.word 2291567037 // zeta^228 * f(q^(-1) mod 2^32) * 2^31 = 4883425^228 * 2066201025 * 2^31
.word  154998375 // zeta^148 * 2^31 = 4883425^148 * 2^31 = 54723088 * 2^31
.word 4245728601 // zeta^148 * f(q^(-1) mod 2^32) * 2^31 = 4883425^148 * 2066201025 * 2^31
.word   57430761 // zeta^212 * 2^31 = 4883425^212 * 2^31 = 35586852 * 2^31
.word 2397838679 // zeta^212 * f(q^(-1) mod 2^32) * 2^31 = 4883425^212 * 2066201025 * 2^31
.word   24421121 // zeta^180 * 2^31 = 4883425^180 * 2^31 = 24728139 * 2^31
.word 1293837119 // zeta^180 * f(q^(-1) mod 2^32) * 2^31 = 4883425^180 * 2066201025 * 2^31
.word   96200179 // zeta^244 * 2^31 = 4883425^244 * 2^31 = 6421974 * 2^31
.word  455477453 // zeta^244 * f(q^(-1) mod 2^32) * 2^31 = 4883425^244 * 2066201025 * 2^31
.word   27543013 // zeta^140 * 2^31 = 4883425^140 * 2^31 = 22531438 * 2^31
.word 1606537563 // zeta^140 * f(q^(-1) mod 2^32) * 2^31 = 4883425^140 * 2066201025 * 2^31
.word   60615719 // zeta^204 * 2^31 = 4883425^204 * 2^31 = 60527953 * 2^31
.word  689489817 // zeta^204 * f(q^(-1) mod 2^32) * 2^31 = 4883425^204 * 2066201025 * 2^31
.word   19643629 // zeta^172 * 2^31 = 4883425^172 * 2^31 = 5400389 * 2^31
.word 3680783443 // zeta^172 * f(q^(-1) mod 2^32) * 2^31 = 4883425^172 * 2066201025 * 2^31
.word   39629279 // zeta^236 * 2^31 = 4883425^236 * 2^31 = 24648662 * 2^31
.word 4254777313 // zeta^236 * f(q^(-1) mod 2^32) * 2^31 = 4883425^236 * 2066201025 * 2^31
.word   34966271 // zeta^156 * 2^31 = 4883425^156 * 2^31 = 37993035 * 2^31
.word  712437441 // zeta^156 * f(q^(-1) mod 2^32) * 2^31 = 4883425^156 * 2066201025 * 2^31
.word   59255397 // zeta^220 * 2^31 = 4883425^220 * 2^31 = 55419215 * 2^31
.word 4082240731 // zeta^220 * f(q^(-1) mod 2^32) * 2^31 = 4883425^220 * 2066201025 * 2^31
.word  132411247 // zeta^188 * 2^31 = 4883425^188 * 2^31 = 61321868 * 2^31
.word 2841101905 // zeta^188 * f(q^(-1) mod 2^32) * 2^31 = 4883425^188 * 2066201025 * 2^31
.word  121568867 // zeta^252 * 2^31 = 4883425^252 * 2^31 = 45729226 * 2^31
.word 2979507293 // zeta^252 * f(q^(-1) mod 2^32) * 2^31 = 4883425^252 * 2066201025 * 2^31
.word  161145377 // zeta^256 * 2^31 = 4883425^256 * 2^31 = 2534356 * 2^31
.word 2261429279 // zeta^256 * f(q^(-1) mod 2^32) * 2^31 = 4883425^256 * 2066201025 * 2^31
.word  148077585 // zeta^320 * 2^31 = 4883425^320 * 2^31 = 2534357 * 2^31
.word 1917857327 // zeta^320 * f(q^(-1) mod 2^32) * 2^31 = 4883425^320 * 2066201025 * 2^31
.word  126095117 // zeta^288 * 2^31 = 4883425^288 * 2^31 = 63574801 * 2^31
.word 1553285683 // zeta^288 * f(q^(-1) mod 2^32) * 2^31 = 4883425^288 * 2066201025 * 2^31
.word   57783269 // zeta^352 * 2^31 = 4883425^352 * 2^31 = 82719550 * 2^31
.word 3445875547 // zeta^352 * f(q^(-1) mod 2^32) * 2^31 = 4883425^352 * 2066201025 * 2^31
.word  156574677 // zeta^272 * 2^31 = 4883425^272 * 2^31 = 46476507 * 2^31
.word 2742554475 // zeta^272 * f(q^(-1) mod 2^32) * 2^31 = 4883425^272 * 2066201025 * 2^31
.word  150258061 // zeta^336 * 2^31 = 4883425^336 * 2^31 = 35138099 * 2^31
.word  606089139 // zeta^336 * f(q^(-1) mod 2^32) * 2^31 = 4883425^336 * 2066201025 * 2^31
.word  132978255 // zeta^304 * 2^31 = 4883425^304 * 2^31 = 43898970 * 2^31
.word 1444550513 // zeta^304 * f(q^(-1) mod 2^32) * 2^31 = 4883425^304 * 2066201025 * 2^31
.word  100556021 // zeta^368 * 2^31 = 4883425^368 * 2^31 = 66078731 * 2^31
.word 3384532555 // zeta^368 * f(q^(-1) mod 2^32) * 2^31 = 4883425^368 * 2066201025 * 2^31
.word  104744603 // zeta^264 * 2^31 = 4883425^264 * 2^31 = 29929577 * 2^31
.word  258589221 // zeta^264 * f(q^(-1) mod 2^32) * 2^31 = 4883425^264 * 2066201025 * 2^31
.word   12509707 // zeta^328 * 2^31 = 4883425^328 * 2^31 = 56024362 * 2^31
.word 3322978997 // zeta^328 * f(q^(-1) mod 2^32) * 2^31 = 4883425^328 * 2066201025 * 2^31
.word  100098987 // zeta^296 * 2^31 = 4883425^296 * 2^31 = 9670361 * 2^31
.word 1634355477 // zeta^296 * f(q^(-1) mod 2^32) * 2^31 = 4883425^296 * 2066201025 * 2^31
.word   35497329 // zeta^360 * 2^31 = 4883425^360 * 2^31 = 64980291 * 2^31
.word 2078317775 // zeta^360 * f(q^(-1) mod 2^32) * 2^31 = 4883425^360 * 2066201025 * 2^31
.word   56585021 // zeta^280 * 2^31 = 4883425^280 * 2^31 = 67630520 * 2^31
.word 3678802435 // zeta^280 * f(q^(-1) mod 2^32) * 2^31 = 4883425^280 * 2066201025 * 2^31
.word   25276897 // zeta^344 * 2^31 = 4883425^344 * 2^31 = 77128297 * 2^31
.word 4016458847 // zeta^344 * f(q^(-1) mod 2^32) * 2^31 = 4883425^344 * 2066201025 * 2^31
.word   17196929 // zeta^312 * 2^31 = 4883425^312 * 2^31 = 23260411 * 2^31
.word 3652763327 // zeta^312 * f(q^(-1) mod 2^32) * 2^31 = 4883425^312 * 2066201025 * 2^31
.word  134352127 // zeta^376 * 2^31 = 4883425^376 * 2^31 = 64935944 * 2^31
.word 4214680769 // zeta^376 * f(q^(-1) mod 2^32) * 2^31 = 4883425^376 * 2066201025 * 2^31
.word   68509727 // zeta^260 * 2^31 = 4883425^260 * 2^31 = 74480401 * 2^31
.word 4021494177 // zeta^260 * f(q^(-1) mod 2^32) * 2^31 = 4883425^260 * 2066201025 * 2^31
.word  168998833 // zeta^324 * 2^31 = 4883425^324 * 2^31 = 79363826 * 2^31
.word 3660421775 // zeta^324 * f(q^(-1) mod 2^32) * 2^31 = 4883425^324 * 2066201025 * 2^31
.word   33205683 // zeta^292 * 2^31 = 4883425^292 * 2^31 = 53138797 * 2^31
.word 3812077837 // zeta^292 * f(q^(-1) mod 2^32) * 2^31 = 4883425^292 * 2066201025 * 2^31
.word   87259889 // zeta^356 * 2^31 = 4883425^356 * 2^31 = 57540992 * 2^31
.word 1520510799 // zeta^356 * f(q^(-1) mod 2^32) * 2^31 = 4883425^356 * 2066201025 * 2^31
.word  167329605 // zeta^276 * 2^31 = 4883425^276 * 2^31 = 69162837 * 2^31
.word 2447077371 // zeta^276 * f(q^(-1) mod 2^32) * 2^31 = 4883425^276 * 2066201025 * 2^31
.word   21599771 // zeta^340 * 2^31 = 4883425^340 * 2^31 = 33575985 * 2^31
.word   49238693 // zeta^340 * f(q^(-1) mod 2^32) * 2^31 = 4883425^340 * 2066201025 * 2^31
.word  160078131 // zeta^308 * 2^31 = 4883425^308 * 2^31 = 69992908 * 2^31
.word 3456607629 // zeta^308 * f(q^(-1) mod 2^32) * 2^31 = 4883425^308 * 2066201025 * 2^31
.word  152177025 // zeta^372 * 2^31 = 4883425^372 * 2^31 = 63570934 * 2^31
.word 3001130175 // zeta^372 * f(q^(-1) mod 2^32) * 2^31 = 4883425^372 * 2066201025 * 2^31
.word  121371779 // zeta^268 * 2^31 = 4883425^268 * 2^31 = 37996515 * 2^31
.word 3377919549 // zeta^268 * f(q^(-1) mod 2^32) * 2^31 = 4883425^268 * 2066201025 * 2^31
.word  149055133 // zeta^332 * 2^31 = 4883425^332 * 2^31 = 65767635 * 2^31
.word 2688429731 // zeta^332 * f(q^(-1) mod 2^32) * 2^31 = 4883425^332 * 2066201025 * 2^31
.word  108284723 // zeta^300 * 2^31 = 4883425^300 * 2^31 = 19248273 * 2^31
.word  573993869 // zeta^300 * f(q^(-1) mod 2^32) * 2^31 = 4883425^300 * 2066201025 * 2^31
.word  156954517 // zeta^364 * 2^31 = 4883425^364 * 2^31 = 82898684 * 2^31
.word  614183851 // zeta^364 * f(q^(-1) mod 2^32) * 2^31 = 4883425^364 * 2066201025 * 2^31
.word  112588199 // zeta^284 * 2^31 = 4883425^284 * 2^31 = 17426180 * 2^31
.word 3369803289 // zeta^284 * f(q^(-1) mod 2^32) * 2^31 = 4883425^284 * 2066201025 * 2^31
.word  141631875 // zeta^348 * 2^31 = 4883425^348 * 2^31 = 50306038 * 2^31
.word 3582529853 // zeta^348 * f(q^(-1) mod 2^32) * 2^31 = 4883425^348 * 2066201025 * 2^31
.word   77456693 // zeta^316 * 2^31 = 4883425^316 * 2^31 = 72706431 * 2^31
.word  138405387 // zeta^316 * f(q^(-1) mod 2^32) * 2^31 = 4883425^316 * 2066201025 * 2^31
.word   44186899 // zeta^380 * 2^31 = 4883425^380 * 2^31 = 26977205 * 2^31
.word 1453865389 // zeta^380 * f(q^(-1) mod 2^32) * 2^31 = 4883425^380 * 2066201025 * 2^31
// End of twiddles for base multiplication

.global ntt_384_u32_88299073_4883425_incomplete_good_scale
ntt_384_u32_88299073_4883425_incomplete_good_scale: // Constants for scaling by 1/N
.word 75231281 // 1/96
.word 3951395343 // 1/96 twisted
.data
roots:
.word    2534356 /// zeta^256 * 2^31 = 4883425^256 * 2^31 = 2534356 * 2^31
.word   61636979 /// zeta^256 * f(q^(-1) mod 2^32) * 2^31 = 4883425^256 * 2066201025 * 2^31
.word   85764716 /// zeta^128 * 2^31 = 4883425^128 * 2^31 = 85764716 * 2^31
.word 2085846645 /// zeta^128 * f(q^(-1) mod 2^32) * 2^31 = 4883425^128 * 2066201025 * 2^31
.word          1 // zeta^  0 * 2^31 = 4883425^  0 * 2^31 = 1 * 2^31
.word         24 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 4883425^  0 * 2066201025 * 2^31
.word          1 // zeta^  0 * 2^31 = 4883425^  0 * 2^31 = 1 * 2^31
.word         24 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 4883425^  0 * 2066201025 * 2^31
.word   63574801 // zeta^288 * 2^31 = 4883425^288 * 2^31 = 63574801 * 2^31
.word 1546175299 // zeta^288 * f(q^(-1) mod 2^32) * 2^31 = 4883425^288 * 2066201025 * 2^31
.word          1 // zeta^  0 * 2^31 = 4883425^  0 * 2^31 = 1 * 2^31
.word         24 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 4883425^  0 * 2066201025 * 2^31
.word          1 // zeta^  0 * 2^31 = 4883425^  0 * 2^31 = 1 * 2^31
.word         24 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 4883425^  0 * 2066201025 * 2^31
.word   63574801 // zeta^288 * 2^31 = 4883425^288 * 2^31 = 63574801 * 2^31
.word 1546175299 // zeta^288 * f(q^(-1) mod 2^32) * 2^31 = 4883425^288 * 2066201025 * 2^31
.word   63574801 // zeta^288 * 2^31 = 4883425^288 * 2^31 = 63574801 * 2^31
.word 1546175299 // zeta^288 * f(q^(-1) mod 2^32) * 2^31 = 4883425^288 * 2066201025 * 2^31
.word   53160974 // zeta^144 * 2^31 = 4883425^144 * 2^31 = 53160974 * 2^31
.word 1292905106 // zeta^144 * f(q^(-1) mod 2^32) * 2^31 = 4883425^144 * 2066201025 * 2^31
.word   22179761 // zeta^ 48 * 2^31 = 4883425^ 48 * 2^31 = 22179761 * 2^31
.word  539424395 // zeta^ 48 * f(q^(-1) mod 2^32) * 2^31 = 4883425^ 48 * 2066201025 * 2^31
.word   53160974 // zeta^144 * 2^31 = 4883425^144 * 2^31 = 53160974 * 2^31
.word 1292905106 // zeta^144 * f(q^(-1) mod 2^32) * 2^31 = 4883425^144 * 2066201025 * 2^31
.word   29929577 // zeta^264 * 2^31 = 4883425^264 * 2^31 = 29929577 * 2^31
.word  727904326 // zeta^264 * f(q^(-1) mod 2^32) * 2^31 = 4883425^264 * 2066201025 * 2^31
.word   23318782 // zeta^168 * 2^31 = 4883425^168 * 2^31 = 23318782 * 2^31
.word  567126034 // zeta^168 * f(q^(-1) mod 2^32) * 2^31 = 4883425^168 * 2066201025 * 2^31
.word   22179761 // zeta^ 48 * 2^31 = 4883425^ 48 * 2^31 = 22179761 * 2^31
.word  539424395 // zeta^ 48 * f(q^(-1) mod 2^32) * 2^31 = 4883425^ 48 * 2066201025 * 2^31
.word    9497777 // zeta^ 24 * 2^31 = 4883425^ 24 * 2^31 = 9497777 * 2^31
.word  230991336 // zeta^ 24 * f(q^(-1) mod 2^32) * 2^31 = 4883425^ 24 * 2066201025 * 2^31
.word   23260411 // zeta^312 * 2^31 = 4883425^312 * 2^31 = 23260411 * 2^31
.word  565706418 // zeta^312 * f(q^(-1) mod 2^32) * 2^31 = 4883425^312 * 2066201025 * 2^31
.word          1 // XX: zeta^  0 * 2^31 = 4883425^  0 * 2^31 = 1 * 2^31
.word         24 /// zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 4883425^  0 * 2066201025 * 2^31
.word   63574801 // XX: zeta^288 * 2^31 = 4883425^288 * 2^31 = 63574801 * 2^31
.word 1546175299 /// zeta^288 * f(q^(-1) mod 2^32) * 2^31 = 4883425^288 * 2066201025 * 2^31
.word   53160974 // XX: zeta^144 * 2^31 = 4883425^144 * 2^31 = 53160974 * 2^31
.word 1292905106 /// zeta^144 * f(q^(-1) mod 2^32) * 2^31 = 4883425^144 * 2066201025 * 2^31
.word   22179761 // XX: zeta^ 48 * 2^31 = 4883425^ 48 * 2^31 = 22179761 * 2^31
.word  539424395 /// zeta^ 48 * f(q^(-1) mod 2^32) * 2^31 = 4883425^ 48 * 2066201025 * 2^31
.word   29929577 // XX: zeta^264 * 2^31 = 4883425^264 * 2^31 = 29929577 * 2^31
.word  727904326 /// zeta^264 * f(q^(-1) mod 2^32) * 2^31 = 4883425^264 * 2066201025 * 2^31
.word   23318782 // XX: zeta^168 * 2^31 = 4883425^168 * 2^31 = 23318782 * 2^31
.word  567126034 /// zeta^168 * f(q^(-1) mod 2^32) * 2^31 = 4883425^168 * 2066201025 * 2^31
.word    9497777 // XX: zeta^ 24 * 2^31 = 4883425^ 24 * 2^31 = 9497777 * 2^31
.word  230991336 /// zeta^ 24 * f(q^(-1) mod 2^32) * 2^31 = 4883425^ 24 * 2066201025 * 2^31
.word   23260411 // XX: zeta^312 * 2^31 = 4883425^312 * 2^31 = 23260411 * 2^31
.word  565706418 /// zeta^312 * f(q^(-1) mod 2^32) * 2^31 = 4883425^312 * 2066201025 * 2^31
.word    8935247 // XX: zeta^132 * 2^31 = 4883425^132 * 2^31 = 8935247 * 2^31
.word  217310286 /// zeta^132 * f(q^(-1) mod 2^32) * 2^31 = 4883425^132 * 2066201025 * 2^31
.word    4402195 // XX: zeta^ 36 * 2^31 = 4883425^ 36 * 2^31 = 4402195 * 2^31
.word  107063885 /// zeta^ 36 * f(q^(-1) mod 2^32) * 2^31 = 4883425^ 36 * 2066201025 * 2^31
.word   69162837 // XX: zeta^276 * 2^31 = 4883425^276 * 2^31 = 69162837 * 2^31
.word 1682079511 /// zeta^276 * f(q^(-1) mod 2^32) * 2^31 = 4883425^276 * 2066201025 * 2^31
.word   24728139 // XX: zeta^180 * 2^31 = 4883425^180 * 2^31 = 24728139 * 2^31
.word  601402397 /// zeta^180 * f(q^(-1) mod 2^32) * 2^31 = 4883425^180 * 2066201025 * 2^31
.word   27771120 // XX: zeta^ 12 * 2^31 = 4883425^ 12 * 2^31 = 27771120 * 2^31
.word  675409425 /// zeta^ 12 * f(q^(-1) mod 2^32) * 2^31 = 4883425^ 12 * 2066201025 * 2^31
.word   19248273 // XX: zeta^300 * 2^31 = 4883425^300 * 2^31 = 19248273 * 2^31
.word  468128941 /// zeta^300 * f(q^(-1) mod 2^32) * 2^31 = 4883425^300 * 2066201025 * 2^31
.word   37993035 // XX: zeta^156 * 2^31 = 4883425^156 * 2^31 = 37993035 * 2^31
.word  924012208 /// zeta^156 * f(q^(-1) mod 2^32) * 2^31 = 4883425^156 * 2066201025 * 2^31
.word   42569847 // XX: zeta^ 60 * 2^31 = 4883425^ 60 * 2^31 = 42569847 * 2^31
.word 1035322877 /// zeta^ 60 * f(q^(-1) mod 2^32) * 2^31 = 4883425^ 60 * 2066201025 * 2^31
.text
.align 4
roots_addr: .word roots
.syntax unified
.type ntt_384_u32_88299073_4883425_incomplete_good, %function
.global ntt_384_u32_88299073_4883425_incomplete_good
ntt_384_u32_88299073_4883425_incomplete_good:
// Save GPRs
push {r4-r11,lr}
// Save MVE vector registers
vpush {d8-d15}
// Use r14 as marker for r0 + 1008
add r14, r0, #1008
// Use r12 as marker for r0 + 2016
add r12, r14, #1008
.equ modulus, -88299073
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
.equ modulus_inv, 2228766271
movw r9, #:lower16:modulus_inv
movt r9, #:upper16:modulus_inv
// Restore MVE vector registers
vpop {d8-d15}
// Restore GPRs
pop {r4-r11,lr}
bx lr

// Line count:        3350
// Instruction count: 2395