# Test name - needs to match the directory name
TESTS += kyber-all

# All further variables must be prefixed with the capitalized test name

# Platforms this test should run on (matching the directory name in envs/)
KYBER_ALL_PLATFORMS += m7-an500
KYBER_ALL_PLATFORMS += nucleo-f767zi
KYBER_ALL_PLATFORMS += stm32f4discovery

# C sources required for this test
KYBER_ALL_SOURCES += main.c
KYBER_ALL_SOURCES += ntt-acle.c
KYBER_ALL_SOURCES += fips202.c

# Keccak source
KYBER_ALL_ASMS +=  ../../asm/manual/keccak/keccakf1600_old_opt_m7.s
KYBER_ALL_ASMS +=  keccakf1600-misc.s

# Assembly sources required for this test
KYBER_ALL_ASM_DIR = ../../asm/manual/kyber-all
KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/ntt_kyber.s
KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/ntt_kyber_opt_m7.s
KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/ntt_kyber_symbolic_opt_m7.s

KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/intt_kyber.s
KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/intt_kyber_opt_m7.s

KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/add_kyber.s
KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/add_kyber_opt_m7.s

KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/sub_kyber.s
KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/sub_kyber_opt_m7.s

KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/barrett_reduce_kyber.s
KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/barrett_reduce_kyber_opt_m7.s

KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/fromplant_kyber.s
KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/fromplant_kyber_opt_m7.s

KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/basemul_16_32_kyber.s
KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/basemul_16_32_kyber_opt_m7.s

KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/basemul_acc_32_32_kyber.s
KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/basemul_acc_32_32_kyber_opt_m7.s

KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/basemul_acc_32_16_kyber.s
KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/basemul_acc_32_16_kyber_opt_m7.s

KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/frombytes_mul_16_32_kyber.s
KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/frombytes_mul_16_32_kyber_opt_m7.s

KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/frombytes_mul_acc_32_32_kyber.s
KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/frombytes_mul_acc_32_32_kyber_opt_m7.s

KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/frombytes_mul_acc_32_16_kyber.s
KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/frombytes_mul_acc_32_16_kyber_opt_m7.s

KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/basemul_acc_kyber.s
KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/basemul_acc_kyber_opt_m7.s

KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/basemul_kyber.s
KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/basemul_kyber_opt_m7.s

KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/frombytes_mul_acc_kyber.s
KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/frombytes_mul_acc_kyber_opt_m7.s

KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/frombytes_mul_kyber.s
KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/frombytes_mul_kyber_opt_m7.s

KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/matacc_acc_kyber.s
KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/matacc_acc_kyber_opt_m7.s

KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/matacc_asm_cache_16_32_kyber.s
KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/matacc_asm_cache_16_32_kyber_opt_m7.s

KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/matacc_asm_cache_32_16_kyber.s
KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/matacc_asm_cache_32_16_kyber_opt_m7.s

KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/matacc_asm_cache_32_32_kyber.s
KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/matacc_asm_cache_32_32_kyber_opt_m7.s

KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/matacc_asm_opt_16_32_kyber.s
KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/matacc_asm_opt_16_32_kyber_opt_m7.s

KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/matacc_asm_opt_32_16_kyber.s
KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/matacc_asm_opt_32_16_kyber_opt_m7.s

KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/matacc_asm_opt_32_32_kyber.s
KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/matacc_asm_opt_32_32_kyber_opt_m7.s

KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/matacc_kyber.s
KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/matacc_kyber_opt_m7.s