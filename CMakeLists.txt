cmake_minimum_required(VERSION 3.10)
project(v4kem_project C)

set(CMAKE_C_STANDARD 99)

# 소스 파일 목록
set(SOURCES
    src/v4kem.c
    src/mlwe.c
    src/puf.c
    src/sram_puf.c
    src/sha3.c
    src/randombytes.c
    src/kdf.c
    src/verify.c
    wrapper/mlkem_compat.c
)

# include 디렉토리 추가
include_directories(include)

# OpenSSL 찾기
find_package(OpenSSL REQUIRED)
include_directories(${OPENSSL_INCLUDE_DIR})

# 라이브러리 생성
add_library(v4kem STATIC ${SOURCES})

# 🔗 OpenSSL 링크
target_link_libraries(v4kem ${OPENSSL_LIBRARIES})

# 테스트 실행파일 생성
add_executable(test_v4kem tests/test_v4kem.c)

# 실행파일에 v4kem 라이브러리와 OpenSSL 링크
target_link_libraries(test_v4kem v4kem ${OPENSSL_LIBRARIES})