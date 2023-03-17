#include <ARMCM55.h>

void HardFault_Handler(void)
{
    uint32_t const cfsr = SCB->CFSR;
    printf( "Hard fault\nCFSR: %#04x\n", cfsr );
    if( cfsr & SCB_CFSR_NOCP_Msk != 0 )
        printf( "NOCP bit set\n" );

#define CHECK_BIT(val,mask)                \
    if( ( val & mask ) != 0 )              \
        printf( "Bit " #mask " set\n" );

    CHECK_BIT(cfsr,SCB_CFSR_USGFAULTSR_Msk);
    CHECK_BIT(cfsr,SCB_CFSR_BUSFAULTSR_Msk);
    CHECK_BIT(cfsr,SCB_CFSR_MEMFAULTSR_Msk);
    CHECK_BIT(cfsr,SCB_CFSR_MMARVALID_Msk);
    CHECK_BIT(cfsr,SCB_CFSR_MLSPERR_Msk);
    CHECK_BIT(cfsr,SCB_CFSR_MSTKERR_Msk);
    CHECK_BIT(cfsr,SCB_CFSR_MUNSTKERR_Msk);
    CHECK_BIT(cfsr,SCB_CFSR_DACCVIOL_Msk);
    CHECK_BIT(cfsr,SCB_CFSR_IACCVIOL_Msk);
    CHECK_BIT(cfsr,SCB_CFSR_BFARVALID_Msk);
    CHECK_BIT(cfsr,SCB_CFSR_LSPERR_Msk);
    CHECK_BIT(cfsr,SCB_CFSR_STKERR_Msk);
    CHECK_BIT(cfsr,SCB_CFSR_UNSTKERR_Msk);
    CHECK_BIT(cfsr,SCB_CFSR_IMPRECISERR_Msk);
    CHECK_BIT(cfsr,SCB_CFSR_PRECISERR_Msk);
    CHECK_BIT(cfsr,SCB_CFSR_IBUSERR_Msk);
    CHECK_BIT(cfsr,SCB_CFSR_DIVBYZERO_Msk);
    CHECK_BIT(cfsr,SCB_CFSR_UNALIGNED_Msk);
    CHECK_BIT(cfsr,SCB_CFSR_STKOF_Msk);
    CHECK_BIT(cfsr,SCB_CFSR_NOCP_Msk);
    CHECK_BIT(cfsr,SCB_CFSR_INVPC_Msk);
    CHECK_BIT(cfsr,SCB_CFSR_INVSTATE_Msk);
    CHECK_BIT(cfsr,SCB_CFSR_UNDEFINSTR_Msk);

#undef CHECK_BIT

    exit(1);
}
