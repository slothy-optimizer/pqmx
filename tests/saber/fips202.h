#ifndef FIPS202_H
#define FIPS202_H

#include "test_config.h"
#include <stdint.h>

#define SHAKE128_RATE 168
#define SHAKE256_RATE 136
#define SHA3_256_RATE 136
#define SHA3_512_RATE 72

#if defined(MEASURE_SHAKE128)
#define shake128_wrap(a,b,c,d)     \
    do                             \
    {                              \
        measure_start();           \
        shake128(a,b,c,d);         \
        measure_end();             \
    } while( 0 )
#else
#define shake128_wrap(a,b,c,d) shake128(a,b,c,d);
#endif

#if defined(MEASURE_SHA3_256)
#define sha3_256_wrap(a,b,c)       \
    do                             \
    {                              \
        measure_start();           \
        sha3_256(a,b,c);           \
        measure_end();             \
    } while( 0 )
#else
#define sha3_256_wrap(a,b,c) sha3_256(a,b,c);
#endif

#if defined(MEASURE_SHA3_512)
#define sha3_512_wrap(a,b,c)       \
    do                             \
    {                              \
        measure_start();           \
        sha3_512(a,b,c);           \
        measure_end();             \
    } while( 0 )
#else
#define sha3_512_wrap(a,b,c) sha3_512(a,b,c);
#endif

void shake128(unsigned char *output, unsigned long long outlen, const unsigned char *input, unsigned long long inlen);
void sha3_256(unsigned char *output, const unsigned char *input, unsigned long long inlen);
void sha3_512(unsigned char *output, const unsigned char *input, unsigned long long inlen);

#endif
