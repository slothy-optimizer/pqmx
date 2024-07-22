#if defined(TEST_CONFIG_NTT_FULL)
#include "test_config_ntt_full.h"
#elif defined(TEST_CONFIG_NTT_PARTIAL)
#include "test_config_ntt_partial.h"
#elif defined(TEST_CONFIG_TC)
#include "test_config_tckara_lazy.h"
#else
#error "No configuration specified. Define one of TEST_CONFIG_NTT_FULL, TEST_CONFIG_NTT_PARTIAL, or TEST_CONFIG_TC"
#endif
