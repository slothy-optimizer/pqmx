# Test name - needs to match the directory name
TESTS += ntt-dilithium

# All further variables must be prefixed with the capitalized test name

# Platforms this test should run on (matching the directory name in envs/)
NTT_DILITHIUM_PLATFORMS += m55-an547
NTT_DILITHIUM_PLATFORMS += m85-an555

# C sources required for this test
NTT_DILITHIUM_SOURCES += main.c

# Assembly sources required for this test

NTT_DILITHIUM_SLOTHY_DIR = ../../slothy/
# NTT_DILITHIUM_SLOTHY_ASM_NAIVE = $(NTT_DILITHIUM_SLOTHY_DIR)/examples/naive/armv8m/dilithium
# NTT_DILITHIUM_SLOTHY_ASM_OPT = $(NTT_DILITHIUM_SLOTHY_DIR)/examples/opt/armv8m/dilithium
NTT_DILITHIUM_SLOTHY_ASM_PAPER_OPT = $(NTT_DILITHIUM_SLOTHY_DIR)/paper/opt/helium/ntt/
NTT_DILITHIUM_SLOTHY_ASM_PAPER_CLEAN = $(NTT_DILITHIUM_SLOTHY_DIR)/paper/clean/helium/ntt/


NTT_DILITHIUM_ASMS += $(NTT_DILITHIUM_SLOTHY_ASM_PAPER_CLEAN)/ntt_dilithium_12_34_56_78.s
NTT_DILITHIUM_ASMS += $(NTT_DILITHIUM_SLOTHY_ASM_PAPER_CLEAN)/ntt_dilithium_123_456_78.s
NTT_DILITHIUM_ASMS += $(NTT_DILITHIUM_SLOTHY_ASM_PAPER_CLEAN)/ntt_dilithium_12_34_56_78_no_trans_vld4.s



NTT_DILITHIUM_ASMS += $(NTT_DILITHIUM_SLOTHY_ASM_PAPER_OPT)/ntt_dilithium_12_34_56_78_no_trans_vld4_opt_m55.s
NTT_DILITHIUM_ASMS += $(NTT_DILITHIUM_SLOTHY_ASM_PAPER_OPT)/ntt_dilithium_12_34_56_78_no_trans_vld4_opt_m85.s
NTT_DILITHIUM_ASMS += $(NTT_DILITHIUM_SLOTHY_ASM_PAPER_OPT)/ntt_dilithium_12_34_56_78_opt_m55.s
NTT_DILITHIUM_ASMS += $(NTT_DILITHIUM_SLOTHY_ASM_PAPER_OPT)/ntt_dilithium_12_34_56_78_opt_m85.s
NTT_DILITHIUM_ASMS += $(NTT_DILITHIUM_SLOTHY_ASM_PAPER_OPT)/ntt_dilithium_123_456_78_opt_size_m55.s
NTT_DILITHIUM_ASMS += $(NTT_DILITHIUM_SLOTHY_ASM_PAPER_OPT)/ntt_dilithium_123_456_78_opt_size_m85.s
