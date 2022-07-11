#include <emscripten/emscripten.h>
#include "speck.h"

typedef union
{
    uint32_t u32[4];
    struct {
        uint64_t msb;
        uint64_t lsb;
    } vals;
} key_128;

typedef union
{
    uint32_t u32[2];
    uint64_t val;
} data_64;

EMSCRIPTEN_KEEPALIVE uint64_t speck_encrypt_block(uint64_t plaintext, uint64_t key_msb, uint64_t key_lsb) {
    key_128 key;
    data_64 pt;
    data_64 ct;

    key.vals.msb = key_msb;
    key.vals.lsb = key_lsb;

    pt.val = plaintext;
    speck_encrypt_combined(pt.u32, ct.u32, key.u32);

    return ct.val;
}

EMSCRIPTEN_KEEPALIVE uint64_t speck_decrypt_block(uint64_t ciphertext, uint64_t key_msb, uint64_t key_lsb) {
    key_128 key;
    data_64 pt;
    data_64 ct;

    key.vals.msb = key_msb;
    key.vals.lsb = key_lsb;

    ct.val = ciphertext;
    speck_decrypt_combined(ct.u32, pt.u32, key.u32);

    return pt.val;
}
