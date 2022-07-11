;; Decompiled WAT version of the WASM file (not required, just here for information)

(module
  (type (;0;) (func (param i64 i64 i64) (result i64)))
  (type (;1;) (func (result i32)))
  (type (;2;) (func))
  (type (;3;) (func (param i32)))
  (type (;4;) (func (param i32) (result i32)))
  (func (;0;) (type 2)
    nop)
  (func (;1;) (type 0) (param i64 i64 i64) (result i64)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 2
    i64.store offset=24
    local.get 3
    local.get 1
    i64.store offset=16
    local.get 3
    local.get 0
    i64.store offset=8
    global.get 0
    i32.const 16
    i32.sub
    local.set 9
    local.get 3
    i32.const 16
    i32.add
    local.tee 6
    i32.load
    local.set 8
    local.get 3
    local.get 3
    i32.load offset=8
    local.tee 5
    i32.store
    local.get 3
    local.get 3
    i32.load offset=12
    local.tee 7
    i32.store offset=4
    loop  ;; label = @1
      local.get 4
      i32.const 3
      i32.ne
      if  ;; label = @2
        local.get 9
        i32.const 4
        i32.add
        local.get 4
        i32.const 2
        i32.shl
        i32.add
        local.get 6
        local.get 4
        i32.const 1
        i32.add
        local.tee 4
        i32.const 2
        i32.shl
        i32.add
        i32.load
        i32.store
        br 1 (;@1;)
      end
    end
    local.get 7
    i32.const 24
    i32.rotl
    local.get 5
    i32.add
    local.get 8
    i32.xor
    local.tee 6
    local.get 5
    i32.const 3
    i32.rotl
    i32.xor
    local.set 5
    i32.const 0
    local.set 4
    loop  ;; label = @1
      local.get 4
      i32.const 26
      i32.ne
      if  ;; label = @2
        local.get 9
        i32.const 4
        i32.add
        local.get 4
        i32.const 255
        i32.and
        i32.const 3
        i32.rem_u
        i32.const 2
        i32.shl
        i32.add
        local.tee 7
        local.get 7
        i32.load
        i32.const 24
        i32.rotl
        local.get 8
        i32.add
        local.get 4
        i32.xor
        local.tee 7
        i32.store
        local.get 7
        local.get 8
        i32.const 3
        i32.rotl
        i32.xor
        local.tee 8
        local.get 5
        local.get 6
        i32.const 24
        i32.rotl
        i32.add
        i32.xor
        local.tee 6
        local.get 5
        i32.const 3
        i32.rotl
        i32.xor
        local.set 5
        local.get 4
        i32.const 1
        i32.add
        local.set 4
        br 1 (;@1;)
      end
    end
    local.get 3
    local.get 5
    i32.store
    local.get 3
    local.get 6
    i32.store offset=4
    local.get 3
    i64.load
    local.set 0
    local.get 3
    i32.const 32
    i32.add
    global.set 0
    local.get 0)
  (func (;2;) (type 0) (param i64 i64 i64) (result i64)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 2
    i64.store offset=24
    local.get 3
    local.get 1
    i64.store offset=16
    local.get 3
    local.get 0
    i64.store
    global.get 0
    i32.const 16
    i32.sub
    local.set 9
    local.get 3
    i32.const 16
    i32.add
    local.tee 7
    i32.load
    local.set 6
    local.get 3
    local.get 3
    i32.load
    local.tee 10
    i32.store offset=8
    local.get 3
    local.get 3
    i32.load offset=4
    local.tee 8
    i32.store offset=12
    loop  ;; label = @1
      local.get 4
      i32.const 3
      i32.eq
      if  ;; label = @2
        loop  ;; label = @3
          local.get 5
          i32.const 26
          i32.eq
          if  ;; label = @4
            i32.const 0
            local.set 5
            loop  ;; label = @5
              local.get 5
              i32.const 27
              i32.ne
              if  ;; label = @6
                local.get 9
                i32.const 4
                i32.add
                i32.const 25
                local.get 5
                i32.sub
                local.tee 4
                i32.const 24
                i32.shl
                i32.const 24
                i32.shr_s
                i32.const 3
                i32.rem_s
                i32.const 2
                i32.shl
                i32.add
                local.tee 7
                local.get 4
                local.get 7
                i32.load
                local.tee 7
                i32.xor
                local.get 6
                local.get 7
                i32.xor
                i32.const 29
                i32.rotl
                local.tee 4
                i32.sub
                i32.const 8
                i32.rotl
                i32.store
                local.get 6
                local.get 8
                i32.xor
                local.get 8
                local.get 10
                i32.xor
                i32.const 29
                i32.rotl
                local.tee 10
                i32.sub
                i32.const 8
                i32.rotl
                local.set 8
                local.get 5
                i32.const 1
                i32.add
                local.set 5
                local.get 4
                local.set 6
                br 1 (;@5;)
              end
            end
            local.get 3
            local.get 10
            i32.store offset=8
            local.get 3
            local.get 8
            i32.store offset=12
          else
            local.get 9
            i32.const 4
            i32.add
            local.get 5
            i32.const 255
            i32.and
            i32.const 3
            i32.rem_u
            i32.const 2
            i32.shl
            i32.add
            local.tee 4
            local.get 4
            i32.load
            i32.const 24
            i32.rotl
            local.get 6
            i32.add
            local.get 5
            i32.xor
            local.tee 4
            i32.store
            local.get 4
            local.get 6
            i32.const 3
            i32.rotl
            i32.xor
            local.set 6
            local.get 5
            i32.const 1
            i32.add
            local.set 5
            br 1 (;@3;)
          end
        end
      else
        local.get 9
        i32.const 4
        i32.add
        local.get 4
        i32.const 2
        i32.shl
        i32.add
        local.get 7
        local.get 4
        i32.const 1
        i32.add
        local.tee 4
        i32.const 2
        i32.shl
        i32.add
        i32.load
        i32.store
        br 1 (;@1;)
      end
    end
    local.get 3
    i64.load offset=8
    local.set 0
    local.get 3
    i32.const 32
    i32.add
    global.set 0
    local.get 0)
  (func (;3;) (type 1) (result i32)
    global.get 0)
  (func (;4;) (type 3) (param i32)
    local.get 0
    global.set 0)
  (func (;5;) (type 4) (param i32) (result i32)
    global.get 0
    local.get 0
    i32.sub
    i32.const -16
    i32.and
    local.tee 0
    global.set 0
    local.get 0)
  (func (;6;) (type 1) (result i32)
    i32.const 1024)
  (table (;0;) 2 2 funcref)
  (memory (;0;) 256 256)
  (global (;0;) (mut i32) (i32.const 5243920))
  (export "memory" (memory 0))
  (export "speck_encrypt_block" (func 1))
  (export "speck_decrypt_block" (func 2))
  (export "__indirect_function_table" (table 0))
  (export "_initialize" (func 0))
  (export "__errno_location" (func 6))
  (export "stackSave" (func 3))
  (export "stackRestore" (func 4))
  (export "stackAlloc" (func 5))
  (elem (;0;) (i32.const 1) func 0))
