#include <inttypes.h>
#include <stdint.h>

#ifdef RA8M1
#include "hal_data.h"
#include "core_cm85.h"
#include "pmu_armv8.h"
#elif defined(QEMU_M55)
#include "SSE300MPS3.h"
#endif

typedef struct{
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
void PMU_Init(void);
void delay_ms(uint32_t ms);
int utils_putchar(char c);
void utils_exit(int retcode);

void PMU_Finalize();
void PMU_Init_Status( pmu_stats *s );
void PMU_Finalize_Status( pmu_stats *s );
void PMU_Send_Status( char *s, pmu_stats const *stats );

#ifdef RA8M1
#define ITCM_FN __attribute__((section(".itcm_data")))
#define DTCM_DATA __attribute__((section(".dtcm_data")))
#elif defined(QEMU_M55)
#define ITCM_FN
#define DTCM_DATA
#endif

#define ALIGNED(N) __attribute__((aligned(N)))

#define bench_cycles(CALL, OUT_VAR)                                            \
    do {                                                                       \
        pmu_stats stats;                                                       \
        PMU_Init_Status(&stats);                                               \
        CALL;                                                                  \
        PMU_Finalize_Status(&stats);                                           \
        PMU_Send_Status(#CALL, &stats);                                        \
        printf("stats.pmu_cycles: %" PRIu32 " cycles\n\n", stats.pmu_cycles);  \
        OUT_VAR = stats.pmu_cycles;                                            \
    } while (0)

// this is old one.
#define bench_cycles2(CALL, OUT_VAR, RET_VAR)                          \
    do {                                                               \
        __disable_irq();                                               \
        ARM_PMU_CYCCNT_Reset();                                        \
        ARM_PMU_CNTR_Enable(PMU_CNTENSET_CCNTR_ENABLE_Msk);            \
        RET_VAR = CALL;                                                          \
        ARM_PMU_CNTR_Disable(PMU_CNTENCLR_CCNTR_ENABLE_Msk);           \
        printf(#CALL ": cycles = %" PRIu32 "\n", ARM_PMU_Get_CCNTR()); \
        OUT_VAR = ARM_PMU_Get_CCNTR();                                 \
        __enable_irq();                                                \
    } while (0)

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

#define bench_PMU1(CALL, EV0)                                                                                         \
    do {                                                                                                              \
        __disable_irq();                                                                                              \
                                                                                                                      \
        ARM_PMU_Set_EVTYPER(0, EV0);                                                                                  \
                                                                                                                      \
        ARM_PMU_EVCNTR_ALL_Reset();                                                                                   \
        ARM_PMU_CYCCNT_Reset();                                                                                       \
                                                                                                                      \
        ARM_PMU_CNTR_Enable(PMU_CNTENSET_CCNTR_ENABLE_Msk | PMU_CNTENSET_CNT0_ENABLE_Msk);                            \
        CALL;                                                                                                         \
        ARM_PMU_CNTR_Disable(PMU_CNTENCLR_CCNTR_ENABLE_Msk | PMU_CNTENCLR_CNT0_ENABLE_Msk);                           \
                                                                                                                      \
        printf(#CALL ": cycles = %" PRIu32 ", " #EV0 " = %" PRIu32 "\n", ARM_PMU_Get_CCNTR(), ARM_PMU_Get_EVCNTR(0)); \
                                                                                                                      \
        __enable_irq();                                                                                               \
    }                                                                                                                 \
    while (0)

#define bench_PMU2(CALL, EV0, EV1)                                                                                    \
    do {                                                                                                              \
        __disable_irq();                                                                                              \
                                                                                                                      \
        ARM_PMU_Set_EVTYPER(0, EV0);                                                                                  \
        ARM_PMU_Set_EVTYPER(1, EV1);                                                                                  \
                                                                                                                      \
        ARM_PMU_EVCNTR_ALL_Reset();                                                                                   \
        ARM_PMU_CYCCNT_Reset();                                                                                       \
                                                                                                                      \
        ARM_PMU_CNTR_Enable(PMU_CNTENSET_CCNTR_ENABLE_Msk | PMU_CNTENSET_CNT0_ENABLE_Msk |                            \
                            PMU_CNTENSET_CNT1_ENABLE_Msk);                                                            \
        CALL;                                                                                                         \
        ARM_PMU_CNTR_Disable(PMU_CNTENCLR_CCNTR_ENABLE_Msk | PMU_CNTENCLR_CNT0_ENABLE_Msk |                           \
                             PMU_CNTENCLR_CNT1_ENABLE_Msk);                                                           \
                                                                                                                      \
        printf(#CALL ": cycles = %" PRIu32 ", " #EV0 " = %" PRIu32 ", " #EV1 " = %" PRIu32 "\n", ARM_PMU_Get_CCNTR(), \
               ARM_PMU_Get_EVCNTR(0), ARM_PMU_Get_EVCNTR(1));                                                         \
                                                                                                                      \
        __enable_irq();                                                                                               \
    }                                                                                                                 \
    while (0)

#define bench_PMU3(CALL, EV0, EV1, EV2)                                                                            \
    do {                                                                                                           \
        __disable_irq();                                                                                           \
                                                                                                                   \
        ARM_PMU_Set_EVTYPER(0, EV0);                                                                               \
        ARM_PMU_Set_EVTYPER(1, EV1);                                                                               \
        ARM_PMU_Set_EVTYPER(2, EV2);                                                                               \
                                                                                                                   \
        ARM_PMU_EVCNTR_ALL_Reset();                                                                                \
        ARM_PMU_CYCCNT_Reset();                                                                                    \
                                                                                                                   \
        ARM_PMU_CNTR_Enable(PMU_CNTENSET_CCNTR_ENABLE_Msk | PMU_CNTENSET_CNT0_ENABLE_Msk |                         \
                            PMU_CNTENSET_CNT1_ENABLE_Msk | PMU_CNTENSET_CNT2_ENABLE_Msk);                          \
        CALL;                                                                                                      \
        ARM_PMU_CNTR_Disable(PMU_CNTENCLR_CCNTR_ENABLE_Msk | PMU_CNTENCLR_CNT0_ENABLE_Msk |                        \
                             PMU_CNTENCLR_CNT1_ENABLE_Msk | PMU_CNTENCLR_CNT2_ENABLE_Msk);                         \
                                                                                                                   \
        printf(#CALL ": cycles = %" PRIu32 ", " #EV0 " = %" PRIu32 ", " #EV1 " = %" PRIu32 ", " #EV2 " = %" PRIu32 \
                     "\n",                                                                                         \
               ARM_PMU_Get_CCNTR(), ARM_PMU_Get_EVCNTR(0), ARM_PMU_Get_EVCNTR(1), ARM_PMU_Get_EVCNTR(2));          \
                                                                                                                   \
        __enable_irq();                                                                                            \
    }                                                                                                              \
    while (0)

#define bench_PMU4(CALL, EV0, EV1, EV2, EV3)                                                                       \
    do {                                                                                                           \
        __disable_irq();                                                                                           \
                                                                                                                   \
        ARM_PMU_Set_EVTYPER(0, EV0);                                                                               \
        ARM_PMU_Set_EVTYPER(1, EV1);                                                                               \
        ARM_PMU_Set_EVTYPER(2, EV2);                                                                               \
        ARM_PMU_Set_EVTYPER(3, EV3);                                                                               \
                                                                                                                   \
        ARM_PMU_EVCNTR_ALL_Reset();                                                                                \
        ARM_PMU_CYCCNT_Reset();                                                                                    \
                                                                                                                   \
        ARM_PMU_CNTR_Enable(PMU_CNTENSET_CCNTR_ENABLE_Msk | PMU_CNTENSET_CNT0_ENABLE_Msk |                         \
                            PMU_CNTENSET_CNT1_ENABLE_Msk | PMU_CNTENSET_CNT2_ENABLE_Msk |                          \
                            PMU_CNTENSET_CNT3_ENABLE_Msk);                                                         \
        CALL;                                                                                                      \
        ARM_PMU_CNTR_Disable(PMU_CNTENCLR_CCNTR_ENABLE_Msk | PMU_CNTENCLR_CNT0_ENABLE_Msk |                        \
                             PMU_CNTENCLR_CNT1_ENABLE_Msk | PMU_CNTENCLR_CNT2_ENABLE_Msk |                         \
                             PMU_CNTENCLR_CNT3_ENABLE_Msk);                                                        \
                                                                                                                   \
        printf(#CALL ": cycles = %" PRIu32 ", " #EV0 " = %" PRIu32 ", " #EV1 " = %" PRIu32 ", " #EV2 " = %" PRIu32 \
                     ", " #EV3 " = %" PRIu32 "\n",                                                                 \
               ARM_PMU_Get_CCNTR(), ARM_PMU_Get_EVCNTR(0), ARM_PMU_Get_EVCNTR(1), ARM_PMU_Get_EVCNTR(2),           \
               ARM_PMU_Get_EVCNTR(3));                                                                             \
                                                                                                                   \
        __enable_irq();                                                                                            \
    }                                                                                                              \
    while (0)

#define bench_PMU5(CALL, EV0, EV1, EV2, EV3, EV4)                                                                  \
    do {                                                                                                           \
        __disable_irq();                                                                                           \
                                                                                                                   \
        ARM_PMU_Set_EVTYPER(0, EV0);                                                                               \
        ARM_PMU_Set_EVTYPER(1, EV1);                                                                               \
        ARM_PMU_Set_EVTYPER(2, EV2);                                                                               \
        ARM_PMU_Set_EVTYPER(3, EV3);                                                                               \
        ARM_PMU_Set_EVTYPER(4, EV4);                                                                               \
                                                                                                                   \
        ARM_PMU_EVCNTR_ALL_Reset();                                                                                \
        ARM_PMU_CYCCNT_Reset();                                                                                    \
                                                                                                                   \
        ARM_PMU_CNTR_Enable(PMU_CNTENSET_CCNTR_ENABLE_Msk | PMU_CNTENSET_CNT0_ENABLE_Msk |                         \
                            PMU_CNTENSET_CNT1_ENABLE_Msk | PMU_CNTENSET_CNT2_ENABLE_Msk |                          \
                            PMU_CNTENSET_CNT3_ENABLE_Msk | PMU_CNTENSET_CNT4_ENABLE_Msk);                          \
        CALL;                                                                                                      \
        ARM_PMU_CNTR_Disable(PMU_CNTENCLR_CCNTR_ENABLE_Msk | PMU_CNTENCLR_CNT0_ENABLE_Msk |                        \
                             PMU_CNTENCLR_CNT1_ENABLE_Msk | PMU_CNTENCLR_CNT2_ENABLE_Msk |                         \
                             PMU_CNTENCLR_CNT3_ENABLE_Msk | PMU_CNTENCLR_CNT4_ENABLE_Msk);                         \
                                                                                                                   \
        printf(#CALL ": cycles = %" PRIu32 ", " #EV0 " = %" PRIu32 ", " #EV1 " = %" PRIu32 ", " #EV2 " = %" PRIu32 \
                     ", " #EV3 " = %" PRIu32 ", " #EV4 " = %" PRIu32 "\n",                                         \
               ARM_PMU_Get_CCNTR(), ARM_PMU_Get_EVCNTR(0), ARM_PMU_Get_EVCNTR(1), ARM_PMU_Get_EVCNTR(2),           \
               ARM_PMU_Get_EVCNTR(3), ARM_PMU_Get_EVCNTR(4));                                                      \
                                                                                                                   \
        __enable_irq();                                                                                            \
    }                                                                                                              \
    while (0)

#define bench_PMU6(CALL, EV0, EV1, EV2, EV3, EV4, EV5)                                                             \
    do {                                                                                                           \
        __disable_irq();                                                                                           \
                                                                                                                   \
        ARM_PMU_Set_EVTYPER(0, EV0);                                                                               \
        ARM_PMU_Set_EVTYPER(1, EV1);                                                                               \
        ARM_PMU_Set_EVTYPER(2, EV2);                                                                               \
        ARM_PMU_Set_EVTYPER(3, EV3);                                                                               \
        ARM_PMU_Set_EVTYPER(4, EV4);                                                                               \
        ARM_PMU_Set_EVTYPER(5, EV5);                                                                               \
                                                                                                                   \
        ARM_PMU_EVCNTR_ALL_Reset();                                                                                \
        ARM_PMU_CYCCNT_Reset();                                                                                    \
                                                                                                                   \
        ARM_PMU_CNTR_Enable(PMU_CNTENSET_CCNTR_ENABLE_Msk | PMU_CNTENSET_CNT0_ENABLE_Msk |                         \
                            PMU_CNTENSET_CNT1_ENABLE_Msk | PMU_CNTENSET_CNT2_ENABLE_Msk |                          \
                            PMU_CNTENSET_CNT3_ENABLE_Msk | PMU_CNTENSET_CNT4_ENABLE_Msk |                          \
                            PMU_CNTENSET_CNT5_ENABLE_Msk);                                                         \
        CALL;                                                                                                      \
        ARM_PMU_CNTR_Disable(PMU_CNTENCLR_CCNTR_ENABLE_Msk | PMU_CNTENCLR_CNT0_ENABLE_Msk |                        \
                             PMU_CNTENCLR_CNT1_ENABLE_Msk | PMU_CNTENCLR_CNT2_ENABLE_Msk |                         \
                             PMU_CNTENCLR_CNT3_ENABLE_Msk | PMU_CNTENCLR_CNT4_ENABLE_Msk |                         \
                             PMU_CNTENCLR_CNT5_ENABLE_Msk);                                                        \
                                                                                                                   \
        printf(#CALL ": cycles = %" PRIu32 ", " #EV0 " = %" PRIu32 ", " #EV1 " = %" PRIu32 ", " #EV2 " = %" PRIu32 \
                     ", " #EV3 " = %" PRIu32 ", " #EV4 " = %" PRIu32 ", " #EV5 " = %" PRIu32 "\n",                 \
               ARM_PMU_Get_CCNTR(), ARM_PMU_Get_EVCNTR(0), ARM_PMU_Get_EVCNTR(1), ARM_PMU_Get_EVCNTR(2),           \
               ARM_PMU_Get_EVCNTR(3), ARM_PMU_Get_EVCNTR(4), ARM_PMU_Get_EVCNTR(5));                               \
                                                                                                                   \
        __enable_irq();                                                                                            \
    }                                                                                                              \
    while (0)

#define bench_PMU7(CALL, EV0, EV1, EV2, EV3, EV4, EV5, EV6)                                                          \
    do {                                                                                                             \
        __disable_irq();                                                                                             \
                                                                                                                     \
        ARM_PMU_Set_EVTYPER(0, EV0);                                                                                 \
        ARM_PMU_Set_EVTYPER(1, EV1);                                                                                 \
        ARM_PMU_Set_EVTYPER(2, EV2);                                                                                 \
        ARM_PMU_Set_EVTYPER(3, EV3);                                                                                 \
        ARM_PMU_Set_EVTYPER(4, EV4);                                                                                 \
        ARM_PMU_Set_EVTYPER(5, EV5);                                                                                 \
        ARM_PMU_Set_EVTYPER(6, EV6);                                                                                 \
                                                                                                                     \
        ARM_PMU_EVCNTR_ALL_Reset();                                                                                  \
        ARM_PMU_CYCCNT_Reset();                                                                                      \
                                                                                                                     \
        ARM_PMU_CNTR_Enable(PMU_CNTENSET_CCNTR_ENABLE_Msk | PMU_CNTENSET_CNT0_ENABLE_Msk |                           \
                            PMU_CNTENSET_CNT1_ENABLE_Msk | PMU_CNTENSET_CNT2_ENABLE_Msk |                            \
                            PMU_CNTENSET_CNT3_ENABLE_Msk | PMU_CNTENSET_CNT4_ENABLE_Msk |                            \
                            PMU_CNTENSET_CNT5_ENABLE_Msk | PMU_CNTENSET_CNT6_ENABLE_Msk);                            \
        CALL;                                                                                                        \
        ARM_PMU_CNTR_Disable(PMU_CNTENCLR_CCNTR_ENABLE_Msk | PMU_CNTENCLR_CNT0_ENABLE_Msk |                          \
                             PMU_CNTENCLR_CNT1_ENABLE_Msk | PMU_CNTENCLR_CNT2_ENABLE_Msk |                           \
                             PMU_CNTENCLR_CNT3_ENABLE_Msk | PMU_CNTENCLR_CNT4_ENABLE_Msk |                           \
                             PMU_CNTENCLR_CNT5_ENABLE_Msk | PMU_CNTENCLR_CNT6_ENABLE_Msk);                           \
                                                                                                                     \
        printf(#CALL ": cycles = %" PRIu32 ", " #EV0 " = %" PRIu32 ", " #EV1 " = %" PRIu32 ", " #EV2 " = %" PRIu32   \
                     ", " #EV3 " = %" PRIu32 ", " #EV4 " = %" PRIu32 ", " #EV5 " = %" PRIu32 ", " #EV6 " = %" PRIu32 \
                     "\n",                                                                                           \
               ARM_PMU_Get_CCNTR(), ARM_PMU_Get_EVCNTR(0), ARM_PMU_Get_EVCNTR(1), ARM_PMU_Get_EVCNTR(2),             \
               ARM_PMU_Get_EVCNTR(3), ARM_PMU_Get_EVCNTR(4), ARM_PMU_Get_EVCNTR(5), ARM_PMU_Get_EVCNTR(6));          \
                                                                                                                     \
        __enable_irq();                                                                                              \
    }                                                                                                                \
    while (0)

#define bench_PMU8(CALL, EV0, EV1, EV2, EV3, EV4, EV5, EV6, EV7)                                                     \
    do {                                                                                                             \
        __disable_irq();                                                                                             \
                                                                                                                     \
        ARM_PMU_Set_EVTYPER(0, EV0);                                                                                 \
        ARM_PMU_Set_EVTYPER(1, EV1);                                                                                 \
        ARM_PMU_Set_EVTYPER(2, EV2);                                                                                 \
        ARM_PMU_Set_EVTYPER(3, EV3);                                                                                 \
        ARM_PMU_Set_EVTYPER(4, EV4);                                                                                 \
        ARM_PMU_Set_EVTYPER(5, EV5);                                                                                 \
        ARM_PMU_Set_EVTYPER(6, EV6);                                                                                 \
        ARM_PMU_Set_EVTYPER(7, EV7);                                                                                 \
                                                                                                                     \
        ARM_PMU_EVCNTR_ALL_Reset();                                                                                  \
        ARM_PMU_CYCCNT_Reset();                                                                                      \
                                                                                                                     \
        ARM_PMU_CNTR_Enable(                                                                                         \
            PMU_CNTENSET_CCNTR_ENABLE_Msk | PMU_CNTENSET_CNT0_ENABLE_Msk | PMU_CNTENSET_CNT1_ENABLE_Msk |            \
            PMU_CNTENSET_CNT2_ENABLE_Msk | PMU_CNTENSET_CNT3_ENABLE_Msk | PMU_CNTENSET_CNT4_ENABLE_Msk |             \
            PMU_CNTENSET_CNT5_ENABLE_Msk | PMU_CNTENSET_CNT6_ENABLE_Msk | PMU_CNTENSET_CNT7_ENABLE_Msk);             \
        CALL;                                                                                                        \
        ARM_PMU_CNTR_Disable(                                                                                        \
            PMU_CNTENCLR_CCNTR_ENABLE_Msk | PMU_CNTENCLR_CNT0_ENABLE_Msk | PMU_CNTENCLR_CNT1_ENABLE_Msk |            \
            PMU_CNTENCLR_CNT2_ENABLE_Msk | PMU_CNTENCLR_CNT3_ENABLE_Msk | PMU_CNTENCLR_CNT4_ENABLE_Msk |             \
            PMU_CNTENCLR_CNT5_ENABLE_Msk | PMU_CNTENCLR_CNT6_ENABLE_Msk | PMU_CNTENCLR_CNT7_ENABLE_Msk);             \
                                                                                                                     \
        printf(#CALL ": cycles = %" PRIu32 ", " #EV0 " = %" PRIu32 ", " #EV1 " = %" PRIu32 ", " #EV2 " = %" PRIu32   \
                     ", " #EV3 " = %" PRIu32 ", " #EV4 " = %" PRIu32 ", " #EV5 " = %" PRIu32 ", " #EV6 " = %" PRIu32 \
                     ", " #EV7 " = %" PRIu32 "\n",                                                                   \
               ARM_PMU_Get_CCNTR(), ARM_PMU_Get_EVCNTR(0), ARM_PMU_Get_EVCNTR(1), ARM_PMU_Get_EVCNTR(2),             \
               ARM_PMU_Get_EVCNTR(3), ARM_PMU_Get_EVCNTR(4), ARM_PMU_Get_EVCNTR(5), ARM_PMU_Get_EVCNTR(6),           \
               ARM_PMU_Get_EVCNTR(7));                                                                               \
                                                                                                                     \
        __enable_irq();                                                                                              \
    }                                                                                                                \
    while (0)
