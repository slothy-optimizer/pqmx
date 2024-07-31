#ifndef RANDOMBYTES_H
#define RANDOMBYTES_H
#include <stdint.h>

#include <unistd.h>

int randombytes(uint8_t *buf, size_t n);

#endif
