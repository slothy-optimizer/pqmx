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
import core.markers
import mve
import mve.regs
import mve.rw

class Toom3EvaluationInput():

    def __init__(self, base, sources, evaluations):
        self.asm = base
        self.sources = sources
        self.evaluations = evaluations

        self.access_granularity = 32
        self.access_multiplier  = int(self.access_granularity / 16)

        self.reader = {}
        for i in range(0,len(sources)):
            self.reader[i] = mve.rw.ReadWriteVector(self.asm, sources[i],
                                                      self.access_granularity)

        self.writer = {}
        for k in evaluations.keys():
            self.writer[k] = mve.rw.ReadWriteVector(self.asm, evaluations[k],
                                                      self.access_granularity)

class Toom3Evaluation():

    def __init__(self, dim,
                 base=None,
                 padding=False):

        self.num_limbs = 3
        self.limbsize  = int(dim / self.num_limbs)
        self.padding   = padding
        self.dim       = dim

        if dim % (self.num_limbs * 8) != 0:
            raise Exception("MVE-based Toom3 only supported for dimensions which are a multiple of 32.")

        if not base:
            self.asm = mve.regs.Allocator()
        else:
            self.asm = base

        self.inputs = []

        self.access_granularity = 32
        self.access_multiplier  = int(self.access_granularity / 16)

    def add_source(self, sources, evaluations):

        new_input = Toom3EvaluationInput(self.asm, sources, evaluations)
        self.inputs.append(new_input)

    # This function emits assembly for a standalone Toom3 evaluation function
    #
    # There are multiple options to consider regarding the layout of the
    # limbs, the layout of the evaluations, and how they perhaps overlap.
    #
    # The code emitted by this function assumes that the Toom3 limbs --
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
    def standalone(self, src_reg, funcname):

        limbs     = [0,1,2]
        evals     = ['0', '+1', '-1', '-2', 'infty']
        num_evals = len(evals)
        input_size_index = num_evals * self.limbsize
        limb_size_bytes  = 2 * self.limbsize
        input_size_bytes = 2 * input_size_index

        # index_of_evals = {    '+1'  : 1,
        #                       '-1'  : 2,
        #                       '-2'  : 3,
        #                     'infty' : 4 }
        index_of_evals = {    '+1'  : 1,
                              '-1'  : 3, # Omit 2 to leave eval at infty in-place
                              '-2'  : 4 }

        def limb_offset_in_source(limb_index):
            return int(limb_index * self.limbsize / self.access_multiplier)

        def eval_offset_in_source(pt):
            eval_index = index_of_evals[pt]
            return int(eval_index * self.limbsize / self.access_multiplier)

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

        # Setup a few markers
        source_markers = core.markers.ReadWriteMarkers(self.asm, input_size_bytes,
                                                   self.access_granularity,
                                                   src.name())
        yield from source_markers.alloc_registers_for_markers()

        limb_markers = {}
        for limb in limbs:
            limb_markers[limb] = source_markers.get_shifted_marker_list(
                                     limb_offset_in_source(limb))

        eval_markers = {}
        for pt in evals:
            if not pt in index_of_evals.keys():
                continue
            eval_markers[pt] = source_markers.get_shifted_marker_list(
                                     eval_offset_in_source(pt))

        self.add_source(limb_markers, eval_markers)
        yield from self.evaluation()

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
        for i in range(0,3):
            tmp[i] = core.regs.Reg(self.asm.vregs, str_name=f"tmp[{i}]")

        # List of static coefficients we'll need in the algorithm
        coeffs = [-2,3]
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

        # Despite dealing with 16-bit coefficients, we use 32-bit indexing
        # in order to get a wider addressable range in VLDR/VSTR.
        max_idx = int(self.limbsize/self.access_multiplier)
        step_size = int(128 / self.access_granularity)

        for src_idx in range(0,num_inputs):
            for idx in range(0,max_idx,step_size):

                src    = self.inputs[src_idx].reader
                dst    = self.inputs[src_idx].writer

                # Look ahead at next iteration to allow pre-loading
                # of some limb values. Distinguish future iterations
                # for the same input and the crossover between the
                # two inputs. Handling the latter saves only a few
                # cycles, but why not...
                if idx + step_size != max_idx:
                    last_iteration = False
                    next_idx = idx + step_size
                    next_src = src
                elif src_idx != num_inputs - 1:
                    last_iteration = False
                    next_idx = 0
                    next_src = self.inputs[src_idx+1].reader
                else:
                    last_iteration = True

                # TODO: Find a better place for this
                if idx == 0 and self.padding:
                    # In the first iteration, add padding in front of the evaluation blocks.
                    yield from tmp[0].alloc()
                    yield f"vmov.u16 {tmp[0].name()}, #0"
                    yield from dst[   '-1'].write_from( -int(8 / self.access_multiplier), tmp[0] )
                    yield from dst[   '+1'].write_from( -int(8 / self.access_multiplier), tmp[0] )
                    yield from dst[   '-2'].write_from( -int(8 / self.access_multiplier), tmp[0] )
                    yield from dst['infty'].write_from( -int(8 / self.access_multiplier), tmp[0] )
                    tmp[0].free()

                # Some of the loads below will be redundant and skipped,
                # since earlier iterations might have pre-loaded part of
                # the data. However, keeping it keeps the code readable
                # and agnostic of the precise pre-loading strategy.

                #
                # Evaluation at +1 and -1
                #

                # tmp[0] = a + c
                yield from src[0].load(idx)
                yield from src[2].load(idx)
                yield from tmp[0].alloc()
                yield f"vadd.u16 {tmp[0].name()}, {src[0].reg(idx)}, {src[2].reg(idx)}"

                # Logically unrelated, but interleave storing of eval[0] = a with the two VADDs
                # to keep memory and arithmetic operations alternating.
                # Omit this if no offset is provided for this index.
                if '0' in dst.keys():
                    yield from dst['0'].write_from(idx, src[0].reg(idx))

                # tmp[0] = eval[1][idx] = a + c + b
                yield from src[1].load(idx)
                yield f"vadd.u16 {tmp[0].name()}, {tmp[0].name()}, {src[1].reg(idx)}"

                # Store evaluation at +1
                yield from dst['+1'].write_from(idx, tmp[0])

                # tmp[0] = eval[2][idx] = a - b + c = eval[1][idx] - 2*b
                yield f"vmla.s16 {tmp[0].name()}, {src[1].reg(idx)}, {coeff_gpr[-2].name()}"

                # Store evaluation at -1
                yield from dst['-1'].write_from(idx, tmp[0])

                #
                # Evaluation at -2
                #

                # tmp[0] = (a - b) + c -b = a -2b + c
                yield f"vsub.u16 {tmp[0].name()}, {tmp[0].name()}, {src[1].reg(idx)}"

                # Logically unrelated, but interleave storing of eval[infty] = c with the vector arithmetic
                # to keep memory and arithmetic operations alternating.
                # Omit this if no offset is provided for this index.
                if 'infty' in dst.keys():
                    yield from dst['infty'].write_from(idx, src[2].reg(idx))

                # Logically unrelated, but interleave loading of limb for next iteration to avoid stalls
                if not last_iteration:
                    yield from next_src[2].load(next_idx)

                # tmp[0] = a - 2b + c + 3c = a - 2b + 4c
                yield f"vmla.s16 {tmp[0].name()}, {src[2].reg(idx)}, {coeff_gpr[3].name()}"

                # Store evaluation at -2
                yield from dst['-2'].write_from(idx, tmp[0])

                yield from src[0].release(idx)
                yield from src[1].release(idx)
                yield from src[2].release(idx)
                tmp[0].free()

        for c in coeffs:
            coeff_gpr[c].free()

    def get_code(self):

        for asm_line in self.evaluation():
            print(asm_line)
