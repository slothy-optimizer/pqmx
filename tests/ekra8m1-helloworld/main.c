#ifndef UNIT_TEST

#include <inttypes.h>
#include <stdio.h>

#ifdef RA8M1
#include "hal_data.h"
#elif defined(QEMU_M55)
#include "SSE300MPS3.h"
#endif

#include "FunctionA*b.h"
#include "utils.h"


uint8_t output[128] ALIGNED(4) DTCM_DATA;
uint8_t input[128] ALIGNED(4) DTCM_DATA;
uint8_t key[32] ALIGNED(4) DTCM_DATA;
uint8_t nonce[12] ALIGNED(4) DTCM_DATA;

ITCM_FN int main(void) {
    Utils_Init();
    PMU_Init();

    while (1) {
        bench(TestClockAXb());
        AxB();
        delay_ms(2000);

        printf("\n");
    }
}

#endif  // UNIT_TEST
