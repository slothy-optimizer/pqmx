/*
 * Copyright (c) 2025 SLOTHY authors
 * SPDX-License-Identifier: MIT
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 *
 *
 * Author: Hanno Becker <hannobecker@posteo.de>
 */

#define ENABLE_PMU_STATS         /* Do not enable when benching for cycle count */

#if defined(ENABLE_PMU_STATS)
#define REPEAT 100
#define REPEAT_MEDIAN 100
#else
#define REPEAT  1024
#endif

/*
 * Some external references to auto-generated assembly.
 */

#include <hal.h>
#include <stdint.h>

#include <string.h>
#include <stdlib.h>
#include <time.h>
#include "misc.h"
#include "poly.h"
#include "ref.h"
#include "fnt.h"
#include "ntt_769.h"

void pqcrystals_dilithium_ntt(int32_t *);
void pqcrystals_dilithium_ntt_opt_m7(int32_t *);

void pqcrystals_dilithium_invntt_tomont(int32_t *);
void pqcrystals_dilithium_invntt_tomont_opt_m7(int32_t *);

void pqcrystals_dilithium_asm_caddq(int32_t *);
void pqcrystals_dilithium_asm_caddq_opt_m7(int32_t *);

void pqcrystals_dilithium_asm_pointwise_acc_montgomery(int32_t *, int32_t *, int32_t *);
void pqcrystals_dilithium_asm_pointwise_acc_montgomery_opt_m7(int32_t *, int32_t *, int32_t *);

void pqcrystals_dilithium_asm_pointwise_montgomery(int32_t *, int32_t *, int32_t *);
void pqcrystals_dilithium_asm_pointwise_montgomery_opt_m7(int32_t *, int32_t *, int32_t *);

void pqcrystals_dilithium_asm_reduce32(int32_t *);
void pqcrystals_dilithium_asm_reduce32_opt_m7(int32_t *);

#define NTT_LAYERS             8
#define NTT_SIZE               (1u << NTT_LAYERS)
#define NTT_ROOT_ORDER         (2 * NTT_SIZE)
#define NTT_INCOMPLETE_LAYERS  8
#define NTT_INCOMPLETE_SIZE    (1u << NTT_INCOMPLETE_LAYERS)
#define NTT_LAYER_GAP          ( NTT_LAYERS - NTT_INCOMPLETE_LAYERS )
#define NTT_LAYER_STRIDE       (1u << NTT_LAYER_GAP )


typedef struct {
    char name[100];
    uint64_t cycles;
} benchmark_result;

benchmark_result results[100];
int benchmark_cnt = 0;

static void add_benchmark_results(char *name, uint64_t cycles){
    if(benchmark_cnt == 100) return;

    results[benchmark_cnt].cycles = cycles;
    strncpy(results[benchmark_cnt].name, name, 100);
    benchmark_cnt++;
}

static void dump_benchmarks_tex(void){
    for(int i=0;i<benchmark_cnt;i++){

        debug_printf("\\DefineVar{%s_%s}{%llu}", DEVICE, results[i].name, results[i].cycles);
    }
}

/*
 * Test cases
 */

#define MAKE_TEST_NTT(var,func,ref_func,modulus)                            \
int test_ ## var ()                                                         \
{                                                                           \
    /* debug_test_start( "Test for " #func );*/                             \
    debug_printf("Test for " #func);                                        \
    int32_t src[NTT_SIZE]      __attribute__((aligned(16)));                \
    int32_t src_copy[NTT_SIZE] __attribute__((aligned(16)));                \
                                                                            \
    /* Setup input */                                                       \
    fill_random_u32( (uint32_t*) src, NTT_SIZE );                           \
    mod_reduce_buf_s32( src, NTT_SIZE, modulus );                           \
                                                                            \
    /* Step 1: Reference NTT */                                             \
    memcpy( src_copy, src, sizeof( src ) );                                 \
    ref_func( src_copy);                                                    \
                                                                            \
                                                                            \
    /* Step 2: Optimized NTT */                                             \
    (func)( src );                                                          \
                                                                            \
    if( compare_buf_u32( (uint32_t const*) src, (uint32_t const*) src_copy, \
                         NTT_SIZE ) != 0 )                                  \
    {                                                                       \
        debug_print_buf_s32( src_copy, NTT_SIZE, "Reference" );             \
        debug_print_buf_s32( src, NTT_SIZE, "This" );                       \
        debug_test_fail();                                                  \
        return( 1 );                                                        \
    }                                                                       \
    debug_test_ok();                                                        \
                                                                            \
    return( 0 );                                                            \
}

#define MAKE_TEST_BASEMUL(var,func,ref_func,modulus)                        \
int test_ ## var ()                                                         \
{                                                                           \
    /* debug_test_start( "Test for " #func );*/                             \
    debug_printf("Test for " #func);                                        \
    int32_t src[NTT_SIZE]      __attribute__((aligned(16)));                \
    int32_t src1[NTT_SIZE]      __attribute__((aligned(16)));               \
    int32_t src2[NTT_SIZE]      __attribute__((aligned(16)));               \
    int32_t src_copy[NTT_SIZE] __attribute__((aligned(16)));                \
                                                                            \
    /* Setup input */                                                       \
    fill_random_u32( (uint32_t*) src, NTT_SIZE );                           \
    mod_reduce_buf_s32( src, NTT_SIZE, modulus );                           \
    fill_random_u32( (uint32_t*) src1, NTT_SIZE );                          \
    mod_reduce_buf_s32( src1, NTT_SIZE, modulus );                          \
    fill_random_u32( (uint32_t*) src2, NTT_SIZE );                          \
    mod_reduce_buf_s32( src2, NTT_SIZE, modulus );                          \
                                                                            \
    /* Step 1: Reference NTT */                                             \
    memcpy( src_copy, src, sizeof( src ) );                                 \
    ref_func( src_copy, src1, src2 );                                       \
                                                                            \
                                                                            \
    /* Step 2: Optimized NTT */                                             \
    (func)( src, src1, src2);                                               \
                                                                            \
    if( compare_buf_u32( (uint32_t const*) src, (uint32_t const*) src_copy, \
                         NTT_SIZE ) != 0 )                                  \
    {                                                                       \
        debug_print_buf_s32( src_copy, NTT_SIZE, "Reference" );             \
        debug_print_buf_s32( src, NTT_SIZE, "This" );                       \
        debug_test_fail();                                                  \
        return( 1 );                                                        \
    }                                                                       \
    debug_test_ok();                                                        \
                                                                            \
    return( 0 );                                                            \
}


#define MAKE_TEST_POINTMUL(var,func,ref_func,modulus)                       \
int test_ ## var ()                                                         \
{                                                                           \
    /* debug_test_start( "Test for " #func );*/                             \
    debug_printf("Test for " #func);                                        \
    int16_t src[NTT_SIZE]      __attribute__((aligned(16)));                \
    int32_t src1[NTT_SIZE]      __attribute__((aligned(16)));               \
    int16_t src_copy[NTT_SIZE] __attribute__((aligned(16)));                \
                                                                            \
    /* Setup input */                                                       \
    fill_random_u32( (uint32_t*) src1, NTT_SIZE );                          \
    mod_reduce_buf_s32( src1, NTT_SIZE, modulus );                          \
                                                                            \
    /* Step 1: Reference NTT */                                             \
    memcpy( src_copy, src, sizeof( src ) );                                 \
    ref_func( src_copy, src1 );                                             \
                                                                            \
                                                                            \
    /* Step 2: Optimized NTT */                                             \
    (func)( src, src1);                                                     \
                                                                            \
    if( compare_buf_u16( (uint16_t const*) src, (uint16_t const*) src_copy, \
                         NTT_SIZE ) != 0 )                                  \
    {                                                                       \
        debug_print_buf_s16( src_copy, NTT_SIZE, "Reference" );             \
        debug_print_buf_s16( src, NTT_SIZE, "This" );                       \
        debug_test_fail();                                                  \
        return( 1 );                                                        \
    }                                                                       \
    debug_test_ok();                                                        \
                                                                            \
    return( 0 );                                                            \
}

#define MAKE_TEST_ASYM_MUL(var,func,ref_func,modulus)                       \
int test_ ## var ()                                                         \
{                                                                           \
    /* debug_test_start( "Test for " #func );*/                             \
    debug_printf("Test for " #func);                                        \
    int32_t src[NTT_SIZE]      __attribute__((aligned(16)));                \
    int32_t src1[NTT_SIZE]      __attribute__((aligned(16)));               \
    int32_t src2[NTT_SIZE]      __attribute__((aligned(16)));               \
    int16_t src3[NTT_SIZE]      __attribute__((aligned(16)));               \
    int32_t src_copy[NTT_SIZE] __attribute__((aligned(16)));                \
                                                                            \
    /* Setup input */                                                       \
    fill_random_u32( (uint32_t*) src, NTT_SIZE );                           \
    mod_reduce_buf_s32( src, NTT_SIZE, modulus );                           \
    fill_random_u32( (uint32_t*) src1, NTT_SIZE );                          \
    mod_reduce_buf_s32( src1, NTT_SIZE, modulus );                          \
    fill_random_u32( (uint32_t*) src2, NTT_SIZE );                          \
    mod_reduce_buf_s32( src2, NTT_SIZE, modulus );                          \
    fill_random_u16( (uint16_t*) src3, NTT_SIZE );                          \
    mod_reduce_buf_s16( src3, NTT_SIZE, modulus );                          \
                                                                            \
    /* Step 1: Reference NTT */                                             \
    memcpy( src_copy, src, sizeof( src ) );                                 \
    ref_func( src_copy, src1, src2, src3 );                                 \
                                                                            \
                                                                            \
    /* Step 2: Optimized NTT */                                             \
    (func)( src, src1, src2, src3);                                         \
                                                                            \
    if( compare_buf_u32( (uint32_t const*) src, (uint32_t const*) src_copy, \
                         NTT_SIZE ) != 0 )                                  \
    {                                                                       \
        debug_print_buf_s32( src_copy, NTT_SIZE, "Reference" );             \
        debug_print_buf_s32( src, NTT_SIZE, "This" );                       \
        debug_test_fail();                                                  \
        return( 1 );                                                        \
    }                                                                       \
    debug_test_ok();                                                        \
                                                                            \
    return( 0 );                                                            \
}


#define MAKE_TEST_NTT_16(var,func,ref_func, modulus)                        \
int test_ ## var ()                                                         \
{                                                                           \
    /* debug_test_start( "Test for " #func );*/                             \
    debug_printf("Test for " #func);                                        \
    int16_t src[NTT_SIZE]      __attribute__((aligned(16)));                \
    int16_t src_copy[NTT_SIZE] __attribute__((aligned(16)));                \
                                                                            \
    /* Setup input */                                                       \
    fill_random_u16( (uint16_t*) src, NTT_SIZE );                           \
    mod_reduce_buf_s16( src, NTT_SIZE, modulus );                           \
                                                                            \
    /* Step 1: Reference NTT */                                             \
    memcpy( src_copy, src, sizeof( src ) );                                 \
    ref_func( src_copy);                                                    \
                                                                            \
                                                                            \
    /* Step 2: Optimized NTT */                                             \
    (func)( src );                                                          \
                                                                            \
    if( compare_buf_u16( (uint16_t const*) src, (uint16_t const*) src_copy, \
                         NTT_SIZE ) != 0 )                                  \
    {                                                                       \
        debug_print_buf_s16( src_copy, NTT_SIZE, "Reference" );             \
        debug_print_buf_s16( src, NTT_SIZE, "This" );                       \
        debug_test_fail();                                                  \
        return( 1 );                                                        \
    }                                                                       \
    debug_test_ok();                                                        \
                                                                            \
    return( 0 );                                                            \
}


#define MAKE_TEST_POINTMUL_16(var,func,ref_func,modulus)                    \
int test_ ## var ()                                                         \
{                                                                           \
    /* debug_test_start( "Test for " #func );*/                             \
    debug_printf("Test for " #func);                                        \
    int16_t src[NTT_SIZE]      __attribute__((aligned(16)));                \
    int16_t src1[NTT_SIZE]      __attribute__((aligned(16)));               \
    int16_t src_copy[NTT_SIZE] __attribute__((aligned(16)));                \
                                                                            \
    /* Setup input */                                                       \
    fill_random_u16( (uint16_t*) src1, NTT_SIZE );                          \
    mod_reduce_buf_s16( src1, NTT_SIZE, modulus );                          \
                                                                            \
    /* Step 1: Reference NTT */                                             \
    memcpy( src_copy, src, sizeof( src ) );                                 \
    ref_func( src_copy, src1 );                                             \
                                                                            \
                                                                            \
    /* Step 2: Optimized NTT */                                             \
    (func)( src, src1);                                                     \
                                                                            \
    if( compare_buf_u16( (uint16_t const*) src, (uint16_t const*) src_copy, \
                         NTT_SIZE ) != 0 )                                  \
    {                                                                       \
        debug_print_buf_s16( src_copy, NTT_SIZE, "Reference" );             \
        debug_print_buf_s16( src, NTT_SIZE, "This" );                       \
        debug_test_fail();                                                  \
        return( 1 );                                                        \
    }                                                                       \
    debug_test_ok();                                                        \
                                                                            \
    return( 0 );                                                            \
}

#define MAKE_TEST_ASYM_MUL_16(var,func,ref_func,modulus)                    \
int test_ ## var ()                                                         \
{                                                                           \
    /* debug_test_start( "Test for " #func );*/                             \
    debug_printf("Test for " #func);                                        \
    int16_t src[NTT_SIZE]      __attribute__((aligned(16)));                \
    int16_t src1[NTT_SIZE]      __attribute__((aligned(16)));               \
    int16_t src2[NTT_SIZE]      __attribute__((aligned(16)));               \
    int16_t src3[NTT_SIZE]      __attribute__((aligned(16)));               \
    int16_t src_copy[NTT_SIZE] __attribute__((aligned(16)));                \
                                                                            \
    /* Setup input */                                                       \
    fill_random_u16( (uint16_t*) src, NTT_SIZE );                           \
    mod_reduce_buf_s16( src, NTT_SIZE, modulus );                           \
    fill_random_u16( (uint16_t*) src1, NTT_SIZE );                          \
    mod_reduce_buf_s16( src1, NTT_SIZE, modulus );                          \
    fill_random_u16( (uint16_t*) src2, NTT_SIZE );                          \
    mod_reduce_buf_s16( src2, NTT_SIZE, modulus );                          \
    fill_random_u16( (uint16_t*) src3, NTT_SIZE );                          \
    mod_reduce_buf_s16( src3, NTT_SIZE, modulus );                          \
                                                                            \
    /* Step 1: Reference NTT */                                             \
    memcpy( src_copy, src, sizeof( src ) );                                 \
    ref_func( src_copy, src1, src2, src3 );                                 \
                                                                            \
                                                                            \
    /* Step 2: Optimized NTT */                                             \
    (func)( src, src1, src2, src3);                                         \
                                                                            \
    if( compare_buf_u16( (uint16_t const*) src, (uint16_t const*) src_copy, \
                         NTT_SIZE ) != 0 )                                  \
    {                                                                       \
        debug_print_buf_s16( src_copy, NTT_SIZE, "Reference" );             \
        debug_print_buf_s16( src, NTT_SIZE, "This" );                       \
        debug_test_fail();                                                  \
        return( 1 );                                                        \
    }                                                                       \
    debug_test_ok();                                                        \
                                                                            \
    return( 0 );                                                            \
}

// Q=8380417 polynomial multiplication
MAKE_TEST_NTT(ntt_pqm4, pqcrystals_dilithium_ntt, ntt_ref, Q)
MAKE_TEST_NTT(ntt_pqm4_opt, pqcrystals_dilithium_ntt_opt_m7, ntt_ref, Q)

MAKE_TEST_NTT(intt_pqm4, pqcrystals_dilithium_invntt_tomont, invntt_tomont_ref, Q)
MAKE_TEST_NTT(intt_pqm4_opt, pqcrystals_dilithium_invntt_tomont_opt_m7, invntt_tomont_ref, Q)

MAKE_TEST_BASEMUL(pointwise_montgomery_pqm4, pqcrystals_dilithium_asm_pointwise_montgomery, pqcrystals_dilithium_asm_pointwise_montgomery, Q)
MAKE_TEST_BASEMUL(pointwise_montgomery_pqm4_opt, pqcrystals_dilithium_asm_pointwise_montgomery_opt_m7, pqcrystals_dilithium_asm_pointwise_montgomery, Q)

MAKE_TEST_BASEMUL(pointwise_acc_montgomery_pqm4, pqcrystals_dilithium_asm_pointwise_acc_montgomery, pqcrystals_dilithium_asm_pointwise_acc_montgomery, Q)
MAKE_TEST_BASEMUL(pointwise_acc_montgomery_pqm4_opt, pqcrystals_dilithium_asm_pointwise_acc_montgomery_opt_m7, pqcrystals_dilithium_asm_pointwise_acc_montgomery, Q)

// Q=257 polynomial multiplication
MAKE_TEST_NTT(fnt_257_pqm4, fnt_ntt, fnt_ntt, 257)
MAKE_TEST_NTT(fnt_257_pqm4_opt, fnt_ntt_opt_m7, fnt_ntt, 257)

MAKE_TEST_NTT(ifnt_257_pqm4, fnt_invntt_tomont, fnt_invntt_tomont, 257)
MAKE_TEST_NTT(ifnt_257_pqm4_opt, fnt_invntt_tomont_opt_m7, fnt_invntt_tomont, 257)

MAKE_TEST_POINTMUL(point_mul_257_16_pqm4, fnt_point_mul, fnt_point_mul, 257)
MAKE_TEST_POINTMUL(point_mul_257_16_pqm4_opt, fnt_point_mul_opt_m7, fnt_point_mul, 257)

MAKE_TEST_ASYM_MUL(asymmetric_mul_257_16_pqm4, fnt_asymmetric_mul, fnt_asymmetric_mul, 257)
MAKE_TEST_ASYM_MUL(asymmetric_mul_257_16_pqm4_opt, fnt_asymmetric_mul_opt_m7, fnt_asymmetric_mul, 257)

// Q=769 polynomial multiplication
MAKE_TEST_NTT_16(ntt_769_pqm4, small_ntt, small_ntt, 769)
MAKE_TEST_NTT_16(ntt_769_pqm4_opt, small_ntt_opt_m7, small_ntt, 769)

MAKE_TEST_NTT_16(intt_769_pqm4, small_invntt_tomont, small_invntt_tomont, 769)
MAKE_TEST_NTT_16(intt_769_pqm4_opt, small_invntt_tomont_opt_m7, small_invntt_tomont, 769)

MAKE_TEST_POINTMUL_16(pointmul_769_pqm4, small_point_mul, small_point_mul, 769)
MAKE_TEST_POINTMUL_16(pointmul_769_pqm4_opt, small_point_mul_opt_m7, small_point_mul, 769)

MAKE_TEST_ASYM_MUL_16(asymmetric_mul_769_pqm4, small_asymmetric_mul, small_asymmetric_mul, 769)
MAKE_TEST_ASYM_MUL_16(asymmetric_mul_769_pqm4_opt, small_asymmetric_mul_opt_m7, small_asymmetric_mul, 769)

// other arithmetic
MAKE_TEST_NTT(reduce32_pqm4, pqcrystals_dilithium_asm_reduce32, pqcrystals_dilithium_asm_reduce32, 1<<31)
MAKE_TEST_NTT(reduce32_pqm4_opt, pqcrystals_dilithium_asm_reduce32_opt_m7, pqcrystals_dilithium_asm_reduce32, 1<<31)

MAKE_TEST_NTT(caddq_pqm4, pqcrystals_dilithium_asm_caddq, pqcrystals_dilithium_asm_caddq, 1<<31)
MAKE_TEST_NTT(caddq_pqm4_opt, pqcrystals_dilithium_asm_caddq_opt_m7, pqcrystals_dilithium_asm_caddq, 1<<31)


static int cmp_uint64_t(const void *a, const void *b)
{
    return (int)((*((const uint64_t *)a)) - (*((const uint64_t *)b)));
}

#define MAKE_BENCH_NTT(var, func)                                             \
    int bench_##var()                                                         \
    {                                                                         \
        uint64_t t1, t2;                                                      \
        uint64_t cycles[REPEAT_MEDIAN];                                       \
        int32_t src[NTT_SIZE] __attribute__((aligned(16)));                   \
        (func)(src);                                                          \
        for (size_t cnt_median = 0; cnt_median < REPEAT_MEDIAN; cnt_median++) \
        {                                                                     \
            t1 = hal_get_time();                                              \
            for (size_t cnt = 0; cnt < REPEAT; cnt++)                         \
                (func)(src);                                                  \
            t2 = hal_get_time();                                              \
            cycles[cnt_median] = (t2 - t1) / REPEAT;                          \
        }                                                                     \
        qsort(cycles, REPEAT_MEDIAN, sizeof(uint64_t), cmp_uint64_t);         \
        debug_printf(#var " repeat %d, %d",                                   \
                     REPEAT *REPEAT_MEDIAN, (cycles[REPEAT_MEDIAN >> 1]));    \
        add_benchmark_results(#var, (cycles[REPEAT_MEDIAN >> 1]));            \
        return (0);                                                           \
    }

#define MAKE_BENCH_BASEMUL(var, func)                                         \
    int bench_##var()                                                         \
    {                                                                         \
        uint64_t t1, t2;                                                      \
        uint64_t cycles[REPEAT_MEDIAN];                                       \
        int32_t src[NTT_SIZE] __attribute__((aligned(16)));                   \
        int32_t src1[NTT_SIZE] __attribute__((aligned(16)));                  \
        int32_t src2[NTT_SIZE] __attribute__((aligned(16)));                  \
        (func)(src, src1, src2);                                              \
        for (size_t cnt_median = 0; cnt_median < REPEAT_MEDIAN; cnt_median++) \
        {                                                                     \
            t1 = hal_get_time();                                              \
            for (size_t cnt = 0; cnt < REPEAT; cnt++)                         \
                (func)(src, src1, src2);                                      \
            t2 = hal_get_time();                                              \
            cycles[cnt_median] = (t2 - t1) / REPEAT;                          \
        }                                                                     \
        qsort(cycles, REPEAT_MEDIAN, sizeof(uint64_t), cmp_uint64_t);         \
        debug_printf(#var " repeat %d, %d",                                   \
                     REPEAT *REPEAT_MEDIAN, (cycles[REPEAT_MEDIAN >> 1]));    \
        add_benchmark_results(#var, (cycles[REPEAT_MEDIAN >> 1]));            \
        return (0);                                                           \
    }

#define MAKE_BENCH_POINTMUL(var, func)                                        \
    int bench_##var()                                                         \
    {                                                                         \
        uint64_t t1, t2;                                                      \
        uint64_t cycles[REPEAT_MEDIAN];                                       \
        int16_t src[NTT_SIZE] __attribute__((aligned(16))) = {0};             \
        int32_t src1[NTT_SIZE] __attribute__((aligned(16))) = {0};            \
        (func)(src, src1);                                                    \
        for (size_t cnt_median = 0; cnt_median < REPEAT_MEDIAN; cnt_median++) \
        {                                                                     \
            t1 = hal_get_time();                                              \
            for (size_t cnt = 0; cnt < REPEAT; cnt++)                         \
                (func)(src, src1);                                            \
            t2 = hal_get_time();                                              \
            cycles[cnt_median] = (t2 - t1) / REPEAT;                          \
        }                                                                     \
        qsort(cycles, REPEAT_MEDIAN, sizeof(uint64_t), cmp_uint64_t);         \
        debug_printf(#var " repeat %d, %d",                                   \
                     REPEAT *REPEAT_MEDIAN, (cycles[REPEAT_MEDIAN >> 1]));    \
        add_benchmark_results(#var, (cycles[REPEAT_MEDIAN >> 1]));            \
        return (0);                                                           \
    }

#define MAKE_BENCH_ASYM_MUL(var, func)                                        \
    int bench_##var()                                                         \
    {                                                                         \
        uint64_t t1, t2;                                                      \
        uint64_t cycles[REPEAT_MEDIAN];                                       \
        int32_t src[NTT_SIZE] __attribute__((aligned(16))) = {0};             \
        int32_t src1[NTT_SIZE] __attribute__((aligned(16))) = {0};            \
        int32_t src2[NTT_SIZE] __attribute__((aligned(16))) = {0};            \
        int16_t src3[NTT_SIZE] __attribute__((aligned(16))) = {0};            \
        (func)(src, src1, src2, src3);                                        \
        for (size_t cnt_median = 0; cnt_median < REPEAT_MEDIAN; cnt_median++) \
        {                                                                     \
            t1 = hal_get_time();                                              \
            for (size_t cnt = 0; cnt < REPEAT; cnt++)                         \
                (func)(src, src1, src2, src3);                                \
            t2 = hal_get_time();                                              \
            cycles[cnt_median] = (t2 - t1) / REPEAT;                          \
        }                                                                     \
        qsort(cycles, REPEAT_MEDIAN, sizeof(uint64_t), cmp_uint64_t);         \
        debug_printf(#var " repeat %d, %d",                                   \
                     REPEAT *REPEAT_MEDIAN, (cycles[REPEAT_MEDIAN >> 1]));    \
        add_benchmark_results(#var, (cycles[REPEAT_MEDIAN >> 1]));            \
        return (0);                                                           \
    }

#define MAKE_BENCH_NTT_16(var, func)                                          \
    int bench_##var()                                                         \
    {                                                                         \
        uint64_t t1, t2;                                                      \
        uint64_t cycles[REPEAT_MEDIAN];                                       \
        int16_t src[NTT_SIZE] __attribute__((aligned(16)));                   \
        (func)(src);                                                          \
        for (size_t cnt_median = 0; cnt_median < REPEAT_MEDIAN; cnt_median++) \
        {                                                                     \
            t1 = hal_get_time();                                              \
            for (size_t cnt = 0; cnt < REPEAT; cnt++)                         \
                (func)(src);                                                  \
            t2 = hal_get_time();                                              \
            cycles[cnt_median] = (t2 - t1) / REPEAT;                          \
        }                                                                     \
        qsort(cycles, REPEAT_MEDIAN, sizeof(uint64_t), cmp_uint64_t);         \
        debug_printf(#var " repeat %d, %d",                                   \
                     REPEAT *REPEAT_MEDIAN, (cycles[REPEAT_MEDIAN >> 1]));    \
        add_benchmark_results(#var, (cycles[REPEAT_MEDIAN >> 1]));            \
        return (0);                                                           \
    }

#define MAKE_BENCH_POINTMUL_16(var, func)                                     \
    int bench_##var()                                                         \
    {                                                                         \
        uint64_t t1, t2;                                                      \
        uint64_t cycles[REPEAT_MEDIAN];                                       \
        int16_t src[NTT_SIZE] __attribute__((aligned(16))) = {0};             \
        int16_t src1[NTT_SIZE] __attribute__((aligned(16))) = {0};            \
        (func)(src, src1);                                                    \
        for (size_t cnt_median = 0; cnt_median < REPEAT_MEDIAN; cnt_median++) \
        {                                                                     \
            t1 = hal_get_time();                                              \
            for (size_t cnt = 0; cnt < REPEAT; cnt++)                         \
                (func)(src, src1);                                            \
            t2 = hal_get_time();                                              \
            cycles[cnt_median] = (t2 - t1) / REPEAT;                          \
        }                                                                     \
        qsort(cycles, REPEAT_MEDIAN, sizeof(uint64_t), cmp_uint64_t);         \
        debug_printf(#var " repeat %d, %d",                                   \
                     REPEAT *REPEAT_MEDIAN, (cycles[REPEAT_MEDIAN >> 1]));    \
        add_benchmark_results(#var, (cycles[REPEAT_MEDIAN >> 1]));            \
        return (0);                                                           \
    }

#define MAKE_BENCH_ASYM_MUL_16(var, func)                                     \
    int bench_##var()                                                         \
    {                                                                         \
        uint64_t t1, t2;                                                      \
        uint64_t cycles[REPEAT_MEDIAN];                                       \
        int16_t src[NTT_SIZE] __attribute__((aligned(16))) = {0};             \
        int16_t src1[NTT_SIZE] __attribute__((aligned(16))) = {0};            \
        int16_t src2[NTT_SIZE] __attribute__((aligned(16))) = {0};            \
        int16_t src3[NTT_SIZE] __attribute__((aligned(16))) = {0};            \
        (func)(src, src1, src2, src3);                                        \
        for (size_t cnt_median = 0; cnt_median < REPEAT_MEDIAN; cnt_median++) \
        {                                                                     \
            t1 = hal_get_time();                                              \
            for (size_t cnt = 0; cnt < REPEAT; cnt++)                         \
                (func)(src, src1, src2, src3);                                \
            t2 = hal_get_time();                                              \
            cycles[cnt_median] = (t2 - t1) / REPEAT;                          \
        }                                                                     \
        qsort(cycles, REPEAT_MEDIAN, sizeof(uint64_t), cmp_uint64_t);         \
        debug_printf(#var " repeat %d, %d",                                   \
                     REPEAT *REPEAT_MEDIAN, (cycles[REPEAT_MEDIAN >> 1]));    \
        add_benchmark_results(#var, (cycles[REPEAT_MEDIAN >> 1]));            \
        return (0);                                                           \
    }

// Q=8380417 polynomial multiplication
MAKE_BENCH_NTT(pqcrystals_dilithium_ntt,pqcrystals_dilithium_ntt)
MAKE_BENCH_NTT(pqcrystals_dilithium_ntt_opt_m7,pqcrystals_dilithium_ntt_opt_m7)

MAKE_BENCH_NTT(pqcrystals_dilithium_invntt_tomont,pqcrystals_dilithium_invntt_tomont)
MAKE_BENCH_NTT(pqcrystals_dilithium_invntt_tomont_opt_m7,pqcrystals_dilithium_invntt_tomont_opt_m7)

MAKE_BENCH_BASEMUL(pqcrystals_dilithium_asm_pointwise_montgomery,pqcrystals_dilithium_asm_pointwise_montgomery)
MAKE_BENCH_BASEMUL(pqcrystals_dilithium_asm_pointwise_montgomery_opt_m7,pqcrystals_dilithium_asm_pointwise_montgomery_opt_m7)

MAKE_BENCH_BASEMUL(pqcrystals_dilithium_asm_pointwise_acc_montgomery,pqcrystals_dilithium_asm_pointwise_acc_montgomery)
MAKE_BENCH_BASEMUL(pqcrystals_dilithium_asm_pointwise_acc_montgomery_opt_m7,pqcrystals_dilithium_asm_pointwise_acc_montgomery_opt_m7)

// Q=257 polynomial multiplication
MAKE_BENCH_NTT(__asm_fnt_257,fnt_ntt)
MAKE_BENCH_NTT(__asm_fnt_257_opt_m7,fnt_ntt_opt_m7)

MAKE_BENCH_NTT(__asm_ifnt_257,fnt_invntt_tomont)
MAKE_BENCH_NTT(__asm_ifnt_257_opt_m7,fnt_invntt_tomont_opt_m7)

MAKE_BENCH_POINTMUL(__asm_point_mul_257_16,fnt_point_mul)
MAKE_BENCH_POINTMUL(__asm_point_mul_257_16_opt_m7,fnt_point_mul_opt_m7)

MAKE_BENCH_ASYM_MUL(__asm_asymmetric_mul_257_16,fnt_asymmetric_mul)
MAKE_BENCH_ASYM_MUL(__asm_asymmetric_mul_257_16_opt_m7,fnt_asymmetric_mul_opt_m7)

// Q=769 polynomial multiplication
MAKE_BENCH_NTT_16(small_ntt_asm_769,small_ntt)
MAKE_BENCH_NTT_16(small_ntt_asm_769_opt_m7,small_ntt_opt_m7)

MAKE_BENCH_NTT_16(small_invntt_asm_769,small_invntt_tomont)
MAKE_BENCH_NTT_16(small_invntt_asm_769_opt_m7,small_invntt_tomont_opt_m7)

MAKE_BENCH_POINTMUL_16(small_pointmul_asm_769,small_point_mul)
MAKE_BENCH_POINTMUL_16(small_pointmul_asm_769_opt_m7,small_point_mul_opt_m7)

MAKE_BENCH_ASYM_MUL_16(small_asymmetric_mul_asm_769,small_asymmetric_mul_asm_769)
MAKE_BENCH_ASYM_MUL_16(small_asymmetric_mul_asm_769_opt_m7,small_asymmetric_mul_asm_769_opt_m7)

// other arithmetic
MAKE_BENCH_NTT(pqcrystals_dilithium_asm_reduce32,pqcrystals_dilithium_asm_reduce32)
MAKE_BENCH_NTT(pqcrystals_dilithium_asm_reduce32_opt_m7,pqcrystals_dilithium_asm_reduce32_opt_m7)

MAKE_BENCH_NTT(pqcrystals_dilithium_asm_caddq,pqcrystals_dilithium_asm_caddq)
MAKE_BENCH_NTT(pqcrystals_dilithium_asm_caddq_opt_m7,pqcrystals_dilithium_asm_caddq_opt_m7)

int main(void)
{
    int ret = 0;
    debug_test_start( "\nDilithium All Test!\n" );

    /* Test cases */

    // Q=8380417 polynomial multiplication
    if( test_ntt_pqm4() != 0 ){return( 1 );}
    if( test_ntt_pqm4_opt() != 0 ){return( 1 );}

    if( test_intt_pqm4() != 0 ){return( 1 );}
    if( test_intt_pqm4_opt() != 0 ){return( 1 );}
    
    if( test_pointwise_montgomery_pqm4() != 0 ){ return( 1 ); }
    if( test_pointwise_montgomery_pqm4_opt() != 0 ){ return( 1 ); }
    
    if( test_pointwise_acc_montgomery_pqm4() != 0 ){ return( 1 ); }
    if( test_pointwise_acc_montgomery_pqm4_opt() != 0 ){ return( 1 ); }

    // Q=257 polynomial multiplication
    if( test_fnt_257_pqm4() != 0 ){return( 1 );}
    if( test_fnt_257_pqm4_opt() != 0 ){return( 1 );}

    if( test_ifnt_257_pqm4() != 0 ){return( 1 );}
    if( test_ifnt_257_pqm4_opt() != 0 ){return( 1 );}
    
    if( test_point_mul_257_16_pqm4() != 0 ){return( 1 );}
    if( test_point_mul_257_16_pqm4_opt() != 0 ){return( 1 );}

    if( test_asymmetric_mul_257_16_pqm4() != 0 ){return( 1 );}
    if( test_asymmetric_mul_257_16_pqm4_opt() != 0 ){return( 1 );}

    // Q=769 polynomial multiplication
    if( test_ntt_769_pqm4() != 0 ){return( 1 );}
    if( test_ntt_769_pqm4_opt() != 0 ){return( 1 );}

    if( test_intt_769_pqm4() != 0 ){return( 1 );}
    if( test_intt_769_pqm4_opt() != 0 ){return( 1 );}

    if( test_pointmul_769_pqm4() != 0 ){ return( 1 ); }
    if( test_pointmul_769_pqm4_opt() != 0 ){ return( 1 ); }

    if( test_asymmetric_mul_769_pqm4() != 0 ){ return( 1 ); }
    if( test_asymmetric_mul_769_pqm4_opt() != 0 ){ return( 1 ); }

    // other arithmetic
    if( test_reduce32_pqm4() != 0 ){ return( 1 ); }
    if( test_reduce32_pqm4_opt() != 0 ){ return( 1 ); }
    
    if( test_caddq_pqm4() != 0 ){return( 1 );}
    if( test_caddq_pqm4_opt() != 0 ){return( 1 );}


    /* Benchmarks */

    // Q=8380417 polynomial multiplication
    bench_pqcrystals_dilithium_ntt();
    bench_pqcrystals_dilithium_ntt_opt_m7();

    bench_pqcrystals_dilithium_invntt_tomont();
    bench_pqcrystals_dilithium_invntt_tomont_opt_m7();

    bench_pqcrystals_dilithium_asm_pointwise_montgomery();
    bench_pqcrystals_dilithium_asm_pointwise_montgomery_opt_m7();

    bench_pqcrystals_dilithium_asm_pointwise_acc_montgomery();
    bench_pqcrystals_dilithium_asm_pointwise_acc_montgomery_opt_m7();

    // Q=257 polynomial multiplication
    bench___asm_fnt_257();
    bench___asm_fnt_257_opt_m7();

    bench___asm_ifnt_257();
    bench___asm_ifnt_257_opt_m7();

    bench___asm_point_mul_257_16();
    bench___asm_point_mul_257_16_opt_m7();

    bench___asm_asymmetric_mul_257_16();
    bench___asm_asymmetric_mul_257_16_opt_m7();

    // Q=769 polynomial multiplication
    bench_small_ntt_asm_769();
    bench_small_ntt_asm_769_opt_m7();

    bench_small_invntt_asm_769();
    bench_small_invntt_asm_769_opt_m7();

    bench_small_pointmul_asm_769();
    bench_small_pointmul_asm_769_opt_m7();

    bench_small_asymmetric_mul_asm_769();
    bench_small_asymmetric_mul_asm_769_opt_m7();

    // other arithmetic
    bench_pqcrystals_dilithium_asm_reduce32();
    bench_pqcrystals_dilithium_asm_reduce32_opt_m7();

    bench_pqcrystals_dilithium_asm_caddq();
    bench_pqcrystals_dilithium_asm_caddq_opt_m7();

    debug_printf( "Done!\n" );

    debug_printf("======================" );
    dump_benchmarks_tex();
    debug_printf("======================\n" );

    debug_printf( "ALL GOOD!\n" );
    return( ret );
}
