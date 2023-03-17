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
import core.regs
import core.rw

import mve
import mve.regs

class QuadU16GPRRead():

    def __init__(self,base,name,sources,only_even=False):

        if not isinstance(base, core.regs.Allocator):
            raise Exception("Invalid base object")

        self.base         = base
        self.__state      = [ None for _ in range(0,16384) ]
        self.str_name     = name
        self.multiplier   = 2
        self.bitwidth     = 16
        self.sources      = sources

        self.only_even = only_even

    def _find_source(self,idx):
        return core.markers.ReadWriteMarkers.search_marker_list(self.sources, idx,
                                                                max_immediate=4095)

    def _get_state(self,idx):
        return self.__state[idx]

    def loaded(self,idx):
        return self._get_state(idx) != None

    def reg(self,idx):
        if not self.loaded(idx):
            raise Exception(f"Index {idx} not loaded in {self.str_name}")

        return self._get_state(idx).name()

    def _set_state(self,idx,state):
        self.__state[idx] = state

    def _get_base(self,idx):
        return idx - (idx % 4)

    def load(self,idx):

        if idx % 2 == 0:
            yield from self._load_even(idx)
        else:
            yield from self._load_odd(idx)

    def _load_odd(self,idx):

        base_idx = self._get_base(idx)

        if self.loaded(idx):
            return

        if not self.loaded(base_idx):
            raise Exception(f"Load index {idx}: Must load base index {base_idx} first")

        yield f"asrl {self.reg(base_idx+0)}, {self.reg(base_idx+2)}, #16"

        self._set_state(base_idx + 1, self._get_state(base_idx + 0))
        self._set_state(base_idx + 3, self._get_state(base_idx + 2))

        self._set_state(base_idx + 0, None)
        self._set_state(base_idx + 2, None)

    def _load_even(self,idx):

        base_idx = self._get_base(idx)

        if self.loaded(idx):
            yield f'// {self.str_name}[{idx}]: Already loaded as {self.reg(idx)}'
            return

        reg0 = core.regs.Reg(self.base, str_name=f"a[{base_idx + 0}]")
        reg1 = core.regs.Reg(self.base, str_name=f"a[{base_idx + 2}]")

        def is_even_gpr(reg):
            return reg in [ f"r{2*i+0}" for i in range(0,8) ]
        def is_odd_gpr(reg):
            return reg in [ f"r{2*i+1}" for i in range(0,8) ]

        # LDRD works with any pair of GPRs, but we want to use ASRL
        # later, and that requires a pair of even and odd numbered GPRs.
        if not self.only_even:
            yield from reg0.alloc(constraint=is_even_gpr)
            yield from reg1.alloc(constraint=is_odd_gpr)
        else:
            yield from reg0.alloc()
            yield from reg1.alloc()

        self._set_state(base_idx + 0, reg0)
        self._set_state(base_idx + 2, reg1)

        reg, reg_idx = self._find_source(base_idx)

        yield f"ldrd {self.reg(base_idx+0)}, {self.reg(base_idx+2)}, "\
              f"[{reg}, #{self.multiplier * reg_idx}]"

    def release(self,idx):

        if not self.loaded(idx):
            return iter([])

        self._get_state(idx).free()
        self._set_state(idx, None)

        return iter([])

class ReadWriteVector(core.rw.Base):
    """
    This class manages the loading of consecutive chunks of data from an
    input buffer into MVE vector registers, similar to the `Forward` class
    above. The difference is that this class accepts a series of base
    address registers + bounds of the area they cover, and a load will
    automatically pick a suitable base register for the target index.

    This is especially useful in MVE where immediate offsets are limited to the
    index range of -127, ..., 127; that is, for byte-loads the immediate offset
    ranges between -127 and 127 Bytes, for half-word loads it ranges between
    -254 and 254 Bytes, and for word loads it ranges from -508 to 508 Bytes.
    """

    def __init__(self, base, sources, bitwidth, name="unnamed"):
        """
        - base is an instance of mve_base managing the vector regs and GPRs.
        - sources
        - 'bitwidth is the lanewidth in bits: 8, 16, or 32.
        - name is a name for debugging purposes used in array access
          debug statements of the form "name[i]"
        """

        self.sources = sources
        self.store_sources = None

        core.rw.Base.__init__(self,base.vregs,bitwidth,name)

    def _find_source(self,idx):
        return core.markers.ReadWriteMarkers.search_marker_list(self.sources, idx)

    def _find_store_source(self,idx):
        if self.store_sources != None:
            src = self.store_sources
        else:
            src = self.sources
        return core.markers.ReadWriteMarkers.search_marker_list(src, idx)

    def load(self,idx,verbose=True,is_uninitialized=False,init_as_zero=False,
             force_reg=None,constraint=None, skip_load=False, **kwargs):

        if init_as_zero:
            is_uninitialized = True

        if skip_load == True:
            is_uninitialized = True

        yield from core.rw.Base.load(self,idx,verbose,allow_evict=False,
                                     skip_core=is_uninitialized,force_reg=force_reg,
                                     constraint=constraint, **kwargs)

        if is_uninitialized and init_as_zero:
            yield f"vmov.u{self.bitwidth} {self.reg(idx)}, #0"

    def load_core(self,idx,increment=False):

        load_instr = {
             8: 'vldrb.u8',
            16: 'vldrh.u16',
            32: 'vldrw.u32',
        }[self.bitwidth]

        reg, reg_idx = self._find_source(idx)

        if not increment:
            yield f'{load_instr} {self.reg(idx)}, [{reg}, #({self.multiplier} * {reg_idx})]'
        else:
            # Update register list
            core.markers.ReadWriteMarkers.shift_register_in_marker_list(
                self.sources, reg, reg_idx)
            if self.store_sources != None:
                core.markers.ReadWriteMarkers.shift_register_in_marker_list(
                    self.store_sources, reg, reg_idx)
            yield f'{load_instr} {self.reg(idx)}, [{reg}, #({self.multiplier} * {reg_idx})]!'

    def _write_from_core(self, idx, vreg_name, post_increment=None, post_increment_callback=None,
                         increment=False):

        # Here it doesn't matter if we've currently loaded the index ourselves.
        # Double-check, though, that the vector register we're writing from
        # is marked allocated.

        if not vreg_name in self.base.allocated():
            raise Exception(f"Trying to write from unallocated vector register {vreg_name}.")

        store_instr = {
            8: 'vstrb.u8',
            16: 'vstrh.u16',
            32: 'vstrw.u32',
        }[self.bitwidth]

        reg, reg_idx = self._find_store_source(idx)

        if post_increment:
            if reg_idx != 0:
                raise Exception(f"Can use post-increment only if access offset is 0, but it's {reg_idx}")
            yield f'{store_instr} {vreg_name}, [{reg}], #{post_increment}'

            if post_increment_callback != None:
                post_increment_callback(reg, post_increment)
        elif increment:
            yield f'{store_instr} {vreg_name}, [{reg},#({self.multiplier * reg_idx})]!'
            core.markers.ReadWriteMarkers.shift_register_in_marker_list(
                self.sources, reg, reg_idx)
            if self.store_sources != None:
                core.markers.ReadWriteMarkers.shift_register_in_marker_list(
                    self.store_sources, reg, reg_idx)
        else:
            yield f'{store_instr} {vreg_name}, [{reg},#({self.multiplier * reg_idx})]'

    def write_from(self, idx, vreg, **kwargs):
        if isinstance(vreg,ReadWriteVector):
            vreg = vreg.reg(idx)
        if isinstance(vreg,core.regs.Reg):
            vreg = vreg.name()
        if not isinstance(vreg,str):
            raise Exception("Invalid register")
        yield from self._write_from_core(idx, vreg, **kwargs)

    def write_back(self,idx,**kwargs):
        if not self.loaded(idx):
            raise Exception(f"Index {idx} not loaded.")
        yield from self.write_from(idx, self.reg(idx),**kwargs)

class Stride4VectorLoad(core.rw.Base):

    def __init__(self, base, bitwidth, stride, base_gpr, base_vreg, name="unnamed"):
        """
        - base is an instance of mve_base managing the vector regs and GPRs.
        - 'bitwidth is the lanewidth in bits: 8, 16, or 32.
        - name is a name for debugging purposes used in array access
          debug statements of the form "name[i]"
        """

        self.stride = stride
        self.base_reg = base_gpr

        base_vreg_idx = int(base_vreg[1])

        self.vreg = f"Q{base_vreg_idx + stride}"
        self.vreg_list = f"{{Q{base_vreg_idx+0}, "\
                           f"Q{base_vreg_idx+1}, "\
                           f"Q{base_vreg_idx+2}, "\
                           f"Q{base_vreg_idx+3}}}"

        core.rw.Base.__init__(self,base.vregs,bitwidth,name)

    def load(self,idx,verbose=True,is_uninitialized=False,init_as_zero=False, **kwargs):

        yield from core.rw.Base.load(self,idx,verbose,allow_evict=False,
                                     skip_core=is_uninitialized,force_reg=self.vreg,
                                     **kwargs)

        if is_uninitialized and init_as_zero:
            yield f"vmov.u{self.bitwidth} {self.reg(idx)}, #0"

    def load_core(self,idx, post_increment=False):

        load_instr = {
             8: f'vld4{self.stride}.u8',
            16: f'vld4{self.stride}.u16',
            32: f'vld4{self.stride}.u32',
        }[self.bitwidth]

        if not post_increment:
            yield f'{load_instr} {self.vreg_list}, [{self.base_reg}]'
        else:
            yield f'{load_instr} {self.vreg_list}, [{self.base_reg}]!'

class Stride2VectorLoad(core.rw.Base):

    def __init__(self, base, bitwidth, stride, base_gpr, base_vreg, name="unnamed"):
        """
        - base is an instance of mve_base managing the vector regs and GPRs.
        - 'bitwidth is the lanewidth in bits: 8, 16, or 32.
        - name is a name for debugging purposes used in array access
          debug statements of the form "name[i]"
        """

        self.stride = stride
        self.base_reg = base_gpr

        base_vreg_idx = int(base_vreg[1])

        self.vreg = f"Q{base_vreg_idx + stride}"
        self.vreg_list = f"{{Q{base_vreg_idx+0}, "\
                           f"Q{base_vreg_idx+1}}}"

        core.rw.Base.__init__(self,base.vregs,bitwidth,name)

    def load(self,idx,verbose=True,is_uninitialized=False,init_as_zero=False):

        yield from core.rw.Base.load(self,idx,verbose,allow_evict=False,
                                     skip_core=is_uninitialized,force_reg=self.vreg)

        if is_uninitialized and init_as_zero:
            yield f"vmov.u{self.bitwidth} {self.reg(idx)}, #0"

    def load_core(self,idx):

        load_instr = {
             8: f'vld2{self.stride}.u8',
            16: f'vld2{self.stride}.u16',
            32: f'vld2{self.stride}.u32',
        }[self.bitwidth]

        yield f'{load_instr} {self.vreg_list}, [{self.base_reg}]'

class Forward(core.rw.Base):
    """
    This class manages the loading of consecutive chunks of data from
    an input buffer into MVE vector registers.

    Let's call [A[i],A[i+1],...,A[i + no_lane - 1]] the i-th 'chunk' of input A,
    which is viewed as an array of objects of size equal to a specified bitwidth;
    for example, if the bitwidth is 16 and the source address is X, the byte
    addresses for the i-th chunk are [X + 2*i, X + 2*(i+1), .., X + 2*(i+no_lane-1)].

    - load(i) loads the i-th chunk of A in a vector register via
      vldr{b,h,w} and returns the name of that vector register.

    - relase(i) deallocates the register currently holding chunk i, if any.

    The i-th chunk can optionally be offset by a number of entries by some fixed amount.
    For example, the offset could be chosen so that load(i) loads

      [A[i - ( no_lanes - 1 )], A[i - (no_lanes - 1) + 1], .., A[i]]

    The generated assembly is returned line by line via generators. For example,
    to print each line emitted by a load(i), perform:

        for asm_line in read_buffer.load(i):
            print(asm_line)

    Or, if you use this as part of a higher level code generation function
    using generators, too, simply call

        yield from read_buffer.{load,release}(i)

    """

    def __init__(self,base,src,bitwidth,name="unnamed",offset=0, alloc_src=True):
        """
        - base is an instance of mve_base managing the vector regs and GPRs.
        - src is the name of the GPR holding the address of the first byte in
          the buffer to be read.
        - 'bitwidth is the lanewidth in bits: 8, 16, or 32.
        - name is a name for debugging purposes used in array access
          debug statements of the form "name[i]"
        """

        self.offset = offset
        self.src = src

        core.rw.Base.__init__(self,base.vregs,bitwidth,name)

        # TODO: This could evict something from the GPR file and thus generate
        #       some assembly. We'd want `yield from` here, but this doesn't
        #       work in __init__().
        if alloc_src:
            base.gprs.alloc(src)

    def __offset(self,idx):
        return self.multiplier * ( self.offset + idx )

    def load_core(self,idx):

        load_instr = {
            8: 'vldrb.u8',   # TODO - Check
            16: 'vldrh.u16',
            32: 'vldrw.u32', # TODO - Check
        }[self.bitwidth]

        yield f'{load_instr} {self.reg(idx)}, [{self.src}, #{self.__offset(idx)}]'

class Backwards32(core.rw.Base):
    """
    This class manages the loading of reversed consecutive 32-bit chunks of data
    from an input buffer into MVE vector registers.

    Let's call [A[i],A[i-1],A[i-2],A[i-3]] the i-th 'chunk' of input A,
    which is viewed as an array of 32-bit objects. If X is the address of
    the source buffer, the byte addresses for the entries of the i-th chunk
    are thus [X+4*i, X + 4*i - 4, X + 4*i - 8, X + 4*i - 12].

    - load(i) loads the i-th chunk of A in a vector register via
      vldr{b,h,w} and returns the name of that vector register.

    - relase(i) deallocates the register currently holding chunk i, if any.

    The i-th chunk can optionally be offset by some fixed amount. For example,
    the offset could be chosen so that load(i) loads

        [A[i+3],A[i+2],A[i+1],A[i]]

    The generated assembly is returned line by line via generators. For example,
    to print each line emitted by a load(i), perform:

        for asm_line in read_buffer.load(i):
            print(asm_line)

    Or, if you use this as part of a higher level code generation function
    using generators, too, simply call

        yield from read_buffer.{load,release}(i)

    """

    def __init__(self,base,src,name="unnamed",offset=0,alloc_src=True):
        core.rw.Base.__init__(self,base.vregs,32,name)
        self.offset = offset
        self.src = src
        self.reverse_base = None

        # TODO: This could evict something from the GPR file and thus generate
        #       some assembly. We'd want `yield from` here, but this doesn't
        #       work in __init__().
        if alloc_src:
            base.gprs.alloc(src)

    def __setup_reverse_ptr(self):
        self.reverse_base, evict = self.base.alloc(); yield from evict
        yield f'// {self.reverse_base} <- [{self.str_name}, {self.str_name}-4, {self.str_name}-8, {self.str_name}-12]'
        yield f'vddup.u32 {self.reverse_base},{self.src},#4'
        yield from core.asm.Snippets.no_ops()

    def __offset(self,idx):
        return self.multiplier * ( self.offset + idx )

    def load_core(self,idx):

        if not self.reverse_base:
            yield from self.__setup_reverse_ptr()

        yield f'vldrw.u32 {self.reg(idx)}, [{self.reverse_base}, #{self.__offset(idx)}]'

    def chunk_as_str(self,idx):
        base = (int)( self.__offset(idx) / 2 ) + 1
        str_arr = [ '{}[{:>3}]'.format(self.str_name,base-i) for i in range(0,8) ]
        return "[" + ','.join(str_arr) + "]"
