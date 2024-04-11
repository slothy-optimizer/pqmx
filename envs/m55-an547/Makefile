# Makefile for images for AN555

TARGET=test.elf

INC_DIR=./inc
INC_DIR_TEST=$(INC_DIR)/test_inc -I$(SRC_DIR)/test_src/manual -I$(SRC_DIR)/test_src/auto -I$(SRC_DIR)/platform/
BUILD_DIR=./build
SRC_DIR=./src

.phony: all clean run

CC=arm-none-eabi-gcc
LD := $(CC)


SYSROOT := $(shell $(CC) --print-sysroot)
CFLAGS += \
	-O3 \
	-Wall -Wextra -Wshadow \
	-fno-common \
	-ffunction-sections \
	-fdata-sections \
	--sysroot=$(SYSROOT) \
	-DARMCM55 \
        -I$(INC_DIR) -I$(INC_DIR_TEST)

ARCH_FLAGS += \
	-march=armv8.1-m.main+mve.fp \
	-mthumb \
	-mfloat-abi=softfp  \

CFLAGS += \
	$(ARCH_FLAGS) \
	--specs=nosys.specs

LDSCRIPT = $(SRC_DIR)/platform/mps3.ld

LDFLAGS += \
	-Wl,--gc-sections \
	-L.

LDFLAGS += \
	--specs=nosys.specs \
	-Wl,--wrap=_write \
	-Wl,--wrap=_read \
	-ffreestanding \
	-T$(LDSCRIPT) \
	$(ARCH_FLAGS)

all: $(TARGET)

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

test.elf: $(OBJS_DIR) $(OBJ_FILES) $(LDSCRIPT)
	$(LD) $(LDFLAGS) -o $@ $(OBJ_FILES)

%.bin: %.elf
	arm-none-eabi-objcopy -S $< -O binary $@

build: $(TARGET)
run: $(TARGET)	
	qemu-system-arm -M mps3-an547  -nographic -semihosting -kernel $(TARGET)
clean:
	rm -rf $(OBJ_FILES)
	rm -rf $(TARGET)
	rm -rf $(LIBDEPS)
