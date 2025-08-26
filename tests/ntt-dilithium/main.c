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
#define REPEAT     1
#else
#define REPEAT  1024
#endif

/*
 * Some external references to auto-generated assembly.
 */

#include <hal.h>
#include <stdint.h>
#include <hal.h>
#include <misc.h>
#include <poly.h>

#include <string.h>
#include <stdlib.h>
#include <time.h>

#include "ntt_ref.h"

// base NTT
void ntt_dilithium_12_34_56_78(int32_t *src);
void ntt_dilithium_12_34_56_78_no_trans_vld4(int32_t *src);
void ntt_dilithium_123_456_78(int32_t *src);

// M55
void ntt_dilithium_12_34_56_78_opt_m55(int32_t *src);
void ntt_dilithium_12_34_56_78_no_trans_vld4_opt_m55(int32_t *src);
void ntt_dilithium_123_456_78_opt_size_m55(int32_t *src);

// M85
void ntt_dilithium_12_34_56_78_opt_m85(int32_t *src);
void ntt_dilithium_12_34_56_78_no_trans_vld4_opt_m85(int32_t *src);
void ntt_dilithium_123_456_78_opt_size_m85(int32_t *src);

// base iNTT
void intt_dilithium_12_34_56_78(int32_t *src);

// M55 iNTT
void intt_dilithium_12_34_56_78_opt_m55(int32_t *src);

// M85 iNTT
void intt_dilithium_12_34_56_78_opt_m85(int32_t *src);

#define NTT_LAYERS             8
#define NTT_SIZE               (1u << NTT_LAYERS)
#define NTT_ROOT_ORDER         (2 * NTT_SIZE)
#define NTT_INCOMPLETE_LAYERS  8
#define NTT_INCOMPLETE_SIZE    (1u << NTT_INCOMPLETE_LAYERS)
#define NTT_LAYER_GAP          ( NTT_LAYERS - NTT_INCOMPLETE_LAYERS )
#define NTT_LAYER_STRIDE       (1u << NTT_LAYER_GAP )

/*
 * Test cases
 */

int32_t modulus         = 8380417;
void buf_bitrev_4( int32_t *src )
{
    int32_t *src_ = (int32_t*) src;
    for( unsigned i=0; i < NTT_SIZE; i += 16 )
    {
        int32_t tmp[16];
        for( unsigned t=0; t < 16; t++ )
            tmp[t] = src_[i+t];

        for( unsigned t0=0; t0 < 4; t0++ )
            for( unsigned t1=0; t1 < 4; t1++ )
                src_[i+t0*4 + t1] = tmp[t1*4+t0];
    }
}

#define MAKE_TEST_FWD(var,func,rev4)                                    \
int test_ntt_ ## var ()                                                 \
{                                                                       \
    debug_test_start( "NTT s32 for " #func );                           \
    int32_t src[NTT_SIZE]      __attribute__((aligned(16)));            \
    int32_t src_copy[NTT_SIZE] __attribute__((aligned(16)));            \
                                                                        \
    /* Setup input */                                                   \
    fill_random_u32( (uint32_t*) src, NTT_SIZE );                       \
    mod_reduce_buf_s32( src, NTT_SIZE, modulus );                       \
                                                                        \
    /* Step 1: Reference NTT */                                         \
    memcpy( src_copy, src, sizeof( src ) );                             \
    ntt_ref( src_copy );                                                \
    mod_reduce_buf_s32( src_copy, NTT_SIZE, modulus );                  \
    if(rev4) buf_bitrev_4( src_copy );                                  \
                                                                        \
    /* Step 2: MVE-based NTT */                                         \
    measure_start();                                                    \
    (func)( src );                                                      \
    measure_end();                                                      \
                                                                        \
    mod_reduce_buf_s32( src, NTT_SIZE, modulus );                       \
    if( compare_buf_u32( (uint32_t const*) src, (uint32_t const*) src_copy, \
                         NTT_SIZE ) != 0 )                              \
    {                                                                   \
        debug_print_buf_s32( src_copy, NTT_SIZE, "Reference" );         \
        debug_print_buf_s32( src, NTT_SIZE, "MVE" );                    \
        debug_test_fail();                                              \
        return( 1 );                                                    \
    }                                                                   \
    debug_test_ok();                                                    \
                                                                        \
    return( 0 );                                                        \
}

// base NTT
MAKE_TEST_FWD(l2222,ntt_dilithium_12_34_56_78,1)
MAKE_TEST_FWD(l2222_no_trans_vld4,ntt_dilithium_12_34_56_78_no_trans_vld4,1)
MAKE_TEST_FWD(l332,ntt_dilithium_123_456_78,1)
// M55
MAKE_TEST_FWD(l2222_opt_m55,ntt_dilithium_12_34_56_78_opt_m55,1)
MAKE_TEST_FWD(l2222_no_trans_vld4_opt_m55,ntt_dilithium_12_34_56_78_no_trans_vld4_opt_m55,1)
MAKE_TEST_FWD(l332_opt_size_m55,ntt_dilithium_123_456_78_opt_size_m55,1)
// M85
MAKE_TEST_FWD(l2222_opt_m85,ntt_dilithium_12_34_56_78_opt_m85,1)
MAKE_TEST_FWD(l2222_no_trans_vld4_opt_m85,ntt_dilithium_12_34_56_78_no_trans_vld4_opt_m85,1)
MAKE_TEST_FWD(l332_opt_size_m85,ntt_dilithium_123_456_78_opt_size_m85,1)

// Define macro for iNTT tests
#define MAKE_TEST_INV(var,func,rev4)                                    \
int test_intt_ ## var ()                                                \
{                                                                       \
    debug_test_start( "iNTT s32 for " #func );                          \
    int32_t src[NTT_SIZE]      __attribute__((aligned(16)));            \
    int32_t src_copy[NTT_SIZE] __attribute__((aligned(16)));            \
                                                                        \
    /* Setup input */                                                   \
    fill_random_u32( (uint32_t*) src, NTT_SIZE );                       \
    mod_reduce_buf_s32( src, NTT_SIZE, modulus );                       \
                                                                        \
    /* Step 1: Reference iNTT */                                        \
    memcpy( src_copy, src, sizeof( src ) );                             \
    invntt_tomont_ref( src_copy );                                      \
    mod_reduce_buf_s32( src_copy, NTT_SIZE, modulus );                  \
                                                                        \
    /* Step 2: MVE-based iNTT - expects input in transposed format */   \
    if(rev4) buf_bitrev_4( src );  /* Apply transposition to input */   \
    measure_start();                                                    \
    (func)( src );                                                      \
    measure_end();                                                      \
                                                                        \
    mod_reduce_buf_s32( src, NTT_SIZE, modulus );                       \
                                                                        \
    if( compare_buf_u32( (uint32_t const*) src, (uint32_t const*) src_copy, \
                         NTT_SIZE ) != 0 )                              \
    {                                                                   \
        debug_print_buf_s32( src_copy, NTT_SIZE, "Reference" );         \
        debug_print_buf_s32( src, NTT_SIZE, "MVE" );                    \
        debug_test_fail();                                              \
        return( 1 );                                                    \
    }                                                                   \
    debug_test_ok();                                                    \
                                                                        \
    return( 0 );                                                        \
}

// base iNTT
MAKE_TEST_INV(l2222,intt_dilithium_12_34_56_78,1)
// M55 iNTT
MAKE_TEST_INV(l2222_opt_m55,intt_dilithium_12_34_56_78_opt_m55,1)
// M85 iNTT
MAKE_TEST_INV(l2222_opt_m85,intt_dilithium_12_34_56_78_opt_m85,1)

uint64_t hal_get_time();


void hal_pmu_enable();
void hal_pmu_disable();
void hal_pmu_start_pmu_stats( pmu_stats *s );
void hal_pmu_finish_pmu_stats( pmu_stats *s );
void hal_pmu_send_stats( char *s, pmu_stats const *stats );

void hal_pmu_send_stats_wrapper(pmu_stats *stats)
{
#if defined(ENABLE_PMU_STATS)
    hal_pmu_send_stats("", stats);
#endif
}

#define MAKE_BENCH(var,func)                                   \
int bench_ ## var ()                                           \
{                                                              \
    int32_t src[NTT_SIZE]      __attribute__((aligned(16)));   \
    pmu_stats stats;                                           \
    (func)( src );                                             \
    hal_pmu_start_pmu_stats(&stats);                           \
    for( size_t cnt=0; cnt<REPEAT; cnt++ )                     \
        (func)( src );                                         \
    hal_pmu_finish_pmu_stats(&stats);                          \
    /*Workaround for RA8M1 (cannot print %f)*/                 \
    debug_printf( #func ": %lu.%02lu cycles (avg)\n",          \
                 stats.pmu_cycles/(REPEAT),                    \
                 (stats.pmu_cycles % REPEAT) * 100 / REPEAT);  \
    hal_pmu_send_stats_wrapper(&stats);                        \
    return( 0 );                                               \
}
// base NTT
MAKE_BENCH(ntt_l2222,ntt_dilithium_12_34_56_78)
MAKE_BENCH(ntt_l2222_no_trans_vld4,ntt_dilithium_12_34_56_78_no_trans_vld4)
MAKE_BENCH(ntt_l332,ntt_dilithium_123_456_78)
// M55
MAKE_BENCH(ntt_l2222_opt_m55,ntt_dilithium_12_34_56_78_opt_m55)
MAKE_BENCH(ntt_l2222_no_trans_vld4_opt_m55,ntt_dilithium_12_34_56_78_no_trans_vld4_opt_m55)
MAKE_BENCH(ntt_l332_opt_size_m55,ntt_dilithium_123_456_78_opt_size_m55)
// M85
MAKE_BENCH(ntt_l2222_opt_m85,ntt_dilithium_12_34_56_78_opt_m85)
MAKE_BENCH(ntt_l2222_no_trans_vld4_opt_m85,ntt_dilithium_12_34_56_78_no_trans_vld4_opt_m85)
MAKE_BENCH(ntt_l332_opt_size_m85,ntt_dilithium_123_456_78_opt_size_m85)
// base iNTT
MAKE_BENCH(intt_l2222,intt_dilithium_12_34_56_78)
// M55 iNTT
MAKE_BENCH(intt_l2222_opt_m55,intt_dilithium_12_34_56_78_opt_m55)
// M85 iNTT
MAKE_BENCH(intt_l2222_opt_m85,intt_dilithium_12_34_56_78_opt_m85)

int main(void)
{
    int ret = 0;

    debug_printf( "\nDilithium NTT/iNTT Test!\n" );

    // base NTT
    ret |= test_ntt_l2222();
    if( ret != 0 )
        return( 1 );
    ret |= test_ntt_l2222_no_trans_vld4();
    if( ret != 0 )
        return( 1 );
    ret |= test_ntt_l332();
    if( ret != 0 )
        return( 1 );
    // M55 NTT
    ret |= test_ntt_l2222_opt_m55();
    if( ret != 0 )
        return( 1 );
    ret |= test_ntt_l2222_no_trans_vld4_opt_m55();
    if( ret != 0 )
        return( 1 );
    ret |= test_ntt_l332_opt_size_m55();
    if( ret != 0 )
        return( 1 );
    // M85 NTT
    ret |= test_ntt_l2222_opt_m85();
    if( ret != 0 )
        return( 1 );
    ret |= test_ntt_l2222_no_trans_vld4_opt_m85();
    if( ret != 0 )
        return( 1 );
    ret |= test_ntt_l332_opt_size_m85();
    if( ret != 0 )
        return( 1 );
    
    // base iNTT
    ret |= test_intt_l2222();
    if( ret != 0 )
        return( 1 );
    // M55 iNTT
    ret |= test_intt_l2222_opt_m55();
    if( ret != 0 )
        return( 1 );
    // M85 iNTT
    ret |= test_intt_l2222_opt_m85();
    if( ret != 0 )
        return( 1 );

    hal_pmu_enable();
    debug_printf( "Dilithium NTT/iNTT Bench!\n" );
    // base NTT
    bench_ntt_l2222();
    bench_ntt_l2222_no_trans_vld4();
    bench_ntt_l332();
    // M55 NTT
    bench_ntt_l2222_opt_m55();
    bench_ntt_l2222_no_trans_vld4_opt_m55();
    bench_ntt_l332_opt_size_m55();
    // M85 NTT
    bench_ntt_l2222_opt_m85();
    bench_ntt_l2222_no_trans_vld4_opt_m85();
    bench_ntt_l332_opt_size_m85();
    
    // base iNTT
    bench_intt_l2222();
    // M55 iNTT  
    bench_intt_l2222_opt_m55();
    // M85 iNTT
    bench_intt_l2222_opt_m85();

    debug_printf( "Done!\n" );
    hal_pmu_disable();
    debug_printf( "ALL GOOD!\n" );
    return( ret );
}
