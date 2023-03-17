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

class PolyU16SIMD_16x16_cyc_naive_v2(PolyU16SIMDBase):

    def __init__(self):
        PolyU16SIMDBase.__init__(self,
                                 anticyclic=True,
                                 poly_dim=16,
                                 optimize=True,
                                 neg_b=True)

        self.neg_b = True
        self.neg_a = False

    def set_src_a(self,src_a):
        self.src_gpr = mve.rw.QuadU16GPRRead(self.asm.gprs, "a", src_a)

    def loop(self):

        # We need 12 GPRs in the following:
        # - 8 for the A-input
        # - 4 for carry GPRs
        # As it stands, 3 GPRs are allocated for the two input and
        # the single output address. As we need the output address
        # in the end only, push it onto the stack.
        #
        # TODO: Think whether this can be avoided somehow...
        yield f"push {{{self.base_dst.name()}}}"
        self.base_dst.free()

        for dst_idx in range(0,2):
            yield from self.load_dest(dst_idx)

        self.overflow_vreg = core.regs.Reg(self.asm.vregs)
        yield from self.overflow_vreg.alloc()

        self.carry_gprs = {}
        self.carry_gprs[0] = self.carry_gpr
        self.carry_gprs[1] = core.regs.Reg(self.asm.gprs, str_name=f"carry1")
        self.carry_gprs[2] = core.regs.Reg(self.asm.gprs, str_name=f"carry2")
        self.carry_gprs[3] = core.regs.Reg(self.asm.gprs, str_name=f"carry2")

        yield from self.carry_gprs[1].alloc(constraint=lambda x: not x == "r14")
        yield from self.carry_gprs[2].alloc(constraint=lambda x: not x == "r14")
        yield from self.carry_gprs[3].alloc(self.dst_name)

        def carry_gpr_idx(iter_idx):
            return iter_idx % 4

        yield from self.load_b(0)
        yield from self.load_b(1)
        yield from self.flip_b(1)

        # First, go through even iterations
        for cur_iter in range(0,4):

            first_iteration = (cur_iter == 0)
            a_index = 6 - 2 * cur_iter

            # Zeroize two carries at once
            if cur_iter == 0 or cur_iter == 2:
                yield f"clrm {{{self.carry_gprs[carry_gpr_idx(cur_iter)].name()}, "   \
                             f"{self.carry_gprs[carry_gpr_idx(cur_iter+1)].name()}}}"

            cur_carry = self.carry_gprs[carry_gpr_idx(cur_iter)]

            # Prepare A-input for this iteration in two GPRs
            yield from self.load_a(0, real_index=a_index)
            yield from self.load_a(1, real_index=a_index)

            # Do the actual 2x2 anticyclic schoolbook multiplication
            yield from self.mulacc(0, 0, real_index=a_index, sign=False)
            yield from self.mulacc(1, 1, real_index=a_index, sign=True)
            yield from self.mulacc(0, 1, real_index=a_index, sign=False)
            yield from self.mulacc(1, 0, real_index=a_index, sign=False)

            yield f"vshlc {self.get_dest(0)}, {cur_carry.name()}, #32"
            yield f"vshlc {self.get_dest(1)}, {cur_carry.name()}, #32"

            # Move two carries into the overflow vector simultaneously
            if cur_iter >= 2:
                yield f"vmov {self.overflow_vreg.name()}[{3-cur_iter+2}], "          \
                           f"{self.overflow_vreg.name()}[{3-cur_iter+0}], "          \
                           f"{self.carry_gprs[carry_gpr_idx(cur_iter - 0)].name()}," \
                           f"{self.carry_gprs[carry_gpr_idx(cur_iter - 2)].name()}"

        # The result of the even iterations is already in the right place, but
        # the odd iterations will shift it by X^8. Multiply by -X^8 so that,
        # in the end, it will be in the right place again.
        #
        # Luckily, a shift by -X^8 just swaps the two vectors and adds a sign;
        # it's the same as a multiplication by -i in terms of real and complex
        # coordinates (no surprise, as X^8 is an imaginary unit in our base
        # polynomial ring).
        yield f"vsub.u16 {self.get_dest(0)}, "          \
                       f"{self.overflow_vreg.name()}, " \
                       f"{self.get_dest(0)}"

        # Swap dest(0) and dest(1)
        d0 = self.get_dest(0)
        d1 = self.get_dest(1)
        yield from self.release_dest(0,writeback=False)
        yield from self.release_dest(1,writeback=False)
        yield from self.load_dest(0, force_reg=d1, skip_load=True)
        yield from self.load_dest(1, force_reg=d0, skip_load=True)

        # Multiply vector operand by X
        yield f"vshlc {self.get_b(0)}, {cur_carry.name()}, #16"
        yield f"vshlc {self.get_b(1)}, {cur_carry.name()}, #16"
        yield f"neg {cur_carry.name()}, {cur_carry.name()}"
        yield f"vmov.u16 {self.get_b(0)}[0], {cur_carry.name()}"
        yield f"vneg.s16 {self.neg_b_vregs[1].name()}, {self.get_b(1)}"

        # Now, go through odd iterations
        for cur_iter in range(0,4):
            last_iteration = ( cur_iter == 3 )

            yield "nop"

            first_iteration = (cur_iter == 0)
            a_index = 6 - 2 * cur_iter + 1

            cur_carry = self.carry_gprs[carry_gpr_idx(cur_iter)]
            if cur_iter == 0 or cur_iter == 2:
                yield f"clrm {{{self.carry_gprs[carry_gpr_idx(cur_iter)].name()}, "   \
                             f"{self.carry_gprs[carry_gpr_idx(cur_iter+1)].name()}}}"

            # Prepare A-input for this iteration in two GPRs
            yield from self.load_a(0, real_index=a_index)
            yield from self.load_a(1, real_index=a_index)

            # To the actual schoolbook multiplication
            yield from self.mulacc(0, 0, real_index=a_index, sign=False)
            yield from self.mulacc(1, 1, real_index=a_index, sign=True )
            yield from self.mulacc(0, 1, real_index=a_index, sign=False)
            yield from self.mulacc(1, 0, real_index=a_index, sign=False)

            if not last_iteration:
                yield f"vshlc {self.get_dest(0)}, {cur_carry.name()}, #32"
                yield f"vshlc {self.get_dest(1)}, {cur_carry.name()}, #32"

            if cur_iter == 2:
                yield f"vmov {self.overflow_vreg.name()}[{2-cur_iter+2}], "       \
                    f"{self.overflow_vreg.name()}[{2-cur_iter+0}], "              \
                    f"{self.carry_gprs[carry_gpr_idx(cur_iter - 0)].name()},"     \
                    f"{self.carry_gprs[carry_gpr_idx(cur_iter - 2)].name()}"
            if cur_iter == 3:
                yield f"vmov {self.overflow_vreg.name()}[3], "                    \
                           f"{self.overflow_vreg.name()}[1], "                    \
                           f"{self.carry_gprs[carry_gpr_idx(cur_iter-2)].name()},"  \
                           f"{self.carry_gprs[carry_gpr_idx(cur_iter+0)].name()}"

        yield f"vsub.u16 {self.get_dest(0)}, {self.get_dest(0)}, {self.overflow_vreg.name()}"
        self.overflow_vreg.free()

        for b_idx in range(0,2):
            yield from self.release_b(b_idx)

        self.carry_gprs[1].free()
        self.carry_gprs[2].free()
        self.carry_gprs[3].free()

        # Pop destination address from stack and write back result
        yield f"pop {{{self.dst_name}}}"
        yield from self.base_dst.alloc(self.dst_name)
        for dst_idx in range(0,2):
            yield from self.release_dest(dst_idx)
