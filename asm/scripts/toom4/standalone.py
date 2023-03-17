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

import evaluation
import interpolation

class Toom4Standalone():
    """ This class generates Cortex-M4 assembly for Toom4 multiplication
        of two degree 4*n polynomials over Z/2^16Z.

        It returns a generator object yielding the assembly line by line.

        The arguments src_a, src_b and dst are names of GPRs holding the addresses
        of base of the input operands and the destination, respectively.
    """

    def __init__(self, src_a, src_b, dst, dim, inner, funcname,
                 add_padding=False,
                 keep_no_op_evals_on_stack=False,
                 toom4_interpolation_save_gprs=False):

        self._src_a   = src_a
        self._src_b   = src_b
        self._dst     = dst
        self.dim      = dim
        self.inner    = inner
        self.funcname = funcname
        self.padding  = add_padding
        self.keep_no_op_evals_on_stack = keep_no_op_evals_on_stack
        self.save_gprs = toom4_interpolation_save_gprs

        self.asm = mve.regs.Allocator()

        self.access_granularity = 32
        self.access_multiplier  = int(self.access_granularity / 16)

    def run(self):

        #
        # Preamble
        #

        yield from core.asm.Snippets.license()
        yield from core.asm.Snippets.autogen_warning()
        yield from core.asm.Snippets.function_decl(self.inner)
        yield from core.asm.Snippets.function_decl(self.funcname)
        yield from core.asm.Snippets.function_header(self.funcname)
        yield from core.asm.Snippets.save_gprs()
        yield from core.asm.Snippets.save_vregs()

        src_a = core.regs.Reg(self.asm.gprs, str_name="src_a")
        src_b = core.regs.Reg(self.asm.gprs, str_name="src_b")
        dst   = core.regs.Reg(self.asm.gprs, str_name="dst")

        yield from src_a.alloc(self._src_a)
        yield from src_b.alloc(self._src_b)
        yield from dst.alloc(self._dst)

        # We allocate space for the evaluations of both source operands on the stack.

        # The evaluations at 0 and infinity are just the 0-th and 3-rd limb of
        # the input operands, so we don't need space for them. However, we do
        # need to move them if the inner multiplication routine requires padding,
        # so keep the code flexible.

        if self.keep_no_op_evals_on_stack:

            index_of_evals = {    '0'     : 1,
                                  '-1/2'  : 2,
                                  '+1/2'  : 3,
                                  '-1'    : 4,
                                  '+1'    : 5,
                                  '+2'    : 6,
                                  'infty' : 7 }

            order_of_products = [ '0', '-1/2', '+1/2', '-1', '+1', '+2', 'infty' ]

        else:

            index_of_evals = {    '-1/2'  : 0,
                                  '+1/2'  : 1,
                                  '-1'    : 2,
                                  '+1'    : 3,
                                  '+2'    : 4 }

            order_of_products = [ '+2', '+1', '-1', '+1/2', '-1/2', '0', 'infty' ]


        index_of_products = { '0'     : 0,
                              '-1/2'  : 1,
                              '+1/2'  : 2,
                              '-1'    : 3,
                              '+1'    : 4,
                              '+2'    : 5,
                              'infty' : 6 }

        evals = index_of_evals.keys()

        num_slots = max(max(index_of_evals.values()),max(index_of_products.values())) + 1

        # eval_padding controls the amount of pre-padding each limb gets
        # on the stack. This may be necessary if the inner multiplication
        # requires 0-padding around around the operands.
        if self.padding:
            eval_padding = 16
        else:
            eval_padding = 0
        limb_dim = int(self.dim/4)
        limb_size_bytes = 2 * limb_dim
        slot_size = 2 * limb_size_bytes + 2 * eval_padding
        stack_size = slot_size * num_slots

        # Change those functions to modify the stack layout
        def slot_offset_by_index(slot_index):
            return slot_size * slot_index
        def eval_offset_in_slot(source_index):
            return source_index * limb_size_bytes + eval_padding * ( source_index + 1)
        def eval_offset_by_index(source_index, slot_index):
            return slot_offset_by_index(slot_index) + eval_offset_in_slot(source_index)
        def product_offset_by_index(slot_index):
            # Store product at beginning of slot
            return slot_offset_by_index(slot_index)
        def product_offset_by_index(slot_index):
            # Store product at beginning of slot
            return slot_offset_by_index(slot_index)
        def product_size():
            return 2 * limb_size_bytes
        def product_post_padding_in_slot():
            return 2 * eval_padding + limb_size_bytes
        def product_pre_padding_in_slot():
            return 0

        yield from core.asm.Snippets.alloc_stack(stack_size)

        #
        # Toom4 evaluation step
        #

        # VLDRH and VSTRH can use immediate offsets in the range -254,...,+254
        # Cover the stack with the minimal number of 'markers' which allows us
        # to address all products with a single VLDRH/VSTRH.
        stack_markers = core.markers.ReadWriteMarkers(self.asm, stack_size,
                                                  self.access_granularity, 'sp')
        yield from stack_markers.alloc_registers_for_markers()

        input_size_bytes = 4 * limb_size_bytes
        input_a_markers = core.markers.ReadWriteMarkers(self.asm,
                                                    input_size_bytes,
                                                    self.access_granularity,
                                                    src_a.name())
        input_b_markers = core.markers.ReadWriteMarkers(self.asm,
                                                    input_size_bytes,
                                                    self.access_granularity,
                                                    src_b.name())
        yield from input_a_markers.alloc_registers_for_markers()
        yield from input_b_markers.alloc_registers_for_markers()

        # # Specify how the Toom4 evaluation class can address the various limbs.
        eval_input_a = {}
        eval_input_b = {}
        for i in range(0,4):
            eval_input_a[i] = input_a_markers.get_shifted_marker_list(
                int(i * limb_dim / self.access_multiplier))
            eval_input_b[i] = input_b_markers.get_shifted_marker_list(
                int(i * limb_dim / self.access_multiplier))

        # Specify how the Toom4 evaluation can address the output buffers for the evaluations
        eval_output_a = {}
        eval_output_b = {}
        for k in index_of_evals.keys():
            slot_idx = index_of_evals[k]
            eval_output_a[k] = stack_markers.get_shifted_marker_list(
                         int(eval_offset_by_index(0, slot_idx)/(2*self.access_multiplier)))
            eval_output_b[k] = stack_markers.get_shifted_marker_list(
                         int(eval_offset_by_index(1, slot_idx)/(2*self.access_multiplier)))

        toom_eval = evaluation.Toom4Evaluation(self.dim, base=self.asm,
                                               padding=self.padding)
        # We perform both evaluations in one go, which allows to save
        # a few cycles used for setting up the evaluation.
        toom_eval.add_source( eval_input_a, eval_output_a )
        toom_eval.add_source( eval_input_b, eval_output_b )

        yield from toom_eval.evaluation()
        yield from stack_markers.free_registers_for_markers()
        yield from input_a_markers.free_registers_for_markers()
        yield from input_b_markers.free_registers_for_markers()

        #
        # Toom4 multiplication step
        #

        # Free r0, r1 and r2 for use with the subroutine calls.

        src_a_top = core.regs.Reg(self.asm.gprs, str_name="src_a_top")
        src_b_top = core.regs.Reg(self.asm.gprs, str_name="src_b_top")
        yield from src_a_top.alloc(constraint=mve.regs.Allocator.callee_preserved)
        yield from src_b_top.alloc(constraint=mve.regs.Allocator.callee_preserved)
        yield f"// Use {src_a_top.name()} for top half of first operand"
        yield f"add {src_a_top.name()}, {src_a.name()}, #{2 * limb_size_bytes}"
        yield f"// Use {src_b_top.name()} for top half of second operand"
        yield f"add {src_b_top.name()}, {src_b.name()}, #{2 * limb_size_bytes}"

        src_a_backup = core.regs.Reg(self.asm.gprs)
        yield from src_a_backup.alloc(constraint=mve.regs.Allocator.callee_preserved)
        yield f"// Backup first source pointer in {src_a_backup.name()}"
        yield f"mov {src_a_backup.name()}, {src_a.name()}"
        src_a.free()

        src_b_backup = core.regs.Reg(self.asm.gprs)
        yield from src_b_backup.alloc(constraint=mve.regs.Allocator.callee_preserved)
        yield f"// Backup second source pointer in {src_b_backup.name()}"
        yield f"mov {src_b_backup.name()}, {src_b.name()}"
        src_b.free()

        dst_backup = core.regs.Reg(self.asm.gprs, str_name="dst")
        yield from dst_backup.alloc(constraint=mve.regs.Allocator.callee_preserved)
        yield "// Backup destination pointer in {dst_backup.name()}"
        yield f"mov {dst_backup.name()}, {dst.name()}"
        dst.free()

        # Compute products of evaluations

        for k in order_of_products:

            # The evaluations at 0 and 'infinity' are just the first and last limb
            # of the input operands. In case we haven't copied them on the stack
            # anyhow (e.g. to add padding), use src operands as arguments to the
            # subroutine calls.
            if k == '0' and k not in index_of_evals.keys():
                src_a_reg = src_a_backup.name()
                src_a_offset = 0
                src_b_reg = src_b_backup.name()
                src_b_offset = 0
            elif k == 'infty' and k not in index_of_evals.keys():
                src_a_reg = src_a_top.name()
                src_a_offset = limb_size_bytes
                src_b_reg = src_b_top.name()
                src_b_offset = limb_size_bytes
            else:
                # All other evaluations are stored on the stack.
                src_a_reg = 'sp'
                src_b_reg = 'sp'
                src_a_offset = eval_offset_by_index(0, index_of_evals[k])
                src_b_offset = eval_offset_by_index(1, index_of_evals[k])

            # Setup first input argument
            eval_a = core.regs.Reg(self.asm.gprs)
            yield from eval_a.alloc(reg="r1")
            yield f"add {eval_a.name()}, {src_a_reg}, #({src_a_offset})"

            # Setup second input argument
            eval_b = core.regs.Reg(self.asm.gprs)
            yield from eval_b.alloc(reg="r2")
            yield f"add {eval_b.name()}, {src_b_reg}, #({src_b_offset})"

            # Setup destination
            product_offset = product_offset_by_index(index_of_products[k])
            dst = core.regs.Reg(self.asm.gprs)
            yield from dst.alloc(reg="r0")
            yield f"add {dst.name()}, sp, #({product_offset})"

            # Call inner multiplication subroutine
            yield from core.asm.Snippets.call(self.inner)

            eval_a.free()
            eval_b.free()
            dst.free()

        # We don't need the addresses of the source operands anymore
        src_a_backup.free()
        src_b_backup.free()
        src_a_top.free()
        src_b_top.free()

        # #
        # # Toom4 interpolation step
        # #

        # Setup 'marker' GPRs covering stack space again
        yield from stack_markers.alloc_registers_for_markers()

        source_regs_for_eval = {}
        for k in index_of_products.keys():
            source_regs_for_eval[k] = stack_markers.get_shifted_marker_list(
                   int( slot_offset_by_index(index_of_products[k]) / (2 * self.access_multiplier )))

        # Currently, the interpolation step operates on the product of
        # the evaluations, which have double width.
        toom_interpolate = interpolation.Toom4Interpolation(2 * limb_dim,
                                                            base=self.asm,
                                                            save_gprs=self.save_gprs)
        yield from toom_interpolate.interpolation(source_regs_for_eval)
        yield from stack_markers.free_registers_for_markers()

        #
        # Copy result to destination
        #
        # TODO: This is very inefficient and could likely have been done during interpolation!
        #

        vtmp0 = core.regs.Reg(self.asm.vregs)
        sp_copy = core.regs.Reg(self.asm.gprs)
        yield from sp_copy.alloc()
        yield from vtmp0.alloc()
        yield f"add {sp_copy.name()}, sp, #{product_pre_padding_in_slot()}"
        for i in range(0,7):
            if i == 6:
                copy = 2 * limb_size_bytes
            else:
                copy = limb_size_bytes
            for idx in range(0, copy, 16):
                yield f"vldrh.u16 {vtmp0.name()}, [{sp_copy.name()}], #+16"
                yield f"vstrh.u16 {vtmp0.name()}, [{dst_backup.name()}], #+16"
                # In the last iteration, make sure we jump to the beginning of the next slot
                if idx == copy - 16:
                    increment = product_post_padding_in_slot() + product_pre_padding_in_slot()
                    yield f"add {sp_copy.name()}, #{increment}"
        sp_copy.free()
        vtmp0.free()

        #
        # Wrapup
        #

        yield from core.asm.Snippets.free_stack(stack_size)
        yield from core.asm.Snippets.restore_vregs()
        yield from core.asm.Snippets.restore_gprs()
        yield from core.asm.Snippets.function_footer()

    def get_code(self):
        gen = self.run()
        for line in gen:
            print(line)
