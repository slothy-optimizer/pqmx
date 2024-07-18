//
//  rng.h
//
//  Created by Bassham, Lawrence E (Fed) on 8/29/17.
//  Copyright © 2017 Bassham, Lawrence E (Fed). All rights reserved.
//

#ifndef rng_h
#define rng_h

#include <stdio.h>

void randombytes_init(const int i);

#define randombytes SABER_randombytes
int randombytes(unsigned char *x, unsigned long long xlen);

#endif /* rng_h */
