#ifndef UNIT_TEST

#include <inttypes.h>
#include <stdio.h>

#ifdef RA8M1
#include "hal_data.h"
#elif defined(QEMU_M55)
#include "SSE300MPS3.h"
#endif

#include "utils.h"
#include <hal.h>

/* PMU function declarations */
void hal_pmu_enable();
void hal_pmu_disable();
void AxB();
int TestClockAXb();

uint8_t output[128] ALIGNED(4) DTCM_DATA;
uint8_t input[128] ALIGNED(4) DTCM_DATA;
uint8_t key[32] ALIGNED(4) DTCM_DATA;
uint8_t nonce[12] ALIGNED(4) DTCM_DATA;


void AxB() {
    int num1, num2, result;
    num1 = 5;
    num2 = 10;
    result = num1 * num2;
    printf("The result of %d * %d is %d\n", num1, num2, result);
}

int TestClockAXb() {
    int num1, num2, result;
    num1 = 5;
    num2 = 10;
   return result = num1 * num2;
}


ITCM_FN int main(void) {
    Utils_Init();
    hal_pmu_enable();

    while (1) {
        bench(TestClockAXb());
        AxB();
        delay_ms(2000);
        
        printf("\n");
    }
    hal_pmu_disable();
}

#endif  // UNIT_TEST
