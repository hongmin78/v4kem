# v4KEM: PUF 기반 Post-Quantum KEM Library

![Build](https://img.shields.io/badge/build-passing-brightgreen)
![License](https://img.shields.io/badge/license-MIT-blue)

양자내성 암호화를 위한 경량 KEM(Key Encapsulation Mechanism) 라이브러리입니다. PUF 기반 시드 생성과 AES 기반 KDF, SHA3-256/512 해시를 기반으로 구성되며, ML-KEM 구조와도 호환됩니다.

---

## 🔗 문서

📘 **[API 문서 (Doxygen 기반)](https://hongmin78.github.io/docs/html/v4kem)**

---

## 📦 설치

```bash
git clone https://github.com/hongmin78/v4kem.git
cd v4kem
mkdir build && cd build
cmake ..
make
