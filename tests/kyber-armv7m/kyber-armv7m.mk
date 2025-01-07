# Test name - needs to match the directory name
TESTS += kyber-armv7m

# All further variables must be prefixed with the capitalized test name

# Platforms this test should run on (matching the directory name in envs/)
KYBER_ARMV7M_PLATFORMS += m7-an500
KYBER_ARMV7M_PLATFORMS += nucleo-f767zi
KYBER_ARMV7M_PLATFORMS += stm32f4discovery

# C sources required for this test
KYBER_ARMV7M_SOURCES += main.c
KYBER_ARMV7M_SOURCES += fips202.c

# Keccak source
KYBER_ARMV7M_ASMS +=  ../../asm/manual/keccak/keccakf1600_adomnicai_m4_opt_m7.s
KYBER_ARMV7M_ASMS +=  keccakf1600-misc.s

# Assembly sources required for this test
KYBER_ARMV7M_ASM_DIR = ../../asm/manual/kyber-armv7m
KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_ASM_DIR)/ntt_kyber.s
KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_ASM_DIR)/ntt_kyber_opt_m7.s

KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_ASM_DIR)/intt_kyber.s
KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_ASM_DIR)/intt_kyber_opt_m7.s

KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_ASM_DIR)/add_kyber.s
KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_ASM_DIR)/add_kyber_opt_m7.s

KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_ASM_DIR)/sub_kyber.s
KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_ASM_DIR)/sub_kyber_opt_m7.s

KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_ASM_DIR)/barrett_reduce_kyber.s
KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_ASM_DIR)/barrett_reduce_kyber_opt_m7.s

KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_ASM_DIR)/fromplant_kyber.s
KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_ASM_DIR)/fromplant_kyber_opt_m7.s

KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_ASM_DIR)/basemul_16_32_kyber.s
KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_ASM_DIR)/basemul_16_32_kyber_opt_m7.s

KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_ASM_DIR)/basemul_acc_32_32_kyber.s
KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_ASM_DIR)/basemul_acc_32_32_kyber_opt_m7.s

KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_ASM_DIR)/basemul_acc_32_16_kyber.s
KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_ASM_DIR)/basemul_acc_32_16_kyber_opt_m7.s

KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_ASM_DIR)/frombytes_mul_16_32_kyber.s
KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_ASM_DIR)/frombytes_mul_16_32_kyber_opt_m7.s

KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_ASM_DIR)/frombytes_mul_acc_32_32_kyber.s
KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_ASM_DIR)/frombytes_mul_acc_32_32_kyber_opt_m7.s

KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_ASM_DIR)/frombytes_mul_acc_32_16_kyber.s
KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_ASM_DIR)/frombytes_mul_acc_32_16_kyber_opt_m7.s

KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_ASM_DIR)/basemul_acc_kyber.s
KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_ASM_DIR)/basemul_acc_kyber_opt_m7.s

KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_ASM_DIR)/basemul_kyber.s
KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_ASM_DIR)/basemul_kyber_opt_m7.s

KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_ASM_DIR)/frombytes_mul_acc_kyber.s
KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_ASM_DIR)/frombytes_mul_acc_kyber_opt_m7.s

KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_ASM_DIR)/frombytes_mul_kyber.s
KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_ASM_DIR)/frombytes_mul_kyber_opt_m7.s

KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_ASM_DIR)/matacc_acc_kyber.s
KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_ASM_DIR)/matacc_acc_kyber_opt_m7.s

KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_ASM_DIR)/matacc_asm_cache_16_32_kyber.s
KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_ASM_DIR)/matacc_asm_cache_16_32_kyber_opt_m7.s

KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_ASM_DIR)/matacc_asm_cache_32_16_kyber.s
KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_ASM_DIR)/matacc_asm_cache_32_16_kyber_opt_m7.s

KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_ASM_DIR)/matacc_asm_cache_32_32_kyber.s
KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_ASM_DIR)/matacc_asm_cache_32_32_kyber_opt_m7.s

KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_ASM_DIR)/matacc_asm_opt_16_32_kyber.s
KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_ASM_DIR)/matacc_asm_opt_16_32_kyber_opt_m7.s

KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_ASM_DIR)/matacc_asm_opt_32_16_kyber.s
KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_ASM_DIR)/matacc_asm_opt_32_16_kyber_opt_m7.s

KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_ASM_DIR)/matacc_asm_opt_32_32_kyber.s
KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_ASM_DIR)/matacc_asm_opt_32_32_kyber_opt_m7.s

KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_ASM_DIR)/matacc_kyber.s
KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_ASM_DIR)/matacc_kyber_opt_m7.s