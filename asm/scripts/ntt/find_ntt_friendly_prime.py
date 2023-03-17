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

def find_and_print_root_of_unity(p,ntt_size):

    if ntt_size % 3 != 0:
        factors = [2]
    else:
        factors = [2,3]

    for root in range(2,p):
        if pow(root,ntt_size,p) != 1:
            continue
        primitive = True
        for f in factors:
            if pow(root,ntt_size // f,p) == 1:
                primitive=False
        if not primitive:
            continue
        return root
    raise Exception("Couldn't find suitable root of unity!")

def calculate_refined_barrett_mul(p,const):
    # Check quality of approximation in Barrett multiplication
    l0      = math.floor(math.log(p,2))
    l1      = math.ceil(math.log(const,2))
    exp     = 31+l0-l1
    shift   = exp - 32
    quot    = (2**exp*const) / p
    err     = abs(quot - round(quot))
    approx  = round(quot)
    quality = math.log(const,2) + math.log(err,2)
    return approx, quality, err, exp, shift

def is_ntt_friendly_prime(p,size):
    if not isprime(p):
        return False
    if not (p-1) % size == 0:
        return False
    return True

def main(argv):

    parser = argparse.ArgumentParser(
        formatter_class=argparse.ArgumentDefaultsHelpFormatter)
    parser.add_argument("ntt_size", type=int)
    parser.add_argument("--min_bits", type=float, default=24)
    parser.add_argument("--max_bits", type=float, default=32)
    parser.add_argument("--min_prod", type=float, default=0.0)
    parser.add_argument("--max_prod", type=float, default=64.0)
    parser.add_argument("--p", type=int, default=None)
    args = parser.parse_args()

    size = args.ntt_size

    if args.p == None:
        low   = round(pow(2,args.min_bits))
        high  = round(pow(2,args.max_bits))
        start = size * (low // size)
        lst   = range(start+1, high, size)
    else:
        lst = [args.p]

    max_quality = 0
    for p in lst:

        if not is_ntt_friendly_prime(p,size):
            continue

        # We're searching for primes q s.t. (q mod p)^{-1} is small.
        # Calculate inverses of small redidues first, and then check
        # k*p+res for primality and NTT friendlyness.
        invs_of_small = list(map(lambda x: pow(x,-1,p), range(1,1000)))
        for q in [ k*p + res for k in range(1,5) for res in invs_of_small ]:

            if not is_ntt_friendly_prime(q,size):
                continue

            if ( math.log(q,2)   > args.max_bits or
                 math.log(p*q,2) < args.min_prod or
                 math.log(p*q,2) > args.max_prod ):
                continue

            # Check quality of approximation in Barrett multiplication
            small = pow(q%p, -1, p)
            approx, quality, err, exp, shift = calculate_refined_barrett_mul(p,small)

            if quality < 0:
                if quality < max_quality:
                    max_quality = quality

                root_p = find_and_print_root_of_unity(p,size)
                root_q = find_and_print_root_of_unity(q,size)

                approx_q, _, _, _, shift_q = calculate_refined_barrett_mul(q,1)

                print(f"\n================== RESULT ===========================")
                print(f"* p:                   {p:20d} ({math.log(p,2)}")
                print(f"* q:                   {q:20d} ({math.log(q,2)}")
                print(f"* p*q:                 {p*q:20d} ({math.log(p*q,2)}")
                print(f"* (q mod p)^{{-1}}:      {pow(q%p,-1,p)}")
                print(f"* Constant:            {approx} ({math.log(abs(approx),2)})")
                print(f"* Approximation:       {math.log(err,2)}")
                print(f"* Quality:             {quality}")
                print(f"* Exponent:            {exp} (shift {shift})")
                print(f"* p Montgomery twist:  {pow(p,-1,2**32)}")
                print(f"* q Montgomery twist:  {pow(q,-1,2**32)}")
                print(f"* p {size:2d}-root:           {root_p}")
                print(f"* q {size:2d}-root:           {root_q}")
                print(f"* q ref Barrett const: {approx_q}")
                print(f"* q ref Barrett shift: {shift_q}")

if __name__ == "__main__":
   main(sys.argv[1:])
