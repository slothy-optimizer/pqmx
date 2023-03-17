#include "pack_unpack.h"
#include "api.h"
#include <string.h>

void POLT2BS( uint8_t bytes[SABER_SCALEBYTES_KEM], const saber_pol_t data )
{
    size_t j, offset_byte, offset_data;
#if SABER_ET == 3
    for (j = 0; j < SABER_N / 8; j++)
    {
        offset_byte = 3 * j;
        offset_data = 8 * j;
        bytes[offset_byte + 0] =
               (data[offset_data + 0] & 0x7)
            | ((data[offset_data + 1] & 0x7) << 3 )
            | ((data[offset_data + 2] & 0x3) << 6 );

        bytes[offset_byte + 1] =
              ((data[offset_data + 2] >> 2) & 0x1)
            | ((data[offset_data + 3]       & 0x7) << 1 )
            | ((data[offset_data + 4]       & 0x7) << 4 )
            | ((data[offset_data + 5]       & 0x1) << 7 );

        bytes[offset_byte + 2] =
              ((data[offset_data + 5] >> 1) & 0x3)
            | ((data[offset_data + 6]       & 0x7) << 2 )
            | ((data[offset_data + 7]       & 0x7) << 5 );
    }
#elif SABER_ET == 4
    for (j = 0; j < SABER_N / 2; j++)
    {
        offset_byte = j;
        offset_data = 2 * j;
        bytes[offset_byte] =
              (data[offset_data]      & 0x0f)
            | ((data[offset_data + 1] & 0x0f) << 4);
    }
#elif SABER_ET == 6
    for (j = 0; j < SABER_N / 4; j++)
    {
        offset_byte = 3 * j;
        offset_data = 4 * j;
        bytes[offset_byte + 0] =
               (data[offset_data + 0] & 0x3f)
            | ((data[offset_data + 1] & 0x03) << 6);
        bytes[offset_byte + 1] =
              ((data[offset_data + 1] >> 2) & 0x0f)
            | ((data[offset_data + 2]       & 0x0f) << 4);
        bytes[offset_byte + 2] =
              ((data[offset_data + 2] >> 4) & 0x03)
            | ((data[offset_data + 3]       & 0x3f) << 2);
    }
#else
#error "Unsupported SABER parameter."
#endif
}

void BS2POLT( const uint8_t bytes[SABER_SCALEBYTES_KEM], saber_pol_t data )
{
    size_t j, offset_byte, offset_data;
#if SABER_ET == 3
    for (j = 0; j < SABER_N / 8; j++)
    {
        offset_byte = 3 * j;
        offset_data = 8 * j;
        data[offset_data + 0] = (bytes[offset_byte + 0]) & 0x07;
        data[offset_data + 1] = ((bytes[offset_byte + 0]) >> 3) & 0x07;
        data[offset_data + 2] = (((bytes[offset_byte + 0]) >> 6) & 0x03) | (((bytes[offset_byte + 1]) & 0x01) << 2);
        data[offset_data + 3] = ((bytes[offset_byte + 1]) >> 1) & 0x07;
        data[offset_data + 4] = ((bytes[offset_byte + 1]) >> 4) & 0x07;
        data[offset_data + 5] = (((bytes[offset_byte + 1]) >> 7) & 0x01) | (((bytes[offset_byte + 2]) & 0x03) << 1);
        data[offset_data + 6] = ((bytes[offset_byte + 2] >> 2) & 0x07);
        data[offset_data + 7] = ((bytes[offset_byte + 2] >> 5) & 0x07);
    }
#elif SABER_ET == 4
    for (j = 0; j < SABER_N / 2; j++)
    {
        offset_byte = j;
        offset_data = 2 * j;
        data[offset_data] = bytes[offset_byte] & 0x0f;
        data[offset_data + 1] = (bytes[offset_byte] >> 4) & 0x0f;
    }
#elif SABER_ET == 6
    for (j = 0; j < SABER_N / 4; j++)
    {
        offset_byte = 3 * j;
        offset_data = 4 * j;
        data[offset_data + 0] = bytes[offset_byte + 0] & 0x3f;
        data[offset_data + 1] = ((bytes[offset_byte + 0] >> 6) & 0x03) | ((bytes[offset_byte + 1] & 0x0f) << 2);
        data[offset_data + 2] = ((bytes[offset_byte + 1] & 0xff) >> 4) | ((bytes[offset_byte + 2] & 0x03) << 4);
        data[offset_data + 3] = ((bytes[offset_byte + 2] & 0xff) >> 2);
    }
#else
#error "Unsupported SABER parameter."
#endif
}

static void POLq2BS( uint8_t bytes[SABER_POLYBYTES], const saber_pol_t data )
{
    size_t j, offset_byte, offset_data;
    for (j = 0; j < SABER_N / 8; j++)
    {
        offset_byte = 13 * j;
        offset_data = 8 * j;
        bytes[offset_byte + 0] = (data[offset_data + 0] & (0xff));
        bytes[offset_byte + 1] = ((data[offset_data + 0] >> 8) & 0x1f) | ((data[offset_data + 1] & 0x07) << 5);
        bytes[offset_byte + 2] = ((data[offset_data + 1] >> 3) & 0xff);
        bytes[offset_byte + 3] = ((data[offset_data + 1] >> 11) & 0x03) | ((data[offset_data + 2] & 0x3f) << 2);
        bytes[offset_byte + 4] = ((data[offset_data + 2] >> 6) & 0x7f) | ((data[offset_data + 3] & 0x01) << 7);
        bytes[offset_byte + 5] = ((data[offset_data + 3] >> 1) & 0xff);
        bytes[offset_byte + 6] = ((data[offset_data + 3] >> 9) & 0x0f) | ((data[offset_data + 4] & 0x0f) << 4);
        bytes[offset_byte + 7] = ((data[offset_data + 4] >> 4) & 0xff);
        bytes[offset_byte + 8] = ((data[offset_data + 4] >> 12) & 0x01) | ((data[offset_data + 5] & 0x7f) << 1);
        bytes[offset_byte + 9] = ((data[offset_data + 5] >> 7) & 0x3f) | ((data[offset_data + 6] & 0x03) << 6);
        bytes[offset_byte + 10] = ((data[offset_data + 6] >> 2) & 0xff);
        bytes[offset_byte + 11] = ((data[offset_data + 6] >> 10) & 0x07) | ((data[offset_data + 7] & 0x1f) << 3);
        bytes[offset_byte + 12] = ((data[offset_data + 7] >> 5) & 0xff);
    }
}

static void BS2POLq( const uint8_t bytes[SABER_POLYBYTES], saber_pol_t data )
{
    size_t j, offset_byte, offset_data;
    for (j = 0; j < SABER_N / 8; j++)
    {
        offset_byte = 13 * j;
        offset_data = 8 * j;
        data[offset_data + 0] = (bytes[offset_byte + 0] & (0xff)) | ((bytes[offset_byte + 1] & 0x1f) << 8);
        data[offset_data + 1] = (bytes[offset_byte + 1] >> 5 & (0x07)) | ((bytes[offset_byte + 2] & 0xff) << 3) | ((bytes[offset_byte + 3] & 0x03) << 11);
        data[offset_data + 2] = (bytes[offset_byte + 3] >> 2 & (0x3f)) | ((bytes[offset_byte + 4] & 0x7f) << 6);
        data[offset_data + 3] = (bytes[offset_byte + 4] >> 7 & (0x01)) | ((bytes[offset_byte + 5] & 0xff) << 1) | ((bytes[offset_byte + 6] & 0x0f) << 9);
        data[offset_data + 4] = (bytes[offset_byte + 6] >> 4 & (0x0f)) | ((bytes[offset_byte + 7] & 0xff) << 4) | ((bytes[offset_byte + 8] & 0x01) << 12);
        data[offset_data + 5] = (bytes[offset_byte + 8] >> 1 & (0x7f)) | ((bytes[offset_byte + 9] & 0x3f) << 7);
        data[offset_data + 6] = (bytes[offset_byte + 9] >> 6 & (0x03)) | ((bytes[offset_byte + 10] & 0xff) << 2) | ((bytes[offset_byte + 11] & 0x07) << 10);
        data[offset_data + 7] = (bytes[offset_byte + 11] >> 3 & (0x1f)) | ((bytes[offset_byte + 12] & 0xff) << 5);
    }
}

static void POLp2BS( uint8_t bytes[SABER_POLYCOMPRESSEDBYTES], const saber_pol_t data )
{
    size_t j, offset_byte, offset_data;
    for (j = 0; j < SABER_N / 4; j++)
    {
        offset_byte = 5 * j;
        offset_data = 4 * j;
        bytes[offset_byte + 0] = (data[offset_data + 0] & (0xff));
        bytes[offset_byte + 1] = ((data[offset_data + 0] >> 8) & 0x03) | ((data[offset_data + 1] & 0x3f) << 2);
        bytes[offset_byte + 2] = ((data[offset_data + 1] >> 6) & 0x0f) | ((data[offset_data + 2] & 0x0f) << 4);
        bytes[offset_byte + 3] = ((data[offset_data + 2] >> 4) & 0x3f) | ((data[offset_data + 3] & 0x03) << 6);
        bytes[offset_byte + 4] = ((data[offset_data + 3] >> 2) & 0xff);
    }
}

#if defined(USE_SECRET_KEY_8BIT_PACKING)
void SK2BS( uint8_t bytes[SABER_INDCPA_SECRETKEYBYTES], const saber_vec_t s )
{
    for( int k=0; k < SABER_L; k++ )
        for( int i=0; i < SABER_N; i++ )
            bytes[k*SABER_N + i] = (uint8_t) s[k][i];
}
void BS2SK( uint8_t const bytes[SABER_INDCPA_SECRETKEYBYTES], saber_vec_t s )
{
    for( int k=0; k < SABER_L; k++ )
    {
        for( int i=0; i < SABER_N; i++ )
        {
            /* The int8_t cast is important -- we need sign extension! */
            s[k][i] = (saber_coeff_t) (int8_t) bytes[k*SABER_N + i];
        }
    }
}
#else /* USE_SECRET_KEY_8BIT_PACKING */
void SK2BS( uint8_t bytes[SABER_INDCPA_SECRETKEYBYTES], const saber_vec_t s )
{
    POLVECq2BS( bytes, s );
}
void BS2SK( uint8_t const bytes[SABER_INDCPA_SECRETKEYBYTES], saber_vec_t s )
{
    BS2POLVECq( bytes, s );
}
#endif /* USE_SECRET_KEY_8BIT_PACKING */

static void BS2POLp( const uint8_t bytes[SABER_POLYCOMPRESSEDBYTES], saber_pol_t data )
{
    size_t j, offset_byte, offset_data;
    for (j = 0; j < SABER_N / 4; j++)
    {
        offset_byte = 5 * j;
        offset_data = 4 * j;
        data[offset_data + 0] = (bytes[offset_byte + 0] & (0xff)) | ((bytes[offset_byte + 1] & 0x03) << 8);
        data[offset_data + 1] = ((bytes[offset_byte + 1] >> 2) & (0x3f)) | ((bytes[offset_byte + 2] & 0x0f) << 6);
        data[offset_data + 2] = ((bytes[offset_byte + 2] >> 4) & (0x0f)) | ((bytes[offset_byte + 3] & 0x3f) << 4);
        data[offset_data + 3] = ((bytes[offset_byte + 3] >> 6) & (0x03)) | ((bytes[offset_byte + 4] & 0xff) << 2);
    }
}

void POLVECq2BS( uint8_t bytes[SABER_POLYVECBYTES], const saber_vec_t data )
{
    size_t i;
    for (i = 0; i < SABER_L; i++)
    {
        POLq2BS(bytes + i * SABER_POLYBYTES, data[i]);
    }
}

void BS2POLVECq(const uint8_t bytes[SABER_POLYVECBYTES], saber_vec_t data )
{
    size_t i;
    for (i = 0; i < SABER_L; i++)
    {
        BS2POLq(bytes + i * SABER_POLYBYTES, data[i]);
    }
}

void POLVECp2BS( uint8_t bytes[SABER_POLYVECCOMPRESSEDBYTES], const saber_vec_t data )
{
    size_t i;
    for (i = 0; i < SABER_L; i++)
    {
        POLp2BS(bytes + i * (SABER_EP * SABER_N / 8), data[i]);
    }
}

void BS2POLVECp( const uint8_t bytes[SABER_POLYVECCOMPRESSEDBYTES], saber_vec_t data )
{
    size_t i;
    for (i = 0; i < SABER_L; i++)
    {
        BS2POLp(bytes + i * (SABER_EP * SABER_N / 8), data[i]);
    }
}

void BS2POLmsg( const uint8_t bytes[SABER_KEYBYTES], saber_pol_t data )
{
    size_t i, j;
    for (j = 0; j < SABER_KEYBYTES; j++)
    {
        for (i = 0; i < 8; i++)
        {
            data[j * 8 + i] = ((bytes[j] >> i) & 0x01);
        }
    }
}

void POLmsg2BS( uint8_t bytes[SABER_KEYBYTES], const saber_pol_t data )
{
    size_t i, j;
    memset(bytes, 0, SABER_KEYBYTES);

    for (j = 0; j < SABER_KEYBYTES; j++)
    {
        for (i = 0; i < 8; i++)
        {
            bytes[j] = bytes[j] | ((data[j * 8 + i] & 0x01) << i);
        }
    }
}
