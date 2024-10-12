// SPDX-License-Identifier: Apache-2.0 or CC0-1.0
#ifndef NTT_ACLE_H
#define NTT_ACLE_H

#include <stdint.h>

void ntt_acle(int16_t r[256]);
void invntt_acle(int16_t r[256]);
void basemul_plantard_acle(int16_t r[256], const int16_t a[256], const int16_t b[256], int add);
void frombytes_basemul_plantard(int16_t r[256], const int16_t b[256], const unsigned char *a, int add);

#endif