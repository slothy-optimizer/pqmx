
#include <hal.h>

#include <ARMCM85.h>
#include <system_ARMCM85.h>
#include <uart.h>
#include "randombytes.h"

#include "pmu_armv8.h"

#include <stdlib.h>
#include <string.h>
#include <stdio.h>

static volatile unsigned long long overflowcnt = 0;
void SysTick_Handler(void)
{
   ++overflowcnt;
}

uint64_t hal_get_time(){
  while (1) {
    unsigned long long before = overflowcnt;
    unsigned long long result = (before + 1) * 16777216llu - SysTick->VAL;
    if (overflowcnt == before) {
      return result;
    }
  }
}

static uint64_t _measure_start = 0;

/* Dependency on standard library:
 * - rand()
 * - printf()
 * - fflush()
 */
#include <stdlib.h>
#include <stdio.h>
#include <stdarg.h>

uint8_t get_random_byte()
{
    uint32_t data;
    randombytes((uint8_t *)&data,sizeof(data));
    return (uint8_t) data;
}

/* Stubs to enable/disable measurements. */
void measure_end()
{
    uint64_t dur = hal_get_time() - _measure_start;
    debug_printf( "cycles: %llu\n", dur );
}

void measure_start()
{
    _measure_start = hal_get_time();
}

/* Debugging stubs */

void debug_test_start( const char *testname )
{
    SysTick_Config(0xFFFFFFu);
    printf( "%s ... ", testname );
    fflush( stdout );
}

void debug_printf(const char * format, ... )
{
    va_list argp;
    va_start( argp, format );
    vprintf( format, argp );
    va_end( argp );
}

void debug_test_ok()   { printf( "Ok\n"    ); }
void debug_test_fail() { printf( "FAIL!\n" ); }


void hal_pmu_enable()
{
    CoreDebug->DEMCR |= CoreDebug_DEMCR_TRCENA_Msk;
    ARM_PMU_Enable();
}

void hal_pmu_disable()
{
    ARM_PMU_Disable();
}

void hal_pmu_start_pmu_stats( pmu_stats *s )
{
    memset(s,0,sizeof(*s));

#define ID_INST_RETIRED        0
#define ID_STALL               1
#define ID_MVE_STALL           2
#define ID_MVE_STALL_RESOURCE  3
#define ID_MVE_INST_RETIRED    4
#define ID_MVE_LDST_RETIRED    5
#define ID_MVE_INT_RETIRED     6
#define ID_MVE_INT_MAC_RETIRED 7

    ARM_PMU_Set_EVTYPER(ID_INST_RETIRED,       ARM_PMU_INST_RETIRED);

    ARM_PMU_Set_EVTYPER(ID_STALL,               ARM_PMU_STALL               );
    ARM_PMU_Set_EVTYPER(ID_MVE_STALL,           ARM_PMU_MVE_STALL           );
    ARM_PMU_Set_EVTYPER(ID_MVE_STALL_RESOURCE,  ARM_PMU_MVE_STALL_RESOURCE  );
    ARM_PMU_Set_EVTYPER(ID_MVE_INST_RETIRED,    ARM_PMU_MVE_INST_RETIRED    );
    ARM_PMU_Set_EVTYPER(ID_MVE_LDST_RETIRED,    ARM_PMU_MVE_LDST_RETIRED    );
    ARM_PMU_Set_EVTYPER(ID_MVE_INT_RETIRED,     ARM_PMU_MVE_INT_RETIRED     );
    ARM_PMU_Set_EVTYPER(ID_MVE_INT_MAC_RETIRED, ARM_PMU_MVE_INT_MAC_RETIRED );

    ARM_PMU_CYCCNT_Reset();
    ARM_PMU_EVCNTR_ALL_Reset();

    ARM_PMU_CNTR_Enable(PMU_CNTENSET_CNT0_ENABLE_Msk|
                        PMU_CNTENSET_CNT1_ENABLE_Msk|
                        PMU_CNTENSET_CNT2_ENABLE_Msk|
                        PMU_CNTENSET_CNT3_ENABLE_Msk|
                        PMU_CNTENSET_CNT4_ENABLE_Msk|
                        PMU_CNTENSET_CNT5_ENABLE_Msk|
                        PMU_CNTENSET_CNT6_ENABLE_Msk|
                        PMU_CNTENSET_CNT7_ENABLE_Msk);
    ARM_PMU_CNTR_Enable(PMU_CNTENSET_CCNTR_ENABLE_Msk);

    SysTick_Config(0xFFFFFFu);
}

void hal_pmu_finish_pmu_stats( pmu_stats *s )
{
    ARM_PMU_CNTR_Disable(PMU_CNTENSET_CCNTR_ENABLE_Msk);
    ARM_PMU_CNTR_Disable(PMU_CNTENSET_CNT0_ENABLE_Msk|
                         PMU_CNTENSET_CNT1_ENABLE_Msk|
                         PMU_CNTENSET_CNT2_ENABLE_Msk|
                         PMU_CNTENSET_CNT3_ENABLE_Msk|
                         PMU_CNTENSET_CNT4_ENABLE_Msk|
                         PMU_CNTENSET_CNT5_ENABLE_Msk|
                         PMU_CNTENSET_CNT6_ENABLE_Msk|
                         PMU_CNTENSET_CNT7_ENABLE_Msk);

    s->pmu_cycles = ARM_PMU_Get_CCNTR();
    s->systick_cycles = 16777216llu - SysTick->VAL;

    s->inst_all      = ARM_PMU_Get_EVCNTR(ID_INST_RETIRED        );
    s->inst_mve_all  = ARM_PMU_Get_EVCNTR(ID_MVE_INST_RETIRED    );
    s->inst_mve_lsu  = ARM_PMU_Get_EVCNTR(ID_MVE_LDST_RETIRED    );
    s->inst_mve_int  = ARM_PMU_Get_EVCNTR(ID_MVE_INT_RETIRED     );
    s->inst_mve_mul  = ARM_PMU_Get_EVCNTR(ID_MVE_INT_MAC_RETIRED );

    s->inst_mve_int  -= s->inst_mve_mul;

    s->stall_all          = ARM_PMU_Get_EVCNTR(ID_STALL);
    s->stall_mve_all      = ARM_PMU_Get_EVCNTR(ID_MVE_STALL);
    s->stall_mve_resource = ARM_PMU_Get_EVCNTR(ID_MVE_STALL_RESOURCE);
}

void hal_pmu_send_stats( char *s, pmu_stats const *stats )
{
    printf( "%s\n", s );
    printf( "- cycles:               %lu\n",                            (unsigned long)stats->pmu_cycles );
    printf( "- systick cycles:       %lu\n",                            (unsigned long)stats->systick_cycles );
    printf( "- instructions:         %lu (IPC=0.%lu)\n",                 (unsigned long)stats->inst_all,
            (unsigned long)( stats->inst_all * 100 ) / stats->pmu_cycles );
    printf( "- stalls:               %lu (%lu%% of instructions)\n",     (unsigned long)stats->stall_all,
            (unsigned long)( stats->stall_all * 100 ) / stats->inst_all );
    printf( "- MVE instructions:     %lu (%lu%% of instructions)\n",     (unsigned long)stats->inst_mve_all,
            (unsigned long)( stats->inst_mve_all * 100) / stats->inst_all );
    printf( "- MVE LSU instructions: %lu (%lu%% of MVE instructions, busy %lu%% of cycles)\n", (unsigned long)stats->inst_mve_lsu,
            (unsigned long)( stats->inst_mve_lsu * 100) / stats->inst_mve_all,
            (unsigned long)( stats->inst_mve_lsu * 2 * 100) / stats->pmu_cycles );
    printf( "- MVE INT instructions: %lu (%lu%% of MVE instructions, busy %lu%% of cycles)\n", (unsigned long)stats->inst_mve_int,
            (unsigned long)( stats->inst_mve_int * 100) / stats->inst_mve_all,
            (unsigned long)( stats->inst_mve_int * 2 * 100) / stats->pmu_cycles );
    printf( "- MVE MUL instructions: %lu (%lu%% of MVE instructions, busy %lu%% of cycles)\n", (unsigned long)stats->inst_mve_mul,
            (unsigned long)( stats->inst_mve_mul * 100) / stats->inst_mve_all,
            (unsigned long)( stats->inst_mve_mul * 2 * 100) / stats->pmu_cycles );
    printf( "- MVE stalls:           %lu (%lu%% of MVE instructions)\n", (unsigned long)stats->stall_mve_all,
            (unsigned long)( stats->stall_mve_all * 100 ) / stats->inst_mve_all );
    printf( "- MVE resource stalls:  %lu (%lu%% of MVE stalls)\n",       (unsigned long)stats->stall_mve_resource,
            (unsigned long)( stats->stall_mve_resource * 100 ) / stats->stall_mve_all );

    printf( "s %s  %lu %lu  %lu %lu  %lu %lu  %lu %lu %lu  %lu %lu %lu  %lu %lu %lu  %lu %lu  %lu %lu %lu\n",
            s,
            (unsigned long)stats->pmu_cycles,
            (unsigned long)stats->inst_all,           (unsigned long)( stats->inst_all           * 100 ) / stats->pmu_cycles,
            (unsigned long)stats->stall_all,          (unsigned long)( stats->stall_all          * 100 ) / stats->inst_all,
            (unsigned long)stats->inst_mve_all,       (unsigned long)( stats->inst_mve_all       * 100 ) / stats->inst_all,
            (unsigned long)stats->inst_mve_lsu,       (unsigned long)( stats->inst_mve_lsu       * 100 ) / stats->inst_mve_all,      (unsigned long)( stats->inst_mve_lsu * 2 * 100) / stats->pmu_cycles,
            (unsigned long)stats->inst_mve_int,       (unsigned long)( stats->inst_mve_int       * 100 ) / stats->inst_mve_all,      (unsigned long)( stats->inst_mve_int * 2 * 100) / stats->pmu_cycles,
            (unsigned long)stats->inst_mve_mul,       (unsigned long)( stats->inst_mve_mul       * 100 ) / stats->inst_mve_all,      (unsigned long)( stats->inst_mve_mul * 2 * 100) / stats->pmu_cycles,
            (unsigned long)stats->stall_mve_all,      (unsigned long)( stats->stall_mve_all      * 100 ) / stats->inst_mve_all,
            (unsigned long)stats->stall_mve_resource, (unsigned long)( stats->stall_mve_resource * 100 ) / stats->stall_mve_all );

}
