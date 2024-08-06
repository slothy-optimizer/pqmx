# Tests
include tests/chunk/chunk.mk
include tests/crt/crt.mk
include tests/ct/ct.mk
include tests/flt-fft/flt-fft.mk
include tests/fx-fft/fx-fft.mk
include tests/helloworld/helloworld.mk
include tests/intmulntt/intmulntt.mk
include tests/karatsuba/karatsuba.mk
include tests/keccak/keccak.mk
include tests/montgomery/montgomery.mk
include tests/ntt-192/ntt-192.mk
include tests/ntt-256/ntt-256.mk
include tests/ntt-384/ntt-384.mk
include tests/ntt-512/ntt-512.mk
include tests/ntt-768/ntt-768.mk
include tests/ntt-1024/ntt-1024-all.mk
include tests/ntt-n256/ntt-n256.mk
include tests/ntt-dilithium/ntt-dilithium.mk
include tests/ntt-dilithium-m7/ntt-dilithium-m7.mk
include tests/ntt-kyber/ntt-kyber.mk
include tests/permute/permute.mk
include tests/poly/poly.mk
include tests/profiling/profiling.mk
include tests/saber/saber_tc.mk
include tests/saber/saber_ntt_full.mk
include tests/saber/saber_ntt_partial.mk
include tests/sqmag/sqmag.mk
include tests/toom/toom.mk
include tests/transpose/transpose.mk
include tests/unpack/unpack.mk

testname = $(shell echo $(1) | tr '[a-z]' '[A-Z]' | tr '-' '_' | tr '/' '_')
testdir = $(addprefix $(2),tests/$(firstword $(subst /, ,$1))/)
testsources = $(addprefix $(2),$(addprefix $(call testdir,$1,),$($(call testname,$(1))_SOURCES)))
testasms = $(addprefix $(2),$(addprefix $(call testdir,$1,),$($(call testname,$(1))_ASMS)))
testplatforms = $(addsuffix _$(1),$($(call testname,$(1))_PLATFORMS))
testcflags = $($(call testname,$(1))_CFLAGS)
elfname = $(addsuffix -test.elf,$(subst /,-,$1))

platformtests := $(foreach test,$(TESTS), $(call testplatforms,$(test)))

builds          := $(addprefix build-, $(platformtests))
runs            := $(addprefix run-, $(platformtests))
checks          := $(addprefix check-, $(platformtests))
cleans          := $(addprefix clean-, $(platformtests))
flashs          := $(addprefix flash-, $(platformtests))

.PHONY: all
all: ${builds}

platform = $(firstword $(subst _, ,$*))
test = $(lastword $(subst _, ,$*))

.PHONY: ${builds}
${builds}: build-%:
	make -j$(shell nproc) -C envs/$(platform) build CFLAGS_EXTRA='$(call testcflags,$(test))' SOURCES='$(call testsources,$(test),../../)' ASMS='$(call testasms,$(test),../../)' TARGET=$(call elfname,$(test)) TESTDIR=$(call testdir,$(test),../../)

.PHONY: ${runs}
${runs}: run-%:
	make -C envs/$(platform) run CFLAGS_EXTRA='$(call testcflags,$(test))' SOURCES='$(call testsources,$(test),../../)' ASMS='$(call testasms,$(test),../../)' TARGET=$(call elfname,$(test)) TESTDIR=$(call testdir,$(test),../../)

.PHONY: run
run: ${runs}

.PHONY: ${checks}
${checks}: check-%:
	make -C envs/$(platform) check CFLAGS_EXTRA='$(call testcflags,$(test))' SOURCES='$(call testsources,$(test),../../)' ASMS='$(call testasms,$(test),../../)' TARGET=$(call elfname,$(test)) TESTDIR=$(call testdir,$(test),../../)

.PHONY: check
check: ${checks}

.PHONY: ${flashs}
${flashs}: flash-%:
	make -C envs/$(platform) flash CFLAGS_EXTRA='$(call testcflags,$(test))' SOURCES='$(call testsources,$(test),../../)' ASMS='$(call testasms,$(test),../../)' TARGET=$(call elfname,$(test)) TESTDIR=$(call testdir,$(test),../../)

.PHONY: ${cleans}
${cleans}: clean-%:
	make -C envs/$(platform) clean

.PHONY: clean
clean: ${cleans}
