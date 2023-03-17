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

class Allocator(object):

    def __init__(self):
        # Register management for vector registers and GPRs.
        #
        # This tracks which registers are currently in use
        # and offers `alloc()` and `free()` calls for requesting
        # a new register and marking it no longer used, respectively.
        #
        # To ease initial the development of not yet fully optimized
        # implementations, the Register class also implements eviction:
        # If an `alloc()` request finds that no register is available,
        # the Register class will evict the oldest one (this is where
        # things are very likely not optimal). In order to not silently
        # lose the content of registers evicted this way, only those
        # registers can be silently evicted which have been passed
        # an eviction callback in `alloc()`, which can dump some cleanup
        # assembly. For example, evicting an accumulator register would
        # write back the temporary result it stores to memory.
        # Registers that must be present all the time can be prevented
        # from eviction by not passing an eviction callback. This is
        # also the way to ensure that an attempt to manually manage
        # the register allocation/freeing works.
        #
        # In a way, this is a very naive compiler, and it's expected
        # that optimal assembly will require full control over the
        # alloc/free process. However, as mentioned above, the
        # automatic eviction allows easy prototyping of multiplication
        # strategies and exploration of their impact on the register file.

        self.vregs = core.regs.Allocator(name="MVE",
                          registers=[f'Q{i}' for i in range(0,8)])

        self.gprs  = core.regs.Allocator(name="GPR",
                          registers=reversed([f'r{i}' for i in range(0,13)] + ['r14']))

    def callee_preserved(reg):
        return reg in [ f'r{i}' for i in range(4,12) ]
