//
//  rng.c
//
//  Created by Bassham, Lawrence E (Fed) on 8/29/17.
//  Copyright © 2017 Bassham, Lawrence E (Fed). All rights reserved.
//

#include <string.h>
#include "rng.h"

static int const_rand;

void randombytes_init(const int i){

	const_rand=i;

}

int
randombytes(unsigned char *x, unsigned long long xlen)
{

	unsigned long long i;
	
	for(i=0;i<xlen;i++){
		x[i]=(char)const_rand;
	}
	
	const_rand++;

	return 1;
}









