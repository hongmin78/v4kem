#ifndef VERIFY_H
#define VERIFY_H

#include <stdint.h>
#include <stddef.h>

// 안전한 메모리 비교 함수
int verify_memory(const uint8_t *a, const uint8_t *b, size_t len);

#endif
