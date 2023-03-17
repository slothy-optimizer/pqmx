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

class PolyU16SIMD_16x16_cyc_v1_ldrd(PolyU16SIMDBase):

    def __init__(self, dest_initialized=False,
                 add_shift_by_16=False, carry_gpr=None,
                 carry_zero=False):
        PolyU16SIMDBase.__init__(self,
                                 anticyclic=True,
                                 poly_dim=16,
                                 optimize=True,
                                 neg_b=True,
                                 carry_gpr=carry_gpr,
                                 dest_initialized=dest_initialized)

        self.neg_b = True
        self.widen_a = True

        self.add_shift_by_16 = add_shift_by_16
        self.carry_zero = carry_zero

    def set_src_a(self,src_a):
        self.src_gpr = mve.rw.QuadU16GPRRead(self.asm.gprs, "a", src_a, only_even=True)

        self.src_gpr_vect = mve.rw.ReadWriteVector(self.asm, src_a, 16,
                                                   name="a_vect")


    def _a_index(self,iter_idx,idx,real_index=None):
        return 2 * (real_index + 8 * idx)

    # Load a single coefficient of the GPR-input into a GPR
    def load_a(self, idx, real_index):
        yield from self.src_gpr.load(self._a_index(0,idx,real_index=real_index))

    #
    # Anticyclic 16x16 multiplication
    #
    # - Similar to PolyU16SIMD_16x16_cyc_v1, but uses LDRD to load
    #   two GPR inputs at once.
    # - For this to work, the GPR input array has to be widened to
    #   width 32 bit per coefficient. Should be automatic for input
    #   coming from a Karatsuba layer, but for testing we insert
    #   a preparation snippet which brings the input in the right
    #   shape.
    # - The rest is unchanged: Use sign-flip in vector input, plus
    #   overflow vector, bringing the total vector count to 6.
    #
    def loop(self):

        if self.widen_a:
            #
            # Widen A-input -- this should hopefully not be necessary
            # in the application of this multiplication routine within
            # a dual Karatsuba layer, because the entries are already
            # spaced out in that context.
            #
            tmp_vreg = core.regs.Reg(self.asm.vregs)
            yield from tmp_vreg.alloc()
            yield f"vldrh.u32 {tmp_vreg.name()}, [{self.src_a_name},#+24]"
            yield f"vstrw.u32 {tmp_vreg.name()}, [{self.src_a_name},#+48]"
            yield f"vldrh.u32 {tmp_vreg.name()}, [{self.src_a_name},#+16]"
            yield f"vstrw.u32 {tmp_vreg.name()}, [{self.src_a_name},#+32]"
            yield f"vldrh.u32 {tmp_vreg.name()}, [{self.src_a_name},#+8]"
            yield f"vstrw.u32 {tmp_vreg.name()}, [{self.src_a_name},#+16]"
            yield f"vldrh.u32 {tmp_vreg.name()}, [{self.src_a_name},#+0]"
            yield f"vstrw.u32 {tmp_vreg.name()}, [{self.src_a_name},#+0]"
            tmp_vreg.free()

        for dst_idx in range(0,2):
            yield from self.load_dest(dst_idx)

        self.overflow_vreg = core.regs.Reg(self.asm.vregs)
        yield from self.overflow_vreg.alloc()
        yield f"vmov.u16 {self.overflow_vreg.name()}, #0"

        if not self.external_carry or not self.carry_zero:
            yield f"mov {self.carry_gpr.name()}, #0"

        for cur_iter in range(0,8):

            if not self.add_shift_by_16:
                a_idx_map = { 0: 7,
                              1: 6,
                              2: 5,
                              3: 4,
                              4: 3,
                              5: 2,
                              6: 1,
                              7: 0 }

                next_a_map = { 0: [(4,0)],
                               1: [(4,1)],
                               2: [(2,0)],
                               3: [(2,1)],
                               4: [(0,0)],
                               5: [(0,1)],
                               6: None,
                               7: None }

            else:
                a_idx_map = { 0: 6,
                              1: 5,
                              2: 4,
                              3: 3,
                              4: 2,
                              5: 1,
                              6: 0,
                              7: 7 }

                next_a_map = { 0: [(4,0), (4,1)],
                               1: [(2,0)],
                               2: [(2,1)],
                               3: [(0,1)],
                               4: [(0,0)],
                               5: None,
                               6: None,
                               7: None }

            a_idx = a_idx_map[cur_iter]

            first_iteration = ( cur_iter == 0 )
            last_iteration  = ( cur_iter == 7 )

            # Determine which A-value to preload in the next iteration
            preload_a = next_a_map[cur_iter]

            if last_iteration and self.add_shift_by_16:

                ###
                ### TODO: Consider reordering for better pipelining, leveraging
                ###       that the overflow register and dest(0) are being merged
                ###       at the end of this iteration.
                ###
                ###       See aef501fa899615a5f541e8b57cb42d0c2255ce99
                ###

                # Finish coefficient 0 from last iteration
                yield f"vshlc {self.get_dest(0)}, {self.carry_gpr.name()}, #16"

                # We multiply by X^8 * (a7 + a15 X^8) = -a15 + a7 X^8,
                # so replace what would normally be a0 by -a1, and a1
                # by a0.

                # (0,0) -> (-1,0)
                yield from self.load_a(1, a_idx)
                yield f"neg {self.get_a(0,1,real_index=a_idx)}, "\
                          f"{self.get_a(0,1,real_index=a_idx)}"
                yield from self.mulacc(1,0,real_index=a_idx,
                                       force_dest_idx=0,sign=False)

                # Finish coefficient 1 from last iteration
                yield f"vshlc {self.get_dest(1)}, {self.carry_gpr.name()}, #16"

                # (1,0) -> (0,0)
                yield from self.load_a(0,a_idx)
                yield from self.mulacc(0,0,real_index=a_idx,
                                       force_dest_idx=1,sign=False)

                yield f"vshlc {self.overflow_vreg.name()}, {self.carry_gpr.name()}, #16"

                # (0,1) -> (-1,1)
                yield from self.mulacc(1,1, real_index=a_idx,
                                       force_dest_idx=1,sign=False)

                yield from self.writeback_dest(1)

                # (1,1) -> (0,1)
                yield f"vsub.u16 {self.get_dest(0)}, " \
                    f"{self.get_dest(0)}, " \
                    f"{self.overflow_vreg.name()}"

                yield from self.mulacc(0,1,real_index=a_idx,
                                       force_dest_idx=0,sign=True)

                yield from self.writeback_dest(0)

                for idx in range(0,2):
                    yield from self.release_a(idx,real_index=a_idx)

                continue

            if not first_iteration:
                # Finish coefficient 0 from last iteration
                yield f"vshlc {self.get_dest(0)}, {self.carry_gpr.name()}, #16"

            if first_iteration:
                yield from self.load_a(0, a_idx)
                yield from self.load_b(0)

            yield from self.mulacc(0,0,real_index=a_idx)

            if not first_iteration:
                # Finish coefficient 1 from last iteration
                yield f"vshlc {self.get_dest(1)}, {self.carry_gpr.name()}, #16"

            if first_iteration:
                yield from self.load_a(1,a_idx)
                yield from self.load_b(1)

            yield from self.mulacc(1,0,real_index=a_idx)

            if first_iteration:
                yield from self.flip_b(1)

            if not first_iteration:
                # Shift overflow register
                yield f"vshlc {self.overflow_vreg.name()}, {self.carry_gpr.name()}, #16"

            if not last_iteration:

                yield from self.mulacc(1,1,real_index=a_idx)

                ### TODO: Insert something useful here, there seems to be bubble

                if preload_a != None:
                    for (it,idx) in preload_a:
                        yield from self.load_a(idx,it)

                yield from self.mulacc(0,1, real_index=a_idx)

            else:

                yield from self.mulacc(0,1, real_index=a_idx)
                yield from self.writeback_dest(1)

                yield f"vsub.u16 {self.get_dest(0)}, " \
                    f"{self.get_dest(0)}, " \
                    f"{self.overflow_vreg.name()}"

                yield from self.mulacc(1,1,real_index=a_idx)
                yield from self.writeback_dest(0)

            for idx in range(0,2):
                yield from self.release_a(idx,real_index=a_idx)

        self.overflow_vreg.free()

        for b_idx in range(0,2):
            yield from self.release_b(b_idx)
            self.release_flip_b(b_idx)

        for dst_idx in range(0,2):
            yield from self.release_dest(dst_idx,writeback=False)
