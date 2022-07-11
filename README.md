# WASM/WASI implementation of the Speck 64 / 128 block cipher

This is copied from https://github.com/madmo/speck with a shim that exposes the encryption/decryption
as a pair of WASM functions:

```c
i64 speck_encrypt_block(i64 plaintext, i64 key_msb, i64 key_lsb);
i64 speck_decrypt_block(i64 ciphertext, i64 key_msb, i64 key_lsb);
```

The functions use a 64-bit block and a 128-bit key (passed as two separate variables).

## Building

First, get the [Emscripten SDK](https://emscripten.org/docs/getting_started/downloads.html).

Then:

```bash
emmake make
```

This will output a speck.wasm file as well as its base64 encoding to stdout.

## Output

The files [speck.wasm](./speck.wasm) and [speck.wat](./speck.wat) are not required
to compile this and are here just to show what the result looks like.
