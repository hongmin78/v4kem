#!/bin/bash

# MinGW 환경을 위한 빌드 스크립트
# 예시: msys2 또는 MinGW-w64 환경에서 실행
echo "🔧 [MinGW] 빌드 시작..."

# 빌드 디렉토리 정리
rm -rf build
mkdir build
cd build

# CMake MinGW Generator 사용
cmake .. -G "MinGW Makefiles"
mingw32-make

if [ $? -eq 0 ]; then
    echo "✅ [MinGW] 빌드 완료!"
else
    echo "❌ [MinGW] 빌드 실패!"
fi
