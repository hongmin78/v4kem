#ifndef V4KEM_H
#define V4KEM_H

#include <stdint.h>
#include "params.h"

int v4kem_keypair(uint8_t *pk, uint8_t *sk);
int v4kem_encapsulate(uint8_t *ct, uint8_t *ss, const uint8_t *pk);
int v4kem_decapsulate(uint8_t *ss, const uint8_t *ct, const uint8_t *sk);

#endif // V4KEM_H