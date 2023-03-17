# Copyright (c) 2021 Arm Limited
# SPDX-License-Identifier: MIT

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

import sys, argparse
import itertools

from frame import PolyU16SIMDBase

from poly_32x32_naive     import PolyU16SIMD_32x32_naive
from poly_32x32_cyc_naive import PolyU16SIMD_32x32_cyc_naive
from poly_32x32_cyc_v1    import PolyU16SIMD_32x32_cyc_v1
from poly_32x32_cyc_karatsuba_naive import PolyU16SIMD_32x32_cyc_karatsuba_naive
from poly_32x32_cyc_karatsuba_packed import PolyU16SIMD_32x32_cyc_karatsuba_packed
from poly_32x32_cyc_karatsuba_fwd_naive import PolyU16SIMD_32x32_cyc_karatsuba_fwd_naive

from poly_16x16_cyc_v1      import PolyU16SIMD_16x16_cyc_v1
from poly_16x16_cyc_v1_ldrd import PolyU16SIMD_16x16_cyc_v1_ldrd
from poly_16x16_cyc_v1_ldrd_unrolled import PolyU16SIMD_16x16_cyc_v1_ldrd_unrolled
from poly_16x16_cyc_v2      import PolyU16SIMD_16x16_cyc_v2
from poly_16x16_cyc_v3      import PolyU16SIMD_16x16_cyc_v3
from poly_16x16_cyc_v4      import PolyU16SIMD_16x16_cyc_v4
from poly_16x16_cyc_v5      import PolyU16SIMD_16x16_cyc_v5

from poly_16x16_naive     import PolyU16SIMD_16x16_naive
from poly_16x16_cyc_naive    import PolyU16SIMD_16x16_cyc_naive
from poly_16x16_cyc_naive_v2 import PolyU16SIMD_16x16_cyc_naive_v2
from poly_16x16_cyc_naive_v3 import PolyU16SIMD_16x16_cyc_naive_v3
from poly_16x16_cyc_naive_v4 import PolyU16SIMD_16x16_cyc_naive_v4

def main(argv):

    outfile = None
    degree = None

    parser = argparse.ArgumentParser(
        formatter_class=argparse.ArgumentDefaultsHelpFormatter)

    parser.add_argument("--out", type=str, default=None,
                        help="The name of the file to write the generated assembly to. If unspecified, the assembly will be printed on the standard output.")
    parser.add_argument("--no-comments", dest='no_comments', action='store_true')
    parser.add_argument("--optimize", dest='optimize', action='store_true')
    parser.add_argument("--accumulate", dest='accumulate', action='store_true')
    parser.add_argument("--karatsuba", dest='karatsuba', action='store_true',default=False)
    parser.add_argument("--karatsuba-fwd", dest='karatsuba_fwd', action='store_true',default=False)
    parser.add_argument("--anticyclic", dest='anticyclic', action='store_true',
                        help="Generate assembly for polynomial multiplication modulo X^32+1")
    parser.add_argument("--dim", type=int, default=32,
                        help="Generate assembly for polynomial multiplication modulo X^32+1")
    parser.add_argument("--carry-mode", choices=['predicated-add', 'predicated-move', 'lane-move'])
    parser.add_argument("--loop", type=int, default=1)
    parser.add_argument("symbol", type=str,
                        help="The name of the function symbol to emit.")

    args = parser.parse_args()

    src_a = 'r1'
    src_b = 'r2'
    dst   = 'r0'

    if args.dim == 32:
        if args.karatsuba:
            code_gen = PolyU16SIMD_32x32_cyc_karatsuba_naive(accumulate=args.accumulate).standalone(src_a,src_b,
                                                                          dst,args.symbol)
        elif args.karatsuba_fwd:
            code_gen = PolyU16SIMD_32x32_cyc_karatsuba_fwd_naive().standalone(src_a,src_b,
                                                                    dst,args.symbol)
        elif args.anticyclic:
            if args.optimize:
                code_gen = PolyU16SIMD_32x32_cyc_v1().standalone(src_a,src_b,
                                                                 dst,args.symbol)
            else:
                code_gen = PolyU16SIMD_32x32_cyc_naive().standalone(src_a,src_b,
                                                                    dst,args.symbol)
        else:
            code_gen = PolyU16SIMD_32x32_naive().standalone(src_a,src_b,dst,args.symbol)
    elif args.dim == 16:
        if args.anticyclic:
            if args.optimize:
                code_gen = PolyU16SIMD_16x16_cyc_v5().standalone(src_a,src_b,
                                                                 dst,args.symbol,
                                                                 loop=63)
            else:
                code_gen = PolyU16SIMD_16x16_cyc_naive_v4(add_shift_by_16=True).standalone(src_a,src_b,
                                                                                           dst,args.symbol)
        else:
            code_gen = PolyU16SIMD_16x16_naive().standalone(src_a,src_b,dst,args.symbol)
    else:
        raise Exception("Invalid arguments")

    code_all       = []
    code_essential = []

    line_count = 0;

    def is_code_line(line):
        if len(line) < 2:
            return False
        if line[0:2] == '//' and not line[0:3] == '///':
            return False
        return True

    for line in code_gen:
        code_all.append(line)

    # The code generation sometimes emits multiple lines -- split those
    code_all = list(itertools.chain.from_iterable(map(lambda s: s.split("\n"), code_all)))

    code_essential = list(filter(is_code_line, code_all))
    line_count_total = len(code_all)
    line_count_essential = len(list(code_essential))

    code_all.append(f'')
    code_all.append(f'// Instruction count: {line_count_essential}')
    if not args.no_comments:
        code_all.append(f'// Line count:        {line_count_total}')
        code_all_str = "\n".join(code_all)
    else:
        code_all_str = "\n".join(list(code_essential))

    if not args.out == None:
        f = open(args.out,"w")
        f.write(code_all_str)
        f.close()
    else:
        print(code_all_str)

if __name__ == "__main__":
   main(sys.argv[1:])
