
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
.global ntt_384_u32_106117153_1392340_incomplete_good_twiddles
ntt_384_u32_106117153_1392340_incomplete_good_twiddles: // For base multiplication
.word   37890045 // zeta^  0 * 2^31 = 1392340^  0 * 2^31 = 1 * 2^31
.word 3768695715 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 1392340^  0 * 2586463201 * 2^31
.word  141040949 // zeta^ 64 * 2^31 = 1392340^ 64 * 2^31 = 51456573 * 2^31
.word 1866321259 // zeta^ 64 * f(q^(-1) mod 2^32) * 2^31 = 1392340^ 64 * 2586463201 * 2^31
.word   72909029 // zeta^ 32 * 2^31 = 1392340^ 32 * 2^31 = 71252774 * 2^31
.word 1491181499 // zeta^ 32 * f(q^(-1) mod 2^32) * 2^31 = 1392340^ 32 * 2586463201 * 2^31
.word  136914403 // zeta^ 96 * 2^31 = 1392340^ 96 * 2^31 = 56869107 * 2^31
.word    8270461 // zeta^ 96 * f(q^(-1) mod 2^32) * 2^31 = 1392340^ 96 * 2586463201 * 2^31
.word  195316801 // zeta^ 16 * 2^31 = 1392340^ 16 * 2^31 = 68534739 * 2^31
.word   93843423 // zeta^ 16 * f(q^(-1) mod 2^32) * 2^31 = 1392340^ 16 * 2586463201 * 2^31
.word  164989409 // zeta^ 80 * 2^31 = 1392340^ 80 * 2^31 = 254604 * 2^31
.word 3540182591 // zeta^ 80 * f(q^(-1) mod 2^32) * 2^31 = 1392340^ 80 * 2586463201 * 2^31
.word   68592855 // zeta^ 48 * 2^31 = 1392340^ 48 * 2^31 = 36202838 * 2^31
.word 1686643209 // zeta^ 48 * f(q^(-1) mod 2^32) * 2^31 = 1392340^ 48 * 2586463201 * 2^31
.word  175196685 // zeta^112 * 2^31 = 1392340^112 * 2^31 = 89497534 * 2^31
.word 2845449107 // zeta^112 * f(q^(-1) mod 2^32) * 2^31 = 1392340^112 * 2586463201 * 2^31
.word  151765235 // zeta^  8 * 2^31 = 1392340^  8 * 2^31 = 62524596 * 2^31
.word 3309713773 // zeta^  8 * f(q^(-1) mod 2^32) * 2^31 = 1392340^  8 * 2586463201 * 2^31
.word  126514603 // zeta^ 72 * 2^31 = 1392340^ 72 * 2^31 = 101908685 * 2^31
.word 2730982325 // zeta^ 72 * f(q^(-1) mod 2^32) * 2^31 = 1392340^ 72 * 2586463201 * 2^31
.word   76763575 // zeta^ 40 * 2^31 = 1392340^ 40 * 2^31 = 54230858 * 2^31
.word 1401852201 // zeta^ 40 * f(q^(-1) mod 2^32) * 2^31 = 1392340^ 40 * 2586463201 * 2^31
.word  203981715 // zeta^104 * 2^31 = 1392340^104 * 2^31 = 88837097 * 2^31
.word 1840925389 // zeta^104 * f(q^(-1) mod 2^32) * 2^31 = 1392340^104 * 2586463201 * 2^31
.word   16429529 // zeta^ 24 * 2^31 = 1392340^ 24 * 2^31 = 87659826 * 2^31
.word 4193590599 // zeta^ 24 * f(q^(-1) mod 2^32) * 2^31 = 1392340^ 24 * 2586463201 * 2^31
.word  127555815 // zeta^ 88 * 2^31 = 1392340^ 88 * 2^31 = 59766995 * 2^31
.word 2372284409 // zeta^ 88 * f(q^(-1) mod 2^32) * 2^31 = 1392340^ 88 * 2586463201 * 2^31
.word  209645089 // zeta^ 56 * 2^31 = 1392340^ 56 * 2^31 = 20339234 * 2^31
.word 3913484799 // zeta^ 56 * f(q^(-1) mod 2^32) * 2^31 = 1392340^ 56 * 2586463201 * 2^31
.word  186595525 // zeta^120 * 2^31 = 1392340^120 * 2^31 = 66124790 * 2^31
.word 1100702683 // zeta^120 * f(q^(-1) mod 2^32) * 2^31 = 1392340^120 * 2586463201 * 2^31
.word     992809 // zeta^  4 * 2^31 = 1392340^  4 * 2^31 = 1392340 * 2^31
.word 2512876279 // zeta^  4 * f(q^(-1) mod 2^32) * 2^31 = 1392340^  4 * 2586463201 * 2^31
.word   53454909 // zeta^ 68 * 2^31 = 1392340^ 68 * 2^31 = 49002870 * 2^31
.word 4040246115 // zeta^ 68 * f(q^(-1) mod 2^32) * 2^31 = 1392340^ 68 * 2586463201 * 2^31
.word   48183541 // zeta^ 36 * 2^31 = 1392340^ 36 * 2^31 = 9948684 * 2^31
.word 1508714923 // zeta^ 36 * f(q^(-1) mod 2^32) * 2^31 = 1392340^ 36 * 2586463201 * 2^31
.word  105529301 // zeta^100 * 2^31 = 1392340^100 * 2^31 = 14737829 * 2^31
.word  488144587 // zeta^100 * f(q^(-1) mod 2^32) * 2^31 = 1392340^100 * 2586463201 * 2^31
.word   11656863 // zeta^ 20 * 2^31 = 1392340^ 20 * 2^31 = 37124223 * 2^31
.word  459063617 // zeta^ 20 * f(q^(-1) mod 2^32) * 2^31 = 1392340^ 20 * 2586463201 * 2^31
.word  108201343 // zeta^ 84 * 2^31 = 1392340^ 84 * 2^31 = 64042340 * 2^31
.word 1433794145 // zeta^ 84 * f(q^(-1) mod 2^32) * 2^31 = 1392340^ 84 * 2586463201 * 2^31
.word   93085077 // zeta^ 52 * 2^31 = 1392340^ 52 * 2^31 = 56731543 * 2^31
.word   63248651 // zeta^ 52 * f(q^(-1) mod 2^32) * 2^31 = 1392340^ 52 * 2586463201 * 2^31
.word   48800199 // zeta^116 * 2^31 = 1392340^116 * 2^31 = 64416179 * 2^31
.word  159286041 // zeta^116 * f(q^(-1) mod 2^32) * 2^31 = 1392340^116 * 2586463201 * 2^31
.word  161225519 // zeta^ 12 * 2^31 = 1392340^ 12 * 2^31 = 61070877 * 2^31
.word  371152561 // zeta^ 12 * f(q^(-1) mod 2^32) * 2^31 = 1392340^ 12 * 2586463201 * 2^31
.word  157992763 // zeta^ 76 * 2^31 = 1392340^ 76 * 2^31 = 64736387 * 2^31
.word 1125817381 // zeta^ 76 * f(q^(-1) mod 2^32) * 2^31 = 1392340^ 76 * 2586463201 * 2^31
.word  117865359 // zeta^ 44 * 2^31 = 1392340^ 44 * 2^31 = 26493417 * 2^31
.word 2711913041 // zeta^ 44 * f(q^(-1) mod 2^32) * 2^31 = 1392340^ 44 * 2586463201 * 2^31
.word   58891053 // zeta^108 * 2^31 = 1392340^108 * 2^31 = 16694344 * 2^31
.word  526216819 // zeta^108 * f(q^(-1) mod 2^32) * 2^31 = 1392340^108 * 2586463201 * 2^31
.word  134087109 // zeta^ 28 * 2^31 = 1392340^ 28 * 2^31 = 46852595 * 2^31
.word 3270097627 // zeta^ 28 * f(q^(-1) mod 2^32) * 2^31 = 1392340^ 28 * 2586463201 * 2^31
.word  106564557 // zeta^ 92 * 2^31 = 1392340^ 92 * 2^31 = 73724383 * 2^31
.word 3351548371 // zeta^ 92 * f(q^(-1) mod 2^32) * 2^31 = 1392340^ 92 * 2586463201 * 2^31
.word   47641089 // zeta^ 60 * 2^31 = 1392340^ 60 * 2^31 = 68915062 * 2^31
.word  973406751 // zeta^ 60 * f(q^(-1) mod 2^32) * 2^31 = 1392340^ 60 * 2586463201 * 2^31
.word   16048813 // zeta^124 * 2^31 = 1392340^124 * 2^31 = 99228576 * 2^31
.word  670701299 // zeta^124 * f(q^(-1) mod 2^32) * 2^31 = 1392340^124 * 2586463201 * 2^31
.word  209268057 // zeta^128 * 2^31 = 1392340^128 * 2^31 = 51456572 * 2^31
.word 2392592839 // zeta^128 * f(q^(-1) mod 2^32) * 2^31 = 1392340^128 * 2586463201 * 2^31
.word  174344261 // zeta^192 * 2^31 = 1392340^192 * 2^31 = 106117152 * 2^31
.word  526271579 // zeta^192 * f(q^(-1) mod 2^32) * 2^31 = 1392340^192 * 2586463201 * 2^31
.word  170122527 // zeta^160 * 2^31 = 1392340^160 * 2^31 = 91733486 * 2^31
.word 2812056257 // zeta^160 * f(q^(-1) mod 2^32) * 2^31 = 1392340^160 * 2586463201 * 2^31
.word  139325277 // zeta^224 * 2^31 = 1392340^224 * 2^31 = 34864379 * 2^31
.word 2803785795 // zeta^224 * f(q^(-1) mod 2^32) * 2^31 = 1392340^224 * 2586463201 * 2^31
.word   75789761 // zeta^144 * 2^31 = 1392340^144 * 2^31 = 37837018 * 2^31
.word 3446339167 // zeta^144 * f(q^(-1) mod 2^32) * 2^31 = 1392340^144 * 2586463201 * 2^31
.word   16917505 // zeta^208 * 2^31 = 1392340^208 * 2^31 = 37582414 * 2^31
.word 4201123871 // zeta^208 * f(q^(-1) mod 2^32) * 2^31 = 1392340^208 * 2586463201 * 2^31
.word     486677 // zeta^176 * 2^31 = 1392340^176 * 2^31 = 53294696 * 2^31
.word 1158805899 // zeta^176 * f(q^(-1) mod 2^32) * 2^31 = 1392340^176 * 2586463201 * 2^31
.word  143641451 // zeta^240 * 2^31 = 1392340^240 * 2^31 = 69914315 * 2^31
.word 2608324085 // zeta^240 * f(q^(-1) mod 2^32) * 2^31 = 1392340^240 * 2586463201 * 2^31
.word   80866521 // zeta^136 * 2^31 = 1392340^136 * 2^31 = 39384089 * 2^31
.word 3716235847 // zeta^136 * f(q^(-1) mod 2^32) * 2^31 = 1392340^136 * 2586463201 * 2^31
.word   60469071 // zeta^200 * 2^31 = 1392340^200 * 2^31 = 43592557 * 2^31
.word  985253521 // zeta^200 * f(q^(-1) mod 2^32) * 2^31 = 1392340^200 * 2586463201 * 2^31
.word   21100987 // zeta^168 * 2^31 = 1392340^168 * 2^31 = 34606239 * 2^31
.word  439073189 // zeta^168 * f(q^(-1) mod 2^32) * 2^31 = 1392340^168 * 2586463201 * 2^31
.word  135470731 // zeta^232 * 2^31 = 1392340^232 * 2^31 = 51886295 * 2^31
.word 2893115093 // zeta^232 * f(q^(-1) mod 2^32) * 2^31 = 1392340^232 * 2586463201 * 2^31
.word    5009133 // zeta^152 * 2^31 = 1392340^152 * 2^31 = 78224322 * 2^31
.word 2473661107 // zeta^152 * f(q^(-1) mod 2^32) * 2^31 = 1392340^152 * 2586463201 * 2^31
.word  195804777 // zeta^216 * 2^31 = 1392340^216 * 2^31 = 18457327 * 2^31
.word  101376695 // zeta^216 * f(q^(-1) mod 2^32) * 2^31 = 1392340^216 * 2586463201 * 2^31
.word   83067589 // zeta^184 * 2^31 = 1392340^184 * 2^31 = 45785556 * 2^31
.word 1482185179 // zeta^184 * f(q^(-1) mod 2^32) * 2^31 = 1392340^184 * 2586463201 * 2^31
.word    2589217 // zeta^248 * 2^31 = 1392340^248 * 2^31 = 85777919 * 2^31
.word  381482495 // zeta^248 * f(q^(-1) mod 2^32) * 2^31 = 1392340^248 * 2586463201 * 2^31
.word  158579253 // zeta^132 * 2^31 = 1392340^132 * 2^31 = 47610530 * 2^31
.word 1527369835 // zeta^132 * f(q^(-1) mod 2^32) * 2^31 = 1392340^132 * 2586463201 * 2^31
.word  211241497 // zeta^196 * 2^31 = 1392340^196 * 2^31 = 104724813 * 2^31
.word 1782091015 // zeta^196 * f(q^(-1) mod 2^32) * 2^31 = 1392340^196 * 2586463201 * 2^31
.word  163462913 // zeta^164 * 2^31 = 1392340^164 * 2^31 = 4789145 * 2^31
.word 3274396959 // zeta^164 * f(q^(-1) mod 2^32) * 2^31 = 1392340^164 * 2586463201 * 2^31
.word  164050765 // zeta^228 * 2^31 = 1392340^228 * 2^31 = 96168469 * 2^31
.word 2786252371 // zeta^228 * f(q^(-1) mod 2^32) * 2^31 = 1392340^228 * 2586463201 * 2^31
.word  202661633 // zeta^148 * 2^31 = 1392340^148 * 2^31 = 26918117 * 2^31
.word  974730527 // zeta^148 * f(q^(-1) mod 2^32) * 2^31 = 1392340^148 * 2586463201 * 2^31
.word  200577443 // zeta^212 * 2^31 = 1392340^212 * 2^31 = 68992930 * 2^31
.word 3835903677 // zeta^212 * f(q^(-1) mod 2^32) * 2^31 = 1392340^212 * 2586463201 * 2^31
.word   61832275 // zeta^180 * 2^31 = 1392340^180 * 2^31 = 7684636 * 2^31
.word   96037389 // zeta^180 * f(q^(-1) mod 2^32) * 2^31 = 1392340^180 * 2586463201 * 2^31
.word  119149229 // zeta^244 * 2^31 = 1392340^244 * 2^31 = 49385610 * 2^31
.word 4231718643 // zeta^244 * f(q^(-1) mod 2^32) * 2^31 = 1392340^244 * 2586463201 * 2^31
.word  102884397 // zeta^140 * 2^31 = 1392340^140 * 2^31 = 3665510 * 2^31
.word  754664819 // zeta^140 * f(q^(-1) mod 2^32) * 2^31 = 1392340^140 * 2586463201 * 2^31
.word   51008787 // zeta^204 * 2^31 = 1392340^204 * 2^31 = 45046276 * 2^31
.word 3923814733 // zeta^204 * f(q^(-1) mod 2^32) * 2^31 = 1392340^204 * 2586463201 * 2^31
.word   47142847 // zeta^172 * 2^31 = 1392340^172 * 2^31 = 96318080 * 2^31
.word 2109271073 // zeta^172 * f(q^(-1) mod 2^32) * 2^31 = 1392340^172 * 2586463201 * 2^31
.word   94368947 // zeta^236 * 2^31 = 1392340^236 * 2^31 = 79623736 * 2^31
.word 1583054253 // zeta^236 * f(q^(-1) mod 2^32) * 2^31 = 1392340^236 * 2586463201 * 2^31
.word   78594601 // zeta^156 * 2^31 = 1392340^156 * 2^31 = 26871788 * 2^31
.word   81450743 // zeta^156 * f(q^(-1) mod 2^32) * 2^31 = 1392340^156 * 2586463201 * 2^31
.word   78147197 // zeta^220 * 2^31 = 1392340^220 * 2^31 = 59264558 * 2^31
.word 1024869667 // zeta^220 * f(q^(-1) mod 2^32) * 2^31 = 1392340^220 * 2586463201 * 2^31
.word   74524877 // zeta^188 * 2^31 = 1392340^188 * 2^31 = 30313514 * 2^31
.word 3992261843 // zeta^188 * f(q^(-1) mod 2^32) * 2^31 = 1392340^188 * 2586463201 * 2^31
.word  164593217 // zeta^252 * 2^31 = 1392340^252 * 2^31 = 37202091 * 2^31
.word 3321560543 // zeta^252 * f(q^(-1) mod 2^32) * 2^31 = 1392340^252 * 2586463201 * 2^31
.word   71193357 // zeta^256 * 2^31 = 1392340^256 * 2^31 = 54660580 * 2^31
.word 2428646035 // zeta^256 * f(q^(-1) mod 2^32) * 2^31 = 1392340^256 * 2586463201 * 2^31
.word    2966249 // zeta^320 * 2^31 = 1392340^320 * 2^31 = 54660581 * 2^31
.word 1902374455 // zeta^320 * f(q^(-1) mod 2^32) * 2^31 = 1392340^320 * 2586463201 * 2^31
.word   75319903 // zeta^288 * 2^31 = 1392340^288 * 2^31 = 49248046 * 2^31
.word 4286696833 // zeta^288 * f(q^(-1) mod 2^32) * 2^31 = 1392340^288 * 2586463201 * 2^31
.word   42111779 // zeta^352 * 2^31 = 1392340^352 * 2^31 = 14383667 * 2^31
.word 1482911037 // zeta^352 * f(q^(-1) mod 2^32) * 2^31 = 1392340^352 * 2586463201 * 2^31
.word   47244897 // zeta^272 * 2^31 = 1392340^272 * 2^31 = 105862549 * 2^31
.word  754784703 // zeta^272 * f(q^(-1) mod 2^32) * 2^31 = 1392340^272 * 2586463201 * 2^31
.word  136444545 // zeta^336 * 2^31 = 1392340^336 * 2^31 = 68280135 * 2^31
.word  848628127 // zeta^336 * f(q^(-1) mod 2^32) * 2^31 = 1392340^336 * 2586463201 * 2^31
.word   37037621 // zeta^304 * 2^31 = 1392340^304 * 2^31 = 16619619 * 2^31
.word 1449518187 // zeta^304 * f(q^(-1) mod 2^32) * 2^31 = 1392340^304 * 2586463201 * 2^31
.word  211747629 // zeta^368 * 2^31 = 1392340^368 * 2^31 = 52822457 * 2^31
.word 3136161395 // zeta^368 * f(q^(-1) mod 2^32) * 2^31 = 1392340^368 * 2586463201 * 2^31
.word   85719703 // zeta^264 * 2^31 = 1392340^264 * 2^31 = 4208468 * 2^31
.word 1563984969 // zeta^264 * f(q^(-1) mod 2^32) * 2^31 = 1392340^264 * 2586463201 * 2^31
.word  131367785 // zeta^328 * 2^31 = 1392340^328 * 2^31 = 66733064 * 2^31
.word  578731447 // zeta^328 * f(q^(-1) mod 2^32) * 2^31 = 1392340^328 * 2586463201 * 2^31
.word    8252591 // zeta^296 * 2^31 = 1392340^296 * 2^31 = 17280056 * 2^31
.word 2454041905 // zeta^296 * f(q^(-1) mod 2^32) * 2^31 = 1392340^296 * 2586463201 * 2^31
.word  191133319 // zeta^360 * 2^31 = 1392340^360 * 2^31 = 71510914 * 2^31
.word 3855894105 // zeta^360 * f(q^(-1) mod 2^32) * 2^31 = 1392340^360 * 2586463201 * 2^31
.word   84678491 // zeta^280 * 2^31 = 1392340^280 * 2^31 = 46350158 * 2^31
.word 1922682885 // zeta^280 * f(q^(-1) mod 2^32) * 2^31 = 1392340^280 * 2586463201 * 2^31
.word  207225173 // zeta^344 * 2^31 = 1392340^344 * 2^31 = 27892831 * 2^31
.word 1821306187 // zeta^344 * f(q^(-1) mod 2^32) * 2^31 = 1392340^344 * 2586463201 * 2^31
.word   25638781 // zeta^312 * 2^31 = 1392340^312 * 2^31 = 39992363 * 2^31
.word 3194264611 // zeta^312 * f(q^(-1) mod 2^32) * 2^31 = 1392340^312 * 2586463201 * 2^31
.word  129166717 // zeta^376 * 2^31 = 1392340^376 * 2^31 = 60331597 * 2^31
.word 2812782115 // zeta^376 * f(q^(-1) mod 2^32) * 2^31 = 1392340^376 * 2586463201 * 2^31
.word  158779397 // zeta^260 * 2^31 = 1392340^260 * 2^31 = 57114283 * 2^31
.word  254721179 // zeta^260 * f(q^(-1) mod 2^32) * 2^31 = 1392340^260 * 2586463201 * 2^31
.word   53655053 // zeta^324 * 2^31 = 1392340^324 * 2^31 = 58506623 * 2^31
.word 2767597459 // zeta^324 * f(q^(-1) mod 2^32) * 2^31 = 1392340^324 * 2586463201 * 2^31
.word  106705005 // zeta^292 * 2^31 = 1392340^292 * 2^31 = 91379324 * 2^31
.word 3806822707 // zeta^292 * f(q^(-1) mod 2^32) * 2^31 = 1392340^292 * 2586463201 * 2^31
.word   48771393 // zeta^356 * 2^31 = 1392340^356 * 2^31 = 101328008 * 2^31
.word 1020570335 // zeta^356 * f(q^(-1) mod 2^32) * 2^31 = 1392340^356 * 2586463201 * 2^31
.word  104032963 // zeta^276 * 2^31 = 1392340^276 * 2^31 = 42074813 * 2^31
.word 2861173149 // zeta^276 * f(q^(-1) mod 2^32) * 2^31 = 1392340^276 * 2586463201 * 2^31
.word    9572673 // zeta^340 * 2^31 = 1392340^340 * 2^31 = 79199036 * 2^31
.word 3320236767 // zeta^340 * f(q^(-1) mod 2^32) * 2^31 = 1392340^340 * 2586463201 * 2^31
.word  163434107 // zeta^308 * 2^31 = 1392340^308 * 2^31 = 41700974 * 2^31
.word 4135681253 // zeta^308 * f(q^(-1) mod 2^32) * 2^31 = 1392340^308 * 2586463201 * 2^31
.word  150402031 // zeta^372 * 2^31 = 1392340^372 * 2^31 = 98432517 * 2^31
.word 4198929905 // zeta^372 * f(q^(-1) mod 2^32) * 2^31 = 1392340^372 * 2586463201 * 2^31
.word   54241543 // zeta^268 * 2^31 = 1392340^268 * 2^31 = 41380766 * 2^31
.word 3169149913 // zeta^268 * f(q^(-1) mod 2^32) * 2^31 = 1392340^268 * 2586463201 * 2^31
.word  109349909 // zeta^332 * 2^31 = 1392340^332 * 2^31 = 102451643 * 2^31
.word 3540302475 // zeta^332 * f(q^(-1) mod 2^32) * 2^31 = 1392340^332 * 2586463201 * 2^31
.word  153343253 // zeta^300 * 2^31 = 1392340^300 * 2^31 = 89422809 * 2^31
.word 3768750475 // zeta^300 * f(q^(-1) mod 2^32) * 2^31 = 1392340^300 * 2586463201 * 2^31
.word  165091459 // zeta^364 * 2^31 = 1392340^364 * 2^31 = 9799073 * 2^31
.word 2185696221 // zeta^364 * f(q^(-1) mod 2^32) * 2^31 = 1392340^364 * 2586463201 * 2^31
.word  105669749 // zeta^284 * 2^31 = 1392340^284 * 2^31 = 32392770 * 2^31
.word  943418923 // zeta^284 * f(q^(-1) mod 2^32) * 2^31 = 1392340^284 * 2586463201 * 2^31
.word  133639705 // zeta^348 * 2^31 = 1392340^348 * 2^31 = 79245365 * 2^31
.word 4213516551 // zeta^348 * f(q^(-1) mod 2^32) * 2^31 = 1392340^348 * 2586463201 * 2^31
.word  196185493 // zeta^316 * 2^31 = 1392340^316 * 2^31 = 6888577 * 2^31
.word 3624265995 // zeta^316 * f(q^(-1) mod 2^32) * 2^31 = 1392340^316 * 2586463201 * 2^31
.word  137709429 // zeta^380 * 2^31 = 1392340^380 * 2^31 = 75803639 * 2^31
.word  302705451 // zeta^380 * f(q^(-1) mod 2^32) * 2^31 = 1392340^380 * 2586463201 * 2^31
// End of twiddles for base multiplication

.global ntt_384_u32_106117153_1392340_incomplete_good_scale
ntt_384_u32_106117153_1392340_incomplete_good_scale: // Constants for scaling by 1/N
.word 37890045 // 1/96
.word 3768695715 // 1/96 twisted
.data
roots:
.word  136304203 /// zeta^256 * 2^31 = 1392340^256 * 2^31 = 54660580 * 2^31
.word 1106161429 /// zeta^256 * f(q^(-1) mod 2^32) * 2^31 = 1392340^256 * 2586463201 * 2^31
.word   50789515 /// zeta^128 * 2^31 = 1392340^128 * 2^31 = 51456572 * 2^31
.word 1041322197 /// zeta^128 * f(q^(-1) mod 2^32) * 2^31 = 1392340^128 * 2586463201 * 2^31
.word  131257741 // zeta^  0 * 2^31 = 1392340^  0 * 2^31 = 1 * 2^31
.word 2147483667 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 1392340^  0 * 2586463201 * 2^31
.word  131257741 // zeta^  0 * 2^31 = 1392340^  0 * 2^31 = 1 * 2^31
.word 2147483667 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 1392340^  0 * 2586463201 * 2^31
.word   86500417 // zeta^288 * 2^31 = 1392340^288 * 2^31 = 49248046 * 2^31
.word  996628447 // zeta^288 * f(q^(-1) mod 2^32) * 2^31 = 1392340^288 * 2586463201 * 2^31
.word  131257741 // zeta^  0 * 2^31 = 1392340^  0 * 2^31 = 1 * 2^31
.word 2147483667 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 1392340^  0 * 2586463201 * 2^31
.word  131257741 // zeta^  0 * 2^31 = 1392340^  0 * 2^31 = 1 * 2^31
.word 2147483667 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 1392340^  0 * 2586463201 * 2^31
.word   86500417 // zeta^288 * 2^31 = 1392340^288 * 2^31 = 49248046 * 2^31
.word  996628447 // zeta^288 * f(q^(-1) mod 2^32) * 2^31 = 1392340^288 * 2586463201 * 2^31
.word   86500417 // zeta^288 * 2^31 = 1392340^288 * 2^31 = 49248046 * 2^31
.word  996628447 // zeta^288 * f(q^(-1) mod 2^32) * 2^31 = 1392340^288 * 2586463201 * 2^31
.word    3362131 // zeta^144 * 2^31 = 1392340^144 * 2^31 = 37837018 * 2^31
.word  765704461 // zeta^144 * f(q^(-1) mod 2^32) * 2^31 = 1392340^144 * 2586463201 * 2^31
.word   74219771 // zeta^ 48 * 2^31 = 1392340^ 48 * 2^31 = 36202838 * 2^31
.word  732633701 // zeta^ 48 * f(q^(-1) mod 2^32) * 2^31 = 1392340^ 48 * 2586463201 * 2^31
.word    3362131 // zeta^144 * 2^31 = 1392340^144 * 2^31 = 37837018 * 2^31
.word  765704461 // zeta^144 * f(q^(-1) mod 2^32) * 2^31 = 1392340^144 * 2586463201 * 2^31
.word  207754911 // zeta^264 * 2^31 = 1392340^264 * 2^31 = 4208468 * 2^31
.word   85166401 // zeta^264 * f(q^(-1) mod 2^32) * 2^31 = 1392340^264 * 2586463201 * 2^31
.word   86384727 // zeta^168 * 2^31 = 1392340^168 * 2^31 = 34606239 * 2^31
.word 2847807113 // zeta^168 * f(q^(-1) mod 2^32) * 2^31 = 1392340^168 * 2586463201 * 2^31
.word   74219771 // zeta^ 48 * 2^31 = 1392340^ 48 * 2^31 = 36202838 * 2^31
.word  732633701 // zeta^ 48 * f(q^(-1) mod 2^32) * 2^31 = 1392340^ 48 * 2586463201 * 2^31
.word   77895747 // zeta^ 24 * 2^31 = 1392340^ 24 * 2^31 = 87659826 * 2^31
.word 1773964317 // zeta^ 24 * f(q^(-1) mod 2^32) * 2^31 = 1392340^ 24 * 2586463201 * 2^31
.word   42168601 // zeta^312 * 2^31 = 1392340^312 * 2^31 = 39992363 * 2^31
.word 2956805639 // zeta^312 * f(q^(-1) mod 2^32) * 2^31 = 1392340^312 * 2586463201 * 2^31
.word  131257741 // XX: zeta^  0 * 2^31 = 1392340^  0 * 2^31 = 1 * 2^31
.word 2147483667 /// zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 1392340^  0 * 2586463201 * 2^31
.word   86500417 // XX: zeta^288 * 2^31 = 1392340^288 * 2^31 = 49248046 * 2^31
.word  996628447 /// zeta^288 * f(q^(-1) mod 2^32) * 2^31 = 1392340^288 * 2586463201 * 2^31
.word    3362131 // XX: zeta^144 * 2^31 = 1392340^144 * 2^31 = 37837018 * 2^31
.word  765704461 /// zeta^144 * f(q^(-1) mod 2^32) * 2^31 = 1392340^144 * 2586463201 * 2^31
.word   74219771 // XX: zeta^ 48 * 2^31 = 1392340^ 48 * 2^31 = 36202838 * 2^31
.word  732633701 /// zeta^ 48 * f(q^(-1) mod 2^32) * 2^31 = 1392340^ 48 * 2586463201 * 2^31
.word  207754911 // XX: zeta^264 * 2^31 = 1392340^264 * 2^31 = 4208468 * 2^31
.word   85166401 /// zeta^264 * f(q^(-1) mod 2^32) * 2^31 = 1392340^264 * 2586463201 * 2^31
.word   86384727 // XX: zeta^168 * 2^31 = 1392340^168 * 2^31 = 34606239 * 2^31
.word 2847807113 /// zeta^168 * f(q^(-1) mod 2^32) * 2^31 = 1392340^168 * 2586463201 * 2^31
.word   77895747 // XX: zeta^ 24 * 2^31 = 1392340^ 24 * 2^31 = 87659826 * 2^31
.word 1773964317 /// zeta^ 24 * f(q^(-1) mod 2^32) * 2^31 = 1392340^ 24 * 2586463201 * 2^31
.word   42168601 // XX: zeta^312 * 2^31 = 1392340^312 * 2^31 = 39992363 * 2^31
.word 2956805639 /// zeta^312 * f(q^(-1) mod 2^32) * 2^31 = 1392340^312 * 2586463201 * 2^31
.word  120907359 // XX: zeta^132 * 2^31 = 1392340^132 * 2^31 = 47610530 * 2^31
.word  963490177 /// zeta^132 * f(q^(-1) mod 2^32) * 2^31 = 1392340^132 * 2586463201 * 2^31
.word   76659711 // XX: zeta^ 36 * 2^31 = 1392340^ 36 * 2^31 = 9948684 * 2^31
.word  201330657 /// zeta^ 36 * f(q^(-1) mod 2^32) * 2^31 = 1392340^ 36 * 2586463201 * 2^31
.word  101045121 // XX: zeta^276 * 2^31 = 1392340^276 * 2^31 = 42074813 * 2^31
.word 2998947999 /// zeta^276 * f(q^(-1) mod 2^32) * 2^31 = 1392340^276 * 2586463201 * 2^31
.word  121674239 // XX: zeta^180 * 2^31 = 1392340^180 * 2^31 = 7684636 * 2^31
.word  155513313 /// zeta^180 * f(q^(-1) mod 2^32) * 2^31 = 1392340^180 * 2586463201 * 2^31
.word  137517881 // XX: zeta^ 12 * 2^31 = 1392340^ 12 * 2^31 = 61070877 * 2^31
.word 3383369703 /// zeta^ 12 * f(q^(-1) mod 2^32) * 2^31 = 1392340^ 12 * 2586463201 * 2^31
.word  131387629 // XX: zeta^300 * 2^31 = 1392340^300 * 2^31 = 89422809 * 2^31
.word 3957125299 /// zeta^300 * f(q^(-1) mod 2^32) * 2^31 = 1392340^300 * 2586463201 * 2^31
.word   87076127 // XX: zeta^156 * 2^31 = 1392340^156 * 2^31 = 26871788 * 2^31
.word  543802049 /// zeta^156 * f(q^(-1) mod 2^32) * 2^31 = 1392340^156 * 2586463201 * 2^31
.word   80366379 // XX: zeta^ 60 * 2^31 = 1392340^ 60 * 2^31 = 68915062 * 2^31
.word 1394628149 /// zeta^ 60 * f(q^(-1) mod 2^32) * 2^31 = 1392340^ 60 * 2586463201 * 2^31
.text
.align 4
roots_addr: .word roots
.syntax unified
.type ntt_384_u32_106117153_1392340_incomplete_good, %function
.global ntt_384_u32_106117153_1392340_incomplete_good
ntt_384_u32_106117153_1392340_incomplete_good:
// Save GPRs
push {r4-r11,lr}
// Save MVE vector registers
vpush {d8-d15}
// Use r14 as marker for r0 + 1008
add r14, r0, #1008
// Use r12 as marker for r0 + 2016
add r12, r14, #1008
.equ modulus, 106117153
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
vqrdmulh.s32 Q3, Q2, r9
vadd.s32 Q5, Q0, Q1
// Release input[256] from Q0
vmul.u32 Q4, Q2, r8
// input[0]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 0)]
vqrdmlah.s32 Q3, Q4, r11
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
vqrdmulh.s32 Q2, Q0, r9
vadd.s32 Q4, Q1, Q7
// Release input[4] from Q1
vmul.u32 Q3, Q0, r8
// input[132]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -120)]
vqrdmlah.s32 Q2, Q3, r11
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
vqrdmulh.s32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[136] from Q5
vmul.u32 Q2, Q0, r8
// input[264]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 12)]
vqrdmlah.s32 Q1, Q2, r11
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
vqrdmulh.s32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[268] from Q5
vmul.u32 Q2, Q0, r8
// input[12]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 12)]
vqrdmlah.s32 Q1, Q2, r11
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
vqrdmulh.s32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[16] from Q5
vmul.u32 Q2, Q0, r8
// input[144]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -108)]
vqrdmlah.s32 Q1, Q2, r11
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
vqrdmulh.s32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[148] from Q5
vmul.u32 Q2, Q0, r8
// input[276]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 24)]
vqrdmlah.s32 Q1, Q2, r11
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
vqrdmulh.s32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[280] from Q5
vmul.u32 Q2, Q0, r8
// input[24]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 24)]
vqrdmlah.s32 Q1, Q2, r11
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
vqrdmulh.s32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[28] from Q5
vmul.u32 Q2, Q0, r8
// input[156]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -96)]
vqrdmlah.s32 Q1, Q2, r11
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
vqrdmulh.s32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[160] from Q5
vmul.u32 Q2, Q0, r8
// input[288]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 36)]
vqrdmlah.s32 Q1, Q2, r11
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
vqrdmulh.s32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[292] from Q5
vmul.u32 Q2, Q0, r8
// input[36]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 36)]
vqrdmlah.s32 Q1, Q2, r11
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
vqrdmulh.s32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[40] from Q5
vmul.u32 Q2, Q0, r8
// input[168]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -84)]
vqrdmlah.s32 Q1, Q2, r11
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
vqrdmulh.s32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[172] from Q5
vmul.u32 Q2, Q0, r8
// input[300]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 48)]
vqrdmlah.s32 Q1, Q2, r11
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
vqrdmulh.s32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[304] from Q5
vmul.u32 Q2, Q0, r8
// input[48]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 48)]
vqrdmlah.s32 Q1, Q2, r11
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
vqrdmulh.s32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[52] from Q5
vmul.u32 Q2, Q0, r8
// input[180]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -72)]
vqrdmlah.s32 Q1, Q2, r11
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
vqrdmulh.s32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[184] from Q5
vmul.u32 Q2, Q0, r8
// input[312]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 60)]
vqrdmlah.s32 Q1, Q2, r11
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
vqrdmulh.s32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[316] from Q5
vmul.u32 Q2, Q0, r8
// input[60]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 60)]
vqrdmlah.s32 Q1, Q2, r11
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
vqrdmulh.s32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[64] from Q5
vmul.u32 Q2, Q0, r8
// input[192]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -60)]
vqrdmlah.s32 Q1, Q2, r11
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
vqrdmulh.s32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[196] from Q5
vmul.u32 Q2, Q0, r8
// input[324]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 72)]
vqrdmlah.s32 Q1, Q2, r11
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
vqrdmulh.s32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[328] from Q5
vmul.u32 Q2, Q0, r8
// input[72]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 72)]
vqrdmlah.s32 Q1, Q2, r11
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
vqrdmulh.s32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[76] from Q5
vmul.u32 Q2, Q0, r8
// input[204]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -48)]
vqrdmlah.s32 Q1, Q2, r11
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
vqrdmulh.s32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[208] from Q5
vmul.u32 Q2, Q0, r8
// input[336]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 84)]
vqrdmlah.s32 Q1, Q2, r11
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
vqrdmulh.s32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[340] from Q5
vmul.u32 Q2, Q0, r8
// input[84]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 84)]
vqrdmlah.s32 Q1, Q2, r11
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
vqrdmulh.s32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[88] from Q5
vmul.u32 Q2, Q0, r8
// input[216]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -36)]
vqrdmlah.s32 Q1, Q2, r11
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
vqrdmulh.s32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[220] from Q5
vmul.u32 Q2, Q0, r8
// input[348]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 96)]
vqrdmlah.s32 Q1, Q2, r11
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
vqrdmulh.s32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[352] from Q5
vmul.u32 Q2, Q0, r8
// input[96]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 96)]
vqrdmlah.s32 Q1, Q2, r11
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
vqrdmulh.s32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[100] from Q5
vmul.u32 Q2, Q0, r8
// input[228]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -24)]
vqrdmlah.s32 Q1, Q2, r11
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
vqrdmulh.s32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[232] from Q5
vmul.u32 Q2, Q0, r8
// input[360]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 108)]
vqrdmlah.s32 Q1, Q2, r11
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
vqrdmulh.s32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[364] from Q5
vmul.u32 Q2, Q0, r8
// input[108]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 108)]
vqrdmlah.s32 Q1, Q2, r11
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
vqrdmulh.s32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[112] from Q5
vmul.u32 Q2, Q0, r8
// input[240]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -12)]
vqrdmlah.s32 Q1, Q2, r11
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
vqrdmulh.s32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[244] from Q5
vmul.u32 Q2, Q0, r8
// input[372]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 120)]
vqrdmlah.s32 Q1, Q2, r11
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
vqrdmulh.s32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[376] from Q5
vmul.u32 Q2, Q0, r8
// input[120]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 120)]
vqrdmlah.s32 Q1, Q2, r11
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
vqrdmulh.s32 Q1, Q0, r9
vadd.s32 Q3, Q5, Q7
// Release input[124] from Q5
vmul.u32 Q2, Q0, r8
// input[252]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 0)]
vqrdmlah.s32 Q1, Q2, r11
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
vqrdmulh.s32 Q3, Q2, r5
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
vmul.u32 Q2, Q2, r4
vsub.s32 Q4, Q1, Q0
// input[36]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 36)]
vqrdmlah.s32 Q3, Q2, r11
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
vqrdmulh.s32 Q1, Q0, r5
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
vmul.u32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q7
// input[168]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * -84)]
vqrdmlah.s32 Q1, Q0, r11
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
vqrdmulh.s32 Q1, Q0, r5
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
vmul.u32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q6
// input[300]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * 48)]
vqrdmlah.s32 Q1, Q0, r11
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
vqrdmulh.s32 Q1, Q0, r5
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
vmul.u32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q7
// input[48]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 48)]
vqrdmlah.s32 Q1, Q0, r11
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
vqrdmulh.s32 Q1, Q0, r5
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
vmul.u32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q6
// input[180]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -72)]
vqrdmlah.s32 Q1, Q0, r11
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
vqrdmulh.s32 Q1, Q0, r5
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
vmul.u32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q7
// input[312]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * 60)]
vqrdmlah.s32 Q1, Q0, r11
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
vqrdmulh.s32 Q1, Q0, r5
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
vmul.u32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q6
// input[60]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 60)]
vqrdmlah.s32 Q1, Q0, r11
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
vqrdmulh.s32 Q1, Q0, r5
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
vmul.u32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q7
// input[160]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * -92)]
vqrdmlah.s32 Q1, Q0, r11
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
vqrdmulh.s32 Q1, Q0, r5
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
vmul.u32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q6
// input[292]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * 40)]
vqrdmlah.s32 Q1, Q0, r11
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
vqrdmulh.s32 Q1, Q0, r5
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
vmul.u32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q7
// input[40]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 40)]
vqrdmlah.s32 Q1, Q0, r11
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
vqrdmulh.s32 Q1, Q0, r5
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
vmul.u32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q6
// input[172]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -80)]
vqrdmlah.s32 Q1, Q0, r11
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
vqrdmulh.s32 Q1, Q0, r5
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
vmul.u32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q7
// input[304]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * 52)]
vqrdmlah.s32 Q1, Q0, r11
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
vqrdmulh.s32 Q1, Q0, r5
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
vmul.u32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q6
// input[52]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 52)]
vqrdmlah.s32 Q1, Q0, r11
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
vqrdmulh.s32 Q1, Q0, r5
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
vmul.u32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q7
// input[184]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * -68)]
vqrdmlah.s32 Q1, Q0, r11
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
vqrdmulh.s32 Q1, Q0, r5
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
vmul.u32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q6
// input[316]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * 64)]
vqrdmlah.s32 Q1, Q0, r11
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
vqrdmulh.s32 Q1, Q0, r5
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
vmul.u32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q7
// input[32]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 32)]
vqrdmlah.s32 Q1, Q0, r11
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
vqrdmulh.s32 Q1, Q0, r5
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
vmul.u32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q6
// input[164]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -88)]
vqrdmlah.s32 Q1, Q0, r11
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
vqrdmulh.s32 Q1, Q0, r5
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
vmul.u32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q7
// input[296]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * 44)]
vqrdmlah.s32 Q1, Q0, r11
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
vqrdmulh.s32 Q1, Q0, r5
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
vmul.u32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q6
// input[44]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 44)]
vqrdmlah.s32 Q1, Q0, r11
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
vqrdmulh.s32 Q1, Q0, r5
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
vmul.u32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q7
// input[176]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * -76)]
vqrdmlah.s32 Q1, Q0, r11
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
vqrdmulh.s32 Q1, Q0, r5
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
vmul.u32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q6
// input[308]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * 56)]
vqrdmlah.s32 Q1, Q0, r11
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
vqrdmulh.s32 Q1, Q0, r5
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
vmul.u32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q7
// input[56]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 56)]
vqrdmlah.s32 Q1, Q0, r11
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
vqrdmulh.s32 Q1, Q0, r5
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
vmul.u32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q6
// input[188]: Load as Q7
vldrw.u32 Q7, [r14, #(4 * -64)]
vqrdmlah.s32 Q1, Q0, r11
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
vqrdmulh.s32 Q1, Q0, r5
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
vmul.u32 Q0, Q0, r4
vsub.s32 Q2, Q3, Q7
// input[264]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * 12)]
vqrdmlah.s32 Q1, Q0, r11
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
vqrdmulh.s32 Q0, Q5, r9
// input[144]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -108)]
vmul.u32 Q5, Q5, r8
// input[264]: Already loaded as Q6
vqrdmlah.s32 Q0, Q5, r11
vqrdmulh.s32 Q2, Q1, r9
vsub.s32 Q5, Q6, Q0
vmul.u32 Q1, Q1, r8
vadd.s32 Q6, Q6, Q0
vqrdmlah.s32 Q2, Q1, r11
// input[0]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 0)]
vqrdmulh.s32 Q3, Q5, r5
vsub.s32 Q1, Q0, Q2
vmul.u32 Q5, Q5, r4
vadd.s32 Q0, Q0, Q2
vqrdmlah.s32 Q3, Q5, r11
// input[156]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -96)]
vqrdmulh.s32 Q4, Q6, r7
vsub.s32 Q5, Q1, Q3
vmul.u32 Q6, Q6, r6
vadd.s32 Q1, Q1, Q3
vstrw.u32 Q5, [r0,#(96)]
// Release input[24] from Q5
vqrdmlah.s32 Q4, Q6, r11
vstrw.u32 Q1, [r14,#(-432)]
// Release input[144] from Q1
vsub.s32 Q6, Q0, Q4
vstrw.u32 Q6, [r14,#(48)]
// Release input[264] from Q6
vadd.s32 Q0, Q0, Q4
// input[156]: Already loaded as Q2
vqrdmulh.s32 Q1, Q2, r9
// input[276]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 24)]
vmul.u32 Q2, Q2, r8
// input[12]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 12)]
vqrdmlah.s32 Q1, Q2, r11
vstrw.u32 Q0, [r0,#(0)]
// Release input[0] from Q0
vqrdmulh.s32 Q0, Q3, r9
vsub.s32 Q2, Q4, Q1
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q0, Q3, r11
// input[132]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -120)]
vqrdmulh.s32 Q5, Q2, r5
vsub.s32 Q3, Q1, Q0
vmul.u32 Q2, Q2, r4
vadd.s32 Q1, Q1, Q0
vqrdmlah.s32 Q5, Q2, r11
// input[280]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 28)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(-384)]
// Release input[156] from Q2
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(96)]
// Release input[276] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r0,#(48)]
// Release input[12] from Q4
vadd.s32 Q1, Q1, Q6
// input[280]: Already loaded as Q0
vqrdmulh.s32 Q2, Q0, r9
// input[16]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 16)]
vmul.u32 Q0, Q0, r8
// input[136]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -116)]
vqrdmlah.s32 Q2, Q0, r11
vstrw.u32 Q1, [r14,#(-480)]
// Release input[132] from Q1
vqrdmulh.s32 Q1, Q3, r9
vsub.s32 Q0, Q4, Q2
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q1, Q3, r11
// input[256]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 4)]
vqrdmulh.s32 Q5, Q0, r5
vsub.s32 Q3, Q2, Q1
vmul.u32 Q0, Q0, r4
vadd.s32 Q2, Q2, Q1
vqrdmlah.s32 Q5, Q0, r11
// input[28]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 28)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(112)]
// Release input[280] from Q0
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r0,#(64)]
// Release input[16] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r14,#(-464)]
// Release input[136] from Q4
vadd.s32 Q2, Q2, Q6
// input[28]: Already loaded as Q1
vqrdmulh.s32 Q0, Q1, r9
// input[148]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -104)]
vmul.u32 Q1, Q1, r8
// input[268]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 16)]
vqrdmlah.s32 Q0, Q1, r11
vstrw.u32 Q2, [r14,#(16)]
// Release input[256] from Q2
vqrdmulh.s32 Q2, Q3, r9
vsub.s32 Q1, Q4, Q0
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q2, Q3, r11
// input[4]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 4)]
vqrdmulh.s32 Q5, Q1, r5
vsub.s32 Q3, Q0, Q2
vmul.u32 Q1, Q1, r4
vadd.s32 Q0, Q0, Q2
vqrdmlah.s32 Q5, Q1, r11
// input[152]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -100)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r0,#(112)]
// Release input[28] from Q1
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(-416)]
// Release input[148] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(64)]
// Release input[268] from Q4
vadd.s32 Q0, Q0, Q6
// input[152]: Already loaded as Q2
vqrdmulh.s32 Q1, Q2, r9
// input[272]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 20)]
vmul.u32 Q2, Q2, r8
// input[8]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 8)]
vqrdmlah.s32 Q1, Q2, r11
vstrw.u32 Q0, [r0,#(16)]
// Release input[4] from Q0
vqrdmulh.s32 Q0, Q3, r9
vsub.s32 Q2, Q4, Q1
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q0, Q3, r11
// input[128]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -124)]
vqrdmulh.s32 Q5, Q2, r5
vsub.s32 Q3, Q1, Q0
vmul.u32 Q2, Q2, r4
vadd.s32 Q1, Q1, Q0
vqrdmlah.s32 Q5, Q2, r11
// input[284]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 32)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(-400)]
// Release input[152] from Q2
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(80)]
// Release input[272] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r0,#(32)]
// Release input[8] from Q4
vadd.s32 Q1, Q1, Q6
// input[284]: Already loaded as Q0
vqrdmulh.s32 Q2, Q0, r9
// input[20]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 20)]
vmul.u32 Q0, Q0, r8
// input[140]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -112)]
vqrdmlah.s32 Q2, Q0, r11
vstrw.u32 Q1, [r14,#(-496)]
// Release input[128] from Q1
vqrdmulh.s32 Q1, Q3, r9
vsub.s32 Q0, Q4, Q2
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q1, Q3, r11
// input[260]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 8)]
vqrdmulh.s32 Q5, Q0, r5
vsub.s32 Q3, Q2, Q1
vmul.u32 Q0, Q0, r4
vadd.s32 Q2, Q2, Q1
vqrdmlah.s32 Q5, Q0, r11
// input[312]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 60)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(128)]
// Release input[284] from Q0
vqrdmlah.s32 Q6, Q4, r11
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
vqrdmulh.s32 Q0, Q1, r9
// input[48]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 48)]
vmul.u32 Q1, Q1, r8
// input[168]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -84)]
vqrdmlah.s32 Q0, Q1, r11
vstrw.u32 Q2, [r14,#(32)]
// Release input[260] from Q2
vqrdmulh.s32 Q2, Q3, r9
vsub.s32 Q1, Q4, Q0
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q2, Q3, r11
// input[288]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 36)]
vqrdmulh.s32 Q5, Q1, r5
vsub.s32 Q3, Q0, Q2
vmul.u32 Q1, Q1, r4
vadd.s32 Q0, Q0, Q2
vqrdmlah.s32 Q5, Q1, r11
// input[60]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 60)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(240)]
// Release input[312] from Q1
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r0,#(192)]
// Release input[48] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(-336)]
// Release input[168] from Q4
vadd.s32 Q0, Q0, Q6
// input[60]: Already loaded as Q2
vqrdmulh.s32 Q1, Q2, r9
// input[180]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -72)]
vmul.u32 Q2, Q2, r8
// input[300]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 48)]
vqrdmlah.s32 Q1, Q2, r11
vstrw.u32 Q0, [r14,#(144)]
// Release input[288] from Q0
vqrdmulh.s32 Q0, Q3, r9
vsub.s32 Q2, Q4, Q1
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q0, Q3, r11
// input[36]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 36)]
vqrdmulh.s32 Q5, Q2, r5
vsub.s32 Q3, Q1, Q0
vmul.u32 Q2, Q2, r4
vadd.s32 Q1, Q1, Q0
vqrdmlah.s32 Q5, Q2, r11
// input[184]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -68)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r0,#(240)]
// Release input[60] from Q2
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(-288)]
// Release input[180] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r14,#(192)]
// Release input[300] from Q4
vadd.s32 Q1, Q1, Q6
// input[184]: Already loaded as Q0
vqrdmulh.s32 Q2, Q0, r9
// input[304]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 52)]
vmul.u32 Q0, Q0, r8
// input[40]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 40)]
vqrdmlah.s32 Q2, Q0, r11
vstrw.u32 Q1, [r0,#(144)]
// Release input[36] from Q1
vqrdmulh.s32 Q1, Q3, r9
vsub.s32 Q0, Q4, Q2
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q1, Q3, r11
// input[160]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -92)]
vqrdmulh.s32 Q5, Q0, r5
vsub.s32 Q3, Q2, Q1
vmul.u32 Q0, Q0, r4
vadd.s32 Q2, Q2, Q1
vqrdmlah.s32 Q5, Q0, r11
// input[316]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 64)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(-272)]
// Release input[184] from Q0
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(208)]
// Release input[304] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r0,#(160)]
// Release input[40] from Q4
vadd.s32 Q2, Q2, Q6
// input[316]: Already loaded as Q1
vqrdmulh.s32 Q0, Q1, r9
// input[52]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 52)]
vmul.u32 Q1, Q1, r8
// input[172]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -80)]
vqrdmlah.s32 Q0, Q1, r11
vstrw.u32 Q2, [r14,#(-368)]
// Release input[160] from Q2
vqrdmulh.s32 Q2, Q3, r9
vsub.s32 Q1, Q4, Q0
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q2, Q3, r11
// input[292]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 40)]
vqrdmulh.s32 Q5, Q1, r5
vsub.s32 Q3, Q0, Q2
vmul.u32 Q1, Q1, r4
vadd.s32 Q0, Q0, Q2
vqrdmlah.s32 Q5, Q1, r11
// input[56]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 56)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(256)]
// Release input[316] from Q1
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r0,#(208)]
// Release input[52] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(-320)]
// Release input[172] from Q4
vadd.s32 Q0, Q0, Q6
// input[56]: Already loaded as Q2
vqrdmulh.s32 Q1, Q2, r9
// input[176]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -76)]
vmul.u32 Q2, Q2, r8
// input[296]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 44)]
vqrdmlah.s32 Q1, Q2, r11
vstrw.u32 Q0, [r14,#(160)]
// Release input[292] from Q0
vqrdmulh.s32 Q0, Q3, r9
vsub.s32 Q2, Q4, Q1
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q0, Q3, r11
// input[32]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 32)]
vqrdmulh.s32 Q5, Q2, r5
vsub.s32 Q3, Q1, Q0
vmul.u32 Q2, Q2, r4
vadd.s32 Q1, Q1, Q0
vqrdmlah.s32 Q5, Q2, r11
// input[188]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -64)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r0,#(224)]
// Release input[56] from Q2
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(-304)]
// Release input[176] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r14,#(176)]
// Release input[296] from Q4
vadd.s32 Q1, Q1, Q6
// input[188]: Already loaded as Q0
vqrdmulh.s32 Q2, Q0, r9
// input[308]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 56)]
vmul.u32 Q0, Q0, r8
// input[44]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 44)]
vqrdmlah.s32 Q2, Q0, r11
vstrw.u32 Q1, [r0,#(128)]
// Release input[32] from Q1
vqrdmulh.s32 Q1, Q3, r9
vsub.s32 Q0, Q4, Q2
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q1, Q3, r11
// input[164]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -88)]
vqrdmulh.s32 Q5, Q0, r5
vsub.s32 Q3, Q2, Q1
vmul.u32 Q0, Q0, r4
vadd.s32 Q2, Q2, Q1
vqrdmlah.s32 Q5, Q0, r11
// input[216]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -36)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(-256)]
// Release input[188] from Q0
vqrdmlah.s32 Q6, Q4, r11
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
vqrdmulh.s32 Q0, Q1, r9
// input[336]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 84)]
vmul.u32 Q1, Q1, r8
// input[72]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 72)]
vqrdmlah.s32 Q0, Q1, r11
vstrw.u32 Q2, [r14,#(-352)]
// Release input[164] from Q2
vqrdmulh.s32 Q2, Q3, r9
vsub.s32 Q1, Q4, Q0
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q2, Q3, r11
// input[192]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -60)]
vqrdmulh.s32 Q5, Q1, r5
vsub.s32 Q3, Q0, Q2
vmul.u32 Q1, Q1, r4
vadd.s32 Q0, Q0, Q2
vqrdmlah.s32 Q5, Q1, r11
// input[348]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 96)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(-144)]
// Release input[216] from Q1
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(336)]
// Release input[336] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r0,#(288)]
// Release input[72] from Q4
vadd.s32 Q0, Q0, Q6
// input[348]: Already loaded as Q2
vqrdmulh.s32 Q1, Q2, r9
// input[84]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 84)]
vmul.u32 Q2, Q2, r8
// input[204]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -48)]
vqrdmlah.s32 Q1, Q2, r11
vstrw.u32 Q0, [r14,#(-240)]
// Release input[192] from Q0
vqrdmulh.s32 Q0, Q3, r9
vsub.s32 Q2, Q4, Q1
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q0, Q3, r11
// input[324]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 72)]
vqrdmulh.s32 Q5, Q2, r5
vsub.s32 Q3, Q1, Q0
vmul.u32 Q2, Q2, r4
vadd.s32 Q1, Q1, Q0
vqrdmlah.s32 Q5, Q2, r11
// input[88]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 88)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(384)]
// Release input[348] from Q2
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r0,#(336)]
// Release input[84] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r14,#(-192)]
// Release input[204] from Q4
vadd.s32 Q1, Q1, Q6
// input[88]: Already loaded as Q0
vqrdmulh.s32 Q2, Q0, r9
// input[208]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -44)]
vmul.u32 Q0, Q0, r8
// input[328]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 76)]
vqrdmlah.s32 Q2, Q0, r11
vstrw.u32 Q1, [r14,#(288)]
// Release input[324] from Q1
vqrdmulh.s32 Q1, Q3, r9
vsub.s32 Q0, Q4, Q2
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q1, Q3, r11
// input[64]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 64)]
vqrdmulh.s32 Q5, Q0, r5
vsub.s32 Q3, Q2, Q1
vmul.u32 Q0, Q0, r4
vadd.s32 Q2, Q2, Q1
vqrdmlah.s32 Q5, Q0, r11
// input[220]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -32)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r0,#(352)]
// Release input[88] from Q0
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(-176)]
// Release input[208] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r14,#(304)]
// Release input[328] from Q4
vadd.s32 Q2, Q2, Q6
// input[220]: Already loaded as Q1
vqrdmulh.s32 Q0, Q1, r9
// input[340]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 88)]
vmul.u32 Q1, Q1, r8
// input[76]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 76)]
vqrdmlah.s32 Q0, Q1, r11
vstrw.u32 Q2, [r0,#(256)]
// Release input[64] from Q2
vqrdmulh.s32 Q2, Q3, r9
vsub.s32 Q1, Q4, Q0
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q2, Q3, r11
// input[196]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -56)]
vqrdmulh.s32 Q5, Q1, r5
vsub.s32 Q3, Q0, Q2
vmul.u32 Q1, Q1, r4
vadd.s32 Q0, Q0, Q2
vqrdmlah.s32 Q5, Q1, r11
// input[344]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 92)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(-128)]
// Release input[220] from Q1
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(352)]
// Release input[340] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r0,#(304)]
// Release input[76] from Q4
vadd.s32 Q0, Q0, Q6
// input[344]: Already loaded as Q2
vqrdmulh.s32 Q1, Q2, r9
// input[80]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 80)]
vmul.u32 Q2, Q2, r8
// input[200]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -52)]
vqrdmlah.s32 Q1, Q2, r11
vstrw.u32 Q0, [r14,#(-224)]
// Release input[196] from Q0
vqrdmulh.s32 Q0, Q3, r9
vsub.s32 Q2, Q4, Q1
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q0, Q3, r11
// input[320]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 68)]
vqrdmulh.s32 Q5, Q2, r5
vsub.s32 Q3, Q1, Q0
vmul.u32 Q2, Q2, r4
vadd.s32 Q1, Q1, Q0
vqrdmlah.s32 Q5, Q2, r11
// input[92]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 92)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(368)]
// Release input[344] from Q2
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r0,#(320)]
// Release input[80] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r14,#(-208)]
// Release input[200] from Q4
vadd.s32 Q1, Q1, Q6
// input[92]: Already loaded as Q0
vqrdmulh.s32 Q2, Q0, r9
// input[212]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -40)]
vmul.u32 Q0, Q0, r8
// input[332]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 80)]
vqrdmlah.s32 Q2, Q0, r11
vstrw.u32 Q1, [r14,#(272)]
// Release input[320] from Q1
vqrdmulh.s32 Q1, Q3, r9
vsub.s32 Q0, Q4, Q2
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q1, Q3, r11
// input[68]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 68)]
vqrdmulh.s32 Q5, Q0, r5
vsub.s32 Q3, Q2, Q1
vmul.u32 Q0, Q0, r4
vadd.s32 Q2, Q2, Q1
vqrdmlah.s32 Q5, Q0, r11
// input[120]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 120)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r0,#(368)]
// Release input[92] from Q0
vqrdmlah.s32 Q6, Q4, r11
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
vqrdmulh.s32 Q0, Q1, r9
// input[240]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -12)]
vmul.u32 Q1, Q1, r8
// input[360]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 108)]
vqrdmlah.s32 Q0, Q1, r11
vstrw.u32 Q2, [r0,#(272)]
// Release input[68] from Q2
vqrdmulh.s32 Q2, Q3, r9
vsub.s32 Q1, Q4, Q0
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q2, Q3, r11
// input[96]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 96)]
vqrdmulh.s32 Q5, Q1, r5
vsub.s32 Q3, Q0, Q2
vmul.u32 Q1, Q1, r4
vadd.s32 Q0, Q0, Q2
vqrdmlah.s32 Q5, Q1, r11
// input[252]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 0)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r0,#(480)]
// Release input[120] from Q1
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(-48)]
// Release input[240] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(432)]
// Release input[360] from Q4
vadd.s32 Q0, Q0, Q6
// input[252]: Already loaded as Q2
vqrdmulh.s32 Q1, Q2, r9
// input[372]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 120)]
vmul.u32 Q2, Q2, r8
// input[108]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 108)]
vqrdmlah.s32 Q1, Q2, r11
vstrw.u32 Q0, [r0,#(384)]
// Release input[96] from Q0
vqrdmulh.s32 Q0, Q3, r9
vsub.s32 Q2, Q4, Q1
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q0, Q3, r11
// input[228]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -24)]
vqrdmulh.s32 Q5, Q2, r5
vsub.s32 Q3, Q1, Q0
vmul.u32 Q2, Q2, r4
vadd.s32 Q1, Q1, Q0
vqrdmlah.s32 Q5, Q2, r11
// input[376]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 124)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(0)]
// Release input[252] from Q2
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(480)]
// Release input[372] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r0,#(432)]
// Release input[108] from Q4
vadd.s32 Q1, Q1, Q6
// input[376]: Already loaded as Q0
vqrdmulh.s32 Q2, Q0, r9
// input[112]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 112)]
vmul.u32 Q0, Q0, r8
// input[232]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -20)]
vqrdmlah.s32 Q2, Q0, r11
vstrw.u32 Q1, [r14,#(-96)]
// Release input[228] from Q1
vqrdmulh.s32 Q1, Q3, r9
vsub.s32 Q0, Q4, Q2
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q1, Q3, r11
// input[352]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 100)]
vqrdmulh.s32 Q5, Q0, r5
vsub.s32 Q3, Q2, Q1
vmul.u32 Q0, Q0, r4
vadd.s32 Q2, Q2, Q1
vqrdmlah.s32 Q5, Q0, r11
// input[124]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 124)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(496)]
// Release input[376] from Q0
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r0,#(448)]
// Release input[112] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r14,#(-80)]
// Release input[232] from Q4
vadd.s32 Q2, Q2, Q6
// input[124]: Already loaded as Q1
vqrdmulh.s32 Q0, Q1, r9
// input[244]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -8)]
vmul.u32 Q1, Q1, r8
// input[364]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 112)]
vqrdmlah.s32 Q0, Q1, r11
vstrw.u32 Q2, [r14,#(400)]
// Release input[352] from Q2
vqrdmulh.s32 Q2, Q3, r9
vsub.s32 Q1, Q4, Q0
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q2, Q3, r11
// input[100]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 100)]
vqrdmulh.s32 Q5, Q1, r5
vsub.s32 Q3, Q0, Q2
vmul.u32 Q1, Q1, r4
vadd.s32 Q0, Q0, Q2
vqrdmlah.s32 Q5, Q1, r11
// input[248]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -4)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r0,#(496)]
// Release input[124] from Q1
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(-32)]
// Release input[244] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(448)]
// Release input[364] from Q4
vadd.s32 Q0, Q0, Q6
// input[248]: Already loaded as Q2
vqrdmulh.s32 Q1, Q2, r9
// input[368]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 116)]
vmul.u32 Q2, Q2, r8
// input[104]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 104)]
vqrdmlah.s32 Q1, Q2, r11
vstrw.u32 Q0, [r0,#(400)]
// Release input[100] from Q0
vqrdmulh.s32 Q0, Q3, r9
vsub.s32 Q2, Q4, Q1
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q0, Q3, r11
// input[224]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -28)]
vqrdmulh.s32 Q5, Q2, r5
vsub.s32 Q3, Q1, Q0
vmul.u32 Q2, Q2, r4
vadd.s32 Q1, Q1, Q0
vqrdmlah.s32 Q5, Q2, r11
// input[380]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -124)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(-16)]
// Release input[248] from Q2
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(464)]
// Release input[368] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r0,#(416)]
// Release input[104] from Q4
vadd.s32 Q1, Q1, Q6
// input[380]: Already loaded as Q0
vqrdmulh.s32 Q2, Q0, r9
// input[116]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 116)]
vmul.u32 Q0, Q0, r8
// input[236]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -16)]
vqrdmlah.s32 Q2, Q0, r11
vstrw.u32 Q1, [r14,#(-112)]
// Release input[224] from Q1
vqrdmulh.s32 Q1, Q3, r9
vsub.s32 Q0, Q4, Q2
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q1, Q3, r11
// input[356]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 104)]
vqrdmulh.s32 Q5, Q0, r5
vsub.s32 Q3, Q2, Q1
vmul.u32 Q0, Q0, r4
vadd.s32 Q2, Q2, Q1
vqrdmlah.s32 Q5, Q0, r11
vqrdmulh.s32 Q1, Q4, r7
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r12,#(-496)]
// Release input[380] from Q0
vqrdmlah.s32 Q1, Q4, r11
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
vqrdmulh.s32 Q1, Q0, r9
// input[0]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 0)]
vmul.u32 Q0, Q0, r8
// input[4]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 4)]
vqrdmlah.s32 Q1, Q0, r11
vsub.s32 Q0, Q2, Q1
vstrw.u32 Q0, [r14,#(-480)]
// Release input[132] from Q0
vadd.s32 Q2, Q2, Q1
// input[4]: Already loaded as Q3
vqrdmulh.s32 Q0, Q3, r9
// input[256]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 4)]
vmul.u32 Q3, Q3, r8
// input[260]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 8)]
vqrdmlah.s32 Q0, Q3, r11
vstrw.u32 Q2, [r0,#(0)]
// Release input[0] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r0,#(16)]
// Release input[4] from Q3
vadd.s32 Q1, Q1, Q0
// input[260]: Already loaded as Q4
vqrdmulh.s32 Q0, Q4, r9
// input[128]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -124)]
vmul.u32 Q4, Q4, r8
// input[12]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 12)]
vqrdmlah.s32 Q0, Q4, r11
vstrw.u32 Q1, [r14,#(16)]
// Release input[256] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r14,#(32)]
// Release input[260] from Q4
vadd.s32 Q2, Q2, Q0
ldrd r9, r8, [r10], #+8
// input[12]: Already loaded as Q3
vqrdmulh.s32 Q0, Q3, r9
// input[264]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 12)]
vmul.u32 Q3, Q3, r8
// input[268]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 16)]
vqrdmlah.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(-496)]
// Release input[128] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r0,#(48)]
// Release input[12] from Q3
vadd.s32 Q1, Q1, Q0
// input[268]: Already loaded as Q4
vqrdmulh.s32 Q0, Q4, r9
// input[136]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -116)]
vmul.u32 Q4, Q4, r8
// input[140]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -112)]
vqrdmlah.s32 Q0, Q4, r11
vstrw.u32 Q1, [r14,#(48)]
// Release input[264] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r14,#(64)]
// Release input[268] from Q4
vadd.s32 Q2, Q2, Q0
// input[140]: Already loaded as Q3
vqrdmulh.s32 Q0, Q3, r9
// input[8]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 8)]
vmul.u32 Q3, Q3, r8
// input[276]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 24)]
vqrdmlah.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(-464)]
// Release input[136] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r14,#(-448)]
// Release input[140] from Q3
vadd.s32 Q1, Q1, Q0
ldrd r9, r8, [r10], #+8
// input[276]: Already loaded as Q4
vqrdmulh.s32 Q0, Q4, r9
// input[144]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -108)]
vmul.u32 Q4, Q4, r8
// input[148]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -104)]
vqrdmlah.s32 Q0, Q4, r11
vstrw.u32 Q1, [r0,#(32)]
// Release input[8] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r14,#(96)]
// Release input[276] from Q4
vadd.s32 Q2, Q2, Q0
// input[148]: Already loaded as Q3
vqrdmulh.s32 Q0, Q3, r9
// input[16]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 16)]
vmul.u32 Q3, Q3, r8
// input[20]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 20)]
vqrdmlah.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(-432)]
// Release input[144] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r14,#(-416)]
// Release input[148] from Q3
vadd.s32 Q1, Q1, Q0
// input[20]: Already loaded as Q4
vqrdmulh.s32 Q0, Q4, r9
// input[272]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 20)]
vmul.u32 Q4, Q4, r8
// input[156]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -96)]
vqrdmlah.s32 Q0, Q4, r11
vstrw.u32 Q1, [r0,#(64)]
// Release input[16] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r0,#(80)]
// Release input[20] from Q4
vadd.s32 Q2, Q2, Q0
ldrd r9, r8, [r10], #+8
// input[156]: Already loaded as Q3
vqrdmulh.s32 Q0, Q3, r9
// input[24]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 24)]
vmul.u32 Q3, Q3, r8
// input[28]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 28)]
vqrdmlah.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(80)]
// Release input[272] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r14,#(-384)]
// Release input[156] from Q3
vadd.s32 Q1, Q1, Q0
// input[28]: Already loaded as Q4
vqrdmulh.s32 Q0, Q4, r9
// input[280]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 28)]
vmul.u32 Q4, Q4, r8
// input[284]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 32)]
vqrdmlah.s32 Q0, Q4, r11
vstrw.u32 Q1, [r0,#(96)]
// Release input[24] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r0,#(112)]
// Release input[28] from Q4
vadd.s32 Q2, Q2, Q0
// input[284]: Already loaded as Q3
vqrdmulh.s32 Q0, Q3, r9
// input[152]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -100)]
vmul.u32 Q3, Q3, r8
// input[36]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 36)]
vqrdmlah.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(112)]
// Release input[280] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r14,#(128)]
// Release input[284] from Q3
vadd.s32 Q1, Q1, Q0
ldrd r9, r8, [r10], #+8
// input[36]: Already loaded as Q4
vqrdmulh.s32 Q0, Q4, r9
// input[288]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 36)]
vmul.u32 Q4, Q4, r8
// input[292]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 40)]
vqrdmlah.s32 Q0, Q4, r11
vstrw.u32 Q1, [r14,#(-400)]
// Release input[152] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r0,#(144)]
// Release input[36] from Q4
vadd.s32 Q2, Q2, Q0
// input[292]: Already loaded as Q3
vqrdmulh.s32 Q0, Q3, r9
// input[160]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -92)]
vmul.u32 Q3, Q3, r8
// input[164]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -88)]
vqrdmlah.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(144)]
// Release input[288] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r14,#(160)]
// Release input[292] from Q3
vadd.s32 Q1, Q1, Q0
// input[164]: Already loaded as Q4
vqrdmulh.s32 Q0, Q4, r9
// input[32]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 32)]
vmul.u32 Q4, Q4, r8
// input[300]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 48)]
vqrdmlah.s32 Q0, Q4, r11
vstrw.u32 Q1, [r14,#(-368)]
// Release input[160] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r14,#(-352)]
// Release input[164] from Q4
vadd.s32 Q2, Q2, Q0
ldrd r9, r8, [r10], #+8
// input[300]: Already loaded as Q3
vqrdmulh.s32 Q0, Q3, r9
// input[168]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -84)]
vmul.u32 Q3, Q3, r8
// input[172]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -80)]
vqrdmlah.s32 Q0, Q3, r11
vstrw.u32 Q2, [r0,#(128)]
// Release input[32] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r14,#(192)]
// Release input[300] from Q3
vadd.s32 Q1, Q1, Q0
// input[172]: Already loaded as Q4
vqrdmulh.s32 Q0, Q4, r9
// input[40]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 40)]
vmul.u32 Q4, Q4, r8
// input[44]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 44)]
vqrdmlah.s32 Q0, Q4, r11
vstrw.u32 Q1, [r14,#(-336)]
// Release input[168] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r14,#(-320)]
// Release input[172] from Q4
vadd.s32 Q2, Q2, Q0
// input[44]: Already loaded as Q3
vqrdmulh.s32 Q0, Q3, r9
// input[296]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 44)]
vmul.u32 Q3, Q3, r8
// input[180]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -72)]
vqrdmlah.s32 Q0, Q3, r11
vstrw.u32 Q2, [r0,#(160)]
// Release input[40] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r0,#(176)]
// Release input[44] from Q3
vadd.s32 Q1, Q1, Q0
ldrd r9, r8, [r10], #+8
// input[180]: Already loaded as Q4
vqrdmulh.s32 Q0, Q4, r9
// input[48]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 48)]
vmul.u32 Q4, Q4, r8
// input[52]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 52)]
vqrdmlah.s32 Q0, Q4, r11
vstrw.u32 Q1, [r14,#(176)]
// Release input[296] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r14,#(-288)]
// Release input[180] from Q4
vadd.s32 Q2, Q2, Q0
// input[52]: Already loaded as Q3
vqrdmulh.s32 Q0, Q3, r9
// input[304]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 52)]
vmul.u32 Q3, Q3, r8
// input[308]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 56)]
vqrdmlah.s32 Q0, Q3, r11
vstrw.u32 Q2, [r0,#(192)]
// Release input[48] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r0,#(208)]
// Release input[52] from Q3
vadd.s32 Q1, Q1, Q0
// input[308]: Already loaded as Q4
vqrdmulh.s32 Q0, Q4, r9
// input[176]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -76)]
vmul.u32 Q4, Q4, r8
// input[60]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 60)]
vqrdmlah.s32 Q0, Q4, r11
vstrw.u32 Q1, [r14,#(208)]
// Release input[304] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r14,#(224)]
// Release input[308] from Q4
vadd.s32 Q2, Q2, Q0
ldrd r9, r8, [r10], #+8
// input[60]: Already loaded as Q3
vqrdmulh.s32 Q0, Q3, r9
// input[312]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 60)]
vmul.u32 Q3, Q3, r8
// input[316]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 64)]
vqrdmlah.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(-304)]
// Release input[176] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r0,#(240)]
// Release input[60] from Q3
vadd.s32 Q1, Q1, Q0
// input[316]: Already loaded as Q4
vqrdmulh.s32 Q0, Q4, r9
// input[184]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -68)]
vmul.u32 Q4, Q4, r8
// input[188]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -64)]
vqrdmlah.s32 Q0, Q4, r11
vstrw.u32 Q1, [r14,#(240)]
// Release input[312] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r14,#(256)]
// Release input[316] from Q4
vadd.s32 Q2, Q2, Q0
// input[188]: Already loaded as Q3
vqrdmulh.s32 Q0, Q3, r9
// input[56]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 56)]
vmul.u32 Q3, Q3, r8
// input[324]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 72)]
vqrdmlah.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(-272)]
// Release input[184] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r14,#(-256)]
// Release input[188] from Q3
vadd.s32 Q1, Q1, Q0
ldrd r9, r8, [r10], #+8
// input[324]: Already loaded as Q4
vqrdmulh.s32 Q0, Q4, r9
// input[192]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -60)]
vmul.u32 Q4, Q4, r8
// input[196]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -56)]
vqrdmlah.s32 Q0, Q4, r11
vstrw.u32 Q1, [r0,#(224)]
// Release input[56] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r14,#(288)]
// Release input[324] from Q4
vadd.s32 Q2, Q2, Q0
// input[196]: Already loaded as Q3
vqrdmulh.s32 Q0, Q3, r9
// input[64]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 64)]
vmul.u32 Q3, Q3, r8
// input[68]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 68)]
vqrdmlah.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(-240)]
// Release input[192] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r14,#(-224)]
// Release input[196] from Q3
vadd.s32 Q1, Q1, Q0
// input[68]: Already loaded as Q4
vqrdmulh.s32 Q0, Q4, r9
// input[320]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 68)]
vmul.u32 Q4, Q4, r8
// input[204]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -48)]
vqrdmlah.s32 Q0, Q4, r11
vstrw.u32 Q1, [r0,#(256)]
// Release input[64] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r0,#(272)]
// Release input[68] from Q4
vadd.s32 Q2, Q2, Q0
ldrd r9, r8, [r10], #+8
// input[204]: Already loaded as Q3
vqrdmulh.s32 Q0, Q3, r9
// input[72]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 72)]
vmul.u32 Q3, Q3, r8
// input[76]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 76)]
vqrdmlah.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(272)]
// Release input[320] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r14,#(-192)]
// Release input[204] from Q3
vadd.s32 Q1, Q1, Q0
// input[76]: Already loaded as Q4
vqrdmulh.s32 Q0, Q4, r9
// input[328]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 76)]
vmul.u32 Q4, Q4, r8
// input[332]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 80)]
vqrdmlah.s32 Q0, Q4, r11
vstrw.u32 Q1, [r0,#(288)]
// Release input[72] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r0,#(304)]
// Release input[76] from Q4
vadd.s32 Q2, Q2, Q0
// input[332]: Already loaded as Q3
vqrdmulh.s32 Q0, Q3, r9
// input[200]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -52)]
vmul.u32 Q3, Q3, r8
// input[84]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 84)]
vqrdmlah.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(304)]
// Release input[328] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r14,#(320)]
// Release input[332] from Q3
vadd.s32 Q1, Q1, Q0
ldrd r9, r8, [r10], #+8
// input[84]: Already loaded as Q4
vqrdmulh.s32 Q0, Q4, r9
// input[336]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 84)]
vmul.u32 Q4, Q4, r8
// input[340]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 88)]
vqrdmlah.s32 Q0, Q4, r11
vstrw.u32 Q1, [r14,#(-208)]
// Release input[200] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r0,#(336)]
// Release input[84] from Q4
vadd.s32 Q2, Q2, Q0
// input[340]: Already loaded as Q3
vqrdmulh.s32 Q0, Q3, r9
// input[208]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -44)]
vmul.u32 Q3, Q3, r8
// input[212]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -40)]
vqrdmlah.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(336)]
// Release input[336] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r14,#(352)]
// Release input[340] from Q3
vadd.s32 Q1, Q1, Q0
// input[212]: Already loaded as Q4
vqrdmulh.s32 Q0, Q4, r9
// input[80]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 80)]
vmul.u32 Q4, Q4, r8
// input[348]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 96)]
vqrdmlah.s32 Q0, Q4, r11
vstrw.u32 Q1, [r14,#(-176)]
// Release input[208] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r14,#(-160)]
// Release input[212] from Q4
vadd.s32 Q2, Q2, Q0
ldrd r9, r8, [r10], #+8
// input[348]: Already loaded as Q3
vqrdmulh.s32 Q0, Q3, r9
// input[216]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -36)]
vmul.u32 Q3, Q3, r8
// input[220]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -32)]
vqrdmlah.s32 Q0, Q3, r11
vstrw.u32 Q2, [r0,#(320)]
// Release input[80] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r14,#(384)]
// Release input[348] from Q3
vadd.s32 Q1, Q1, Q0
// input[220]: Already loaded as Q4
vqrdmulh.s32 Q0, Q4, r9
// input[88]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 88)]
vmul.u32 Q4, Q4, r8
// input[92]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 92)]
vqrdmlah.s32 Q0, Q4, r11
vstrw.u32 Q1, [r14,#(-144)]
// Release input[216] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r14,#(-128)]
// Release input[220] from Q4
vadd.s32 Q2, Q2, Q0
// input[92]: Already loaded as Q3
vqrdmulh.s32 Q0, Q3, r9
// input[344]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 92)]
vmul.u32 Q3, Q3, r8
// input[228]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -24)]
vqrdmlah.s32 Q0, Q3, r11
vstrw.u32 Q2, [r0,#(352)]
// Release input[88] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r0,#(368)]
// Release input[92] from Q3
vadd.s32 Q1, Q1, Q0
ldrd r9, r8, [r10], #+8
// input[228]: Already loaded as Q4
vqrdmulh.s32 Q0, Q4, r9
// input[96]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 96)]
vmul.u32 Q4, Q4, r8
// input[100]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 100)]
vqrdmlah.s32 Q0, Q4, r11
vstrw.u32 Q1, [r14,#(368)]
// Release input[344] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r14,#(-96)]
// Release input[228] from Q4
vadd.s32 Q2, Q2, Q0
// input[100]: Already loaded as Q3
vqrdmulh.s32 Q0, Q3, r9
// input[352]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 100)]
vmul.u32 Q3, Q3, r8
// input[356]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 104)]
vqrdmlah.s32 Q0, Q3, r11
vstrw.u32 Q2, [r0,#(384)]
// Release input[96] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r0,#(400)]
// Release input[100] from Q3
vadd.s32 Q1, Q1, Q0
// input[356]: Already loaded as Q4
vqrdmulh.s32 Q0, Q4, r9
// input[224]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -28)]
vmul.u32 Q4, Q4, r8
// input[108]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 108)]
vqrdmlah.s32 Q0, Q4, r11
vstrw.u32 Q1, [r14,#(400)]
// Release input[352] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r14,#(416)]
// Release input[356] from Q4
vadd.s32 Q2, Q2, Q0
ldrd r9, r8, [r10], #+8
// input[108]: Already loaded as Q3
vqrdmulh.s32 Q0, Q3, r9
// input[360]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 108)]
vmul.u32 Q3, Q3, r8
// input[364]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 112)]
vqrdmlah.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(-112)]
// Release input[224] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r0,#(432)]
// Release input[108] from Q3
vadd.s32 Q1, Q1, Q0
// input[364]: Already loaded as Q4
vqrdmulh.s32 Q0, Q4, r9
// input[232]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -20)]
vmul.u32 Q4, Q4, r8
// input[236]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -16)]
vqrdmlah.s32 Q0, Q4, r11
vstrw.u32 Q1, [r14,#(432)]
// Release input[360] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r14,#(448)]
// Release input[364] from Q4
vadd.s32 Q2, Q2, Q0
// input[236]: Already loaded as Q3
vqrdmulh.s32 Q0, Q3, r9
// input[104]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 104)]
vmul.u32 Q3, Q3, r8
// input[372]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 120)]
vqrdmlah.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(-80)]
// Release input[232] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r14,#(-64)]
// Release input[236] from Q3
vadd.s32 Q1, Q1, Q0
ldrd r9, r8, [r10], #+8
// input[372]: Already loaded as Q4
vqrdmulh.s32 Q0, Q4, r9
// input[240]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -12)]
vmul.u32 Q4, Q4, r8
// input[244]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -8)]
vqrdmlah.s32 Q0, Q4, r11
vstrw.u32 Q1, [r0,#(416)]
// Release input[104] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r14,#(480)]
// Release input[372] from Q4
vadd.s32 Q2, Q2, Q0
// input[244]: Already loaded as Q3
vqrdmulh.s32 Q0, Q3, r9
// input[112]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 112)]
vmul.u32 Q3, Q3, r8
// input[116]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 116)]
vqrdmlah.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(-48)]
// Release input[240] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r14,#(-32)]
// Release input[244] from Q3
vadd.s32 Q1, Q1, Q0
// input[116]: Already loaded as Q4
vqrdmulh.s32 Q0, Q4, r9
// input[368]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 116)]
vmul.u32 Q4, Q4, r8
// input[252]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 0)]
vqrdmlah.s32 Q0, Q4, r11
vstrw.u32 Q1, [r0,#(448)]
// Release input[112] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r0,#(464)]
// Release input[116] from Q4
vadd.s32 Q2, Q2, Q0
ldrd r9, r8, [r10], #+8
// input[252]: Already loaded as Q3
vqrdmulh.s32 Q0, Q3, r9
// input[120]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 120)]
vmul.u32 Q3, Q3, r8
// input[124]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 124)]
vqrdmlah.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(464)]
// Release input[368] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r14,#(0)]
// Release input[252] from Q3
vadd.s32 Q1, Q1, Q0
// input[124]: Already loaded as Q4
vqrdmulh.s32 Q0, Q4, r9
// input[376]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 124)]
vmul.u32 Q4, Q4, r8
// input[380]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -124)]
vqrdmlah.s32 Q0, Q4, r11
vstrw.u32 Q1, [r0,#(480)]
// Release input[120] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r0,#(496)]
// Release input[124] from Q4
vadd.s32 Q2, Q2, Q0
// input[380]: Already loaded as Q3
vqrdmulh.s32 Q0, Q3, r9
// input[248]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -4)]
vmul.u32 Q3, Q3, r8
vqrdmlah.s32 Q0, Q3, r11
vstrw.u32 Q2, [r14,#(496)]
// Release input[376] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r12,#(-496)]
// Release input[380] from Q3
vadd.s32 Q1, Q1, Q0
vstrw.u32 Q1, [r14,#(-16)]
// Release input[248] from Q1
.equ modulus_inv, 1708504095
movw r9, #:lower16:modulus_inv
movt r9, #:upper16:modulus_inv
// Restore MVE vector registers
vpop {d8-d15}
// Restore GPRs
pop {r4-r11,lr}
bx lr

// Line count:        3350
// Instruction count: 2395