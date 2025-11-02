.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x00436960
.extern _jmp_addr_0x004775d0
.extern _jmp_addr_0x00477800
.extern _jmp_addr_0x004cf060
.extern _jmp_addr_0x004d3800
.extern _jmp_addr_0x004dcda0
.extern _jmp_addr_0x004de550
.extern _jmp_addr_0x004e0410
.extern _jmp_addr_0x004e0600
.extern _jmp_addr_0x004e1b40
.extern _jmp_addr_0x004e1e20
.extern _jmp_addr_0x004e22e0
.extern _jmp_addr_0x004ef4f0
.extern _jmp_addr_0x004f12d0
.extern _jmp_addr_0x004f12e0
.extern _jmp_addr_0x004f25d0
.extern _jmp_addr_0x004f25f0
.extern ?SetMessage@GDebug@@SAXGPADZZ
.extern ?GetReaction@Living@@QAEXXZ
.extern @GetNearestTown__9MapCoordsCFf@12
.extern @GetLHPoint__9MapCoordsCFv@12
.extern _jmp_addr_0x0064da80
.extern _jmp_addr_0x007436f0
.extern _jmp_addr_0x0074cd50
.extern ?GetAngleFromXZ@GUtils@@SAGABUMapCoords@@0@Z
.extern _jmp_addr_0x0074d360
.extern _jmp_addr_0x0074d380
.extern ?VillagerDead@Villager@@QAEXW4DEATH_REASON@@PAVGPlayer@@MH@Z
.extern _jmp_addr_0x00771a80
.extern _jmp_addr_0x007a1400
.extern _sprintf

.globl _jmp_addr_0x00475f60
.globl _jmp_addr_0x00475fc0
.globl _jmp_addr_0x00476070

start_0x00475f60_0x00476d10:
// Snippet: asm, [0x00475f60, 0x00476cf4)
_jmp_addr_0x00475f60:    push               esi                                           // 0x00475f60    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x00475f61    8b742408
                         mov                eax, dword ptr [esi]                          // 0x00475f65    8b06
                         push               edi                                           // 0x00475f67    57
                         mov.s              edi, ecx                                      // 0x00475f68    8bf9
                         push               0x0                                           // 0x00475f6a    6a00
                         mov.s              ecx, esi                                      // 0x00475f6c    8bce
                         call               dword ptr [eax + 0x2c8]                       // 0x00475f6e    ff90c8020000
                         test               eax, eax                                      // 0x00475f74    85c0
                         {disp8} je         _jmp_addr_0x00475fab                          // 0x00475f76    7433
                         mov                edx, dword ptr [esi]                          // 0x00475f78    8b16
                         push               0x0                                           // 0x00475f7a    6a00
                         mov.s              ecx, esi                                      // 0x00475f7c    8bce
                         call               dword ptr [edx + 0x11c]                       // 0x00475f7e    ff921c010000
                         mov                eax, dword ptr [edi]                          // 0x00475f84    8b07
                         push               ecx                                           // 0x00475f86    51
                         mov.s              ecx, edi                                      // 0x00475f87    8bcf
                         fstp               dword ptr [esp]                               // 0x00475f89    d91c24
                         call               dword ptr [eax + 0x1c]                        // 0x00475f8c    ff501c
                         push               eax                                           // 0x00475f8f    50
                         push               0x0                                           // 0x00475f90    6a00
                         mov.s              ecx, esi                                      // 0x00475f92    8bce
                         call               ?VillagerDead@Villager@@QAEXW4DEATH_REASON@@PAVGPlayer@@MH@Z                          // 0x00475f94    e827a72d00
                         mov                edx, dword ptr [edi]                          // 0x00475f99    8b17
                         push               0x1                                           // 0x00475f9b    6a01
                         push               0x1                                           // 0x00475f9d    6a01
                         mov.s              ecx, edi                                      // 0x00475f9f    8bcf
                         call               dword ptr [edx + 0x1c]                        // 0x00475fa1    ff521c
                         mov.s              ecx, eax                                      // 0x00475fa4    8bc8
                         call               _jmp_addr_0x0064da80                          // 0x00475fa6    e8d57a1d00
_jmp_addr_0x00475fab:    mov                eax, dword ptr [esi]                          // 0x00475fab    8b06
                         push               0x0                                           // 0x00475fad    6a00
                         mov.s              ecx, esi                                      // 0x00475faf    8bce
                         call               dword ptr [eax + 0xc]                         // 0x00475fb1    ff500c
                         pop                edi                                           // 0x00475fb4    5f
                         pop                esi                                           // 0x00475fb5    5e
                         ret                0x0004                                        // 0x00475fb6    c20400
                         nop                                                              // 0x00475fb9    90
                         nop                                                              // 0x00475fba    90
                         nop                                                              // 0x00475fbb    90
                         nop                                                              // 0x00475fbc    90
                         nop                                                              // 0x00475fbd    90
                         nop                                                              // 0x00475fbe    90
                         nop                                                              // 0x00475fbf    90
_jmp_addr_0x00475fc0:    sub                esp, 0x10                                     // 0x00475fc0    83ec10
                         {disp32} mov       eax, dword ptr [ecx + 0x00000164]             // 0x00475fc3    8b8164010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000f60]             // 0x00475fc9    8b88600f0000
                         push               ebx                                           // 0x00475fcf    53
                         push               esi                                           // 0x00475fd0    56
                         push               edi                                           // 0x00475fd1    57
                         push               ecx                                           // 0x00475fd2    51
                         {disp32} lea       ecx, dword ptr [eax + 0x00002ad8]             // 0x00475fd3    8d88d82a0000
                         call               _jmp_addr_0x004e22e0                          // 0x00475fd9    e802c30600
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x00475fde    d95c240c
                         {disp8} mov        edi, dword ptr [esp + 0x28]                   // 0x00475fe2    8b7c2428
                         {disp8} mov        ebx, dword ptr [esp + 0x24]                   // 0x00475fe6    8b5c2424
                         push               edi                                           // 0x00475fea    57
                         push               ebx                                           // 0x00475feb    53
                         call               ?GetAngleFromXZ@GUtils@@SAGABUMapCoords@@0@Z                               // 0x00475fec    e84f722d00
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x00475ff1    d90590a38a00
                         {disp8} fsub       dword ptr [esp + 0x14]                        // 0x00475ff7    d8642414
                         add                esp, 0x08                                     // 0x00475ffb    83c408
                         mov.s              esi, eax                                      // 0x00475ffe    8bf0
                         {disp32} fmul      dword ptr [rdata_bytes + 0x25fc0]             // 0x00476000    d80dc0ef8c00
                         call               _jmp_addr_0x007a1400                          // 0x00476006    e8f5b33200
                         sub.s              esi, eax                                      // 0x0047600b    2bf0
                         {disp8} jns        _jmp_addr_0x00476017                          // 0x0047600d    7908
                         add                esi, 0x00000800                               // 0x0047600f    81c600080000
                         {disp8} jmp        _jmp_addr_0x00476025                          // 0x00476015    eb0e
_jmp_addr_0x00476017:    cmp                esi, 0x00000800                               // 0x00476017    81fe00080000
                         {disp8} jbe        _jmp_addr_0x00476025                          // 0x0047601d    7606
                         sub                esi, 0x00000800                               // 0x0047601f    81ee00080000
_jmp_addr_0x00476025:    push               edi                                           // 0x00476025    57
                         push               ebx                                           // 0x00476026    53
                         call               _jmp_addr_0x0074cd50                          // 0x00476027    e8246d2d00
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x0047602c    d95c2430
                         {disp8} mov        edi, dword ptr [esp + 0x30]                   // 0x00476030    8b7c2430
                         push               edi                                           // 0x00476034    57
                         push               esi                                           // 0x00476035    56
                         call               _jmp_addr_0x0074d360                          // 0x00476036    e825732d00
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0047603b    d95c2420
                         push               edi                                           // 0x0047603f    57
                         push               esi                                           // 0x00476040    56
                         call               _jmp_addr_0x0074d380                          // 0x00476041    e83a732d00
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x00476046    d9442428
                         {disp8} mov        eax, dword ptr [esp + 0x38]                   // 0x0047604a    8b442438
                         add                esp, 0x18                                     // 0x0047604e    83c418
                         fstp               dword ptr [eax]                               // 0x00476051    d918
                         pop                edi                                           // 0x00476053    5f
                         pop                esi                                           // 0x00476054    5e
                         {disp8} fstp       dword ptr [eax + 0x08]                        // 0x00476055    d95808
                         {disp8} mov        dword ptr [eax + 0x04], 0x00000000            // 0x00476058    c7400400000000
                         pop                ebx                                           // 0x0047605f    5b
                         add                esp, 0x10                                     // 0x00476060    83c410
                         ret                0x000c                                        // 0x00476063    c20c00
                         nop                                                              // 0x00476066    90
                         nop                                                              // 0x00476067    90
                         nop                                                              // 0x00476068    90
                         nop                                                              // 0x00476069    90
                         nop                                                              // 0x0047606a    90
                         nop                                                              // 0x0047606b    90
                         nop                                                              // 0x0047606c    90
                         nop                                                              // 0x0047606d    90
                         nop                                                              // 0x0047606e    90
                         nop                                                              // 0x0047606f    90
_jmp_addr_0x00476070:    push               ebp                                           // 0x00476070    55
                         mov.s              ebp, esp                                      // 0x00476071    8bec
                         and                esp, 0xfffffff8                               // 0x00476073    83e4f8
                         sub                esp, 0x00000488                               // 0x00476076    81ec88040000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30dc68]        // 0x0047607c    a1683ccd00
                         test               eax, eax                                      // 0x00476081    85c0
                         push               ebx                                           // 0x00476083    53
                         push               ebp                                           // 0x00476084    55
                         push               esi                                           // 0x00476085    56
                         push               edi                                           // 0x00476086    57
                         mov.s              esi, ecx                                      // 0x00476087    8bf1
                         {disp32} je        _jmp_addr_0x004767b1                          // 0x00476089    0f8422070000
                         push               0x009d00cc                                    // 0x0047608f    68cc009d00
                         push               0x2                                           // 0x00476094    6a02
                         push               0x00cd3b24                                    // 0x00476096    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x0047609b    e800bd0900
                         add                esp, 0x0c                                     // 0x004760a0    83c40c
                         {disp32} lea       eax, dword ptr [esi + 0x00001228]             // 0x004760a3    8d8628120000
                         push               eax                                           // 0x004760a9    50
                         push               esi                                           // 0x004760aa    56
                         push               0x009d00bc                                    // 0x004760ab    68bc009d00
                         push               0x2                                           // 0x004760b0    6a02
                         push               0x00cd3b24                                    // 0x004760b2    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x004760b7    e8e4bc0900
                         add                esp, 0x14                                     // 0x004760bc    83c414
                         push               0x009d00cc                                    // 0x004760bf    68cc009d00
                         push               0x2                                           // 0x004760c4    6a02
                         push               0x00cd3b24                                    // 0x004760c6    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x004760cb    e8d0bc0900
                         {disp32} mov       eax, dword ptr [esi + 0x00001268]             // 0x004760d0    8b8668120000
                         mov.s              ecx, eax                                      // 0x004760d6    8bc8
                         shl                ecx, 5                                        // 0x004760d8    c1e105
                         add                esp, 0x0c                                     // 0x004760db    83c40c
                         add.s              ecx, eax                                      // 0x004760de    03c8
                         {disp32} lea       edx, dword ptr [ecx * 0x4 + 0x00c84888]       // 0x004760e0    8d148d8848c800
                         push               edx                                           // 0x004760e7    52
                         push               0x009d00ac                                    // 0x004760e8    68ac009d00
                         push               0x2                                           // 0x004760ed    6a02
                         push               0x00cd3b24                                    // 0x004760ef    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x004760f4    e8a7bc0900
                         {disp32} mov       edi, dword ptr [esi + 0x00000164]             // 0x004760f9    8bbe64010000
                         add                edi, 0x00000710                               // 0x004760ff    81c710070000
                         add                esp, 0x10                                     // 0x00476105    83c410
                         {disp32} lea       ecx, dword ptr [edi + 0x00000838]             // 0x00476108    8d8f38080000
                         call               _jmp_addr_0x004f12e0                          // 0x0047610e    e8cdb10700
                         test               eax, eax                                      // 0x00476113    85c0
                         {disp32} je        _jmp_addr_0x004763bb                          // 0x00476115    0f84a0020000
                         {disp32} mov       eax, dword ptr [edi + 0x000008ac]             // 0x0047611b    8b87ac080000
                         test               eax, eax                                      // 0x00476121    85c0
                         {disp32} jbe       _jmp_addr_0x004763bb                          // 0x00476123    0f8692020000
                         cmp                dword ptr [edi + 0x000008a4], eax             // 0x00476129    3987a4080000
                         {disp32} jae       _jmp_addr_0x004763bb                          // 0x0047612f    0f8386020000
                         cmp                dword ptr [edi + 0x000008a8], 0x03            // 0x00476135    83bfa808000003
                         {disp32} jge       _jmp_addr_0x004763bb                          // 0x0047613c    0f8d79020000
                         push               0x009d00a4                                    // 0x00476142    68a4009d00
                         push               0x2                                           // 0x00476147    6a02
                         push               0x00cd3b24                                    // 0x00476149    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x0047614e    e84dbc0900
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x00476153    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00001c14]             // 0x00476159    8b88141c0000
                         add                esp, 0x0c                                     // 0x0047615f    83c40c
                         test               ecx, ecx                                      // 0x00476162    85c9
                         {disp8} je         _jmp_addr_0x0047617a                          // 0x00476164    7414
                         push               0x009d0070                                    // 0x00476166    6870009d00
                         push               0x2                                           // 0x0047616b    6a02
                         push               0x00cd3b24                                    // 0x0047616d    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x00476172    e829bc0900
                         add                esp, 0x0c                                     // 0x00476177    83c40c
_jmp_addr_0x0047617a:    {disp32} mov       edi, dword ptr [esi + 0x00000164]             // 0x0047617a    8bbe64010000
                         {disp32} mov       ecx, dword ptr [edi + 0x00000f50]             // 0x00476180    8b8f500f0000
                         {disp32} lea       eax, dword ptr [ecx * 0x8 + 0x00000000]       // 0x00476186    8d04cd00000000
                         sub.s              eax, ecx                                      // 0x0047618d    2bc1
                         shl                eax, 6                                        // 0x0047618f    c1e006
                         {disp32} mov       ecx, dword ptr [eax + 0x00c67ec0]             // 0x00476192    8b88c07ec600
                         test               ecx, ecx                                      // 0x00476198    85c9
                         {disp8} je         _jmp_addr_0x00476206                          // 0x0047619a    746a
                         {disp32} mov       ecx, dword ptr [edi + 0x00000f54]             // 0x0047619c    8b8f540f0000
                         {disp32} fld       dword ptr [edi + 0x00000f74]                  // 0x004761a2    d987740f0000
                         {disp8} mov        ax, word ptr [ecx + 0x2a]                     // 0x004761a8    668b412a
                         {disp8} mov        dx, word ptr [ecx + 0x26]                     // 0x004761ac    668b5126
                         sub                esp, 0x08                                     // 0x004761b0    83ec08
                         fstp               qword ptr [esp]                               // 0x004761b3    dd1c24
                         and                eax, 0x0000ffff                               // 0x004761b6    25ffff0000
                         and                edx, 0x0000ffff                               // 0x004761bb    81e2ffff0000
                         push               eax                                           // 0x004761c1    50
                         push               edx                                           // 0x004761c2    52
                         mov                edx, dword ptr [ecx]                          // 0x004761c3    8b11
                         call               dword ptr [edx + 0x2c]                        // 0x004761c5    ff522c
                         shl                eax, 6                                        // 0x004761c8    c1e006
                         add                eax, 0x008cbf68                               // 0x004761cb    0568bf8c00
                         push               eax                                           // 0x004761d0    50
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x004761d1    8b8664010000
                         {disp32} mov       eax, dword ptr [eax + 0x00000f50]             // 0x004761d7    8b80500f0000
                         {disp32} lea       ecx, dword ptr [eax * 0x8 + 0x00000000]       // 0x004761dd    8d0cc500000000
                         sub.s              ecx, eax                                      // 0x004761e4    2bc8
                         shl                ecx, 6                                        // 0x004761e6    c1e106
                         add                ecx, 0x00c67f10                               // 0x004761e9    81c1107fc600
                         push               ecx                                           // 0x004761ef    51
                         push               0x009d0040                                    // 0x004761f0    6840009d00
                         push               0x2                                           // 0x004761f5    6a02
                         push               0x00cd3b24                                    // 0x004761f7    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x004761fc    e89fbb0900
                         add                esp, 0x24                                     // 0x00476201    83c424
                         {disp8} jmp        _jmp_addr_0x0047622d                          // 0x00476204    eb27
_jmp_addr_0x00476206:    {disp32} fld       dword ptr [edi + 0x00000f74]                  // 0x00476206    d987740f0000
                         sub                esp, 0x08                                     // 0x0047620c    83ec08
                         fstp               qword ptr [esp]                               // 0x0047620f    dd1c24
                         {disp32} lea       edx, dword ptr [eax + 0x00c67f10]             // 0x00476212    8d90107fc600
                         push               edx                                           // 0x00476218    52
                         push               0x009d0020                                    // 0x00476219    6820009d00
                         push               0x2                                           // 0x0047621e    6a02
                         push               0x00cd3b24                                    // 0x00476220    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x00476225    e876bb0900
                         add                esp, 0x18                                     // 0x0047622a    83c418
_jmp_addr_0x0047622d:    {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x0047622d    8b8664010000
                         {disp32} mov       byte ptr [esp + 0x00000098], 0x00             // 0x00476233    c684249800000000
                         {disp32} mov       eax, dword ptr [eax + 0x00000f60]             // 0x0047623b    8b80600f0000
                         lea                ecx, dword ptr [eax + eax * 0x4]              // 0x00476241    8d0c80
                         shl                ecx, 4                                        // 0x00476244    c1e104
                         {disp32} mov       edx, dword ptr [ecx + 0x009d1678]             // 0x00476247    8b9178169d00
                         push               edx                                           // 0x0047624d    52
                         {disp32} lea       eax, dword ptr [esp + 0x0000009c]             // 0x0047624e    8d84249c000000
                         push               0x009d0014                                    // 0x00476255    6814009d00
                         push               eax                                           // 0x0047625a    50
                         call               _sprintf                                      // 0x0047625b    e872f53400
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x00476260    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000f58]             // 0x00476266    8b88580f0000
                         add                esp, 0x0c                                     // 0x0047626c    83c40c
                         test               ecx, ecx                                      // 0x0047626f    85c9
                         {disp8} je         _jmp_addr_0x004762af                          // 0x00476271    743c
                         cmp                ecx, dword ptr [eax + 0x00000f54]             // 0x00476273    3b88540f0000
                         {disp8} je         _jmp_addr_0x004762af                          // 0x00476279    7434
                         mov                edx, dword ptr [ecx]                          // 0x0047627b    8b11
                         call               dword ptr [edx + 0x2c]                        // 0x0047627d    ff522c
                         shl                eax, 6                                        // 0x00476280    c1e006
                         add                eax, 0x008cbf68                               // 0x00476283    0568bf8c00
                         push               eax                                           // 0x00476288    50
                         or                 ecx, 0xffffffff                               // 0x00476289    83c9ff
                         xor.s              eax, eax                                      // 0x0047628c    33c0
                         {disp32} lea       edi, dword ptr [esp + 0x0000009c]             // 0x0047628e    8dbc249c000000
                         repne scasb                                                      // 0x00476295    f2ae
                         not                ecx                                           // 0x00476297    f7d1
                         dec                ecx                                           // 0x00476299    49
                         {disp32} lea       eax, dword ptr [esp + ecx * 0x1 + 0x0000009c] // 0x0047629a    8d840c9c000000
                         push               0x009d000c                                    // 0x004762a1    680c009d00
                         push               eax                                           // 0x004762a6    50
                         call               _sprintf                                      // 0x004762a7    e826f53400
                         add                esp, 0x0c                                     // 0x004762ac    83c40c
_jmp_addr_0x004762af:    {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x004762af    8b8e64010000
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000f5c]             // 0x004762b5    8b895c0f0000
                         test               ecx, ecx                                      // 0x004762bb    85c9
                         {disp8} je         _jmp_addr_0x004762f3                          // 0x004762bd    7434
                         mov                edx, dword ptr [ecx]                          // 0x004762bf    8b11
                         call               dword ptr [edx + 0x2c]                        // 0x004762c1    ff522c
                         shl                eax, 6                                        // 0x004762c4    c1e006
                         add                eax, 0x008cbf68                               // 0x004762c7    0568bf8c00
                         push               eax                                           // 0x004762cc    50
                         or                 ecx, 0xffffffff                               // 0x004762cd    83c9ff
                         xor.s              eax, eax                                      // 0x004762d0    33c0
                         {disp32} lea       edi, dword ptr [esp + 0x0000009c]             // 0x004762d2    8dbc249c000000
                         repne scasb                                                      // 0x004762d9    f2ae
                         not                ecx                                           // 0x004762db    f7d1
                         dec                ecx                                           // 0x004762dd    49
                         {disp32} lea       eax, dword ptr [esp + ecx * 0x1 + 0x0000009c] // 0x004762de    8d840c9c000000
                         push               0x009d0000                                    // 0x004762e5    6800009d00
                         push               eax                                           // 0x004762ea    50
                         call               _sprintf                                      // 0x004762eb    e8e2f43400
                         add                esp, 0x0c                                     // 0x004762f0    83c40c
_jmp_addr_0x004762f3:    {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x004762f3    8b8e64010000
                         {disp32} fld       dword ptr [ecx + 0x00000f70]                  // 0x004762f9    d981700f0000
                         sub                esp, 0x08                                     // 0x004762ff    83ec08
                         or                 ecx, 0xffffffff                               // 0x00476302    83c9ff
                         fstp               qword ptr [esp]                               // 0x00476305    dd1c24
                         xor.s              eax, eax                                      // 0x00476308    33c0
                         {disp32} lea       edi, dword ptr [esp + 0x000000a0]             // 0x0047630a    8dbc24a0000000
                         repne scasb                                                      // 0x00476311    f2ae
                         not                ecx                                           // 0x00476313    f7d1
                         dec                ecx                                           // 0x00476315    49
                         {disp32} lea       edx, dword ptr [esp + ecx * 0x1 + 0x000000a0] // 0x00476316    8d940ca0000000
                         push               0x009cffec                                    // 0x0047631d    68ecff9c00
                         push               edx                                           // 0x00476322    52
                         call               _sprintf                                      // 0x00476323    e8aaf43400
                         add                esp, 0x10                                     // 0x00476328    83c410
                         {disp32} lea       eax, dword ptr [esp + 0x00000098]             // 0x0047632b    8d842498000000
                         push               eax                                           // 0x00476332    50
                         push               0x2                                           // 0x00476333    6a02
                         push               0x00cd3b24                                    // 0x00476335    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x0047633a    e861ba0900
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x0047633f    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]             // 0x00476345    8b88b40f0000
                         lea                ecx, dword ptr [ecx + ecx * 0x2]              // 0x0047634b    8d0c49
                         shl                ecx, 5                                        // 0x0047634e    c1e105
                         {disp32} mov       eax, dword ptr [ecx + eax * 0x1 + 0x00000fd8] // 0x00476351    8b8401d80f0000
                         lea                edx, dword ptr [eax + eax * 0x8]              // 0x00476358    8d14c0
                         add                esp, 0x0c                                     // 0x0047635b    83c40c
                         shl                edx, 4                                        // 0x0047635e    c1e204
                         add                edx, 0x00be0b98                               // 0x00476361    81c2980bbe00
                         push               edx                                           // 0x00476367    52
                         push               0x009cffdc                                    // 0x00476368    68dcff9c00
                         push               0x2                                           // 0x0047636d    6a02
                         push               0x00cd3b24                                    // 0x0047636f    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x00476374    e827ba0900
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]             // 0x00476379    8b8660010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                   // 0x0047637f    8b4858
                         {disp32} mov       eax, dword ptr [ecx + 0x00004994]             // 0x00476382    8b8194490000
                         add                esp, 0x10                                     // 0x00476388    83c410
                         cmp                eax, 0x26                                     // 0x0047638b    83f826
                         {disp8} jge        _jmp_addr_0x0047639a                          // 0x0047638e    7d0a
                         shl                eax, 6                                        // 0x00476390    c1e006
                         add                eax, 0x009d06f4                               // 0x00476393    05f4069d00
                         {disp8} jmp        _jmp_addr_0x0047639f                          // 0x00476398    eb05
_jmp_addr_0x0047639a:    mov                eax, 0x009cffd0                               // 0x0047639a    b8d0ff9c00
_jmp_addr_0x0047639f:    push               eax                                           // 0x0047639f    50
                         push               0x009cffbc                                    // 0x004763a0    68bcff9c00
                         push               0x2                                           // 0x004763a5    6a02
                         push               0x00cd3b24                                    // 0x004763a7    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x004763ac    e8efb90900
                         add                esp, 0x10                                     // 0x004763b1    83c410
                         push               0x009d00cc                                    // 0x004763b4    68cc009d00
                         {disp8} jmp        _jmp_addr_0x004763c0                          // 0x004763b9    eb05
_jmp_addr_0x004763bb:    push               0x009cffa0                                    // 0x004763bb    68a0ff9c00
_jmp_addr_0x004763c0:    push               0x2                                           // 0x004763c0    6a02
                         push               0x00cd3b24                                    // 0x004763c2    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x004763c7    e8d4b90900
                         add                esp, 0x0c                                     // 0x004763cc    83c40c
                         push               0x009cff98                                    // 0x004763cf    6898ff9c00
                         push               0x2                                           // 0x004763d4    6a02
                         push               0x00cd3b24                                    // 0x004763d6    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x004763db    e8c0b90900
                         add                esp, 0x0c                                     // 0x004763e0    83c40c
                         xor.s              ebp, ebp                                      // 0x004763e3    33ed
                         mov                ebx, 0x00000150                               // 0x004763e5    bb50010000
                         mov                eax, 0x00c67f10                               // 0x004763ea    b8107fc600
_jmp_addr_0x004763ef:    {disp32} mov       byte ptr [esp + 0x00000098], 0x00             // 0x004763ef    c684249800000000
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x004763f7    89442414
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000003            // 0x004763fb    c744241803000000
_jmp_addr_0x00476403:    cmp                ebp, 0x28                                     // 0x00476403    83fd28
                         {disp32} jae       _jmp_addr_0x0047649d                          // 0x00476406    0f8391000000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x0047640c    8b8e64010000
                         push               ebp                                           // 0x00476412    55
                         add                ecx, 0x8                                      // 0x00476413    83c108
                         call               _jmp_addr_0x004dcda0                          // 0x00476416    e885690600
                         test               eax, eax                                      // 0x0047641b    85c0
                         {disp8} je         _jmp_addr_0x00476472                          // 0x0047641d    7453
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x0047641f    8b8664010000
                         fld                dword ptr [eax + ebx * 0x1]                   // 0x00476425    d90418
                         push               ebp                                           // 0x00476428    55
                         {disp8} lea        ecx, dword ptr [eax + 0x08]                   // 0x00476429    8d4808
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0047642c    d95c2420
                         call               _jmp_addr_0x004de550                          // 0x00476430    e81b810600
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x00476435    8b542414
                         sub                esp, 0x08                                     // 0x00476439    83ec08
                         fstp               qword ptr [esp]                               // 0x0047643c    dd1c24
                         sub                esp, 0x08                                     // 0x0047643f    83ec08
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x00476442    d944242c
                         or                 ecx, 0xffffffff                               // 0x00476446    83c9ff
                         xor.s              eax, eax                                      // 0x00476449    33c0
                         fstp               qword ptr [esp]                               // 0x0047644b    dd1c24
                         {disp32} lea       edi, dword ptr [esp + 0x000000a8]             // 0x0047644e    8dbc24a8000000
                         repne scasb                                                      // 0x00476455    f2ae
                         not                ecx                                           // 0x00476457    f7d1
                         push               edx                                           // 0x00476459    52
                         dec                ecx                                           // 0x0047645a    49
                         {disp32} lea       eax, dword ptr [esp + ecx * 0x1 + 0x000000ac] // 0x0047645b    8d840cac000000
                         push               0x009cff84                                    // 0x00476462    6884ff9c00
                         push               eax                                           // 0x00476467    50
                         call               _sprintf                                      // 0x00476468    e865f33400
                         add                esp, 0x1c                                     // 0x0047646d    83c41c
                         {disp8} jmp        _jmp_addr_0x0047649d                          // 0x00476470    eb2b
_jmp_addr_0x00476472:    {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x00476472    8b4c2414
                         push               ecx                                           // 0x00476476    51
                         or                 ecx, 0xffffffff                               // 0x00476477    83c9ff
                         xor.s              eax, eax                                      // 0x0047647a    33c0
                         {disp32} lea       edi, dword ptr [esp + 0x0000009c]             // 0x0047647c    8dbc249c000000
                         repne scasb                                                      // 0x00476483    f2ae
                         not                ecx                                           // 0x00476485    f7d1
                         dec                ecx                                           // 0x00476487    49
                         {disp32} lea       edx, dword ptr [esp + ecx * 0x1 + 0x0000009c] // 0x00476488    8d940c9c000000
                         push               0x009cff7c                                    // 0x0047648f    687cff9c00
                         push               edx                                           // 0x00476494    52
                         call               _sprintf                                      // 0x00476495    e838f33400
                         add                esp, 0x0c                                     // 0x0047649a    83c40c
_jmp_addr_0x0047649d:    {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x0047649d    8b542414
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x004764a1    8b442418
                         add                edx, 0x000001c0                               // 0x004764a5    81c2c0010000
                         add                ebx, 0x04                                     // 0x004764ab    83c304
                         inc                ebp                                           // 0x004764ae    45
                         dec                eax                                           // 0x004764af    48
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x004764b0    89542414
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x004764b4    89442418
                         {disp32} jne       _jmp_addr_0x00476403                          // 0x004764b8    0f8545ffffff
                         {disp32} lea       eax, dword ptr [esp + 0x00000098]             // 0x004764be    8d842498000000
                         push               eax                                           // 0x004764c5    50
                         push               0x2                                           // 0x004764c6    6a02
                         push               0x00cd3b24                                    // 0x004764c8    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x004764cd    e8ceb80900
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x004764d2    8b442420
                         add                esp, 0x0c                                     // 0x004764d6    83c40c
                         cmp                ebx, 0x000001f8                               // 0x004764d9    81fbf8010000
                         {disp32} jb        _jmp_addr_0x004763ef                          // 0x004764df    0f820affffff
                         push               0x009d00cc                                    // 0x004764e5    68cc009d00
                         push               0x2                                           // 0x004764ea    6a02
                         push               0x00cd3b24                                    // 0x004764ec    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x004764f1    e8aab80900
                         {disp32} mov       edi, dword ptr [esi + 0x00000160]             // 0x004764f6    8bbe60010000
                         add                esp, 0x0c                                     // 0x004764fc    83c40c
                         mov.s              ecx, edi                                      // 0x004764ff    8bcf
                         call               _jmp_addr_0x004ef4f0                          // 0x00476501    e8ea8f0700
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x00476506    d81d90a38a00
                         fnstsw             ax                                            // 0x0047650c    dfe0
                         test               ah, 0x01                                      // 0x0047650e    f6c401
                         {disp8} je         _jmp_addr_0x0047651b                          // 0x00476511    7408
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x00476513    d90590a38a00
                         {disp8} jmp        _jmp_addr_0x00476522                          // 0x00476519    eb07
_jmp_addr_0x0047651b:    mov.s              ecx, edi                                      // 0x0047651b    8bcf
                         call               _jmp_addr_0x004ef4f0                          // 0x0047651d    e8ce8f0700
_jmp_addr_0x00476522:    {disp32} mov       ecx, dword ptr [esi + 0x00000160]             // 0x00476522    8b8e60010000
                         {disp8} mov        edx, dword ptr [ecx + 0x1c]                   // 0x00476528    8b511c
                         {disp8} mov        eax, dword ptr [ecx + 0x14]                   // 0x0047652b    8b4114
                         sub                esp, 0x08                                     // 0x0047652e    83ec08
                         fstp               qword ptr [esp]                               // 0x00476531    dd1c24
                         {disp8} mov        dword ptr [esp + 0x24], edx                   // 0x00476534    89542424
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x00476538    d9442424
                         {disp8} mov        edx, dword ptr [ecx + 0x0c]                   // 0x0047653c    8b510c
                         sub                esp, 0x08                                     // 0x0047653f    83ec08
                         fstp               qword ptr [esp]                               // 0x00476542    dd1c24
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x00476545    89442428
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x00476549    d9442428
                         sub                esp, 0x08                                     // 0x0047654d    83ec08
                         fstp               qword ptr [esp]                               // 0x00476550    dd1c24
                         {disp8} mov        dword ptr [esp + 0x2c], edx                   // 0x00476553    8954242c
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x00476557    d944242c
                         sub                esp, 0x08                                     // 0x0047655b    83ec08
                         fstp               qword ptr [esp]                               // 0x0047655e    dd1c24
                         call               _jmp_addr_0x004ef4f0                          // 0x00476561    e88a8f0700
                         sub                esp, 0x08                                     // 0x00476566    83ec08
                         fstp               qword ptr [esp]                               // 0x00476569    dd1c24
                         {disp32} lea       eax, dword ptr [esp + 0x000000c0]             // 0x0047656c    8d8424c0000000
                         push               0x009cff34                                    // 0x00476573    6834ff9c00
                         push               eax                                           // 0x00476578    50
                         call               _sprintf                                      // 0x00476579    e854f23400
                         add                esp, 0x30                                     // 0x0047657e    83c430
                         {disp32} lea       ecx, dword ptr [esp + 0x00000098]             // 0x00476581    8d8c2498000000
                         push               ecx                                           // 0x00476588    51
                         push               0x2                                           // 0x00476589    6a02
                         push               0x00cd3b24                                    // 0x0047658b    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x00476590    e80bb80900
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]             // 0x00476595    8b8660010000
                         {disp8} mov        edx, dword ptr [eax + 0x58]                   // 0x0047659b    8b5058
                         {disp8} fld        dword ptr [eax + 0x34]                        // 0x0047659e    d94034
                         {disp32} mov       ecx, dword ptr [edx + 0x0000483c]             // 0x004765a1    8b8a3c480000
                         {disp8} fstp       qword ptr [esp + 0x04]                        // 0x004765a7    dd5c2404
                         {disp8} mov        edx, dword ptr [eax + 0x30]                   // 0x004765ab    8b5030
                         {disp8} mov        edi, dword ptr [eax + 0x08]                   // 0x004765ae    8b7808
                         add                esp, 0x04                                     // 0x004765b1    83c404
                         {disp8} mov        dword ptr [esp + 0x24], ecx                   // 0x004765b4    894c2424
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x004765b8    d9442424
                         {disp8} mov        ecx, dword ptr [eax + 0x2c]                   // 0x004765bc    8b482c
                         sub                esp, 0x08                                     // 0x004765bf    83ec08
                         fstp               qword ptr [esp]                               // 0x004765c2    dd1c24
                         {disp8} mov        dword ptr [esp + 0x28], edx                   // 0x004765c5    89542428
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x004765c9    d9442428
                         mov                edx, dword ptr [esi]                          // 0x004765cd    8b16
                         sub                esp, 0x08                                     // 0x004765cf    83ec08
                         fstp               qword ptr [esp]                               // 0x004765d2    dd1c24
                         {disp8} mov        dword ptr [esp + 0x2c], ecx                   // 0x004765d5    894c242c
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x004765d9    d944242c
                         sub                esp, 0x08                                     // 0x004765dd    83ec08
                         mov.s              ecx, esi                                      // 0x004765e0    8bce
                         fstp               qword ptr [esp]                               // 0x004765e2    dd1c24
                         call               dword ptr [edx + 0x11c]                       // 0x004765e5    ff921c010000
                         sub                esp, 0x08                                     // 0x004765eb    83ec08
                         fstp               qword ptr [esp]                               // 0x004765ee    dd1c24
                         push               edi                                           // 0x004765f1    57
                         push               0x009cfee0                                    // 0x004765f2    68e0fe9c00
                         push               0x2                                           // 0x004765f7    6a02
                         push               0x00cd3b24                                    // 0x004765f9    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x004765fe    e89db70900
                         add                esp, 0x38                                     // 0x00476603    83c438
                         push               0x009d00cc                                    // 0x00476606    68cc009d00
                         push               0x2                                           // 0x0047660b    6a02
                         push               0x00cd3b24                                    // 0x0047660d    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x00476612    e889b70900
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x00476617    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00020cd8]             // 0x0047661d    8b88d80c0200
                         xor.s              edi, edi                                      // 0x00476623    33ff
                         add                esp, 0x0c                                     // 0x00476625    83c40c
                         cmp.s              ecx, edi                                      // 0x00476628    3bcf
                         {disp8} jle        _jmp_addr_0x0047665b                          // 0x0047662a    7e2f
                         push               0x009cfe94                                    // 0x0047662c    6894fe9c00
                         dec                ecx                                           // 0x00476631    49
                         push               0x2                                           // 0x00476632    6a02
                         push               0x00cd3b24                                    // 0x00476634    68243bcd00
                         {disp32} mov       dword ptr [eax + 0x00020cd8], ecx             // 0x00476639    8988d80c0200
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x0047663f    e85cb70900
                         add                esp, 0x0c                                     // 0x00476644    83c40c
                         push               0x009cfe94                                    // 0x00476647    6894fe9c00
                         push               0x2                                           // 0x0047664c    6a02
                         push               0x00cd3b24                                    // 0x0047664e    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x00476653    e848b70900
                         add                esp, 0x0c                                     // 0x00476658    83c40c
_jmp_addr_0x0047665b:    {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x0047665b    8b8664010000
                         {disp32} fld       dword ptr [eax + 0x0000065c]                  // 0x00476661    d9805c060000
                         sub                esp, 0x08                                     // 0x00476667    83ec08
                         fstp               qword ptr [esp]                               // 0x0047666a    dd1c24
                         push               0x009cfe78                                    // 0x0047666d    6878fe9c00
                         push               0x2                                           // 0x00476672    6a02
                         push               0x00cd3b24                                    // 0x00476674    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x00476679    e822b70900
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x0047667e    8b8e64010000
                         {disp32} fld       dword ptr [ecx + 0x00018c58]                  // 0x00476684    d981588c0100
                         add                esp, 0x0c                                     // 0x0047668a    83c40c
                         fstp               qword ptr [esp]                               // 0x0047668d    dd1c24
                         push               0x009cfe60                                    // 0x00476690    6860fe9c00
                         push               0x2                                           // 0x00476695    6a02
                         push               0x00cd3b24                                    // 0x00476697    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x0047669c    e8ffb60900
                         {disp32} mov       edx, dword ptr [esi + 0x00000160]             // 0x004766a1    8b9660010000
                         {disp8} mov        eax, dword ptr [edx + 0x70]                   // 0x004766a7    8b4270
                         add                esp, 0x14                                     // 0x004766aa    83c414
                         cmp.s              eax, edi                                      // 0x004766ad    3bc7
                         {disp8} je         _jmp_addr_0x004766d7                          // 0x004766af    7426
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x004766b1    8b8e64010000
                         {disp32} mov       edx, dword ptr [ecx + 0x00018c50]             // 0x004766b7    8b91508c0100
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x004766bd    8954241c
                         {disp8} mov        dword ptr [esp + 0x20], edi                   // 0x004766c1    897c2420
                         {disp8} fild       qword ptr [esp + 0x1c]                        // 0x004766c5    df6c241c
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x004766c9    8944241c
                         {disp8} mov        dword ptr [esp + 0x20], edi                   // 0x004766cd    897c2420
                         {disp8} fidiv      dword ptr [esp + 0x1c]                        // 0x004766d1    da74241c
                         {disp8} jmp        _jmp_addr_0x004766dd                          // 0x004766d5    eb06
_jmp_addr_0x004766d7:    {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x004766d7    d90598a38a00
_jmp_addr_0x004766dd:    sub                esp, 0x08                                     // 0x004766dd    83ec08
                         fstp               qword ptr [esp]                               // 0x004766e0    dd1c24
                         push               0x009cfe48                                    // 0x004766e3    6848fe9c00
                         push               0x2                                           // 0x004766e8    6a02
                         push               0x00cd3b24                                    // 0x004766ea    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x004766ef    e8acb60900
                         xor.s              edx, edx                                      // 0x004766f4    33d2
                         mov                eax, 0x000003e8                               // 0x004766f6    b8e8030000
                         div                dword ptr [data_bytes + 0x33ba38]             // 0x004766fb    f735381ad000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x00476701    8b8e64010000
                         xor.s              edx, edx                                      // 0x00476707    33d2
                         add                esp, 0x14                                     // 0x00476709    83c414
                         mov.s              edi, eax                                      // 0x0047670c    8bf8
                         {disp32} mov       eax, dword ptr [ecx + 0x00018c4c]             // 0x0047670e    8b814c8c0100
                         div                edi                                           // 0x00476714    f7f7
                         push               eax                                           // 0x00476716    50
                         push               0x009cfe24                                    // 0x00476717    6824fe9c00
                         push               0x2                                           // 0x0047671c    6a02
                         push               0x00cd3b24                                    // 0x0047671e    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x00476723    e878b60900
                         xor.s              edx, edx                                      // 0x00476728    33d2
                         mov                eax, 0x000003e8                               // 0x0047672a    b8e8030000
                         div                dword ptr [data_bytes + 0x33ba38]             // 0x0047672f    f735381ad000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x00476735    8b8e64010000
                         xor.s              edx, edx                                      // 0x0047673b    33d2
                         add                esp, 0x10                                     // 0x0047673d    83c410
                         mov.s              edi, eax                                      // 0x00476740    8bf8
                         {disp32} mov       eax, dword ptr [ecx + 0x00018c54]             // 0x00476742    8b81548c0100
                         div                edi                                           // 0x00476748    f7f7
                         push               eax                                           // 0x0047674a    50
                         push               0x009cfe00                                    // 0x0047674b    6800fe9c00
                         push               0x2                                           // 0x00476750    6a02
                         push               0x00cd3b24                                    // 0x00476752    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x00476757    e844b60900
                         add                esp, 0x10                                     // 0x0047675c    83c410
                         mov.s              ecx, esi                                      // 0x0047675f    8bce
                         call               _jmp_addr_0x004775d0                          // 0x00476761    e86a0e0000
                         neg                eax                                           // 0x00476766    f7d8
                         sbb.s              eax, eax                                      // 0x00476768    1bc0
                         neg                eax                                           // 0x0047676a    f7d8
                         push               eax                                           // 0x0047676c    50
                         push               0x009cfde0                                    // 0x0047676d    68e0fd9c00
                         push               0x2                                           // 0x00476772    6a02
                         push               0x00cd3b24                                    // 0x00476774    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x00476779    e822b60900
                         add                esp, 0x10                                     // 0x0047677e    83c410
                         mov.s              ecx, esi                                      // 0x00476781    8bce
                         call               _jmp_addr_0x00477800                          // 0x00476783    e878100000
                         push               eax                                           // 0x00476788    50
                         push               0x009cfdc0                                    // 0x00476789    68c0fd9c00
                         push               0x2                                           // 0x0047678e    6a02
                         push               0x00cd3b24                                    // 0x00476790    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x00476795    e806b60900
                         add                esp, 0x10                                     // 0x0047679a    83c410
                         push               0x009d00cc                                    // 0x0047679d    68cc009d00
                         push               0x2                                           // 0x004767a2    6a02
                         push               0x00cd3b24                                    // 0x004767a4    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x004767a9    e8f2b50900
                         add                esp, 0x0c                                     // 0x004767ae    83c40c
_jmp_addr_0x004767b1:    push               0x009d00cc                                    // 0x004767b1    68cc009d00
                         push               0x2                                           // 0x004767b6    6a02
                         push               0x00cd3b24                                    // 0x004767b8    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x004767bd    e8deb50900
                         add                esp, 0x0c                                     // 0x004767c2    83c40c
                         push               0x009c8bb4                                    // 0x004767c5    68b48b9c00
                         push               0x2                                           // 0x004767ca    6a02
                         push               0x00cd3b24                                    // 0x004767cc    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x004767d1    e8cab50900
                         add                esp, 0x0c                                     // 0x004767d6    83c40c
                         push               0x009d00cc                                    // 0x004767d9    68cc009d00
                         push               0x2                                           // 0x004767de    6a02
                         push               0x00cd3b24                                    // 0x004767e0    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x004767e5    e8b6b50900
                         {disp32} mov       eax, dword ptr [esi + 0x000010c0]             // 0x004767ea    8b86c0100000
                         add                esp, 0x0c                                     // 0x004767f0    83c40c
                         test               eax, eax                                      // 0x004767f3    85c0
                         mov                eax, 0x009cfdb8                               // 0x004767f5    b8b8fd9c00
                         {disp8} jne        _jmp_addr_0x00476801                          // 0x004767fa    7505
                         mov                eax, 0x009cfdb0                               // 0x004767fc    b8b0fd9c00
_jmp_addr_0x00476801:    push               eax                                           // 0x00476801    50
                         push               0x009cfd8c                                    // 0x00476802    688cfd9c00
                         push               0x2                                           // 0x00476807    6a02
                         push               0x00cd3b24                                    // 0x00476809    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x0047680e    e88db50900
                         {disp32} mov       eax, dword ptr [esi + 0x00000094]             // 0x00476813    8b8694000000
                         add                esp, 0x10                                     // 0x00476819    83c410
                         test               eax, eax                                      // 0x0047681c    85c0
                         {disp8} je         _jmp_addr_0x0047684b                          // 0x0047681e    742b
                         mov.s              ecx, esi                                      // 0x00476820    8bce
                         call               ?GetReaction@Living@@QAEXXZ                   // 0x00476822    e839621700
                         {disp8} mov        eax, dword ptr [eax + 0x24]                   // 0x00476827    8b4024
                         lea                edx, dword ptr [eax + eax * 0x2]              // 0x0047682a    8d1440
                         shl                edx, 6                                        // 0x0047682d    c1e206
                         add                edx, 0x00c09c80                               // 0x00476830    81c2809cc000
                         push               edx                                           // 0x00476836    52
                         push               0x009cfd7c                                    // 0x00476837    687cfd9c00
                         push               0x2                                           // 0x0047683c    6a02
                         push               0x00cd3b24                                    // 0x0047683e    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x00476843    e858b50900
                         add                esp, 0x10                                     // 0x00476848    83c410
_jmp_addr_0x0047684b:    {disp8} lea        ecx, dword ptr [esi + 0x14]                   // 0x0047684b    8d4e14
                         push               0x42c80000                                    // 0x0047684e    680000c842
                         call               @GetNearestTown__9MapCoordsCFf@12             // 0x00476853    e888b81800
                         test               eax, eax                                      // 0x00476858    85c0
                         {disp8} je         _jmp_addr_0x004768a0                          // 0x0047685a    7444
                         push               esi                                           // 0x0047685c    56
                         mov.s              ecx, eax                                      // 0x0047685d    8bc8
                         call               _jmp_addr_0x007436f0                          // 0x0047685f    e88cce2c00
                         cmp                eax, 0x04                                     // 0x00476864    83f804
                         {disp8} ja         _jmp_addr_0x004768a0                          // 0x00476867    7737
                         jmp                dword ptr [eax*4 + 0x476cf4]                  // 0x00476869    ff2485f46c4700
                         push               0x009cfd60                                    // 0x00476870    6860fd9c00
                         {disp8} jmp        _jmp_addr_0x00476891                          // 0x00476875    eb1a
                         push               0x009cfd40                                    // 0x00476877    6840fd9c00
                         {disp8} jmp        _jmp_addr_0x00476891                          // 0x0047687c    eb13
                         push               0x009cfd1c                                    // 0x0047687e    681cfd9c00
                         {disp8} jmp        _jmp_addr_0x00476891                          // 0x00476883    eb0c
                         push               0x009cfcfc                                    // 0x00476885    68fcfc9c00
                         {disp8} jmp        _jmp_addr_0x00476891                          // 0x0047688a    eb05
                         push               0x009cfcdc                                    // 0x0047688c    68dcfc9c00
_jmp_addr_0x00476891:    push               0x2                                           // 0x00476891    6a02
                         push               0x00cd3b24                                    // 0x00476893    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x00476898    e803b50900
                         add                esp, 0x0c                                     // 0x0047689d    83c40c
_jmp_addr_0x004768a0:    {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x004768a0    8b8e64010000
                         add                ecx, 0x00002ae0                               // 0x004768a6    81c1e02a0000
                         call               _jmp_addr_0x004f25f0                          // 0x004768ac    e83fbd0700
                         mov.s              ebx, eax                                      // 0x004768b1    8bd8
                         test               ebx, ebx                                      // 0x004768b3    85db
                         {disp8} mov        dword ptr [esp + 0x1c], ebx                   // 0x004768b5    895c241c
                         {disp32} jbe       _jmp_addr_0x004769ed                          // 0x004768b9    0f862e010000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x004768bf    8b8e64010000
                         add                ecx, 0x00002ad8                               // 0x004768c5    81c1d82a0000
                         call               _jmp_addr_0x004e1e20                          // 0x004768cb    e850b50600
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x004768d0    8b8e64010000
                         mov.s              ebp, eax                                      // 0x004768d6    8be8
                         {disp8} mov        edi, dword ptr [ebp + 0x20]                   // 0x004768d8    8b7d20
                         {disp32} mov       byte ptr [esp + 0x00000098], 0x00             // 0x004768db    c684249800000000
                         call               _jmp_addr_0x004d3800                          // 0x004768e3    e818cf0500
                         test               eax, eax                                      // 0x004768e8    85c0
                         mov                eax, 0x009cfdb8                               // 0x004768ea    b8b8fd9c00
                         {disp8} jne        _jmp_addr_0x004768f6                          // 0x004768ef    7505
                         mov                eax, 0x009cfdb0                               // 0x004768f1    b8b0fd9c00
_jmp_addr_0x004768f6:    {disp8} mov        ecx, dword ptr [ebp + 0x3c]                   // 0x004768f6    8b4d3c
                         test               ecx, ecx                                      // 0x004768f9    85c9
                         {disp8} mov        dword ptr [esp + 0x18], 0x009cfdb8            // 0x004768fb    c7442418b8fd9c00
                         {disp8} jne        _jmp_addr_0x0047690d                          // 0x00476903    7508
                         {disp8} mov        dword ptr [esp + 0x18], 0x009cfdb0            // 0x00476905    c7442418b0fd9c00
_jmp_addr_0x0047690d:    push               eax                                           // 0x0047690d    50
                         mov.s              ecx, ebp                                      // 0x0047690e    8bcd
                         call               _jmp_addr_0x004e0600                          // 0x00476910    e8eb9c0600
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x00476915    8b44241c
                         sub                esp, 0x08                                     // 0x00476919    83ec08
                         fstp               qword ptr [esp]                               // 0x0047691c    dd1c24
                         push               eax                                           // 0x0047691f    50
                         lea                ecx, dword ptr [edi + edi * 0x4]              // 0x00476920    8d0cbf
                         shl                ecx, 4                                        // 0x00476923    c1e104
                         {disp32} mov       edx, dword ptr [ecx + 0x009d1678]             // 0x00476926    8b9178169d00
                         push               edx                                           // 0x0047692c    52
                         {disp32} lea       eax, dword ptr [esp + 0x000000ac]             // 0x0047692d    8d8424ac000000
                         push               0x009cfc8c                                    // 0x00476934    688cfc9c00
                         push               eax                                           // 0x00476939    50
                         call               _sprintf                                      // 0x0047693a    e893ee3400
                         add                esp, 0x1c                                     // 0x0047693f    83c41c
                         {disp32} lea       ecx, dword ptr [esp + 0x00000098]             // 0x00476942    8d8c2498000000
                         push               ecx                                           // 0x00476949    51
                         push               0x2                                           // 0x0047694a    6a02
                         push               0x00cd3b24                                    // 0x0047694c    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x00476951    e84ab40900
                         mov                ebp, 0x00000001                               // 0x00476956    bd01000000
                         add                esp, 0x0c                                     // 0x0047695b    83c40c
                         cmp.s              ebx, ebp                                      // 0x0047695e    3bdd
                         {disp32} jbe       _jmp_addr_0x004769ed                          // 0x00476960    0f8687000000
_jmp_addr_0x00476966:    cmp                ebx, 0x01                                     // 0x00476966    83fb01
                         {disp8} jbe        _jmp_addr_0x004769e4                          // 0x00476969    7679
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x0047696b    8b8e64010000
                         push               ebp                                           // 0x00476971    55
                         add                ecx, 0x00002ae0                               // 0x00476972    81c1e02a0000
                         call               _jmp_addr_0x004f25d0                          // 0x00476978    e853bc0700
                         {disp8} mov        edi, dword ptr [eax + 0x20]                   // 0x0047697d    8b7820
                         {disp32} mov       byte ptr [esp + 0x00000098], 0x00             // 0x00476980    c684249800000000
                         {disp8} mov        ecx, dword ptr [eax + 0x3c]                   // 0x00476988    8b483c
                         test               ecx, ecx                                      // 0x0047698b    85c9
                         mov                ebx, 0x009cfdb8                               // 0x0047698d    bbb8fd9c00
                         {disp8} jne        _jmp_addr_0x00476999                          // 0x00476992    7505
                         mov                ebx, 0x009cfdb0                               // 0x00476994    bbb0fd9c00
_jmp_addr_0x00476999:    mov.s              ecx, eax                                      // 0x00476999    8bc8
                         call               _jmp_addr_0x004e0600                          // 0x0047699b    e8609c0600
                         sub                esp, 0x08                                     // 0x004769a0    83ec08
                         fstp               qword ptr [esp]                               // 0x004769a3    dd1c24
                         lea                edx, dword ptr [edi + edi * 0x4]              // 0x004769a6    8d14bf
                         shl                edx, 4                                        // 0x004769a9    c1e204
                         {disp32} mov       eax, dword ptr [edx + 0x009d1678]             // 0x004769ac    8b8278169d00
                         push               ebx                                           // 0x004769b2    53
                         push               eax                                           // 0x004769b3    50
                         {disp32} lea       ecx, dword ptr [esp + 0x000000a8]             // 0x004769b4    8d8c24a8000000
                         push               0x009cfc58                                    // 0x004769bb    6858fc9c00
                         push               ecx                                           // 0x004769c0    51
                         call               _sprintf                                      // 0x004769c1    e80cee3400
                         add                esp, 0x18                                     // 0x004769c6    83c418
                         {disp32} lea       edx, dword ptr [esp + 0x00000098]             // 0x004769c9    8d942498000000
                         push               edx                                           // 0x004769d0    52
                         push               0x2                                           // 0x004769d1    6a02
                         push               0x00cd3b24                                    // 0x004769d3    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x004769d8    e8c3b30900
                         {disp8} mov        ebx, dword ptr [esp + 0x28]                   // 0x004769dd    8b5c2428
                         add                esp, 0x0c                                     // 0x004769e1    83c40c
_jmp_addr_0x004769e4:    inc                ebp                                           // 0x004769e4    45
                         cmp.s              ebp, ebx                                      // 0x004769e5    3beb
                         {disp32} jb        _jmp_addr_0x00476966                          // 0x004769e7    0f8279ffffff
_jmp_addr_0x004769ed:    push               0x009d00cc                                    // 0x004769ed    68cc009d00
                         push               0x2                                           // 0x004769f2    6a02
                         push               0x00cd3b24                                    // 0x004769f4    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x004769f9    e8a2b30900
                         add                esp, 0x0c                                     // 0x004769fe    83c40c
                         {disp8} lea        ecx, dword ptr [esp + 0x28]                   // 0x00476a01    8d4c2428
                         call               _jmp_addr_0x004e1b40                          // 0x00476a05    e836b10600
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x00476a0a    8b8e64010000
                         {disp8} lea        eax, dword ptr [esp + 0x28]                   // 0x00476a10    8d442428
                         push               eax                                           // 0x00476a14    50
                         call               _jmp_addr_0x004e0410                          // 0x00476a15    e8f6990600
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00476a1a    d81d98a38a00
                         fnstsw             ax                                            // 0x00476a20    dfe0
                         test               ah, 0x41                                      // 0x00476a22    f6c441
                         {disp8} jne        _jmp_addr_0x00476a6e                          // 0x00476a25    7547
                         {disp8} mov        edi, dword ptr [esp + 0x48]                   // 0x00476a27    8b7c2448
                         {disp8} lea        ecx, dword ptr [esp + 0x28]                   // 0x00476a2b    8d4c2428
                         {disp32} mov       byte ptr [esp + 0x00000098], 0x00             // 0x00476a2f    c684249800000000
                         call               _jmp_addr_0x004e0600                          // 0x00476a37    e8c49b0600
                         sub                esp, 0x08                                     // 0x00476a3c    83ec08
                         lea                ecx, dword ptr [edi + edi * 0x4]              // 0x00476a3f    8d0cbf
                         fstp               qword ptr [esp]                               // 0x00476a42    dd1c24
                         shl                ecx, 4                                        // 0x00476a45    c1e104
                         {disp32} mov       edx, dword ptr [ecx + 0x009d1678]             // 0x00476a48    8b9178169d00
                         push               edx                                           // 0x00476a4e    52
                         {disp32} lea       eax, dword ptr [esp + 0x000000a4]             // 0x00476a4f    8d8424a4000000
                         push               0x009cfc30                                    // 0x00476a56    6830fc9c00
                         push               eax                                           // 0x00476a5b    50
                         call               _sprintf                                      // 0x00476a5c    e871ed3400
                         add                esp, 0x14                                     // 0x00476a61    83c414
                         {disp32} lea       ecx, dword ptr [esp + 0x00000098]             // 0x00476a64    8d8c2498000000
                         push               ecx                                           // 0x00476a6b    51
                         {disp8} jmp        _jmp_addr_0x00476a73                          // 0x00476a6c    eb05
_jmp_addr_0x00476a6e:    push               0x009cfc10                                    // 0x00476a6e    6810fc9c00
_jmp_addr_0x00476a73:    push               0x2                                           // 0x00476a73    6a02
                         push               0x00cd3b24                                    // 0x00476a75    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x00476a7a    e821b30900
                         {disp32} mov       edx, dword ptr [esi + 0x00000164]             // 0x00476a7f    8b9664010000
                         {disp32} mov       eax, dword ptr [edx + 0x00001c2c]             // 0x00476a85    8b822c1c0000
                         add                esp, 0x0c                                     // 0x00476a8b    83c40c
                         test               eax, eax                                      // 0x00476a8e    85c0
                         {disp8} je         _jmp_addr_0x00476aa6                          // 0x00476a90    7414
                         push               0x009cfbf8                                    // 0x00476a92    68f8fb9c00
                         push               0x2                                           // 0x00476a97    6a02
                         push               0x00cd3b24                                    // 0x00476a99    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x00476a9e    e8fdb20900
                         add                esp, 0x0c                                     // 0x00476aa3    83c40c
_jmp_addr_0x00476aa6:    {disp8} lea        eax, dword ptr [esp + 0x1c]                   // 0x00476aa6    8d44241c
                         push               eax                                           // 0x00476aaa    50
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                   // 0x00476aab    8d4e14
                         call               @GetLHPoint__9MapCoordsCFv@12                 // 0x00476aae    e88df11800
                         push               eax                                           // 0x00476ab3    50
                         call               _jmp_addr_0x00771a80                          // 0x00476ab4    e8c7af2f00
                         push               ecx                                           // 0x00476ab9    51
                         fstp               qword ptr [esp]                               // 0x00476aba    dd1c24
                         push               0x009cfbd4                                    // 0x00476abd    68d4fb9c00
                         push               0x2                                           // 0x00476ac2    6a02
                         push               0x00cd3b24                                    // 0x00476ac4    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x00476ac9    e8d2b20900
                         {disp32} mov       ecx, dword ptr [esi + 0x000010e8]             // 0x00476ace    8b8ee8100000
                         add                esp, 0x14                                     // 0x00476ad4    83c414
                         push               ecx                                           // 0x00476ad7    51
                         push               0x009cfbc0                                    // 0x00476ad8    68c0fb9c00
                         push               0x2                                           // 0x00476add    6a02
                         push               0x00cd3b24                                    // 0x00476adf    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x00476ae4    e8b7b20900
                         {disp32} mov       eax, dword ptr [esi + 0x00000380]             // 0x00476ae9    8b8680030000
                         add                esp, 0x10                                     // 0x00476aef    83c410
                         sub                eax, 0x00                                     // 0x00476af2    83e800
                         {disp8} je         _jmp_addr_0x00476b0b                          // 0x00476af5    7414
                         dec                eax                                           // 0x00476af7    48
                         {disp8} je         _jmp_addr_0x00476b04                          // 0x00476af8    740a
                         dec                eax                                           // 0x00476afa    48
                         {disp8} jne        _jmp_addr_0x00476b1f                          // 0x00476afb    7522
                         push               0x009cfbb0                                    // 0x00476afd    68b0fb9c00
                         {disp8} jmp        _jmp_addr_0x00476b10                          // 0x00476b02    eb0c
_jmp_addr_0x00476b04:    push               0x009cfba0                                    // 0x00476b04    68a0fb9c00
                         {disp8} jmp        _jmp_addr_0x00476b10                          // 0x00476b09    eb05
_jmp_addr_0x00476b0b:    push               0x009cfb88                                    // 0x00476b0b    6888fb9c00
_jmp_addr_0x00476b10:    push               0x2                                           // 0x00476b10    6a02
                         push               0x00cd3b24                                    // 0x00476b12    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x00476b17    e884b20900
                         add                esp, 0x0c                                     // 0x00476b1c    83c40c
_jmp_addr_0x00476b1f:    mov                edx, dword ptr [esi]                          // 0x00476b1f    8b16
                         push               0x0                                           // 0x00476b21    6a00
                         mov.s              ecx, esi                                      // 0x00476b23    8bce
                         call               dword ptr [edx + 0x984]                       // 0x00476b25    ff9284090000
                         test               eax, eax                                      // 0x00476b2b    85c0
                         {disp8} je         _jmp_addr_0x00476b36                          // 0x00476b2d    7407
                         push               0x009cfb70                                    // 0x00476b2f    6870fb9c00
                         {disp8} jmp        _jmp_addr_0x00476b3b                          // 0x00476b34    eb05
_jmp_addr_0x00476b36:    push               0x009cfb54                                    // 0x00476b36    6854fb9c00
_jmp_addr_0x00476b3b:    push               0x2                                           // 0x00476b3b    6a02
                         push               0x00cd3b24                                    // 0x00476b3d    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x00476b42    e859b20900
                         {disp32} mov       eax, dword ptr [esi + 0x000011b8]             // 0x00476b47    8b86b8110000
                         add                esp, 0x0c                                     // 0x00476b4d    83c40c
                         test               eax, eax                                      // 0x00476b50    85c0
                         {disp8} je         _jmp_addr_0x00476b68                          // 0x00476b52    7414
                         push               0x009cfb38                                    // 0x00476b54    6838fb9c00
                         push               0x2                                           // 0x00476b59    6a02
                         push               0x00cd3b24                                    // 0x00476b5b    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x00476b60    e83bb20900
                         add                esp, 0x0c                                     // 0x00476b65    83c40c
_jmp_addr_0x00476b68:    {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x00476b68    8b8e64010000
                         {disp32} fld       dword ptr [ecx + 0x000185cc]                  // 0x00476b6e    d981cc850100
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00476b74    d81d98a38a00
                         fnstsw             ax                                            // 0x00476b7a    dfe0
                         test               ah, 0x41                                      // 0x00476b7c    f6c441
                         {disp32} jne       _jmp_addr_0x00476c6a                          // 0x00476b7f    0f85e5000000
                         {disp32} fld       dword ptr [ecx + 0x000185cc]                  // 0x00476b85    d981cc850100
                         push               0x009cfb2c                                    // 0x00476b8b    682cfb9c00
                         {disp32} fsub      dword ptr [_rdata_float1p0]                   // 0x00476b90    d82590a38a00
                         push               0x2                                           // 0x00476b96    6a02
                         push               0x00cd3b24                                    // 0x00476b98    68243bcd00
                         {disp32} fstp      dword ptr [ecx + 0x000185cc]                  // 0x00476b9d    d999cc850100
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x00476ba3    e8f8b10900
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x00476ba8    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x000185c8]             // 0x00476bae    8b88c8850100
                         add                esp, 0x0c                                     // 0x00476bb4    83c40c
                         test               ecx, ecx                                      // 0x00476bb7    85c9
                         {disp32} je        _jmp_addr_0x00476c42                          // 0x00476bb9    0f8483000000
                         add                eax, 0x00016b04                               // 0x00476bbf    05046b0100
                         push               eax                                           // 0x00476bc4    50
                         push               0x009cfb18                                    // 0x00476bc5    6818fb9c00
                         push               0x2                                           // 0x00476bca    6a02
                         push               0x00cd3b24                                    // 0x00476bcc    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x00476bd1    e8cab10900
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x00476bd6    8b8664010000
                         add                esp, 0x10                                     // 0x00476bdc    83c410
                         add                eax, 0x00016c04                               // 0x00476bdf    05046c0100
                         push               eax                                           // 0x00476be4    50
                         push               0x009cfb08                                    // 0x00476be5    6808fb9c00
                         push               0x2                                           // 0x00476bea    6a02
                         push               0x00cd3b24                                    // 0x00476bec    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x00476bf1    e8aab10900
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x00476bf6    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00016b00]             // 0x00476bfc    8b88006b0100
                         add                esp, 0x10                                     // 0x00476c02    83c410
                         xor.s              edi, edi                                      // 0x00476c05    33ff
                         test               ecx, ecx                                      // 0x00476c07    85c9
                         {disp8} jbe        _jmp_addr_0x00476c56                          // 0x00476c09    764b
                         xor.s              ebx, ebx                                      // 0x00476c0b    33db
_jmp_addr_0x00476c0d:    {disp32} lea       ecx, dword ptr [eax + ebx * 0x1 + 0x00016d04] // 0x00476c0d    8d8c18046d0100
                         push               ecx                                           // 0x00476c14    51
                         push               0x009cfb08                                    // 0x00476c15    6808fb9c00
                         push               0x2                                           // 0x00476c1a    6a02
                         push               0x00cd3b24                                    // 0x00476c1c    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x00476c21    e87ab10900
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x00476c26    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00016b00]             // 0x00476c2c    8b88006b0100
                         add                esp, 0x10                                     // 0x00476c32    83c410
                         inc                edi                                           // 0x00476c35    47
                         add                ebx, 0x00000100                               // 0x00476c36    81c300010000
                         cmp.s              edi, ecx                                      // 0x00476c3c    3bf9
                         .byte              0x72, 0xcd// {disp8} jb _jmp_addr_0x00476c0d  // 0x00476c3e    72cd
                         {disp8} jmp        _jmp_addr_0x00476c56                          // 0x00476c40    eb14
_jmp_addr_0x00476c42:    push               0x009cfaec                                    // 0x00476c42    68ecfa9c00
                         push               0x2                                           // 0x00476c47    6a02
                         push               0x00cd3b24                                    // 0x00476c49    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x00476c4e    e84db10900
                         add                esp, 0x0c                                     // 0x00476c53    83c40c
_jmp_addr_0x00476c56:    push               0x009d00cc                                    // 0x00476c56    68cc009d00
                         push               0x2                                           // 0x00476c5b    6a02
                         push               0x00cd3b24                                    // 0x00476c5d    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x00476c62    e839b10900
                         add                esp, 0x0c                                     // 0x00476c67    83c40c
_jmp_addr_0x00476c6a:    mov                edx, dword ptr [esi]                          // 0x00476c6a    8b16
                         mov.s              ecx, esi                                      // 0x00476c6c    8bce
                         call               dword ptr [edx + 0x1c]                        // 0x00476c6e    ff521c
                         test               eax, eax                                      // 0x00476c71    85c0
                         {disp8} je         _jmp_addr_0x00476ca7                          // 0x00476c73    7432
                         mov.s              ecx, esi                                      // 0x00476c75    8bce
                         call               _jmp_addr_0x004cf060                          // 0x00476c77    e8e4830500
                         test               eax, eax                                      // 0x00476c7c    85c0
                         {disp8} je         _jmp_addr_0x00476ca7                          // 0x00476c7e    7427
                         {disp32} mov       eax, dword ptr [eax + 0x0000012c]             // 0x00476c80    8b802c010000
                         test               eax, eax                                      // 0x00476c86    85c0
                         {disp8} je         _jmp_addr_0x00476ca7                          // 0x00476c88    741d
                         {disp8} fld        dword ptr [eax + 0x2c]                        // 0x00476c8a    d9402c
                         sub                esp, 0x08                                     // 0x00476c8d    83ec08
                         fstp               qword ptr [esp]                               // 0x00476c90    dd1c24
                         push               0x009cfad4                                    // 0x00476c93    68d4fa9c00
                         push               0x2                                           // 0x00476c98    6a02
                         push               0x00cd3b24                                    // 0x00476c9a    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x00476c9f    e8fcb00900
                         add                esp, 0x14                                     // 0x00476ca4    83c414
_jmp_addr_0x00476ca7:    {disp32} mov       esi, dword ptr [esi + 0x000003cc]             // 0x00476ca7    8bb6cc030000
                         sub                esi, 0x00                                     // 0x00476cad    83ee00
                         {disp8} je         _jmp_addr_0x00476cc6                          // 0x00476cb0    7414
                         dec                esi                                           // 0x00476cb2    4e
                         {disp8} je         _jmp_addr_0x00476cbf                          // 0x00476cb3    740a
                         dec                esi                                           // 0x00476cb5    4e
                         {disp8} jne        _jmp_addr_0x00476cda                          // 0x00476cb6    7522
                         push               0x009cfac0                                    // 0x00476cb8    68c0fa9c00
                         {disp8} jmp        _jmp_addr_0x00476ccb                          // 0x00476cbd    eb0c
_jmp_addr_0x00476cbf:    push               0x009cfaac                                    // 0x00476cbf    68acfa9c00
                         {disp8} jmp        _jmp_addr_0x00476ccb                          // 0x00476cc4    eb05
_jmp_addr_0x00476cc6:    push               0x009cfaa4                                    // 0x00476cc6    68a4fa9c00
_jmp_addr_0x00476ccb:    push               0x2                                           // 0x00476ccb    6a02
                         push               0x00cd3b24                                    // 0x00476ccd    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x00476cd2    e8c9b00900
                         add                esp, 0x0c                                     // 0x00476cd7    83c40c
_jmp_addr_0x00476cda:    {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x00476cda    8d4c2430
                         call               _jmp_addr_0x004f12d0                          // 0x00476cde    e8eda50700
                         {disp8} lea        ecx, dword ptr [esp + 0x28]                   // 0x00476ce3    8d4c2428
                         call               _jmp_addr_0x00436960                          // 0x00476ce7    e874fcfbff
                         pop                edi                                           // 0x00476cec    5f
                         pop                esi                                           // 0x00476ced    5e
                         pop                ebp                                           // 0x00476cee    5d
                         pop                ebx                                           // 0x00476cef    5b
                         mov.s              esp, ebp                                      // 0x00476cf0    8be5
                         pop                ebp                                           // 0x00476cf2    5d
                         ret                                                              // 0x00476cf3    c3

// Snippet: jmptbl, [0x00476cf4, 0x00476d08)
.byte 0x70, 0x68, 0x47, 0x00      // 0x00476cf4
.byte 0x77, 0x68, 0x47, 0x00      // 0x00476cf8
.byte 0x7e, 0x68, 0x47, 0x00      // 0x00476cfc
.byte 0x85, 0x68, 0x47, 0x00      // 0x00476d00
.byte 0x8c, 0x68, 0x47, 0x00      // 0x00476d04

// Snippet: db, [0x00476d08, 0x00476d10)
.byte 0x90, 0x90, 0x90, 0x90      // 0x00476d08
.byte 0x90, 0x90, 0x90, 0x90      // 0x00476d0c

