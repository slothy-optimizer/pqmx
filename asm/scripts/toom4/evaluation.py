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
import core.regs
import mve
import mve.regs
import mve.rw

class Toom4EvaluationInput():

    def __init__(self, base, sources, evaluations, striding=False):
        self.asm = base
        self.sources = sources
        self.evaluations = evaluations

        self.access_granularity = 32
        self.access_multiplier  = int(self.access_granularity / 16)

        self.reader = {}
        for i in range(0,4):
            if not striding:
                self.reader[i] = mve.rw.ReadWriteVector(self.asm, sources[i],
                                                        self.access_granularity,
                                                        name=f"limb[{i}]")
            else:
                self.reader[i] = mve.rw.Stride4VectorLoad(self.asm, 16,
                                                          i, sources[0], "Q0",
                                                          name=f"limb[{i}]")

        self.writer = {}
        for k in evaluations.keys():
            self.writer[k] = mve.rw.ReadWriteVector(self.asm, evaluations[k],
                                                    self.access_granularity,
                                                    name=f"eval[{k}]")

class Toom4Evaluation():

    def __init__(self, dim,
                 base=None,
                 padding=False,
                 striding=False,
                 layout="top",
                 out_of_place=False):

        self.out_of_place = out_of_place

        self.num_limbs = 4
        self.limbsize  = int(dim / self.num_limbs)
        self.padding   = padding
        self.dim       = dim

        self.striding = striding
        self.layout = layout
        self.loop = False

        if dim % (self.num_limbs * 8) != 0:
            raise Exception("MVE-based Toom4 only supported for dimensions which are a multiple of 32.")

        if not base:
            self.asm = mve.regs.Allocator()
        else:
            self.asm = base

        self.inputs = []

        self.access_granularity = 32
        self.access_multiplier  = int(self.access_granularity / 16)

        self.max_idx = self.limbsize//self.access_multiplier
        self.step_size = 128 // self.access_granularity


    def add_source(self, sources, evaluations):

        new_input = Toom4EvaluationInput(self.asm, sources, evaluations,
                                         striding=self.striding)
        self.inputs.append(new_input)

    # def _create_layout_classic(self):

    #     self.dst_increment = False

    #     source_markers = core.markers.ReadWriteMarkers(self.asm,
    #                                                    self.input_size_bytes,
    #                                                    self.access_granularity,
    #                                                    self.src.name())
    #     yield from source_markers.alloc_registers_for_markers()

    #     if self.out_of_place:
    #         dst_markers = core.markers.ReadWriteMarkers(self.asm,
    #                                                     self.num_evals * self.limb_size_bytes,
    #                                                     self.access_granularity,
    #                                                     self.dst.name())
    #         yield from dst_markers.alloc_registers_for_markers()

    #         index_of_evals = { '0'     : 0,
    #                            '-1/2'  : 1,
    #                            '+1/2'  : 2,
    #                            '-1'    : 3,
    #                            '+1'    : 4,
    #                            '+2'    : 5,
    #                            'infty' : 6 }

    #     else:

    #         dst_markers = source_markers
    #         index_of_evals = { '-1/2'  : 1,
    #                            '+1/2'  : 2,
    #                            '-1'    : 4, # Omit 3 to leave eval at infty in-place
    #                            '+1'    : 5,
    #                            '+2'    : 6 }

    #     def limb_offset_in_source(limb_index):
    #         return limb_index * self.limbsize // self.access_multiplier

    #     def eval_offset_in_source(pt):
    #         eval_index = index_of_evals[pt]

    #         return eval_index * self.limbsize // self.access_multiplier

    #     limb_markers = {}
    #     for limb in self.limbs:
    #         limb_markers[limb] = source_markers.get_shifted_marker_list(
    #                                  limb_offset_in_source(limb))
    #     sources = limb_markers

    #     eval_markers = {}
    #     for pt in self.evals:
    #         if not pt in index_of_evals.keys():
    #             continue
    #         eval_markers[pt] = dst_markers.get_shifted_marker_list(
    #                                  eval_offset_in_source(pt))

    #     self.eval_markers = eval_markers
    #     self.sources = sources

    def _create_layout_striding_topbottom(self):

        self.dst_increment = True

        high_eval_base = core.regs.Reg(self.asm.gprs, str_name="high_eval")
        yield from high_eval_base.alloc()

        if self.layout == "top":
            shift = self.num_limbs
        elif self.layout == "bottom":
            shift = -1 * ( self.num_evals - self.num_limbs )

        high_eval_byte_shift = shift * self.limb_size_bytes
        high_eval_offset = int(shift*self.limbsize / self.access_multiplier)
        if self.out_of_place:
            low_eval_base = self.dst
        else:
            low_eval_base = self.src

        yield f"add {high_eval_base.name()}, {low_eval_base.name()}, #{high_eval_byte_shift}"

        low_markers = core.markers.ReadWriteMarkers(self.asm, 0,
                                                    self.access_granularity,
                                                    low_eval_base.name(),
                                                    initial_shift=0)
        high_markers = core.markers.ReadWriteMarkers(self.asm, 0,
                                                     self.access_granularity,
                                                     high_eval_base.name(),
                                                     initial_shift=0)
        yield from low_markers.alloc_registers_for_markers()
        yield from high_markers.alloc_registers_for_markers()

        index_of_evals = { '0'     : 0,
                           '-1/2'  : 1,
                           '+1/2'  : 2,
                           '-1'    : 3,
                           '+1'    : 4,
                           '+2'    : 5,
                           'infty' : 6 }

        eval_markers = {}
        for pt in self.evals:
            eval_markers[pt] = []
            eval_idx = index_of_evals[pt]

            if eval_idx < self.num_limbs:
                stride = self.num_limbs
                markers = low_markers
            else:
                eval_idx -= self.num_limbs
                stride = len(self.evals) - self.num_limbs
                markers = high_markers

            for idx in range(0,self.max_idx,self.step_size):
                new_markers = markers.get_shifted_marker_list(
                    stride * idx + self.step_size * eval_idx,
                    offset_real_idx = idx,
                    size = self.step_size)
                eval_markers[pt] = eval_markers[pt] + new_markers

        self.eval_markers = eval_markers
        self.sources = [self.src.name()]

    def _create_layout_standard(self,
                                padded_limb_size=None,
                                idx_within_limb=None):

        if padded_limb_size == None:
            padded_limb_size = self.limbsize
        if idx_within_limb == None:
            idx_within_limb = lambda x: x

        self.dst_increment = False

        if self.out_of_place:
            dst_base = self.dst
            index_of_evals = { '0'     : 0,
                               '-1/2'  : 1,
                               '+1/2'  : 2,
                               '-1'    : 3,
                               '+1'    : 4,
                               '+2'    : 5,
                               'infty' : 6 }

        else:

            if self.striding:
                raise Exception("Invalid layout")

            dst_base = self.src
            index_of_evals = { '-1/2'  : 1,
                               '+1/2'  : 2,
                               '-1'    : 4, # Omit 3 to leave eval at infty in-place
                               '+1'    : 5,
                               '+2'    : 6 }

        markers = core.markers.ReadWriteMarkers(self.asm,
                                                self.num_evals * 2 * padded_limb_size,
                                                self.access_granularity,
                                                dst_base.name(),
                                                initial_shift=0)
        yield from markers.alloc_registers_for_markers()

        eval_markers = {}
        for pt in self.evals:

            if not pt in index_of_evals.keys():
                continue

            eval_idx = index_of_evals[pt]
            eval_markers[pt] = []

            for idx in range(0,self.max_idx * self.access_multiplier,
                             self.step_size * self.access_multiplier):
                offset_within_limb = idx_within_limb(idx)
                offset = eval_idx * padded_limb_size + offset_within_limb
                new_markers = markers.get_shifted_marker_list(
                    offset              // self.access_multiplier,
                    offset_real_idx=idx // self.access_multiplier,
                    size=self.step_size // self.access_multiplier)
                eval_markers[pt] = eval_markers[pt] + new_markers

        self.eval_markers = eval_markers

        if self.striding:
            self.sources = [self.src.name()]
        else:

            if self.out_of_place:
                source_markers = core.markers.ReadWriteMarkers(self.asm,
                                                               self.input_size_bytes,
                                                               self.access_granularity,
                                                               self.src.name(),
                                                               initial_shift=0)
                yield from source_markers.alloc_registers_for_markers()
            else:
                source_markers = markers

            limb_markers = {}

            def limb_offset_in_source(limb_index):
                return limb_index * self.limbsize // self.access_multiplier

            for limb in self.limbs:
                limb_markers[limb] = source_markers.get_shifted_marker_list(
                    limb_offset_in_source(limb))
            self.sources = limb_markers



    def _create_layout(self):
        if self.layout in [ "top", "bottom" ]:
            yield from self._create_layout_striding_topbottom()
        elif self.layout == "standard":
            yield from self._create_layout_standard()
        elif self.layout == "karatsuba_x1":
            padded_limb_size = 3 * self.limbsize // 2
            yield from self._create_layout_standard(padded_limb_size)
        elif self.layout == "karatsuba_x2":
            padded_limb_size = 9 * self.limbsize // 4
            def idx_within_limb(idx):
                if idx >= self.limbsize // 2:
                    idx += self.limbsize // 4
                return idx
            yield from self._create_layout_standard(padded_limb_size, idx_within_limb)
        else:
            raise Exception("Unknown memory layout")

    def _free_layout(self):
        # TODO
        return
        # if self.striding == True:
        #    high_eval_base.free()


    # This function emits assembly for a standalone Toom4 evaluation function
    #
    # There are multiple options to consider regarding the layout of the
    # limbs, the layout of the evaluations, and how they perhaps overlap.
    #
    # The code emitted by this function assumes that the Toom4 limbs --
    # that is, the coefficients a,b,c,d of a + b X + c X^2 + d X^3 to
    # evaluate -- are stored in a single contiguous buffer in the order
    # a,b,c,d (low to high) and that this buffer has space to hold the
    # seven evaluations at 0, -1/2, +1/2, -1, +1, +2, infty. It generates
    # those evaluations in the stated order, overwriting the previous
    # content of the limbs.
    #
    # This way, this function can be used as an in-place transformer
    # between the original polynomial form and the 'evaluation form'
    # (similar to time and frequency domain for the NTT, but with the
    # difference that our transformation increases the size.)
    def standalone(self, funcname):

        self.src_reg = 'r0'

        if self.out_of_place:
            self.dst_reg = 'r1'
            self.dst = core.regs.Reg(self.asm.gprs, str_name="dst")
            yield from self.dst.alloc(self.dst_reg)

        self.limbs     = [0,1,2,3]
        self.evals     = ['0', '-1/2', '+1/2', '-1', '+1', '+2', 'infty']
        self.num_evals = len(self.evals)
        self.input_size_index = self.num_evals * self.limbsize
        self.limb_size_bytes  = 2 * self.limbsize
        self.input_size_bytes = 2 * self.input_size_index

        #
        # Preamble
        #

        yield from core.asm.Snippets.license()
        yield from core.asm.Snippets.autogen_warning()
        yield from core.asm.Snippets.function_decl(funcname)
        yield from core.asm.Snippets.function_header(funcname)
        yield from core.asm.Snippets.save_gprs()
        yield from core.asm.Snippets.save_vregs()

        self.src = core.regs.Reg(self.asm.gprs, str_name="src")
        yield from self.src.alloc(self.src_reg)

        if self.striding and self.loop:
            # Initialize counter for low-overhead loop
            self.loop_ctr_lr = core.regs.Reg(self.asm.gprs)
            yield from self.loop_ctr_lr.alloc(reg="r14")
            self.loop_ctr_reg = core.regs.Reg(self.asm.gprs)
            yield from self.loop_ctr_reg.alloc()

        #
        # Setup sources
        #

        yield from self._create_layout()

        self.add_source(self.sources, self.eval_markers)
        yield from self.evaluation()

        self._free_layout()

        if self.striding and self.loop:
            self.loop_ctr_lr.free()
            self.loop_ctr_reg.free()

        self.src.free()
        if self.out_of_place:
            self.dst.free()

        #
        # Wrapup
        #

        yield from core.asm.Snippets.restore_vregs()
        yield from core.asm.Snippets.restore_gprs()
        yield from core.asm.Snippets.function_footer()

    def evaluation(self):

        input = {}

        tmp = {}
        for i in range(0,4):
            tmp[i] = core.regs.Reg(self.asm.vregs, str_name=f"tmp[{i}]")

        # List of static coefficients we'll need in the algorithm
        coeffs = [1,2,3,7]
        yield f"// Prepare GPRs for static coefficients {coeffs} needed during evaluation"
        coeff_gpr = {}
        for c in coeffs:
            coeff_gpr[c] = core.regs.Reg(self.asm.gprs)
            yield from coeff_gpr[c].alloc()
            yield f"mov {coeff_gpr[c].name()}, #{c}"

        # The coefficients a,b,c,d in the evaluations of a + b X + c X^2 + d X^3
        # are themselves polynomials, so for each point of evaluation we need to
        # form a linear combination of polynomials. We evaluate those linear
        # combinations in chunks of 8 coefficients.

        num_inputs = len(self.inputs)

        last_idx = None
        last_dst = None

        inner_iteration = False

        delayed_store = {}

        def marker_register_has_changed(reg,shift):
            for input in self.inputs:
                for pt in input.evaluations.keys():
                    marker_list = input.evaluations[pt]
                    core.markers.ReadWriteMarkers.shift_register_in_marker_list(marker_list,reg,int(shift / 4))

        for src_idx in range(0,num_inputs):

            for idx in range(0,self.max_idx,self.step_size):

                first_iteration = idx == 0 and src_idx == 0

                cur_input = self.inputs[src_idx]

                src    = cur_input.reader
                dst    = cur_input.writer

                # Look ahead at next iteration to allow pre-loading
                # of some limb values. Distinguish future iterations
                # for the same input and the crossover between the
                # two inputs. Handling the latter saves only a few
                # cycles, but why not...
                if idx + self.step_size != self.max_idx:
                    last_iteration = False
                    next_idx = idx + self.step_size
                    next_input = cur_input
                    next_src = src
                elif src_idx != num_inputs - 1:
                    last_iteration = False
                    next_idx = 0
                    next_input = self.inputs[src_idx+1]
                    next_src = next_input.reader
                else:
                    last_iteration = True

                cur_inner_iteration = not first_iteration and not last_iteration
                if not inner_iteration and cur_inner_iteration:
                    first_inner_iteration = True
                else:
                    first_inner_iteration = False
                inner_iteration = cur_inner_iteration

                if self.striding and self.loop:

                    # if not first_iteration and not last_iteration:
                    #     continue

                    if last_iteration:
                        yield "le lr, loop_start"
                        yield "loop_end:"



                if first_iteration:

                    # In all but the first iteration, we preload the input vectors
                    yield from src[0].load(idx)
                    yield from src[1].load(idx)
                    yield from src[2].load(idx)

                    if self.out_of_place and self.striding:
                        yield from src[3].load(idx, post_increment=True)
                    else:
                        yield from src[3].load(idx)

                if self.striding and self.loop:
                    if inner_iteration:
                        if first_inner_iteration:
                            # Use low-overhead loops
                            yield f"mov {self.loop_ctr_reg.name()}, #{int(self.max_idx / self.step_size) - 2}"
                            yield f"wls lr, {self.loop_ctr_reg.name()}, loop_end"
                            yield "loop_start:"

                        else:
                            yield "nop"

                # TODO: Find a better place for this
                if idx == 0 and self.padding:
                    # In the first iteration, add padding in front of the evaluation blocks.
                    yield from tmp[0].alloc()
                    yield f"vmov.u16 {tmp[0].name()}, #0"
                    yield from dst[   '+1'].write_from( -int(8 / self.access_multiplier), tmp[0] )
                    yield from dst[   '-1'].write_from( -int(8 / self.access_multiplier), tmp[0] )
                    yield from dst[ '+1/2'].write_from( -int(8 / self.access_multiplier), tmp[0] )
                    yield from dst[ '-1/2'].write_from( -int(8 / self.access_multiplier), tmp[0] )
                    yield from dst[   '+2'].write_from( -int(8 / self.access_multiplier), tmp[0] )
                    yield from dst[    '0'].write_from( -int(8 / self.access_multiplier), tmp[0] )
                    yield from dst['infty'].write_from( -int(8 / self.access_multiplier), tmp[0] )
                    tmp[0].free()

                def high_half_vreg(vreg):
                    return vreg in ["Q4","Q5","Q6","Q7"]

                def is_vreg(vreg):
                    return lambda x:x==vreg

                # yield "nop"

                # tmp[0] = a + c
                yield from tmp[0].alloc(constraint=high_half_vreg)
                yield f"vadd.u16 {tmp[0].name()}, {src[0].reg(idx)}, {src[2].reg(idx)}"

                # Late store from last iteration
                if not first_iteration:
                    reg = delayed_store.pop('+2')
                    yield from last_dst['+2'].write_from(last_idx, reg)
                    reg.free()

                # In all but the first iteration, we've preloaded all input vectors
                if first_iteration:
                    yield from src[1].load(idx)
                    yield from src[3].load(idx)

                # tmp[1] = b + d
                yield from tmp[1].alloc(constraint=high_half_vreg)
                yield f"vadd.u16 {tmp[1].name()}, {src[1].reg(idx)}, {src[3].reg(idx)}"

                # Late store from last iteration
                if not first_iteration:
                    reg = delayed_store.pop('+1/2')
                    yield from last_dst['+1/2'].write_from(last_idx, reg)
                    reg.free()

                #
                # Finalize evaluation at -1
                #

                # tmp[2] = eval[-1][idx] = a - b + c - d
                yield from tmp[2].alloc(constraint=high_half_vreg)
                yield f"vsub.u16 {tmp[2].name()}, {tmp[0].name()}, {tmp[1].name()}"

                # Defer storing of evaluation at -1, and instead
                # perform last late store from previous iteration
                if not first_iteration:
                    reg = delayed_store.pop('-1/2')
                    yield from last_dst['-1/2'].write_from(last_idx, reg)
                    reg.free()

                # tmp[0] = (a + c) + 3a = 4a + c
                yield f"vmla.s16 {tmp[0].name()}, {src[0].reg(idx)}, {coeff_gpr[3].name()}"

                # Store evaluation at -1
                yield from dst['-1'].write_from(idx, tmp[2])

                #
                # Finalize evaluation at +1
                #

                # tmp[2] = eval[+1][idx] = a + b + c + d = eval[-1][idx] + 2*(b+d)
                yield f"vmla.s16 {tmp[2].name()}, {tmp[1].name()}, {coeff_gpr[2].name()}"

                # Logically unrelated, but interleave storing of eval[0] = a with the two VADDs
                # to keep memory and arithmetic operations alternating.
                # Omit this if no offset is provided for this index.
                if '0' in dst.keys():
                    if not self.striding:
                        yield from dst['0'].write_from(idx, src[0].reg(idx))
                    else:
                        if self.dst_increment:
                            yield from dst['0'].write_from(idx, src[0].reg(idx),
                                                            post_increment=64,
                                                            post_increment_callback=marker_register_has_changed)
                        else:
                            yield from dst['0'].write_from(idx, src[0].reg(idx))

                yield from src[0].release(idx)

                # tmp[1] = (b + d) + 3b = 4b + d
                yield f"vmla.s16 {tmp[1].name()}, {src[1].reg(idx)}, {coeff_gpr[3].name()}"

                # Logically unrelated, but interleave storing of eval[infty] = d with the vector arithmetic
                # to keep memory and arithmetic operations alternating.
                # Omit this if no offset is provided for this index.
                if 'infty' in dst.keys():
                    yield from dst['infty'].write_from(idx, src[3].reg(idx))

                # ( a + b + c + d ) + b = a + 2*b + c + d
                yield from tmp[3].alloc(constraint=high_half_vreg)
                yield f"vadd.u16 {tmp[3].name()}, {tmp[2].name()}, {src[1].reg(idx)}"
                yield from src[1].release(idx)

                # Store evaluation at +1
                if not self.striding or not self.dst_increment:
                    yield from dst['+1'].write_from(idx, tmp[2].name())
                else:
                    yield from dst['+1'].write_from(idx, tmp[2].name(),
                                                     post_increment=48,
                                                     post_increment_callback=marker_register_has_changed)

                # ( a + 2*b + c + d ) + 3*c = a + 2*b + 4*c + d
                yield f"vmla.s16 {tmp[3].name()}, {src[2].reg(idx)}, {coeff_gpr[3].name()}"
                yield from src[2].release(idx)

                tmp[2].free()
                yield from tmp[2].alloc(move=tmp[3])

                ### At this point, we're using only src[3], tmp[0-2]
                ### We can start preloading the next four vectors for the next iteration

                #
                # Finalize evaluation at +2
                #

                # a+2*b+4*c+d + 7*c = a + 2*b + 4*c + 8*d
                yield f"vmla.s16 {tmp[2].name()}, {src[3].reg(idx)}, {coeff_gpr[7].name()}"
                yield from src[3].release(idx)

                if not last_iteration:
                    yield from next_src[0].load(next_idx)

                # tmp[0] = 8a + 2c
                yield f"vshl.u16 {tmp[0].name()}, {tmp[0].name()}, #1"

                # We defer storing the evaluations at +2, -1/2 and +1/2 to the next
                # iteration and instead use the LSU to preload the input for the
                # next iteration.

                if not last_iteration:
                    yield from next_src[1].load(next_idx)
                    delayed_store['+2'] = core.regs.Reg(self.asm.vregs, str_name=f"delayed[+2]")
                    yield from delayed_store['+2'].alloc(move=tmp[2])
                else:
                    # Store evaluation at +2
                    yield from dst['+2'].write_from(idx, tmp[2])
                    tmp[2].free()

                #
                # Finalize evaluation at -1/2
                #

                # tmp[3] = (8a + 2c) - (4b + d) = eval[-1/2][idx]
                yield from tmp[3].alloc(constraint=high_half_vreg)
                yield f"vsub.u16 {tmp[3].name()}, {tmp[0].name()}, {tmp[1].name()}"

                if not last_iteration:
                    yield from next_src[2].load(next_idx)
                    delayed_store['-1/2'] = core.regs.Reg(self.asm.vregs, str_name=f"delayed[-1/2]")
                    yield from delayed_store['-1/2'].alloc(move=tmp[3])
                else:
                    # Store evaluation at -1/2
                    yield from dst['-1/2'].write_from(idx, tmp[3])
                    tmp[3].free()

                #
                # Finalize evaluation at +1/2
                #

                # tmp[0] = 8a - 4b + 2c - d + 2*(4b + d) = 8a + 4b + 2c + d = eval[1/2][idx]
                yield f"vadd.u16 {tmp[0].name()}, {tmp[0].name()}, {tmp[1].name()}"
                tmp[1].free()

                if not last_iteration:

                    if self.out_of_place and self.striding:
                        yield from next_src[3].load(next_idx, post_increment=True)
                    else:
                        yield from next_src[3].load(next_idx)

                    delayed_store['+1/2'] = core.regs.Reg(self.asm.vregs, str_name=f"delayed[+1/2]")
                    yield from delayed_store['+1/2'].alloc(move=tmp[0])
                else:
                    # Store evaluation at +1/2
                    yield from dst['+1/2'].write_from(idx, tmp[0])
                    tmp[0].free()

                # If we're not in the last iteration, we're carrying three late-store
                # vector registers maintained in delayed_store into the next iteration.

                yield f"// End of iteration"

                last_dst = dst
                last_idx = idx

        for c in coeffs:
            coeff_gpr[c].free()

    def get_code(self):

        for asm_line in self.evaluation():
            print(asm_line)
