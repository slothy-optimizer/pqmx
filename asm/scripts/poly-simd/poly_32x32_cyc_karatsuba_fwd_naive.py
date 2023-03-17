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

class PolyU16SIMD_32x32_cyc_karatsuba_fwd_naive():

    def __init__(self):

        self.asm = mve.regs.Allocator()

        return

    def core(self):

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

        even_mult = PolyU16SIMD_16x16_cyc_v1_ldrd()
        even_mult.asm = self.asm
        even_mult.widen_a = False
        even_mult.src_a_name = self.src_a_name
        even_mult.src_b_name = self.src_b_name
        even_mult.dst_name   = self.dst_name
        even_mult.set_src_a([core.markers.ReadWriteMarker(self.base_a.name(),  0)])
        even_mult.set_src_b([b_even_0,b_even_1],vector=True)
        even_mult.set_dest ([core.markers.ReadWriteMarker(self.base_dst.name(),0)])
        yield from even_mult.core()

        # Load vector input using VL2X
        a_even_0 = core.regs.Reg(self.asm.vregs)
        a_even_1 = core.regs.Reg(self.asm.vregs)
        a_odd_0  = core.regs.Reg(self.asm.vregs)
        a_odd_1  = core.regs.Reg(self.asm.vregs)

        # We have to use consecutive vectors for even/odd
        # because we want to use VLD2X.
        yield from a_even_0.alloc(reg="Q0")
        yield from a_odd_0.alloc (reg="Q1")
        # Same here
        yield from a_even_1.alloc(reg="Q2")
        yield from a_odd_1.alloc (reg="Q3")

        yield f"vld20.u16 {{{a_even_0.name()}, {a_odd_0.name()}}}, "\
                        f"[{self.base_a.name()}]"
        yield f"vld21.u16 {{{a_even_0.name()}, {a_odd_0.name()}}}, "\
                        f"[{self.base_a.name()}]!"
        yield f"vld20.u16 {{{a_even_1.name()}, {a_odd_1.name()}}}, "\
                        f"[{self.base_a.name()}]"
        yield f"vld21.u16 {{{a_even_1.name()}, {a_odd_1.name()}}}, "\
                        f"[{self.base_a.name()}]!"

        yield f"vst20.u16 {{{a_odd_0.name()}, Q2}}, [{self.base_a.name()}]"
        yield f"vst21.u16 {{{a_odd_0.name()}, Q2}}, [{self.base_a.name()}]!"
        yield f"vst20.u16 {{{a_odd_1.name()}, Q4}}, [{self.base_a.name()}]"
        yield f"vst21.u16 {{{a_odd_1.name()}, Q4}}, [{self.base_a.name()}]!"

        yield f"vadd.u16 {a_even_0.name()}, {a_even_0.name()}, {a_odd_0.name()}"
        yield f"vadd.u16 {a_even_1.name()}, {a_even_1.name()}, {a_odd_1.name()}"
        a_sum_0 = core.regs.Reg(self.asm.vregs)
        a_sum_1 = core.regs.Reg(self.asm.vregs)
        yield from a_sum_0.alloc(move=a_even_0)
        yield from a_sum_1.alloc(move=a_even_1)
        a_odd_0.free()
        a_odd_1.free()

        yield f"vst20.u16 {{{a_sum_0.name()}, Q1}}, [{self.base_a.name()}]"
        yield f"vst21.u16 {{{a_sum_0.name()}, Q1}}, [{self.base_a.name()}]!"
        yield f"vst20.u16 {{{a_sum_1.name()}, Q3}}, [{self.base_a.name()}]"
        yield f"vst21.u16 {{{a_sum_1.name()}, Q3}}, [{self.base_a.name()}]!"

        a_sum_0.free()
        a_sum_1.free()

        odd_mult = PolyU16SIMD_16x16_cyc_v1_ldrd()
        odd_mult.asm = self.asm
        odd_mult.widen_a = False
        odd_mult.src_a_name = self.src_a_name
        odd_mult.src_b_name = self.src_b_name
        odd_mult.dst_name   = self.dst_name
        odd_mult.set_src_a([core.markers.ReadWriteMarker(self.base_a.name(),  64)])
        odd_mult.set_src_b([b_odd_0,b_odd_1],vector=True)
        odd_mult.set_dest ([core.markers.ReadWriteMarker(self.base_dst.name(),-16)])
        yield from odd_mult.core()

        yield f"vadd.u16 {b_even_0.name()}, {b_even_0.name()}, {b_odd_0.name()}"
        yield f"vadd.u16 {b_even_1.name()}, {b_even_1.name()}, {b_odd_1.name()}"
        b_sum_0 = core.regs.Reg(self.asm.vregs)
        b_sum_1 = core.regs.Reg(self.asm.vregs)
        yield from b_sum_0.alloc(move=b_even_0)
        yield from b_sum_1.alloc(move=b_even_1)
        b_odd_0.free()
        b_odd_1.free()

        sum_mult = PolyU16SIMD_16x16_cyc_v1_ldrd()
        sum_mult.asm = self.asm
        sum_mult.widen_a = False
        sum_mult.src_a_name = self.src_a_name
        sum_mult.src_b_name = self.src_b_name
        sum_mult.dst_name   = self.dst_name
        sum_mult.set_src_a([core.markers.ReadWriteMarker(self.base_a.name(),  32)])
        sum_mult.set_src_b([b_sum_0,b_sum_1], vector=True)
        sum_mult.set_dest ([core.markers.ReadWriteMarker(self.base_dst.name(),-32)])
        yield from sum_mult.core()

        b_sum_0.free()
        b_sum_1.free()

        return iter([])

    def standalone(self, src_a, src_b, dst, funcname):

        self.asm = mve.regs.Allocator()

        # Preamble
        yield from core.asm.Snippets.license()
        yield from core.asm.Snippets.autogen_warning()

        yield from core.asm.Snippets.function_decl(funcname)
        yield from core.asm.Snippets.function_header(funcname)
        yield from core.asm.Snippets.save_gprs()
        yield from core.asm.Snippets.save_vregs()

        self.src_a_name = src_a
        self.src_b_name = src_b
        self.dst_name   = dst

        self.base_a   = core.regs.Reg(self.asm.gprs, str_name="src_a")
        yield from self.base_a.alloc(src_a)
        self.base_b   = core.regs.Reg(self.asm.gprs, str_name="src_b")
        yield from self.base_b.alloc(src_b)
        self.base_dst = core.regs.Reg(self.asm.gprs, str_name="dst")
        yield from self.base_dst.alloc(dst)

        yield "nop"
        yield "nop"
        yield "nop"
        yield "nop"
        yield "nop"
        yield "nop"

        yield from self.core()

        yield "nop"
        yield "nop"
        yield "nop"
        yield "nop"
        yield "nop"
        yield "nop"

        self.base_a.free()
        self.base_b.free()
        self.base_dst.free()

        # Wrapup
        yield from core.asm.Snippets.restore_vregs()
        yield from core.asm.Snippets.restore_gprs()
        yield from core.asm.Snippets.function_footer()

    def get_code(self):
        gen = self.standalone()
        for line in gen:
            print(line)
