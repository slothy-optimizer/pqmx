# Test name - needs to match the directory name
TESTS += intmulntt

# All further variables must be prefixed with the capitalized test name

# Platforms this test should run on (matching the directory name in envs/)
INTMULNTT_PLATFORMS += m55-an547
INTMULNTT_PLATFORMS += m85-an555

# C sources required for this test
INTMULNTT_SOURCES += main.c
INTMULNTT_SOURCES += misc.c
INTMULNTT_SOURCES += poly.c

# Assembly sources required for this test
INTMULNTT_ASMS += crt.s
INTMULNTT_ASMS += montgomery.s
INTMULNTT_ASMS += ntt_192_u32_33556993_27792935_incomplete_good_bitrev.s
INTMULNTT_ASMS += ntt_192_u32_33556993_27792935_incomplete_good.s
INTMULNTT_ASMS += ntt_192_u32_45387457_16877098_incomplete_good_bitrev.s
INTMULNTT_ASMS += ntt_192_u32_45387457_16877098_incomplete_good.s
INTMULNTT_ASMS += ntt_192_u32_88299073_9670361_incomplete_good_bitrev.s
INTMULNTT_ASMS += ntt_192_u32_88299073_9670361_incomplete_good_oop_half_input.s
INTMULNTT_ASMS += ntt_192_u32_88299073_9670361_incomplete_good.s
INTMULNTT_ASMS += ntt_192_u32_106117153_62524596_incomplete_good_bitrev.s
INTMULNTT_ASMS += ntt_192_u32_106117153_62524596_incomplete_good.s
INTMULNTT_ASMS += ntt_192_u32_108643009_1793055_incomplete_good_bitrev.s
INTMULNTT_ASMS += ntt_192_u32_108643009_1793055_incomplete_good_oop_half_input.s
INTMULNTT_ASMS += ntt_192_u32_108643009_1793055_incomplete_good.s
INTMULNTT_ASMS += ntt_384_u32_33556993_15047299_incomplete_good_bitrev.s
INTMULNTT_ASMS += ntt_384_u32_33556993_15047299_incomplete_good.s
INTMULNTT_ASMS += ntt_384_u32_45387457_923104_incomplete_good_bitrev.s
INTMULNTT_ASMS += ntt_384_u32_45387457_923104_incomplete_good.s
INTMULNTT_ASMS += ntt_384_u32_88299073_4883425_incomplete_good_bitrev.s
INTMULNTT_ASMS += ntt_384_u32_88299073_4883425_incomplete_good_oop_half_input.s
INTMULNTT_ASMS += ntt_384_u32_88299073_4883425_incomplete_good_oop.s
INTMULNTT_ASMS += ntt_384_u32_88299073_4883425_incomplete_good.s
INTMULNTT_ASMS += ntt_384_u32_106117153_1392340_incomplete_good_bitrev.s
INTMULNTT_ASMS += ntt_384_u32_106117153_1392340_incomplete_good.s
INTMULNTT_ASMS += ntt_384_u32_108643009_640922_incomplete_good_bitrev.s
INTMULNTT_ASMS += ntt_384_u32_108643009_640922_incomplete_good_oop_half_input.s
INTMULNTT_ASMS += ntt_384_u32_108643009_640922_incomplete_good_oop.s
INTMULNTT_ASMS += ntt_384_u32_108643009_640922_incomplete_good.s
