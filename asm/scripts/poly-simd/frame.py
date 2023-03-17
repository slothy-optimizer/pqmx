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

class PolyU16SIMDBase():

    def __init__(self, anticyclic=False,
                 poly_dim=32,
                 optimize=True, carry_mode="lane-move",
                 neg_b=False, carry_gpr=None,
                 dest_initialized=False):

        self.access_granularity = 32
        self.access_multiplier  = int(self.access_granularity / 16)

        if not poly_dim in [16,32]:
            raise Exception("Invalid polynomial dimension")

        self.poly_dim    = int(poly_dim/8)
        self.cur_iter    = 0
        self.lim_iter    = 8

        self.dim = self.poly_dim * self.lim_iter

        self.anticyclic = anticyclic
        self.carry_mode = carry_mode
        self.optimize   = optimize

        self.iterations = 1

        self.neg_b = neg_b
        if self.neg_b:
            self.neg_b_vregs = {}

        if not self.anticyclic:
            self.max_dst_idx = 2 * self.poly_dim - 1
            output_expansion = 2
        else:
            self.max_dst_idx = self.poly_dim - 1
            output_expansion = 1

        self.input_size_bytes = self.dim * 2
        # Multiplication modulo X^n + 1 doesn't increase the size.
        self.output_size_bytes = output_expansion * self.input_size_bytes

        if carry_gpr:
            self.external_carry = True
            self.carry_gpr = carry_gpr
        else:
            self.external_carry = False

        self.base = None

        self.src_a    = None
        self.src_b    = None
        self.dst      = None

        self.dst_initialized = {}
        for dst_idx in range(0, self.max_dst_idx + 1):
            self.dst_initialized[dst_idx] = dest_initialized

        self.sign_a = {}
        for a_idx in range(0, self.dim):
            self.sign_a[a_idx] = 1

        self.dst_vect = None
        self.dst_memory = True

        self.b_vect = None

    def set_src_a(self,src_a):
        self.src_gpr = core.rw.ReadWriteGPR(self.asm.gprs, src_a, 16,
                                            name="a")

        self.vect = mve.rw.ReadWriteVector(self.asm, src_a, 16,
                                           name="a_vect")

    def set_src_b(self,src_b,vector=False):

        if not vector:
            self.src_vect = mve.rw.ReadWriteVector(self.asm, src_b, 16,
                                                   name="b")
            return

        self.b_vect = src_b

    def set_dest(self,dst,vector=False):
        if self.dst_vect != None:
            raise Exception("Can't set destination twice")

        if vector:
            self.dst_vect = dst
            self.dst_memory = False
            return

        self.dst_vect = mve.rw.ReadWriteVector(self.asm, dst,16,name="dst")
        self.dst_memory = True

    def _a_index(self,iter_idx,idx,real_index=None):
        # TODO: Depending on whether the input is already permuted,
        #       the index calculation needs to be different and
        #       resemble a gather load.
        # return iter * self.poly_dim + idx

        if real_index == None:
            real_index = 7 - iter_idx

        return real_index + 8 * idx

    # Load a single coefficient of the GPR-input into a GPR
    def load_a(self, idx, next_iter=False, force_iter=None, real_index=None):

        if next_iter == False:
            iter_idx = self.cur_iter
        else:
            iter_idx = self.cur_iter + 1

        if force_iter:
            iter_idx = force_iter

        if real_index != None and iter_idx >= self.lim_iter:
            return iter([])

        yield from self.src_gpr.load(self._a_index(iter_idx,idx, real_index=real_index))

    # Get the name of the GPR currently holding the coefficient
    # of the GPR-input at the given index.
    def get_a(self,iter_idx,idx,real_index=None):
        return self.src_gpr.reg(self._a_index(iter_idx,idx,real_index=real_index))

    # Release the GPR previously holding an entry of the GPR-input
    def release_a(self,idx,iter_idx=None,real_index=None):

        if iter_idx == None:
            iter_idx = self.cur_iter
        if real_index != None and iter_idx >= self.lim_iter:
            return iter([])

        yield from self.src_gpr.release(self._a_index(iter_idx,idx,real_index=real_index))

    # Flip the sign of a loaded entry of the GPR-input.
    #
    # Some sign-change is needed for the upper half of the anticyclic
    # multiplication as we need to subtract the result of the corresponding
    # subproducts from the current temporary results. This would require
    # a Vector-GPR Vector-Multiply-Accumulate-Subtract instruction,
    # say VMLS, similar to VMLA, but that doesn't exist. Instead, we
    # keep on using VMLA, but flip the sign of one of the input operands.
    def flip_a(self, idx, iter_idx=None):

        if self.neg_b:
            return iter([])

        if iter_idx == None:
            iter_idx = self.cur_iter
        self.sign_a[self._a_index(iter_idx,idx)] = -1

        yield f"// Flip sign of a[{idx}]"
        yield f"neg {self.get_a(iter_idx,idx)}, {self.get_a(iter_idx,idx)}"

    def get_sign_a(self, idx, iter_idx=None):
        if iter_idx == None:
            iter_idx = self.cur_iter
        return self.sign_a[self._a_index(iter_idx,idx)]

    # Get the name of the vector register holding 8 consecutive
    # coefficients of the (temporary) output of the multiplication.
    def get_dest(self,idx):

        idx = self._dst_true_idx(idx)
        if not self.dst_memory:
            return self.dst_vect[idx].name()

        return self.dst_vect.reg(self._dest_idx_to_load_idx(idx))
    def dest_is_initialized(self,idx):
        idx = self._dst_true_idx(idx)
        return self.dst_initialized[idx]
    def dest_set_initialized(self,idx):
        idx = self._dst_true_idx(idx)
        self.dst_initialized[idx] = True

    # In the anticyclic case (computation modulo X^n+1), we only have
    # half the number of destination vectors.
    #
    # This convenience function maps the upper half of the output
    # range to the lower half in this case.
    def _dst_true_idx(self,idx):
        if self.anticyclic:
            idx = idx % (self.poly_dim)
        return idx

    def _dest_idx_to_load_idx(self,idx):
        idx = self._dst_true_idx(idx)

        # idx is a vector index, and dst_vect works at 16-bit granularity,
        # so we scale by 8 to get the word-index.
        return 8 * idx

    def load_dest(self,idx,force_reg=None, skip_load=False):

        if not self.dst_memory:
            return iter([])

        init_as_zero = False
        # In the non-anticyclic case, the last coefficient vector isn't target
        # of any VMLA/VMUL, but only filled through VSHLC. Since VSHLC is
        # called 8 times with shift-width 16 bit we could omit initialization
        # by zero. However, it's convenient to zero-initialize nonetheless
        # because the carry-out of the VSHLC for the last vector will then
        # automatially re-set the carry GPR to 0, ready to be used in the
        # next iteration.
        if not self.anticyclic and not self.dest_is_initialized(idx):
            if idx == self.max_dst_idx:
                init_as_zero = True

        if not skip_load:
            skip_load = not self.dest_is_initialized(idx)

        yield from self.dst_vect.load(self._dest_idx_to_load_idx(idx),
                                      is_uninitialized=skip_load,
                                      force_reg=force_reg,
                                      init_as_zero=init_as_zero)

    def writeback_dest(self,idx):

        if not self.dst_memory:
            return iter([])

        idx = self._dst_true_idx(idx)
        yield f"// Store and release target coefficient {idx}"
        yield from self.dst_vect.write_from(self._dest_idx_to_load_idx(idx),
                                            self.get_dest(idx))
        self.dest_set_initialized(idx)

    def release_dest(self,idx,writeback=True):

        if not self.dst_memory:
            return iter([])

        idx = self._dst_true_idx(idx)
        if writeback:
            yield from self.writeback_dest(idx)
        yield from self.dst_vect.release(self._dest_idx_to_load_idx(idx))

    # Load 8 consecutive coefficients of the vector input into a
    # vector register.
    def load_b(self,idx,force_reg=None):

        if self.b_vect != None:
            return iter([])

        yield from self.src_vect.load(self._b_idx_to_load_idx(idx),
                                      force_reg=force_reg)

    def flip_b(self,idx, force_reg=None):

        if not self.neg_b:
            return iter([])

        if idx in self.neg_b_vregs.keys():
            return iter([])

        self.neg_b_vregs[idx] = core.regs.Reg(self.asm.vregs)
        yield from self.neg_b_vregs[idx].alloc(force_reg)
        yield f"vneg.s16 {self.neg_b_vregs[idx].name()}, {self.get_b(idx)}"

    def release_flip_b(self,idx):

        if not self.neg_b:
            return

        if not idx in self.neg_b_vregs.keys():
            return

        self.neg_b_vregs[idx].free()
        del self.neg_b_vregs[idx]

    # Release vector register previously holding 8 consecutive coefficients
    # of the vector input of the multiplication.
    def release_b(self,idx):

        if self.neg_b and idx in self.neg_b_vregs.keys():
            self.neg_b_vregs[idx].free()
            del self.neg_b_vregs[idx]

        if self.b_vect != None:
            return iter([])

        yield from self.src_vect.release(self._b_idx_to_load_idx(idx))

    # Get the name of the vector register currently holding 8 consecutive
    # coefficients of the vector input of the multiplication.
    def get_b(self,idx,flip=False):

        if not flip:
            if self.b_vect:
                return self.b_vect[idx].name()
            else:
                return self.src_vect.reg(self._b_idx_to_load_idx(idx))

        if not self.neg_b:
            raise Exception("Invalid argument")

        if not idx in self.neg_b_vregs.keys():
            raise Exception("Flipped B-index {idx} not available")

        return self.neg_b_vregs[idx].name()

    def _b_idx_to_load_idx(self,idx):
        # idx is a vector index, and dst_vect works at 16-bit granularity,
        # so we scale by 4 to get the word-index.
        return 8*idx

    #
    # Carry handling
    #
    # TODO: Document
    #
    def reset_carry(self):

        if self.anticyclic and not self.carry_mode == "predicated-add":
            return iter([])

        yield f"mov {self.carry_gpr.name()}, #0"
    def alloc_carry(self):
        if self.external_carry:
            return iter([])

        yield from self.carry_gpr.alloc(constraint=lambda x: not x == "r14")
        yield f"// Use {self.carry_gpr.name()} for carry"
    def release_carry(self):
        if self.external_carry:
            return
        self.carry_gpr.free()

    def set_iter(self,iter_idx):
        self.cur_iter = iter_idx

    def is_last_iteration(self):
        return self.cur_iter + 1 == self.lim_iter
    def is_first_iteration(self):
        return self.cur_iter == 0
    def next_iteration(self):
        if is_last_iteration(self):
            raise Exception("No next iteration")
        return self.cur_iter + 1
    def next_coeff(self,coeff):
        return (coeff+1) % (self.max_dst_idx + 1)

    def finish_coeff(self,idx,last_iter=False):

        if not last_iter and self.is_last_iteration():
            return

        if last_iter and self.cur_iter == 0:
            return

        yield f"// Prepare coefficient {idx} for next iteration"
        yield f"// Carry in GPR {self.carry_gpr.name()}"
        yield f"vshlc {self.get_dest(idx)}, {self.carry_gpr.name()}, #16"

        self.carry_negated = False

    def wrap_coeff(self,idx,last_iter=False, negated=False):

        if not self.anticyclic:
            return

        if not last_iter and self.is_last_iteration():
            return

        if last_iter and self.cur_iter == 0:
            return

        idx_next = self.next_coeff(idx)

        if self.carry_mode == "predicated-add":

            if self.carry_negated:
                raise Exception("Carry shouldn't have been negated")

            if negated:
                instr = "vsubt.u16"
            else:
                instr = "vaddt.u16"

            yield f"// Restrict subsequent {instr} to first lane -- P0 has been set earlier"
            yield f"vpst"
            yield f"{instr} {self.get_dest(idx_next)}, "\
                          f"{self.get_dest(idx_next)}, "\
                          f"{self.carry_gpr.name()}"

        if self.carry_mode == "lane-move":

            if negated and not self.carry_negated:
                raise Exception("Forgot to negate carry?")

            yield f"vmov.u16 {self.get_dest(idx_next)}[0], "  \
                           f"{self.carry_gpr.name()}"


        if self.carry_mode == "predicated-move":

            if negated and not self.carry_negated:
                raise Exception("Forgot to negate carry?")

            yield f"// Restrict subsequent vdup to first lane -- P0 has been set earlier"
            yield f"vpst"
            yield f"vdupt.16 {self.get_dest(idx_next)}, "\
                           f"{self.carry_gpr.name()}"

    def negate_carry(self,before_wrap=False):

        if before_wrap and not self.carry_mode in ["predicated-move", "lane-move"]:
            return iter([])

        yield f"// Wraparound carry {self.carry_gpr.name()} with sign"
        yield f"neg {self.carry_gpr.name()}, {self.carry_gpr.name()}"

        self.carry_negated = True

    #
    # Compute a single subproduct and add/subtract it to/from
    # the temporary result vectors.
    #
    def mulacc(self,a_idx,b_idx,next_iteration=False,
               real_index=None, force_dest_idx=None, sign=None,
               force_dest_vect=None):

        # Should we pre-calculate a subproduct from the next iteration?
        if next_iteration:
            if self.is_last_iteration():
                return iter([])
            iter_idx = self.cur_iter + 1
        else:
            iter_idx = self.cur_iter

        dst_idx = a_idx + b_idx

        if sign == None:
            if self.anticyclic and dst_idx >= self.poly_dim:
                sign = True

        if not force_dest_idx == None:
            dst_idx = force_dest_idx

        if force_dest_vect != None:
            dest_vect = force_dest_vect
        else:
            dest_vect = self.get_dest(dst_idx)

        # If the destination vector is uninitialized, we can simply use
        # VMUL to initialize it with the result of the first subproduct
        # it holds.
        #
        # If it is initialized, we want to add the subproduct, unless we're
        # anticyclic mode _and_ the subproduct belongs to the upper half:
        # In this case, we want to subtract from the destination. This
        # is currently done by flipping the sign of the GPR-input, which
        # must have happened before, which we double-check.
        if self.dest_is_initialized(dst_idx):

            if not sign:
                yield f"// Subproduct (a{a_idx},b{b_idx}), iteration {iter_idx}"
                yield f"vmla.s16 {dest_vect}, "   \
                               f"{self.get_b(b_idx)}, "        \
                               f"{self.get_a(iter_idx,a_idx,real_index=real_index)}"
            else:
                # Check that we've flipped a's sign
                if not self.neg_b:

                    if self.get_sign_a(a_idx) != -1:
                        raise Exception(f"Need to flip the sign of a[{a_idx}] "\
                                        f"before computing upper half")

                    yield f"// Subproduct (a{a_idx},b{b_idx}), iteration {iter_idx}"
                    yield f"vmla.s16 {dest_vect}, "   \
                                   f"{self.get_b(b_idx)}, "        \
                                   f"{self.get_a(iter_idx,a_idx,real_index=real_index)}"
                else:
                    yield f"// Subproduct (a{a_idx},b{b_idx}), iteration {iter_idx}"
                    yield f"vmla.s16 {dest_vect}, "   \
                                   f"{self.get_b(b_idx,flip=True)}, "        \
                                   f"{self.get_a(iter_idx,a_idx,real_index=real_index)}"
        else:
            yield f"// Subproduct (-a{a_idx},b{b_idx}), iteration {iter_idx}"
            yield f"vmul.u16 {dest_vect}, "\
                           f"{self.get_b(b_idx)}, "     \
                           f"{self.get_a(iter_idx,a_idx,real_index=real_index)}"

        # Now the destination vector is certainly initialized
        self.dest_set_initialized(dst_idx)

    def core(self):

        # Check that source and destination have been set
        # if not self.src_gpr or not self.src_vect or not self.dst_vect:
        #     raise Exception("Source and/or destination not configured")

        # Initialize everything
        self.next_coeff_in_iter = 0

        if not self.external_carry:
            self.carry_gpr = core.regs.Reg(self.asm.gprs, str_name=f"carry")
            yield from self.alloc_carry()

        yield from self.loop()

        # Cleanup
        if not self.external_carry:
            self.carry_gpr.free()

    def standalone(self, src_a, src_b, dst, funcname, loop=1):

        self.asm = mve.regs.Allocator()

        self.iterations = loop

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

        # We don't need any fancy markers because the input is so small.
        self.set_src_a([core.markers.ReadWriteMarker(self.base_a.name(),  0)])
        self.set_src_b([core.markers.ReadWriteMarker(self.base_b.name(),  0)])
        self.set_dest ([core.markers.ReadWriteMarker(self.base_dst.name(),0)])

        yield from self.core()

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
