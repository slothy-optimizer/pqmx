// SPDX-License-Identifier: Apache-2.0 or CC0-1.0
#ifndef FROMBYTES_ASM_H
#define FROMBYTES_ASM_H

#include <stdint.h>

static const int32_t zetas[64] = {
    21932846,   3562152210, 752167598,  3417653460, 2112004045, 932791035,
    2951903026, 1419184148, 1817845876, 3434425636, 4233039261, 300609006,
    975366560,  2781600929, 3889854731, 3935010590, 2197155094, 2130066389,
    3598276897, 2308109491, 2382939200, 1228239371, 1884934581, 3466679822,
    1211467195, 2977706375, 3144137970, 3080919767, 945692709,  3015121229,
    345764865,  826997308,  2043625172, 2964804700, 2628071007, 4154339049,
    483812778,  3288636719, 2696449880, 2122325384, 1371447954, 411563403,
    3577634219, 976656727,  2708061387, 723783916,  3181552825, 3346694253,
    3617629408, 1408862808, 519937465,  1323711759, 1474661346, 2773859924,
    3580214553, 1143088323, 2221668274, 1563682897, 2417773720, 1327582262,
    2722253228, 3786641338, 1141798155, 2779020594};


void frombytes_mul_asm_16_32(int32_t *r_tmp, const int16_t *b,
                             const unsigned char *c, const int32_t zetas[64]);
void frombytes_mul_asm_16_32_opt_m7(int32_t *r_tmp, const int16_t *b,
                                    const unsigned char *c,
                                    const int32_t zetas[64]);

void frombytes_mul_asm_acc_32_32(int32_t *r_tmp, const int16_t *b,
                                 const unsigned char *c,
                                 const int32_t zetas[64]);
void frombytes_mul_asm_acc_32_32_opt_m7(int32_t *r_tmp, const int16_t *b,
                                        const unsigned char *c,
                                        const int32_t zetas[64]);

void frombytes_mul_asm_acc_32_16(int16_t *r, const int16_t *b,
                                 const unsigned char *c,
                                 const int32_t zetas[64], const int32_t *r_tmp);
void frombytes_mul_asm_acc_32_16_opt_m7(int16_t *r, const int16_t *b,
                                        const unsigned char *c,
                                        const int32_t zetas[64],
                                        const int32_t *r_tmp);



void frombytes_mul_asm_16_32_wrap(int32_t *r_tmp, const int16_t *b,
                                  const unsigned char *c) {
  frombytes_mul_asm_16_32(r_tmp, b, c, zetas);
}
void frombytes_mul_asm_16_32_opt_m7_wrap(int32_t *r_tmp, const int16_t *b,
                                         const unsigned char *c) {
  frombytes_mul_asm_16_32_opt_m7(r_tmp, b, c, zetas);
}

void frombytes_mul_asm_acc_32_32_wrap(int32_t *r_tmp, const int16_t *b,
                                      const unsigned char *c) {
  frombytes_mul_asm_acc_32_32(r_tmp, b, c, zetas);
}
void frombytes_mul_asm_acc_32_32_opt_m7_wrap(int32_t *r_tmp, const int16_t *b,
                                             const unsigned char *c) {
  frombytes_mul_asm_acc_32_32_opt_m7(r_tmp, b, c, zetas);
}

void frombytes_mul_asm_acc_32_16_wrap(int16_t *r, const int16_t *b,
                                      const unsigned char *c,
                                      const int32_t *r_tmp) {
  frombytes_mul_asm_acc_32_16(r, b, c, zetas, r_tmp);
}
void frombytes_mul_asm_acc_32_16_opt_m7_wrap(int16_t *r, const int16_t *b,
                                             const unsigned char *c,
                                             const int32_t *r_tmp) {
  frombytes_mul_asm_acc_32_16_opt_m7(r, b, c, zetas, r_tmp);
}



#endif