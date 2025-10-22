.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?SetIdentity@LHMatrix@@QAEXXZ
.extern ?Translation@LHMatrix@@QAEXABVLHPoint@@@Z
.extern ?PostTranslation@LHMatrix@@QAEXAAULHPoint@@@Z
.extern _jmp_addr_0x007a1400
.extern _jmp_addr_0x007feb30
.extern _jmp_addr_0x00801c90
.extern ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z
.extern @Create__10LH3DObjectFQ210LH3DObject10ObjectType@4
.extern _jmp_addr_0x008786d0

.globl _jmp_addr_0x005e2d10
.globl _GetNearClipping__11LandFeatureFv@0
.globl _RequestChangeTexture__FP6Object
.globl _jmp_addr_0x005e3260

start_0x005e2d10_0x005e3770:
// Snippet: asm, [0x005e2d10, 0x005e3745)
_jmp_addr_0x005e2d10:    sub                esp, 0x0c                               // 0x005e2d10    83ec0c
                         push               ebx                                     // 0x005e2d13    53
                         push               esi                                     // 0x005e2d14    56
                         mov.s              esi, ecx                                // 0x005e2d15    8bf1
                         fld                dword ptr [esi]                         // 0x005e2d17    d906
                         push               edi                                     // 0x005e2d19    57
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]        // 0x005e2d1a    d80d08c48a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]        // 0x005e2d20    d80d04c48a00
                         call               _jmp_addr_0x007a1400                    // 0x005e2d26    e8d5e61b00
                         {disp8} fld        dword ptr [esi + 0x08]                  // 0x005e2d2b    d94608
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]        // 0x005e2d2e    d80d08c48a00
                         {disp8} mov        dword ptr [esp + 0x0c], eax             // 0x005e2d34    8944240c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]        // 0x005e2d38    d80d04c48a00
                         call               _jmp_addr_0x007a1400                    // 0x005e2d3e    e8bde61b00
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]             // 0x005e2d43    8d4c240c
                         {disp8} mov        dword ptr [esp + 0x10], eax             // 0x005e2d47    89442410
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000      // 0x005e2d4b    c744241400000000
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z                  // 0x005e2d53    e838032200
                         {disp8} fstp       dword ptr [esi + 0x04]                  // 0x005e2d58    d95e04
                         {disp32} mov       eax, dword ptr [data_bytes + 0x3542f0]  // 0x005e2d5b    a1f0a2d100
                         test               eax, eax                                // 0x005e2d60    85c0
                         {disp32} jne       _jmp_addr_0x005e2e22                    // 0x005e2d62    0f85ba000000
                         xor.s              ecx, ecx                                // 0x005e2d68    33c9
                         call               @Create__10LH3DObjectFQ210LH3DObject10ObjectType@4                    // 0x005e2d6a    e861872200
                         {disp32} mov       edx, dword ptr [?g_current_pack@LH3DMesh@@2PAULH3DPack@@A]  // 0x005e2d6f    8b1534fee900
                         {disp32} mov       dword ptr [data_bytes + 0x3542f4], eax  // 0x005e2d75    a3f4a2d100
                         mov                edi, dword ptr [edx]                    // 0x005e2d7a    8b3a
                         mov                ecx, 0x00000235                         // 0x005e2d7c    b935020000
                         cmp.s              edi, ecx                                // 0x005e2d81    3bf9
                         {disp8} jg         _jmp_addr_0x005e2d87                    // 0x005e2d83    7f02
                         xor.s              ecx, ecx                                // 0x005e2d85    33c9
_jmp_addr_0x005e2d87:    {disp8} mov        edx, dword ptr [edx + ecx * 0x4 + 0x04] // 0x005e2d87    8b548a04
                         mov                edi, dword ptr [eax]                    // 0x005e2d8b    8b38
                         push               0x0                                     // 0x005e2d8d    6a00
                         push               0x0                                     // 0x005e2d8f    6a00
                         mov.s              ecx, eax                                // 0x005e2d91    8bc8
                         call               dword ptr [edi + 0xf4]                  // 0x005e2d93    ff97f4000000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x3542f4]  // 0x005e2d99    8b0df4a2d100
                         mov                eax, dword ptr [ecx]                    // 0x005e2d9f    8b01
                         mov                edx, 0x00000001                         // 0x005e2da1    ba01000000
                         call               dword ptr [eax + 0x58]                  // 0x005e2da6    ff5058
                         mov                ecx, 0x00000002                         // 0x005e2da9    b902000000
                         call               @Create__10LH3DObjectFQ210LH3DObject10ObjectType@4                    // 0x005e2dae    e81d872200
                         {disp32} mov       edx, dword ptr [?g_current_pack@LH3DMesh@@2PAULH3DPack@@A]  // 0x005e2db3    8b1534fee900
                         {disp32} mov       dword ptr [data_bytes + 0x3542f0], eax  // 0x005e2db9    a3f0a2d100
                         mov                edi, dword ptr [edx]                    // 0x005e2dbe    8b3a
                         mov                ecx, 0x00000233                         // 0x005e2dc0    b933020000
                         cmp.s              edi, ecx                                // 0x005e2dc5    3bf9
                         {disp8} jg         _jmp_addr_0x005e2dcb                    // 0x005e2dc7    7f02
                         xor.s              ecx, ecx                                // 0x005e2dc9    33c9
_jmp_addr_0x005e2dcb:    {disp8} mov        edx, dword ptr [edx + ecx * 0x4 + 0x04] // 0x005e2dcb    8b548a04
                         mov                edi, dword ptr [eax]                    // 0x005e2dcf    8b38
                         push               0x0                                     // 0x005e2dd1    6a00
                         push               0x0                                     // 0x005e2dd3    6a00
                         mov.s              ecx, eax                                // 0x005e2dd5    8bc8
                         call               dword ptr [edi + 0xf4]                  // 0x005e2dd7    ff97f4000000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x3542f0]  // 0x005e2ddd    8b0df0a2d100
                         mov                eax, dword ptr [ecx]                    // 0x005e2de3    8b01
                         mov                edx, 0x00000001                         // 0x005e2de5    ba01000000
                         call               dword ptr [eax + 0x58]                  // 0x005e2dea    ff5058
                         {disp32} mov       eax, dword ptr [data_bytes + 0x517508]  // 0x005e2ded    a108d5ed00
                         cmp                dword ptr [eax], 0x000001b8             // 0x005e2df2    8138b8010000
                         {disp8} jle        _jmp_addr_0x005e2e02                    // 0x005e2df8    7e08
                         {disp32} mov       eax, dword ptr [eax + 0x000006e4]       // 0x005e2dfa    8b80e4060000
                         {disp8} jmp        _jmp_addr_0x005e2e05                    // 0x005e2e00    eb03
_jmp_addr_0x005e2e02:    {disp8} mov        eax, dword ptr [eax + 0x04]             // 0x005e2e02    8b4004
_jmp_addr_0x005e2e05:    {disp32} mov       ecx, dword ptr [data_bytes + 0x3542f0]  // 0x005e2e05    8b0df0a2d100
                         mov                edi, dword ptr [ecx]                    // 0x005e2e0b    8b39
                         mov.s              edx, eax                                // 0x005e2e0d    8bd0
                         call               dword ptr [edi + 0x180]                 // 0x005e2e0f    ff9780010000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x3542f0]  // 0x005e2e15    8b0df0a2d100
                         {disp8} mov        dword ptr [ecx + 0x10], 0x3f800000      // 0x005e2e1b    c741100000803f
_jmp_addr_0x005e2e22:    {disp32} mov       ecx, dword ptr [data_bytes + 0x3542f4]  // 0x005e2e22    8b0df4a2d100
                         mov                eax, dword ptr [ecx]                    // 0x005e2e28    8b01
                         push               0x3f800000                              // 0x005e2e2a    680000803f
                         push               0x0                                     // 0x005e2e2f    6a00
                         mov.s              edx, esi                                // 0x005e2e31    8bd6
                         call               dword ptr [eax + 0x20]                  // 0x005e2e33    ff5020
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x3542f4]  // 0x005e2e36    8b0df4a2d100
                         mov                eax, dword ptr [ecx]                    // 0x005e2e3c    8b01
                         mov                edx, 0x00d1a2e0                         // 0x005e2e3e    bae0a2d100
                         call               dword ptr [eax + 0x1c0]                 // 0x005e2e43    ff90c0010000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x3542f0]  // 0x005e2e49    8b0df0a2d100
                         mov                eax, dword ptr [ecx]                    // 0x005e2e4f    8b01
                         push               0x3f800000                              // 0x005e2e51    680000803f
                         push               0x0                                     // 0x005e2e56    6a00
                         mov                edx, 0x00d1a2e0                         // 0x005e2e58    bae0a2d100
                         call               dword ptr [eax + 0x20]                  // 0x005e2e5d    ff5020
                         {disp32} mov       ecx, dword ptr [_game]                  // 0x005e2e60    8b0d5c19d000
                         {disp32} mov       esi, dword ptr [ecx + 0x00205d48]       // 0x005e2e66    8bb1485d2000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x3542f0]  // 0x005e2e6c    8b0df0a2d100
                         mov                edx, dword ptr [ecx]                    // 0x005e2e72    8b11
                         call               dword ptr [edx + 0x18c]                 // 0x005e2e74    ff928c010000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x3542f0]  // 0x005e2e7a    8b0df0a2d100
                         mov.s              edi, eax                                // 0x005e2e80    8bf8
                         mov                eax, dword ptr [ecx]                    // 0x005e2e82    8b01
                         call               dword ptr [eax + 0x184]                 // 0x005e2e84    ff9084010000
                         mov.s              ecx, eax                                // 0x005e2e8a    8bc8
                         {disp8} mov        eax, dword ptr [ecx + 0x50]             // 0x005e2e8c    8b4150
                         test               ah, 0x01                                // 0x005e2e8f    f6c401
                         lea                eax, dword ptr [edi + esi * 0x1]        // 0x005e2e92    8d0437
                         {disp8} je         _jmp_addr_0x005e2e9d                    // 0x005e2e95    7406
                         cdq                                                        // 0x005e2e97    99
                         idiv               dword ptr [ecx + 0x20]                  // 0x005e2e98    f77920
                         {disp8} jmp        _jmp_addr_0x005e2ea9                    // 0x005e2e9b    eb0c
_jmp_addr_0x005e2e9d:    {disp8} mov        ecx, dword ptr [ecx + 0x20]             // 0x005e2e9d    8b4920
                         {disp8} lea        edx, dword ptr [ecx + -0x01]            // 0x005e2ea0    8d51ff
                         cmp.s              edx, eax                                // 0x005e2ea3    3bd0
                         {disp8} jl         _jmp_addr_0x005e2ea9                    // 0x005e2ea5    7c02
                         mov.s              edx, eax                                // 0x005e2ea7    8bd0
_jmp_addr_0x005e2ea9:    {disp32} mov       ecx, dword ptr [data_bytes + 0x3542f0]  // 0x005e2ea9    8b0df0a2d100
                         mov                eax, dword ptr [ecx]                    // 0x005e2eaf    8b01
                         call               dword ptr [eax + 0x188]                 // 0x005e2eb1    ff9088010000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x3542f4]  // 0x005e2eb7    a1f4a2d100
                         {disp8} lea        esi, dword ptr [eax + 0x50]             // 0x005e2ebc    8d7050
                         {disp8} lea        edi, dword ptr [eax + 0x4c]             // 0x005e2ebf    8d784c
                         push               esi                                     // 0x005e2ec2    56
                         {disp8} lea        ebx, dword ptr [eax + 0x38]             // 0x005e2ec3    8d5838
                         push               edi                                     // 0x005e2ec6    57
                         push               ebx                                     // 0x005e2ec7    53
                         call               _jmp_addr_0x00801c90                    // 0x005e2ec8    e8c3ed2100
                         mov                ecx, dword ptr [esi]                    // 0x005e2ecd    8b0e
                         push               edi                                     // 0x005e2ecf    57
                         push               ecx                                     // 0x005e2ed0    51
                         push               ebx                                     // 0x005e2ed1    53
                         call               _jmp_addr_0x007feb30                    // 0x005e2ed2    e859bc2100
                         mov                dword ptr [esi], eax                    // 0x005e2ed7    8906
                         {disp32} mov       edx, dword ptr [data_bytes + 0x3542f4]  // 0x005e2ed9    8b15f4a2d100
                         {disp8} mov        eax, dword ptr [edx + 0x4c]             // 0x005e2edf    8b424c
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x3542f0]  // 0x005e2ee2    8b0df0a2d100
                         {disp8} mov        dword ptr [ecx + 0x4c], eax             // 0x005e2ee8    89414c
                         {disp32} mov       edx, dword ptr [data_bytes + 0x3542f4]  // 0x005e2eeb    8b15f4a2d100
                         {disp8} mov        eax, dword ptr [edx + 0x50]             // 0x005e2ef1    8b4250
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x3542f0]  // 0x005e2ef4    8b0df0a2d100
                         {disp8} mov        dword ptr [ecx + 0x50], eax             // 0x005e2efa    894150
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x3542f4]  // 0x005e2efd    8b0df4a2d100
                         mov                edx, dword ptr [ecx]                    // 0x005e2f03    8b11
                         add                esp, 0x18                               // 0x005e2f05    83c418
                         call               dword ptr [edx + 0x100]                 // 0x005e2f08    ff9200010000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x3542f0]  // 0x005e2f0e    8b0df0a2d100
                         mov                eax, dword ptr [ecx]                    // 0x005e2f14    8b01
                         call               dword ptr [eax + 0x100]                 // 0x005e2f16    ff9000010000
                         pop                edi                                     // 0x005e2f1c    5f
                         pop                esi                                     // 0x005e2f1d    5e
                         pop                ebx                                     // 0x005e2f1e    5b
                         add                esp, 0x0c                               // 0x005e2f1f    83c40c
                         ret                                                        // 0x005e2f22    c3
                         nop                                                        // 0x005e2f23    90
                         nop                                                        // 0x005e2f24    90
                         nop                                                        // 0x005e2f25    90
                         nop                                                        // 0x005e2f26    90
                         nop                                                        // 0x005e2f27    90
                         nop                                                        // 0x005e2f28    90
                         nop                                                        // 0x005e2f29    90
                         nop                                                        // 0x005e2f2a    90
                         nop                                                        // 0x005e2f2b    90
                         nop                                                        // 0x005e2f2c    90
                         nop                                                        // 0x005e2f2d    90
                         nop                                                        // 0x005e2f2e    90
                         nop                                                        // 0x005e2f2f    90
_GetNearClipping__11LandFeatureFv@0:    {disp32} mov       eax, dword ptr [data_bytes + 0x3542f8]  // 0x005e2f30    a1f8a2d100
                         sub                esp, 0x1c                               // 0x005e2f35    83ec1c
                         test               eax, eax                                // 0x005e2f38    85c0
                         {disp8} je         _jmp_addr_0x005e2f46                    // 0x005e2f3a    740a
                         {disp32} fld       dword ptr [__real@3dcccccd]             // 0x005e2f3c    d9052cb28a00
                         add                esp, 0x1c                               // 0x005e2f42    83c41c
                         ret                                                        // 0x005e2f45    c3
_jmp_addr_0x005e2f46:    {disp32} fld       dword ptr [data_bytes + 0x4dbdb8]       // 0x005e2f46    d905b81dea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4dbdc0]  // 0x005e2f4c    a1c01dea00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]        // 0x005e2f51    d80d08c48a00
                         {disp8} mov        dword ptr [esp + 0x18], eax             // 0x005e2f57    89442418
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]        // 0x005e2f5b    d80d04c48a00
                         call               _jmp_addr_0x007a1400                    // 0x005e2f61    e89ae41b00
                         {disp8} fld        dword ptr [esp + 0x18]                  // 0x005e2f66    d9442418
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]        // 0x005e2f6a    d80d08c48a00
                         {disp8} mov        dword ptr [esp + 0x04], eax             // 0x005e2f70    89442404
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]        // 0x005e2f74    d80d04c48a00
                         call               _jmp_addr_0x007a1400                    // 0x005e2f7a    e881e41b00
                         {disp8} lea        ecx, dword ptr [esp + 0x04]             // 0x005e2f7f    8d4c2404
                         {disp8} mov        dword ptr [esp + 0x08], eax             // 0x005e2f83    89442408
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000      // 0x005e2f87    c744240c00000000
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z                  // 0x005e2f8f    e8fc002200
                         {disp32} fsubr     dword ptr [data_bytes + 0x4dbdbc]       // 0x005e2f94    d82dbc1dea00
                         {disp8} fst        dword ptr [esp + 0x00]                  // 0x005e2f9a    d9542400
                         {disp32} fcomp     dword ptr [_rdata_float0p0]             // 0x005e2f9e    d81d98a38a00
                         fnstsw             ax                                      // 0x005e2fa4    dfe0
                         test               ah, 0x41                                // 0x005e2fa6    f6c441
                         {disp8} je         _jmp_addr_0x005e2fb5                    // 0x005e2fa9    740a
                         {disp32} fld       dword ptr [__real@3e999999]             // 0x005e2fab    d9053cb28a00
                         add                esp, 0x1c                               // 0x005e2fb1    83c41c
                         ret                                                        // 0x005e2fb4    c3
_jmp_addr_0x005e2fb5:    {disp8} fld        dword ptr [esp + 0x00]                  // 0x005e2fb5    d9442400
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1e658]       // 0x005e2fb9    d81d58768c00
                         fnstsw             ax                                      // 0x005e2fbf    dfe0
                         test               ah, 0x41                                // 0x005e2fc1    f6c441
                         {disp8} jne        _jmp_addr_0x005e2fd0                    // 0x005e2fc4    750a
                         {disp32} fld       dword ptr [rdata_bytes + 0x26304]       // 0x005e2fc6    d90504f38c00
                         add                esp, 0x1c                               // 0x005e2fcc    83c41c
                         ret                                                        // 0x005e2fcf    c3
_jmp_addr_0x005e2fd0:    {disp8} fld        dword ptr [esp + 0x00]                  // 0x005e2fd0    d9442400
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1ebd4]       // 0x005e2fd4    d80dd47b8c00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1ec8c]       // 0x005e2fda    d80d8c7c8c00
                         {disp32} fadd      dword ptr [__real@3e999999]             // 0x005e2fe0    d8053cb28a00
                         add                esp, 0x1c                               // 0x005e2fe6    83c41c
                         ret                                                        // 0x005e2fe9    c3
                         call               dword ptr [__imp__BinkSetSoundSystem@8] // 0x005e2fea    ff1548998a00
_RequestChangeTexture__FP6Object:    sub                esp, 0x4c                               // 0x005e2ff0    83ec4c
                         push               ebx                                     // 0x005e2ff3    53
                         {disp8} mov        ebx, dword ptr [esp + 0x54]             // 0x005e2ff4    8b5c2454
                         push               ebp                                     // 0x005e2ff8    55
                         xor.s              ebp, ebp                                // 0x005e2ff9    33ed
                         cmp.s              ebx, ebp                                // 0x005e2ffb    3bdd
                         {disp32} je        _jmp_addr_0x005e325a                    // 0x005e2ffd    0f8457020000
                         {disp8} mov        eax, dword ptr [ebx + 0x40]             // 0x005e3003    8b4340
                         cmp.s              eax, ebp                                // 0x005e3006    3bc5
                         {disp8} mov        dword ptr [esp + 0x10], eax             // 0x005e3008    89442410
                         {disp32} je        _jmp_addr_0x005e325a                    // 0x005e300c    0f8448020000
                         push               esi                                     // 0x005e3012    56
                         {disp8} lea        esi, dword ptr [eax + 0x14]             // 0x005e3013    8d7014
                         mov                eax, dword ptr [ebx]                    // 0x005e3016    8b03
                         push               edi                                     // 0x005e3018    57
                         mov                ecx, 0x0000000c                         // 0x005e3019    b90c000000
                         {disp8} lea        edi, dword ptr [esp + 0x2c]             // 0x005e301e    8d7c242c
                         {disp8} mov        dword ptr [esp + 0x1c], esi             // 0x005e3022    8974241c
                         rep movsd          es:[edi], dword ptr ds:[esi]            // 0x005e3026    f3a5
                         mov.s              ecx, ebx                                // 0x005e3028    8bcb
                         call               dword ptr [eax + 0x120]                 // 0x005e302a    ff9020010000
                         mov                edx, dword ptr [ebx]                    // 0x005e3030    8b13
                         mov.s              ecx, ebx                                // 0x005e3032    8bcb
                         {disp8} fstp       dword ptr [esp + 0x60]                  // 0x005e3034    d95c2460
                         call               dword ptr [edx + 0x508]                 // 0x005e3038    ff9208050000
                         {disp8} mov        eax, dword ptr [ebx + 0x1c]             // 0x005e303e    8b431c
                         {disp8} fstp       dword ptr [esp + 0x10]                  // 0x005e3041    d95c2410
                         {disp8} mov        esi, dword ptr [ebx + 0x40]             // 0x005e3045    8b7340
                         {disp8} lea        edi, dword ptr [ebx + 0x14]             // 0x005e3048    8d7b14
                         mov.s              ecx, edi                                // 0x005e304b    8bcf
                         {disp8} mov        dword ptr [esp + 0x14], eax             // 0x005e304d    89442414
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z                  // 0x005e3051    e83a002200
                         {disp8} fadd       dword ptr [esp + 0x14]                  // 0x005e3056    d8442414
                         {disp8} fstp       dword ptr [esp + 0x24]                  // 0x005e305a    d95c2424
                         fild               dword ptr [edi]                         // 0x005e305e    db07
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]               // 0x005e3060    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x20]                  // 0x005e3066    d95c2420
                         {disp8} fild       dword ptr [edi + 0x04]                  // 0x005e306a    db4704
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]               // 0x005e306d    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x28]                  // 0x005e3073    d95c2428
                         {disp8} fld        dword ptr [esp + 0x10]                  // 0x005e3077    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]             // 0x005e307b    d81d98a38a00
                         {disp8} fld        dword ptr [esp + 0x60]                  // 0x005e3081    d9442460
                         fnstsw             ax                                      // 0x005e3085    dfe0
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1390]        // 0x005e3087    d81d90a38a00
                         test               ah, 0x40                                // 0x005e308d    f6c440
                         fnstsw             ax                                      // 0x005e3090    dfe0
                         {disp32} jne       _jmp_addr_0x005e31e6                    // 0x005e3092    0f854e010000
                         test               ah, 0x40                                // 0x005e3098    f6c440
                         {disp32} jne       _jmp_addr_0x005e315c                    // 0x005e309b    0f85bb000000
                         {disp8} mov        ecx, dword ptr [esp + 0x60]             // 0x005e30a1    8b4c2460
                         {disp8} fld        dword ptr [esp + 0x20]                  // 0x005e30a5    d9442420
                         {disp8} mov        dword ptr [esi + 0x40], ebp             // 0x005e30a9    896e40
                         {disp8} mov        dword ptr [esi + 0x3c], ebp             // 0x005e30ac    896e3c
                         {disp8} mov        dword ptr [esi + 0x38], ebp             // 0x005e30af    896e38
                         {disp8} mov        dword ptr [esi + 0x30], ebp             // 0x005e30b2    896e30
                         {disp8} mov        dword ptr [esi + 0x2c], ebp             // 0x005e30b5    896e2c
                         {disp8} mov        dword ptr [esi + 0x28], ebp             // 0x005e30b8    896e28
                         {disp8} mov        dword ptr [esi + 0x20], ebp             // 0x005e30bb    896e20
                         {disp8} mov        dword ptr [esi + 0x1c], ebp             // 0x005e30be    896e1c
                         {disp8} mov        dword ptr [esi + 0x18], ebp             // 0x005e30c1    896e18
                         {disp8} mov        dword ptr [esi + 0x34], ecx             // 0x005e30c4    894e34
                         mov.s              edx, ecx                                // 0x005e30c7    8bd1
                         {disp8} mov        dword ptr [esi + 0x24], edx             // 0x005e30c9    895624
                         mov.s              eax, ecx                                // 0x005e30cc    8bc1
                         {disp8} mov        dword ptr [esi + 0x14], eax             // 0x005e30ce    894614
                         {disp8} fadd       dword ptr [esi + 0x38]                  // 0x005e30d1    d84638
                         {disp8} fstp       dword ptr [esi + 0x38]                  // 0x005e30d4    d95e38
                         {disp8} fld        dword ptr [esp + 0x24]                  // 0x005e30d7    d9442424
                         {disp8} fadd       dword ptr [esi + 0x3c]                  // 0x005e30db    d8463c
                         {disp8} fstp       dword ptr [esi + 0x3c]                  // 0x005e30de    d95e3c
                         {disp8} fld        dword ptr [esp + 0x28]                  // 0x005e30e1    d9442428
                         {disp8} fadd       dword ptr [esi + 0x40]                  // 0x005e30e5    d84640
                         {disp8} fstp       dword ptr [esi + 0x40]                  // 0x005e30e8    d95e40
                         {disp8} fld        dword ptr [esp + 0x10]                  // 0x005e30eb    d9442410
                         fcos                                                       // 0x005e30ef    d9ff
                         {disp8} fld        dword ptr [esp + 0x10]                  // 0x005e30f1    d9442410
                         fsin                                                       // 0x005e30f5    d9fe
                         fld                st(0)                                   // 0x005e30f7    d9c0
                         {disp8} fmul       dword ptr [esi + 0x14]                  // 0x005e30f9    d84e14
                         fld                st(2)                                   // 0x005e30fc    d9c2
                         {disp8} fmul       dword ptr [esi + 0x14]                  // 0x005e30fe    d84e14
                         fld                st(2)                                   // 0x005e3101    d9c2
                         {disp8} fmul       dword ptr [esi + 0x2c]                  // 0x005e3103    d84e2c
                         faddp              st(1), st                               // 0x005e3106    dec1
                         {disp8} fstp       dword ptr [esi + 0x14]                  // 0x005e3108    d95e14
                         fld                st(2)                                   // 0x005e310b    d9c2
                         {disp8} fmul       dword ptr [esi + 0x2c]                  // 0x005e310d    d84e2c
                         fsub               st, st(1)                               // 0x005e3110    d8e1
                         {disp8} fstp       dword ptr [esi + 0x2c]                  // 0x005e3112    d95e2c
                         fstp               st(0)                                   // 0x005e3115    ddd8
                         fld                st(0)                                   // 0x005e3117    d9c0
                         {disp8} fmul       dword ptr [esi + 0x18]                  // 0x005e3119    d84e18
                         fld                st(1)                                   // 0x005e311c    d9c1
                         {disp8} fmul       dword ptr [esi + 0x30]                  // 0x005e311e    d84e30
                         fld                st(3)                                   // 0x005e3121    d9c3
                         {disp8} fmul       dword ptr [esi + 0x18]                  // 0x005e3123    d84e18
                         faddp              st(1), st                               // 0x005e3126    dec1
                         {disp8} fstp       dword ptr [esi + 0x18]                  // 0x005e3128    d95e18
                         fld                st(2)                                   // 0x005e312b    d9c2
                         {disp8} fmul       dword ptr [esi + 0x30]                  // 0x005e312d    d84e30
                         fsub               st, st(1)                               // 0x005e3130    d8e1
                         {disp8} fstp       dword ptr [esi + 0x30]                  // 0x005e3132    d95e30
                         fstp               st(0)                                   // 0x005e3135    ddd8
                         fld                st(0)                                   // 0x005e3137    d9c0
                         {disp8} fmul       dword ptr [esi + 0x1c]                  // 0x005e3139    d84e1c
                         {disp8} fstp       dword ptr [esp + 0x14]                  // 0x005e313c    d95c2414
                         {disp8} fmul       dword ptr [esi + 0x34]                  // 0x005e3140    d84e34
                         fld                st(1)                                   // 0x005e3143    d9c1
                         {disp8} fmul       dword ptr [esi + 0x1c]                  // 0x005e3145    d84e1c
                         faddp              st(1), st                               // 0x005e3148    dec1
                         {disp8} fstp       dword ptr [esi + 0x1c]                  // 0x005e314a    d95e1c
                         {disp8} fmul       dword ptr [esi + 0x34]                  // 0x005e314d    d84e34
                         {disp8} fsub       dword ptr [esp + 0x14]                  // 0x005e3150    d8642414
                         {disp8} fstp       dword ptr [esi + 0x34]                  // 0x005e3154    d95e34
                         {disp32} jmp       _jmp_addr_0x005e322e                    // 0x005e3157    e9d2000000
_jmp_addr_0x005e315c:    {disp8} lea        edi, dword ptr [esi + 0x14]             // 0x005e315c    8d7e14
                         mov.s              ecx, edi                                // 0x005e315f    8bcf
                         call               ?SetIdentity@LHMatrix@@QAEXXZ           // 0x005e3161    e89a03e2ff
                         {disp8} fld        dword ptr [esp + 0x10]                  // 0x005e3166    d9442410
                         fcos                                                       // 0x005e316a    d9ff
                         {disp8} mov        ecx, dword ptr [esp + 0x20]             // 0x005e316c    8b4c2420
                         {disp8} mov        edx, dword ptr [esp + 0x24]             // 0x005e3170    8b542424
                         {disp8} mov        eax, dword ptr [esp + 0x28]             // 0x005e3174    8b442428
                         {disp8} mov        dword ptr [edi + 0x24], ecx             // 0x005e3178    894f24
                         {disp8} mov        dword ptr [edi + 0x28], edx             // 0x005e317b    895728
                         {disp8} mov        dword ptr [edi + 0x2c], eax             // 0x005e317e    89472c
                         {disp8} fld        dword ptr [esp + 0x10]                  // 0x005e3181    d9442410
                         fsin                                                       // 0x005e3185    d9fe
                         fld                st(0)                                   // 0x005e3187    d9c0
                         fmul               dword ptr [edi]                         // 0x005e3189    d80f
                         fld                st(1)                                   // 0x005e318b    d9c1
                         {disp8} fmul       dword ptr [edi + 0x18]                  // 0x005e318d    d84f18
                         fld                st(3)                                   // 0x005e3190    d9c3
                         fmul               dword ptr [edi]                         // 0x005e3192    d80f
                         faddp              st(1), st                               // 0x005e3194    dec1
                         fstp               dword ptr [edi]                         // 0x005e3196    d91f
                         fld                st(2)                                   // 0x005e3198    d9c2
                         {disp8} fmul       dword ptr [edi + 0x18]                  // 0x005e319a    d84f18
                         fsub               st, st(1)                               // 0x005e319d    d8e1
                         {disp8} fstp       dword ptr [edi + 0x18]                  // 0x005e319f    d95f18
                         fstp               st(0)                                   // 0x005e31a2    ddd8
                         fld                st(0)                                   // 0x005e31a4    d9c0
                         {disp8} fmul       dword ptr [edi + 0x04]                  // 0x005e31a6    d84f04
                         fld                st(1)                                   // 0x005e31a9    d9c1
                         {disp8} fmul       dword ptr [edi + 0x1c]                  // 0x005e31ab    d84f1c
                         fld                st(3)                                   // 0x005e31ae    d9c3
                         {disp8} fmul       dword ptr [edi + 0x04]                  // 0x005e31b0    d84f04
                         faddp              st(1), st                               // 0x005e31b3    dec1
                         {disp8} fstp       dword ptr [edi + 0x04]                  // 0x005e31b5    d95f04
                         fld                st(2)                                   // 0x005e31b8    d9c2
                         {disp8} fmul       dword ptr [edi + 0x1c]                  // 0x005e31ba    d84f1c
                         fsub               st, st(1)                               // 0x005e31bd    d8e1
                         {disp8} fstp       dword ptr [edi + 0x1c]                  // 0x005e31bf    d95f1c
                         fstp               st(0)                                   // 0x005e31c2    ddd8
                         fld                st(0)                                   // 0x005e31c4    d9c0
                         {disp8} fmul       dword ptr [edi + 0x08]                  // 0x005e31c6    d84f08
                         {disp8} fstp       dword ptr [esp + 0x14]                  // 0x005e31c9    d95c2414
                         {disp8} fmul       dword ptr [edi + 0x20]                  // 0x005e31cd    d84f20
                         fld                st(1)                                   // 0x005e31d0    d9c1
                         {disp8} fmul       dword ptr [edi + 0x08]                  // 0x005e31d2    d84f08
                         faddp              st(1), st                               // 0x005e31d5    dec1
                         {disp8} fstp       dword ptr [edi + 0x08]                  // 0x005e31d7    d95f08
                         {disp8} fmul       dword ptr [edi + 0x20]                  // 0x005e31da    d84f20
                         {disp8} fsub       dword ptr [esp + 0x14]                  // 0x005e31dd    d8642414
                         {disp8} fstp       dword ptr [edi + 0x20]                  // 0x005e31e1    d95f20
                         {disp8} jmp        _jmp_addr_0x005e322e                    // 0x005e31e4    eb48
_jmp_addr_0x005e31e6:    test               ah, 0x40                                // 0x005e31e6    f6c440
                         {disp8} jne        _jmp_addr_0x005e3222                    // 0x005e31e9    7537
                         {disp8} mov        edx, dword ptr [esp + 0x60]             // 0x005e31eb    8b542460
                         {disp8} lea        ecx, dword ptr [esi + 0x14]             // 0x005e31ef    8d4e14
                         mov.s              eax, edx                                // 0x005e31f2    8bc2
                         {disp8} mov        dword ptr [ecx + 0x20], edx             // 0x005e31f4    895120
                         mov                dword ptr [ecx], edx                    // 0x005e31f7    8911
                         {disp8} lea        edx, dword ptr [esp + 0x20]             // 0x005e31f9    8d542420
                         {disp8} mov        dword ptr [ecx + 0x2c], ebp             // 0x005e31fd    89692c
                         {disp8} mov        dword ptr [ecx + 0x28], ebp             // 0x005e3200    896928
                         {disp8} mov        dword ptr [ecx + 0x24], ebp             // 0x005e3203    896924
                         {disp8} mov        dword ptr [ecx + 0x1c], ebp             // 0x005e3206    89691c
                         {disp8} mov        dword ptr [ecx + 0x18], ebp             // 0x005e3209    896918
                         {disp8} mov        dword ptr [ecx + 0x14], ebp             // 0x005e320c    896914
                         {disp8} mov        dword ptr [ecx + 0x0c], ebp             // 0x005e320f    89690c
                         {disp8} mov        dword ptr [ecx + 0x08], ebp             // 0x005e3212    896908
                         {disp8} mov        dword ptr [ecx + 0x04], ebp             // 0x005e3215    896904
                         {disp8} mov        dword ptr [ecx + 0x10], eax             // 0x005e3218    894110
                         call               ?PostTranslation@LHMatrix@@QAEXAAULHPoint@@@Z// 0x005e321b    e85003e2ff
                         {disp8} jmp        _jmp_addr_0x005e322e                    // 0x005e3220    eb0c
_jmp_addr_0x005e3222:    {disp8} lea        edx, dword ptr [esp + 0x20]             // 0x005e3222    8d542420
                         {disp8} lea        ecx, dword ptr [esi + 0x14]             // 0x005e3226    8d4e14
                         call               ?Translation@LHMatrix@@QAEXABVLHPoint@@@Z  // 0x005e3229    e80203e2ff
_jmp_addr_0x005e322e:    {disp8} mov        edx, dword ptr [esp + 0x18]             // 0x005e322e    8b542418
                         {disp8} mov        eax, dword ptr [esp + 0x60]             // 0x005e3232    8b442460
                         {disp8} mov        ecx, dword ptr [esp + 0x10]             // 0x005e3236    8b4c2410
                         push               edx                                     // 0x005e323a    52
                         {disp8} mov        dword ptr [esi + 0x44], eax             // 0x005e323b    894644
                         {disp8} mov        dword ptr [esi + 0x48], ecx             // 0x005e323e    894e48
                         call               _jmp_addr_0x005e3260                    // 0x005e3241    e81a000000
                         {disp8} mov        edi, dword ptr [esp + 0x20]             // 0x005e3246    8b7c2420
                         add                esp, 0x04                               // 0x005e324a    83c404
                         mov                ecx, 0x0000000c                         // 0x005e324d    b90c000000
                         {disp8} lea        esi, dword ptr [esp + 0x2c]             // 0x005e3252    8d74242c
                         rep movsd          es:[edi], dword ptr ds:[esi]            // 0x005e3256    f3a5
                         pop                edi                                     // 0x005e3258    5f
                         pop                esi                                     // 0x005e3259    5e
_jmp_addr_0x005e325a:    pop                ebp                                     // 0x005e325a    5d
                         pop                ebx                                     // 0x005e325b    5b
                         add                esp, 0x4c                               // 0x005e325c    83c44c
                         ret                                                        // 0x005e325f    c3
_jmp_addr_0x005e3260:    {disp32} mov       eax, dword ptr [data_bytes + 0x4d6d78]  // 0x005e3260    a178cde900
                         sub                esp, 0x50                               // 0x005e3265    83ec50
                         test               eax, eax                                // 0x005e3268    85c0
                         push               ebx                                     // 0x005e326a    53
                         push               ebp                                     // 0x005e326b    55
                         push               esi                                     // 0x005e326c    56
                         push               edi                                     // 0x005e326d    57
                         {disp32} je        _jmp_addr_0x005e373d                    // 0x005e326e    0f84c9040000
                         {disp8} mov        ebx, dword ptr [esp + 0x64]             // 0x005e3274    8b5c2464
                         test               ebx, ebx                                // 0x005e3278    85db
                         {disp32} je        _jmp_addr_0x005e373d                    // 0x005e327a    0f84bd040000
                         mov                eax, dword ptr [ebx]                    // 0x005e3280    8b03
                         mov.s              ecx, ebx                                // 0x005e3282    8bcb
                         call               dword ptr [eax + 0x84]                  // 0x005e3284    ff9084000000
                         test               eax, eax                                // 0x005e328a    85c0
                         {disp8} jne        _jmp_addr_0x005e32a0                    // 0x005e328c    7512
                         mov                edx, dword ptr [ebx]                    // 0x005e328e    8b13
                         mov.s              ecx, ebx                                // 0x005e3290    8bcb
                         call               dword ptr [edx + 0x8c]                  // 0x005e3292    ff928c000000
                         test               eax, eax                                // 0x005e3298    85c0
                         {disp32} je        _jmp_addr_0x005e373d                    // 0x005e329a    0f849d040000
_jmp_addr_0x005e32a0:    {disp8} fld        dword ptr [ebx + 0x38]                  // 0x005e32a0    d94338
                         mov                eax, dword ptr [ebx]                    // 0x005e32a3    8b03
                         {disp8} fst        dword ptr [esp + 0x10]                  // 0x005e32a5    d9542410
                         mov.s              ecx, ebx                                // 0x005e32a9    8bcb
                         {disp8} fstp       dword ptr [esp + 0x64]                  // 0x005e32ab    d95c2464
                         {disp8} fld        dword ptr [ebx + 0x40]                  // 0x005e32af    d94340
                         {disp8} fst        dword ptr [esp + 0x18]                  // 0x005e32b2    d9542418
                         {disp8} fstp       dword ptr [esp + 0x14]                  // 0x005e32b6    d95c2414
                         call               dword ptr [eax + 0x84]                  // 0x005e32ba    ff9084000000
                         test               eax, eax                                // 0x005e32c0    85c0
                         {disp32} je        _jmp_addr_0x005e3480                    // 0x005e32c2    0f84b8010000
                         mov                edx, dword ptr [ebx]                    // 0x005e32c8    8b13
                         mov.s              ecx, ebx                                // 0x005e32ca    8bcb
                         call               dword ptr [edx + 0xf8]                  // 0x005e32cc    ff92f8000000
                         mov.s              edx, eax                                // 0x005e32d2    8bd0
                         add                edx, 0x14                               // 0x005e32d4    83c214
                         mov                dword ptr [edx], 0x00000000             // 0x005e32d7    c70200000000
                         {disp8} fld        dword ptr [ebx + 0x3c]                  // 0x005e32dd    d9433c
                         fchs                                                       // 0x005e32e0    d9e0
                         {disp8} lea        esi, dword ptr [ebx + 0x14]             // 0x005e32e2    8d7314
                         mov                ecx, 0x0000000c                         // 0x005e32e5    b90c000000
                         {disp8} lea        edi, dword ptr [esp + 0x30]             // 0x005e32ea    8d7c2430
                         rep movsd          es:[edi], dword ptr ds:[esi]            // 0x005e32ee    f3a5
                         xor.s              ecx, ecx                                // 0x005e32f0    33c9
                         {disp8} fadd       dword ptr [esp + 0x58]                  // 0x005e32f2    d8442458
_jmp_addr_0x005e32f6:    cmp                ecx, 0x06                               // 0x005e32f6    83f906
                         {disp8} ja         _jmp_addr_0x005e3376                    // 0x005e32f9    777b
                         jmp                dword ptr [ecx*4 + 0x5e3748]            // 0x005e32fb    ff248d48375e00
                         {disp8} fld        dword ptr [edx + 0x10]                  // 0x005e3302    d94210
                         {disp8} fadd       dword ptr [edx + 0x04]                  // 0x005e3305    d84204
                         {disp8} fld        dword ptr [edx + 0x14]                  // 0x005e3308    d94214
                         {disp8} fadd       dword ptr [edx + 0x08]                  // 0x005e330b    d84208
                         {disp8} jmp        _jmp_addr_0x005e3382                    // 0x005e330e    eb72
                         {disp8} fld        dword ptr [edx + 0x04]                  // 0x005e3310    d94204
                         {disp8} fsub       dword ptr [edx + 0x10]                  // 0x005e3313    d86210
                         {disp8} fld        dword ptr [edx + 0x14]                  // 0x005e3316    d94214
                         {disp8} fadd       dword ptr [edx + 0x08]                  // 0x005e3319    d84208
                         {disp8} jmp        _jmp_addr_0x005e3382                    // 0x005e331c    eb64
                         {disp8} fld        dword ptr [edx + 0x10]                  // 0x005e331e    d94210
                         {disp8} fadd       dword ptr [edx + 0x04]                  // 0x005e3321    d84204
                         {disp8} fld        dword ptr [edx + 0x14]                  // 0x005e3324    d94214
                         {disp8} fadd       dword ptr [edx + 0x08]                  // 0x005e3327    d84208
                         {disp8} fstp       dword ptr [esp + 0x28]                  // 0x005e332a    d95c2428
                         {disp8} fld        dword ptr [edx + 0x0c]                  // 0x005e332e    d9420c
                         {disp8} fsub       dword ptr [edx + 0x18]                  // 0x005e3331    d86218
                         {disp8} jmp        _jmp_addr_0x005e338c                    // 0x005e3334    eb56
                         {disp8} fld        dword ptr [edx + 0x10]                  // 0x005e3336    d94210
                         {disp8} fadd       dword ptr [edx + 0x04]                  // 0x005e3339    d84204
                         {disp8} jmp        _jmp_addr_0x005e337c                    // 0x005e333c    eb3e
                         {disp8} fld        dword ptr [edx + 0x04]                  // 0x005e333e    d94204
                         {disp8} fsub       dword ptr [edx + 0x10]                  // 0x005e3341    d86210
                         {disp8} fld        dword ptr [edx + 0x14]                  // 0x005e3344    d94214
                         {disp8} fadd       dword ptr [edx + 0x08]                  // 0x005e3347    d84208
                         {disp8} fstp       dword ptr [esp + 0x28]                  // 0x005e334a    d95c2428
                         {disp8} fld        dword ptr [edx + 0x0c]                  // 0x005e334e    d9420c
                         {disp8} fsub       dword ptr [edx + 0x18]                  // 0x005e3351    d86218
                         {disp8} jmp        _jmp_addr_0x005e338c                    // 0x005e3354    eb36
                         {disp8} fld        dword ptr [edx + 0x10]                  // 0x005e3356    d94210
                         {disp8} fadd       dword ptr [edx + 0x04]                  // 0x005e3359    d84204
                         {disp8} jmp        _jmp_addr_0x005e3364                    // 0x005e335c    eb06
                         {disp8} fld        dword ptr [edx + 0x04]                  // 0x005e335e    d94204
                         {disp8} fsub       dword ptr [edx + 0x10]                  // 0x005e3361    d86210
_jmp_addr_0x005e3364:    {disp8} fld        dword ptr [edx + 0x08]                  // 0x005e3364    d94208
                         {disp8} fsub       dword ptr [edx + 0x14]                  // 0x005e3367    d86214
                         {disp8} fstp       dword ptr [esp + 0x28]                  // 0x005e336a    d95c2428
                         {disp8} fld        dword ptr [edx + 0x0c]                  // 0x005e336e    d9420c
                         {disp8} fsub       dword ptr [edx + 0x18]                  // 0x005e3371    d86218
                         {disp8} jmp        _jmp_addr_0x005e338c                    // 0x005e3374    eb16
_jmp_addr_0x005e3376:    {disp8} fld        dword ptr [edx + 0x04]                  // 0x005e3376    d94204
                         {disp8} fsub       dword ptr [edx + 0x10]                  // 0x005e3379    d86210
_jmp_addr_0x005e337c:    {disp8} fld        dword ptr [edx + 0x08]                  // 0x005e337c    d94208
                         {disp8} fsub       dword ptr [edx + 0x14]                  // 0x005e337f    d86214
_jmp_addr_0x005e3382:    {disp8} fstp       dword ptr [esp + 0x28]                  // 0x005e3382    d95c2428
                         {disp8} fld        dword ptr [edx + 0x18]                  // 0x005e3386    d94218
                         {disp8} fadd       dword ptr [edx + 0x0c]                  // 0x005e3389    d8420c
_jmp_addr_0x005e338c:    {disp8} fstp       dword ptr [esp + 0x2c]                  // 0x005e338c    d95c242c
                         {disp8} mov        eax, dword ptr [esp + 0x28]             // 0x005e3390    8b442428
                         {disp8} mov        dword ptr [esp + 0x20], eax             // 0x005e3394    89442420
                         {disp8} fst        dword ptr [esp + 0x1c]                  // 0x005e3398    d954241c
                         {disp8} fld        dword ptr [esp + 0x48]                  // 0x005e339c    d9442448
                         {disp8} fmul       dword ptr [esp + 0x2c]                  // 0x005e33a0    d84c242c
                         {disp8} fld        dword ptr [esp + 0x3c]                  // 0x005e33a4    d944243c
                         {disp8} fmul       dword ptr [esp + 0x28]                  // 0x005e33a8    d84c2428
                         faddp              st(1), st                               // 0x005e33ac    dec1
                         {disp8} fld        dword ptr [esp + 0x30]                  // 0x005e33ae    d9442430
                         fmul               st, st(2)                               // 0x005e33b2    d8ca
                         faddp              st(1), st                               // 0x005e33b4    dec1
                         {disp8} fadd       dword ptr [esp + 0x54]                  // 0x005e33b6    d8442454
                         fstp               st(1)                                   // 0x005e33ba    ddd9
                         {disp8} fld        dword ptr [esp + 0x34]                  // 0x005e33bc    d9442434
                         {disp8} fmul       dword ptr [esp + 0x1c]                  // 0x005e33c0    d84c241c
                         {disp8} fld        dword ptr [esp + 0x4c]                  // 0x005e33c4    d944244c
                         {disp8} fmul       dword ptr [esp + 0x2c]                  // 0x005e33c8    d84c242c
                         faddp              st(1), st                               // 0x005e33cc    dec1
                         {disp8} fld        dword ptr [esp + 0x40]                  // 0x005e33ce    d9442440
                         {disp8} fmul       dword ptr [esp + 0x28]                  // 0x005e33d2    d84c2428
                         faddp              st(1), st                               // 0x005e33d6    dec1
                         fadd               st, st(2)                               // 0x005e33d8    d8c2
                         {disp8} fstp       dword ptr [esp + 0x28]                  // 0x005e33da    d95c2428
                         {disp8} fld        dword ptr [esp + 0x44]                  // 0x005e33de    d9442444
                         {disp8} fmul       dword ptr [esp + 0x20]                  // 0x005e33e2    d84c2420
                         {disp8} fld        dword ptr [esp + 0x38]                  // 0x005e33e6    d9442438
                         {disp8} fmul       dword ptr [esp + 0x1c]                  // 0x005e33ea    d84c241c
                         faddp              st(1), st                               // 0x005e33ee    dec1
                         {disp8} fld        dword ptr [esp + 0x50]                  // 0x005e33f0    d9442450
                         {disp8} fmul       dword ptr [esp + 0x2c]                  // 0x005e33f4    d84c242c
                         faddp              st(1), st                               // 0x005e33f8    dec1
                         {disp8} fadd       dword ptr [esp + 0x5c]                  // 0x005e33fa    d844245c
                         {disp8} fstp       dword ptr [esp + 0x2c]                  // 0x005e33fe    d95c242c
                         {disp32} fld       dword ptr [data_bytes + 0x2738e4]       // 0x005e3402    d905e498c300
                         {disp8} fmul       dword ptr [esp + 0x28]                  // 0x005e3408    d84c2428
                         faddp              st(1), st                               // 0x005e340c    dec1
                         {disp32} fld       dword ptr [data_bytes + 0x2738e8]       // 0x005e340e    d905e898c300
                         {disp8} fmul       dword ptr [esp + 0x28]                  // 0x005e3414    d84c2428
                         {disp8} fadd       dword ptr [esp + 0x2c]                  // 0x005e3418    d844242c
                         {disp8} fstp       dword ptr [esp + 0x2c]                  // 0x005e341c    d95c242c
                         {disp8} fcom       dword ptr [esp + 0x64]                  // 0x005e3420    d8542464
                         fnstsw             ax                                      // 0x005e3424    dfe0
                         test               ah, 0x01                                // 0x005e3426    f6c401
                         {disp8} je         _jmp_addr_0x005e3431                    // 0x005e3429    7406
                         {disp8} fstp       dword ptr [esp + 0x64]                  // 0x005e342b    d95c2464
                         {disp8} jmp        _jmp_addr_0x005e3444                    // 0x005e342f    eb13
_jmp_addr_0x005e3431:    {disp8} fcom       dword ptr [esp + 0x10]                  // 0x005e3431    d8542410
                         fnstsw             ax                                      // 0x005e3435    dfe0
                         test               ah, 0x41                                // 0x005e3437    f6c441
                         {disp8} jne        _jmp_addr_0x005e3442                    // 0x005e343a    7506
                         {disp8} fstp       dword ptr [esp + 0x10]                  // 0x005e343c    d95c2410
                         {disp8} jmp        _jmp_addr_0x005e3444                    // 0x005e3440    eb02
_jmp_addr_0x005e3442:    fstp               st(0)                                   // 0x005e3442    ddd8
_jmp_addr_0x005e3444:    {disp8} fld        dword ptr [esp + 0x2c]                  // 0x005e3444    d944242c
                         {disp8} fcomp      dword ptr [esp + 0x14]                  // 0x005e3448    d85c2414
                         fnstsw             ax                                      // 0x005e344c    dfe0
                         test               ah, 0x01                                // 0x005e344e    f6c401
                         {disp8} je         _jmp_addr_0x005e345d                    // 0x005e3451    740a
                         {disp8} mov        eax, dword ptr [esp + 0x2c]             // 0x005e3453    8b44242c
                         {disp8} mov        dword ptr [esp + 0x14], eax             // 0x005e3457    89442414
                         {disp8} jmp        _jmp_addr_0x005e3474                    // 0x005e345b    eb17
_jmp_addr_0x005e345d:    {disp8} fld        dword ptr [esp + 0x2c]                  // 0x005e345d    d944242c
                         {disp8} fcomp      dword ptr [esp + 0x18]                  // 0x005e3461    d85c2418
                         fnstsw             ax                                      // 0x005e3465    dfe0
                         test               ah, 0x41                                // 0x005e3467    f6c441
                         {disp8} jne        _jmp_addr_0x005e3474                    // 0x005e346a    7508
                         {disp8} mov        eax, dword ptr [esp + 0x2c]             // 0x005e346c    8b44242c
                         {disp8} mov        dword ptr [esp + 0x18], eax             // 0x005e3470    89442418
_jmp_addr_0x005e3474:    inc                ecx                                     // 0x005e3474    41
                         cmp                ecx, 0x08                               // 0x005e3475    83f908
                         {disp32} jl        _jmp_addr_0x005e32f6                    // 0x005e3478    0f8c78feffff
                         fstp               st(0)                                   // 0x005e347e    ddd8
_jmp_addr_0x005e3480:    mov                edx, dword ptr [ebx]                    // 0x005e3480    8b13
                         mov.s              ecx, ebx                                // 0x005e3482    8bcb
                         call               dword ptr [edx + 0x8c]                  // 0x005e3484    ff928c000000
                         test               eax, eax                                // 0x005e348a    85c0
                         {disp32} je        _jmp_addr_0x005e366e                    // 0x005e348c    0f84dc010000
                         mov                eax, dword ptr [ebx]                    // 0x005e3492    8b03
                         mov.s              ecx, ebx                                // 0x005e3494    8bcb
                         call               dword ptr [eax + 0xf8]                  // 0x005e3496    ff90f8000000
                         {disp8} mov        ecx, dword ptr [eax + 0x04]             // 0x005e349c    8b4804
                         test               ch, -0x80                               // 0x005e349f    f6c580
                         {disp32} je        _jmp_addr_0x005e366e                    // 0x005e34a2    0f84c6010000
                         {disp8} mov        eax, dword ptr [eax + 0x48]             // 0x005e34a8    8b4048
                         test               eax, eax                                // 0x005e34ab    85c0
                         {disp32} je        _jmp_addr_0x005e366e                    // 0x005e34ad    0f84bb010000
                         cmp                dword ptr [eax], 0x00                   // 0x005e34b3    833800
                         {disp32} je        _jmp_addr_0x005e366e                    // 0x005e34b6    0f84b2010000
                         {disp8} mov        eax, dword ptr [eax + 0x04]             // 0x005e34bc    8b4004
                         {disp8} mov        edx, dword ptr [eax + 0x14]             // 0x005e34bf    8b5014
                         test               edx, edx                                // 0x005e34c2    85d2
                         {disp32} jle       _jmp_addr_0x005e366e                    // 0x005e34c4    0f8ea4010000
                         {disp8} fld        dword ptr [esp + 0x18]                  // 0x005e34ca    d9442418
                         {disp8} lea        ecx, dword ptr [eax + 0x1c]             // 0x005e34ce    8d481c
_jmp_addr_0x005e34d1:    {disp8} fld        dword ptr [ecx + -0x04]                 // 0x005e34d1    d941fc
                         mov                eax, dword ptr [ecx]                    // 0x005e34d4    8b01
                         {disp8} fst        dword ptr [esp + 0x20]                  // 0x005e34d6    d9542420
                         {disp8} mov        dword ptr [esp + 0x2c], eax             // 0x005e34da    8944242c
                         {disp8} fld        dword ptr [esp + 0x2c]                  // 0x005e34de    d944242c
                         {disp8} fmul       dword ptr [ebx + 0x2c]                  // 0x005e34e2    d84b2c
                         fxch               st(1)                                   // 0x005e34e5    d9c9
                         {disp8} fmul       dword ptr [ebx + 0x14]                  // 0x005e34e7    d84b14
                         faddp              st(1), st                               // 0x005e34ea    dec1
                         {disp8} fadd       dword ptr [ebx + 0x38]                  // 0x005e34ec    d84338
                         {disp8} fld        dword ptr [esp + 0x20]                  // 0x005e34ef    d9442420
                         {disp8} fmul       dword ptr [ebx + 0x1c]                  // 0x005e34f3    d84b1c
                         {disp8} fld        dword ptr [esp + 0x2c]                  // 0x005e34f6    d944242c
                         {disp8} fmul       dword ptr [ebx + 0x34]                  // 0x005e34fa    d84b34
                         faddp              st(1), st                               // 0x005e34fd    dec1
                         {disp8} fadd       dword ptr [ebx + 0x40]                  // 0x005e34ff    d84340
                         {disp8} fstp       dword ptr [esp + 0x2c]                  // 0x005e3502    d95c242c
                         {disp8} fcom       dword ptr [esp + 0x64]                  // 0x005e3506    d8542464
                         fnstsw             ax                                      // 0x005e350a    dfe0
                         test               ah, 0x01                                // 0x005e350c    f6c401
                         {disp8} je         _jmp_addr_0x005e3517                    // 0x005e350f    7406
                         {disp8} fstp       dword ptr [esp + 0x64]                  // 0x005e3511    d95c2464
                         {disp8} jmp        _jmp_addr_0x005e352a                    // 0x005e3515    eb13
_jmp_addr_0x005e3517:    {disp8} fcom       dword ptr [esp + 0x10]                  // 0x005e3517    d8542410
                         fnstsw             ax                                      // 0x005e351b    dfe0
                         test               ah, 0x41                                // 0x005e351d    f6c441
                         {disp8} jne        _jmp_addr_0x005e3528                    // 0x005e3520    7506
                         {disp8} fstp       dword ptr [esp + 0x10]                  // 0x005e3522    d95c2410
                         {disp8} jmp        _jmp_addr_0x005e352a                    // 0x005e3526    eb02
_jmp_addr_0x005e3528:    fstp               st(0)                                   // 0x005e3528    ddd8
_jmp_addr_0x005e352a:    {disp8} fld        dword ptr [esp + 0x2c]                  // 0x005e352a    d944242c
                         {disp8} fcomp      dword ptr [esp + 0x14]                  // 0x005e352e    d85c2414
                         fnstsw             ax                                      // 0x005e3532    dfe0
                         test               ah, 0x01                                // 0x005e3534    f6c401
                         {disp8} je         _jmp_addr_0x005e3543                    // 0x005e3537    740a
                         {disp8} mov        eax, dword ptr [esp + 0x2c]             // 0x005e3539    8b44242c
                         {disp8} mov        dword ptr [esp + 0x14], eax             // 0x005e353d    89442414
                         {disp8} jmp        _jmp_addr_0x005e3556                    // 0x005e3541    eb13
_jmp_addr_0x005e3543:    {disp8} fld        dword ptr [esp + 0x2c]                  // 0x005e3543    d944242c
                         fcomp              st(1)                                   // 0x005e3547    d8d9
                         fnstsw             ax                                      // 0x005e3549    dfe0
                         test               ah, 0x41                                // 0x005e354b    f6c441
                         {disp8} jne        _jmp_addr_0x005e3556                    // 0x005e354e    7506
                         fstp               st(0)                                   // 0x005e3550    ddd8
                         {disp8} fld        dword ptr [esp + 0x2c]                  // 0x005e3552    d944242c
_jmp_addr_0x005e3556:    {disp8} fld        dword ptr [ecx + 0x04]                  // 0x005e3556    d94104
                         {disp8} mov        eax, dword ptr [ecx + 0x08]             // 0x005e3559    8b4108
                         {disp8} fst        dword ptr [esp + 0x20]                  // 0x005e355c    d9542420
                         {disp8} mov        dword ptr [esp + 0x2c], eax             // 0x005e3560    8944242c
                         {disp8} fld        dword ptr [esp + 0x2c]                  // 0x005e3564    d944242c
                         {disp8} fmul       dword ptr [ebx + 0x2c]                  // 0x005e3568    d84b2c
                         fxch               st(1)                                   // 0x005e356b    d9c9
                         {disp8} fmul       dword ptr [ebx + 0x14]                  // 0x005e356d    d84b14
                         faddp              st(1), st                               // 0x005e3570    dec1
                         {disp8} fadd       dword ptr [ebx + 0x38]                  // 0x005e3572    d84338
                         {disp8} fld        dword ptr [esp + 0x20]                  // 0x005e3575    d9442420
                         {disp8} fmul       dword ptr [ebx + 0x1c]                  // 0x005e3579    d84b1c
                         {disp8} fld        dword ptr [esp + 0x2c]                  // 0x005e357c    d944242c
                         {disp8} fmul       dword ptr [ebx + 0x34]                  // 0x005e3580    d84b34
                         faddp              st(1), st                               // 0x005e3583    dec1
                         {disp8} fadd       dword ptr [ebx + 0x40]                  // 0x005e3585    d84340
                         {disp8} fstp       dword ptr [esp + 0x2c]                  // 0x005e3588    d95c242c
                         {disp8} fcom       dword ptr [esp + 0x64]                  // 0x005e358c    d8542464
                         fnstsw             ax                                      // 0x005e3590    dfe0
                         test               ah, 0x01                                // 0x005e3592    f6c401
                         {disp8} je         _jmp_addr_0x005e359d                    // 0x005e3595    7406
                         {disp8} fstp       dword ptr [esp + 0x64]                  // 0x005e3597    d95c2464
                         {disp8} jmp        _jmp_addr_0x005e35b0                    // 0x005e359b    eb13
_jmp_addr_0x005e359d:    {disp8} fcom       dword ptr [esp + 0x10]                  // 0x005e359d    d8542410
                         fnstsw             ax                                      // 0x005e35a1    dfe0
                         test               ah, 0x41                                // 0x005e35a3    f6c441
                         {disp8} jne        _jmp_addr_0x005e35ae                    // 0x005e35a6    7506
                         {disp8} fstp       dword ptr [esp + 0x10]                  // 0x005e35a8    d95c2410
                         {disp8} jmp        _jmp_addr_0x005e35b0                    // 0x005e35ac    eb02
_jmp_addr_0x005e35ae:    fstp               st(0)                                   // 0x005e35ae    ddd8
_jmp_addr_0x005e35b0:    {disp8} fld        dword ptr [esp + 0x2c]                  // 0x005e35b0    d944242c
                         {disp8} fcomp      dword ptr [esp + 0x14]                  // 0x005e35b4    d85c2414
                         fnstsw             ax                                      // 0x005e35b8    dfe0
                         test               ah, 0x01                                // 0x005e35ba    f6c401
                         {disp8} je         _jmp_addr_0x005e35c9                    // 0x005e35bd    740a
                         {disp8} mov        eax, dword ptr [esp + 0x2c]             // 0x005e35bf    8b44242c
                         {disp8} mov        dword ptr [esp + 0x14], eax             // 0x005e35c3    89442414
                         {disp8} jmp        _jmp_addr_0x005e35dc                    // 0x005e35c7    eb13
_jmp_addr_0x005e35c9:    {disp8} fld        dword ptr [esp + 0x2c]                  // 0x005e35c9    d944242c
                         fcomp              st(1)                                   // 0x005e35cd    d8d9
                         fnstsw             ax                                      // 0x005e35cf    dfe0
                         test               ah, 0x41                                // 0x005e35d1    f6c441
                         {disp8} jne        _jmp_addr_0x005e35dc                    // 0x005e35d4    7506
                         fstp               st(0)                                   // 0x005e35d6    ddd8
                         {disp8} fld        dword ptr [esp + 0x2c]                  // 0x005e35d8    d944242c
_jmp_addr_0x005e35dc:    {disp8} fld        dword ptr [ecx + 0x0c]                  // 0x005e35dc    d9410c
                         {disp8} mov        eax, dword ptr [ecx + 0x10]             // 0x005e35df    8b4110
                         {disp8} fst        dword ptr [esp + 0x20]                  // 0x005e35e2    d9542420
                         {disp8} mov        dword ptr [esp + 0x2c], eax             // 0x005e35e6    8944242c
                         {disp8} fld        dword ptr [esp + 0x2c]                  // 0x005e35ea    d944242c
                         {disp8} fmul       dword ptr [ebx + 0x2c]                  // 0x005e35ee    d84b2c
                         fxch               st(1)                                   // 0x005e35f1    d9c9
                         {disp8} fmul       dword ptr [ebx + 0x14]                  // 0x005e35f3    d84b14
                         faddp              st(1), st                               // 0x005e35f6    dec1
                         {disp8} fadd       dword ptr [ebx + 0x38]                  // 0x005e35f8    d84338
                         {disp8} fld        dword ptr [esp + 0x20]                  // 0x005e35fb    d9442420
                         {disp8} fmul       dword ptr [ebx + 0x1c]                  // 0x005e35ff    d84b1c
                         {disp8} fld        dword ptr [esp + 0x2c]                  // 0x005e3602    d944242c
                         {disp8} fmul       dword ptr [ebx + 0x34]                  // 0x005e3606    d84b34
                         faddp              st(1), st                               // 0x005e3609    dec1
                         {disp8} fadd       dword ptr [ebx + 0x40]                  // 0x005e360b    d84340
                         {disp8} fstp       dword ptr [esp + 0x2c]                  // 0x005e360e    d95c242c
                         {disp8} fcom       dword ptr [esp + 0x64]                  // 0x005e3612    d8542464
                         fnstsw             ax                                      // 0x005e3616    dfe0
                         test               ah, 0x01                                // 0x005e3618    f6c401
                         {disp8} je         _jmp_addr_0x005e3623                    // 0x005e361b    7406
                         {disp8} fstp       dword ptr [esp + 0x64]                  // 0x005e361d    d95c2464
                         {disp8} jmp        _jmp_addr_0x005e3636                    // 0x005e3621    eb13
_jmp_addr_0x005e3623:    {disp8} fcom       dword ptr [esp + 0x10]                  // 0x005e3623    d8542410
                         fnstsw             ax                                      // 0x005e3627    dfe0
                         test               ah, 0x41                                // 0x005e3629    f6c441
                         {disp8} jne        _jmp_addr_0x005e3634                    // 0x005e362c    7506
                         {disp8} fstp       dword ptr [esp + 0x10]                  // 0x005e362e    d95c2410
                         {disp8} jmp        _jmp_addr_0x005e3636                    // 0x005e3632    eb02
_jmp_addr_0x005e3634:    fstp               st(0)                                   // 0x005e3634    ddd8
_jmp_addr_0x005e3636:    {disp8} fld        dword ptr [esp + 0x2c]                  // 0x005e3636    d944242c
                         {disp8} fcomp      dword ptr [esp + 0x14]                  // 0x005e363a    d85c2414
                         fnstsw             ax                                      // 0x005e363e    dfe0
                         test               ah, 0x01                                // 0x005e3640    f6c401
                         {disp8} je         _jmp_addr_0x005e364f                    // 0x005e3643    740a
                         {disp8} mov        eax, dword ptr [esp + 0x2c]             // 0x005e3645    8b44242c
                         {disp8} mov        dword ptr [esp + 0x14], eax             // 0x005e3649    89442414
                         {disp8} jmp        _jmp_addr_0x005e3662                    // 0x005e364d    eb13
_jmp_addr_0x005e364f:    {disp8} fld        dword ptr [esp + 0x2c]                  // 0x005e364f    d944242c
                         fcomp              st(1)                                   // 0x005e3653    d8d9
                         fnstsw             ax                                      // 0x005e3655    dfe0
                         test               ah, 0x41                                // 0x005e3657    f6c441
                         {disp8} jne        _jmp_addr_0x005e3662                    // 0x005e365a    7506
                         fstp               st(0)                                   // 0x005e365c    ddd8
                         {disp8} fld        dword ptr [esp + 0x2c]                  // 0x005e365e    d944242c
_jmp_addr_0x005e3662:    add                ecx, 0x30                               // 0x005e3662    83c130
                         dec                edx                                     // 0x005e3665    4a
                         {disp32} jne       _jmp_addr_0x005e34d1                    // 0x005e3666    0f8565feffff
                         {disp8} jmp        _jmp_addr_0x005e3672                    // 0x005e366c    eb04
_jmp_addr_0x005e366e:    {disp8} fld        dword ptr [esp + 0x18]                  // 0x005e366e    d9442418
_jmp_addr_0x005e3672:    {disp8} fld        dword ptr [esp + 0x64]                  // 0x005e3672    d9442464
                         {disp32} fmul      dword ptr [rdata_bytes + 0x822cc]       // 0x005e3676    d80dccb29200
                         call               _jmp_addr_0x007a1400                    // 0x005e367c    e87fdd1b00
                         {disp8} fld        dword ptr [esp + 0x10]                  // 0x005e3681    d9442410
                         {disp32} fmul      dword ptr [rdata_bytes + 0x822cc]       // 0x005e3685    d80dccb29200
                         mov.s              ebx, eax                                // 0x005e368b    8bd8
                         call               _jmp_addr_0x007a1400                    // 0x005e368d    e86edd1b00
                         {disp8} fld        dword ptr [esp + 0x14]                  // 0x005e3692    d9442414
                         {disp32} fmul      dword ptr [rdata_bytes + 0x822cc]       // 0x005e3696    d80dccb29200
                         mov.s              esi, eax                                // 0x005e369c    8bf0
                         call               _jmp_addr_0x007a1400                    // 0x005e369e    e85ddd1b00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x822cc]       // 0x005e36a3    d80dccb29200
                         mov.s              edi, eax                                // 0x005e36a9    8bf8
                         {disp8} mov        dword ptr [esp + 0x64], edi             // 0x005e36ab    897c2464
                         call               _jmp_addr_0x007a1400                    // 0x005e36af    e84cdd1b00
                         test               ebx, ebx                                // 0x005e36b4    85db
                         mov.s              ebp, eax                                // 0x005e36b6    8be8
                         {disp8} jge        _jmp_addr_0x005e36bc                    // 0x005e36b8    7d02
                         xor.s              ebx, ebx                                // 0x005e36ba    33db
_jmp_addr_0x005e36bc:    test               edi, edi                                // 0x005e36bc    85ff
                         {disp8} jge        _jmp_addr_0x005e36c8                    // 0x005e36be    7d08
                         {disp8} mov        dword ptr [esp + 0x64], 0x00000000      // 0x005e36c0    c744246400000000
_jmp_addr_0x005e36c8:    cmp                esi, 0x00000200                         // 0x005e36c8    81fe00020000
                         .byte              0x72, 0x5// {disp8} jb _jmp_addr_0x005e36d5 // 0x005e36ce    7205
                         mov                esi, 0x000001ff                         // 0x005e36d0    beff010000
_jmp_addr_0x005e36d5:    cmp                ebp, 0x00000200                         // 0x005e36d5    81fd00020000
                         .byte              0x72, 0x5// {disp8} jb _jmp_addr_0x005e36e2 // 0x005e36db    7205
                         mov                ebp, 0x000001ff                         // 0x005e36dd    bdff010000
_jmp_addr_0x005e36e2:    cmp.s              ebx, esi                                // 0x005e36e2    3bde
                         {disp8} jg         _jmp_addr_0x005e373d                    // 0x005e36e4    7f57
                         mov.s              edi, ebx                                // 0x005e36e6    8bfb
                         shl                edi, 5                                  // 0x005e36e8    c1e705
                         sub.s              esi, ebx                                // 0x005e36eb    2bf3
                         add                edi, OFFSET ?g_index_block@LH3DIsland@@3PAY0CA@EA                         // 0x005e36ed    81c764c9e900
                         inc                esi                                     // 0x005e36f3    46
                         mov.s              ebx, esi                                // 0x005e36f4    8bde
_jmp_addr_0x005e36f6:    {disp8} mov        esi, dword ptr [esp + 0x64]             // 0x005e36f6    8b742464
                         cmp.s              esi, ebp                                // 0x005e36fa    3bf5
                         {disp8} jg         _jmp_addr_0x005e3737                    // 0x005e36fc    7f39
_jmp_addr_0x005e36fe:    cmp                edi, OFFSET ?g_index_block@LH3DIsland@@3PAY0CA@EA                         // 0x005e36fe    81ff64c9e900
                         {disp8} jl         _jmp_addr_0x005e3732                    // 0x005e3704    7c2c
                         cmp                edi, 0x00e9cd44                         // 0x005e3706    81ff44cde900
                         {disp8} jg         _jmp_addr_0x005e3732                    // 0x005e370c    7f24
                         test               esi, esi                                // 0x005e370e    85f6
                         {disp8} jl         _jmp_addr_0x005e3732                    // 0x005e3710    7c20
                         cmp                esi, 0x1f                               // 0x005e3712    83fe1f
                         {disp8} jg         _jmp_addr_0x005e3732                    // 0x005e3715    7f1b
                         xor.s              eax, eax                                // 0x005e3717    33c0
                         mov                al, byte ptr [edi + esi * 0x1]          // 0x005e3719    8a0437
                         test               eax, eax                                // 0x005e371c    85c0
                         {disp8} je         _jmp_addr_0x005e3732                    // 0x005e371e    7412
                         {disp32} mov       eax, dword ptr [eax * 0x4 + ?g_ptr_blocks@LH3DIsland@@3PAPAULandBlock@@A] // 0x005e3720    8b048564c5e900
                         test               eax, eax                                // 0x005e3727    85c0
                         {disp8} je         _jmp_addr_0x005e3732                    // 0x005e3729    7407
                         mov.s              ecx, eax                                // 0x005e372b    8bc8
                         call               _jmp_addr_0x008786d0                    // 0x005e372d    e89e4f2900
_jmp_addr_0x005e3732:    inc                esi                                     // 0x005e3732    46
                         cmp.s              esi, ebp                                // 0x005e3733    3bf5
                         {disp8} jle        _jmp_addr_0x005e36fe                    // 0x005e3735    7ec7
_jmp_addr_0x005e3737:    add                edi, 0x20                               // 0x005e3737    83c720
                         dec                ebx                                     // 0x005e373a    4b
                         {disp8} jne        _jmp_addr_0x005e36f6                    // 0x005e373b    75b9
_jmp_addr_0x005e373d:    pop                edi                                     // 0x005e373d    5f
                         pop                esi                                     // 0x005e373e    5e
                         pop                ebp                                     // 0x005e373f    5d
                         pop                ebx                                     // 0x005e3740    5b
                         add                esp, 0x50                               // 0x005e3741    83c450
                         ret                                                        // 0x005e3744    c3

// Snippet: db, [0x005e3745, 0x005e3748)
.byte 0x8d, 0x49, 0x00            // 0x005e3745

// Snippet: jmptbl, [0x005e3748, 0x005e3764)
.byte 0x02, 0x33, 0x5e, 0x00      // 0x005e3748
.byte 0x10, 0x33, 0x5e, 0x00      // 0x005e374c
.byte 0x1e, 0x33, 0x5e, 0x00      // 0x005e3750
.byte 0x36, 0x33, 0x5e, 0x00      // 0x005e3754
.byte 0x3e, 0x33, 0x5e, 0x00      // 0x005e3758
.byte 0x56, 0x33, 0x5e, 0x00      // 0x005e375c
.byte 0x5e, 0x33, 0x5e, 0x00      // 0x005e3760

// Snippet: db, [0x005e3764, 0x005e3770)
.byte 0x90, 0x90, 0x90, 0x90      // 0x005e3764
.byte 0x90, 0x90, 0x90, 0x90      // 0x005e3768
.byte 0x90, 0x90, 0x90, 0x90      // 0x005e376c

