#ifndef KDF_H
#define KDF_H

#include <stdint.h>
#include <stddef.h>

/**
 * @brief AES 기반 KDF 함수 (AES-CTR 방식)
 * 
 * @param input 입력 바이트 시드
 * @param input_len 입력 길이
 * @param output 출력 버퍼
 * @param output_len 출력 버퍼 크기
 * @return int 0 성공, -1 실패
 */
int aes_kdf(const uint8_t *input, size_t input_len, uint8_t *output, size_t output_len);

#endif