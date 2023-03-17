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

import math

class Butterfly():

    def __init__(self, *,
                 layer,
                 size,                # Stride between elements
                 indices,             # Array of indices involved in the butterfly
                 load_roots,          # Whether new twiddles need to be loaded
                                      # or those from the previous butterfly can
                                      # be used.
                 use_extra_root,      # TODO: Document
                 radix,
                 roots = None
                 ):
        self.layer          = layer
        self.size           = size
        self.indices        = indices
        self.load_roots     = load_roots
        self.use_extra_root = use_extra_root
        self.radix          = radix
        self.roots          = roots

    def __repr__(self):
        m = list(map(lambda x: x % 256, self.indices))
        return f"[{self.layer}]: {self.indices} ({m}) (load: {self.load_roots}, extra: {self.use_extra_root}"

class NTT():

    def __init__(self,*,
                 src,
                 size,
                 modulus,
                 root,
                 layers,
                 bitsize     = 32,
                 base        = None,
                 rounding    = True,
                 inverse     = False,
                 precompute  = False,
                 skip_first  = False,
                 roots_only  = False,
                 increment   = False,
                 bitreversed = False,
                 rev4        = False,
                 good        = False,
                 external    = False,
                 half_input  = False,
                 barrett_mul = False,
                 basemul_use_montgomery = True,
                 incomplete_root = False,
                 negacyclic  = True):
        """Helper class for the generation of MVE assembly for complete and incomplete
           Number Theoretic Transform (NTT).

           TODO: Allow specification of the bitwidth

           @param src          The register holding the base address of the buffer on which
                               the NTT should be performed.
           @param negacyclic   Whether to perform cyclic or negacyclic NTT.
           @param size:        The dimension of the NTT
           @param modulus:     The <32-bit prime modulus defining the base field for the NTT.
                               TODO: Specify precise bounds which ensure that the rounding
                                     and doubling Montgomery multiplication works.
           @param root:        The modular root of unity to use for the NTT. This must be
                               a root of unity of order 2 ** (2*size).
           @param base:        The register Allocator to use. This must be None or an instance
                               of gen.core.regs.Allocator. If it is None, a new Allocator will
                               be used, that is, it will be assumed that all GPRs and vector
                               registers are available.
           @param rounding:    Use rounding strategy for Montgomery arithmetic.
           @param layers:      The number of NTT layers to perform.
           @param inverse:     False for forward-NTT, True for inverse-NTT
           @param skip_first:  Only valid for cyclic NTTs. In this case, the first layer
                               (which is just an add-sub without scaling) is skipped and
                               assumed to have happened before.
           @param bitreverse:  Only for CT NTTs -- indicates if the input is bit-reversed,
                               in which case the output will be in normal order.
        """

        self._src = src

        self.scale_0 = True
        self.negacyclic = negacyclic
        self.roots_only = roots_only

        self.print_bounds = False
        self.bitsize = bitsize

        self.basemul_use_montgomery = basemul_use_montgomery

        self.use_barrett_multiplication = barrett_mul

        self.simplify_initial_radix3 = True

        # TODO: Document
        self.double_last_scalings = True

        self._rounding = rounding
        self._modulus = modulus
        self._root = root
        self._size = size

        b = self.montgomery_bound(2**28.786 * self._modulus,rounding=False)
        self.init_bound = self.montgomery_bound(4*b**2)
        # self.init_bound = 2**22
        self.bounds = [ self.init_bound for _ in range(0,self._size) ]

        self._use_goods_permutation = good
        self.external = external
        self.half_input = half_input

        self._bitreversed = bitreversed
        self._rev4 = rev4

        self._increment_base = increment
        self._skip_first = skip_first

        self.inverse = inverse
        self.inverse_scaling = 0 # 32

        if not self.inverse:
            self.roots_array_name = "roots"
        else:
            self.roots_array_name = "roots_inv"

        if not base:
            self._asm = mve.regs.Allocator()
        else:
            self._asm = base

        #
        # Parameter sanity checks
        #

        # Need an odd prime modulus
        if self._modulus % 2 == 0:
            raise Exception("Modulus must be odd")
        self._inv_mod = pow(self._modulus,-1,2**self.bitsize)

        # Check that we've indeed been given a root of unity of the correct order
        if self.negacyclic:
            self.root_order = 2*size
        else:
            self.root_order = size

        self.incomplete_root = incomplete_root
        if incomplete_root:
            self.log2size = int(math.log(size,2))
            if layers == None:
                layers = self.log2size
            self.incompleteness_factor = 2**(self.log2size - layers)
            real_root_order = self.root_order // self.incompleteness_factor
        else:
            real_root_order = self.root_order

        if ( pow(root, real_root_order,      modulus) != 1 or
             pow(root, real_root_order // 2, modulus) == 1 ):
            raise Exception(f"{root} is not a primitive {self.root_order}-th root of unity modulo {modulus}")

        # Size must be 2^k or 3*2^k

        if size % 3 != 0:
            self.log2size = int(math.log(size,2))
            if size != pow(2,self.log2size):
                raise Exception(f"Size {size} not a power of 2")

            if layers == None:
                self.iterations = self.log2size
            else:
                self.iterations = layers

            if self.negacyclic:
                self.radixes = [ 2 for _ in range(0,self.log2size)   ]
            else:
                self.radixes = [ 2 for _ in range(0,self.log2size - 1) ]

            self.layers  = [ 2 for _ in range(0,self.iterations) ]
            self._size_d3 = None
        else:

            self._size_d3 = size // 3
            self.log2size = int(math.log(self._size_d3,2))
            if self._size_d3 != pow(2,self.log2size):
                raise Exception(f"Size not of form 2^k of 3*2^k")

            l = range(0,self._size,4)
            l = list(map(lambda i: (i, self.goods_permutation_full_to_split(i)),l))

            l = range(0,self._size//4)
            l = list(map(self.goods_permutation_bitrev,l))

            if layers == None:
                self.iterations = self.log2size + 1
            else:
                self.iterations = layers

            self.radixes = [3] + [ 2 for _ in range(0,self.log2size - 1)]
            self.layers  = [3] + [ 2 for _ in range(0,self.iterations - 1) ]

        self.incomplete = ( self.iterations < self.log2size )

        if self.incomplete:
            self.incomplete_size = self._size // 4
        else:
            self.incomplete_size = self._size

        self.precompute = precompute

        if self.precompute or self.external:
            if not self.incomplete or self.inverse:
                raise Exception("Invalid configuration")
            self._dst = "r1"

        self.root_block_load_order  = None

    def get_bounds(self, idxs):
        return [ self.bounds[idx] for idx in idxs ]

    def set_bounds(self, idxs, bds):
        for idx,b in zip(idxs,bds):
            self.bounds[idx] = b

    def montgomery_bound(self, z, rounding=False):
        if not rounding:
            return self._modulus / 2 + z / 2**self.bitsize
        else:
            return self._modulus + z / 2**(self.bitsize - 1)

    def bound_prod(self, b, roots):
       def round_to_even(x):
           rx = round(x)
           if rx % 2 == 0:
               return rx
           if rx <= x:
               return rx + 1
           return rx - 1
       def mod_even(x,y):
           return x - y*round_to_even(x/y)

       return self.montgomery_bound(b*mod_even(roots[0]*2**(self.bitsize),self._modulus))

    def get_root_pow(self, exp):

        if self.incomplete_root:
            if not exp % self.incompleteness_factor == 0:
                raise Exception("Invalid exponent")
            exp = exp // self.incompleteness_factor

        return pow(self._root,exp,self._modulus)

    def goods_permutation_bitrev(self,idx):
        i,j = self.goods_permutation_full_to_split(idx)
        l2s = int(math.log(self._size_d3//4,2))
        j = self._bitrev_list(j,[2 for _ in range(0,l2s)])
        return self.goods_permutation_split_to_full(p3=i,p2=j)

    def goods_permutation_split_to_full(self,*,p3,p2):
        for idx in range(0,self._size // 4):
            i,j = self.goods_permutation_full_to_split(idx)
            if (p3,p2) == (i,j):
                return idx
        raise Exception(f"Failed to invert Good's permutation for {p3,p2}...")

    def goods_permutation_full_to_split(self,idx):
        return idx % 3, idx % (self._size_d3 // 4)

    def prepare_constants(self):
        """Allocate and setup GPRs for static constants
          - Modulus
          - Inverse of modulus modulo 2^bitsize
        """

        if not self.use_barrett_multiplication:
            self.q = core.regs.Reg(self._asm.gprs, str_name="modulus")
            yield from self.q.alloc()
            yield f".equ modulus, {self._modulus}"
            yield f"movw {self.q.name()}, #:lower16:modulus"
            yield f"movt {self.q.name()}, #:upper16:modulus"
        else:
            self.q = core.regs.Reg(self._asm.gprs, str_name="modulus")
            yield from self.q.alloc()
            yield f".equ modulus, -{self._modulus}"
            yield f"movw {self.q.name()}, #:lower16:modulus"
            yield f"movt {self.q.name()}, #:upper16:modulus"

    def free_constants(self):
        """Free the GPRs holding static constants which have been allocated
           by prepare_constants()
        """
        self.q.free()

    def mulmod(self,*args,**kwargs):
        if self.use_barrett_multiplication:
            yield from self.barrett_mul(*args,**kwargs)
        else:
            yield from self.montgomery_mul(*args,**kwargs)

    def barrett_mul(self,src,root,root_twisted,dst,scratch=None):
        if scratch == None:
            scratch = src
        yield f"vmul.u32 {dst}, {src}, {root}"
        yield f"vqrdmulh.s32 {scratch}, {src}, {root_twisted}"
        yield f"vmla.s32 {dst}, {scratch}, {self.q.name()}"

    def montgomery_mul(self,src,root,root_twisted,dst,scratch=None):
        if self._rounding:
            if scratch == None:
                scratch = src
            yield f"vqrdmulh.s32 {dst}, {src}, {root}"
            yield f"vmul.u32 {scratch}, {src}, {root_twisted}"
            yield f"vqrdmlah.s32 {dst}, {scratch}, {self.q.name()}"
        else:
            yield f"vqdmulh.s32 {dst}, {src}, {root}"
            yield f"vmul.u32 {src}, {src}, {root_twisted}"
            yield f"vqdmulh.s32 {src}, {src}, {self.q.name()}"
            yield f"vsub.s32 {dst}, {dst}, {src}"

    def montgomery_safe_overwrite_root_compute_twisted(self,src,root_twisted,tmp,step=0):
        if self._rounding:
            yield f"vmul.u32 {root_twisted.name()}, {tmp.name()}, {self.q_inv_u32.name()}"
            yield f"vqrdmulh.s32 {tmp.name()}, {src.name()}, {tmp.name()}"
            yield f"vmul.u32 {src.name()}, {src.name()}, {root_twisted.name()}"
            yield f"vqrdmlah.s32 {tmp.name()}, {src.name()}, {self.q.name()}"
        else:
            raise Exception("Unsupported")

    def montgomery_safe(self,src,root,root_twisted,tmp,step=0):
        if self._rounding:
            yield f"vqrdmulh.s32 {tmp.name()}, {src.name()}, {root.name()}"
            yield f"vmul.u32 {src.name()}, {src.name()}, {root_twisted.name()}"
            yield f"vqrdmlah.s32 {tmp.name()}, {src.name()}, {self.q.name()}"
        else:
            raise Exception("Unsupported")

    def _add_sub(self, a, b, c):
        """Emits code to perform the following operations:
           b <- a - c
           a <- a + c
        """
        yield f"vsub.s32 {b}, {a}, {c}"
        yield f"vadd.s32 {a}, {a}, {c}"

    def _add_sub_inv(self, a, b, c):
        """Emits code to perform the following operations:
           c <- a - b
           c <- a + b
        """
        yield f"vsub.s32 {c}, {a}, {b}"
        yield f"vadd.s32 {a}, {a}, {b}"

    def _add_sub_inv_ext(self, a, b, c, d):
        """Emits code to perform the following operations:
           c <- a - b
           d <- a + b
        """
        yield f"vsub.s32 {c}, {a}, {b}"
        yield f"vadd.s32 {d}, {a}, {b}"

    def _twist_root(self,root):
        root_twisted = ( pow(2,self.bitsize) - root * self._inv_mod ) % pow(2,self.bitsize)
        return root_twisted

    def _bitrev_list(self,num,radix_list):
        result = 0
        for r in radix_list:
            result = r * result + (num % r)
            num = num // r
        return result

    def _prepare_root(self,root,layer=None,force_montgomery=False,force_barrett=False):

        if force_barrett:
            use_barrett = True
        elif force_montgomery:
            use_barrett = False
        else:
            use_barrett = self.use_barrett_multiplication

        if not use_barrett:

            # Normal Montgomery multiplication computes a*b*2^{-32}
            # Rounding Montgomery multiplication computes a*b*2^{-31}
            # Compensate for that by merging 2^n into the twiddle.
            if not self._rounding:
                root = (root * pow(2,self.bitsize)) % self._modulus
            else:
                root = (root * pow(2,self.bitsize-1)) % self._modulus

            # TODO: Document
            if self.inverse and self.double_last_scalings and layer == 0:
                root = (2*root) % self._modulus

            # The rounding trick for Montgomery multiplication only works if
            # one factor is odd. Enforce this at code-generation time by
            # shifting even roots by the (odd) modulus, yielding (non-canonical)
            # odd representatives for all roots of unity.
            if self._rounding and root % 2 == 0:
                root += self._modulus

            root_twisted = self._twist_root(root)
            return root, root_twisted

        else:

            def round_to_even(x):
                rx = round(x)
                if rx % 2 == 0:
                    return rx
                if rx <= x:
                    return rx + 1
                return rx - 1

            quot = (root * 2**self.bitsize) / self._modulus
            root_twisted = round_to_even(quot) // 2
            return root, root_twisted

    def _root_of_unity_for_block(self,layer,block,log=None):
        """Compute the root of unity to use for a given butterfly operation,
           identified by NTT layer and index within the layer.

           TODO: Say more about this...
        """

        actual_layer = layer

        ## HACK
        if self._use_goods_permutation:
            block = block % pow(2,layer-1)

        if self.negacyclic:
            block += pow(2,layer)
            actual_layer += 1

        radixes_so_far    = self.radixes[0:actual_layer].copy()
        radixes_remaining = self.radixes[actual_layer:]

        radixes_so_far.reverse()

        size_remaining = 1
        for r in radixes_remaining:
            size_remaining *= r

        log = size_remaining * self._bitrev_list(block, radixes_so_far)

        # Another hack: We shouldn't use z^3 for Good's trick for deg-768,
        # but z^513, because 513==0 mod 3, and ==1 mod 256.
        if self._use_goods_permutation:
            assert log % 3 == 0
            base = 3
            while base % self._size_d3 != 1:
                base += 3
            log = (base*(log//3)) % self.root_order

        # For the inverse NTT, we need the inverse twiddle factors
        if self.inverse or self._bitreversed:
            log = (self.root_order - log) % self.root_order

        root = self.get_root_pow(log)

        root, root_twisted = self._prepare_root(root,layer)

        return log, root, root_twisted

    def _third_root_of_unity(self,mult=1):

        base = self._size_d3
        if self._use_goods_permutation:
            # We need to find an exponent e such that e == 0 mod n/3
            # and e == 1 mod 3.
            while base % 3 != 1:
                base += self._size_d3

        log = (base * mult) % self.root_order
        if self.inverse or self._bitreversed:
            log = self.root_order - log
        root = self.get_root_pow(log)
        root, root_twisted = self._prepare_root(root)
        return log, root, root_twisted

    def _iter_blocks_for_layer(self, cur_iter, merged):

        cur = self.layers[cur_iter:cur_iter+merged]

        num_blocks = 1
        for r in self.layers[0:cur_iter]:
            num_blocks *= r

        cur_size = 1
        for r in self.layers[cur_iter:cur_iter+merged]:
            cur_size *= r

        block_size = self._size // num_blocks
        butterfly_size = block_size // cur_size

        if butterfly_size == 1:
            stride = 4
        else:
            stride = 1
        for cur_block in range(0, num_blocks, stride):
            block_start = cur_block * block_size
            block_end = block_start + block_size
            yield cur, cur_iter, cur_block, block_size, block_start, block_end, butterfly_size

    def _iter_blocks(self):

        if self._skip_first and self.iterations % 2 == 1:
            start_layer = 1
        else:
            start_layer = 0

        if self._size_d3 == None:

            merge_layers = 2
            if (self.iterations - start_layer) % merge_layers == 0:
                iters = list(range(start_layer, self.iterations, merge_layers))
                iters = list(map(lambda x: (x,merge_layers), iters))
            else:
                if (self.iterations - start_layer) % merge_layers != 1:
                    raise Exception("Bad configuration -- should not happen")
                iters = list(range(start_layer + 1, self.iterations, merge_layers))
                iters = [(0,1)] + list(map(lambda x: (x,merge_layers), iters))
        else:

            merge_layers = 2


            if (self.iterations - 1 - start_layer) % merge_layers == 0:
                iters = list(range(start_layer + 1, self.iterations, merge_layers))
                iters = [(0,1)] + list(map(lambda x: (x,merge_layers), iters))
            else:
                iters = list(range(start_layer + 1, self.iterations - 1, merge_layers))
                iters = [(0,1)] + list(map(lambda x: (x,merge_layers), iters))
                iters.append((self.iterations - 1,1))

        if self.inverse:
            iters.reverse()
        for cur_iter, merged in iters:
            blocks = list(self._iter_blocks_for_layer(cur_iter, merged))
            # We perform radix-3 butterflies first and reorder later radix-2
            # butterflies to avoid unnecessary twiddle reloads.
            if self._use_goods_permutation and cur_iter > 0:
                l = len(blocks)
                l3 = l//3
                b = blocks.copy()
                blocks = list([val for triple in zip(b[:l3], b[l3:2*l3], b[2*l3::]) for val in triple])
            yield from blocks

    def roots_of_unity_initial_layers(self, root_asm, root_twisted_asm):

        # Emit third root of unity and its twist
        if self._size_d3 != None:
            root_log, root, root_twisted = \
                self._third_root_of_unity(mult=1)

            root_str         = "{:10d}".format(root)
            root_twisted_str = "{:10d}".format(root_twisted)
            root_log_str     = "{:3d}".format(root_log)
            r_no_twist = self.get_root_pow(root_log)

            root_asm.append(f".word {root_str}")
            root_twisted_asm.append(f".word {root_twisted_str}")

            root_log, root, root_twisted = \
                self._third_root_of_unity(mult=2)

            root_str         = "{:10d}".format(root)
            root_twisted_str = "{:10d}".format(root_twisted)
            root_log_str     = "{:3d}".format(root_log)
            r_no_twist = self.get_root_pow(root_log)

            root_asm.append(f".word {root_str}")
            root_twisted_asm.append(f".word {root_twisted_str}")

        for radix, cur_iter, cur_block, block_size, block_start, block_end, butterfly_size in self._iter_blocks():

            if self._use_goods_permutation and block_start >= self._size_d3:
                continue
            if butterfly_size < 4:
                continue

            if radix == [2,2]:
                # Compute the roots of unity that we need at this stage
                fst_layer = cur_iter + 0
                snd_layer = cur_iter + 1

                root0_log, root0, root0_twisted = \
                    self._root_of_unity_for_block(fst_layer, cur_block)
                root1_log, root1, root1_twisted = \
                    self._root_of_unity_for_block(snd_layer, 2*cur_block+0)
                root2_log, root2, root2_twisted = \
                    self._root_of_unity_for_block(snd_layer, 2*cur_block+1)

                def print_roots(r0,r1,r2,
                                r0_twisted,r1_twisted,r2_twisted,
                                r3=None, r3_twisted=None):

                    root0_str = "{:10d}".format(r0)
                    root1_str = "{:10d}".format(r1)
                    root2_str = "{:10d}".format(r2)
                    root0_twisted_str = "{:10d}".format(r0_twisted)
                    root1_twisted_str = "{:10d}".format(r1_twisted)
                    root2_twisted_str = "{:10d}".format(r2_twisted)
                    root_asm.append(f".word {root0_str}")
                    root_asm.append(f".word {root1_str}")
                    root_asm.append(f".word {root2_str}")
                    root_twisted_asm.append(f".word {root0_twisted_str}")
                    root_twisted_asm.append(f".word {root1_twisted_str}")
                    root_twisted_asm.append(f".word {root2_twisted_str}")

                    if r3 != None:
                        root3_str = "{:10d}".format(r3)
                        root3_twisted_str = "{:10d}".format(r3_twisted)
                        root_asm.append(f".word {root3_str}")
                        root_twisted_asm.append(f".word {root3_twisted_str}")

                def scale_root(root):

                    exp = -self.iterations
                    if self.inverse:
                        exp += self.inverse_scaling

                    if exp < 0:
                        one_half = ( self._modulus + 1 ) // 2
                        base = one_half
                        exp = -exp
                    else:
                        base = 2

                    root = root * pow(base, exp, self._modulus)
                    root = root % self._modulus
                    if self._rounding and root % 2 == 0:
                        root += self._modulus
                    return root

                if self.inverse and self.scale_0 and cur_iter == 0:

                    # There are four butterflies per block, and only the
                    # first one needs the twisted coefficients

                    root0 = scale_root(root0)
                    root0_twisted = self._twist_root(root0)
                    print_roots(root0,root1,root2,
                                root0_twisted,root1_twisted,root2_twisted)
                else:
                    print_roots(root0,root1,root2,
                                root0_twisted,root1_twisted,root2_twisted)

            if radix == [2]:
                if self._use_goods_permutation and block_start >= self._size_d3:
                    continue
                if butterfly_size < 4:
                    continue

                root_log, root, root_twisted = \
                    self._root_of_unity_for_block(cur_iter, cur_block)

                root_str         = "{:10d}".format(root)
                root_twisted_str = "{:10d}".format(root_twisted)
                root_log_str     = "{:3d}".format(root_log)
                r_no_twist       = self.get_root_pow(root_log)

                root_asm.append(f".word {root_str} // SINGLE")
                root_twisted_asm.append(f".word {root_twisted_str} // SINGLE")

    def roots_of_unity_last_layers(self, root_asm, root_twisted_asm):

        for _, cur_iter, cur_block, block_size, block_start, block_end, butterfly_size in self._iter_blocks():
            if butterfly_size >= 4:
                continue

            # Compute the roots of unity that we need at this stage
            fst_layer = cur_iter + 0
            snd_layer = cur_iter + 1

            root_blocks, root_res, root_logs, roots, roots_twisted = {}, {}, {}, {}, {}

            root_blocks[0] = [ (fst_layer,    cur_block + i   ) for i in range(0,4) ]
            root_blocks[1] = [ (snd_layer, 2*(cur_block + i)+0) for i in range(0,4) ]
            root_blocks[2] = [ (snd_layer, 2*(cur_block + i)+1) for i in range(0,4) ]

            for i in range(0,3):
                root_res[i] = map(lambda x: self._root_of_unity_for_block(*x), root_blocks[i])
                root_logs[i], roots[i], roots_twisted[i] = list(zip(*root_res[i]))

                # Stringify for printing
                def to_string(lst,width):
                    return list(map(lambda x: f"{{:{width}d}}".format(x), lst))

                roots[i] = to_string(roots[i],10)
                roots_twisted[i] = to_string(roots_twisted[i],10)
                root_logs[i] = to_string(root_logs[i],3)

            block_0 = []
            block_twisted_0 = []
            for i in range(0,4):
                block_0.append(f".word {roots[0][i]}")
                block_twisted_0.append(f".word {roots_twisted[0][i]}")

            block_1 = []
            block_twisted_1 = []
            for i in range(0,4):
                block_1.append(f".word {roots[1][i]}")
                # rt[1] is computed on the fly in the inverse NTT
                if not self.inverse:
                    block_twisted_1.append(f".word {roots_twisted[1][i]}")

            block_2 = []
            block_twisted_2 = []
            for i in range(0,4):
                block_2.append(f".word {roots[2][i]}")
                # rt[2] is computed on the fly in the forward NTT
                if self.inverse:
                    block_twisted_2.append(f".word {roots_twisted[2][i]}")

            root_asm.append(block_0)
            root_twisted_asm.append(block_twisted_0)
            root_asm.append(block_1)
            root_twisted_asm.append(block_twisted_1)
            root_asm.append(block_2)
            root_twisted_asm.append(block_twisted_2)

    def heavy_twiddles(self):

        twiddle_array_name = f"{self.funcname}_twiddles"
        yield ".data"
        yield f".global {twiddle_array_name}"
        yield f"{twiddle_array_name}: // For base multiplication"

        idxs = range(0,self._size//4)
        idxs = list(map(self.goods_permutation_bitrev,idxs))

        scale = pow(self.incomplete_size,-1,self._modulus)
        scale = (scale * 2**self.bitsize) % self._modulus

        for idx in idxs:

            log = 4*idx
            root = self.get_root_pow(log)

            root = (scale*root)%self._modulus

            root, root_twisted = self._prepare_root(root,force_montgomery=self.basemul_use_montgomery)

            root_str = "{:10d}".format(root)
            root_twisted_str = "{:10d}".format(root_twisted)
            root_log_str = "{:3d}".format(log)
            root_no_twist = self.get_root_pow(log)

            yield f".word {root_str}"
            yield f".word {root_twisted_str}"

        yield "// End of twiddles for base multiplication\n"

        twiddle_scale_array_name = f"{self.funcname}_scale"
        scale, scale_tw = self._prepare_root(scale,force_montgomery=self.basemul_use_montgomery)
        yield f".global {twiddle_scale_array_name}"
        yield f"{twiddle_scale_array_name}: // Constants for scaling by 1/N"
        yield f".word {scale} // 1/{self.incomplete_size}"
        yield f".word {scale_tw} // 1/{self.incomplete_size} twisted"

    def roots_of_unity(self):

        root_asm = []
        root_twisted_asm = []

        root_last_asm = []
        root_twisted_last_asm = []

        self.roots_of_unity_initial_layers(root_asm, root_twisted_asm)
        self.roots_of_unity_last_layers(root_last_asm, root_twisted_last_asm)

        yield ".data"

        if len(root_asm) != len(root_twisted_asm):
            raise Exception("Something wrong with root generation...")
        if len(root_last_asm) != len(root_twisted_last_asm):
            raise Exception("Something wrong with root generation...")

        yield f"{self.roots_array_name}:"

        def first_roots():
            if len(root_asm) != len(root_twisted_asm):
                raise Exception("Something wrong with root generation...")
            for (line_root, line_root_twisted) in zip(root_asm, root_twisted_asm):
                yield line_root
                yield line_root_twisted

        def block_roots():
            if len(root_last_asm) != len(root_twisted_last_asm):
                raise Exception("Something wrong with root generation...")
            for (block, block_twisted) in zip(root_last_asm, root_twisted_last_asm):
                yield from block
                yield from block_twisted

        if not self.inverse:
            yield from first_roots()
            yield from block_roots()
        else:
            yield from block_roots()
            yield from first_roots()

    def init_roots(self):
        """Allocate and initialize GPRs for roots of unities:
           - GPRs holding base addresses for (twisted) roots of unity arrays
           - GPRs holding (twisted) roots of unities during the NTT itself.

           We currently need 2 GPRs for the base addresses and 8 GPRs for the
           roots and twisted roots used in two merged NTT layers.
        """

        self._root_base = core.regs.Reg(self._asm.gprs, str_name="root_base")
        yield from self._root_base.alloc()
        yield f"ldr {self._root_base.name()}, roots_addr"

        yield from self.alloc_roots()

        self.cur_root         = {}
        self.cur_root_twisted = {}
        self._root_offset     = 0

    def alloc_roots(self):
        self._roots = {}
        self._roots_twisted = {}

        num_roots = 3
        self.extra_loaded = False

        for i in range(0,num_roots):
            self._roots[i] = core.regs.Reg(self._asm.gprs, str_name=f"root{i}")
            self._roots_twisted[i] = core.regs.Reg(self._asm.gprs, str_name=f"root_twisted{i}")
            yield from self._roots[i].alloc()
            yield from self._roots_twisted[i].alloc()

        self._root_index = 0
        self.roots_allocated = True

    def free_roots(self):

        if not self.roots_allocated:
            return

        self._roots[0].free()
        self._roots[1].free()
        self._roots[2].free()

        self._roots_twisted[0].free()
        self._roots_twisted[1].free()
        self._roots_twisted[2].free()

        if self.extra_loaded:
            self._roots[3].free()
            self._roots_twisted[3].free()
            self.extra_loaded = False

        self._roots = {}
        self._roots_twisted = {}
        self._root_index = 0

        self.roots_allocated = False

    def _load_triple_root(self):

        if self._size_d3 == None:
            return iter([])

        yield f"ldrd {self._roots[0].name()}, {self._roots_twisted[0].name()}, " \
              f"[{self._root_base.name()}], #+8"
        yield f"ldrd {self._roots[1].name()}, {self._roots_twisted[1].name()}, " \
              f"[{self._root_base.name()}], #+8"

        self.cur_root[0] = self._roots[0].name()
        self.cur_root[1] = self._roots[1].name()
        self.cur_root_twisted[0] = self._roots_twisted[0].name()
        self.cur_root_twisted[1] = self._roots_twisted[1].name()

    def _load_next_roots(self, with_extra_root=False):

        yield f"ldrd {self._roots[0].name()}, {self._roots_twisted[0].name()}, " \
              f"[{self._root_base.name()}], #+8"
        yield f"ldrd {self._roots[1].name()}, {self._roots_twisted[1].name()}, " \
              f"[{self._root_base.name()}], #+8"
        yield f"ldrd {self._roots[2].name()}, {self._roots_twisted[2].name()}, " \
              f"[{self._root_base.name()}], #+8"

        self.cur_root[0] = self._roots[0].name()
        self.cur_root[1] = self._roots[1].name()
        self.cur_root[2] = self._roots[2].name()
        self.cur_root_twisted[0] = self._roots_twisted[0].name()
        self.cur_root_twisted[1] = self._roots_twisted[1].name()
        self.cur_root_twisted[2] = self._roots_twisted[2].name()

        if self.extra_loaded:
            self._roots[3].free()
            self._roots_twisted[3].free()
            self.extra_loaded = False

        if with_extra_root:
            self._roots[3] = core.regs.Reg(self._asm.gprs, str_name=f"root3")
            self._roots_twisted[3] = core.regs.Reg(self._asm.gprs, str_name=f"root_twisted3")
            yield from self._roots[3].alloc()
            yield from self._roots_twisted[3].alloc()
            yield f"ldrd {self._roots[3].name()}, {self._roots_twisted[3].name()}, " \
                  f"[{self._root_base.name()}], #+8"
            self.cur_root[3] = self._roots[3].name()
            self.cur_root_twisted[3] = self._roots_twisted[3].name()
            self.extra_loaded = True
        else:
            self.cur_root[3] = self._roots[0].name()
            self.cur_root_twisted[3] = self._roots_twisted[0].name()

    def _load_next_roots_single(self):
        yield f"ldrd {self._roots[0].name()}, {self._roots_twisted[0].name()}, " \
              f"[{self._root_base.name()}], #+8"
        self.cur_root[0] = self._roots[0].name()
        self.cur_root_twisted[0] = self._roots_twisted[0].name()

    def _iter_butterflies(self, filter=lambda _: True):
        """Yields all butterflies to be performed by the NTT in order.

           More precisely, it returns triples of:
           - The coefficient indices the butterfly operates on
           - A boolean indicating whether the butterfly is the first in its
             block, in which case the roots of unity need to be loaded first.
           - The distance between coefficients the butterfly combines.
        """

        for radix, cur_iter, cur_block, block_size, block_start, block_end, butterfly_size in self._iter_blocks():

            inputs = 1
            for r in radix:
                inputs *= r

            butterflies = range(0,butterfly_size,4)

            if radix == [3]:
                _, root, root_twisted = \
                    self._third_root_of_unity(mult=2)
                roots = [(root,root_twisted)]
            if radix == [2,2]:
                fst_layer = cur_iter + 0
                snd_layer = cur_iter + 1
                _, root0, root0_twisted = \
                    self._root_of_unity_for_block(fst_layer, cur_block)
                _, root1, root1_twisted = \
                    self._root_of_unity_for_block(snd_layer, 2*cur_block+0)
                _, root2, root2_twisted = \
                    self._root_of_unity_for_block(snd_layer, 2*cur_block+1)
                roots = [(root0,root0_twisted),
                         (root1,root1_twisted),
                         (root2,root2_twisted)]
            if radix == [2]:
                _, root, root_twisted = \
                    self._root_of_unity_for_block(cur_iter, cur_block)
                roots = [(root,root_twisted)]

            for cur_butterfly in butterflies:

                load_roots = ( cur_butterfly == 0 )

                if self._use_goods_permutation and block_start >= self._size_d3:
                    load_roots = False

                with_extra_root = False

                cur_idx_lo = block_start + cur_butterfly
                cur_idxs = [ cur_idx_lo + i*butterfly_size for i in range(0,inputs)]

                if self.inverse:
                    if self.scale_0 and cur_iter == 0:
                        if cur_butterfly == 0:
                            load_roots = True
                            with_extra_root = False
                        #if cur_butterfly == 4:
                        #    load_roots = True
                        #    with_extra_root = False


                if self._use_goods_permutation:
                    def transform(idx):
                        idx = idx // 4
                        i = idx // (self._size_d3 // 4)
                        j = idx % (self._size_d3 // 4 )
                        if self._bitreversed:
                            l2s = int(math.log(self._size_d3//4,2))
                            j = self._bitrev_list(j,[2 for _ in range(0,l2s)])
                        out = self.goods_permutation_split_to_full(p3=i,p2=j)
                        return 4*out
                    cur_idxs = list(map(transform,cur_idxs))
                elif self._bitreversed:
                    def ntt_bitrev(idx):
                        core = idx // 4
                        mod4 = idx % 4
                        r = [2 for i in range(self.iterations)]
                        if self._size_d3 != None:
                            r[-1] = 3
                        r.reverse()
                        rev = self._bitrev_list(core,r)
                        return 4 * rev + mod4
                    cur_idxs = list(map(ntt_bitrev,cur_idxs))

                res = Butterfly( layer          = cur_iter,
                                 radix          = radix,
                                 size           = butterfly_size,
                                 indices        = cur_idxs,
                                 load_roots     = load_roots,
                                 use_extra_root = with_extra_root,
                                 roots          = roots )
                if filter(res):
                    yield res

    def load_root_block(self, dst, *, index, twisted):

        # The code MUST load the root blocks in the order specified here.
        # That renders that index and twisted arguments redundant. We keep
        # them nonetheless to be able to fail gracefully if we ever change
        # something in the code without adjusting the order here, too.

        if not self.inverse:
            # rt2 is currently computed on the fly
            root_block_load_order  = [ "r0", "rt0", "r1", "rt1", "r2" ]
        else:
            # rt1 is currently computed on the fly
            root_block_load_order  = [ "r1", "r2", "rt2", "r0", "rt0" ]

        num_root_vectors = len(root_block_load_order)

        if self.root_block_load_order is None:
            self.root_block_load_order  = root_block_load_order
            self.root_block_load_index  = 0

        if not twisted:
            idx = f"r{index}"
        else:
            idx = f"rt{index}"

        expect_idx = self.root_block_load_order[self.root_block_load_index]
        if idx != expect_idx:
            raise Exception("Inconsistent specification of loading order for twiddles!")

        self.root_block_load_index = (self.root_block_load_index + 1) % num_root_vectors

        load_increment = num_root_vectors

        if not self.inverse:
            # We access root blocks != (0,False) after incrementing
            # the root base pointer, so we need a negative offset.
            load_offsets = {  "r0" :                    0,
                              "rt0" : -load_increment + 1,
                               "r1" : -load_increment + 2,
                              "rt1" : -load_increment + 3,
                               "r2" : -load_increment + 4 }
        else:
            # We access root block (0,True) after incrementing
            # the root base pointer, so we need a negative offset.
            load_offsets = { "r0" :                    0,
                              "rt0": -load_increment + 1,
                              "r1" :                   2,
                              "r2" :                   3,
                              "rt2":                   4 }

        post_increment = ( (index,twisted) == (0,False) )

        # Lookup store offset for block to be loaded
        load_offset = load_offsets[idx]

        if post_increment and load_offset != 0:
            raise Exception(f"Something is wrong here: First load {first_load}, but offset {load_offset} != 0")

        if post_increment:
            yield f"vldrw.s32 {dst}, [{self._root_base.name()}], #{load_increment * 16}"
        else:
            yield f"vldrw.s32 {dst}, [{self._root_base.name()}, #{load_offset * 16}]"

    def core_forward(self):

        yield from self.init_roots()

        tmp = [ core.regs.Reg(self._asm.vregs) for _ in range(0,4) ]

        yield from self._load_triple_root()

        # For sizes of the form 3*2^k, we start with a single radix-3 layer
        def butterfly_filter(butterfly):
            return ( butterfly.radix == [3] )
        butterflies = list(self._iter_butterflies(butterfly_filter))

        # Do radix-3 butterflies first (if present)

        for i, butterfly in enumerate(butterflies):

            layer           = butterfly.layer
            cur_idxs        = butterfly.indices

            roots = butterfly.roots

            # Get next and last butterfly for pipelining optimizations
            # across butterflies.

            if i == len(butterflies) - 1:
                last_butterfly = True
            else:
                last_butterfly = False
                next_idxs = butterflies[i+1].indices

            if i == 0:
                first_butterfly = True
            else:
                first_butterfly = False
                last_idxs = butterflies[i-1].indices

            # variant 2 needs all vector registers...
            if not self._rev4:
                variant = 2
            else:
                variant = 1

            def is_zero(idx):
                if not self.half_input:
                    return False
                else:
                    return idx >= self._size // 2

            b = self.get_bounds(cur_idxs)
            nb = [ b[0] + b[1] + b[2],
                   b[0] + b[2] + self.bound_prod(b[1]+b[2], roots[0]),
                   b[0] + b[1] + self.bound_prod(b[1]+b[2], roots[0]) ]
            self.set_bounds(cur_idxs,nb)

            if variant == 0:

                yield from self.src.load(cur_idxs[0], init_as_zero=is_zero(cur_idxs[0]) )
                yield from self.src.load(cur_idxs[1], init_as_zero=is_zero(cur_idxs[1]) )
                yield from self.src.load(cur_idxs[2], init_as_zero=is_zero(cur_idxs[2]) )

                a0 = self.src.reg(cur_idxs[0])
                a1 = self.src.reg(cur_idxs[1])
                a2 = self.src.reg(cur_idxs[2])

                # a0' = a0 + a1 + a2
                a0p = core.regs.Reg(self._asm.vregs)
                yield from a0p.alloc()
                yield f"vadd.s32 {a0p.name()}, {a0}, {a1}"
                yield f"vadd.s32 {a0p.name()}, {a0p.name()}, {a2}"
                yield from self.dst.write_from(cur_idxs[0], a0p)
                a0p.free()

                #
                # a1' = a0 + w*a1 + w^2 a2 = a0 + w*a1 - (1+w)a2 = (a0 - a2) + w*(a1-a2)
                #

                # a0 - a2
                a0_m_a2 = core.regs.Reg(self._asm.vregs)
                yield from a0_m_a2.alloc()
                yield f"vsub.s32 {a0_m_a2.name()}, {a0}, {a2}"
                yield from self.src.release(cur_idxs[0])

                # a1 - a2
                a1_m_a2 = core.regs.Reg(self._asm.vregs)
                yield from a1_m_a2.alloc()
                yield f"vsub.s32 {a1_m_a2.name()}, {a1}, {a2}"

                # w*(a1-a2)
                w_a1_m_a2 = core.regs.Reg(self._asm.vregs)
                yield from w_a1_m_a2.alloc()
                yield from tmp[0].alloc()
                montgomery = self.mulmod(a1_m_a2.name(),
                                         self.cur_root[0],
                                         self.cur_root_twisted[0],
                                         w_a1_m_a2.name(),
                                         scratch=tmp[0].name())
                yield from montgomery
                tmp[0].free()

                # Finalize a1' -- we can overwrite a1
                yield f"vadd.s32 {a1}, {a0_m_a2.name()}, {w_a1_m_a2.name()}"
                yield from self.dst.write_from(cur_idxs[1], self.src)
                yield from self.src.release(cur_idxs[1])

                w_a1_m_a2.free()

                # a2' = a0 + w^2*a1 + w a2 = (a0-a1) - w*(a1-a2) = (a0 - a2) - w*(a1-a2) - (a1-a2)
                # ( == (a0-a2) + w^2(a1-a2) )

                # w^2*(a1-a2)
                w2_a1_m_a2 = core.regs.Reg(self._asm.vregs)
                yield from w2_a1_m_a2.alloc()
                montgomery = self.mulmod(a1_m_a2.name(),
                                         self.cur_root[1],
                                         self.cur_root_twisted[1],
                                         w2_a1_m_a2.name())
                yield from montgomery

                # Finalize a2' -- we can overwrite a2
                yield f"vadd.s32 {a2}, {a0_m_a2.name()}, {w2_a1_m_a2.name()}"
                yield from self.dst.write_from(cur_idxs[2], src)
                yield from self.src.release(cur_idxs[2])

                w2_a1_m_a2.free()
                a1_m_a2.free()
                a0_m_a2.free()

            elif variant == 1: # Basic, no pipelining

                yield from self.src.load(cur_idxs[0], init_as_zero=is_zero(cur_idxs[0]) )
                yield from self.src.load(cur_idxs[1], init_as_zero=is_zero(cur_idxs[1]) )
                yield from self.src.load(cur_idxs[2], init_as_zero=is_zero(cur_idxs[2]) )

                a0 = self.src.reg(cur_idxs[0])
                a1 = self.src.reg(cur_idxs[1])
                a2 = self.src.reg(cur_idxs[2])

                # a0' = a0 + a1 + a2
                a0p = core.regs.Reg(self._asm.vregs)
                yield from a0p.alloc()
                yield f"vadd.s32 {a0p.name()}, {a0}, {a1}"
                yield f"vadd.s32 {a0p.name()}, {a0p.name()}, {a2}"
                yield from self.dst.write_from(cur_idxs[0], a0p)
                a0p.free()

                #
                # a1' = a0 + w*a1 + w^2 a2 = a0 + w*a1 - (1+w)a2 = (a0 - a2) + w*(a1-a2)
                #

                # a0 - a2
                a0_m_a2 = core.regs.Reg(self._asm.vregs)
                yield from a0_m_a2.alloc()
                yield f"vsub.s32 {a0_m_a2.name()}, {a0}, {a2}"
                yield from self.src.release(cur_idxs[0])

                # a1 - a2
                a1_m_a2 = core.regs.Reg(self._asm.vregs)
                yield from a1_m_a2.alloc()
                yield f"vsub.s32 {a1_m_a2.name()}, {a1}, {a2}"

                # w*(a1-a2)
                w_a1_m_a2 = core.regs.Reg(self._asm.vregs)
                yield from w_a1_m_a2.alloc()
                yield from tmp[0].alloc()
                montgomery = self.mulmod(a1_m_a2.name(),
                                         self.cur_root[0],
                                         self.cur_root_twisted[0],
                                         w_a1_m_a2.name(),
                                         scratch=tmp[0].name())
                yield from montgomery
                tmp[0].free()

                # Finalize a1' -- we can overwrite a1
                yield f"vadd.s32 {a1}, {a0_m_a2.name()}, {w_a1_m_a2.name()}"
                yield from self.dst.write_from(cur_idxs[1], self.src)
                yield from self.src.release(cur_idxs[1])

                # a2' = a0 + w^2*a1 + w a2 = (a0-a1) - w*(a1-a2) = (a0 - a2) - w*(a1-a2) - (a1-a2)

                yield f"vsub.s32 {a2}, {a0_m_a2.name()}, {w_a1_m_a2.name()}"
                yield f"vsub.s32 {a2}, {a2}, {a1_m_a2.name()}"

                yield from self.dst.write_from(cur_idxs[2], self.src)
                yield from self.src.release(cur_idxs[2])

                w_a1_m_a2.free()
                a1_m_a2.free()
                a0_m_a2.free()

            elif variant == 2: # Pipelined version of v1

                if self.simplify_initial_radix3:
                    z = [ is_zero(cur_idxs[i]) for i in range(0,3) ]
                    t = lambda x: int(not x)
                    z = list(map(t,z))
                else:
                    z = None

                # Simplify in case some inputs are 0
                if z == [1,0,0]:

                    # TEMPORARY: Free preloaded inputs
                    yield from self.src.release(cur_idxs[1])
                    yield from self.src.release(cur_idxs[2])
                    # Only first input is non-zero -- gets duplicated
                    yield from self.src.load(cur_idxs[0])
                    yield from self.dst.write_from(cur_idxs[0], self.src.reg(cur_idxs[0]))
                    yield from self.dst.write_from(cur_idxs[1], self.src.reg(cur_idxs[0]))
                    yield from self.dst.write_from(cur_idxs[2], self.src.reg(cur_idxs[0]))
                    yield from self.src.release(cur_idxs[0])

                elif z == [0,1,0]:

                    # TEMPORARY: Free preloaded inputs
                    yield from self.src.release(cur_idxs[0])
                    yield from self.src.release(cur_idxs[2])

                    # Only second input is non-zero
                    yield from self.src.load(cur_idxs[1])

                    # a1' = w*a1
                    w_a1 = core.regs.Reg(self._asm.vregs)
                    a2p  = core.regs.Reg(self._asm.vregs)
                    yield from w_a1.alloc()
                    yield from a2p.alloc()
                    yield from tmp[0].alloc()
                    montgomery = self.mulmod(self.src.reg(cur_idxs[1]),
                                             self.cur_root[0],
                                             self.cur_root_twisted[0],
                                             w_a1.name(),
                                             scratch=tmp[0].name())

                    yield next(montgomery)
                    yield f"vneg.s32 {a2p.name()}, {self.src.reg(cur_idxs[1])}"
                    if not last_butterfly and not is_zero(next_idxs[2]):
                        yield from self.src.load(next_idxs[2])
                    yield next(montgomery)
                    yield from self.dst.write_from(cur_idxs[0], self.src.reg(cur_idxs[1]))
                    yield next(montgomery)
                    yield from self.dst.write_from(cur_idxs[1], w_a1)
                    # a2' = w^2*a1 = -w*a1 - a1
                    yield f"vsub.s32 {a2p.name()}, {a2p.name()}, {w_a1.name()}"
                    yield from self.dst.write_from(cur_idxs[2], a2p)

                    tmp[0].free()
                    a2p.free()
                    w_a1.free()
                    yield from self.src.release(cur_idxs[1])

                elif z == [0,0,1]:

                    # TEMPORARY: Free preloaded inputs
                    yield from self.src.release(cur_idxs[0])
                    yield from self.src.release(cur_idxs[1])

                    # Only second input is non-zero
                    yield from self.src.load(cur_idxs[2])

                    # a2' = w*a2
                    w_a2 = core.regs.Reg(self._asm.vregs)
                    a1p  = core.regs.Reg(self._asm.vregs)
                    yield from w_a2.alloc()
                    yield from a1p.alloc()
                    yield from tmp[0].alloc()
                    montgomery = self.mulmod(self.src.reg(cur_idxs[2]),
                                             self.cur_root[0],
                                             self.cur_root_twisted[0],
                                             w_a2.name(),
                                             scratch=tmp[0].name())

                    yield next(montgomery)
                    yield f"vneg.s32 {a1p.name()}, {self.src.reg(cur_idxs[2])}"
                    if not last_butterfly and not is_zero(next_idxs[0]):
                        yield from self.src.load(next_idxs[0])
                    yield next(montgomery)
                    yield from self.dst.write_from(cur_idxs[0], self.src.reg(cur_idxs[2]))
                    yield next(montgomery)
                    yield from self.dst.write_from(cur_idxs[2], w_a2)
                    # a1' = w^2*a2 = -w*a2 - a2
                    yield f"vsub.s32 {a1p.name()}, {a1p.name()}, {w_a2.name()}"
                    yield from self.dst.write_from(cur_idxs[1], a1p)

                    tmp[0].free()
                    a1p.free()
                    w_a2.free()
                    yield from self.src.release(cur_idxs[2])

                elif z == [1,1,0]:

                    # TEMPORARY: Free preloaded inputs
                    yield from self.src.release(cur_idxs[2])

                    yield from self.src.load(cur_idxs[1])
                    a1 = self.src.reg(cur_idxs[1])
                    yield from self.src.load(cur_idxs[0])
                    a0 = self.src.reg(cur_idxs[0])

                    # w*a1, preserve a1
                    w_a1 = core.regs.Reg(self._asm.vregs)
                    yield from w_a1.alloc()
                    yield from tmp[0].alloc()
                    montgomery = self.mulmod(a1, self.cur_root[0],
                                             self.cur_root_twisted[0],
                                             w_a1.name(),
                                             scratch=tmp[0].name())
                    yield next(montgomery)
                    # a0' = a0 + a1
                    a0p = core.regs.Reg(self._asm.vregs)
                    yield from a0p.alloc()
                    a2p = core.regs.Reg(self._asm.vregs)
                    yield from a2p.alloc()
                    yield f"vadd.s32 {a0p.name()}, {a0}, {a1}"
                    if not last_butterfly and not is_zero(next_idxs[1]):
                        yield from self.src.load(next_idxs[1])
                    yield next(montgomery)
                    if not last_butterfly and not is_zero(next_idxs[2]):
                        yield from self.src.load(next_idxs[2])
                    yield f"vsub.s32 {a2p.name()}, {a0}, {a1}"
                    yield next(montgomery)
                    tmp[0].free()

                    yield from self.dst.write_from(cur_idxs[0], a0p)

                    # a1' = a0 + w*a1
                    a1p = core.regs.Reg(self._asm.vregs)
                    yield from a1p.alloc()
                    yield f"vadd.s32 {a1p.name()}, {a0}, {w_a1.name()}"
                    yield from self.dst.write_from(cur_idxs[1], a1p)
                    # a2' = a0 - w*a1 - a1
                    yield f"vsub.s32 {a2p.name()}, {a2p.name()}, {w_a1.name()}"
                    yield from self.dst.write_from(cur_idxs[2], a2p)

                    w_a1.free()
                    a1p.free()
                    a2p.free()
                    a0p.free()
                    yield from self.src.release(cur_idxs[0])
                    yield from self.src.release(cur_idxs[1])

                elif z == [1,0,1]:

                    # TEMPORARY: Free preloaded inputs
                    yield from self.src.release(cur_idxs[1])

                    yield from self.src.load(cur_idxs[2])
                    a2 = self.src.reg(cur_idxs[2])
                    yield from self.src.load(cur_idxs[0])
                    a0 = self.src.reg(cur_idxs[0])

                    # w*a2, preserve a2
                    w_a2 = core.regs.Reg(self._asm.vregs)
                    yield from w_a2.alloc()
                    yield from tmp[0].alloc()
                    montgomery = self.mulmod(a2, self.cur_root[0],
                                             self.cur_root_twisted[0],
                                             w_a2.name(),
                                             scratch=tmp[0].name())
                    yield next(montgomery)
                    # a0' = a0 + a2
                    a0p = core.regs.Reg(self._asm.vregs)
                    yield from a0p.alloc()
                    a1p = core.regs.Reg(self._asm.vregs)
                    yield from a1p.alloc()
                    yield f"vadd.s32 {a0p.name()}, {a0}, {a2}"
                    if not last_butterfly and not is_zero(next_idxs[0]):
                        yield from self.src.load(next_idxs[0])
                    yield next(montgomery)
                    if not last_butterfly and not is_zero(next_idxs[1]):
                        yield from self.src.load(next_idxs[1])
                    yield f"vsub.s32 {a1p.name()}, {a0}, {a2}"
                    yield next(montgomery)
                    tmp[0].free()


                    yield from self.dst.write_from(cur_idxs[0], a0p)

                    # a2' = a0 + w*a2
                    a2p = core.regs.Reg(self._asm.vregs)
                    yield from a2p.alloc()
                    yield f"vadd.s32 {a2p.name()}, {a0}, {w_a2.name()}"
                    yield from self.dst.write_from(cur_idxs[2], a2p)
                    # a1' = a0 - w*a2 - a2
                    yield f"vsub.s32 {a1p.name()}, {a1p.name()}, {w_a2.name()}"
                    yield from self.dst.write_from(cur_idxs[1], a1p)

                    w_a2.free()
                    a2p.free()
                    a1p.free()
                    a0p.free()
                    yield from self.src.release(cur_idxs[0])
                    yield from self.src.release(cur_idxs[2])

                elif z == [0,1,1]:

                    # Should have be preloaded for all but the first iteration
                    yield from self.src.load(cur_idxs[1], init_as_zero=is_zero(cur_idxs[1]) )
                    a1 = self.src.reg(cur_idxs[1])
                    yield from self.src.load(cur_idxs[2], init_as_zero=is_zero(cur_idxs[2]) )
                    a2 = self.src.reg(cur_idxs[2])

                    # a1 - a2
                    a1_m_a2 = core.regs.Reg(self._asm.vregs)
                    yield from a1_m_a2.alloc()
                    yield f"vsub.s32 {a1_m_a2.name()}, {a1}, {a2}"

                    # w*(a1-a2)
                    w_a1_m_a2 = core.regs.Reg(self._asm.vregs)
                    yield from w_a1_m_a2.alloc()
                    montgomery = self.mulmod(a1_m_a2.name(),
                                             self.cur_root[0],
                                             self.cur_root_twisted[0],
                                             w_a1_m_a2.name())
                    yield next(montgomery)

                    # a0' = a1 + a2
                    a0p = core.regs.Reg(self._asm.vregs)
                    yield from a0p.alloc()
                    if not last_butterfly and not is_zero(next_idxs[0]):
                        yield from self.src.load(next_idxs[0])
                    yield f"vadd.s32 {a0p.name()}, {a1}, {a2}"
                    yield next(montgomery)
                    if not last_butterfly and not is_zero(next_idxs[2]):
                        yield from self.src.load(next_idxs[2])
                    yield next(montgomery)
                    a1_m_a2.free()
                    # a2' = -w*(a1-a2) - a1
                    a2p = core.regs.Reg(self._asm.vregs)
                    yield from a2p.alloc()
                    yield f"vneg.s32 {a2p.name()}, {a1}"
                    yield from self.src.release(cur_idxs[1])
                    yield from self.dst.write_from(cur_idxs[0], a0p)
                    # a1' = w*(a1-a2) - a2
                    a1p = core.regs.Reg(self._asm.vregs)
                    yield from a1p.alloc()
                    yield f"vsub.s32 {a1p.name()}, {w_a1_m_a2.name()}, {a2}"
                    yield from self.src.release(cur_idxs[2])
                    yield from self.dst.write_from(cur_idxs[1], a1p)
                    yield f"vsub.s32 {a2p.name()}, {a2p.name()}, {w_a1_m_a2.name()}"
                    yield from self.dst.write_from(cur_idxs[2], a2p)

                    a0p.free()
                    a1p.free()
                    a2p.free()
                    w_a1_m_a2.free()

                else: # All other cases

                    # Should have be preloaded for all but the first iteration
                    yield from self.src.load(cur_idxs[1], init_as_zero=is_zero(cur_idxs[1]) )
                    a1 = self.src.reg(cur_idxs[1])
                    yield from self.src.load(cur_idxs[2], init_as_zero=is_zero(cur_idxs[2]) )
                    a2 = self.src.reg(cur_idxs[2])

                    # a1 - a2
                    #
                    # Compute this first so we can get on with Montgomery
                    # and interleave the additive arithmetic.
                    a1_m_a2 = core.regs.Reg(self._asm.vregs)
                    yield from a1_m_a2.alloc()
                    yield f"vsub.s32 {a1_m_a2.name()}, {a1}, {a2}"

                    # w*(a1-a2), preserve a1-a2
                    w_a1_m_a2 = core.regs.Reg(self._asm.vregs)
                    yield from w_a1_m_a2.alloc()
                    yield from tmp[0].alloc()
                    montgomery = self.mulmod(a1_m_a2.name(),
                                             self.cur_root[0],
                                             self.cur_root_twisted[0],
                                             w_a1_m_a2.name(),
                                             scratch=tmp[0].name())
                    yield next(montgomery)

                    # a0' = a0 + a1 + a2
                    a0p = core.regs.Reg(self._asm.vregs)
                    yield from a0p.alloc()
                    yield f"vadd.s32 {a0p.name()}, {a1}, {a2}" # a1 no longer used
                    yield from self.src.release(cur_idxs[1])

                    yield next(montgomery)

                    yield from self.src.load(cur_idxs[0], init_as_zero=is_zero(cur_idxs[0]) )
                    a0 = self.src.reg(cur_idxs[0])

                    yield next(montgomery)

                    tmp[0].free()

                    # a0 - a2
                    a0_m_a2 = core.regs.Reg(self._asm.vregs)
                    yield from a0_m_a2.alloc()
                    yield f"vsub.s32 {a0_m_a2.name()}, {a0}, {a2}"
                    yield from self.src.release(cur_idxs[2])

                    # Preload
                    if not last_butterfly:
                        yield from self.src.load(next_idxs[1], init_as_zero=is_zero(next_idxs[1]) )

                    # a1' = a0 + w*a1 + w^2 a2 = a0 + w*a1 - (1+w)a2 = (a0 - a2) + w*(a1-a2)
                    a1p = core.regs.Reg(self._asm.vregs)
                    yield from a1p.alloc()
                    yield f"vadd.s32 {a1p.name()}, {a0_m_a2.name()}, {w_a1_m_a2.name()}"

                    # Preload
                    if not last_butterfly:
                        yield from self.src.load(next_idxs[2], init_as_zero=is_zero(next_idxs[2]) )

                    # a2' = a0 + w^2*a1 + w a2 = (a0-a1) - w*(a1-a2) = (a0 - a2) - w*(a1-a2) - (a1-a2)

                    a2p = a0_m_a2.name()
                    yield f"vsub.s32 {a2p}, {a0_m_a2.name()}, {w_a1_m_a2.name()}"
                    w_a1_m_a2.free()
                    yield from self.dst.write_from(cur_idxs[1], a1p)
                    a1p.free()
                    yield f"vsub.s32 {a2p}, {a2p}, {a1_m_a2.name()}"
                    a1_m_a2.free()
                    yield from self.dst.write_from(cur_idxs[2], a2p)
                    a0_m_a2.free()
                    yield f"vadd.s32 {a0p.name()}, {a0p.name()}, {a0}"
                    yield from self.src.release(cur_idxs[0])
                    yield from self.dst.write_from(cur_idxs[0], a0p)
                    a0p.free()

            else: # Other variant
                assert False

        # Next, do merged radix-2 butterflies

        if self._use_goods_permutation and self.external:
            yield "//////////// END OF RADIX 3 //////////////////////////"
            yield from self.src_markers.free_registers_for_markers()
            self.src = self.dst

        def butterfly_filter(butterfly):
            return ( butterfly.size > 1 and butterfly.radix == [2,2] )
        butterflies = list(self._iter_butterflies(butterfly_filter))
        load_increment  = [False for _ in range(0,4)]
        store_increment = False

        for i, butterfly in enumerate(butterflies):

            layer           = butterfly.layer
            cur_idxs        = butterfly.indices
            load_roots      = butterfly.load_roots
            size            = butterfly.size
            roots           = butterfly.roots

            # Get next and last butterfly for pipelining optimizations
            # across butterflies.

            if i == len(butterflies) - 1:
                last_butterfly = True
            else:
                last_butterfly = False
                next_idxs = butterflies[i+1].indices

            if i == 0:
                first_butterfly = True
            else:
                first_butterfly = False
                last_idxs = butterflies[i-1].indices

            if not (self.precompute and size == 4 and cur_idxs[0] > 0):
                if load_roots:
                    yield from self._load_next_roots(False)

            # Special case: Simplifications for first layer 0f cyclic NTT
            # TODO
            # if not self.negacyclic and layer == 0 and not self._skip_first:

            # Special case: Skipping first layer in cyclic NTT
            if layer == 0 and self._skip_first:

                # Logically, the following needs to be done:
                #
                # c[3] <- c[3] * root' (Montgomery)
                # (c[0],c[1]) <- (c[0] + c[1], c[0] - c[1])
                # (c[2],c[3]) <- (c[2] + c[3], c[2] - c[3])
                #
                # We interleave those steps and the necessary loads for better pipelining.
                #
                # It's impossible to avoid structural hazards entirely since
                # we need to perform 4+4 load/store operations per iteration, but only
                # 2+2 add/sub and 3 mul operations -- so a back-to-back load/store is
                # unavoidable.
                #
                # Moreover, we cannot avoid running into a ST-ST-LD hazard since all
                # loads and stores are aligned in the same way, and there must be a
                # VSTR - X - VLDR sequence in the code.

                yield from tmp[0].alloc()
                yield from tmp[1].alloc()
                yield from self.src.load(cur_idxs[3])
                montgomery = self.mulmod(self.src.reg(cur_idxs[3]), self.cur_root[2],
                                         self.cur_root_twisted[2], tmp[1].name())
                yield next(montgomery)
                yield from self.src.load(cur_idxs[0])
                yield next(montgomery)
                yield from self.src.load(cur_idxs[1])

                add_sub01 = self._add_sub(self.src.reg(cur_idxs[0]),
                                          tmp[0].name(),
                                          self.src.reg(cur_idxs[1]))

                yield next(add_sub01)

                yield from self.src.load(cur_idxs[2])

                yield next(montgomery)

                if not last_butterfly:
                    # Preload for the next iteration
                    yield from self.src.load(next_idxs[3])

                if not first_butterfly:
                    # Late store from last iteration
                    yield from self.dst.write_from(last_idxs[0], self.src)
                    yield from self.src.release(last_idxs[0])

                add_sub23 = self._add_sub(self.src.reg(cur_idxs[2]), self.src.reg(cur_idxs[3]),
                                        tmp[1].name())
                yield next(add_sub23)
                yield from self.dst.write_from(cur_idxs[3], self.src)
                yield from self.src.release(cur_idxs[3])
                yield next(add_sub23)
                yield from self.dst.write_from(cur_idxs[2], self.src)
                yield from self.src.release(cur_idxs[2])
                tmp[1].free()

                yield next(add_sub01)
                yield from self.dst.write_from(cur_idxs[1], tmp[0])
                yield from self.src.release(cur_idxs[1])
                tmp[0].free()

                if last_butterfly:
                    # Leave storing to the next iteration
                    yield from self.dst.write_from(cur_idxs[0], self.src)
                    yield from self.src.release(cur_idxs[0])

            # First two radix-2 layers in cyclic NTT can be simplified
            elif self._use_goods_permutation and layer == 1:

                b = self.get_bounds(cur_idxs)
                nb = [ b[0] + b[2], b[0] + b[2],
                       b[1] + b[3], b[1] + b[3]]
                nnb = [ nb[0] + nb[1],
                        nb[0] + nb[1],
                        nb[2] + self.bound_prod(nb[3], roots[2]),
                        nb[2] + self.bound_prod(nb[3], roots[2]) ]
                self.set_bounds(cur_idxs,nnb)

                variant = 1

                if variant == 0:

                    # Logically, the following needs to be done:
                    #
                    # 3: (c[0],c[2]) <- (c[0] + c[2], c[0] - c[2])
                    # 4: (c[1],c[3]) <- (c[1] + c[3], c[1] - c[3])
                    # 5: c[3] <- c[3] * root' (Montgomery)
                    # 7: (c[0],c[1]) <- (c[0] + c[1], c[0] - c[1])
                    # 8: (c[2],c[3]) <- (c[2] + c[3], c[2] - c[3])
                    #
                    # We interleave those steps and the necessary loads for better pipelining.

                    yield from self.src.load(cur_idxs[0])
                    yield from self.src.load(cur_idxs[1])
                    yield from self.src.load(cur_idxs[2])
                    yield from self.src.load(cur_idxs[3])

                    # Step 1: (c[1],tmp[0]) <- (c[1] + c[3], c[1] - c[3])
                    yield from tmp[0].alloc()
                    yield from tmp[1].alloc()
                    yield from tmp[2].alloc()

                    add_sub = self._add_sub_inv(self.src.reg(cur_idxs[1]), self.src.reg(cur_idxs[3]),
                                                tmp[0].name())
                    yield from add_sub

                    # Step 2: (c[0],tmp[1]) <- (c[0] + c[2], c[0] - c[2])

                    add_sub = self._add_sub_inv(self.src.reg(cur_idxs[0]), self.src.reg(cur_idxs[2]),
                                                tmp[1].name())
                    yield from add_sub

                    # Step 3: c[3] <- c[3] * root'
                    montgomery = self.mulmod(tmp[0].name(), self.cur_root[2],
                                             self.cur_root_twisted[2], self.src.reg(cur_idxs[3]))
                    yield from montgomery

                    # Step 4: (c[0],c[1]) <- (c[0] + c[1], c[0] - c[1])
                    add_sub = self._add_sub_inv(self.src.reg(cur_idxs[0]), self.src.reg(cur_idxs[1]),
                                                tmp[0].name())
                    yield from add_sub

                    # Step 5: (c[2],c[3]) <- (c[2] + c[3], c[2] - c[3])
                    add_sub = self._add_sub_inv(tmp[1].name(),self.src.reg(cur_idxs[3]),
                                                tmp[2].name())
                    yield from add_sub

                    yield from self.dst.write_from(cur_idxs[0], self.src)
                    yield from self.dst.write_from(cur_idxs[1], tmp[0].name())
                    yield from self.dst.write_from(cur_idxs[2], tmp[1].name())
                    yield from self.dst.write_from(cur_idxs[3], tmp[2].name())

                    yield from self.src.release(cur_idxs[0])
                    yield from self.src.release(cur_idxs[1])
                    yield from self.src.release(cur_idxs[2])
                    yield from self.src.release(cur_idxs[3])

                    late_store_exception = True

                    tmp[0].free()
                    tmp[1].free()
                    tmp[2].free()

                else: # Pipelined version

                    # Logically, the following needs to be done:
                    #
                    # 3: (c[0],c[2]) <- (c[0] + c[2], c[0] - c[2])
                    # 4: (c[1],c[3]) <- (c[1] + c[3], c[1] - c[3])
                    # 5: c[3] <- c[3] * root' (Montgomery)
                    # 7: (c[0],c[1]) <- (c[0] + c[1], c[0] - c[1])
                    # 8: (c[2],c[3]) <- (c[2] + c[3], c[2] - c[3])
                    #
                    # We interleave those steps and the necessary loads for better pipelining.

                    yield from self.src.load(cur_idxs[1])
                    yield from self.src.load(cur_idxs[3])

                    c3p  = core.regs.Reg(self._asm.vregs)
                    c3pp = core.regs.Reg(self._asm.vregs)
                    yield from c3p.alloc()
                    yield from c3pp.alloc()

                    # Step 1: (c[1] + c[3], c[1] - c[3])
                    yield f"vsub.s32 {c3p.name()}, {self.src.reg(cur_idxs[1])}, {self.src.reg(cur_idxs[3])}"
                    # Step 3: c[3] <- c[3] * root'
                    montgomery = self.mulmod(c3p.name(), self.cur_root[2],
                                             self.cur_root_twisted[2],
                                             c3pp.name())
                    yield next(montgomery)
                    yield from self.src.load(cur_idxs[2])
                    yield f"vadd.s32 {self.src.reg(cur_idxs[1])}, {self.src.reg(cur_idxs[1])}, {self.src.reg(cur_idxs[3])}"
                    yield from self.src.release(cur_idxs[3])
                    yield from self.src.load(cur_idxs[0])

                    # Step 2: (c[0] + c[2], c[0] - c[2])

                    c2p = core.regs.Reg(self._asm.vregs)
                    yield from c2p.alloc()

                    add_sub = self._add_sub_inv(self.src.reg(cur_idxs[0]), self.src.reg(cur_idxs[2]),
                                                c2p.name())
                    yield next(add_sub)
                    if not last_butterfly:
                        yield from self.src.load(next_idxs[3])
                    yield next(add_sub)
                    yield from self.src.release(cur_idxs[2])
                    yield next(montgomery)

                    # Step 4: (c[0],c[1]) <- (c[0] + c[1], c[0] - c[1])
                    c1p = core.regs.Reg(self._asm.vregs)
                    yield from c1p.alloc()
                    add_sub = self._add_sub_inv(self.src.reg(cur_idxs[0]), self.src.reg(cur_idxs[1]),
                                                c1p.name())
                    yield next(add_sub)
                    if not last_butterfly:
                        yield from self.src.load(next_idxs[1])
                    yield next(montgomery)
                    yield from self.dst.write_from(cur_idxs[1], c1p.name())
                    c1p.free()
                    yield next(add_sub)
                    yield from self.src.release(cur_idxs[1])
                    yield from self.dst.write_from(cur_idxs[0], self.src)
                    yield from self.src.release(cur_idxs[0])

                    # Step 5: (c[2],c[3]) <- (c[2] + c[3], c[2] - c[3])
                    add_sub = self._add_sub_inv(c2p.name(),c3pp.name(),
                                                c3p.name())
                    yield next(add_sub)
                    yield from self.dst.write_from(cur_idxs[3], c3p.name())
                    c3p.free()
                    yield next(add_sub)
                    c3pp.free()
                    yield from self.dst.write_from(cur_idxs[2], c2p.name())
                    c2p.free()

                    late_store_exception = True

            else: # Default case

                b = self.get_bounds(cur_idxs)
                nb = [ b[0] + self.bound_prod(b[2], roots[0]),
                       b[0] + self.bound_prod(b[2], roots[0]),
                       b[1] + self.bound_prod(b[3], roots[0]),
                       b[1] + self.bound_prod(b[3], roots[0])]
                nnb = [ nb[0] + self.bound_prod(nb[1], roots[1]),
                        nb[0] + self.bound_prod(nb[1], roots[1]),
                        nb[2] + self.bound_prod(nb[3], roots[2]),
                        nb[2] + self.bound_prod(nb[3], roots[2])]
                self.set_bounds(cur_idxs,nnb)

                # Logically, the following needs to be done:
                #
                # 1: c[3] <- c[3] * root (Montgomery)
                # 2: c[2] <- c[2] * root (Montgomery)
                # 3: (c[0],c[2]) <- (c[0] + c[2], c[0] - c[2])
                # 4: (c[1],c[3]) <- (c[1] + c[3], c[1] - c[3])
                # 5: c[3] <- c[3] * root' (Montgomery)
                # 6: c[1] <- c[1] * root' (Montgomery)
                # 7: (c[0],c[1]) <- (c[0] + c[1], c[0] - c[1])
                # 8: (c[2],c[3]) <- (c[2] + c[3], c[2] - c[3])
                #
                # We interleave those steps and the necessary loads for better pipelining.

                if self._rev4 and size == 16 and cur_idxs[0] == 0:
                    load_increment[0] = True
                    self.src.store_sources = self.src.sources
                    self.src.sources = [core.markers.ReadWriteMarker(
                        self.qoff.name(), 0, 0, self._size)]

                if self._rev4 and size == 4 and cur_idxs[0] == 0:
                    load_increment[0] = False
                    self.qoff.free()
                    self.src.sources = self.src.store_sources

                # Step 1: c[3] <- c[3] * root
                yield from self.src.load(cur_idxs[3], increment=load_increment[3])
                yield from tmp[0].alloc()
                montgomery = self.mulmod(self.src.reg(cur_idxs[3]), self.cur_root[0],
                                         self.cur_root_twisted[0], tmp[0].name())
                yield next(montgomery)
                yield from self.src.load(cur_idxs[2], increment=load_increment[2])
                yield next(montgomery)
                yield from self.src.load(cur_idxs[1], increment=load_increment[1])
                yield next(montgomery)

                if not first_butterfly:
                    late_store_exception = False
                    if self.precompute and size == 4 and cur_idxs[0] > 0:
                        late_store_exception = True
                    if self._use_goods_permutation and size == 4 and cur_idxs[0] == 0:
                        late_store_exception = True
                    if self._use_goods_permutation and layer == 3 and cur_idxs[0] == 0:
                        late_store_exception = True

                    if not late_store_exception:
                        # Late store from last iteration
                        yield from self.dst.write_from(last_idxs[0], self.src,
                                                       increment=store_increment)
                        yield from self.src.release(last_idxs[0])

                if self._use_goods_permutation and self.precompute and size == 4 and cur_idxs[0] == 0:
                    load_increment = [True for _ in range(0,4) ]
                    yield from self.markers.free_registers_for_markers()
                    self.markers = core.markers.ReadWriteMarkers(self._asm,
                                                                 self._size * 4, 32,
                                                                 self._src,
                                                                 initial_shift=0,
                                                                 marker_bases=[0,self._size_d3, 2*self._size_d3])
                    yield from self.markers.alloc_registers_for_markers()
                    self.src.sources = self.markers.get_shifted_marker_list(0)
                    self.src.store_sources = None

                    self.dst_markers = core.markers.ReadWriteMarkers(self._asm,
                                                                     self._size * 8, 32,
                                                                     self._dst,
                                                                     initial_shift=0,
                                                                     marker_bases=[0,2*self._size_d3,
                                                                                   4*self._size_d3])
                    yield from self.dst_markers.alloc_registers_for_markers()
                    self.dst = mve.rw.ReadWriteVector(self._asm,
                                                      self.dst_markers.get_shifted_marker_list(0),
                                                      32, name="input")

                if not self._use_goods_permutation and self.precompute and size == 4 and cur_idxs[0] == 0:
                    self.dst_markers = core.markers.ReadWriteMarkers(self._asm,
                                                                     self._size * 8, 32,
                                                                     self._dst,
                                                                     initial_shift=0,
                                                                     marker_bases=[0])
                    # Shouldn't do anything
                    yield from self.dst_markers.alloc_registers_for_markers()
                    self.dst = mve.rw.ReadWriteVector(self._asm,
                                                      self.dst_markers.get_shifted_marker_list(0),
                                                      32, name="input")

                # Step 2: c[2] <- c[2] * root
                yield from tmp[1].alloc()
                montgomery = self.mulmod(self.src.reg(cur_idxs[2]), self.cur_root[0],
                                         self.cur_root_twisted[0], tmp[1].name())
                # Step 4: (c[1],c[3]) <- (c[1] + c[3], c[1] - c[3])
                add_sub = self._add_sub(self.src.reg(cur_idxs[1]), self.src.reg(cur_idxs[3]),
                                        tmp[0].name())
                yield next(montgomery)
                yield next(add_sub)
                yield next(montgomery)
                yield next(add_sub)
                yield next(montgomery)
                tmp[0].free()

                yield from self.src.load(cur_idxs[0], increment=load_increment[0])
                # Step 5: c[3] <- c[3] * root'
                yield from tmp[0].alloc()
                montgomery = self.mulmod(self.src.reg(cur_idxs[3]), self.cur_root[2],
                                         self.cur_root_twisted[2], tmp[0].name())
                # Step 3: (c[0],c[2]) <- (c[0] + c[2], c[0] - c[2])
                add_sub = self._add_sub(self.src.reg(cur_idxs[0]), self.src.reg(cur_idxs[2]),
                                        tmp[1].name())
                yield next(montgomery)
                yield next(add_sub)
                yield next(montgomery)
                yield next(add_sub)
                yield next(montgomery)
                tmp[1].free()

                preload_exception = False
                if self._rev4 and size == 64 and next_idxs[0] == 0:
                    preload_exception = True
                if self._rev4 and size == 16 and next_idxs[0] == 0:
                    preload_exception = True

                if not last_butterfly and not preload_exception:
                    # Preload for the next iteration
                    yield from self.src.load(next_idxs[3], increment=load_increment[3])

                # Step 6: c[1] <- c[1] * root'
                yield from tmp[2].alloc()
                montgomery = self.mulmod(self.src.reg(cur_idxs[1]), self.cur_root[1],
                                         self.cur_root_twisted[1], tmp[2].name())
                # Step 8: (c[2],c[3]) <- (c[2] + c[3], c[2] - c[3])
                add_sub = self._add_sub(self.src.reg(cur_idxs[2]), self.src.reg(cur_idxs[3]),
                                        tmp[0].name())

                if not (self.precompute and size == 4):

                    yield next(montgomery)
                    yield next(add_sub)
                    yield next(montgomery)
                    yield next(add_sub)
                    tmp[0].free()

                    yield from self.dst.write_from(cur_idxs[3], self.src)
                    yield from self.src.release(cur_idxs[3])
                    yield next(montgomery)
                    yield from self.dst.write_from(cur_idxs[2], self.src)
                    yield from self.src.release(cur_idxs[2])
                    add_sub = self._add_sub(self.src.reg(cur_idxs[0]), self.src.reg(cur_idxs[1]),
                                        tmp[2].name())
                    yield next(add_sub)
                    yield from self.dst.write_from(cur_idxs[1], self.src)
                    yield from self.src.release(cur_idxs[1])
                    yield next(add_sub)

                    late_store_exception = False
                    if self._use_goods_permutation and size == 16 and next_idxs[0] == 0:
                        late_store_exception = True

                    if last_butterfly or late_store_exception:
                        # Leave storing to the next iteration
                        yield from self.dst.write_from(cur_idxs[0], self.src)
                        yield from self.src.release(cur_idxs[0])

                else:

                    scale_tmp = core.regs.Reg(self._asm.vregs)
                    yield from scale_tmp.alloc()

                    yield next(montgomery)
                    yield next(add_sub)
                    yield next(montgomery)

                    # c[3] multiplied with -root[2]
                    yield from self.dst.write_from(2*cur_idxs[3], self.src.reg(cur_idxs[3]))
                    # yield f"vstrw.u32 {self.src.reg(cur_idxs[3])}, [{self._dst}, #{3*32}]"
                    store_montgomery = self.mulmod(self.src.reg(cur_idxs[3]), self.cur_root[2],
                                                   self.cur_root_twisted[2], scale_tmp.name())

                    yield next(store_montgomery)
                    yield next(add_sub)
                    tmp[0].free()

                    yield next(store_montgomery)

                    yield from self.dst.write_from(2*cur_idxs[2], self.src.reg(cur_idxs[2]))
                    # yield f"vstrw.u32 {self.src.reg(cur_idxs[2])}, [{self._dst}, #{2*32}]"

                    yield next(store_montgomery)
                    yield from self.src.release(cur_idxs[3])

                    # Finishing c[1]
                    yield next(montgomery)

                    yield f"vneg.s32 {scale_tmp.name()}, {scale_tmp.name()}"

                    yield from self.dst.write_from(2*cur_idxs[3]+4, scale_tmp)
                    #yield f"vstrw.u32 {scale_tmp.name()}, [{self._dst}, #{3*32+16}]"

                    # c[2] multiplied with root[2]
                    store_montgomery = self.mulmod(self.src.reg(cur_idxs[2]), self.cur_root[2],
                                                   self.cur_root_twisted[2], scale_tmp.name())

                    # Step 7: (c[0],c[1]) <- (c[0] + c[1], c[0] - c[1])
                    add_sub = self._add_sub(self.src.reg(cur_idxs[0]), self.src.reg(cur_idxs[1]),
                                        tmp[2].name())

                    yield next(store_montgomery)
                    yield next(add_sub)
                    yield next(store_montgomery)

                    yield from self.dst.write_from(2*cur_idxs[1], self.src.reg(cur_idxs[1]))
                    # yield f"vstrw.u32 {self.src.reg(cur_idxs[1])}, [{self._dst},#{1*32}]"

                    yield next(store_montgomery)

                    yield from self.dst.write_from(2*cur_idxs[2]+4, scale_tmp)
                    #yield f"vstrw.u32 {scale_tmp.name()}, [{self._dst}, #{2*32+16}]"
                    yield from self.src.release(cur_idxs[2])

                    # c[1] multiplied with -root[1]
                    store_montgomery = self.mulmod(self.src.reg(cur_idxs[1]), self.cur_root[1],
                                                   self.cur_root_twisted[1], scale_tmp.name())
                    yield next(store_montgomery)
                    yield next(add_sub)
                    yield next(store_montgomery)

                    yield from self.dst.write_from(2*cur_idxs[0],
                                                   self.src.reg(cur_idxs[0]),
                                                   increment=True)
                    # yield f"vstrw.u32 {self.src.reg(cur_idxs[0])}, [{self._dst}], #{4*32}"
                    yield next(store_montgomery)
                    yield f"vneg.s32 {scale_tmp.name()}, {scale_tmp.name()}"
                    yield from self.src.release(cur_idxs[1])

                    scale_tmp2 = core.regs.Reg(self._asm.vregs)
                    yield from scale_tmp2.alloc()

                    # c[0] multiplied with root[1]
                    store_montgomery = self.mulmod(self.src.reg(cur_idxs[0]), self.cur_root[1],
                                                   self.cur_root_twisted[1], scale_tmp2.name())
                    next_roots = self._load_next_roots(False)

                    yield next(store_montgomery)

                    yield from self.dst.write_from(2*cur_idxs[1]+4, scale_tmp)
                    # yield f"vstrw.u32 {scale_tmp.name()}, [{self._dst},#{-4*32+1*32+16}]"
                    scale_tmp.free()
                    yield next(store_montgomery)
                    yield next(next_roots)
                    yield next(store_montgomery)

                    yield from self.dst.write_from(2*cur_idxs[0]+4, scale_tmp2)
                    # yield f"vstrw.u32 {scale_tmp2.name()}, [{self._dst},#{-4*32+16}]"
                    yield from self.src.release(cur_idxs[0])

                    yield from next_roots

                    scale_tmp2.free()

                tmp[2].free()

        # If present, do single-layer radix-2 butterflies

        def butterfly_filter(butterfly):
            return ( butterfly.size > 1 and butterfly.radix == [2] )
        butterflies = list(self._iter_butterflies(butterfly_filter))
        load_increment  = [False for _ in range(0,4)]
        store_increment = False

        self.dst = self.src

        for i, butterfly in enumerate(butterflies):

            layer           = butterfly.layer
            cur_idxs        = butterfly.indices
            load_roots      = butterfly.load_roots
            size            = butterfly.size

            # Get next and last butterfly for pipelining optimizations
            # across butterflies.

            if i == len(butterflies) - 1:
                last_butterfly = True
            else:
                last_butterfly = False
                next_idxs = butterflies[i+1].indices

            if i == 0:
                first_butterfly = True
            else:
                first_butterfly = False
                last_idxs = butterflies[i-1].indices

            if load_roots:
                yield from self._load_next_roots_single()

            # Logically, the following needs to be done:
            #
            # 1: c[1] <- c[1] * root (Montgomery)
            # 2: (c[0],c[1]) <- (c[0] + c[1], c[0] - c[1])

            variant = 1
            if variant == 0:

                yield from self.src.load(cur_idxs[0])
                yield from self.src.load(cur_idxs[1])

                yield from tmp[0].alloc()
                montgomery = self.mulmod(self.src.reg(cur_idxs[1]), self.cur_root[0],
                                         self.cur_root_twisted[0], tmp[0].name())
                yield next(montgomery)

                yield next(montgomery)
                yield next(montgomery)

                yield f"vsub.s32 {self.src.reg(cur_idxs[1])}, {self.src.reg(cur_idxs[0])}, {tmp[0].name()}"
                yield f"vadd.s32 {self.src.reg(cur_idxs[0])}, {self.src.reg(cur_idxs[0])}, {tmp[0].name()}"

                yield from self.dst.write_from(cur_idxs[0], self.src.reg(cur_idxs[0]))
                yield from self.dst.write_from(cur_idxs[1], self.src.reg(cur_idxs[1]))

                yield from self.src.release(cur_idxs[0])
                yield from self.src.release(cur_idxs[1])

                tmp[0].free()

            else:

                # Assume that it has been preloaded
                yield from self.src.load(cur_idxs[1])

                yield from tmp[0].alloc()
                montgomery = self.mulmod(self.src.reg(cur_idxs[1]), self.cur_root[0],
                                         self.cur_root_twisted[0], tmp[0].name())
                yield next(montgomery)
                yield from self.src.load(cur_idxs[0])
                yield next(montgomery)
                if not last_butterfly:
                    yield from self.src.load(next_idxs[1])
                yield next(montgomery)

                if not first_butterfly:
                    # Late store from last iteration
                    yield from self.dst.write_from(last_idxs[0], self.src)
                    yield from self.src.release(last_idxs[0])

                yield f"vsub.s32 {self.src.reg(cur_idxs[1])}, {self.src.reg(cur_idxs[0])}, {tmp[0].name()}"
                yield from self.dst.write_from(cur_idxs[1], self.src.reg(cur_idxs[1]))
                yield from self.src.release(cur_idxs[1])
                yield f"vadd.s32 {self.src.reg(cur_idxs[0])}, {self.src.reg(cur_idxs[0])}, {tmp[0].name()}"

                if last_butterfly:
                    yield from self.dst.write_from(cur_idxs[0], self.src.reg(cur_idxs[0]))
                    yield from self.src.release(cur_idxs[0])

                tmp[0].free()

        def butterfly_filter(butterfly):
            return ( butterfly.size == 1 and butterfly.radix == [2,2] )
        last_butterflies = list(self._iter_butterflies(butterfly_filter))
        input = [ core.regs.Reg(self._asm.vregs) for _ in range(0,4) ]

        self.free_roots()

        self.q_inv_u32 = core.regs.Reg(self._asm.gprs, str_name="modulus_inv_u32")
        yield from self.q_inv_u32.alloc()
        yield f".equ modulus_inv, {2**32 - self._inv_mod}"
        yield f"movw {self.q_inv_u32.name()}, #:lower16:modulus_inv"
        yield f"movt {self.q_inv_u32.name()}, #:upper16:modulus_inv"

        for k in range(0, len(last_butterflies), 1):

            if k == 0:
                first_iteration = True
            else:
                first_iteration = False

            if k == len(last_butterflies) - 1:
                last_iteration = True
            else:
                last_iteration = False

            # Our goal will be to free up Q0-Q3 as early as possible in order
            # to be able to preload the inputs for the next iteration, so we'll
            # restrict other vector allocations to the upper half of the vector file.
            def high_half_vreg(x):
                return x in [ f"Q{i}" for i in range(4,8) ]

            if first_iteration:
                for i in range(0,4):
                    yield from input[i].alloc(f"Q{i}")

                yield f"vld40.s32 {{{input[0].name()},{input[1].name()},"      \
                    f"{input[2].name()},{input[3].name()}}}, [{self._src}]"
                yield f"vld41.s32 {{{input[0].name()},{input[1].name()},"      \
                    f"{input[2].name()},{input[3].name()}}}, [{self._src}]"
                yield f"vld42.s32 {{{input[0].name()},{input[1].name()},"      \
                    f"{input[2].name()},{input[3].name()}}}, [{self._src}]"
                yield f"vld43.s32 {{{input[0].name()},{input[1].name()},"      \
                    f"{input[2].name()},{input[3].name()}}}, [{self._src}]!"

                src_offset_from_cur = 64

            # Vector registers to be used for the three bunches of roots of unity, as
            # well as their twisted variants, that we need for the last two iterations.
            r  = [ core.regs.Reg(self._asm.vregs) for _ in range(0,3) ]
            rt = [ core.regs.Reg(self._asm.vregs) for _ in range(0,3) ]

            # Temporaries for use in the Montgomery multiplications
            tmp[0] = core.regs.Reg(self._asm.vregs)
            tmp[1] = core.regs.Reg(self._asm.vregs)
            tmp[2] = core.regs.Reg(self._asm.vregs)
            tmp[3] = core.regs.Reg(self._asm.vregs)

            yield from tmp[0].alloc()
            input_old = {}
            input_old[3] = core.regs.Reg(self._asm.vregs)
            input_old[2] = core.regs.Reg(self._asm.vregs)

            yield from input_old[3].alloc(move=input[3])

            yield from r[0].alloc()
            yield from rt[0].alloc()

            yield from self.load_root_block(r[0].name(), index=0, twisted=False)

            montgomery = self.mulmod(input_old[3].name(), r[0].name(),
                                     rt[0].name(), tmp[0].name())
            yield next(montgomery)

            yield from self.load_root_block(rt[0].name(), index=0, twisted=True)

            yield next(montgomery)
            # Late store? Using 4 (input) + 2 (root) + 1 (tmp) vector registers so far, so one is free
            if not first_iteration:
                yield f"vstrw.s32 {late_store_input2.name()}, [{self._src}, #{32 - src_offset_from_cur - 64}]"
                late_store_input2.free()
            yield next(montgomery)
            input_old[3].free()

            yield from r[1].alloc()

            yield from self.load_root_block(r[1].name(), index=1, twisted=False)

            yield from input_old[2].alloc(move=input[2])
            # Can use root vector as temporary because it's the last time we use it
            yield from tmp[1].alloc(move=r[0])
            montgomery = self.mulmod(input_old[2].name(), tmp[1].name(),
                                     rt[0].name(), tmp[1].name())
            yield next(montgomery)
            # Move input[3] to high-half to have Q0-Q3 free for preloading at the end of the loop
            yield from input[3].alloc(constraint=high_half_vreg)
            yield f"vsub.s32 {input[3].name()}, {input[1].name()}, {tmp[0].name()}"

            yield next(montgomery)
            rt[0].free()

            yield f"vadd.s32 {input[1].name()}, {input[1].name()}, {tmp[0].name()}"
            tmp[0].free()

            yield next(montgomery)
            input_old[2].free()

            # Move input[2] to high-half to have Q0-Q3 free for preloading at the end of the loop
            yield from input[2].alloc(constraint=high_half_vreg)

            yield from rt[1].alloc()

            yield from self.load_root_block(rt[1].name(), index=1, twisted=True)

            # Can use root vector as temporary because we need it only once
            yield from tmp[2].alloc(move=r[1])
            montgomery = self.mulmod(input[1].name(), tmp[2].name(),
                                     rt[1].name(), tmp[2].name())
            yield next(montgomery)

            # Late work from last multiplication, part 1
            yield f"vsub.s32 {input[2].name()}, {input[0].name()}, {tmp[1].name()}"

            yield next(montgomery)
            rt[1].free()

            # Late work from last multiplication, part 2
            yield f"vadd.s32 {input[0].name()}, {input[0].name()}, {tmp[1].name()}"
            tmp[1].free()

            yield next(montgomery)

            # Preload for last Montgomery multiplication
            yield from r[2].alloc(constraint=high_half_vreg)

            yield from self.load_root_block(r[2].name(), index=2, twisted=False)

            yield f"vsub.s32 {input[1].name()}, {input[0].name()}, {tmp[2].name()}"
            yield f"vstrw.s32 {input[1].name()}, [{self._src},#{16 - src_offset_from_cur}]"
            input[1].free()
            yield f"vadd.s32 {input[0].name()}, {input[0].name()}, {tmp[2].name()}"

            yield f"vstrw.s32 {input[0].name()}, [{self._src}, #{0 - src_offset_from_cur}]"
            input[0].free()
            tmp[2].free()

            ### Now we should be able to preload
            if not last_iteration:
                next_input = {}
                for i in range(0,4):
                    next_input[i] = core.regs.Reg(self._asm.vregs)
                    yield from next_input[i].alloc(f"Q{i}")

            yield from rt[2].alloc(constraint=high_half_vreg)
            # Compute rt[2] on the fly
            yield f"vmul.u32 {rt[2].name()}, {r[2].name()}, {self.q_inv_u32.name()}"

            if not last_iteration:
                yield f"vld41.s32 {{{next_input[0].name()},{next_input[1].name()},"      \
                    f"{next_input[2].name()},{next_input[3].name()}}}, [{self._src}]"

            # Can use root vector as temporary because we need it only once
            yield from tmp[3].alloc(move=r[2])
            montgomery = self.mulmod(input[3].name(), tmp[3].name(),
                                     rt[2].name(), tmp[3].name())
            yield next(montgomery)

            if not last_iteration:
                yield f"vld40.s32 {{{next_input[0].name()},{next_input[1].name()},"      \
                    f"{next_input[2].name()},{next_input[3].name()}}}, [{self._src}]"
            yield next(montgomery)
            if not last_iteration:
                yield f"vld42.s32 {{{next_input[0].name()},{next_input[1].name()},"      \
                    f"{next_input[2].name()},{next_input[3].name()}}}, [{self._src}]"
            yield next(montgomery)
            rt[2].free()

            if not last_iteration:
                yield f"vld43.s32 {{{next_input[0].name()},{next_input[1].name()},"      \
                    f"{next_input[2].name()},{next_input[3].name()}}}, [{self._src}]!"
                src_offset_from_cur += 64

            yield f"vsub.s32 {input[3].name()}, {input[2].name()}, {tmp[3].name()}"
            yield f"vstrw.s32 {input[3].name()}, [{self._src}, #{48 - src_offset_from_cur}]"
            input[3].free()
            yield f"vadd.s32 {input[2].name()}, {input[2].name()}, {tmp[3].name()}"
            tmp[3].free()

            if last_iteration:
                yield f"vstrw.s32 {input[2].name()}, [{self._src}, #{32 - src_offset_from_cur}]"
                input[2].free()
            else:
                late_store_input2 = core.regs.Reg(self._asm.vregs)
                yield from late_store_input2.alloc(move=input[2])

            if not last_iteration:
                for i in range(0,4):
                    yield from input[i].alloc(move=next_input[i])

                src_offset_from_cur -= 64

            idxs = last_butterflies[k].indices

        yield from self.q_inv_u32.alloc()

    def core_inverse(self):
        yield from self.init_roots()

        tmp = [ core.regs.Reg(self._asm.vregs) for _ in range(0,4) ]

        if self.iterations == self.log2size:

            self.q_inv_u32 = core.regs.Reg(self._asm.gprs, str_name="modulus_inv_u32")
            yield from self.q_inv_u32.alloc()
            yield f".equ modulus_inv, {2**32 - self._inv_mod}"
            yield f"movw {self.q_inv_u32.name()}, #:lower16:modulus_inv"
            yield f"movt {self.q_inv_u32.name()}, #:upper16:modulus_inv"

            def butterfly_filter(butterfly):
                return ( butterfly.size == 1 and butterfly.radix == [2,2] )
            last_butterflies = list(self._iter_butterflies(butterfly_filter))

            input = [ core.regs.Reg(self._asm.vregs) for _ in range(0,4) ]
            output = [ core.regs.Reg(self._asm.vregs) for _ in range(0,4) ]

            for k in range(0, len(last_butterflies), 1):

                if k == 0:
                    first_iteration = True
                else:
                    first_iteration = False

                if k == len(last_butterflies) - 1:
                    last_iteration = True
                else:
                    last_iteration = False

                # Our goal will be to free up Q0-Q3 as early as possible in order
                # to be able to preload the inputs for the next iteration, so we'll
                # restrict other vector allocations to the upper half of the vector file.
                def high_half_vreg(x):
                    return x in [ f"Q{i}" for i in range(4,8) ]

                # Vector registers to be used for the three bunches of roots of unity, as
                # well as their twisted variants, that we need for the last two iterations.
                r  = [ core.regs.Reg(self._asm.vregs) for _ in range(0,3) ]
                rt = [ core.regs.Reg(self._asm.vregs) for _ in range(0,3) ]

                # Logically, the following needs to be done:
                # 1: (c[0],c[1]) <- (c[0] + c[1], c[0] - c[1])
                # 2: (c[2],c[3]) <- (c[2] + c[3], c[2] - c[3])
                # 3: c[3] <- c[3] * root'' (Montgomery)
                # 4: c[1] <- c[1] * root'  (Montgomery)
                # 5: (c[0],c[2]) <- (c[0] + c[2], c[0] - c[2])
                # 6: (c[1],c[3]) <- (c[1] + c[3], c[1] - c[3])
                # 8: c[2] <- c[2] * root (Montgomery)
                # 7: c[3] <- c[3] * root (Montgomery)

                # c[0]: in --(as)--> in --(as-ext)--> output
                # c[1]: in --(as)--> c1_as --(s)--> output --(as)--> output
                # c[2]: in --(as)--> in --(as-ext)--> c2_as --(s)--> output
                # c[3]: in --(as)--> c3_as --(s)--> c3_as_s --(as)--> c3_as_s_as --(s)--> output

                src_offset_from_cur = 0

                if first_iteration:
                    yield from input[0].alloc(constraint=high_half_vreg)
                    yield f"vldrw.s32 {input[0].name()}, [{self._src},  #0]"
                    yield from input[1].alloc(constraint=high_half_vreg)
                    yield f"vldrw.s32 {input[1].name()}, [{self._src}, #16]"

                # Step 1: (c[0],c[1]) <- (c[0] + c[1], c[0] - c[1])
                # c1_addsub holding c[0]-c[1] for now
                c1_addsub = core.regs.Reg(self._asm.vregs)
                yield from c1_addsub.alloc(constraint=high_half_vreg)
                add_sub = self._add_sub_inv(input[0].name(),
                                            input[1].name(),
                                            c1_addsub.name())
                if not first_iteration:
                    yield f"vst40.s32 {{{output[0].name()},{output[1].name()},"      \
                        f"{output[2].name()},{output[3].name()}}}, [{self._src}]"

                yield next(add_sub)

                if not first_iteration:
                    yield f"vst43.s32 {{{output[0].name()},{output[1].name()},"      \
                        f"{output[2].name()},{output[3].name()}}}, [{self._src}]"


                yield next(add_sub)
                input[1].free()


                # Step 4: c[1] <- c[1] * root' (Montgomery)
                c1_scaled = core.regs.Reg(self._asm.vregs)
                yield from c1_scaled.alloc(constraint=high_half_vreg)
                r1_tmp = c1_scaled.name()
                yield from self.load_root_block(r1_tmp, index=1, twisted=False)
                montgomery = self.montgomery_safe_overwrite_root_compute_twisted(c1_addsub,
                                                            rt[1],
                                                            c1_scaled)
                yield from rt[1].alloc(constraint=high_half_vreg)
                yield next(montgomery)
                if not first_iteration:
                    yield f"vst42.s32 {{{output[0].name()},{output[1].name()},"      \
                        f"{output[2].name()},{output[3].name()}}}, [{self._src}]"
                yield next(montgomery)
                if not first_iteration:
                    yield f"vst41.s32 {{{output[0].name()},{output[1].name()},"      \
                        f"{output[2].name()},{output[3].name()}}}, [{self._src}]!"
                    output[0].free()
                    output[1].free()
                    output[2].free()
                    output[3].free()
                yield next(montgomery)
                rt[1].free()

                yield from input[2].alloc(constraint=high_half_vreg)
                yield f"vldrw.s32 {input[2].name()}, [{self._src}, #32]"

                yield next(montgomery)
                c1_addsub.free()

                yield from input[3].alloc()
                yield f"vldrw.s32 {input[3].name()}, [{self._src}, #48]"
                # Step 2: (c[2],c[3]) <- (c[2] + c[3], c[2] - c[3])
                # c3_addsub holding c[2]-c[3] for now
                c3_addsub = core.regs.Reg(self._asm.vregs)
                yield from c3_addsub.alloc(constraint=lambda x: x not in ["Q0"])
                add_sub = self._add_sub_inv(input[2].name(),
                                            input[3].name(),
                                            c3_addsub.name())
                yield next(add_sub)

                # Step 3: c[3] <- c[3] * root'' (Montgomery)
                c3_addsub_scale = core.regs.Reg(self._asm.vregs)
                yield from c3_addsub_scale.alloc(constraint=lambda x: x not in ["Q0", "Q2", "Q3"])
                montgomery = self.montgomery_safe(c3_addsub,
                                             r[2],
                                             rt[2],
                                             c3_addsub_scale)

                # Step 5: (c[0],c[2]) <- (c[0] + c[2], c[0] - c[2])
                yield from r[2].alloc()
                yield from self.load_root_block(r[2].name(), index=2, twisted=False)

                yield next(add_sub)
                input[3].free()

                yield next(montgomery)
                r[2].free()

                yield from output[0].alloc("Q0")
                c2_addsub = core.regs.Reg(self._asm.vregs)
                yield from c2_addsub.alloc(constraint=lambda x: x not in ["Q1","Q2"])
                add_sub = self._add_sub_inv_ext(input[0].name(),
                                                input[2].name(),
                                                c2_addsub.name(),
                                                output[0].name())
                yield next(add_sub)
                yield from rt[2].alloc()
                yield from self.load_root_block(rt[2].name(), index=2, twisted=True)
                yield next(montgomery)
                rt[2].free()
                yield next(add_sub)
                ### c[0] ready here
                yield next(montgomery)
                c3_addsub.free()
                input[0].free()
                input[2].free()

                # Step 8: c[2] <- c[2] * root (Montgomery)
                yield from output[2].alloc("Q2")
                montgomery = self.montgomery_safe(c2_addsub,
                                             r[0],
                                             rt[0],
                                             output[2])

                # Step 6: (c[1],c[3]) <- (c[1] + c[3], c[1] - c[3])
                c3_addsub_scale_addsub = core.regs.Reg(self._asm.vregs)
                yield from c3_addsub_scale_addsub.alloc(constraint=high_half_vreg)
                yield from output[1].alloc("Q1")
                add_sub = self._add_sub_inv_ext(c1_scaled.name(),
                                                c3_addsub_scale.name(),
                                                c3_addsub_scale_addsub.name(),
                                                output[1].name())

                yield from r[0].alloc(constraint=lambda x: x not in ["Q1", "Q2","Q3"])
                yield from self.load_root_block(r[0].name(), index=0, twisted=False)
                yield next(add_sub)
                yield next(montgomery)

                yield next(add_sub)
                c1_scaled.free()

                yield from rt[0].alloc(constraint=lambda x: x not in ["Q1", "Q2","Q3"])
                yield from self.load_root_block(rt[0].name(), index=0, twisted=True)
                yield next(montgomery)
                yield next(montgomery)

                c2_addsub.free()
                c3_addsub_scale.free()

                # Step 7: c[3] <- c[3] * root (Montgomery)
                yield from output[3].alloc("Q3")
                montgomery = self.mulmod(c3_addsub_scale_addsub.name(),
                                         r[0].name(),
                                         rt[0].name(),
                                         output[3].name())

                yield next(montgomery)
                r[0].free()
                if not last_iteration:
                    yield from input[0].alloc(constraint=high_half_vreg)
                    yield f"vldrw.s32 {input[0].name()}, [{self._src},  #(64+0)]"
                yield next(montgomery)
                rt[0].free()
                if not last_iteration:
                    yield from input[1].alloc(constraint=high_half_vreg)
                    yield f"vldrw.s32 {input[1].name()}, [{self._src}, #(64+16)]"
                yield next(montgomery)
                c3_addsub_scale_addsub.free()

                if last_iteration:
                    yield f"vst40.s32 {{{output[0].name()},{output[1].name()},"      \
                        f"{output[2].name()},{output[3].name()}}}, [{self._src}]"
                    yield f"vst41.s32 {{{output[0].name()},{output[1].name()},"      \
                        f"{output[2].name()},{output[3].name()}}}, [{self._src}]"
                    yield f"vst42.s32 {{{output[0].name()},{output[1].name()},"      \
                        f"{output[2].name()},{output[3].name()}}}, [{self._src}]"
                    yield f"vst43.s32 {{{output[0].name()},{output[1].name()},"      \
                        f"{output[2].name()},{output[3].name()}}}, [{self._src}]!"
                    output[0].free()
                    output[1].free()
                    output[2].free()
                    output[3].free()

            self.q_inv_u32.free()
            yield f"sub {self._src}, {self._src}, #1024"

        def butterfly_filter(butterfly):
            return ( butterfly.size > 1 and butterfly.radix == [2,2] )
        butterflies = list(self._iter_butterflies(butterfly_filter))

        for i in range(0, len(butterflies)):

            butterfly = butterflies[i]
            cur_idxs        = butterfly.indices
            load_roots      = butterfly.load_roots
            with_extra_root = butterfly.use_extra_root
            size            = butterfly.size

            # Get next and last butterfly for pipelining optimizations
            # across butterflies.

            if i == len(butterflies) - 1:
                last_butterfly = True
            else:
                last_butterfly = False
                next_idxs = butterflies[i+1].indices

            if i == 0:
                first_butterfly = True
            else:
                first_butterfly = False
                last_idxs = butterflies[i-1].indices

            # For the last layer, we may want to merge the central
            # reduction into the operation

            if size == 64 and cur_idxs[0] == 0:
                # Add Barrett reductions

                # Temporarily free GPRs holding twiddles
                self.free_roots()

                yield from self.src.write_back(last_idxs[3])
                yield from self.src.release(last_idxs[3])

                yield from self.src.release(cur_idxs[0])
                yield from self.src.release(cur_idxs[1])
                yield from self.src.release(cur_idxs[2])
                yield from self.src.release(cur_idxs[3])

                first_butterfly = True

                def even_gpr(x):
                    return x in [ f"r{i}" for i in range(0,15,2) ]

                const_zero = core.regs.Reg(self._asm.gprs)
                yield from const_zero.alloc(constraint=even_gpr)
                yield f"mov {const_zero.name()}, #0"

                # Even rounding
                const_barrett_val = math.floor(2**32 / self._modulus) // 2
                const_barrett = core.regs.Reg(self._asm.gprs)
                yield from const_barrett.alloc()
                yield f".equ const_barrett, {const_barrett_val}"
                yield f"movw {const_barrett.name()}, #:lower16:const_barrett"
                yield f"movt {const_barrett.name()}, #:upper16:const_barrett"

                offset_vreg = core.regs.Reg(self._asm.vregs)
                yield from offset_vreg.alloc()

                # Setup [0,1,2,3]
                yield f"vidup.u32 {offset_vreg.name()}, {const_zero.name()}, #1"
                # Shift to get [0,16,32,48]
                # yield f"vshl.u32 {offset_vreg.name()}, {offset_vreg.name()}, #4"
                # Shift to get [0,64,128,192]
                yield f"vshl.u32 {offset_vreg.name()}, {offset_vreg.name()}, #6"

                # Load values to be reduced
                vals = core.regs.Reg(self._asm.vregs)
                yield from vals.alloc()
                t = core.regs.Reg(self._asm.vregs)
                yield from t.alloc()

                yield f"vldrw.32 {vals.name()}, [{self._src}, {offset_vreg.name()}, UXTW #2]"
                yield f"vqrdmulh.s32 {t.name()}, {vals.name()}, {const_barrett.name()}"
                yield f"neg {self.q.name()}, {self.q.name()}"
                yield f"vmla.s32 {vals.name()}, {t.name()}, {self.q.name()}"
                yield f"neg {self.q.name()}, {self.q.name()}"
                yield f"vstrw.32 {vals.name()}, [{self._src}, {offset_vreg.name()}, UXTW #2]"

                # # [128, 160, 192, 224]
                # yield f"mov {const_zero.name()}, #64"
                # yield f"vadd.u32 {offset_vreg.name()}, {offset_vreg.name()}, {const_zero.name()}"

                # yield f"vldrw.u32 {vals.name()}, [{self._src}, {offset_vreg.name()}, UXTW #2]"
                # yield f"vqrdmulh.s32 {t.name()}, {vals.name()}, {const_barrett.name()}"
                # yield f"neg {self.q.name()}, {self.q.name()}"
                # yield f"vmla.s32 {vals.name()}, {t.name()}, {self.q.name()}"
                # yield f"neg {self.q.name()}, {self.q.name()}"
                # yield f"vstrw.u32 {vals.name()}, [{self._src}, {offset_vreg.name()}, UXTW #2]"

                # yield f"mov {const_zero.name()}, #64"
                # yield f"vadd.u32 {offset_vreg.name()}, {offset_vreg.name()}, {const_zero.name()}"

                # yield f"vldrw.u32 {vals.name()}, [{self._src}, {offset_vreg.name()}, UXTW #2]"
                # yield f"vqrdmulh.s32 {t.name()}, {vals.name()}, {const_barrett.name()}"
                # yield f"neg {self.q.name()}, {self.q.name()}"
                # yield f"vmla.s32 {vals.name()}, {t.name()}, {self.q.name()}"
                # yield f"neg {self.q.name()}, {self.q.name()}"
                # yield f"vstrw.u32 {vals.name()}, [{self._src}, {offset_vreg.name()}, UXTW #2]"


                # yield f"mov {const_zero.name()}, #64"
                # yield f"vadd.u32 {offset_vreg.name()}, {offset_vreg.name()}, {const_zero.name()}"

                # yield f"vldrw.u32 {vals.name()}, [{self._src}, {offset_vreg.name()}, UXTW #2]"
                # yield f"vqrdmulh.s32 {t.name()}, {vals.name()}, {const_barrett.name()}"
                # yield f"neg {self.q.name()}, {self.q.name()}"
                # yield f"vmla.s32 {vals.name()}, {t.name()}, {self.q.name()}"
                # yield f"neg {self.q.name()}, {self.q.name()}"
                # yield f"vstrw.u32 {vals.name()}, [{self._src}, {offset_vreg.name()}, UXTW #2]"


                const_zero.free()
                const_barrett.free()
                vals.free()
                t.free()
                offset_vreg.free()

                yield from self.alloc_roots()

            if load_roots:
                yield from self._load_next_roots(with_extra_root)

            if size == 64:

                def central_reduce(idx, reg=None):
                    if reg==None:
                        reg = self.src.reg(cur_idxs[idx])
                    yield f"vshr.s32 {reg}, {reg}, #1"
                    yield f"vpt.s32 LT, {reg}, {const_zero.name()}\n"   \
                          f"vaddt.s32 {reg}, {reg}, {self.q.name()}\n"  \
                          f"vpt.s32 GE, {reg}, {const_q_half.name()}\n" \
                          f"vsubt.s32 {reg}, {reg}, {self.q.name()}"

                # We don't need the root base GPRs anymore
                if cur_idxs[0] == 0:

                    assert cur_idxs[1] == 64
                    assert cur_idxs[2] == 128
                    assert cur_idxs[3] == 192

                    self._root_base.free()

                    exp = self.inverse_scaling + 32 - self.iterations

                    pow_2_n_mod_q = (2**exp) % self._modulus
                    if pow_2_n_mod_q % 2 == 0:
                        pow_2_n_mod_q += self._modulus
                    pow_2_n_mod_q_twisted = self._twist_root(pow_2_n_mod_q)

                    const_zero = core.regs.Reg(self._asm.gprs)
                    yield from const_zero.alloc()
                    yield f"mov {const_zero.name()}, #0"

                    const_q_half = core.regs.Reg(self._asm.gprs)
                    yield from const_q_half.alloc()
                    yield f".equ q_half, {self._modulus // 2}"
                    yield f"movw {const_q_half.name()}, #:lower16:q_half"
                    yield f"movt {const_q_half.name()}, #:upper16:q_half"

                    const_one = core.regs.Reg(self._asm.gprs)
                    yield from const_one.alloc()
                    const_one_twisted = core.regs.Reg(self._asm.gprs)
                    yield from const_one_twisted.alloc()

                    yield f".equ pow_2_n_mod_q, {pow_2_n_mod_q}"
                    yield f"movw {const_one.name()}, #:lower16:pow_2_n_mod_q"
                    yield f"movt {const_one.name()}, #:upper16:pow_2_n_mod_q"

                    yield f".equ pow_2_n_mod_q_twisted, {pow_2_n_mod_q_twisted}"
                    yield f"movw {const_one_twisted.name()}, #:lower16:pow_2_n_mod_q_twisted"
                    yield f"movt {const_one_twisted.name()}, #:upper16:pow_2_n_mod_q_twisted"

                    last_creduce = None
                    last_mont = None

                else:
                    # Not the first iteration
                    last_creduce = central_reduce(3, reg=self.src.reg(last_idxs[3]))

                # Logically, the following needs to be done:
                # 1: (c[0],c[1]) <- (c[0] + c[1], c[0] - c[1])
                # 2: (c[2],c[3]) <- (c[2] + c[3], c[2] - c[3])
                # 4: c[1] <- c[1] * root' (Montgomery)
                # 3: c[3] <- c[3] * root' (Montgomery)
                # 5: (c[0],c[2]) <- (c[0] + c[2], c[0] - c[2])
                # 6: (c[1],c[3]) <- (c[1] + c[3], c[1] - c[3])
                # 8: c[2] <- c[2] * root (Montgomery)
                # 7: c[3] <- c[3] * root (Montgomery)

                yield from self.src.load(cur_idxs[0])
                yield from self.src.load(cur_idxs[1])
                # Step 1: (c[0],c[1]) <- (c[0] + c[1], c[0] - c[1])
                # c1_tmp holding c[0]-c[1] for now
                c1_tmp = core.regs.Reg(self._asm.vregs)
                yield from c1_tmp.alloc()
                add_sub = self._add_sub_inv(self.src.reg(cur_idxs[0]),
                                            self.src.reg(cur_idxs[1]),
                                            c1_tmp.name())

                yield next(add_sub)
                yield from self.src.load(cur_idxs[2])
                if last_mont != None:
                    yield last_mont
                yield next(add_sub)
                yield from self.src.load(cur_idxs[3])

                # Step 4: c[1] <- c[1] * root' (Montgomery)
                montgomery = self.mulmod(c1_tmp.name(),
                                         self.cur_root[1],
                                         self.cur_root_twisted[1],
                                         self.src.reg(cur_idxs[1]))

                # Step 2: (c[2],c[3]) <- (c[2] + c[3], c[2] - c[3])
                # c3_tmp holding c[2]-c[3] for now
                c3_tmp = core.regs.Reg(self._asm.vregs)
                yield from c3_tmp.alloc()
                add_sub = self._add_sub_inv(self.src.reg(cur_idxs[2]),
                                            self.src.reg(cur_idxs[3]),
                                            c3_tmp.name())
                yield next(montgomery)
                yield next(add_sub)
                yield next(montgomery)
                yield next(add_sub)
                yield next(montgomery)
                c1_tmp.free()

                if not first_butterfly:
                    # Late store from last iteration
                    if last_creduce != None:
                        yield from last_creduce
                    yield from self.src.write_back(last_idxs[3])
                    yield from self.src.release(last_idxs[3])

                # Step 3: c[3] <- c[3] * root' (Montgomery)
                montgomery = self.mulmod(c3_tmp.name(),
                                         self.cur_root[2],
                                         self.cur_root_twisted[2],
                                         self.src.reg(cur_idxs[3]))

                # Step 5: (c[0],c[2]) <- (c[0] + c[2], c[0] - c[2])
                # c[2] in tmp[0] now
                c2_tmp = core.regs.Reg(self._asm.vregs)
                yield from c2_tmp.alloc()
                add_sub = self._add_sub_inv(self.src.reg(cur_idxs[0]),
                                            self.src.reg(cur_idxs[2]),
                                            c2_tmp.name())
                yield next(montgomery)
                yield next(add_sub)
                yield next(montgomery)
                yield next(add_sub)
                yield next(montgomery)
                c3_tmp.free()

                if not last_butterfly:
                    # Preload for the next iteration
                    yield from self.src.load(next_idxs[0])

                # Step 6: (c[1],c[3]) <- (c[1] + c[3], c[1] - c[3])
                c3_tmp = core.regs.Reg(self._asm.vregs)
                yield from c3_tmp.alloc()
                add_sub = self._add_sub_inv(self.src.reg(cur_idxs[1]),
                                            self.src.reg(cur_idxs[3]),
                                            c3_tmp.name())

                # Step 8: c[2] <- c[2] * root (Montgomery)
                montgomery = self.mulmod(c2_tmp.name(),
                                         self.cur_root[3],
                                         self.cur_root_twisted[3],
                                         self.src.reg(cur_idxs[2]))
                yield next(montgomery)
                yield next(add_sub)
                yield next(montgomery)
                yield next(add_sub)
                yield next(montgomery)
                c2_tmp.free()

                # Scaling for c[0]
                c0_scaled = core.regs.Reg(self._asm.vregs)
                yield from c0_scaled.alloc()
                montgomery = self.mulmod(self.src.reg(cur_idxs[0]),
                                         const_one.name(),
                                         const_one_twisted.name(),
                                         c0_scaled.name())
                # Central reduction for c[2]
                creduce = central_reduce(2)

                if not last_butterfly:
                    # Preload for the next iteration
                    yield from self.src.load(next_idxs[1])

                yield next(montgomery)
                yield from creduce
                yield next(montgomery)
                yield from self.src.write_back(cur_idxs[2])
                yield from self.src.release(cur_idxs[2])
                yield next(montgomery)
                yield from self.src.release(cur_idxs[0])

                # Scaling for c[1]
                c1_scaled = core.regs.Reg(self._asm.vregs)
                yield from c1_scaled.alloc()
                montgomery = self.mulmod(self.src.reg(cur_idxs[1]),
                                         const_one.name(),
                                         const_one_twisted.name(),
                                         c1_scaled.name())

                # Central reduction for c[0]
                creduce = central_reduce(0, reg=c0_scaled.name())
                yield next(montgomery)
                yield from creduce
                yield next(montgomery)

                if not last_butterfly:
                    # Preload for the next iteration
                    yield from self.src.load(next_idxs[2])

                yield next(montgomery)
                yield from self.src.write_from(cur_idxs[0], c0_scaled)
                yield from self.src.release(cur_idxs[0])
                c0_scaled.free()

                # Step 7: c[3] <- c[3] * root (Montgomery)
                montgomery = self.mulmod(c3_tmp.name(),
                                         self.cur_root[0],
                                         self.cur_root_twisted[0],
                                         self.src.reg(cur_idxs[3]))
                # Central reduction for c[1]
                creduce = central_reduce(1, reg=c1_scaled.name())
                yield next(montgomery)
                yield from creduce
                yield next(montgomery)
                yield from self.src.write_from(cur_idxs[1], c1_scaled)
                yield from self.src.release(cur_idxs[1])
                c1_scaled.free()
                last_mont = next(montgomery)
                c3_tmp.free()

                if last_butterfly:
                    yield last_mont
                    yield from central_reduce(3)
                    yield from self.src.write_back(cur_idxs[3])
                    yield from self.src.release(cur_idxs[3])

            else:

                yield from tmp[0].alloc()
                yield from tmp[1].alloc()

                last_creduce = None

                # Logically, the following needs to be done:
                # 1: (c[0],c[1]) <- (c[0] + c[1], c[0] - c[1])
                # 2: (c[2],c[3]) <- (c[2] + c[3], c[2] - c[3])
                # 4: c[1] <- c[1] * root' (Montgomery)
                # 3: c[3] <- c[3] * root' (Montgomery)
                # 5: (c[0],c[2]) <- (c[0] + c[2], c[0] - c[2])
                # 6: (c[1],c[3]) <- (c[1] + c[3], c[1] - c[3])
                # 8: c[2] <- c[2] * root (Montgomery)
                # 7: c[3] <- c[3] * root (Montgomery)

                yield from self.src.load(cur_idxs[0])
                yield from self.src.load(cur_idxs[1])
                # Step 1: (c[0],c[1]) <- (c[0] + c[1], c[0] - c[1])
                # tmp[0] holding c[0]-c[1] for now
                add_sub = self._add_sub_inv(self.src.reg(cur_idxs[0]),
                                            self.src.reg(cur_idxs[1]),
                                            tmp[0].name())

                yield next(add_sub)
                yield from self.src.load(cur_idxs[2])
                yield next(add_sub)
                yield from self.src.load(cur_idxs[3])

                # Step 4: c[1] <- c[1] * root' (Montgomery)
                montgomery = self.mulmod(tmp[0].name(),
                                         self.cur_root[1],
                                         self.cur_root_twisted[1],
                                         self.src.reg(cur_idxs[1]))

                # Step 2: (c[2],c[3]) <- (c[2] + c[3], c[2] - c[3])
                # tmp[1] holding c[2]-c[3] for now
                add_sub = self._add_sub_inv(self.src.reg(cur_idxs[2]),
                                            self.src.reg(cur_idxs[3]),
                                            tmp[1].name())
                yield next(montgomery)
                yield next(add_sub)
                yield next(montgomery)
                yield next(add_sub)
                yield next(montgomery)

                if not first_butterfly:
                    # Late store from last iteration
                    yield from self.src.write_back(last_idxs[3])
                    yield from self.src.release(last_idxs[3])

                # Step 3: c[3] <- c[3] * root' (Montgomery)
                montgomery = self.mulmod(tmp[1].name(),
                                         self.cur_root[2],
                                         self.cur_root_twisted[2],
                                         self.src.reg(cur_idxs[3]))

                # Step 5: (c[0],c[2]) <- (c[0] + c[2], c[0] - c[2])
                add_sub = self._add_sub_inv(self.src.reg(cur_idxs[0]),
                                            self.src.reg(cur_idxs[2]),
                                            tmp[0].name())
                yield next(montgomery)
                yield next(add_sub)
                yield next(montgomery)
                yield next(add_sub)
                yield next(montgomery)

                if not last_butterfly:
                    # Preload for the next iteration
                    yield from self.src.load(next_idxs[0])

                # Step 6: (c[1],c[3]) <- (c[1] + c[3], c[1] - c[3])
                add_sub = self._add_sub_inv(self.src.reg(cur_idxs[1]),
                                            self.src.reg(cur_idxs[3]),
                                            tmp[1].name())
                # Step 8: c[2] <- c[2] * root (Montgomery)
                montgomery = self.mulmod(tmp[0].name(),
                                         self.cur_root[3],
                                         self.cur_root_twisted[3],
                                         self.src.reg(cur_idxs[2]))
                yield next(montgomery)
                yield next(add_sub)
                yield next(montgomery)
                if not last_butterfly:
                    # Preload for the next iteration
                    yield from self.src.load(next_idxs[1])
                yield next(add_sub)
                yield next(montgomery)

                yield from self.src.write_back(cur_idxs[2])
                yield from self.src.release(cur_idxs[2])

                # Step 7: c[3] <- c[3] * root (Montgomery)
                montgomery = self.mulmod(tmp[1].name(),
                                         self.cur_root[0],
                                         self.cur_root_twisted[0],
                                         self.src.reg(cur_idxs[3]))
                yield next(montgomery)
                yield from self.src.write_back(cur_idxs[0])
                yield from self.src.release(cur_idxs[0])
                yield next(montgomery)
                yield from self.src.write_back(cur_idxs[1])
                yield from self.src.release(cur_idxs[1])
                yield next(montgomery)

                if last_butterfly:
                    yield from self.src.write_back(cur_idxs[3])
                    yield from self.src.release(cur_idxs[3])

                tmp[0].free()
                tmp[1].free()

        self.free_roots()

    def core(self):

        if self.inverse:
            yield from self.core_inverse()
        else:
            yield from self.core_forward()

        if self.print_bounds:

            b = self.init_bound
            yield  "//"
            yield f"// init bound: {(b/self._modulus):1.3}q, 2**{(math.log(b,2)):2.5}))"

            for idx in range(0,self._size,4):
                b = self.bounds[idx]
                yield f"// bound on NTT[{idx:3}-{idx+3:3}]: {(b/self._modulus):1.3}q, 2**{(math.log(b,2)):2.5}))"

                mb = max(self.bounds)
                yield  "//"
                yield f"// max bound: {(mb/self._modulus):1.3}q, 2**{(math.log(mb,2)):2.5}))"

    def standalone(self,funcname):

        #
        # Preamble
        #

        yield from core.asm.Snippets.license()
        yield from core.asm.Snippets.autogen_warning()

        self.funcname = funcname

        if self._use_goods_permutation and not self._bitreversed:
            yield from self.heavy_twiddles()

        yield from self.roots_of_unity()

        if self.roots_only:
            return

        yield ".text"

        if self._rev4:
            yield f"rev4: .byte 3*4"
            yield f"      .byte 2*4"
            yield f"      .byte 1*4"
            yield f"      .byte 0*4"

        yield ".align 4"
        yield f"roots_addr: .word {self.roots_array_name}"

        yield from core.asm.Snippets.function_decl(funcname)
        yield from core.asm.Snippets.function_header(funcname)
        yield from core.asm.Snippets.save_gprs()
        yield from core.asm.Snippets.save_vregs()

        self.src_gpr = core.regs.Reg(self._asm.gprs, str_name="src")
        yield from self.src_gpr.alloc(self._src)

        if self._rev4:
            self.qoff = core.regs.Reg(self._asm.vregs)
            addr = core.regs.Reg(self._asm.gprs)
            yield from self.qoff.alloc()
            yield from addr.alloc("r4")
            yield f"adr {addr.name()}, rev4"
            yield f"vldrb.u32 {self.qoff.name()}, [{addr.name()}]"
            yield f"vadd.u32 {self.qoff.name()}, {self.qoff.name()}, {self.src_gpr.name()}"
            addr.free()

        if self.precompute or self.external:
            self.dst_gpr = core.regs.Reg(self._asm.gprs, str_name="dst")
            yield from self.dst_gpr.alloc(self._dst)

        if self._use_goods_permutation and self.external:

            size = self._size * 4
            if self.half_input:
                size = size // 2

            self.src_markers = core.markers.ReadWriteMarkers(self._asm,
                                                             size, 32,
                                                             self._src,
                                                             initial_shift=0,
                                                             marker_bases=[0,self._size_d3, 2*self._size_d3])
            yield from self.src_markers.alloc_registers_for_markers()
            self.src = mve.rw.ReadWriteVector(self._asm,
                                              self.src_markers.get_shifted_marker_list(0),
                                              32, name="input")

            self.dst_markers = core.markers.ReadWriteMarkers(self._asm,
                                                             self._size * 4, 32,
                                                             self._dst,
                                                             initial_shift=0)
            yield from self.dst_markers.alloc_registers_for_markers()
            self.dst = mve.rw.ReadWriteVector(self._asm,
                                              self.dst_markers.get_shifted_marker_list(0),
                                              32, name="output")

        else:

            self.markers = core.markers.ReadWriteMarkers(self._asm,
                                                         self._size * 4, 32,
                                                         self._src,
                                                         initial_shift=0)
            yield from self.markers.alloc_registers_for_markers()
            self.src = mve.rw.ReadWriteVector(self._asm,
                                              self.markers.get_shifted_marker_list(0),
                                              32, name="input")
            self.dst = self.src

        yield from self.prepare_constants()
        yield from self.core()

        if self._use_goods_permutation and self.external:
            yield from self.dst_markers.free_registers_for_markers()
        else:
            yield from self.markers.free_registers_for_markers()

        self.free_constants()
        self.src_gpr.free()

        if self.precompute:
            self.dst_gpr.free()

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
