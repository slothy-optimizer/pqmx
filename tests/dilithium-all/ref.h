#ifndef REF_H
#define REF_H

#include <stdint.h>

#define Q 8380417
#define N 256


void ntt_ref(int32_t a[N]);
void invntt_tomont_ref(int32_t a[N]);

#endif
