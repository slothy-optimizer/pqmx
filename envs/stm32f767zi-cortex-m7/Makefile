TARGET=test.elf

PREFIX	?= arm-none-eabi
CC		= $(PREFIX)-gcc
LD		= $(PREFIX)-gcc
OBJCOPY	= $(PREFIX)-objcopy
OBJDUMP	= $(PREFIX)-objdump
GDB		= $(PREFIX)-gdb
OPENCM3_DIR =libopencm3

SRC_DIR=./src
INC_DIR=./inc
INC_DIR_TEST=$(INC_DIR)/test_inc -I$(SRC_DIR)/test_src/manual -I$(SRC_DIR)/test_src/auto
BUILD_DIR=./build


DEVICE=stm32f767zi
LIBNAME= opencm3_stm32f7
ARCH_FLAGS = -mthumb -mcpu=cortex-m7 -mfloat-abi=hard -mfpu=fpv5-d16

DEFINES=-DSTM32F7 -DSTM32F767ZI

CFLAGS		+= -O3\
		   -Wall -Wextra -Wimplicit-function-declaration \
		   -Wredundant-decls -Wmissing-prototypes -Wstrict-prototypes \
		   -Wundef -Wshadow \
		   -I$(OPENCM3_DIR)/include -I$(INC_DIR) -I$(INC_DIR_TEST) \
		   -fno-common $(ARCH_FLAGS) -MD $(DEFINES)

DEVICES_DATA = $(OPENCM3_DIR)/ld/devices.data
LDSCRIPT = stm32f767zi.ld

LDLIBS += -l$(LIBNAME)
LIBDEPS += $(OPENCM3_DIR)/lib/lib$(LIBNAME).a

LDFLAGS += -L$(OPENCM3_DIR)/lib
LDFLAGS += \
	--specs=nosys.specs \
	-Wl,--wrap=_sbrk \
	-nostartfiles \
	-ffreestanding \
	-T$(LDSCRIPT) \
	$(ARCH_FLAGS)

all: $(TARGET)

# ---

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
OBJ_FILES=$(ASM_OBJ_FILES) $(C_OBJ_FILES)

$(C_OBJ_FILES): $(BUILD_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(CFLAGS) -c -o $@ $<

$(info $$C_OBJ_FILES is [${C_OBJ_FILES}])
$(info $$SRC_DIR is [${SRC_DIR}])

$(ASM_OBJ_FILES): $(BUILD_DIR)/%.o: $(SRC_DIR)/%.s
	$(CC) -x assembler-with-cpp $(CFLAGS) -c -o $@ $<

$(info $$ASM_OBJ_FILES is [${ASM_OBJ_FILES}])

$(info $$TARGET is [${TARGET}])
$(info $$OBJS_DIR is [${OBJS_DIR}])
$(info $$OBJ_FILES is [${OBJ_FILES}])

$(TARGET): $(OBJS_DIR) $(OBJ_FILES) $(SCATTER_SRC_TMP)
	$(LD) -o $(TARGET) $(OBJ_FILES) $(LDFLAGS) -l$(LIBNAME)

build: $(TARGET)
run: $(TARGET)
	qemu-system-arm -M mps2-an500 -nographic -semihosting -kernel $(TARGET)

clean:
	rm -rf $(OBJ_FILES)
	rm -rf $(TARGET)
