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

from poly_16x16_cyc_v1_ldrd import PolyU16SIMD_16x16_cyc_v1_ldrd

class PolyU16SIMD_32x32_cyc_karatsuba_naive():

    def __init__(self, accumulate=False):

        self.asm = mve.regs.Allocator()
        self.accumulate = accumulate
        return

    def core(self):

        ###
        ### PERFORMANCE NOTE
        ###
        ### This script doesn't generate an optimally efficient 32x32
        ### multiplication on its own. Instead, it relies on the result
        ### be hand-optimized by splicing logically independent parts
        ### to improve pipelining. It does, however, make sure that those
        ### logically independent parts indeed operate on disjoint sets
        ### of registers, and thus can be interleaved arbitrarily without
        ### affecting functional behaviour.
        ###
        ### The major potentials for such optimizations are explicitly
        ### marked below.
        ###

        # Load vector input using VL2X
        b_even_0 = core.regs.Reg(self.asm.vregs)
        b_even_1 = core.regs.Reg(self.asm.vregs)
        b_odd_0  = core.regs.Reg(self.asm.vregs)
        b_odd_1  = core.regs.Reg(self.asm.vregs)

        # We have to use consecutive vectors for even/odd
        # because we want to use VLD2X.
        yield from b_even_0.alloc(reg="Q4")
        yield from b_odd_0.alloc (reg="Q5")
        # Same here
        yield from b_even_1.alloc(reg="Q6")
        yield from b_odd_1.alloc (reg="Q7")

        yield f"vld20.u16 {{{b_even_0.name()}, {b_odd_0.name()}}}, "\
                        f"[{self.base_b.name()}]"
        yield f"vld21.u16 {{{b_even_0.name()}, {b_odd_0.name()}}}, "\
                        f"[{self.base_b.name()}]!"
        yield f"vld20.u16 {{{b_even_1.name()}, {b_odd_1.name()}}}, "\
                        f"[{self.base_b.name()}]"
        yield f"vld21.u16 {{{b_even_1.name()}, {b_odd_1.name()}}}, "\
                        f"[{self.base_b.name()}]!"

        # Push odd parts of vector input on the stack so we have
        # two free vector registers during the even multiplication.
        yield f"vstrh.u16 {b_odd_0.name()}, [sp, #(128 + 3*32 - 16)]"
        yield f"vstrh.u16 {b_odd_1.name()}, [sp, #(128 + 3*32 - 32)]"
        b_odd_0.free()
        b_odd_1.free()

        carry_gpr  = core.regs.Reg(self.asm.gprs)
        yield from carry_gpr.alloc()
        yield f"mov {carry_gpr.name()}, #0"

        stack_ptr  = core.regs.Reg(self.asm.gprs)
        yield from stack_ptr.alloc()

        yield f"mov {stack_ptr.name()}, sp"

        #
        # We need stack space for:
        #
        # 1. The temporary Karatsuba transformation of the GPR input:
        #    This stores 16-bit values widened to 32-bit (we want to use
        #    LDRD in the actual 16x16 multiplication to load two 16-bit
        #    values at once -- that's why they have to be spaced out to
        #    32-bit distance)
        #
        #    We only need space to store the odd and sum parts of the
        #    Karatsuba evaluation, since the even part is already in
        #    memory.
        #
        #    In total, this is thus
        #
        #      #{Odd/Sum limbs == 2} * #{Coeffs per limb == 16} * {Size per coeff == 4}
        #      = 2 * 16 * 4 = 128
        #
        # 2. The temporary result of the even and odd multiplications
        #
        #    This is #{Coeffs == 16} * {Size per coeff == 2} = 32 Bytes each,
        #    so 64 Bytes in total.
        #
        # 3. When we do a striding load of even/odd parts of the vector input,
        #    we don't have enough vectors to keep the odd parts until the point
        #    where they're actually needed. We instead push them onto the stack
        #    temporarily.
        #
        #    This takes another #{Coeffs == 16} * {Size per coeff == 2} = 32 Bytes
        #

        ###
        ### STEP 1: Multiplication of even limbs
        ###

        even_mult = PolyU16SIMD_16x16_cyc_v1_ldrd(carry_gpr=carry_gpr,
                                                  carry_zero=True)
        even_mult.asm = self.asm
        even_mult.widen_a = False
        even_mult.src_a_name = self.src_a_name
        even_mult.src_b_name = self.src_b_name
        even_mult.dst_name   = self.dst_name
        even_mult.set_src_a([core.markers.ReadWriteMarker(self.base_a.name(),  0)])
        even_mult.set_src_b([b_even_0,b_even_1],vector=True)
        even_mult.set_dest ([core.markers.ReadWriteMarker(stack_ptr.name(),-64)])

        # Load vector input using VL2X - need consecutive vectors for that
        a0 = core.regs.Reg(self.asm.vregs)
        a1 = core.regs.Reg(self.asm.vregs)
        yield from a0.alloc(reg="Q0")
        yield from a1.alloc(reg="Q1")

        yield from even_mult.core()

        ###
        ### INTERMEDIATE STEP: Preparation of GPR input
        ###
        ### We need to compute the Karatsuba evaluation and store
        ### the result in widened form.
        ###
        ### This operates on two vectors a0, a1, which have been allocated
        ### before the even multiplication, so this can be hand-woven into
        ### the even multiplication code to improve pipelining.
        ###
        ### POST-GENERATION OPTIMIZATION:
        ###    Merge this with the even multiplication by hand
        ###

        # Convenience function to convert Q{n}->Q{n+1}, for use with
        # VLD2X and VST2X where we need a pair of consecutive registers
        # and in our case we don't actually care about the second one.
        def next_vreg(vreg_name):
            idx = int(vreg_name[1:])
            if idx == 7:
                raise Exception(f"Can't use {vreg_name} for striding store/load")
            return f"Q{idx+1}"

        # First half
        yield f"vld20.u16 {{{a0.name()}, {a1.name()}}}, "\
                        f"[{self.base_a.name()}]"
        yield f"vld21.u16 {{{a0.name()}, {a1.name()}}}, "\
                        f"[{self.base_a.name()}]!"
        yield f"vadd.u16 {a0.name()}, {a0.name()}, {a1.name()}"
        yield f"vst20.u16 {{{a1.name()}, {next_vreg(a1.name())}}}, [{stack_ptr.name()}]"
        yield f"vst21.u16 {{{a1.name()}, {next_vreg(a1.name())}}}, [{stack_ptr.name()}]!"
        yield f"vst20.u16 {{{a0.name()}, {next_vreg(a0.name())}}}, [{stack_ptr.name()}]"
        yield f"vst21.u16 {{{a0.name()}, {next_vreg(a0.name())}}}, [{stack_ptr.name()}]!"
        # Second half
        yield f"vld20.u16 {{{a0.name()}, {a1.name()}}}, "\
                        f"[{self.base_a.name()}]"
        yield f"vld21.u16 {{{a0.name()}, {a1.name()}}}, "\
                        f"[{self.base_a.name()}]!"
        yield f"vadd.u16 {a0.name()}, {a0.name()}, {a1.name()}"
        yield f"vst20.u16 {{{a1.name()}, {next_vreg(a1.name())}}}, [{stack_ptr.name()}]"
        yield f"vst21.u16 {{{a1.name()}, {next_vreg(a1.name())}}}, [{stack_ptr.name()}]!"
        yield f"vst20.u16 {{{a0.name()}, {next_vreg(a0.name())}}}, [{stack_ptr.name()}]"
        yield f"vst21.u16 {{{a0.name()}, {next_vreg(a0.name())}}}, [{stack_ptr.name()}]!"

        a0.free()
        a1.free()

        ###
        ### STEP 2: Multiplication of odd limbs
        ###

        yield from b_odd_0.alloc()
        yield from b_odd_1.alloc()

        # Pop odd parts of vector input from stack
        yield f"vldrh.u16 {b_odd_0.name()}, [sp, #(128 + 3*32 - 16)]"
        yield f"vldrh.u16 {b_odd_1.name()}, [sp, #(128 + 3*32 - 32)]"

        odd_0 = core.regs.Reg(self.asm.vregs)
        odd_1 = core.regs.Reg(self.asm.vregs)
        yield from odd_0.alloc()
        yield from odd_1.alloc()

        odd_mult = PolyU16SIMD_16x16_cyc_v1_ldrd(
            dest_initialized=False,
            add_shift_by_16=True,   # Compute X*a*b instead of a*b
            carry_gpr=carry_gpr,    # Don't allocate another GPR for the carry
            carry_zero=True)        # The carry GPR is already 0-initialized
        odd_mult.set_src_b([b_odd_0,b_odd_1], vector=True)
        odd_mult.set_dest([odd_0,odd_1], vector=True)
        odd_mult.asm = self.asm
        odd_mult.widen_a = False
        odd_mult.src_a_name = self.src_a_name
        odd_mult.src_b_name = self.src_b_name
        odd_mult.dst_name   = self.dst_name

        # In the gradual preparation of the A-input we were forced to interleave
        # the odd and sum-parts. The A-input is thus not a contiguous buffer, but
        # we can use the flexibility of the marker class to capture that and handle
        # the (tedious) offset calculations.
        odd_mult.set_src_a(
            [core.markers.ReadWriteMarker(stack_ptr.name(),  64, start_idx=0, end_idx=15),
             core.markers.ReadWriteMarker(stack_ptr.name(),  48, start_idx=16, end_idx=31)])

        # We don't need to store the result to memory
        #odd_mult.set_dest ([core.markers.ReadWriteMarker(stack_ptr.name(),-16)])

        yield from odd_mult.core()

        ### Register allocation at this point:
        ### * b_odd_0, b_odd_1 holding odd b-input
        ### * odd_0, odd_1 holding result of odd multiplication
        ### * b_even_0, b_even_1 holding even input

        ###
        ### INTERMEDIATE STEP: Karatsuba interpolation layer part 1
        ###
        ### At this point, we can already compute half of the output,
        ### namely r_even + X*r_odd, and store it to memory.
        ###
        ### We computed r_even = a_even * b_even in the first step and need tp
        ### load it from memory. We've just computed X*r_odd = X * a_odd * b_odd
        #### which we still have in vector registers
        res_even_0 = core.regs.Reg(self.asm.vregs)
        res_even_1 = core.regs.Reg(self.asm.vregs)
        yield from res_even_0.alloc()
        yield from res_even_1.alloc()

        yield f"vadd.u16 {b_even_0.name()}, {b_even_0.name()}, {b_odd_0.name()}"
        b_sum_0 = core.regs.Reg(self.asm.vregs)
        yield from b_sum_0.alloc(move=b_even_0)
        b_odd_0.free()

        ### POST-GENERATION OPTIMIZATION:
        ###    Consider moving this down into the last multiplication routine.
        ###
        ### There are two slightly disappointing things here:
        ### 1. We have to compute the VLDRH and VADDs early, before the last
        ###    multiplication routine has made any changed to odd_{0,1}.
        ###    This prevents us from using them to fill pipeline bubbles.
        ### 2. We cannot maintain res_even_{0,1} in vector registers but need
        ###    to overwrite it, because we don't have another temporary
        ###    vector register.
        ###
        ### Overall, we're loading the result of the even multiplication
        ### twice throughout the algorithm, which isn't optimal.
        yield f"vldrh.u16 {res_even_0.name()}, [{stack_ptr.name()},#0]"
        yield f"vadd.u16 {res_even_0.name()}, {res_even_0.name()}, {odd_0.name()}"
        yield f"vldrh.u16 {res_even_1.name()}, [{stack_ptr.name()},#16]"
        yield f"vadd.u16 {res_even_1.name()}, {res_even_1.name()}, {odd_1.name()}"

        if self.accumulate:
            acc = core.regs.Reg(self.asm.vregs)
            yield from acc.alloc()
            yield f"vldrh.u16 {acc.name()}, [{self.base_dst.name()},   #0]"
            yield f"vadd.u16 {res_even_0.name()}, {acc.name()}, {res_even_0.name()}"
            yield f"vldrh.u16 {acc.name()}, [{self.base_dst.name()},  #16]"
            yield f"vadd.u16 {res_even_1.name()}, {acc.name()}, {res_even_1.name()}"
            acc.free()

        yield f"vstrh.u16 {res_even_0.name()}, [{self.base_dst.name()},   #0]"
        yield f"vstrh.u16 {res_even_1.name()}, [{self.base_dst.name()},  #16]"

        yield f"vadd.u16 {b_even_1.name()}, {b_even_1.name()}, {b_odd_1.name()}"
        b_sum_1 = core.regs.Reg(self.asm.vregs)
        yield from b_sum_1.alloc(move=b_even_1)
        b_odd_1.free()

        ###
        ### STEP 3: Multiplication of sum limbs
        ###

        ### POST-GENERATION OPTIMIZATION:
        ###    Consider moving this upwards and replacing VADD by VSUB accordingly
        yield f"vneg.s16 {odd_1.name()}, {odd_1.name()}"
        sum_mult = PolyU16SIMD_16x16_cyc_v1_ldrd(
            dest_initialized=True,
            carry_gpr=carry_gpr,
            carry_zero=False)

        sum_mult.set_dest([odd_1,odd_0],vector=True)
        sum_mult.set_src_b([b_sum_0,b_sum_1],vector=True)
        sum_mult.asm = self.asm
        sum_mult.widen_a = False
        sum_mult.src_a_name = self.src_a_name
        sum_mult.src_b_name = self.src_b_name
        sum_mult.dst_name   = self.dst_name

        # In the gradual preparation of the A-input we were forced to interleave
        # the odd and sum-parts. The A-input is thus not a contiguous buffer, but
        # we can use the flexibility of the marker class to capture that and handle
        # the (tedious) offset calculations.
        sum_mult.set_src_a(
            [core.markers.ReadWriteMarker(stack_ptr.name(),  48, start_idx=0, end_idx=15),
             core.markers.ReadWriteMarker(stack_ptr.name(),  32, start_idx=16, end_idx=31)])

        # sum_mult.set_dest ([core.markers.ReadWriteMarker(stack_ptr.name(),48)])
        yield from sum_mult.core()

        res_even_0.free()
        res_even_1.free()

        b_sum_0.free()
        b_sum_1.free()

        ###
        ### FINAL STEP: Karatsuba interpolation layer part 2
        ###
        ### Normally, this would compute the transformation
        ###
        ###   (r_even, r_odd, r_sum) |-> (r_even + X*r_odd,
        ###                               r_sum - r_odd - r_even)
        ###
        ### However, we have largely done this already:
        ### - X*r_odd was prepared directly in the odd multiplication,
        ###   and we've already added X_even after the odd iteration.
        ###   So, there's nothing to do for the even part.
        ### - We ran the sum multiplication in 'MAC-mode', computing
        ###   r_sum - r_odd directly.
        ###
        ### So the only thing that's left here is
        ###
        ###   (r_even, r_odd, r_sum) |-> (r_even, r_sum  - r_even)
        ###
        ### and storing the sum result.

        res_even_0 = core.regs.Reg(self.asm.vregs)
        res_even_1 = core.regs.Reg(self.asm.vregs)
        res_odd_0 = core.regs.Reg(self.asm.vregs)
        res_odd_1 = core.regs.Reg(self.asm.vregs)
        res_sum_0 = core.regs.Reg(self.asm.vregs)
        res_sum_1 = core.regs.Reg(self.asm.vregs)

        yield from res_even_0.alloc()
        yield from res_even_1.alloc()
        yield from res_sum_0.alloc(move=odd_1)
        yield from res_sum_1.alloc(move=odd_0)
        yield from res_odd_0.alloc()
        yield from res_odd_1.alloc()

        yield f"vldrh.u16 {res_even_0.name()}, [{stack_ptr.name()},#0]"
        yield f"vldrh.u16 {res_even_1.name()}, [{stack_ptr.name()},#16]"
        yield f"vsub.u16 {res_even_0.name()}, {res_sum_0.name()}, {res_even_0.name()}"
        yield f"vsub.u16 {res_even_1.name()}, {res_sum_1.name()}, {res_even_1.name()}"

        if self.accumulate:
            acc = core.regs.Reg(self.asm.vregs)
            yield from acc.alloc()
            yield f"vldrh.u16 {acc.name()}, [{self.base_dst.name()},   #32]"
            yield f"vadd.u16 {res_even_0.name()}, {acc.name()}, {res_even_0.name()}"
            yield f"vldrh.u16 {acc.name()}, [{self.base_dst.name()},  #48]"
            yield f"vadd.u16 {res_even_1.name()}, {acc.name()}, {res_even_1.name()}"
            acc.free()

        yield f"vstrh.u16 {res_even_0.name()}, [{self.base_dst.name()}, #32]"
        yield f"vstrh.u16 {res_even_1.name()}, [{self.base_dst.name()}, #48]"

        res_even_0.free()
        res_even_1.free()
        res_odd_0.free()
        res_odd_1.free()
        res_sum_0.free()
        res_sum_1.free()

        carry_gpr.free()
        stack_ptr.free()

    def standalone(self, src_a, src_b, dst, funcname, loop=21):

        self.asm = mve.regs.Allocator()

        # Preamble
        yield from core.asm.Snippets.license()
        yield from core.asm.Snippets.autogen_warning()

        yield from core.asm.Snippets.function_decl(funcname)
        yield from core.asm.Snippets.function_header(funcname)
        yield from core.asm.Snippets.save_gprs()
        yield from core.asm.Snippets.save_vregs()

        def force_residue(val,modulus,residue):
            # Round up first
            val = modulus * ( ( val + modulus - 1 ) // modulus )
            # Force residue
            val += residue
            return( val )

        # Experiment to see what gives least memory contention
        stack_alignment_mod_16 = 0
        stack_space            = 128 + 3*32
        stack_space            = force_residue(stack_space, 16, stack_alignment_mod_16 )
        yield f"sub sp, sp, #{stack_space}"

        if loop > 2:
            # Reserve the link register for low-overhead loop
            self.loop_reg = core.regs.Reg(self.asm.gprs, str_name="loop")
            yield from self.loop_reg.alloc("r14")

        self.src_a_name = src_a
        self.src_b_name = src_b
        self.dst_name   = dst

        self.base_a   = core.regs.Reg(self.asm.gprs, str_name="src_a")
        yield from self.base_a.alloc(src_a)
        self.base_b   = core.regs.Reg(self.asm.gprs, str_name="src_b")
        yield from self.base_b.alloc(src_b)
        self.base_dst = core.regs.Reg(self.asm.gprs, str_name="dst")
        yield from self.base_dst.alloc(dst)

        # We run one iteration prior to entering the low-overhead loop
        yield from self.core()
        yield f"add {self.base_dst.name()}, {self.base_dst.name()}, #64"

        # Add low overhead loop
        if loop > 2:
            self.loop_cnt = core.regs.Reg(self.asm.gprs)
            yield from self.loop_cnt.alloc()
            yield f"mov {self.loop_cnt.name()}, #{loop-2}"
            yield f"wls {self.loop_reg.name()}, {self.loop_cnt.name()}, loop_end"
            self.loop_cnt.free()
            yield "loop_start:"

            yield from self.core()

            yield f"add {self.base_dst.name()}, {self.base_dst.name()}, #64"
            yield f"le {self.loop_reg.name()}, loop_start"
            yield "loop_end:"

        if loop > 1:
            # One final iteration
            yield from self.core()

        self.base_a.free()
        self.base_b.free()
        self.base_dst.free()

        if loop > 2:
            self.loop_reg.free()

        yield f"add sp, sp, #{stack_space}"

        # Wrapup
        yield from core.asm.Snippets.restore_vregs()
        yield from core.asm.Snippets.restore_gprs()
        yield from core.asm.Snippets.function_footer()

    def get_code(self):
        gen = self.standalone()
        for line in gen:
            print(line)
