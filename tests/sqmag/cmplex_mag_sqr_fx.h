#ifndef CPX_MAG_SQR_FX_H
#define CPX_MAG_SQR_FX_H

void cmplx_mag_sqr_fx          ( uint64_t *out, uint64_t *in, size_t sz );
void cmplx_mag_sqr_fx_unroll1_opt_M55(uint64_t *, uint64_t *, size_t);
void cmplx_mag_sqr_fx_unroll2_opt_M55(uint64_t *, uint64_t *, size_t);
void cmplx_mag_sqr_fx_unroll4_opt_M55(uint64_t *, uint64_t *, size_t);
void cmplx_mag_sqr_fx_unroll1_opt_M85(uint64_t *, uint64_t *, size_t);
void cmplx_mag_sqr_fx_unroll2_opt_M85(uint64_t *, uint64_t *, size_t);
void cmplx_mag_sqr_fx_unroll4_opt_M85(uint64_t *, uint64_t *, size_t);
#endif
