# Makefile for images for ek-ra8m1
PREFIX = arm-none-eabi
CC = $(PREFIX)-gcc
OBJCOPY = $(PREFIX)-objcopy
LD := $(CC)

SRC_DIR=./src
BUILD_DIR=./build/$(TARGET)
COMMON_INC=../common/inc/
COMMON_SRC=../common/src/
ENV_INC=./inc/
TEST_COMMON=../../tests/common/
SYSROOT := $(shell $(CC) --print-sysroot)
CFLAGS += \
	-O3 \
	-Wall -Wextra -Wshadow -Werror \
	-fno-common \
	-ffunction-sections \
	-fdata-sections \
	--sysroot=$(SYSROOT) \
	-DDEVICE=\"ra8m1\" \
	-DARMCM85 \
	-DSEGGER_RTT_SECTION="\".seggerrtt\"" \
	-I$(ENV_INC)                                               \
	-I$(SRC_DIR)                                               \
    -I$(SRC_DIR)/RA8M1                                         \
    -I$(CMSIS_5_DIR)/CMSIS/Core/Include                        \
    -I$(SRC_DIR)/RA8M1/ra/fsp/inc                              \
    -I$(SRC_DIR)/RA8M1/ra/fsp/inc/api                          \
    -I$(SRC_DIR)/RA8M1/ra/fsp/inc/instances                    \
    -I$(SRC_DIR)/RA8M1/ra/fsp/src/bsp/cmsis/Device/RENESAS/Include \
    -I$(SRC_DIR)/RA8M1/ra_cfg/fsp_cfg                          \
    -I$(SRC_DIR)/RA8M1/ra_cfg/fsp_cfg/bsp                      \
    -I$(SRC_DIR)/RA8M1/ra_gen                                  \
    -I$(SRC_DIR)/RA8M1/lib/SEGGER_RTT                          \
	-I$(TESTDIR)                                               \
	-I$(TEST_COMMON)                                           \
	-I$(COMMON_INC)                                            \


ARCH_FLAGS += \
	-march=armv8.1-m.main+mve.fp \
	-mthumb \
	-mfloat-abi=hard \
	-mfpu=auto  \

CFLAGS += \
	--specs=nosys.specs \
	$(ARCH_FLAGS) \
	-DSEGGER_RTT_MODE_DEFAULT=SEGGER_RTT_MODE_BLOCK_IF_FIFO_FULL

CFLAGS += $(CFLAGS_EXTRA)


LDSCRIPT = $(SRC_DIR)/RA8M1/script/fsp.ld

LDFLAGS += \
	-Wl,--gc-sections \
	-L$(SRC_DIR)/RA8M1/script \
    -Wl,-I$(SRC_DIR)/RA8M1/script/ \

LDFLAGS += \
	--specs=nosys.specs \
	-ffreestanding \
    $(ARCH_FLAGS) \


all: $(TARGET)


HAL_SOURCES = $(shell find $(SRC_DIR) -name "*.c")


OBJECTS_HAL = $(patsubst %.c, $(BUILD_DIR)/%.c.o, $(abspath $(HAL_SOURCES)))

TEST_COMMON_SOURCES = $(wildcard $(TEST_COMMON)/*.c)
OBJECTS_TEST_COMMON = $(patsubst %.c, $(BUILD_DIR)/%.c.o, $(abspath $(TEST_COMMON_SOURCES)))

COMMON_SOURCES = $(wildcard $(COMMON_SRC)/randombytes.c)
OBJECTS_COMMON = $(patsubst %.c, $(BUILD_DIR)/%.c.o, $(abspath $(COMMON_SOURCES)))

OBJECTS_SOURCES=$(patsubst %.c, $(BUILD_DIR)/%.c.o, $(abspath $(SOURCES)))

OBJECTS_C = $(OBJECTS_SOURCES) $(OBJECTS_HAL) $(OBJECTS_TEST_COMMON) $(OBJECTS_COMMON)

OBJECTS_ASM = $(patsubst %.s, $(BUILD_DIR)/%.s.o, $(abspath $(ASMS)))

OBJECTS = $(OBJECTS_C) $(OBJECTS_ASM)

$(OBJECTS_C): $(BUILD_DIR)/%.o: %
	mkdir -p $(@D)
	$(CC) $(CFLAGS) -c -o $@ $<

$(OBJECTS_ASM): $(BUILD_DIR)/%.o: %
	mkdir -p $(@D)
	$(CC) -x assembler-with-cpp $(CFLAGS) -c -o $@ $<

$(TARGET): $(OBJECTS) $(LDSCRIPT)
	$(LD) $(LDFLAGS) -T$(LDSCRIPT) -o $@ $(OBJECTS)
	$(OBJCOPY) -S -Obinary $@ $@.bin

.PHONY: build
build: $(TARGET)


flash: build
	printf "Sleep 2000\nLoadFile $(TARGET)\nreset\nexec SetRTTAddr 0x22000410\ngo\nSleep 3600000" | JLinkExe -if SWD -device R7FA8M1AH -speed auto
run:
	@echo "WARNING: Target platform does not support the run-target. Use the flash- target instead to flash to the board. Skipping"

check:
	@echo "WARNING: Target platform does not support the check-target. Use the flash- target instead to flash to the board. Skipping"


clean:
	rm -f *.elf *.bin
	rm -rf $(BUILD_DIR)



