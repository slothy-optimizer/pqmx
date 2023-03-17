
.PHONY: all clean codegen

PYTH_SRCS := $(wildcard *.py) $(wildcard */*.py) $(wildcard */*/*.py) $(wildcard */*/*/*.py)

AUTOGEN_DIR = auto

PY_CODEGEN_UNPACK      = ./scripts/pack/test.py
PY_CODEGEN_POLY_SIMD   = ./scripts/poly-simd/test.py
PY_CODEGEN_SCHOOLBOOK  = ./scripts/poly/test.py
PY_CODEGEN_TOOM4       = ./scripts/toom4/test.py
PY_CODEGEN_TOOM3       = ./scripts/toom3/test.py
PY_CODEGEN_KARATSUBAX2 = ./scripts/karatsubax2/test.py
PY_CODEGEN_NTT_TEST    = ./scripts/ntt/test.py
PY_CODEGEN_PERMUTE_TEST = ./examples/permute/test.py
PY_CODEGEN_TRANSPOSE_TEST = ./examples/transpose/test.py

SCHOOLBOOK_METHOD = schoolbook

SCHOOLBOOK_SRCS := $(AUTOGEN_DIR)/poly/schoolbook/poly_u16_mul_16_mve_schoolbook.s  \
		   $(AUTOGEN_DIR)/poly/schoolbook/poly_u16_mul_32_mve_schoolbook.s  \
		   $(AUTOGEN_DIR)/poly/schoolbook/poly_u16_mul_64_mve_schoolbook.s  \
		   $(AUTOGEN_DIR)/poly/schoolbook/poly_u16_mul_128_mve_schoolbook.s \
                   $(AUTOGEN_DIR)/poly/schoolbook/poly_u16_mul_16_mve_comba.s       \
                   $(AUTOGEN_DIR)/poly/schoolbook/poly_u16_mul_32_mve_comba.s       \
                   $(AUTOGEN_DIR)/poly/schoolbook/poly_u16_mul_64_mve_comba.s       \
                   $(AUTOGEN_DIR)/poly/schoolbook/poly_u16_mul_128_mve_comba.s

POLY_SIMD_SRCS := $(AUTOGEN_DIR)/poly/simd/poly_u16_mul_32_mve_simd.s                          \
		  $(AUTOGEN_DIR)/poly/simd/poly_u16_mul_16_mve_simd.s                          \
                  $(AUTOGEN_DIR)/poly/simd/poly_u16_mul_32_anticyclic_mve_simd.s               \
                  $(AUTOGEN_DIR)/poly/simd/poly_u16_mul_16_anticyclic_mve_simd.s               \
                  $(AUTOGEN_DIR)/poly/simd/poly_u16_mul_16_anticyclic_opt_mve_simd.s           \
                  $(AUTOGEN_DIR)/poly/simd/poly_u16_mul_32_anticyclic_opt_mve_simd.s           \
                  $(AUTOGEN_DIR)/poly/simd/poly_u16_mul_32_anticyclic_karatsuba_fwd_mve_simd.s \
                  $(AUTOGEN_DIR)/poly/simd/poly_u16_mul_32_anticyclic_karatsuba_mve_simd.s     \
                  $(AUTOGEN_DIR)/poly/simd/poly_u16_mul_32_anticyclic_acc_karatsuba_mve_simd.s

TOOM4_SRCS := $(AUTOGEN_DIR)/poly/toom4/poly_u16_mul_832_toom4_mve.s  \
              $(AUTOGEN_DIR)/poly/toom4/poly_u16_mul_768_toom4_mve.s  \
              $(AUTOGEN_DIR)/poly/toom4/poly_u16_mul_512_toom4_mve.s  \
              $(AUTOGEN_DIR)/poly/toom4/poly_u16_mul_256_toom4_mve.s  \
              $(AUTOGEN_DIR)/poly/toom4/poly_u16_mul_64_toom4_mve.s   \
              $(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_fwd_256.s      \
              $(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_fwd_oop_256.s  \
              $(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_fwd_karatsuba_x1_oop_256.s  \
              $(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_fwd_karatsuba_x2_oop_256.s  \
              $(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_fwd_256_dual_top.s \
              $(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_fwd_256_dual_top_oop.s \
              $(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_fwd_256_dual_packed_limbs_oop.s \
              $(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_fwd_256_dual_packed_limbs_karatsuba_x1_oop.s \
              $(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_fwd_256_dual_packed_limbs_karatsuba_x2_oop.s \
              $(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_fwd_256_dual_bottom.s \
              $(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_fwd_512.s      \
              $(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_fwd_768.s      \
              $(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_fwd_832.s      \
              $(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_inv_dual_top_oop_256.s \
              $(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_inv_dual_top_256.s \
              $(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_inv_dual_bottom_256.s \
              $(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_inv_dual_bottom_oop_256.s \
              $(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_inv_dual_packed_limbs_oop_256.s \
              $(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_inv_half_256.s \
              $(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_inv_full_256.s \
              $(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_inv_half_512.s \
              $(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_inv_full_512.s \
              $(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_inv_half_768.s \
              $(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_inv_full_768.s \
              $(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_inv_half_832.s \
              $(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_inv_full_832.s

KARATSUBA_SRCS := $(AUTOGEN_DIR)/poly/karatsubax2/karatsuba_256_mve.s

PACK_SRCS := $(AUTOGEN_DIR)/unpack/unpack_22_4096_192.s \
             $(AUTOGEN_DIR)/unpack/unpack_22_4224_192.s \
             $(AUTOGEN_DIR)/unpack/unpack_22_2048_96.s

TOOM3_SRCS := $(AUTOGEN_DIR)/poly/toom3/poly_u16_mul_192_toom3_mve.s  \
              $(AUTOGEN_DIR)/poly/toom3/poly_u16_mul_768_toom3_mve.s  \
              $(AUTOGEN_DIR)/poly/toom3/poly_u16_toom3_fwd_192.s      \
              $(AUTOGEN_DIR)/poly/toom3/poly_u16_toom3_fwd_768.s      \
              $(AUTOGEN_DIR)/poly/toom3/poly_u16_toom3_inv_half_192.s \
              $(AUTOGEN_DIR)/poly/toom3/poly_u16_toom3_inv_full_192.s \
              $(AUTOGEN_DIR)/poly/toom3/poly_u16_toom3_inv_half_768.s \
              $(AUTOGEN_DIR)/poly/toom3/poly_u16_toom3_inv_full_768.s

PERMUTE_SRCS := $(AUTOGEN_DIR)/permute/permutation_test_u8.s  \
               $(AUTOGEN_DIR)/permute/permutation_test_u16.s \
               $(AUTOGEN_DIR)/permute/permutation_test_u32.s

NTT_N256_SRCS := $(AUTOGEN_DIR)/ntt_n256/ntt_n256_u32_33556993_28678040_complete.s          \
            $(AUTOGEN_DIR)/ntt_n256/ntt_n256_u32_33556993_28678040_incomplete.s        \
            $(AUTOGEN_DIR)/ntt_n256/ntt_n256_u32_33556993_28678040_incomplete_double.s \
            $(AUTOGEN_DIR)/ntt_n256/inv_ntt_n256_u32_33556993_28678040_complete.s      \
	    $(AUTOGEN_DIR)/ntt_n256/inv_ntt_n256_u32_33556993_28678040_incomplete.s

NTT_256_SRCS := $(AUTOGEN_DIR)/ntt_256/ntt_256_u32_33556993_26036764_complete.s \
                $(AUTOGEN_DIR)/ntt_256/ntt_256_u32_33556993_26036764_incomplete.s

NTT_1024_SRCS := $(AUTOGEN_DIR)/ntt_1024/ntt_1024_u32_33564673_286215_complete.s                      \
	         $(AUTOGEN_DIR)/ntt_1024/ntt_1024_u32_33564673_286215_incomplete.s                    \
	         $(AUTOGEN_DIR)/ntt_1024/ntt_1024_u32_33564673_286215_incomplete_rev4.s               \
	         $(AUTOGEN_DIR)/ntt_1024/ntt_1024_u32_33564673_286215_incomplete_skipfirst.s          \
	         $(AUTOGEN_DIR)/ntt_1024/ntt_1024_u32_33564673_286215_incomplete_bitrev_skipfirst.s   \
	         $(AUTOGEN_DIR)/ntt_1024/ntt_1024_u32_33564673_286215_incomplete_bitrev.s             \
	         $(AUTOGEN_DIR)/ntt_1024/ntt_1024_u32_33564673_286215_incomplete_double.s             \
	         $(AUTOGEN_DIR)/ntt_1024/ntt_1024_u32_33564673_286215_incomplete_double_rev4.s

NTT_512_SRCS := $(AUTOGEN_DIR)/ntt_512/ntt_512_u32_33564673_21224105_complete.s   \
                $(AUTOGEN_DIR)/ntt_512/ntt_512_u32_33564673_21224105_incomplete.s \
                $(AUTOGEN_DIR)/ntt_512/ntt_512_u32_33564673_21224105_incomplete_double.s

NTT_768_SRCS := $(AUTOGEN_DIR)/ntt_768/ntt_768_u32_33556993_299353_incomplete.s \
	        $(AUTOGEN_DIR)/ntt_768/ntt_768_u32_33556993_299353_incomplete_rev4.s \
		$(AUTOGEN_DIR)/ntt_768/ntt_768_u32_33556993_299353_incomplete_double.s \
                $(AUTOGEN_DIR)/ntt_768/ntt_768_u32_33556993_299353_incomplete_bitrev.s\
                $(AUTOGEN_DIR)/ntt_768/ntt_768_u32_33556993_299353_incomplete_good.s\
                $(AUTOGEN_DIR)/ntt_768/ntt_768_u32_33556993_299353_incomplete_good_bitrev.s \
                $(AUTOGEN_DIR)/ntt_768/ntt_768_u32_33556993_299353_incomplete_good_double.s

NTT_192_SRCS := $(AUTOGEN_DIR)/ntt_192/ntt_192_u32_33556993_27792935_incomplete_good.s        \
                $(AUTOGEN_DIR)/ntt_192/ntt_192_u32_33556993_27792935_incomplete_good_bitrev.s \
	        $(AUTOGEN_DIR)/ntt_192/ntt_192_u32_106117153_62524596_incomplete_good.s        \
                $(AUTOGEN_DIR)/ntt_192/ntt_192_u32_106117153_62524596_incomplete_good_bitrev.s \
	        $(AUTOGEN_DIR)/ntt_192/ntt_192_u32_45387457_16877098_incomplete_good.s        \
                $(AUTOGEN_DIR)/ntt_192/ntt_192_u32_45387457_16877098_incomplete_good_bitrev.s \
	        $(AUTOGEN_DIR)/ntt_192/ntt_192_u32_88299073_9670361_incomplete_good.s        \
                $(AUTOGEN_DIR)/ntt_192/ntt_192_u32_88299073_9670361_incomplete_good_bitrev.s \
	        $(AUTOGEN_DIR)/ntt_192/ntt_192_u32_108643009_1793055_incomplete_good.s        \
                $(AUTOGEN_DIR)/ntt_192/ntt_192_u32_108643009_1793055_incomplete_good_bitrev.s \
	        $(AUTOGEN_DIR)/ntt_192/ntt_192_u32_88299073_9670361_incomplete_good_oop_half_input.s        \
	        $(AUTOGEN_DIR)/ntt_192/ntt_192_u32_108643009_1793055_incomplete_good_oop_half_input.s \
                $(AUTOGEN_DIR)/ntt_192/ntt_192_u32_128919937_120423310_incomplete_good_oop.s \
                $(AUTOGEN_DIR)/ntt_192/ntt_192_u32_128919937_120423310_incomplete_good_bitrev.s \
                $(AUTOGEN_DIR)/ntt_192/ntt_192_u32_128919937_120423310_incomplete_good.s \
                $(AUTOGEN_DIR)/ntt_192/ntt_192_u32_128919937_120423310_incomplete_good_oop_half_input.s \
                $(AUTOGEN_DIR)/ntt_192/ntt_192_u32_114826273_107284677_incomplete_good_oop.s \
                $(AUTOGEN_DIR)/ntt_192/ntt_192_u32_114826273_107284677_incomplete_good_bitrev.s \
                $(AUTOGEN_DIR)/ntt_192/ntt_192_u32_114826273_107284677_incomplete_good.s \
                $(AUTOGEN_DIR)/ntt_192/ntt_192_u32_114826273_107284677_incomplete_good_oop_half_input.s

NTT_384_SRCS := $(AUTOGEN_DIR)/ntt_384/ntt_384_u32_33556993_15047299_incomplete_good.s        \
                $(AUTOGEN_DIR)/ntt_384/ntt_384_u32_33556993_15047299_incomplete_good_bitrev.s \
	        $(AUTOGEN_DIR)/ntt_384/ntt_384_u32_106117153_1392340_incomplete_good.s        \
                $(AUTOGEN_DIR)/ntt_384/ntt_384_u32_106117153_1392340_incomplete_good_bitrev.s \
	        $(AUTOGEN_DIR)/ntt_384/ntt_384_u32_45387457_923104_incomplete_good.s        \
                $(AUTOGEN_DIR)/ntt_384/ntt_384_u32_45387457_923104_incomplete_good_bitrev.s \
	        $(AUTOGEN_DIR)/ntt_384/ntt_384_u32_88299073_4883425_incomplete_good.s        \
                $(AUTOGEN_DIR)/ntt_384/ntt_384_u32_88299073_4883425_incomplete_good_bitrev.s \
	        $(AUTOGEN_DIR)/ntt_384/ntt_384_u32_88299073_4883425_incomplete_good_oop.s        \
	        $(AUTOGEN_DIR)/ntt_384/ntt_384_u32_88299073_4883425_incomplete_good_oop_half_input.s \
	        $(AUTOGEN_DIR)/ntt_384/ntt_384_u32_108643009_640922_incomplete_good.s        \
                $(AUTOGEN_DIR)/ntt_384/ntt_384_u32_108643009_640922_incomplete_good_bitrev.s \
	        $(AUTOGEN_DIR)/ntt_384/ntt_384_u32_108643009_640922_incomplete_good_oop.s \
	        $(AUTOGEN_DIR)/ntt_384/ntt_384_u32_108643009_640922_incomplete_good_oop_half_input.s \
	        $(AUTOGEN_DIR)/ntt_384/ntt_384_u32_128919937_4666088_incomplete_good.s        \
                $(AUTOGEN_DIR)/ntt_384/ntt_384_u32_128919937_4666088_incomplete_good_bitrev.s \
	        $(AUTOGEN_DIR)/ntt_384/ntt_384_u32_128919937_4666088_incomplete_good_oop.s \
	        $(AUTOGEN_DIR)/ntt_384/ntt_384_u32_128919937_4666088_incomplete_good_oop_half_input.s \
	        $(AUTOGEN_DIR)/ntt_384/ntt_384_u32_114826273_2551686_incomplete_good.s        \
                $(AUTOGEN_DIR)/ntt_384/ntt_384_u32_114826273_2551686_incomplete_good_bitrev.s \
	        $(AUTOGEN_DIR)/ntt_384/ntt_384_u32_114826273_2551686_incomplete_good_oop.s \
	        $(AUTOGEN_DIR)/ntt_384/ntt_384_u32_114826273_2551686_incomplete_good_oop_half_input.s


TRANSPOSE_SRCS := $(AUTOGEN_DIR)/transpose/transpose_u8x1_4x4.s \
               $(AUTOGEN_DIR)/transpose/transpose_u16x8_4x4.s \

# User source files.
AUTOGEN_SRCS := $(SCHOOLBOOK_SRCS) $(TOOM4_SRCS) $(TOOM3_SRCS) $(PERMUTE_SRCS) $(POLY_SIMD_SRCS) $(TRANSPOSE_SRCS) $(NTT_N256_SRCS) $(NTT_256_SRCS) $(NTT_1024_SRCS) $(NTT_512_SRCS) $(NTT_768_SRCS) $(NTT_192_SRCS) $(NTT_384_SRCS)

CODEGEN_SOURCES = $(wildcard %.s, ./*.py) $(wildcard %.s, ./*/*.py) $(wildcard %.s, ./*/*/*.py) $(wildcard %.s, ./*/*/*/*.py) $(wildcard %.s, ./*/*/*/*/*.py)

.phony: codegen
codegen: $(AUTOGEN_SRCS) $(CODEGEN_SOURCES)

# SIMD multiplication strategy
$(AUTOGEN_DIR)/poly/simd/poly_u16_mul_32_mve_simd.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_POLY_SIMD) --no-comments --out $@ poly_u16_mul_32_mve_simd

$(AUTOGEN_DIR)/poly/simd/poly_u16_mul_16_mve_simd.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_POLY_SIMD) --dim 16 --no-comments --out $@ poly_u16_mul_16_mve_simd

$(AUTOGEN_DIR)/poly/simd/poly_u16_mul_32_anticyclic_mve_simd.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_POLY_SIMD) --no-comments --carry-mode predicated-add --anticyclic --out $@ poly_u16_mul_32_anticyclic_mve_simd

$(AUTOGEN_DIR)/poly/simd/poly_u16_mul_16_anticyclic_mve_simd.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_POLY_SIMD) --dim 16 --no-comments --carry-mode predicated-add --anticyclic --out $@ poly_u16_mul_16_anticyclic_mve_simd

$(AUTOGEN_DIR)/poly/simd/poly_u16_mul_16_anticyclic_opt_mve_simd.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_POLY_SIMD) --no-comments --optimize --carry-mode predicated-add --dim 16 --anticyclic --out $@ poly_u16_mul_16_anticyclic_opt_mve_simd

$(AUTOGEN_DIR)/poly/simd/poly_u16_mul_32_anticyclic_opt_mve_simd.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_POLY_SIMD) --no-comments --optimize --carry-mode predicated-add --anticyclic --out $@ poly_u16_mul_32_anticyclic_opt_mve_simd

$(AUTOGEN_DIR)/poly/simd/poly_u16_mul_32_anticyclic_karatsuba_fwd_mve_simd.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_POLY_SIMD) --no-comments --optimize --carry-mode predicated-add --karatsuba-fwd --out $@ poly_u16_mul_32_anticyclic_karatsuba_fwd_mve_simd

$(AUTOGEN_DIR)/poly/simd/poly_u16_mul_32_anticyclic_karatsuba_mve_simd.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_POLY_SIMD) --no-comments --optimize --carry-mode predicated-add --karatsuba --out $@ poly_u16_mul_32_anticyclic_karatsuba_mve_simd

$(AUTOGEN_DIR)/poly/simd/poly_u16_mul_32_anticyclic_acc_karatsuba_mve_simd.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_POLY_SIMD) --no-comments --accumulate --optimize --carry-mode predicated-add --karatsuba --out $@ poly_u16_mul_32_anticyclic_acc_karatsuba_mve_simd

# Classical multiplication strategies

$(AUTOGEN_DIR)/poly/schoolbook/poly_u16_mul_16_mve_comba.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_SCHOOLBOOK) --no-comments --dim 16 --out $@ --method comba poly_u16_mul_16_comba_mve

$(AUTOGEN_DIR)/poly/schoolbook/poly_u16_mul_32_mve_comba.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_SCHOOLBOOK) --no-comments --dim 32 --out $@ --method comba poly_u16_mul_32_comba_mve

$(AUTOGEN_DIR)/poly/schoolbook/poly_u16_mul_64_mve_comba.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_SCHOOLBOOK) --no-comments --dim 64 --out $@ --method comba poly_u16_mul_64_comba_mve

$(AUTOGEN_DIR)/poly/schoolbook/poly_u16_mul_128_mve_comba.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_SCHOOLBOOK) --no-comments --dim 128 --out $@ --method comba poly_u16_mul_128_comba_mve

$(AUTOGEN_DIR)/poly/schoolbook/poly_u16_mul_16_mve_schoolbook.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_SCHOOLBOOK) --no-comments --dim 16 --out $@ --method schoolbook poly_u16_mul_16_schoolbook_mve

$(AUTOGEN_DIR)/poly/schoolbook/poly_u16_mul_32_mve_schoolbook.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_SCHOOLBOOK) --no-comments --dim 32 --out $@ --method schoolbook poly_u16_mul_32_schoolbook_mve

$(AUTOGEN_DIR)/poly/schoolbook/poly_u16_mul_64_mve_schoolbook.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_SCHOOLBOOK) --no-comments --dim 64 --out $@ --method schoolbook poly_u16_mul_64_schoolbook_mve

$(AUTOGEN_DIR)/poly/schoolbook/poly_u16_mul_128_mve_schoolbook.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_SCHOOLBOOK) --no-comments --dim 128 --out $@ --method schoolbook poly_u16_mul_128_schoolbook_mve

# Toom4 multiplication

$(AUTOGEN_DIR)/poly/toom4/poly_u16_mul_256_toom4_mve.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_TOOM4) --no-comments --dim 256 --out $@ --inner poly_u16_mul_64_C standalone poly_u16_mul_256_toom4_mve

$(AUTOGEN_DIR)/poly/toom4/poly_u16_mul_512_toom4_mve.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_TOOM4) --no-comments --dim 512 --out $@ --inner poly_u16_mul_128_C standalone poly_u16_mul_512_toom4_mve

$(AUTOGEN_DIR)/poly/toom4/poly_u16_mul_768_toom4_mve.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_TOOM4) --no-comments --toom4-interpolation-save-gprs --dim 768 --out $@ --inner poly_u16_mul_192_C standalone poly_u16_mul_768_toom4_mve

$(AUTOGEN_DIR)/poly/toom4/poly_u16_mul_832_toom4_mve.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_TOOM4) --no-comments --toom4-interpolation-save-gprs --dim 832 --out $@ --inner poly_u16_mul_208_C standalone poly_u16_mul_832_toom4_mve

$(AUTOGEN_DIR)/poly/toom4/poly_u16_mul_64_toom4_mve.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_TOOM4) --no-comments --dim 64 --out $@ --inner poly_u16_mul_16_C standalone poly_u16_mul_64_toom4_mve

$(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_fwd_256.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_TOOM4) --no-comments --dim 256 --out $@ evaluation poly_u16_toom4_fwd_256_mve

$(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_fwd_oop_256.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_TOOM4) --no-comments --out-of-place --dim 256 --out $@ evaluation poly_u16_toom4_fwd_oop_256_mve

$(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_fwd_karatsuba_x1_oop_256.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_TOOM4) --no-comments --layout karatsuba_x1 --out-of-place --dim 256 --out $@ evaluation poly_u16_toom4_fwd_karatsuba_x1_oop_256_mve

$(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_fwd_karatsuba_x2_oop_256.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_TOOM4) --no-comments --layout karatsuba_x2 --out-of-place --dim 256 --out $@ evaluation poly_u16_toom4_fwd_karatsuba_x2_oop_256_mve

$(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_fwd_256_dual.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_TOOM4) --striding --no-comments --dim 256 --out $@ evaluation poly_u16_toom4_fwd_dual_256_mve

$(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_fwd_256_dual_top.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_TOOM4) --striding --layout top --no-comments --dim 256 --out $@ evaluation poly_u16_toom4_fwd_dual_top_256_mve

$(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_fwd_256_dual_top_oop.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_TOOM4) --striding --out-of-place --layout top --no-comments --dim 256 --out $@ evaluation poly_u16_toom4_fwd_dual_top_oop_256_mve

$(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_fwd_256_dual_packed_limbs_oop.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_TOOM4) --striding --out-of-place --layout standard --no-comments --dim 256 --out $@ evaluation poly_u16_toom4_fwd_dual_packed_limbs_oop_256_mve

$(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_fwd_256_dual_packed_limbs_karatsuba_x1_oop.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_TOOM4) --striding --out-of-place --layout karatsuba_x1 --no-comments --dim 256 --out $@ evaluation poly_u16_toom4_fwd_dual_packed_limbs_karatsuba_x1_oop_256_mve

$(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_fwd_256_dual_packed_limbs_karatsuba_x2_oop.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_TOOM4) --striding --out-of-place --layout karatsuba_x2 --no-comments --dim 256 --out $@ evaluation poly_u16_toom4_fwd_dual_packed_limbs_karatsuba_x2_oop_256_mve

$(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_fwd_256_dual_bottom.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_TOOM4) --striding --layout bottom --no-comments --dim 256 --out $@ evaluation poly_u16_toom4_fwd_dual_bottom_256_mve

$(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_fwd_512.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_TOOM4) --no-comments --dim 512 --out $@ evaluation poly_u16_toom4_fwd_512_mve

$(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_fwd_768.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_TOOM4) --no-comments --dim 768 --out $@ evaluation poly_u16_toom4_fwd_768_mve

$(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_fwd_832.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_TOOM4) --no-comments --dim 832 --out $@ evaluation poly_u16_toom4_fwd_832_mve

$(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_inv_dual_top_256.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_TOOM4) --no-comments --dim 256 --out $@ --striding --layout top interpolation poly_u16_toom4_inv_dual_top_256_mve --toom4-interpolation-save-gprs

$(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_inv_dual_top_oop_256.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_TOOM4) --no-comments --dim 256 --out-of-place --out $@ --striding --layout top interpolation poly_u16_toom4_inv_dual_top_oop_256_mve --toom4-interpolation-save-gprs

$(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_inv_dual_bottom_256.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_TOOM4) --no-comments --dim 256 --out $@ --striding --layout bottom interpolation poly_u16_toom4_inv_dual_bottom_256_mve --toom4-interpolation-save-gprs

$(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_inv_dual_packed_limbs_oop_256.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_TOOM4) --no-comments --dim 256 --out $@ --striding --out-of-place --layout standard interpolation poly_u16_toom4_inv_dual_packed_limbs_oop_256_mve --toom4-interpolation-save-gprs

$(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_inv_dual_bottom_oop_256.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_TOOM4) --no-comments --dim 256 --out-of-place --out $@ --striding --layout bottom interpolation poly_u16_toom4_inv_dual_bottom_oop_256_mve --toom4-interpolation-save-gprs

$(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_inv_half_256.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_TOOM4) --no-comments --dim 256 --out $@ --no-overlap interpolation poly_u16_toom4_inv_half_256_mve

$(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_inv_full_256.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_TOOM4) --no-comments --dim 256 --out $@ interpolation poly_u16_toom4_inv_256_mve

$(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_inv_half_512.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_TOOM4) --no-comments --dim 512 --out $@ --no-overlap interpolation poly_u16_toom4_inv_half_512_mve

$(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_inv_full_512.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_TOOM4) --no-comments --dim 512 --out $@ interpolation poly_u16_toom4_inv_512_mve

$(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_inv_half_768.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_TOOM4) --no-comments --dim 768 --out $@ --no-overlap interpolation poly_u16_toom4_inv_half_768_mve

$(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_inv_full_768.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_TOOM4) --no-comments --toom4-interpolation-save-gprs --dim 768 --out $@ interpolation poly_u16_toom4_inv_768_mve

$(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_inv_half_832.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_TOOM4) --no-comments --dim 832 --out $@ --no-overlap interpolation poly_u16_toom4_inv_half_832_mve

$(AUTOGEN_DIR)/poly/toom4/poly_u16_toom4_inv_full_832.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_TOOM4) --no-comments --toom4-interpolation-save-gprs --dim 832 --out $@ interpolation poly_u16_toom4_inv_832_mve

# Karatsuba

$(AUTOGEN_DIR)/poly/karatsubax2/karatsuba_448_mve.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_KARATSUBAX2) --no-comments --striding --dim 448 --out $@ evaluation poly_u16_mul_448_karatsubax2_fwd_mve

# Toom3 multiplication

$(AUTOGEN_DIR)/poly/toom3/poly_u16_mul_192_toom3_mve.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_TOOM3) --no-comments --dim 192 --out $@ --inner poly_u16_mul_64_C standalone poly_u16_mul_192_toom3_mve

$(AUTOGEN_DIR)/poly/toom3/poly_u16_mul_768_toom3_mve.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_TOOM3) --no-comments --dim 768 --out $@ --inner poly_u16_mul_256_C standalone poly_u16_mul_768_toom3_mve

$(AUTOGEN_DIR)/poly/toom3/poly_u16_toom3_fwd_192.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_TOOM3) --no-comments --dim 192 --out $@ evaluation poly_u16_toom3_fwd_192_mve

$(AUTOGEN_DIR)/poly/toom3/poly_u16_toom3_fwd_768.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_TOOM3) --no-comments --dim 768 --out $@ evaluation poly_u16_toom3_fwd_768_mve

$(AUTOGEN_DIR)/poly/toom3/poly_u16_toom3_inv_half_192.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_TOOM3) --no-comments --dim 192 --out $@ --no-overlap interpolation poly_u16_toom3_inv_half_192_mve

$(AUTOGEN_DIR)/poly/toom3/poly_u16_toom3_inv_full_192.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_TOOM3) --no-comments --dim 192 --out $@ interpolation poly_u16_toom3_inv_192_mve

$(AUTOGEN_DIR)/poly/toom3/poly_u16_toom3_inv_half_768.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_TOOM3) --no-comments --dim 768 --out $@ --no-overlap interpolation poly_u16_toom3_inv_half_768_mve

$(AUTOGEN_DIR)/poly/toom3/poly_u16_toom3_inv_full_768.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_TOOM3) --no-comments --dim 768 --out $@ interpolation poly_u16_toom3_inv_768_mve

# Permute test

$(AUTOGEN_DIR)/permute/permutation_test_u8.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_PERMUTE_TEST) --bitwidth  8 --size 2048 --out $@

$(AUTOGEN_DIR)/permute/permutation_test_u16.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_PERMUTE_TEST) --bitwidth 16 --size 2048 --out $@

$(AUTOGEN_DIR)/permute/permutation_test_u32.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_PERMUTE_TEST) --bitwidth 32 --size 2048 --out $@

# Transpose load marker test
$(AUTOGEN_DIR)/transpose/transpose_u8x1_4x4.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_TRANSPOSE_TEST) --bitwidth 8 --block-size=1 --size=16 --stride=4 --no-comments --out $@

$(AUTOGEN_DIR)/transpose/transpose_u16x8_4x4.s: $(PYTH_SRCS)
	mkdir -p $(@D)
	python3 $(PY_CODEGEN_TRANSPOSE_TEST) --bitwidth 16 --block-size=8 --size=256 --stride=4 --no-comments --out $@

# NTT, negacyclic, degree 256, u32

$(AUTOGEN_DIR)/ntt_n256/ntt_n256_u32_33556993_28678040_complete.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --negacyclic --out $@ 256 33556993 28678040 8 ntt_n256_u32_33556993_28678040

$(AUTOGEN_DIR)/ntt_n256/inv_ntt_n256_u32_33556993_28678040_complete.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --negacyclic --inverse --out $@ 256 33556993 28678040 8 inv_ntt_n256_u32_33556993_28678040

$(AUTOGEN_DIR)/ntt_n256/ntt_n256_u32_33556993_28678040_incomplete.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --negacyclic --out $@ 256 33556993 28678040 6 ntt_n256_u32_33556993_28678040_incomplete

$(AUTOGEN_DIR)/ntt_n256/ntt_n256_u32_33556993_28678040_incomplete_double.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --negacyclic --double --out $@ 256 33556993 28678040 6 ntt_n256_u32_33556993_28678040_incomplete_double

$(AUTOGEN_DIR)/ntt_n256/inv_ntt_n256_u32_33556993_28678040_incomplete.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --negacyclic --inverse --out $@ 256 33556993 28678040 6 inv_ntt_n256_u32_33556993_28678040_incomplete

# NTT, cyclic, degree 256, u32

$(AUTOGEN_DIR)/ntt_256/ntt_256_u32_33556993_26036764_complete.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --out $@ 256 33556993 26036764 8 ntt_256_u32_33556993_26036764

$(AUTOGEN_DIR)/ntt_256/ntt_256_u32_33556993_26036764_incomplete.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --out $@ 256 33556993 26036764 6 ntt_256_u32_33556993_26036764_incomplete

# NTT, cyclic, degree 1024, u32

$(AUTOGEN_DIR)/ntt_1024/ntt_1024_u32_33564673_286215_complete.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --out $@ 1024 33564673 286215 10 ntt_1024_u32_33564673_286215

$(AUTOGEN_DIR)/ntt_1024/ntt_1024_u32_33564673_286215_incomplete.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --out $@ 1024 33564673 286215 8 ntt_1024_u32_33564673_286215_incomplete

$(AUTOGEN_DIR)/ntt_1024/ntt_1024_u32_33564673_286215_incomplete_rev4.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --rev4 --out $@ 1024 33564673 286215 8 ntt_1024_u32_33564673_286215_incomplete_rev4

$(AUTOGEN_DIR)/ntt_1024/ntt_1024_u32_33564673_286215_incomplete_skipfirst.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --skip-first --out $@ 1024 33564673 286215 8 ntt_1024_u32_33564673_286215_incomplete_skipfirst

$(AUTOGEN_DIR)/ntt_1024/ntt_1024_u32_33564673_286215_incomplete_bitrev_skipfirst.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --bitrev --skip-first --out $@ 1024 33564673 286215 8 ntt_1024_u32_33564673_286215_incomplete_bitrev_skipfirst

$(AUTOGEN_DIR)/ntt_1024/ntt_1024_u32_33564673_286215_incomplete_bitrev.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --bitrev --out $@ 1024 33564673 286215 8 ntt_1024_u32_33564673_286215_incomplete_bitrev

$(AUTOGEN_DIR)/ntt_1024/ntt_1024_u32_33564673_286215_incomplete_double.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --double --out $@ 1024 33564673 286215 8 ntt_1024_u32_33564673_286215_incomplete_double

$(AUTOGEN_DIR)/ntt_1024/ntt_1024_u32_33564673_286215_incomplete_double_rev4.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --rev4 --double --out $@ 1024 33564673 286215 8 ntt_1024_u32_33564673_286215_incomplete_double_rev4

# NTT, cyclic, degree 512, u32, skip first

$(AUTOGEN_DIR)/ntt_512/ntt_512_u32_33564673_21224105_complete.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --skip-first --out $@ 512 33564673 21224105 9 ntt_512_u32_33564673_21224105

$(AUTOGEN_DIR)/ntt_512/ntt_512_u32_33564673_21224105_incomplete.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --skip-first --out $@ 512 33564673 21224105 7 ntt_512_u32_33564673_21224105_incomplete

$(AUTOGEN_DIR)/ntt_512/ntt_512_u32_33564673_21224105_incomplete_double.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --skip-first --double --out $@ 512 33564673 21224105 7 ntt_512_u32_33564673_21224105_incomplete_double

# NTT, cyclic, degree 768, u32

$(AUTOGEN_DIR)/ntt_768/ntt_768_u32_33556993_299353_incomplete.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --out $@ 768 33556993 299353 7 ntt_768_u32_33556993_299353_incomplete

$(AUTOGEN_DIR)/ntt_768/ntt_768_u32_33556993_299353_incomplete_good.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --good --out $@ 768 33556993 299353 7 ntt_768_u32_33556993_299353_incomplete_good

$(AUTOGEN_DIR)/ntt_768/ntt_768_u32_33556993_299353_incomplete_good_bitrev.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --bitrev --good --out $@ 768 33556993 299353 7 ntt_768_u32_33556993_299353_incomplete_good_bitrev

$(AUTOGEN_DIR)/ntt_768/ntt_768_u32_33556993_299353_incomplete_good_double.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --double --good --out $@ 768 33556993 299353 7 ntt_768_u32_33556993_299353_incomplete_good_double

$(AUTOGEN_DIR)/ntt_768/ntt_768_u32_33556993_299353_incomplete_bitrev.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --bitrev --out $@ 768 33556993 299353 7 ntt_768_u32_33556993_299353_incomplete_bitrev

$(AUTOGEN_DIR)/ntt_768/ntt_768_u32_33556993_299353_incomplete_double.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --double --out $@ 768 33556993 299353 7 ntt_768_u32_33556993_299353_incomplete_double

$(AUTOGEN_DIR)/ntt_768/ntt_768_u32_33556993_299353_incomplete_rev4.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --rev4 --out $@ 768 33556993 299353 7 ntt_768_u32_33556993_299353_incomplete_rev4

# NTT, cyclic, degree 192, u32

$(AUTOGEN_DIR)/ntt_192/ntt_192_u32_33556993_27792935_incomplete_good.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --good --out $@ 192 33556993 27792935 5 ntt_192_u32_33556993_27792935_incomplete_good

$(AUTOGEN_DIR)/ntt_192/ntt_192_u32_33556993_27792935_incomplete_good_bitrev.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --bitrev --good --out $@ 192 33556993 27792935 5 ntt_192_u32_33556993_27792935_incomplete_good_bitrev

$(AUTOGEN_DIR)/ntt_192/ntt_192_u32_45387457_16877098_incomplete_good.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --good --incomplete-root --out $@ 192 45387457 16877098 5 ntt_192_u32_45387457_16877098_incomplete_good

$(AUTOGEN_DIR)/ntt_192/ntt_192_u32_45387457_16877098_incomplete_good_bitrev.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --bitrev --good --incomplete-root --out $@ 192 45387457 16877098 5 ntt_192_u32_45387457_16877098_incomplete_good_bitrev

$(AUTOGEN_DIR)/ntt_192/ntt_192_u32_106117153_62524596_incomplete_good.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --good --incomplete-root --out $@ 192 106117153 62524596 5 ntt_192_u32_106117153_62524596_incomplete_good

$(AUTOGEN_DIR)/ntt_192/ntt_192_u32_106117153_62524596_incomplete_good_bitrev.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --barrett-mul --bitrev --incomplete-root --good --out $@ 192 106117153 62524596 5 ntt_192_u32_106117153_62524596_incomplete_good_bitrev

$(AUTOGEN_DIR)/ntt_192/ntt_192_u32_88299073_9670361_incomplete_good.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --barrett-mul --good --incomplete-root --out $@ 192 88299073 9670361 5 ntt_192_u32_88299073_9670361_incomplete_good

$(AUTOGEN_DIR)/ntt_192/ntt_192_u32_88299073_9670361_incomplete_good_bitrev.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --barrett-mul --bitrev --good --incomplete-root --out $@ 192 88299073 9670361 5 ntt_192_u32_88299073_9670361_incomplete_good_bitrev

$(AUTOGEN_DIR)/ntt_192/ntt_192_u32_108643009_1793055_incomplete_good.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --barrett-mul --good --incomplete-root --out $@ 192 108643009 1793055 5 ntt_192_u32_108643009_1793055_incomplete_good

$(AUTOGEN_DIR)/ntt_192/ntt_192_u32_108643009_1793055_incomplete_good_bitrev.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --barrett-mul --bitrev --good --incomplete-root --out $@ 192 108643009 1793055 5 ntt_192_u32_108643009_1793055_incomplete_good_bitrev

$(AUTOGEN_DIR)/ntt_192/ntt_192_u32_88299073_9670361_incomplete_good_oop_half_input.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --external --half-input --barrett-mul --good --incomplete-root --out $@ 192 88299073 9670361 5 ntt_192_u32_88299073_9670361_incomplete_good_oop_half_input

$(AUTOGEN_DIR)/ntt_192/ntt_192_u32_108643009_1793055_incomplete_good_oop_half_input.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --external --half-input --barrett-mul --good --incomplete-root --out $@ 192 108643009 1793055 5 ntt_192_u32_108643009_1793055_incomplete_good_oop_half_input



$(AUTOGEN_DIR)/ntt_192/ntt_192_u32_128919937_120423310_incomplete_good_oop.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --external --barrett-mul --good --incomplete-root --out $@ 192 128919937 120423310 5 ntt_192_u32_128919937_120423310_incomplete_good_oop

$(AUTOGEN_DIR)/ntt_192/ntt_192_u32_128919937_120423310_incomplete_good_bitrev.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --barrett-mul --bitrev --good --incomplete-root --out $@ 192 128919937 120423310 5 ntt_192_u32_128919937_120423310_incomplete_good_bitrev

$(AUTOGEN_DIR)/ntt_192/ntt_192_u32_128919937_120423310_incomplete_good.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --barrett-mul --good --incomplete-root --out $@ 192 128919937 120423310 5 ntt_192_u32_128919937_120423310_incomplete_good

$(AUTOGEN_DIR)/ntt_192/ntt_192_u32_128919937_120423310_incomplete_good_oop_half_input.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --half-input --external --barrett-mul --good --incomplete-root --out $@ 192 128919937 120423310 5 ntt_192_u32_128919937_120423310_incomplete_good_oop_half_input

$(AUTOGEN_DIR)/ntt_192/ntt_192_u32_114826273_107284677_incomplete_good_oop.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --external --barrett-mul --good --incomplete-root --out $@ 192 114826273 107284677 5 ntt_192_u32_114826273_107284677_incomplete_good_oop

$(AUTOGEN_DIR)/ntt_192/ntt_192_u32_114826273_107284677_incomplete_good_bitrev.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --barrett-mul --bitrev --good --incomplete-root --out $@ 192 114826273 107284677 5 ntt_192_u32_114826273_107284677_incomplete_good_bitrev

$(AUTOGEN_DIR)/ntt_192/ntt_192_u32_114826273_107284677_incomplete_good.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --barrett-mul --good --incomplete-root --out $@ 192 114826273 107284677 5 ntt_192_u32_114826273_107284677_incomplete_good

$(AUTOGEN_DIR)/ntt_192/ntt_192_u32_114826273_107284677_incomplete_good_oop_half_input.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --half-input --external --barrett-mul --good --incomplete-root --out $@ 192 114826273 107284677 5 ntt_192_u32_114826273_107284677_incomplete_good_oop_half_input


# NTT, cyclic, degree 384, u32

$(AUTOGEN_DIR)/ntt_384/ntt_384_u32_33556993_15047299_incomplete_good.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --good --out $@ 384 33556993 15047299 6 ntt_384_u32_33556993_15047299_incomplete_good

$(AUTOGEN_DIR)/ntt_384/ntt_384_u32_33556993_15047299_incomplete_good_bitrev.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --bitrev --good --out $@ 384 33556993 15047299 6 ntt_384_u32_33556993_15047299_incomplete_good_bitrev

$(AUTOGEN_DIR)/ntt_384/ntt_384_u32_45387457_923104_incomplete_good.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --good --incomplete-root --out $@ 384 45387457 923104 6 ntt_384_u32_45387457_923104_incomplete_good

$(AUTOGEN_DIR)/ntt_384/ntt_384_u32_45387457_923104_incomplete_good_bitrev.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --bitrev --good --incomplete-root --out $@ 384 45387457 923104 6 ntt_384_u32_45387457_923104_incomplete_good_bitrev

$(AUTOGEN_DIR)/ntt_384/ntt_384_u32_106117153_1392340_incomplete_good.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --good --incomplete-root --out $@ 384 106117153 1392340 6 ntt_384_u32_106117153_1392340_incomplete_good

$(AUTOGEN_DIR)/ntt_384/ntt_384_u32_106117153_1392340_incomplete_good_bitrev.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --bitrev --incomplete-root --good --out $@ 384 106117153 1392340 6 ntt_384_u32_106117153_1392340_incomplete_good_bitrev

$(AUTOGEN_DIR)/ntt_384/ntt_384_u32_88299073_4883425_incomplete_good.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --barrett-mul --good --incomplete-root --out $@ 384 88299073 4883425 6 ntt_384_u32_88299073_4883425_incomplete_good

$(AUTOGEN_DIR)/ntt_384/ntt_384_u32_88299073_4883425_incomplete_good_bitrev.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --barrett-mul --bitrev --good --incomplete-root --out $@ 384 88299073 4883425 6 ntt_384_u32_88299073_4883425_incomplete_good_bitrev

$(AUTOGEN_DIR)/ntt_384/ntt_384_u32_108643009_640922_incomplete_good.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --barrett-mul --good --incomplete-root --out $@ 384 108643009 640922 6 ntt_384_u32_108643009_640922_incomplete_good

$(AUTOGEN_DIR)/ntt_384/ntt_384_u32_108643009_640922_incomplete_good_bitrev.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --barrett-mul --bitrev --good --incomplete-root --out $@ 384 108643009 640922 6 ntt_384_u32_108643009_640922_incomplete_good_bitrev

$(AUTOGEN_DIR)/ntt_384/ntt_384_u32_88299073_4883425_incomplete_good_oop.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --external --barrett-mul --good --incomplete-root --out $@ 384 88299073 4883425 6 ntt_384_u32_88299073_4883425_incomplete_good_oop

$(AUTOGEN_DIR)/ntt_384/ntt_384_u32_108643009_640922_incomplete_good_oop.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --external --barrett-mul --good --incomplete-root --out $@ 384 108643009 640922 6 ntt_384_u32_108643009_640922_incomplete_good_oop

$(AUTOGEN_DIR)/ntt_384/ntt_384_u32_88299073_4883425_incomplete_good_oop_half_input.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --half-input --external --barrett-mul --good --incomplete-root --out $@ 384 88299073 4883425 6 ntt_384_u32_88299073_4883425_incomplete_good_oop_half_input

$(AUTOGEN_DIR)/ntt_384/ntt_384_u32_108643009_640922_incomplete_good_oop_half_input.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --half-input --external --barrett-mul --good --incomplete-root --out $@ 384 108643009 640922 6 ntt_384_u32_108643009_640922_incomplete_good_oop_half_input


$(AUTOGEN_DIR)/ntt_384/ntt_384_u32_128919937_4666088_incomplete_good_oop.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --external --barrett-mul --good --incomplete-root --out $@ 384 128919937 4666088 6 ntt_384_u32_128919937_4666088_incomplete_good_oop

$(AUTOGEN_DIR)/ntt_384/ntt_384_u32_128919937_4666088_incomplete_good_bitrev.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --barrett-mul --bitrev --good --incomplete-root --out $@ 384 128919937 4666088 6 ntt_384_u32_128919937_4666088_incomplete_good_bitrev

$(AUTOGEN_DIR)/ntt_384/ntt_384_u32_128919937_4666088_incomplete_good.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --barrett-mul --good --incomplete-root --out $@ 384 128919937 4666088 6 ntt_384_u32_128919937_4666088_incomplete_good

$(AUTOGEN_DIR)/ntt_384/ntt_384_u32_128919937_4666088_incomplete_good_oop_half_input.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --half-input --external --barrett-mul --good --incomplete-root --out $@ 384 128919937 4666088 6 ntt_384_u32_128919937_4666088_incomplete_good_oop_half_input

$(AUTOGEN_DIR)/ntt_384/ntt_384_u32_114826273_2551686_incomplete_good_oop.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --external --barrett-mul --good --incomplete-root --out $@ 384 114826273 2551686 6 ntt_384_u32_114826273_2551686_incomplete_good_oop

$(AUTOGEN_DIR)/ntt_384/ntt_384_u32_114826273_2551686_incomplete_good_bitrev.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --barrett-mul --bitrev --good --incomplete-root --out $@ 384 114826273 2551686 6 ntt_384_u32_114826273_2551686_incomplete_good_bitrev

$(AUTOGEN_DIR)/ntt_384/ntt_384_u32_114826273_2551686_incomplete_good.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --barrett-mul --good --incomplete-root --out $@ 384 114826273 2551686 6 ntt_384_u32_114826273_2551686_incomplete_good

$(AUTOGEN_DIR)/ntt_384/ntt_384_u32_114826273_2551686_incomplete_good_oop_half_input.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_NTT_TEST) --half-input --external --barrett-mul --good --incomplete-root --out $@ 384 114826273 2551686 6 ntt_384_u32_114826273_2551686_incomplete_good_oop_half_input

# Unpack

$(AUTOGEN_DIR)/unpack/unpack_22_4224_192.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_UNPACK) 22 4224 --words-out 192 --out $@

$(AUTOGEN_DIR)/unpack/unpack_22_4096_192.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_UNPACK) 22 4096 --words-out 192 --out $@

$(AUTOGEN_DIR)/unpack/unpack_22_2048_96.s: $(PYTH_SRCS)
	python3 $(PY_CODEGEN_UNPACK) 22 2048 --words-out 96 --out $@

clean:
	rm -rf $(C_OBJS) $(ASM_OBJS) $(CMSIS_OBJS) $(AUTOGEN_SRCS) $(AUTOGEN_SRCS)
	rm -rf $(TARGET)
