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

class Toom3Interpolation():

    def __init__(self, size, base=None,dual=False,save_gprs=False):
        """NOTE: size is the number of 7-tuples to interpolate, not the total size of the input in Bytes,
                 which would be 2 * 7 * size

                 TODO: This is confusing notation... fix it"""

        if size % 8 != 0:
            raise Exception("MVE-based Toom3 interpolation only supported for dimensions which are a multiple of 8.")

        self.size           = size
        self.eval_points    = [ '0', '+1', '-1', '-2', 'infty' ]

        if not base:
            self.asm = mve.regs.Allocator()
        else:
            self.asm = base

        self.dual = dual
        self.save_gprs = save_gprs

        self.access_granularity = 32
        self.access_multiplier  = int(self.access_granularity / 16)

    # This function emits assembly for a standalone Toom3 interpolation function
    #
    # There are multiple options to consider regarding the layout of the
    # limbs, the layout of the evaluations, and how they perhaps overlap.
    #
    # The code emitted by this function assumes that the Toom3 evaluations
    # are stored in memory consecutively, in the order
    # 0, -1/2, +1/2, -1, +1, +2, infty. It then transforms this presentation
    # back into the classical polynomial representation of degree 7.
    #
    # This way, this function can be used as an in-place transformer
    # from the 'evaluation' form to the polynomial form, similar
    # to the inverse-NTT.
    def standalone(self, src_reg, funcname):

        num_evals = len(self.eval_points)
        input_size_index = num_evals * self.size
        input_size_bytes = 2 * input_size_index
        limb_size_bytes = 2 * self.size

        def eval_offset_in_source(pt):
            index_of_evals = { '0'     : 0,
                               '+1'    : 1,
                               '-1'    : 2,
                               '-2'    : 3,
                               'infty' : 4 }
            eval_index = index_of_evals[pt]

            return int(eval_index * self.size / self.access_multiplier)

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

        eval_sources = {}
        for pt in self.eval_points:
            eval_sources[pt] = source_markers.get_shifted_marker_list(
                                     eval_offset_in_source(pt))

        yield from self.interpolation(eval_sources)

        src.free()

        #
        # Wrapup
        #

        yield from core.asm.Snippets.restore_vregs()
        yield from core.asm.Snippets.restore_gprs()
        yield from core.asm.Snippets.function_footer()

    def _set_eval_sources(self, eval_sources):

        # Setup readers for the limbs of the inputs
        self.evals = {}
        for pt in self.eval_points:
            self.evals[pt] = mve.rw.ReadWriteVector(
                self.asm, eval_sources[pt],
                self.access_granularity,
                name=f"eval[{pt}]")

    def interpolation(self, eval_sources):

        self._set_eval_sources(eval_sources)

        input = {}

        # List of static coefficients we'll need in the algorithm
        essential_coeffs = [ '1/3', '2', '-1' ]
        # Ideally, we'd like the following coefficients in GPRs, too, in order to get a
        # stall-free main loop. However, with very large polynomial degree, there's also
        # significant use of the GPR file for 'address marker' registers. In this case,
        # we drop a few coefficients and work around them, e.g. by implementing multiplication
        # by 1/9 as twice a multiplication by 1/3 (which is in the essential coefficient list).
        avoidable_coeffs = []

        free_gprs = self.asm.gprs.free_regs()
        if free_gprs < len(essential_coeffs):
            raise Exception(f"Only {free_gprs} available, but need at least {len(essential_coeffs)} for coefficient GPRS.")

        if self.save_gprs:
            extra_gprs = free_gprs - len(essential_coeffs)
            extra_gprs = min(extra_gprs, len(avoidable_coeffs))

            # Truncate array of avoidable coefficients accoordingly
            avoidable_coeffs = avoidable_coeffs[0:extra_gprs]

        coeffs = essential_coeffs + avoidable_coeffs

        def find_u16_inverse(val):
            # This is as stupid as it gets, but we don't care about speed
            for candidate in range(0,65535):
                if (val * candidate) % 65536 == 1:
                    return candidate
            raise Exception("Couldn't find modular inverse")

        yield f"// Prepare GPRs for static coefficients\n// {coeffs}\n// needed during evaluation"
        coeff_gpr = {}
        for c in coeffs:
            coeff_gpr[c] = core.regs.Reg(self.asm.gprs)
            yield from coeff_gpr[c].alloc()
            # Compute constant modulo 2^16
            if c[0:2] == '1/':
                val = find_u16_inverse(int(c[2:]))
                yield f"// Inverse {c} modulo 2^16 is {val}"
            else:
                val = int(c)
            yield f"mov {coeff_gpr[c].name()}, #{val}"

        # The coefficients a,b,c,d in the evaluations of a + b X + c X^2 + d X^3
        # are themselves polynomials, so for each point of evaluation we need to
        # form a linear combination of polynomials. We evaluate those linear
        # combinations in chunks of 8 coefficients.

        # Despite dealing with 16-bit coefficients, we use 32-bit indexing
        # in order to get a wider addressable range in VLDR/VSTR.
        max_idx = int(self.size/self.access_multiplier)
        half_idx = int(max_idx/2)
        step_size = int(128 / self.access_granularity)

        for idx in range(0,max_idx, step_size):

            evals = self.evals

            # Look ahead at next iteration to allow pre-loading
            # of some limb values. Distinguish future iterations
            # for the same input and the crossover between the
            # two inputs. Handling the latter saves only a few
            # cycles, but why not...
            if idx + step_size != max_idx:
                last_iteration = False
                next_idx = idx + step_size
            else:
                last_iteration = True

            t = { 4: 'infty',
                  3: '-2',
                  2: '-1',
                  1: '+1',
                  0: '0' }

            def writeback(deg):

                if idx >= half_idx:
                    upper_half = True
                    idx_copy = idx - half_idx
                else:
                    upper_half = False

                if self.dual or not upper_half:

                    if deg == 0 or deg == 4:
                        return iter([])

                    yield from evals[t[deg]].write_back(idx)
                    return

                if deg == 4:
                    return iter([])

                yield from evals[t[deg+1]].load(idx_copy)
                yield f"vadd.u16 {evals[t[deg+1]].reg(idx_copy)}, {evals[t[deg+1]].reg(idx_copy)}, {evals[t[deg]].reg(idx)}"
                yield from evals[t[deg+1]].write_back(idx_copy)
                yield from evals[t[deg+1]].release(idx_copy)

            def preload(deg):

                if last_iteration:
                    return iter([])

                yield from evals[t[deg]].load(next_idx)


            # General note: Some of the loads below will be redundant and skipped,
            # in case earlier iterations have already pre-loaded part of the data.
            # We include those loads nonetheless for clarity, and also to keep it
            # independent of the precise preloading strategy.

            # The following memory operations need to happen in each iteration:
            # - Loading current chunks to be interpolated
            # - Pre-loading of chunks for next iteration
            # - If we're using Toom3 with size-doubling multiplication on the coefficients
            #   ('ordinary' Toom3 for now), we need to add upper half of the interpolation
            #   of one coefficient to the lower half of the coefficient of the next coefficient.
            #   In Toom3 with size- preserving multiplication ('dual' Toom3), this isn't necessary.
            #
            # In order to reduce stalls, it is important to interleave those memory
            # operations with the arithmetic of interpolation as much as possible.
            #
            # Folding the interpolations in 'ordinary' Toom3 can be done with a sequence
            # 1) Load lower half, 2) Add lower and upper half, 3) Store lower half,
            # assuming the upper half is still loaded. This sequence fits well in between
            # a pair of vector arithmetic instructions which would otherwise stall on a
            # dual-beat implementation.
            #
            # In 'dual' Toom3 we don't need to fold the interpolations, and the write-back
            # of the result can happen anywhere in between two vector arithmetic instructions.
            #
            # So, regardless of 'ordinary' or 'dual' Toom3, there's a sequence of operation
            # to be performed when the calculation of an interpolated value is done, which
            # should placed in between two vector arithmetic instructions. This is implemented
            # by the writeback() method. This method assumes one free vector register but
            # doesn't change the allocation state on exit.

            # TODO: We only use 5 vector registers per iteration
            #
            #       Pair indices as (idx, idx + half_idx) and keep some
            #       indices from the lower half iteration loaded to until the
            #       accumulation with the upper half.

            # w3 -= w1
            yield from evals[t[1]].load(idx)
            yield from evals[t[3]].load(idx)
            yield f"vsub.u16 {evals[t[3]].reg(idx)}, {evals[t[3]].reg(idx)}, {evals[t[1]].reg(idx)}"
            # w3 *= 1/3
            yield f"vmul.u16 {evals[t[3]].reg(idx)}, {evals[t[3]].reg(idx)}, {coeff_gpr['1/3'].name()}"
            # w1 -= w2
            yield from evals[t[2]].load(idx)
            yield f"vsub.u16 {evals[t[1]].reg(idx)}, {evals[t[1]].reg(idx)}, {evals[t[2]].reg(idx)}"
            # w2 -= w0
            yield from evals[t[0]].load(idx)
            # Implement vsub via vmla with coefficient -1
            yield f"vmla.s16 {evals[t[2]].reg(idx)}, {evals[t[0]].reg(idx)}, {coeff_gpr['-1'].name()}"
            # w1 >>= 1
            yield f"vshr.u16 {evals[t[1]].reg(idx)}, {evals[t[1]].reg(idx)}, #1"
            # Preload eval[3] for next iteration
            yield from preload(3)
            # w3 = w2 - w3
            yield f"vsub.u16 {evals[t[3]].reg(idx)}, {evals[t[2]].reg(idx)}, {evals[t[3]].reg(idx)}"
            yield from evals[t[4]].load(idx)
            # w2 += w1
            yield f"vadd.u16 {evals[t[2]].reg(idx)}, {evals[t[2]].reg(idx)}, {evals[t[1]].reg(idx)}"
            # Preload eval[1] for next iteration
            yield from preload(1)
            # w3 >>= 1
            yield f"vshr.u16 {evals[t[3]].reg(idx)}, {evals[t[3]].reg(idx)}, #1"
            # w0 no longer needed
            yield from writeback(0)
            yield from evals[t[0]].release(idx)
            # w3 += 2*w4
            yield f"vmla.s16 {evals[t[3]].reg(idx)}, {evals[t[4]].reg(idx)}, {coeff_gpr['2'].name()}"
            yield from writeback(3)
            # w1 -= w3
            yield f"vsub.u16 {evals[t[1]].reg(idx)}, {evals[t[1]].reg(idx)}, {evals[t[3]].reg(idx)}"
            # w3 no longer needed
            yield from evals[t[3]].release(idx)
            # w1 no longer needed
            yield from writeback(1)
            yield from evals[t[1]].release(idx)
            # w2 -= w4
            yield f"vsub.u16 {evals[t[2]].reg(idx)}, {evals[t[2]].reg(idx)}, {evals[t[4]].reg(idx)}"
            yield from evals[t[4]].release(idx)
            # w2 no longer needed
            yield from writeback(2)
            yield from evals[t[2]].release(idx)

        for c in coeffs:
            coeff_gpr[c].free()

    def get_code(self):

        for asm_line in self.interpolation():
            print(asm_line)
