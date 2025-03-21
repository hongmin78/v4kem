#include "verify.h"

// 안전한 메모리 비교 (타이밍 어택 방지)
int verify_memory(const uint8_t *a, const uint8_t *b, size_t len) {
    uint8_t result = 0;
    for (size_t i = 0; i < len; i++) {
        result |= a[i] ^ b[i];
    }
    return result == 0;
}