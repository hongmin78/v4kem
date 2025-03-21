#include "puf.h"
#include "sha3.h"  
#include "params.h" 
#include "randombytes.h"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int read_sram_puf(uint8_t *raw, size_t size) {
    return randombytes(raw, size); // 실제 PUF 읽기 대체용 (테스트 목적)
}

int puf_generate_seed(uint8_t *out, size_t size) {
    uint8_t samples[PUF_NUM_REPETITIONS][PUF_SEED_SIZE] = {0};
    memset(out, 0, size);

    for (int i = 0; i < PUF_NUM_REPETITIONS; i++) {
        if (read_sram_puf(samples[i], PUF_SEED_SIZE) != 0) return -1;
    }

    for (int j = 0; j < size; j++) {
        int count = 0;
        for (int i = 0; i < PUF_NUM_REPETITIONS; i++) {
            if (samples[i][j] > 127) count++;
        }
        out[j] = (count > (PUF_NUM_REPETITIONS / 2)) ? 0xFF : 0x00;
    }
    return 0;
}

void puf_keypair(uint8_t *pk, uint8_t *sk) {
    uint8_t seed[PUF_SEED_SIZE];

    if (puf_generate_seed(seed, PUF_SEED_SIZE) != 0) {
        exit(1);
    }

    sha3_256(pk, seed, PUF_SEED_SIZE);
    sha3_256(sk, pk, V4_PUBLIC_KEY_BYTES);  // ✅ V4_PUBLIC_KEY_BYTES 정상 적용
}