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
 */

#include <hal.h>
#include <misc.h>

#include <string.h>
#include <stdlib.h>
#include <time.h>

#include "cmplex_mag_sqr_fx.h"

#define SIZE    2500
#define REPEAT   512

uint64_t hal_get_time();

typedef struct
{
    uint32_t systick_cycles;
    uint32_t pmu_cycles;

    uint32_t inst_all;

    uint32_t inst_mve_all;
    uint32_t inst_mve_lsu;
    uint32_t inst_mve_int;
    uint32_t inst_mve_mul;

    uint32_t stall_all;
    uint32_t stall_mve_all;
    uint32_t stall_mve_resource;
} pmu_stats;

void hal_pmu_enable();
void hal_pmu_disable();
void hal_pmu_start_pmu_stats( pmu_stats *s );
void hal_pmu_finish_pmu_stats( pmu_stats *s );
void hal_pmu_send_stats( char *s, pmu_stats const *stats );

#define ALIGN(N) __attribute__((aligned(N)))

#define FUNCNAME(uarch,unroll)  cmplx_mag_sqr_fx_opt_ ## uarch ## _unroll ## unroll

#define MEASURE(uarch,unroll)   do {                                    \
    hal_pmu_start_pmu_stats(&stats);                                    \
    for( size_t cnt=0; cnt<REPEAT; cnt++ )                              \
        FUNCNAME(uarch,unroll) ( src, src, SIZE);                       \
    hal_pmu_finish_pmu_stats(&stats);                                   \
    debug_printf( #uarch "." #unroll ": %f cycles (avg)\n",             \
                  (float) stats.pmu_cycles/(REPEAT * (SIZE/4)) );       \
} while( 0 )

int bench_sqmag()
{
    pmu_stats stats;

    debug_test_start( "foo..." );

    uint64_t src[SIZE] ALIGN(16);
//    uint32_t res[SIZE] ALIGN(16);

    fill_random_u8( (uint8_t*) src, sizeof( src ) );

    hal_pmu_start_pmu_stats(&stats);
    for( size_t cnt=0; cnt<REPEAT; cnt++ )
        cmplx_mag_sqr_fx( src, src, SIZE);
    hal_pmu_finish_pmu_stats(&stats);
    debug_printf( "Original: %f cycles (avg)\n", (float) stats.pmu_cycles/(REPEAT * (SIZE/4)) );

    MEASURE(M55,1);
    MEASURE(M55,2);
    MEASURE(M55,4);

    MEASURE(M85,1);
    MEASURE(M85,2);
    MEASURE(M85,4);

    debug_test_ok();
    return( 0 );
}

int main(void)
{
    hal_pmu_enable();
    debug_printf( "Squared magnitude test!\n" );
    bench_sqmag();
    debug_printf( "Done!\n:" );
    hal_pmu_disable();
    return( 0 );
}
