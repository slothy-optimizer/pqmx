CC = arm-none-eabi-gcc
LD := $(CC)

SRC_DIR=./src
BUILD_DIR=./build/$(TARGET)

COMMON_INC=../common/inc/
ENV_INC=./inc/
TEST_COMMON=../../tests/common/
MBED_OS_DIR ?= ../../submodules/mbed-os/


MBED_OS_CMSIS = $(MBED_OS_DIR)/cmsis/CMSIS_5/CMSIS/TARGET_CORTEX_M/

SYSROOT := $(shell $(CC) --print-sysroot)

CFLAGS += \
	-O3 \
	-std=gnu99 \
	--sysroot=$(SYSROOT) \
	-Wall -Wextra -Wshadow -Werror \
	-MMD \
	-fno-common \
	-I$(COMMON_INC) \
	-I$(ENV_INC) \
	-I$(SRC_DIR) \
	-I$(TESTDIR) \
	-I$(MBED_OS_CMSIS)/Include \
	-I$(MBED_OS_TARGET_DIR) \
	-I$(TEST_COMMON)

CFLAGS += \
	$(ARCH_FLAGS) \
	--specs=nosys.specs

LDFLAGS += \
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
	--specs=nosys.specs \
	-T$(LDSCRIPT) \
	$(ARCH_FLAGS)

all: $(TARGET)

HAL_SOURCES = ../common/src/hal-mps2.c
HAL_ASMS = $(MBED_OS_TARGET_DIR)/TOOLCHAIN_GCC_ARM/startup_MPS2.S
OBJECTS_HAL = $(patsubst %.c, $(BUILD_DIR)/%.c.o, $(abspath $(HAL_SOURCES)))
OBJECTS_HAL += $(patsubst %.S, $(BUILD_DIR)/%.S.o, $(abspath $(HAL_ASMS)))
OBJECTS_SOURCES=$(patsubst %.c, $(BUILD_DIR)/%.c.o, $(abspath $(SOURCES)))
OBJECTS_C = $(OBJECTS_SOURCES) $(OBJECTS_HAL) $(OBJECTS_TEST_COMMON)
OBJECTS_ASM = $(patsubst %.s, $(BUILD_DIR)/%.s.o, $(abspath $(ASMS)))

OBJECTS = $(OBJECTS_C) $(OBJECTS_ASM)

$(OBJECTS_C): $(BUILD_DIR)/%.o: %
	mkdir -p $(@D)
	$(CC) $(CFLAGS) -c -o $@ $<

$(OBJECTS_ASM): $(BUILD_DIR)/%.o: %
	mkdir -p $(@D)
	$(CC) -x assembler-with-cpp $(CFLAGS) -c -o $@ $<

$(TARGET): $(OBJECTS) $(LDSCRIPT)
	$(LD) $(LDFLAGS) -o $@ $(OBJECTS)

.PHONY: build
build: $(TARGET)

run: $(TARGET)
	qemu-system-arm -M $(QEMU_PLATFORM) -nographic -semihosting -kernel $(TARGET)

check: $(TARGET)
	qemu-system-arm -M $(QEMU_PLATFORM) -nographic -semihosting -kernel $(TARGET) | tail -n 2 | grep "ALL GOOD!" || exit 1

$(LDSCRIPT): $(MBED_OS_TARGET_DIR)/TOOLCHAIN_GCC_ARM/MPS2.ld
	[ -d $(@D) ] || $(Q)mkdir -p $(@D); \
	$(CC) -x assembler-with-cpp -E -Wp,-P $(CFLAGS) $< -o $@

clean:
	rm -f *.elf
	rm -rf $(BUILD_DIR)
