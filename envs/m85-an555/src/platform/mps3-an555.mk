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
	-DARMCM85

ARCH_FLAGS += \
	-march=armv8.1-m.main \
	-mthumb \
	-mfloat-abi=hard -mfpu=fpv4-sp-d16 \

CPPFLAGS += \
	-Iplatform/

CFLAGS += \
	$(ARCH_FLAGS) \
	--specs=nosys.specs

LDSCRIPT = platform/gcc_arm_sse_310.ld

LDFLAGS += \
	--specs=nosys.specs \
	-Wl,--wrap=_write \
	-Wl,--wrap=_read \
	-ffreestanding \
	-T$(LDSCRIPT) \
	$(ARCH_FLAGS)

HAL_SRC += \
	platform/startup_ARMCM85.c \
	platform/system_ARMCM85.c \
	platform/uart.c
HAL_OBJ = $(call objs,$(HAL_SRC))

OBJ += $(HAL_OBJ)

libhal.a: $(HAL_OBJ)

LDLIBS += -lhal
LIBDEPS += libhal.a
TARGETS += libhal.a

endif
