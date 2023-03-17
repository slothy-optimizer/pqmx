#ifndef CPX_MAG_SQR_FX_H
#define CPX_MAG_SQR_FX_H

void cmplx_mag_sqr_fx          ( uint32_t *out, uint64_t *in, size_t sz );
void cmplx_mag_sqr_fx_opt_m55_1( uint32_t *out, uint64_t *in, size_t sz );
void cmplx_mag_sqr_fx_opt_m55_2( uint32_t *out, uint64_t *in, size_t sz );
void cmplx_mag_sqr_fx_opt_m55_4( uint32_t *out, uint64_t *in, size_t sz );
void cmplx_mag_sqr_fx_opt_m85_1( uint32_t *out, uint64_t *in, size_t sz );
void cmplx_mag_sqr_fx_opt_m85_2( uint32_t *out, uint64_t *in, size_t sz );
void cmplx_mag_sqr_fx_opt_m85_4( uint32_t *out, uint64_t *in, size_t sz );

#endif
