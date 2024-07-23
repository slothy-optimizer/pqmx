# Makefile for images for AN500

MBED_OS_TARGET_DIR = $(MBED_OS_DIR)/targets/TARGET_ARM_FM/TARGET_FVP_MPS2/TARGET_FVP_MPS2_M7/device

ARCH_FLAGS += -mcpu=cortex-m7 -mthumb -mfloat-abi=hard -mfpu=fpv5-d16
LDSCRIPT = $(BUILD_DIR)/generated.M7.ld
CFLAGS += -DMPS2 -DMPS2_AN500
QEMU_PLATFORM = mps2-an500

include ../common/mps2.mk