
// 1. randombytes.c
#include "randombytes.h"
#ifdef _WIN32
#include <windows.h>
#include <wincrypt.h>
#else
#include <fcntl.h>
#include <stdlib.h>
#include <unistd.h>
#endif

int randombytes(uint8_t *buf, size_t len) {
#ifdef _WIN32
    HCRYPTPROV hProv = 0;
    if (!CryptAcquireContext(&hProv, NULL, NULL, PROV_RSA_FULL, CRYPT_VERIFYCONTEXT)) return -1;
    if (!CryptGenRandom(hProv, len, buf)) return -1;
    CryptReleaseContext(hProv, 0);
    return 0;
#else
    int fd = open("/dev/urandom", O_RDONLY);
    if (fd < 0) return -1;
    ssize_t r = read(fd, buf, len);
    close(fd);
    return (r == len) ? 0 : -1;
#endif
}