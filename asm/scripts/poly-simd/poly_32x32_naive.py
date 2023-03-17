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

import core
import core.asm
import core.rw
import core.markers
import mve
import mve.regs
import mve.rw

from frame import PolyU16SIMDBase

class PolyU16SIMD_32x32_naive(PolyU16SIMDBase):

    def __init__(self):
        PolyU16SIMDBase.__init__(self,
                                 anticyclic=False,
                                 poly_dim=32,
                                 optimize=False)

    #
    # Naive implementation of the algorithm in the case
    # of a 32x32 multiplication
    #
    def loop(self):

        yield "mov r0, r0"
        yield "mov r0, r0"

        for cur_iter in range(0,8):

            self.set_iter(cur_iter)
            yield from self.reset_carry()

            # The a-input can be kept in GPRs throughout the iteration
            for a_idx in range(0,4):
                yield from self.load_a(a_idx)

            # What follows is a straightforward Comba / column-wise
            # polynomial multiplication of degree 4. Recall, though,
            # that under the hood we're actually computing 8 such
            # multiplications in parallel, because one input is a
            # vector.

            # Column 0
            yield from self.load_b(0)
            yield from self.load_dest(0)
            yield from self.mulacc(0,0)
            yield from self.finish_coeff(0)
            yield from self.release_dest(0)
            # Column 1
            yield from self.load_dest(1)
            yield from self.mulacc(1,0)
            yield from self.load_b(1)
            yield from self.mulacc(0,1)
            yield from self.finish_coeff(1)
            yield from self.release_dest(1)
            # Column 2
            yield from self.load_dest(2)
            yield from self.mulacc(2,0)
            yield from self.mulacc(1,1)
            yield from self.load_b(2)
            yield from self.mulacc(0,2)
            yield from self.finish_coeff(2)
            yield from self.release_dest(2)
            # Column 3
            yield from self.load_dest(3)
            yield from self.mulacc(3,0)
            yield from self.mulacc(2,1)
            yield from self.mulacc(1,2)
            yield from self.load_b(3)
            yield from self.mulacc(0,3)
            yield from self.finish_coeff(3)
            yield from self.release_dest(3)
            # Column 4
            yield from self.load_dest(4)
            yield from self.mulacc(3,1)
            yield from self.mulacc(2,2)
            yield from self.mulacc(1,3)
            yield from self.finish_coeff(4)
            yield from self.release_dest(4)
            # Column 5
            yield from self.load_dest(5)
            yield from self.mulacc(3,2)
            yield from self.mulacc(2,3)
            yield from self.finish_coeff(5)
            yield from self.release_dest(5)
            # Column 6
            yield from self.load_dest(6)
            yield from self.mulacc(3,3)
            yield from self.finish_coeff(6)
            yield from self.release_dest(6)
            # Wrapup iteration
            yield from self.load_dest(7)
            yield from self.finish_coeff(7)
            yield from self.release_dest(7)

            # End of iteration
            for a_idx in range(0,4):
                yield from self.release_a(a_idx)
