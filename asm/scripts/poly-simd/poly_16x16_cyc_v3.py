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

class PolyU16SIMD_16x16_cyc_v3(PolyU16SIMDBase):

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

        self.src_gpr_vect = mve.rw.ReadWriteVector(self.asm, src_a, 16,
                                                   name="a_vect")

    #
    # Anticyclic 16x16 multiplication
    #
    # - Experimental approach using _double_ lane-VMOVs to fill the
    #   overflow register, removing the need for VSHLC.
    # - Using CLRM to clear two GPRs at once.
    # - Using LDRD and ASRL to load two GPR inputs at once
    #
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

        #
        # This algorithm assumes that the even and off coefficients
        # have been swapped in the A-input. The hope is that this
        # comes virtually for free by adding a VREV in the Toom /
        # Karatsuba routine preparing this, but for now, do it here.
        #
        yield from self.src_gpr_vect.load(0)
        yield from self.src_gpr_vect.load(8)
        yield f"vrev32.u16 {self.src_gpr_vect.reg(0)}, {self.src_gpr_vect.reg(0)}"
        yield f"vrev32.u16 {self.src_gpr_vect.reg(8)}, {self.src_gpr_vect.reg(8)}"
        yield from self.src_gpr_vect.write_back(0)
        yield from self.src_gpr_vect.write_back(8)
        yield from self.src_gpr_vect.release(0)
        yield from self.src_gpr_vect.release(8)

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
            return ( 2 - iter_idx ) % 4

        yield from self.load_b(0)
        yield from self.load_b(1)

        yield from self.flip_b(0)

        # First, go through odd iterations
        for cur_iter in range(0,8):

            yield f"nop // Iteration {cur_iter}"

            iter_to_a_index = { 0: 4,
                                1: 2,
                                2: 0,
                                3: 6,
                                4: 7,
                                5: 5,
                                6: 3,
                                7: 1 }

            twisted_multiplication = { 0: True,
                                       1: True,
                                       2: True,
                                       3: False,
                                       4: False,
                                       5: False,
                                       6: False,
                                       7: False }

            iter_to_shift_amount = { 0: 32,
                                     1: 32,
                                     2: 32,
                                     3: 16,
                                     4: 32,
                                     5: 32,
                                     6: 32,
                                     7: 0 }

            first_iteration  = (cur_iter == 0)
            last_iteration   = (cur_iter == 3)
            between_even_odd = (cur_iter == 4)

            # We assume that even and odd places have been swapped in the A input,
            a_index = iter_to_a_index[cur_iter]
            is_twisted = twisted_multiplication[cur_iter]

            # Prepare A-input for this iteration in two GPRs
            yield from self.load_a(0, real_index=a_index)
            yield from self.load_a(1, real_index=a_index)

            # Perform late shifting from last iteration
            if not first_iteration:

                last_iter = cur_iter - 1

                cur_carry_idx = carry_gpr_idx(last_iter)
                cur_carry = self.carry_gprs[cur_carry_idx]

                shift_amount = iter_to_shift_amount[last_iter]

                # Zeroize two carries at once
                if last_iter == 0:
                    yield f"clrm {{{self.carry_gprs[carry_gpr_idx(-1)].name()}, "   \
                                 f"{self.carry_gprs[carry_gpr_idx(+0)].name()}}}"
                elif last_iter in [1,3,5]:
                    yield f"clrm {{{self.carry_gprs[carry_gpr_idx(last_iter+0)].name()}, "   \
                                 f"{self.carry_gprs[carry_gpr_idx(last_iter+1)].name()}}}"

                # Shift output of last iteration
                if shift_amount:
                    yield f"vshlc {self.get_dest(0)}, {cur_carry.name()}, #{shift_amount}"
                    yield f"vshlc {self.get_dest(1)}, {cur_carry.name()}, #{shift_amount}"

                # Move two carries into the overflow vector simultaneously
                if cur_carry_idx in [0,1]:
                    yield f"vmov {self.overflow_vreg.name()}[{cur_carry_idx+2}], "         \
                               f"{self.overflow_vreg.name()}[{cur_carry_idx+0}], "         \
                               f"{self.carry_gprs[cur_carry_idx+0].name()},"               \
                               f"{self.carry_gprs[cur_carry_idx+2].name()}"

            # Do the actual 2x2 anticyclic schoolbook multiplication
            if is_twisted:
                yield from self.mulacc(0, 1, real_index=a_index, sign=False, force_dest_idx=0)
                yield from self.mulacc(1, 0, real_index=a_index, sign=False, force_dest_idx=0)
                yield from self.mulacc(1, 1, real_index=a_index, sign=False, force_dest_idx=1)
                yield from self.mulacc(0, 0, real_index=a_index, sign=True,  force_dest_idx=1)
            else:

                # From now on, we need b(1) with a negative sign
                self.release_flip_b(0)
                yield from self.flip_b(1)

                yield from self.mulacc(0, 0, real_index=a_index, sign=False)
                yield from self.mulacc(1, 1, real_index=a_index, sign=True)
                yield from self.mulacc(0, 1, real_index=a_index, sign=False)
                yield from self.mulacc(1, 0, real_index=a_index, sign=False)

            between_even_odd = (cur_iter == 3)
            if between_even_odd:
                # Clear overflow register
                yield f"vsub.u16 {self.get_dest(0)}, "\
                      f"{self.get_dest(0)}, "         \
                      f"{self.overflow_vreg.name()}"

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
