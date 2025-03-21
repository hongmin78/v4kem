#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "v4kem.h"
#include "puf.h"
#include "sha3.h"
#include "randombytes.h"
#include "kdf.h"
#include "mlwe.h"

// 시드 → 공개키/비밀키로 확장 (SHA3 + AES-KDF)
int v4kem_keypair(uint8_t *pk, uint8_t *sk) {
    uint8_t raw_seed[PUF_SEED_SIZE];
    uint8_t aes_kdf_output[64];

    // PUF 기반 시드 생성 (노이즈 완화 포함)
    if (puf_generate_seed(raw_seed, PUF_SEED_SIZE) != 0) {
        fprintf(stderr, "❌ 시드 생성 실패\n");
        return -1;
    }

    // KDF 적용 → pk + sk 확장
    if (aes_kdf(raw_seed, PUF_SEED_SIZE, aes_kdf_output, sizeof(aes_kdf_output)) != 0) {
        fprintf(stderr, "❌ KDF 실패\n");
        return -1;
    }

    memcpy(pk, aes_kdf_output, V4_PUBLIC_KEY_BYTES);
    memcpy(sk, aes_kdf_output + V4_PUBLIC_KEY_BYTES, V4_SECRET_KEY_BYTES);

    return 0;
}

// 암호화 (공개키 이용 → 메시지 암호화, 공유키 해시)
int v4kem_encapsulate(uint8_t *ct, uint8_t *ss, const uint8_t *pk) {
    uint8_t message[32];

    // 난수 메시지 생성
    randombytes(message, sizeof(message));

    // MLWE 기반 암호화
    if (mlwe_encrypt(ct, message, pk) != 0) {
        fprintf(stderr, "❌ 암호화 실패\n");
        return -1;
    }

    // 공유 키 생성
    sha3_256(ss, message, sizeof(message));
    return 0;
}

// 복호화 (비밀키로 메시지 복원 → 해시로 공유키 생성)
int v4kem_decapsulate(uint8_t *ss, const uint8_t *ct, const uint8_t *sk) {
    uint8_t message[32];

    if (mlwe_decrypt(message, ct, sk) != 0) {
        fprintf(stderr, "❌ 복호화 실패\n");
        return -1;
    }

    sha3_256(ss, message, sizeof(message));
    return 0;
}