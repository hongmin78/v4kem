#ifndef PUF_H
#define PUF_H
#include <stddef.h>
#include <stdint.h>
#define PUF_SEED_SIZE 32
#define PUF_NUM_REPETITIONS 7
int puf_generate_seed(uint8_t *out, size_t size);
#endif