# Makefile for images for AN386

MBED_OS_TARGET_DIR = $(MBED_OS_DIR)/targets/TARGET_ARM_SSG/TARGET_MPS2/TARGET_MPS2_M4/device

ARCH_FLAGS += -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16
LDSCRIPT = $(BUILD_DIR)/generated.M4.ld
CFLAGS += -DMPS2 -DMPS2_AN386
QEMU_PLATFORM = mps2-an386

include ../common/mps2.mk
