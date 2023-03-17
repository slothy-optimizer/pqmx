
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
.global ntt_384_u32_108643009_640922_incomplete_good_oop_half_input_twiddles
ntt_384_u32_108643009_640922_incomplete_good_oop_half_input_twiddles: // For base multiplication
.word  117231189 // zeta^  0 * 2^31 = 640922^  0 * 2^31 = 1 * 2^31
.word 3747646315 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 640922^  0 * 3479293249 * 2^31
.word  167943169 // zeta^ 64 * 2^31 = 640922^ 64 * 2^31 = 67669976 * 2^31
.word 1929942719 // zeta^ 64 * f(q^(-1) mod 2^32) * 2^31 = 640922^ 64 * 3479293249 * 2^31
.word   10524287 // zeta^ 32 * 2^31 = 640922^ 32 * 2^31 = 8569779 * 2^31
.word 2274825921 // zeta^ 32 * f(q^(-1) mod 2^32) * 2^31 = 640922^ 32 * 3479293249 * 2^31
.word  183751195 // zeta^ 96 * 2^31 = 640922^ 96 * 2^31 = 21597933 * 2^31
.word 2275215397 // zeta^ 96 * f(q^(-1) mod 2^32) * 2^31 = 640922^ 96 * 3479293249 * 2^31
.word  197898871 // zeta^ 16 * 2^31 = 640922^ 16 * 2^31 = 82310697 * 2^31
.word  189228233 // zeta^ 16 * f(q^(-1) mod 2^32) * 2^31 = 640922^ 16 * 3479293249 * 2^31
.word  117636793 // zeta^ 80 * 2^31 = 640922^ 80 * 2^31 = 87332880 * 2^31
.word 3072994823 // zeta^ 80 * f(q^(-1) mod 2^32) * 2^31 = 640922^ 80 * 3479293249 * 2^31
.word   59998845 // zeta^ 48 * 2^31 = 640922^ 48 * 2^31 = 82308834 * 2^31
.word 1940964675 // zeta^ 48 * f(q^(-1) mod 2^32) * 2^31 = 640922^ 48 * 3479293249 * 2^31
.word   22735857 // zeta^112 * 2^31 = 640922^112 * 2^31 = 44058032 * 2^31
.word 2477333199 // zeta^112 * f(q^(-1) mod 2^32) * 2^31 = 640922^112 * 3479293249 * 2^31
.word  127637249 // zeta^  8 * 2^31 = 640922^  8 * 2^31 = 1793055 * 2^31
.word 1932647359 // zeta^  8 * f(q^(-1) mod 2^32) * 2^31 = 640922^  8 * 3479293249 * 2^31
.word   78695545 // zeta^ 72 * 2^31 = 640922^ 72 * 2^31 = 108432201 * 2^31
.word 3934662727 // zeta^ 72 * f(q^(-1) mod 2^32) * 2^31 = 640922^ 72 * 3479293249 * 2^31
.word  203907557 // zeta^ 40 * 2^31 = 640922^ 40 * 2^31 = 52463921 * 2^31
.word  500614107 // zeta^ 40 * f(q^(-1) mod 2^32) * 2^31 = 640922^ 40 * 3479293249 * 2^31
.word  212278911 // zeta^104 * 2^31 = 640922^104 * 2^31 = 46625229 * 2^31
.word 3070660289 // zeta^104 * f(q^(-1) mod 2^32) * 2^31 = 640922^104 * 3479293249 * 2^31
.word   65439627 // zeta^ 24 * 2^31 = 640922^ 24 * 2^31 = 98874168 * 2^31
.word 2806138549 // zeta^ 24 * f(q^(-1) mod 2^32) * 2^31 = 640922^ 24 * 3479293249 * 2^31
.word  141615223 // zeta^ 88 * 2^31 = 640922^ 88 * 2^31 = 56126250 * 2^31
.word  830518985 // zeta^ 88 * f(q^(-1) mod 2^32) * 2^31 = 640922^ 88 * 3479293249 * 2^31
.word   96791441 // zeta^ 56 * 2^31 = 640922^ 56 * 2^31 = 17702973 * 2^31
.word 1466700591 // zeta^ 56 * f(q^(-1) mod 2^32) * 2^31 = 640922^ 56 * 3479293249 * 2^31
.word   91234029 // zeta^120 * 2^31 = 640922^120 * 2^31 = 14289518 * 2^31
.word 2063031507 // zeta^120 * f(q^(-1) mod 2^32) * 2^31 = 640922^120 * 3479293249 * 2^31
.word  172736993 // zeta^  4 * 2^31 = 640922^  4 * 2^31 = 640922 * 2^31
.word 1396807903 // zeta^  4 * f(q^(-1) mod 2^32) * 2^31 = 640922^  4 * 3479293249 * 2^31
.word   84666041 // zeta^ 68 * 2^31 = 640922^ 68 * 2^31 = 18021000 * 2^31
.word  757024263 // zeta^ 68 * f(q^(-1) mod 2^32) * 2^31 = 640922^ 68 * 3479293249 * 2^31
.word  145858849 // zeta^ 36 * 2^31 = 640922^ 36 * 2^31 = 3933234 * 2^31
.word 3495799199 // zeta^ 36 * f(q^(-1) mod 2^32) * 2^31 = 640922^ 36 * 3479293249 * 2^31
.word  183858709 // zeta^100 * 2^31 = 640922^100 * 2^31 = 58708509 * 2^31
.word 4012454827 // zeta^100 * f(q^(-1) mod 2^32) * 2^31 = 640922^100 * 3479293249 * 2^31
.word  177838823 // zeta^ 20 * 2^31 = 640922^ 20 * 2^31 = 81518432 * 2^31
.word 3547181145 // zeta^ 20 * f(q^(-1) mod 2^32) * 2^31 = 640922^ 20 * 3479293249 * 2^31
.word   41900335 // zeta^ 84 * 2^31 = 640922^ 84 * 2^31 = 34020506 * 2^31
.word 2540746769 // zeta^ 84 * f(q^(-1) mod 2^32) * 2^31 = 640922^ 84 * 3479293249 * 2^31
.word   60770513 // zeta^ 52 * 2^31 = 640922^ 52 * 2^31 = 82553845 * 2^31
.word 4044236271 // zeta^ 52 * f(q^(-1) mod 2^32) * 2^31 = 640922^ 52 * 3479293249 * 2^31
.word  167358029 // zeta^116 * 2^31 = 640922^116 * 2^31 = 31587287 * 2^31
.word  953816435 // zeta^116 * f(q^(-1) mod 2^32) * 2^31 = 640922^116 * 3479293249 * 2^31
.word   51201803 // zeta^ 12 * 2^31 = 640922^ 12 * 2^31 = 91290517 * 2^31
.word 3348244277 // zeta^ 12 * f(q^(-1) mod 2^32) * 2^31 = 640922^ 12 * 3479293249 * 2^31
.word   80521231 // zeta^ 76 * 2^31 = 640922^ 76 * 2^31 = 40418220 * 2^31
.word  382095665 // zeta^ 76 * f(q^(-1) mod 2^32) * 2^31 = 640922^ 76 * 3479293249 * 2^31
.word   99504283 // zeta^ 44 * 2^31 = 640922^ 44 * 2^31 = 52603644 * 2^31
.word 3359009189 // zeta^ 44 * f(q^(-1) mod 2^32) * 2^31 = 640922^ 44 * 3479293249 * 2^31
.word   40810197 // zeta^108 * 2^31 = 640922^108 * 2^31 = 6251616 * 2^31
.word  935723755 // zeta^108 * f(q^(-1) mod 2^32) * 2^31 = 640922^108 * 3479293249 * 2^31
.word  171634653 // zeta^ 28 * 2^31 = 640922^ 28 * 2^31 = 31497268 * 2^31
.word 2671255523 // zeta^ 28 * f(q^(-1) mod 2^32) * 2^31 = 640922^ 28 * 3479293249 * 2^31
.word  139731691 // zeta^ 92 * 2^31 = 640922^ 92 * 2^31 = 87621537 * 2^31
.word 1117909845 // zeta^ 92 * f(q^(-1) mod 2^32) * 2^31 = 640922^ 92 * 3479293249 * 2^31
.word   62594557 // zeta^ 60 * 2^31 = 640922^ 60 * 2^31 = 92216191 * 2^31
.word 1184680387 // zeta^ 60 * f(q^(-1) mod 2^32) * 2^31 = 640922^ 60 * 3479293249 * 2^31
.word  164673767 // zeta^124 * 2^31 = 640922^124 * 2^31 = 78082914 * 2^31
.word 2238255705 // zeta^124 * f(q^(-1) mod 2^32) * 2^31 = 640922^124 * 3479293249 * 2^31
.word  159354989 // zeta^128 * 2^31 = 640922^128 * 2^31 = 67669975 * 2^31
.word 2477263699 // zeta^128 * f(q^(-1) mod 2^32) * 2^31 = 640922^128 * 3479293249 * 2^31
.word  100054829 // zeta^192 * 2^31 = 640922^192 * 2^31 = 108643008 * 2^31
.word  547320979 // zeta^192 * f(q^(-1) mod 2^32) * 2^31 = 640922^192 * 3479293249 * 2^31
.word   64583899 // zeta^160 * 2^31 = 640922^160 * 2^31 = 13028154 * 2^31
.word     389477 // zeta^160 * f(q^(-1) mod 2^32) * 2^31 = 640922^160 * 3479293249 * 2^31
.word  206761731 // zeta^224 * 2^31 = 640922^224 * 2^31 = 100073230 * 2^31
.word 2020141373 // zeta^224 * f(q^(-1) mod 2^32) * 2^31 = 640922^224 * 3479293249 * 2^31
.word   28380931 // zeta^144 * 2^31 = 640922^144 * 2^31 = 5022183 * 2^31
.word 2883766589 // zeta^144 * f(q^(-1) mod 2^32) * 2^31 = 640922^144 * 3479293249 * 2^31
.word   19387147 // zeta^208 * 2^31 = 640922^208 * 2^31 = 26332312 * 2^31
.word 4105739061 // zeta^208 * f(q^(-1) mod 2^32) * 2^31 = 640922^208 * 3479293249 * 2^31
.word   71380021 // zeta^176 * 2^31 = 640922^176 * 2^31 = 70392207 * 2^31
.word  536368523 // zeta^176 * f(q^(-1) mod 2^32) * 2^31 = 640922^176 * 3479293249 * 2^31
.word  157287173 // zeta^240 * 2^31 = 640922^240 * 2^31 = 26334175 * 2^31
.word 2354002619 // zeta^240 * f(q^(-1) mod 2^32) * 2^31 = 640922^240 * 3479293249 * 2^31
.word   59701305 // zeta^136 * 2^31 = 640922^136 * 2^31 = 106639146 * 2^31
.word 2002015367 // zeta^136 * f(q^(-1) mod 2^32) * 2^31 = 640922^136 * 3479293249 * 2^31
.word   89648769 // zeta^200 * 2^31 = 640922^200 * 2^31 = 106849954 * 2^31
.word 2362319935 // zeta^200 * f(q^(-1) mod 2^32) * 2^31 = 640922^200 * 3479293249 * 2^31
.word  117014363 // zeta^168 * 2^31 = 640922^168 * 2^31 = 102804317 * 2^31
.word 2570046181 // zeta^168 * f(q^(-1) mod 2^32) * 2^31 = 640922^168 * 3479293249 * 2^31
.word   13378461 // zeta^232 * 2^31 = 640922^232 * 2^31 = 56179088 * 2^31
.word 3794353187 // zeta^232 * f(q^(-1) mod 2^32) * 2^31 = 640922^232 * 3479293249 * 2^31
.word  184818605 // zeta^152 * 2^31 = 640922^152 * 2^31 = 65895091 * 2^31
.word 2319347731 // zeta^152 * f(q^(-1) mod 2^32) * 2^31 = 640922^152 * 3479293249 * 2^31
.word  151846391 // zeta^216 * 2^31 = 640922^216 * 2^31 = 9768841 * 2^31
.word 1488828745 // zeta^216 * f(q^(-1) mod 2^32) * 2^31 = 640922^216 * 3479293249 * 2^31
.word  103085597 // zeta^184 * 2^31 = 640922^184 * 2^31 = 105229554 * 2^31
.word  596330915 // zeta^184 * f(q^(-1) mod 2^32) * 2^31 = 640922^184 * 3479293249 * 2^31
.word  120494577 // zeta^248 * 2^31 = 640922^248 * 2^31 = 90940036 * 2^31
.word 2828266703 // zeta^248 * f(q^(-1) mod 2^32) * 2^31 = 640922^248 * 3479293249 * 2^31
.word   20572057 // zeta^132 * 2^31 = 640922^132 * 2^31 = 17380078 * 2^31
.word 3655183655 // zeta^132 * f(q^(-1) mod 2^32) * 2^31 = 640922^132 * 3479293249 * 2^31
.word   44549025 // zeta^196 * 2^31 = 640922^196 * 2^31 = 108002087 * 2^31
.word 2898159391 // zeta^196 * f(q^(-1) mod 2^32) * 2^31 = 640922^196 * 3479293249 * 2^31
.word  146642869 // zeta^164 * 2^31 = 640922^164 * 2^31 = 54775275 * 2^31
.word  516655627 // zeta^164 * f(q^(-1) mod 2^32) * 2^31 = 640922^164 * 3479293249 * 2^31
.word   71427169 // zeta^228 * 2^31 = 640922^228 * 2^31 = 104709775 * 2^31
.word  799168095 // zeta^228 * f(q^(-1) mod 2^32) * 2^31 = 640922^228 * 3479293249 * 2^31
.word  189990539 // zeta^148 * 2^31 = 640922^148 * 2^31 = 61145083 * 2^31
.word 3288532917 // zeta^148 * f(q^(-1) mod 2^32) * 2^31 = 640922^148 * 3479293249 * 2^31
.word   39447195 // zeta^212 * 2^31 = 640922^212 * 2^31 = 27124577 * 2^31
.word  747786149 // zeta^212 * f(q^(-1) mod 2^32) * 2^31 = 640922^212 * 3479293249 * 2^31
.word  215230525 // zeta^180 * 2^31 = 640922^180 * 2^31 = 57676451 * 2^31
.word 1204547459 // zeta^180 * f(q^(-1) mod 2^32) * 2^31 = 640922^180 * 3479293249 * 2^31
.word  156515505 // zeta^244 * 2^31 = 640922^244 * 2^31 = 26089164 * 2^31
.word  250731023 // zeta^244 * f(q^(-1) mod 2^32) * 2^31 = 640922^244 * 3479293249 * 2^31
.word  137962437 // zeta^140 * 2^31 = 640922^140 * 2^31 = 57770712 * 2^31
.word 1328818683 // zeta^140 * f(q^(-1) mod 2^32) * 2^31 = 640922^140 * 3479293249 * 2^31
.word  166084215 // zeta^204 * 2^31 = 640922^204 * 2^31 = 17352492 * 2^31
.word  946723017 // zeta^204 * f(q^(-1) mod 2^32) * 2^31 = 640922^204 * 3479293249 * 2^31
.word   49948923 // zeta^172 * 2^31 = 640922^172 * 2^31 = 62290981 * 2^31
.word 1871681861 // zeta^172 * f(q^(-1) mod 2^32) * 2^31 = 640922^172 * 3479293249 * 2^31
.word  117781735 // zeta^236 * 2^31 = 640922^236 * 2^31 = 56039365 * 2^31
.word  935958105 // zeta^236 * f(q^(-1) mod 2^32) * 2^31 = 640922^236 * 3479293249 * 2^31
.word   76740047 // zeta^156 * 2^31 = 640922^156 * 2^31 = 56124269 * 2^31
.word 2741621617 // zeta^156 * f(q^(-1) mod 2^32) * 2^31 = 640922^156 * 3479293249 * 2^31
.word   45651365 // zeta^220 * 2^31 = 640922^220 * 2^31 = 77145741 * 2^31
.word 1623711771 // zeta^220 * f(q^(-1) mod 2^32) * 2^31 = 640922^220 * 3479293249 * 2^31
.word  210722219 // zeta^188 * 2^31 = 640922^188 * 2^31 = 94509732 * 2^31
.word 1053575317 // zeta^188 * f(q^(-1) mod 2^32) * 2^31 = 640922^188 * 3479293249 * 2^31
.word  154691461 // zeta^252 * 2^31 = 640922^252 * 2^31 = 16426818 * 2^31
.word 3110286907 // zeta^252 * f(q^(-1) mod 2^32) * 2^31 = 640922^252 * 3479293249 * 2^31
.word   49342849 // zeta^256 * 2^31 = 640922^256 * 2^31 = 40973033 * 2^31
.word 2365024575 // zeta^256 * f(q^(-1) mod 2^32) * 2^31 = 640922^256 * 3479293249 * 2^31
.word   57931029 // zeta^320 * 2^31 = 640922^320 * 2^31 = 40973034 * 2^31
.word 1817703595 // zeta^320 * f(q^(-1) mod 2^32) * 2^31 = 640922^320 * 3479293249 * 2^31
.word   33534823 // zeta^288 * 2^31 = 640922^288 * 2^31 = 87045076 * 2^31
.word 2019751897 // zeta^288 * f(q^(-1) mod 2^32) * 2^31 = 640922^288 * 3479293249 * 2^31
.word  152702119 // zeta^352 * 2^31 = 640922^352 * 2^31 = 95614855 * 2^31
.word 4294577817 // zeta^352 * f(q^(-1) mod 2^32) * 2^31 = 640922^352 * 3479293249 * 2^31
.word   99649225 // zeta^272 * 2^31 = 640922^272 * 2^31 = 21310129 * 2^31
.word 1221972471 // zeta^272 * f(q^(-1) mod 2^32) * 2^31 = 640922^272 * 3479293249 * 2^31
.word  188905087 // zeta^336 * 2^31 = 640922^336 * 2^31 = 103620826 * 2^31
.word 1411200705 // zeta^336 * f(q^(-1) mod 2^32) * 2^31 = 640922^336 * 3479293249 * 2^31
.word  194550161 // zeta^304 * 2^31 = 640922^304 * 2^31 = 64584977 * 2^31
.word 1817634095 // zeta^304 * f(q^(-1) mod 2^32) * 2^31 = 640922^304 * 3479293249 * 2^31
.word  145905997 // zeta^368 * 2^31 = 640922^368 * 2^31 = 38250802 * 2^31
.word 3758598771 // zeta^368 * f(q^(-1) mod 2^32) * 2^31 = 640922^368 * 3479293249 * 2^31
.word  138590473 // zeta^264 * 2^31 = 640922^264 * 2^31 = 210808 * 2^31
.word  360304567 // zeta^264 * f(q^(-1) mod 2^32) * 2^31 = 640922^264 * 3479293249 * 2^31
.word  157584713 // zeta^328 * 2^31 = 640922^328 * 2^31 = 2003863 * 2^31
.word 2292951927 // zeta^328 * f(q^(-1) mod 2^32) * 2^31 = 640922^328 * 3479293249 * 2^31
.word    5007107 // zeta^296 * 2^31 = 640922^296 * 2^31 = 62017780 * 2^31
.word 1224307005 // zeta^296 * f(q^(-1) mod 2^32) * 2^31 = 640922^296 * 3479293249 * 2^31
.word  100271655 // zeta^360 * 2^31 = 640922^360 * 2^31 = 5838692 * 2^31
.word 1724921113 // zeta^360 * f(q^(-1) mod 2^32) * 2^31 = 640922^360 * 3479293249 * 2^31
.word   75670795 // zeta^280 * 2^31 = 640922^280 * 2^31 = 52516759 * 2^31
.word 3464448309 // zeta^280 * f(q^(-1) mod 2^32) * 2^31 = 640922^280 * 3479293249 * 2^31
.word   32467413 // zeta^344 * 2^31 = 640922^344 * 2^31 = 42747918 * 2^31
.word 1975619563 // zeta^344 * f(q^(-1) mod 2^32) * 2^31 = 640922^344 * 3479293249 * 2^31
.word  126051989 // zeta^312 * 2^31 = 640922^312 * 2^31 = 94353491 * 2^31
.word 2231935787 // zeta^312 * f(q^(-1) mod 2^32) * 2^31 = 640922^312 * 3479293249 * 2^31
.word  114200421 // zeta^376 * 2^31 = 640922^376 * 2^31 = 3413455 * 2^31
.word 3698636379 // zeta^376 * f(q^(-1) mod 2^32) * 2^31 = 640922^376 * 3479293249 * 2^31
.word  132619977 // zeta^260 * 2^31 = 640922^260 * 2^31 = 90622009 * 2^31
.word 3537943031 // zeta^260 * f(q^(-1) mod 2^32) * 2^31 = 640922^260 * 3479293249 * 2^31
.word  196713961 // zeta^324 * 2^31 = 640922^324 * 2^31 = 91262931 * 2^31
.word  639783639 // zeta^324 * f(q^(-1) mod 2^32) * 2^31 = 640922^324 * 3479293249 * 2^31
.word   33427309 // zeta^292 * 2^31 = 640922^292 * 2^31 = 49934500 * 2^31
.word  282512467 // zeta^292 * f(q^(-1) mod 2^32) * 2^31 = 640922^292 * 3479293249 * 2^31
.word   70643149 // zeta^356 * 2^31 = 640922^356 * 2^31 = 53867734 * 2^31
.word 3778311667 // zeta^356 * f(q^(-1) mod 2^32) * 2^31 = 640922^356 * 3479293249 * 2^31
.word  175385683 // zeta^276 * 2^31 = 640922^276 * 2^31 = 74622503 * 2^31
.word 1754220525 // zeta^276 * f(q^(-1) mod 2^32) * 2^31 = 640922^276 * 3479293249 * 2^31
.word   27295479 // zeta^340 * 2^31 = 640922^340 * 2^31 = 47497926 * 2^31
.word 1006434377 // zeta^340 * f(q^(-1) mod 2^32) * 2^31 = 640922^340 * 3479293249 * 2^31
.word   49927989 // zeta^308 * 2^31 = 640922^308 * 2^31 = 77055722 * 2^31
.word 3341150859 // zeta^308 * f(q^(-1) mod 2^32) * 2^31 = 640922^308 * 3479293249 * 2^31
.word    2055493 // zeta^372 * 2^31 = 640922^372 * 2^31 = 50966558 * 2^31
.word 3090419835 // zeta^372 * f(q^(-1) mod 2^32) * 2^31 = 640922^372 * 3479293249 * 2^31
.word  136764787 // zeta^268 * 2^31 = 640922^268 * 2^31 = 68224789 * 2^31
.word 3912871629 // zeta^268 * f(q^(-1) mod 2^32) * 2^31 = 640922^268 * 3479293249 * 2^31
.word   79323581 // zeta^332 * 2^31 = 640922^332 * 2^31 = 50872297 * 2^31
.word 2966148611 // zeta^332 * f(q^(-1) mod 2^32) * 2^31 = 640922^332 * 3479293249 * 2^31
.word  176475821 // zeta^300 * 2^31 = 640922^300 * 2^31 = 102391393 * 2^31
.word 3359243539 // zeta^300 * f(q^(-1) mod 2^32) * 2^31 = 640922^300 * 3479293249 * 2^31
.word  167337095 // zeta^364 * 2^31 = 640922^364 * 2^31 = 46352028 * 2^31
.word 2423285433 // zeta^364 * f(q^(-1) mod 2^32) * 2^31 = 640922^364 * 3479293249 * 2^31
.word   77554327 // zeta^284 * 2^31 = 640922^284 * 2^31 = 21021472 * 2^31
.word 3177057449 // zeta^284 * f(q^(-1) mod 2^32) * 2^31 = 640922^284 * 3479293249 * 2^31
.word  140545971 // zeta^348 * 2^31 = 640922^348 * 2^31 = 52518740 * 2^31
.word 1553345677 // zeta^348 * f(q^(-1) mod 2^32) * 2^31 = 640922^348 * 3479293249 * 2^31
.word   52612251 // zeta^316 * 2^31 = 640922^316 * 2^31 = 30560095 * 2^31
.word 2056711589 // zeta^316 * f(q^(-1) mod 2^32) * 2^31 = 640922^316 * 3479293249 * 2^31
.word    6563799 // zeta^380 * 2^31 = 640922^380 * 2^31 = 14133277 * 2^31
.word 3241391977 // zeta^380 * f(q^(-1) mod 2^32) * 2^31 = 640922^380 * 3479293249 * 2^31
// End of twiddles for base multiplication

.global ntt_384_u32_108643009_640922_incomplete_good_oop_half_input_scale
ntt_384_u32_108643009_640922_incomplete_good_oop_half_input_scale: // Constants for scaling by 1/N
.word 117231189 // 1/96
.word 3747646315 // 1/96 twisted
.data
roots:
.word   40973033 /// zeta^256 * 2^31 = 640922^256 * 2^31 = 40973033 * 2^31
.word  809890293 /// zeta^256 * f(q^(-1) mod 2^32) * 2^31 = 640922^256 * 3479293249 * 2^31
.word   67669975 /// zeta^128 * 2^31 = 640922^128 * 2^31 = 67669975 * 2^31
.word 1337593335 /// zeta^128 * f(q^(-1) mod 2^32) * 2^31 = 640922^128 * 3479293249 * 2^31
.word          1 // zeta^  0 * 2^31 = 640922^  0 * 2^31 = 1 * 2^31
.word         20 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 640922^  0 * 3479293249 * 2^31
.word          1 // zeta^  0 * 2^31 = 640922^  0 * 2^31 = 1 * 2^31
.word         20 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 640922^  0 * 3479293249 * 2^31
.word   87045076 // zeta^288 * 2^31 = 640922^288 * 2^31 = 87045076 * 2^31
.word 1720569773 // zeta^288 * f(q^(-1) mod 2^32) * 2^31 = 640922^288 * 3479293249 * 2^31
.word          1 // zeta^  0 * 2^31 = 640922^  0 * 2^31 = 1 * 2^31
.word         20 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 640922^  0 * 3479293249 * 2^31
.word          1 // zeta^  0 * 2^31 = 640922^  0 * 2^31 = 1 * 2^31
.word         20 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 640922^  0 * 3479293249 * 2^31
.word   87045076 // zeta^288 * 2^31 = 640922^288 * 2^31 = 87045076 * 2^31
.word 1720569773 // zeta^288 * f(q^(-1) mod 2^32) * 2^31 = 640922^288 * 3479293249 * 2^31
.word   87045076 // zeta^288 * 2^31 = 640922^288 * 2^31 = 87045076 * 2^31
.word 1720569773 // zeta^288 * f(q^(-1) mod 2^32) * 2^31 = 640922^288 * 3479293249 * 2^31
.word    5022183 // zeta^144 * 2^31 = 640922^144 * 2^31 = 5022183 * 2^31
.word   99270592 // zeta^144 * f(q^(-1) mod 2^32) * 2^31 = 640922^144 * 3479293249 * 2^31
.word   82308834 // zeta^ 48 * 2^31 = 640922^ 48 * 2^31 = 82308834 * 2^31
.word 1626951211 // zeta^ 48 * f(q^(-1) mod 2^32) * 2^31 = 640922^ 48 * 3479293249 * 2^31
.word    5022183 // zeta^144 * 2^31 = 640922^144 * 2^31 = 5022183 * 2^31
.word   99270592 // zeta^144 * f(q^(-1) mod 2^32) * 2^31 = 640922^144 * 3479293249 * 2^31
.word     210808 // zeta^264 * 2^31 = 640922^264 * 2^31 = 210808 * 2^31
.word    4166920 // zeta^264 * f(q^(-1) mod 2^32) * 2^31 = 640922^264 * 3479293249 * 2^31
.word  102804317 // zeta^168 * 2^31 = 640922^168 * 2^31 = 102804317 * 2^31
.word 2032073593 // zeta^168 * f(q^(-1) mod 2^32) * 2^31 = 640922^168 * 3479293249 * 2^31
.word   82308834 // zeta^ 48 * 2^31 = 640922^ 48 * 2^31 = 82308834 * 2^31
.word 1626951211 // zeta^ 48 * f(q^(-1) mod 2^32) * 2^31 = 640922^ 48 * 3479293249 * 2^31
.word   98874168 // zeta^ 24 * 2^31 = 640922^ 24 * 2^31 = 98874168 * 2^31
.word 1954388607 // zeta^ 24 * f(q^(-1) mod 2^32) * 2^31 = 640922^ 24 * 3479293249 * 2^31
.word   94353491 // zeta^312 * 2^31 = 640922^312 * 2^31 = 94353491 * 2^31
.word 1865030994 // zeta^312 * f(q^(-1) mod 2^32) * 2^31 = 640922^312 * 3479293249 * 2^31
.word          1 // XX: zeta^  0 * 2^31 = 640922^  0 * 2^31 = 1 * 2^31
.word         20 /// zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 640922^  0 * 3479293249 * 2^31
.word   87045076 // XX: zeta^288 * 2^31 = 640922^288 * 2^31 = 87045076 * 2^31
.word 1720569773 /// zeta^288 * f(q^(-1) mod 2^32) * 2^31 = 640922^288 * 3479293249 * 2^31
.word    5022183 // XX: zeta^144 * 2^31 = 640922^144 * 2^31 = 5022183 * 2^31
.word   99270592 /// zeta^144 * f(q^(-1) mod 2^32) * 2^31 = 640922^144 * 3479293249 * 2^31
.word   82308834 // XX: zeta^ 48 * 2^31 = 640922^ 48 * 2^31 = 82308834 * 2^31
.word 1626951211 /// zeta^ 48 * f(q^(-1) mod 2^32) * 2^31 = 640922^ 48 * 3479293249 * 2^31
.word     210808 // XX: zeta^264 * 2^31 = 640922^264 * 2^31 = 210808 * 2^31
.word    4166920 /// zeta^264 * f(q^(-1) mod 2^32) * 2^31 = 640922^264 * 3479293249 * 2^31
.word  102804317 // XX: zeta^168 * 2^31 = 640922^168 * 2^31 = 102804317 * 2^31
.word 2032073593 /// zeta^168 * f(q^(-1) mod 2^32) * 2^31 = 640922^168 * 3479293249 * 2^31
.word   98874168 // XX: zeta^ 24 * 2^31 = 640922^ 24 * 2^31 = 98874168 * 2^31
.word 1954388607 /// zeta^ 24 * f(q^(-1) mod 2^32) * 2^31 = 640922^ 24 * 3479293249 * 2^31
.word   94353491 // XX: zeta^312 * 2^31 = 640922^312 * 2^31 = 94353491 * 2^31
.word 1865030994 /// zeta^312 * f(q^(-1) mod 2^32) * 2^31 = 640922^312 * 3479293249 * 2^31
.word   17380078 // XX: zeta^132 * 2^31 = 640922^132 * 2^31 = 17380078 * 2^31
.word  343541970 /// zeta^132 * f(q^(-1) mod 2^32) * 2^31 = 640922^132 * 3479293249 * 2^31
.word    3933234 // XX: zeta^ 36 * 2^31 = 640922^ 36 * 2^31 = 3933234 * 2^31
.word   77745966 /// zeta^ 36 * f(q^(-1) mod 2^32) * 2^31 = 640922^ 36 * 3479293249 * 2^31
.word   74622503 // XX: zeta^276 * 2^31 = 640922^276 * 2^31 = 74622503 * 2^31
.word 1475019943 /// zeta^276 * f(q^(-1) mod 2^32) * 2^31 = 640922^276 * 3479293249 * 2^31
.word   57676451 // XX: zeta^180 * 2^31 = 640922^180 * 2^31 = 57676451 * 2^31
.word 1140057115 /// zeta^180 * f(q^(-1) mod 2^32) * 2^31 = 640922^180 * 3479293249 * 2^31
.word   91290517 // XX: zeta^ 12 * 2^31 = 640922^ 12 * 2^31 = 91290517 * 2^31
.word 1804486955 /// zeta^ 12 * f(q^(-1) mod 2^32) * 2^31 = 640922^ 12 * 3479293249 * 2^31
.word  102391393 // XX: zeta^300 * 2^31 = 640922^300 * 2^31 = 102391393 * 2^31
.word 2023911563 /// zeta^300 * f(q^(-1) mod 2^32) * 2^31 = 640922^300 * 3479293249 * 2^31
.word   56124269 // XX: zeta^156 * 2^31 = 640922^156 * 2^31 = 56124269 * 2^31
.word 1109376029 /// zeta^156 * f(q^(-1) mod 2^32) * 2^31 = 640922^156 * 3479293249 * 2^31
.word   92216191 // XX: zeta^ 60 * 2^31 = 640922^ 60 * 2^31 = 92216191 * 2^31
.word 1822784218 /// zeta^ 60 * f(q^(-1) mod 2^32) * 2^31 = 640922^ 60 * 3479293249 * 2^31
.text
.align 4
roots_addr: .word roots
.syntax unified
.type ntt_384_u32_108643009_640922_incomplete_good_oop_half_input, %function
.global ntt_384_u32_108643009_640922_incomplete_good_oop_half_input
ntt_384_u32_108643009_640922_incomplete_good_oop_half_input:
// Save GPRs
push {r4-r11,lr}
// Save MVE vector registers
vpush {d8-d15}
// Use r14 as marker for r0 + 512
add r14, r0, #512
// Use r12 as marker for r0 + 1024
add r12, r14, #512
// Use r11 as marker for r1 + 1008
add r11, r1, #1008
// Use r10 as marker for r1 + 2016
add r10, r11, #1008
.equ modulus, -108643009
movw r9, #:lower16:modulus
movt r9, #:upper16:modulus
ldr r8, roots_addr
ldrd r7, r6, [r8], #+8
ldrd r5, r4, [r8], #+8
// input[128]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 0)]
// input[0]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 0)]
vmul.u32 Q2, Q0, r7
vadd.s32 Q4, Q1, Q0
// input[132]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * 4)]
vqrdmulh.s32 Q3, Q0, r6
// input[4]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 4)]
vsub.s32 Q5, Q1, Q0
vmla.s32 Q2, Q3, r9
vstrw.u32 Q4, [r1,#(0)]
vadd.s32 Q3, Q1, Q2
vstrw.u32 Q3, [r11,#(-496)]
vsub.s32 Q5, Q5, Q2
vstrw.u32 Q5, [r11,#(16)]
// Release input[0] from Q1
// Release input[128] from Q0
// input[4]: Already loaded as Q7
// input[132]: Already loaded as Q6
vmul.u32 Q0, Q7, r7
vadd.s32 Q2, Q6, Q7
// input[136]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 8)]
vqrdmulh.s32 Q1, Q7, r6
// input[8]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 8)]
vsub.s32 Q3, Q6, Q7
vmla.s32 Q0, Q1, r9
vstrw.u32 Q2, [r11,#(-480)]
vadd.s32 Q1, Q6, Q0
vstrw.u32 Q1, [r1,#(16)]
vsub.s32 Q3, Q3, Q0
vstrw.u32 Q3, [r11,#(32)]
// Release input[132] from Q6
// Release input[4] from Q7
// input[136]: Already loaded as Q4
// input[8]: Already loaded as Q5
vsub.s32 Q0, Q4, Q5
vmul.u32 Q1, Q0, r7
// input[12]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 12)]
vadd.s32 Q2, Q4, Q5
vqrdmulh.s32 Q0, Q0, r6
// input[140]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * 12)]
vmla.s32 Q1, Q0, r9
vneg.s32 Q0, Q4
// Release input[136] from Q4
vstrw.u32 Q2, [r11,#(48)]
vsub.s32 Q4, Q1, Q5
// Release input[8] from Q5
vstrw.u32 Q4, [r11,#(-464)]
vsub.s32 Q0, Q0, Q1
vstrw.u32 Q0, [r1,#(32)]
// input[140]: Already loaded as Q6
// input[12]: Already loaded as Q3
vmul.u32 Q0, Q6, r7
vadd.s32 Q2, Q3, Q6
// input[144]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 16)]
vqrdmulh.s32 Q1, Q6, r6
// input[16]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 16)]
vsub.s32 Q4, Q3, Q6
vmla.s32 Q0, Q1, r9
vstrw.u32 Q2, [r1,#(48)]
vadd.s32 Q1, Q3, Q0
vstrw.u32 Q1, [r11,#(-448)]
vsub.s32 Q4, Q4, Q0
vstrw.u32 Q4, [r11,#(64)]
// Release input[12] from Q3
// Release input[140] from Q6
// input[16]: Already loaded as Q7
// input[144]: Already loaded as Q5
vmul.u32 Q0, Q7, r7
vadd.s32 Q2, Q5, Q7
// input[148]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 20)]
vqrdmulh.s32 Q1, Q7, r6
// input[20]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 20)]
vsub.s32 Q3, Q5, Q7
vmla.s32 Q0, Q1, r9
vstrw.u32 Q2, [r11,#(-432)]
vadd.s32 Q1, Q5, Q0
vstrw.u32 Q1, [r1,#(64)]
vsub.s32 Q3, Q3, Q0
vstrw.u32 Q3, [r11,#(80)]
// Release input[144] from Q5
// Release input[16] from Q7
// input[148]: Already loaded as Q4
// input[20]: Already loaded as Q6
vsub.s32 Q0, Q4, Q6
vmul.u32 Q1, Q0, r7
// input[24]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 24)]
vadd.s32 Q2, Q4, Q6
vqrdmulh.s32 Q0, Q0, r6
// input[152]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 24)]
vmla.s32 Q1, Q0, r9
vneg.s32 Q0, Q4
// Release input[148] from Q4
vstrw.u32 Q2, [r11,#(96)]
vsub.s32 Q4, Q1, Q6
// Release input[20] from Q6
vstrw.u32 Q4, [r11,#(-416)]
vsub.s32 Q0, Q0, Q1
vstrw.u32 Q0, [r1,#(80)]
// input[152]: Already loaded as Q5
// input[24]: Already loaded as Q3
vmul.u32 Q0, Q5, r7
vadd.s32 Q2, Q3, Q5
// input[156]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * 28)]
vqrdmulh.s32 Q1, Q5, r6
// input[28]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 28)]
vsub.s32 Q4, Q3, Q5
vmla.s32 Q0, Q1, r9
vstrw.u32 Q2, [r1,#(96)]
vadd.s32 Q1, Q3, Q0
vstrw.u32 Q1, [r11,#(-400)]
vsub.s32 Q4, Q4, Q0
vstrw.u32 Q4, [r11,#(112)]
// Release input[24] from Q3
// Release input[152] from Q5
// input[28]: Already loaded as Q7
// input[156]: Already loaded as Q6
vmul.u32 Q0, Q7, r7
vadd.s32 Q2, Q6, Q7
// input[160]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 32)]
vqrdmulh.s32 Q1, Q7, r6
// input[32]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 32)]
vsub.s32 Q3, Q6, Q7
vmla.s32 Q0, Q1, r9
vstrw.u32 Q2, [r11,#(-384)]
vadd.s32 Q1, Q6, Q0
vstrw.u32 Q1, [r1,#(112)]
vsub.s32 Q3, Q3, Q0
vstrw.u32 Q3, [r11,#(128)]
// Release input[156] from Q6
// Release input[28] from Q7
// input[160]: Already loaded as Q4
// input[32]: Already loaded as Q5
vsub.s32 Q0, Q4, Q5
vmul.u32 Q1, Q0, r7
// input[36]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 36)]
vadd.s32 Q2, Q4, Q5
vqrdmulh.s32 Q0, Q0, r6
// input[164]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * 36)]
vmla.s32 Q1, Q0, r9
vneg.s32 Q0, Q4
// Release input[160] from Q4
vstrw.u32 Q2, [r11,#(144)]
vsub.s32 Q4, Q1, Q5
// Release input[32] from Q5
vstrw.u32 Q4, [r11,#(-368)]
vsub.s32 Q0, Q0, Q1
vstrw.u32 Q0, [r1,#(128)]
// input[164]: Already loaded as Q6
// input[36]: Already loaded as Q3
vmul.u32 Q0, Q6, r7
vadd.s32 Q2, Q3, Q6
// input[168]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 40)]
vqrdmulh.s32 Q1, Q6, r6
// input[40]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 40)]
vsub.s32 Q4, Q3, Q6
vmla.s32 Q0, Q1, r9
vstrw.u32 Q2, [r1,#(144)]
vadd.s32 Q1, Q3, Q0
vstrw.u32 Q1, [r11,#(-352)]
vsub.s32 Q4, Q4, Q0
vstrw.u32 Q4, [r11,#(160)]
// Release input[36] from Q3
// Release input[164] from Q6
// input[40]: Already loaded as Q7
// input[168]: Already loaded as Q5
vmul.u32 Q0, Q7, r7
vadd.s32 Q2, Q5, Q7
// input[172]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 44)]
vqrdmulh.s32 Q1, Q7, r6
// input[44]: Load as Q6
vldrw.u32 Q6, [r0, #(4 * 44)]
vsub.s32 Q3, Q5, Q7
vmla.s32 Q0, Q1, r9
vstrw.u32 Q2, [r11,#(-336)]
vadd.s32 Q1, Q5, Q0
vstrw.u32 Q1, [r1,#(160)]
vsub.s32 Q3, Q3, Q0
vstrw.u32 Q3, [r11,#(176)]
// Release input[168] from Q5
// Release input[40] from Q7
// input[172]: Already loaded as Q4
// input[44]: Already loaded as Q6
vsub.s32 Q0, Q4, Q6
vmul.u32 Q1, Q0, r7
// input[48]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 48)]
vadd.s32 Q2, Q4, Q6
vqrdmulh.s32 Q0, Q0, r6
// input[176]: Load as Q5
vldrw.u32 Q5, [r14, #(4 * 48)]
vmla.s32 Q1, Q0, r9
vneg.s32 Q0, Q4
// Release input[172] from Q4
vstrw.u32 Q2, [r11,#(192)]
vsub.s32 Q4, Q1, Q6
// Release input[44] from Q6
vstrw.u32 Q4, [r11,#(-320)]
vsub.s32 Q0, Q0, Q1
vstrw.u32 Q0, [r1,#(176)]
// input[176]: Already loaded as Q5
// input[48]: Already loaded as Q3
vmul.u32 Q0, Q5, r7
vadd.s32 Q2, Q3, Q5
// input[180]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * 52)]
vqrdmulh.s32 Q1, Q5, r6
// input[52]: Load as Q7
vldrw.u32 Q7, [r0, #(4 * 52)]
vsub.s32 Q4, Q3, Q5
vmla.s32 Q0, Q1, r9
vstrw.u32 Q2, [r1,#(192)]
vadd.s32 Q1, Q3, Q0
vstrw.u32 Q1, [r11,#(-304)]
vsub.s32 Q4, Q4, Q0
vstrw.u32 Q4, [r11,#(208)]
// Release input[48] from Q3
// Release input[176] from Q5
// input[52]: Already loaded as Q7
// input[180]: Already loaded as Q6
vmul.u32 Q0, Q7, r7
vadd.s32 Q2, Q6, Q7
// input[184]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 56)]
vqrdmulh.s32 Q1, Q7, r6
// input[56]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 56)]
vsub.s32 Q3, Q6, Q7
vmla.s32 Q0, Q1, r9
vstrw.u32 Q2, [r11,#(-288)]
vadd.s32 Q1, Q6, Q0
vstrw.u32 Q1, [r1,#(208)]
vsub.s32 Q3, Q3, Q0
vstrw.u32 Q3, [r11,#(224)]
// Release input[180] from Q6
// Release input[52] from Q7
// input[184]: Already loaded as Q4
// input[56]: Already loaded as Q5
vsub.s32 Q0, Q4, Q5
vmul.u32 Q1, Q0, r7
// input[60]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 60)]
vadd.s32 Q2, Q4, Q5
vqrdmulh.s32 Q0, Q0, r6
// input[188]: Load as Q6
vldrw.u32 Q6, [r14, #(4 * 60)]
vmla.s32 Q1, Q0, r9
vneg.s32 Q0, Q4
// Release input[184] from Q4
vstrw.u32 Q2, [r11,#(240)]
vsub.s32 Q4, Q1, Q5
// Release input[56] from Q5
vstrw.u32 Q4, [r11,#(-272)]
vsub.s32 Q0, Q0, Q1
vstrw.u32 Q0, [r1,#(224)]
// input[188]: Already loaded as Q6
// input[60]: Already loaded as Q3
vmul.u32 Q0, Q6, r7
vadd.s32 Q2, Q3, Q6
vqrdmulh.s32 Q1, Q6, r6
// input[64]: Load as Q5
vldrw.u32 Q5, [r0, #(4 * 64)]
vsub.s32 Q4, Q3, Q6
vmla.s32 Q0, Q1, r9
vstrw.u32 Q2, [r1,#(240)]
vadd.s32 Q1, Q3, Q0
vstrw.u32 Q1, [r11,#(-256)]
vsub.s32 Q4, Q4, Q0
vstrw.u32 Q4, [r11,#(256)]
// Release input[60] from Q3
// Release input[188] from Q6
// input[64]: Already loaded as Q5
vmul.u32 Q0, Q5, r7
vneg.s32 Q1, Q5
// input[68]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 68)]
vqrdmulh.s32 Q2, Q5, r6
vstrw.u32 Q5, [r11,#(-240)]
vmla.s32 Q0, Q2, r9
vstrw.u32 Q0, [r1,#(256)]
vsub.s32 Q1, Q1, Q0
vstrw.u32 Q1, [r11,#(272)]
// Release input[64] from Q5
// input[68]: Already loaded as Q3
vmul.u32 Q0, Q3, r7
vneg.s32 Q1, Q3
// input[72]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 72)]
vqrdmulh.s32 Q2, Q3, r6
vstrw.u32 Q3, [r11,#(288)]
vmla.s32 Q0, Q2, r9
vstrw.u32 Q0, [r1,#(272)]
vsub.s32 Q1, Q1, Q0
vstrw.u32 Q1, [r11,#(-224)]
// Release input[68] from Q3
// input[72]: Already loaded as Q4
vstrw.u32 Q4, [r1,#(288)]
vstrw.u32 Q4, [r11,#(304)]
vstrw.u32 Q4, [r11,#(-208)]
// Release input[72] from Q4
// input[76]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 76)]
vmul.u32 Q1, Q0, r7
vneg.s32 Q2, Q0
// input[80]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 80)]
vqrdmulh.s32 Q3, Q0, r6
vstrw.u32 Q0, [r11,#(-192)]
vmla.s32 Q1, Q3, r9
vstrw.u32 Q1, [r1,#(304)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(320)]
// Release input[76] from Q0
// input[80]: Already loaded as Q4
vmul.u32 Q0, Q4, r7
vneg.s32 Q1, Q4
// input[84]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 84)]
vqrdmulh.s32 Q2, Q4, r6
vstrw.u32 Q4, [r11,#(336)]
vmla.s32 Q0, Q2, r9
vstrw.u32 Q0, [r1,#(320)]
vsub.s32 Q1, Q1, Q0
vstrw.u32 Q1, [r11,#(-176)]
// Release input[80] from Q4
// input[84]: Already loaded as Q3
vstrw.u32 Q3, [r1,#(336)]
vstrw.u32 Q3, [r11,#(352)]
vstrw.u32 Q3, [r11,#(-160)]
// Release input[84] from Q3
// input[88]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 88)]
vmul.u32 Q1, Q0, r7
vneg.s32 Q2, Q0
// input[92]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 92)]
vqrdmulh.s32 Q3, Q0, r6
vstrw.u32 Q0, [r11,#(-144)]
vmla.s32 Q1, Q3, r9
vstrw.u32 Q1, [r1,#(352)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(368)]
// Release input[88] from Q0
// input[92]: Already loaded as Q4
vmul.u32 Q0, Q4, r7
vneg.s32 Q1, Q4
// input[96]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 96)]
vqrdmulh.s32 Q2, Q4, r6
vstrw.u32 Q4, [r11,#(384)]
vmla.s32 Q0, Q2, r9
vstrw.u32 Q0, [r1,#(368)]
vsub.s32 Q1, Q1, Q0
vstrw.u32 Q1, [r11,#(-128)]
// Release input[92] from Q4
// input[96]: Already loaded as Q3
vstrw.u32 Q3, [r1,#(384)]
vstrw.u32 Q3, [r11,#(400)]
vstrw.u32 Q3, [r11,#(-112)]
// Release input[96] from Q3
// input[100]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 100)]
vmul.u32 Q1, Q0, r7
vneg.s32 Q2, Q0
// input[104]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 104)]
vqrdmulh.s32 Q3, Q0, r6
vstrw.u32 Q0, [r11,#(-96)]
vmla.s32 Q1, Q3, r9
vstrw.u32 Q1, [r1,#(400)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(416)]
// Release input[100] from Q0
// input[104]: Already loaded as Q4
vmul.u32 Q0, Q4, r7
vneg.s32 Q1, Q4
// input[108]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 108)]
vqrdmulh.s32 Q2, Q4, r6
vstrw.u32 Q4, [r11,#(432)]
vmla.s32 Q0, Q2, r9
vstrw.u32 Q0, [r1,#(416)]
vsub.s32 Q1, Q1, Q0
vstrw.u32 Q1, [r11,#(-80)]
// Release input[104] from Q4
// input[108]: Already loaded as Q3
vstrw.u32 Q3, [r1,#(432)]
vstrw.u32 Q3, [r11,#(448)]
vstrw.u32 Q3, [r11,#(-64)]
// Release input[108] from Q3
// input[112]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 112)]
vmul.u32 Q1, Q0, r7
vneg.s32 Q2, Q0
// input[116]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 116)]
vqrdmulh.s32 Q3, Q0, r6
vstrw.u32 Q0, [r11,#(-48)]
vmla.s32 Q1, Q3, r9
vstrw.u32 Q1, [r1,#(448)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(464)]
// Release input[112] from Q0
// input[116]: Already loaded as Q4
vmul.u32 Q0, Q4, r7
vneg.s32 Q1, Q4
// input[120]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 120)]
vqrdmulh.s32 Q2, Q4, r6
vstrw.u32 Q4, [r11,#(480)]
vmla.s32 Q0, Q2, r9
vstrw.u32 Q0, [r1,#(464)]
vsub.s32 Q1, Q1, Q0
vstrw.u32 Q1, [r11,#(-32)]
// Release input[116] from Q4
// input[120]: Already loaded as Q3
vstrw.u32 Q3, [r1,#(480)]
vstrw.u32 Q3, [r11,#(496)]
vstrw.u32 Q3, [r11,#(-16)]
// Release input[120] from Q3
// input[124]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 124)]
vmul.u32 Q1, Q0, r7
vneg.s32 Q2, Q0
vqrdmulh.s32 Q3, Q0, r6
vstrw.u32 Q0, [r11,#(0)]
vmla.s32 Q1, Q3, r9
vstrw.u32 Q1, [r1,#(496)]
vsub.s32 Q2, Q2, Q1
vstrw.u32 Q2, [r10,#(-496)]
// Release input[124] from Q0
//////////// END OF RADIX 3 //////////////////////////
ldrd r7, r6, [r8], #+8
ldrd r5, r4, [r8], #+8
ldrd r3, r2, [r8], #+8
// output[288]: Load as Q0
vldrw.u32 Q0, [r11, #(4 * 36)]
// output[96]: Load as Q1
vldrw.u32 Q1, [r1, #(4 * 96)]
vsub.s32 Q2, Q0, Q1
vmul.u32 Q3, Q2, r3
// output[192]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -60)]
vadd.s32 Q0, Q0, Q1
// Release output[96] from Q1
// output[0]: Load as Q1
vldrw.u32 Q1, [r1, #(4 * 0)]
vsub.s32 Q5, Q1, Q4
// output[228]: Load as Q6
vldrw.u32 Q6, [r11, #(4 * -24)]
vadd.s32 Q1, Q1, Q4
// Release output[192] from Q4
vqrdmulh.s32 Q2, Q2, r2
vsub.s32 Q4, Q1, Q0
// output[36]: Load as Q7
vldrw.u32 Q7, [r1, #(4 * 36)]
vmla.s32 Q3, Q2, r9
vstrw.u32 Q4, [r11,#(144)]
vadd.s32 Q1, Q1, Q0
// Release output[288] from Q0
vstrw.u32 Q1, [r1,#(0)]
// Release output[0] from Q1
vsub.s32 Q2, Q5, Q3
vstrw.u32 Q2, [r1,#(384)]
vadd.s32 Q5, Q5, Q3
vstrw.u32 Q5, [r11,#(-240)]
// output[36]: Already loaded as Q7
// output[228]: Already loaded as Q6
vsub.s32 Q0, Q7, Q6
vmul.u32 Q1, Q0, r3
// output[324]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * 72)]
vadd.s32 Q7, Q7, Q6
// Release output[228] from Q6
// output[132]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * -120)]
vsub.s32 Q4, Q3, Q2
// output[360]: Load as Q5
vldrw.u32 Q5, [r11, #(4 * 108)]
vadd.s32 Q3, Q3, Q2
// Release output[324] from Q2
vqrdmulh.s32 Q0, Q0, r2
vsub.s32 Q2, Q3, Q7
// output[168]: Load as Q6
vldrw.u32 Q6, [r11, #(4 * -84)]
vmla.s32 Q1, Q0, r9
vstrw.u32 Q2, [r1,#(144)]
vadd.s32 Q3, Q3, Q7
// Release output[36] from Q7
vstrw.u32 Q3, [r11,#(-480)]
// Release output[132] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r11,#(-96)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r11,#(288)]
// output[168]: Already loaded as Q6
// output[360]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vmul.u32 Q1, Q0, r3
// output[72]: Load as Q2
vldrw.u32 Q2, [r1, #(4 * 72)]
vadd.s32 Q6, Q6, Q5
// Release output[360] from Q5
// output[264]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * 12)]
vsub.s32 Q4, Q3, Q2
// output[108]: Load as Q5
vldrw.u32 Q5, [r1, #(4 * 108)]
vadd.s32 Q3, Q3, Q2
// Release output[72] from Q2
vqrdmulh.s32 Q0, Q0, r2
vsub.s32 Q2, Q3, Q6
// output[300]: Load as Q7
vldrw.u32 Q7, [r11, #(4 * 48)]
vmla.s32 Q1, Q0, r9
vstrw.u32 Q2, [r11,#(-336)]
vadd.s32 Q3, Q3, Q6
// Release output[168] from Q6
vstrw.u32 Q3, [r11,#(48)]
// Release output[264] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r11,#(432)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r1,#(288)]
// output[300]: Already loaded as Q7
// output[108]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vmul.u32 Q1, Q0, r3
// output[204]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * -48)]
vadd.s32 Q7, Q7, Q5
// Release output[108] from Q5
// output[12]: Load as Q3
vldrw.u32 Q3, [r1, #(4 * 12)]
vsub.s32 Q4, Q3, Q2
// output[240]: Load as Q5
vldrw.u32 Q5, [r11, #(4 * -12)]
vadd.s32 Q3, Q3, Q2
// Release output[204] from Q2
vqrdmulh.s32 Q0, Q0, r2
vsub.s32 Q2, Q3, Q7
// output[48]: Load as Q6
vldrw.u32 Q6, [r1, #(4 * 48)]
vmla.s32 Q1, Q0, r9
vstrw.u32 Q2, [r11,#(192)]
vadd.s32 Q3, Q3, Q7
// Release output[300] from Q7
vstrw.u32 Q3, [r1,#(48)]
// Release output[12] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r1,#(432)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r11,#(-192)]
// output[48]: Already loaded as Q6
// output[240]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vmul.u32 Q1, Q0, r3
// output[336]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * 84)]
vadd.s32 Q6, Q6, Q5
// Release output[240] from Q5
// output[144]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * -108)]
vsub.s32 Q4, Q3, Q2
// output[372]: Load as Q5
vldrw.u32 Q5, [r11, #(4 * 120)]
vadd.s32 Q3, Q3, Q2
// Release output[336] from Q2
vqrdmulh.s32 Q0, Q0, r2
vsub.s32 Q2, Q3, Q6
// output[180]: Load as Q7
vldrw.u32 Q7, [r11, #(4 * -72)]
vmla.s32 Q1, Q0, r9
vstrw.u32 Q2, [r1,#(192)]
vadd.s32 Q3, Q3, Q6
// Release output[48] from Q6
vstrw.u32 Q3, [r11,#(-432)]
// Release output[144] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r11,#(-48)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r11,#(336)]
// output[180]: Already loaded as Q7
// output[372]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vmul.u32 Q1, Q0, r3
// output[84]: Load as Q2
vldrw.u32 Q2, [r1, #(4 * 84)]
vadd.s32 Q7, Q7, Q5
// Release output[372] from Q5
// output[276]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * 24)]
vsub.s32 Q4, Q3, Q2
// output[120]: Load as Q5
vldrw.u32 Q5, [r1, #(4 * 120)]
vadd.s32 Q3, Q3, Q2
// Release output[84] from Q2
vqrdmulh.s32 Q0, Q0, r2
vsub.s32 Q2, Q3, Q7
// output[312]: Load as Q6
vldrw.u32 Q6, [r11, #(4 * 60)]
vmla.s32 Q1, Q0, r9
vstrw.u32 Q2, [r11,#(-288)]
vadd.s32 Q3, Q3, Q7
// Release output[180] from Q7
vstrw.u32 Q3, [r11,#(96)]
// Release output[276] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r11,#(480)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r1,#(336)]
// output[312]: Already loaded as Q6
// output[120]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vmul.u32 Q1, Q0, r3
// output[216]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * -36)]
vadd.s32 Q6, Q6, Q5
// Release output[120] from Q5
// output[24]: Load as Q3
vldrw.u32 Q3, [r1, #(4 * 24)]
vsub.s32 Q4, Q3, Q2
// output[252]: Load as Q5
vldrw.u32 Q5, [r11, #(4 * 0)]
vadd.s32 Q3, Q3, Q2
// Release output[216] from Q2
vqrdmulh.s32 Q0, Q0, r2
vsub.s32 Q2, Q3, Q6
// output[60]: Load as Q7
vldrw.u32 Q7, [r1, #(4 * 60)]
vmla.s32 Q1, Q0, r9
vstrw.u32 Q2, [r11,#(240)]
vadd.s32 Q3, Q3, Q6
// Release output[312] from Q6
vstrw.u32 Q3, [r1,#(96)]
// Release output[24] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r1,#(480)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r11,#(-144)]
// output[60]: Already loaded as Q7
// output[252]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vmul.u32 Q1, Q0, r3
// output[348]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * 96)]
vadd.s32 Q7, Q7, Q5
// Release output[252] from Q5
// output[156]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * -96)]
vsub.s32 Q4, Q3, Q2
// output[352]: Load as Q5
vldrw.u32 Q5, [r11, #(4 * 100)]
vadd.s32 Q3, Q3, Q2
// Release output[348] from Q2
vqrdmulh.s32 Q0, Q0, r2
vsub.s32 Q2, Q3, Q7
// output[160]: Load as Q6
vldrw.u32 Q6, [r11, #(4 * -92)]
vmla.s32 Q1, Q0, r9
vstrw.u32 Q2, [r1,#(240)]
vadd.s32 Q3, Q3, Q7
// Release output[60] from Q7
vstrw.u32 Q3, [r11,#(-384)]
// Release output[156] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r11,#(0)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r11,#(384)]
// output[160]: Already loaded as Q6
// output[352]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vmul.u32 Q1, Q0, r3
// output[64]: Load as Q2
vldrw.u32 Q2, [r1, #(4 * 64)]
vadd.s32 Q6, Q6, Q5
// Release output[352] from Q5
// output[256]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * 4)]
vsub.s32 Q4, Q3, Q2
// output[100]: Load as Q5
vldrw.u32 Q5, [r1, #(4 * 100)]
vadd.s32 Q3, Q3, Q2
// Release output[64] from Q2
vqrdmulh.s32 Q0, Q0, r2
vsub.s32 Q2, Q3, Q6
// output[292]: Load as Q7
vldrw.u32 Q7, [r11, #(4 * 40)]
vmla.s32 Q1, Q0, r9
vstrw.u32 Q2, [r11,#(-368)]
vadd.s32 Q3, Q3, Q6
// Release output[160] from Q6
vstrw.u32 Q3, [r11,#(16)]
// Release output[256] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r11,#(400)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r1,#(256)]
// output[292]: Already loaded as Q7
// output[100]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vmul.u32 Q1, Q0, r3
// output[196]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * -56)]
vadd.s32 Q7, Q7, Q5
// Release output[100] from Q5
// output[4]: Load as Q3
vldrw.u32 Q3, [r1, #(4 * 4)]
vsub.s32 Q4, Q3, Q2
// output[232]: Load as Q5
vldrw.u32 Q5, [r11, #(4 * -20)]
vadd.s32 Q3, Q3, Q2
// Release output[196] from Q2
vqrdmulh.s32 Q0, Q0, r2
vsub.s32 Q2, Q3, Q7
// output[40]: Load as Q6
vldrw.u32 Q6, [r1, #(4 * 40)]
vmla.s32 Q1, Q0, r9
vstrw.u32 Q2, [r11,#(160)]
vadd.s32 Q3, Q3, Q7
// Release output[292] from Q7
vstrw.u32 Q3, [r1,#(16)]
// Release output[4] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r1,#(400)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r11,#(-224)]
// output[40]: Already loaded as Q6
// output[232]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vmul.u32 Q1, Q0, r3
// output[328]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * 76)]
vadd.s32 Q6, Q6, Q5
// Release output[232] from Q5
// output[136]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * -116)]
vsub.s32 Q4, Q3, Q2
// output[364]: Load as Q5
vldrw.u32 Q5, [r11, #(4 * 112)]
vadd.s32 Q3, Q3, Q2
// Release output[328] from Q2
vqrdmulh.s32 Q0, Q0, r2
vsub.s32 Q2, Q3, Q6
// output[172]: Load as Q7
vldrw.u32 Q7, [r11, #(4 * -80)]
vmla.s32 Q1, Q0, r9
vstrw.u32 Q2, [r1,#(160)]
vadd.s32 Q3, Q3, Q6
// Release output[40] from Q6
vstrw.u32 Q3, [r11,#(-464)]
// Release output[136] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r11,#(-80)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r11,#(304)]
// output[172]: Already loaded as Q7
// output[364]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vmul.u32 Q1, Q0, r3
// output[76]: Load as Q2
vldrw.u32 Q2, [r1, #(4 * 76)]
vadd.s32 Q7, Q7, Q5
// Release output[364] from Q5
// output[268]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * 16)]
vsub.s32 Q4, Q3, Q2
// output[112]: Load as Q5
vldrw.u32 Q5, [r1, #(4 * 112)]
vadd.s32 Q3, Q3, Q2
// Release output[76] from Q2
vqrdmulh.s32 Q0, Q0, r2
vsub.s32 Q2, Q3, Q7
// output[304]: Load as Q6
vldrw.u32 Q6, [r11, #(4 * 52)]
vmla.s32 Q1, Q0, r9
vstrw.u32 Q2, [r11,#(-320)]
vadd.s32 Q3, Q3, Q7
// Release output[172] from Q7
vstrw.u32 Q3, [r11,#(64)]
// Release output[268] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r11,#(448)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r1,#(304)]
// output[304]: Already loaded as Q6
// output[112]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vmul.u32 Q1, Q0, r3
// output[208]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * -44)]
vadd.s32 Q6, Q6, Q5
// Release output[112] from Q5
// output[16]: Load as Q3
vldrw.u32 Q3, [r1, #(4 * 16)]
vsub.s32 Q4, Q3, Q2
// output[244]: Load as Q5
vldrw.u32 Q5, [r11, #(4 * -8)]
vadd.s32 Q3, Q3, Q2
// Release output[208] from Q2
vqrdmulh.s32 Q0, Q0, r2
vsub.s32 Q2, Q3, Q6
// output[52]: Load as Q7
vldrw.u32 Q7, [r1, #(4 * 52)]
vmla.s32 Q1, Q0, r9
vstrw.u32 Q2, [r11,#(208)]
vadd.s32 Q3, Q3, Q6
// Release output[304] from Q6
vstrw.u32 Q3, [r1,#(64)]
// Release output[16] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r1,#(448)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r11,#(-176)]
// output[52]: Already loaded as Q7
// output[244]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vmul.u32 Q1, Q0, r3
// output[340]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * 88)]
vadd.s32 Q7, Q7, Q5
// Release output[244] from Q5
// output[148]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * -104)]
vsub.s32 Q4, Q3, Q2
// output[376]: Load as Q5
vldrw.u32 Q5, [r11, #(4 * 124)]
vadd.s32 Q3, Q3, Q2
// Release output[340] from Q2
vqrdmulh.s32 Q0, Q0, r2
vsub.s32 Q2, Q3, Q7
// output[184]: Load as Q6
vldrw.u32 Q6, [r11, #(4 * -68)]
vmla.s32 Q1, Q0, r9
vstrw.u32 Q2, [r1,#(208)]
vadd.s32 Q3, Q3, Q7
// Release output[52] from Q7
vstrw.u32 Q3, [r11,#(-416)]
// Release output[148] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r11,#(-32)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r11,#(352)]
// output[184]: Already loaded as Q6
// output[376]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vmul.u32 Q1, Q0, r3
// output[88]: Load as Q2
vldrw.u32 Q2, [r1, #(4 * 88)]
vadd.s32 Q6, Q6, Q5
// Release output[376] from Q5
// output[280]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * 28)]
vsub.s32 Q4, Q3, Q2
// output[124]: Load as Q5
vldrw.u32 Q5, [r1, #(4 * 124)]
vadd.s32 Q3, Q3, Q2
// Release output[88] from Q2
vqrdmulh.s32 Q0, Q0, r2
vsub.s32 Q2, Q3, Q6
// output[316]: Load as Q7
vldrw.u32 Q7, [r11, #(4 * 64)]
vmla.s32 Q1, Q0, r9
vstrw.u32 Q2, [r11,#(-272)]
vadd.s32 Q3, Q3, Q6
// Release output[184] from Q6
vstrw.u32 Q3, [r11,#(112)]
// Release output[280] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r11,#(496)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r1,#(352)]
// output[316]: Already loaded as Q7
// output[124]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vmul.u32 Q1, Q0, r3
// output[220]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * -32)]
vadd.s32 Q7, Q7, Q5
// Release output[124] from Q5
// output[28]: Load as Q3
vldrw.u32 Q3, [r1, #(4 * 28)]
vsub.s32 Q4, Q3, Q2
// output[224]: Load as Q5
vldrw.u32 Q5, [r11, #(4 * -28)]
vadd.s32 Q3, Q3, Q2
// Release output[220] from Q2
vqrdmulh.s32 Q0, Q0, r2
vsub.s32 Q2, Q3, Q7
// output[32]: Load as Q6
vldrw.u32 Q6, [r1, #(4 * 32)]
vmla.s32 Q1, Q0, r9
vstrw.u32 Q2, [r11,#(256)]
vadd.s32 Q3, Q3, Q7
// Release output[316] from Q7
vstrw.u32 Q3, [r1,#(112)]
// Release output[28] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r1,#(496)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r11,#(-128)]
// output[32]: Already loaded as Q6
// output[224]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vmul.u32 Q1, Q0, r3
// output[320]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * 68)]
vadd.s32 Q6, Q6, Q5
// Release output[224] from Q5
// output[128]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * -124)]
vsub.s32 Q4, Q3, Q2
// output[356]: Load as Q5
vldrw.u32 Q5, [r11, #(4 * 104)]
vadd.s32 Q3, Q3, Q2
// Release output[320] from Q2
vqrdmulh.s32 Q0, Q0, r2
vsub.s32 Q2, Q3, Q6
// output[164]: Load as Q7
vldrw.u32 Q7, [r11, #(4 * -88)]
vmla.s32 Q1, Q0, r9
vstrw.u32 Q2, [r1,#(128)]
vadd.s32 Q3, Q3, Q6
// Release output[32] from Q6
vstrw.u32 Q3, [r11,#(-496)]
// Release output[128] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r11,#(-112)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r11,#(272)]
// output[164]: Already loaded as Q7
// output[356]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vmul.u32 Q1, Q0, r3
// output[68]: Load as Q2
vldrw.u32 Q2, [r1, #(4 * 68)]
vadd.s32 Q7, Q7, Q5
// Release output[356] from Q5
// output[260]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * 8)]
vsub.s32 Q4, Q3, Q2
// output[104]: Load as Q5
vldrw.u32 Q5, [r1, #(4 * 104)]
vadd.s32 Q3, Q3, Q2
// Release output[68] from Q2
vqrdmulh.s32 Q0, Q0, r2
vsub.s32 Q2, Q3, Q7
// output[296]: Load as Q6
vldrw.u32 Q6, [r11, #(4 * 44)]
vmla.s32 Q1, Q0, r9
vstrw.u32 Q2, [r11,#(-352)]
vadd.s32 Q3, Q3, Q7
// Release output[164] from Q7
vstrw.u32 Q3, [r11,#(32)]
// Release output[260] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r11,#(416)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r1,#(272)]
// output[296]: Already loaded as Q6
// output[104]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vmul.u32 Q1, Q0, r3
// output[200]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * -52)]
vadd.s32 Q6, Q6, Q5
// Release output[104] from Q5
// output[8]: Load as Q3
vldrw.u32 Q3, [r1, #(4 * 8)]
vsub.s32 Q4, Q3, Q2
// output[236]: Load as Q5
vldrw.u32 Q5, [r11, #(4 * -16)]
vadd.s32 Q3, Q3, Q2
// Release output[200] from Q2
vqrdmulh.s32 Q0, Q0, r2
vsub.s32 Q2, Q3, Q6
// output[44]: Load as Q7
vldrw.u32 Q7, [r1, #(4 * 44)]
vmla.s32 Q1, Q0, r9
vstrw.u32 Q2, [r11,#(176)]
vadd.s32 Q3, Q3, Q6
// Release output[296] from Q6
vstrw.u32 Q3, [r1,#(32)]
// Release output[8] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r1,#(416)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r11,#(-208)]
// output[44]: Already loaded as Q7
// output[236]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vmul.u32 Q1, Q0, r3
// output[332]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * 80)]
vadd.s32 Q7, Q7, Q5
// Release output[236] from Q5
// output[140]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * -112)]
vsub.s32 Q4, Q3, Q2
// output[368]: Load as Q5
vldrw.u32 Q5, [r11, #(4 * 116)]
vadd.s32 Q3, Q3, Q2
// Release output[332] from Q2
vqrdmulh.s32 Q0, Q0, r2
vsub.s32 Q2, Q3, Q7
// output[176]: Load as Q6
vldrw.u32 Q6, [r11, #(4 * -76)]
vmla.s32 Q1, Q0, r9
vstrw.u32 Q2, [r1,#(176)]
vadd.s32 Q3, Q3, Q7
// Release output[44] from Q7
vstrw.u32 Q3, [r11,#(-448)]
// Release output[140] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r11,#(-64)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r11,#(320)]
// output[176]: Already loaded as Q6
// output[368]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vmul.u32 Q1, Q0, r3
// output[80]: Load as Q2
vldrw.u32 Q2, [r1, #(4 * 80)]
vadd.s32 Q6, Q6, Q5
// Release output[368] from Q5
// output[272]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * 20)]
vsub.s32 Q4, Q3, Q2
// output[116]: Load as Q5
vldrw.u32 Q5, [r1, #(4 * 116)]
vadd.s32 Q3, Q3, Q2
// Release output[80] from Q2
vqrdmulh.s32 Q0, Q0, r2
vsub.s32 Q2, Q3, Q6
// output[308]: Load as Q7
vldrw.u32 Q7, [r11, #(4 * 56)]
vmla.s32 Q1, Q0, r9
vstrw.u32 Q2, [r11,#(-304)]
vadd.s32 Q3, Q3, Q6
// Release output[176] from Q6
vstrw.u32 Q3, [r11,#(80)]
// Release output[272] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r11,#(464)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r1,#(320)]
// output[308]: Already loaded as Q7
// output[116]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vmul.u32 Q1, Q0, r3
// output[212]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * -40)]
vadd.s32 Q7, Q7, Q5
// Release output[116] from Q5
// output[20]: Load as Q3
vldrw.u32 Q3, [r1, #(4 * 20)]
vsub.s32 Q4, Q3, Q2
// output[248]: Load as Q5
vldrw.u32 Q5, [r11, #(4 * -4)]
vadd.s32 Q3, Q3, Q2
// Release output[212] from Q2
vqrdmulh.s32 Q0, Q0, r2
vsub.s32 Q2, Q3, Q7
// output[56]: Load as Q6
vldrw.u32 Q6, [r1, #(4 * 56)]
vmla.s32 Q1, Q0, r9
vstrw.u32 Q2, [r11,#(224)]
vadd.s32 Q3, Q3, Q7
// Release output[308] from Q7
vstrw.u32 Q3, [r1,#(80)]
// Release output[20] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r1,#(464)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r11,#(-160)]
// output[56]: Already loaded as Q6
// output[248]: Already loaded as Q5
vsub.s32 Q0, Q6, Q5
vmul.u32 Q1, Q0, r3
// output[344]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * 92)]
vadd.s32 Q6, Q6, Q5
// Release output[248] from Q5
// output[152]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * -100)]
vsub.s32 Q4, Q3, Q2
// output[380]: Load as Q5
vldrw.u32 Q5, [r10, #(4 * -124)]
vadd.s32 Q3, Q3, Q2
// Release output[344] from Q2
vqrdmulh.s32 Q0, Q0, r2
vsub.s32 Q2, Q3, Q6
// output[188]: Load as Q7
vldrw.u32 Q7, [r11, #(4 * -64)]
vmla.s32 Q1, Q0, r9
vstrw.u32 Q2, [r1,#(224)]
vadd.s32 Q3, Q3, Q6
// Release output[56] from Q6
vstrw.u32 Q3, [r11,#(-400)]
// Release output[152] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r11,#(-16)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r11,#(368)]
// output[188]: Already loaded as Q7
// output[380]: Already loaded as Q5
vsub.s32 Q0, Q7, Q5
vmul.u32 Q1, Q0, r3
// output[92]: Load as Q2
vldrw.u32 Q2, [r1, #(4 * 92)]
vadd.s32 Q7, Q7, Q5
// Release output[380] from Q5
// output[284]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * 32)]
vsub.s32 Q4, Q3, Q2
// output[24]: Load as Q5
vldrw.u32 Q5, [r1, #(4 * 24)]
vadd.s32 Q3, Q3, Q2
// Release output[92] from Q2
vqrdmulh.s32 Q0, Q0, r2
vsub.s32 Q2, Q3, Q7
// output[264]: Load as Q6
vldrw.u32 Q6, [r11, #(4 * 12)]
vmla.s32 Q1, Q0, r9
vstrw.u32 Q2, [r11,#(-256)]
vadd.s32 Q3, Q3, Q7
// Release output[188] from Q7
vstrw.u32 Q3, [r11,#(128)]
// Release output[284] from Q3
vsub.s32 Q0, Q4, Q1
vstrw.u32 Q0, [r10,#(-496)]
vadd.s32 Q4, Q4, Q1
vstrw.u32 Q4, [r1,#(368)]
ldrd r7, r6, [r8], #+8
ldrd r5, r4, [r8], #+8
ldrd r3, r2, [r8], #+8
// output[24]: Already loaded as Q5
vmul.u32 Q0, Q5, r7
// output[144]: Load as Q1
vldrw.u32 Q1, [r11, #(4 * -108)]
vqrdmulh.s32 Q5, Q5, r6
// output[264]: Already loaded as Q6
vmla.s32 Q0, Q5, r9
vmul.u32 Q2, Q1, r7
vsub.s32 Q5, Q6, Q0
vqrdmulh.s32 Q1, Q1, r6
vadd.s32 Q6, Q6, Q0
vmla.s32 Q2, Q1, r9
// output[0]: Load as Q0
vldrw.u32 Q0, [r1, #(4 * 0)]
vmul.u32 Q3, Q5, r3
vsub.s32 Q1, Q0, Q2
vqrdmulh.s32 Q5, Q5, r2
vadd.s32 Q0, Q0, Q2
vmla.s32 Q3, Q5, r9
// output[156]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * -96)]
vmul.u32 Q4, Q6, r5
vsub.s32 Q5, Q1, Q3
vqrdmulh.s32 Q6, Q6, r4
vadd.s32 Q1, Q1, Q3
vstrw.u32 Q5, [r1,#(96)]
// Release output[24] from Q5
vmla.s32 Q4, Q6, r9
vstrw.u32 Q1, [r11,#(-432)]
// Release output[144] from Q1
vsub.s32 Q6, Q0, Q4
vstrw.u32 Q6, [r11,#(48)]
// Release output[264] from Q6
vadd.s32 Q0, Q0, Q4
// output[156]: Already loaded as Q2
vmul.u32 Q1, Q2, r7
// output[276]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * 24)]
vqrdmulh.s32 Q2, Q2, r6
// output[12]: Load as Q4
vldrw.u32 Q4, [r1, #(4 * 12)]
vmla.s32 Q1, Q2, r9
vstrw.u32 Q0, [r1,#(0)]
// Release output[0] from Q0
vmul.u32 Q0, Q3, r7
vsub.s32 Q2, Q4, Q1
vqrdmulh.s32 Q3, Q3, r6
vadd.s32 Q4, Q4, Q1
vmla.s32 Q0, Q3, r9
// output[132]: Load as Q1
vldrw.u32 Q1, [r11, #(4 * -120)]
vmul.u32 Q5, Q2, r3
vsub.s32 Q3, Q1, Q0
vqrdmulh.s32 Q2, Q2, r2
vadd.s32 Q1, Q1, Q0
vmla.s32 Q5, Q2, r9
// output[280]: Load as Q0
vldrw.u32 Q0, [r11, #(4 * 28)]
vmul.u32 Q6, Q4, r5
vsub.s32 Q2, Q3, Q5
vqrdmulh.s32 Q4, Q4, r4
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r11,#(-384)]
// Release output[156] from Q2
vmla.s32 Q6, Q4, r9
vstrw.u32 Q3, [r11,#(96)]
// Release output[276] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r1,#(48)]
// Release output[12] from Q4
vadd.s32 Q1, Q1, Q6
// output[280]: Already loaded as Q0
vmul.u32 Q2, Q0, r7
// output[16]: Load as Q3
vldrw.u32 Q3, [r1, #(4 * 16)]
vqrdmulh.s32 Q0, Q0, r6
// output[136]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -116)]
vmla.s32 Q2, Q0, r9
vstrw.u32 Q1, [r11,#(-480)]
// Release output[132] from Q1
vmul.u32 Q1, Q3, r7
vsub.s32 Q0, Q4, Q2
vqrdmulh.s32 Q3, Q3, r6
vadd.s32 Q4, Q4, Q2
vmla.s32 Q1, Q3, r9
// output[256]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * 4)]
vmul.u32 Q5, Q0, r3
vsub.s32 Q3, Q2, Q1
vqrdmulh.s32 Q0, Q0, r2
vadd.s32 Q2, Q2, Q1
vmla.s32 Q5, Q0, r9
// output[28]: Load as Q1
vldrw.u32 Q1, [r1, #(4 * 28)]
vmul.u32 Q6, Q4, r5
vsub.s32 Q0, Q3, Q5
vqrdmulh.s32 Q4, Q4, r4
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r11,#(112)]
// Release output[280] from Q0
vmla.s32 Q6, Q4, r9
vstrw.u32 Q3, [r1,#(64)]
// Release output[16] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r11,#(-464)]
// Release output[136] from Q4
vadd.s32 Q2, Q2, Q6
// output[28]: Already loaded as Q1
vmul.u32 Q0, Q1, r7
// output[148]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * -104)]
vqrdmulh.s32 Q1, Q1, r6
// output[268]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * 16)]
vmla.s32 Q0, Q1, r9
vstrw.u32 Q2, [r11,#(16)]
// Release output[256] from Q2
vmul.u32 Q2, Q3, r7
vsub.s32 Q1, Q4, Q0
vqrdmulh.s32 Q3, Q3, r6
vadd.s32 Q4, Q4, Q0
vmla.s32 Q2, Q3, r9
// output[4]: Load as Q0
vldrw.u32 Q0, [r1, #(4 * 4)]
vmul.u32 Q5, Q1, r3
vsub.s32 Q3, Q0, Q2
vqrdmulh.s32 Q1, Q1, r2
vadd.s32 Q0, Q0, Q2
vmla.s32 Q5, Q1, r9
// output[152]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * -100)]
vmul.u32 Q6, Q4, r5
vsub.s32 Q1, Q3, Q5
vqrdmulh.s32 Q4, Q4, r4
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r1,#(112)]
// Release output[28] from Q1
vmla.s32 Q6, Q4, r9
vstrw.u32 Q3, [r11,#(-416)]
// Release output[148] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r11,#(64)]
// Release output[268] from Q4
vadd.s32 Q0, Q0, Q6
// output[152]: Already loaded as Q2
vmul.u32 Q1, Q2, r7
// output[272]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * 20)]
vqrdmulh.s32 Q2, Q2, r6
// output[8]: Load as Q4
vldrw.u32 Q4, [r1, #(4 * 8)]
vmla.s32 Q1, Q2, r9
vstrw.u32 Q0, [r1,#(16)]
// Release output[4] from Q0
vmul.u32 Q0, Q3, r7
vsub.s32 Q2, Q4, Q1
vqrdmulh.s32 Q3, Q3, r6
vadd.s32 Q4, Q4, Q1
vmla.s32 Q0, Q3, r9
// output[128]: Load as Q1
vldrw.u32 Q1, [r11, #(4 * -124)]
vmul.u32 Q5, Q2, r3
vsub.s32 Q3, Q1, Q0
vqrdmulh.s32 Q2, Q2, r2
vadd.s32 Q1, Q1, Q0
vmla.s32 Q5, Q2, r9
// output[284]: Load as Q0
vldrw.u32 Q0, [r11, #(4 * 32)]
vmul.u32 Q6, Q4, r5
vsub.s32 Q2, Q3, Q5
vqrdmulh.s32 Q4, Q4, r4
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r11,#(-400)]
// Release output[152] from Q2
vmla.s32 Q6, Q4, r9
vstrw.u32 Q3, [r11,#(80)]
// Release output[272] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r1,#(32)]
// Release output[8] from Q4
vadd.s32 Q1, Q1, Q6
// output[284]: Already loaded as Q0
vmul.u32 Q2, Q0, r7
// output[20]: Load as Q3
vldrw.u32 Q3, [r1, #(4 * 20)]
vqrdmulh.s32 Q0, Q0, r6
// output[140]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -112)]
vmla.s32 Q2, Q0, r9
vstrw.u32 Q1, [r11,#(-496)]
// Release output[128] from Q1
vmul.u32 Q1, Q3, r7
vsub.s32 Q0, Q4, Q2
vqrdmulh.s32 Q3, Q3, r6
vadd.s32 Q4, Q4, Q2
vmla.s32 Q1, Q3, r9
// output[260]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * 8)]
vmul.u32 Q5, Q0, r3
vsub.s32 Q3, Q2, Q1
vqrdmulh.s32 Q0, Q0, r2
vadd.s32 Q2, Q2, Q1
vmla.s32 Q5, Q0, r9
// output[312]: Load as Q1
vldrw.u32 Q1, [r11, #(4 * 60)]
vmul.u32 Q6, Q4, r5
vsub.s32 Q0, Q3, Q5
vqrdmulh.s32 Q4, Q4, r4
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r11,#(128)]
// Release output[284] from Q0
vmla.s32 Q6, Q4, r9
vstrw.u32 Q3, [r1,#(80)]
// Release output[20] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r11,#(-448)]
// Release output[140] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r7, r6, [r8], #+8
ldrd r5, r4, [r8], #+8
ldrd r3, r2, [r8], #+8
// output[312]: Already loaded as Q1
vmul.u32 Q0, Q1, r7
// output[48]: Load as Q3
vldrw.u32 Q3, [r1, #(4 * 48)]
vqrdmulh.s32 Q1, Q1, r6
// output[168]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -84)]
vmla.s32 Q0, Q1, r9
vstrw.u32 Q2, [r11,#(32)]
// Release output[260] from Q2
vmul.u32 Q2, Q3, r7
vsub.s32 Q1, Q4, Q0
vqrdmulh.s32 Q3, Q3, r6
vadd.s32 Q4, Q4, Q0
vmla.s32 Q2, Q3, r9
// output[288]: Load as Q0
vldrw.u32 Q0, [r11, #(4 * 36)]
vmul.u32 Q5, Q1, r3
vsub.s32 Q3, Q0, Q2
vqrdmulh.s32 Q1, Q1, r2
vadd.s32 Q0, Q0, Q2
vmla.s32 Q5, Q1, r9
// output[60]: Load as Q2
vldrw.u32 Q2, [r1, #(4 * 60)]
vmul.u32 Q6, Q4, r5
vsub.s32 Q1, Q3, Q5
vqrdmulh.s32 Q4, Q4, r4
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r11,#(240)]
// Release output[312] from Q1
vmla.s32 Q6, Q4, r9
vstrw.u32 Q3, [r1,#(192)]
// Release output[48] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r11,#(-336)]
// Release output[168] from Q4
vadd.s32 Q0, Q0, Q6
// output[60]: Already loaded as Q2
vmul.u32 Q1, Q2, r7
// output[180]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * -72)]
vqrdmulh.s32 Q2, Q2, r6
// output[300]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * 48)]
vmla.s32 Q1, Q2, r9
vstrw.u32 Q0, [r11,#(144)]
// Release output[288] from Q0
vmul.u32 Q0, Q3, r7
vsub.s32 Q2, Q4, Q1
vqrdmulh.s32 Q3, Q3, r6
vadd.s32 Q4, Q4, Q1
vmla.s32 Q0, Q3, r9
// output[36]: Load as Q1
vldrw.u32 Q1, [r1, #(4 * 36)]
vmul.u32 Q5, Q2, r3
vsub.s32 Q3, Q1, Q0
vqrdmulh.s32 Q2, Q2, r2
vadd.s32 Q1, Q1, Q0
vmla.s32 Q5, Q2, r9
// output[184]: Load as Q0
vldrw.u32 Q0, [r11, #(4 * -68)]
vmul.u32 Q6, Q4, r5
vsub.s32 Q2, Q3, Q5
vqrdmulh.s32 Q4, Q4, r4
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r1,#(240)]
// Release output[60] from Q2
vmla.s32 Q6, Q4, r9
vstrw.u32 Q3, [r11,#(-288)]
// Release output[180] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r11,#(192)]
// Release output[300] from Q4
vadd.s32 Q1, Q1, Q6
// output[184]: Already loaded as Q0
vmul.u32 Q2, Q0, r7
// output[304]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * 52)]
vqrdmulh.s32 Q0, Q0, r6
// output[40]: Load as Q4
vldrw.u32 Q4, [r1, #(4 * 40)]
vmla.s32 Q2, Q0, r9
vstrw.u32 Q1, [r1,#(144)]
// Release output[36] from Q1
vmul.u32 Q1, Q3, r7
vsub.s32 Q0, Q4, Q2
vqrdmulh.s32 Q3, Q3, r6
vadd.s32 Q4, Q4, Q2
vmla.s32 Q1, Q3, r9
// output[160]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * -92)]
vmul.u32 Q5, Q0, r3
vsub.s32 Q3, Q2, Q1
vqrdmulh.s32 Q0, Q0, r2
vadd.s32 Q2, Q2, Q1
vmla.s32 Q5, Q0, r9
// output[316]: Load as Q1
vldrw.u32 Q1, [r11, #(4 * 64)]
vmul.u32 Q6, Q4, r5
vsub.s32 Q0, Q3, Q5
vqrdmulh.s32 Q4, Q4, r4
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r11,#(-272)]
// Release output[184] from Q0
vmla.s32 Q6, Q4, r9
vstrw.u32 Q3, [r11,#(208)]
// Release output[304] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r1,#(160)]
// Release output[40] from Q4
vadd.s32 Q2, Q2, Q6
// output[316]: Already loaded as Q1
vmul.u32 Q0, Q1, r7
// output[52]: Load as Q3
vldrw.u32 Q3, [r1, #(4 * 52)]
vqrdmulh.s32 Q1, Q1, r6
// output[172]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -80)]
vmla.s32 Q0, Q1, r9
vstrw.u32 Q2, [r11,#(-368)]
// Release output[160] from Q2
vmul.u32 Q2, Q3, r7
vsub.s32 Q1, Q4, Q0
vqrdmulh.s32 Q3, Q3, r6
vadd.s32 Q4, Q4, Q0
vmla.s32 Q2, Q3, r9
// output[292]: Load as Q0
vldrw.u32 Q0, [r11, #(4 * 40)]
vmul.u32 Q5, Q1, r3
vsub.s32 Q3, Q0, Q2
vqrdmulh.s32 Q1, Q1, r2
vadd.s32 Q0, Q0, Q2
vmla.s32 Q5, Q1, r9
// output[56]: Load as Q2
vldrw.u32 Q2, [r1, #(4 * 56)]
vmul.u32 Q6, Q4, r5
vsub.s32 Q1, Q3, Q5
vqrdmulh.s32 Q4, Q4, r4
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r11,#(256)]
// Release output[316] from Q1
vmla.s32 Q6, Q4, r9
vstrw.u32 Q3, [r1,#(208)]
// Release output[52] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r11,#(-320)]
// Release output[172] from Q4
vadd.s32 Q0, Q0, Q6
// output[56]: Already loaded as Q2
vmul.u32 Q1, Q2, r7
// output[176]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * -76)]
vqrdmulh.s32 Q2, Q2, r6
// output[296]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * 44)]
vmla.s32 Q1, Q2, r9
vstrw.u32 Q0, [r11,#(160)]
// Release output[292] from Q0
vmul.u32 Q0, Q3, r7
vsub.s32 Q2, Q4, Q1
vqrdmulh.s32 Q3, Q3, r6
vadd.s32 Q4, Q4, Q1
vmla.s32 Q0, Q3, r9
// output[32]: Load as Q1
vldrw.u32 Q1, [r1, #(4 * 32)]
vmul.u32 Q5, Q2, r3
vsub.s32 Q3, Q1, Q0
vqrdmulh.s32 Q2, Q2, r2
vadd.s32 Q1, Q1, Q0
vmla.s32 Q5, Q2, r9
// output[188]: Load as Q0
vldrw.u32 Q0, [r11, #(4 * -64)]
vmul.u32 Q6, Q4, r5
vsub.s32 Q2, Q3, Q5
vqrdmulh.s32 Q4, Q4, r4
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r1,#(224)]
// Release output[56] from Q2
vmla.s32 Q6, Q4, r9
vstrw.u32 Q3, [r11,#(-304)]
// Release output[176] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r11,#(176)]
// Release output[296] from Q4
vadd.s32 Q1, Q1, Q6
// output[188]: Already loaded as Q0
vmul.u32 Q2, Q0, r7
// output[308]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * 56)]
vqrdmulh.s32 Q0, Q0, r6
// output[44]: Load as Q4
vldrw.u32 Q4, [r1, #(4 * 44)]
vmla.s32 Q2, Q0, r9
vstrw.u32 Q1, [r1,#(128)]
// Release output[32] from Q1
vmul.u32 Q1, Q3, r7
vsub.s32 Q0, Q4, Q2
vqrdmulh.s32 Q3, Q3, r6
vadd.s32 Q4, Q4, Q2
vmla.s32 Q1, Q3, r9
// output[164]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * -88)]
vmul.u32 Q5, Q0, r3
vsub.s32 Q3, Q2, Q1
vqrdmulh.s32 Q0, Q0, r2
vadd.s32 Q2, Q2, Q1
vmla.s32 Q5, Q0, r9
// output[216]: Load as Q1
vldrw.u32 Q1, [r11, #(4 * -36)]
vmul.u32 Q6, Q4, r5
vsub.s32 Q0, Q3, Q5
vqrdmulh.s32 Q4, Q4, r4
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r11,#(-256)]
// Release output[188] from Q0
vmla.s32 Q6, Q4, r9
vstrw.u32 Q3, [r11,#(224)]
// Release output[308] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r1,#(176)]
// Release output[44] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r7, r6, [r8], #+8
ldrd r5, r4, [r8], #+8
ldrd r3, r2, [r8], #+8
// output[216]: Already loaded as Q1
vmul.u32 Q0, Q1, r7
// output[336]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * 84)]
vqrdmulh.s32 Q1, Q1, r6
// output[72]: Load as Q4
vldrw.u32 Q4, [r1, #(4 * 72)]
vmla.s32 Q0, Q1, r9
vstrw.u32 Q2, [r11,#(-352)]
// Release output[164] from Q2
vmul.u32 Q2, Q3, r7
vsub.s32 Q1, Q4, Q0
vqrdmulh.s32 Q3, Q3, r6
vadd.s32 Q4, Q4, Q0
vmla.s32 Q2, Q3, r9
// output[192]: Load as Q0
vldrw.u32 Q0, [r11, #(4 * -60)]
vmul.u32 Q5, Q1, r3
vsub.s32 Q3, Q0, Q2
vqrdmulh.s32 Q1, Q1, r2
vadd.s32 Q0, Q0, Q2
vmla.s32 Q5, Q1, r9
// output[348]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * 96)]
vmul.u32 Q6, Q4, r5
vsub.s32 Q1, Q3, Q5
vqrdmulh.s32 Q4, Q4, r4
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r11,#(-144)]
// Release output[216] from Q1
vmla.s32 Q6, Q4, r9
vstrw.u32 Q3, [r11,#(336)]
// Release output[336] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r1,#(288)]
// Release output[72] from Q4
vadd.s32 Q0, Q0, Q6
// output[348]: Already loaded as Q2
vmul.u32 Q1, Q2, r7
// output[84]: Load as Q3
vldrw.u32 Q3, [r1, #(4 * 84)]
vqrdmulh.s32 Q2, Q2, r6
// output[204]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -48)]
vmla.s32 Q1, Q2, r9
vstrw.u32 Q0, [r11,#(-240)]
// Release output[192] from Q0
vmul.u32 Q0, Q3, r7
vsub.s32 Q2, Q4, Q1
vqrdmulh.s32 Q3, Q3, r6
vadd.s32 Q4, Q4, Q1
vmla.s32 Q0, Q3, r9
// output[324]: Load as Q1
vldrw.u32 Q1, [r11, #(4 * 72)]
vmul.u32 Q5, Q2, r3
vsub.s32 Q3, Q1, Q0
vqrdmulh.s32 Q2, Q2, r2
vadd.s32 Q1, Q1, Q0
vmla.s32 Q5, Q2, r9
// output[88]: Load as Q0
vldrw.u32 Q0, [r1, #(4 * 88)]
vmul.u32 Q6, Q4, r5
vsub.s32 Q2, Q3, Q5
vqrdmulh.s32 Q4, Q4, r4
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r11,#(384)]
// Release output[348] from Q2
vmla.s32 Q6, Q4, r9
vstrw.u32 Q3, [r1,#(336)]
// Release output[84] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r11,#(-192)]
// Release output[204] from Q4
vadd.s32 Q1, Q1, Q6
// output[88]: Already loaded as Q0
vmul.u32 Q2, Q0, r7
// output[208]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * -44)]
vqrdmulh.s32 Q0, Q0, r6
// output[328]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * 76)]
vmla.s32 Q2, Q0, r9
vstrw.u32 Q1, [r11,#(288)]
// Release output[324] from Q1
vmul.u32 Q1, Q3, r7
vsub.s32 Q0, Q4, Q2
vqrdmulh.s32 Q3, Q3, r6
vadd.s32 Q4, Q4, Q2
vmla.s32 Q1, Q3, r9
// output[64]: Load as Q2
vldrw.u32 Q2, [r1, #(4 * 64)]
vmul.u32 Q5, Q0, r3
vsub.s32 Q3, Q2, Q1
vqrdmulh.s32 Q0, Q0, r2
vadd.s32 Q2, Q2, Q1
vmla.s32 Q5, Q0, r9
// output[220]: Load as Q1
vldrw.u32 Q1, [r11, #(4 * -32)]
vmul.u32 Q6, Q4, r5
vsub.s32 Q0, Q3, Q5
vqrdmulh.s32 Q4, Q4, r4
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r1,#(352)]
// Release output[88] from Q0
vmla.s32 Q6, Q4, r9
vstrw.u32 Q3, [r11,#(-176)]
// Release output[208] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r11,#(304)]
// Release output[328] from Q4
vadd.s32 Q2, Q2, Q6
// output[220]: Already loaded as Q1
vmul.u32 Q0, Q1, r7
// output[340]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * 88)]
vqrdmulh.s32 Q1, Q1, r6
// output[76]: Load as Q4
vldrw.u32 Q4, [r1, #(4 * 76)]
vmla.s32 Q0, Q1, r9
vstrw.u32 Q2, [r1,#(256)]
// Release output[64] from Q2
vmul.u32 Q2, Q3, r7
vsub.s32 Q1, Q4, Q0
vqrdmulh.s32 Q3, Q3, r6
vadd.s32 Q4, Q4, Q0
vmla.s32 Q2, Q3, r9
// output[196]: Load as Q0
vldrw.u32 Q0, [r11, #(4 * -56)]
vmul.u32 Q5, Q1, r3
vsub.s32 Q3, Q0, Q2
vqrdmulh.s32 Q1, Q1, r2
vadd.s32 Q0, Q0, Q2
vmla.s32 Q5, Q1, r9
// output[344]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * 92)]
vmul.u32 Q6, Q4, r5
vsub.s32 Q1, Q3, Q5
vqrdmulh.s32 Q4, Q4, r4
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r11,#(-128)]
// Release output[220] from Q1
vmla.s32 Q6, Q4, r9
vstrw.u32 Q3, [r11,#(352)]
// Release output[340] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r1,#(304)]
// Release output[76] from Q4
vadd.s32 Q0, Q0, Q6
// output[344]: Already loaded as Q2
vmul.u32 Q1, Q2, r7
// output[80]: Load as Q3
vldrw.u32 Q3, [r1, #(4 * 80)]
vqrdmulh.s32 Q2, Q2, r6
// output[200]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -52)]
vmla.s32 Q1, Q2, r9
vstrw.u32 Q0, [r11,#(-224)]
// Release output[196] from Q0
vmul.u32 Q0, Q3, r7
vsub.s32 Q2, Q4, Q1
vqrdmulh.s32 Q3, Q3, r6
vadd.s32 Q4, Q4, Q1
vmla.s32 Q0, Q3, r9
// output[320]: Load as Q1
vldrw.u32 Q1, [r11, #(4 * 68)]
vmul.u32 Q5, Q2, r3
vsub.s32 Q3, Q1, Q0
vqrdmulh.s32 Q2, Q2, r2
vadd.s32 Q1, Q1, Q0
vmla.s32 Q5, Q2, r9
// output[92]: Load as Q0
vldrw.u32 Q0, [r1, #(4 * 92)]
vmul.u32 Q6, Q4, r5
vsub.s32 Q2, Q3, Q5
vqrdmulh.s32 Q4, Q4, r4
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r11,#(368)]
// Release output[344] from Q2
vmla.s32 Q6, Q4, r9
vstrw.u32 Q3, [r1,#(320)]
// Release output[80] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r11,#(-208)]
// Release output[200] from Q4
vadd.s32 Q1, Q1, Q6
// output[92]: Already loaded as Q0
vmul.u32 Q2, Q0, r7
// output[212]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * -40)]
vqrdmulh.s32 Q0, Q0, r6
// output[332]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * 80)]
vmla.s32 Q2, Q0, r9
vstrw.u32 Q1, [r11,#(272)]
// Release output[320] from Q1
vmul.u32 Q1, Q3, r7
vsub.s32 Q0, Q4, Q2
vqrdmulh.s32 Q3, Q3, r6
vadd.s32 Q4, Q4, Q2
vmla.s32 Q1, Q3, r9
// output[68]: Load as Q2
vldrw.u32 Q2, [r1, #(4 * 68)]
vmul.u32 Q5, Q0, r3
vsub.s32 Q3, Q2, Q1
vqrdmulh.s32 Q0, Q0, r2
vadd.s32 Q2, Q2, Q1
vmla.s32 Q5, Q0, r9
// output[120]: Load as Q1
vldrw.u32 Q1, [r1, #(4 * 120)]
vmul.u32 Q6, Q4, r5
vsub.s32 Q0, Q3, Q5
vqrdmulh.s32 Q4, Q4, r4
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r1,#(368)]
// Release output[92] from Q0
vmla.s32 Q6, Q4, r9
vstrw.u32 Q3, [r11,#(-160)]
// Release output[212] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r11,#(320)]
// Release output[332] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r7, r6, [r8], #+8
ldrd r5, r4, [r8], #+8
ldrd r3, r2, [r8], #+8
// output[120]: Already loaded as Q1
vmul.u32 Q0, Q1, r7
// output[240]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * -12)]
vqrdmulh.s32 Q1, Q1, r6
// output[360]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * 108)]
vmla.s32 Q0, Q1, r9
vstrw.u32 Q2, [r1,#(272)]
// Release output[68] from Q2
vmul.u32 Q2, Q3, r7
vsub.s32 Q1, Q4, Q0
vqrdmulh.s32 Q3, Q3, r6
vadd.s32 Q4, Q4, Q0
vmla.s32 Q2, Q3, r9
// output[96]: Load as Q0
vldrw.u32 Q0, [r1, #(4 * 96)]
vmul.u32 Q5, Q1, r3
vsub.s32 Q3, Q0, Q2
vqrdmulh.s32 Q1, Q1, r2
vadd.s32 Q0, Q0, Q2
vmla.s32 Q5, Q1, r9
// output[252]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * 0)]
vmul.u32 Q6, Q4, r5
vsub.s32 Q1, Q3, Q5
vqrdmulh.s32 Q4, Q4, r4
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r1,#(480)]
// Release output[120] from Q1
vmla.s32 Q6, Q4, r9
vstrw.u32 Q3, [r11,#(-48)]
// Release output[240] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r11,#(432)]
// Release output[360] from Q4
vadd.s32 Q0, Q0, Q6
// output[252]: Already loaded as Q2
vmul.u32 Q1, Q2, r7
// output[372]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * 120)]
vqrdmulh.s32 Q2, Q2, r6
// output[108]: Load as Q4
vldrw.u32 Q4, [r1, #(4 * 108)]
vmla.s32 Q1, Q2, r9
vstrw.u32 Q0, [r1,#(384)]
// Release output[96] from Q0
vmul.u32 Q0, Q3, r7
vsub.s32 Q2, Q4, Q1
vqrdmulh.s32 Q3, Q3, r6
vadd.s32 Q4, Q4, Q1
vmla.s32 Q0, Q3, r9
// output[228]: Load as Q1
vldrw.u32 Q1, [r11, #(4 * -24)]
vmul.u32 Q5, Q2, r3
vsub.s32 Q3, Q1, Q0
vqrdmulh.s32 Q2, Q2, r2
vadd.s32 Q1, Q1, Q0
vmla.s32 Q5, Q2, r9
// output[376]: Load as Q0
vldrw.u32 Q0, [r11, #(4 * 124)]
vmul.u32 Q6, Q4, r5
vsub.s32 Q2, Q3, Q5
vqrdmulh.s32 Q4, Q4, r4
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r11,#(0)]
// Release output[252] from Q2
vmla.s32 Q6, Q4, r9
vstrw.u32 Q3, [r11,#(480)]
// Release output[372] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r1,#(432)]
// Release output[108] from Q4
vadd.s32 Q1, Q1, Q6
// output[376]: Already loaded as Q0
vmul.u32 Q2, Q0, r7
// output[112]: Load as Q3
vldrw.u32 Q3, [r1, #(4 * 112)]
vqrdmulh.s32 Q0, Q0, r6
// output[232]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -20)]
vmla.s32 Q2, Q0, r9
vstrw.u32 Q1, [r11,#(-96)]
// Release output[228] from Q1
vmul.u32 Q1, Q3, r7
vsub.s32 Q0, Q4, Q2
vqrdmulh.s32 Q3, Q3, r6
vadd.s32 Q4, Q4, Q2
vmla.s32 Q1, Q3, r9
// output[352]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * 100)]
vmul.u32 Q5, Q0, r3
vsub.s32 Q3, Q2, Q1
vqrdmulh.s32 Q0, Q0, r2
vadd.s32 Q2, Q2, Q1
vmla.s32 Q5, Q0, r9
// output[124]: Load as Q1
vldrw.u32 Q1, [r1, #(4 * 124)]
vmul.u32 Q6, Q4, r5
vsub.s32 Q0, Q3, Q5
vqrdmulh.s32 Q4, Q4, r4
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r11,#(496)]
// Release output[376] from Q0
vmla.s32 Q6, Q4, r9
vstrw.u32 Q3, [r1,#(448)]
// Release output[112] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r11,#(-80)]
// Release output[232] from Q4
vadd.s32 Q2, Q2, Q6
// output[124]: Already loaded as Q1
vmul.u32 Q0, Q1, r7
// output[244]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * -8)]
vqrdmulh.s32 Q1, Q1, r6
// output[364]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * 112)]
vmla.s32 Q0, Q1, r9
vstrw.u32 Q2, [r11,#(400)]
// Release output[352] from Q2
vmul.u32 Q2, Q3, r7
vsub.s32 Q1, Q4, Q0
vqrdmulh.s32 Q3, Q3, r6
vadd.s32 Q4, Q4, Q0
vmla.s32 Q2, Q3, r9
// output[100]: Load as Q0
vldrw.u32 Q0, [r1, #(4 * 100)]
vmul.u32 Q5, Q1, r3
vsub.s32 Q3, Q0, Q2
vqrdmulh.s32 Q1, Q1, r2
vadd.s32 Q0, Q0, Q2
vmla.s32 Q5, Q1, r9
// output[248]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * -4)]
vmul.u32 Q6, Q4, r5
vsub.s32 Q1, Q3, Q5
vqrdmulh.s32 Q4, Q4, r4
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r1,#(496)]
// Release output[124] from Q1
vmla.s32 Q6, Q4, r9
vstrw.u32 Q3, [r11,#(-32)]
// Release output[244] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r11,#(448)]
// Release output[364] from Q4
vadd.s32 Q0, Q0, Q6
// output[248]: Already loaded as Q2
vmul.u32 Q1, Q2, r7
// output[368]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * 116)]
vqrdmulh.s32 Q2, Q2, r6
// output[104]: Load as Q4
vldrw.u32 Q4, [r1, #(4 * 104)]
vmla.s32 Q1, Q2, r9
vstrw.u32 Q0, [r1,#(400)]
// Release output[100] from Q0
vmul.u32 Q0, Q3, r7
vsub.s32 Q2, Q4, Q1
vqrdmulh.s32 Q3, Q3, r6
vadd.s32 Q4, Q4, Q1
vmla.s32 Q0, Q3, r9
// output[224]: Load as Q1
vldrw.u32 Q1, [r11, #(4 * -28)]
vmul.u32 Q5, Q2, r3
vsub.s32 Q3, Q1, Q0
vqrdmulh.s32 Q2, Q2, r2
vadd.s32 Q1, Q1, Q0
vmla.s32 Q5, Q2, r9
// output[380]: Load as Q0
vldrw.u32 Q0, [r10, #(4 * -124)]
vmul.u32 Q6, Q4, r5
vsub.s32 Q2, Q3, Q5
vqrdmulh.s32 Q4, Q4, r4
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r11,#(-16)]
// Release output[248] from Q2
vmla.s32 Q6, Q4, r9
vstrw.u32 Q3, [r11,#(464)]
// Release output[368] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r1,#(416)]
// Release output[104] from Q4
vadd.s32 Q1, Q1, Q6
// output[380]: Already loaded as Q0
vmul.u32 Q2, Q0, r7
// output[116]: Load as Q3
vldrw.u32 Q3, [r1, #(4 * 116)]
vqrdmulh.s32 Q0, Q0, r6
// output[236]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -16)]
vmla.s32 Q2, Q0, r9
vstrw.u32 Q1, [r11,#(-112)]
// Release output[224] from Q1
vmul.u32 Q1, Q3, r7
vsub.s32 Q0, Q4, Q2
vqrdmulh.s32 Q3, Q3, r6
vadd.s32 Q4, Q4, Q2
vmla.s32 Q1, Q3, r9
// output[356]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * 104)]
vmul.u32 Q5, Q0, r3
vsub.s32 Q3, Q2, Q1
vqrdmulh.s32 Q0, Q0, r2
vadd.s32 Q2, Q2, Q1
vmla.s32 Q5, Q0, r9
vmul.u32 Q1, Q4, r5
vsub.s32 Q0, Q3, Q5
vqrdmulh.s32 Q4, Q4, r4
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r10,#(-496)]
// Release output[380] from Q0
vmla.s32 Q1, Q4, r9
vstrw.u32 Q3, [r1,#(464)]
// Release output[116] from Q3
vsub.s32 Q4, Q2, Q1
vstrw.u32 Q4, [r11,#(-64)]
// Release output[236] from Q4
vadd.s32 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(416)]
// Release output[356] from Q2
ldrd r7, r6, [r8], #+8
// output[132]: Load as Q0
vldrw.u32 Q0, [r11, #(4 * -120)]
vmul.u32 Q1, Q0, r7
// output[0]: Load as Q2
vldrw.u32 Q2, [r1, #(4 * 0)]
vqrdmulh.s32 Q0, Q0, r6
// output[4]: Load as Q3
vldrw.u32 Q3, [r1, #(4 * 4)]
vmla.s32 Q1, Q0, r9
vsub.s32 Q0, Q2, Q1
vstrw.u32 Q0, [r11,#(-480)]
// Release output[132] from Q0
vadd.s32 Q2, Q2, Q1
// output[4]: Already loaded as Q3
vmul.u32 Q0, Q3, r7
// output[256]: Load as Q1
vldrw.u32 Q1, [r11, #(4 * 4)]
vqrdmulh.s32 Q3, Q3, r6
// output[260]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * 8)]
vmla.s32 Q0, Q3, r9
vstrw.u32 Q2, [r1,#(0)]
// Release output[0] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r1,#(16)]
// Release output[4] from Q3
vadd.s32 Q1, Q1, Q0
// output[260]: Already loaded as Q4
vmul.u32 Q0, Q4, r7
// output[128]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * -124)]
vqrdmulh.s32 Q4, Q4, r6
// output[12]: Load as Q3
vldrw.u32 Q3, [r1, #(4 * 12)]
vmla.s32 Q0, Q4, r9
vstrw.u32 Q1, [r11,#(16)]
// Release output[256] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r11,#(32)]
// Release output[260] from Q4
vadd.s32 Q2, Q2, Q0
ldrd r7, r6, [r8], #+8
// output[12]: Already loaded as Q3
vmul.u32 Q0, Q3, r7
// output[264]: Load as Q1
vldrw.u32 Q1, [r11, #(4 * 12)]
vqrdmulh.s32 Q3, Q3, r6
// output[268]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * 16)]
vmla.s32 Q0, Q3, r9
vstrw.u32 Q2, [r11,#(-496)]
// Release output[128] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r1,#(48)]
// Release output[12] from Q3
vadd.s32 Q1, Q1, Q0
// output[268]: Already loaded as Q4
vmul.u32 Q0, Q4, r7
// output[136]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * -116)]
vqrdmulh.s32 Q4, Q4, r6
// output[140]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * -112)]
vmla.s32 Q0, Q4, r9
vstrw.u32 Q1, [r11,#(48)]
// Release output[264] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r11,#(64)]
// Release output[268] from Q4
vadd.s32 Q2, Q2, Q0
// output[140]: Already loaded as Q3
vmul.u32 Q0, Q3, r7
// output[8]: Load as Q1
vldrw.u32 Q1, [r1, #(4 * 8)]
vqrdmulh.s32 Q3, Q3, r6
// output[276]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * 24)]
vmla.s32 Q0, Q3, r9
vstrw.u32 Q2, [r11,#(-464)]
// Release output[136] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r11,#(-448)]
// Release output[140] from Q3
vadd.s32 Q1, Q1, Q0
ldrd r7, r6, [r8], #+8
// output[276]: Already loaded as Q4
vmul.u32 Q0, Q4, r7
// output[144]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * -108)]
vqrdmulh.s32 Q4, Q4, r6
// output[148]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * -104)]
vmla.s32 Q0, Q4, r9
vstrw.u32 Q1, [r1,#(32)]
// Release output[8] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r11,#(96)]
// Release output[276] from Q4
vadd.s32 Q2, Q2, Q0
// output[148]: Already loaded as Q3
vmul.u32 Q0, Q3, r7
// output[16]: Load as Q1
vldrw.u32 Q1, [r1, #(4 * 16)]
vqrdmulh.s32 Q3, Q3, r6
// output[20]: Load as Q4
vldrw.u32 Q4, [r1, #(4 * 20)]
vmla.s32 Q0, Q3, r9
vstrw.u32 Q2, [r11,#(-432)]
// Release output[144] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r11,#(-416)]
// Release output[148] from Q3
vadd.s32 Q1, Q1, Q0
// output[20]: Already loaded as Q4
vmul.u32 Q0, Q4, r7
// output[272]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * 20)]
vqrdmulh.s32 Q4, Q4, r6
// output[156]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * -96)]
vmla.s32 Q0, Q4, r9
vstrw.u32 Q1, [r1,#(64)]
// Release output[16] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r1,#(80)]
// Release output[20] from Q4
vadd.s32 Q2, Q2, Q0
ldrd r7, r6, [r8], #+8
// output[156]: Already loaded as Q3
vmul.u32 Q0, Q3, r7
// output[24]: Load as Q1
vldrw.u32 Q1, [r1, #(4 * 24)]
vqrdmulh.s32 Q3, Q3, r6
// output[28]: Load as Q4
vldrw.u32 Q4, [r1, #(4 * 28)]
vmla.s32 Q0, Q3, r9
vstrw.u32 Q2, [r11,#(80)]
// Release output[272] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r11,#(-384)]
// Release output[156] from Q3
vadd.s32 Q1, Q1, Q0
// output[28]: Already loaded as Q4
vmul.u32 Q0, Q4, r7
// output[280]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * 28)]
vqrdmulh.s32 Q4, Q4, r6
// output[284]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * 32)]
vmla.s32 Q0, Q4, r9
vstrw.u32 Q1, [r1,#(96)]
// Release output[24] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r1,#(112)]
// Release output[28] from Q4
vadd.s32 Q2, Q2, Q0
// output[284]: Already loaded as Q3
vmul.u32 Q0, Q3, r7
// output[152]: Load as Q1
vldrw.u32 Q1, [r11, #(4 * -100)]
vqrdmulh.s32 Q3, Q3, r6
// output[36]: Load as Q4
vldrw.u32 Q4, [r1, #(4 * 36)]
vmla.s32 Q0, Q3, r9
vstrw.u32 Q2, [r11,#(112)]
// Release output[280] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r11,#(128)]
// Release output[284] from Q3
vadd.s32 Q1, Q1, Q0
ldrd r7, r6, [r8], #+8
// output[36]: Already loaded as Q4
vmul.u32 Q0, Q4, r7
// output[288]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * 36)]
vqrdmulh.s32 Q4, Q4, r6
// output[292]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * 40)]
vmla.s32 Q0, Q4, r9
vstrw.u32 Q1, [r11,#(-400)]
// Release output[152] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r1,#(144)]
// Release output[36] from Q4
vadd.s32 Q2, Q2, Q0
// output[292]: Already loaded as Q3
vmul.u32 Q0, Q3, r7
// output[160]: Load as Q1
vldrw.u32 Q1, [r11, #(4 * -92)]
vqrdmulh.s32 Q3, Q3, r6
// output[164]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -88)]
vmla.s32 Q0, Q3, r9
vstrw.u32 Q2, [r11,#(144)]
// Release output[288] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r11,#(160)]
// Release output[292] from Q3
vadd.s32 Q1, Q1, Q0
// output[164]: Already loaded as Q4
vmul.u32 Q0, Q4, r7
// output[32]: Load as Q2
vldrw.u32 Q2, [r1, #(4 * 32)]
vqrdmulh.s32 Q4, Q4, r6
// output[300]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * 48)]
vmla.s32 Q0, Q4, r9
vstrw.u32 Q1, [r11,#(-368)]
// Release output[160] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r11,#(-352)]
// Release output[164] from Q4
vadd.s32 Q2, Q2, Q0
ldrd r7, r6, [r8], #+8
// output[300]: Already loaded as Q3
vmul.u32 Q0, Q3, r7
// output[168]: Load as Q1
vldrw.u32 Q1, [r11, #(4 * -84)]
vqrdmulh.s32 Q3, Q3, r6
// output[172]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -80)]
vmla.s32 Q0, Q3, r9
vstrw.u32 Q2, [r1,#(128)]
// Release output[32] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r11,#(192)]
// Release output[300] from Q3
vadd.s32 Q1, Q1, Q0
// output[172]: Already loaded as Q4
vmul.u32 Q0, Q4, r7
// output[40]: Load as Q2
vldrw.u32 Q2, [r1, #(4 * 40)]
vqrdmulh.s32 Q4, Q4, r6
// output[44]: Load as Q3
vldrw.u32 Q3, [r1, #(4 * 44)]
vmla.s32 Q0, Q4, r9
vstrw.u32 Q1, [r11,#(-336)]
// Release output[168] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r11,#(-320)]
// Release output[172] from Q4
vadd.s32 Q2, Q2, Q0
// output[44]: Already loaded as Q3
vmul.u32 Q0, Q3, r7
// output[296]: Load as Q1
vldrw.u32 Q1, [r11, #(4 * 44)]
vqrdmulh.s32 Q3, Q3, r6
// output[180]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -72)]
vmla.s32 Q0, Q3, r9
vstrw.u32 Q2, [r1,#(160)]
// Release output[40] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r1,#(176)]
// Release output[44] from Q3
vadd.s32 Q1, Q1, Q0
ldrd r7, r6, [r8], #+8
// output[180]: Already loaded as Q4
vmul.u32 Q0, Q4, r7
// output[48]: Load as Q2
vldrw.u32 Q2, [r1, #(4 * 48)]
vqrdmulh.s32 Q4, Q4, r6
// output[52]: Load as Q3
vldrw.u32 Q3, [r1, #(4 * 52)]
vmla.s32 Q0, Q4, r9
vstrw.u32 Q1, [r11,#(176)]
// Release output[296] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r11,#(-288)]
// Release output[180] from Q4
vadd.s32 Q2, Q2, Q0
// output[52]: Already loaded as Q3
vmul.u32 Q0, Q3, r7
// output[304]: Load as Q1
vldrw.u32 Q1, [r11, #(4 * 52)]
vqrdmulh.s32 Q3, Q3, r6
// output[308]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * 56)]
vmla.s32 Q0, Q3, r9
vstrw.u32 Q2, [r1,#(192)]
// Release output[48] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r1,#(208)]
// Release output[52] from Q3
vadd.s32 Q1, Q1, Q0
// output[308]: Already loaded as Q4
vmul.u32 Q0, Q4, r7
// output[176]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * -76)]
vqrdmulh.s32 Q4, Q4, r6
// output[60]: Load as Q3
vldrw.u32 Q3, [r1, #(4 * 60)]
vmla.s32 Q0, Q4, r9
vstrw.u32 Q1, [r11,#(208)]
// Release output[304] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r11,#(224)]
// Release output[308] from Q4
vadd.s32 Q2, Q2, Q0
ldrd r7, r6, [r8], #+8
// output[60]: Already loaded as Q3
vmul.u32 Q0, Q3, r7
// output[312]: Load as Q1
vldrw.u32 Q1, [r11, #(4 * 60)]
vqrdmulh.s32 Q3, Q3, r6
// output[316]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * 64)]
vmla.s32 Q0, Q3, r9
vstrw.u32 Q2, [r11,#(-304)]
// Release output[176] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r1,#(240)]
// Release output[60] from Q3
vadd.s32 Q1, Q1, Q0
// output[316]: Already loaded as Q4
vmul.u32 Q0, Q4, r7
// output[184]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * -68)]
vqrdmulh.s32 Q4, Q4, r6
// output[188]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * -64)]
vmla.s32 Q0, Q4, r9
vstrw.u32 Q1, [r11,#(240)]
// Release output[312] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r11,#(256)]
// Release output[316] from Q4
vadd.s32 Q2, Q2, Q0
// output[188]: Already loaded as Q3
vmul.u32 Q0, Q3, r7
// output[56]: Load as Q1
vldrw.u32 Q1, [r1, #(4 * 56)]
vqrdmulh.s32 Q3, Q3, r6
// output[324]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * 72)]
vmla.s32 Q0, Q3, r9
vstrw.u32 Q2, [r11,#(-272)]
// Release output[184] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r11,#(-256)]
// Release output[188] from Q3
vadd.s32 Q1, Q1, Q0
ldrd r7, r6, [r8], #+8
// output[324]: Already loaded as Q4
vmul.u32 Q0, Q4, r7
// output[192]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * -60)]
vqrdmulh.s32 Q4, Q4, r6
// output[196]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * -56)]
vmla.s32 Q0, Q4, r9
vstrw.u32 Q1, [r1,#(224)]
// Release output[56] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r11,#(288)]
// Release output[324] from Q4
vadd.s32 Q2, Q2, Q0
// output[196]: Already loaded as Q3
vmul.u32 Q0, Q3, r7
// output[64]: Load as Q1
vldrw.u32 Q1, [r1, #(4 * 64)]
vqrdmulh.s32 Q3, Q3, r6
// output[68]: Load as Q4
vldrw.u32 Q4, [r1, #(4 * 68)]
vmla.s32 Q0, Q3, r9
vstrw.u32 Q2, [r11,#(-240)]
// Release output[192] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r11,#(-224)]
// Release output[196] from Q3
vadd.s32 Q1, Q1, Q0
// output[68]: Already loaded as Q4
vmul.u32 Q0, Q4, r7
// output[320]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * 68)]
vqrdmulh.s32 Q4, Q4, r6
// output[204]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * -48)]
vmla.s32 Q0, Q4, r9
vstrw.u32 Q1, [r1,#(256)]
// Release output[64] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r1,#(272)]
// Release output[68] from Q4
vadd.s32 Q2, Q2, Q0
ldrd r7, r6, [r8], #+8
// output[204]: Already loaded as Q3
vmul.u32 Q0, Q3, r7
// output[72]: Load as Q1
vldrw.u32 Q1, [r1, #(4 * 72)]
vqrdmulh.s32 Q3, Q3, r6
// output[76]: Load as Q4
vldrw.u32 Q4, [r1, #(4 * 76)]
vmla.s32 Q0, Q3, r9
vstrw.u32 Q2, [r11,#(272)]
// Release output[320] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r11,#(-192)]
// Release output[204] from Q3
vadd.s32 Q1, Q1, Q0
// output[76]: Already loaded as Q4
vmul.u32 Q0, Q4, r7
// output[328]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * 76)]
vqrdmulh.s32 Q4, Q4, r6
// output[332]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * 80)]
vmla.s32 Q0, Q4, r9
vstrw.u32 Q1, [r1,#(288)]
// Release output[72] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r1,#(304)]
// Release output[76] from Q4
vadd.s32 Q2, Q2, Q0
// output[332]: Already loaded as Q3
vmul.u32 Q0, Q3, r7
// output[200]: Load as Q1
vldrw.u32 Q1, [r11, #(4 * -52)]
vqrdmulh.s32 Q3, Q3, r6
// output[84]: Load as Q4
vldrw.u32 Q4, [r1, #(4 * 84)]
vmla.s32 Q0, Q3, r9
vstrw.u32 Q2, [r11,#(304)]
// Release output[328] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r11,#(320)]
// Release output[332] from Q3
vadd.s32 Q1, Q1, Q0
ldrd r7, r6, [r8], #+8
// output[84]: Already loaded as Q4
vmul.u32 Q0, Q4, r7
// output[336]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * 84)]
vqrdmulh.s32 Q4, Q4, r6
// output[340]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * 88)]
vmla.s32 Q0, Q4, r9
vstrw.u32 Q1, [r11,#(-208)]
// Release output[200] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r1,#(336)]
// Release output[84] from Q4
vadd.s32 Q2, Q2, Q0
// output[340]: Already loaded as Q3
vmul.u32 Q0, Q3, r7
// output[208]: Load as Q1
vldrw.u32 Q1, [r11, #(4 * -44)]
vqrdmulh.s32 Q3, Q3, r6
// output[212]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -40)]
vmla.s32 Q0, Q3, r9
vstrw.u32 Q2, [r11,#(336)]
// Release output[336] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r11,#(352)]
// Release output[340] from Q3
vadd.s32 Q1, Q1, Q0
// output[212]: Already loaded as Q4
vmul.u32 Q0, Q4, r7
// output[80]: Load as Q2
vldrw.u32 Q2, [r1, #(4 * 80)]
vqrdmulh.s32 Q4, Q4, r6
// output[348]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * 96)]
vmla.s32 Q0, Q4, r9
vstrw.u32 Q1, [r11,#(-176)]
// Release output[208] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r11,#(-160)]
// Release output[212] from Q4
vadd.s32 Q2, Q2, Q0
ldrd r7, r6, [r8], #+8
// output[348]: Already loaded as Q3
vmul.u32 Q0, Q3, r7
// output[216]: Load as Q1
vldrw.u32 Q1, [r11, #(4 * -36)]
vqrdmulh.s32 Q3, Q3, r6
// output[220]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -32)]
vmla.s32 Q0, Q3, r9
vstrw.u32 Q2, [r1,#(320)]
// Release output[80] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r11,#(384)]
// Release output[348] from Q3
vadd.s32 Q1, Q1, Q0
// output[220]: Already loaded as Q4
vmul.u32 Q0, Q4, r7
// output[88]: Load as Q2
vldrw.u32 Q2, [r1, #(4 * 88)]
vqrdmulh.s32 Q4, Q4, r6
// output[92]: Load as Q3
vldrw.u32 Q3, [r1, #(4 * 92)]
vmla.s32 Q0, Q4, r9
vstrw.u32 Q1, [r11,#(-144)]
// Release output[216] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r11,#(-128)]
// Release output[220] from Q4
vadd.s32 Q2, Q2, Q0
// output[92]: Already loaded as Q3
vmul.u32 Q0, Q3, r7
// output[344]: Load as Q1
vldrw.u32 Q1, [r11, #(4 * 92)]
vqrdmulh.s32 Q3, Q3, r6
// output[228]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * -24)]
vmla.s32 Q0, Q3, r9
vstrw.u32 Q2, [r1,#(352)]
// Release output[88] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r1,#(368)]
// Release output[92] from Q3
vadd.s32 Q1, Q1, Q0
ldrd r7, r6, [r8], #+8
// output[228]: Already loaded as Q4
vmul.u32 Q0, Q4, r7
// output[96]: Load as Q2
vldrw.u32 Q2, [r1, #(4 * 96)]
vqrdmulh.s32 Q4, Q4, r6
// output[100]: Load as Q3
vldrw.u32 Q3, [r1, #(4 * 100)]
vmla.s32 Q0, Q4, r9
vstrw.u32 Q1, [r11,#(368)]
// Release output[344] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r11,#(-96)]
// Release output[228] from Q4
vadd.s32 Q2, Q2, Q0
// output[100]: Already loaded as Q3
vmul.u32 Q0, Q3, r7
// output[352]: Load as Q1
vldrw.u32 Q1, [r11, #(4 * 100)]
vqrdmulh.s32 Q3, Q3, r6
// output[356]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * 104)]
vmla.s32 Q0, Q3, r9
vstrw.u32 Q2, [r1,#(384)]
// Release output[96] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r1,#(400)]
// Release output[100] from Q3
vadd.s32 Q1, Q1, Q0
// output[356]: Already loaded as Q4
vmul.u32 Q0, Q4, r7
// output[224]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * -28)]
vqrdmulh.s32 Q4, Q4, r6
// output[108]: Load as Q3
vldrw.u32 Q3, [r1, #(4 * 108)]
vmla.s32 Q0, Q4, r9
vstrw.u32 Q1, [r11,#(400)]
// Release output[352] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r11,#(416)]
// Release output[356] from Q4
vadd.s32 Q2, Q2, Q0
ldrd r7, r6, [r8], #+8
// output[108]: Already loaded as Q3
vmul.u32 Q0, Q3, r7
// output[360]: Load as Q1
vldrw.u32 Q1, [r11, #(4 * 108)]
vqrdmulh.s32 Q3, Q3, r6
// output[364]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * 112)]
vmla.s32 Q0, Q3, r9
vstrw.u32 Q2, [r11,#(-112)]
// Release output[224] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r1,#(432)]
// Release output[108] from Q3
vadd.s32 Q1, Q1, Q0
// output[364]: Already loaded as Q4
vmul.u32 Q0, Q4, r7
// output[232]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * -20)]
vqrdmulh.s32 Q4, Q4, r6
// output[236]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * -16)]
vmla.s32 Q0, Q4, r9
vstrw.u32 Q1, [r11,#(432)]
// Release output[360] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r11,#(448)]
// Release output[364] from Q4
vadd.s32 Q2, Q2, Q0
// output[236]: Already loaded as Q3
vmul.u32 Q0, Q3, r7
// output[104]: Load as Q1
vldrw.u32 Q1, [r1, #(4 * 104)]
vqrdmulh.s32 Q3, Q3, r6
// output[372]: Load as Q4
vldrw.u32 Q4, [r11, #(4 * 120)]
vmla.s32 Q0, Q3, r9
vstrw.u32 Q2, [r11,#(-80)]
// Release output[232] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r11,#(-64)]
// Release output[236] from Q3
vadd.s32 Q1, Q1, Q0
ldrd r7, r6, [r8], #+8
// output[372]: Already loaded as Q4
vmul.u32 Q0, Q4, r7
// output[240]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * -12)]
vqrdmulh.s32 Q4, Q4, r6
// output[244]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * -8)]
vmla.s32 Q0, Q4, r9
vstrw.u32 Q1, [r1,#(416)]
// Release output[104] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r11,#(480)]
// Release output[372] from Q4
vadd.s32 Q2, Q2, Q0
// output[244]: Already loaded as Q3
vmul.u32 Q0, Q3, r7
// output[112]: Load as Q1
vldrw.u32 Q1, [r1, #(4 * 112)]
vqrdmulh.s32 Q3, Q3, r6
// output[116]: Load as Q4
vldrw.u32 Q4, [r1, #(4 * 116)]
vmla.s32 Q0, Q3, r9
vstrw.u32 Q2, [r11,#(-48)]
// Release output[240] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r11,#(-32)]
// Release output[244] from Q3
vadd.s32 Q1, Q1, Q0
// output[116]: Already loaded as Q4
vmul.u32 Q0, Q4, r7
// output[368]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * 116)]
vqrdmulh.s32 Q4, Q4, r6
// output[252]: Load as Q3
vldrw.u32 Q3, [r11, #(4 * 0)]
vmla.s32 Q0, Q4, r9
vstrw.u32 Q1, [r1,#(448)]
// Release output[112] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r1,#(464)]
// Release output[116] from Q4
vadd.s32 Q2, Q2, Q0
ldrd r7, r6, [r8], #+8
// output[252]: Already loaded as Q3
vmul.u32 Q0, Q3, r7
// output[120]: Load as Q1
vldrw.u32 Q1, [r1, #(4 * 120)]
vqrdmulh.s32 Q3, Q3, r6
// output[124]: Load as Q4
vldrw.u32 Q4, [r1, #(4 * 124)]
vmla.s32 Q0, Q3, r9
vstrw.u32 Q2, [r11,#(464)]
// Release output[368] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r11,#(0)]
// Release output[252] from Q3
vadd.s32 Q1, Q1, Q0
// output[124]: Already loaded as Q4
vmul.u32 Q0, Q4, r7
// output[376]: Load as Q2
vldrw.u32 Q2, [r11, #(4 * 124)]
vqrdmulh.s32 Q4, Q4, r6
// output[380]: Load as Q3
vldrw.u32 Q3, [r10, #(4 * -124)]
vmla.s32 Q0, Q4, r9
vstrw.u32 Q1, [r1,#(480)]
// Release output[120] from Q1
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r1,#(496)]
// Release output[124] from Q4
vadd.s32 Q2, Q2, Q0
// output[380]: Already loaded as Q3
vmul.u32 Q0, Q3, r7
// output[248]: Load as Q1
vldrw.u32 Q1, [r11, #(4 * -4)]
vqrdmulh.s32 Q3, Q3, r6
vmla.s32 Q0, Q3, r9
vstrw.u32 Q2, [r11,#(496)]
// Release output[376] from Q2
vsub.s32 Q3, Q1, Q0
vstrw.u32 Q3, [r10,#(-496)]
// Release output[380] from Q3
vadd.s32 Q1, Q1, Q0
vstrw.u32 Q1, [r11,#(-16)]
// Release output[248] from Q1
.equ modulus_inv, 815674047
movw r14, #:lower16:modulus_inv
movt r14, #:upper16:modulus_inv
// Restore MVE vector registers
vpop {d8-d15}
// Restore GPRs
pop {r4-r11,lr}
bx lr

// Line count:        3042
// Instruction count: 2201