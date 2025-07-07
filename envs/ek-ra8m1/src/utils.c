#include "utils.h"

#include <errno.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>

#ifdef RA8M1
#include "SEGGER_RTT.h"
#include "hal_data.h"
#elif defined(QEMU_M55)
#include "timeout.h"

int stdout_init(void);
int _write(int file, char *ptr, int len);
#endif

#ifdef __clang__
static int trace_putc(char c, FILE *file) {
    (void)file; /* Not used in this function */
#ifdef RA8M1
    SEGGER_RTT_Write(0, &c, 1);
#elif defined(QEMU_M55)
    _write(STDOUT_FILENO, &c, 1);
#endif
    return c;
}

static int null_getc(FILE *file) {
    (void)file; /* Not used in this function */
    return 0;
}

static FILE __stdio = FDEV_SETUP_STREAM(trace_putc, null_getc, NULL, _FDEV_SETUP_RW);

FILE *const stdin = &__stdio;
__strong_reference(stdin, stdout);
__strong_reference(stdin, stderr);
#endif

void Utils_Init(void) {
#ifdef RA8M1
    SEGGER_RTT_Init();
#elif defined(QEMU_M55)
    stdout_init();
#endif
}

void PMU_Init(void) {
    // Enable TRCENA (unlike claimed in the Cortex-M85 TRM, it apparently boots up enabled)
    CoreDebug->DEMCR |= CoreDebug_DEMCR_TRCENA_Msk;

    // Disable DWT_CYCCNT in DWT_CTRL -- PMU doesn't work otherwise
    // The Cortex-M85 TRM claims it shouldn't be enabled at boot, but apparently it is
    DWT->CTRL &= ~DWT_CTRL_CYCCNTENA_Msk;

    ARM_PMU_Enable();
}


void PMU_Finalize(void) {
    ARM_PMU_Disable();
}

void PMU_Init_Status( pmu_stats *s ){
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

    ARM_PMU_EVCNTR_ALL_Reset();
    ARM_PMU_CYCCNT_Reset();


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

void PMU_Finalize_Status( pmu_stats *s ){
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

void PMU_Send_Status( char *s, pmu_stats const *stats ){
    printf( "%s\n", s );
    printf( "- cycles:               %" PRIu32 "\n", stats->pmu_cycles );
    printf( "- systick cycles:       %" PRIu32 "\n", stats->systick_cycles );
    printf( "- instructions:         %" PRIu32 " (IPC=0.%02" PRIu32 ")\n", stats->inst_all,
            ( stats->inst_all * 100 ) / stats->pmu_cycles );
    printf( "- stalls:               %" PRIu32 " (%" PRIu32 "%% of instructions)\n", stats->stall_all,
            ( stats->stall_all * 100 ) / stats->inst_all );
    printf( "- MVE instructions:     %" PRIu32 " (%" PRIu32 "%% of instructions)\n", stats->inst_mve_all,
            ( stats->inst_mve_all * 100) / stats->inst_all );
    printf( "- MVE LSU instructions: %" PRIu32 " (%" PRIu32 "%% of MVE instructions, busy %" PRIu32 "%% of cycles)\n", stats->inst_mve_lsu,
            ( stats->inst_mve_lsu * 100) / stats->inst_mve_all,
            ( stats->inst_mve_lsu * 2 * 100) / stats->pmu_cycles );
    printf( "- MVE INT instructions: %" PRIu32 " (%" PRIu32 "%% of MVE instructions, busy %" PRIu32 "%% of cycles)\n", stats->inst_mve_int,
            ( stats->inst_mve_int * 100) / stats->inst_mve_all,
            ( stats->inst_mve_int * 2 * 100) / stats->pmu_cycles );
    printf( "- MVE MUL instructions: %" PRIu32 " (%" PRIu32 "%% of MVE instructions, busy %" PRIu32 "%% of cycles)\n", stats->inst_mve_mul,
            ( stats->inst_mve_mul * 100) / stats->inst_mve_all,
            ( stats->inst_mve_mul * 2 * 100) / stats->pmu_cycles );
    printf( "- MVE stalls:           %" PRIu32 " (%" PRIu32 "%% of MVE instructions)\n", stats->stall_mve_all,
            ( stats->stall_mve_all * 100 ) / stats->inst_mve_all );
    printf( "- MVE resource stalls:  %" PRIu32 " (%" PRIu32 "%% of MVE stalls)\n", stats->stall_mve_resource,
            ( stats->stall_mve_resource * 100 ) / stats->stall_mve_all );

    /* printf(
            "%s " 
            "%" PRIu32 " "
            "%" PRIu32 " %" PRIu32 " "
            "%" PRIu32 " %" PRIu32 " "
            "%" PRIu32 " %" PRIu32 " "
            "%" PRIu32 " %" PRIu32 " %" PRIu32 " "
            "%" PRIu32 " %" PRIu32 " %" PRIu32 " "
            "%" PRIu32 " %" PRIu32 " %" PRIu32 " "
            "%" PRIu32 " %" PRIu32 " "
            "%" PRIu32 " %" PRIu32 "\n",            
            s,
            stats->pmu_cycles,
            stats->inst_all,           ( stats->inst_all           * 100 ) / stats->pmu_cycles,
            stats->stall_all,          ( stats->stall_all          * 100 ) / stats->inst_all,
            stats->inst_mve_all,       ( stats->inst_mve_all       * 100 ) / stats->inst_all,
            stats->inst_mve_lsu,       ( stats->inst_mve_lsu       * 100 ) / stats->inst_mve_all,      ( stats->inst_mve_lsu * 2 * 100) / stats->pmu_cycles,
            stats->inst_mve_int,       ( stats->inst_mve_int       * 100 ) / stats->inst_mve_all,      ( stats->inst_mve_int * 2 * 100) / stats->pmu_cycles,
            stats->inst_mve_mul,       ( stats->inst_mve_mul       * 100 ) / stats->inst_mve_all,      ( stats->inst_mve_mul * 2 * 100) / stats->pmu_cycles,
            stats->stall_mve_all,      ( stats->stall_mve_all      * 100 ) / stats->inst_mve_all,
            stats->stall_mve_resource, ( stats->stall_mve_resource * 100 ) / stats->stall_mve_all ); */

}

void delay_ms(uint32_t ms) {
#ifdef RA8M1
    R_BSP_SoftwareDelay(ms, BSP_DELAY_UNITS_MILLISECONDS);
#elif defined(QEMU_M55)
    wait_ms(ms);
#endif
}

int utils_putchar(char c) {
#ifdef RA8M1
    return (int)SEGGER_RTT_PutChar(0, c);
#elif defined(QEMU_M55)
    return _write(STDOUT_FILENO, &c, 1);
#endif
}

void utils_exit(int retcode) {
#ifdef RA8M1
    printf("---------- Program exited with return code %d ----------\n", retcode);
    while (1) {
        __asm volatile("NOP");
    }
#elif defined(QEMU_M55)
    int ret[] = {0x20026, retcode};
    __asm__ volatile("" ::: "memory");
    __asm__ volatile(
        "mov  r0, #0x20 \n"
        "mov  r1, %[ret]\n"
        "bkpt #0xAB     \n"
        :
        : [ret] "r"(ret)
        : "r0", "r1");
#else
    exit(retcode);
#endif
}
