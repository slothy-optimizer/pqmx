# Tests
include tests/ntt_dilithium/ntt_dilithium.mk
include tests/ntt_kyber/ntt_kyber.mk

testname = $(shell echo $(1) | tr '[a-z]' '[A-Z]')
testsources = $(addprefix $(2),$(addprefix tests/$(1)/,$($(call testname,$(1))_SOURCES)))
testasms = $(addprefix $(2),$(addprefix tests/$(1)/,$($(call testname,$(1))_ASMS)))
testother = $(addprefix $(2),$(addprefix tests/$(1)/,$($(call testname,$(1))_OTHER)))
testplatforms = $(addsuffix --$(1),$($(call testname,$(1))_PLATFORMS))
elfname = $(addsuffix -test.elf,$(1))

platformtests := $(foreach test,$(TESTS), $(call testplatforms,$(test)))

builds          := $(addprefix build-, $(platformtests))
runs            := $(addprefix run-, $(platformtests))
cleans          := $(addprefix clean-, $(platformtests))
standalones     := $(addprefix standalone-, $(platformtests))

.PHONY: all
all: ${builds}

platform = $(firstword $(subst --, ,$*))
test = $(lastword $(subst --, ,$*))

.PHONY: ${builds}
${builds}: build-%:
	make -j$(shell nproc) -C envs/$(platform) build SOURCES='$(call testsources,$(test),../../)' ASMS='$(call testasms,$(test),../../)' TARGET=$(call elfname,$(test))

.PHONY: ${runs}
${runs}: run-%:
	make -C envs/$(platform) run SOURCES='$(call testsources,$(test),../../)' ASMS='$(call testasms,$(test),../../)' TARGET=$(call elfname,$(test))

.PHONY: run
run: ${runs}

.PHONY: ${standalones}
${standalones}: standalone-%:
	make -C envs/$(platform) clean
	mkdir -p standalone/$@/test_src/
	cp -rL envs/$(platform)/* standalone/$@/
	cp -rL $(call testsources,$(test),./) $(call testasms,$(test),./) $(call testother,$(test),./)  standalone/$@/test_src/

.PHONY: standalone
standalone: ${standalones}

.PHONY: ${cleans}
${cleans}: clean-%:
	make -C envs/$(platform) clean

.PHONY: clean
clean: ${cleans}
	rm -rf standalone
