#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include "mlkem_wrapper.h"

int main() {
    FILE *fp = fopen("PQCkemKAT_ML-KEM.rsp", "w");
    if (!fp) {
        perror("파일 열기 실패");
        return 1;
    }

    uint8_t pk[MLKEM_PUBLIC_KEY_BYTES];
    uint8_t sk[MLKEM_SECRET_KEY_BYTES];
    uint8_t ct[MLKEM_CIPHERTEXT_BYTES];
    uint8_t ss_enc[MLKEM_SHARED_SECRET_BYTES];
    uint8_t ss_dec[MLKEM_SHARED_SECRET_BYTES];

    fprintf(fp, "count = 0\n");

    // 키 생성
    mlkem_keygen(pk, sk);

    fprintf(fp, "pk = ");
    for (int i = 0; i < MLKEM_PUBLIC_KEY_BYTES; i++) fprintf(fp, "%02X", pk[i]);
    fprintf(fp, "\n");

    fprintf(fp, "sk = ");
    for (int i = 0; i < MLKEM_SECRET_KEY_BYTES; i++) fprintf(fp, "%02X", sk[i]);
    fprintf(fp, "\n");

    // 캡슐화
    mlkem_enc(ct, ss_enc, pk);

    fprintf(fp, "ct = ");
    for (int i = 0; i < MLKEM_CIPHERTEXT_BYTES; i++) fprintf(fp, "%02X", ct[i]);
    fprintf(fp, "\n");

    fprintf(fp, "ss = ");
    for (int i = 0; i < MLKEM_SHARED_SECRET_BYTES; i++) fprintf(fp, "%02X", ss_enc[i]);
    fprintf(fp, "\n");

    fclose(fp);

    printf("✅ KAT 파일 생성 완료: PQCkemKAT_ML-KEM.rsp\n");
    return 0;
}
