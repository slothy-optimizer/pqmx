#ifndef FX_FFT_H
#define FX_FFT_H

void fixedpoint_radix4_fft_base    ( uint32_t *data, uint32_t *tw0, size_t sz );
void fixedpoint_radix4_fft_handwritten( uint32_t *data, uint32_t *tw0, size_t sz );
void fixedpoint_radix4_fft_intrinsics ( uint32_t *data, uint32_t *tw0, size_t sz );
void fixedpoint_radix4_fft_symbolic( uint32_t *data, uint32_t *tw0, size_t sz );
void fixedpoint_radix4_fft_opt_m55 ( uint32_t *data, uint32_t *tw0, size_t sz );
void fixedpoint_radix4_fft_opt_m85 ( uint32_t *data, uint32_t *tw0, size_t sz );

#endif
