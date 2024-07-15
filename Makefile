# Tests
include tests/ntt-dilithium/ntt-dilithium.mk
include tests/ntt-kyber/ntt-kyber.mk

testname = $(shell echo $(1) | tr '[a-z]' '[A-Z]' | tr '-' '_')
testdir = $(addprefix $(2),tests/$(1)/)
testsources = $(addprefix $(2),$(addprefix tests/$(1)/,$($(call testname,$(1))_SOURCES)))
testasms = $(addprefix $(2),$(addprefix tests/$(1)/,$($(call testname,$(1))_ASMS)))
testother = $(addprefix $(2),$(addprefix tests/$(1)/,$($(call testname,$(1))_OTHER)))
testplatforms = $(addsuffix _$(1),$($(call testname,$(1))_PLATFORMS))
elfname = $(addsuffix -test.elf,$(1))

platformtests := $(foreach test,$(TESTS), $(call testplatforms,$(test)))

builds          := $(addprefix build-, $(platformtests))
runs            := $(addprefix run-, $(platformtests))
checks          := $(addprefix check-, $(platformtests))
cleans          := $(addprefix clean-, $(platformtests))
standalones     := $(addprefix standalone-, $(platformtests))

.PHONY: all
all: ${builds}

platform = $(firstword $(subst _, ,$*))
test = $(lastword $(subst _, ,$*))

.PHONY: ${builds}
${builds}: build-%:
	make -j$(shell nproc) -C envs/$(platform) build SOURCES='$(call testsources,$(test),../../)' ASMS='$(call testasms,$(test),../../)' TARGET=$(call elfname,$(test)) TESTDIR=$(call testdir,$(test),../../)

.PHONY: ${runs}
${runs}: run-%:
	make -C envs/$(platform) run SOURCES='$(call testsources,$(test),../../)' ASMS='$(call testasms,$(test),../../)' TARGET=$(call elfname,$(test)) TESTDIR=$(call testdir,$(test),../../)

.PHONY: run
run: ${runs}

.PHONY: ${checks}
${checks}: check-%:
	make -C envs/$(platform) check SOURCES='$(call testsources,$(test),../../)' ASMS='$(call testasms,$(test),../../)' TARGET=$(call elfname,$(test)) TESTDIR=$(call testdir,$(test),../../)

.PHONY: check
check: ${checks}

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
