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

class PolyU16SIMD_16x16_cyc_v2(PolyU16SIMDBase):

    def __init__(self):
        PolyU16SIMDBase.__init__(self,
                                 anticyclic=True,
                                 poly_dim=16,
                                 optimize=True,
                                 neg_b=True)

        self.neg_b = True
        self.neg_a = False

    #
    # Anticyclic 16x16 multiplication
    #
    # - Experimental approach aimed at removing a VSHLC which
    #   by filling the overflow register with lane-VMOVs instead.
    #
    def loop(self):

        for dst_idx in range(0,2):
            yield from self.load_dest(dst_idx)

        self.overflow_vreg = core.regs.Reg(self.asm.vregs)
        yield from self.overflow_vreg.alloc()
        yield f"vmov.u16 {self.overflow_vreg.name()}, #0"
        yield f"mov {self.carry_gpr.name()}, #0"

        for cur_iter in range(0,8):

            self.set_iter(cur_iter)

            if not self.is_first_iteration():
                # Finish coefficient 0 from last iteration
                yield f"vshlc {self.get_dest(0)}, {self.carry_gpr.name()}, #16"

            if self.is_first_iteration():
                yield from self.load_a(0)
                yield from self.load_b(0)
            else:
                yield from self.load_a(0,next_iter=True)
            yield from self.mulacc(0,0)

            if not self.is_first_iteration():
                yield from self.load_a(1,next_iter=True)

            if self.is_first_iteration():
                yield from self.load_b(1)
                yield from self.load_a(1)
                yield from self.flip_b(1)

            yield from self.mulacc(1,1)

            if not self.is_first_iteration():
                # Finish coefficient 1 from last iteration
                yield f"vshlc {self.get_dest(1)}, {self.carry_gpr.name()}, #16"

            if self.is_first_iteration():
                yield from self.load_a(0,next_iter=True)

            yield from self.mulacc(1,0)
            if not self.is_first_iteration():
                # Shift overflow register
                yield f"vmov.u16 {self.overflow_vreg.name()}[{7-cur_iter}], {self.carry_gpr.name()}"
                # OPTIMIZATION: Consider using CLRM here to clear
                # two carry GPRs at once
                yield f"mov {self.carry_gpr.name()}, #0"

            else:
                yield from self.load_a(1,next_iter=True)
            yield from self.mulacc(0,1)

            for a_idx in range(0,2):
                yield from self.release_a(a_idx)

        yield f"vsub.u16 {self.get_dest(0)}, {self.get_dest(0)}, {self.overflow_vreg.name()}"
        self.overflow_vreg.free()

        for b_idx in range(0,2):
            yield from self.release_b(b_idx)
        for dst_idx in range(0,2):
            yield from self.release_dest(dst_idx)
