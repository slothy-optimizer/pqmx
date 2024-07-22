#include <hal.h>
#include <misc.h>

#include <string.h>
#include <stdlib.h>
#include <time.h>

#include "fx_fft.h"

#define SIZE    1024
#define REPEAT  1000

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

#define MEASURE(fun)   do {                                             \
    hal_pmu_start_pmu_stats(&stats);                                    \
    for( size_t cnt=0; cnt<REPEAT; cnt++ )                              \
        fun( src, tw, SIZE);                                            \
    hal_pmu_finish_pmu_stats(&stats);                                   \
    debug_printf( #fun ": %f cycles (avg)\n",                           \
                  (float) stats.pmu_cycles/(REPEAT * (SIZE/16)) );      \
} while( 0 )

#define CHECK(fun)   do {                                               \
    memcpy( src, orig, sizeof( src ) );                                 \
    fun( src, tw, SIZE);                                                \
    if( memcmp( src, res, sizeof( src ) ) != 0 )                        \
    {                                                                   \
        debug_print_buf_s32( src, SIZE, "src" );                        \
        debug_print_buf_s32( res, SIZE, "res" );                        \
        debug_printf( "FUNCTIONAL ERROR!\n" );                          \
        return 1;                                                       \
    }                                                                   \
} while( 0 )


int bench_fft()
{
    pmu_stats stats;
    uint32_t orig[SIZE] ALIGN(16) = { 0 };
    uint32_t res [SIZE] ALIGN(16) = { 0 };
    uint32_t src [SIZE] ALIGN(16) = { 0 };
    uint32_t tw  [SIZE] ALIGN(16) = { 0 };

    fill_random_u8( (uint8_t*) src, sizeof( src ) );
    fill_random_u8( (uint8_t*) tw,  sizeof( tw  ) );
    memcpy( orig, src, sizeof( src ) );

    // Establish reference
    fixedpoint_radix4_fft_base( src, tw, SIZE);
    memcpy( res, src, sizeof( res ) );

    CHECK(fixedpoint_radix4_fft_opt_M55);
    CHECK(fixedpoint_radix4_fft_opt_M85);
    CHECK(fixedpoint_radix4_fft_handwritten);
    CHECK(fixedpoint_radix4_fft_intrinsics);

    MEASURE(fixedpoint_radix4_fft_base);
    MEASURE(fixedpoint_radix4_fft_intrinsics);
    MEASURE(fixedpoint_radix4_fft_handwritten);
    MEASURE(fixedpoint_radix4_fft_opt_M55);
    MEASURE(fixedpoint_radix4_fft_opt_M85);

    debug_test_ok();
    return( 0 );
}

int main(void)
{
    hal_pmu_enable();
    debug_printf( "FX FFT test!\n" );
    int ret = bench_fft();
    debug_printf( "Done!\n" );
    if(ret == 0){
        debug_printf( "ALL GOOD!\n" );
    }
    hal_pmu_disable();
    return( 0 );
}
