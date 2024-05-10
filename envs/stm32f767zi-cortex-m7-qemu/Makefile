PREFIX	?= arm-none-eabi
CC		= $(PREFIX)-gcc
LD		= $(PREFIX)-gcc
AR		= $(PREFIX)-ar
OBJCOPY	= $(PREFIX)-objcopy
OBJDUMP	= $(PREFIX)-objdump
GDB		= $(PREFIX)-gdb


ifeq ($(PLATFORM),stm32)
include stm32f407.mk
else
include qemu.mk
endif



build/_ELFNAME_%.o: $(LINKDEPS)
	@echo "  GEN     $@"
	$(Q)echo "const char _elf_name[] = \"build/$(ELFNAME)\";" | \
		$(CC) -x c -c -o $@ $(filter-out -g3,$(CFLAGS)) -

build/%.elf: build/_ELFNAME_%.elf.o $(LINKDEPS)
	@echo "  LD      $@"
	$(Q)[ -d $(@D) ] || mkdir -p $(@D)
	$(Q)$(LD) $(LDFLAGS) -o $@ $(filter %.o,$^) -Wl,--start-group $(LDLIBS) -Wl,--end-group

build/%.a:
	@echo "  AR      $@"
	$(Q)[ -d $(@D) ] || mkdir -p $(@D)
	$(Q)$(AR) rcs $@ $(filter %.o,$^)

build/%.bin: build/%.elf
	@echo "  OBJCOPY $@"
	$(Q)[ -d $(@D) ] || mkdir -p $(@D)
	$(Q)$(OBJCOPY) -Obinary $< $@

build/%.hex: build/%.elf
	@echo "  OBJCOPY $@"
	$(Q)[ -d $(@D) ] || mkdir -p $(@D)
	$(Q)$(OBJCOPY) -Oihex $< $@

build/%.c.o: %.c
	@echo "  CC      $@"
	$(Q)[ -d $(@D) ] || mkdir -p $(@D)
	$(Q)$(CC) -c -o $@ $(CFLAGS) $<

build/%.S.o: %.S
	@echo "  AS      $@"
	$(Q)[ -d $(@D) ] || mkdir -p $(@D)
	$(Q)$(CC) -c -o $@ $(CFLAGS) $<

build/%.s.o: %.s
	@echo "  AS      $@"
	$(Q)[ -d $(@D) ] || mkdir -p $(@D)
	$(Q)$(CC) -c -o $@ $(CFLAGS) $<

run: build/test.elf
	qemu-system-arm -M mps2-an500 -nographic -semihosting -kernel build/test.elf

clean:
	find . -name \*.o -type f -exec rm -f {} \;
	find . -name \*.d -type f -exec rm -f {} \;
	rm -rf build/*