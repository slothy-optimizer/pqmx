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
import core.regs

class ReadWriteMarker():
    def __init__(self, reg, base, start_idx=None, end_idx=None):
        self.base = base
        self.reg  = reg

        self.start_idx = start_idx
        self.end_idx = end_idx

    def __repr__(self):

        if self.start_idx == None:
            return f"({self.reg}, base={self.base})"

        return f"({self.reg}, base={self.base}, start_idx={self.start_idx}, end_idx={self.end_idx})"

class ReadWriteMarkers():
    """Immediate offsets used in Load and Store instructions are bounded by a
       range specific to the instruction. For example, immediate offsets in
       Cortex-M Vector Extensions (MVE) are limited to the index range -127,..,127.

       In case random access is required for a buffer which is so large that it
       cannot be addressed using immediate offsets from a single base address stored
       in a GPR, this class helps allocating and configuring a set of 'marker' GPRs
       to minimally cover the given address range.
    """

    def __init__(self, base, size, bitwidth, base_register, max_immediate=126, initial_shift=126,
                 marker_bases=None):
        """Build marker list covering a contiguous buffer

           @param base: The register allocator to be used. Must be an instance of gen.core.Allocator
           @param size: The length of the buffer in Bytes
           @param bitwidth: The bit length of each entry in the buffer.
           @param base_register: The name of the GPR holding the base address of the buffer.
           @param max_immediate: The maximum absolute value for immediate offsets.
           @param initial_shift: The amount by which the base register should be shifted,
                                 allowing to cover a larger part of the buffer.
        """

        if bitwidth not in [8,16,32]:
            raise Exception("Invalid bitwidth")

        self.multiplier   = int(bitwidth / 8)

        self.asm = base

        if size % self.multiplier != 0:
            raise Exception("Invalid size")

        self.base_reg     = base_register
        self.length       = int(size / self.multiplier)

        self.marker_width  = max_immediate
        self.initial_shift = initial_shift

        # The list of pairs of register and register base
        self.marker_pairs = []
        self.helper_regs  = []

        if marker_bases == None:
            self.marker_bases = [initial_shift]
            cur_marker_base = self.marker_bases[0]
            # Make sure tphe whole range is covered by the markers
            while cur_marker_base + self.marker_width < self.length:
                # Choose next marker so that the first address accessible through it
                # (base-127) is the one following the last address accessible with
                # the previous marker (cur_marker_base+127+1)
                cur_marker_base += 2 * self.marker_width
                self.marker_bases.append(cur_marker_base)
        else:
            self.marker_bases = marker_bases

    def __repr__(self):
        return f"{self.marker_pairs}"

    def alloc_registers_for_markers(self):
        """Allocates GPRs for markers and generates code for their initialization"""

        base_reg    = self.base_reg
        first       = True
        last_marker = None
        last_reg    = None

        if self.initial_shift != 0:
            yield f"// Temporarily shift {base_reg} to increase addressing range."
            yield f"add {base_reg}, {base_reg}, #{self.multiplier * self.initial_shift}"

        for marker in self.marker_bases:

            if not first:
                new_marker_reg = core.regs.Reg(self.asm.gprs, str_name=f"marker({marker})")
                yield from new_marker_reg.alloc()
                yield f"// Use {new_marker_reg.name()} as marker for {base_reg} + {self.multiplier * marker}"
                yield f"add {new_marker_reg.name()}, {last_reg}, #{self.multiplier * (marker-last_marker)}"
                self.helper_regs.append(new_marker_reg)
                new_marker_reg_name = new_marker_reg.name()
            else:
                new_marker_reg_name = base_reg

            last_reg = new_marker_reg_name
            last_marker = marker

            self.marker_pairs.append(ReadWriteMarker(new_marker_reg_name, marker))
            first = False

    def free_registers_for_markers(self):
        """Free the GPRs previously allocated by alloc_registers_for_markers()"""

        for helper_reg in self.helper_regs:
            helper_reg.free()
        self.helper_regs  = []
        self.marker_pairs = []

        if self.initial_shift != 0:
            yield f"// Undo temporary shift of {self.base_reg}"
            yield f"sub {self.base_reg}, {self.base_reg}, #{self.multiplier * self.initial_shift}"

    def get_shifted_marker_list(self, offset, offset_real_idx=None, size=None):
        """Obtain shifted and optionally restricted marker list for logical subbuffer

           @param offset: If offset_real_idx is None, this is the offset of the base of the
                          logical subbuffer for which the marker list should be generated,
                          calculated with respect to the value of the base register passed to
                          the initialiation function.
           @param offset_real_idx: If not None, this is the index in the logical subbuffer of
                                   the entry pointed to by the offset parameter. This must be
                                   set if and only if the size parameter is set.
           @param size: If not None, this is the number of contiguous entries in the logical
                        subbuffer. This must be set if and only if the offset_real_idx parameter
                        is set.

           Common use cases:
           - base=0, offset_real_idx=size=None:
             In this case, this function returns a marker list overing the buffer starting
             at the address contained in the base register.
           - base != 0, offset_real_idx=size=None:
             The base register points to the base of a large buffer, e.g. the stack, containing
             several contiguous subbuffers, one of which we want to get markers for. In this case,
             it makes sense to set up markers for the large buffer only once, and shift the offsets
             accordingly if we want to access a subbuffer.
           - offset_real_idx != None, size != None:
             The base register points to the base of a large buffer, e.g. the stack, containing
             one or more logical subbuffers, which however are scattered into multiple contiguous
             blocks. In this case, calling this function once for each contiguous piece of the
             subbuffer under consideration, and concatenating the resulting marker lists, allows
             to build a logically contiguous view of the subbuffer, hiding the necessary offset
             calculations. An example would be linear access to a buffer which has been transposed
             in memory.
             In this case, offset_real_idx is the offset in the logical subbuffer of the entry
             at offset `offset`, and size is the number of contiguous entries following.

           See examples/transpose for an example of the last case.
        """

        if len(self.marker_pairs) == 0:
            raise Exception("Need to build list of marker registers first")
        if offset_real_idx == None and size != None:
           raise Exception("Invalid parameters")
        if offset_real_idx != None and size == None:
           raise Exception("Invalid parameters")

        shifted_marker_list = []
        for marker in self.marker_pairs:
            reg = marker.reg
            base = marker.base

            if size:
                if offset > base + self.marker_width:
                    continue
                if base > offset + size + self.marker_width:
                    continue

            start_idx = None
            end_idx = None

            if offset_real_idx == None:
                shift = base - offset
            else:
                shift = base - offset + offset_real_idx
                start_idx = offset_real_idx
                end_idx = offset_real_idx + size

            new_marker = ReadWriteMarker(reg, shift,
                                         start_idx=start_idx,
                                         end_idx=end_idx)

            shifted_marker_list.append(new_marker)

        return shifted_marker_list

    def search_marker_list(marker_list, idx, max_immediate=126):
        """Lookup an index in a marker list, returning a pair of
           register + immediate offset on success"""

        for marker in marker_list:
            reg        = marker.reg
            base_idx   = marker.base
            start_idx  = marker.start_idx
            end_idx    = marker.end_idx
            offset     = idx - base_idx
            if abs(offset) > max_immediate:
                continue
            if start_idx and idx < start_idx:
                continue
            if end_idx and idx >= end_idx:
                continue
            return (reg, offset)

        raise Exception(f"Couldn't find source register covering index {idx}")

    def shift_register_in_marker_list(marker_list, reg, shift):
        """Update a marker list after the content of one of the marker register has been changed"""
        for marker in marker_list:
            if not marker.reg == reg:
                continue
            marker.base += shift
