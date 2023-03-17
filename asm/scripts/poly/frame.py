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
import mve
import mve.regs
import mve.rw

class PolyU16Frame():
    """ This function generates MVE assembly for schoolbook multiplication
        of two degree n polynomials over Z/2^16Z.

        It returns a generator object yielding the assembly line by line.

        The arguments src_a, src_b and dst are names of GPRs holding the addresses
        of base of the input operands and the destination, respectively.

        RESTRICTION: For now, it is assumed that the input operands are padded
                     with 16 zero Bytes at the front and back.
    """

    def __init__(self, src_a, src_b, dst, dim, funcname, base=None):

        self.src_a    = src_a
        self.src_b    = src_b
        self.dst      = dst
        self.dim      = dim
        self.funcname = funcname

        if not base:
            self.asm = mve.regs.Allocator()
            alloc_regs = True
        else:
            self.asm = base

            if not src_a in self.asm.gprs.allocated():
                raise Exception("First source register not marked as allocated")
            if not src_b in self.asm.gprs.allocated():
                raise Exception("Second source register not marked as allocated")
            if not dst in self.asm.gprs.allocated():
                raise Exception("Destination register not marked as allocated")

            alloc_regs = False

        # Offset -7 means that the i-th chunk of a will have src_a[i]
        # as the _last_ entry, not the first.
        self.a = mve.rw.Forward(self.asm, self.src_a, 16, name="a",
                                  offset=-7,
                                  alloc_src=alloc_regs)

        # Offset 3 means that the i-th chunk of b will have src_b[i]
        # as the _last_ entry, not the first.
        self.b = mve.rw.Backwards32(self.asm, self.src_b, "b", 3,
                                      alloc_src=alloc_regs)

        def is_even_gpr(name):
            return name in [f'r{i}' for i in range(0,15,2)]

        self.acc = core.rw.GPRWriter(self.asm.gprs, self.dst, 16, "acc", is_even_gpr)


    def a_chunk_as_str(self,idx):
        base = idx + self.a.offset
        str_arr = [ 'a[{:>3}]'.format(base+i) for i in range(0,8) ]
        return "[" + ','.join(str_arr) + "]"

    def b_chunk_as_str(self,idx):
        base = 2*(idx + self.b.offset) + 1
        str_arr = [ 'b[{:>3}]'.format(base-i) for i in range(0,8) ]
        return "[" + ','.join(str_arr) + "]"

    def is_valid_index_pair(self,a_idx,b_idx):
        return(
            b_idx % 8 == 0       and
            b_idx < self.dim     and
            a_idx < self.dim + 7 )

    def index_range(self):
        return( range( 0, 2*self.dim - 1) )

    def subproducts(self):
        return \
            [ (a_idx, b_idx)    for
              a_idx in self.index_range() for
              b_idx in self.index_range() if
              self.is_valid_index_pair(a_idx,b_idx) ]

    def mul_acc(self,i,j):
        if not j % 4 == 0:
            raise Exception("Invalid b-index")

        column = i + j

        # j is an index w.r.t the view of b as a 16-bit buffer, but the reverse
        # reader treats it as a 32-bit array (the reverse loading strategy doesn't
        # work with 16-bit lanes, and the remaining pair-wise reversing is done
        # by using the exchange variant of vmladav{a} below.
        #
        # Half the index to get the 32-bit access index.

        j32 = int(j/2)

        yield f"\n// Subproduct a[{i}]*b[{j}]"
        yield from self.a.load(i)
        yield from self.b.load(j32)
        yield from self.a.load(i,False)  # b[j] could have evicted a[i]
        yield from self.acc.load(column)
        # For the first entry in each column, don't use the accumulate variant.
        yield f'// < {self.a_chunk_as_str(i)}, '
        yield f'//   {self.b_chunk_as_str(j)} >'
        if self.acc.is_init(column):
            yield f'vmladavax.s16 {self.acc.reg(column)}, {self.a.reg(i)}, {self.b.reg(j32)}'
        else:
            yield f'vmladavx.s16 {self.acc.reg(column)}, {self.a.reg(i)}, {self.b.reg(j32)}'
            self.acc.set_init(column)

        return

    def run(self):

        yield from core.asm.Snippets.license()
        yield from core.asm.Snippets.autogen_warning()
        yield from core.asm.Snippets.function_decl(self.funcname)
        yield from core.asm.Snippets.function_header(self.funcname)
        yield from core.asm.Snippets.save_gprs()

        # To be defined by concrete strategy
        yield from self.core()

        yield from core.asm.Snippets.restore_gprs()
        yield from core.asm.Snippets.function_footer()
