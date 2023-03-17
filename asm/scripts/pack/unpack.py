import core
import core.asm
import core.rw
import mve
import mve.regs
import mve.rw

import math

class WordUnpack():

    def __init__(self,input_size_bits,bits_per_word,symbol,output_words=None,src="r1",dst="r0",base=None):

        self.bits_per_word = bits_per_word
        self.funcname = symbol
        self._src = src
        self._dst = dst


        self.input_size_bytes = input_size_bits // 8
        self.input_size_bits = input_size_bits

        if output_words == None:
            self.unpacked_words = math.ceil(self.input_size_bits / bits_per_word)
        else:
            self.unpacked_words = output_words

        self.packed_words = self.input_size_bytes // 4
        self.packed_words_per_lane = (self.packed_words)//4
        self.unpacked_words_per_lane = self.unpacked_words   // 4

        if self.unpacked_words % 4 != 0:
            raise Exception(f"Unsupported length of packed input: {self.unpacked_words} words")

        if not base:
            self.asm = mve.regs.Allocator()
        else:
            self.asm = base

    def unpack_(self):

        #
        # Preamble
        #

        yield from core.asm.Snippets.autogen_warning()
        yield from core.asm.Snippets.function_decl(self.funcname)
        yield from core.asm.Snippets.function_header(self.funcname)
        yield from core.asm.Snippets.save_gprs()
        yield from core.asm.Snippets.save_vregs()

        src = core.regs.Reg(self.asm.gprs, str_name="src")
        dst = core.regs.Reg(self.asm.gprs, str_name="dst")

        yield from src.alloc(self._src)
        yield from dst.alloc(self._dst)

        bit_position = 0
        # The number of bits we have already accumulated for the next word
        bit_buffer = 0
        bits_per_word = self.bits_per_word

        constants = [ 0, self.packed_words_per_lane, self.unpacked_words_per_lane ]
        gpr_const = {}
        for c in constants:
            gpr_const[c] = core.regs.Reg(self.asm.gprs, str_name="const({c})")
            yield from gpr_const[c].alloc()
            yield f"movs {gpr_const[c].name()}, #{c}"
        yield ".align 2"

        # Setup offset register for gather load
        yield f"// Setup offset register for gather load"
        vgather = core.regs.Reg(self.asm.vregs, str_name="gather")
        yield from vgather.alloc()
        yield f"// {vgather.name()} <- {list(range(0,4))}"
        yield f"vidup.u32 {vgather.name()}, {gpr_const[0].name()}, #1"
        yield f"// {vgather.name()} <- {[i*self.packed_words_per_lane for i in range(0,4)]}"
        yield f"vmul.u32 {vgather.name()}, {vgather.name()}, {gpr_const[self.packed_words_per_lane].name()}"

        vmask = core.regs.Reg(self.asm.vregs, str_name="mask")
        gpr_mask = core.regs.Reg(self.asm.gprs)
        yield from gpr_mask.alloc()
        yield from vmask.alloc()
        yield f"mov {gpr_mask.name()}, #1"
        yield f"mov {gpr_mask.name()}, {gpr_mask.name()}, LSL #{self.bits_per_word}"
        yield f"sub {gpr_mask.name()}, {gpr_mask.name()}, #1"
        yield f"vdup.u32 {vmask.name()}, {gpr_mask.name()}"

        # Setup offset register for scatter store
        yield f"// Setup offset register for scatter store"
        vscatter = core.regs.Reg(self.asm.vregs, str_name="scatter")
        yield from vscatter.alloc()
        yield f"mov {gpr_const[0].name()}, #0"
        yield f"// {vscatter.name()} <- {list(range(0,4))}"
        yield f"vidup.u32 {vscatter.name()}, {gpr_const[0].name()}, #1"
        yield f"// {vscatter.name()} <- {[i*self.unpacked_words_per_lane for i in range(0,4)]}"
        yield f"vmul.u32 {vscatter.name()}, {vscatter.name()}, {gpr_const[self.unpacked_words_per_lane].name()}"

        vbuffer = core.regs.Reg(self.asm.vregs, str_name="buffer")
        yield from vbuffer.alloc()
        vinput = core.regs.Reg(self.asm.vregs, str_name="input")
        yield from vinput.alloc()
        vinput_shifted = core.regs.Reg(self.asm.vregs, str_name="input_shifted")
        yield from vinput_shifted.alloc()

        yield f"// {self.input_size_bytes // 4} packed words in total, {self.packed_words_per_lane} per lane"
        yield f"// {self.unpacked_words} unpacked words in total"
        for i in range(0,self.packed_words_per_lane):

            yield f"// Load bits X into {vinput.name()}"
            yield f"vldrw.u32 {vinput.name()}, [{src.name()}, {vgather.name()}, UXTW #2]"

            bits_eaten = self.bits_per_word - bit_buffer

            if bit_buffer == 0:
                bit_buffer = 32 - self.bits_per_word
                yield f"// No bits previously buffered, store input into destination directly (incl. excess bits)"
                yield f"vand.u32 {vbuffer.name()}, {vinput.name()}, {vmask.name()}"
                yield f"vstrw.32 {vbuffer.name()}, [{dst.name()}, {vscatter.name()}, UXTW #2]"
                yield f"// Remember {bit_buffer} bits for next iteration"
                yield f"vshr.u32 {vbuffer.name()}, {vinput.name()}, #({bits_eaten})"
                yield f"adds.n {dst.name()}, #4"
                yield f"adds.n {src.name()}, #4"
                continue

            # If we have some data for the next word buffered, combine it with
            # the current input vector, which needs to be shifted.
            yield f"// Have {bit_buffer} buffered in {vbuffer.name()}, combine with {vinput.name()}"
            yield f"vsli.u32 {vbuffer.name()}, {vinput.name()}, #({bit_buffer})"
            yield f"vand.u32 {vbuffer.name()}, {vbuffer.name()}, {vmask.name()}"
            yield f"vstrw.32 {vbuffer.name()}, [{dst.name()}, {vscatter.name()}, UXTW #2]"
            yield f"// Remember {bit_buffer} bits from current input"
            yield f"vshr.u32 {vbuffer.name()}, {vinput.name()}, #{bits_eaten}"
            yield f"adds.n {dst.name()}, #4"

            bit_buffer = 32 - bits_eaten

            # It may happen that after completing the last word, we actually
            # already have the full next word in the current input vector:
            # For example, if we only needed 1 remaining bit to complete the
            # last word, then 31 bits of input remain, which gives the entire
            # next word.

            while bit_buffer >= self.bits_per_word:
                yield f"// Enough data remaining to complete next word"
                yield f"vand.u32 {vinput.name()}, {vbuffer.name()}, {vmask.name()}"
                yield f"vstrw.32 {vinput.name()}, [{dst.name()}, {vscatter.name()}, UXTW #2]"
                bits_eaten = self.bits_per_word
                yield f"// {bits_eaten} bits processed, shift them away"
                yield f"// {bit_buffer} bits remaining in current input"
                yield f"vshr.u32 {vbuffer.name()}, {vbuffer.name()}, #({bits_eaten})"
                yield f"adds.n {dst.name()}, #4"
                bit_buffer -= self.bits_per_word

            yield f"adds.n {src.name()}, #4"

        for const_reg in gpr_const.values():
            const_reg.free()

        src.free()
        dst.free()

        #
        # Wrapup
        #

        yield from core.asm.Snippets.restore_vregs()
        yield from core.asm.Snippets.restore_gprs()
        yield from core.asm.Snippets.function_footer()

    def unpack(self):

        #
        # Preamble
        #

        yield from core.asm.Snippets.autogen_warning()
        yield from core.asm.Snippets.function_decl(self.funcname)
        yield from core.asm.Snippets.function_header(self.funcname)
        yield from core.asm.Snippets.save_gprs()
        yield from core.asm.Snippets.save_vregs()

        src = core.regs.Reg(self.asm.gprs, str_name="src")
        dst = core.regs.Reg(self.asm.gprs, str_name="dst")

        yield from src.alloc(self._src)
        yield from dst.alloc(self._dst)

        buffers = [ core.regs.Reg(self.asm.gprs) for _ in range(0,3) ]
        yield from buffers[0].alloc("r2")
        yield from buffers[1].alloc("r3")
        yield from buffers[2].alloc("r4")

        yield f"add {src.name()}, {src.name()}, #{self.input_size_bytes}"
        yield f"add {dst.name()}, {dst.name()}, #{self.unpacked_words*4}"

        bit_position = 0
        # The number of bits we have already accumulated for the next word
        bit_buffer = 0
        bits_per_word = self.bits_per_word

        vinput = [ core.regs.Reg(self.asm.vregs, str_name="input") for _ in range(0,2) ]
        yield from vinput[0].alloc()
        yield from vinput[1].alloc()

        last = buffers[0]
        cur  = buffers[1]
        succ = buffers[2]

        yield f"movs.n {buffers[0].name()}, #0"
        yield f"movs.n {buffers[1].name()}, #0"
        overhead = self.unpacked_words - math.ceil(self.input_size_bits / bits_per_word)
        yield f"// Overhead {overhead}"
        for i in range(0,overhead//2):
            yield f"strd {buffers[0].name()}, {buffers[1].name()}, [{dst.name()},#-8]!"
        if overhead % 2 != 0:
            yield f"str {buffers[0].name()}, [{dst.name()},#-4]!"

        preloaded = False
        first = True

        for i in range(self.input_size_bits,0,-128):

            if not preloaded:
                yield f"vldrw.u32 {vinput[0].name()}, [{src.name()}, #-16]!"
            preloaded = False

            remaining = 128
            init_chunk = i % self.bits_per_word

            if init_chunk != 0:
                yield f"vshlc {vinput[0].name()}, {cur.name()}, #{init_chunk}"
                remaining -= init_chunk
                # Preload for next iteration
                yield f"vldrw.u32 {vinput[1].name()}, [{src.name()}, #-16]!"
                preloaded = True
                yield f"vshlc {vinput[0].name()}, {succ.name()}, #{self.bits_per_word}"
                remaining -= self.bits_per_word
                if not first:
                    # Complete last limb
                    yield f"eor {cur.name()}, {cur.name()}, {last.name()}, LSL #{init_chunk}"
                yield f"str {cur.name()}, [{dst.name()}, #-4]!"
                first = False
                last, cur, succ = succ, last, cur

            while remaining > 0:
                next_chunk = min(remaining,self.bits_per_word)
                yield f"vshlc {vinput[0].name()}, {cur.name()}, #{next_chunk}"

                if not first:
                    yield f"str {last.name()}, [{dst.name()}, #-4]!"
                first = False

                last, cur, succ = cur, succ, last
                remaining -= next_chunk

            vinput[0], vinput[1] = vinput[1], vinput[0]

        yield f"str {last.name()}, [{dst.name()}, #-4]!"

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
