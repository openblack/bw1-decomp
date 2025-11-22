.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?GetTopState@Living@@QBE?AW4VILLAGER_STATES@@XZ
.extern @SetupMoveToPos__6LivingFRC9MapCoordsUc@13
.extern @__eq__9MapCoordsCFRC9MapCoords@12
.extern ?__ne@MapCoords@@QBE_NABV1@@Z
.extern @AreWeThere__13MobileWallHugFf@12
.extern _jmp_addr_0x0060c110
.extern _jmp_addr_0x0063e540
.extern _jmp_addr_0x006d71d0
.extern _jmp_addr_0x006d9290
.extern _jmp_addr_0x006dac60
.extern _jmp_addr_0x006db160
.extern _jmp_addr_0x006db520
.extern _jmp_addr_0x007a1400

.globl _jmp_addr_0x006d8b00

start_0x006d8b00_0x006d9290:
// Snippet: asm, [0x006d8b00, 0x006d922e)
_jmp_addr_0x006d8b00:    sub               esp, 0x14                                     // 0x006d8b00    83ec14
                         push              ebx                                           // 0x006d8b03    53
                         push              ebp                                           // 0x006d8b04    55
                         push              esi                                           // 0x006d8b05    56
                         mov.s             esi, ecx                                      // 0x006d8b06    8bf1
                         {disp8} mov       ecx, dword ptr [esi + 0x30]                   // 0x006d8b08    8b4e30
                         test              ecx, ecx                                      // 0x006d8b0b    85c9
                         push              edi                                           // 0x006d8b0d    57
                         {disp8} je        _jmp_addr_0x006d8b29                          // 0x006d8b0e    7419
                         mov               eax, dword ptr [ecx]                          // 0x006d8b10    8b01
                         call              dword ptr [eax + 0x2c]                        // 0x006d8b12    ff502c
                         test              eax, eax                                      // 0x006d8b15    85c0
                         {disp8} jne       _jmp_addr_0x006d8b29                          // 0x006d8b17    7510
                         {disp8} mov       ecx, dword ptr [esi + 0x30]                   // 0x006d8b19    8b4e30
                         mov               edx, dword ptr [ecx]                          // 0x006d8b1c    8b11
                         push              eax                                           // 0x006d8b1e    50
                         call              dword ptr [edx + 0xc]                         // 0x006d8b1f    ff520c
                         {disp8} mov       dword ptr [esi + 0x30], 0x00000000            // 0x006d8b22    c7463000000000
_jmp_addr_0x006d8b29:    mov.s             ecx, esi                                      // 0x006d8b29    8bce
                         call              _jmp_addr_0x006d71d0                          // 0x006d8b2b    e8a0e6ffff
                         {disp32} mov      ecx, dword ptr [esi + 0x000003fc]             // 0x006d8b30    8b8efc030000
                         test              ecx, ecx                                      // 0x006d8b36    85c9
                         {disp8} je        _jmp_addr_0x006d8b52                          // 0x006d8b38    7418
                         mov               eax, dword ptr [ecx]                          // 0x006d8b3a    8b01
                         call              dword ptr [eax + 0x2c]                        // 0x006d8b3c    ff502c
                         test              eax, eax                                      // 0x006d8b3f    85c0
                         {disp8} jne       _jmp_addr_0x006d8b52                          // 0x006d8b41    750f
                         mov.s             ecx, esi                                      // 0x006d8b43    8bce
                         call              _jmp_addr_0x006db160                          // 0x006d8b45    e816260000
                         pop               edi                                           // 0x006d8b4a    5f
                         pop               esi                                           // 0x006d8b4b    5e
                         pop               ebp                                           // 0x006d8b4c    5d
                         pop               ebx                                           // 0x006d8b4d    5b
                         add               esp, 0x14                                     // 0x006d8b4e    83c414
                         ret                                                             // 0x006d8b51    c3
_jmp_addr_0x006d8b52:    {disp32} mov      ecx, dword ptr [esi + 0x000003f4]             // 0x006d8b52    8b8ef4030000
                         test              ecx, ecx                                      // 0x006d8b58    85c9
                         {disp8} je        _jmp_addr_0x006d8b74                          // 0x006d8b5a    7418
                         mov               edx, dword ptr [ecx]                          // 0x006d8b5c    8b11
                         call              dword ptr [edx + 0x2c]                        // 0x006d8b5e    ff522c
                         test              eax, eax                                      // 0x006d8b61    85c0
                         {disp8} jne       _jmp_addr_0x006d8b74                          // 0x006d8b63    750f
                         mov.s             ecx, esi                                      // 0x006d8b65    8bce
                         call              _jmp_addr_0x006db160                          // 0x006d8b67    e8f4250000
                         pop               edi                                           // 0x006d8b6c    5f
                         pop               esi                                           // 0x006d8b6d    5e
                         pop               ebp                                           // 0x006d8b6e    5d
                         pop               ebx                                           // 0x006d8b6f    5b
                         add               esp, 0x14                                     // 0x006d8b70    83c414
                         ret                                                             // 0x006d8b73    c3
_jmp_addr_0x006d8b74:    {disp32} mov      ecx, dword ptr [esi + 0x000003fc]             // 0x006d8b74    8b8efc030000
                         call              ?GetTopState@Living@@QBE?AW4VILLAGER_STATES@@XZ                    // 0x006d8b7a    e8719cf1ff
                         cmp               al, 0x01                                      // 0x006d8b7f    3c01
                         {disp32} je       _jmp_addr_0x006d9108                          // 0x006d8b81    0f8481050000
                         {disp32} mov      ecx, dword ptr [esi + 0x000003f4]             // 0x006d8b87    8b8ef4030000
                         call              ?GetTopState@Living@@QBE?AW4VILLAGER_STATES@@XZ                    // 0x006d8b8d    e85e9cf1ff
                         cmp               al, 0x01                                      // 0x006d8b92    3c01
                         {disp32} je       _jmp_addr_0x006d9108                          // 0x006d8b94    0f846e050000
                         cmp               word ptr [esi + 0x44], 0x02                   // 0x006d8b9a    66837e4402
                         {disp32} jne      _jmp_addr_0x006d9108                          // 0x006d8b9f    0f8563050000
                         cmp               word ptr [esi + 0x46], 0x02                   // 0x006d8ba5    66837e4602
                         {disp32} jne      _jmp_addr_0x006d9108                          // 0x006d8baa    0f8558050000
                         {disp8} mov       ecx, dword ptr [esi + 0x30]                   // 0x006d8bb0    8b4e30
                         xor.s             ebx, ebx                                      // 0x006d8bb3    33db
                         cmp.s             ecx, ebx                                      // 0x006d8bb5    3bcb
                         {disp8} je        _jmp_addr_0x006d8bc2                          // 0x006d8bb7    7409
                         mov               eax, dword ptr [ecx]                          // 0x006d8bb9    8b01
                         push              ebx                                           // 0x006d8bbb    53
                         call              dword ptr [eax + 0xc]                         // 0x006d8bbc    ff500c
                         {disp8} mov       dword ptr [esi + 0x30], ebx                   // 0x006d8bbf    895e30
_jmp_addr_0x006d8bc2:    {disp32} mov      ecx, dword ptr [esi + 0x000003f4]             // 0x006d8bc2    8b8ef4030000
                         add               ecx, 0x14                                     // 0x006d8bc8    83c114
                         push              ecx                                           // 0x006d8bcb    51
                         {disp32} mov      ecx, dword ptr [esi + 0x000003fc]             // 0x006d8bcc    8b8efc030000
                         add               ecx, 0x14                                     // 0x006d8bd2    83c114
                         call              @__eq__9MapCoordsCFRC9MapCoords@12            // 0x006d8bd5    e886caf2ff
                         test              eax, eax                                      // 0x006d8bda    85c0
                         {disp8} je        _jmp_addr_0x006d8bed                          // 0x006d8bdc    740f
                         mov.s             ecx, esi                                      // 0x006d8bde    8bce
                         call              _jmp_addr_0x006db160                          // 0x006d8be0    e87b250000
                         pop               edi                                           // 0x006d8be5    5f
                         pop               esi                                           // 0x006d8be6    5e
                         pop               ebp                                           // 0x006d8be7    5d
                         pop               ebx                                           // 0x006d8be8    5b
                         add               esp, 0x14                                     // 0x006d8be9    83c414
                         ret                                                             // 0x006d8bec    c3
_jmp_addr_0x006d8bed:    {disp32} mov      edx, dword ptr [esi + 0x000003e8]             // 0x006d8bed    8b96e8030000
                         {disp32} mov      ecx, dword ptr [esi + 0x000003e4]             // 0x006d8bf3    8b8ee4030000
                         {disp8} lea       eax, dword ptr [edx + edx * 0x1 + 0x01]       // 0x006d8bf9    8d441201
                         push              eax                                           // 0x006d8bfd    50
                         {disp8} lea       edx, dword ptr [ecx + ecx * 0x1 + 0x01]       // 0x006d8bfe    8d540901
                         push              edx                                           // 0x006d8c02    52
                         {disp8} lea       eax, dword ptr [esp + 0x20]                   // 0x006d8c03    8d442420
                         push              eax                                           // 0x006d8c07    50
                         mov.s             ecx, esi                                      // 0x006d8c08    8bce
                         call              _jmp_addr_0x006d9290                          // 0x006d8c0a    e881060000
                         {disp32} mov      ecx, dword ptr [esi + 0x000003fc]             // 0x006d8c0f    8b8efc030000
                         push              eax                                           // 0x006d8c15    50
                         add               ecx, 0x14                                     // 0x006d8c16    83c114
                         call              ?__ne@MapCoords@@QBE_NABV1@@Z                 // 0x006d8c19    e892caf2ff
                         {disp32} mov      ecx, dword ptr [esi + 0x000003f0]             // 0x006d8c1e    8b8ef0030000
                         {disp32} mov      eax, dword ptr [esi + 0x000003ec]             // 0x006d8c24    8b86ec030000
                         {disp8} lea       edx, dword ptr [ecx + ecx * 0x1 + 0x01]       // 0x006d8c2a    8d540901
                         push              edx                                           // 0x006d8c2e    52
                         {disp8} lea       ecx, dword ptr [eax + eax * 0x1 + 0x01]       // 0x006d8c2f    8d4c0001
                         push              ecx                                           // 0x006d8c33    51
                         {disp8} lea       edx, dword ptr [esp + 0x20]                   // 0x006d8c34    8d542420
                         push              edx                                           // 0x006d8c38    52
                         mov.s             ecx, esi                                      // 0x006d8c39    8bce
                         call              _jmp_addr_0x006d9290                          // 0x006d8c3b    e850060000
                         {disp32} mov      ecx, dword ptr [esi + 0x000003f4]             // 0x006d8c40    8b8ef4030000
                         push              eax                                           // 0x006d8c46    50
                         add               ecx, 0x14                                     // 0x006d8c47    83c114
                         call              ?__ne@MapCoords@@QBE_NABV1@@Z                 // 0x006d8c4a    e861caf2ff
                         cmp               word ptr [data_bytes + 0x388eee], bx          // 0x006d8c4f    66391deeeed400
                         {disp8} mov       dword ptr [esp + 0x10], 0xfffffffe            // 0x006d8c56    c7442410feffffff
                         {disp8} jne       _jmp_addr_0x006d8c6d                          // 0x006d8c5e    750d
                         cmp               word ptr [data_bytes + 0x388eea], bx          // 0x006d8c60    66391deaeed400
                         {disp32} je       _jmp_addr_0x006d9226                          // 0x006d8c67    0f84b9050000
_jmp_addr_0x006d8c6d:    {disp32} mov      ecx, dword ptr [esi + 0x000003fc]             // 0x006d8c6d    8b8efc030000
                         call              ?GetTopState@Living@@QBE?AW4VILLAGER_STATES@@XZ                    // 0x006d8c73    e8789bf1ff
                         cmp               al, 0x01                                      // 0x006d8c78    3c01
                         {disp32} je       _jmp_addr_0x006d9226                          // 0x006d8c7a    0f84a6050000
                         {disp32} mov      ecx, dword ptr [esi + 0x000003f4]             // 0x006d8c80    8b8ef4030000
                         call              ?GetTopState@Living@@QBE?AW4VILLAGER_STATES@@XZ                    // 0x006d8c86    e8659bf1ff
                         cmp               al, 0x01                                      // 0x006d8c8b    3c01
                         {disp32} je       _jmp_addr_0x006d9226                          // 0x006d8c8d    0f8493050000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x388ee8]        // 0x006d8c93    a1e8eed400
                         cmp               eax, dword ptr [esi + 0x14]                   // 0x006d8c98    3b4614
                         {disp32} jb       _jmp_addr_0x006d9226                          // 0x006d8c9b    0f8285050000
                         mov.s             ecx, esi                                      // 0x006d8ca1    8bce
                         call              _jmp_addr_0x006db520                          // 0x006d8ca3    e878280000
                         {disp8} lea       ecx, dword ptr [eax + eax * 0x1 + 0x02]       // 0x006d8ca8    8d4c0002
                         push              ecx                                           // 0x006d8cac    51
                         mov.s             ecx, esi                                      // 0x006d8cad    8bce
                         call              _jmp_addr_0x006db520                          // 0x006d8caf    e86c280000
                         {disp8} lea       edx, dword ptr [eax + eax * 0x1 + 0x02]       // 0x006d8cb4    8d540002
                         push              edx                                           // 0x006d8cb8    52
                         {disp8} lea       eax, dword ptr [esp + 0x20]                   // 0x006d8cb9    8d442420
                         push              eax                                           // 0x006d8cbd    50
                         mov.s             ecx, esi                                      // 0x006d8cbe    8bce
                         call              _jmp_addr_0x006d9290                          // 0x006d8cc0    e8cb050000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x388ee8]        // 0x006d8cc5    8b0de8eed400
                         cmp               ecx, dword ptr [eax]                          // 0x006d8ccb    3b08
                         {disp32} ja       _jmp_addr_0x006d9226                          // 0x006d8ccd    0f8753050000
                         {disp32} mov      edi, dword ptr [data_bytes + 0x388eec]        // 0x006d8cd3    8b3deceed400
                         cmp               edi, dword ptr [esi + 0x18]                   // 0x006d8cd9    3b7e18
                         {disp32} jb       _jmp_addr_0x006d9226                          // 0x006d8cdc    0f8244050000
                         mov.s             ecx, esi                                      // 0x006d8ce2    8bce
                         call              _jmp_addr_0x006db520                          // 0x006d8ce4    e837280000
                         {disp8} lea       edx, dword ptr [eax + eax * 0x1 + 0x02]       // 0x006d8ce9    8d540002
                         push              edx                                           // 0x006d8ced    52
                         mov.s             ecx, esi                                      // 0x006d8cee    8bce
                         call              _jmp_addr_0x006db520                          // 0x006d8cf0    e82b280000
                         {disp8} lea       eax, dword ptr [eax + eax * 0x1 + 0x02]       // 0x006d8cf5    8d440002
                         push              eax                                           // 0x006d8cf9    50
                         {disp8} lea       ecx, dword ptr [esp + 0x20]                   // 0x006d8cfa    8d4c2420
                         push              ecx                                           // 0x006d8cfe    51
                         mov.s             ecx, esi                                      // 0x006d8cff    8bce
                         call              _jmp_addr_0x006d9290                          // 0x006d8d01    e88a050000
                         cmp               edi, dword ptr [eax + 0x04]                   // 0x006d8d06    3b7804
                         {disp32} ja       _jmp_addr_0x006d9226                          // 0x006d8d09    0f8717050000
                         {disp32} mov      edx, dword ptr [data_bytes + 0x388ee8]        // 0x006d8d0f    8b15e8eed400
                         {disp8} mov       edi, dword ptr [esi + 0x14]                   // 0x006d8d15    8b7e14
                         {disp32} mov      eax, dword ptr [data_bytes + 0x388eec]        // 0x006d8d18    a1eceed400
                         sub.s             edx, edi                                      // 0x006d8d1d    2bd7
                         {disp8} mov       dword ptr [esp + 0x14], edx                   // 0x006d8d1f    89542414
                         {disp8} mov       edx, dword ptr [esi + 0x18]                   // 0x006d8d23    8b5618
                         {disp8} fild      dword ptr [esp + 0x14]                        // 0x006d8d26    db442414
                         sub.s             eax, edx                                      // 0x006d8d2a    2bc2
                         {disp8} mov       dword ptr [esp + 0x14], eax                   // 0x006d8d2c    89442414
                         {disp8} fild      dword ptr [esp + 0x14]                        // 0x006d8d30    db442414
                         {disp32} fild     dword ptr [esi + 0x00000390]                  // 0x006d8d34    db8690030000
                         {disp32} fild     dword ptr [esi + 0x00000394]                  // 0x006d8d3a    db8694030000
                         {disp32} fld      dword ptr [esi + 0x00000388]                  // 0x006d8d40    d98688030000
                         fld               st(0)                                         // 0x006d8d46    d9c0
                         fmulp             st(1), st                                     // 0x006d8d48    dec9
                         {disp32} fmul     dword ptr [rdata_bytes + 0x91ae4]             // 0x006d8d4a    d80de4aa9300
                         fld               st(2)                                         // 0x006d8d50    d9c2
                         fmul              st, st(5)                                     // 0x006d8d52    d8cd
                         fld               st(2)                                         // 0x006d8d54    d9c2
                         fmul              st, st(5)                                     // 0x006d8d56    d8cd
                         fsubp             st(1), st                                     // 0x006d8d58    dee9
                         fdiv              st, st(1)                                     // 0x006d8d5a    d8f1
                         call              _jmp_addr_0x007a1400                          // 0x006d8d5c    e89f860c00
                         fxch              st(1)                                         // 0x006d8d61    d9c9
                         fmul              st, st(4)                                     // 0x006d8d63    d8cc
                         cdq                                                             // 0x006d8d65    99
                         fxch              st(2)                                         // 0x006d8d66    d9ca
                         sub.s             eax, edx                                      // 0x006d8d68    2bc2
                         fmul              st, st(3)                                     // 0x006d8d6a    d8cb
                         sar               eax, 1                                        // 0x006d8d6c    d1f8
                         {disp8} lea       ebp, dword ptr [eax + eax * 0x1 + 0x01]       // 0x006d8d6e    8d6c0001
                         faddp             st(2), st                                     // 0x006d8d72    dec2
                         fxch              st(1)                                         // 0x006d8d74    d9c9
                         fdiv              st, st(1)                                     // 0x006d8d76    d8f1
                         call              _jmp_addr_0x007a1400                          // 0x006d8d78    e883860c00
                         fstp              st(0)                                         // 0x006d8d7d    ddd8
                         {disp8} mov       ecx, dword ptr [esi + 0x30]                   // 0x006d8d7f    8b4e30
                         fstp              st(0)                                         // 0x006d8d82    ddd8
                         cdq                                                             // 0x006d8d84    99
                         fstp              st(0)                                         // 0x006d8d85    ddd8
                         sub.s             eax, edx                                      // 0x006d8d87    2bc2
                         sar               eax, 1                                        // 0x006d8d89    d1f8
                         cmp.s             ecx, ebx                                      // 0x006d8d8b    3bcb
                         {disp8} lea       edi, dword ptr [eax + eax * 0x1 + 0x01]       // 0x006d8d8d    8d7c0001
                         {disp8} je        _jmp_addr_0x006d8d9c                          // 0x006d8d91    7409
                         mov               edx, dword ptr [ecx]                          // 0x006d8d93    8b11
                         push              ebx                                           // 0x006d8d95    53
                         call              dword ptr [edx + 0xc]                         // 0x006d8d96    ff520c
                         {disp8} mov       dword ptr [esi + 0x30], ebx                   // 0x006d8d99    895e30
_jmp_addr_0x006d8d9c:    push              0x0                                           // 0x006d8d9c    6a00
                         push              0x3f800000                                    // 0x006d8d9e    680000803f
                         push              0xc                                           // 0x006d8da3    6a0c
                         push              edi                                           // 0x006d8da5    57
                         push              ebp                                           // 0x006d8da6    55
                         {disp8} lea       eax, dword ptr [esp + 0x2c]                   // 0x006d8da7    8d44242c
                         push              eax                                           // 0x006d8dab    50
                         mov.s             ecx, esi                                      // 0x006d8dac    8bce
                         call              _jmp_addr_0x006d9290                          // 0x006d8dae    e8dd040000
                         push              eax                                           // 0x006d8db3    50
                         call              _jmp_addr_0x0063e540                          // 0x006d8db4    e88757f6ff
                         {disp32} mov      ebx, dword ptr [esi + 0x000003e4]             // 0x006d8db9    8b9ee4030000
                         {disp8} mov       dword ptr [esi + 0x30], eax                   // 0x006d8dbf    894630
                         {disp32} mov      eax, dword ptr [esi + 0x000003e8]             // 0x006d8dc2    8b86e8030000
                         or                edx, 0xffffffff                               // 0x006d8dc8    83caff
                         lea               ecx, dword ptr [ebx + ebx * 0x1]              // 0x006d8dcb    8d0c1b
                         sub.s             edx, ecx                                      // 0x006d8dce    2bd1
                         add.s             eax, eax                                      // 0x006d8dd0    03c0
                         or                ecx, 0xffffffff                               // 0x006d8dd2    83c9ff
                         sub.s             ecx, eax                                      // 0x006d8dd5    2bc8
                         add.s             ebp, edx                                      // 0x006d8dd7    03ea
                         mov.s             eax, ebp                                      // 0x006d8dd9    8bc5
                         cdq                                                             // 0x006d8ddb    99
                         add.s             edi, ecx                                      // 0x006d8ddc    03f9
                         mov.s             ecx, eax                                      // 0x006d8dde    8bc8
                         xor.s             ecx, edx                                      // 0x006d8de0    33ca
                         add               esp, 0x10                                     // 0x006d8de2    83c410
                         sub.s             ecx, edx                                      // 0x006d8de5    2bca
                         {disp8} jne       _jmp_addr_0x006d8df7                          // 0x006d8de7    750e
                         mov.s             eax, edi                                      // 0x006d8de9    8bc7
                         cdq                                                             // 0x006d8deb    99
                         xor.s             eax, edx                                      // 0x006d8dec    33c2
                         sub.s             eax, edx                                      // 0x006d8dee    2bc2
                         {disp8} jne       _jmp_addr_0x006d8df7                          // 0x006d8df0    7505
                         or                edi, 0xffffffff                               // 0x006d8df2    83cfff
                         {disp8} jmp       _jmp_addr_0x006d8e4f                          // 0x006d8df5    eb58
_jmp_addr_0x006d8df7:    cmp               ecx, 0x01                                     // 0x006d8df7    83f901
                         {disp8} jg        _jmp_addr_0x006d8e2a                          // 0x006d8dfa    7f2e
                         mov.s             eax, edi                                      // 0x006d8dfc    8bc7
                         cdq                                                             // 0x006d8dfe    99
                         xor.s             eax, edx                                      // 0x006d8dff    33c2
                         sub.s             eax, edx                                      // 0x006d8e01    2bc2
                         cmp               eax, 0x01                                     // 0x006d8e03    83f801
                         {disp8} jg        _jmp_addr_0x006d8e0d                          // 0x006d8e06    7f05
                         or                edi, 0xffffffff                               // 0x006d8e08    83cfff
                         {disp8} jmp       _jmp_addr_0x006d8e4f                          // 0x006d8e0b    eb42
_jmp_addr_0x006d8e0d:    cmp               ecx, 0x01                                     // 0x006d8e0d    83f901
                         {disp8} jg        _jmp_addr_0x006d8e2a                          // 0x006d8e10    7f18
                         test              edi, edi                                      // 0x006d8e12    85ff
                         {disp8} jle       _jmp_addr_0x006d8e1a                          // 0x006d8e14    7e04
                         xor.s             edi, edi                                      // 0x006d8e16    33ff
                         {disp8} jmp       _jmp_addr_0x006d8e4f                          // 0x006d8e18    eb35
_jmp_addr_0x006d8e1a:    cmp               ecx, 0x01                                     // 0x006d8e1a    83f901
                         {disp8} jg        _jmp_addr_0x006d8e2a                          // 0x006d8e1d    7f0b
                         test              edi, edi                                      // 0x006d8e1f    85ff
                         {disp8} jge       _jmp_addr_0x006d8e2a                          // 0x006d8e21    7d07
                         mov               edi, 0x00000002                               // 0x006d8e23    bf02000000
                         {disp8} jmp       _jmp_addr_0x006d8e4f                          // 0x006d8e28    eb25
_jmp_addr_0x006d8e2a:    mov.s             eax, edi                                      // 0x006d8e2a    8bc7
                         cdq                                                             // 0x006d8e2c    99
                         xor.s             eax, edx                                      // 0x006d8e2d    33c2
                         sub.s             eax, edx                                      // 0x006d8e2f    2bc2
                         cmp               eax, 0x01                                     // 0x006d8e31    83f801
                         {disp8} jg        _jmp_addr_0x006d8e67                          // 0x006d8e34    7f31
                         test              ebp, ebp                                      // 0x006d8e36    85ed
                         {disp8} jle       _jmp_addr_0x006d8e41                          // 0x006d8e38    7e07
                         mov               edi, 0x00000001                               // 0x006d8e3a    bf01000000
                         {disp8} jmp       _jmp_addr_0x006d8e4f                          // 0x006d8e3f    eb0e
_jmp_addr_0x006d8e41:    cmp               eax, 0x01                                     // 0x006d8e41    83f801
                         {disp8} jg        _jmp_addr_0x006d8e67                          // 0x006d8e44    7f21
                         test              ebp, ebp                                      // 0x006d8e46    85ed
                         {disp8} jge       _jmp_addr_0x006d8e67                          // 0x006d8e48    7d1d
                         mov               edi, 0x00000003                               // 0x006d8e4a    bf03000000
_jmp_addr_0x006d8e4f:    {disp32} mov      eax, dword ptr [esi + 0x000003e8]             // 0x006d8e4f    8b86e8030000
                         push              edi                                           // 0x006d8e55    57
                         push              eax                                           // 0x006d8e56    50
                         push              ebx                                           // 0x006d8e57    53
                         mov.s             ecx, esi                                      // 0x006d8e58    8bce
                         call              _jmp_addr_0x006dac60                          // 0x006d8e5a    e8011e0000
                         test              eax, eax                                      // 0x006d8e5f    85c0
                         {disp8} jne       _jmp_addr_0x006d8e67                          // 0x006d8e61    7504
                         {disp8} mov       dword ptr [esp + 0x10], edi                   // 0x006d8e63    897c2410
_jmp_addr_0x006d8e67:    {disp32} mov      al, byte ptr [data_bytes + 0x388ee4]          // 0x006d8e67    a0e4eed400
                         mov               ecx, 0x00000001                               // 0x006d8e6c    b901000000
                         test              cl, al                                        // 0x006d8e71    84c1
                         {disp8} jne       _jmp_addr_0x006d8e86                          // 0x006d8e73    7511
                         or.s              al, cl                                        // 0x006d8e75    0ac1
                         {disp32} mov      byte ptr [data_bytes + 0x388ee4], al          // 0x006d8e77    a2e4eed400
                         {disp32} mov      dword ptr [data_bytes + 0x388ee0], 0xc4000000 // 0x006d8e7c    c705e0eed400000000c4
_jmp_addr_0x006d8e86:    {disp8} mov       edx, dword ptr [esp + 0x10]                   // 0x006d8e86    8b542410
                         {disp32} fld      dword ptr [data_bytes + 0x388ee0]             // 0x006d8e8a    d905e0eed400
                         {disp8} lea       eax, dword ptr [edx + 0x02]                   // 0x006d8e90    8d4202
                         cmp               eax, 0x05                                     // 0x006d8e93    83f805
                         {disp8} ja        _jmp_addr_0x006d8ee8                          // 0x006d8e96    7750
                         jmp               dword ptr [eax*4 + 0x6d9230]                  // 0x006d8e98    ff248530926d00
                         xor.s             ecx, ecx                                      // 0x006d8e9f    33c9
                         {disp8} jmp       _jmp_addr_0x006d8ee8                          // 0x006d8ea1    eb45
                         {disp32} mov      eax, dword ptr [esi + 0x000003e8]             // 0x006d8ea3    8b86e8030000
                         {disp32} fadd     dword ptr [rdata_bytes + 0x2867c]             // 0x006d8ea9    d8057c168d00
                         inc               eax                                           // 0x006d8eaf    40
                         {disp32} mov      dword ptr [esi + 0x000003e8], eax             // 0x006d8eb0    8986e8030000
                         {disp8} jmp       _jmp_addr_0x006d8ee8                          // 0x006d8eb6    eb30
                         {disp32} mov      eax, dword ptr [esi + 0x000003e4]             // 0x006d8eb8    8b86e4030000
                         {disp32} fadd     dword ptr [_abode_info_float_0x008a99f0]      // 0x006d8ebe    d805f0998a00
                         inc               eax                                           // 0x006d8ec4    40
                         {disp32} mov      dword ptr [esi + 0x000003e4], eax             // 0x006d8ec5    8986e4030000
                         {disp8} jmp       _jmp_addr_0x006d8ee8                          // 0x006d8ecb    eb1b
                         dec               dword ptr [esi + 0x000003e8]                  // 0x006d8ecd    ff8ee8030000
                         {disp8} jmp       _jmp_addr_0x006d8ee8                          // 0x006d8ed3    eb13
                         {disp32} mov      eax, dword ptr [esi + 0x000003e4]             // 0x006d8ed5    8b86e4030000
                         {disp32} fadd     dword ptr [rdata_bytes + 0x1e628]             // 0x006d8edb    d80528768c00
                         dec               eax                                           // 0x006d8ee1    48
                         {disp32} mov      dword ptr [esi + 0x000003e4], eax             // 0x006d8ee2    8986e4030000
_jmp_addr_0x006d8ee8:    {disp32} fcom     dword ptr [rdata_bytes + 0x28678]             // 0x006d8ee8    d81578168d00
                         fnstsw            ax                                            // 0x006d8eee    dfe0
                         test              ah, 0x01                                      // 0x006d8ef0    f6c401
                         {disp8} jne       _jmp_addr_0x006d8efb                          // 0x006d8ef3    7506
                         {disp32} fsub     dword ptr [rdata_bytes + 0x28678]             // 0x006d8ef5    d82578168d00
_jmp_addr_0x006d8efb:    {disp32} fcom     dword ptr [_rdata_float0p0]                   // 0x006d8efb    d81598a38a00
                         fnstsw            ax                                            // 0x006d8f01    dfe0
                         test              ah, 0x01                                      // 0x006d8f03    f6c401
                         {disp8} je        _jmp_addr_0x006d8f0e                          // 0x006d8f06    7406
                         {disp32} fadd     dword ptr [rdata_bytes + 0x28678]             // 0x006d8f08    d80578168d00
_jmp_addr_0x006d8f0e:    xor.s             edi, edi                                      // 0x006d8f0e    33ff
                         cmp.s             ecx, edi                                      // 0x006d8f10    3bcf
                         {disp8} je        _jmp_addr_0x006d8f23                          // 0x006d8f12    740f
                         call              _jmp_addr_0x007a1400                          // 0x006d8f14    e8e7840c00
                         {disp8} mov       word ptr [esi + 0x42], ax                     // 0x006d8f19    66894642
                         {disp8} mov       word ptr [esi + 0x46], di                     // 0x006d8f1d    66897e46
                         {disp8} jmp       _jmp_addr_0x006d8f25                          // 0x006d8f21    eb02
_jmp_addr_0x006d8f23:    fstp              st(0)                                         // 0x006d8f23    ddd8
_jmp_addr_0x006d8f25:    {disp8} mov       dword ptr [esp + 0x10], 0x00000001            // 0x006d8f25    c744241001000000
                         mov               ebx, 0x00000002                               // 0x006d8f2d    bb02000000
                         mov               ebp, 0x00000001                               // 0x006d8f32    bd01000000
_jmp_addr_0x006d8f37:    {disp32} mov      eax, dword ptr [esi + 0x000003ec]             // 0x006d8f37    8b86ec030000
                         {disp32} mov      ecx, dword ptr [esi + 0x000003e4]             // 0x006d8f3d    8b8ee4030000
                         dec               ebx                                           // 0x006d8f43    4b
                         cmp.s             ecx, eax                                      // 0x006d8f44    3bc8
                         {disp32} mov      dword ptr [esi + 0x00000584], ebp             // 0x006d8f46    89ae84050000
                         {disp8} jle       _jmp_addr_0x006d8f80                          // 0x006d8f4c    7e32
                         {disp32} mov      ecx, dword ptr [esi + 0x000003f0]             // 0x006d8f4e    8b8ef0030000
                         push              ebp                                           // 0x006d8f54    55
                         push              ecx                                           // 0x006d8f55    51
                         push              eax                                           // 0x006d8f56    50
                         mov.s             ecx, esi                                      // 0x006d8f57    8bce
                         call              _jmp_addr_0x006dac60                          // 0x006d8f59    e8021d0000
                         test              eax, eax                                      // 0x006d8f5e    85c0
                         {disp8} jne       _jmp_addr_0x006d8f80                          // 0x006d8f60    751e
                         {disp32} mov      ecx, dword ptr [esi + 0x000003ec]             // 0x006d8f62    8b8eec030000
                         inc               ecx                                           // 0x006d8f68    41
                         cmp               edi, 0x03                                     // 0x006d8f69    83ff03
                         {disp32} mov      dword ptr [esi + 0x000003ec], ecx             // 0x006d8f6c    898eec030000
                         {disp32} je       _jmp_addr_0x006d9029                          // 0x006d8f72    0f84b1000000
                         add               edi, 0x03                                     // 0x006d8f78    83c703
                         {disp32} jmp      _jmp_addr_0x006d9029                          // 0x006d8f7b    e9a9000000
_jmp_addr_0x006d8f80:    {disp32} mov      eax, dword ptr [esi + 0x000003ec]             // 0x006d8f80    8b86ec030000
                         cmp               dword ptr [esi + 0x000003e4], eax             // 0x006d8f86    3986e4030000
                         {disp8} jge       _jmp_addr_0x006d8fba                          // 0x006d8f8c    7d2c
                         {disp32} mov      edx, dword ptr [esi + 0x000003f0]             // 0x006d8f8e    8b96f0030000
                         push              0x3                                           // 0x006d8f94    6a03
                         push              edx                                           // 0x006d8f96    52
                         push              eax                                           // 0x006d8f97    50
                         mov.s             ecx, esi                                      // 0x006d8f98    8bce
                         call              _jmp_addr_0x006dac60                          // 0x006d8f9a    e8c11c0000
                         test              eax, eax                                      // 0x006d8f9f    85c0
                         {disp8} jne       _jmp_addr_0x006d8fba                          // 0x006d8fa1    7517
                         {disp32} mov      ecx, dword ptr [esi + 0x000003ec]             // 0x006d8fa3    8b8eec030000
                         dec               ecx                                           // 0x006d8fa9    49
                         cmp               edi, 0x12                                     // 0x006d8faa    83ff12
                         {disp32} mov      dword ptr [esi + 0x000003ec], ecx             // 0x006d8fad    898eec030000
                         {disp8} je        _jmp_addr_0x006d9029                          // 0x006d8fb3    7474
                         add               edi, 0x12                                     // 0x006d8fb5    83c712
                         {disp8} jmp       _jmp_addr_0x006d9029                          // 0x006d8fb8    eb6f
_jmp_addr_0x006d8fba:    {disp32} mov      eax, dword ptr [esi + 0x000003f0]             // 0x006d8fba    8b86f0030000
                         cmp               dword ptr [esi + 0x000003e8], eax             // 0x006d8fc0    3986e8030000
                         {disp8} jle       _jmp_addr_0x006d8ff4                          // 0x006d8fc6    7e2c
                         push              0x0                                           // 0x006d8fc8    6a00
                         push              eax                                           // 0x006d8fca    50
                         {disp32} mov      eax, dword ptr [esi + 0x000003ec]             // 0x006d8fcb    8b86ec030000
                         push              eax                                           // 0x006d8fd1    50
                         mov.s             ecx, esi                                      // 0x006d8fd2    8bce
                         call              _jmp_addr_0x006dac60                          // 0x006d8fd4    e8871c0000
                         test              eax, eax                                      // 0x006d8fd9    85c0
                         {disp8} jne       _jmp_addr_0x006d8ff4                          // 0x006d8fdb    7517
                         {disp32} mov      ecx, dword ptr [esi + 0x000003f0]             // 0x006d8fdd    8b8ef0030000
                         inc               ecx                                           // 0x006d8fe3    41
                         cmp               edi, 0x09                                     // 0x006d8fe4    83ff09
                         {disp32} mov      dword ptr [esi + 0x000003f0], ecx             // 0x006d8fe7    898ef0030000
                         {disp8} je        _jmp_addr_0x006d9029                          // 0x006d8fed    743a
                         add               edi, 0x09                                     // 0x006d8fef    83c709
                         {disp8} jmp       _jmp_addr_0x006d9029                          // 0x006d8ff2    eb35
_jmp_addr_0x006d8ff4:    {disp32} mov      eax, dword ptr [esi + 0x000003f0]             // 0x006d8ff4    8b86f0030000
                         cmp               dword ptr [esi + 0x000003e8], eax             // 0x006d8ffa    3986e8030000
                         {disp8} jge       _jmp_addr_0x006d9031                          // 0x006d9000    7d2f
                         {disp32} mov      ecx, dword ptr [esi + 0x000003ec]             // 0x006d9002    8b8eec030000
                         push              0x2                                           // 0x006d9008    6a02
                         push              eax                                           // 0x006d900a    50
                         push              ecx                                           // 0x006d900b    51
                         mov.s             ecx, esi                                      // 0x006d900c    8bce
                         call              _jmp_addr_0x006dac60                          // 0x006d900e    e84d1c0000
                         test              eax, eax                                      // 0x006d9013    85c0
                         {disp8} jne       _jmp_addr_0x006d9031                          // 0x006d9015    751a
                         {disp32} mov      ecx, dword ptr [esi + 0x000003f0]             // 0x006d9017    8b8ef0030000
                         dec               ecx                                           // 0x006d901d    49
                         cmp.s             edi, ebp                                      // 0x006d901e    3bfd
                         {disp32} mov      dword ptr [esi + 0x000003f0], ecx             // 0x006d9020    898ef0030000
                         {disp8} je        _jmp_addr_0x006d9029                          // 0x006d9026    7401
                         inc               edi                                           // 0x006d9028    47
_jmp_addr_0x006d9029:    test              ebx, ebx                                      // 0x006d9029    85db
                         {disp32} jg       _jmp_addr_0x006d8f37                          // 0x006d902b    0f8f06ffffff
_jmp_addr_0x006d9031:    cmp               edi, 0x1b                                     // 0x006d9031    83ff1b
                         {disp32} fld      dword ptr [data_bytes + 0x388ee0]             // 0x006d9034    d905e0eed400
                         {disp32} ja       _jmp_addr_0x006d90c7                          // 0x006d903a    0f8787000000
                         xor.s             edx, edx                                      // 0x006d9040    33d2
                         {disp32} mov      dl, byte ptr [edi + 0x006d9270]               // 0x006d9042    8a9770926d00
                         jmp               dword ptr [edx*4 + 0x6d9248]                  // 0x006d9048    ff249548926d00
                         {disp8} mov       dword ptr [esp + 0x10], 0x00000000            // 0x006d904f    c744241000000000
                         {disp8} jmp       _jmp_addr_0x006d90c7                          // 0x006d9057    eb6e
                         fstp              st(0)                                         // 0x006d9059    ddd8
                         {disp32} fld      dword ptr [data_bytes + 0x388ee0]             // 0x006d905b    d905e0eed400
                         {disp32} fadd     dword ptr [_abode_info_float_0x008a99f0]      // 0x006d9061    d805f0998a00
                         {disp8} jmp       _jmp_addr_0x006d90c7                          // 0x006d9067    eb5e
                         fstp              st(0)                                         // 0x006d9069    ddd8
                         {disp32} fld      dword ptr [data_bytes + 0x388ee0]             // 0x006d906b    d905e0eed400
                         {disp32} fadd     dword ptr [rdata_bytes + 0x2867c]             // 0x006d9071    d8057c168d00
                         {disp8} jmp       _jmp_addr_0x006d90c7                          // 0x006d9077    eb4e
                         fstp              st(0)                                         // 0x006d9079    ddd8
                         {disp32} fld      dword ptr [data_bytes + 0x388ee0]             // 0x006d907b    d905e0eed400
                         {disp32} fadd     dword ptr [rdata_bytes + 0x1e628]             // 0x006d9081    d80528768c00
                         {disp8} jmp       _jmp_addr_0x006d90c7                          // 0x006d9087    eb3e
                         fstp              st(0)                                         // 0x006d9089    ddd8
                         {disp32} fld      dword ptr [data_bytes + 0x388ee0]             // 0x006d908b    d905e0eed400
                         {disp32} fadd     dword ptr [rdata_bytes + 0x2b5cc]             // 0x006d9091    d805cc458d00
                         {disp8} jmp       _jmp_addr_0x006d90c7                          // 0x006d9097    eb2e
                         fstp              st(0)                                         // 0x006d9099    ddd8
                         {disp32} fld      dword ptr [data_bytes + 0x388ee0]             // 0x006d909b    d905e0eed400
                         {disp32} fadd     dword ptr [rdata_bytes + 0x91aec]             // 0x006d90a1    d805ecaa9300
                         {disp8} jmp       _jmp_addr_0x006d90c7                          // 0x006d90a7    eb1e
                         fstp              st(0)                                         // 0x006d90a9    ddd8
                         {disp32} fld      dword ptr [data_bytes + 0x388ee0]             // 0x006d90ab    d905e0eed400
                         {disp32} fadd     dword ptr [rdata_bytes + 0x822a8]             // 0x006d90b1    d805a8b29200
                         {disp8} jmp       _jmp_addr_0x006d90c7                          // 0x006d90b7    eb0e
                         fstp              st(0)                                         // 0x006d90b9    ddd8
                         {disp32} fld      dword ptr [data_bytes + 0x388ee0]             // 0x006d90bb    d905e0eed400
                         {disp32} fadd     dword ptr [rdata_bytes + 0x91ae8]             // 0x006d90c1    d805e8aa9300
_jmp_addr_0x006d90c7:    {disp32} fcom     dword ptr [rdata_bytes + 0x28678]             // 0x006d90c7    d81578168d00
                         fnstsw            ax                                            // 0x006d90cd    dfe0
                         test              ah, 0x01                                      // 0x006d90cf    f6c401
                         {disp8} jne       _jmp_addr_0x006d90da                          // 0x006d90d2    7506
                         {disp32} fsub     dword ptr [rdata_bytes + 0x28678]             // 0x006d90d4    d82578168d00
_jmp_addr_0x006d90da:    {disp32} fcom     dword ptr [_rdata_float0p0]                   // 0x006d90da    d81598a38a00
                         fnstsw            ax                                            // 0x006d90e0    dfe0
                         test              ah, 0x01                                      // 0x006d90e2    f6c401
                         {disp8} je        _jmp_addr_0x006d90ed                          // 0x006d90e5    7406
                         {disp32} fadd     dword ptr [rdata_bytes + 0x28678]             // 0x006d90e7    d80578168d00
_jmp_addr_0x006d90ed:    {disp8} mov       eax, dword ptr [esp + 0x10]                   // 0x006d90ed    8b442410
                         test              eax, eax                                      // 0x006d90f1    85c0
                         {disp8} je        _jmp_addr_0x006d9106                          // 0x006d90f3    7411
                         call              _jmp_addr_0x007a1400                          // 0x006d90f5    e806830c00
                         {disp8} mov       word ptr [esi + 0x40], ax                     // 0x006d90fa    66894640
                         {disp8} mov       word ptr [esi + 0x44], 0x0000                 // 0x006d90fe    66c746440000
                         {disp8} jmp       _jmp_addr_0x006d9108                          // 0x006d9104    eb02
_jmp_addr_0x006d9106:    fstp              st(0)                                         // 0x006d9106    ddd8
_jmp_addr_0x006d9108:    {disp32} mov      ecx, dword ptr [esi + 0x000003f4]             // 0x006d9108    8b8ef4030000
                         mov               eax, dword ptr [ecx]                          // 0x006d910e    8b01
                         xor.s             edx, edx                                      // 0x006d9110    33d2
                         {disp8} mov       dx, word ptr [esi + 0x40]                     // 0x006d9112    668b5640
                         push              edx                                           // 0x006d9116    52
                         call              dword ptr [eax + 0x868]                       // 0x006d9117    ff9068080000
                         {disp32} mov      ecx, dword ptr [esi + 0x000003f4]             // 0x006d911d    8b8ef4030000
                         {disp8} mov       ax, word ptr [esi + 0x40]                     // 0x006d9123    668b4640
                         cmp               ax, word ptr [ecx + 0x5c]                     // 0x006d9127    663b415c
                         {disp8} jne       _jmp_addr_0x006d918f                          // 0x006d912b    7562
                         {disp8} mov       ax, word ptr [esi + 0x44]                     // 0x006d912d    668b4644
                         test              ax, ax                                        // 0x006d9131    6685c0
                         {disp8} jne       _jmp_addr_0x006d9178                          // 0x006d9134    7542
                         push              0x40800000                                    // 0x006d9136    6800008040
                         call              _jmp_addr_0x0060c110                          // 0x006d913b    e8d02ff3ff
                         {disp32} mov      ecx, dword ptr [esi + 0x000003f0]             // 0x006d9140    8b8ef0030000
                         {disp32} mov      eax, dword ptr [esi + 0x000003ec]             // 0x006d9146    8b86ec030000
                         {disp8} lea       edx, dword ptr [ecx + ecx * 0x1 + 0x01]       // 0x006d914c    8d540901
                         push              0x2b                                          // 0x006d9150    6a2b
                         push              edx                                           // 0x006d9152    52
                         {disp8} lea       ecx, dword ptr [eax + eax * 0x1 + 0x01]       // 0x006d9153    8d4c0001
                         push              ecx                                           // 0x006d9157    51
                         {disp8} lea       edx, dword ptr [esp + 0x24]                   // 0x006d9158    8d542424
                         push              edx                                           // 0x006d915c    52
                         mov.s             ecx, esi                                      // 0x006d915d    8bce
                         call              _jmp_addr_0x006d9290                          // 0x006d915f    e82c010000
                         {disp32} mov      ecx, dword ptr [esi + 0x000003f4]             // 0x006d9164    8b8ef4030000
                         push              eax                                           // 0x006d916a    50
                         call              @SetupMoveToPos__6LivingFRC9MapCoordsUc@13    // 0x006d916b    e8c096f1ff
                         {disp8} mov       word ptr [esi + 0x44], 0x0001                 // 0x006d9170    66c746440100
                         {disp8} jmp       _jmp_addr_0x006d918f                          // 0x006d9176    eb17
_jmp_addr_0x006d9178:    cmp               ax, 0x0001                                    // 0x006d9178    663d0100
                         {disp8} jne       _jmp_addr_0x006d918f                          // 0x006d917c    7511
                         push              0x0                                           // 0x006d917e    6a00
                         call              @AreWeThere__13MobileWallHugFf@12             // 0x006d9180    e8bb1bf3ff
                         test              eax, eax                                      // 0x006d9185    85c0
                         {disp8} je        _jmp_addr_0x006d918f                          // 0x006d9187    7406
                         {disp8} mov       word ptr [esi + 0x44], 0x0002                 // 0x006d9189    66c746440200
_jmp_addr_0x006d918f:    {disp32} mov      ecx, dword ptr [esi + 0x000003fc]             // 0x006d918f    8b8efc030000
                         mov               eax, dword ptr [ecx]                          // 0x006d9195    8b01
                         xor.s             edx, edx                                      // 0x006d9197    33d2
                         {disp8} mov       dx, word ptr [esi + 0x42]                     // 0x006d9199    668b5642
                         push              edx                                           // 0x006d919d    52
                         call              dword ptr [eax + 0x868]                       // 0x006d919e    ff9068080000
                         {disp32} mov      ecx, dword ptr [esi + 0x000003fc]             // 0x006d91a4    8b8efc030000
                         {disp8} mov       ax, word ptr [esi + 0x42]                     // 0x006d91aa    668b4642
                         cmp               ax, word ptr [ecx + 0x5c]                     // 0x006d91ae    663b415c
                         {disp8} jne       _jmp_addr_0x006d9226                          // 0x006d91b2    7572
                         {disp8} mov       ax, word ptr [esi + 0x46]                     // 0x006d91b4    668b4646
                         test              ax, ax                                        // 0x006d91b8    6685c0
                         {disp8} jne       _jmp_addr_0x006d9205                          // 0x006d91bb    7548
                         push              0x40800000                                    // 0x006d91bd    6800008040
                         call              _jmp_addr_0x0060c110                          // 0x006d91c2    e8492ff3ff
                         {disp32} mov      ecx, dword ptr [esi + 0x000003e8]             // 0x006d91c7    8b8ee8030000
                         {disp32} mov      eax, dword ptr [esi + 0x000003e4]             // 0x006d91cd    8b86e4030000
                         {disp8} lea       edx, dword ptr [ecx + ecx * 0x1 + 0x01]       // 0x006d91d3    8d540901
                         push              0x2b                                          // 0x006d91d7    6a2b
                         push              edx                                           // 0x006d91d9    52
                         {disp8} lea       ecx, dword ptr [eax + eax * 0x1 + 0x01]       // 0x006d91da    8d4c0001
                         push              ecx                                           // 0x006d91de    51
                         {disp8} lea       edx, dword ptr [esp + 0x24]                   // 0x006d91df    8d542424
                         push              edx                                           // 0x006d91e3    52
                         mov.s             ecx, esi                                      // 0x006d91e4    8bce
                         call              _jmp_addr_0x006d9290                          // 0x006d91e6    e8a5000000
                         {disp32} mov      ecx, dword ptr [esi + 0x000003fc]             // 0x006d91eb    8b8efc030000
                         push              eax                                           // 0x006d91f1    50
                         call              @SetupMoveToPos__6LivingFRC9MapCoordsUc@13    // 0x006d91f2    e83996f1ff
                         pop               edi                                           // 0x006d91f7    5f
                         {disp8} mov       word ptr [esi + 0x46], 0x0001                 // 0x006d91f8    66c746460100
                         pop               esi                                           // 0x006d91fe    5e
                         pop               ebp                                           // 0x006d91ff    5d
                         pop               ebx                                           // 0x006d9200    5b
                         add               esp, 0x14                                     // 0x006d9201    83c414
                         ret                                                             // 0x006d9204    c3
_jmp_addr_0x006d9205:    cmp               ax, 0x0001                                    // 0x006d9205    663d0100
                         {disp8} jne       _jmp_addr_0x006d9226                          // 0x006d9209    751b
                         push              0x0                                           // 0x006d920b    6a00
                         call              @AreWeThere__13MobileWallHugFf@12             // 0x006d920d    e82e1bf3ff
                         test              eax, eax                                      // 0x006d9212    85c0
                         {disp8} je        _jmp_addr_0x006d9226                          // 0x006d9214    7410
                         pop               edi                                           // 0x006d9216    5f
                         {disp8} mov       word ptr [esi + 0x46], 0x0002                 // 0x006d9217    66c746460200
                         pop               esi                                           // 0x006d921d    5e
                         pop               ebp                                           // 0x006d921e    5d
                         pop               ebx                                           // 0x006d921f    5b
                         add               esp, 0x14                                     // 0x006d9220    83c414
                         ret                                                             // 0x006d9223    c3
                         fstp              st(0)                                         // 0x006d9224    ddd8
_jmp_addr_0x006d9226:    pop               edi                                           // 0x006d9226    5f
                         pop               esi                                           // 0x006d9227    5e
                         pop               ebp                                           // 0x006d9228    5d
                         pop               ebx                                           // 0x006d9229    5b
                         add               esp, 0x14                                     // 0x006d922a    83c414
                         ret                                                             // 0x006d922d    c3

// Snippet: db, [0x006d922e, 0x006d9230)
.byte 0x8b, 0xff                  // 0x006d922e

// Snippet: jmptbl, [0x006d9230, 0x006d9270)
.byte 0x24, 0x92, 0x6d, 0x00      // 0x006d9230
.byte 0x9f, 0x8e, 0x6d, 0x00      // 0x006d9234
.byte 0xa3, 0x8e, 0x6d, 0x00      // 0x006d9238
.byte 0xb8, 0x8e, 0x6d, 0x00      // 0x006d923c
.byte 0xcd, 0x8e, 0x6d, 0x00      // 0x006d9240
.byte 0xd5, 0x8e, 0x6d, 0x00      // 0x006d9244
.byte 0x4f, 0x90, 0x6d, 0x00      // 0x006d9248
.byte 0xc7, 0x90, 0x6d, 0x00      // 0x006d924c
.byte 0x59, 0x90, 0x6d, 0x00      // 0x006d9250
.byte 0x89, 0x90, 0x6d, 0x00      // 0x006d9254
.byte 0x69, 0x90, 0x6d, 0x00      // 0x006d9258
.byte 0x99, 0x90, 0x6d, 0x00      // 0x006d925c
.byte 0x79, 0x90, 0x6d, 0x00      // 0x006d9260
.byte 0xb9, 0x90, 0x6d, 0x00      // 0x006d9264
.byte 0xa9, 0x90, 0x6d, 0x00      // 0x006d9268
.byte 0xc7, 0x90, 0x6d, 0x00      // 0x006d926c

// Snippet: ijmptbl, [0x006d9270, 0x006d928c)
.byte 0x00, 0x01, 0x09, 0x02      // 0x006d9270
.byte 0x03, 0x09, 0x09, 0x09      // 0x006d9274
.byte 0x09, 0x04, 0x09, 0x09      // 0x006d9278
.byte 0x05, 0x09, 0x09, 0x09      // 0x006d927c
.byte 0x09, 0x09, 0x06, 0x07      // 0x006d9280
.byte 0x09, 0x09, 0x09, 0x09      // 0x006d9284
.byte 0x09, 0x09, 0x09, 0x08      // 0x006d9288

// Snippet: db, [0x006d928c, 0x006d9290)
.byte 0x90, 0x90, 0x90, 0x90      // 0x006d928c

