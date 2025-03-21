#include "mlwe.h"
#include "sha3.h"
#include "params.h"
#include <string.h>
#include <stdio.h>

int mlwe_encrypt(uint8_t *ct, const uint8_t *message, const uint8_t *pk) {
    uint8_t hash[32];

    // 공개 키를 해싱하여 키 스트림 생성
    sha3_256(hash, pk, V4_PUBLIC_KEY_BYTES);

    for (int i = 0; i < 32; i++) {
        ct[i] = message[i] ^ hash[i];
    }
    return 0;
}

int mlwe_decrypt(uint8_t *message, const uint8_t *ct, const uint8_t *sk) {
    uint8_t hash[32];

    // 비밀 키 해싱
    sha3_256(hash, sk, V4_SECRET_KEY_BYTES);

    for (int i = 0; i < 32; i++) {
        message[i] = ct[i] ^ hash[i];
    }

    return 0;
}