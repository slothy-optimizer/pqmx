#ifndef NTT_REF_H
#define NTT_REF_H

#include <stdint.h>

#define KYBER_N 256
#define KYBER_Q 3329

// Reference NTT functions
void ntt_ref(int16_t r[256]);
void invntt_ref(int16_t r[256]);

// Helper functions
int16_t montgomery_reduce_ref(int32_t a);
int16_t barrett_reduce_ref(int16_t a);
int16_t fqmul_ref(int16_t a, int16_t b);

#endif /* NTT_REF_H */