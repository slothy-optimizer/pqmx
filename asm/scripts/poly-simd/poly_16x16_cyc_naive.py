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

class PolyU16SIMD_16x16_cyc_naive(PolyU16SIMDBase):

    def __init__(self):
        PolyU16SIMDBase.__init__(self,
                                 anticyclic=True,
                                 poly_dim=16,
                                 optimize=False)

    #
    # Anticyclic 16x16 multiplication
    #
    # - Columnwise multiplication
    # - Anticyclic wraparound by explicit sign-flips in GPR input
    # - No pipeline optimization
    # - Carry handling depending on the `carry_mode` setting
    #   in the parent class
    #
    def loop(self):

        # Setup predication control for carry-moves once and for all
        yield "// Setup predication control register for carry-moves"
        vpr_p0 = core.regs.Reg(self.asm.gprs, str_name=f"vpr.p0")
        yield from vpr_p0.alloc()
        yield f"mov {vpr_p0.name()}, #0x3"
        yield f"vmsr p0, {vpr_p0.name()}"
        vpr_p0.free()

        for b_idx in range(0,2):
            yield from self.load_b(b_idx)
        for dst_idx in range(0,2):
            yield from self.load_dest(dst_idx)

        for cur_iter in range(0,8):

            # The a-input can be kept in GPRs throughout the iteration
            for a_idx in range(0,2):
                yield from self.load_a(a_idx)

            # Column 0
            yield from self.mulacc(0,0)
            # Column 1
            yield from self.mulacc(1,0)
            yield from self.mulacc(0,1)
            # Upper half
            # We don't need to flip a[0] because it's
            # not used in the upper half.
            yield from self.flip_a(1)
            # Column 2
            yield from self.mulacc(1,1)
            yield from self.finish_coeff(0)
            yield from self.finish_coeff(1)
            # End of iteration
            for a_idx in range(0,2):
                yield from self.release_a(a_idx)

        for b_idx in range(0,2):
            yield from self.release_b(b_idx)
        for dst_idx in range(0,2):
            yield from self.release_dest(dst_idx)
