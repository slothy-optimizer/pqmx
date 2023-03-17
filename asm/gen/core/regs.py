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

class Register():

    def __init__(self, name):
        self.name = name
        self.age = 0
        self.allocated = False
        self.evict = None

    def age(self):
        self.age += 1

    def get_name(self):
        return self.name

    def is_allocated(self):
        return self.allocated

    def alloc(self,evict):
        self.allocated = True
        self.evict = evict
        self.age = 0

    def get_age(self):
        return self.age

    def can_be_evicted(self):
        return self.evict != None

    def free(self):
        self.allocated = False

class Reg():

    def __init__(self,base, str_name="unnamed"):

        if not isinstance(base, Allocator):
            raise Exception("Invalid register allocator passed to constructor.")

        self._str_name  = str_name
        self._name = None
        self._base = base
        self._allocated = False

    def alloc(self, reg=None, evict=None, constraint=None, move=None):

        if reg and move:
            raise Exception("Invalid use of register constructor")

        if move:
            reg = move._name
            move.free()

        name, code = self._base.alloc(reg=reg,evict=evict,constraint=constraint)
        self._name      = name
        self._allocated = True
        yield from code

    def free(self):

        if not self._allocated:
            raise Exception("Calling free on an unallocated register object.")

        self._base.free(self._name)
        self._name = None
        self._allocated = False

        return

    def name(self):

        if not self._allocated:
            raise Exception("Register not allocated")

        return self._name

class Allocator():

    def __init__(self, name, registers):
        self.registers = {}
        for x in registers:
            self.registers[x] = Register(x)
        self.name = name

    def free(self, x):
        if x not in self.registers:
            raise Exception(f"Register {x} doesn't exist!")
        if not self.registers[x].allocated:
            raise Exception(f"Register-variable {x} is already freed")

        self.registers[x].free()

    def free_regs(self):
        return len(list(filter(lambda x: not x.is_allocated(), self.registers.values())))

    def allocated(self):

        res = []
        for x in self.registers.values():

            if x.allocated == True:
                res.append(x.name)

        return res

    def alloc(self, reg=None, evict=None, constraint=None):

        eviction_code = iter([])

        if reg:
            if reg not in self.registers:
                raise Exception(f"Register {reg} doesn't exist!")
            if self.registers[reg].allocated:
                raise Exception(f"Register {reg} is already allocated")

        if not reg:

            # Try to find a fresh register
            for x in self.registers.values():
                if x.allocated:
                    continue

                if constraint != None:
                    if not constraint(x.name):
                        continue

                reg = x.name
                break

        if not reg:

            evict_candidates = list(filter(Register.can_be_evicted,
                                           self.registers.values()))
            if not evict_candidates:
                raise Exception("No register can be evicted!")

            # Basic heuristic:
            # Sort those registers that can be evicted by age
            # and evict the oldest one.
            evict_candidates.sort(reverse=True,
                                  key=Register.get_age)

            reg = evict_candidates[0].name
            if not reg:
                raise Exception("Something went wrong finding a register to evict.")

            if self.registers[reg].evict:
                eviction_code = self.registers[reg].evict()

            self.registers[reg].free()

        for x in self.registers.keys():
            if not self.registers[x].allocated:
                continue
            Register.age(self.registers[x])

        self.registers[reg].alloc(evict)
        return reg, eviction_code
