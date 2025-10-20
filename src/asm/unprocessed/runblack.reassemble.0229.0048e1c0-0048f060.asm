.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern @SetDestinationWithSpeedAndTime__6ZoomerFfff@20
.extern @Update__6ZoomerFf@12
.extern _jmp_addr_0x00482d40
.extern _jmp_addr_0x0048f0f0
.extern _jmp_addr_0x0048f550
.extern _jmp_addr_0x004ec3f0
.extern _jmp_addr_0x004ec450
.extern _jmp_addr_0x00637dd0
.extern _jmp_addr_0x0068e430
.extern ?LocalRand@GRand@@SAIJ@Z
.extern __CIasin
.extern _jmp_addr_0x007feb30
.extern _jmp_addr_0x00801c90
.extern ?CreateFromHD@LH3DMesh@@SAPAV1@PBD_N@Z
.extern @Create__10LH3DObjectFQ210LH3DObject10ObjectType@4
.extern _jmp_addr_0x00841170
.extern _jmp_addr_0x00866ba0
.extern _jmp_addr_0x00868c80

.globl _jmp_addr_0x0048e260

start_0x0048e1c0_0x0048f060:
// Snippet: asm, [0x0048e1c0, 0x0048f03e)
                         push               ebx                                           // 0x0048e1c0    53
                         push               ebp                                           // 0x0048e1c1    55
                         push               esi                                           // 0x0048e1c2    56
                         mov.s              esi, ecx                                      // 0x0048e1c3    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x0000482c]             // 0x0048e1c5    8b862c480000
                         push               edi                                           // 0x0048e1cb    57
                         {disp8} lea        edi, dword ptr [eax + 0x50]                   // 0x0048e1cc    8d7850
                         {disp8} lea        ebx, dword ptr [eax + 0x4c]                   // 0x0048e1cf    8d584c
                         push               edi                                           // 0x0048e1d2    57
                         {disp8} lea        ebp, dword ptr [eax + 0x38]                   // 0x0048e1d3    8d6838
                         push               ebx                                           // 0x0048e1d6    53
                         push               ebp                                           // 0x0048e1d7    55
                         call               _jmp_addr_0x00801c90                          // 0x0048e1d8    e8b33a3700
                         mov                eax, dword ptr [edi]                          // 0x0048e1dd    8b07
                         push               ebx                                           // 0x0048e1df    53
                         push               eax                                           // 0x0048e1e0    50
                         push               ebp                                           // 0x0048e1e1    55
                         call               _jmp_addr_0x007feb30                          // 0x0048e1e2    e849093700
                         mov                dword ptr [edi], eax                          // 0x0048e1e7    8907
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4dbb10]        // 0x0048e1e9    8b0d101bea00
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4dbb14]        // 0x0048e1ef    8b15141bea00
                         {disp32} mov       edi, dword ptr [data_bytes + 0x4dbac8]        // 0x0048e1f5    8b3dc81aea00
                         {disp32} mov       ebx, dword ptr [data_bytes + 0x4dbacc]        // 0x0048e1fb    8b1dcc1aea00
                         {disp32} mov       dword ptr [data_bytes + 0x4dbac8], ecx        // 0x0048e201    890dc81aea00
                         {disp32} mov       dword ptr [data_bytes + 0x4dbad0], 0x00000000 // 0x0048e207    c705d01aea0000000000
                         {disp32} mov       dword ptr [data_bytes + 0x4dbacc], edx        // 0x0048e211    8915cc1aea00
                         {disp32} mov       ecx, dword ptr [esi + 0x00000098]             // 0x0048e217    8b8e98000000
                         {disp32} mov       eax, dword ptr [esi + 0x0000482c]             // 0x0048e21d    8b862c480000
                         {disp32} mov       ecx, dword ptr [esi + ecx * 0x4 + 0x000000b4] // 0x0048e223    8b8c8eb4000000
                         add                esp, 0x18                                     // 0x0048e22a    83c418
                         push               eax                                           // 0x0048e22d    50
                         add                ecx, 0x14                                     // 0x0048e22e    83c114
                         call               _jmp_addr_0x00868c80                          // 0x0048e231    e84aaa3d00
                         mov.s              ecx, esi                                      // 0x0048e236    8bce
                         {disp32} mov       dword ptr [data_bytes + 0x4dbac8], edi        // 0x0048e238    893dc81aea00
                         {disp32} mov       dword ptr [data_bytes + 0x4dbacc], ebx        // 0x0048e23e    891dcc1aea00
                         call               _jmp_addr_0x0048e260                          // 0x0048e244    e817000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4dbad0]        // 0x0048e249    a1d01aea00
                         pop                edi                                           // 0x0048e24e    5f
                         pop                esi                                           // 0x0048e24f    5e
                         pop                ebp                                           // 0x0048e250    5d
                         pop                ebx                                           // 0x0048e251    5b
                         ret                                                              // 0x0048e252    c3
                         nop                                                              // 0x0048e253    90
                         nop                                                              // 0x0048e254    90
                         nop                                                              // 0x0048e255    90
                         nop                                                              // 0x0048e256    90
                         nop                                                              // 0x0048e257    90
                         nop                                                              // 0x0048e258    90
                         nop                                                              // 0x0048e259    90
                         nop                                                              // 0x0048e25a    90
                         nop                                                              // 0x0048e25b    90
                         nop                                                              // 0x0048e25c    90
                         nop                                                              // 0x0048e25d    90
                         nop                                                              // 0x0048e25e    90
                         nop                                                              // 0x0048e25f    90
_jmp_addr_0x0048e260:    sub                esp, 0x000000f4                               // 0x0048e260    81ecf4000000
                         push               esi                                           // 0x0048e266    56
                         push               edi                                           // 0x0048e267    57
                         mov.s              edi, ecx                                      // 0x0048e268    8bf9
                         {disp32} mov       ecx, dword ptr [edi + 0x000057b0]             // 0x0048e26a    8b8fb0570000
                         xor.s              esi, esi                                      // 0x0048e270    33f6
                         test               ecx, ecx                                      // 0x0048e272    85c9
                         {disp8} je         _jmp_addr_0x0048e27c                          // 0x0048e274    7406
                         push               edi                                           // 0x0048e276    57
                         call               _jmp_addr_0x0068e430                          // 0x0048e277    e8b4012000
_jmp_addr_0x0048e27c:    {disp32} mov       eax, dword ptr [edi + 0x000051e8]             // 0x0048e27c    8b87e8510000
                         dec                eax                                           // 0x0048e282    48
                         {disp8} je         _jmp_addr_0x0048e297                          // 0x0048e283    7412
                         pop                edi                                           // 0x0048e285    5f
                         {disp32} mov       dword ptr [data_bytes + 0x4dbad0], esi        // 0x0048e286    8935d01aea00
                         sub                eax, 0x02                                     // 0x0048e28c    83e802
                         pop                esi                                           // 0x0048e28f    5e
                         add                esp, 0x000000f4                               // 0x0048e290    81c4f4000000
                         ret                                                              // 0x0048e296    c3
_jmp_addr_0x0048e297:    mov.s              ecx, edi                                      // 0x0048e297    8bcf
                         call               _jmp_addr_0x0048f550                          // 0x0048e299    e8b2120000
                         {disp32} mov       ecx, dword ptr [edi + 0x0000482c]             // 0x0048e29e    8b8f2c480000
                         mov                eax, dword ptr [ecx]                          // 0x0048e2a4    8b01
                         call               dword ptr [eax + 0x100]                       // 0x0048e2a6    ff9000010000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4dbad0]        // 0x0048e2ac    8b0dd01aea00
                         {disp32} mov       dword ptr [esp + 0x000000bc], ecx             // 0x0048e2b2    898c24bc000000
                         {disp32} mov       ecx, dword ptr [edi + 0x00004834]             // 0x0048e2b9    8b8f34480000
                         test               ecx, ecx                                      // 0x0048e2bf    85c9
                         {disp8} je         _jmp_addr_0x0048e2cf                          // 0x0048e2c1    740c
                         {disp8} mov        eax, dword ptr [ecx + 0x44]                   // 0x0048e2c3    8b4144
                         test               eax, eax                                      // 0x0048e2c6    85c0
                         {disp8} je         _jmp_addr_0x0048e2cf                          // 0x0048e2c8    7405
                         call               _jmp_addr_0x00637dd0                          // 0x0048e2ca    e8019b1a00
_jmp_addr_0x0048e2cf:    {disp32} mov       eax, dword ptr [data_bytes + 0x29e224]        // 0x0048e2cf    a12442c600
                         test               eax, eax                                      // 0x0048e2d4    85c0
                         {disp8} jne        _jmp_addr_0x0048e31f                          // 0x0048e2d6    7547
                         xor.s              ecx, ecx                                      // 0x0048e2d8    33c9
                         call               @Create__10LH3DObjectFQ210LH3DObject10ObjectType@4                          // 0x0048e2da    e8f1d13700
                         push               0x0                                           // 0x0048e2df    6a00
                         push               0x0                                           // 0x0048e2e1    6a00
                         push               0x0                                           // 0x0048e2e3    6a00
                         {disp32} mov       dword ptr [data_bytes + 0x29e224], eax        // 0x0048e2e5    a32442c600
                         mov                esi, dword ptr [eax]                          // 0x0048e2ea    8b30
                         push               0x009d114c                                    // 0x0048e2ec    684c119d00
                         call               ?CreateFromHD@LH3DMesh@@SAPAV1@PBD_N@Z        // 0x0048e2f1    e8fa843700
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x29e224]        // 0x0048e2f6    8b0d2442c600
                         add                esp, 0x08                                     // 0x0048e2fc    83c408
                         mov.s              edx, eax                                      // 0x0048e2ff    8bd0
                         call               dword ptr [esi + 0xf4]                        // 0x0048e301    ff96f4000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x29e224]        // 0x0048e307    a12442c600
                         mov                edx, 0x00000001                               // 0x0048e30c    ba01000000
                         {disp8} mov        dword ptr [eax + 0x0c], edx                   // 0x0048e311    89500c
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x29e224]        // 0x0048e314    8b0d2442c600
                         mov                eax, dword ptr [ecx]                          // 0x0048e31a    8b01
                         call               dword ptr [eax + 0x58]                        // 0x0048e31c    ff5058
_jmp_addr_0x0048e31f:    {disp32} mov       eax, dword ptr [data_bytes + 0x29e228]        // 0x0048e31f    a12842c600
                         test               eax, eax                                      // 0x0048e324    85c0
                         {disp8} jne        _jmp_addr_0x0048e367                          // 0x0048e326    753f
                         xor.s              ecx, ecx                                      // 0x0048e328    33c9
                         call               @Create__10LH3DObjectFQ210LH3DObject10ObjectType@4                          // 0x0048e32a    e8a1d13700
                         push               0x0                                           // 0x0048e32f    6a00
                         push               0x0                                           // 0x0048e331    6a00
                         push               0x0                                           // 0x0048e333    6a00
                         {disp32} mov       dword ptr [data_bytes + 0x29e228], eax        // 0x0048e335    a32842c600
                         mov                esi, dword ptr [eax]                          // 0x0048e33a    8b30
                         push               0x009d113c                                    // 0x0048e33c    683c119d00
                         call               ?CreateFromHD@LH3DMesh@@SAPAV1@PBD_N@Z        // 0x0048e341    e8aa843700
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x29e228]        // 0x0048e346    8b0d2842c600
                         add                esp, 0x08                                     // 0x0048e34c    83c408
                         mov.s              edx, eax                                      // 0x0048e34f    8bd0
                         call               dword ptr [esi + 0xf4]                        // 0x0048e351    ff96f4000000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x29e228]        // 0x0048e357    8b0d2842c600
                         mov                eax, dword ptr [ecx]                          // 0x0048e35d    8b01
                         mov                edx, 0x00000001                               // 0x0048e35f    ba01000000
                         call               dword ptr [eax + 0x58]                        // 0x0048e364    ff5058
_jmp_addr_0x0048e367:    {disp32} mov       ecx, dword ptr [data_bytes + 0x29e224]        // 0x0048e367    8b0d2442c600
                         {disp32} mov       edx, dword ptr [data_bytes + 0x29e228]        // 0x0048e36d    8b152842c600
                         push               ebx                                           // 0x0048e373    53
                         push               ebp                                           // 0x0048e374    55
                         xor.s              ebp, ebp                                      // 0x0048e375    33ed
                         {disp8} lea        esi, dword ptr [ecx + 0x14]                   // 0x0048e377    8d7114
                         {disp8} lea        ebx, dword ptr [edx + 0x14]                   // 0x0048e37a    8d5a14
                         {disp8} mov        byte ptr [esp + 0x2b], 0x00                   // 0x0048e37d    c644242b00
                         {disp8} mov        dword ptr [esp + 0x2c], ebp                   // 0x0048e382    896c242c
_jmp_addr_0x0048e386:    mov.s              ecx, edi                                      // 0x0048e386    8bcf
                         call               _jmp_addr_0x004ec3f0                          // 0x0048e388    e863e00500
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0048e38d    d95c2420
                         mov.s              ecx, edi                                      // 0x0048e391    8bcf
                         call               _jmp_addr_0x004ec450                          // 0x0048e393    e8b8e00500
                         {disp8} fmul       dword ptr [esp + 0x20]                        // 0x0048e398    d84c2420
                         cmp                dword ptr [edi + 0x00005460], 0x03            // 0x0048e39c    83bf6054000003
                         {disp32} fmul      dword ptr [edi + 0x00005474]                  // 0x0048e3a3    d88f74540000
                         {disp32} fmul      dword ptr [edi + 0x00000090]                  // 0x0048e3a9    d88f90000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x260a4]             // 0x0048e3af    d80da4f08c00
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0048e3b5    d95c2410
                         {disp8} jne        _jmp_addr_0x0048e3c9                          // 0x0048e3b9    750e
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0048e3bb    d9442410
                         {disp32} fmul      dword ptr [__real@3f8ccccd]                   // 0x0048e3bf    d80d30b28a00
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0048e3c5    d95c2410
_jmp_addr_0x0048e3c9:    {disp32} fld       dword ptr [edi + 0x00005464]                  // 0x0048e3c9    d98764540000
                         {disp32} mov       eax, dword ptr [edi + ebp * 0x4 + 0x00005518] // 0x0048e3cf    8b84af18550000
                         test               eax, eax                                      // 0x0048e3d6    85c0
                         {disp32} fadd      dword ptr [rdata_bytes + 0x2478]              // 0x0048e3d8    d80578b48a00
                         {disp32} fdivr     dword ptr [__real@3e999999]                   // 0x0048e3de    d83d3cb28a00
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0048e3e4    d95c2420
                         {disp32} je        _jmp_addr_0x0048f018                          // 0x0048e3e8    0f842a0c0000
                         {disp8} lea        eax, dword ptr [esp + 0x38]                   // 0x0048e3ee    8d442438
                         push               eax                                           // 0x0048e3f2    50
                         {disp8} lea        ecx, dword ptr [esp + 0x48]                   // 0x0048e3f3    8d4c2448
                         push               ecx                                           // 0x0048e3f7    51
                         push               ebp                                           // 0x0048e3f8    55
                         mov.s              ecx, edi                                      // 0x0048e3f9    8bcf
                         call               _jmp_addr_0x0048f0f0                          // 0x0048e3fb    e8f00c0000
                         {disp8} fld        dword ptr [esp + 0x40]                        // 0x0048e400    d9442440
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x0048e404    d944243c
                         fld                st(0)                                         // 0x0048e408    d9c0
                         fmul               st, st(1)                                     // 0x0048e40a    d8c9
                         push               ecx                                           // 0x0048e40c    51
                         fld                st(2)                                         // 0x0048e40d    d9c2
                         fmul               st, st(3)                                     // 0x0048e40f    d8cb
                         faddp              st(1), st                                     // 0x0048e411    dec1
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x0048e413    d944243c
                         {disp8} fmul       dword ptr [esp + 0x3c]                        // 0x0048e417    d84c243c
                         faddp              st(1), st                                     // 0x0048e41b    dec1
                         fstp               dword ptr [esp]                               // 0x0048e41d    d91c24
                         fstp               st(0)                                         // 0x0048e420    ddd8
                         fstp               st(0)                                         // 0x0048e422    ddd8
                         call               _jmp_addr_0x00841170                          // 0x0048e424    e8472d3b00
                         {disp32} mov       eax, dword ptr [edi + 0x00005460]             // 0x0048e429    8b8760540000
                         fld                st(0)                                         // 0x0048e42f    d9c0
                         {disp8} fmul       dword ptr [esp + 0x3c]                        // 0x0048e431    d84c243c
                         add                esp, 0x04                                     // 0x0048e435    83c404
                         test               eax, eax                                      // 0x0048e438    85c0
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x0048e43a    d95c2438
                         fld                st(0)                                         // 0x0048e43e    d9c0
                         {disp8} fmul       dword ptr [esp + 0x3c]                        // 0x0048e440    d84c243c
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x0048e444    d95c243c
                         {disp8} fmul       dword ptr [esp + 0x40]                        // 0x0048e448    d84c2440
                         {disp8} fstp       dword ptr [esp + 0x40]                        // 0x0048e44c    d95c2440
                         {disp32} jl        _jmp_addr_0x0048e5c9                          // 0x0048e450    0f8c73010000
                         cmp                eax, 0x03                                     // 0x0048e456    83f803
                         {disp8} jle        _jmp_addr_0x0048e48b                          // 0x0048e459    7e30
                         cmp                eax, 0x04                                     // 0x0048e45b    83f804
                         {disp32} jne       _jmp_addr_0x0048e5c9                          // 0x0048e45e    0f8565010000
                         {disp32} fld       dword ptr [edi + 0x00000084]                  // 0x0048e464    d98784000000
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000            // 0x0048e46a    c744241800000000
                         fld                st(0)                                         // 0x0048e472    d9c0
                         fsin                                                             // 0x0048e474    d9fe
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2678]              // 0x0048e476    d80d78b68a00
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0048e47c    d95c2414
                         fcos                                                             // 0x0048e480    d9ff
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0048e482    d95c241c
                         {disp32} jmp       _jmp_addr_0x0048e5c9                          // 0x0048e486    e93e010000
_jmp_addr_0x0048e48b:    mov.s              ecx, edi                                      // 0x0048e48b    8bcf
                         call               _jmp_addr_0x00482d40                          // 0x0048e48d    e8ae48ffff
                         test               eax, eax                                      // 0x0048e492    85c0
                         {disp32} je        _jmp_addr_0x0048e522                          // 0x0048e494    0f8488000000
                         {disp8} fld        dword ptr [esp + 0x44]                        // 0x0048e49a    d9442444
                         {disp32} fsub      dword ptr [edi + 0x000048c0]                  // 0x0048e49e    d8a7c0480000
                         {disp8} fstp       dword ptr [esp + 0x60]                        // 0x0048e4a4    d95c2460
                         {disp8} fld        dword ptr [esp + 0x48]                        // 0x0048e4a8    d9442448
                         {disp8} mov        edx, dword ptr [esp + 0x60]                   // 0x0048e4ac    8b542460
                         {disp32} fsub      dword ptr [edi + 0x000048c4]                  // 0x0048e4b0    d8a7c4480000
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x0048e4b6    89542414
                         {disp8} fstp       dword ptr [esp + 0x64]                        // 0x0048e4ba    d95c2464
                         {disp8} fld        dword ptr [esp + 0x4c]                        // 0x0048e4be    d944244c
                         {disp8} mov        eax, dword ptr [esp + 0x64]                   // 0x0048e4c2    8b442464
                         {disp32} fsub      dword ptr [edi + 0x000048c8]                  // 0x0048e4c6    d8a7c8480000
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x0048e4cc    89442418
                         {disp8} fstp       dword ptr [esp + 0x68]                        // 0x0048e4d0    d95c2468
                         {disp8} fld        dword ptr [esp + 0x68]                        // 0x0048e4d4    d9442468
                         {disp8} mov        ecx, dword ptr [esp + 0x68]                   // 0x0048e4d8    8b4c2468
                         {disp8} fld        dword ptr [esp + 0x64]                        // 0x0048e4dc    d9442464
                         {disp8} fld        dword ptr [esp + 0x60]                        // 0x0048e4e0    d9442460
                         {disp8} fmul       dword ptr [esp + 0x60]                        // 0x0048e4e4    d84c2460
                         push               ecx                                           // 0x0048e4e8    51
                         fld                st(1)                                         // 0x0048e4e9    d9c1
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x0048e4eb    894c2420
                         fmul               st, st(2)                                     // 0x0048e4ef    d8ca
                         faddp              st(1), st                                     // 0x0048e4f1    dec1
                         fld                st(2)                                         // 0x0048e4f3    d9c2
                         fmul               st, st(3)                                     // 0x0048e4f5    d8cb
                         faddp              st(1), st                                     // 0x0048e4f7    dec1
                         fstp               dword ptr [esp]                               // 0x0048e4f9    d91c24
                         fstp               st(0)                                         // 0x0048e4fc    ddd8
                         fstp               st(0)                                         // 0x0048e4fe    ddd8
                         call               _jmp_addr_0x00841170                          // 0x0048e500    e86b2c3b00
                         {disp8} fld        dword ptr [esp + 0x64]                        // 0x0048e505    d9442464
                         add                esp, 0x04                                     // 0x0048e509    83c404
                         fmul               st, st(1)                                     // 0x0048e50c    d8c9
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0048e50e    d95c2414
                         fld                st(0)                                         // 0x0048e512    d9c0
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x0048e514    d84c2418
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0048e518    d95c2418
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x0048e51c    d84c241c
                         {disp8} jmp        _jmp_addr_0x0048e540                          // 0x0048e520    eb1e
_jmp_addr_0x0048e522:    {disp32} fld       dword ptr [edi + 0x00000084]                  // 0x0048e522    d98784000000
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000            // 0x0048e528    c744241800000000
                         fld                st(0)                                         // 0x0048e530    d9c0
                         fsin                                                             // 0x0048e532    d9fe
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2678]              // 0x0048e534    d80d78b68a00
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0048e53a    d95c2414
                         fcos                                                             // 0x0048e53e    d9ff
_jmp_addr_0x0048e540:    {disp32} mov       eax, dword ptr [edi + 0x00005460]             // 0x0048e540    8b8760540000
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0048e546    d95c241c
                         cmp                eax, 0x03                                     // 0x0048e54a    83f803
                         {disp8} jne        _jmp_addr_0x0048e5c9                          // 0x0048e54d    757a
                         push               0x000000c9                                    // 0x0048e54f    68c9000000
                         call               ?LocalRand@GRand@@SAIJ@Z                      // 0x0048e554    e817002500
                         sub                eax, 0x64                                     // 0x0048e559    83e864
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x0048e55c    89442428
                         {disp8} fild       dword ptr [esp + 0x28]                        // 0x0048e560    db442428
                         push               0x000000c9                                    // 0x0048e564    68c9000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x261bc]             // 0x0048e569    d80dbcf18c00
                         {disp8} fadd       dword ptr [esp + 0x1c]                        // 0x0048e56f    d844241c
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0048e573    d95c241c
                         call               ?LocalRand@GRand@@SAIJ@Z                      // 0x0048e577    e8f4ff2400
                         sub                eax, 0x64                                     // 0x0048e57c    83e864
                         {disp8} mov        dword ptr [esp + 0x2c], eax                   // 0x0048e57f    8944242c
                         {disp8} fild       dword ptr [esp + 0x2c]                        // 0x0048e583    db44242c
                         push               0x000000c9                                    // 0x0048e587    68c9000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x261bc]             // 0x0048e58c    d80dbcf18c00
                         {disp8} fadd       dword ptr [esp + 0x24]                        // 0x0048e592    d8442424
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x0048e596    d95c2424
                         call               ?LocalRand@GRand@@SAIJ@Z                      // 0x0048e59a    e8d1ff2400
                         add                esp, 0x0c                                     // 0x0048e59f    83c40c
                         sub                eax, 0x64                                     // 0x0048e5a2    83e864
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x0048e5a5    89442424
                         {disp8} fild       dword ptr [esp + 0x24]                        // 0x0048e5a9    db442424
                         {disp32} fmul      dword ptr [rdata_bytes + 0x261bc]             // 0x0048e5ad    d80dbcf18c00
                         {disp8} fadd       dword ptr [esp + 0x1c]                        // 0x0048e5b3    d844241c
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0048e5b7    d95c241c
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0048e5bb    d9442420
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26e4]              // 0x0048e5bf    d80de4b68a00
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0048e5c5    d95c2420
_jmp_addr_0x0048e5c9:    {disp8} fld        dword ptr [esp + 0x40]                        // 0x0048e5c9    d9442440
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x0048e5cd    d84c241c
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x0048e5d1    d944243c
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x0048e5d5    d84c2418
                         faddp              st(1), st                                     // 0x0048e5d9    dec1
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x0048e5db    d9442438
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x0048e5df    d84c2414
                         faddp              st(1), st                                     // 0x0048e5e3    dec1
                         {disp32} fcom      dword ptr [__real@3dcccccd]                   // 0x0048e5e5    d8152cb28a00
                         fnstsw             ax                                            // 0x0048e5eb    dfe0
                         test               ah, 0x01                                      // 0x0048e5ed    f6c401
                         {disp8} je         _jmp_addr_0x0048e63e                          // 0x0048e5f0    744c
                         {disp32} fsubr     dword ptr [__real@3dcccccd]                   // 0x0048e5f2    d82d2cb28a00
                         fld                st(0)                                         // 0x0048e5f8    d9c0
                         {disp8} fmul       dword ptr [esp + 0x38]                        // 0x0048e5fa    d84c2438
                         {disp32} fstp      dword ptr [esp + 0x000000c8]                  // 0x0048e5fe    d99c24c8000000
                         fld                st(0)                                         // 0x0048e605    d9c0
                         {disp8} fmul       dword ptr [esp + 0x3c]                        // 0x0048e607    d84c243c
                         {disp32} fstp      dword ptr [esp + 0x000000cc]                  // 0x0048e60b    d99c24cc000000
                         {disp8} fmul       dword ptr [esp + 0x40]                        // 0x0048e612    d84c2440
                         {disp32} fld       dword ptr [esp + 0x000000c8]                  // 0x0048e616    d98424c8000000
                         {disp8} fadd       dword ptr [esp + 0x14]                        // 0x0048e61d    d8442414
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0048e621    d95c2414
                         {disp32} fld       dword ptr [esp + 0x000000cc]                  // 0x0048e625    d98424cc000000
                         {disp8} fadd       dword ptr [esp + 0x18]                        // 0x0048e62c    d8442418
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0048e630    d95c2418
                         {disp8} fadd       dword ptr [esp + 0x1c]                        // 0x0048e634    d844241c
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0048e638    d95c241c
                         {disp8} jmp        _jmp_addr_0x0048e640                          // 0x0048e63c    eb02
_jmp_addr_0x0048e63e:    fstp               st(0)                                         // 0x0048e63e    ddd8
_jmp_addr_0x0048e640:    {disp8} fld        dword ptr [esp + 0x1c]                        // 0x0048e640    d944241c
                         push               ecx                                           // 0x0048e644    51
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x0048e645    d944241c
                         fld                st(1)                                         // 0x0048e649    d9c1
                         fmul               st, st(2)                                     // 0x0048e64b    d8ca
                         fld                st(1)                                         // 0x0048e64d    d9c1
                         fmul               st, st(2)                                     // 0x0048e64f    d8ca
                         faddp              st(1), st                                     // 0x0048e651    dec1
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x0048e653    d9442418
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x0048e657    d84c2418
                         faddp              st(1), st                                     // 0x0048e65b    dec1
                         fstp               dword ptr [esp]                               // 0x0048e65d    d91c24
                         fstp               st(0)                                         // 0x0048e660    ddd8
                         fstp               st(0)                                         // 0x0048e662    ddd8
                         call               _jmp_addr_0x00841170                          // 0x0048e664    e8072b3b00
                         {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x0048e669    8b442424
                         fld                st(0)                                         // 0x0048e66d    d9c0
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x0048e66f    d84c2418
                         add                esp, 0x04                                     // 0x0048e673    83c404
                         {disp8} lea        edx, dword ptr [ebp + ebp * 0x8 + 0x00]       // 0x0048e676    8d54ed00
                         push               eax                                           // 0x0048e67a    50
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0048e67b    d95c2418
                         shl                edx, 4                                        // 0x0048e67f    c1e204
                         push               0x0                                           // 0x0048e682    6a00
                         fld                st(0)                                         // 0x0048e684    d9c0
                         {disp32} lea       ebp, dword ptr [edx + edi * 0x1 + 0x00005538] // 0x0048e686    8dac3a38550000
                         {disp8} fmul       dword ptr [esp + 0x20]                        // 0x0048e68d    d84c2420
                         push               ecx                                           // 0x0048e691    51
                         mov.s              ecx, ebp                                      // 0x0048e692    8bcd
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x0048e694    d95c2424
                         {disp8} fmul       dword ptr [esp + 0x28]                        // 0x0048e698    d84c2428
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x0048e69c    d95c2428
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0048e6a0    d9442420
                         fstp               dword ptr [esp]                               // 0x0048e6a4    d91c24
                         call               @SetDestinationWithSpeedAndTime__6ZoomerFfff@20                          // 0x0048e6a7    e8b496f7ff
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x0048e6ac    d9442418
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x0048e6b0    8b4c2420
                         push               ecx                                           // 0x0048e6b4    51
                         push               0x0                                           // 0x0048e6b5    6a00
                         push               ecx                                           // 0x0048e6b7    51
                         fstp               dword ptr [esp]                               // 0x0048e6b8    d91c24
                         {disp8} lea        ecx, dword ptr [ebp + 0x30]                   // 0x0048e6bb    8d4d30
                         call               @SetDestinationWithSpeedAndTime__6ZoomerFfff@20                          // 0x0048e6be    e89d96f7ff
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x0048e6c3    d944241c
                         {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x0048e6c7    8b542420
                         push               edx                                           // 0x0048e6cb    52
                         push               0x0                                           // 0x0048e6cc    6a00
                         push               ecx                                           // 0x0048e6ce    51
                         fstp               dword ptr [esp]                               // 0x0048e6cf    d91c24
                         {disp8} lea        ecx, dword ptr [ebp + 0x60]                   // 0x0048e6d2    8d4d60
                         call               @SetDestinationWithSpeedAndTime__6ZoomerFfff@20                          // 0x0048e6d5    e88696f7ff
                         {disp32} fild      dword ptr [edi + 0x000048b4]                  // 0x0048e6da    db87b4480000
                         mov.s              ecx, ebp                                      // 0x0048e6e0    8bcd
                         {disp32} fmul      dword ptr [_rdata_float0p001]                 // 0x0048e6e2    d80db0a38a00
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0048e6e8    d95c2420
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x0048e6ec    8b442420
                         push               eax                                           // 0x0048e6f0    50
                         call               @Update__6ZoomerFf@12                         // 0x0048e6f1    e82a40fbff
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x0048e6f6    8b4c2420
                         push               ecx                                           // 0x0048e6fa    51
                         {disp8} lea        ecx, dword ptr [ebp + 0x30]                   // 0x0048e6fb    8d4d30
                         call               @Update__6ZoomerFf@12                         // 0x0048e6fe    e81d40fbff
                         {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x0048e703    8b542420
                         push               edx                                           // 0x0048e707    52
                         {disp8} lea        ecx, dword ptr [ebp + 0x60]                   // 0x0048e708    8d4d60
                         call               @Update__6ZoomerFf@12                         // 0x0048e70b    e81040fbff
                         {disp8} fld        dword ptr [ebp + 0x00]                        // 0x0048e710    d94500
                         {disp8} fstp       dword ptr [esp + 0x78]                        // 0x0048e713    d95c2478
                         {disp8} fld        dword ptr [ebp + 0x30]                        // 0x0048e717    d94530
                         {disp8} fstp       dword ptr [esp + 0x7c]                        // 0x0048e71a    d95c247c
                         {disp8} fld        dword ptr [ebp + 0x60]                        // 0x0048e71e    d94560
                         {disp32} mov       eax, dword ptr [data_bytes + 0x29e224]        // 0x0048e721    a12442c600
                         {disp8} mov        ecx, dword ptr [esp + 0x78]                   // 0x0048e726    8b4c2478
                         {disp8} mov        edx, dword ptr [esp + 0x7c]                   // 0x0048e72a    8b54247c
                         add                eax, 0x2c                                     // 0x0048e72e    83c02c
                         mov                dword ptr [eax], ecx                          // 0x0048e731    8908
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x0048e733    895004
                         {disp32} fstp      dword ptr [esp + 0x00000080]                  // 0x0048e736    d99c2480000000
                         {disp32} mov       ecx, dword ptr [esp + 0x00000080]             // 0x0048e73d    8b8c2480000000
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x0048e744    894808
                         {disp32} mov       edx, dword ptr [data_bytes + 0x29e224]        // 0x0048e747    8b152442c600
                         {disp8} fld        dword ptr [edx + 0x34]                        // 0x0048e74d    d94234
                         {disp8} lea        ebp, dword ptr [edx + 0x2c]                   // 0x0048e750    8d6a2c
                         {disp8} fld        dword ptr [ebp + 0x04]                        // 0x0048e753    d94504
                         {disp8} fld        dword ptr [ebp + 0x00]                        // 0x0048e756    d94500
                         fld                st(0)                                         // 0x0048e759    d9c0
                         push               ecx                                           // 0x0048e75b    51
                         fmul               st, st(1)                                     // 0x0048e75c    d8c9
                         fld                st(2)                                         // 0x0048e75e    d9c2
                         fmul               st, st(3)                                     // 0x0048e760    d8cb
                         faddp              st(1), st                                     // 0x0048e762    dec1
                         fld                st(3)                                         // 0x0048e764    d9c3
                         fmul               st, st(4)                                     // 0x0048e766    d8cc
                         faddp              st(1), st                                     // 0x0048e768    dec1
                         fstp               dword ptr [esp]                               // 0x0048e76a    d91c24
                         fstp               st(0)                                         // 0x0048e76d    ddd8
                         fstp               st(0)                                         // 0x0048e76f    ddd8
                         fstp               st(0)                                         // 0x0048e771    ddd8
                         call               _jmp_addr_0x00841170                          // 0x0048e773    e8f8293b00
                         fld                st(0)                                         // 0x0048e778    d9c0
                         {disp32} mov       dword ptr [esp + 0x000000c0], 0x00000000      // 0x0048e77a    c78424c000000000000000
                         {disp8} fmul       dword ptr [ebp + 0x00]                        // 0x0048e785    d84d00
                         {disp32} mov       edx, dword ptr [esp + 0x000000c0]             // 0x0048e788    8b9424c0000000
                         {disp8} fstp       dword ptr [ebp + 0x00]                        // 0x0048e78f    d95d00
                         fld                st(0)                                         // 0x0048e792    d9c0
                         {disp8} fmul       dword ptr [ebp + 0x04]                        // 0x0048e794    d84d04
                         {disp8} fstp       dword ptr [ebp + 0x04]                        // 0x0048e797    d95d04
                         {disp8} fmul       dword ptr [ebp + 0x08]                        // 0x0048e79a    d84d08
                         {disp8} fstp       dword ptr [ebp + 0x08]                        // 0x0048e79d    d95d08
                         {disp32} mov       eax, dword ptr [data_bytes + 0x29e224]        // 0x0048e7a0    a12442c600
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x0048e7a5    d90598a38a00
                         add                eax, 0x14                                     // 0x0048e7ab    83c014
                         fld                st(0)                                         // 0x0048e7ae    d9c0
                         {disp8} fsub       dword ptr [eax + 0x20]                        // 0x0048e7b0    d86020
                         {disp32} fstp      dword ptr [esp + 0x000000bc]                  // 0x0048e7b3    d99c24bc000000
                         {disp8} fld        dword ptr [eax + 0x18]                        // 0x0048e7ba    d94018
                         {disp32} mov       ecx, dword ptr [esp + 0x000000bc]             // 0x0048e7bd    8b8c24bc000000
                         fsub               st, st(1)                                     // 0x0048e7c4    d8e1
                         mov                dword ptr [eax], ecx                          // 0x0048e7c6    8908
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x0048e7c8    895004
                         {disp32} fstp      dword ptr [esp + 0x000000c4]                  // 0x0048e7cb    d99c24c4000000
                         {disp32} mov       ecx, dword ptr [esp + 0x000000c4]             // 0x0048e7d2    8b8c24c4000000
                         fstp               st(0)                                         // 0x0048e7d9    ddd8
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x0048e7db    894808
                         {disp32} mov       edx, dword ptr [data_bytes + 0x29e224]        // 0x0048e7de    8b152442c600
                         {disp8} fld        dword ptr [edx + 0x1c]                        // 0x0048e7e4    d9421c
                         {disp8} lea        ebp, dword ptr [edx + 0x14]                   // 0x0048e7e7    8d6a14
                         {disp8} fld        dword ptr [ebp + 0x04]                        // 0x0048e7ea    d94504
                         {disp8} fld        dword ptr [ebp + 0x00]                        // 0x0048e7ed    d94500
                         fld                st(0)                                         // 0x0048e7f0    d9c0
                         fmul               st, st(1)                                     // 0x0048e7f2    d8c9
                         fld                st(2)                                         // 0x0048e7f4    d9c2
                         fmul               st, st(3)                                     // 0x0048e7f6    d8cb
                         faddp              st(1), st                                     // 0x0048e7f8    dec1
                         fld                st(3)                                         // 0x0048e7fa    d9c3
                         fmul               st, st(4)                                     // 0x0048e7fc    d8cc
                         faddp              st(1), st                                     // 0x0048e7fe    dec1
                         fstp               dword ptr [esp]                               // 0x0048e800    d91c24
                         fstp               st(0)                                         // 0x0048e803    ddd8
                         fstp               st(0)                                         // 0x0048e805    ddd8
                         fstp               st(0)                                         // 0x0048e807    ddd8
                         call               _jmp_addr_0x00841170                          // 0x0048e809    e862293b00
                         fld                st(0)                                         // 0x0048e80e    d9c0
                         add                esp, 0x04                                     // 0x0048e810    83c404
                         {disp8} fmul       dword ptr [ebp + 0x00]                        // 0x0048e813    d84d00
                         {disp8} fstp       dword ptr [ebp + 0x00]                        // 0x0048e816    d95d00
                         fld                st(0)                                         // 0x0048e819    d9c0
                         {disp8} fmul       dword ptr [ebp + 0x04]                        // 0x0048e81b    d84d04
                         {disp8} fstp       dword ptr [ebp + 0x04]                        // 0x0048e81e    d95d04
                         {disp8} fmul       dword ptr [ebp + 0x08]                        // 0x0048e821    d84d08
                         {disp8} fstp       dword ptr [ebp + 0x08]                        // 0x0048e824    d95d08
                         {disp32} mov       eax, dword ptr [data_bytes + 0x29e224]        // 0x0048e827    a12442c600
                         {disp8} fld        dword ptr [eax + 0x30]                        // 0x0048e82c    d94030
                         add                eax, 0x20                                     // 0x0048e82f    83c020
                         {disp8} fmul       dword ptr [eax + -0x04]                       // 0x0048e832    d848fc
                         {disp8} fld        dword ptr [eax + -0x08]                       // 0x0048e835    d940f8
                         {disp8} fmul       dword ptr [eax + 0x14]                        // 0x0048e838    d84814
                         fsubp              st(1), st                                     // 0x0048e83b    dee9
                         {disp32} fstp      dword ptr [esp + 0x000000a4]                  // 0x0048e83d    d99c24a4000000
                         {disp8} fld        dword ptr [eax + 0x14]                        // 0x0048e844    d94014
                         {disp32} mov       ecx, dword ptr [esp + 0x000000a4]             // 0x0048e847    8b8c24a4000000
                         {disp8} fmul       dword ptr [eax + -0x0c]                       // 0x0048e84e    d848f4
                         {disp8} fld        dword ptr [eax + -0x04]                       // 0x0048e851    d940fc
                         {disp8} fmul       dword ptr [eax + 0x0c]                        // 0x0048e854    d8480c
                         fsubp              st(1), st                                     // 0x0048e857    dee9
                         {disp32} fstp      dword ptr [esp + 0x000000a8]                  // 0x0048e859    d99c24a8000000
                         {disp8} fld        dword ptr [eax + -0x08]                       // 0x0048e860    d940f8
                         {disp32} mov       edx, dword ptr [esp + 0x000000a8]             // 0x0048e863    8b9424a8000000
                         {disp8} fmul       dword ptr [eax + 0x0c]                        // 0x0048e86a    d8480c
                         {disp8} fld        dword ptr [eax + 0x10]                        // 0x0048e86d    d94010
                         {disp8} fmul       dword ptr [eax + -0x0c]                       // 0x0048e870    d848f4
                         mov                dword ptr [eax], ecx                          // 0x0048e873    8908
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x0048e875    895004
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                   // 0x0048e878    8b54242c
                         fsubp              st(1), st                                     // 0x0048e87c    dee9
                         {disp32} fstp      dword ptr [esp + 0x000000ac]                  // 0x0048e87e    d99c24ac000000
                         {disp32} mov       ecx, dword ptr [esp + 0x000000ac]             // 0x0048e885    8b8c24ac000000
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x0048e88c    894808
                         {disp32} fld       dword ptr [edi + edx * 0x4 + 0x00005528]      // 0x0048e88f    d9849728550000
                         fld                st(0)                                         // 0x0048e896    d9c0
                         {disp32} mov       eax, dword ptr [data_bytes + 0x29e224]        // 0x0048e898    a12442c600
                         {disp8} fmul       dword ptr [esp + 0x38]                        // 0x0048e89d    d84c2438
                         add                eax, 0x38                                     // 0x0048e8a1    83c038
                         {disp32} fstp      dword ptr [esp + 0x000000ec]                  // 0x0048e8a4    d99c24ec000000
                         fld                st(0)                                         // 0x0048e8ab    d9c0
                         {disp8} fmul       dword ptr [esp + 0x3c]                        // 0x0048e8ad    d84c243c
                         {disp32} fstp      dword ptr [esp + 0x000000f0]                  // 0x0048e8b1    d99c24f0000000
                         {disp8} fmul       dword ptr [esp + 0x40]                        // 0x0048e8b8    d84c2440
                         {disp8} fld        dword ptr [esp + 0x44]                        // 0x0048e8bc    d9442444
                         {disp32} fsub      dword ptr [esp + 0x000000ec]                  // 0x0048e8c0    d8a424ec000000
                         {disp8} fstp       dword ptr [esp + 0x44]                        // 0x0048e8c7    d95c2444
                         {disp8} mov        ecx, dword ptr [esp + 0x44]                   // 0x0048e8cb    8b4c2444
                         {disp8} fld        dword ptr [esp + 0x48]                        // 0x0048e8cf    d9442448
                         {disp32} fsub      dword ptr [esp + 0x000000f0]                  // 0x0048e8d3    d8a424f0000000
                         {disp8} fstp       dword ptr [esp + 0x48]                        // 0x0048e8da    d95c2448
                         {disp8} fld        dword ptr [esp + 0x4c]                        // 0x0048e8de    d944244c
                         fsub               st, st(1)                                     // 0x0048e8e2    d8e1
                         {disp8} fstp       dword ptr [esp + 0x4c]                        // 0x0048e8e4    d95c244c
                         mov                dword ptr [eax], ecx                          // 0x0048e8e8    8908
                         {disp8} mov        edx, dword ptr [esp + 0x48]                   // 0x0048e8ea    8b542448
                         fstp               st(0)                                         // 0x0048e8ee    ddd8
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x0048e8f0    895004
                         {disp8} mov        ecx, dword ptr [esp + 0x4c]                   // 0x0048e8f3    8b4c244c
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0048e8f7    d9442410
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x0048e8fb    894808
                         fmul               dword ptr [esi]                               // 0x0048e8fe    d80e
                         fstp               dword ptr [esi]                               // 0x0048e900    d91e
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0048e902    d9442410
                         {disp8} fmul       dword ptr [esi + 0x04]                        // 0x0048e906    d84e04
                         {disp8} fstp       dword ptr [esi + 0x04]                        // 0x0048e909    d95e04
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0048e90c    d9442410
                         {disp8} fmul       dword ptr [esi + 0x08]                        // 0x0048e910    d84e08
                         {disp8} fstp       dword ptr [esi + 0x08]                        // 0x0048e913    d95e08
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0048e916    d9442410
                         {disp8} fmul       dword ptr [esi + 0x0c]                        // 0x0048e91a    d84e0c
                         {disp8} fstp       dword ptr [esi + 0x0c]                        // 0x0048e91d    d95e0c
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0048e920    d9442410
                         {disp8} fmul       dword ptr [esi + 0x10]                        // 0x0048e924    d84e10
                         {disp8} fstp       dword ptr [esi + 0x10]                        // 0x0048e927    d95e10
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0048e92a    d9442410
                         {disp8} fmul       dword ptr [esi + 0x14]                        // 0x0048e92e    d84e14
                         {disp8} fstp       dword ptr [esi + 0x14]                        // 0x0048e931    d95e14
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0048e934    d9442410
                         {disp8} fmul       dword ptr [esi + 0x18]                        // 0x0048e938    d84e18
                         {disp8} fstp       dword ptr [esi + 0x18]                        // 0x0048e93b    d95e18
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0048e93e    d9442410
                         {disp8} fmul       dword ptr [esi + 0x1c]                        // 0x0048e942    d84e1c
                         {disp8} fstp       dword ptr [esi + 0x1c]                        // 0x0048e945    d95e1c
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0048e948    d9442410
                         {disp8} fmul       dword ptr [esi + 0x20]                        // 0x0048e94c    d84e20
                         {disp8} fstp       dword ptr [esi + 0x20]                        // 0x0048e94f    d95e20
                         {disp32} mov       eax, dword ptr [edi + 0x0000482c]             // 0x0048e952    8b872c480000
                         {disp8} mov        edx, dword ptr [eax + 0x50]                   // 0x0048e958    8b5050
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x29e224]        // 0x0048e95b    8b0d2442c600
                         mov                ebp, dword ptr [ecx]                          // 0x0048e961    8b29
                         push               edx                                           // 0x0048e963    52
                         {disp8} mov        edx, dword ptr [eax + 0x4c]                   // 0x0048e964    8b504c
                         call               dword ptr [ebp + 0x2c]                        // 0x0048e967    ff552c
                         {disp32} mov       edx, dword ptr [edi + 0x0000482c]             // 0x0048e96a    8b972c480000
                         {disp32} fld       dword ptr [edx + 0x00000094]                  // 0x0048e970    d98294000000
                         {disp8} fst        dword ptr [esp + 0x24]                        // 0x0048e976    d9542424
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0048e97a    d81d98a38a00
                         fnstsw             ax                                            // 0x0048e980    dfe0
                         test               ah, 0x40                                      // 0x0048e982    f6c440
                         {disp8} jne        _jmp_addr_0x0048e9aa                          // 0x0048e985    7523
                         {disp32} mov       ebp, dword ptr [edx + 0x00000090]             // 0x0048e987    8baa90000000
                         {disp32} mov       edx, dword ptr [edx + 0x00000098]             // 0x0048e98d    8b9298000000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x29e224]        // 0x0048e993    8b0d2442c600
                         mov                eax, dword ptr [ecx]                          // 0x0048e999    8b01
                         push               ebp                                           // 0x0048e99b    55
                         push               edx                                           // 0x0048e99c    52
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                   // 0x0048e99d    8b54242c
                         push               edx                                           // 0x0048e9a1    52
                         call               dword ptr [eax + 0x15c]                       // 0x0048e9a2    ff905c010000
                         {disp8} jmp        _jmp_addr_0x0048e9e3                          // 0x0048e9a8    eb39
_jmp_addr_0x0048e9aa:    {disp32} fld       dword ptr [edx + 0x000000a0]                  // 0x0048e9aa    d982a0000000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x29e224]        // 0x0048e9b0    8b0d2442c600
                         {disp8} fst        dword ptr [esp + 0x24]                        // 0x0048e9b6    d9542424
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0048e9ba    d81d98a38a00
                         fnstsw             ax                                            // 0x0048e9c0    dfe0
                         test               ah, 0x40                                      // 0x0048e9c2    f6c440
                         mov                eax, dword ptr [ecx]                          // 0x0048e9c5    8b01
                         {disp8} jne        _jmp_addr_0x0048e9dd                          // 0x0048e9c7    7514
                         {disp32} mov       edx, dword ptr [edx + 0x0000009c]             // 0x0048e9c9    8b929c000000
                         push               edx                                           // 0x0048e9cf    52
                         {disp8} mov        edx, dword ptr [esp + 0x28]                   // 0x0048e9d0    8b542428
                         push               edx                                           // 0x0048e9d4    52
                         call               dword ptr [eax + 0x154]                       // 0x0048e9d5    ff9054010000
                         {disp8} jmp        _jmp_addr_0x0048e9e3                          // 0x0048e9db    eb06
_jmp_addr_0x0048e9dd:    call               dword ptr [eax + 0x108]                       // 0x0048e9dd    ff9008010000
_jmp_addr_0x0048e9e3:    {disp8} mov        ecx, dword ptr [esp + 0x2c]                   // 0x0048e9e3    8b4c242c
                         {disp32} mov       eax, dword ptr [edi + ecx * 0x4 + 0x00005520] // 0x0048e9e7    8b848f20550000
                         test               eax, eax                                      // 0x0048e9ee    85c0
                         {disp32} je        _jmp_addr_0x0048f014                          // 0x0048e9f0    0f841e060000
                         {disp32} lea       edx, dword ptr [esp + 0x000000f8]             // 0x0048e9f6    8d9424f8000000
                         push               edx                                           // 0x0048e9fd    52
                         {disp8} lea        eax, dword ptr [esp + 0x70]                   // 0x0048e9fe    8d442470
                         add                ecx, 0x2                                      // 0x0048ea02    83c102
                         push               eax                                           // 0x0048ea05    50
                         push               ecx                                           // 0x0048ea06    51
                         mov.s              ecx, edi                                      // 0x0048ea07    8bcf
                         call               _jmp_addr_0x0048f0f0                          // 0x0048ea09    e8e2060000
                         {disp8} fld        dword ptr [esp + 0x40]                        // 0x0048ea0e    d9442440
                         {disp32} mov       edx, dword ptr [data_bytes + 0x29e228]        // 0x0048ea12    8b152842c600
                         fchs                                                             // 0x0048ea18    d9e0
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x0048ea1a    d944243c
                         {disp8} lea        eax, dword ptr [edx + 0x2c]                   // 0x0048ea1e    8d422c
                         fchs                                                             // 0x0048ea21    d9e0
                         push               ecx                                           // 0x0048ea23    51
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x0048ea24    d944243c
                         fchs                                                             // 0x0048ea28    d9e0
                         fstp               dword ptr [eax]                               // 0x0048ea2a    d918
                         {disp8} fstp       dword ptr [eax + 0x04]                        // 0x0048ea2c    d95804
                         {disp8} fstp       dword ptr [eax + 0x08]                        // 0x0048ea2f    d95808
                         {disp32} mov       eax, dword ptr [data_bytes + 0x29e228]        // 0x0048ea32    a12842c600
                         {disp8} fld        dword ptr [eax + 0x34]                        // 0x0048ea37    d94034
                         {disp8} lea        ebp, dword ptr [eax + 0x2c]                   // 0x0048ea3a    8d682c
                         {disp8} fld        dword ptr [ebp + 0x04]                        // 0x0048ea3d    d94504
                         {disp8} fld        dword ptr [ebp + 0x00]                        // 0x0048ea40    d94500
                         fld                st(0)                                         // 0x0048ea43    d9c0
                         fmul               st, st(1)                                     // 0x0048ea45    d8c9
                         fld                st(2)                                         // 0x0048ea47    d9c2
                         fmul               st, st(3)                                     // 0x0048ea49    d8cb
                         faddp              st(1), st                                     // 0x0048ea4b    dec1
                         fld                st(3)                                         // 0x0048ea4d    d9c3
                         fmul               st, st(4)                                     // 0x0048ea4f    d8cc
                         faddp              st(1), st                                     // 0x0048ea51    dec1
                         fstp               dword ptr [esp]                               // 0x0048ea53    d91c24
                         fstp               st(0)                                         // 0x0048ea56    ddd8
                         fstp               st(0)                                         // 0x0048ea58    ddd8
                         fstp               st(0)                                         // 0x0048ea5a    ddd8
                         call               _jmp_addr_0x00841170                          // 0x0048ea5c    e80f273b00
                         {disp8} mov        eax, dword ptr [esp + 0x30]                   // 0x0048ea61    8b442430
                         fld                st(0)                                         // 0x0048ea65    d9c0
                         {disp8} fmul       dword ptr [ebp + 0x00]                        // 0x0048ea67    d84d00
                         add                esp, 0x04                                     // 0x0048ea6a    83c404
                         test               eax, eax                                      // 0x0048ea6d    85c0
                         {disp8} fstp       dword ptr [ebp + 0x00]                        // 0x0048ea6f    d95d00
                         fld                st(0)                                         // 0x0048ea72    d9c0
                         {disp8} fmul       dword ptr [ebp + 0x04]                        // 0x0048ea74    d84d04
                         {disp8} fstp       dword ptr [ebp + 0x04]                        // 0x0048ea77    d95d04
                         {disp8} fmul       dword ptr [ebp + 0x08]                        // 0x0048ea7a    d84d08
                         {disp8} fstp       dword ptr [ebp + 0x08]                        // 0x0048ea7d    d95d08
                         {disp8} jne        _jmp_addr_0x0048eab8                          // 0x0048ea80    7536
                         {disp8} fld        dword ptr [esp + 0x6c]                        // 0x0048ea82    d944246c
                         {disp32} lea       eax, dword ptr [esp + 0x000000d4]             // 0x0048ea86    8d8424d4000000
                         {disp8} fsub       dword ptr [esp + 0x44]                        // 0x0048ea8d    d8642444
                         {disp32} fstp      dword ptr [esp + 0x000000d4]                  // 0x0048ea91    d99c24d4000000
                         {disp8} fld        dword ptr [esp + 0x70]                        // 0x0048ea98    d9442470
                         {disp8} fsub       dword ptr [esp + 0x48]                        // 0x0048ea9c    d8642448
                         {disp32} fstp      dword ptr [esp + 0x000000d8]                  // 0x0048eaa0    d99c24d8000000
                         {disp8} fld        dword ptr [esp + 0x74]                        // 0x0048eaa7    d9442474
                         {disp8} fsub       dword ptr [esp + 0x4c]                        // 0x0048eaab    d864244c
                         {disp32} fstp      dword ptr [esp + 0x000000dc]                  // 0x0048eaaf    d99c24dc000000
                         {disp8} jmp        _jmp_addr_0x0048eaec                          // 0x0048eab6    eb34
_jmp_addr_0x0048eab8:    {disp8} fld        dword ptr [esp + 0x44]                        // 0x0048eab8    d9442444
                         {disp32} lea       eax, dword ptr [esp + 0x000000e0]             // 0x0048eabc    8d8424e0000000
                         {disp8} fsub       dword ptr [esp + 0x6c]                        // 0x0048eac3    d864246c
                         {disp32} fstp      dword ptr [esp + 0x000000e0]                  // 0x0048eac7    d99c24e0000000
                         {disp8} fld        dword ptr [esp + 0x48]                        // 0x0048eace    d9442448
                         {disp8} fsub       dword ptr [esp + 0x70]                        // 0x0048ead2    d8642470
                         {disp32} fstp      dword ptr [esp + 0x000000e4]                  // 0x0048ead6    d99c24e4000000
                         {disp8} fld        dword ptr [esp + 0x4c]                        // 0x0048eadd    d944244c
                         {disp8} fsub       dword ptr [esp + 0x74]                        // 0x0048eae1    d8642474
                         {disp32} fstp      dword ptr [esp + 0x000000e8]                  // 0x0048eae5    d99c24e8000000
_jmp_addr_0x0048eaec:    {disp32} mov       ecx, dword ptr [data_bytes + 0x29e228]        // 0x0048eaec    8b0d2842c600
                         mov                edx, dword ptr [eax]                          // 0x0048eaf2    8b10
                         add                ecx, 0x14                                     // 0x0048eaf4    83c114
                         mov                dword ptr [ecx], edx                          // 0x0048eaf7    8911
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x0048eaf9    8b5004
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0048eafc    8b4008
                         {disp8} mov        dword ptr [ecx + 0x04], edx                   // 0x0048eaff    895104
                         {disp8} mov        dword ptr [ecx + 0x08], eax                   // 0x0048eb02    894108
                         {disp32} mov       eax, dword ptr [data_bytes + 0x29e228]        // 0x0048eb05    a12842c600
                         {disp8} fld        dword ptr [eax + 0x18]                        // 0x0048eb0a    d94018
                         add                eax, 0x20                                     // 0x0048eb0d    83c020
                         {disp8} fmul       dword ptr [eax + 0x14]                        // 0x0048eb10    d84814
                         {disp8} fld        dword ptr [eax + 0x10]                        // 0x0048eb13    d94010
                         {disp8} fmul       dword ptr [eax + -0x04]                       // 0x0048eb16    d848fc
                         fsubp              st(1), st                                     // 0x0048eb19    dee9
                         {disp32} fstp      dword ptr [esp + 0x00000084]                  // 0x0048eb1b    d99c2484000000
                         {disp8} fld        dword ptr [eax + 0x0c]                        // 0x0048eb22    d9400c
                         {disp32} mov       ecx, dword ptr [esp + 0x00000084]             // 0x0048eb25    8b8c2484000000
                         {disp8} fmul       dword ptr [eax + -0x04]                       // 0x0048eb2c    d848fc
                         {disp8} fld        dword ptr [eax + -0x0c]                       // 0x0048eb2f    d940f4
                         {disp8} fmul       dword ptr [eax + 0x14]                        // 0x0048eb32    d84814
                         fsubp              st(1), st                                     // 0x0048eb35    dee9
                         {disp32} fstp      dword ptr [esp + 0x00000088]                  // 0x0048eb37    d99c2488000000
                         {disp8} fld        dword ptr [eax + 0x10]                        // 0x0048eb3e    d94010
                         {disp32} mov       edx, dword ptr [esp + 0x00000088]             // 0x0048eb41    8b942488000000
                         {disp8} fmul       dword ptr [eax + -0x0c]                       // 0x0048eb48    d848f4
                         {disp8} fld        dword ptr [eax + -0x08]                       // 0x0048eb4b    d940f8
                         {disp8} fmul       dword ptr [eax + 0x0c]                        // 0x0048eb4e    d8480c
                         mov                dword ptr [eax], ecx                          // 0x0048eb51    8908
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x0048eb53    895004
                         fsubp              st(1), st                                     // 0x0048eb56    dee9
                         {disp32} fstp      dword ptr [esp + 0x0000008c]                  // 0x0048eb58    d99c248c000000
                         {disp32} mov       ecx, dword ptr [esp + 0x0000008c]             // 0x0048eb5f    8b8c248c000000
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x0048eb66    894808
                         {disp32} mov       edx, dword ptr [data_bytes + 0x29e228]        // 0x0048eb69    8b152842c600
                         {disp8} fld        dword ptr [edx + 0x28]                        // 0x0048eb6f    d94228
                         {disp8} lea        ebp, dword ptr [edx + 0x20]                   // 0x0048eb72    8d6a20
                         {disp8} fld        dword ptr [ebp + 0x04]                        // 0x0048eb75    d94504
                         {disp8} fld        dword ptr [ebp + 0x00]                        // 0x0048eb78    d94500
                         fld                st(0)                                         // 0x0048eb7b    d9c0
                         push               ecx                                           // 0x0048eb7d    51
                         fmul               st, st(1)                                     // 0x0048eb7e    d8c9
                         fld                st(2)                                         // 0x0048eb80    d9c2
                         fmul               st, st(3)                                     // 0x0048eb82    d8cb
                         faddp              st(1), st                                     // 0x0048eb84    dec1
                         fld                st(3)                                         // 0x0048eb86    d9c3
                         fmul               st, st(4)                                     // 0x0048eb88    d8cc
                         faddp              st(1), st                                     // 0x0048eb8a    dec1
                         fstp               dword ptr [esp]                               // 0x0048eb8c    d91c24
                         fstp               st(0)                                         // 0x0048eb8f    ddd8
                         fstp               st(0)                                         // 0x0048eb91    ddd8
                         fstp               st(0)                                         // 0x0048eb93    ddd8
                         call               _jmp_addr_0x00841170                          // 0x0048eb95    e8d6253b00
                         fld                st(0)                                         // 0x0048eb9a    d9c0
                         add                esp, 0x04                                     // 0x0048eb9c    83c404
                         {disp8} fmul       dword ptr [ebp + 0x00]                        // 0x0048eb9f    d84d00
                         {disp8} fstp       dword ptr [ebp + 0x00]                        // 0x0048eba2    d95d00
                         fld                st(0)                                         // 0x0048eba5    d9c0
                         {disp8} fmul       dword ptr [ebp + 0x04]                        // 0x0048eba7    d84d04
                         {disp8} fstp       dword ptr [ebp + 0x04]                        // 0x0048ebaa    d95d04
                         {disp8} fmul       dword ptr [ebp + 0x08]                        // 0x0048ebad    d84d08
                         {disp8} fstp       dword ptr [ebp + 0x08]                        // 0x0048ebb0    d95d08
                         {disp32} mov       eax, dword ptr [data_bytes + 0x29e228]        // 0x0048ebb3    a12842c600
                         {disp8} fld        dword ptr [eax + 0x34]                        // 0x0048ebb8    d94034
                         {disp8} fmul       dword ptr [eax + 0x24]                        // 0x0048ebbb    d84824
                         {disp8} fld        dword ptr [eax + 0x28]                        // 0x0048ebbe    d94028
                         {disp8} fmul       dword ptr [eax + 0x30]                        // 0x0048ebc1    d84830
                         fsubp              st(1), st                                     // 0x0048ebc4    dee9
                         {disp32} fstp      dword ptr [esp + 0x00000090]                  // 0x0048ebc6    d99c2490000000
                         {disp8} fld        dword ptr [eax + 0x28]                        // 0x0048ebcd    d94028
                         {disp8} fmul       dword ptr [eax + 0x2c]                        // 0x0048ebd0    d8482c
                         {disp8} fld        dword ptr [eax + 0x34]                        // 0x0048ebd3    d94034
                         {disp8} fmul       dword ptr [eax + 0x20]                        // 0x0048ebd6    d84820
                         {disp32} mov       ecx, dword ptr [esp + 0x00000090]             // 0x0048ebd9    8b8c2490000000
                         add                eax, 0x14                                     // 0x0048ebe0    83c014
                         fsubp              st(1), st                                     // 0x0048ebe3    dee9
                         {disp32} fstp      dword ptr [esp + 0x00000094]                  // 0x0048ebe5    d99c2494000000
                         {disp8} fld        dword ptr [eax + 0x0c]                        // 0x0048ebec    d9400c
                         {disp32} mov       edx, dword ptr [esp + 0x00000094]             // 0x0048ebef    8b942494000000
                         {disp8} fmul       dword ptr [eax + 0x1c]                        // 0x0048ebf6    d8481c
                         {disp8} fld        dword ptr [eax + 0x18]                        // 0x0048ebf9    d94018
                         {disp8} fmul       dword ptr [eax + 0x10]                        // 0x0048ebfc    d84810
                         mov                dword ptr [eax], ecx                          // 0x0048ebff    8908
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x0048ec01    895004
                         fsubp              st(1), st                                     // 0x0048ec04    dee9
                         {disp32} fstp      dword ptr [esp + 0x00000098]                  // 0x0048ec06    d99c2498000000
                         {disp32} mov       ecx, dword ptr [esp + 0x00000098]             // 0x0048ec0d    8b8c2498000000
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x0048ec14    894808
                         {disp32} mov       edx, dword ptr [data_bytes + 0x29e228]        // 0x0048ec17    8b152842c600
                         {disp8} mov        eax, dword ptr [esp + 0x44]                   // 0x0048ec1d    8b442444
                         add                edx, 0x38                                     // 0x0048ec21    83c238
                         mov                dword ptr [edx], eax                          // 0x0048ec24    8902
                         {disp8} mov        ecx, dword ptr [esp + 0x48]                   // 0x0048ec26    8b4c2448
                         {disp8} mov        dword ptr [edx + 0x04], ecx                   // 0x0048ec2a    894a04
                         {disp8} mov        eax, dword ptr [esp + 0x4c]                   // 0x0048ec2d    8b44244c
                         {disp8} mov        dword ptr [edx + 0x08], eax                   // 0x0048ec31    894208
                         {disp32} mov       eax, dword ptr [data_bytes + 0x29e228]        // 0x0048ec34    a12842c600
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x29e224]        // 0x0048ec39    8b0d2442c600
                         {disp8} fld        dword ptr [eax + 0x28]                        // 0x0048ec3f    d94028
                         {disp8} fmul       dword ptr [ecx + 0x34]                        // 0x0048ec42    d84934
                         {disp8} fld        dword ptr [eax + 0x24]                        // 0x0048ec45    d94024
                         {disp8} fmul       dword ptr [ecx + 0x30]                        // 0x0048ec48    d84930
                         faddp              st(1), st                                     // 0x0048ec4b    dec1
                         {disp8} fld        dword ptr [eax + 0x20]                        // 0x0048ec4d    d94020
                         {disp8} mov        al, byte ptr [esp + 0x2b]                     // 0x0048ec50    8a44242b
                         test               al, al                                        // 0x0048ec54    84c0
                         {disp8} fmul       dword ptr [ecx + 0x2c]                        // 0x0048ec56    d8492c
                         faddp              st(1), st                                     // 0x0048ec59    dec1
                         {disp8} fdiv       dword ptr [esp + 0x10]                        // 0x0048ec5b    d8742410
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x0048ec5f    d95c2434
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0048ec63    d9442410
                         fmul               dword ptr [ebx]                               // 0x0048ec67    d80b
                         fstp               dword ptr [ebx]                               // 0x0048ec69    d91b
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0048ec6b    d9442410
                         {disp8} fmul       dword ptr [ebx + 0x04]                        // 0x0048ec6f    d84b04
                         {disp8} fstp       dword ptr [ebx + 0x04]                        // 0x0048ec72    d95b04
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0048ec75    d9442410
                         {disp8} fmul       dword ptr [ebx + 0x08]                        // 0x0048ec79    d84b08
                         {disp8} fstp       dword ptr [ebx + 0x08]                        // 0x0048ec7c    d95b08
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0048ec7f    d9442410
                         {disp8} fmul       dword ptr [ebx + 0x0c]                        // 0x0048ec83    d84b0c
                         {disp8} fstp       dword ptr [ebx + 0x0c]                        // 0x0048ec86    d95b0c
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0048ec89    d9442410
                         {disp8} fmul       dword ptr [ebx + 0x10]                        // 0x0048ec8d    d84b10
                         {disp8} fstp       dword ptr [ebx + 0x10]                        // 0x0048ec90    d95b10
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0048ec93    d9442410
                         {disp8} fmul       dword ptr [ebx + 0x14]                        // 0x0048ec97    d84b14
                         {disp8} fstp       dword ptr [ebx + 0x14]                        // 0x0048ec9a    d95b14
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0048ec9d    d9442410
                         {disp8} fmul       dword ptr [ebx + 0x18]                        // 0x0048eca1    d84b18
                         {disp8} fstp       dword ptr [ebx + 0x18]                        // 0x0048eca4    d95b18
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0048eca7    d9442410
                         {disp8} fmul       dword ptr [ebx + 0x1c]                        // 0x0048ecab    d84b1c
                         {disp8} fstp       dword ptr [ebx + 0x1c]                        // 0x0048ecae    d95b1c
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0048ecb1    d9442410
                         {disp8} fmul       dword ptr [ebx + 0x20]                        // 0x0048ecb5    d84b20
                         {disp8} fstp       dword ptr [ebx + 0x20]                        // 0x0048ecb8    d95b20
                         {disp32} jne       _jmp_addr_0x0048ed97                          // 0x0048ecbb    0f85d6000000
                         {disp32} mov       ecx, dword ptr [edi + 0x0000482c]             // 0x0048ecc1    8b8f2c480000
                         {disp32} fld       dword ptr [ecx + 0x00000094]                  // 0x0048ecc7    d98194000000
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x0048eccd    d81d90a38a00
                         fnstsw             ax                                            // 0x0048ecd3    dfe0
                         test               ah, 0x40                                      // 0x0048ecd5    f6c440
                         {disp8} je         _jmp_addr_0x0048ece3                          // 0x0048ecd8    7409
                         or                 ebp, 0xffffffff                               // 0x0048ecda    83cdff
                         {disp8} mov        dword ptr [esp + 0x58], ebp                   // 0x0048ecdd    896c2458
                         {disp8} jmp        _jmp_addr_0x0048ed0d                          // 0x0048ece1    eb2a
_jmp_addr_0x0048ece3:    {disp32} mov       eax, dword ptr [edi + 0x00000098]             // 0x0048ece3    8b8798000000
                         {disp32} mov       ecx, dword ptr [edi + eax * 0x4 + 0x000000b4] // 0x0048ece9    8b8c87b4000000
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x0048ecf0    8b44242c
                         {disp8} lea        edx, dword ptr [esp + 0x58]                   // 0x0048ecf4    8d542458
                         push               edx                                           // 0x0048ecf8    52
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x0048ecf9    8d1480
                         push               ecx                                           // 0x0048ecfc    51
                         {disp32} lea       ecx, dword ptr [edi + edx * 0x8 + 0x000054c8] // 0x0048ecfd    8d8cd7c8540000
                         call               _jmp_addr_0x00866ba0                          // 0x0048ed04    e8977e3d00
                         {disp8} mov        ebp, dword ptr [esp + 0x58]                   // 0x0048ed09    8b6c2458
_jmp_addr_0x0048ed0d:    {disp32} mov       eax, dword ptr [edi + 0x0000482c]             // 0x0048ed0d    8b872c480000
                         {disp8} mov        edx, dword ptr [esp + 0x5a]                   // 0x0048ed13    8b54245a
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x0048ed17    89442420
                         {disp8} mov        eax, dword ptr [eax + 0x4c]                   // 0x0048ed1b    8b404c
                         xor.s              ecx, ecx                                      // 0x0048ed1e    33c9
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x0048ed20    89442424
                         {disp8} mov        cl, byte ptr [esp + 0x26]                     // 0x0048ed24    8a4c2426
                         and                edx, 0x000000ff                               // 0x0048ed28    81e2ff000000
                         and                ebp, 0x000000ff                               // 0x0048ed2e    81e5ff000000
                         {disp8} mov        byte ptr [esp + 0x53], -0x01                  // 0x0048ed34    c6442453ff
                         {disp8} mov        byte ptr [esp + 0x2b], 0x01                   // 0x0048ed39    c644242b01
                         imul               ecx, edx                                      // 0x0048ed3e    0fafca
                         {disp8} mov        edx, dword ptr [esp + 0x59]                   // 0x0048ed41    8b542459
                         shr                ecx, 8                                        // 0x0048ed45    c1e908
                         {disp8} mov        byte ptr [esp + 0x52], cl                     // 0x0048ed48    884c2452
                         xor.s              ecx, ecx                                      // 0x0048ed4c    33c9
                         mov.s              cl, ah                                        // 0x0048ed4e    8acc
                         and                edx, 0x000000ff                               // 0x0048ed50    81e2ff000000
                         and                eax, 0x000000ff                               // 0x0048ed56    25ff000000
                         imul               eax, ebp                                      // 0x0048ed5b    0fafc5
                         imul               ecx, edx                                      // 0x0048ed5e    0fafca
                         {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x0048ed61    8b542420
                         {disp8} mov        edx, dword ptr [edx + 0x50]                   // 0x0048ed65    8b5250
                         shr                ecx, 8                                        // 0x0048ed68    c1e908
                         {disp8} mov        byte ptr [esp + 0x51], cl                     // 0x0048ed6b    884c2451
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x29e228]        // 0x0048ed6f    8b0d2842c600
                         shr                eax, 8                                        // 0x0048ed75    c1e808
                         {disp8} mov        byte ptr [esp + 0x50], al                     // 0x0048ed78    88442450
                         mov                eax, dword ptr [ecx]                          // 0x0048ed7c    8b01
                         push               edx                                           // 0x0048ed7e    52
                         {disp8} mov        edx, dword ptr [esp + 0x54]                   // 0x0048ed7f    8b542454
                         call               dword ptr [eax + 0x2c]                        // 0x0048ed83    ff502c
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x29e228]        // 0x0048ed86    8b0d2842c600
                         mov                eax, dword ptr [ecx]                          // 0x0048ed8c    8b01
                         {disp8} mov        edx, dword ptr [esp + 0x58]                   // 0x0048ed8e    8b542458
                         push               0x0                                           // 0x0048ed92    6a00
                         call               dword ptr [eax + 0x2c]                        // 0x0048ed94    ff502c
_jmp_addr_0x0048ed97:    {disp32} mov       eax, dword ptr [edi + 0x00005460]             // 0x0048ed97    8b8760540000
                         cmp                eax, 0x04                                     // 0x0048ed9d    83f804
                         {disp32} ja        _jmp_addr_0x0048ee57                          // 0x0048eda0    0f87b1000000
                         jmp                dword ptr [eax*4 + 0x48f040]                  // 0x0048eda6    ff248540f04800
                         {disp32} fld       dword ptr [edi + 0x0000565c]                  // 0x0048edad    d9875c560000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1a6a0]             // 0x0048edb3    d80da0368c00
                         {disp32} jmp       _jmp_addr_0x0048ee53                          // 0x0048edb9    e995000000
                         {disp32} fld       dword ptr [edi + 0x00005668]                  // 0x0048edbe    d98768560000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1a6a0]             // 0x0048edc4    d80da0368c00
                         {disp32} jmp       _jmp_addr_0x0048ee53                          // 0x0048edca    e984000000
                         {disp32} fld       dword ptr [edi + 0x00005674]                  // 0x0048edcf    d98774560000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1a6a0]             // 0x0048edd5    d80da0368c00
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x0048eddb    d9442434
                         call               __CIasin                                      // 0x0048eddf    e8dc853300
                         {disp32} mov       eax, dword ptr [edi + 0x00005470]             // 0x0048ede4    8b8770540000
                         fsubp              st(1), st                                     // 0x0048edea    dee9
                         dec                eax                                           // 0x0048edec    48
                         {disp32} fld       dword ptr [edi + 0x00005464]                  // 0x0048eded    d98764540000
                         {disp32} fmul      dword ptr [__real@3e999999]                   // 0x0048edf3    d80d3cb28a00
                         faddp              st(1), st                                     // 0x0048edf9    dec1
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x0048edfb    d95c2430
                         {disp8} je         _jmp_addr_0x0048ee22                          // 0x0048edff    7421
                         dec                eax                                           // 0x0048ee01    48
                         {disp8} jne        _jmp_addr_0x0048ee57                          // 0x0048ee02    7553
                         {disp32} fld       dword ptr [edi + 0x00005668]                  // 0x0048ee04    d98768560000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1a6a0]             // 0x0048ee0a    d80da0368c00
                         {disp8} fsub       dword ptr [esp + 0x30]                        // 0x0048ee10    d8642430
                         {disp32} fild      dword ptr [edi + 0x00005468]                  // 0x0048ee14    db8768540000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x261b8]             // 0x0048ee1a    d80db8f18c00
                         {disp8} jmp        _jmp_addr_0x0048ee4d                          // 0x0048ee20    eb2b
_jmp_addr_0x0048ee22:    {disp32} mov       eax, dword ptr [edi + 0x00005468]             // 0x0048ee22    8b8768540000
                         mov                ecx, 0x000000c8                               // 0x0048ee28    b9c8000000
                         sub.s              ecx, eax                                      // 0x0048ee2d    2bc8
                         {disp8} mov        dword ptr [esp + 0x34], ecx                   // 0x0048ee2f    894c2434
                         {disp8} fild       dword ptr [esp + 0x34]                        // 0x0048ee33    db442434
                         {disp32} fmul      dword ptr [rdata_bytes + 0x261b8]             // 0x0048ee37    d80db8f18c00
                         {disp32} fld       dword ptr [edi + 0x00005668]                  // 0x0048ee3d    d98768560000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1a6a0]             // 0x0048ee43    d80da0368c00
                         {disp8} fsub       dword ptr [esp + 0x30]                        // 0x0048ee49    d8642430
_jmp_addr_0x0048ee4d:    fmulp              st(1), st                                     // 0x0048ee4d    dec9
                         {disp8} fadd       dword ptr [esp + 0x30]                        // 0x0048ee4f    d8442430
_jmp_addr_0x0048ee53:    {disp8} fstp       dword ptr [esp + 0x30]                        // 0x0048ee53    d95c2430
_jmp_addr_0x0048ee57:    {disp8} fld        dword ptr [esp + 0x30]                        // 0x0048ee57    d9442430
                         {disp32} mov       edx, dword ptr [data_bytes + 0x29e228]        // 0x0048ee5b    8b152842c600
                         fcos                                                             // 0x0048ee61    d9ff
                         {disp8} lea        eax, dword ptr [edx + 0x14]                   // 0x0048ee63    8d4214
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x0048ee66    d9442430
                         fsin                                                             // 0x0048ee6a    d9fe
                         fld                st(0)                                         // 0x0048ee6c    d9c0
                         {disp8} fmul       dword ptr [eax + 0x0c]                        // 0x0048ee6e    d8480c
                         fld                st(2)                                         // 0x0048ee71    d9c2
                         {disp8} fmul       dword ptr [eax + 0x0c]                        // 0x0048ee73    d8480c
                         fld                st(2)                                         // 0x0048ee76    d9c2
                         {disp8} fmul       dword ptr [eax + 0x18]                        // 0x0048ee78    d84818
                         fsubp              st(1), st                                     // 0x0048ee7b    dee9
                         {disp8} fstp       dword ptr [eax + 0x0c]                        // 0x0048ee7d    d9580c
                         fld                st(2)                                         // 0x0048ee80    d9c2
                         {disp8} fmul       dword ptr [eax + 0x18]                        // 0x0048ee82    d84818
                         fadd               st, st(1)                                     // 0x0048ee85    d8c1
                         {disp8} fstp       dword ptr [eax + 0x18]                        // 0x0048ee87    d95818
                         fstp               st(0)                                         // 0x0048ee8a    ddd8
                         fld                st(0)                                         // 0x0048ee8c    d9c0
                         {disp8} fmul       dword ptr [eax + 0x10]                        // 0x0048ee8e    d84810
                         fld                st(2)                                         // 0x0048ee91    d9c2
                         {disp8} fmul       dword ptr [eax + 0x10]                        // 0x0048ee93    d84810
                         fld                st(2)                                         // 0x0048ee96    d9c2
                         {disp8} fmul       dword ptr [eax + 0x1c]                        // 0x0048ee98    d8481c
                         fsubp              st(1), st                                     // 0x0048ee9b    dee9
                         {disp8} fstp       dword ptr [eax + 0x10]                        // 0x0048ee9d    d95810
                         fld                st(2)                                         // 0x0048eea0    d9c2
                         {disp8} fmul       dword ptr [eax + 0x1c]                        // 0x0048eea2    d8481c
                         fadd               st, st(1)                                     // 0x0048eea5    d8c1
                         {disp8} fstp       dword ptr [eax + 0x1c]                        // 0x0048eea7    d9581c
                         fstp               st(0)                                         // 0x0048eeaa    ddd8
                         fld                st(0)                                         // 0x0048eeac    d9c0
                         {disp8} fmul       dword ptr [eax + 0x14]                        // 0x0048eeae    d84814
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x0048eeb1    d95c2434
                         fld                st(1)                                         // 0x0048eeb5    d9c1
                         {disp8} fmul       dword ptr [eax + 0x14]                        // 0x0048eeb7    d84814
                         fxch               st(1)                                         // 0x0048eeba    d9c9
                         {disp8} fmul       dword ptr [eax + 0x20]                        // 0x0048eebc    d84820
                         fsubp              st(1), st                                     // 0x0048eebf    dee9
                         {disp8} fstp       dword ptr [eax + 0x14]                        // 0x0048eec1    d95814
                         {disp8} fmul       dword ptr [eax + 0x20]                        // 0x0048eec4    d84820
                         {disp8} fadd       dword ptr [esp + 0x34]                        // 0x0048eec7    d8442434
                         {disp8} fstp       dword ptr [eax + 0x20]                        // 0x0048eecb    d95820
                         {disp32} mov       eax, dword ptr [edi + 0x0000482c]             // 0x0048eece    8b872c480000
                         {disp8} mov        ecx, dword ptr [eax + 0x50]                   // 0x0048eed4    8b4850
                         {disp32} mov       edx, dword ptr [data_bytes + 0x29e228]        // 0x0048eed7    8b152842c600
                         {disp8} mov        dword ptr [edx + 0x50], ecx                   // 0x0048eedd    894a50
                         {disp32} mov       ebp, dword ptr [data_bytes + 0x29e228]        // 0x0048eee0    8b2d2842c600
                         {disp32} mov       eax, dword ptr [edi + 0x0000482c]             // 0x0048eee6    8b872c480000
                         {disp8} mov        eax, dword ptr [eax + 0x4c]                   // 0x0048eeec    8b404c
                         {disp8} mov        ecx, dword ptr [ebp + 0x4c]                   // 0x0048eeef    8b4d4c
                         {disp32} mov       dword ptr [esp + 0x000000b0], ecx             // 0x0048eef2    898c24b0000000
                         {disp32} mov       dword ptr [esp + 0x0000009c], eax             // 0x0048eef9    8984249c000000
                         and                ecx, 0x000000ff                               // 0x0048ef00    81e1ff000000
                         and                eax, 0x000000ff                               // 0x0048ef06    25ff000000
                         imul               eax, ecx                                      // 0x0048ef0b    0fafc1
                         mov.s              ecx, eax                                      // 0x0048ef0e    8bc8
                         mov                eax, 0x80808081                               // 0x0048ef10    b881808080
                         imul               ecx                                           // 0x0048ef15    f7e9
                         add.s              edx, ecx                                      // 0x0048ef17    03d1
                         sar                edx, 7                                        // 0x0048ef19    c1fa07
                         mov.s              ecx, edx                                      // 0x0048ef1c    8bca
                         shr                ecx, 0x1f                                     // 0x0048ef1e    c1e91f
                         add.s              edx, ecx                                      // 0x0048ef21    03d1
                         {disp32} mov       ecx, dword ptr [esp + 0x0000009d]             // 0x0048ef23    8b8c249d000000
                         {disp8} mov        byte ptr [esp + 0x54], dl                     // 0x0048ef2a    88542454
                         {disp32} mov       edx, dword ptr [esp + 0x000000b1]             // 0x0048ef2e    8b9424b1000000
                         and                edx, 0x000000ff                               // 0x0048ef35    81e2ff000000
                         and                ecx, 0x000000ff                               // 0x0048ef3b    81e1ff000000
                         imul               ecx, edx                                      // 0x0048ef41    0fafca
                         mov                eax, 0x80808081                               // 0x0048ef44    b881808080
                         imul               ecx                                           // 0x0048ef49    f7e9
                         add.s              edx, ecx                                      // 0x0048ef4b    03d1
                         {disp32} mov       ecx, dword ptr [esp + 0x0000009e]             // 0x0048ef4d    8b8c249e000000
                         sar                edx, 7                                        // 0x0048ef54    c1fa07
                         mov.s              eax, edx                                      // 0x0048ef57    8bc2
                         shr                eax, 0x1f                                     // 0x0048ef59    c1e81f
                         add.s              edx, eax                                      // 0x0048ef5c    03d0
                         {disp8} mov        byte ptr [esp + 0x55], dl                     // 0x0048ef5e    88542455
                         and                ecx, 0x000000ff                               // 0x0048ef62    81e1ff000000
                         {disp32} mov       edx, dword ptr [esp + 0x000000b2]             // 0x0048ef68    8b9424b2000000
                         and                edx, 0x000000ff                               // 0x0048ef6f    81e2ff000000
                         imul               ecx, edx                                      // 0x0048ef75    0fafca
                         mov                eax, 0x80808081                               // 0x0048ef78    b881808080
                         imul               ecx                                           // 0x0048ef7d    f7e9
                         add.s              edx, ecx                                      // 0x0048ef7f    03d1
                         sar                edx, 7                                        // 0x0048ef81    c1fa07
                         mov.s              eax, edx                                      // 0x0048ef84    8bc2
                         shr                eax, 0x1f                                     // 0x0048ef86    c1e81f
                         add.s              edx, eax                                      // 0x0048ef89    03d0
                         {disp8} mov        byte ptr [esp + 0x56], dl                     // 0x0048ef8b    88542456
                         {disp8} mov        byte ptr [esp + 0x57], -0x01                  // 0x0048ef8f    c6442457ff
                         {disp8} mov        ecx, dword ptr [esp + 0x54]                   // 0x0048ef94    8b4c2454
                         {disp8} mov        dword ptr [ebp + 0x4c], ecx                   // 0x0048ef98    894d4c
                         {disp32} mov       edx, dword ptr [edi + 0x0000482c]             // 0x0048ef9b    8b972c480000
                         {disp32} fld       dword ptr [edx + 0x00000094]                  // 0x0048efa1    d98294000000
                         {disp8} fst        dword ptr [esp + 0x34]                        // 0x0048efa7    d9542434
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0048efab    d81d98a38a00
                         fnstsw             ax                                            // 0x0048efb1    dfe0
                         test               ah, 0x40                                      // 0x0048efb3    f6c440
                         {disp8} jne        _jmp_addr_0x0048efdb                          // 0x0048efb6    7523
                         {disp32} mov       ebp, dword ptr [edx + 0x00000090]             // 0x0048efb8    8baa90000000
                         {disp32} mov       edx, dword ptr [edx + 0x00000098]             // 0x0048efbe    8b9298000000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x29e228]        // 0x0048efc4    8b0d2842c600
                         mov                eax, dword ptr [ecx]                          // 0x0048efca    8b01
                         push               ebp                                           // 0x0048efcc    55
                         push               edx                                           // 0x0048efcd    52
                         {disp8} mov        edx, dword ptr [esp + 0x3c]                   // 0x0048efce    8b54243c
                         push               edx                                           // 0x0048efd2    52
                         call               dword ptr [eax + 0x15c]                       // 0x0048efd3    ff905c010000
                         {disp8} jmp        _jmp_addr_0x0048f014                          // 0x0048efd9    eb39
_jmp_addr_0x0048efdb:    {disp32} fld       dword ptr [edx + 0x000000a0]                  // 0x0048efdb    d982a0000000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x29e228]        // 0x0048efe1    8b0d2842c600
                         {disp8} fst        dword ptr [esp + 0x34]                        // 0x0048efe7    d9542434
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0048efeb    d81d98a38a00
                         fnstsw             ax                                            // 0x0048eff1    dfe0
                         test               ah, 0x40                                      // 0x0048eff3    f6c440
                         mov                eax, dword ptr [ecx]                          // 0x0048eff6    8b01
                         {disp8} jne        _jmp_addr_0x0048f00e                          // 0x0048eff8    7514
                         {disp32} mov       edx, dword ptr [edx + 0x0000009c]             // 0x0048effa    8b929c000000
                         push               edx                                           // 0x0048f000    52
                         {disp8} mov        edx, dword ptr [esp + 0x38]                   // 0x0048f001    8b542438
                         push               edx                                           // 0x0048f005    52
                         call               dword ptr [eax + 0x154]                       // 0x0048f006    ff9054010000
                         {disp8} jmp        _jmp_addr_0x0048f014                          // 0x0048f00c    eb06
_jmp_addr_0x0048f00e:    call               dword ptr [eax + 0x108]                       // 0x0048f00e    ff9008010000
_jmp_addr_0x0048f014:    {disp8} mov        ebp, dword ptr [esp + 0x2c]                   // 0x0048f014    8b6c242c
_jmp_addr_0x0048f018:    inc                ebp                                           // 0x0048f018    45
                         cmp                ebp, 0x02                                     // 0x0048f019    83fd02
                         {disp8} mov        dword ptr [esp + 0x2c], ebp                   // 0x0048f01c    896c242c
                         {disp32} jl        _jmp_addr_0x0048e386                          // 0x0048f020    0f8c60f3ffff
                         {disp32} mov       ecx, dword ptr [esp + 0x000000c4]             // 0x0048f026    8b8c24c4000000
                         pop                ebp                                           // 0x0048f02d    5d
                         pop                ebx                                           // 0x0048f02e    5b
                         pop                edi                                           // 0x0048f02f    5f
                         {disp32} mov       dword ptr [data_bytes + 0x4dbad0], ecx        // 0x0048f030    890dd01aea00
                         pop                esi                                           // 0x0048f036    5e
                         add                esp, 0x000000f4                               // 0x0048f037    81c4f4000000
                         ret                                                              // 0x0048f03d    c3

// Snippet: db, [0x0048f03e, 0x0048f040)
.byte 0x8b, 0xff                  // 0x0048f03e

// Snippet: jmptbl, [0x0048f040, 0x0048f054)
.byte 0xad, 0xed, 0x48, 0x00      // 0x0048f040
.byte 0xbe, 0xed, 0x48, 0x00      // 0x0048f044
.byte 0xcf, 0xed, 0x48, 0x00      // 0x0048f048
.byte 0xad, 0xed, 0x48, 0x00      // 0x0048f04c
.byte 0xcf, 0xed, 0x48, 0x00      // 0x0048f050

// Snippet: db, [0x0048f054, 0x0048f060)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0048f054
.byte 0x90, 0x90, 0x90, 0x90      // 0x0048f058
.byte 0x90, 0x90, 0x90, 0x90      // 0x0048f05c

