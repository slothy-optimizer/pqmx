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

def main(argv):

    parser = argparse.ArgumentParser(
        formatter_class=argparse.ArgumentDefaultsHelpFormatter)
    parser.add_argument("p",       type=int)
    parser.add_argument("--q",     type=int, default=None)
    parser.add_argument("--const", type=int, default=None)
    parser.add_argument("--refined", default=False, action='store_true')

    args = parser.parse_args()

    p = args.p
    q = None

    if args.q != None and args.const != None:
        raise Exception("Invalid arguments")

    const = 1
    if args.q != None:
        q = args.q
        const = pow(q,-1,p)
        if const > p/2:
            const -= p
    elif args.const != None:
        const = args.const

    const_sz = math.ceil(math.log(abs(const),2))
    p_sz = math.floor(math.log(p,2))

    if args.refined:
        exp = 31 + p_sz - const_sz
    else:
        exp = 32

    exp += 0
    shift = exp - 32 + 1

    def round_div_exact(a,b):
        r = a % b
        if r >= b//2:
            r -= b
        a -= r
        return a//b

    quot  = 2**exp * const / p
    rquot = round_div_exact(2**exp * const, p)

    err = abs(quot - rquot)
    log_err = math.log(err,2)

    print( f"p:                {p} (2**{math.log(abs(p),2)})")
    if q != None:
        print( f"q:                {q} (2**{math.log(abs(q),2)})")
    print( f"Constant:         {const} (2**{math.log(abs(const),2)})")
    print( f"Twisted constant: {rquot} (2**{math.log(abs(rquot),2)})")
    print( f"Rounding quality: {log_err}")
    print( f"Shift:            {shift}")

if __name__ == "__main__":
   main(sys.argv[1:])
