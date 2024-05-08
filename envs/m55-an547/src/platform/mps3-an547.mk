ifndef _HAL
_HAL :=

CROSS_PREFIX ?= arm-none-eabi
RETAINED_VARS += CROSS_PREFIX

CC := $(CROSS_PREFIX)-gcc
AR := $(CROSS_PREFIX)-gcc-ar
LD := $(CC)
OBJCOPY := $(CROSS_PREFIX)-objcopy
SIZE := $(CROSS_PREFIX)-size

SYSROOT := $(shell $(CC) --print-sysroot)

CPPFLAGS += \
	--sysroot=$(SYSROOT) \
	-DARMCM55

HAL_SRC += \
	src/platform/startup_ARMCM55.c \
	src/platform/system_ARMCM55.c \
	src/platform/semihosting.c \
	src/platform/uart.c
HAL_OBJ = $(call objs,$(HAL_SRC))

OBJ += $(HAL_OBJ)

libhal.a: $(HAL_OBJ)

LDLIBS += -lhal
LIBDEPS += libhal.a
TARGETS += libhal.a

endif
