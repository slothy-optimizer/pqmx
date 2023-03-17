
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
.global ntt_384_u32_114826273_2551686_incomplete_good_oop_half_input_twiddles
ntt_384_u32_114826273_2551686_incomplete_good_oop_half_input_twiddles: // For base multiplication
.word   28609785 // zeta^  0 * 2^31 = 2551686^  0 * 2^31 = 1 * 2^31
.word 3700025895 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 2551686^  0 * 553543649 * 2^31
.word   41241721 // zeta^ 64 * 2^31 = 2551686^ 64 * 2^31 = 42887728 * 2^31
.word 2769623719 // zeta^ 64 * f(q^(-1) mod 2^32) * 2^31 = 2551686^ 64 * 553543649 * 2^31
.word   86448423 // zeta^ 32 * 2^31 = 2551686^ 32 * 2^31 = 10217507 * 2^31
.word 3906089913 // zeta^ 32 * f(q^(-1) mod 2^32) * 2^31 = 2551686^ 32 * 553543649 * 2^31
.word  183227061 // zeta^ 96 * 2^31 = 2551686^ 96 * 2^31 = 11544119 * 2^31
.word 3579771883 // zeta^ 96 * f(q^(-1) mod 2^32) * 2^31 = 2551686^ 96 * 553543649 * 2^31
.word  126234215 // zeta^ 16 * 2^31 = 2551686^ 16 * 2^31 = 35511129 * 2^31
.word 2083767929 // zeta^ 16 * f(q^(-1) mod 2^32) * 2^31 = 2551686^ 16 * 553543649 * 2^31
.word   87914355 // zeta^ 80 * 2^31 = 2551686^ 80 * 2^31 = 29513246 * 2^31
.word 3318791917 // zeta^ 80 * f(q^(-1) mod 2^32) * 2^31 = 2551686^ 80 * 553543649 * 2^31
.word    3386929 // zeta^ 48 * 2^31 = 2551686^ 48 * 2^31 = 32481077 * 2^31
.word  316682223 // zeta^ 48 * f(q^(-1) mod 2^32) * 2^31 = 2551686^ 48 * 553543649 * 2^31
.word   43010579 // zeta^112 * 2^31 = 2551686^112 * 2^31 = 91801134 * 2^31
.word 3532079181 // zeta^112 * f(q^(-1) mod 2^32) * 2^31 = 2551686^112 * 553543649 * 2^31
.word   64379879 // zeta^  8 * 2^31 = 2551686^  8 * 2^31 = 107284677 * 2^31
.word 1382893817 // zeta^  8 * f(q^(-1) mod 2^32) * 2^31 = 2551686^  8 * 553543649 * 2^31
.word   34806835 // zeta^ 72 * 2^31 = 2551686^ 72 * 2^31 = 38894874 * 2^31
.word  574730797 // zeta^ 72 * f(q^(-1) mod 2^32) * 2^31 = 2551686^ 72 * 553543649 * 2^31
.word   38994743 // zeta^ 40 * 2^31 = 2551686^ 40 * 2^31 = 42274665 * 2^31
.word 2116881321 // zeta^ 40 * f(q^(-1) mod 2^32) * 2^31 = 2551686^ 40 * 553543649 * 2^31
.word   66134929 // zeta^104 * 2^31 = 2551686^104 * 2^31 = 83688403 * 2^31
.word  434267791 // zeta^104 * f(q^(-1) mod 2^32) * 2^31 = 2551686^104 * 553543649 * 2^31
.word   69421183 // zeta^ 24 * 2^31 = 2551686^ 24 * 2^31 = 106011292 * 2^31
.word 1557147489 // zeta^ 24 * f(q^(-1) mod 2^32) * 2^31 = 2551686^ 24 * 553543649 * 2^31
.word   45651711 // zeta^ 88 * 2^31 = 2551686^ 88 * 2^31 = 87903397 * 2^31
.word 2785063137 // zeta^ 88 * f(q^(-1) mod 2^32) * 2^31 = 2551686^ 88 * 553543649 * 2^31
.word  139403893 // zeta^ 56 * 2^31 = 2551686^ 56 * 2^31 = 72290827 * 2^31
.word  192914475 // zeta^ 56 * f(q^(-1) mod 2^32) * 2^31 = 2551686^ 56 * 553543649 * 2^31
.word   79481515 // zeta^120 * 2^31 = 2551686^120 * 2^31 = 35185048 * 2^31
.word 1792873141 // zeta^120 * f(q^(-1) mod 2^32) * 2^31 = 2551686^120 * 553543649 * 2^31
.word  203088573 // zeta^  4 * 2^31 = 2551686^  4 * 2^31 = 2551686 * 2^31
.word 4087262435 // zeta^  4 * f(q^(-1) mod 2^32) * 2^31 = 2551686^  4 * 553543649 * 2^31
.word   54238839 // zeta^ 68 * 2^31 = 2551686^ 68 * 2^31 = 31842847 * 2^31
.word  298178665 // zeta^ 68 * f(q^(-1) mod 2^32) * 2^31 = 2551686^ 68 * 553543649 * 2^31
.word   37245341 // zeta^ 36 * 2^31 = 2551686^ 36 * 2^31 = 104977060 * 2^31
.word 3387169283 // zeta^ 36 * f(q^(-1) mod 2^32) * 2^31 = 2551686^ 36 * 553543649 * 2^31
.word  135079565 // zeta^100 * 2^31 = 2551686^100 * 2^31 = 8890579 * 2^31
.word 3255329555 // zeta^100 * f(q^(-1) mod 2^32) * 2^31 = 2551686^100 * 553543649 * 2^31
.word  221900801 // zeta^ 20 * 2^31 = 2551686^ 20 * 2^31 = 49422185 * 2^31
.word 3481643039 // zeta^ 20 * f(q^(-1) mod 2^32) * 2^31 = 2551686^ 20 * 553543649 * 2^31
.word   54737445 // zeta^ 84 * 2^31 = 2551686^ 84 * 2^31 = 69964525 * 2^31
.word 3301900923 // zeta^ 84 * f(q^(-1) mod 2^32) * 2^31 = 2551686^ 84 * 553543649 * 2^31
.word  209527495 // zeta^ 52 * 2^31 = 2551686^ 52 * 2^31 = 20420695 * 2^31
.word 1268014617 // zeta^ 52 * f(q^(-1) mod 2^32) * 2^31 = 2551686^ 52 * 553543649 * 2^31
.word   33294343 // zeta^116 * 2^31 = 2551686^116 * 2^31 = 4619010 * 2^31
.word   55582937 // zeta^116 * f(q^(-1) mod 2^32) * 2^31 = 2551686^116 * 553543649 * 2^31
.word  224674633 // zeta^ 12 * 2^31 = 2551686^ 12 * 2^31 = 64987487 * 2^31
.word   23100887 // zeta^ 12 * f(q^(-1) mod 2^32) * 2^31 = 2551686^ 12 * 553543649 * 2^31
.word  173107497 // zeta^ 76 * 2^31 = 2551686^ 76 * 2^31 = 57394293 * 2^31
.word 3061126135 // zeta^ 76 * f(q^(-1) mod 2^32) * 2^31 = 2551686^ 76 * 553543649 * 2^31
.word  207049913 // zeta^ 44 * 2^31 = 2551686^ 44 * 2^31 = 80711981 * 2^31
.word 3566869095 // zeta^ 44 * f(q^(-1) mod 2^32) * 2^31 = 2551686^ 44 * 553543649 * 2^31
.word  106889387 // zeta^108 * 2^31 = 2551686^108 * 2^31 = 87479803 * 2^31
.word  596745397 // zeta^108 * f(q^(-1) mod 2^32) * 2^31 = 2551686^108 * 553543649 * 2^31
.word   62148987 // zeta^ 28 * 2^31 = 2551686^ 28 * 2^31 = 25357458 * 2^31
.word 4189185509 // zeta^ 28 * f(q^(-1) mod 2^32) * 2^31 = 2551686^ 28 * 553543649 * 2^31
.word  218880525 // zeta^ 92 * 2^31 = 2551686^ 92 * 2^31 = 110972869 * 2^31
.word 3404996499 // zeta^ 92 * f(q^(-1) mod 2^32) * 2^31 = 2551686^ 92 * 553543649 * 2^31
.word   47821729 // zeta^ 60 * 2^31 = 2551686^ 60 * 2^31 = 21139561 * 2^31
.word 2376423551 // zeta^ 60 * f(q^(-1) mod 2^32) * 2^31 = 2551686^ 60 * 553543649 * 2^31
.word   79224313 // zeta^124 * 2^31 = 2551686^124 * 2^31 = 24273777 * 2^31
.word  455588135 // zeta^124 * f(q^(-1) mod 2^32) * 2^31 = 2551686^124 * 553543649 * 2^31
.word  127458209 // zeta^128 * 2^31 = 2551686^128 * 2^31 = 42887727 * 2^31
.word 3364565119 // zeta^128 * f(q^(-1) mod 2^32) * 2^31 = 2551686^128 * 553543649 * 2^31
.word  201042761 // zeta^192 * 2^31 = 2551686^192 * 2^31 = 114826272 * 2^31
.word  594941399 // zeta^192 * f(q^(-1) mod 2^32) * 2^31 = 2551686^192 * 553543649 * 2^31
.word  211604911 // zeta^160 * 2^31 = 2551686^160 * 2^31 = 1326612 * 2^31
.word 3968649265 // zeta^160 * f(q^(-1) mod 2^32) * 2^31 = 2551686^160 * 553543649 * 2^31
.word  143204123 // zeta^224 * 2^31 = 2551686^224 * 2^31 = 104608766 * 2^31
.word  388877381 // zeta^224 * f(q^(-1) mod 2^32) * 2^31 = 2551686^224 * 553543649 * 2^31
.word   76506413 // zeta^144 * 2^31 = 2551686^144 * 2^31 = 108828390 * 2^31
.word 1235023987 // zeta^144 * f(q^(-1) mod 2^32) * 2^31 = 2551686^144 * 553543649 * 2^31
.word  103418331 // zeta^208 * 2^31 = 2551686^208 * 2^31 = 79315144 * 2^31
.word 2211199365 // zeta^208 * f(q^(-1) mod 2^32) * 2^31 = 2551686^208 * 553543649 * 2^31
.word  154449923 // zeta^176 * 2^31 = 2551686^176 * 2^31 = 59320057 * 2^31
.word 3215396957 // zeta^176 * f(q^(-1) mod 2^32) * 2^31 = 2551686^176 * 553543649 * 2^31
.word  226265617 // zeta^240 * 2^31 = 2551686^240 * 2^31 = 82345196 * 2^31
.word 3978285071 // zeta^240 * f(q^(-1) mod 2^32) * 2^31 = 2551686^240 * 553543649 * 2^31
.word   85253229 // zeta^136 * 2^31 = 2551686^136 * 2^31 = 46436470 * 2^31
.word 3486804275 // zeta^136 * f(q^(-1) mod 2^32) * 2^31 = 2551686^136 * 553543649 * 2^31
.word  165272667 // zeta^200 * 2^31 = 2551686^200 * 2^31 = 7541596 * 2^31
.word 2912073477 // zeta^200 * f(q^(-1) mod 2^32) * 2^31 = 2551686^200 * 553543649 * 2^31
.word  141966459 // zeta^168 * 2^31 = 2551686^168 * 2^31 = 41413738 * 2^31
.word 2612353765 // zeta^168 * f(q^(-1) mod 2^32) * 2^31 = 2551686^168 * 553543649 * 2^31
.word  190657803 // zeta^232 * 2^31 = 2551686^232 * 2^31 = 72551608 * 2^31
.word 2178085973 // zeta^232 * f(q^(-1) mod 2^32) * 2^31 = 2551686^232 * 553543649 * 2^31
.word   91056801 // zeta^152 * 2^31 = 2551686^152 * 2^31 = 96718378 * 2^31
.word 1227915647 // zeta^152 * f(q^(-1) mod 2^32) * 2^31 = 2551686^152 * 553543649 * 2^31
.word  160231363 // zeta^216 * 2^31 = 2551686^216 * 2^31 = 8814981 * 2^31
.word 2737819805 // zeta^216 * f(q^(-1) mod 2^32) * 2^31 = 2551686^216 * 553543649 * 2^31
.word   54903895 // zeta^184 * 2^31 = 2551686^184 * 2^31 = 77720494 * 2^31
.word 1599958665 // zeta^184 * f(q^(-1) mod 2^32) * 2^31 = 2551686^184 * 553543649 * 2^31
.word   90248653 // zeta^248 * 2^31 = 2551686^248 * 2^31 = 42535446 * 2^31
.word 4102052819 // zeta^248 * f(q^(-1) mod 2^32) * 2^31 = 2551686^248 * 553543649 * 2^31
.word  195629085 // zeta^132 * 2^31 = 2551686^132 * 2^31 = 29291161 * 2^31
.word  505883523 // zeta^132 * f(q^(-1) mod 2^32) * 2^31 = 2551686^132 * 553543649 * 2^31
.word   26563973 // zeta^196 * 2^31 = 2551686^196 * 2^31 = 112274587 * 2^31
.word  207704859 // zeta^196 * f(q^(-1) mod 2^32) * 2^31 = 2551686^196 * 553543649 * 2^31
.word  212660497 // zeta^164 * 2^31 = 2551686^164 * 2^31 = 18739792 * 2^31
.word 4163127567 // zeta^164 * f(q^(-1) mod 2^32) * 2^31 = 2551686^164 * 553543649 * 2^31
.word  192407205 // zeta^228 * 2^31 = 2551686^228 * 2^31 = 9849213 * 2^31
.word  907798011 // zeta^228 * f(q^(-1) mod 2^32) * 2^31 = 2551686^228 * 553543649 * 2^31
.word  177315463 // zeta^148 * 2^31 = 2551686^148 * 2^31 = 20542340 * 2^31
.word 4115225177 // zeta^148 * f(q^(-1) mod 2^32) * 2^31 = 2551686^148 * 553543649 * 2^31
.word    7751745 // zeta^212 * 2^31 = 2551686^212 * 2^31 = 65404088 * 2^31
.word  813324255 // zeta^212 * f(q^(-1) mod 2^32) * 2^31 = 2551686^212 * 553543649 * 2^31
.word  168245667 // zeta^180 * 2^31 = 2551686^180 * 2^31 = 99024588 * 2^31
.word 3082535613 // zeta^180 * f(q^(-1) mod 2^32) * 2^31 = 2551686^180 * 553543649 * 2^31
.word   20125051 // zeta^244 * 2^31 = 2551686^244 * 2^31 = 94405578 * 2^31
.word 3026952677 // zeta^244 * f(q^(-1) mod 2^32) * 2^31 = 2551686^244 * 553543649 * 2^31
.word   63259137 // zeta^140 * 2^31 = 2551686^140 * 2^31 = 107233079 * 2^31
.word 3038025247 // zeta^140 * f(q^(-1) mod 2^32) * 2^31 = 2551686^140 * 553543649 * 2^31
.word    4977913 // zeta^204 * 2^31 = 2551686^204 * 2^31 = 49838786 * 2^31
.word 4271866407 // zeta^204 * f(q^(-1) mod 2^32) * 2^31 = 2551686^204 * 553543649 * 2^31
.word   14665747 // zeta^172 * 2^31 = 2551686^172 * 2^31 = 6767822 * 2^31
.word 1324843597 // zeta^172 * f(q^(-1) mod 2^32) * 2^31 = 2551686^172 * 553543649 * 2^31
.word   22602633 // zeta^236 * 2^31 = 2551686^236 * 2^31 = 34114292 * 2^31
.word  728098199 // zeta^236 * f(q^(-1) mod 2^32) * 2^31 = 2551686^236 * 553543649 * 2^31
.word   41905265 // zeta^156 * 2^31 = 2551686^156 * 2^31 = 85615411 * 2^31
.word 3510778287 // zeta^156 * f(q^(-1) mod 2^32) * 2^31 = 2551686^156 * 553543649 * 2^31
.word  167503559 // zeta^220 * 2^31 = 2551686^220 * 2^31 = 89468815 * 2^31
.word  105781785 // zeta^220 * f(q^(-1) mod 2^32) * 2^31 = 2551686^220 * 553543649 * 2^31
.word  146228857 // zeta^188 * 2^31 = 2551686^188 * 2^31 = 3134216 * 2^31
.word 2374131879 // zeta^188 * f(q^(-1) mod 2^32) * 2^31 = 2551686^188 * 553543649 * 2^31
.word  181830817 // zeta^252 * 2^31 = 2551686^252 * 2^31 = 93686712 * 2^31
.word 1918543743 // zeta^252 * f(q^(-1) mod 2^32) * 2^31 = 2551686^252 * 553543649 * 2^31
.word  188410825 // zeta^256 * 2^31 = 2551686^256 * 2^31 = 71938545 * 2^31
.word 1525343575 // zeta^256 * f(q^(-1) mod 2^32) * 2^31 = 2551686^256 * 553543649 * 2^31
.word  102194337 // zeta^320 * 2^31 = 2551686^320 * 2^31 = 71938546 * 2^31
.word  930402175 // zeta^320 * f(q^(-1) mod 2^32) * 2^31 = 2551686^320 * 553543649 * 2^31
.word   46425485 // zeta^288 * 2^31 = 2551686^288 * 2^31 = 103282154 * 2^31
.word  715195411 // zeta^288 * f(q^(-1) mod 2^32) * 2^31 = 2551686^288 * 553543649 * 2^31
.word   18047635 // zeta^352 * 2^31 = 2551686^352 * 2^31 = 113499661 * 2^31
.word  326318029 // zeta^352 * f(q^(-1) mod 2^32) * 2^31 = 2551686^352 * 553543649 * 2^31
.word  141738191 // zeta^272 * 2^31 = 2551686^272 * 2^31 = 85313027 * 2^31
.word  976175377 // zeta^272 * f(q^(-1) mod 2^32) * 2^31 = 2551686^272 * 553543649 * 2^31
.word  153146133 // zeta^336 * 2^31 = 2551686^336 * 2^31 = 5997883 * 2^31
.word 3059943307 // zeta^336 * f(q^(-1) mod 2^32) * 2^31 = 2551686^336 * 553543649 * 2^31
.word  186641967 // zeta^304 * 2^31 = 2551686^304 * 2^31 = 23025139 * 2^31
.word  762888113 // zeta^304 * f(q^(-1) mod 2^32) * 2^31 = 2551686^304 * 553543649 * 2^31
.word   75202623 // zeta^368 * 2^31 = 2551686^368 * 2^31 = 55506216 * 2^31
.word 1079570337 // zeta^368 * f(q^(-1) mod 2^32) * 2^31 = 2551686^368 * 553543649 * 2^31
.word  194845711 // zeta^264 * 2^31 = 2551686^264 * 2^31 = 75931399 * 2^31
.word 3720236497 // zeta^264 * f(q^(-1) mod 2^32) * 2^31 = 2551686^264 * 553543649 * 2^31
.word  144399317 // zeta^328 * 2^31 = 2551686^328 * 2^31 = 68389803 * 2^31
.word  808163019 // zeta^328 * f(q^(-1) mod 2^32) * 2^31 = 2551686^328 * 553543649 * 2^31
.word  163517617 // zeta^296 * 2^31 = 2551686^296 * 2^31 = 31137870 * 2^31
.word 3860699503 // zeta^296 * f(q^(-1) mod 2^32) * 2^31 = 2551686^296 * 553543649 * 2^31
.word   87686087 // zeta^360 * 2^31 = 2551686^360 * 2^31 = 73412535 * 2^31
.word 1682613529 // zeta^360 * f(q^(-1) mod 2^32) * 2^31 = 2551686^360 * 553543649 * 2^31
.word  184000835 // zeta^280 * 2^31 = 2551686^280 * 2^31 = 26922876 * 2^31
.word 1509904157 // zeta^280 * f(q^(-1) mod 2^32) * 2^31 = 2551686^280 * 553543649 * 2^31
.word  138595745 // zeta^344 * 2^31 = 2551686^344 * 2^31 = 18107895 * 2^31
.word 3067051647 // zeta^344 * f(q^(-1) mod 2^32) * 2^31 = 2551686^344 * 553543649 * 2^31
.word  150171031 // zeta^312 * 2^31 = 2551686^312 * 2^31 = 79641225 * 2^31
.word 2502094153 // zeta^312 * f(q^(-1) mod 2^32) * 2^31 = 2551686^312 * 553543649 * 2^31
.word  174748651 // zeta^376 * 2^31 = 2551686^376 * 2^31 = 37105779 * 2^31
.word 2695008629 // zeta^376 * f(q^(-1) mod 2^32) * 2^31 = 2551686^376 * 553543649 * 2^31
.word  175413707 // zeta^260 * 2^31 = 2551686^260 * 2^31 = 82983426 * 2^31
.word 3996788629 // zeta^260 * f(q^(-1) mod 2^32) * 2^31 = 2551686^260 * 553543649 * 2^31
.word   34023461 // zeta^324 * 2^31 = 2551686^324 * 2^31 = 85535112 * 2^31
.word 3789083771 // zeta^324 * f(q^(-1) mod 2^32) * 2^31 = 2551686^324 * 553543649 * 2^31
.word   94572981 // zeta^292 * 2^31 = 2551686^292 * 2^31 = 105935694 * 2^31
.word 1039637739 // zeta^292 * f(q^(-1) mod 2^32) * 2^31 = 2551686^292 * 553543649 * 2^31
.word   16992049 // zeta^356 * 2^31 = 2551686^356 * 2^31 = 96086481 * 2^31
.word  131839727 // zeta^356 * f(q^(-1) mod 2^32) * 2^31 = 2551686^356 * 553543649 * 2^31
.word  174915101 // zeta^276 * 2^31 = 2551686^276 * 2^31 = 44861748 * 2^31
.word  993066371 // zeta^276 * f(q^(-1) mod 2^32) * 2^31 = 2551686^276 * 553543649 * 2^31
.word   52337083 // zeta^340 * 2^31 = 2551686^340 * 2^31 = 94283933 * 2^31
.word  179742117 // zeta^340 * f(q^(-1) mod 2^32) * 2^31 = 2551686^340 * 553543649 * 2^31
.word  196358203 // zeta^308 * 2^31 = 2551686^308 * 2^31 = 110207263 * 2^31
.word 4239384357 // zeta^308 * f(q^(-1) mod 2^32) * 2^31 = 2551686^308 * 553543649 * 2^31
.word   61406879 // zeta^372 * 2^31 = 2551686^372 * 2^31 = 15801685 * 2^31
.word 1212431681 // zeta^372 * f(q^(-1) mod 2^32) * 2^31 = 2551686^372 * 553543649 * 2^31
.word   56545049 // zeta^268 * 2^31 = 2551686^268 * 2^31 = 57431980 * 2^31
.word 1233841159 // zeta^268 * f(q^(-1) mod 2^32) * 2^31 = 2551686^268 * 553543649 * 2^31
.word  166393409 // zeta^332 * 2^31 = 2551686^332 * 2^31 = 7593194 * 2^31
.word 1256942047 // zeta^332 * f(q^(-1) mod 2^32) * 2^31 = 2551686^332 * 553543649 * 2^31
.word  122763159 // zeta^300 * 2^31 = 2551686^300 * 2^31 = 27346470 * 2^31
.word 3698221897 // zeta^300 * f(q^(-1) mod 2^32) * 2^31 = 2551686^300 * 553543649 * 2^31
.word  214986799 // zeta^364 * 2^31 = 2551686^364 * 2^31 = 108058451 * 2^31
.word 2970123697 // zeta^364 * f(q^(-1) mod 2^32) * 2^31 = 2551686^364 * 553543649 * 2^31
.word   10772021 // zeta^284 * 2^31 = 2551686^284 * 2^31 = 3853404 * 2^31
.word  889970795 // zeta^284 * f(q^(-1) mod 2^32) * 2^31 = 2551686^284 * 553543649 * 2^31
.word  187747281 // zeta^348 * 2^31 = 2551686^348 * 2^31 = 29210862 * 2^31
.word  784189007 // zeta^348 * f(q^(-1) mod 2^32) * 2^31 = 2551686^348 * 553543649 * 2^31
.word  150428233 // zeta^316 * 2^31 = 2551686^316 * 2^31 = 90552496 * 2^31
.word 3839379159 // zeta^316 * f(q^(-1) mod 2^32) * 2^31 = 2551686^316 * 553543649 * 2^31
.word   83423689 // zeta^380 * 2^31 = 2551686^380 * 2^31 = 111692057 * 2^31
.word 1920835415 // zeta^380 * f(q^(-1) mod 2^32) * 2^31 = 2551686^380 * 553543649 * 2^31
// End of twiddles for base multiplication

.global ntt_384_u32_114826273_2551686_incomplete_good_oop_half_input_scale
ntt_384_u32_114826273_2551686_incomplete_good_oop_half_input_scale: // Constants for scaling by 1/N
.word 28609785 // 1/96
.word 3700025895 // 1/96 twisted
.data
roots:
.word   71938545 /// zeta^256 * 2^31 = 2551686^256 * 2^31 = 71938545 * 2^31
.word 1345396354 /// zeta^256 * f(q^(-1) mod 2^32) * 2^31 = 2551686^256 * 553543649 * 2^31
.word   42887727 /// zeta^128 * 2^31 = 2551686^128 * 2^31 = 42887727 * 2^31
.word  802087275 /// zeta^128 * f(q^(-1) mod 2^32) * 2^31 = 2551686^128 * 553543649 * 2^31
.word          1 // zeta^  0 * 2^31 = 2551686^  0 * 2^31 = 1 * 2^31
.word         19 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 2551686^  0 * 553543649 * 2^31
.word          1 // zeta^  0 * 2^31 = 2551686^  0 * 2^31 = 1 * 2^31
.word         19 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 2551686^  0 * 553543649 * 2^31
.word  103282154 // zeta^288 * 2^31 = 2551686^288 * 2^31 = 103282154 * 2^31
.word 1931585264 // zeta^288 * f(q^(-1) mod 2^32) * 2^31 = 2551686^288 * 553543649 * 2^31
.word          1 // zeta^  0 * 2^31 = 2551686^  0 * 2^31 = 1 * 2^31
.word         19 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 2551686^  0 * 553543649 * 2^31
.word          1 // zeta^  0 * 2^31 = 2551686^  0 * 2^31 = 1 * 2^31
.word         19 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 2551686^  0 * 553543649 * 2^31
.word  103282154 // zeta^288 * 2^31 = 2551686^288 * 2^31 = 103282154 * 2^31
.word 1931585264 // zeta^288 * f(q^(-1) mod 2^32) * 2^31 = 2551686^288 * 553543649 * 2^31
.word  103282154 // zeta^288 * 2^31 = 2551686^288 * 2^31 = 103282154 * 2^31
.word 1931585264 // zeta^288 * f(q^(-1) mod 2^32) * 2^31 = 2551686^288 * 553543649 * 2^31
.word  108828390 // zeta^144 * 2^31 = 2551686^144 * 2^31 = 108828390 * 2^31
.word 2035311100 // zeta^144 * f(q^(-1) mod 2^32) * 2^31 = 2551686^144 * 553543649 * 2^31
.word   32481077 // zeta^ 48 * 2^31 = 2551686^ 48 * 2^31 = 32481077 * 2^31
.word  607461863 // zeta^ 48 * f(q^(-1) mod 2^32) * 2^31 = 2551686^ 48 * 553543649 * 2^31
.word  108828390 // zeta^144 * 2^31 = 2551686^144 * 2^31 = 108828390 * 2^31
.word 2035311100 // zeta^144 * f(q^(-1) mod 2^32) * 2^31 = 2551686^144 * 553543649 * 2^31
.word   75931399 // zeta^264 * 2^31 = 2551686^264 * 2^31 = 75931399 * 2^31
.word 1420070803 // zeta^264 * f(q^(-1) mod 2^32) * 2^31 = 2551686^264 * 553543649 * 2^31
.word   41413738 // zeta^168 * 2^31 = 2551686^168 * 2^31 = 41413738 * 2^31
.word  774520698 // zeta^168 * f(q^(-1) mod 2^32) * 2^31 = 2551686^168 * 553543649 * 2^31
.word   32481077 // zeta^ 48 * 2^31 = 2551686^ 48 * 2^31 = 32481077 * 2^31
.word  607461863 // zeta^ 48 * f(q^(-1) mod 2^32) * 2^31 = 2551686^ 48 * 553543649 * 2^31
.word  106011292 // zeta^ 24 * 2^31 = 2551686^ 24 * 2^31 = 106011292 * 2^31
.word 1982625667 // zeta^ 24 * f(q^(-1) mod 2^32) * 2^31 = 2551686^ 24 * 553543649 * 2^31
.word   79641225 // zeta^312 * 2^31 = 2551686^312 * 2^31 = 79641225 * 2^31
.word 1489452056 // zeta^312 * f(q^(-1) mod 2^32) * 2^31 = 2551686^312 * 553543649 * 2^31
.word          1 // XX: zeta^  0 * 2^31 = 2551686^  0 * 2^31 = 1 * 2^31
.word         19 /// zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 2551686^  0 * 553543649 * 2^31
.word  103282154 // XX: zeta^288 * 2^31 = 2551686^288 * 2^31 = 103282154 * 2^31
.word 1931585264 /// zeta^288 * f(q^(-1) mod 2^32) * 2^31 = 2551686^288 * 553543649 * 2^31
.word  108828390 // XX: zeta^144 * 2^31 = 2551686^144 * 2^31 = 108828390 * 2^31
.word 2035311100 /// zeta^144 * f(q^(-1) mod 2^32) * 2^31 = 2551686^144 * 553543649 * 2^31
.word   32481077 // XX: zeta^ 48 * 2^31 = 2551686^ 48 * 2^31 = 32481077 * 2^31
.word  607461863 /// zeta^ 48 * f(q^(-1) mod 2^32) * 2^31 = 2551686^ 48 * 553543649 * 2^31
.word   75931399 // XX: zeta^264 * 2^31 = 2551686^264 * 2^31 = 75931399 * 2^31
.word 1420070803 /// zeta^264 * f(q^(-1) mod 2^32) * 2^31 = 2551686^264 * 553543649 * 2^31
.word   41413738 // XX: zeta^168 * 2^31 = 2551686^168 * 2^31 = 41413738 * 2^31
.word  774520698 /// zeta^168 * f(q^(-1) mod 2^32) * 2^31 = 2551686^168 * 553543649 * 2^31
.word  106011292 // XX: zeta^ 24 * 2^31 = 2551686^ 24 * 2^31 = 106011292 * 2^31
.word 1982625667 /// zeta^ 24 * f(q^(-1) mod 2^32) * 2^31 = 2551686^ 24 * 553543649 * 2^31
.word   79641225 // XX: zeta^312 * 2^31 = 2551686^312 * 2^31 = 79641225 * 2^31
.word 1489452056 /// zeta^312 * f(q^(-1) mod 2^32) * 2^31 = 2551686^312 * 553543649 * 2^31
.word   29291161 // XX: zeta^132 * 2^31 = 2551686^132 * 2^31 = 29291161 * 2^31
.word  547803979 /// zeta^132 * f(q^(-1) mod 2^32) * 2^31 = 2551686^132 * 553543649 * 2^31
.word  104977060 // XX: zeta^ 36 * 2^31 = 2551686^ 36 * 2^31 = 104977060 * 2^31
.word 1963283436 /// zeta^ 36 * f(q^(-1) mod 2^32) * 2^31 = 2551686^ 36 * 553543649 * 2^31
.word   44861748 // XX: zeta^276 * 2^31 = 2551686^276 * 2^31 = 44861748 * 2^31
.word  839005462 /// zeta^276 * f(q^(-1) mod 2^32) * 2^31 = 2551686^276 * 553543649 * 2^31
.word   99024588 // XX: zeta^180 * 2^31 = 2551686^180 * 2^31 = 99024588 * 2^31
.word 1851960165 /// zeta^180 * f(q^(-1) mod 2^32) * 2^31 = 2551686^180 * 553543649 * 2^31
.word   64987487 // XX: zeta^ 12 * 2^31 = 2551686^ 12 * 2^31 = 64987487 * 2^31
.word 1215397505 /// zeta^ 12 * f(q^(-1) mod 2^32) * 2^31 = 2551686^ 12 * 553543649 * 2^31
.word   27346470 // XX: zeta^300 * 2^31 = 2551686^300 * 2^31 = 27346470 * 2^31
.word  511434323 /// zeta^300 * f(q^(-1) mod 2^32) * 2^31 = 2551686^300 * 553543649 * 2^31
.word   85615411 // XX: zeta^156 * 2^31 = 2551686^156 * 2^31 = 85615411 * 2^31
.word 1601181422 /// zeta^156 * f(q^(-1) mod 2^32) * 2^31 = 2551686^156 * 553543649 * 2^31
.word   21139561 // XX: zeta^ 60 * 2^31 = 2551686^ 60 * 2^31 = 21139561 * 2^31
.word  395352565 /// zeta^ 60 * f(q^(-1) mod 2^32) * 2^31 = 2551686^ 60 * 553543649 * 2^31
.text
.align 4
roots_addr: .word roots
.syntax unified
.type ntt_384_u32_114826273_2551686_incomplete_good_oop_half_input, %function
.global ntt_384_u32_114826273_2551686_incomplete_good_oop_half_input
ntt_384_u32_114826273_2551686_incomplete_good_oop_half_input:
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
.equ modulus, -114826273
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
.equ modulus_inv, 3741423647
movw r14, #:lower16:modulus_inv
movt r14, #:upper16:modulus_inv
// Restore MVE vector registers
vpop {d8-d15}
// Restore GPRs
pop {r4-r11,lr}
bx lr

// Line count:        3042
// Instruction count: 2201