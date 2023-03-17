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
import core.markers
import core.regs

class Base(object):
    """This abstract class facilitates the loading of indexed-data into registers
       and the management of which register(s) have been allocated for which index.

       It cannot be used on its own but must be derived, with the derived class
       at least implementing the code-generating routine `load_core(idx)`
       responsible for emitting assembly instructions to load the data at index
       `idx` into the register allocated for `idx.`

       This class can be passed any register allocator satisfying the interface
       of core.regs.Allocator. In particular, at can be derived both for use with
       GPRs and vector registers.

       - load(idx) makes sure index idx is loaded into some free register,
         and returns the name of that register.
       - release(i) marks the register as no longer used for index idx."""

    def __init__(self,base,bitwidth,name):

        if not isinstance(base, core.regs.Allocator):
            raise Exception("Invalid base object")

        if not bitwidth in [8,16,32]:
            raise Exception(f"Invalid bitwidth {bitwidth}")

        self.base         = base
        self.__state      = [ None for _ in range(0,16384) ]
        self.str_name     = name
        self.multiplier   = int(bitwidth/8)
        self.bitwidth     = bitwidth

        self.__shift = int(len(self.__state) / 2)

    def _get_state(self,idx):
        return self.__state[self.__shift + idx]

    def loaded(self,idx):
        return self._get_state(idx) != None

    def reg(self,idx):
        if not self.loaded(idx):
            raise Exception(f"Index {idx} not loaded in {self.str_name}")

        return self._get_state(idx)

    def _set_state(self,idx,state):
        self.__state[self.__shift + idx] = state

    def load(self,idx,verbose=True,allow_evict=True, skip_core=False, force_reg=None,
             constraint=None, **kwargs):

        # This is a read-only buffer, so we don't need a writeback when
        # the vector register needs to be freed for another purpose.
        def evict():
            yield f'// Need to evict {self.str_name}[{idx}] from {self.reg(idx)}'
            self._set_state(idx, None)

        if self.loaded(idx):
            if verbose:
                yield f'// {self.str_name}[{idx}]: Already loaded as {self.reg(idx)}'
            return

        if allow_evict:
            evict_arg = evict
        else:
            evict_arg = None

        new_state, evicted = self.base.alloc(reg=force_reg,
                                             evict=evict_arg,
                                             constraint=constraint); yield from evicted
        self._set_state(idx,new_state)

        if not skip_core:
            # This must be defined by the deriving class
            yield f'// {self.str_name}[{idx}]: Load as {self.reg(idx)}'
            yield from self.load_core(idx, **kwargs)
        else:
            yield f'// {self.str_name}[{idx}]: Tracked in {self.reg(idx)}, but load skipped'

    def release_core(self, idx):
        # By default, don't do anything on release
        return iter([])

    def release(self,idx,move=None):
        if not self.loaded(idx):
            return

        if move and not isinstance(move, core.regs.Reg):
            raise Exception("Invalid register object")

        reg_name = self.reg(idx)

        if not move:
            yield f'// Release {self.str_name}[{idx}] from {self.reg(idx)}'
        yield from self.release_core(idx)

        self.base.free(self.reg(idx))
        self._set_state(idx, None)

        if move:
            yield f'// Release {self.str_name}[{idx}] from {reg_name}, move to {move._str_name}'
            yield from move.alloc(reg_name)

        return iter([])

class ReadWriteGPR(Base):

    def __init__(self, base, sources, bitwidth, name="unnamed"):
        """
        - base is an allocator for the GPRs.
        - sources
        - 'bitwidth is the width of read/writes in bits: 8, 16, or 32.
        - name is a name for debugging purposes used in array access
          debug statements of the form "name[i]"
        """

        self.sources = sources

        Base.__init__(self,base,bitwidth,name)

    def _find_source(self,idx):
        return core.markers.ReadWriteMarkers.search_marker_list(self.sources, idx,
                                                                max_immediate=4095)

    # Don't allow silent eviction with this class
    def load(self,idx,verbose=True, constraint=None):
        yield from Base.load(self,idx,verbose,allow_evict=False, constraint=constraint)

    def load_core(self,idx):

        load_instr = {
             8: 'ldrb',
            16: 'ldrh',
            32: 'ldr',
        }[self.bitwidth]

        reg, reg_idx = self._find_source(idx)

        yield f'{load_instr} {self.reg(idx)}, [{reg}, #{self.multiplier * reg_idx}]'

    def _write_from(self, idx, reg_name):

        # Here it doesn't matter if we've currently loaded the index ourselves.
        # Double-check, though, that the GPR we're writing from is marked allocated.

        if not reg_name in self.base.allocated():
            raise Exception(f"Trying to write from unallocated GPR {vreg_name}.")

        store_instr = {
            8: 'strb',
            16: 'strh',
            32: 'str',
        }[self.bitwidth]

        reg, reg_idx = self._find_source(idx)

        yield f'{store_instr} {reg_name}, [{reg},#({self.multiplier * reg_idx})]'

    def write_from(self, idx, reg):

        yield from self._write_from(idx, reg.name())

    def write_back(self,idx):

        if not self.loaded(idx):
            raise Exception(f"Index {idx} not loaded.")

        yield from self._write_from(idx, self.reg(idx))

# TODO: Derive this from the above base class
class GPRWriter(object):

    def __init__(self,gpr_base,dst,bitwidth,name,alloc_constraint=None,alloc_dst=True):

        if not isinstance(gpr_base, core.regs.Allocator):
            raise Exception("Invalid base object passed to GPR writer")

        if not bitwidth in [8,16,32]:
            raise Exception(f"Invalid bitwidth {bitwidth}")

        self.gprs         = gpr_base
        self.__state      = [ None  for _ in range(0,1024) ]
        self.__is_init    = [ False for _ in range(0,1024) ]
        self.str_name      = name
        self.dst          = dst
        self.multiplier   = int(bitwidth/8)
        self.bitwidth     = bitwidth
        self.constraint   = alloc_constraint

        self.__shift = int(len(self.__state) / 2 )

        if alloc_dst:
            self.gprs.alloc(dst)

    def _get_state(self,idx):
        return self.__state[self.__shift + idx]

    def loaded(self,idx):
        return self._get_state(idx) != None

    def reg(self,idx):
        if not self.loaded(idx):
            raise Exeption(f"Index {idx} not loaded")

        return self._get_state(idx)

    def _set_state(self,idx,state):
        self.__state[self.__shift + idx] = state

    def is_init(self,idx):
        return self.__is_init[self.__shift + idx]

    def set_init(self,idx):
        self.__is_init[self.__shift + idx] = True

    def load(self,idx):

        if self.loaded(idx):
            return

        entry_evict = lambda: self.__release_asm(idx)
        new_state, evict = self.gprs.alloc(None,entry_evict,self.constraint); yield from evict
        self._set_state(idx,new_state)

        if self.is_init(idx):
            # TODO: Bitwidth is neglected so far
            yield f'ldrh {self.reg(idx)}, [{self.dst},#+{self.multiplier * idx}]'

    def __release_asm(self,idx):

        yield f'// Writeback {self.str_name} for column {idx} from {self.reg(idx)}'
        yield f'strh {self.reg(idx)}, [{self.dst},#+{self.multiplier * idx}]'

        self._set_state(idx,None)
        self.set_init(idx)

    def release(self,idx):

        if not self.loaded(idx):
            return iter([])

        self.gprs.free(self.reg(idx))
        yield from self.__release_asm(idx)
