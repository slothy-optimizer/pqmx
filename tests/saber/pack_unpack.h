#ifndef PACK_UNPACK_H
#define PACK_UNPACK_H

#include <stdio.h>
#include <stdint.h>
#include "SABER_params.h"
#include "SABER_types.h"

void POLT2BS( uint8_t bytes[SABER_SCALEBYTES_KEM], const saber_pol_t data );
void BS2POLT( const uint8_t bytes[SABER_SCALEBYTES_KEM], saber_pol_t data );

void POLVECq2BS( uint8_t bytes[SABER_POLYVECBYTES], const saber_vec_t data );
void POLVECp2BS( uint8_t bytes[SABER_POLYVECCOMPRESSEDBYTES], const saber_vec_t data );

void BS2POLVECq( const uint8_t bytes[SABER_POLYVECBYTES], saber_vec_t data );
void BS2POLVECp( const uint8_t bytes[SABER_POLYVECCOMPRESSEDBYTES], saber_vec_t data );

void BS2POLmsg( const uint8_t bytes[SABER_KEYBYTES], saber_pol_t data );
void POLmsg2BS( uint8_t bytes[SABER_KEYBYTES], const saber_pol_t data );

void SK2BS( uint8_t bytes[SABER_INDCPA_SECRETKEYBYTES], const saber_vec_t s );
void BS2SK( uint8_t const bytes[SABER_INDCPA_SECRETKEYBYTES], saber_vec_t s );

#endif
