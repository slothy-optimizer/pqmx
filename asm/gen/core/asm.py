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

class Snippets():

    def license():
        license = """
///
/// Copyright (c) 2021 Arm Limited
/// SPDX-License-Identifier: MIT
///
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
///
/// The above copyright notice and this permission notice shall be included in all
/// copies or substantial portions of the Software.
///
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
/// SOFTWARE.
///

"""
        yield license

    def autogen_warning():
        warning = """
///
/// This assembly code has been auto-generated.
/// Don't modify it directly.
///
"""
        yield warning

    def function_decl(func_name):
        yield f".syntax unified"
        yield f'.type {func_name}, %function'
        yield f'.global {func_name}'

    def function_header(func_name):
        yield f"{func_name}:"

    def function_footer():
        yield 'bx lr'

    def save_gprs():
        yield '// Save GPRs'
        yield 'push {r4-r11,lr}'

    def restore_gprs():
        yield '// Restore GPRs'
        yield 'pop {r4-r11,lr}'

    def save_vregs():
        yield '// Save MVE vector registers'
        yield 'vpush {d8-d15}'

    def restore_vregs():
        yield '// Restore MVE vector registers'
        yield 'vpop {d8-d15}'

    def alloc_stack(size):
        yield f"// Allocate {size} Bytes of stack"
        yield f"sub sp, sp, #{size}"

    def free_stack(size):
        # TODO: Zeroization?
        yield f"// Free {size} Bytes of stack"
        yield f"add sp, sp, #{size}"

    def call(name):
        yield f"bl {name}"

    # No-ops between vector instructions can be useful to understand
    # the functional behaviour of code one intruction a time in a
    # pipelined model where completion of an instruction can take
    # multiple cycles.
    def no_ops():
        return iter([])
        # return iter([ 'nop' for _ in range(0,5)])
