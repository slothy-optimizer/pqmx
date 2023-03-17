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

import itertools

class PolyU16SIMD_16x16_cyc_v5(PolyU16SIMDBase):

    def __init__(self):
        PolyU16SIMDBase.__init__(self,
                                 anticyclic=True,
                                 poly_dim=16,
                                 optimize=True,
                                 neg_b=True)

        self.neg_b = True
        self.neg_a = False

        self.force_b0 = None
        self.force_b1 = None
        self.force_d0 = None
        self.force_d1 = None
        self.force_overflow = None
        self.force_flip     = None

    def set_src_a(self,src_a):
        self.src_gpr = mve.rw.QuadU16GPRRead(self.asm.gprs, "a", src_a)

        self.src_gpr_vect = mve.rw.ReadWriteVector(self.asm, src_a, 16,
                                                   name="a_vect")

    #
    # Anticyclic 16x16 multiplication
    #
    # Unrolled and optimized version of PolyU16SIMD_16x16_cyc_v4_naive,
    # mixing some earlier approaches:
    # - Stick to VSHLC for filling the overflow register
    # - Use LDRD + ASRL to load the GPR input, two inputs a time.
    #
    # This appears to still have some bubbles, but they might be filled
    # with independent operations required for the surrounding
    # Karatsuba layer, using the 2 remaining vector registers.
    #
    def loop(self):

        #
        # This algorithm assumes that the even and off coefficients
        # have been swapped in the A-input. The hope is that this
        # comes virtually for free by adding a VREV in the Toom /
        # Karatsuba routine preparing this, but for now, do it here.
        #
        # Update: Commented for now because the rev32 has been
        #         incorporated into the unit test for now.
        #

        # yield from self.src_gpr_vect.load(0)
        # yield from self.src_gpr_vect.load(8)
        # yield f"vrev32.u16 {self.src_gpr_vect.reg(0)}, {self.src_gpr_vect.reg(0)}"
        # yield f"vrev32.u16 {self.src_gpr_vect.reg(8)}, {self.src_gpr_vect.reg(8)}"
        # yield from self.src_gpr_vect.write_back(0)
        # yield from self.src_gpr_vect.write_back(8)
        # yield from self.src_gpr_vect.release(0)
        # yield from self.src_gpr_vect.release(8)

        # yield "nop"
        # yield "nop"
        # yield "nop"
        # yield "nop"

        yield from self.load_dest(0, force_reg=self.force_d0)
        yield from self.load_dest(1, force_reg=self.force_d1)

        self.overflow_vreg = core.regs.Reg(self.asm.vregs)
        yield from self.overflow_vreg.alloc(self.force_overflow)

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

        # We'd assume that those values have been preloaded in a previous
        # multiplication
        yield from self.load_a(0, real_index=2)
        yield from self.load_a(1, real_index=2)
        yield from self.load_a(0, real_index=0)
        yield from self.load_a(1, real_index=0)

        #### ITERATION 0

        yield from self.load_a(1, real_index=4)
        yield from self.load_a(1, real_index=6)
        yield from self.load_b(0, force_reg=self.force_b0)
        yield from self.mulacc(1, 0, real_index=4, sign=False, force_dest_idx=0)
        yield from self.load_b(1, force_reg=self.force_b1)
        yield from self.mulacc(1, 1, real_index=4, sign=False, force_dest_idx=1)
        yield from self.load_a(0, real_index=4)
        yield from self.load_a(0, real_index=6)
        yield f"mov {self.carry_gpr.name()}, #0"
        yield from self.mulacc(0, 1, real_index=4, sign=False, force_dest_idx=0)
        yield from self.flip_b(0,force_reg=self.force_flip)
        yield from self.mulacc(0, 0, real_index=4, sign=True,  force_dest_idx=1)

        ## ITERATION 1

        yield f"vshlc {self.get_dest(0)}, {self.carry_gpr.name()}, #32"
        yield from self.mulacc(0, 1, real_index=2, sign=False, force_dest_idx=0)
        yield f"vshlc {self.get_dest(1)}, {self.carry_gpr.name()}, #32"
        yield from self.mulacc(1, 0, real_index=2, sign=False, force_dest_idx=0)
        # Zero via VEOR seems to fit into the pipeline better here
        yield f"veor.u16 {self.overflow_vreg.name()}, {self.overflow_vreg.name()}, "\
                       f"{self.overflow_vreg.name()}"
        # yield f"vmov.u16 {self.overflow_vreg.name()}, #0"
        yield from self.mulacc(1, 1, real_index=2, sign=False, force_dest_idx=1)
        yield f"vshlc {self.overflow_vreg.name()}, {self.carry_gpr.name()}, #32"
        yield from self.mulacc(0, 0, real_index=2, sign=True,  force_dest_idx=1)

        ## ITERATION 2

        # Shift output of last iteration
        yield f"vshlc {self.get_dest(0)}, {self.carry_gpr.name()}, #32"
        yield from self.mulacc(0, 1, real_index=0, sign=False, force_dest_idx=0)
        yield f"vshlc {self.get_dest(1)}, {self.carry_gpr.name()}, #32"
        yield from self.mulacc(1, 0, real_index=0, sign=False, force_dest_idx=0)
        yield f"vshlc {self.overflow_vreg.name()}, {self.carry_gpr.name()}, #32"
        yield from self.mulacc(1, 1, real_index=0, sign=False, force_dest_idx=1)
        # Shift output of last iteration
        yield f"vshlc {self.get_dest(0)}, {self.carry_gpr.name()}, #32"
        yield from self.mulacc(0, 0, real_index=0, sign=True,  force_dest_idx=1)

        ## ITERATION 3

        # From now on, we need b(1) with a negative sign
        self.release_flip_b(0)
        yield from self.flip_b(1,force_reg=self.force_flip)

        yield from self.mulacc(0, 0, real_index=6, sign=False)
        yield f"vshlc {self.get_dest(1)}, {self.carry_gpr.name()}, #32"
        yield from self.mulacc(1, 1, real_index=6, sign=True)
        yield f"vshlc {self.overflow_vreg.name()}, {self.carry_gpr.name()}, #32"
        yield from self.mulacc(0, 1, real_index=6, sign=False)
        ## INTERMEDIATE CLEANUP
        yield f"vsub.u16 {self.get_dest(0)}, "         \
                       f"{self.get_dest(0)}, "         \
                       f"{self.overflow_vreg.name()}"
        yield from self.mulacc(1, 0, real_index=6, sign=False)

        ## ITERATION 4

        ### Placeholder for loads in future multiplication
        #yield from self.load_a(1, real_index=4+8)

        yield from self.load_a(0, real_index=7)
        yield from self.load_a(1, real_index=7)
        yield from self.load_a(0, real_index=5)
        yield from self.load_a(1, real_index=5)
        yield from self.load_a(0, real_index=3)
        yield from self.load_a(1, real_index=3)
        yield from self.load_a(0, real_index=1)
        yield from self.load_a(1, real_index=1)


        # Shift output of last iteration
        yield f"vshlc {self.get_dest(0)}, {self.carry_gpr.name()}, #16"
        # Do the actual 2x2 anticyclic schoolbook multiplication
        yield from self.mulacc(0, 0, real_index=7, sign=False)
        yield f"vshlc {self.get_dest(1)}, {self.carry_gpr.name()}, #16"
        yield from self.mulacc(1, 1, real_index=7, sign=True)
        yield f"veor.u16 {self.overflow_vreg.name()}, {self.overflow_vreg.name()}, "\
                       f"{self.overflow_vreg.name()}"
        # yield f"vmov.u16 {self.overflow_vreg.name()}, #0"
        yield from self.mulacc(0, 1, real_index=7, sign=False)
        yield f"vshlc {self.overflow_vreg.name()}, {self.carry_gpr.name()}, #16"
        yield from self.mulacc(1, 0, real_index=7, sign=False)

        ## ITERATION 5

        # Prepare A-input for this iteration in two GPRs

        # Shift output of last iteration
        yield f"vshlc {self.get_dest(0)}, {self.carry_gpr.name()}, #32"
        # Do the actual 2x2 anticyclic schoolbook multiplication
        yield from self.mulacc(0, 0, real_index=5, sign=False)
        yield f"vshlc {self.get_dest(1)}, {self.carry_gpr.name()}, #32"
        yield from self.mulacc(1, 1, real_index=5, sign=True)
        yield f"vshlc {self.overflow_vreg.name()}, {self.carry_gpr.name()}, #32"
        yield from self.mulacc(0, 1, real_index=5, sign=False)

        # TODO: Insert something here if possible to avoid stall

        yield from self.mulacc(1, 0, real_index=5, sign=False)

        ## ITERATION 6


        # Shift output of last iteration
        yield f"vshlc {self.get_dest(0)}, {self.carry_gpr.name()}, #32"
        # Do the actual 2x2 anticyclic schoolbook multiplication
        yield from self.mulacc(0, 0, real_index=3, sign=False)
        yield f"vshlc {self.get_dest(1)}, {self.carry_gpr.name()}, #32"
        yield from self.mulacc(1, 1, real_index=3, sign=True)
        yield f"vshlc {self.overflow_vreg.name()}, {self.carry_gpr.name()}, #32"
        yield from self.mulacc(0, 1, real_index=3, sign=False)

        # TODO: Insert something here if possible to avoid stall

        yield from self.mulacc(1, 0, real_index=3, sign=False)

        ## ITERATION 7

        # Shift output of last iteration
        yield f"vshlc {self.get_dest(0)}, {self.carry_gpr.name()}, #32"
        yield from self.mulacc(0, 0, real_index=1, sign=False)
        yield f"vshlc {self.get_dest(1)}, {self.carry_gpr.name()}, #32"
        yield from self.mulacc(1, 1, real_index=1, sign=True)
        self.release_flip_b(1)
        yield f"vshlc {self.overflow_vreg.name()}, {self.carry_gpr.name()}, #32"
        yield from self.mulacc(0, 1, real_index=1, sign=False)

        # Cleanup overflow register
        yield f"vsub.u16 {self.get_dest(0)}, {self.get_dest(0)}, {self.overflow_vreg.name()}"

        yield from self.release_dest(0)

        yield from self.mulacc(1, 0, real_index=1, sign=False)
        yield from self.release_dest(1)

        for i,j in itertools.product([0,1],range(0,8)):
            yield from self.release_a(i, real_index=j)

        self.overflow_vreg.free()

        for b_idx in range(0,2):
            yield from self.release_b(b_idx)

    def core(self):

        # Check that source and destination have been set
        # if not self.src_gpr or not self.src_vect or not self.dst_vect:
        #     raise Exception("Source and/or destination not configured")

        # Initialize everything
        self.next_coeff_in_iter = 0

        if self.iterations > 1:
            loop_reg = core.regs.Reg(self.asm.gprs)
            yield from loop_reg.alloc("r14")

        if not self.external_carry:
            self.carry_gpr = core.regs.Reg(self.asm.gprs, str_name=f"carry")
            yield from self.alloc_carry()

        self.dest_set_initialized(0)
        self.dest_set_initialized(1)

        self.force_b0       = "Q0"
        self.force_b1       = "Q1"
        self.force_d0       = "Q2"
        self.force_d1       = "Q3"
        self.force_overflow = "Q4"
        self.force_flip     = "Q5"
        yield from self.loop()

        yield f"add {self.base_a.name()},   {self.base_a.name()},   #32"
        yield f"add {self.base_b.name()},   {self.base_b.name()},   #32"
        yield f"add {self.base_dst.name()}, {self.base_dst.name()}, #32"

        if self.iterations > 1:

            double_iterations = ( self.iterations - 2 ) // 2
            remaining_iterations = self.iterations - 2 * double_iterations - 1

            yield f"mov {loop_reg.name()}, #{double_iterations}"
            yield f"wls {loop_reg.name()}, {loop_reg.name()}, loop_end"
            yield "loop_start:"

            # Remove this eventually -- this is just to check that the routine
            # does not use all GPRs
            dummy = core.regs.Reg(self.asm.gprs)
            yield from dummy.alloc()
            yield f"mov {dummy.name()}, {dummy.name()}"
            yield f"mov {dummy.name()}, {dummy.name()}"
            yield f"mov {dummy.name()}, {dummy.name()}"

            self.force_b0       = "Q7"
            self.force_b1       = "Q6"
            self.force_d0       = "Q5"
            self.force_d1       = "Q4"
            self.force_overflow = "Q3"
            self.force_flip     = "Q2"
            yield from self.loop()

            yield f"add {self.base_a.name()},   {self.base_a.name()},   #32"
            yield f"add {self.base_b.name()},   {self.base_b.name()},   #32"
            yield f"add {self.base_dst.name()}, {self.base_dst.name()}, #32"

            self.force_b0       = "Q0"
            self.force_b1       = "Q1"
            self.force_d0       = "Q2"
            self.force_d1       = "Q3"
            self.force_overflow = "Q4"
            self.force_flip     = "Q5"
            yield from self.loop()

            yield f"add {self.base_a.name()},   {self.base_a.name()},   #32"
            yield f"add {self.base_b.name()},   {self.base_b.name()},   #32"
            yield f"add {self.base_dst.name()}, {self.base_dst.name()}, #32"
            yield f"le {loop_reg.name()}, loop_start"
            yield "loop_end:"
            loop_reg.free()

            self.force_b0       = "Q7"
            self.force_b1       = "Q6"
            self.force_d0       = "Q5"
            self.force_d1       = "Q4"
            self.force_overflow = "Q3"
            self.force_flip     = "Q2"
            yield from self.loop()

            if remaining_iterations > 1:

                yield f"add {self.base_a.name()},   {self.base_a.name()},   #32"
                yield f"add {self.base_b.name()},   {self.base_b.name()},   #32"
                yield f"add {self.base_dst.name()}, {self.base_dst.name()}, #32"

                self.force_b0       = "Q0"
                self.force_b1       = "Q1"
                self.force_d0       = "Q2"
                self.force_d1       = "Q3"
                self.force_overflow = "Q4"
                self.force_flip     = "Q5"
                yield from self.loop()

        # Cleanup
        if not self.external_carry:
            self.carry_gpr.free()
