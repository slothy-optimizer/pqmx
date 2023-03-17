
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
.global ntt_384_u32_45387457_923104_incomplete_good_twiddles
ntt_384_u32_45387457_923104_incomplete_good_twiddles: // For base multiplication
.word   69606647 // zeta^  0 * 2^31 = 923104^  0 * 2^31 = 1 * 2^31
.word  685157961 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 923104^  0 * 450429249 * 2^31
.word   62904337 // zeta^ 64 * 2^31 = 923104^ 64 * 2^31 = 18186381 * 2^31
.word 1812533935 // zeta^ 64 * f(q^(-1) mod 2^32) * 2^31 = 923104^ 64 * 450429249 * 2^31
.word   48768409 // zeta^ 32 * 2^31 = 923104^ 32 * 2^31 = 16376451 * 2^31
.word 4063746855 // zeta^ 32 * f(q^(-1) mod 2^32) * 2^31 = 923104^ 32 * 450429249 * 2^31
.word   30855129 // zeta^ 96 * 2^31 = 923104^ 96 * 2^31 = 14738418 * 2^31
.word 2025087207 // zeta^ 96 * f(q^(-1) mod 2^32) * 2^31 = 923104^ 96 * 450429249 * 2^31
.word    5368717 // zeta^ 16 * 2^31 = 923104^ 16 * 2^31 = 6955156 * 2^31
.word 2630001715 // zeta^ 16 * f(q^(-1) mod 2^32) * 2^31 = 923104^ 16 * 450429249 * 2^31
.word   35344777 // zeta^ 80 * 2^31 = 923104^ 80 * 2^31 = 38478475 * 2^31
.word 1419625271 // zeta^ 80 * f(q^(-1) mod 2^32) * 2^31 = 923104^ 80 * 450429249 * 2^31
.word   34054097 // zeta^ 48 * 2^31 = 923104^ 48 * 2^31 = 40340716 * 2^31
.word 3259472623 // zeta^ 48 * f(q^(-1) mod 2^32) * 2^31 = 923104^ 48 * 450429249 * 2^31
.word   35946385 // zeta^112 * 2^31 = 923104^112 * 2^31 = 16261595 * 2^31
.word 1951599407 // zeta^112 * f(q^(-1) mod 2^32) * 2^31 = 923104^112 * 450429249 * 2^31
.word   54446789 // zeta^  8 * 2^31 = 923104^  8 * 2^31 = 16877098 * 2^31
.word  189185787 // zeta^  8 * f(q^(-1) mod 2^32) * 2^31 = 923104^  8 * 450429249 * 2^31
.word   39834949 // zeta^ 72 * 2^31 = 923104^ 72 * 2^31 = 21015440 * 2^31
.word 1012438139 // zeta^ 72 * f(q^(-1) mod 2^32) * 2^31 = 923104^ 72 * 450429249 * 2^31
.word   46558923 // zeta^ 40 * 2^31 = 923104^ 40 * 2^31 = 3630241 * 2^31
.word 4246475637 // zeta^ 40 * f(q^(-1) mod 2^32) * 2^31 = 923104^ 40 * 450429249 * 2^31
.word   81626031 // zeta^104 * 2^31 = 923104^104 * 2^31 = 33283422 * 2^31
.word 2162614673 // zeta^104 * f(q^(-1) mod 2^32) * 2^31 = 923104^104 * 450429249 * 2^31
.word   66297913 // zeta^ 24 * 2^31 = 923104^ 24 * 2^31 = 38013065 * 2^31
.word 1899174023 // zeta^ 24 * f(q^(-1) mod 2^32) * 2^31 = 923104^ 24 * 450429249 * 2^31
.word   39269057 // zeta^ 88 * 2^31 = 923104^ 88 * 2^31 = 33248211 * 2^31
.word 1896897535 // zeta^ 88 * f(q^(-1) mod 2^32) * 2^31 = 923104^ 88 * 450429249 * 2^31
.word   90210255 // zeta^ 56 * 2^31 = 923104^ 56 * 2^31 = 31693324 * 2^31
.word 3850943857 // zeta^ 56 * f(q^(-1) mod 2^32) * 2^31 = 923104^ 56 * 450429249 * 2^31
.word   80761913 // zeta^120 * 2^31 = 923104^120 * 2^31 = 20563366 * 2^31
.word 3363136647 // zeta^120 * f(q^(-1) mod 2^32) * 2^31 = 923104^120 * 450429249 * 2^31
.word   13759071 // zeta^  4 * 2^31 = 923104^  4 * 2^31 = 923104 * 2^31
.word 3761772257 // zeta^  4 * f(q^(-1) mod 2^32) * 2^31 = 923104^  4 * 450429249 * 2^31
.word   30402329 // zeta^ 68 * 2^31 = 923104^ 68 * 2^31 = 8451464 * 2^31
.word 1277049255 // zeta^ 68 * f(q^(-1) mod 2^32) * 2^31 = 923104^ 68 * 450429249 * 2^31
.word   83384231 // zeta^ 36 * 2^31 = 923104^ 36 * 2^31 = 12508371 * 2^31
.word 2181765017 // zeta^ 36 * f(q^(-1) mod 2^32) * 2^31 = 923104^ 36 * 450429249 * 2^31
.word    2847179 // zeta^100 * 2^31 = 923104^100 * 2^31 = 20823894 * 2^31
.word 3061010549 // zeta^100 * f(q^(-1) mod 2^32) * 2^31 = 923104^100 * 450429249 * 2^31
.word   73095195 // zeta^ 20 * 2^31 = 923104^ 20 * 2^31 = 4206832 * 2^31
.word  479430181 // zeta^ 20 * f(q^(-1) mod 2^32) * 2^31 = 923104^ 20 * 450429249 * 2^31
.word   86175901 // zeta^ 84 * 2^31 = 923104^ 84 * 2^31 = 375141 * 2^31
.word 2820360995 // zeta^ 84 * f(q^(-1) mod 2^32) * 2^31 = 923104^ 84 * 450429249 * 2^31
.word   75051431 // zeta^ 52 * 2^31 = 923104^ 52 * 2^31 = 37944787 * 2^31
.word 1467596185 // zeta^ 52 * f(q^(-1) mod 2^32) * 2^31 = 923104^ 52 * 450429249 * 2^31
.word   72003281 // zeta^116 * 2^31 = 923104^116 * 2^31 = 13574899 * 2^31
.word  892455919 // zeta^116 * f(q^(-1) mod 2^32) * 2^31 = 923104^116 * 450429249 * 2^31
.word   21266821 // zeta^ 12 * 2^31 = 923104^ 12 * 2^31 = 26669485 * 2^31
.word  492607547 // zeta^ 12 * f(q^(-1) mod 2^32) * 2^31 = 923104^ 12 * 450429249 * 2^31
.word   17786721 // zeta^ 76 * 2^31 = 923104^ 76 * 2^31 = 20629734 * 2^31
.word  813064031 // zeta^ 76 * f(q^(-1) mod 2^32) * 2^31 = 923104^ 76 * 450429249 * 2^31
.word   28787439 // zeta^ 44 * 2^31 = 923104^ 44 * 2^31 = 43262840 * 2^31
.word 3600683601 // zeta^ 44 * f(q^(-1) mod 2^32) * 2^31 = 923104^ 44 * 450429249 * 2^31
.word    9793529 // zeta^108 * 2^31 = 923104^108 * 2^31 = 19489792 * 2^31
.word  277715143 // zeta^108 * f(q^(-1) mod 2^32) * 2^31 = 923104^108 * 450429249 * 2^31
.word   11700093 // zeta^ 28 * 2^31 = 923104^ 28 * 2^31 = 16210463 * 2^31
.word 2502892611 // zeta^ 28 * f(q^(-1) mod 2^32) * 2^31 = 923104^ 28 * 450429249 * 2^31
.word   50248023 // zeta^ 92 * 2^31 = 923104^ 92 * 2^31 = 13494060 * 2^31
.word 1306171881 // zeta^ 92 * f(q^(-1) mod 2^32) * 2^31 = 923104^ 92 * 450429249 * 2^31
.word   35962109 // zeta^ 60 * 2^31 = 923104^ 60 * 2^31 = 24024980 * 2^31
.word 1803159235 // zeta^ 60 * f(q^(-1) mod 2^32) * 2^31 = 923104^ 60 * 450429249 * 2^31
.word   68955489 // zeta^124 * 2^31 = 923104^124 * 2^31 = 1591696 * 2^31
.word 2272401759 // zeta^124 * f(q^(-1) mod 2^32) * 2^31 = 923104^124 * 450429249 * 2^31
.word   38685147 // zeta^128 * 2^31 = 923104^128 * 2^31 = 18186380 * 2^31
.word 1127375973 // zeta^128 * f(q^(-1) mod 2^32) * 2^31 = 923104^128 * 450429249 * 2^31
.word   21168267 // zeta^192 * 2^31 = 923104^192 * 2^31 = 45387456 * 2^31
.word 3609809333 // zeta^192 * f(q^(-1) mod 2^32) * 2^31 = 923104^192 * 450429249 * 2^31
.word   27474177 // zeta^160 * 2^31 = 923104^160 * 2^31 = 43749424 * 2^31
.word 2256307647 // zeta^160 * f(q^(-1) mod 2^32) * 2^31 = 923104^160 * 450429249 * 2^31
.word   42006505 // zeta^224 * 2^31 = 923104^224 * 2^31 = 29011006 * 2^31
.word  231220439 // zeta^224 * f(q^(-1) mod 2^32) * 2^31 = 923104^224 * 450429249 * 2^31
.word   75363517 // zeta^144 * 2^31 = 923104^144 * 2^31 = 31523319 * 2^31
.word 3084590851 // zeta^144 * f(q^(-1) mod 2^32) * 2^31 = 923104^144 * 450429249 * 2^31
.word   85406197 // zeta^208 * 2^31 = 923104^208 * 2^31 = 38432301 * 2^31
.word 1664965579 // zeta^208 * f(q^(-1) mod 2^32) * 2^31 = 923104^208 * 450429249 * 2^31
.word   47279745 // zeta^176 * 2^31 = 923104^176 * 2^31 = 21308336 * 2^31
.word 2987094079 // zeta^176 * f(q^(-1) mod 2^32) * 2^31 = 923104^176 * 450429249 * 2^31
.word   56720817 // zeta^240 * 2^31 = 923104^240 * 2^31 = 5046741 * 2^31
.word 1035494671 // zeta^240 * f(q^(-1) mod 2^32) * 2^31 = 923104^240 * 450429249 * 2^31
.word   30775617 // zeta^136 * 2^31 = 923104^136 * 2^31 = 4138342 * 2^31
.word  823252351 // zeta^136 * f(q^(-1) mod 2^32) * 2^31 = 923104^136 * 450429249 * 2^31
.word   36328125 // zeta^200 * 2^31 = 923104^200 * 2^31 = 28510359 * 2^31
.word 4105781507 // zeta^200 * f(q^(-1) mod 2^32) * 2^31 = 923104^200 * 450429249 * 2^31
.word   80454565 // zeta^168 * 2^31 = 923104^168 * 2^31 = 29653181 * 2^31
.word 2211106331 // zeta^168 * f(q^(-1) mod 2^32) * 2^31 = 923104^168 * 450429249 * 2^31
.word   44215991 // zeta^232 * 2^31 = 923104^232 * 2^31 = 41757216 * 2^31
.word   48491657 // zeta^232 * f(q^(-1) mod 2^32) * 2^31 = 923104^232 * 450429249 * 2^31
.word   18358601 // zeta^152 * 2^31 = 923104^152 * 2^31 = 40622603 * 2^31
.word 4292690807 // zeta^152 * f(q^(-1) mod 2^32) * 2^31 = 923104^152 * 450429249 * 2^31
.word   24477001 // zeta^216 * 2^31 = 923104^216 * 2^31 = 7374392 * 2^31
.word 2395793271 // zeta^216 * f(q^(-1) mod 2^32) * 2^31 = 923104^216 * 450429249 * 2^31
.word   35939115 // zeta^184 * 2^31 = 923104^184 * 2^31 = 34257499 * 2^31
.word 3807160085 // zeta^184 * f(q^(-1) mod 2^32) * 2^31 = 923104^184 * 450429249 * 2^31
.word     564659 // zeta^248 * 2^31 = 923104^248 * 2^31 = 13694133 * 2^31
.word  444023437 // zeta^248 * f(q^(-1) mod 2^32) * 2^31 = 923104^248 * 450429249 * 2^31
.word   62030715 // zeta^132 * 2^31 = 923104^132 * 2^31 = 7528360 * 2^31
.word 1810244293 // zeta^132 * f(q^(-1) mod 2^32) * 2^31 = 923104^132 * 450429249 * 2^31
.word   77015843 // zeta^196 * 2^31 = 923104^196 * 2^31 = 44464353 * 2^31
.word  533195037 // zeta^196 * f(q^(-1) mod 2^32) * 2^31 = 923104^196 * 450429249 * 2^31
.word   55625319 // zeta^164 * 2^31 = 923104^164 * 2^31 = 8315523 * 2^31
.word  879245529 // zeta^164 * f(q^(-1) mod 2^32) * 2^31 = 923104^164 * 450429249 * 2^31
.word    7390683 // zeta^228 * 2^31 = 923104^228 * 2^31 = 32879086 * 2^31
.word 2113202277 // zeta^228 * f(q^(-1) mod 2^32) * 2^31 = 923104^228 * 450429249 * 2^31
.word   58468163 // zeta^148 * 2^31 = 923104^148 * 2^31 = 41555766 * 2^31
.word 2340930813 // zeta^148 * f(q^(-1) mod 2^32) * 2^31 = 923104^148 * 450429249 * 2^31
.word   17679719 // zeta^212 * 2^31 = 923104^212 * 2^31 = 41180625 * 2^31
.word 3815537113 // zeta^212 * f(q^(-1) mod 2^32) * 2^31 = 923104^212 * 450429249 * 2^31
.word   42339307 // zeta^180 * 2^31 = 923104^180 * 2^31 = 21017569 * 2^31
.word 3719827029 // zeta^180 * f(q^(-1) mod 2^32) * 2^31 = 923104^180 * 450429249 * 2^31
.word   15723483 // zeta^244 * 2^31 = 923104^244 * 2^31 = 7442670 * 2^31
.word 2827371109 // zeta^244 * f(q^(-1) mod 2^32) * 2^31 = 923104^244 * 450429249 * 2^31
.word   41907357 // zeta^140 * 2^31 = 923104^140 * 2^31 = 39347706 * 2^31
.word  320456483 // zeta^140 * f(q^(-1) mod 2^32) * 2^31 = 923104^140 * 450429249 * 2^31
.word   69508093 // zeta^204 * 2^31 = 923104^204 * 2^31 = 18717972 * 2^31
.word 3802359747 // zeta^204 * f(q^(-1) mod 2^32) * 2^31 = 923104^204 * 450429249 * 2^31
.word   26393547 // zeta^172 * 2^31 = 923104^172 * 2^31 = 21614409 * 2^31
.word  971998837 // zeta^172 * f(q^(-1) mod 2^32) * 2^31 = 923104^172 * 450429249 * 2^31
.word   61987475 // zeta^236 * 2^31 = 923104^236 * 2^31 = 2124617 * 2^31
.word  694283693 // zeta^236 * f(q^(-1) mod 2^32) * 2^31 = 923104^236 * 450429249 * 2^31
.word   83935387 // zeta^156 * 2^31 = 923104^156 * 2^31 = 42671054 * 2^31
.word 3098246565 // zeta^156 * f(q^(-1) mod 2^32) * 2^31 = 923104^156 * 450429249 * 2^31
.word   79074821 // zeta^220 * 2^31 = 923104^220 * 2^31 = 29176994 * 2^31
.word 1792074683 // zeta^220 * f(q^(-1) mod 2^32) * 2^31 = 923104^220 * 450429249 * 2^31
.word   78380837 // zeta^188 * 2^31 = 923104^188 * 2^31 = 22954173 * 2^31
.word  469242523 // zeta^188 * f(q^(-1) mod 2^32) * 2^31 = 923104^188 * 450429249 * 2^31
.word   54812805 // zeta^252 * 2^31 = 923104^252 * 2^31 = 21362477 * 2^31
.word 2491808059 // zeta^252 * f(q^(-1) mod 2^32) * 2^31 = 923104^252 * 450429249 * 2^31
.word   27870577 // zeta^256 * 2^31 = 923104^256 * 2^31 = 27201076 * 2^31
.word 2482433359 // zeta^256 * f(q^(-1) mod 2^32) * 2^31 = 923104^256 * 450429249 * 2^31
.word   52089767 // zeta^320 * 2^31 = 923104^320 * 2^31 = 27201077 * 2^31
.word 3167591321 // zeta^320 * f(q^(-1) mod 2^32) * 2^31 = 923104^320 * 450429249 * 2^31
.word   59919785 // zeta^288 * 2^31 = 923104^288 * 2^31 = 30649039 * 2^31
.word 2269880087 // zeta^288 * f(q^(-1) mod 2^32) * 2^31 = 923104^288 * 450429249 * 2^31
.word   63300737 // zeta^352 * 2^31 = 923104^352 * 2^31 = 1638033 * 2^31
.word 2038659647 // zeta^352 * f(q^(-1) mod 2^32) * 2^31 = 923104^352 * 450429249 * 2^31
.word   55430137 // zeta^272 * 2^31 = 923104^272 * 2^31 = 6908982 * 2^31
.word 2875342023 // zeta^272 * f(q^(-1) mod 2^32) * 2^31 = 923104^272 * 450429249 * 2^31
.word   15411397 // zeta^336 * 2^31 = 923104^336 * 2^31 = 13864138 * 2^31
.word 1210376443 // zeta^336 * f(q^(-1) mod 2^32) * 2^31 = 923104^336 * 450429249 * 2^31
.word   54828529 // zeta^304 * 2^31 = 923104^304 * 2^31 = 29125862 * 2^31
.word 2343367887 // zeta^304 * f(q^(-1) mod 2^32) * 2^31 = 923104^304 * 450429249 * 2^31
.word   43495169 // zeta^368 * 2^31 = 923104^368 * 2^31 = 24079121 * 2^31
.word 1307873215 // zeta^368 * f(q^(-1) mod 2^32) * 2^31 = 923104^368 * 450429249 * 2^31
.word   50939965 // zeta^264 * 2^31 = 923104^264 * 2^31 = 24372017 * 2^31
.word 3282529155 // zeta^264 * f(q^(-1) mod 2^32) * 2^31 = 923104^264 * 450429249 * 2^31
.word   59999297 // zeta^328 * 2^31 = 923104^328 * 2^31 = 41249115 * 2^31
.word 3471714943 // zeta^328 * f(q^(-1) mod 2^32) * 2^31 = 923104^328 * 450429249 * 2^31
.word    9148883 // zeta^296 * 2^31 = 923104^296 * 2^31 = 12104035 * 2^31
.word 2132352621 // zeta^296 * f(q^(-1) mod 2^32) * 2^31 = 923104^296 * 450429249 * 2^31
.word   10320349 // zeta^360 * 2^31 = 923104^360 * 2^31 = 15734276 * 2^31
.word 2083860963 // zeta^360 * f(q^(-1) mod 2^32) * 2^31 = 923104^360 * 450429249 * 2^31
.word   51505857 // zeta^280 * 2^31 = 923104^280 * 2^31 = 12139246 * 2^31
.word 2398069759 // zeta^280 * f(q^(-1) mod 2^32) * 2^31 = 923104^280 * 450429249 * 2^31
.word   72416313 // zeta^344 * 2^31 = 923104^344 * 2^31 = 4764854 * 2^31
.word    2276487 // zeta^344 * f(q^(-1) mod 2^32) * 2^31 = 923104^344 * 450429249 * 2^31
.word   10013001 // zeta^312 * 2^31 = 923104^312 * 2^31 = 24824091 * 2^31
.word  931830647 // zeta^312 * f(q^(-1) mod 2^32) * 2^31 = 923104^312 * 450429249 * 2^31
.word   54835799 // zeta^376 * 2^31 = 923104^376 * 2^31 = 11129958 * 2^31
.word  487807209 // zeta^376 * f(q^(-1) mod 2^32) * 2^31 = 923104^376 * 450429249 * 2^31
.word   60372585 // zeta^260 * 2^31 = 923104^260 * 2^31 = 36935993 * 2^31
.word 3017918039 // zeta^260 * f(q^(-1) mod 2^32) * 2^31 = 923104^260 * 450429249 * 2^31
.word   28744199 // zeta^324 * 2^31 = 923104^324 * 2^31 = 37859097 * 2^31
.word 2484723001 // zeta^324 * f(q^(-1) mod 2^32) * 2^31 = 923104^324 * 450429249 * 2^31
.word   87927735 // zeta^292 * 2^31 = 923104^292 * 2^31 = 24563563 * 2^31
.word 1233956745 // zeta^292 * f(q^(-1) mod 2^32) * 2^31 = 923104^292 * 450429249 * 2^31
.word   35149595 // zeta^356 * 2^31 = 923104^356 * 2^31 = 37071934 * 2^31
.word 3415721765 // zeta^356 * f(q^(-1) mod 2^32) * 2^31 = 923104^356 * 450429249 * 2^31
.word    4599013 // zeta^276 * 2^31 = 923104^276 * 2^31 = 45012316 * 2^31
.word 1474606299 // zeta^276 * f(q^(-1) mod 2^32) * 2^31 = 923104^276 * 450429249 * 2^31
.word   32306751 // zeta^340 * 2^31 = 923104^340 * 2^31 = 3831691 * 2^31
.word 1954036481 // zeta^340 * f(q^(-1) mod 2^32) * 2^31 = 923104^340 * 450429249 * 2^31
.word   18771633 // zeta^308 * 2^31 = 923104^308 * 2^31 = 31812558 * 2^31
.word 3402511375 // zeta^308 * f(q^(-1) mod 2^32) * 2^31 = 923104^308 * 450429249 * 2^31
.word   48435607 // zeta^372 * 2^31 = 923104^372 * 2^31 = 24369888 * 2^31
.word  575140265 // zeta^372 * f(q^(-1) mod 2^32) * 2^31 = 923104^372 * 450429249 * 2^31
.word   72988193 // zeta^268 * 2^31 = 923104^268 * 2^31 = 24757723 * 2^31
.word 3481903263 // zeta^268 * f(q^(-1) mod 2^32) * 2^31 = 923104^268 * 450429249 * 2^31
.word   48867557 // zeta^332 * 2^31 = 923104^332 * 2^31 = 6039751 * 2^31
.word 3974510811 // zeta^332 * f(q^(-1) mod 2^32) * 2^31 = 923104^332 * 450429249 * 2^31
.word   80981385 // zeta^300 * 2^31 = 923104^300 * 2^31 = 25897665 * 2^31
.word 4017252151 // zeta^300 * f(q^(-1) mod 2^32) * 2^31 = 923104^300 * 450429249 * 2^31
.word   64381367 // zeta^364 * 2^31 = 923104^364 * 2^31 = 23773048 * 2^31
.word 3322968457 // zeta^364 * f(q^(-1) mod 2^32) * 2^31 = 923104^364 * 450429249 * 2^31
.word   40526891 // zeta^284 * 2^31 = 923104^284 * 2^31 = 31893397 * 2^31
.word 2988795413 // zeta^284 * f(q^(-1) mod 2^32) * 2^31 = 923104^284 * 450429249 * 2^31
.word    6839527 // zeta^348 * 2^31 = 923104^348 * 2^31 = 2716403 * 2^31
.word 1196720729 // zeta^348 * f(q^(-1) mod 2^32) * 2^31 = 923104^348 * 450429249 * 2^31
.word   21819425 // zeta^316 * 2^31 = 923104^316 * 2^31 = 43795761 * 2^31
.word 2022565535 // zeta^316 * f(q^(-1) mod 2^32) * 2^31 = 923104^316 * 450429249 * 2^31
.word   12394077 // zeta^380 * 2^31 = 923104^380 * 2^31 = 22433284 * 2^31
.word 3825724771 // zeta^380 * f(q^(-1) mod 2^32) * 2^31 = 923104^380 * 450429249 * 2^31
// End of twiddles for base multiplication

.global ntt_384_u32_45387457_923104_incomplete_good_scale
ntt_384_u32_45387457_923104_incomplete_good_scale: // Constants for scaling by 1/N
.word 69606647 // 1/96
.word 685157961 // 1/96 twisted
.data
roots:
.word   22090505 /// zeta^256 * 2^31 = 923104^256 * 2^31 = 27201076 * 2^31
.word 1287004599 /// zeta^256 * f(q^(-1) mod 2^32) * 2^31 = 923104^256 * 450429249 * 2^31
.word    9023783 /// zeta^128 * 2^31 = 923104^128 * 2^31 = 18186380 * 2^31
.word  860479001 /// zeta^128 * f(q^(-1) mod 2^32) * 2^31 = 923104^128 * 450429249 * 2^31
.word   14273169 // zeta^  0 * 2^31 = 923104^  0 * 2^31 = 1 * 2^31
.word 2147483695 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 923104^  0 * 450429249 * 2^31
.word   14273169 // zeta^  0 * 2^31 = 923104^  0 * 2^31 = 1 * 2^31
.word 2147483695 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 923104^  0 * 450429249 * 2^31
.word   78782351 // zeta^288 * 2^31 = 923104^288 * 2^31 = 30649039 * 2^31
.word 3597626801 // zeta^288 * f(q^(-1) mod 2^32) * 2^31 = 923104^288 * 450429249 * 2^31
.word   14273169 // zeta^  0 * 2^31 = 923104^  0 * 2^31 = 1 * 2^31
.word 2147483695 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 923104^  0 * 450429249 * 2^31
.word   14273169 // zeta^  0 * 2^31 = 923104^  0 * 2^31 = 1 * 2^31
.word 2147483695 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 923104^  0 * 450429249 * 2^31
.word   78782351 // zeta^288 * 2^31 = 923104^288 * 2^31 = 30649039 * 2^31
.word 3597626801 // zeta^288 * f(q^(-1) mod 2^32) * 2^31 = 923104^288 * 450429249 * 2^31
.word   78782351 // zeta^288 * 2^31 = 923104^288 * 2^31 = 30649039 * 2^31
.word 3597626801 // zeta^288 * f(q^(-1) mod 2^32) * 2^31 = 923104^288 * 450429249 * 2^31
.word   88323005 // zeta^144 * 2^31 = 923104^144 * 2^31 = 31523319 * 2^31
.word 3638992899 // zeta^144 * f(q^(-1) mod 2^32) * 2^31 = 923104^144 * 450429249 * 2^31
.word   84188761 // zeta^ 48 * 2^31 = 923104^ 48 * 2^31 = 40340716 * 2^31
.word 1908699751 // zeta^ 48 * f(q^(-1) mod 2^32) * 2^31 = 923104^ 48 * 450429249 * 2^31
.word   88323005 // zeta^144 * 2^31 = 923104^144 * 2^31 = 31523319 * 2^31
.word 3638992899 // zeta^144 * f(q^(-1) mod 2^32) * 2^31 = 923104^144 * 450429249 * 2^31
.word   16804439 // zeta^264 * 2^31 = 923104^264 * 2^31 = 24372017 * 2^31
.word 3300632809 // zeta^264 * f(q^(-1) mod 2^32) * 2^31 = 923104^264 * 450429249 * 2^31
.word   19157039 // zeta^168 * 2^31 = 923104^168 * 2^31 = 29653181 * 2^31
.word 3550508305 // zeta^168 * f(q^(-1) mod 2^32) * 2^31 = 923104^168 * 450429249 * 2^31
.word   84188761 // zeta^ 48 * 2^31 = 923104^ 48 * 2^31 = 40340716 * 2^31
.word 1908699751 // zeta^ 48 * f(q^(-1) mod 2^32) * 2^31 = 923104^ 48 * 450429249 * 2^31
.word   65804887 // zeta^ 24 * 2^31 = 923104^ 24 * 2^31 = 38013065 * 2^31
.word 3946051817 // zeta^ 24 * f(q^(-1) mod 2^32) * 2^31 = 923104^ 24 * 450429249 * 2^31
.word   82969997 // zeta^312 * 2^31 = 923104^312 * 2^31 = 24824091 * 2^31
.word 3322022451 // zeta^312 * f(q^(-1) mod 2^32) * 2^31 = 923104^312 * 450429249 * 2^31
.word   14273169 // XX: zeta^  0 * 2^31 = 923104^  0 * 2^31 = 1 * 2^31
.word 2147483695 /// zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 923104^  0 * 450429249 * 2^31
.word   78782351 // XX: zeta^288 * 2^31 = 923104^288 * 2^31 = 30649039 * 2^31
.word 3597626801 /// zeta^288 * f(q^(-1) mod 2^32) * 2^31 = 923104^288 * 450429249 * 2^31
.word   88323005 // XX: zeta^144 * 2^31 = 923104^144 * 2^31 = 31523319 * 2^31
.word 3638992899 /// zeta^144 * f(q^(-1) mod 2^32) * 2^31 = 923104^144 * 450429249 * 2^31
.word   84188761 // XX: zeta^ 48 * 2^31 = 923104^ 48 * 2^31 = 40340716 * 2^31
.word 1908699751 /// zeta^ 48 * f(q^(-1) mod 2^32) * 2^31 = 923104^ 48 * 450429249 * 2^31
.word   16804439 // XX: zeta^264 * 2^31 = 923104^264 * 2^31 = 24372017 * 2^31
.word 3300632809 /// zeta^264 * f(q^(-1) mod 2^32) * 2^31 = 923104^264 * 450429249 * 2^31
.word   19157039 // XX: zeta^168 * 2^31 = 923104^168 * 2^31 = 29653181 * 2^31
.word 3550508305 /// zeta^168 * f(q^(-1) mod 2^32) * 2^31 = 923104^168 * 450429249 * 2^31
.word   65804887 // XX: zeta^ 24 * 2^31 = 923104^ 24 * 2^31 = 38013065 * 2^31
.word 3946051817 /// zeta^ 24 * f(q^(-1) mod 2^32) * 2^31 = 923104^ 24 * 450429249 * 2^31
.word   82969997 // XX: zeta^312 * 2^31 = 923104^312 * 2^31 = 24824091 * 2^31
.word 3322022451 /// zeta^312 * f(q^(-1) mod 2^32) * 2^31 = 923104^312 * 450429249 * 2^31
.word   66361593 // XX: zeta^132 * 2^31 = 923104^132 * 2^31 = 7528360 * 2^31
.word  356200391 /// zeta^132 * f(q^(-1) mod 2^32) * 2^31 = 923104^132 * 450429249 * 2^31
.word   80165521 // XX: zeta^ 36 * 2^31 = 923104^ 36 * 2^31 = 12508371 * 2^31
.word 2739310639 /// zeta^ 36 * f(q^(-1) mod 2^32) * 2^31 = 923104^ 36 * 450429249 * 2^31
.word   88960289 // XX: zeta^276 * 2^31 = 923104^276 * 2^31 = 45012316 * 2^31
.word 2129734047 /// zeta^276 * f(q^(-1) mod 2^32) * 2^31 = 923104^276 * 450429249 * 2^31
.word    6563629 // XX: zeta^180 * 2^31 = 923104^180 * 2^31 = 21017569 * 2^31
.word 3141918867 /// zeta^180 * f(q^(-1) mod 2^32) * 2^31 = 923104^180 * 450429249 * 2^31
.word     482773 // XX: zeta^ 12 * 2^31 = 923104^ 12 * 2^31 = 26669485 * 2^31
.word 3409336299 /// zeta^ 12 * f(q^(-1) mod 2^32) * 2^31 = 923104^ 12 * 450429249 * 2^31
.word   35973319 // XX: zeta^300 * 2^31 = 923104^300 * 2^31 = 25897665 * 2^31
.word 3372818041 /// zeta^300 * f(q^(-1) mod 2^32) * 2^31 = 923104^300 * 450429249 * 2^31
.word   11401659 // XX: zeta^156 * 2^31 = 923104^156 * 2^31 = 42671054 * 2^31
.word 2018958469 /// zeta^156 * f(q^(-1) mod 2^32) * 2^31 = 923104^156 * 450429249 * 2^31
.word   59173881 // XX: zeta^ 60 * 2^31 = 923104^ 60 * 2^31 = 24024980 * 2^31
.word 1136729287 /// zeta^ 60 * f(q^(-1) mod 2^32) * 2^31 = 923104^ 60 * 450429249 * 2^31
.text
.align 4
roots_addr: .word roots
.syntax unified
.type ntt_384_u32_45387457_923104_incomplete_good, %function
.global ntt_384_u32_45387457_923104_incomplete_good
ntt_384_u32_45387457_923104_incomplete_good:
// Save GPRs
push {r4-r11,lr}
// Save MVE vector registers
vpush {d8-d15}
// Use r14 as marker for r0 + 1008
add r14, r0, #1008
// Use r12 as marker for r0 + 2016
add r12, r14, #1008
.equ modulus, 45387457
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
.equ modulus_inv, 3844538047
movw r9, #:lower16:modulus_inv
movt r9, #:upper16:modulus_inv
// Restore MVE vector registers
vpop {d8-d15}
// Restore GPRs
pop {r4-r11,lr}
bx lr

// Line count:        3350
// Instruction count: 2395