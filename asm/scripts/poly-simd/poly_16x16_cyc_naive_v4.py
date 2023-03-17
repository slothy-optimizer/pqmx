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

class PolyU16SIMD_16x16_cyc_naive_v4(PolyU16SIMDBase):

    def __init__(self, add_shift_by_16=False, permuted_input=False,
                 carry_gpr=None, carry_zero=False,
                 dest_initialized=False):
        PolyU16SIMDBase.__init__(self,
                                 anticyclic=True,
                                 poly_dim=16,
                                 optimize=True,
                                 carry_gpr=carry_gpr,
                                 dest_initialized=dest_initialized,
                                 neg_b=True)

        self.neg_b = True
        self.neg_a = False

        self.carry_zero = carry_zero

        self.permuted_input = permuted_input
        self.add_shift_by_16 = add_shift_by_16

    def set_src_a(self,src_a):
        self.src_gpr = mve.rw.QuadU16GPRRead(self.asm.gprs, "a", src_a)

        self.src_gpr_vect = mve.rw.ReadWriteVector(self.asm, src_a, 16,
                                                   name="a_vect")

    #
    # Anticyclic 16x16 multiplication
    #
    # Mix of the earlier approaches:
    # - Stick to VSHLC for filling the overflow register
    # - Use LDRD + ASRL to load the GPR input, two inputs a time.
    # - Not optimized for pipeline usage. This is just to get
    #   functional correctness.
    #
    def loop(self):

        #yield f"push {{{self.base_dst.name()}}}"
        #self.base_dst.free()

        add_shift_by_16 = self.add_shift_by_16

        permuted_input = self.permuted_input

        if not add_shift_by_16:
            a=0
            #
            # This algorithm assumes that the even and off coefficients
            # have been swapped in the A-input. The hope is that this
            # comes virtually for free by adding a VREV in the Toom /
            # Karatsuba routine preparing this, but for now, do it here.
            #
            # yield from self.src_gpr_vect.load(0)
            # yield from self.src_gpr_vect.load(8)
            # yield f"vrev32.u16 {self.src_gpr_vect.reg(0)}, {self.src_gpr_vect.reg(0)}"
            # yield f"vrev32.u16 {self.src_gpr_vect.reg(8)}, {self.src_gpr_vect.reg(8)}"
            # yield from self.src_gpr_vect.write_back(0)
            # yield from self.src_gpr_vect.write_back(8)
            # yield from self.src_gpr_vect.release(0)
            # yield from self.src_gpr_vect.release(8)

        for dst_idx in range(0,2):
            yield from self.load_dest(dst_idx)

        self.overflow_vreg = core.regs.Reg(self.asm.vregs)
        yield from self.overflow_vreg.alloc()

        yield f"vmov.u16 {self.overflow_vreg.name()}, #0"

        if not self.external_carry or not self.carry_zero:
            yield f"mov {self.carry_gpr.name()}, #0"

        yield from self.load_b(0)
        yield from self.load_b(1)

        flip = 0
        yield from self.flip_b(0)

        if not permuted_input:
            if not add_shift_by_16:
                # In this case, the input needs to be reversed
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

            else:
                # No reverse in this case
                iter_to_a_index = { 0: 4,  # total rotate: 6*2+1=13 = 8 (twist) + 5
                                    1: 2,  # total rotate = 3
                                    2: 0,  # total rotate = 1
                                    3: 6,  # total rotate = 6*2 + 1 = 7 (no twist)
                                    4: 5,  # total rotate = 6
                                    5: 3,  # total rotate = 4
                                    6: 1,  # total rotate = 2
                                    7: 7 } # total rotate = 0, +8 for twist, =8
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
        else:
            if not add_shift_by_16:
                iter_to_a_index = { 0: 6,
                                    1: 4,
                                    2: 7,
                                    3: 5,
                                    4: 2,
                                    5: 0,
                                    6: 3,
                                    7: 1 }
                twisted_multiplication = { 0: False,
                                           1: False,
                                           2: False,
                                           3: False,
                                           4: False,
                                           5: False,
                                           6: False,
                                           7: False }
                iter_to_shift_amount = { 0: 16,
                                         1: 16,
                                         2: 16,
                                         3: 16,
                                         4: 16,
                                         5: 16,
                                         6: 16,
                                         7: 0 }
            else:
                iter_to_a_index = { 0: 6,
                                    1: 4,
                                    2: 7,
                                    3: 5,
                                    4: 2,
                                    5: 0,
                                    6: 3,
                                    7: 1 }
                twisted_multiplication = { 0: False,
                                           1: False,
                                           2: False,
                                           3: False,
                                           4: False,
                                           5: False,
                                           6: False,
                                           7: False }
                iter_to_shift_amount = { 0: 16,
                                         1: 16,
                                         2: 16,
                                         3: 16,
                                         4: 16,
                                         5: 16,
                                         6: 16,
                                         7: 0 }

        for cur_iter in range(0,8):

            first_iteration  = (cur_iter == 0)
            last_iteration   = (cur_iter == 7)

            # We assume that even and odd places have been swapped in the A input,
            a_index = iter_to_a_index[cur_iter]
            is_twisted = twisted_multiplication[cur_iter]
            shift_amount = iter_to_shift_amount[cur_iter]

            # Prepare A-input for this iteration in two GPRs
            yield from self.load_a(0, real_index=a_index)
            yield from self.load_a(1, real_index=a_index)

            # Do the actual 2x2 anticyclic schoolbook multiplication
            if is_twisted:

                if flip == 1:
                    self.release_flip_b(1)
                    yield from self.flip_b(0)
                    flip = 0

                yield from self.mulacc(0, 1, real_index=a_index, sign=False, force_dest_idx=0)
                yield from self.mulacc(1, 0, real_index=a_index, sign=False, force_dest_idx=0)
                yield from self.mulacc(1, 1, real_index=a_index, sign=False, force_dest_idx=1)
                yield from self.mulacc(0, 0, real_index=a_index, sign=True,  force_dest_idx=1)

            else:

                if flip == 0:
                    self.release_flip_b(0)
                    yield from self.flip_b(1)
                    flip = 1

                if add_shift_by_16 and last_iteration:
                    yield f"neg {self.get_a(0,1,real_index=a_index)}, "\
                          f"{self.get_a(0,1,real_index=a_index)}"

                    # X^8 ( a0 + a1 * X^8 ) = i (a0 + a1 * i ) = - a1 + a0 i
                    # So: 0 -> -1 (now 1)
                    #     1 ->  0
                    yield from self.mulacc(1, 0, real_index=a_index, sign=False,
                                           force_dest_idx=0)
                    yield from self.mulacc(0, 1, real_index=a_index, sign=True,
                                           force_dest_idx=0)
                    yield from self.mulacc(1, 1, real_index=a_index, sign=False,
                                           force_dest_idx=1)
                    yield from self.mulacc(0, 0, real_index=a_index, sign=False,
                                           force_dest_idx=1)

                else:
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
                yield f"vmov.u16 {self.overflow_vreg.name()}, #0"

            # Shift output of last iteration
            if shift_amount:
                yield f"vshlc {self.get_dest(0)}, {self.carry_gpr.name()}, #{shift_amount}"
                yield f"vshlc {self.get_dest(1)}, {self.carry_gpr.name()}, #{shift_amount}"
                yield f"vshlc {self.overflow_vreg.name()}, "\
                            f"{self.carry_gpr.name()}, "    \
                            f"#{shift_amount}"

        yield f"vsub.u16 {self.get_dest(0)}, {self.get_dest(0)}, {self.overflow_vreg.name()}"
        self.overflow_vreg.free()

        for i in range(0,2):
            for j in range(0,8):
                yield from self.release_a(i,real_index=j)

        for b_idx in range(0,2):
            yield from self.release_b(b_idx)

        # Pop destination address from stack and write back result
        #yield f"pop {{{self.dst_name}}}"
        #yield from self.base_dst.alloc(self.dst_name)
        for dst_idx in range(0,2):
            yield from self.release_dest(dst_idx)
