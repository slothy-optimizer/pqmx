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

import mve
import core

from frame import PolyU16Frame

class PolyU16Comba(PolyU16Frame):

    def __init__(self,src_a, src_b, dst, dim, funcname):
        PolyU16Frame.__init__(self, src_a, src_b, dst, dim, funcname)

    def core(self):

        subproducts = self.subproducts()

        for col in self.index_range():
            yield f'\n//\n// Column {col}\n//'

            # Generate list of subproducts to compute
            subproducts_for_column = filter(lambda x:
                                            x[0] + x[1] == col,
                                            subproducts)

            for (i,j) in subproducts_for_column:
                yield from self.mul_acc(i,j)

        # Write final result for column back into memory
        yield from self.acc.release(col)
