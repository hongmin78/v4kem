#ifndef MLWE_H
#define MLWE_H

#include <stdint.h>
#include "params.h"  // 매크로는 여기서만 관리

/**
 * MLWE 기반 암호화 함수
 * @param ciphertext - 출력 암호문 (V4_CIPHERTEXT_BYTES 크기)
 * @param message - 입력 메시지 (32바이트)
 * @param public_key - 수신자 공개 키
 * @return 성공 시 0, 실패 시 음수
 */
int mlwe_encrypt(uint8_t *ciphertext, const uint8_t *message, const uint8_t *public_key);

/**
 * MLWE 기반 복호화 함수
 * @param message - 출력 메시지 (32바이트)
 * @param ciphertext - 입력 암호문
 * @param secret_key - 수신자의 비밀 키
 * @return 성공 시 0, 실패 시 음수
 */
int mlwe_decrypt(uint8_t *message, const uint8_t *ciphertext, const uint8_t *secret_key);

#endif // MLWE_H