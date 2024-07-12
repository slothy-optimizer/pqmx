# Tests
include tests/ntt_dilithium/ntt_dilithium.mk
include tests/ntt_kyber/ntt_kyber.mk

totestname = $(shell echo $(1) | tr '[a-z]' '[A-Z]')
totestsources = $(addprefix $(2),$(addprefix tests/$(1)/,$($(call totestname,$(1))_SOURCES)))
totestasm = $(addprefix $(2),$(addprefix tests/$(1)/,$($(call totestname,$(1))_ASMS)))
totestother = $(addprefix $(2),$(addprefix tests/$(1)/,$($(call totestname,$(1))_OTHER)))
toplatform = $(addsuffix --$(1),$($(call totestname,$(1))_PLATFORMS))
toelfname = $(addsuffix -test.elf,$(1))

platformtests := $(foreach test,$(TESTS), $(call toplatform,$(test)))

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
	make -j$(shell nproc) -C envs/$(platform) build SOURCES='$(call totestsources,$(test),../../)' ASMS='$(call totestasm,$(test),../../)' TARGET=$(call toelfname,$(test))

.PHONY: ${runs}
${runs}: run-%:
	make -C envs/$(platform) run SOURCES='$(call totestsources,$(test),../../)' ASMS='$(call totestasm,$(test),../../)' TARGET=$(call toelfname,$(test))

.PHONY: run
run: ${runs}

.PHONY: ${standalones}
${standalones}: standalone-%:
	make -C envs/$(platform) clean
	mkdir -p standalone/$@/test_src/
	cp -rL envs/$(platform)/* standalone/$@/
	cp -rL $(call totestsources,$(test),./) $(call totestasm,$(test),./) $(call totestother,$(test),./)  standalone/$@/test_src/

.PHONY: standalone
standalone: ${standalones}

.PHONY: ${cleans}
${cleans}: clean-%:
	make -C envs/$(platform) clean

.PHONY: clean
clean: ${cleans}
	rm -rf standalone
