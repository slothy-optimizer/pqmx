# Test name - needs to match the directory name
TESTS += ntt-768

# All further variables must be prefixed with the capitalized test name

# Platforms this test should run on (matching the directory name in envs/)
NTT_768_PLATFORMS += m55-an547

# TODO: Currently overflows flash, but can probably tweak the linker script to make it work; need to be tested on the board
#NTT_768_PLATFORMS += m85-an555

# C sources required for this test
NTT_768_SOURCES += main.c

# Assembly sources required for this test
NTT_768_ASM_DIR = ../../asm/auto/ntt_768
NTT_768_ASMS += montgomery.s
NTT_768_ASMS += $(NTT_768_ASM_DIR)/ntt_768_u32_33556993_299353_incomplete_bitrev.s 
NTT_768_ASMS += $(NTT_768_ASM_DIR)/ntt_768_u32_33556993_299353_incomplete_double.s 
NTT_768_ASMS += $(NTT_768_ASM_DIR)/ntt_768_u32_33556993_299353_incomplete_good_bitrev.s 
NTT_768_ASMS += $(NTT_768_ASM_DIR)/ntt_768_u32_33556993_299353_incomplete_good_double.s 
NTT_768_ASMS += $(NTT_768_ASM_DIR)/ntt_768_u32_33556993_299353_incomplete_good.s 
NTT_768_ASMS += $(NTT_768_ASM_DIR)/ntt_768_u32_33556993_299353_incomplete_rev4.s 
NTT_768_ASMS += $(NTT_768_ASM_DIR)/ntt_768_u32_33556993_299353_incomplete.s