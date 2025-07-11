#include <inttypes.h>
#include <stdint.h>

#ifdef RA8M1
#include "hal_data.h"
#include "core_cm85.h"
#include "pmu_armv8.h"
#elif defined(QEMU_M55)
#include "SSE300MPS3.h"
#endif

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

void Utils_Init(void);
void delay_ms(uint32_t ms);
int utils_putchar(char c);
void utils_exit(int retcode);

#ifdef RA8M1
#define ITCM_FN __attribute__((section(".itcm_data")))
#define DTCM_DATA __attribute__((section(".dtcm_data")))
#elif defined(QEMU_M55)
#define ITCM_FN
#define DTCM_DATA
#endif

#define ALIGNED(N) __attribute__((aligned(N)))

#define bench(CALL)                                                    \
    do {                                                               \
        __disable_irq();                                               \
                                                                       \
        ARM_PMU_CYCCNT_Reset();                                        \
                                                                       \
        ARM_PMU_CNTR_Enable(PMU_CNTENSET_CCNTR_ENABLE_Msk);            \
        CALL;                                                          \
        ARM_PMU_CNTR_Disable(PMU_CNTENCLR_CCNTR_ENABLE_Msk);           \
                                                                       \
        printf(#CALL ": cycles = %" PRIu32 "\n", ARM_PMU_Get_CCNTR()); \
                                                                       \
        __enable_irq();                                                \
    }                                                                  \
    while (0)
