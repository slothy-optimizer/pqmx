# Makefile for images for AN547

CC = arm-none-eabi-gcc
LD := $(CC)

SRC_DIR=./src
BUILD_DIR=./build/$(TARGET)

COMMON_INC=../common/inc/
ENV_INC=./inc/
TEST_COMMON=../../tests/common/

SYSROOT := $(shell $(CC) --print-sysroot)
CFLAGS += \
	-O3 \
	-std=c99 \
	-Wall -Wextra -Wshadow -Werror \
	-fno-common \
	-ffunction-sections \
	-fdata-sections \
	--sysroot=$(SYSROOT) \
	-DDEVICE=\"an547\" \
	-DARMCM55 \
	-I$(COMMON_INC) \
	-I$(ENV_INC) \
	-I$(SRC_DIR) \
	-I$(TESTDIR) \
	-I$(TEST_COMMON) \
	-I$(SRC_DIR)/platform

ARCH_FLAGS += \
	-march=armv8.1-m.main+mve.fp \
	-mthumb \
	-mfloat-abi=softfp  \

CFLAGS += \
	$(ARCH_FLAGS) \
	--specs=nosys.specs

CFLAGS += $(CFLAGS_EXTRA)

LDSCRIPT = $(SRC_DIR)/platform/mps3.ld

LDFLAGS += \
	-Wl,--gc-sections \
	-L.

LDFLAGS += \
	--specs=nosys.specs \
	-Wl,--wrap=_open \
	-Wl,--wrap=_read \
	-Wl,--wrap=_write \
	-ffreestanding \
	-T$(LDSCRIPT) \
	$(ARCH_FLAGS)

all: $(TARGET)

HAL_SOURCES = $(wildcard $(SRC_DIR)/*.c) $(wildcard $(SRC_DIR)/*/*.c)
OBJECTS_HAL = $(patsubst %.c, $(BUILD_DIR)/%.c.o, $(abspath $(HAL_SOURCES)))
TEST_COMMON_SOURCES = $(wildcard $(TEST_COMMON)/*.c)
OBJECTS_TEST_COMMON = $(patsubst %.c, $(BUILD_DIR)/%.c.o, $(abspath $(TEST_COMMON_SOURCES)))
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
	qemu-system-arm -M mps3-an547  -nographic -semihosting -kernel $(TARGET)

# Run test in QEMU and check for success
check: $(TARGET)
	@qemu-system-arm -M mps3-an547 -nographic -semihosting -kernel $(TARGET) | tail -n 1 | grep "ALL GOOD!" >/dev/null || \
	(echo "Test failed, re-running with output:"; qemu-system-arm -M mps3-an547 -nographic -semihosting -kernel $(TARGET); exit 1)

flash:
	@echo "WARNING: Target platform does not support the flash- targets. Skipping"

clean:
	rm -f *.elf
	rm -rf $(BUILD_DIR)
