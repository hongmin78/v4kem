#include "kdf.h"
#include <openssl/aes.h>
#include <string.h>

int aes_kdf(const uint8_t *input, size_t input_len, uint8_t *output, size_t output_len) {
    AES_KEY aes_key;
    uint8_t counter[16] = {0};

    if (input_len < 16) return -1;
    if (AES_set_encrypt_key(input, 128, &aes_key) < 0) return -1;

    for (size_t i = 0; i < output_len; i += 16) {
        uint8_t buffer[16];
        AES_encrypt(counter, buffer, &aes_key);
        size_t chunk = (output_len - i < 16) ? output_len - i : 16;
        memcpy(output + i, buffer, chunk);
        for (int j = 15; j >= 0; --j) {
            if (++counter[j]) break;
        }
    }

    return 0;
}