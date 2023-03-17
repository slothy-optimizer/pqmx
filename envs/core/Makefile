# Cortex-M55 Example Makefile
#
# Copyright (c) 2020 Arm Limited (or its affiliates). All rights reserved.
# Use, modification and redistribution of this file is subject to your possession of a
# valid End User License Agreement for the Arm Product of which these examples are part of
# and your compliance with all applicable terms and conditions of such licence agreement.
#
# This makefile is intended for use with GNU make
# This example is intended to be built with Arm Compiler 6

TARGET=Cortex-M55.axf

INC_DIR=./inc
INC_DIR_TEST=$(INC_DIR)/test_inc -I$(SRC_DIR)/test_src/manual -I$(SRC_DIR)/test_src/auto
BUILD_DIR=./build
SRC_DIR=./src

ifdef GCC10_DIR
_GCC10_DIR= $(GCC10_DIR)/
else
_GCC10_DIR=
endif


.phony: all clean run

# Toolchain
CC=$(_GCC10_DIR)arm-none-eabi-gcc
LD=$(_GCC10_DIR)arm-none-eabi-gcc

ARCH_FLAGS += \
	-mcpu=cortex-m55 \
	-mthumb \
	-mfloat-abi=hard -mfpu=fpv4-sp-d16 \

CFLAGS += -DARMCM55 \
	$(ARCH_FLAGS)       \
	--specs=nosys.specs \
        -I$(INC_DIR) -I$(INC_DIR_TEST)

LDSCRIPT = src/mps3.ld

LDFLAGS += \
	--specs=nosys.specs \
	-Wl,--wrap=_write \
	-Wl,--wrap=_read \
	-ffreestanding \
	-T$(LDSCRIPT) \
	$(ARCH_FLAGS)

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

C_SRC_FILES_PRE=$(wildcard $(SRC_DIR)/*.c) $(wildcard $(SRC_DIR)/*/*.c) $(wildcard $(SRC_DIR)/*/*/*.c)
C_SRC_FILES=$(patsubst $(SRC_DIR)/%.c, %.c, $(C_SRC_FILES_PRE))

ASM_SRC_FILES_PRE=$(wildcard $(SRC_DIR)/*/*.s) $(wildcard $(SRC_DIR)/*.s) $(wildcard $(SRC_DIR)/*/*/*.s)
ASM_SRC_FILES=$(patsubst $(SRC_DIR)/%.s, %.s, $(ASM_SRC_FILES_PRE))

ASM_OBJ_FILES=$(patsubst %.s, $(BUILD_DIR)/%.o, $(ASM_SRC_FILES))
C_OBJ_FILES=$(patsubst %.c, $(BUILD_DIR)/%.o, $(C_SRC_FILES))
OBJ_FILES=$(ASM_OBJ_FILES) $(C_OBJ_FILES) $(CMSIS_OBJ_FILES)

$(C_OBJ_FILES): $(BUILD_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(CFLAGS) -c -o $@ $<

$(ASM_OBJ_FILES): $(BUILD_DIR)/%.o: $(SRC_DIR)/%.s
	$(CC) -x assembler-with-cpp $(CFLAGS) -c -o $@ $<

$(TARGET): $(OBJS_DIR) $(OBJ_FILES) $(SCATTER_SRC_TMP)
	$(LD) $(LDFLAGS) $(OBJ_FILES) -o $(TARGET)

build: $(TARGET)
run: $(TARGET)
	qemu-system-arm -M mps3-an547  -nographic -semihosting -kernel $(TARGET)

clean:
	rm -rf $(OBJ_FILES)
	rm -rf $(TARGET)
