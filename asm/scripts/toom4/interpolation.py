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

class Toom4Interpolation():

    def __init__(self, size, base=None,dual=False,save_gprs=False, no_overlap=False, dual_layout="top", out_of_place=False):
        """NOTE: size is the number of 7-tuples to interpolate, not the total size of the input in Bytes,
                 which would be 2 * 7 * size

                 TODO: This is confusing notation... fix it"""

        if size % 8 != 0:
            raise Exception("MVE-based Toom4 interpolation only supported for dimensions which are a multiple of 8.")

        self.out_of_place = out_of_place

        self.size           = size
        self.eval_points    = [ '0', '+1', '-1', '+1/2', '-1/2', '+2', 'infty' ]

        if not base:
            self.asm = mve.regs.Allocator()
        else:
            self.asm = base

        self.dual = dual
        self.dual_layout = dual_layout
        self.no_overlap = no_overlap
        self.save_gprs = save_gprs

        self.access_granularity = 32
        self.access_multiplier  = self.access_granularity // 16

        self.max_idx = self.size // self.access_multiplier
        self.step_size = 128 // self.access_granularity

        self.num_limbs = 4

    # This function emits assembly for a standalone Toom4 interpolation function
    #
    # There are multiple options to consider regarding the layout of the
    # limbs, the layout of the evaluations, and how they perhaps overlap.
    #
    # The code emitted by this function assumes that the Toom4 evaluations
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

        index_of_evals = { '0'     : 0,
                           '-1/2'  : 1,
                           '+1/2'  : 2,
                           '-1'    : 3,
                           '+1'    : 4,
                           '+2'    : 5,
                           'infty' : 6 }

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

        if self.out_of_place:
            dst = core.regs.Reg(self.asm.gprs, str_name="dst")
            yield from dst.alloc("r1")

        if not self.dual:

            def eval_offset_in_source(pt):
                eval_index = index_of_evals[pt]
                return (eval_index * self.size) // self.access_multiplier


            # So far, we need random access in the Toom4 interpolation
            # because the 7 evaluation limbs not stored interleaved.
            # We could have one register per limb and increase them
            # as we iterate, but that would be more expensive than the
            # current solution.

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

        if self.dual:

            # In dual/striding Toom4, we interleave the evaluations

            if self.dual_layout == "top":
                source_markers = core.markers.ReadWriteMarkers(self.asm,
                                                               input_size_bytes,
                                                               self.access_granularity,
                                                               src.name(),
                                                               initial_shift=0)
            elif self.dual_layout == "bottom":
                source_markers = core.markers.ReadWriteMarkers(self.asm, 0,
                                                               self.access_granularity,
                                                               src.name(),
                                                               initial_shift=0)
            elif self.dual_layout == "standard":
                source_markers = core.markers.ReadWriteMarkers(self.asm,
                                                               input_size_bytes,
                                                               self.access_granularity,
                                                               src.name(),
                                                               initial_shift=0)

            yield from source_markers.alloc_registers_for_markers()

            if self.dual_layout in [ "top", "bottom" ]:

                eval_sources = {}
                for pt in self.eval_points:
                    eval_sources[pt] = []
                    eval_idx = index_of_evals[pt]

                    if eval_idx < self.num_limbs:
                        base = 0
                        stride = self.num_limbs
                    else:
                        if self.dual_layout == "top":
                            shift = self.num_limbs
                        elif self.dual_layout == "bottom":
                            shift = -1 * ( len(self.eval_points) - self.num_limbs )
                        base = (shift * self.size) // self.access_multiplier
                        eval_idx -= self.num_limbs
                        stride = len(self.eval_points) - self.num_limbs

                    for idx in range(0,self.max_idx,self.step_size):
                        new_markers = source_markers.get_shifted_marker_list(
                            base + stride * idx + self.step_size * eval_idx,
                            offset_real_idx = idx,
                            size = self.step_size)
                        eval_sources[pt] = eval_sources[pt] + new_markers

            elif self.dual_layout == "standard":

                padded_limb_size = None
                idx_within_limb  = None

                if padded_limb_size == None:
                    padded_limb_size = self.size
                if idx_within_limb == None:
                    idx_within_limb = lambda x: x

                eval_sources = {}
                for pt in self.eval_points:
                    eval_sources[pt] = []
                    eval_idx = index_of_evals[pt]

                    for idx in range(0,self.max_idx * self.access_multiplier,
                                     self.step_size * self.access_multiplier):
                        offset_within_limb = idx_within_limb(idx)
                        offset = eval_idx * padded_limb_size + offset_within_limb
                        new_markers = source_markers.get_shifted_marker_list(
                            offset              // self.access_multiplier,
                            offset_real_idx=idx // self.access_multiplier,
                            size=self.step_size // self.access_multiplier)
                        eval_sources[pt] = eval_sources[pt] + new_markers

            if self.out_of_place:
                yield from self.interpolation(eval_sources,dst=dst.name())
            else:
                yield from self.interpolation(eval_sources,dst=src.name())

        src.free()

        if self.out_of_place:
            dst.free()

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

    def interpolation(self, eval_sources, dst=None):

        self._set_eval_sources(eval_sources)

        input = {}

        tmp = {}
        for i in range(0,3):
            tmp[i] = core.regs.Reg(self.asm.vregs, str_name=f"tmp[{i}]")

        if self.dual:
            # Allocate registers for carry in coefficients for x^{4-6}
            carry = {}
            for exp in range(1,4):
                carry[exp] = core.regs.Reg(self.asm.gprs, str_name=f"carry[{exp}]")
                yield from carry[exp].alloc()
                yield f"mov {carry[exp].name()}, #0"
        elif dst:
            raise Exception("Destination register only needed for striding Toom4")

        # List of static coefficients we'll need in the algorithm
        if not self.dual:
            essential_coeffs = ['-64', '+45', '-8', '1/3', '16', '+30', '1/15' ]
        else:
            essential_coeffs = ['21840', '+45', '1/3', '8', '-30', '1/-15' ]
        # Ideally, we'd like the following coefficients in GPRs, too, in order to get a
        # stall-free main loop. However, with very large polynomial degree, there's also
        # significant use of the GPR file for 'address marker' registers. In this case,
        # we drop a few coefficients and work around them, e.g. by implementing multiplication
        # by 1/9 as twice a multiplication by 1/3 (which is in the essential coefficient list).
        if not self.dual:
            avoidable_coeffs = [ '-65', '1/9', '1' ]
        else:
            avoidable_coeffs = [ '-65', '1/9', '1', '-1' ]

        free_gprs = self.asm.gprs.free_regs()
        if free_gprs < len(essential_coeffs):
            raise Exception(f"Only {free_gprs} available, but need at least {len(essential_coeffs)}.")

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
            coeff_gpr[c] = core.regs.Reg(self.asm.gprs, str_name=f"coeff[{c}]")
            yield from coeff_gpr[c].alloc()
            if c[0:2] == '1/':
                # Need to compute modular inverse
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
        first_iteration = True
        half_idx = int(self.max_idx/2)
        for idx in range(0,self.max_idx, self.step_size):

            evals = self.evals

            # Look ahead at next iteration to allow pre-loading
            # of some limb values. Distinguish future iterations
            # for the same input and the crossover between the
            # two inputs. Handling the latter saves only a few
            # cycles, but why not...
            if idx + self.step_size != self.max_idx:
                last_iteration = False
                next_idx = idx + self.step_size
            else:
                last_iteration = True

            t = { 1: 'infty',
                  2: '+2',
                  3: '+1',
                  4: '-1',
                  5: '+1/2',
                  6: '-1/2',
                  7: '0' }

            def high_vreg(vreg):
                return vreg in [f"Q{i}" for i in range(4,8)]

            def writeback(deg):

                if self.dual:
                    raise Exception("Writeback only for normal Toom4")

                if idx >= half_idx:
                    upper_half = True
                    idx_copy = idx - half_idx
                else:
                    upper_half = False

                if self.no_overlap or not upper_half:
                    if deg == 1 or deg == 7:
                        return iter([])
                    yield from evals[t[deg]].write_back(idx)
                    return

                if deg == 1:
                    return

                yield from evals[t[deg-1]].load(idx_copy)
                yield f"vadd.u16 {evals[t[deg-1]].reg(idx_copy)}, {evals[t[deg-1]].reg(idx_copy)}, {evals[t[deg]].reg(idx)}"
                yield from evals[t[deg-1]].write_back(idx_copy)
                yield from evals[t[deg-1]].release(idx_copy)

            def shift(deg):

                if not deg in range(1,4):
                    raise Exception("Something wrong... carry only for top half")

                yield f"vshlc {evals[t[deg]].reg(idx)}, {carry[deg].name()}, #16"

            def fold(deg,add=False):

                if not deg in range(1,4):
                    raise Exception("Something wrong... carry only for top half")

                deg_low = deg + 4
                if '1' in coeffs and add == False:
                    yield f"vmla.s16 {evals[t[deg_low]].reg(idx)}, {evals[t[deg]].reg(idx)}, {coeff_gpr['1'].name()}"
                else:
                    yield f"vadd.u16 {evals[t[deg_low]].reg(idx)}, {evals[t[deg_low]].reg(idx)}, {evals[t[deg]].reg(idx)}"

            def preload(deg):

                if last_iteration:
                    return iter([])

                if self.dual:
                    constraint = high_vreg
                else:
                    constraint = None

                yield from evals[t[deg]].load(next_idx, constraint=constraint)


            # General note: Some of the loads below will be redundant and skipped,
            # in case earlier iterations have already pre-loaded part of the data.
            # We include those loads nonetheless for clarity, and also to keep it
            # independent of the precise preloading strategy.

            # The following memory operations need to happen in each iteration:
            # - Loading current chunks to be interpolated
            # - Pre-loading of chunks for next iteration
            # - If we're using Toom4 with size-doubling multiplication on the coefficients
            #   ('ordinary' Toom4 for now), we need to add upper half of the interpolation
            #   of one coefficient to the lower half of the coefficient of the next coefficient.
            #   In Toom4 with size- preserving multiplication ('dual' Toom4), this isn't necessary.
            #
            # In order to reduce stalls, it is important to interleave those memory
            # operations with the arithmetic of interpolation as much as possible.
            #
            # Folding the interpolations in 'ordinary' Toom4 can be done with a sequence
            # 1) Load lower half, 2) Add lower and upper half, 3) Store lower half,
            # assuming the upper half is still loaded. This sequence fits well in between
            # a pair of vector arithmetic instructions which would otherwise stall on a
            # dual-beat implementation.
            #
            # In 'dual' Toom4 we don't need to fold the interpolations, and the write-back
            # of the result can happen anywhere in between two vector arithmetic instructions.
            #
            # So, regardless of 'ordinary' or 'dual' Toom4, there's a sequence of operation
            # to be performed when the calculation of an interpolated value is done, which
            # should placed in between two vector arithmetic instructions. This is implemented
            # by the writeback() method. This method assumes one free vector register but
            # doesn't change the allocation state on exit.
            #
            # The pre-loading of the chunks for the next iteration can be done at any time
            # where we have free vector registers, squeezing the pre-loads in between two
            # vector arithmetic instructions which would otherwise stall on dual-beat.
            # This is done in the preload() method.
            # We don't preload as much as we could, because if we preload too many elements
            # for the next iteration it removes loads which separate two arithmetic instructions,
            # which removes a stall in one place and introduces it another.
            # The only double-loads to avoid through pre-loading are the loading of t[2], t[5]
            # and t[3] and t[4] in the beginning. We pre-load t[4] to avoid a stall after loading
            # t[3], but we don't preload t[3] as that would cause stalls for the surrounding
            # arithmetic instructions. For t[2] and t[5], it does make sense to preload _both_
            # because the last instruction in each iteration is a VSTR.

            if not self.dual:

                # w2 += +1 * w5
                yield from evals[t[2]].load(idx)
                yield from evals[t[5]].load(idx)
                yield f"vadd.u16 {evals[t[2]].reg(idx)}, {evals[t[2]].reg(idx)}, {evals[t[5]].reg(idx)}"
                # w6 += -1 * w5
                yield from evals[t[6]].load(idx)
                yield f"vsub.u16 {evals[t[6]].reg(idx)}, {evals[t[6]].reg(idx)}, {evals[t[5]].reg(idx)}"
                # w4 += -1 * w3
                yield from evals[t[3]].load(idx)
                yield from evals[t[4]].load(idx)
                yield f"vsub.u16 {evals[t[4]].reg(idx)}, {evals[t[4]].reg(idx)}, {evals[t[3]].reg(idx)}"
                # Preload w7 already here
                yield from evals[t[7]].load(idx)
                # w4 >>= 1
                yield f"vshr.u16 {evals[t[4]].reg(idx)}, {evals[t[4]].reg(idx)}, #1"
                # w5 += -1 * w1
                yield from evals[t[1]].load(idx)
                yield f"vsub.u16 {evals[t[5]].reg(idx)}, {evals[t[5]].reg(idx)}, {evals[t[1]].reg(idx)}"
                # w5 += -64 * w7
                yield f"vmla.s16 {evals[t[5]].reg(idx)}, {evals[t[7]].reg(idx)}, {coeff_gpr['-64'].name()}"
                # w3 += 1 * w4
                yield f"vadd.u16 {evals[t[3]].reg(idx)}, {evals[t[3]].reg(idx)}, {evals[t[4]].reg(idx)}"
                # w2 += -65 * w3
                if '-65' in coeffs:
                    yield f"vmla.s16 {evals[t[2]].reg(idx)}, {evals[t[3]].reg(idx)}, {coeff_gpr['-65'].name()}"
                else:
                    yield f"vmla.s16 {evals[t[2]].reg(idx)}, {evals[t[3]].reg(idx)}, {coeff_gpr['-64'].name()}"
                    yield f"vsub.u16 {evals[t[2]].reg(idx)}, {evals[t[2]].reg(idx)}, {evals[t[3]].reg(idx)}"
                # w3 += -1 * w1
                yield f"vsub.u16 {evals[t[3]].reg(idx)}, {evals[t[3]].reg(idx)}, {evals[t[1]].reg(idx)}"
                # w5 <<= 1
                if '1' in coeffs:
                    # Use a funny way to double w5 via vmla
                    yield f"vmla.s16 {evals[t[5]].reg(idx)}, {evals[t[5]].reg(idx)}, {coeff_gpr['1'].name()}"
                else:
                    yield f"vadd.u16 {evals[t[5]].reg(idx)}, {evals[t[5]].reg(idx)}, {evals[t[5]].reg(idx)}"
                # w1 no longer needed
                yield from writeback(1)
                yield from evals[t[1]].release(idx)
                # w3 += -1 * w7
                yield f"vsub.u16 {evals[t[3]].reg(idx)}, {evals[t[3]].reg(idx)}, {evals[t[7]].reg(idx)}"
                # Preload eval[2] for next iteration
                yield from preload(2)
                # w5 += 1 * w6
                yield f"vadd.u16 {evals[t[5]].reg(idx)}, {evals[t[5]].reg(idx)}, {evals[t[6]].reg(idx)}"
                # w7 is no longer needed
                yield from writeback(7)
                yield from evals[t[7]].release(idx)
                # w5 += -8 * w3
                yield f"vmla.s16 {evals[t[5]].reg(idx)}, {evals[t[3]].reg(idx)}, {coeff_gpr['-8'].name()}"
                # Preload eval[2] for next iteration
                yield from preload(4)
                # w2 += +45 * w3
                yield f"vmla.s16 {evals[t[2]].reg(idx)}, {evals[t[3]].reg(idx)}, {coeff_gpr['+45'].name()}"
                # w5 >>= 3
                yield f"vshr.u16 {evals[t[5]].reg(idx)}, {evals[t[5]].reg(idx)}, #3"
                # w5 *= 1/3
                yield f"vmul.u16 {evals[t[5]].reg(idx)}, {evals[t[5]].reg(idx)}, {coeff_gpr['1/3'].name()}"
                # w5 has its final value, but it's still needed
                yield from writeback(5)
                # w6 += 1 * w2
                yield f"vadd.u16 {evals[t[6]].reg(idx)}, {evals[t[6]].reg(idx)}, {evals[t[2]].reg(idx)}"
                # w2 += 16 * w4
                yield f"vmla.s16 {evals[t[2]].reg(idx)}, {evals[t[4]].reg(idx)}, {coeff_gpr['16'].name()}"
                # w3 += -1 * w5
                yield f"vsub.u16 {evals[t[3]].reg(idx)}, {evals[t[3]].reg(idx)}, {evals[t[5]].reg(idx)}"
                # w3 no longer needed
                yield from writeback(3)
                yield from evals[t[3]].release(idx)
                # w2 >>= 1
                yield f"vshr.u16 {evals[t[2]].reg(idx)}, {evals[t[2]].reg(idx)}, #1"
                # w2 *= 1/9
                if '1/9' in coeffs:
                    yield f"vmul.u16 {evals[t[2]].reg(idx)}, {evals[t[2]].reg(idx)}, {coeff_gpr['1/9'].name()}"
                else:
                    yield f"vmul.u16 {evals[t[2]].reg(idx)}, {evals[t[2]].reg(idx)}, {coeff_gpr['1/3'].name()}"
                    yield f"vmul.u16 {evals[t[2]].reg(idx)}, {evals[t[2]].reg(idx)}, {coeff_gpr['1/3'].name()}"

                # w5 no longer needed
                yield from evals[t[5]].release(idx)
                # w6 *= -1
                yield f"vneg.s16 {evals[t[6]].reg(idx)}, {evals[t[6]].reg(idx)}"
                yield from preload(5)
                # w4 += +1 * w2
                yield f"vadd.u16 {evals[t[4]].reg(idx)}, {evals[t[4]].reg(idx)}, {evals[t[2]].reg(idx)}"
                # w6 += +30 * w2
                yield f"vmla.s16 {evals[t[6]].reg(idx)}, {evals[t[2]].reg(idx)}, {coeff_gpr['+30'].name()}"
                # w4 *= -1
                yield f"vneg.s16 {evals[t[4]].reg(idx)}, {evals[t[4]].reg(idx)}"
                # w4 no longer needed
                yield from writeback(4)
                yield from evals[t[4]].release(idx)
                # w6 >>= 2
                yield f"vshr.u16 {evals[t[6]].reg(idx)}, {evals[t[6]].reg(idx)}, #2"
                # w6 *= 1/15
                yield f"vmul.u16 {evals[t[6]].reg(idx)}, {evals[t[6]].reg(idx)}, {coeff_gpr['1/15'].name()}"
                # w6 has its final value, but it's still needed
                yield from writeback(6)
                # w2 += -1 * w6
                yield f"vsub.u16 {evals[t[2]].reg(idx)}, {evals[t[2]].reg(idx)}, {evals[t[6]].reg(idx)}"
                # w6 no longer needed
                yield from evals[t[6]].release(idx)
                # w2 is done at this point
                yield from writeback(2)
                yield from evals[t[2]].release(idx)

            if self.dual:

                if first_iteration:
                    yield from evals[t[3]].load(idx,constraint=high_vreg)
                    # We start with w4 in a high vreg even though it must end
                    # up in Q3 for the final VST4x {Q0,Q1,Q2,Q3} sequence.
                    # The benefit is that we can preload into this high
                    # register while the low-registers Q0-Q3 are still
                    # occupied.
                    yield from evals[t[4]].load(idx,constraint=high_vreg)
                else:
                    yield f"vst40.u16 {{{evals[t[7]].reg(last_idx)},{evals[t[6]].reg(last_idx)}," \
                                      f"{evals[t[5]].reg(last_idx)},{evals[t[4]].reg(last_idx)}}}, [{dst}]"

                # w4 += -1 * w3
                yield f"vsub.u16 {evals[t[4]].reg(idx)}, {evals[t[4]].reg(idx)}, {evals[t[3]].reg(idx)}"

                if not first_iteration:
                    yield f"vst41.u16 {{{evals[t[7]].reg(last_idx)},{evals[t[6]].reg(last_idx)}," \
                                      f"{evals[t[5]].reg(last_idx)},{evals[t[4]].reg(last_idx)}}}, [{dst}]"

                # w4 >>= 1
                yield f"vshr.u16 {evals[t[4]].reg(idx)}, {evals[t[4]].reg(idx)}, #1"

                if not first_iteration:
                    yield f"vst42.u16 {{{evals[t[7]].reg(last_idx)},{evals[t[6]].reg(last_idx)}," \
                        f"{evals[t[5]].reg(last_idx)},{evals[t[4]].reg(last_idx)}}}, [{dst}]"

                # w3 += 1 * w4
                if '1' in coeffs:
                    # Use a funny way to double w5 via vmla
                    yield f"vmla.s16 {evals[t[3]].reg(idx)}, {evals[t[4]].reg(idx)}, {coeff_gpr['1'].name()}"
                else:
                    yield f"vadd.u16 {evals[t[3]].reg(idx)}, {evals[t[3]].reg(idx)}, {evals[t[4]].reg(idx)}"

                if first_iteration:
                    yield from evals[t[2]].load(idx,constraint=high_vreg)
                else:
                    yield f"vst43.u16 {{{evals[t[7]].reg(last_idx)},{evals[t[6]].reg(last_idx)}," \
                        f"{evals[t[5]].reg(last_idx)},{evals[t[4]].reg(last_idx)}}}, [{dst}]!"

                    yield from evals[t[4]].release(last_idx)
                    yield from evals[t[5]].release(last_idx)
                    yield from evals[t[6]].release(last_idx)
                    yield from evals[t[7]].release(last_idx)

                    for pt in self.eval_points:
                        core.markers.ReadWriteMarkers.shift_register_in_marker_list(eval_sources[pt], dst, 16)

                # w2 += -65 * w3
                if '-65' in coeffs:
                    yield f"vmla.s16 {evals[t[2]].reg(idx)}, {evals[t[3]].reg(idx)}, {coeff_gpr['-65'].name()}"
                else:
                    yield f"vmla.s16 {evals[t[2]].reg(idx)}, {evals[t[3]].reg(idx)}, {coeff_gpr['-64'].name()}"

                yield from evals[t[5]].load(idx,force_reg="Q2")

                # w2 += +1 * w5
                yield f"vadd.u16 {evals[t[2]].reg(idx)}, {evals[t[2]].reg(idx)}, {evals[t[5]].reg(idx)}"

                yield from evals[t[6]].load(idx,force_reg="Q1")
                # w6 += -1 * w5
                if '-1' in coeffs:
                    yield f"vmla.s16 {evals[t[6]].reg(idx)}, {evals[t[5]].reg(idx)}, {coeff_gpr['-1'].name()}"
                else:
                    yield f"vsub.u16 {evals[t[6]].reg(idx)}, {evals[t[6]].reg(idx)}, {evals[t[5]].reg(idx)}"

                yield from evals[t[1]].load(idx,constraint=high_vreg)

                # w5 += -1 * w1
                # if '-1' in coeffs:
                #     yield f"vmla.s16 {evals[t[5]].reg(idx)}, {evals[t[1]].reg(idx)}, {coeff_gpr['-1'].name()}"
                # else:
                yield f"vsub.u16 {evals[t[5]].reg(idx)}, {evals[t[5]].reg(idx)}, {evals[t[1]].reg(idx)}"

                yield from evals[t[7]].load(idx,force_reg="Q0")

                # w3 += -1 * w7
                if '-1' in coeffs:
                     yield f"vmla.s16 {evals[t[3]].reg(idx)}, {evals[t[7]].reg(idx)}, {coeff_gpr['-1'].name()}"
                else:
                    yield f"vsub.u16 {evals[t[3]].reg(idx)}, {evals[t[3]].reg(idx)}, {evals[t[7]].reg(idx)}"

                # w5 <<= 1
                # if '1' in coeffs:
                #     # Use a funny way to double w5 via vmla
                #     yield f"vmla.s16 {evals[t[5]].reg(idx)}, {evals[t[5]].reg(idx)}, {coeff_gpr['1'].name()}"
                # else:
                yield f"vadd.u16 {evals[t[5]].reg(idx)}, {evals[t[5]].reg(idx)}, {evals[t[5]].reg(idx)}"

                # w3 += -1 * w1
                if '-1' in coeffs:
                    yield f"vmla.s16 {evals[t[3]].reg(idx)}, {evals[t[1]].reg(idx)}, {coeff_gpr['-1'].name()}"
                else:
                    yield f"vsub.u16 {evals[t[3]].reg(idx)}, {evals[t[3]].reg(idx)}, {evals[t[1]].reg(idx)}"

                # w5 += 1 * w6
                # if '1' in coeffs:
                #     yield f"vmla.s16 {evals[t[5]].reg(idx)}, {evals[t[6]].reg(idx)}, {coeff_gpr['1'].name()}"
                # else:
                yield f"vadd.u16 {evals[t[5]].reg(idx)}, {evals[t[5]].reg(idx)}, {evals[t[6]].reg(idx)}"

                # w2 += +45 * w3
                yield f"vmla.s16 {evals[t[2]].reg(idx)}, {evals[t[3]].reg(idx)}, {coeff_gpr['+45'].name()}"

                # w5 >>= 3
                yield f"vshr.u16 {evals[t[5]].reg(idx)}, {evals[t[5]].reg(idx)}, #3"

                # w6 += 1 * w2
                if '1' in coeffs:
                    yield f"vmla.s16 {evals[t[6]].reg(idx)}, {evals[t[2]].reg(idx)}, {coeff_gpr['1'].name()}"
                else:
                    yield f"vadd.u16 {evals[t[6]].reg(idx)}, {evals[t[6]].reg(idx)}, {evals[t[2]].reg(idx)}"

                # w5 += -1 * w3
                # if '-1' in coeffs:
                #     yield f"vmla.s16 {evals[t[5]].reg(idx)}, {evals[t[3]].reg(idx)}, {coeff_gpr['-1'].name()}"
                # else:
                yield f"vsub.u16 {evals[t[5]].reg(idx)}, {evals[t[5]].reg(idx)}, {evals[t[3]].reg(idx)}"

                # w5 *= 1/3
                yield f"vmul.u16 {evals[t[5]].reg(idx)}, {evals[t[5]].reg(idx)}, {coeff_gpr['1/3'].name()}"

                # w2 >>= 1
                yield f"vshr.u16 {evals[t[2]].reg(idx)}, {evals[t[2]].reg(idx)}, #1"

                # w5 += (-16/3) * w7
                yield f"vmla.s16 {evals[t[5]].reg(idx)}, {evals[t[7]].reg(idx)}, {coeff_gpr['21840'].name()}"

                yield from shift(1)

                # w6 *= -1
                # yield f"vneg.s16 {evals[t[6]].reg(idx)}, {evals[t[6]].reg(idx)}"

                # w2 += 8 * w4
                yield f"vmla.s16 {evals[t[2]].reg(idx)}, {evals[t[4]].reg(idx)}, {coeff_gpr['8'].name()}"

                # w3 += -1 * w5
                # if '-1' in coeffs:
                #     yield f"vmla.s16 {evals[t[3]].reg(idx)}, {evals[t[5]].reg(idx)}, {coeff_gpr['-1'].name()}"
                # else:
                yield f"vsub.u16 {evals[t[3]].reg(idx)}, {evals[t[3]].reg(idx)}, {evals[t[5]].reg(idx)}"

                ### Interleaved for fewer stells
                yield from fold(1,add=False)
                yield from evals[t[1]].release(idx)
                ###

                yield from preload(2)

                # w4 += +1/9 * w2
                # if '1' in coeffs:
                #     # Use a funny way to double w5 via vmla
                yield f"vmla.s16 {evals[t[4]].reg(idx)}, {evals[t[2]].reg(idx)}, {coeff_gpr['1/9'].name()}"
                # else:
                # yield f"vadd.u16 {evals[t[4]].reg(idx)}, {evals[t[4]].reg(idx)}, {evals[t[2]].reg(idx)}"

                ### Interleaved for fewer stalls
                yield from shift(3)
                ###

                # w2 *= 1/9
                if '1/9' in coeffs:
                    yield f"vmul.u16 {evals[t[2]].reg(idx)}, {evals[t[2]].reg(idx)}, {coeff_gpr['1/9'].name()}"
                else:
                    yield f"vmul.u16 {evals[t[2]].reg(idx)}, {evals[t[2]].reg(idx)}, {coeff_gpr['1/3'].name()}"
                    yield f"vmul.u16 {evals[t[2]].reg(idx)}, {evals[t[2]].reg(idx)}, {coeff_gpr['1/3'].name()}"

                # w4 *= -1
                # Bypass the abstraction layer for simplicity...
                old_w4 = evals[t[4]].reg(idx)
                yield from evals[t[4]].release(idx)
                yield from evals[t[4]].load(idx, skip_load=True, force_reg="Q3")
                yield f"vneg.s16 {evals[t[4]].reg(idx)}, {old_w4}"

                # w6 += +30 * w2
                # yield f"vmla.s16 {evals[t[6]].reg(idx)}, {evals[t[2]].reg(idx)}, {coeff_gpr['+30'].name()}"
                yield f"vmla.s16 {evals[t[6]].reg(idx)}, {evals[t[2]].reg(idx)}, {coeff_gpr['-30'].name()}"

                ### Interleaved for fewer stalls
                yield from fold(3,add=True)
                yield from evals[t[3]].release(idx)
                ###

                # w6 *= 1/15
                yield f"vmul.u16 {evals[t[6]].reg(idx)}, {evals[t[6]].reg(idx)}, {coeff_gpr['1/-15'].name()}"

                yield from preload(3)

                # w6 >>= 2
                yield f"vshr.u16 {evals[t[6]].reg(idx)}, {evals[t[6]].reg(idx)}, #2"

                # w6 has its final value, but it's still needed
                # w2 += -1 * w6
                if '-1' in coeffs:
                    yield f"vmla.s16 {evals[t[2]].reg(idx)}, {evals[t[6]].reg(idx)}, {coeff_gpr['-1'].name()}"
                else:
                    yield f"vsub.u16 {evals[t[2]].reg(idx)}, {evals[t[2]].reg(idx)}, {evals[t[6]].reg(idx)}"

                ### Interleaved for fewer stalls
                yield from preload(4)
                ###

                yield from shift(2)
                yield from fold(2)
                yield from evals[t[2]].release(idx)

                last_idx = idx
                first_iteration = False


                if not last_iteration:
                    continue

                yield f"vst40.u16 {{{evals[t[7]].reg(idx)},{evals[t[6]].reg(idx)}," \
                    f"{evals[t[5]].reg(idx)},{evals[t[4]].reg(idx)}}}, [{dst}]"
                yield f"vst41.u16 {{{evals[t[7]].reg(idx)},{evals[t[6]].reg(idx)}," \
                    f"{evals[t[5]].reg(idx)},{evals[t[4]].reg(idx)}}}, [{dst}]"
                yield f"vst42.u16 {{{evals[t[7]].reg(idx)},{evals[t[6]].reg(idx)}," \
                    f"{evals[t[5]].reg(idx)},{evals[t[4]].reg(idx)}}}, [{dst}]"
                yield f"vst43.u16 {{{evals[t[7]].reg(idx)},{evals[t[6]].reg(idx)}," \
                    f"{evals[t[5]].reg(idx)},{evals[t[4]].reg(idx)}}}, [{dst}]"

                yield from evals[t[4]].release(idx)
                yield from evals[t[5]].release(idx)
                yield from evals[t[6]].release(idx)
                yield from evals[t[7]].release(idx)

                tmp = core.regs.Reg(self.asm.vregs, str_name=f"tmp")
                yield from tmp.alloc()
                start = core.regs.Reg(self.asm.vregs, str_name=f"start")
                yield from start.alloc()

                yield f"vmov.u16 {tmp.name()}, #0"
                yield f"vmov.u16 {tmp.name()}[0], {carry[3].name()}"
                yield f"vmov.u16 {tmp.name()}[1], {carry[2].name()}"
                yield f"vmov.u16 {tmp.name()}[2], {carry[1].name()}"
                yield f"vldrw.u32 {start.name()}, [{dst}, #{-(512-64)}]!"
                yield f"vsub.u16 {start.name()}, {start.name()}, {tmp.name()}"
                yield f"vstrw.u32 {start.name()}, [{dst}]"

                tmp.free()
                start.free()

        for c in coeffs:
            coeff_gpr[c].free()

    def get_code(self):

        for asm_line in self.interpolation():
            print(asm_line)
