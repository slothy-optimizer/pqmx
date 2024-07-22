# Tests
# TODO: commented out tests are failing; need to look into it

#include tests/chunk/chunk.mk
include tests/crt/crt.mk
include tests/ct/ct.mk
include tests/flt-fft/flt-fft.mk
include tests/fx-fft/fx-fft.mk
include tests/helloworld/helloworld.mk
include tests/intmulntt/intmulntt.mk
include tests/karatsuba/karatsuba.mk
# include tests/montgomery/montgomery.mk
include tests/ntt-192/ntt-192.mk
include tests/ntt-256/ntt-256.mk
include tests/ntt-384/ntt-384.mk
include tests/ntt-512/ntt-512.mk
include tests/ntt-768/ntt-768.mk
#include tests/ntt-1024/ntt-1024.mk
include tests/ntt-n256/ntt-n256.mk
include tests/ntt-dilithium/ntt-dilithium.mk
include tests/ntt-kyber/ntt-kyber.mk
include tests/permute/permute.mk
include tests/poly/poly.mk
#include tests/saber/saber.mk
#include tests/schoolbook/schoolbook.mk
include tests/sqmag/sqmag.mk
include tests/toom/toom.mk
include tests/transpose/transpose.mk
include tests/unpack/unpack.mk

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

.PHONY: ${cleans}
${cleans}: clean-%:
	make -C envs/$(platform) clean

.PHONY: clean
clean: ${cleans}
