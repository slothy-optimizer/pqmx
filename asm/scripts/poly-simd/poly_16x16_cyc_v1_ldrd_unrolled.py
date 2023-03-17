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

class PolyU16SIMD_16x16_cyc_v1_ldrd_unrolled(PolyU16SIMDBase):

    def __init__(self):
        PolyU16SIMDBase.__init__(self,
                                 anticyclic=True,
                                 poly_dim=16,
                                 optimize=True,
                                 neg_b=True)

        self.neg_b = True
        self.widen_a = True

    def set_src_a(self,src_a):
        self.src_gpr = mve.rw.QuadU16GPRRead(self.asm.gprs, "a", src_a)

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
        yield f"mov {self.carry_gpr.name()}, #0"

        ###
        ### ITERATION 0
        ###

        a_idx = 7
        preload_a_iter = 5
        preload_a_idx  = 0

        yield from self.load_a(0, a_idx)
        yield from self.load_b(0)
        yield from self.mulacc(0,0,real_index=a_idx)
        yield from self.load_a(1,a_idx)
        yield from self.load_b(1)
        yield from self.mulacc(1,0,real_index=a_idx)
        yield from self.flip_b(1)
        yield from self.mulacc(1,1,real_index=a_idx)
        yield from self.load_a(preload_a_idx,preload_a_iter)
        yield from self.mulacc(0,1, real_index=a_idx)

        for idx in range(0,2):
            yield from self.release_a(idx,real_index=a_idx)

        ###
        ### ITERATION 1
        ###

        a_idx = 6
        preload_a_iter = 5
        preload_a_idx  = 1

        # Finish coefficient 0 from last iteration
        yield f"vshlc {self.get_dest(0)}, {self.carry_gpr.name()}, #16"
        yield from self.mulacc(0,0,real_index=a_idx)
        # Finish coefficient 1 from last iteration
        yield f"vshlc {self.get_dest(1)}, {self.carry_gpr.name()}, #16"
        yield from self.mulacc(1,0,real_index=a_idx)
        # Shift overflow register
        yield f"vshlc {self.overflow_vreg.name()}, {self.carry_gpr.name()}, #16"
        yield from self.mulacc(1,1,real_index=a_idx)
        ### TODO: Insert something useful here, there seems to be bubble
        yield from self.load_a(preload_a_idx,preload_a_iter)
        yield from self.mulacc(0,1, real_index=a_idx)

        for idx in range(0,2):
            yield from self.release_a(idx,real_index=a_idx)

        ###
        ### ITERATION 2
        ###

        a_idx = 5
        preload_a_iter = 3
        preload_a_idx  = 0

        # Finish coefficient 0 from last iteration
        yield f"vshlc {self.get_dest(0)}, {self.carry_gpr.name()}, #16"
        yield from self.mulacc(0,0,real_index=a_idx)
        # Finish coefficient 1 from last iteration
        yield f"vshlc {self.get_dest(1)}, {self.carry_gpr.name()}, #16"
        yield from self.mulacc(1,0,real_index=a_idx)
        # Shift overflow register
        yield f"vshlc {self.overflow_vreg.name()}, {self.carry_gpr.name()}, #16"
        yield from self.mulacc(1,1,real_index=a_idx)
        ### TODO: Insert something useful here, there seems to be bubble
        yield from self.load_a(preload_a_idx,preload_a_iter)
        yield from self.mulacc(0,1, real_index=a_idx)
        for idx in range(0,2):
            yield from self.release_a(idx,real_index=a_idx)

        ###
        ### ITERATION 3
        ###

        a_idx = 4
        preload_a_iter = 3
        preload_a_idx  = 1

        # Finish coefficient 0 from last iteration
        yield f"vshlc {self.get_dest(0)}, {self.carry_gpr.name()}, #16"
        yield from self.mulacc(0,0,real_index=a_idx)
        # Finish coefficient 1 from last iteration
        yield f"vshlc {self.get_dest(1)}, {self.carry_gpr.name()}, #16"
        yield from self.mulacc(1,0,real_index=a_idx)
        # Shift overflow register
        yield f"vshlc {self.overflow_vreg.name()}, {self.carry_gpr.name()}, #16"
        yield from self.mulacc(1,1,real_index=a_idx)
        ### TODO: Insert something useful here, there seems to be bubble
        yield from self.load_a(preload_a_idx,preload_a_iter)
        yield from self.mulacc(0,1, real_index=a_idx)

        for idx in range(0,2):
            yield from self.release_a(idx,real_index=a_idx)

        ###
        ### ITERATION 4
        ###

        a_idx = 3
        preload_a_iter = 1
        preload_a_idx  = 0

        # Finish coefficient 0 from last iteration
        yield f"vshlc {self.get_dest(0)}, {self.carry_gpr.name()}, #16"
        yield from self.mulacc(0,0,real_index=a_idx)
        # Finish coefficient 1 from last iteration
        yield f"vshlc {self.get_dest(1)}, {self.carry_gpr.name()}, #16"
        yield from self.mulacc(1,0,real_index=a_idx)
        # Shift overflow register
        yield f"vshlc {self.overflow_vreg.name()}, {self.carry_gpr.name()}, #16"
        yield from self.mulacc(1,1,real_index=a_idx)
        ### TODO: Insert something useful here, there seems to be bubble
        yield from self.load_a(preload_a_idx,preload_a_iter)
        yield from self.mulacc(0,1, real_index=a_idx)

        for idx in range(0,2):
            yield from self.release_a(idx,real_index=a_idx)


        ###
        ### ITERATION 5
        ###

        a_idx = 2
        preload_a_iter = 1
        preload_a_idx  = 1

        # Finish coefficient 0 from last iteration
        yield f"vshlc {self.get_dest(0)}, {self.carry_gpr.name()}, #16"
        yield from self.mulacc(0,0,real_index=a_idx)
        # Finish coefficient 1 from last iteration
        yield f"vshlc {self.get_dest(1)}, {self.carry_gpr.name()}, #16"
        yield from self.mulacc(1,0,real_index=a_idx)
        # Shift overflow register
        yield f"vshlc {self.overflow_vreg.name()}, {self.carry_gpr.name()}, #16"
        yield from self.mulacc(1,1,real_index=a_idx)
        ### TODO: Insert something useful here, there seems to be bubble
        yield from self.load_a(preload_a_idx,preload_a_iter)
        yield from self.mulacc(0,1, real_index=a_idx)

        for idx in range(0,2):
            yield from self.release_a(idx,real_index=a_idx)


        ###
        ### ITERATION 6
        ###

        a_idx = 1

        # Finish coefficient 0 from last iteration
        yield f"vshlc {self.get_dest(0)}, {self.carry_gpr.name()}, #16"
        yield from self.mulacc(0,0,real_index=a_idx)
        # Finish coefficient 1 from last iteration
        yield f"vshlc {self.get_dest(1)}, {self.carry_gpr.name()}, #16"
        yield from self.mulacc(1,0,real_index=a_idx)
        # Shift overflow register
        yield f"vshlc {self.overflow_vreg.name()}, {self.carry_gpr.name()}, #16"
        yield from self.mulacc(1,1,real_index=a_idx)
        ### TODO: Insert something useful here, there seems to be bubble
        yield from self.mulacc(0,1, real_index=a_idx)
        for idx in range(0,2):
            yield from self.release_a(idx,real_index=a_idx)

        ###
        ### ITERATION 7
        ###

        a_idx = 0

        # Finish coefficient 0 from last iteration
        yield f"vshlc {self.get_dest(0)}, {self.carry_gpr.name()}, #16"
        yield from self.mulacc(0,0,real_index=a_idx)
        # Finish coefficient 1 from last iteration
        yield f"vshlc {self.get_dest(1)}, {self.carry_gpr.name()}, #16"
        yield from self.mulacc(1,0,real_index=a_idx)
        # Shift overflow register
        yield f"vshlc {self.overflow_vreg.name()}, {self.carry_gpr.name()}, #16"
        yield from self.mulacc(0,1, real_index=a_idx)
        yield f"vsub.u16 {self.get_dest(0)}, " \
                           f"{self.get_dest(0)}, " \
                           f"{self.overflow_vreg.name()}"
        yield from self.mulacc(1,1,real_index=a_idx)

        for idx in range(0,2):
            yield from self.release_a(idx,real_index=a_idx)

        self.overflow_vreg.free()

        for b_idx in range(0,2):
            yield from self.release_b(b_idx)
        for dst_idx in range(0,2):
            yield from self.release_dest(dst_idx)

        yield "nop"
        yield "nop"
        yield "nop"
        yield "nop"
        yield "nop"
        yield "nop"
        yield "nop"
