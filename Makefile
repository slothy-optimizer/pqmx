# Tests
include tests/ntt_dilithium/ntt_dilithium.mk
include tests/ntt_kyber/ntt_kyber.mk

totestname = $(shell echo $(1) | tr '[a-z]' '[A-Z]')
totestsources = $(addprefix ../../tests/$(1)/,$($(call totestname,$(1))_SOURCES))
totestasm = $(addprefix ../../tests/$(1)/,$($(call totestname,$(1))_ASMS))
toplatform = $(addsuffix --$(1),$($(call totestname,$(1))_PLATFORMS))

platformtests := $(foreach test,$(TESTS), $(call toplatform,$(test)))

builds := $(addprefix build-, $(platformtests))
runs   := $(addprefix run-, $(platformtests))
cleans := $(addprefix clean-, $(platformtests))

.PHONY: all
all: ${builds}

platform = $(firstword $(subst --, ,$*))
test = $(lastword $(subst --, ,$*))


.PHONY: ${builds}
${builds}: build-%:
	make -j$(shell nproc) -C envs/$(platform) build SOURCES='$(call totestsources,$(test))' ASMS='$(call totestasm,$(test))'

.PHONY: ${runs}
${runs}: run-%:
	make -C envs/$(platform) run SOURCES='$(call totestsources,$(test))' ASMS='$(call totestasm,$(test))'

.PHONY: ${cleans}
${cleans}: clean-%:
	make -C envs/$(platform) clean

.PHONY: clean
clean: ${cleans}
