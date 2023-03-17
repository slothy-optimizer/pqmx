import sys, argparse

from unpack import WordUnpack

def main(argv):

    outfile = None
    degree = None

    parser = argparse.ArgumentParser(
        formatter_class=argparse.ArgumentDefaultsHelpFormatter)
    parser.add_argument("--out", type=str, default=None,
                        help="The name of the file to write the generated assembly to. If unspecified, the assembly will be printed on the standard output.")
    parser.add_argument("bitsperword", type=int)
    parser.add_argument("totalbits", type=int)
    parser.add_argument("--words-out", type=int, default=None)

    args = parser.parse_args()

    code_all       = []
    code_essential = []

    line_count = 0;

    def is_code_line(line):
        if len(line) < 2:
            return False
        if line[0:2] == '//':
            return False
        return True

    impl = WordUnpack(args.totalbits,
                      args.bitsperword,
                      f"unpack_{args.bitsperword}_{args.totalbits}_{args.words_out}",
                      output_words=args.words_out)
    code_gen = impl.unpack()

    for line in code_gen:
        code_all.append(line)

    code_essential = filter(is_code_line, code_all)
    line_count_total = len(list(code_all))
    line_count_essential = len(list(code_essential))

    code_all.append(f'')
    code_all.append(f'// Line count:        {line_count_total}')
    code_all.append(f'// Instruction count: {line_count_essential}')

    code_all_str = "\n".join(code_all)

    if not args.out == None:
        f = open(args.out,"w")
        f.write(code_all_str)
        f.close()
    else:
        print(code_all_str)

if __name__ == "__main__":
   main(sys.argv[1:])
