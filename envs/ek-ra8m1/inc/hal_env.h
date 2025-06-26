#if !defined(ARCHEX_HAL_ENV_HDR)
#define ARCHEX_HAL_ENV_HDR

#define ITCM_FN __attribute__((section(".itcm_data")))
#define DTCM_DATA __attribute__((section(".dtcm_data")))

#endif /* ARCHEX_HAL_ENV_HDR */
