#!/usr/bin/python3

"""
Unicorn interface code by Richard Petri.
"""


from elftools.elf.elffile import ELFFile
from elftools.elf.sections import Section, SymbolTableSection, Symbol
import struct
from typing import Any, Dict, List, Union, Tuple, NamedTuple
import unicorn as uc
import unicorn.arm_const as uca
import numpy as np
import argparse 
from pwn import disasm

COUNT_MAX = 100000

count = 0


def hook_code(uc, address, size, user_data):
    global count
    count += 1
    # No function should take more than 100000 cycles
    # If it does, it's probably stuck, thus stop the emulation
    if count >= COUNT_MAX:
        uc.emu_stop()

    # print(">>> tracing pc = 0x%x " % address)
    # print(disasm(uc.mem_read(address, size), arch="thumb"))

def load_section(sim: uc.Uc, sect: Section|None, mem_map:bool=False):
    if sect is None:
        return;
    addr = sect.header["sh_addr"]
    if mem_map:
        size = sect.data_size
        # Align on KB Boundary, because UC complains...
        align = 1024
        if size % align:
            size += -size%align
        sim.mem_map(addr, size, uc.UC_PROT_ALL)
    sim.mem_write(addr, sect.data())

def setup_unicorn_sim(ef: ELFFile, *, ram_size:int, ram_addr:int, ccm_size:int, ccm_addr:int) -> Tuple[uc.Uc, int]:
    text = ef.get_section_by_name(".text")
    data = ef.get_section_by_name(".data")
    bss = ef.get_section_by_name(".bss")
    ccm = ef.get_section_by_name(".ccm")
    assert text is not None
    assert data is not None
    assert bss is not None
    # breakpoint()
    sim = uc.Uc(uc.UC_ARCH_ARM, uc.UC_MODE_THUMB)
    sim.ctl_set_cpu_model(uca.UC_CPU_ARM_CORTEX_M7)
    sim.mem_map(ram_addr, ram_size, uc.UC_PROT_ALL)
    if ccm_size > 0:
        sim.mem_map(ccm_addr, ccm_size, uc.UC_PROT_ALL)
    load_section(sim, text, True)
    load_section(sim, data)
    load_section(sim, bss)
    sim.mem_write(bss.header["sh_addr"], bytes(bss.data_size))
    load_section(sim, ccm)
    first_sp, _ = struct.unpack("<II", text.data()[:8])
    if first_sp > ram_addr + ram_size:
        raise Exception("RAM size not coherrent with first SP")
    sim.reg_write(uca.UC_ARM_REG_SP, first_sp)
    sim.hook_add(uc.UC_HOOK_CODE, hook_code)
    return sim, first_sp


def parse_symbol_table(ef: ELFFile) -> Dict[str, int]:
    symtab: SymbolTableSection
    for sect in ef.iter_sections():
        if isinstance(sect, SymbolTableSection):
            symtab = sect
            break
    if symtab is None:
        raise Exception("Symbol table not found")
    symbols = {}
    sym: Symbol
    for sym in symtab.iter_symbols():
        # if sym.name in ["end", "_ebss", "_edata"] or sym.entry.st_info.type in ["STT_FUNC", "STT_OBJECT"]:
        if sym.name in ["end"] or sym.entry.st_info.type in ["STT_FUNC"]:
            symbols[sym.name] = sym.entry.st_value
    return symbols

def run_funct(sim:uc.Uc, fnaddr:int, *args:Union[int, bytes]) -> Tuple[int, List[bytes]]:
    ctx = sim.context_save()
    stack = sim.reg_read(uca.UC_ARM_REG_SP)
    if not isinstance(stack, int):
        raise Exception("Return register as weird value")
    oldstack = stack
    retaddr = stack
    # Setup basic registers
    sim.reg_write(uca.UC_ARM_REG_PC, fnaddr)
    sim.reg_write(uca.UC_ARM_REG_LR, retaddr)
    # Setup arguments
    if len(args) > 4:
        raise Exception("Can't set up more than 4 arguments")
    argregs = [uca.UC_ARM_REG_R0, uca.UC_ARM_REG_R1, uca.UC_ARM_REG_R2, uca.UC_ARM_REG_R3]
    buffers = {}
    for reg, arg in zip(argregs, args):
        if isinstance(arg, int):
            sim.reg_write(reg, arg & 0xFFFFFFFF)
        elif isinstance(arg, bytes):
            # Allocate bytes on stack
            stack -= len(arg)
            stack -= stack%8 # Align the alloction on 8 byte boundary
            buffers[stack] = len(arg)
            sim.reg_write(reg, stack)
            sim.mem_write(stack, arg)
        else:
            raise Exception(f"Can't setup argument of type {type(arg)}")
    # Setup Stack
    stack -= 8
    sim.reg_write(uca.UC_ARM_REG_SP, stack)
    sim.emu_start(fnaddr, retaddr)
    # Reset the stack
    sim.reg_write(uca.UC_ARM_REG_SP, oldstack)
    # Retrieve the return value and argument buffers
    retval = sim.reg_read(uca.UC_ARM_REG_R0)
    if not isinstance(retval, int):
        raise Exception("Return register as weird value")
    retbuf = []
    for a, l in buffers.items():
        retbuf.append(bytes(sim.mem_read(a, l)))
    sim.context_restore(ctx)
    return retval, retbuf

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("elf", type=str,
                    help="path to elf file")
    parser.add_argument("-v", "--verbose", action="store_true",
                    help="increase output verbosity")

    args = parser.parse_args()
    
    counts = {}

    with open(args.elf, 'rb') as f:
        elffile = ELFFile(f)

        symbols = parse_symbol_table(elffile)
        polys = [np.zeros((256, ), dtype=np.int32) for _ in range(5)]
        print(symbols)
        for k in sorted(symbols.keys()):
            try:
                global count
                count = 0
                sim, _ = setup_unicorn_sim(elffile, ram_size=0x70000, ram_addr=0x20000000, ccm_size=0, ccm_addr=0)
                run_funct(sim, symbols[k], polys[0].tobytes(), polys[1].tobytes(), polys[2].tobytes(), polys[3].tobytes())
                if count == COUNT_MAX:
                    print(f"{k}: TIMEOUT")
                else:
                    print(f"{k}: {count}")
                    counts[k] = count
            except uc.unicorn.UcError:
                print(f"{k}: FAIL")

    def defvar(name, value):
        print(f"\\DefineVar{{{name}}}{{{value}}}")

    print("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%")
    for k in counts:
        defvar(f"{args.elf}_{k}_instrcount", counts[k])
    print("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%")
if __name__ == "__main__":
    main()