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

import sys, argparse, math
from sympy import isprime

from fractions import Fraction

def main(argv):

    parser = argparse.ArgumentParser(
        formatter_class=argparse.ArgumentDefaultsHelpFormatter)
    parser.add_argument("p", type=int)
    parser.add_argument("const", type=int, default=24)
    parser.add_argument("shift", type=int, default=32)
    parser.add_argument("--fix-input", type=int, default=None)
    parser.add_argument("--step", type=int, default=1000)
    parser.add_argument("--width", type=int, default=32)
    parser.add_argument("--status", default=False, action='store_true')

    args = parser.parse_args()

    p     = args.p
    const = args.const
    shift = args.shift

    width = args.width

    def round_div_exact(a,b):
        r = a % b
        if r >= b//2:
            r -= b
        a -= r
        return a//b

    if not args.fix_input:
        xs = range(-2**(width-1),2**width,args.step)
    else:
        xs = [args.fix_input]

    for i, x in enumerate(xs)

        ref     = round_div_exact(x*const,p)
        approx  = round_div_exact(2**shift * const, p)
        barrett = round_div_exact(x*approx, 2**shift)
        if ref != barrett:
            print( f"FAILURE at {x}!" )

        if i % (10**3*args.step) == 0 and args.status:
            print(f"\rStatus: {(i*100/2**width):2.3f}% done",end="")

    print("\n OK!" )

if __name__ == "__main__":
   main(sys.argv[1:])
