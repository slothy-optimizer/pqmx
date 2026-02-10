/******************************************************************************
 * @file     startup_ARMCM33.c
 * @brief    CMSIS-Core Device Startup File for Cortex-M33 Device
 * @version  V2.1.0
 * @date     16. December 2020
 ******************************************************************************/
/*
 * Copyright (c) 2009-2020 Arm Limited. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the License); you may
 * not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an AS IS BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#if defined (ARMCM33)
  #include "ARMCM33.h"
#elif defined (ARMCM33_TZ)
  #include "ARMCM33_TZ.h"
#elif defined (ARMCM33_DSP_FP)
  #include "ARMCM33_DSP_FP.h"
#elif defined (ARMCM33_DSP_FP_TZ)
  #include "ARMCM33_DSP_FP_TZ.h"
#else
  #error device not specified!
#endif

/*----------------------------------------------------------------------------
  External References
 *----------------------------------------------------------------------------*/
extern uint32_t __INITIAL_SP;
extern uint32_t __STACK_LIMIT;
#if defined (__ARM_FEATURE_CMSE) && (__ARM_FEATURE_CMSE == 3U)
extern uint32_t __STACK_SEAL;
#endif

extern __NO_RETURN void __PROGRAM_START(void);

/*----------------------------------------------------------------------------
  Internal References
 *----------------------------------------------------------------------------*/
__NO_RETURN void Reset_Handler  (void);
            void Default_Handler(void);

/*----------------------------------------------------------------------------
  Exception / Interrupt Handler
 *----------------------------------------------------------------------------*/
/* Exceptions */
void NMI_Handler            (void) __attribute__ ((weak, alias("Default_Handler")));
void HardFault_Handler      (void) __attribute__ ((weak));
void MemManage_Handler      (void) __attribute__ ((weak, alias("Default_Handler")));
void BusFault_Handler       (void) __attribute__ ((weak, alias("Default_Handler")));
void UsageFault_Handler     (void) __attribute__ ((weak, alias("Default_Handler")));
void SecureFault_Handler    (void) __attribute__ ((weak, alias("Default_Handler")));
void SVC_Handler            (void) __attribute__ ((weak, alias("Default_Handler")));
void DebugMon_Handler       (void) __attribute__ ((weak, alias("Default_Handler")));
void PendSV_Handler         (void) __attribute__ ((weak, alias("Default_Handler")));
void SysTick_Handler        (void) __attribute__ ((weak, alias("Default_Handler")));

/* External Interrupts - MPS3 AN524 specific (starting at IRQ 32) */
void UART0_RX_Handler       (void) __attribute__ ((weak, alias("Default_Handler")));
void UART0_TX_Handler       (void) __attribute__ ((weak, alias("Default_Handler")));
void UART1_RX_Handler       (void) __attribute__ ((weak, alias("Default_Handler")));
void UART1_TX_Handler       (void) __attribute__ ((weak, alias("Default_Handler")));
void UART2_RX_Handler       (void) __attribute__ ((weak, alias("Default_Handler")));
void UART2_TX_Handler       (void) __attribute__ ((weak, alias("Default_Handler")));
void UART3_RX_Handler       (void) __attribute__ ((weak, alias("Default_Handler")));
void UART3_TX_Handler       (void) __attribute__ ((weak, alias("Default_Handler")));
void UART4_RX_Handler       (void) __attribute__ ((weak, alias("Default_Handler")));
void UART4_TX_Handler       (void) __attribute__ ((weak, alias("Default_Handler")));
void UART0_Handler          (void) __attribute__ ((weak, alias("Default_Handler")));
void UART1_Handler          (void) __attribute__ ((weak, alias("Default_Handler")));
void UART2_Handler          (void) __attribute__ ((weak, alias("Default_Handler")));
void UART3_Handler          (void) __attribute__ ((weak, alias("Default_Handler")));
void UART4_Handler          (void) __attribute__ ((weak, alias("Default_Handler")));
void UARTOVF_Handler        (void) __attribute__ ((weak, alias("Default_Handler")));
void ETHERNET_Handler       (void) __attribute__ ((weak, alias("Default_Handler")));
void I2S_Handler            (void) __attribute__ ((weak, alias("Default_Handler")));
void TSC_Handler            (void) __attribute__ ((weak, alias("Default_Handler")));
void SPI_ADC_Handler        (void) __attribute__ ((weak, alias("Default_Handler")));
void SPI0_Handler           (void) __attribute__ ((weak, alias("Default_Handler")));
void SPI1_Handler           (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO0_Handler          (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO1_Handler          (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO2_Handler          (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO3_Handler          (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO0_0_Handler        (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO0_1_Handler        (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO0_2_Handler        (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO0_3_Handler        (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO0_4_Handler        (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO0_5_Handler        (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO0_6_Handler        (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO0_7_Handler        (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO0_8_Handler        (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO0_9_Handler        (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO0_10_Handler       (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO0_11_Handler       (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO0_12_Handler       (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO0_13_Handler       (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO0_14_Handler       (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO0_15_Handler       (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO1_0_Handler        (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO1_1_Handler        (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO1_2_Handler        (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO1_3_Handler        (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO1_4_Handler        (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO1_5_Handler        (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO1_6_Handler        (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO1_7_Handler        (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO1_8_Handler        (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO1_9_Handler        (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO1_10_Handler       (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO1_11_Handler       (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO1_12_Handler       (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO1_13_Handler       (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO1_14_Handler       (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO1_15_Handler       (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO2_0_Handler        (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO2_1_Handler        (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO2_2_Handler        (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO2_3_Handler        (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO2_4_Handler        (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO2_5_Handler        (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO2_6_Handler        (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO2_7_Handler        (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO2_8_Handler        (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO2_9_Handler        (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO2_10_Handler       (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO2_11_Handler       (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO2_12_Handler       (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO2_13_Handler       (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO2_14_Handler       (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO2_15_Handler       (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO3_0_Handler        (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO3_1_Handler        (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO3_2_Handler        (void) __attribute__ ((weak, alias("Default_Handler")));
void GPIO3_3_Handler        (void) __attribute__ ((weak, alias("Default_Handler")));
void UART5_RX_Handler       (void) __attribute__ ((weak, alias("Default_Handler")));
void UART5_TX_Handler       (void) __attribute__ ((weak, alias("Default_Handler")));
void UART5_Handler          (void) __attribute__ ((weak, alias("Default_Handler")));

/*----------------------------------------------------------------------------
  Exception / Interrupt Vector table
 *----------------------------------------------------------------------------*/

#if defined ( __GNUC__ )
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wpedantic"
#endif

extern const VECTOR_TABLE_Type __VECTOR_TABLE[496];
       const VECTOR_TABLE_Type __VECTOR_TABLE[496] __VECTOR_TABLE_ATTRIBUTE = {
  (VECTOR_TABLE_Type)(&__INITIAL_SP),       /*     Initial Stack Pointer */
  Reset_Handler,                            /*     Reset Handler */
  NMI_Handler,                              /* -14 NMI Handler */
  HardFault_Handler,                        /* -13 Hard Fault Handler */
  MemManage_Handler,                        /* -12 MPU Fault Handler */
  BusFault_Handler,                         /* -11 Bus Fault Handler */
  UsageFault_Handler,                       /* -10 Usage Fault Handler */
  SecureFault_Handler,                      /*  -9 Secure Fault Handler */
  0,                                        /*     Reserved */
  0,                                        /*     Reserved */
  0,                                        /*     Reserved */
  SVC_Handler,                              /*  -5 SVCall Handler */
  DebugMon_Handler,                         /*  -4 Debug Monitor Handler */
  0,                                        /*     Reserved */
  PendSV_Handler,                           /*  -2 PendSV Handler */
  SysTick_Handler,                          /*  -1 SysTick Handler */

  /* External Interrupts - SSE-200 base (0-31 reserved for subsystem) */
  0, 0, 0, 0, 0, 0, 0, 0,                   /*   0-7   Reserved */
  0, 0, 0, 0, 0, 0, 0, 0,                   /*   8-15  Reserved */
  0, 0, 0, 0, 0, 0, 0, 0,                   /*  16-23  Reserved */
  0, 0, 0, 0, 0, 0, 0, 0,                   /*  24-31  Reserved */
  
  /* External Interrupts - MPS3 AN524 FPGA peripherals (32-126) */
  UART0_RX_Handler,                         /*  32 UART 0 receive interrupt */
  UART0_TX_Handler,                         /*  33 UART 0 transmit interrupt */
  UART1_RX_Handler,                         /*  34 UART 1 receive interrupt */
  UART1_TX_Handler,                         /*  35 UART 1 transmit interrupt */
  UART2_RX_Handler,                         /*  36 UART 2 receive interrupt */
  UART2_TX_Handler,                         /*  37 UART 2 transmit interrupt */
  UART3_RX_Handler,                         /*  38 UART 3 receive interrupt */
  UART3_TX_Handler,                         /*  39 UART 3 transmit interrupt */
  UART4_RX_Handler,                         /*  40 UART 4 receive interrupt */
  UART4_TX_Handler,                         /*  41 UART 4 transmit interrupt */
  UART0_Handler,                            /*  42 UART 0 combined interrupt */
  UART1_Handler,                            /*  43 UART 1 combined interrupt */
  UART2_Handler,                            /*  44 UART 2 combined interrupt */
  UART3_Handler,                            /*  45 UART 3 combined interrupt */
  UART4_Handler,                            /*  46 UART 4 combined interrupt */
  UARTOVF_Handler,                          /*  47 UART 0-5 overflow interrupt */
  ETHERNET_Handler,                         /*  48 Ethernet interrupt */
  I2S_Handler,                              /*  49 I2S interrupt */
  TSC_Handler,                              /*  50 Touch screen interrupt */
  0,                                        /*  51 Reserved */
  SPI_ADC_Handler,                          /*  52 SPI ADC interrupt */
  SPI0_Handler,                             /*  53 SPI (Shield 0) interrupt */
  SPI1_Handler,                             /*  54 SPI (Shield 1) interrupt */
  0, 0, 0, 0, 0, 0, 0, 0,                   /*  55-62  Reserved */
  0, 0, 0, 0, 0,                            /*  63-67  Reserved */
  GPIO0_Handler,                            /*  68 GPIO 0 combined interrupt */
  GPIO1_Handler,                            /*  69 GPIO 1 combined interrupt */
  GPIO2_Handler,                            /*  70 GPIO 2 combined interrupt */
  GPIO3_Handler,                            /*  71 GPIO 3 combined interrupt */
  GPIO0_0_Handler,                          /*  72 GPIO 0 individual interrupt 0 */
  GPIO0_1_Handler,                          /*  73 GPIO 0 individual interrupt 1 */
  GPIO0_2_Handler,                          /*  74 GPIO 0 individual interrupt 2 */
  GPIO0_3_Handler,                          /*  75 GPIO 0 individual interrupt 3 */
  GPIO0_4_Handler,                          /*  76 GPIO 0 individual interrupt 4 */
  GPIO0_5_Handler,                          /*  77 GPIO 0 individual interrupt 5 */
  GPIO0_6_Handler,                          /*  78 GPIO 0 individual interrupt 6 */
  GPIO0_7_Handler,                          /*  79 GPIO 0 individual interrupt 7 */
  GPIO0_8_Handler,                          /*  80 GPIO 0 individual interrupt 8 */
  GPIO0_9_Handler,                          /*  81 GPIO 0 individual interrupt 9 */
  GPIO0_10_Handler,                         /*  82 GPIO 0 individual interrupt 10 */
  GPIO0_11_Handler,                         /*  83 GPIO 0 individual interrupt 11 */
  GPIO0_12_Handler,                         /*  84 GPIO 0 individual interrupt 12 */
  GPIO0_13_Handler,                         /*  85 GPIO 0 individual interrupt 13 */
  GPIO0_14_Handler,                         /*  86 GPIO 0 individual interrupt 14 */
  GPIO0_15_Handler,                         /*  87 GPIO 0 individual interrupt 15 */
  GPIO1_0_Handler,                          /*  88 GPIO 1 individual interrupt 0 */
  GPIO1_1_Handler,                          /*  89 GPIO 1 individual interrupt 1 */
  GPIO1_2_Handler,                          /*  90 GPIO 1 individual interrupt 2 */
  GPIO1_3_Handler,                          /*  91 GPIO 1 individual interrupt 3 */
  GPIO1_4_Handler,                          /*  92 GPIO 1 individual interrupt 4 */
  GPIO1_5_Handler,                          /*  93 GPIO 1 individual interrupt 5 */
  GPIO1_6_Handler,                          /*  94 GPIO 1 individual interrupt 6 */
  GPIO1_7_Handler,                          /*  95 GPIO 1 individual interrupt 7 */
  GPIO1_8_Handler,                          /*  96 GPIO 1 individual interrupt 8 */
  GPIO1_9_Handler,                          /*  97 GPIO 1 individual interrupt 9 */
  GPIO1_10_Handler,                         /*  98 GPIO 1 individual interrupt 10 */
  GPIO1_11_Handler,                         /*  99 GPIO 1 individual interrupt 11 */
  GPIO1_12_Handler,                         /* 100 GPIO 1 individual interrupt 12 */
  GPIO1_13_Handler,                         /* 101 GPIO 1 individual interrupt 13 */
  GPIO1_14_Handler,                         /* 102 GPIO 1 individual interrupt 14 */
  GPIO1_15_Handler,                         /* 103 GPIO 1 individual interrupt 15 */
  GPIO2_0_Handler,                          /* 104 GPIO 2 individual interrupt 0 */
  GPIO2_1_Handler,                          /* 105 GPIO 2 individual interrupt 1 */
  GPIO2_2_Handler,                          /* 106 GPIO 2 individual interrupt 2 */
  GPIO2_3_Handler,                          /* 107 GPIO 2 individual interrupt 3 */
  GPIO2_4_Handler,                          /* 108 GPIO 2 individual interrupt 4 */
  GPIO2_5_Handler,                          /* 109 GPIO 2 individual interrupt 5 */
  GPIO2_6_Handler,                          /* 110 GPIO 2 individual interrupt 6 */
  GPIO2_7_Handler,                          /* 111 GPIO 2 individual interrupt 7 */
  GPIO2_8_Handler,                          /* 112 GPIO 2 individual interrupt 8 */
  GPIO2_9_Handler,                          /* 113 GPIO 2 individual interrupt 9 */
  GPIO2_10_Handler,                         /* 114 GPIO 2 individual interrupt 10 */
  GPIO2_11_Handler,                         /* 115 GPIO 2 individual interrupt 11 */
  GPIO2_12_Handler,                         /* 116 GPIO 2 individual interrupt 12 */
  GPIO2_13_Handler,                         /* 117 GPIO 2 individual interrupt 13 */
  GPIO2_14_Handler,                         /* 118 GPIO 2 individual interrupt 14 */
  GPIO2_15_Handler,                         /* 119 GPIO 2 individual interrupt 15 */
  GPIO3_0_Handler,                          /* 120 GPIO 3 individual interrupt 0 */
  GPIO3_1_Handler,                          /* 121 GPIO 3 individual interrupt 1 */
  GPIO3_2_Handler,                          /* 122 GPIO 3 individual interrupt 2 */
  GPIO3_3_Handler,                          /* 123 GPIO 3 individual interrupt 3 */
  UART5_RX_Handler,                         /* 124 UART 5 receive interrupt */
  UART5_TX_Handler,                         /* 125 UART 5 transmit interrupt */
  UART5_Handler                             /* 126 UART 5 combined interrupt */
                                            /* Interrupts 127 .. 239 are left out */
};

#if defined ( __GNUC__ )
#pragma GCC diagnostic pop
#endif

/*----------------------------------------------------------------------------
  Reset Handler called on controller reset
 *----------------------------------------------------------------------------*/
__NO_RETURN void Reset_Handler(void)
{
  __set_PSP((uint32_t)(&__INITIAL_SP));

  __set_MSPLIM((uint32_t)(&__STACK_LIMIT));
  __set_PSPLIM((uint32_t)(&__STACK_LIMIT));

#if defined (__ARM_FEATURE_CMSE) && (__ARM_FEATURE_CMSE == 3U)
  __TZ_set_STACKSEAL_S((uint32_t *)(&__STACK_SEAL));
#endif

  SystemInit();                             /* CMSIS System Initialization */
  __PROGRAM_START();                        /* Enter PreMain (C library entry point) */
}


#if defined(__ARMCC_VERSION) && (__ARMCC_VERSION >= 6010050)
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wmissing-noreturn"
#endif

/*----------------------------------------------------------------------------
  Hard Fault Handler
 *----------------------------------------------------------------------------*/
void HardFault_Handler(void)
{
  while(1);
}

/*----------------------------------------------------------------------------
  Default Handler for Exceptions / Interrupts
 *----------------------------------------------------------------------------*/
void Default_Handler(void)
{
  while(1);
}

#if defined(__ARMCC_VERSION) && (__ARMCC_VERSION >= 6010050)
  #pragma clang diagnostic pop
#endif

