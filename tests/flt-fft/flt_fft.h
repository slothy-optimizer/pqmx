#ifndef FLT_FFT_H
#define FLT_FFT_H

void floatingpoint_radix4_fft_base    ( uint32_t *data, uint32_t *tw0, size_t sz );
void floatingpoint_radix4_fft_opt_M55 ( uint32_t *data, uint32_t *tw0, size_t sz );
void floatingpoint_radix4_fft_opt_M85 ( uint32_t *data, uint32_t *tw0, size_t sz );

#endif
