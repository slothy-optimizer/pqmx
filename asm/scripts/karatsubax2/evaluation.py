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

class KaratsubaEvaluationInput():

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

class KaratsubaEvaluation():

    def __init__(self, dim,
                 base=None,
                 padding=False,
                 striding=False, striding_layout="top"):

        self.num_limbs = 4
        self.limbsize  = int(dim / self.num_limbs)
        self.padding   = padding
        self.dim       = dim

        self.striding = striding
        self.striding_layout = striding_layout
        self.loop = False

        if dim % (self.num_limbs * 8) != 0:
            raise Exception("MVE-based Karatsuba only supported for dimensions which are a multiple of 32.")

        if not base:
            self.asm = mve.regs.Allocator()
        else:
            self.asm = base

        self.inputs = []

        self.access_granularity = 32
        self.access_multiplier  = int(self.access_granularity / 16)

        self.max_idx = int(self.limbsize/self.access_multiplier)
        self.step_size = int(128 / self.access_granularity)


    def add_source(self, sources, evaluations):

        new_input = KaratsubaEvaluationInput(self.asm, sources, evaluations,
                                         striding=self.striding)
        self.inputs.append(new_input)

    # This function emits assembly for a standalone Karatsuba evaluation function
    #
    # There are multiple options to consider regarding the layout of the
    # limbs, the layout of the evaluations, and how they perhaps overlap.
    #
    # The code emitted by this function assumes that the Karatsuba limbs --
    # that is, the coefficients a,b,c,d of a + b X + c X^2 + d X^3 to
    # evaluate -- are stored in a single contiguous buffer in the order
    # a,b,c,d (low to high) and that this buffer has space to hold the
    # nine evaluations computed for two consecutive Karatsuba layers.
    #
    # This way, this function can be used as an in-place transformer
    # between the original polynomial form and the 'evaluation form'
    # (similar to time and frequency domain for the NTT, but with the
    # difference that our transformation increases the size.)
    def standalone(self, src_reg, funcname):

        limbs     = [0,1,2,3]
        evals     = ['0', '1', '2', '3', '01', '23', '02', '13', '0123' ]
        num_evals = len(evals)
        input_size_index = num_evals * self.limbsize
        limb_size_bytes  = 2 * self.limbsize
        input_size_bytes = 2 * input_size_index

        #
        # Preamble
        #

        yield from core.asm.Snippets.license()
        yield from core.asm.Snippets.autogen_warning()
        yield from core.asm.Snippets.function_decl(funcname)
        yield from core.asm.Snippets.function_header(funcname)
        yield from core.asm.Snippets.save_gprs()
        yield from core.asm.Snippets.save_vregs()

        src = core.regs.Reg(self.asm.gprs, str_name="src")
        yield from src.alloc("r0")

        if self.striding and self.loop:
            # Initialize counter for low-overhead loop
            self.loop_ctr_lr = core.regs.Reg(self.asm.gprs)
            yield from self.loop_ctr_lr.alloc(reg="r14")
            self.loop_ctr_reg = core.regs.Reg(self.asm.gprs)
            yield from self.loop_ctr_reg.alloc()

        #
        # Setup sources
        #

        if not self.striding:
            raise Exception("Only striding Karatsuba supported so far")

        if self.striding == True:

            high_eval_base = core.regs.Reg(self.asm.gprs, str_name="high_eval")
            yield from high_eval_base.alloc()

            if self.striding_layout == "top":
                shift = self.num_limbs
            elif self.striding_layout == "bottom":
                shift = -1 * ( len(evals) - self.num_limbs )

            high_eval_byte_shift = 2 * shift * self.limbsize
            high_eval_offset = int(shift*self.limbsize / self.access_multiplier)
            yield f"add {high_eval_base.name()}, {src.name()}, #{high_eval_byte_shift}"

            high_eval_size = 2 * self.limbsize * ( len(evals) - self.num_limbs )
            low_eval_size  = 2 * self.limbsize * self.num_limbs

            low_markers = core.markers.ReadWriteMarkers(self.asm,
                                                        low_eval_size,
                                                        self.access_granularity,
                                                        src.name(),
                                                        initial_shift=0)
            high_markers = core.markers.ReadWriteMarkers(self.asm,
                                                         high_eval_size,
                                                         self.access_granularity,
                                                         high_eval_base.name(),
                                                         initial_shift=0)
            yield from low_markers.alloc_registers_for_markers()
            yield from high_markers.alloc_registers_for_markers()

            index_of_evals = { '0'    : 0,
                               '1'    : 1,
                               '2'    : 2,
                               '3'    : 3,
                               '01'   : 4,
                               '23'   : 5,
                               '02'   : 6,
                               '13'   : 7,
                               '0123' : 8,
            }

            sources = [src.name(), high_eval_base.name()]

            eval_markers = {}
            for pt in evals:
                eval_markers[pt] = []
                eval_idx = index_of_evals[pt]

                if eval_idx < self.num_limbs:
                    base = 0
                    stride = self.num_limbs
                    markers = low_markers
                else:
                    eval_idx -= self.num_limbs
                    stride = len(evals) - self.num_limbs
                    markers = high_markers

                for idx in range(0,self.max_idx,self.step_size):
                    new_markers = markers.get_shifted_marker_list(
                        stride * idx + self.step_size * eval_idx,
                        offset_real_idx = idx,
                        size = self.step_size)
                    eval_markers[pt] = eval_markers[pt] + new_markers

        self.add_source(sources, eval_markers)
        yield from self.evaluation()

        if self.striding == True:
            high_eval_base.free()

        if self.striding and self.loop:
            self.loop_ctr_lr.free()
            self.loop_ctr_reg.free()

        src.free()

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
        coeffs = []
        if len(coeffs) > 0:
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

                yield from src[0].load(idx)
                yield from src[1].load(idx)
                yield from src[2].load(idx)
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

                def high_half_vreg(vreg):
                    return vreg in ["Q4","Q5","Q6","Q7"]

                def is_vreg(vreg):
                    return lambda x:x==vreg

                yield "nop"

                #
                # Naive implementation:
                #

                # 0, 1, 2, 3
                yield from dst['0'].write_from(idx, src[0].reg(idx))
                yield from dst['1'].write_from(idx, src[1].reg(idx))
                yield from dst['2'].write_from(idx, src[2].reg(idx))
                yield from dst['3'].write_from(idx, src[3].reg(idx))
                # 01
                yield from tmp[0].alloc(constraint=high_half_vreg)
                yield f"vadd.u16 {tmp[0].name()}, {src[0].reg(idx)}, {src[1].reg(idx)}"
                yield from dst['01'].write_from(idx, tmp[0])
                # 23
                yield from tmp[1].alloc(constraint=high_half_vreg)
                yield f"vadd.u16 {tmp[1].name()}, {src[2].reg(idx)}, {src[3].reg(idx)}"
                yield from dst['23'].write_from(idx, tmp[1])
                # 0123
                yield f"vadd.u16 {tmp[0].name()}, {tmp[0].name()}, {tmp[1].name()}"
                yield from dst['0123'].write_from(idx, tmp[0])
                # 02
                yield f"vadd.u16 {tmp[0].name()}, {src[0].reg(idx)}, {src[2].reg(idx)}"
                yield from dst['02'].write_from(idx, tmp[0])
                # 13
                yield f"vadd.u16 {tmp[0].name()}, {src[1].reg(idx)}, {src[3].reg(idx)}"
                yield from dst['13'].write_from(idx, tmp[0])

                yield f"// End of iteration"

                yield from src[0].release(idx)
                yield from src[1].release(idx)
                yield from src[2].release(idx)
                yield from src[3].release(idx)

                tmp[0].free()
                tmp[1].free()
                last_dst = dst
                last_idx = idx

        for c in coeffs:
            coeff_gpr[c].free()

    def get_code(self):

        for asm_line in self.evaluation():
            print(asm_line)
