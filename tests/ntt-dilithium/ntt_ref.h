#ifndef NTT_REF_H
#define NTT_REF_H

#include <stdint.h>

void ntt_ref(int32_t a[256]);
void invntt_tomont_ref(int32_t a[256]);

#endif