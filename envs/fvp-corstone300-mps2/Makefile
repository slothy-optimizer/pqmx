# Test environment based on FVP for Corstone-300 MPS2 based platform
#
# Copyright (c) 2021 Arm Limited (or its affiliates). All rights reserved.
# Use, modification and redistribution of this file is subject to your possession of a
# valid End User License Agreement for the Arm Product of which these examples are part of
# and your compliance with all applicable terms and conditions of such licence agreement.

################################################################################
###                                                                          ###
###                         USER CONFIGURATION                               ###
###                             ADAPT THIS                                   ###
###                                                                          ###
################################################################################

#
# See README.md for setup instructions
#

# The base directory of the FVP for the Corstone-300 MPS2 based platform
# Adjust this if you haven't installed the FVP in the tools directory.
FVP_CORSTONE300_MPS2_DIR?=../../tools/FVP_Corstone300_MPS2

# The base directory for CMSIS 5
# Adjust this if you haven't cloned CMSIS 5 into the tools directory
CMSIS_BASE?=../../tools/CMSIS_5

# The base directory of the CMSIS pack for the Corstone-300 MPS2 based platform
# Adjust this if you haven't installed the CMSIS pack in the tools directory.
CMSIS_PACK_CORSTONE300_MPS2_DIR?=../../tools/CMSIS_FVP_Corstone300_MPS2

# If Arm Compiler 6 is in your PATH, you may leave this undefined. Otherwise,
# set ARMC6_DIR to the location of the Arm Compiler 6 binaries.

ifdef ARMC6_DIR
_ARMC6_DIR= $(ARMC6_DIR)/
else
_ARMC6_DIR=
endif

ifdef GCC10_DIR
_GCC10_DIR= $(GCC10_DIR)/
else
_GCC10_DIR=
endif

################################################################################
###                                                                          ###
###                   END OF USER CONFIGURATION                              ###
###                                                                          ###
################################################################################

ifndef FVP_CORSTONE300_MPS2_DIR
$(error FVP_CORSTONE300_MPS2_DIR environment variable MUST be set)
endif

ifndef CMSIS_PACK_CORSTONE300_MPS2_DIR
$(error CMSIS_PACK_CORSTONE300_MPS2_DIR environment variable MUST be set)
endif

# Derived variables
FVP_EXECUTABLE_PATH=$(FVP_CORSTONE300_MPS2_DIR)/models/Linux64_GCC-6.4/FVP_MPS2_Corstone_SSE-300
CMSIS_BOARD=$(CMSIS_PACK_CORSTONE300_MPS2_DIR)/Board
CMSIS_DEVICE=$(CMSIS_PACK_CORSTONE300_MPS2_DIR)/Device

# Final image
TARGET=image.elf

INC_DIR=./inc
INC_DIR_TEST=$(INC_DIR)/test_inc -I$(SRC_DIR)/test_src/manual -I$(SRC_DIR)/test_src/auto
BUILD_DIR=./build
SRC_DIR=./src

ifndef USE_GCC

# Arm Compiler Toolchain

CC=$(_ARMC6_DIR)armclang
LD=$(_ARMC6_DIR)armlink

CFLAGS = --target=arm-arm-none-eabi -mcpu=Cortex-M55 \
	-I$(CMSIS_DEVICE)/Include                    \
	-I$(CMSIS_BOARD)/Platform/                   \
	-I$(CMSIS_BASE)/CMSIS/Core/Include	     \
        -I$(INC_DIR) -I$(INC_DIR_TEST)

# Scatter files before/after preprocessing
SCATTER_SRC=$(SRC_DIR)/armclang.sct
SCATTER_SRC_TMP=$(SCATTER_SRC).tmp
LDFLAGS = --entry=Reset_Handler --scatter=$(SCATTER_SRC_TMP)

else # AC6 / GCC

# GCC toolchain

# Toolchain
CC=$(_GCC10_DIR)arm-none-eabi-gcc-10.2.1
LD=$(_GCC10_DIR)arm-none-eabi-gcc-10.2.1

CFLAGS = -mfloat-abi=softfp -march=armv8.1-m.main+mve -mcpu=cortex-m55  \
	-I$(CMSIS_DEVICE)/Include                    \
	-I$(CMSIS_BOARD)/Platform/                   \
	-I$(CMSIS_BASE)/CMSIS/Core/Include	     \
        -I$(INC_DIR) -I$(INC_DIR_TEST)

# Scatter files before/after preprocessing
SCATTER_SRC=$(SRC_DIR)/gcc_arm.ld
SCATTER_SRC_TMP=$(SCATTER_SRC).tmp

LDFLAGS = -mfloat-abi=softfp -march=armv8.1-m.main+mve -mcpu=cortex-m55 --entry=Reset_Handler \
          -T $(SCATTER_SRC_TMP) -specs=rdimon.specs

endif # AC6 / GCC

CMSIS_SRC_DIR=$(CMSIS_DEVICE)/Source
C_SRC_FILES_PRE=$(wildcard $(SRC_DIR)/*.c) $(wildcard $(SRC_DIR)/*/*.c) $(wildcard $(SRC_DIR)/*/*/*.c)
C_SRC_FILES=$(patsubst $(SRC_DIR)/%.c, %.c, $(C_SRC_FILES_PRE))
ASM_SRC_FILES_PRE=$(wildcard $(SRC_DIR)/*/*.s) $(wildcard $(SRC_DIR)/*.s) $(wildcard $(SRC_DIR)/*/*/*.s)
ASM_SRC_FILES=$(patsubst $(SRC_DIR)/%.s, %.s, $(ASM_SRC_FILES_PRE))
CMSIS_SRC_FILES_PRE=$(wildcard $(CMSIS_SRC_DIR)/*.c)
CMSIS_SRC_FILES=$(patsubst $(CMSIS_SRC_DIR)/%.c, %.c, $(CMSIS_SRC_FILES_PRE))

HEADER_FILES_PRE=$(wildcard $(SRC_DIR)/*.h) $(wildcard $(SRC_DIR)/*/*.h) $(wildcard $(SRC_DIR)/*/*/*.h)

ASM_OBJ_FILES=$(patsubst %.s, $(BUILD_DIR)/%.o, $(ASM_SRC_FILES))
CMSIS_OBJ_FILES=$(patsubst %.c, $(BUILD_DIR)/%.o, $(CMSIS_SRC_FILES))
C_OBJ_FILES=$(patsubst %.c, $(BUILD_DIR)/%.o, $(C_SRC_FILES))
OBJ_FILES=$(ASM_OBJ_FILES) $(C_OBJ_FILES) $(CMSIS_OBJ_FILES)

.phony: all clean debug run

all: $(TARGET)

ifndef USE_GCC
$(SCATTER_SRC_TMP): $(SCATTER_SRC)
	mkdir -p $(@D)
        # Preprocess linker script manually
	$(CC) $(CFLAGS) -E -xc $< -o $@
else
$(SCATTER_SRC_TMP): $(SCATTER_SRC)
	mkdir -p $(@D)
	cp $< $@
endif

# Compilation
$(CMSIS_OBJ_FILES): $(BUILD_DIR)/%.o: $(CMSIS_SRC_DIR)/%.c
	mkdir -p $(@D)
	$(CC) $(CFLAGS) -c -o $@ $<
$(C_OBJ_FILES): $(BUILD_DIR)/%.o: $(SRC_DIR)/%.c $(HEADER_FILES_PRE)
	mkdir -p $(@D)
	$(CC) $(CFLAGS) -c -o $@ $<
$(ASM_OBJ_FILES): $(BUILD_DIR)/%.o: $(SRC_DIR)/%.s $(HEADER_FILES_PRE)
	mkdir -p $(@D)
	$(CC) -x assembler-with-cpp $(CFLAGS) -c -o $@ $<

# Linking
$(TARGET): $(OBJS_DIR) $(OBJ_FILES) $(SCATTER_SRC_TMP)
	mkdir -p $(@D)
	$(LD) $(LDFLAGS) $(OBJ_FILES) -o $(TARGET)

# Running
run: $(TARGET)
	"$(FVP_EXECUTABLE_PATH)" 		           \
		-a cpu0=$(TARGET)                          \
		-C cpu0.semihosting-enable=1	           \
		-C cpu0.semihosting-stack_base=0x0         \
		-C cpu0.semihosting-stack_limit=0x0        \
		-C cpu0.FPU=1 -C cpu0.MVE=2
debug: $(TARGET)
	"$(FVP_EXECUTABLE_PATH)" 		        \
		-a cpu0=$(TARGET)                       \
		-C cpu0.FPU=1 -C cpu0.MVE=2	        \
		-C cpu0.semihosting-enable=1	        \
		-C cpu0.semihosting-stack_base=0x0      \
		-C cpu0.semihosting-stack_limit=0x0     \
	  	-S

clean:
	rm -rf $(SCATTER_SRC_TMP)
	rm -rf $(OBJ_FILES)
	rm -rf $(TARGET)
