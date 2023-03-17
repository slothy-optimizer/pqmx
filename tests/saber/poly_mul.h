#ifndef POLY_MUL_H
#define POLY_MUL_H

#include <stdint.h>
#include "SABER_params.h"
#include "SABER_types.h"

void MatrixVectorMul(const saber_mat_t a,
                     const saber_vec_t s,
                     saber_vec_t res,
                     int16_t transpose);

void InnerProd(const saber_vec_t b,
               const saber_vec_t s,
               saber_pol_t res );

void GenMatrix(saber_mat_t a, const uint8_t seed[SABER_SEEDBYTES]);
void GenSecret(saber_vec_t s, const uint8_t seed[SABER_NOISE_SEEDBYTES]);

#endif /* POLY_MUL_H */
