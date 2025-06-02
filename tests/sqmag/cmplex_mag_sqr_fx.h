#ifndef CPX_MAG_SQR_FX_H
#define CPX_MAG_SQR_FX_H

void cmplx_mag_sqr_fx          ( uint64_t *out, uint64_t *in, size_t sz );
void cmplx_mag_sqr_fx_opt_M55_unroll1(uint64_t *, uint64_t *, size_t);
void cmplx_mag_sqr_fx_opt_M55_unroll2(uint64_t *, uint64_t *, size_t);
void cmplx_mag_sqr_fx_opt_M55_unroll4(uint64_t *, uint64_t *, size_t);
void cmplx_mag_sqr_fx_opt_M85_unroll1(uint64_t *, uint64_t *, size_t);
void cmplx_mag_sqr_fx_opt_M85_unroll2(uint64_t *, uint64_t *, size_t);
void cmplx_mag_sqr_fx_opt_M85_unroll4(uint64_t *, uint64_t *, size_t);
#endif
