
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
.global ntt_384_u32_114826273_2551686_incomplete_good_twiddles
ntt_384_u32_114826273_2551686_incomplete_good_twiddles: // For base multiplication
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

.global ntt_384_u32_114826273_2551686_incomplete_good_scale
ntt_384_u32_114826273_2551686_incomplete_good_scale: // Constants for scaling by 1/N
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
.type ntt_384_u32_114826273_2551686_incomplete_good, %function
.global ntt_384_u32_114826273_2551686_incomplete_good
ntt_384_u32_114826273_2551686_incomplete_good:
// Save GPRs
push {r4-r11,lr}
// Save MVE vector registers
vpush {d8-d15}
// Use r14 as marker for r0 + 1008
add r14, r0, #1008
// Use r12 as marker for r0 + 2016
add r12, r14, #1008
.equ modulus, -114826273
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
.equ modulus_inv, 3741423647
movw r9, #:lower16:modulus_inv
movt r9, #:upper16:modulus_inv
// Restore MVE vector registers
vpop {d8-d15}
// Restore GPRs
pop {r4-r11,lr}
bx lr

// Line count:        3350
// Instruction count: 2395