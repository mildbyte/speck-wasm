# Run this with:
#  emmake make

# Make sure we pass uint64_ts as u64s
CFLAGS := -sWASM_BIGINT --no-entry -sSTANDALONE_WASM=1

all: speck.wasm

# -Oz to build with metadce (even though it doesn't strip the unneeded stack management stuff)
# https://github.com/emscripten-core/emscripten/issues/11898#issuecomment-1179023480
speck.wasm: speck.c speck.h module.c
	$(CC) $(CFLAGS) -Oz -o $@ speck.c module.c
	base64 $@

clean:
	rm -f speck.wasm

.PHONY: all clean