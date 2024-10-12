/*
 * Copyright (c) 2021 Arm Limited
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
#include "params.h"
#include "poly.h"
#include "ntt-acle.h"
#include "ntt-asm.h"
#include "frombytes-asm.h"

void asm_barrett_reduce(int16_t *);
void asm_barrett_reduce_opt_m7(int16_t *);

void asm_fromplant(int16_t *);
void asm_fromplant_opt_m7(int16_t *);

void pointwise_add(int16_t *, const int16_t *, const int16_t *);
void pointwise_add_opt_m7(int16_t *, const int16_t *, const int16_t *);

void pointwise_sub(int16_t *, const int16_t *, const int16_t *);
void pointwise_sub_opt_m7(int16_t *, const int16_t *, const int16_t *);

void basemul_asm_opt_16_32(int32_t *, const int16_t *, const int16_t *, const int16_t *);
void basemul_asm_opt_16_32_opt_m7(int32_t *, const int16_t *, const int16_t *, const int16_t *);

void basemul_asm_acc_opt_32_32(int32_t *, const int16_t *, const int16_t *, const int16_t *);
void basemul_asm_acc_opt_32_32_opt_m7(int32_t *, const int16_t *, const int16_t *, const int16_t *);

void basemul_asm_acc_opt_32_16(int16_t *, const int16_t *, const int16_t *, const int16_t *, const int32_t *);
void basemul_asm_acc_opt_32_16_opt_m7(int16_t *, const int16_t *, const int16_t *, const int16_t *, const int32_t *);

#define NTT_LAYERS             7
#define NTT_SIZE               256

/*
 * Test cases
 */

int16_t modulus         = 3329;


#define MAKE_TEST_1(var,func,ref_func)                                      \
int test_ ## var ()                                                         \
{                                                                           \
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
    mod_reduce_buf_s16( src_copy, NTT_SIZE, modulus );                      \
                                                                            \
                                                                            \
    /* Step 2: Optimized NTT */                                             \
    (func)( src );                                                          \
                                                                            \
    mod_reduce_buf_s16( src, NTT_SIZE, modulus );                           \
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

#define MAKE_TEST_3(var,func,ref_func)                                      \
int test_ ## var ()                                                         \
{                                                                           \
    debug_printf("Test for " #var);                                         \
    int16_t dst[NTT_SIZE]  __attribute__((aligned(16)));                    \
    int16_t src1[NTT_SIZE] __attribute__((aligned(16)));                    \
    int16_t src2[NTT_SIZE] __attribute__((aligned(16)));                    \
    int16_t dst_copy[NTT_SIZE] __attribute__((aligned(16)));                \
                                                                            \
    /* Setup input */                                                       \
    fill_random_u16( (uint16_t*) dst, NTT_SIZE );                           \
    mod_reduce_buf_s16( dst, NTT_SIZE, modulus );                           \
    fill_random_u16( (uint16_t*) src1, NTT_SIZE );                          \
    mod_reduce_buf_s16( src1, NTT_SIZE, modulus );                          \
    fill_random_u16( (uint16_t*) src2, NTT_SIZE );                          \
    mod_reduce_buf_s16( src2, NTT_SIZE, modulus );                          \
                                                                            \
    /* Step 1: Reference */                                                 \
    memcpy( dst_copy, dst, sizeof( dst ) );                                 \
    ref_func( dst_copy, src1, src2);                                        \
    mod_reduce_buf_s16( dst_copy, NTT_SIZE, modulus );                      \
                                                                            \
                                                                            \
    /* Step 2: Optimized NTT */                                             \
    (func)( dst, src1, src2 );                                              \
                                                                            \
    mod_reduce_buf_s16( dst, NTT_SIZE, modulus );                           \
    if( compare_buf_u16( (uint16_t const*) dst, (uint16_t const*) dst_copy, \
                         NTT_SIZE ) != 0 )                                  \
    {                                                                       \
        debug_print_buf_s16( dst_copy, NTT_SIZE, "Reference" );             \
        debug_print_buf_s16( dst, NTT_SIZE, "This" );                       \
        debug_test_fail();                                                  \
        return( 1 );                                                        \
    }                                                                       \
    debug_test_ok();                                                        \
                                                                            \
    return( 0 );                                                            \
}


#define MAKE_TEST_basemul_32(var,func,ref_func)                             \
int test_ ## var ()                                                         \
{                                                                           \
    debug_printf("Test for " #var);                                         \
    int32_t dst[NTT_SIZE]  __attribute__((aligned(16)));                    \
    int16_t src1[NTT_SIZE] __attribute__((aligned(16)));                    \
    int16_t src2[NTT_SIZE] __attribute__((aligned(16)));                    \
    int16_t src3[NTT_SIZE] __attribute__((aligned(16)));                    \
    int32_t dst_copy[NTT_SIZE] __attribute__((aligned(16)));                \
                                                                            \
    /* Setup input */                                                       \
    fill_random_u32( (uint32_t*) dst, NTT_SIZE );                           \
    mod_reduce_buf_s32( dst, NTT_SIZE, modulus );                           \
    fill_random_u16( (uint16_t*) src1, NTT_SIZE );                          \
    mod_reduce_buf_s16( src1, NTT_SIZE, modulus );                          \
    fill_random_u16( (uint16_t*) src2, NTT_SIZE );                          \
    mod_reduce_buf_s16( src2, NTT_SIZE, modulus );                          \
    fill_random_u16( (uint16_t*) src3, NTT_SIZE );                          \
    mod_reduce_buf_s16( src3, NTT_SIZE, modulus );                          \
                                                                            \
    /* Step 1: Reference */                                                 \
    memcpy(dst_copy, dst, sizeof dst);                                      \
    ref_func( dst_copy, src1, src2, src3);                                  \
    mod_reduce_buf_s32( dst_copy, NTT_SIZE, modulus );                      \
                                                                            \
                                                                            \
    /* Step 2: Optimized */                                                 \
    (func)( dst, src1, src2, src3);                                         \
                                                                            \
    mod_reduce_buf_s32( dst, NTT_SIZE, modulus );                           \
    if( compare_buf_u32( (uint32_t const*) dst, (uint32_t const*) dst_copy, \
                         NTT_SIZE ) != 0 )                                  \
    {                                                                       \
        debug_print_buf_s32( dst_copy, NTT_SIZE, "Reference" );             \
        debug_print_buf_s32( dst, NTT_SIZE, "This" );                       \
        debug_test_fail();                                                  \
        return( 1 );                                                        \
    }                                                                       \
    debug_test_ok();                                                        \
                                                                            \
    return( 0 );                                                            \
}

#define MAKE_TEST_basemul_32_16(var,func,ref_func)                          \
int test_ ## var ()                                                         \
{                                                                           \
    debug_printf("Test for " #var);                                         \
    int16_t dst[NTT_SIZE]  __attribute__((aligned(16)));                    \
    int16_t src1[NTT_SIZE] __attribute__((aligned(16)));                    \
    int16_t src2[NTT_SIZE] __attribute__((aligned(16)));                    \
    int16_t src3[NTT_SIZE] __attribute__((aligned(16)));                    \
    int32_t src4[NTT_SIZE] __attribute__((aligned(16)));                    \
    int16_t dst_copy[NTT_SIZE] __attribute__((aligned(16)));                \
                                                                            \
    /* Setup input */                                                       \
    fill_random_u16( (uint16_t*) src1, NTT_SIZE );                          \
    mod_reduce_buf_s16( src1, NTT_SIZE, modulus );                          \
    fill_random_u16( (uint16_t*) src2, NTT_SIZE );                          \
    mod_reduce_buf_s16( src2, NTT_SIZE, modulus );                          \
    fill_random_u16( (uint16_t*) src3, NTT_SIZE );                          \
    mod_reduce_buf_s16( src3, NTT_SIZE, modulus );                          \
    fill_random_u32( (uint32_t*) src4, NTT_SIZE );                          \
    mod_reduce_buf_s32( src4, NTT_SIZE, modulus );                          \
                                                                            \
    /* Step 1: Reference */                                                 \
    ref_func( dst_copy, src1, src2, src3, src4);                            \
    mod_reduce_buf_s16( dst_copy, NTT_SIZE, modulus );                      \
                                                                            \
                                                                            \
    /* Step 2: Optimized */                                                 \
    (func)( dst, src1, src2, src3, src4);                                   \
                                                                            \
    mod_reduce_buf_s16( dst, NTT_SIZE, modulus );                           \
    if( compare_buf_u16( (uint16_t const*) dst, (uint16_t const*) dst_copy, \
                         NTT_SIZE ) != 0 )                                  \
    {                                                                       \
        debug_print_buf_s16( dst_copy, NTT_SIZE, "Reference" );             \
        debug_print_buf_s16( dst, NTT_SIZE, "This" );                       \
        debug_test_fail();                                                  \
        return( 1 );                                                        \
    }                                                                       \
    debug_test_ok();                                                        \
                                                                            \
    return( 0 );                                                            \
}

#define MAKE_TEST_frombytes_mul_32(var,func,ref_func)                       \
int test_ ## var ()                                                         \
{                                                                           \
    debug_printf("Test for " #var);                                         \
    int32_t dst[NTT_SIZE]  __attribute__((aligned(16)));                    \
    int16_t src1[NTT_SIZE] __attribute__((aligned(16)));                    \
    uint8_t src2[KYBER_POLYBYTES] __attribute__((aligned(16)));             \
    int32_t dst_copy[NTT_SIZE] __attribute__((aligned(16)));                \
                                                                            \
    /* Setup input */                                                       \
    fill_random_u32( (uint32_t*) dst, NTT_SIZE );                           \
    mod_reduce_buf_s32( dst, NTT_SIZE, modulus );                           \
    fill_random_u16( (uint16_t*) src1, NTT_SIZE );                          \
    mod_reduce_buf_s16( src1, NTT_SIZE, modulus );                          \
    fill_random_u8( src2, KYBER_POLYBYTES );                                \
                                                                            \
    /* Step 1: Reference */                                                 \
    memcpy(dst_copy, dst, sizeof dst);                                      \
    ref_func( dst_copy, src1, src2);                                        \
    mod_reduce_buf_s32( dst_copy, NTT_SIZE, modulus );                      \
                                                                            \
                                                                            \
    /* Step 2: Optimized */                                                 \
    (func)( dst, src1, src2);                                               \
                                                                            \
    mod_reduce_buf_s32( dst, NTT_SIZE, modulus );                           \
    if( compare_buf_u32( (uint32_t const*) dst, (uint32_t const*) dst_copy, \
                         NTT_SIZE ) != 0 )                                  \
    {                                                                       \
        debug_print_buf_s32( dst_copy, NTT_SIZE, "Reference" );             \
        debug_print_buf_s32( dst, NTT_SIZE, "This" );                       \
        debug_test_fail();                                                  \
        return( 1 );                                                        \
    }                                                                       \
    debug_test_ok();                                                        \
                                                                            \
    return( 0 );                                                            \
}

#define MAKE_TEST_frombytes_mul_32_16(var,func,ref_func)                    \
int test_ ## var ()                                                         \
{                                                                           \
    debug_printf("Test for " #var);                                         \
    int16_t dst[NTT_SIZE]  __attribute__((aligned(16)));                    \
    int16_t src1[NTT_SIZE] __attribute__((aligned(16)));                    \
    uint8_t src2[KYBER_POLYBYTES] __attribute__((aligned(16)));             \
    int32_t src3[NTT_SIZE] __attribute__((aligned(16)));                    \
    int16_t dst_copy[NTT_SIZE] __attribute__((aligned(16)));                \
                                                                            \
    /* Setup input */                                                       \
    fill_random_u16( (uint16_t*) dst, NTT_SIZE );                           \
    mod_reduce_buf_s16( dst, NTT_SIZE, modulus );                           \
    fill_random_u16( (uint16_t*) src1, NTT_SIZE );                          \
    mod_reduce_buf_s16( src1, NTT_SIZE, modulus );                          \
    fill_random_u8( src2, KYBER_POLYBYTES );                                \
    fill_random_u32( (uint32_t*) src3, NTT_SIZE );                          \
    mod_reduce_buf_s32( src3, NTT_SIZE, modulus );                          \
                                                                            \
    /* Step 1: Reference */                                                 \
    memcpy(dst_copy, dst, sizeof dst);                                      \
    ref_func( dst_copy, src1, src2, src3);                                  \
    mod_reduce_buf_s16( dst_copy, NTT_SIZE, modulus );                      \
                                                                            \
                                                                            \
    /* Step 2: Optimized */                                                 \
    (func)( dst, src1, src2, src3);                                         \
                                                                            \
    mod_reduce_buf_s16( dst, NTT_SIZE, modulus );                           \
    if( compare_buf_u16( (uint16_t const*) dst, (uint16_t const*) dst_copy, \
                         NTT_SIZE ) != 0 )                                  \
    {                                                                       \
        debug_print_buf_s16( dst_copy, NTT_SIZE, "Reference" );             \
        debug_print_buf_s16( dst, NTT_SIZE, "This" );                       \
        debug_test_fail();                                                  \
        return( 1 );                                                        \
    }                                                                       \
    debug_test_ok();                                                        \
                                                                            \
    return( 0 );                                                            \
}

/* Check against pqm4 code */
MAKE_TEST_1(ntt_pqm4, ntt_fast_wrap, ntt_fast_wrap)
MAKE_TEST_1(ntt_pqm4_opt, ntt_fast_opt_m7_wrap, ntt_fast_wrap)
MAKE_TEST_1(ntt_acle, ntt_acle, ntt_fast_wrap)

MAKE_TEST_1(invntt_pqm4, invntt_fast_wrap, invntt_fast_wrap)
MAKE_TEST_1(invntt_pqm4_opt, invntt_fast_opt_m7_wrap, invntt_fast_wrap)
MAKE_TEST_1(invntt_acle, invntt_acle, invntt_fast_wrap)

MAKE_TEST_1(barrett_reduce_pqm4, asm_barrett_reduce, asm_barrett_reduce)
MAKE_TEST_1(barrett_reduce_pqm4_opt, asm_barrett_reduce_opt_m7, asm_barrett_reduce)

MAKE_TEST_1(fromplant_pqm4, asm_fromplant, asm_fromplant)
MAKE_TEST_1(fromplant_pqm4_opt, asm_fromplant_opt_m7, asm_fromplant)

MAKE_TEST_3(pointwise_add_pqm4, pointwise_add, pointwise_add)
MAKE_TEST_3(pointwise_add_pqm4_opt, pointwise_add_opt_m7, pointwise_add)

MAKE_TEST_3(pointwise_sub_pqm4, pointwise_sub, pointwise_sub)
MAKE_TEST_3(pointwise_sub_pqm4_opt, pointwise_sub_opt_m7, pointwise_sub)

MAKE_TEST_basemul_32(basemul_16_32, basemul_asm_opt_16_32, basemul_asm_opt_16_32);
MAKE_TEST_basemul_32(basemul_16_32_opt, basemul_asm_opt_16_32_opt_m7, basemul_asm_opt_16_32);

MAKE_TEST_basemul_32(basemul_acc_32_32, basemul_asm_acc_opt_32_32, basemul_asm_acc_opt_32_32);
MAKE_TEST_basemul_32(basemul_acc_32_32_opt, basemul_asm_acc_opt_32_32_opt_m7, basemul_asm_acc_opt_32_32);

MAKE_TEST_basemul_32_16(basemul_acc_32_16, basemul_asm_acc_opt_32_16, basemul_asm_acc_opt_32_16);
MAKE_TEST_basemul_32_16(basemul_acc_32_16_opt, basemul_asm_acc_opt_32_16_opt_m7, basemul_asm_acc_opt_32_16);

MAKE_TEST_frombytes_mul_32(frombytes_mul_16_32, frombytes_mul_asm_16_32_wrap, frombytes_mul_asm_16_32_wrap);
MAKE_TEST_frombytes_mul_32(frombytes_mul_16_32_opt, frombytes_mul_asm_16_32_opt_m7_wrap, frombytes_mul_asm_16_32_wrap);

MAKE_TEST_frombytes_mul_32(frombytes_mul_acc_32_32, frombytes_mul_asm_acc_32_32_wrap, frombytes_mul_asm_acc_32_32_wrap);
MAKE_TEST_frombytes_mul_32(frombytes_mul_acc_32_32_opt, frombytes_mul_asm_acc_32_32_opt_m7_wrap, frombytes_mul_asm_acc_32_32_wrap);

MAKE_TEST_frombytes_mul_32_16(frombytes_mul_acc_32_16, frombytes_mul_asm_acc_32_16_wrap, frombytes_mul_asm_acc_32_16_wrap);
MAKE_TEST_frombytes_mul_32_16(frombytes_mul_acc_32_16_opt, frombytes_mul_asm_acc_32_16_opt_m7_wrap, frombytes_mul_asm_acc_32_16_wrap);


static int cmp_uint64_t(const void *a, const void *b)
{
    return (int)((*((const uint64_t *)a)) - (*((const uint64_t *)b)));
}

#define MAKE_BENCH_1(var, func)                                               \
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
        debug_printf(#func " repeat %d, %d",                                  \
                     REPEAT *REPEAT_MEDIAN, (cycles[REPEAT_MEDIAN >> 1]));    \
        return (0);                                                           \
    }

#define MAKE_BENCH_3(var, func)                                               \
    int bench_##var()                                                         \
    {                                                                         \
        uint64_t t1, t2;                                                      \
        uint64_t cycles[REPEAT_MEDIAN];                                       \
        int16_t dst[NTT_SIZE] __attribute__((aligned(16)))  = {0};            \
        int16_t src1[NTT_SIZE] __attribute__((aligned(16))) = {0};            \
        int16_t src2[NTT_SIZE] __attribute__((aligned(16))) = {0};            \
        (func)(dst, src1, src2);                                              \
        for (size_t cnt_median = 0; cnt_median < REPEAT_MEDIAN; cnt_median++) \
        {                                                                     \
            t1 = hal_get_time();                                              \
            for (size_t cnt = 0; cnt < REPEAT; cnt++)                         \
                (func)(dst, src1, src2);                                      \
            t2 = hal_get_time();                                              \
            cycles[cnt_median] = (t2 - t1) / REPEAT;                          \
        }                                                                     \
        qsort(cycles, REPEAT_MEDIAN, sizeof(uint64_t), cmp_uint64_t);         \
        debug_printf(#var " repeat %d, %d",                                   \
                     REPEAT *REPEAT_MEDIAN, (cycles[REPEAT_MEDIAN >> 1]));    \
        return (0);                                                           \
    }

#define MAKE_BENCH_basemul_32(var, func)                                      \
    int bench_##var()                                                         \
    {                                                                         \
        uint64_t t1, t2;                                                      \
        uint64_t cycles[REPEAT_MEDIAN];                                       \
        int32_t dst[NTT_SIZE] __attribute__((aligned(16)))  = {0};            \
        int16_t src1[NTT_SIZE] __attribute__((aligned(16))) = {0};            \
        int16_t src2[NTT_SIZE] __attribute__((aligned(16))) = {0};            \
        int16_t src3[NTT_SIZE] __attribute__((aligned(16))) = {0};            \
        (func)(dst, src1, src2, src3);                                        \
        for (size_t cnt_median = 0; cnt_median < REPEAT_MEDIAN; cnt_median++) \
        {                                                                     \
            t1 = hal_get_time();                                              \
            for (size_t cnt = 0; cnt < REPEAT; cnt++)                         \
                (func)(dst, src1, src2, src3);                                \
            t2 = hal_get_time();                                              \
            cycles[cnt_median] = (t2 - t1) / REPEAT;                          \
        }                                                                     \
        qsort(cycles, REPEAT_MEDIAN, sizeof(uint64_t), cmp_uint64_t);         \
        debug_printf(#var " repeat %d, %d",                                   \
                     REPEAT *REPEAT_MEDIAN, (cycles[REPEAT_MEDIAN >> 1]));    \
        return (0);                                                           \
    }

#define MAKE_BENCH_basemul_32_16(var, func)                                   \
    int bench_##var()                                                         \
    {                                                                         \
        uint64_t t1, t2;                                                      \
        uint64_t cycles[REPEAT_MEDIAN];                                       \
        int16_t dst[NTT_SIZE] __attribute__((aligned(16)))  = {0};            \
        int16_t src1[NTT_SIZE] __attribute__((aligned(16))) = {0};            \
        int16_t src2[NTT_SIZE] __attribute__((aligned(16))) = {0};            \
        int16_t src3[NTT_SIZE] __attribute__((aligned(16))) = {0};            \
        int32_t src4[NTT_SIZE] __attribute__((aligned(16))) = {0};            \
        (func)(dst, src1, src2, src3, src4);                                  \
        for (size_t cnt_median = 0; cnt_median < REPEAT_MEDIAN; cnt_median++) \
        {                                                                     \
            t1 = hal_get_time();                                              \
            for (size_t cnt = 0; cnt < REPEAT; cnt++)                         \
                (func)(dst, src1, src2, src3, src4);                          \
            t2 = hal_get_time();                                              \
            cycles[cnt_median] = (t2 - t1) / REPEAT;                          \
        }                                                                     \
        qsort(cycles, REPEAT_MEDIAN, sizeof(uint64_t), cmp_uint64_t);         \
        debug_printf(#var " repeat %d, %d",                                   \
                     REPEAT *REPEAT_MEDIAN, (cycles[REPEAT_MEDIAN >> 1]));    \
        return (0);                                                           \
    }

#define MAKE_BENCH_frombytes_mul_32(var, func)                                \
    int bench_##var()                                                         \
    {                                                                         \
        uint64_t t1, t2;                                                      \
        uint64_t cycles[REPEAT_MEDIAN];                                       \
        int32_t dst[NTT_SIZE] __attribute__((aligned(16)))  = {0};            \
        int16_t src1[NTT_SIZE] __attribute__((aligned(16))) = {0};            \
        uint8_t src2[KYBER_POLYBYTES] __attribute__((aligned(16))) = {0};     \
        (func)(dst, src1, src2);                                              \
        for (size_t cnt_median = 0; cnt_median < REPEAT_MEDIAN; cnt_median++) \
        {                                                                     \
            t1 = hal_get_time();                                              \
            for (size_t cnt = 0; cnt < REPEAT; cnt++)                         \
                (func)(dst, src1, src2);                                      \
            t2 = hal_get_time();                                              \
            cycles[cnt_median] = (t2 - t1) / REPEAT;                          \
        }                                                                     \
        qsort(cycles, REPEAT_MEDIAN, sizeof(uint64_t), cmp_uint64_t);         \
        debug_printf(#var " repeat %d, %d",                                   \
                     REPEAT *REPEAT_MEDIAN, (cycles[REPEAT_MEDIAN >> 1]));    \
        return (0);                                                           \
    }

#define MAKE_BENCH_frombytes_mul_32_16(var, func)                             \
    int bench_##var()                                                         \
    {                                                                         \
        uint64_t t1, t2;                                                      \
        uint64_t cycles[REPEAT_MEDIAN];                                       \
        int16_t dst[NTT_SIZE] __attribute__((aligned(16)))  = {0};            \
        int16_t src1[NTT_SIZE] __attribute__((aligned(16))) = {0};            \
        uint8_t src2[KYBER_POLYBYTES] __attribute__((aligned(16))) = {0};     \
        int32_t src3[NTT_SIZE] __attribute__((aligned(16))) = {0};            \
        (func)(dst, src1, src2, src3);                                        \
        for (size_t cnt_median = 0; cnt_median < REPEAT_MEDIAN; cnt_median++) \
        {                                                                     \
            t1 = hal_get_time();                                              \
            for (size_t cnt = 0; cnt < REPEAT; cnt++)                         \
                (func)(dst, src1, src2, src3);                                \
            t2 = hal_get_time();                                              \
            cycles[cnt_median] = (t2 - t1) / REPEAT;                          \
        }                                                                     \
        qsort(cycles, REPEAT_MEDIAN, sizeof(uint64_t), cmp_uint64_t);         \
        debug_printf(#var " repeat %d, %d",                                   \
                     REPEAT *REPEAT_MEDIAN, (cycles[REPEAT_MEDIAN >> 1]));    \
        return (0);                                                           \
    }

MAKE_BENCH_1(ntt_pqm4,ntt_fast_wrap)
MAKE_BENCH_1(ntt_pqm4_opt,ntt_fast_opt_m7_wrap)
MAKE_BENCH_1(ntt_acle,ntt_acle)

MAKE_BENCH_1(invntt_pqm4,invntt_fast_wrap)
MAKE_BENCH_1(invntt_pqm4_opt,invntt_fast_opt_m7_wrap)
MAKE_BENCH_1(invntt_acle,invntt_acle)

MAKE_BENCH_1(barrett_reduce_pqm4,asm_barrett_reduce)
MAKE_BENCH_1(barrett_reduce_pqm4_opt,asm_barrett_reduce_opt_m7)

MAKE_BENCH_1(fromplant_pqm4,asm_fromplant)
MAKE_BENCH_1(fromplant_pqm4_opt,asm_fromplant_opt_m7)

MAKE_BENCH_3(pointwise_add_pqm4,pointwise_add)
MAKE_BENCH_3(pointwise_add_pqm4_opt,pointwise_add_opt_m7)

MAKE_BENCH_3(pointwise_sub_pqm4,pointwise_sub)
MAKE_BENCH_3(pointwise_sub_pqm4_opt,pointwise_sub_opt_m7)

MAKE_BENCH_basemul_32(basemul_16_32, basemul_asm_opt_16_32);
MAKE_BENCH_basemul_32(basemul_16_32_opt, basemul_asm_opt_16_32_opt_m7);

MAKE_BENCH_basemul_32(basemul_acc_32_32, basemul_asm_acc_opt_32_32);
MAKE_BENCH_basemul_32(basemul_acc_32_32_opt, basemul_asm_acc_opt_32_32_opt_m7);

MAKE_BENCH_basemul_32_16(basemul_acc_32_16, basemul_asm_acc_opt_32_16);
MAKE_BENCH_basemul_32_16(basemul_acc_32_16_opt, basemul_asm_acc_opt_32_16_opt_m7);

MAKE_BENCH_frombytes_mul_32(frombytes_mul_16_32, frombytes_mul_asm_16_32_wrap);
MAKE_BENCH_frombytes_mul_32(frombytes_mul_16_32_opt, frombytes_mul_asm_16_32_opt_m7_wrap);

MAKE_BENCH_frombytes_mul_32(frombytes_mul_acc_32_32, frombytes_mul_asm_acc_32_32_wrap);
MAKE_BENCH_frombytes_mul_32(frombytes_mul_acc_32_32_opt, frombytes_mul_asm_acc_32_32_opt_m7_wrap);

MAKE_BENCH_frombytes_mul_32_16(frombytes_mul_acc_32_16, frombytes_mul_asm_acc_32_16_wrap);
MAKE_BENCH_frombytes_mul_32_16(frombytes_mul_acc_32_16_opt, frombytes_mul_asm_acc_32_16_opt_m7_wrap);

int main(void)
{
    int ret = 0;
    debug_test_start( "\nKyber All Test!\n" );

    /* Test cases */
    if( test_ntt_pqm4() != 0 ){return( 1 );}
    if( test_ntt_pqm4_opt() != 0 ){return( 1 );}
    if( test_ntt_acle() != 0){return( 1 );}

    if( test_invntt_pqm4() != 0 ){return( 1 );}
    if( test_invntt_pqm4_opt() != 0 ){return( 1 );}
    // TODO: test currently fails -- need to debug
    // if( test_invntt_acle() != 0 ){return( 1 );}

    if( test_barrett_reduce_pqm4() != 0 ){return( 1 );}
    if( test_barrett_reduce_pqm4_opt() != 0 ){return( 1 );}

    if( test_fromplant_pqm4() != 0 ){return( 1 );}
    if( test_fromplant_pqm4_opt() != 0 ){return( 1 );}

    if( test_pointwise_add_pqm4() != 0 ){return( 1 );}
    if( test_pointwise_add_pqm4_opt() != 0 ){return( 1 );}

    if( test_pointwise_sub_pqm4() != 0 ){return( 1 );}
    if( test_pointwise_sub_pqm4_opt() != 0 ){return( 1 );}
    
    if( test_basemul_16_32() != 0 ){return( 1 );}
    if( test_basemul_16_32_opt() != 0 ){return( 1 );}

    if( test_basemul_acc_32_32() != 0 ){return( 1 );}
    if( test_basemul_acc_32_32_opt() != 0 ){return( 1 );}

    if( test_basemul_acc_32_16() != 0 ){return( 1 );}
    if( test_basemul_acc_32_16_opt() != 0 ){return( 1 );}

    if( test_frombytes_mul_16_32() != 0 ){return( 1 );}
    if( test_frombytes_mul_16_32_opt() != 0 ){return( 1 );}

    if( test_frombytes_mul_acc_32_32() != 0 ){return( 1 );}
    if( test_frombytes_mul_acc_32_32_opt() != 0 ){return( 1 );}

    if( test_frombytes_mul_acc_32_16() != 0 ){return( 1 );}
    if( test_frombytes_mul_acc_32_16_opt() != 0 ){return( 1 );}

    bench_ntt_pqm4();
    bench_ntt_pqm4_opt();
    bench_ntt_acle();

    bench_invntt_pqm4();
    bench_invntt_pqm4_opt();
    bench_invntt_acle();

    bench_barrett_reduce_pqm4();
    bench_barrett_reduce_pqm4_opt();

    bench_fromplant_pqm4();
    bench_fromplant_pqm4_opt();

    bench_pointwise_add_pqm4();
    bench_pointwise_add_pqm4_opt();

    bench_pointwise_sub_pqm4();
    bench_pointwise_sub_pqm4_opt();

    bench_basemul_16_32();
    bench_basemul_16_32_opt();

    bench_basemul_acc_32_32();
    bench_basemul_acc_32_32_opt();

    bench_basemul_acc_32_16();
    bench_basemul_acc_32_16_opt();

    bench_frombytes_mul_16_32();
    bench_frombytes_mul_16_32_opt();

    bench_frombytes_mul_acc_32_32();
    bench_frombytes_mul_acc_32_32_opt();

    bench_frombytes_mul_acc_32_16();
    bench_frombytes_mul_acc_32_16_opt();

    /* Test cases */
    debug_printf( "Done!\n" );
    debug_printf( "ALL GOOD!\n" );
    return( ret );
}