#ifndef CPX_MAG_SQR_FX_H
#define CPX_MAG_SQR_FX_H

void cmplx_mag_sqr_fx        ( uint64_t *out, uint64_t *in, size_t sz );
void cmplx_mag_sqr_fx_opt_m55( uint64_t *out, uint64_t *in, size_t sz );
void cmplx_mag_sqr_fx_opt_m85( uint64_t *out, uint64_t *in, size_t sz );

#endif
