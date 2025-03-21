#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include "../include/v4kem.h"
#include "../include/params.h"

void print_hex(const char *label, const uint8_t *data, size_t len) {
    printf("%s: ", label);
    for (size_t i = 0; i < len && i < 16; i++) {
        printf("%02X ", data[i]);
    }
    printf("\n");
}

int main() {
    uint8_t pk[V4_PUBLIC_KEY_BYTES];
    uint8_t sk[V4_SECRET_KEY_BYTES];
    uint8_t ct[V4_CIPHERTEXT_BYTES];
    uint8_t ss_enc[V4_SHARED_SECRET_BYTES];
    uint8_t ss_dec[V4_SHARED_SECRET_BYTES];

    if (v4kem_keypair(pk, sk) != 0) {
        fprintf(stderr, "키 생성 실패\n");
        return 1;
    }
    printf("키 생성 완료\n");
    print_hex("공개 키", pk, 16);

    if (v4kem_encapsulate(ct, ss_enc, pk) != 0) {
        fprintf(stderr, "캡슐화 실패\n");
        return 1;
    }
    printf("캡슐화 완료\n");
    print_hex("공유 키 (캡슐화)", ss_enc, 16);

    if (v4kem_decapsulate(ss_dec, ct, sk) != 0) {
        fprintf(stderr, "디캡슐화 실패\n");
        return 1;
    }
    printf("디캡슐화 완료\n");
    print_hex("공유 키 (디캡슐화)", ss_dec, 16);

    if (memcmp(ss_enc, ss_dec, V4_SHARED_SECRET_BYTES) == 0) {
        printf("공유 키 일치\n");
    } else {
        printf("공유 키 불일치\n");
        return 1;
    }

    return 0;
}