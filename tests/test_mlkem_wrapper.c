#include <stdio.h>
#include <string.h>
#include "mlkem_wrapper.h"

void print_hex(const char *label, const uint8_t *data, size_t len) {
    printf("%s: ", label);
    for (size_t i = 0; i < len; ++i) {
        printf("%02X", data[i]);
    }
    printf("\n");
}

int main() {
    uint8_t pk[MLKEM_PUBLIC_KEY_BYTES];
    uint8_t sk[MLKEM_SECRET_KEY_BYTES];
    uint8_t ct[MLKEM_CIPHERTEXT_BYTES];
    uint8_t ss_enc[MLKEM_SHARED_SECRET_BYTES];
    uint8_t ss_dec[MLKEM_SHARED_SECRET_BYTES];

    printf("🔹 ML-KEM Wrapper Test 시작\n");

    if (mlkem_keygen(pk, sk) != 0) {
        fprintf(stderr, "❌ KeyGen 실패\n");
        return 1;
    }

    if (mlkem_enc(ct, ss_enc, pk) != 0) {
        fprintf(stderr, "❌ Encapsulation 실패\n");
        return 1;
    }

    if (mlkem_dec(ss_dec, ct, sk) != 0) {
        fprintf(stderr, "❌ Decapsulation 실패\n");
        return 1;
    }

    print_hex("🔑 Encapsulated Shared Secret", ss_enc, MLKEM_SHARED_SECRET_BYTES);
    print_hex("🔓 Decapsulated Shared Secret", ss_dec, MLKEM_SHARED_SECRET_BYTES);

    if (memcmp(ss_enc, ss_dec, MLKEM_SHARED_SECRET_BYTES) == 0) {
        printf("✅ 공유 키 일치 (정상 작동)\n");
        return 0;
    } else {
        printf("❌ 공유 키 불일치 (오류)\n");
        return 1;
    }
}
