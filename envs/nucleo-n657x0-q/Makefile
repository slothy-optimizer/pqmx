# Copyright (c) The pqmx project authors
# Copyright (c) The mlkem-native project authors
# Copyright (c) Arm Ltd.
# SPDX-License-Identifier: Apache-2.0 OR ISC OR MIT
#
# Makefile for images for the STM32 NUCLEO-N657X0-Q (Cortex-M55).
#
# The board is never flashed: a FLEXMEM config binary expands ITCM/DTCM in RAM
# (see host/flexmem_configure.py), then test ELFs are loaded into the expanded
# RAM layout over OpenOCD + arm-none-eabi-gdb. The Cube platform tree is
# provided by the stm32cuben6 nix package through NUCLEO_N657X0_Q_PATH.

PREFIX = arm-none-eabi
CC = $(PREFIX)-gcc
LD := $(CC)

SRC_DIR=./src
HOST_DIR=./host
BUILD_DIR=./build/$(TARGET)
COMMON_INC=../common/inc/
COMMON_SRC=../common/src/
ENV_INC=./inc/
TEST_COMMON=../../tests/common/

# Cube platform tree (headers + extracted HAL/clock/startup) from nix.
NUCLEO_N657X0_Q_PATH ?=

SYSROOT := $(shell $(CC) --print-sysroot)

CFLAGS += \
	-O3 -g \
	-std=gnu99 \
	-Wall -Wextra -Wshadow \
	-Wno-redundant-decls \
	-fno-common \
	-ffunction-sections \
	-fdata-sections \
	--sysroot=$(SYSROOT) \
	-DDEVICE=\"nucleo-n657x0-q\" \
	-DSTM32N657xx \
	-DARMCM55 \
	-DSEMIHOSTING \
	-I$(COMMON_INC) \
	-I$(ENV_INC) \
	-I$(SRC_DIR) \
	-I$(TESTDIR) \
	-I$(TEST_COMMON) \
	-I$(NUCLEO_N657X0_Q_PATH) \
	-I$(NUCLEO_N657X0_Q_PATH)/Inc \
	-I$(NUCLEO_N657X0_Q_PATH)/Drivers/STM32N6xx_HAL_Driver/Inc \
	-I$(NUCLEO_N657X0_Q_PATH)/Drivers/CMSIS/Core/Include \
	-I$(NUCLEO_N657X0_Q_PATH)/Drivers/CMSIS/Core/Include/m-profile \
	-I$(NUCLEO_N657X0_Q_PATH)/Drivers/CMSIS/Device/ST \
	-I$(NUCLEO_N657X0_Q_PATH)/Drivers/CMSIS/Device/ST/STM32N6xx/Include/

ARCH_FLAGS += \
	-mcmse \
	-march=armv8.1-m.main+mve.fp \
	-mcpu=cortex-m55 \
	-mthumb \
	-mfloat-abi=hard -mfpu=fpv5-sp-d16

SEMIHOST_SPECS := --specs=rdimon.specs

CFLAGS += $(ARCH_FLAGS)
CFLAGS += $(CFLAGS_EXTRA)

# Custom RAM-only secure linker script for the expanded FLEXMEM layout.
LDSCRIPT := ./linker/ram_secure.ld

LDFLAGS += \
	-Wl,--gc-sections \
	-Wl,--no-warn-rwx-segments \
	-L.

LDFLAGS += \
	$(SEMIHOST_SPECS) \
	-Wl,--wrap=main \
	-ffreestanding \
	-T$(LDSCRIPT) \
	$(ARCH_FLAGS)

LDLIBS += -lc -lrdimon

# Cube platform sources detected from the nix-provided tree.
STARTUP  := $(firstword $(wildcard $(NUCLEO_N657X0_Q_PATH)/gcc/startup_stm32n657xx.[sS]))
IT       := $(firstword $(wildcard $(NUCLEO_N657X0_Q_PATH)/stm32n6xx_it.c))
HAL_CORE := $(firstword $(wildcard $(NUCLEO_N657X0_Q_PATH)/Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal.c))

# Platform glue (env-local) + Cube/HAL sources (from nix). The C library and
# Cube headers often fail strict warnings, so relax them for these sources via
# HAL_SOURCES_CFLAGS below.
PLATFORM_SOURCES = \
	$(SRC_DIR)/cmdline.c \
	$(SRC_DIR)/flexmem_layout_check.c \
	$(SRC_DIR)/libfns.c \
	$(SRC_DIR)/semihosting_syscall.c \
	$(SRC_DIR)/hal.c

CUBE_SOURCES = \
	$(NUCLEO_N657X0_Q_PATH)/clock_config.c \
	$(NUCLEO_N657X0_Q_PATH)/system_stm32n6xx.c \
	$(STARTUP) \
	$(IT) \
	$(HAL_CORE) \
	$(NUCLEO_N657X0_Q_PATH)/Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_rcc.c \
	$(NUCLEO_N657X0_Q_PATH)/Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_cortex.c \
	$(NUCLEO_N657X0_Q_PATH)/Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_rcc_ex.c \
	$(NUCLEO_N657X0_Q_PATH)/Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_pwr.c \
	$(NUCLEO_N657X0_Q_PATH)/Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_pwr_ex.c

HAL_SOURCES = $(PLATFORM_SOURCES) $(CUBE_SOURCES) $(COMMON_SRC)/randombytes.c
HAL_SOURCES_CFLAGS = -Wno-error -Wno-conversion -Wno-sign-conversion \
	-Wno-unused-parameter -Wno-missing-prototypes -Wno-maybe-uninitialized \
	-Wno-unused-function -Wno-pedantic

OBJECTS_HAL = $(patsubst %.c, $(BUILD_DIR)/%.c.o, $(abspath $(filter %.c,$(HAL_SOURCES))))
OBJECTS_HAL += $(patsubst %.S, $(BUILD_DIR)/%.S.o, $(abspath $(filter %.S,$(HAL_SOURCES))))
OBJECTS_HAL += $(patsubst %.s, $(BUILD_DIR)/%.s.o, $(abspath $(filter %.s,$(HAL_SOURCES))))

TEST_COMMON_SOURCES = $(wildcard $(TEST_COMMON)/*.c)
OBJECTS_TEST_COMMON = $(patsubst %.c, $(BUILD_DIR)/%.c.o, $(abspath $(TEST_COMMON_SOURCES)))
OBJECTS_SOURCES=$(patsubst %.c, $(BUILD_DIR)/%.c.o, $(abspath $(SOURCES)))
OBJECTS_C = $(OBJECTS_SOURCES) $(OBJECTS_HAL) $(OBJECTS_TEST_COMMON)
OBJECTS_ASM = $(patsubst %.s, $(BUILD_DIR)/%.s.o, $(abspath $(ASMS)))

OBJECTS = $(OBJECTS_C) $(OBJECTS_ASM)

all: $(TARGET)

# HAL/Cube objects build with relaxed warnings.
$(OBJECTS_HAL): $(BUILD_DIR)/%.o: %
	mkdir -p $(@D)
	$(CC) $(CFLAGS) $(HAL_SOURCES_CFLAGS) -c -o $@ $<

$(OBJECTS_SOURCES) $(OBJECTS_TEST_COMMON): $(BUILD_DIR)/%.o: %
	mkdir -p $(@D)
	$(CC) $(CFLAGS) -c -o $@ $<

$(OBJECTS_ASM): $(BUILD_DIR)/%.o: %
	mkdir -p $(@D)
	$(CC) -x assembler-with-cpp $(CFLAGS) -c -o $@ $<

$(TARGET): $(OBJECTS) $(LDSCRIPT)
	$(LD) $(LDFLAGS) -o $@ $(OBJECTS) -Wl,--start-group $(LDLIBS) -Wl,--end-group

.PHONY: build
build: check-platform-path $(TARGET)

.PHONY: check-platform-path
check-platform-path:
	@if [ -z "$(NUCLEO_N657X0_Q_PATH)" ]; then \
		echo "ERROR: NUCLEO_N657X0_Q_PATH is not set."; \
		echo "Enter the nix shell first: nix develop (or nix develop .#nucleo-n657x0-q)"; \
		exit 1; \
	fi

# FLEXMEM configuration binary: a tiny RAM image that expands ITCM/DTCM.
FLEXMEM_CONFIG_ELF ?= $(BUILD_DIR)/flexmem_config.elf
FLEXMEM_CONFIG_LDSCRIPT := ./linker/flexmem_config_default.ld
FLEXMEM_CONFIG_SOURCES := \
	$(SRC_DIR)/flexmem_config.c \
	$(NUCLEO_N657X0_Q_PATH)/system_stm32n6xx.c \
	$(STARTUP)

.PHONY: flexmem_config run_flexmem_config
flexmem_config: $(FLEXMEM_CONFIG_ELF)

$(FLEXMEM_CONFIG_ELF): check-platform-path $(FLEXMEM_CONFIG_SOURCES) $(FLEXMEM_CONFIG_LDSCRIPT)
	mkdir -p $(@D)
	$(CC) $(CFLAGS) $(HAL_SOURCES_CFLAGS) \
		-ffreestanding \
		-Wl,--gc-sections -Wl,--no-warn-rwx-segments \
		$(SEMIHOST_SPECS) \
		-T$(FLEXMEM_CONFIG_LDSCRIPT) $(ARCH_FLAGS) \
		-o $@ $(FLEXMEM_CONFIG_SOURCES) -lc -lrdimon

run_flexmem_config: flexmem_config
	cd $(HOST_DIR) && python3 flexmem_configure.py $(abspath $(FLEXMEM_CONFIG_ELF))

# Hardware flash flow: expand FLEXMEM then RAM-load and run the test ELF.
# Requires the nucleo-n657x0-q devshell (provides st-openocd + arm-none-eabi-gdb)
# and a connected board.
flash: build $(FLEXMEM_CONFIG_ELF)
	cd $(HOST_DIR) && python3 flexmem_configure.py $(abspath $(FLEXMEM_CONFIG_ELF))
	cd $(HOST_DIR) && TARGET=$(TARGET) python3 run_test.py $(abspath $(TARGET))

# This board is driven over OpenOCD+GDB (see flash-). There is no QEMU model.
run:
	@echo "WARNING: Target platform does not support the run- target. Use the flash- target instead to drive the board. Skipping"

# Physical hardware platform - no emulator in CI, so skip the check.
check:
	@echo "SKIP"; exit 2

clean:
	rm -f *.elf
	rm -rf $(BUILD_DIR)
