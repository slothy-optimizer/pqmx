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

from ntt import NTT

def main(argv):

    outfile = None
    degree = None

    parser = argparse.ArgumentParser(
        formatter_class=argparse.ArgumentDefaultsHelpFormatter)
    parser.add_argument("--out", type=str, default=None,
                        help="The name of the file to write the generated assembly to. If unspecified, the assembly will be printed on the standard output.")
    parser.add_argument("size", type=int)
    parser.add_argument("modulus", type=int)
    parser.add_argument("root", type=int)
    parser.add_argument("layers", type=int)
    parser.add_argument("symbol", type=str)
    parser.add_argument("--inverse", default=False, action='store_true')
    parser.add_argument("--bitsize", type=int, default=32)
    parser.add_argument("--increment", default=False, action='store_true')
    parser.add_argument("--skip-first", default=False, action='store_true')
    parser.add_argument("--rev4", default=False, action='store_true')
    parser.add_argument("--incomplete-root", default=False, action='store_true')
    parser.add_argument("--good", default=False, action='store_true')
    parser.add_argument("--double", default=False, action='store_true')
    parser.add_argument("--external", default=False, action='store_true')
    parser.add_argument("--half-input", default=False, action='store_true')
    parser.add_argument("--barrett-mul", default=False, action='store_true')
    parser.add_argument("--bitreversed", default=False, action='store_true')
    parser.add_argument("--negacyclic", default=False, action='store_true')
    parser.add_argument("--roots-only", default=False, action='store_true')

    args = parser.parse_args()

    src = 'r0'

    code_all       = []
    code_essential = []

    line_count = 0;

    def is_code_line(line):
        if len(line) < 2:
            return False
        if line[0:2] == '//':
            return False
        return True

    ntt = NTT( src             = src,
               size            = args.size,
               modulus         = args.modulus,
               root            = args.root,
               layers          = args.layers,
               inverse         = args.inverse,
               precompute      = args.double,
               negacyclic      = args.negacyclic,
               skip_first      = args.skip_first,
               bitreversed     = args.bitreversed,
               roots_only      = args.roots_only,
               barrett_mul     = args.barrett_mul,
               rev4            = args.rev4,
               external        = args.external,
               bitsize         = args.bitsize,
               half_input      = args.half_input,
               incomplete_root = args.incomplete_root,
               good            = args.good,
               increment       = args.increment
              )
    code_gen = ntt.standalone(args.symbol)

    for line in code_gen:
        code_all.append(line)

    code_essential = filter(is_code_line, code_all)
    line_count_total = len(list(code_all))
    line_count_essential = len(list(code_essential))

    if not args.roots_only:
        code_all.append(f'')
        code_all.append(f'// Line count:        {line_count_total}')
        code_all.append(f'// Instruction count: {line_count_essential}')

    code_all_str = "\n".join(code_all)

    if not args.out == None:
        f = open(args.out,"w")
        f.write(code_all_str)
        f.close()
    else:
        print(code_all_str)

if __name__ == "__main__":
   main(sys.argv[1:])
