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

class ReadWriteVectorTest():

    def __init__(self,src,dst,size,bitwidth=16,base=None,):
        """This class exemplifies how the ReadWriteMarkers helper class can
           be used to provide random access to a large contiguous buffer.

           The underlying problem is that the immediate offset for vector
           loads and stores is limited to the range -127, ..., +127, and
           that random access for arrays with more than 255 elements thus
           requires the computation of intermediate address 'markers' so
           that every array entry is reachable from one of those 'markers'
           by a shift less than 128 in absolute value.

           Doing this covering by hand is tedious and error prone, and
           the ReadWriteMarkers class takes care of it.

           Note: Often, this problem can be avoided by gradually shifting
           the marker as memory is being read or written. For example, a
           linear access for an implementation of memcpy() would use
           the post-increment variants of VLDR/VSTR to avoid any intermediate
           markers or complicated offset calculations, regardless of the
           size of the buffer. The markers are only needed if random access
           is required, or if modifying the base register for the buffer
           isn't desired.

           In this example, we exemplify the use of the ReadWriteMarker
           class by implementing a random buffer permutation."""

        self._src = src
        self._dst = dst
        self.size = size

        if not bitwidth in [8,16,32]:
            raise Exception("Invalid bitwidth specified")

        self.bitwidth = bitwidth
        self.multiplier = int(bitwidth / 8)

        if self.size % self.multiplier != 0:
            raise Exception("Size must be a multiple of bitwidth")

        self.entries = int(self.size / self.multiplier)
        self.lanes = int(128 / bitwidth)

        if not base:
            self.asm = mve.regs.Allocator()
        else:
            self.asm = base

    def standalone(self):

        #
        # Preamble
        #

        funcname = f"permute_and_clear_u{self.bitwidth}"

        yield from core.asm.Snippets.license()
        yield from core.asm.Snippets.autogen_warning()
        yield from core.asm.Snippets.function_decl(funcname)
        yield from core.asm.Snippets.function_header(funcname)
        yield from core.asm.Snippets.save_gprs()
        yield from core.asm.Snippets.save_vregs()

        src = core.regs.Reg(self.asm.gprs, str_name="src")
        dst = core.regs.Reg(self.asm.gprs, str_name="dst")

        yield from src.alloc(self._src)
        yield from dst.alloc(self._dst)

        # VLDR and VSTR can use immediate index offsets in
        # the range -127, .., +127. Cover the source with the
        # minimal number of 'markers' which allows us to address
        # all products with a single VLDR/VSTR.
        source_markers = core.markers.ReadWriteMarkers(self.asm, self.size,
                                                       self.bitwidth,
                                                       src.name(),
                                                       initial_shift=0)

        # Allocate and initialize GPRs holding the address markers.
        # We don't need to know which exact GPRs are being used here,
        # nor what the computed offsets are..
        yield from source_markers.alloc_registers_for_markers()

        # get_shifted_marker_list() allows to specify a shift in case
        # the base register doesn't point to the start of the logical
        # buffer. Here it does, so pick 0 as the shift.
        markers = source_markers.get_shifted_marker_list(0)

        # The class ReadWriteVector supports moving data between memory and
        # vector registers. It takes any set of address markers as input which
        # map each logical buffer index to a pair of GPR + offset that can
        # be used to load it.
        reader = mve.rw.ReadWriteVector(self.asm, markers, self.bitwidth)

        store_instr = {
            8:  'vstrb.u8',
            16: 'vstrh.u16',
            32: 'vstrw.u32',
        }[self.bitwidth]

        access_list = range(0,self.entries,self.lanes)
        #access_list = numpy.random.permutation(access_list)

        yield f"/* PERMUTE: {access_list} */"

        # Allocate a fresh GPR to hold the constant we want to fill the
        # source buffer with.
        tmp = core.regs.Reg(self.asm.gprs, str_name="dst")
        yield from tmp.alloc()
        yield f"mov {tmp.name()}, #42"

        for idx in access_list:
            # Random access in source buffer:
            # * Allocate a free vector register to hold the data
            # * Find suitable marker from which the desired index is reachable
            # * Calculate immediate offset from that marker
            # * Issue load
            yield from reader.load(idx)

            # Store in destination buffer and increment the destination pointer.
            yield f"{store_instr} {reader.reg(idx)}, [{dst.name()}], #+16"

            # Overwrite source buffer
            yield f"vdup.u{self.bitwidth} {reader.reg(idx)}, {tmp.name()}"
            yield from reader.write_back(idx)

            # Free the vector register used to hold the data. If we don't
            # do this we run out of vectors after a few iterations.
            yield from reader.release(idx)

        # Free marker GPRs
        yield from source_markers.free_registers_for_markers()

        # Free GPR for constant
        tmp.free()

        # Free source and destination GPR
        src.free()
        dst.free()

        #
        # Wrapup
        #

        yield from core.asm.Snippets.restore_vregs()
        yield from core.asm.Snippets.restore_gprs()
        yield from core.asm.Snippets.function_footer()

    def get_code(self):
        gen = self.standalone()
        for line in gen:
            print(line)
