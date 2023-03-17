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

from transpose import GatherLoadTest

def main(argv):

    outfile = None
    degree = None

    parser = argparse.ArgumentParser(
        formatter_class=argparse.ArgumentDefaultsHelpFormatter)
    parser.add_argument("--out", type=str, default=None,
                 help="The name of the file to write the generated assembly to. "\
                 "If unspecified, the assembly will be printed on the standard output.")
    parser.add_argument("--size", type=int, default=4096,
                        help="The length in bytes of the input buffer holding the matrix to be transposed")
    parser.add_argument("--bitwidth", type=int, default=16, choices={8,16,32},
                        help="The bit-width of each entry in the buffer")
    parser.add_argument("--block-size", type=int, default=16,
                        help="The number of entries in each block")
    parser.add_argument("--stride", type=int, default=4,
                        help="The number of blocks per row")
    parser.add_argument("--no-comments", dest='no_comments', action='store_true')

    args = parser.parse_args()

    src = 'r1'
    dst = 'r0'

    code_all       = []
    code_essential = []

    line_count = 0;

    def is_code_line(line):
        if len(line) < 2:
            return False
        if line[0:2] == '//':
            return False
        return True

    reader = GatherLoadTest(src,dst,args.size, args.stride,
                            args.block_size, bitwidth=args.bitwidth)
    code_gen = reader.standalone()

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
