
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
roots:
.word   32909249 // zeta^  0 * 2^31 = 21224105^  0 * 2^31 = 1 * 2^31
.word 2147483711 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 21224105^  0 * 71292929 * 2^31
.word   32909249 // zeta^  0 * 2^31 = 21224105^  0 * 2^31 = 1 * 2^31
.word 2147483711 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 21224105^  0 * 71292929 * 2^31
.word   35458195 // zeta^128 * 2^31 = 21224105^128 * 2^31 = 6057702 * 2^31
.word  387574637 // zeta^128 * f(q^(-1) mod 2^32) * 2^31 = 21224105^128 * 71292929 * 2^31
.word   35458195 // zeta^128 * 2^31 = 21224105^128 * 2^31 = 6057702 * 2^31
.word  387574637 // zeta^128 * f(q^(-1) mod 2^32) * 2^31 = 21224105^128 * 71292929 * 2^31
.word   44770213 // zeta^ 64 * 2^31 = 21224105^ 64 * 2^31 = 16166358 * 2^31
.word 1034331227 // zeta^ 64 * f(q^(-1) mod 2^32) * 2^31 = 21224105^ 64 * 71292929 * 2^31
.word    3545473 // zeta^192 * 2^31 = 21224105^192 * 2^31 = 4070676 * 2^31
.word  260443775 // zeta^192 * f(q^(-1) mod 2^32) * 2^31 = 21224105^192 * 71292929 * 2^31
.word   32909249 // zeta^  0 * 2^31 = 21224105^  0 * 2^31 = 1 * 2^31
.word 2147483711 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 21224105^  0 * 71292929 * 2^31
.word   32909249 // zeta^  0 * 2^31 = 21224105^  0 * 2^31 = 1 * 2^31
.word 2147483711 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 21224105^  0 * 71292929 * 2^31
.word   35458195 // zeta^128 * 2^31 = 21224105^128 * 2^31 = 6057702 * 2^31
.word  387574637 // zeta^128 * f(q^(-1) mod 2^32) * 2^31 = 21224105^128 * 71292929 * 2^31
.word   35458195 // zeta^128 * 2^31 = 21224105^128 * 2^31 = 6057702 * 2^31
.word  387574637 // zeta^128 * f(q^(-1) mod 2^32) * 2^31 = 21224105^128 * 71292929 * 2^31
.word   44770213 // zeta^ 64 * 2^31 = 21224105^ 64 * 2^31 = 16166358 * 2^31
.word 1034331227 // zeta^ 64 * f(q^(-1) mod 2^32) * 2^31 = 21224105^ 64 * 71292929 * 2^31
.word    3545473 // zeta^192 * 2^31 = 21224105^192 * 2^31 = 4070676 * 2^31
.word  260443775 // zeta^192 * f(q^(-1) mod 2^32) * 2^31 = 21224105^192 * 71292929 * 2^31
.word   44770213 // zeta^ 64 * 2^31 = 21224105^ 64 * 2^31 = 16166358 * 2^31
.word 1034331227 // zeta^ 64 * f(q^(-1) mod 2^32) * 2^31 = 21224105^ 64 * 71292929 * 2^31
.word   20108763 // zeta^ 32 * 2^31 = 21224105^ 32 * 2^31 = 3531198 * 2^31
.word  225927717 // zeta^ 32 * f(q^(-1) mod 2^32) * 2^31 = 21224105^ 32 * 71292929 * 2^31
.word   16155699 // zeta^160 * 2^31 = 21224105^160 * 2^31 = 11260731 * 2^31
.word 2867950541 // zeta^160 * f(q^(-1) mod 2^32) * 2^31 = 21224105^160 * 71292929 * 2^31
.word    3545473 // zeta^192 * 2^31 = 21224105^192 * 2^31 = 4070676 * 2^31
.word  260443775 // zeta^192 * f(q^(-1) mod 2^32) * 2^31 = 21224105^192 * 71292929 * 2^31
.word   23777969 // zeta^ 96 * 2^31 = 21224105^ 96 * 2^31 = 16586522 * 2^31
.word 1061213519 // zeta^ 96 * f(q^(-1) mod 2^32) * 2^31 = 21224105^ 96 * 71292929 * 2^31
.word   43443635 // zeta^224 * 2^31 = 21224105^224 * 2^31 = 23220214 * 2^31
.word 1485640269 // zeta^224 * f(q^(-1) mod 2^32) * 2^31 = 21224105^224 * 71292929 * 2^31
.word   20108763 // zeta^ 32 * 2^31 = 21224105^ 32 * 2^31 = 3531198 * 2^31
.word  225927717 // zeta^ 32 * f(q^(-1) mod 2^32) * 2^31 = 21224105^ 32 * 71292929 * 2^31
.word   56312659 // zeta^ 16 * 2^31 = 21224105^ 16 * 2^31 = 7974996 * 2^31
.word  510244013 // zeta^ 16 * f(q^(-1) mod 2^32) * 2^31 = 21224105^ 16 * 71292929 * 2^31
.word   50428539 // zeta^144 * 2^31 = 21224105^144 * 2^31 = 11900197 * 2^31
.word 2908863877 // zeta^144 * f(q^(-1) mod 2^32) * 2^31 = 21224105^144 * 71292929 * 2^31
.word   16155699 // zeta^160 * 2^31 = 21224105^160 * 2^31 = 11260731 * 2^31
.word 2867950541 // zeta^160 * f(q^(-1) mod 2^32) * 2^31 = 21224105^160 * 71292929 * 2^31
.word   40872355 // zeta^ 80 * 2^31 = 21224105^ 80 * 2^31 = 32337348 * 2^31
.word 2068958813 // zeta^ 80 * f(q^(-1) mod 2^32) * 2^31 = 21224105^ 80 * 71292929 * 2^31
.word   17505197 // zeta^208 * 2^31 = 21224105^208 * 2^31 = 7350388 * 2^31
.word  470281299 // zeta^208 * f(q^(-1) mod 2^32) * 2^31 = 21224105^208 * 71292929 * 2^31
.word   23777969 // zeta^ 96 * 2^31 = 21224105^ 96 * 2^31 = 16586522 * 2^31
.word 1061213519 // zeta^ 96 * f(q^(-1) mod 2^32) * 2^31 = 21224105^ 96 * 71292929 * 2^31
.word   29514841 // zeta^ 48 * 2^31 = 21224105^ 48 * 2^31 = 25808113 * 2^31
.word 3798698919 // zeta^ 48 * f(q^(-1) mod 2^32) * 2^31 = 21224105^ 48 * 71292929 * 2^31
.word   46171693 // zeta^176 * 2^31 = 21224105^176 * 2^31 = 21754869 * 2^31
.word 3539370451 // zeta^176 * f(q^(-1) mod 2^32) * 2^31 = 21224105^176 * 71292929 * 2^31
.word   43443635 // zeta^224 * 2^31 = 21224105^224 * 2^31 = 23220214 * 2^31
.word 1485640269 // zeta^224 * f(q^(-1) mod 2^32) * 2^31 = 21224105^224 * 71292929 * 2^31
.word   49378579 // zeta^112 * 2^31 = 21224105^112 * 2^31 = 10121756 * 2^31
.word  647594733 // zeta^112 * f(q^(-1) mod 2^32) * 2^31 = 21224105^112 * 71292929 * 2^31
.word   37299575 // zeta^240 * 2^31 = 21224105^240 * 2^31 = 13079905 * 2^31
.word 2984342153 // zeta^240 * f(q^(-1) mod 2^32) * 2^31 = 21224105^240 * 71292929 * 2^31
.word   32909249 // zeta^  0 * 2^31 = 21224105^  0 * 2^31 = 1 * 2^31
.word 2147483711 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 21224105^  0 * 71292929 * 2^31
.word   32909249 // zeta^  0 * 2^31 = 21224105^  0 * 2^31 = 1 * 2^31
.word 2147483711 // zeta^  0 * f(q^(-1) mod 2^32) * 2^31 = 21224105^  0 * 71292929 * 2^31
.word   35458195 // zeta^128 * 2^31 = 21224105^128 * 2^31 = 6057702 * 2^31
.word  387574637 // zeta^128 * f(q^(-1) mod 2^32) * 2^31 = 21224105^128 * 71292929 * 2^31
.word   35458195 // zeta^128 * 2^31 = 21224105^128 * 2^31 = 6057702 * 2^31
.word  387574637 // zeta^128 * f(q^(-1) mod 2^32) * 2^31 = 21224105^128 * 71292929 * 2^31
.word   44770213 // zeta^ 64 * 2^31 = 21224105^ 64 * 2^31 = 16166358 * 2^31
.word 1034331227 // zeta^ 64 * f(q^(-1) mod 2^32) * 2^31 = 21224105^ 64 * 71292929 * 2^31
.word    3545473 // zeta^192 * 2^31 = 21224105^192 * 2^31 = 4070676 * 2^31
.word  260443775 // zeta^192 * f(q^(-1) mod 2^32) * 2^31 = 21224105^192 * 71292929 * 2^31
.word   44770213 // zeta^ 64 * 2^31 = 21224105^ 64 * 2^31 = 16166358 * 2^31
.word 1034331227 // zeta^ 64 * f(q^(-1) mod 2^32) * 2^31 = 21224105^ 64 * 71292929 * 2^31
.word   20108763 // zeta^ 32 * 2^31 = 21224105^ 32 * 2^31 = 3531198 * 2^31
.word  225927717 // zeta^ 32 * f(q^(-1) mod 2^32) * 2^31 = 21224105^ 32 * 71292929 * 2^31
.word   16155699 // zeta^160 * 2^31 = 21224105^160 * 2^31 = 11260731 * 2^31
.word 2867950541 // zeta^160 * f(q^(-1) mod 2^32) * 2^31 = 21224105^160 * 71292929 * 2^31
.word    3545473 // zeta^192 * 2^31 = 21224105^192 * 2^31 = 4070676 * 2^31
.word  260443775 // zeta^192 * f(q^(-1) mod 2^32) * 2^31 = 21224105^192 * 71292929 * 2^31
.word   23777969 // zeta^ 96 * 2^31 = 21224105^ 96 * 2^31 = 16586522 * 2^31
.word 1061213519 // zeta^ 96 * f(q^(-1) mod 2^32) * 2^31 = 21224105^ 96 * 71292929 * 2^31
.word   43443635 // zeta^224 * 2^31 = 21224105^224 * 2^31 = 23220214 * 2^31
.word 1485640269 // zeta^224 * f(q^(-1) mod 2^32) * 2^31 = 21224105^224 * 71292929 * 2^31
.word   20108763 // zeta^ 32 * 2^31 = 21224105^ 32 * 2^31 = 3531198 * 2^31
.word  225927717 // zeta^ 32 * f(q^(-1) mod 2^32) * 2^31 = 21224105^ 32 * 71292929 * 2^31
.word   56312659 // zeta^ 16 * 2^31 = 21224105^ 16 * 2^31 = 7974996 * 2^31
.word  510244013 // zeta^ 16 * f(q^(-1) mod 2^32) * 2^31 = 21224105^ 16 * 71292929 * 2^31
.word   50428539 // zeta^144 * 2^31 = 21224105^144 * 2^31 = 11900197 * 2^31
.word 2908863877 // zeta^144 * f(q^(-1) mod 2^32) * 2^31 = 21224105^144 * 71292929 * 2^31
.word   16155699 // zeta^160 * 2^31 = 21224105^160 * 2^31 = 11260731 * 2^31
.word 2867950541 // zeta^160 * f(q^(-1) mod 2^32) * 2^31 = 21224105^160 * 71292929 * 2^31
.word   40872355 // zeta^ 80 * 2^31 = 21224105^ 80 * 2^31 = 32337348 * 2^31
.word 2068958813 // zeta^ 80 * f(q^(-1) mod 2^32) * 2^31 = 21224105^ 80 * 71292929 * 2^31
.word   17505197 // zeta^208 * 2^31 = 21224105^208 * 2^31 = 7350388 * 2^31
.word  470281299 // zeta^208 * f(q^(-1) mod 2^32) * 2^31 = 21224105^208 * 71292929 * 2^31
.word   23777969 // zeta^ 96 * 2^31 = 21224105^ 96 * 2^31 = 16586522 * 2^31
.word 1061213519 // zeta^ 96 * f(q^(-1) mod 2^32) * 2^31 = 21224105^ 96 * 71292929 * 2^31
.word   29514841 // zeta^ 48 * 2^31 = 21224105^ 48 * 2^31 = 25808113 * 2^31
.word 3798698919 // zeta^ 48 * f(q^(-1) mod 2^32) * 2^31 = 21224105^ 48 * 71292929 * 2^31
.word   46171693 // zeta^176 * 2^31 = 21224105^176 * 2^31 = 21754869 * 2^31
.word 3539370451 // zeta^176 * f(q^(-1) mod 2^32) * 2^31 = 21224105^176 * 71292929 * 2^31
.word   43443635 // zeta^224 * 2^31 = 21224105^224 * 2^31 = 23220214 * 2^31
.word 1485640269 // zeta^224 * f(q^(-1) mod 2^32) * 2^31 = 21224105^224 * 71292929 * 2^31
.word   49378579 // zeta^112 * 2^31 = 21224105^112 * 2^31 = 10121756 * 2^31
.word  647594733 // zeta^112 * f(q^(-1) mod 2^32) * 2^31 = 21224105^112 * 71292929 * 2^31
.word   37299575 // zeta^240 * 2^31 = 21224105^240 * 2^31 = 13079905 * 2^31
.word 2984342153 // zeta^240 * f(q^(-1) mod 2^32) * 2^31 = 21224105^240 * 71292929 * 2^31
.word   56312659 // zeta^ 16 * 2^31 = 21224105^ 16 * 2^31 = 7974996 * 2^31
.word  510244013 // zeta^ 16 * f(q^(-1) mod 2^32) * 2^31 = 21224105^ 16 * 71292929 * 2^31
.word   35114601 // zeta^  8 * 2^31 = 21224105^  8 * 2^31 = 31442912 * 2^31
.word 2011732375 // zeta^  8 * f(q^(-1) mod 2^32) * 2^31 = 21224105^  8 * 71292929 * 2^31
.word   56661185 // zeta^136 * 2^31 = 21224105^136 * 2^31 = 25072687 * 2^31
.word 3751646015 // zeta^136 * f(q^(-1) mod 2^32) * 2^31 = 21224105^136 * 71292929 * 2^31
.word   50428539 // zeta^144 * 2^31 = 21224105^144 * 2^31 = 11900197 * 2^31
.word 2908863877 // zeta^144 * f(q^(-1) mod 2^32) * 2^31 = 21224105^144 * 71292929 * 2^31
.word   24798937 // zeta^ 72 * 2^31 = 21224105^ 72 * 2^31 = 1138528 * 2^31
.word   72843559 // zeta^ 72 * f(q^(-1) mod 2^32) * 2^31 = 21224105^ 72 * 71292929 * 2^31
.word    2433499 // zeta^200 * 2^31 = 21224105^200 * 2^31 = 27899289 * 2^31
.word 3932493349 // zeta^200 * f(q^(-1) mod 2^32) * 2^31 = 21224105^200 * 71292929 * 2^31
.word   40872355 // zeta^ 80 * 2^31 = 21224105^ 80 * 2^31 = 32337348 * 2^31
.word 2068958813 // zeta^ 80 * f(q^(-1) mod 2^32) * 2^31 = 21224105^ 80 * 71292929 * 2^31
.word   13509691 // zeta^ 40 * 2^31 = 21224105^ 40 * 2^31 = 15236728 * 2^31
.word  974853061 // zeta^ 40 * f(q^(-1) mod 2^32) * 2^31 = 21224105^ 40 * 71292929 * 2^31
.word   61528771 // zeta^168 * 2^31 = 21224105^168 * 2^31 = 29831683 * 2^31
.word 4056128829 // zeta^168 * f(q^(-1) mod 2^32) * 2^31 = 21224105^168 * 71292929 * 2^31
.word   17505197 // zeta^208 * 2^31 = 21224105^208 * 2^31 = 7350388 * 2^31
.word  470281299 // zeta^208 * f(q^(-1) mod 2^32) * 2^31 = 21224105^208 * 71292929 * 2^31
.word   26961583 // zeta^104 * 2^31 = 21224105^104 * 2^31 = 24829277 * 2^31
.word 3736072529 // zeta^104 * f(q^(-1) mod 2^32) * 2^31 = 21224105^104 * 71292929 * 2^31
.word   39914361 // zeta^232 * 2^31 = 21224105^232 * 2^31 = 26527504 * 2^31
.word 1697242247 // zeta^232 * f(q^(-1) mod 2^32) * 2^31 = 21224105^232 * 71292929 * 2^31
.word   29514841 // zeta^ 48 * 2^31 = 21224105^ 48 * 2^31 = 25808113 * 2^31
.word 3798698919 // zeta^ 48 * f(q^(-1) mod 2^32) * 2^31 = 21224105^ 48 * 71292929 * 2^31
.word   42427289 // zeta^ 24 * 2^31 = 21224105^ 24 * 2^31 = 23805553 * 2^31
.word 3670574183 // zeta^ 24 * f(q^(-1) mod 2^32) * 2^31 = 21224105^ 24 * 71292929 * 2^31
.word   22993529 // zeta^152 * 2^31 = 21224105^152 * 2^31 = 20588736 * 2^31
.word 1317277063 // zeta^152 * f(q^(-1) mod 2^32) * 2^31 = 21224105^152 * 71292929 * 2^31
.word   46171693 // zeta^176 * 2^31 = 21224105^176 * 2^31 = 21754869 * 2^31
.word 3539370451 // zeta^176 * f(q^(-1) mod 2^32) * 2^31 = 21224105^176 * 71292929 * 2^31
.word   12459675 // zeta^ 88 * 2^31 = 21224105^ 88 * 2^31 = 8729293 * 2^31
.word 2705987941 // zeta^ 88 * f(q^(-1) mod 2^32) * 2^31 = 21224105^ 88 * 71292929 * 2^31
.word   17297731 // zeta^216 * 2^31 = 21224105^216 * 2^31 = 25151509 * 2^31
.word 3756689085 // zeta^216 * f(q^(-1) mod 2^32) * 2^31 = 21224105^216 * 71292929 * 2^31
.word   49378579 // zeta^112 * 2^31 = 21224105^112 * 2^31 = 10121756 * 2^31
.word  647594733 // zeta^112 * f(q^(-1) mod 2^32) * 2^31 = 21224105^112 * 71292929 * 2^31
.word   51482787 // zeta^ 56 * 2^31 = 21224105^ 56 * 2^31 = 1778108 * 2^31
.word  113764189 // zeta^ 56 * f(q^(-1) mod 2^32) * 2^31 = 21224105^ 56 * 71292929 * 2^31
.word   47832419 // zeta^184 * 2^31 = 21224105^184 * 2^31 = 9175386 * 2^31
.word  587045533 // zeta^184 * f(q^(-1) mod 2^32) * 2^31 = 21224105^184 * 71292929 * 2^31
.word   37299575 // zeta^240 * 2^31 = 21224105^240 * 2^31 = 13079905 * 2^31
.word 2984342153 // zeta^240 * f(q^(-1) mod 2^32) * 2^31 = 21224105^240 * 71292929 * 2^31
.word   32696733 // zeta^120 * 2^31 = 21224105^120 * 2^31 = 6110658 * 2^31
.word  390962787 // zeta^120 * f(q^(-1) mod 2^32) * 2^31 = 21224105^120 * 71292929 * 2^31
.word   16328205 // zeta^248 * 2^31 = 21224105^248 * 2^31 = 14087250 * 2^31
.word  901308915 // zeta^248 * f(q^(-1) mod 2^32) * 2^31 = 21224105^248 * 71292929 * 2^31
.word   35114601 // zeta^  8 * 2^31 = 21224105^  8 * 2^31 = 31442912 * 2^31
.word 2011732375 // zeta^  8 * f(q^(-1) mod 2^32) * 2^31 = 21224105^  8 * 71292929 * 2^31
.word    7271765 // zeta^  4 * 2^31 = 21224105^  4 * 2^31 = 11708223 * 2^31
.word 2896581291 // zeta^  4 * f(q^(-1) mod 2^32) * 2^31 = 21224105^  4 * 71292929 * 2^31
.word    9232849 // zeta^132 * 2^31 = 21224105^132 * 2^31 = 19531360 * 2^31
.word 1249625647 // zeta^132 * f(q^(-1) mod 2^32) * 2^31 = 21224105^132 * 71292929 * 2^31
.word   56661185 // zeta^136 * 2^31 = 21224105^136 * 2^31 = 25072687 * 2^31
.word 3751646015 // zeta^136 * f(q^(-1) mod 2^32) * 2^31 = 21224105^136 * 71292929 * 2^31
.word    5061807 // zeta^ 68 * 2^31 = 21224105^ 68 * 2^31 = 10863968 * 2^31
.word  695081809 // zeta^ 68 * f(q^(-1) mod 2^32) * 2^31 = 21224105^ 68 * 71292929 * 2^31
.word   12062383 // zeta^196 * 2^31 = 21224105^196 * 2^31 = 23554360 * 2^31
.word 1507019089 // zeta^196 * f(q^(-1) mod 2^32) * 2^31 = 21224105^196 * 71292929 * 2^31
.word   24798937 // zeta^ 72 * 2^31 = 21224105^ 72 * 2^31 = 1138528 * 2^31
.word   72843559 // zeta^ 72 * f(q^(-1) mod 2^32) * 2^31 = 21224105^ 72 * 71292929 * 2^31
.word   26674607 // zeta^ 36 * 2^31 = 21224105^ 36 * 2^31 = 29250598 * 2^31
.word 1871467089 // zeta^ 36 * f(q^(-1) mod 2^32) * 2^31 = 21224105^ 36 * 71292929 * 2^31
.word    6369225 // zeta^164 * 2^31 = 21224105^164 * 2^31 = 6512804 * 2^31
.word  416692279 // zeta^164 * f(q^(-1) mod 2^32) * 2^31 = 21224105^164 * 71292929 * 2^31
.word    2433499 // zeta^200 * 2^31 = 21224105^200 * 2^31 = 27899289 * 2^31
.word 3932493349 // zeta^200 * f(q^(-1) mod 2^32) * 2^31 = 21224105^200 * 71292929 * 2^31
.word   13877423 // zeta^100 * 2^31 = 21224105^100 * 2^31 = 11938968 * 2^31
.word  763860817 // zeta^100 * f(q^(-1) mod 2^32) * 2^31 = 21224105^100 * 71292929 * 2^31
.word   52182971 // zeta^228 * 2^31 = 21224105^228 * 2^31 = 3172265 * 2^31
.word 2350446661 // zeta^228 * f(q^(-1) mod 2^32) * 2^31 = 21224105^228 * 71292929 * 2^31
.word   13509691 // zeta^ 40 * 2^31 = 21224105^ 40 * 2^31 = 15236728 * 2^31
.word  974853061 // zeta^ 40 * f(q^(-1) mod 2^32) * 2^31 = 21224105^ 40 * 71292929 * 2^31
.word   26766019 // zeta^ 20 * 2^31 = 21224105^ 20 * 2^31 = 4808176 * 2^31
.word  307629373 // zeta^ 20 * f(q^(-1) mod 2^32) * 2^31 = 21224105^ 20 * 71292929 * 2^31
.word    3049295 // zeta^148 * 2^31 = 21224105^148 * 2^31 = 13952996 * 2^31
.word  892719281 // zeta^148 * f(q^(-1) mod 2^32) * 2^31 = 21224105^148 * 71292929 * 2^31
.word   61528771 // zeta^168 * 2^31 = 21224105^168 * 2^31 = 29831683 * 2^31
.word 4056128829 // zeta^168 * f(q^(-1) mod 2^32) * 2^31 = 21224105^168 * 71292929 * 2^31
.word   27572075 // zeta^ 84 * 2^31 = 21224105^ 84 * 2^31 = 13705304 * 2^31
.word  876871829 // zeta^ 84 * f(q^(-1) mod 2^32) * 2^31 = 21224105^ 84 * 71292929 * 2^31
.word   62852605 // zeta^212 * 2^31 = 21224105^212 * 2^31 = 26009832 * 2^31
.word 1664121347 // zeta^212 * f(q^(-1) mod 2^32) * 2^31 = 21224105^212 * 71292929 * 2^31
.word   26961583 // zeta^104 * 2^31 = 21224105^104 * 2^31 = 24829277 * 2^31
.word 3736072529 // zeta^104 * f(q^(-1) mod 2^32) * 2^31 = 21224105^104 * 71292929 * 2^31
.word   41037815 // zeta^ 52 * 2^31 = 21224105^ 52 * 2^31 = 32331817 * 2^31
.word 4216088585 // zeta^ 52 * f(q^(-1) mod 2^32) * 2^31 = 21224105^ 52 * 71292929 * 2^31
.word   16612991 // zeta^180 * 2^31 = 21224105^180 * 2^31 = 33308953 * 2^31
.word 4278606209 // zeta^180 * f(q^(-1) mod 2^32) * 2^31 = 21224105^180 * 71292929 * 2^31
.word   39914361 // zeta^232 * 2^31 = 21224105^232 * 2^31 = 26527504 * 2^31
.word 1697242247 // zeta^232 * f(q^(-1) mod 2^32) * 2^31 = 21224105^232 * 71292929 * 2^31
.word   32973157 // zeta^116 * 2^31 = 21224105^116 * 2^31 = 12062971 * 2^31
.word 2919278235 // zeta^116 * f(q^(-1) mod 2^32) * 2^31 = 21224105^116 * 71292929 * 2^31
.word   36139229 // zeta^244 * 2^31 = 21224105^244 * 2^31 = 32576304 * 2^31
.word 2084247331 // zeta^244 * f(q^(-1) mod 2^32) * 2^31 = 21224105^244 * 71292929 * 2^31
.word   42427289 // zeta^ 24 * 2^31 = 21224105^ 24 * 2^31 = 23805553 * 2^31
.word 3670574183 // zeta^ 24 * f(q^(-1) mod 2^32) * 2^31 = 21224105^ 24 * 71292929 * 2^31
.word   61506475 // zeta^ 12 * 2^31 = 21224105^ 12 * 2^31 = 2663422 * 2^31
.word  170406997 // zeta^ 12 * f(q^(-1) mod 2^32) * 2^31 = 21224105^ 12 * 71292929 * 2^31
.word   55340015 // zeta^140 * 2^31 = 21224105^140 * 2^31 = 14111874 * 2^31
.word  902884369 // zeta^140 * f(q^(-1) mod 2^32) * 2^31 = 21224105^140 * 71292929 * 2^31
.word   22993529 // zeta^152 * 2^31 = 21224105^152 * 2^31 = 20588736 * 2^31
.word 1317277063 // zeta^152 * f(q^(-1) mod 2^32) * 2^31 = 21224105^152 * 71292929 * 2^31
.word   12255067 // zeta^ 76 * 2^31 = 21224105^ 76 * 2^31 = 30527813 * 2^31
.word 4100667557 // zeta^ 76 * f(q^(-1) mod 2^32) * 2^31 = 21224105^ 76 * 71292929 * 2^31
.word   39251459 // zeta^204 * 2^31 = 21224105^204 * 2^31 = 1599504 * 2^31
.word  102337021 // zeta^204 * f(q^(-1) mod 2^32) * 2^31 = 21224105^204 * 71292929 * 2^31
.word   12459675 // zeta^ 88 * 2^31 = 21224105^ 88 * 2^31 = 8729293 * 2^31
.word 2705987941 // zeta^ 88 * f(q^(-1) mod 2^32) * 2^31 = 21224105^ 88 * 71292929 * 2^31
.word   13565749 // zeta^ 44 * 2^31 = 21224105^ 44 * 2^31 = 14112245 * 2^31
.word 3050391755 // zeta^ 44 * f(q^(-1) mod 2^32) * 2^31 = 21224105^ 44 * 71292929 * 2^31
.word   36826073 // zeta^172 * 2^31 = 21224105^172 * 2^31 = 29475602 * 2^31
.word 1885862951 // zeta^172 * f(q^(-1) mod 2^32) * 2^31 = 21224105^172 * 71292929 * 2^31
.word   17297731 // zeta^216 * 2^31 = 21224105^216 * 2^31 = 25151509 * 2^31
.word 3756689085 // zeta^216 * f(q^(-1) mod 2^32) * 2^31 = 21224105^216 * 71292929 * 2^31
.word   34487347 // zeta^108 * 2^31 = 21224105^108 * 2^31 = 24806528 * 2^31
.word 1587133389 // zeta^108 * f(q^(-1) mod 2^32) * 2^31 = 21224105^108 * 71292929 * 2^31
.word   61222515 // zeta^236 * 2^31 = 21224105^236 * 2^31 = 2847371 * 2^31
.word 2329659789 // zeta^236 * f(q^(-1) mod 2^32) * 2^31 = 21224105^236 * 71292929 * 2^31
.word   51482787 // zeta^ 56 * 2^31 = 21224105^ 56 * 2^31 = 1778108 * 2^31
.word  113764189 // zeta^ 56 * f(q^(-1) mod 2^32) * 2^31 = 21224105^ 56 * 71292929 * 2^31
.word   62959157 // zeta^ 28 * 2^31 = 21224105^ 28 * 2^31 = 14217049 * 2^31
.word 3057097163 // zeta^ 28 * f(q^(-1) mod 2^32) * 2^31 = 21224105^ 28 * 71292929 * 2^31
.word   51158985 // zeta^156 * 2^31 = 21224105^156 * 2^31 = 25086215 * 2^31
.word 3752511543 // zeta^156 * f(q^(-1) mod 2^32) * 2^31 = 21224105^156 * 71292929 * 2^31
.word   47832419 // zeta^184 * 2^31 = 21224105^184 * 2^31 = 9175386 * 2^31
.word  587045533 // zeta^184 * f(q^(-1) mod 2^32) * 2^31 = 21224105^184 * 71292929 * 2^31
.word   59122583 // zeta^ 92 * 2^31 = 21224105^ 92 * 2^31 = 12661993 * 2^31
.word 2957603945 // zeta^ 92 * f(q^(-1) mod 2^32) * 2^31 = 21224105^ 92 * 71292929 * 2^31
.word   12915351 // zeta^220 * 2^31 = 21224105^220 * 2^31 = 18981045 * 2^31
.word 3361899881 // zeta^220 * f(q^(-1) mod 2^32) * 2^31 = 21224105^220 * 71292929 * 2^31
.word   32696733 // zeta^120 * 2^31 = 21224105^120 * 2^31 = 6110658 * 2^31
.word  390962787 // zeta^120 * f(q^(-1) mod 2^32) * 2^31 = 21224105^120 * 71292929 * 2^31
.word   32364195 // zeta^ 60 * 2^31 = 21224105^ 60 * 2^31 = 30118507 * 2^31
.word 4074479965 // zeta^ 60 * f(q^(-1) mod 2^32) * 2^31 = 21224105^ 60 * 71292929 * 2^31
.word   17635297 // zeta^188 * 2^31 = 21224105^188 * 2^31 = 3783875 * 2^31
.word 2389577759 // zeta^188 * f(q^(-1) mod 2^32) * 2^31 = 21224105^188 * 71292929 * 2^31
.word   16328205 // zeta^248 * 2^31 = 21224105^248 * 2^31 = 14087250 * 2^31
.word  901308915 // zeta^248 * f(q^(-1) mod 2^32) * 2^31 = 21224105^248 * 71292929 * 2^31
.word   38891533 // zeta^124 * 2^31 = 21224105^124 * 2^31 = 33548892 * 2^31
.word 2146473971 // zeta^124 * f(q^(-1) mod 2^32) * 2^31 = 21224105^124 * 71292929 * 2^31
.word   24452961 // zeta^252 * 2^31 = 21224105^252 * 2^31 = 29158115 * 2^31
.word 4013033631 // zeta^252 * f(q^(-1) mod 2^32) * 2^31 = 21224105^252 * 71292929 * 2^31
.text
.align 4
roots_addr: .word roots
.syntax unified
.type ntt_512_u32_33564673_21224105_incomplete, %function
.global ntt_512_u32_33564673_21224105_incomplete
ntt_512_u32_33564673_21224105_incomplete:
// Save GPRs
push {r4-r11,lr}
// Save MVE vector registers
vpush {d8-d15}
// Use r14 as marker for r0 + 1008
add r14, r0, #1008
// Use r12 as marker for r0 + 2016
add r12, r14, #1008
.equ modulus, 33564673
movw r11, #:lower16:modulus
movt r11, #:upper16:modulus
ldr r10, roots_addr
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[192]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -60)]
vqrdmulh.s32 Q1, Q0, r9
// input[128]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -124)]
vmul.u32 Q0, Q0, r8
// input[64]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 64)]
vqrdmlah.s32 Q1, Q0, r11
vqrdmulh.s32 Q4, Q2, r9
vsub.s32 Q0, Q3, Q1
vmul.u32 Q2, Q2, r8
vadd.s32 Q3, Q3, Q1
vqrdmlah.s32 Q4, Q2, r11
// input[0]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 0)]
vqrdmulh.s32 Q5, Q0, r5
vsub.s32 Q2, Q1, Q4
vmul.u32 Q0, Q0, r4
vadd.s32 Q1, Q1, Q4
vqrdmlah.s32 Q5, Q0, r11
// input[196]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -56)]
vqrdmulh.s32 Q6, Q3, r7
vsub.s32 Q0, Q2, Q5
vmul.u32 Q3, Q3, r6
vadd.s32 Q2, Q2, Q5
vstrw.u32 Q0, [r14,#(-240)]
// Release input[192] from Q0
vqrdmlah.s32 Q6, Q3, r11
vstrw.u32 Q2, [r14,#(-496)]
// Release input[128] from Q2
vsub.s32 Q3, Q1, Q6
vstrw.u32 Q3, [r0,#(256)]
// Release input[64] from Q3
vadd.s32 Q1, Q1, Q6
// input[196]: Already loaded as Q4
vqrdmulh.s32 Q0, Q4, r9
// input[132]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -120)]
vmul.u32 Q4, Q4, r8
// input[68]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 68)]
vqrdmlah.s32 Q0, Q4, r11
vstrw.u32 Q1, [r0,#(0)]
// Release input[0] from Q1
vqrdmulh.s32 Q1, Q2, r9
vsub.s32 Q4, Q3, Q0
vmul.u32 Q2, Q2, r8
vadd.s32 Q3, Q3, Q0
vqrdmlah.s32 Q1, Q2, r11
// input[4]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 4)]
vqrdmulh.s32 Q5, Q4, r5
vsub.s32 Q2, Q0, Q1
vmul.u32 Q4, Q4, r4
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q4, r11
// input[200]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -52)]
vqrdmulh.s32 Q6, Q3, r7
vsub.s32 Q4, Q2, Q5
vmul.u32 Q3, Q3, r6
vadd.s32 Q2, Q2, Q5
vstrw.u32 Q4, [r14,#(-224)]
// Release input[196] from Q4
vqrdmlah.s32 Q6, Q3, r11
vstrw.u32 Q2, [r14,#(-480)]
// Release input[132] from Q2
vsub.s32 Q3, Q0, Q6
vstrw.u32 Q3, [r0,#(272)]
// Release input[68] from Q3
vadd.s32 Q0, Q0, Q6
// input[200]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r9
// input[136]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -116)]
vmul.u32 Q1, Q1, r8
// input[72]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 72)]
vqrdmlah.s32 Q2, Q1, r11
vstrw.u32 Q0, [r0,#(16)]
// Release input[4] from Q0
vqrdmulh.s32 Q0, Q3, r9
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r11
// input[8]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 8)]
vqrdmulh.s32 Q5, Q1, r5
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r4
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r11
// input[204]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -48)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(-208)]
// Release input[200] from Q1
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(-464)]
// Release input[136] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r0,#(288)]
// Release input[72] from Q4
vadd.s32 Q2, Q2, Q6
// input[204]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r9
// input[140]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -112)]
vmul.u32 Q0, Q0, r8
// input[76]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 76)]
vqrdmlah.s32 Q1, Q0, r11
vstrw.u32 Q2, [r0,#(32)]
// Release input[8] from Q2
vqrdmulh.s32 Q2, Q3, r9
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r11
// input[12]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 12)]
vqrdmulh.s32 Q5, Q0, r5
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r4
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r11
// input[208]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -44)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(-192)]
// Release input[204] from Q0
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(-448)]
// Release input[140] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r0,#(304)]
// Release input[76] from Q4
vadd.s32 Q1, Q1, Q6
// input[208]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r9
// input[144]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -108)]
vmul.u32 Q2, Q2, r8
// input[80]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 80)]
vqrdmlah.s32 Q0, Q2, r11
vstrw.u32 Q1, [r0,#(48)]
// Release input[12] from Q1
vqrdmulh.s32 Q1, Q3, r9
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r11
// input[16]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 16)]
vqrdmulh.s32 Q5, Q2, r5
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r4
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r11
// input[212]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -40)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(-176)]
// Release input[208] from Q2
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(-432)]
// Release input[144] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r0,#(320)]
// Release input[80] from Q4
vadd.s32 Q0, Q0, Q6
// input[212]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r9
// input[148]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -104)]
vmul.u32 Q1, Q1, r8
// input[84]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 84)]
vqrdmlah.s32 Q2, Q1, r11
vstrw.u32 Q0, [r0,#(64)]
// Release input[16] from Q0
vqrdmulh.s32 Q0, Q3, r9
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r11
// input[20]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 20)]
vqrdmulh.s32 Q5, Q1, r5
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r4
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r11
// input[216]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -36)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(-160)]
// Release input[212] from Q1
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(-416)]
// Release input[148] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r0,#(336)]
// Release input[84] from Q4
vadd.s32 Q2, Q2, Q6
// input[216]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r9
// input[152]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -100)]
vmul.u32 Q0, Q0, r8
// input[88]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 88)]
vqrdmlah.s32 Q1, Q0, r11
vstrw.u32 Q2, [r0,#(80)]
// Release input[20] from Q2
vqrdmulh.s32 Q2, Q3, r9
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r11
// input[24]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 24)]
vqrdmulh.s32 Q5, Q0, r5
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r4
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r11
// input[220]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -32)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(-144)]
// Release input[216] from Q0
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(-400)]
// Release input[152] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r0,#(352)]
// Release input[88] from Q4
vadd.s32 Q1, Q1, Q6
// input[220]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r9
// input[156]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -96)]
vmul.u32 Q2, Q2, r8
// input[92]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 92)]
vqrdmlah.s32 Q0, Q2, r11
vstrw.u32 Q1, [r0,#(96)]
// Release input[24] from Q1
vqrdmulh.s32 Q1, Q3, r9
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r11
// input[28]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 28)]
vqrdmulh.s32 Q5, Q2, r5
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r4
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r11
// input[224]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -28)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(-128)]
// Release input[220] from Q2
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(-384)]
// Release input[156] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r0,#(368)]
// Release input[92] from Q4
vadd.s32 Q0, Q0, Q6
// input[224]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r9
// input[160]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -92)]
vmul.u32 Q1, Q1, r8
// input[96]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 96)]
vqrdmlah.s32 Q2, Q1, r11
vstrw.u32 Q0, [r0,#(112)]
// Release input[28] from Q0
vqrdmulh.s32 Q0, Q3, r9
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r11
// input[32]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 32)]
vqrdmulh.s32 Q5, Q1, r5
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r4
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r11
// input[228]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -24)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(-112)]
// Release input[224] from Q1
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(-368)]
// Release input[160] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r0,#(384)]
// Release input[96] from Q4
vadd.s32 Q2, Q2, Q6
// input[228]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r9
// input[164]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -88)]
vmul.u32 Q0, Q0, r8
// input[100]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 100)]
vqrdmlah.s32 Q1, Q0, r11
vstrw.u32 Q2, [r0,#(128)]
// Release input[32] from Q2
vqrdmulh.s32 Q2, Q3, r9
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r11
// input[36]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 36)]
vqrdmulh.s32 Q5, Q0, r5
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r4
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r11
// input[232]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -20)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(-96)]
// Release input[228] from Q0
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(-352)]
// Release input[164] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r0,#(400)]
// Release input[100] from Q4
vadd.s32 Q1, Q1, Q6
// input[232]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r9
// input[168]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -84)]
vmul.u32 Q2, Q2, r8
// input[104]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 104)]
vqrdmlah.s32 Q0, Q2, r11
vstrw.u32 Q1, [r0,#(144)]
// Release input[36] from Q1
vqrdmulh.s32 Q1, Q3, r9
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r11
// input[40]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 40)]
vqrdmulh.s32 Q5, Q2, r5
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r4
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r11
// input[236]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -16)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(-80)]
// Release input[232] from Q2
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(-336)]
// Release input[168] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r0,#(416)]
// Release input[104] from Q4
vadd.s32 Q0, Q0, Q6
// input[236]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r9
// input[172]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -80)]
vmul.u32 Q1, Q1, r8
// input[108]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 108)]
vqrdmlah.s32 Q2, Q1, r11
vstrw.u32 Q0, [r0,#(160)]
// Release input[40] from Q0
vqrdmulh.s32 Q0, Q3, r9
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r11
// input[44]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 44)]
vqrdmulh.s32 Q5, Q1, r5
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r4
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r11
// input[240]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -12)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(-64)]
// Release input[236] from Q1
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(-320)]
// Release input[172] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r0,#(432)]
// Release input[108] from Q4
vadd.s32 Q2, Q2, Q6
// input[240]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r9
// input[176]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -76)]
vmul.u32 Q0, Q0, r8
// input[112]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 112)]
vqrdmlah.s32 Q1, Q0, r11
vstrw.u32 Q2, [r0,#(176)]
// Release input[44] from Q2
vqrdmulh.s32 Q2, Q3, r9
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r11
// input[48]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 48)]
vqrdmulh.s32 Q5, Q0, r5
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r4
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r11
// input[244]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -8)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(-48)]
// Release input[240] from Q0
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(-304)]
// Release input[176] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r0,#(448)]
// Release input[112] from Q4
vadd.s32 Q1, Q1, Q6
// input[244]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r9
// input[180]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -72)]
vmul.u32 Q2, Q2, r8
// input[116]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 116)]
vqrdmlah.s32 Q0, Q2, r11
vstrw.u32 Q1, [r0,#(192)]
// Release input[48] from Q1
vqrdmulh.s32 Q1, Q3, r9
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r11
// input[52]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 52)]
vqrdmulh.s32 Q5, Q2, r5
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r4
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r11
// input[248]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -4)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(-32)]
// Release input[244] from Q2
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(-288)]
// Release input[180] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r0,#(464)]
// Release input[116] from Q4
vadd.s32 Q0, Q0, Q6
// input[248]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r9
// input[184]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -68)]
vmul.u32 Q1, Q1, r8
// input[120]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 120)]
vqrdmlah.s32 Q2, Q1, r11
vstrw.u32 Q0, [r0,#(208)]
// Release input[52] from Q0
vqrdmulh.s32 Q0, Q3, r9
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r11
// input[56]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 56)]
vqrdmulh.s32 Q5, Q1, r5
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r4
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r11
// input[252]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 0)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(-16)]
// Release input[248] from Q1
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(-272)]
// Release input[184] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r0,#(480)]
// Release input[120] from Q4
vadd.s32 Q2, Q2, Q6
// input[252]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r9
// input[188]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -64)]
vmul.u32 Q0, Q0, r8
// input[124]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 124)]
vqrdmlah.s32 Q1, Q0, r11
vstrw.u32 Q2, [r0,#(224)]
// Release input[56] from Q2
vqrdmulh.s32 Q2, Q3, r9
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r11
// input[60]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 60)]
vqrdmulh.s32 Q5, Q0, r5
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r4
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r11
// input[448]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * -56)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(0)]
// Release input[252] from Q0
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(-256)]
// Release input[188] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r0,#(496)]
// Release input[124] from Q4
vadd.s32 Q1, Q1, Q6
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[448]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r9
// input[384]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -120)]
vmul.u32 Q2, Q2, r8
// input[320]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 68)]
vqrdmlah.s32 Q0, Q2, r11
vstrw.u32 Q1, [r0,#(240)]
// Release input[60] from Q1
vqrdmulh.s32 Q1, Q3, r9
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r11
// input[256]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 4)]
vqrdmulh.s32 Q5, Q2, r5
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r4
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r11
// input[452]: Load as Q1
vldrw.u32 Q1, [r12, #(4 * -52)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r12,#(-224)]
// Release input[448] from Q2
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r12,#(-480)]
// Release input[384] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(272)]
// Release input[320] from Q4
vadd.s32 Q0, Q0, Q6
// input[452]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r9
// input[388]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -116)]
vmul.u32 Q1, Q1, r8
// input[324]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 72)]
vqrdmlah.s32 Q2, Q1, r11
vstrw.u32 Q0, [r14,#(16)]
// Release input[256] from Q0
vqrdmulh.s32 Q0, Q3, r9
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r11
// input[260]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 8)]
vqrdmulh.s32 Q5, Q1, r5
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r4
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r11
// input[456]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -48)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r12,#(-208)]
// Release input[452] from Q1
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r12,#(-464)]
// Release input[388] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r14,#(288)]
// Release input[324] from Q4
vadd.s32 Q2, Q2, Q6
// input[456]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r9
// input[392]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -112)]
vmul.u32 Q0, Q0, r8
// input[328]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 76)]
vqrdmlah.s32 Q1, Q0, r11
vstrw.u32 Q2, [r14,#(32)]
// Release input[260] from Q2
vqrdmulh.s32 Q2, Q3, r9
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r11
// input[264]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 12)]
vqrdmulh.s32 Q5, Q0, r5
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r4
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r11
// input[460]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * -44)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r12,#(-192)]
// Release input[456] from Q0
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r12,#(-448)]
// Release input[392] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r14,#(304)]
// Release input[328] from Q4
vadd.s32 Q1, Q1, Q6
// input[460]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r9
// input[396]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -108)]
vmul.u32 Q2, Q2, r8
// input[332]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 80)]
vqrdmlah.s32 Q0, Q2, r11
vstrw.u32 Q1, [r14,#(48)]
// Release input[264] from Q1
vqrdmulh.s32 Q1, Q3, r9
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r11
// input[268]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 16)]
vqrdmulh.s32 Q5, Q2, r5
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r4
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r11
// input[464]: Load as Q1
vldrw.u32 Q1, [r12, #(4 * -40)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r12,#(-176)]
// Release input[460] from Q2
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r12,#(-432)]
// Release input[396] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(320)]
// Release input[332] from Q4
vadd.s32 Q0, Q0, Q6
// input[464]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r9
// input[400]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -104)]
vmul.u32 Q1, Q1, r8
// input[336]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 84)]
vqrdmlah.s32 Q2, Q1, r11
vstrw.u32 Q0, [r14,#(64)]
// Release input[268] from Q0
vqrdmulh.s32 Q0, Q3, r9
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r11
// input[272]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 20)]
vqrdmulh.s32 Q5, Q1, r5
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r4
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r11
// input[468]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -36)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r12,#(-160)]
// Release input[464] from Q1
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r12,#(-416)]
// Release input[400] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r14,#(336)]
// Release input[336] from Q4
vadd.s32 Q2, Q2, Q6
// input[468]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r9
// input[404]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -100)]
vmul.u32 Q0, Q0, r8
// input[340]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 88)]
vqrdmlah.s32 Q1, Q0, r11
vstrw.u32 Q2, [r14,#(80)]
// Release input[272] from Q2
vqrdmulh.s32 Q2, Q3, r9
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r11
// input[276]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 24)]
vqrdmulh.s32 Q5, Q0, r5
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r4
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r11
// input[472]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * -32)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r12,#(-144)]
// Release input[468] from Q0
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r12,#(-400)]
// Release input[404] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r14,#(352)]
// Release input[340] from Q4
vadd.s32 Q1, Q1, Q6
// input[472]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r9
// input[408]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -96)]
vmul.u32 Q2, Q2, r8
// input[344]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 92)]
vqrdmlah.s32 Q0, Q2, r11
vstrw.u32 Q1, [r14,#(96)]
// Release input[276] from Q1
vqrdmulh.s32 Q1, Q3, r9
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r11
// input[280]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 28)]
vqrdmulh.s32 Q5, Q2, r5
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r4
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r11
// input[476]: Load as Q1
vldrw.u32 Q1, [r12, #(4 * -28)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r12,#(-128)]
// Release input[472] from Q2
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r12,#(-384)]
// Release input[408] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(368)]
// Release input[344] from Q4
vadd.s32 Q0, Q0, Q6
// input[476]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r9
// input[412]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -92)]
vmul.u32 Q1, Q1, r8
// input[348]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 96)]
vqrdmlah.s32 Q2, Q1, r11
vstrw.u32 Q0, [r14,#(112)]
// Release input[280] from Q0
vqrdmulh.s32 Q0, Q3, r9
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r11
// input[284]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 32)]
vqrdmulh.s32 Q5, Q1, r5
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r4
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r11
// input[480]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -24)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r12,#(-112)]
// Release input[476] from Q1
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r12,#(-368)]
// Release input[412] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r14,#(384)]
// Release input[348] from Q4
vadd.s32 Q2, Q2, Q6
// input[480]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r9
// input[416]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -88)]
vmul.u32 Q0, Q0, r8
// input[352]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 100)]
vqrdmlah.s32 Q1, Q0, r11
vstrw.u32 Q2, [r14,#(128)]
// Release input[284] from Q2
vqrdmulh.s32 Q2, Q3, r9
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r11
// input[288]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 36)]
vqrdmulh.s32 Q5, Q0, r5
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r4
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r11
// input[484]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * -20)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r12,#(-96)]
// Release input[480] from Q0
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r12,#(-352)]
// Release input[416] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r14,#(400)]
// Release input[352] from Q4
vadd.s32 Q1, Q1, Q6
// input[484]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r9
// input[420]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -84)]
vmul.u32 Q2, Q2, r8
// input[356]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 104)]
vqrdmlah.s32 Q0, Q2, r11
vstrw.u32 Q1, [r14,#(144)]
// Release input[288] from Q1
vqrdmulh.s32 Q1, Q3, r9
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r11
// input[292]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 40)]
vqrdmulh.s32 Q5, Q2, r5
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r4
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r11
// input[488]: Load as Q1
vldrw.u32 Q1, [r12, #(4 * -16)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r12,#(-80)]
// Release input[484] from Q2
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r12,#(-336)]
// Release input[420] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(416)]
// Release input[356] from Q4
vadd.s32 Q0, Q0, Q6
// input[488]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r9
// input[424]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -80)]
vmul.u32 Q1, Q1, r8
// input[360]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 108)]
vqrdmlah.s32 Q2, Q1, r11
vstrw.u32 Q0, [r14,#(160)]
// Release input[292] from Q0
vqrdmulh.s32 Q0, Q3, r9
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r11
// input[296]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 44)]
vqrdmulh.s32 Q5, Q1, r5
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r4
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r11
// input[492]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -12)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r12,#(-64)]
// Release input[488] from Q1
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r12,#(-320)]
// Release input[424] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r14,#(432)]
// Release input[360] from Q4
vadd.s32 Q2, Q2, Q6
// input[492]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r9
// input[428]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -76)]
vmul.u32 Q0, Q0, r8
// input[364]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 112)]
vqrdmlah.s32 Q1, Q0, r11
vstrw.u32 Q2, [r14,#(176)]
// Release input[296] from Q2
vqrdmulh.s32 Q2, Q3, r9
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r11
// input[300]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 48)]
vqrdmulh.s32 Q5, Q0, r5
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r4
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r11
// input[496]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * -8)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r12,#(-48)]
// Release input[492] from Q0
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r12,#(-304)]
// Release input[428] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r14,#(448)]
// Release input[364] from Q4
vadd.s32 Q1, Q1, Q6
// input[496]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r9
// input[432]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -72)]
vmul.u32 Q2, Q2, r8
// input[368]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 116)]
vqrdmlah.s32 Q0, Q2, r11
vstrw.u32 Q1, [r14,#(192)]
// Release input[300] from Q1
vqrdmulh.s32 Q1, Q3, r9
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r11
// input[304]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 52)]
vqrdmulh.s32 Q5, Q2, r5
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r4
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r11
// input[500]: Load as Q1
vldrw.u32 Q1, [r12, #(4 * -4)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r12,#(-32)]
// Release input[496] from Q2
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r12,#(-288)]
// Release input[432] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(464)]
// Release input[368] from Q4
vadd.s32 Q0, Q0, Q6
// input[500]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r9
// input[436]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -68)]
vmul.u32 Q1, Q1, r8
// input[372]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 120)]
vqrdmlah.s32 Q2, Q1, r11
vstrw.u32 Q0, [r14,#(208)]
// Release input[304] from Q0
vqrdmulh.s32 Q0, Q3, r9
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r11
// input[308]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 56)]
vqrdmulh.s32 Q5, Q1, r5
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r4
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r11
// input[504]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * 0)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r12,#(-16)]
// Release input[500] from Q1
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r12,#(-272)]
// Release input[436] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r14,#(480)]
// Release input[372] from Q4
vadd.s32 Q2, Q2, Q6
// input[504]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r9
// input[440]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -64)]
vmul.u32 Q0, Q0, r8
// input[376]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 124)]
vqrdmlah.s32 Q1, Q0, r11
vstrw.u32 Q2, [r14,#(224)]
// Release input[308] from Q2
vqrdmulh.s32 Q2, Q3, r9
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r11
// input[312]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 60)]
vqrdmulh.s32 Q5, Q0, r5
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r4
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r11
// input[508]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * 4)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r12,#(0)]
// Release input[504] from Q0
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r12,#(-256)]
// Release input[440] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r14,#(496)]
// Release input[376] from Q4
vadd.s32 Q1, Q1, Q6
// input[508]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r9
// input[444]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -60)]
vmul.u32 Q2, Q2, r8
// input[380]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * -124)]
vqrdmlah.s32 Q0, Q2, r11
vstrw.u32 Q1, [r14,#(240)]
// Release input[312] from Q1
vqrdmulh.s32 Q1, Q3, r9
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r11
// input[316]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 64)]
vqrdmulh.s32 Q5, Q2, r5
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r4
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r11
// input[48]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 48)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r12,#(16)]
// Release input[508] from Q2
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r12,#(-240)]
// Release input[444] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r12,#(-496)]
// Release input[380] from Q4
vadd.s32 Q0, Q0, Q6
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[48]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r9
// input[32]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 32)]
vmul.u32 Q1, Q1, r8
// input[16]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 16)]
vqrdmlah.s32 Q2, Q1, r11
vstrw.u32 Q0, [r14,#(256)]
// Release input[316] from Q0
vqrdmulh.s32 Q0, Q3, r9
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r11
// input[0]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 0)]
vqrdmulh.s32 Q5, Q1, r5
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r4
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r11
// input[52]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 52)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r0,#(192)]
// Release input[48] from Q1
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r0,#(128)]
// Release input[32] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r0,#(64)]
// Release input[16] from Q4
vadd.s32 Q2, Q2, Q6
// input[52]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r9
// input[36]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 36)]
vmul.u32 Q0, Q0, r8
// input[20]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 20)]
vqrdmlah.s32 Q1, Q0, r11
vstrw.u32 Q2, [r0,#(0)]
// Release input[0] from Q2
vqrdmulh.s32 Q2, Q3, r9
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r11
// input[4]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 4)]
vqrdmulh.s32 Q5, Q0, r5
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r4
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r11
// input[56]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 56)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r0,#(208)]
// Release input[52] from Q0
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r0,#(144)]
// Release input[36] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r0,#(80)]
// Release input[20] from Q4
vadd.s32 Q1, Q1, Q6
// input[56]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r9
// input[40]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 40)]
vmul.u32 Q2, Q2, r8
// input[24]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 24)]
vqrdmlah.s32 Q0, Q2, r11
vstrw.u32 Q1, [r0,#(16)]
// Release input[4] from Q1
vqrdmulh.s32 Q1, Q3, r9
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r11
// input[8]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 8)]
vqrdmulh.s32 Q5, Q2, r5
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r4
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r11
// input[60]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 60)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r0,#(224)]
// Release input[56] from Q2
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r0,#(160)]
// Release input[40] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r0,#(96)]
// Release input[24] from Q4
vadd.s32 Q0, Q0, Q6
// input[60]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r9
// input[44]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 44)]
vmul.u32 Q1, Q1, r8
// input[28]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 28)]
vqrdmlah.s32 Q2, Q1, r11
vstrw.u32 Q0, [r0,#(32)]
// Release input[8] from Q0
vqrdmulh.s32 Q0, Q3, r9
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r11
// input[12]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 12)]
vqrdmulh.s32 Q5, Q1, r5
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r4
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r11
// input[112]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 112)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r0,#(240)]
// Release input[60] from Q1
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r0,#(176)]
// Release input[44] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r0,#(112)]
// Release input[28] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[112]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r9
// input[96]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 96)]
vmul.u32 Q0, Q0, r8
// input[80]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 80)]
vqrdmlah.s32 Q1, Q0, r11
vstrw.u32 Q2, [r0,#(48)]
// Release input[12] from Q2
vqrdmulh.s32 Q2, Q3, r9
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r11
// input[64]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 64)]
vqrdmulh.s32 Q5, Q0, r5
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r4
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r11
// input[116]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 116)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r0,#(448)]
// Release input[112] from Q0
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r0,#(384)]
// Release input[96] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r0,#(320)]
// Release input[80] from Q4
vadd.s32 Q1, Q1, Q6
// input[116]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r9
// input[100]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 100)]
vmul.u32 Q2, Q2, r8
// input[84]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 84)]
vqrdmlah.s32 Q0, Q2, r11
vstrw.u32 Q1, [r0,#(256)]
// Release input[64] from Q1
vqrdmulh.s32 Q1, Q3, r9
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r11
// input[68]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 68)]
vqrdmulh.s32 Q5, Q2, r5
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r4
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r11
// input[120]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 120)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r0,#(464)]
// Release input[116] from Q2
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r0,#(400)]
// Release input[100] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r0,#(336)]
// Release input[84] from Q4
vadd.s32 Q0, Q0, Q6
// input[120]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r9
// input[104]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 104)]
vmul.u32 Q1, Q1, r8
// input[88]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 88)]
vqrdmlah.s32 Q2, Q1, r11
vstrw.u32 Q0, [r0,#(272)]
// Release input[68] from Q0
vqrdmulh.s32 Q0, Q3, r9
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r11
// input[72]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 72)]
vqrdmulh.s32 Q5, Q1, r5
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r4
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r11
// input[124]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 124)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r0,#(480)]
// Release input[120] from Q1
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r0,#(416)]
// Release input[104] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r0,#(352)]
// Release input[88] from Q4
vadd.s32 Q2, Q2, Q6
// input[124]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r9
// input[108]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 108)]
vmul.u32 Q0, Q0, r8
// input[92]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 92)]
vqrdmlah.s32 Q1, Q0, r11
vstrw.u32 Q2, [r0,#(288)]
// Release input[72] from Q2
vqrdmulh.s32 Q2, Q3, r9
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r11
// input[76]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 76)]
vqrdmulh.s32 Q5, Q0, r5
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r4
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r11
// input[176]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -76)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r0,#(496)]
// Release input[124] from Q0
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r0,#(432)]
// Release input[108] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r0,#(368)]
// Release input[92] from Q4
vadd.s32 Q1, Q1, Q6
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[176]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r9
// input[160]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -92)]
vmul.u32 Q2, Q2, r8
// input[144]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -108)]
vqrdmlah.s32 Q0, Q2, r11
vstrw.u32 Q1, [r0,#(304)]
// Release input[76] from Q1
vqrdmulh.s32 Q1, Q3, r9
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r11
// input[128]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -124)]
vqrdmulh.s32 Q5, Q2, r5
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r4
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r11
// input[180]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -72)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(-304)]
// Release input[176] from Q2
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(-368)]
// Release input[160] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(-432)]
// Release input[144] from Q4
vadd.s32 Q0, Q0, Q6
// input[180]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r9
// input[164]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -88)]
vmul.u32 Q1, Q1, r8
// input[148]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -104)]
vqrdmlah.s32 Q2, Q1, r11
vstrw.u32 Q0, [r14,#(-496)]
// Release input[128] from Q0
vqrdmulh.s32 Q0, Q3, r9
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r11
// input[132]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -120)]
vqrdmulh.s32 Q5, Q1, r5
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r4
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r11
// input[184]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -68)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(-288)]
// Release input[180] from Q1
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(-352)]
// Release input[164] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r14,#(-416)]
// Release input[148] from Q4
vadd.s32 Q2, Q2, Q6
// input[184]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r9
// input[168]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -84)]
vmul.u32 Q0, Q0, r8
// input[152]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -100)]
vqrdmlah.s32 Q1, Q0, r11
vstrw.u32 Q2, [r14,#(-480)]
// Release input[132] from Q2
vqrdmulh.s32 Q2, Q3, r9
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r11
// input[136]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -116)]
vqrdmulh.s32 Q5, Q0, r5
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r4
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r11
// input[188]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -64)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(-272)]
// Release input[184] from Q0
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(-336)]
// Release input[168] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r14,#(-400)]
// Release input[152] from Q4
vadd.s32 Q1, Q1, Q6
// input[188]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r9
// input[172]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -80)]
vmul.u32 Q2, Q2, r8
// input[156]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -96)]
vqrdmlah.s32 Q0, Q2, r11
vstrw.u32 Q1, [r14,#(-464)]
// Release input[136] from Q1
vqrdmulh.s32 Q1, Q3, r9
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r11
// input[140]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -112)]
vqrdmulh.s32 Q5, Q2, r5
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r4
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r11
// input[240]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -12)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(-256)]
// Release input[188] from Q2
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(-320)]
// Release input[172] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(-384)]
// Release input[156] from Q4
vadd.s32 Q0, Q0, Q6
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[240]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r9
// input[224]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -28)]
vmul.u32 Q1, Q1, r8
// input[208]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -44)]
vqrdmlah.s32 Q2, Q1, r11
vstrw.u32 Q0, [r14,#(-448)]
// Release input[140] from Q0
vqrdmulh.s32 Q0, Q3, r9
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r11
// input[192]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -60)]
vqrdmulh.s32 Q5, Q1, r5
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r4
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r11
// input[244]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -8)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(-48)]
// Release input[240] from Q1
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(-112)]
// Release input[224] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r14,#(-176)]
// Release input[208] from Q4
vadd.s32 Q2, Q2, Q6
// input[244]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r9
// input[228]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -24)]
vmul.u32 Q0, Q0, r8
// input[212]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -40)]
vqrdmlah.s32 Q1, Q0, r11
vstrw.u32 Q2, [r14,#(-240)]
// Release input[192] from Q2
vqrdmulh.s32 Q2, Q3, r9
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r11
// input[196]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -56)]
vqrdmulh.s32 Q5, Q0, r5
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r4
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r11
// input[248]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -4)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(-32)]
// Release input[244] from Q0
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(-96)]
// Release input[228] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r14,#(-160)]
// Release input[212] from Q4
vadd.s32 Q1, Q1, Q6
// input[248]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r9
// input[232]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -20)]
vmul.u32 Q2, Q2, r8
// input[216]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -36)]
vqrdmlah.s32 Q0, Q2, r11
vstrw.u32 Q1, [r14,#(-224)]
// Release input[196] from Q1
vqrdmulh.s32 Q1, Q3, r9
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r11
// input[200]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -52)]
vqrdmulh.s32 Q5, Q2, r5
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r4
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r11
// input[252]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 0)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(-16)]
// Release input[248] from Q2
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(-80)]
// Release input[232] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(-144)]
// Release input[216] from Q4
vadd.s32 Q0, Q0, Q6
// input[252]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r9
// input[236]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -16)]
vmul.u32 Q1, Q1, r8
// input[220]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -32)]
vqrdmlah.s32 Q2, Q1, r11
vstrw.u32 Q0, [r14,#(-208)]
// Release input[200] from Q0
vqrdmulh.s32 Q0, Q3, r9
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r11
// input[204]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -48)]
vqrdmulh.s32 Q5, Q1, r5
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r4
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r11
// input[304]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 52)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(0)]
// Release input[252] from Q1
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(-64)]
// Release input[236] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r14,#(-128)]
// Release input[220] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[304]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r9
// input[288]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 36)]
vmul.u32 Q0, Q0, r8
// input[272]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 20)]
vqrdmlah.s32 Q1, Q0, r11
vstrw.u32 Q2, [r14,#(-192)]
// Release input[204] from Q2
vqrdmulh.s32 Q2, Q3, r9
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r11
// input[256]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 4)]
vqrdmulh.s32 Q5, Q0, r5
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r4
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r11
// input[308]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 56)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(208)]
// Release input[304] from Q0
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(144)]
// Release input[288] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r14,#(80)]
// Release input[272] from Q4
vadd.s32 Q1, Q1, Q6
// input[308]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r9
// input[292]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 40)]
vmul.u32 Q2, Q2, r8
// input[276]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 24)]
vqrdmlah.s32 Q0, Q2, r11
vstrw.u32 Q1, [r14,#(16)]
// Release input[256] from Q1
vqrdmulh.s32 Q1, Q3, r9
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r11
// input[260]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 8)]
vqrdmulh.s32 Q5, Q2, r5
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r4
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r11
// input[312]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 60)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(224)]
// Release input[308] from Q2
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(160)]
// Release input[292] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(96)]
// Release input[276] from Q4
vadd.s32 Q0, Q0, Q6
// input[312]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r9
// input[296]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 44)]
vmul.u32 Q1, Q1, r8
// input[280]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 28)]
vqrdmlah.s32 Q2, Q1, r11
vstrw.u32 Q0, [r14,#(32)]
// Release input[260] from Q0
vqrdmulh.s32 Q0, Q3, r9
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r11
// input[264]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 12)]
vqrdmulh.s32 Q5, Q1, r5
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r4
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r11
// input[316]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 64)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(240)]
// Release input[312] from Q1
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(176)]
// Release input[296] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r14,#(112)]
// Release input[280] from Q4
vadd.s32 Q2, Q2, Q6
// input[316]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r9
// input[300]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 48)]
vmul.u32 Q0, Q0, r8
// input[284]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 32)]
vqrdmlah.s32 Q1, Q0, r11
vstrw.u32 Q2, [r14,#(48)]
// Release input[264] from Q2
vqrdmulh.s32 Q2, Q3, r9
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r11
// input[268]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 16)]
vqrdmulh.s32 Q5, Q0, r5
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r4
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r11
// input[368]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 116)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(256)]
// Release input[316] from Q0
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(192)]
// Release input[300] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r14,#(128)]
// Release input[284] from Q4
vadd.s32 Q1, Q1, Q6
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[368]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r9
// input[352]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 100)]
vmul.u32 Q2, Q2, r8
// input[336]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 84)]
vqrdmlah.s32 Q0, Q2, r11
vstrw.u32 Q1, [r14,#(64)]
// Release input[268] from Q1
vqrdmulh.s32 Q1, Q3, r9
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r11
// input[320]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 68)]
vqrdmulh.s32 Q5, Q2, r5
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r4
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r11
// input[372]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 120)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(464)]
// Release input[368] from Q2
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(400)]
// Release input[352] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(336)]
// Release input[336] from Q4
vadd.s32 Q0, Q0, Q6
// input[372]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r9
// input[356]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 104)]
vmul.u32 Q1, Q1, r8
// input[340]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 88)]
vqrdmlah.s32 Q2, Q1, r11
vstrw.u32 Q0, [r14,#(272)]
// Release input[320] from Q0
vqrdmulh.s32 Q0, Q3, r9
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r11
// input[324]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 72)]
vqrdmulh.s32 Q5, Q1, r5
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r4
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r11
// input[376]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 124)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(480)]
// Release input[372] from Q1
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(416)]
// Release input[356] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r14,#(352)]
// Release input[340] from Q4
vadd.s32 Q2, Q2, Q6
// input[376]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r9
// input[360]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 108)]
vmul.u32 Q0, Q0, r8
// input[344]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 92)]
vqrdmlah.s32 Q1, Q0, r11
vstrw.u32 Q2, [r14,#(288)]
// Release input[324] from Q2
vqrdmulh.s32 Q2, Q3, r9
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r11
// input[328]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 76)]
vqrdmulh.s32 Q5, Q0, r5
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r4
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r11
// input[380]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * -124)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(496)]
// Release input[376] from Q0
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(432)]
// Release input[360] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r14,#(368)]
// Release input[344] from Q4
vadd.s32 Q1, Q1, Q6
// input[380]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r9
// input[364]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 112)]
vmul.u32 Q2, Q2, r8
// input[348]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 96)]
vqrdmlah.s32 Q0, Q2, r11
vstrw.u32 Q1, [r14,#(304)]
// Release input[328] from Q1
vqrdmulh.s32 Q1, Q3, r9
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r11
// input[332]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 80)]
vqrdmulh.s32 Q5, Q2, r5
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r4
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r11
// input[432]: Load as Q1
vldrw.u32 Q1, [r12, #(4 * -72)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r12,#(-496)]
// Release input[380] from Q2
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(448)]
// Release input[364] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(384)]
// Release input[348] from Q4
vadd.s32 Q0, Q0, Q6
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[432]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r9
// input[416]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -88)]
vmul.u32 Q1, Q1, r8
// input[400]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * -104)]
vqrdmlah.s32 Q2, Q1, r11
vstrw.u32 Q0, [r14,#(320)]
// Release input[332] from Q0
vqrdmulh.s32 Q0, Q3, r9
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r11
// input[384]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * -120)]
vqrdmulh.s32 Q5, Q1, r5
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r4
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r11
// input[436]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -68)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r12,#(-288)]
// Release input[432] from Q1
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r12,#(-352)]
// Release input[416] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r12,#(-416)]
// Release input[400] from Q4
vadd.s32 Q2, Q2, Q6
// input[436]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r9
// input[420]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -84)]
vmul.u32 Q0, Q0, r8
// input[404]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * -100)]
vqrdmlah.s32 Q1, Q0, r11
vstrw.u32 Q2, [r12,#(-480)]
// Release input[384] from Q2
vqrdmulh.s32 Q2, Q3, r9
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r11
// input[388]: Load as Q1
vldrw.u32 Q1, [r12, #(4 * -116)]
vqrdmulh.s32 Q5, Q0, r5
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r4
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r11
// input[440]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * -64)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r12,#(-272)]
// Release input[436] from Q0
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r12,#(-336)]
// Release input[420] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r12,#(-400)]
// Release input[404] from Q4
vadd.s32 Q1, Q1, Q6
// input[440]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r9
// input[424]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -80)]
vmul.u32 Q2, Q2, r8
// input[408]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * -96)]
vqrdmlah.s32 Q0, Q2, r11
vstrw.u32 Q1, [r12,#(-464)]
// Release input[388] from Q1
vqrdmulh.s32 Q1, Q3, r9
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r11
// input[392]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -112)]
vqrdmulh.s32 Q5, Q2, r5
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r4
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r11
// input[444]: Load as Q1
vldrw.u32 Q1, [r12, #(4 * -60)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r12,#(-256)]
// Release input[440] from Q2
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r12,#(-320)]
// Release input[424] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r12,#(-384)]
// Release input[408] from Q4
vadd.s32 Q0, Q0, Q6
// input[444]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r9
// input[428]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -76)]
vmul.u32 Q1, Q1, r8
// input[412]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * -92)]
vqrdmlah.s32 Q2, Q1, r11
vstrw.u32 Q0, [r12,#(-448)]
// Release input[392] from Q0
vqrdmulh.s32 Q0, Q3, r9
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r11
// input[396]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * -108)]
vqrdmulh.s32 Q5, Q1, r5
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r4
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r11
// input[496]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -8)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r12,#(-240)]
// Release input[444] from Q1
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r12,#(-304)]
// Release input[428] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r12,#(-368)]
// Release input[412] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[496]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r9
// input[480]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -24)]
vmul.u32 Q0, Q0, r8
// input[464]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * -40)]
vqrdmlah.s32 Q1, Q0, r11
vstrw.u32 Q2, [r12,#(-432)]
// Release input[396] from Q2
vqrdmulh.s32 Q2, Q3, r9
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r11
// input[448]: Load as Q1
vldrw.u32 Q1, [r12, #(4 * -56)]
vqrdmulh.s32 Q5, Q0, r5
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r4
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r11
// input[500]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * -4)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r12,#(-32)]
// Release input[496] from Q0
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r12,#(-96)]
// Release input[480] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r12,#(-160)]
// Release input[464] from Q4
vadd.s32 Q1, Q1, Q6
// input[500]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r9
// input[484]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -20)]
vmul.u32 Q2, Q2, r8
// input[468]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * -36)]
vqrdmlah.s32 Q0, Q2, r11
vstrw.u32 Q1, [r12,#(-224)]
// Release input[448] from Q1
vqrdmulh.s32 Q1, Q3, r9
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r11
// input[452]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -52)]
vqrdmulh.s32 Q5, Q2, r5
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r4
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r11
// input[504]: Load as Q1
vldrw.u32 Q1, [r12, #(4 * 0)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r12,#(-16)]
// Release input[500] from Q2
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r12,#(-80)]
// Release input[484] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r12,#(-144)]
// Release input[468] from Q4
vadd.s32 Q0, Q0, Q6
// input[504]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r9
// input[488]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -16)]
vmul.u32 Q1, Q1, r8
// input[472]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * -32)]
vqrdmlah.s32 Q2, Q1, r11
vstrw.u32 Q0, [r12,#(-208)]
// Release input[452] from Q0
vqrdmulh.s32 Q0, Q3, r9
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r11
// input[456]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * -48)]
vqrdmulh.s32 Q5, Q1, r5
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r4
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r11
// input[508]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * 4)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r12,#(0)]
// Release input[504] from Q1
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r12,#(-64)]
// Release input[488] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r12,#(-128)]
// Release input[472] from Q4
vadd.s32 Q2, Q2, Q6
// input[508]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r9
// input[492]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -12)]
vmul.u32 Q0, Q0, r8
// input[476]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * -28)]
vqrdmlah.s32 Q1, Q0, r11
vstrw.u32 Q2, [r12,#(-192)]
// Release input[456] from Q2
vqrdmulh.s32 Q2, Q3, r9
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r11
// input[460]: Load as Q1
vldrw.u32 Q1, [r12, #(4 * -44)]
vqrdmulh.s32 Q5, Q0, r5
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r4
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r11
// input[12]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 12)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r12,#(16)]
// Release input[508] from Q0
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r12,#(-48)]
// Release input[492] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r12,#(-112)]
// Release input[476] from Q4
vadd.s32 Q1, Q1, Q6
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[12]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r9
// input[8]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 8)]
vmul.u32 Q2, Q2, r8
// input[4]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 4)]
vqrdmlah.s32 Q0, Q2, r11
vstrw.u32 Q1, [r12,#(-176)]
// Release input[460] from Q1
vqrdmulh.s32 Q1, Q3, r9
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r11
// input[0]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 0)]
vqrdmulh.s32 Q5, Q2, r5
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r4
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r11
// input[28]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 28)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r0,#(48)]
// Release input[12] from Q2
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r0,#(32)]
// Release input[8] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r0,#(16)]
// Release input[4] from Q4
vadd.s32 Q0, Q0, Q6
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[28]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r9
// input[24]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 24)]
vmul.u32 Q1, Q1, r8
// input[20]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 20)]
vqrdmlah.s32 Q2, Q1, r11
vstrw.u32 Q0, [r0,#(0)]
// Release input[0] from Q0
vqrdmulh.s32 Q0, Q3, r9
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r11
// input[16]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 16)]
vqrdmulh.s32 Q5, Q1, r5
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r4
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r11
// input[44]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 44)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r0,#(112)]
// Release input[28] from Q1
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r0,#(96)]
// Release input[24] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r0,#(80)]
// Release input[20] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[44]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r9
// input[40]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 40)]
vmul.u32 Q0, Q0, r8
// input[36]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 36)]
vqrdmlah.s32 Q1, Q0, r11
vstrw.u32 Q2, [r0,#(64)]
// Release input[16] from Q2
vqrdmulh.s32 Q2, Q3, r9
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r11
// input[32]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 32)]
vqrdmulh.s32 Q5, Q0, r5
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r4
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r11
// input[60]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 60)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r0,#(176)]
// Release input[44] from Q0
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r0,#(160)]
// Release input[40] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r0,#(144)]
// Release input[36] from Q4
vadd.s32 Q1, Q1, Q6
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[60]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r9
// input[56]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 56)]
vmul.u32 Q2, Q2, r8
// input[52]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 52)]
vqrdmlah.s32 Q0, Q2, r11
vstrw.u32 Q1, [r0,#(128)]
// Release input[32] from Q1
vqrdmulh.s32 Q1, Q3, r9
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r11
// input[48]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 48)]
vqrdmulh.s32 Q5, Q2, r5
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r4
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r11
// input[76]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 76)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r0,#(240)]
// Release input[60] from Q2
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r0,#(224)]
// Release input[56] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r0,#(208)]
// Release input[52] from Q4
vadd.s32 Q0, Q0, Q6
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[76]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r9
// input[72]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 72)]
vmul.u32 Q1, Q1, r8
// input[68]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 68)]
vqrdmlah.s32 Q2, Q1, r11
vstrw.u32 Q0, [r0,#(192)]
// Release input[48] from Q0
vqrdmulh.s32 Q0, Q3, r9
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r11
// input[64]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 64)]
vqrdmulh.s32 Q5, Q1, r5
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r4
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r11
// input[92]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 92)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r0,#(304)]
// Release input[76] from Q1
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r0,#(288)]
// Release input[72] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r0,#(272)]
// Release input[68] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[92]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r9
// input[88]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 88)]
vmul.u32 Q0, Q0, r8
// input[84]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 84)]
vqrdmlah.s32 Q1, Q0, r11
vstrw.u32 Q2, [r0,#(256)]
// Release input[64] from Q2
vqrdmulh.s32 Q2, Q3, r9
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r11
// input[80]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 80)]
vqrdmulh.s32 Q5, Q0, r5
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r4
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r11
// input[108]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 108)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r0,#(368)]
// Release input[92] from Q0
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r0,#(352)]
// Release input[88] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r0,#(336)]
// Release input[84] from Q4
vadd.s32 Q1, Q1, Q6
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[108]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r9
// input[104]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 104)]
vmul.u32 Q2, Q2, r8
// input[100]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 100)]
vqrdmlah.s32 Q0, Q2, r11
vstrw.u32 Q1, [r0,#(320)]
// Release input[80] from Q1
vqrdmulh.s32 Q1, Q3, r9
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r11
// input[96]: Load as Q0
vldrw.u32 Q0, [r0, #(4 * 96)]
vqrdmulh.s32 Q5, Q2, r5
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r4
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r11
// input[124]: Load as Q1
vldrw.u32 Q1, [r0, #(4 * 124)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r0,#(432)]
// Release input[108] from Q2
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r0,#(416)]
// Release input[104] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r0,#(400)]
// Release input[100] from Q4
vadd.s32 Q0, Q0, Q6
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[124]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r9
// input[120]: Load as Q3
vldrw.u32 Q3, [r0, #(4 * 120)]
vmul.u32 Q1, Q1, r8
// input[116]: Load as Q4
vldrw.u32 Q4, [r0, #(4 * 116)]
vqrdmlah.s32 Q2, Q1, r11
vstrw.u32 Q0, [r0,#(384)]
// Release input[96] from Q0
vqrdmulh.s32 Q0, Q3, r9
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r11
// input[112]: Load as Q2
vldrw.u32 Q2, [r0, #(4 * 112)]
vqrdmulh.s32 Q5, Q1, r5
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r4
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r11
// input[140]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -112)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r0,#(496)]
// Release input[124] from Q1
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r0,#(480)]
// Release input[120] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r0,#(464)]
// Release input[116] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[140]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r9
// input[136]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -116)]
vmul.u32 Q0, Q0, r8
// input[132]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -120)]
vqrdmlah.s32 Q1, Q0, r11
vstrw.u32 Q2, [r0,#(448)]
// Release input[112] from Q2
vqrdmulh.s32 Q2, Q3, r9
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r11
// input[128]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -124)]
vqrdmulh.s32 Q5, Q0, r5
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r4
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r11
// input[156]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -96)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(-448)]
// Release input[140] from Q0
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(-464)]
// Release input[136] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r14,#(-480)]
// Release input[132] from Q4
vadd.s32 Q1, Q1, Q6
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[156]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r9
// input[152]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -100)]
vmul.u32 Q2, Q2, r8
// input[148]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -104)]
vqrdmlah.s32 Q0, Q2, r11
vstrw.u32 Q1, [r14,#(-496)]
// Release input[128] from Q1
vqrdmulh.s32 Q1, Q3, r9
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r11
// input[144]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -108)]
vqrdmulh.s32 Q5, Q2, r5
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r4
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r11
// input[172]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -80)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(-384)]
// Release input[156] from Q2
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(-400)]
// Release input[152] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(-416)]
// Release input[148] from Q4
vadd.s32 Q0, Q0, Q6
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[172]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r9
// input[168]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -84)]
vmul.u32 Q1, Q1, r8
// input[164]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -88)]
vqrdmlah.s32 Q2, Q1, r11
vstrw.u32 Q0, [r14,#(-432)]
// Release input[144] from Q0
vqrdmulh.s32 Q0, Q3, r9
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r11
// input[160]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -92)]
vqrdmulh.s32 Q5, Q1, r5
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r4
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r11
// input[188]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -64)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(-320)]
// Release input[172] from Q1
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(-336)]
// Release input[168] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r14,#(-352)]
// Release input[164] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[188]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r9
// input[184]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -68)]
vmul.u32 Q0, Q0, r8
// input[180]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -72)]
vqrdmlah.s32 Q1, Q0, r11
vstrw.u32 Q2, [r14,#(-368)]
// Release input[160] from Q2
vqrdmulh.s32 Q2, Q3, r9
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r11
// input[176]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -76)]
vqrdmulh.s32 Q5, Q0, r5
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r4
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r11
// input[204]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -48)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(-256)]
// Release input[188] from Q0
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(-272)]
// Release input[184] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r14,#(-288)]
// Release input[180] from Q4
vadd.s32 Q1, Q1, Q6
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[204]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r9
// input[200]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -52)]
vmul.u32 Q2, Q2, r8
// input[196]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -56)]
vqrdmlah.s32 Q0, Q2, r11
vstrw.u32 Q1, [r14,#(-304)]
// Release input[176] from Q1
vqrdmulh.s32 Q1, Q3, r9
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r11
// input[192]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -60)]
vqrdmulh.s32 Q5, Q2, r5
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r4
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r11
// input[220]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -32)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(-192)]
// Release input[204] from Q2
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(-208)]
// Release input[200] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(-224)]
// Release input[196] from Q4
vadd.s32 Q0, Q0, Q6
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[220]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r9
// input[216]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -36)]
vmul.u32 Q1, Q1, r8
// input[212]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -40)]
vqrdmlah.s32 Q2, Q1, r11
vstrw.u32 Q0, [r14,#(-240)]
// Release input[192] from Q0
vqrdmulh.s32 Q0, Q3, r9
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r11
// input[208]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * -44)]
vqrdmulh.s32 Q5, Q1, r5
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r4
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r11
// input[236]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -16)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(-128)]
// Release input[220] from Q1
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(-144)]
// Release input[216] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r14,#(-160)]
// Release input[212] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[236]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r9
// input[232]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -20)]
vmul.u32 Q0, Q0, r8
// input[228]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -24)]
vqrdmlah.s32 Q1, Q0, r11
vstrw.u32 Q2, [r14,#(-176)]
// Release input[208] from Q2
vqrdmulh.s32 Q2, Q3, r9
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r11
// input[224]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * -28)]
vqrdmulh.s32 Q5, Q0, r5
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r4
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r11
// input[252]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 0)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(-64)]
// Release input[236] from Q0
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(-80)]
// Release input[232] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r14,#(-96)]
// Release input[228] from Q4
vadd.s32 Q1, Q1, Q6
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[252]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r9
// input[248]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * -4)]
vmul.u32 Q2, Q2, r8
// input[244]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * -8)]
vqrdmlah.s32 Q0, Q2, r11
vstrw.u32 Q1, [r14,#(-112)]
// Release input[224] from Q1
vqrdmulh.s32 Q1, Q3, r9
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r11
// input[240]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * -12)]
vqrdmulh.s32 Q5, Q2, r5
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r4
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r11
// input[268]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 16)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(0)]
// Release input[252] from Q2
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(-16)]
// Release input[248] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(-32)]
// Release input[244] from Q4
vadd.s32 Q0, Q0, Q6
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[268]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r9
// input[264]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 12)]
vmul.u32 Q1, Q1, r8
// input[260]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 8)]
vqrdmlah.s32 Q2, Q1, r11
vstrw.u32 Q0, [r14,#(-48)]
// Release input[240] from Q0
vqrdmulh.s32 Q0, Q3, r9
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r11
// input[256]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 4)]
vqrdmulh.s32 Q5, Q1, r5
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r4
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r11
// input[284]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 32)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(64)]
// Release input[268] from Q1
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(48)]
// Release input[264] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r14,#(32)]
// Release input[260] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[284]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r9
// input[280]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 28)]
vmul.u32 Q0, Q0, r8
// input[276]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 24)]
vqrdmlah.s32 Q1, Q0, r11
vstrw.u32 Q2, [r14,#(16)]
// Release input[256] from Q2
vqrdmulh.s32 Q2, Q3, r9
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r11
// input[272]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 20)]
vqrdmulh.s32 Q5, Q0, r5
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r4
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r11
// input[300]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 48)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(128)]
// Release input[284] from Q0
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(112)]
// Release input[280] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r14,#(96)]
// Release input[276] from Q4
vadd.s32 Q1, Q1, Q6
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[300]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r9
// input[296]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 44)]
vmul.u32 Q2, Q2, r8
// input[292]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 40)]
vqrdmlah.s32 Q0, Q2, r11
vstrw.u32 Q1, [r14,#(80)]
// Release input[272] from Q1
vqrdmulh.s32 Q1, Q3, r9
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r11
// input[288]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 36)]
vqrdmulh.s32 Q5, Q2, r5
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r4
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r11
// input[316]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 64)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(192)]
// Release input[300] from Q2
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(176)]
// Release input[296] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(160)]
// Release input[292] from Q4
vadd.s32 Q0, Q0, Q6
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[316]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r9
// input[312]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 60)]
vmul.u32 Q1, Q1, r8
// input[308]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 56)]
vqrdmlah.s32 Q2, Q1, r11
vstrw.u32 Q0, [r14,#(144)]
// Release input[288] from Q0
vqrdmulh.s32 Q0, Q3, r9
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r11
// input[304]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 52)]
vqrdmulh.s32 Q5, Q1, r5
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r4
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r11
// input[332]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 80)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(256)]
// Release input[316] from Q1
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(240)]
// Release input[312] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r14,#(224)]
// Release input[308] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[332]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r9
// input[328]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 76)]
vmul.u32 Q0, Q0, r8
// input[324]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 72)]
vqrdmlah.s32 Q1, Q0, r11
vstrw.u32 Q2, [r14,#(208)]
// Release input[304] from Q2
vqrdmulh.s32 Q2, Q3, r9
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r11
// input[320]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 68)]
vqrdmulh.s32 Q5, Q0, r5
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r4
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r11
// input[348]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 96)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r14,#(320)]
// Release input[332] from Q0
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(304)]
// Release input[328] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r14,#(288)]
// Release input[324] from Q4
vadd.s32 Q1, Q1, Q6
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[348]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r9
// input[344]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 92)]
vmul.u32 Q2, Q2, r8
// input[340]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 88)]
vqrdmlah.s32 Q0, Q2, r11
vstrw.u32 Q1, [r14,#(272)]
// Release input[320] from Q1
vqrdmulh.s32 Q1, Q3, r9
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r11
// input[336]: Load as Q0
vldrw.u32 Q0, [r14, #(4 * 84)]
vqrdmulh.s32 Q5, Q2, r5
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r4
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r11
// input[364]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 112)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r14,#(384)]
// Release input[348] from Q2
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(368)]
// Release input[344] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r14,#(352)]
// Release input[340] from Q4
vadd.s32 Q0, Q0, Q6
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[364]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r9
// input[360]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 108)]
vmul.u32 Q1, Q1, r8
// input[356]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 104)]
vqrdmlah.s32 Q2, Q1, r11
vstrw.u32 Q0, [r14,#(336)]
// Release input[336] from Q0
vqrdmulh.s32 Q0, Q3, r9
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r11
// input[352]: Load as Q2
vldrw.u32 Q2, [r14, #(4 * 100)]
vqrdmulh.s32 Q5, Q1, r5
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r4
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r11
// input[380]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -124)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r14,#(448)]
// Release input[364] from Q1
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(432)]
// Release input[360] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r14,#(416)]
// Release input[356] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[380]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r9
// input[376]: Load as Q3
vldrw.u32 Q3, [r14, #(4 * 124)]
vmul.u32 Q0, Q0, r8
// input[372]: Load as Q4
vldrw.u32 Q4, [r14, #(4 * 120)]
vqrdmlah.s32 Q1, Q0, r11
vstrw.u32 Q2, [r14,#(400)]
// Release input[352] from Q2
vqrdmulh.s32 Q2, Q3, r9
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r11
// input[368]: Load as Q1
vldrw.u32 Q1, [r14, #(4 * 116)]
vqrdmulh.s32 Q5, Q0, r5
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r4
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r11
// input[396]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * -108)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r12,#(-496)]
// Release input[380] from Q0
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r14,#(496)]
// Release input[376] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r14,#(480)]
// Release input[372] from Q4
vadd.s32 Q1, Q1, Q6
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[396]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r9
// input[392]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -112)]
vmul.u32 Q2, Q2, r8
// input[388]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * -116)]
vqrdmlah.s32 Q0, Q2, r11
vstrw.u32 Q1, [r14,#(464)]
// Release input[368] from Q1
vqrdmulh.s32 Q1, Q3, r9
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r11
// input[384]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -120)]
vqrdmulh.s32 Q5, Q2, r5
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r4
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r11
// input[412]: Load as Q1
vldrw.u32 Q1, [r12, #(4 * -92)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r12,#(-432)]
// Release input[396] from Q2
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r12,#(-448)]
// Release input[392] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r12,#(-464)]
// Release input[388] from Q4
vadd.s32 Q0, Q0, Q6
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[412]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r9
// input[408]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -96)]
vmul.u32 Q1, Q1, r8
// input[404]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * -100)]
vqrdmlah.s32 Q2, Q1, r11
vstrw.u32 Q0, [r12,#(-480)]
// Release input[384] from Q0
vqrdmulh.s32 Q0, Q3, r9
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r11
// input[400]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * -104)]
vqrdmulh.s32 Q5, Q1, r5
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r4
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r11
// input[428]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -76)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r12,#(-368)]
// Release input[412] from Q1
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r12,#(-384)]
// Release input[408] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r12,#(-400)]
// Release input[404] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[428]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r9
// input[424]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -80)]
vmul.u32 Q0, Q0, r8
// input[420]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * -84)]
vqrdmlah.s32 Q1, Q0, r11
vstrw.u32 Q2, [r12,#(-416)]
// Release input[400] from Q2
vqrdmulh.s32 Q2, Q3, r9
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r11
// input[416]: Load as Q1
vldrw.u32 Q1, [r12, #(4 * -88)]
vqrdmulh.s32 Q5, Q0, r5
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r4
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r11
// input[444]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * -60)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r12,#(-304)]
// Release input[428] from Q0
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r12,#(-320)]
// Release input[424] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r12,#(-336)]
// Release input[420] from Q4
vadd.s32 Q1, Q1, Q6
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[444]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r9
// input[440]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -64)]
vmul.u32 Q2, Q2, r8
// input[436]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * -68)]
vqrdmlah.s32 Q0, Q2, r11
vstrw.u32 Q1, [r12,#(-352)]
// Release input[416] from Q1
vqrdmulh.s32 Q1, Q3, r9
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r11
// input[432]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -72)]
vqrdmulh.s32 Q5, Q2, r5
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r4
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r11
// input[460]: Load as Q1
vldrw.u32 Q1, [r12, #(4 * -44)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r12,#(-240)]
// Release input[444] from Q2
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r12,#(-256)]
// Release input[440] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r12,#(-272)]
// Release input[436] from Q4
vadd.s32 Q0, Q0, Q6
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[460]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r9
// input[456]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -48)]
vmul.u32 Q1, Q1, r8
// input[452]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * -52)]
vqrdmlah.s32 Q2, Q1, r11
vstrw.u32 Q0, [r12,#(-288)]
// Release input[432] from Q0
vqrdmulh.s32 Q0, Q3, r9
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r11
// input[448]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * -56)]
vqrdmulh.s32 Q5, Q1, r5
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r4
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r11
// input[476]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -28)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r12,#(-176)]
// Release input[460] from Q1
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r12,#(-192)]
// Release input[456] from Q3
vsub.s32 Q4, Q2, Q6
vstrw.u32 Q4, [r12,#(-208)]
// Release input[452] from Q4
vadd.s32 Q2, Q2, Q6
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[476]: Already loaded as Q0
vqrdmulh.s32 Q1, Q0, r9
// input[472]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -32)]
vmul.u32 Q0, Q0, r8
// input[468]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * -36)]
vqrdmlah.s32 Q1, Q0, r11
vstrw.u32 Q2, [r12,#(-224)]
// Release input[448] from Q2
vqrdmulh.s32 Q2, Q3, r9
vsub.s32 Q0, Q4, Q1
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q1
vqrdmlah.s32 Q2, Q3, r11
// input[464]: Load as Q1
vldrw.u32 Q1, [r12, #(4 * -40)]
vqrdmulh.s32 Q5, Q0, r5
vsub.s32 Q3, Q1, Q2
vmul.u32 Q0, Q0, r4
vadd.s32 Q1, Q1, Q2
vqrdmlah.s32 Q5, Q0, r11
// input[492]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * -12)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q0, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q0, [r12,#(-112)]
// Release input[476] from Q0
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r12,#(-128)]
// Release input[472] from Q3
vsub.s32 Q4, Q1, Q6
vstrw.u32 Q4, [r12,#(-144)]
// Release input[468] from Q4
vadd.s32 Q1, Q1, Q6
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[492]: Already loaded as Q2
vqrdmulh.s32 Q0, Q2, r9
// input[488]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * -16)]
vmul.u32 Q2, Q2, r8
// input[484]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * -20)]
vqrdmlah.s32 Q0, Q2, r11
vstrw.u32 Q1, [r12,#(-160)]
// Release input[464] from Q1
vqrdmulh.s32 Q1, Q3, r9
vsub.s32 Q2, Q4, Q0
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q0
vqrdmlah.s32 Q1, Q3, r11
// input[480]: Load as Q0
vldrw.u32 Q0, [r12, #(4 * -24)]
vqrdmulh.s32 Q5, Q2, r5
vsub.s32 Q3, Q0, Q1
vmul.u32 Q2, Q2, r4
vadd.s32 Q0, Q0, Q1
vqrdmlah.s32 Q5, Q2, r11
// input[508]: Load as Q1
vldrw.u32 Q1, [r12, #(4 * 4)]
vqrdmulh.s32 Q6, Q4, r7
vsub.s32 Q2, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q2, [r12,#(-48)]
// Release input[492] from Q2
vqrdmlah.s32 Q6, Q4, r11
vstrw.u32 Q3, [r12,#(-64)]
// Release input[488] from Q3
vsub.s32 Q4, Q0, Q6
vstrw.u32 Q4, [r12,#(-80)]
// Release input[484] from Q4
vadd.s32 Q0, Q0, Q6
ldrd r9, r8, [r10], #+8
ldrd r7, r6, [r10], #+8
ldrd r5, r4, [r10], #+8
// input[508]: Already loaded as Q1
vqrdmulh.s32 Q2, Q1, r9
// input[504]: Load as Q3
vldrw.u32 Q3, [r12, #(4 * 0)]
vmul.u32 Q1, Q1, r8
// input[500]: Load as Q4
vldrw.u32 Q4, [r12, #(4 * -4)]
vqrdmlah.s32 Q2, Q1, r11
vstrw.u32 Q0, [r12,#(-96)]
// Release input[480] from Q0
vqrdmulh.s32 Q0, Q3, r9
vsub.s32 Q1, Q4, Q2
vmul.u32 Q3, Q3, r8
vadd.s32 Q4, Q4, Q2
vqrdmlah.s32 Q0, Q3, r11
// input[496]: Load as Q2
vldrw.u32 Q2, [r12, #(4 * -8)]
vqrdmulh.s32 Q5, Q1, r5
vsub.s32 Q3, Q2, Q0
vmul.u32 Q1, Q1, r4
vadd.s32 Q2, Q2, Q0
vqrdmlah.s32 Q5, Q1, r11
vqrdmulh.s32 Q0, Q4, r7
vsub.s32 Q1, Q3, Q5
vmul.u32 Q4, Q4, r6
vadd.s32 Q3, Q3, Q5
vstrw.u32 Q1, [r12,#(16)]
// Release input[508] from Q1
vqrdmlah.s32 Q0, Q4, r11
vstrw.u32 Q3, [r12,#(0)]
// Release input[504] from Q3
vsub.s32 Q4, Q2, Q0
vstrw.u32 Q4, [r12,#(-16)]
// Release input[500] from Q4
vadd.s32 Q2, Q2, Q0
vstrw.u32 Q2, [r12,#(-32)]
// Release input[496] from Q2
.equ modulus_inv, 4223674367
movw r9, #:lower16:modulus_inv
movt r9, #:upper16:modulus_inv
// Restore MVE vector registers
vpop {d8-d15}
// Restore GPRs
pop {r4-r11,lr}
bx lr

// Line count:        3960
// Instruction count: 3091