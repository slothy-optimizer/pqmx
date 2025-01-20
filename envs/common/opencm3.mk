# SPDX-License-Identifier: Apache-2.0
PREFIX = arm-none-eabi
CC = $(PREFIX)-gcc
CPP = $(CC)
LD := $(CC)
OBJCOPY = $(PREFIX)-objcopy

OPENCM3_DIR ?=
SRC_DIR=./src
BUILD_DIR=./build/$(TARGET)
COMMON_INC=../common/inc/
ENV_INC=./inc/
TEST_COMMON=../../tests/common/


override LDSCRIPT := $(BUILD_DIR)/generated.$(DEVICE).ld
include $(OPENCM3_DIR)/mk/genlink-config.mk
include $(OPENCM3_DIR)/mk/genlink-rules.mk
include $(OPENCM3_DIR)/mk/gcc-rules.mk


CFLAGS += $(ARCH_FLAGS)

LDFLAGS += \
	-nostartfiles \
	-T$(LDSCRIPT) \
	$(ARCH_FLAGS)


SYSROOT := $(shell $(CC) --print-sysroot)


CFLAGS += \
	-O3 \
	-std=gnu99 \
	--sysroot=$(SYSROOT) \
	-Wall -Wextra -Wshadow -Werror \
	-MMD \
	-fno-common \
	$(CPPFLAGS) \
	-I$(COMMON_INC) \
	-I$(ENV_INC) \
	-I$(SRC_DIR) \
	-I$(TESTDIR) \
	-I$(TEST_COMMON)


LDFLAGS += \
	--specs=nosys.specs \
	-Wl,--wrap=_sbrk \
	-Wl,--wrap=_open \
	-Wl,--wrap=_close \
	-Wl,--wrap=_isatty \
	-Wl,--wrap=_kill \
	-Wl,--wrap=_lseek \
	-Wl,--wrap=_read \
	-Wl,--wrap=_write \
	-Wl,--wrap=_fstat \
	-Wl,--wrap=_getpid \
	-ffreestanding \
	-Lobj \
	-Wl,--gc-sections

all: $(TARGET)

HAL_SOURCES = ../common/src/hal-opencm3.c ../common/src/randombytes.c
OBJECTS_HAL = $(patsubst %.c, $(BUILD_DIR)/%.c.o, $(abspath $(HAL_SOURCES)))
OBJECTS_HAL += $(patsubst %.S, $(BUILD_DIR)/%.S.o, $(abspath $(HAL_ASMS)))
TEST_COMMON_SOURCES = $(wildcard $(TEST_COMMON)/*.c)
OBJECTS_TEST_COMMON = $(patsubst %.c, $(BUILD_DIR)/%.c.o, $(abspath $(TEST_COMMON_SOURCES)))
OBJECTS_SOURCES=$(patsubst %.c, $(BUILD_DIR)/%.c.o, $(abspath $(SOURCES)))
OBJECTS_C = $(OBJECTS_SOURCES) $(OBJECTS_HAL) $(OBJECTS_TEST_COMMON)
OBJECTS_ASM = $(patsubst %.s, $(BUILD_DIR)/%.s.o, $(abspath $(ASMS)))

OBJECTS = $(OBJECTS_C) $(OBJECTS_ASM)

$(OBJECTS_C): $(BUILD_DIR)/%.o: %
	mkdir -p $(@D)
	$(CC) $(CFLAGS) -DDEVICE=\"$(DEVICE)\" -c -o $@ $<

$(OBJECTS_ASM): $(BUILD_DIR)/%.o: %
	mkdir -p $(@D)
	$(CC) -x assembler-with-cpp $(CFLAGS) -c -o $@ $<

$(TARGET): $(OBJECTS) $(LDSCRIPT) $(LDDEPS)
	$(LD) $(LDFLAGS) -o $@ $(OBJECTS)  -Wl,--start-group $(LDLIBS) -Wl,--end-group
	$(OBJCOPY) -Oihex $(TARGET) $(TARGET).hex

flash: $(TARGET)
	openocd -f $(OPENOCD_CFG) -c 'program $(TARGET).hex verify reset exit'

count: $(TARGET)
	python3 ../common/inst_count.py $(TARGET)

size: $(TARGET)
	python3 ../common/code_size.py $(TARGET)

run:
	@echo "WARNING: Target platform does not support the run- target. Use the flash- target instead to flash to the board. Skipping"

check:
	@echo "WARNING: Target platform does not support the check- target. Use the flash- target instead to flash to the board. Skipping"

.PHONY: build
build: $(TARGET)

clean:
	rm -f *.elf *.hex
	rm -rf $(BUILD_DIR)