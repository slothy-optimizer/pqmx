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

from evaluation    import KaratsubaEvaluation
from interpolation import KaratsubaInterpolation

def main(argv):

    outfile = None
    degree = None

    parser = argparse.ArgumentParser(
        formatter_class=argparse.ArgumentDefaultsHelpFormatter)
    parser.add_argument("--dim", type=int, default=32,
                        help="The dimension of the polynomials to be multiplied. Equivalently, one less than the polynomial degree.")
    parser.add_argument("--out", type=str, default=None,
                        help="The name of the file to write the generated assembly to. If unspecified, the assembly will be printed on the standard output.")
    parser.add_argument("--padding", dest='padding', action='store_true',
                        help="Add padding between the Karatsuba evaluations before calling the inner multiplication. Padding may be useful assumption for the inner multiplication routine to simplify the code. This only makes sense in mode 'standalone'.")
    parser.add_argument("--keep-no-op-evals-on-stack", dest='keep_no_op_evals_on_stack', action='store_true')
    parser.add_argument("--no-comments", dest='no_comments', action='store_true')
    parser.add_argument("--no-overlap", dest='no_overlap', action='store_true')
    parser.add_argument("--karatsubax2-interpolation-save-gprs", dest='karatsubax2_save_gprs', action='store_true')
    parser.add_argument("--striding", dest='striding', action='store_true')
    parser.add_argument("--striding-layout", type=str, choices=["top","bottom"], default="top")
    parser.add_argument("--inner", type=str, default=None,
                        help="The name of the inner polynomial multiplication routine to call. This must be specified in mode 'standalone' and is meaningless in mode 'evaluation'")
    parser.add_argument("mode", type=str, choices=['standalone','evaluation','interpolation'],
                        help="What functionality to generate code for: 'standalone' for a standalone polynomial multiplication routine based on Karatsuba and an inner multiplication specified by --inner. 'evaluation' for a standalone evaluation routine which performs the Karatsuba evaluation step in-place, similar to the forward-NTT. 'interpolation' for a standalone interpolation routine which performs the Karatsuba interpolation step in-place, similar to the inverse-NTT. ")
    parser.add_argument("symbol", type=str,
                        help="The name of the function symbol to emit.")

    args = parser.parse_args()

    src_a = 'r1'
    src_b = 'r2'
    dst   = 'r0'

    code_all       = []
    code_essential = []

    line_count = 0;

    def is_code_line(line):
        if len(line) < 2:
            return False
        if line[0:2] == '//':
            return False
        return True

    if args.mode == 'evaluation':

        karatsubax2 = KaratsubaEvaluation(args.dim, striding=args.striding,
                                    striding_layout=args.striding_layout)
        code_gen = karatsubax2.standalone('r0', args.symbol)

    elif args.mode == 'interpolation':

        if args.no_overlap:
            karatsubax2 = KaratsubaInterpolation(int(args.dim / 4), no_overlap=True, dual=False,
                                       save_gprs=args.karatsubax2_save_gprs)
        elif args.striding:
            karatsubax2 = KaratsubaInterpolation(int(args.dim / 4), no_overlap=False, dual=True,
                                       dual_layout=args.striding_layout,
                                       save_gprs=args.karatsubax2_save_gprs)
        else:
            karatsubax2 = KaratsubaInterpolation(2*int(args.dim / 4), no_overlap=False, dual=False,
                                       save_gprs=args.karatsubax2_save_gprs)
        code_gen = karatsubax2.standalone('r0', args.symbol)

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
