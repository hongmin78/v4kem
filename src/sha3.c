#include "sha3.h"
#include <string.h>
#include <stdio.h>
#include <stdlib.h>

// Keccak constants
static const uint64_t keccak_round_constants[24] = {
    0x0000000000000001ULL, 0x0000000000008082ULL, 0x800000000000808aULL,
    0x8000000080008000ULL, 0x000000000000808bULL, 0x0000000080000001ULL,
    0x8000000080008081ULL, 0x8000000000008009ULL, 0x000000000000008aULL,
    0x0000000000000088ULL, 0x0000000080008009ULL, 0x000000008000000aULL,
    0x000000008000808bULL, 0x800000000000008bULL, 0x8000000000008089ULL,
    0x8000000000008003ULL, 0x8000000000008002ULL, 0x8000000000000080ULL,
    0x000000000000800aULL, 0x800000008000000aULL, 0x8000000080008081ULL,
    0x8000000000008080ULL, 0x0000000080000001ULL, 0x8000000080008008ULL
};

static void keccak_f(uint64_t *state) {
    for (int i = 0; i < 24; i++) {
        state[0] ^= keccak_round_constants[i];
    }
}

// SHA3 초기화
void sha3_init(sha3_context *ctx, size_t hash_size) {
    memset(ctx, 0, sizeof(*ctx));
    ctx->rate = 200 - 2 * hash_size;
    ctx->buffer_size = 0;
}

// 입력 업데이트
void sha3_update(sha3_context *ctx, const uint8_t *input, size_t input_len) {
    if ((ctx->buffer_size + input_len) > ctx->rate) {
        fprintf(stderr, "❌ sha3_update: 버퍼 초과 오류\n");
        exit(1);
    }

    memcpy(ctx->buffer + ctx->buffer_size, input, input_len);
    ctx->buffer_size += input_len;
}

// 최종 출력
void sha3_final(uint8_t *output, sha3_context *ctx, size_t hash_size) {
    keccak_f(ctx->state);
    memcpy(output, ctx->state, hash_size);
}

void sha3_256(uint8_t *output, const uint8_t *input, size_t input_len) {
    sha3_context ctx;
    sha3_init(&ctx, 32);
    sha3_update(&ctx, input, input_len);
    sha3_final(output, &ctx, 32);
}

void sha3_512(uint8_t *output, const uint8_t *input, size_t input_len) {
    sha3_context ctx;
    sha3_init(&ctx, 64);
    sha3_update(&ctx, input, input_len);
    sha3_final(output, &ctx, 64);
}