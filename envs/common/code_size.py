from elftools.elf.elffile import ELFFile
from elftools.elf.sections import SymbolTableSection, Symbol
from typing import Dict
import argparse

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
        if sym.entry.st_info.type in ["STT_FUNC"]:
            symbols[sym.name] = sym.entry.st_size
    return symbols

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("elf", type=str,
                    help="path to elf file")
    parser.add_argument("-v", "--verbose", action="store_true",
                    help="increase output verbosity")

    args = parser.parse_args()
    
    sizes = {}
    
    with open(args.elf, 'rb') as f:
        elffile: ELFFile
        symbols: Dict[str, int]
        elffile = ELFFile(f)

        symbols = parse_symbol_table(elffile)
        
        # filter out symbols that have no size
        symbols = {k: v for (k, v) in symbols.items() if v > 0}
        
    def defvar(name, value):
        print(f"\\DefineVar{{{name}}}{{{value}}}")

    print("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%")
    for k, v in symbols.items():
        defvar(f"{args.elf}_{k}_size", v)
    print("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%")
if __name__ == "__main__":
    main()