#ifndef SHA3_H
#define SHA3_H

#include <stddef.h>
#include <stdint.h>

#define SHA3_256_RATE 136
#define SHA3_512_RATE 72

typedef struct {
    uint64_t state[25];
    uint8_t buffer[200];
    size_t rate;
    size_t buffer_size;
} sha3_context;

void sha3_init(sha3_context *ctx, size_t hash_size);
void sha3_update(sha3_context *ctx, const uint8_t *input, size_t input_len);
void sha3_final(uint8_t *output, sha3_context *ctx, size_t hash_size);

void sha3_256(uint8_t *output, const uint8_t *input, size_t input_len);
void sha3_512(uint8_t *output, const uint8_t *input, size_t input_len);

#endif // SHA3_H