#ifndef MLKEM_COMPAT_H
#define MLKEM_COMPAT_H

#include <stdint.h>

// ML-KEM 호환 함수 선언

int crypto_kem_keypair(uint8_t *pk, uint8_t *sk);
int crypto_kem_enc(uint8_t *ct, uint8_t *ss, const uint8_t *pk);
int crypto_kem_dec(uint8_t *ss, const uint8_t *ct, const uint8_t *sk);

#endif  // MLKEM_COMPAT_H
