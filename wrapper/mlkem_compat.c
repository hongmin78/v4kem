#include <stdint.h>
#include <string.h>
#include "../include/v4kem.h"

// ML-KEM 호환 함수들 (Kyber API 구조)

int crypto_kem_keypair(uint8_t *pk, uint8_t *sk) {
    return v4kem_keypair(pk, sk);  // 내부 구현 그대로 호출
}

int crypto_kem_enc(uint8_t *ct, uint8_t *ss, const uint8_t *pk) {
    return v4kem_encapsulate(ct, ss, pk);
}

int crypto_kem_dec(uint8_t *ss, const uint8_t *ct, const uint8_t *sk) {
    return v4kem_decapsulate(ss, ct, sk);
}
