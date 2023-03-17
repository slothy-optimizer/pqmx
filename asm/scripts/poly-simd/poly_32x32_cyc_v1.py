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

class PolyU16SIMD_32x32_cyc_v1(PolyU16SIMDBase):

    def __init__(self):
        PolyU16SIMDBase.__init__(self,
                                 anticyclic=True,
                                 poly_dim=32,
                                 optimize=True)

    #
    # Naive implementation of the algorithm in the case
    # of a 32x32 multiplication
    #
    def loop(self):

        if self.carry_mode in [ 'predicated-add', 'predicated-move' ]:
            # Setup predication control for carry-moves once and for all
            yield "// Setup predication control register for carry-moves"
            vpr_p0 = core.regs.Reg(self.asm.gprs, str_name=f"vpr.p0")
            yield from vpr_p0.alloc()
            yield f"mov {vpr_p0.name()}, #0x3"
            yield f"vmsr p0, {vpr_p0.name()}"
            vpr_p0.free()

        # In the anticyclic case, we can hold the vector input
        # and the vector output in vector registers all the time.
        # The following chained load demonstrates that point, but
        # for the optimized implementation those loads should be
        # scattered through the first iteration.
        for dst_idx in range(0,4):
            yield from self.load_dest(dst_idx)

        for cur_iter in range(0,8):

            self.set_iter(cur_iter)

            first_iteration = ( cur_iter == 0 )

            if first_iteration:
                yield from self.load_a(1)
                yield from self.load_b(0)

            yield from self.mulacc(1,0)

            if first_iteration:
                yield from self.load_a(2)
                yield from self.load_b(1)
            else:
                yield from self.finish_coeff(2,last_iter=True)

            yield from self.mulacc(2,0)

            if first_iteration:
                yield from self.load_a(3)
                yield from self.load_b(2)
            else:
                yield from self.wrap_coeff(2,negated=False,last_iter=True)

            yield from self.mulacc(3,0)

            if first_iteration:
                yield from self.load_a(0)
                yield from self.load_b(3)

            yield from self.mulacc(2,1)
            yield from self.flip_a(3)
            yield from self.mulacc(1,1)
            yield from self.flip_a(2)
            yield from self.mulacc(1,2)
            yield from self.flip_a(1)
            yield from self.mulacc(0,3)
            yield from self.load_a(0, next_iter=True)
            yield from self.mulacc(1,3)
            yield from self.load_a(1, next_iter=True)
            yield from self.mulacc(2,2)
            yield from self.load_a(2, next_iter=True)
            yield from self.mulacc(3,1)
            yield from self.load_a(3, next_iter=True)
            yield from self.mulacc(0,0)
            yield from self.reset_carry()
            yield from self.mulacc(0,1)
            if not self.is_last_iteration():
                yield from self.finish_coeff(3)
            else:
                yield from self.release_dest(3)
            yield from self.mulacc(2,3)
            if self.is_last_iteration():
                yield from self.release_dest(0)
            yield from self.mulacc(3,2)
            yield from self.negate_carry()
            yield from self.mulacc(0,2)
            if not self.is_last_iteration():
                yield from self.finish_coeff(0)
            else:
                yield from self.release_dest(1)
            yield from self.mulacc(3,3)

            if not self.is_last_iteration():
                yield from self.finish_coeff(1)
            else:
                yield from self.release_dest(2)


            # End of iteration
            for a_idx in range(0,4):
                yield from self.release_a(a_idx)

        for b_idx in range(0,4):
            yield from self.release_b(b_idx)
