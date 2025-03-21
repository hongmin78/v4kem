#include "puf.h"
#include <string.h>

// ✅ 가짜 SRAM-PUF 읽기 함수 (테스트용, 실제 환경에서는 하드웨어에서 값을 읽어야 함)
int sram_puf_read(uint8_t *seed, size_t size) {
    if (!seed) return 0;
    memset(seed, 0xA5, size);  // SRAM-PUF에서 읽은 데이터 시뮬레이션
    return 1;
}
