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

class GatherLoadTest():

    def __init__(self,src,dst,size,stride,block_length,bitwidth=16,base=None):

        self._src   = src
        self._dst   = dst
        self.size   = size
        self.stride_a = stride
        self.block_length = block_length

        if not bitwidth in [8,16,32]:
            raise Exception("Invalid bitwidth specified")

        self.bitwidth = bitwidth
        self.multiplier = int(bitwidth / 8)

        if self.size % ( self.block_length * self.multiplier ) != 0:
            raise Exception("Size must be a multiple of the block length")

        self.blocks = int(self.size / ( self.block_length * self.multiplier ) )

        if self.blocks % self.stride_a != 0:
            raise Exception("Size must be a multiple of the stride")

        self.stride_b = int(self.blocks / self.stride_a)

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

        funcname = f"transpose_u{self.bitwidth}x{self.block_length}_"\
                   f"{self.stride_a}x{self.stride_b}"

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

        # Allocate GPRs to hold address markers covering the input buffer.
        # See examples/permute for more details.
        source_markers = core.markers.ReadWriteMarkers(self.asm, self.size,
                                                       self.bitwidth, src.name(),
                                                       initial_shift=0,
                                                       max_immediate=4095)
        yield from source_markers.alloc_registers_for_markers()

        markers = []
        for i in range(0,self.stride_a):
            for j in range(0,self.stride_b):
                block_idx = i * self.stride_b + j
                load_idx  = j * self.stride_a + i
                block_offset = block_idx * self.block_length
                load_offset  = load_idx  * self.block_length

                # Create markers for the current block:
                # Its offset in the actual memory buffer is load_offset,
                # while its logical index is block_offset.
                new_markers = source_markers.get_shifted_marker_list(
                    load_offset,
                    offset_real_idx = block_offset,
                    size = self.block_length)
                markers = markers + new_markers

        reader = core.rw.ReadWriteGPR(self.asm.gprs, markers, self.bitwidth)

        store_instr = {
            8:  'strb',
            16: 'strh',
            32: 'strw',
        }[self.bitwidth]

        for idx in range(0, self.entries):
            yield from reader.load(idx)
            yield f"{store_instr} {reader.reg(idx)}, [{dst.name()}], #+{self.multiplier}"
            yield from reader.release(idx)

        yield from source_markers.free_registers_for_markers()

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
