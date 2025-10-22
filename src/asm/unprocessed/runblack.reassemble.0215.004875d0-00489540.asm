.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?ApplyEffectsDueToPhysicalDestruction@Abode@@QAEXPAVObject@@PAVGPlayer@@@Z
.extern _jmp_addr_0x0042a4b0
.extern _jmp_addr_0x00436960
.extern _jmp_addr_0x0046c0b0
.extern _jmp_addr_0x0047f1c0
.extern _jmp_addr_0x00481390
.extern _jmp_addr_0x004813d0
.extern _jmp_addr_0x00482c90
.extern _jmp_addr_0x00483780
.extern _jmp_addr_0x00483870
.extern _jmp_addr_0x004839d0
.extern ?GetSafeBuffer@LH3DCreature@@QAEPAEXZ
.extern _jmp_addr_0x004846e0
.extern _jmp_addr_0x00484ec0
.extern _jmp_addr_0x00486800
.extern _jmp_addr_0x00489540
.extern _jmp_addr_0x00489ce0
.extern _jmp_addr_0x0048b4b0
.extern _jmp_addr_0x0048b970
.extern _jmp_addr_0x0048cc20
.extern _jmp_addr_0x0048d250
.extern _jmp_addr_0x0048d520
.extern _jmp_addr_0x0048f200
.extern _jmp_addr_0x004dc260
.extern _jmp_addr_0x004ebe10
.extern _jmp_addr_0x004ec580
.extern _jmp_addr_0x00524fe0
.extern _jmp_addr_0x00525720
.extern ?GetCamera@GGame@@QAEPAVGCamera@@XZ
.extern ?MyInterface@GGame@@QAEPAVGInterface@@XZ
.extern _jmp_addr_0x00555880
.extern _jmp_addr_0x005da100
.extern ?GetInterface@GInterfaceStatus@@QAEPAVGInterface@@XZ
.extern _jmp_addr_0x00607000
.extern _jmp_addr_0x00617a10
.extern _jmp_addr_0x006182f0
.extern @GetAnim__9MorphableFll@16
.extern _jmp_addr_0x00644800
.extern _jmp_addr_0x00646950
.extern _jmp_addr_0x00646a00
.extern _jmp_addr_0x0064a9f0
.extern ?GameRand@GRand@@SAHJ@Z
.extern ?GameFloatRand@GRand@@SAMM@Z
.extern ?LocalRand@GRand@@SAIJ@Z
.extern ?CreateReaction@Reaction@@SAPAV1@PAVGameThingWithPos@@EPAVGPlayer@@H@Z
.extern _jmp_addr_0x0071ea40
.extern _jmp_addr_0x0071ed40
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern ___RTDynamicCast
.extern ___nw__FUl
.extern _jmp_addr_0x007f6f00
.extern ??1FragMesh@@QAE@XZ
.extern _jmp_addr_0x007f7230
.extern _jmp_addr_0x007f7d40
.extern ?Create@LH3DSmoke@@SAPAV1@PBULHPoint@@@Z
.extern _jmp_addr_0x007faa50
.extern _jmp_addr_0x007faaf0
.extern _jmp_addr_0x007fcb80
.extern _jmp_addr_0x007feb30
.extern _jmp_addr_0x00801c90
.extern ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z
.extern _jmp_addr_0x0083a0e0
.extern _jmp_addr_0x00845c20

.globl _jmp_addr_0x004875d0
.globl _jmp_addr_0x00487b30
.globl _jmp_addr_0x00487c70
.globl _jmp_addr_0x00487ce0
.globl _jmp_addr_0x00487fa0
.globl _jmp_addr_0x00488320
.globl _jmp_addr_0x004884a0
.globl _jmp_addr_0x004887a0
.globl _jmp_addr_0x004890f0
.globl _jmp_addr_0x00489180

start_0x004875d0_0x00489540:
// Snippet: asm, [0x004875d0, 0x004894f2)
_jmp_addr_0x004875d0:    sub                esp, 0x68                                     // 0x004875d0    83ec68
                         push               ebx                                           // 0x004875d3    53
                         push               ebp                                           // 0x004875d4    55
                         push               esi                                           // 0x004875d5    56
                         push               edi                                           // 0x004875d6    57
                         mov.s              ebx, ecx                                      // 0x004875d7    8bd9
                         {disp32} mov       eax, dword ptr [ebx + 0x000049a0]             // 0x004875d9    8b83a0490000
                         xor.s              ebp, ebp                                      // 0x004875df    33ed
                         push               ebp                                           // 0x004875e1    55
                         push               eax                                           // 0x004875e2    50
                         call               @GetAnim__9MorphableFll@16                    // 0x004875e3    e868201900
                         {disp32} mov       ecx, dword ptr [ebx + 0x000048bc]             // 0x004875e8    8b8bbc480000
                         {disp32} mov       edx, dword ptr [ebx + 0x000047d0]             // 0x004875ee    8b93d0470000
                         push               ecx                                           // 0x004875f4    51
                         {disp32} mov       dword ptr [ebx + 0x000047c0], eax             // 0x004875f5    8983c0470000
                         {disp32} mov       eax, dword ptr [ebx + 0x000049a0]             // 0x004875fb    8b83a0490000
                         push               edx                                           // 0x00487601    52
                         push               eax                                           // 0x00487602    50
                         mov.s              ecx, ebx                                      // 0x00487603    8bcb
                         call               _jmp_addr_0x00617a10                          // 0x00487605    e806041900
                         {disp32} mov       dword ptr [ebx + 0x000047d0], eax             // 0x0048760a    8983d0470000
                         {disp32} mov       eax, dword ptr [ebx + 0x000049a0]             // 0x00487610    8b83a0490000
                         cmp                eax, 0x20                                     // 0x00487616    83f820
                         {disp32} mov       dword ptr [ebx + 0x000047e0], 0x3f800000      // 0x00487619    c783e04700000000803f
                         {disp32} jne       _jmp_addr_0x0048793c                          // 0x00487623    0f8513030000
                         {disp32} mov       ecx, dword ptr [ebx + 0x000051e4]             // 0x00487629    8b8be4510000
                         inc                ecx                                           // 0x0048762f    41
                         mov.s              eax, ecx                                      // 0x00487630    8bc1
                         cmp                eax, 0x05                                     // 0x00487632    83f805
                         {disp32} mov       dword ptr [ebx + 0x000051e4], ecx             // 0x00487635    898be4510000
                         {disp32} jl        _jmp_addr_0x00487b1c                          // 0x0048763b    0f8cdb040000
                         {disp32} mov       eax, dword ptr [ebx + 0x00004834]             // 0x00487641    8b8334480000
                         cmp.s              eax, ebp                                      // 0x00487647    3bc5
                         {disp8} je         _jmp_addr_0x00487659                          // 0x00487649    740e
                         {disp32} mov       ecx, dword ptr [eax + 0x00000164]             // 0x0048764b    8b8864010000
                         {disp32} mov       esi, dword ptr [ecx + 0x00000f60]             // 0x00487651    8bb1600f0000
                         {disp8} jmp        _jmp_addr_0x0048765b                          // 0x00487657    eb02
_jmp_addr_0x00487659:    xor.s              esi, esi                                      // 0x00487659    33f6
_jmp_addr_0x0048765b:    mov.s              ecx, ebx                                      // 0x0048765b    8bcb
                         call               _jmp_addr_0x004813d0                          // 0x0048765d    e86e9dffff
                         cmp                esi, 0x000000b1                               // 0x00487662    81feb1000000
                         mov                edx, dword ptr [eax]                          // 0x00487668    8b10
                         {disp8} mov        dword ptr [esp + 0x48], edx                   // 0x0048766a    89542448
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x0048766e    8b4804
                         {disp8} mov        dword ptr [esp + 0x4c], ecx                   // 0x00487671    894c244c
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x00487675    8b5008
                         {disp8} mov        dword ptr [esp + 0x50], edx                   // 0x00487678    89542450
                         {disp32} jne       _jmp_addr_0x004877e7                          // 0x0048767c    0f8565010000
                         cmp                dword ptr [ebx + 0x00004834], ebp             // 0x00487682    39ab34480000
                         {disp32} je        _jmp_addr_0x0048792e                          // 0x00487688    0f84a0020000
                         {disp32} fld       dword ptr [ebx + 0x00000090]                  // 0x0048768e    d98390000000
                         mov                edi, 0x0000000f                               // 0x00487694    bf0f000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x19c40]             // 0x00487699    d80d402c8c00
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0048769f    d95c2410
                         {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x004876a3    8b742410
                         {disp32} fld       dword ptr [ebx + 0x00000084]                  // 0x004876a7    d98384000000
                         {disp32} fadd      dword ptr [rdata_bytes + 0x1a6a0]             // 0x004876ad    d805a0368c00
                         fld                st(0)                                         // 0x004876b3    d9c0
                         fsin                                                             // 0x004876b5    d9fe
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x004876b7    d84c2410
                         {disp8} fstp       dword ptr [esp + 0x54]                        // 0x004876bb    d95c2454
                         fcos                                                             // 0x004876bf    d9ff
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x004876c1    d84c2410
                         fchs                                                             // 0x004876c5    d9e0
                         {disp8} fstp       dword ptr [esp + 0x5c]                        // 0x004876c7    d95c245c
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x004876cb    d9442410
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x004876cf    d80db4a38a00
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x004876d5    d95c2414
_jmp_addr_0x004876d9:    push               0x000012f2                                    // 0x004876d9    68f2120000
                         push               0x009d1094                                    // 0x004876de    6894109d00
                         push               esi                                           // 0x004876e3    56
                         call               ?GameFloatRand@GRand@@SAMM@Z                  // 0x004876e4    e8476e2500
                         {disp8} fsub       dword ptr [esp + 0x20]                        // 0x004876e9    d8642420
                         push               0x000012f2                                    // 0x004876ed    68f2120000
                         push               0x009d1094                                    // 0x004876f2    6894109d00
                         push               esi                                           // 0x004876f7    56
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x004876f8    d95c2434
                         call               ?GameFloatRand@GRand@@SAMM@Z                  // 0x004876fc    e82f6e2500
                         {disp8} fsub       dword ptr [esp + 0x2c]                        // 0x00487701    d864242c
                         push               0x000012f2                                    // 0x00487705    68f2120000
                         push               0x009d1094                                    // 0x0048770a    6894109d00
                         push               esi                                           // 0x0048770f    56
                         {disp8} fstp       dword ptr [esp + 0x44]                        // 0x00487710    d95c2444
                         call               ?GameFloatRand@GRand@@SAMM@Z                  // 0x00487714    e8176e2500
                         {disp8} fsub       dword ptr [esp + 0x38]                        // 0x00487719    d8642438
                         {disp8} fadd       dword ptr [esp + 0x78]                        // 0x0048771d    d8442478
                         add                esp, 0x24                                     // 0x00487721    83c424
                         push               0x4                                           // 0x00487724    6a04
                         push               ecx                                           // 0x00487726    51
                         {disp8} fstp       dword ptr [esp + 0x44]                        // 0x00487727    d95c2444
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x0048772b    d9442428
                         {disp8} lea        eax, dword ptr [esp + 0x44]                   // 0x0048772f    8d442444
                         {disp8} fstp       dword ptr [esp + 0x48]                        // 0x00487733    d95c2448
                         {disp8} fld        dword ptr [esp + 0x64]                        // 0x00487737    d9442464
                         {disp8} fadd       dword ptr [esp + 0x24]                        // 0x0048773b    d8442424
                         {disp8} fstp       dword ptr [esp + 0x4c]                        // 0x0048773f    d95c244c
                         {disp32} fld       dword ptr [ebx + 0x00000090]                  // 0x00487743    d98390000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2418]              // 0x00487749    d80d18b48a00
                         fstp               dword ptr [esp]                               // 0x0048774f    d91c24
                         push               0x40808080                                    // 0x00487752    6880808040
                         push               eax                                           // 0x00487757    50
                         {disp8} lea        eax, dword ptr [ebx + 0x78]                   // 0x00487758    8d4378
                         push               eax                                           // 0x0048775b    50
                         call               _jmp_addr_0x00845c20                          // 0x0048775c    e8bfe43b00
                         add                esp, 0x14                                     // 0x00487761    83c414
                         dec                edi                                           // 0x00487764    4f
                         {disp32} jne       _jmp_addr_0x004876d9                          // 0x00487765    0f856effffff
                         push               ebp                                           // 0x0048776b    55
                         call               ?Create@LH3DSmoke@@SAPAV1@PBULHPoint@@@Z      // 0x0048776c    e8ef133700
                         {disp32} mov       ecx, dword ptr [ebx + 0x00004834]             // 0x00487771    8b8b34480000
                         {disp32} mov       dword ptr [ecx + 0x0000109c], eax             // 0x00487777    89819c100000
                         {disp32} mov       edx, dword ptr [ebx + 0x00004834]             // 0x0048777d    8b9334480000
                         {disp32} mov       eax, dword ptr [edx + 0x0000109c]             // 0x00487783    8b829c100000
                         add                esp, 0x04                                     // 0x00487789    83c404
                         cmp.s              eax, ebp                                      // 0x0048778c    3bc5
                         {disp8} je         _jmp_addr_0x004877a4                          // 0x0048778e    7414
                         {disp8} mov        ecx, dword ptr [esp + 0x48]                   // 0x00487790    8b4c2448
                         mov                dword ptr [eax], ecx                          // 0x00487794    8908
                         {disp8} mov        edx, dword ptr [esp + 0x4c]                   // 0x00487796    8b54244c
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x0048779a    895004
                         {disp8} mov        ecx, dword ptr [esp + 0x50]                   // 0x0048779d    8b4c2450
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x004877a1    894808
_jmp_addr_0x004877a4:    {disp32} fld       dword ptr [ebx + 0x0000009c]                  // 0x004877a4    d9839c000000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x25fcc]             // 0x004877aa    d81dccef8c00
                         fnstsw             ax                                            // 0x004877b0    dfe0
                         test               ah, 0x01                                      // 0x004877b2    f6c401
                         {disp32} je        _jmp_addr_0x0048792e                          // 0x004877b5    0f8473010000
                         {disp32} mov       ecx, dword ptr [ebx + 0x00004834]             // 0x004877bb    8b8b34480000
                         mov                edx, dword ptr [ecx]                          // 0x004877c1    8b11
                         push               ebp                                           // 0x004877c3    55
                         call               dword ptr [edx + 0x1c]                        // 0x004877c4    ff521c
                         push               eax                                           // 0x004877c7    50
                         {disp32} mov       eax, dword ptr [ebx + 0x00004834]             // 0x004877c8    8b8334480000
                         push               0x19                                          // 0x004877ce    6a19
                         push               eax                                           // 0x004877d0    50
                         call               ?CreateReaction@Reaction@@SAPAV1@PAVGameThingWithPos@@EPAVGPlayer@@H@Z              // 0x004877d1    e89ac52500
                         add                esp, 0x10                                     // 0x004877d6    83c410
                         pop                edi                                           // 0x004877d9    5f
                         pop                esi                                           // 0x004877da    5e
                         {disp32} mov       dword ptr [ebx + 0x000051e4], ebp             // 0x004877db    89abe4510000
                         pop                ebp                                           // 0x004877e1    5d
                         pop                ebx                                           // 0x004877e2    5b
                         add                esp, 0x68                                     // 0x004877e3    83c468
                         ret                                                              // 0x004877e6    c3
_jmp_addr_0x004877e7:    {disp8} fld        dword ptr [esp + 0x48]                        // 0x004877e7    d9442448
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]              // 0x004877eb    d80d00c48a00
                         call               _jmp_addr_0x007a1400                          // 0x004877f1    e80a9c3100
                         {disp8} fld        dword ptr [esp + 0x50]                        // 0x004877f6    d9442450
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]              // 0x004877fa    d80d00c48a00
                         {disp8} mov        dword ptr [esp + 0x3c], eax                   // 0x00487800    8944243c
                         call               _jmp_addr_0x007a1400                          // 0x00487804    e8f79b3100
                         {disp32} fld       dword ptr [ebx + 0x00000090]                  // 0x00487809    d98390000000
                         {disp32} fmul      dword ptr [__real@3fc00000]                   // 0x0048780f    d80d4cb28a00
                         push               ecx                                           // 0x00487815    51
                         {disp8} mov        dword ptr [esp + 0x44], eax                   // 0x00487816    89442444
                         {disp8} mov        dword ptr [esp + 0x48], 0x00000000            // 0x0048781a    c744244800000000
                         fstp               dword ptr [esp]                               // 0x00487822    d91c24
                         push               0x00001306                                    // 0x00487825    6806130000
                         push               0x009d1094                                    // 0x0048782a    6894109d00
                         push               0x40c90fdb                                    // 0x0048782f    68db0fc940
                         call               ?GameFloatRand@GRand@@SAMM@Z                  // 0x00487834    e8f76c2500
                         add                esp, 0x08                                     // 0x00487839    83c408
                         fstp               dword ptr [esp]                               // 0x0048783c    d91c24
                         push               ebp                                           // 0x0048783f    55
                         {disp8} lea        ecx, dword ptr [esp + 0x48]                   // 0x00487840    8d4c2448
                         push               0x00d389ac                                    // 0x00487844    68ac89d300
                         push               ecx                                           // 0x00487849    51
                         call               _jmp_addr_0x00607000                          // 0x0048784a    e8b1f71700
                         mov                edx, dword ptr [ebx]                          // 0x0048784f    8b13
                         mov.s              esi, eax                                      // 0x00487851    8bf0
                         add                esp, 0x14                                     // 0x00487853    83c414
                         {disp8} lea        eax, dword ptr [esp + 0x48]                   // 0x00487856    8d442448
                         push               eax                                           // 0x0048785a    50
                         mov.s              ecx, ebx                                      // 0x0048785b    8bcb
                         call               dword ptr [edx + 0x28]                        // 0x0048785d    ff5228
                         {disp8} fsubr      dword ptr [esp + 0x4c]                        // 0x00487860    d86c244c
                         {disp8} fstp       dword ptr [esi + 0x1c]                        // 0x00487864    d95e1c
                         {disp32} fld       dword ptr [ebx + 0x00000084]                  // 0x00487867    d98384000000
                         {disp32} mov       ecx, dword ptr [ebx + 0x00004834]             // 0x0048786d    8b8b34480000
                         cmp.s              ecx, ebp                                      // 0x00487873    3bcd
                         {disp32} fadd      dword ptr [rdata_bytes + 0x1a6a0]             // 0x00487875    d805a0368c00
                         {disp8} mov        dword ptr [esp + 0x64], 0x00000000            // 0x0048787b    c744246400000000
                         {disp8} mov        dword ptr [esp + 0x30], 0x00000000            // 0x00487883    c744243000000000
                         fld                st(0)                                         // 0x0048788b    d9c0
                         {disp8} mov        dword ptr [esp + 0x34], 0x00000000            // 0x0048788d    c744243400000000
                         fsin                                                             // 0x00487895    d9fe
                         {disp8} mov        dword ptr [esp + 0x38], 0x00000000            // 0x00487897    c744243800000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26e4]              // 0x0048789f    d80de4b68a00
                         {disp8} fstp       dword ptr [esp + 0x60]                        // 0x004878a5    d95c2460
                         fcos                                                             // 0x004878a9    d9ff
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1e9a8]             // 0x004878ab    d80da8798c00
                         {disp8} fstp       dword ptr [esp + 0x68]                        // 0x004878b1    d95c2468
                         {disp8} je         _jmp_addr_0x004878bc                          // 0x004878b5    7405
                         mov                edx, dword ptr [ecx]                          // 0x004878b7    8b11
                         call               dword ptr [edx + 0x1c]                        // 0x004878b9    ff521c
_jmp_addr_0x004878bc:    {disp32} mov       ecx, dword ptr [ebx + 0x00004834]             // 0x004878bc    8b8b34480000
                         mov                eax, dword ptr [esi]                          // 0x004878c2    8b06
                         push               ebp                                           // 0x004878c4    55
                         push               0x1                                           // 0x004878c5    6a01
                         push               ecx                                           // 0x004878c7    51
                         {disp8} lea        edx, dword ptr [esp + 0x3c]                   // 0x004878c8    8d54243c
                         push               edx                                           // 0x004878cc    52
                         {disp8} lea        ecx, dword ptr [esp + 0x70]                   // 0x004878cd    8d4c2470
                         push               ecx                                           // 0x004878d1    51
                         {disp8} lea        edx, dword ptr [esp + 0x68]                   // 0x004878d2    8d542468
                         push               edx                                           // 0x004878d6    52
                         mov.s              ecx, esi                                      // 0x004878d7    8bce
                         call               dword ptr [eax + 0x784]                       // 0x004878d9    ff9084070000
                         {disp32} mov       eax, dword ptr [ebx + 0x00004834]             // 0x004878df    8b8334480000
                         cmp.s              eax, ebp                                      // 0x004878e5    3bc5
                         {disp8} je         _jmp_addr_0x0048792e                          // 0x004878e7    7445
                         {disp32} mov       eax, dword ptr [eax + 0x00000160]             // 0x004878e9    8b8060010000
                         {disp8} mov        dword ptr [eax + 0x2c], ebp                   // 0x004878ef    89682c
                         {disp32} mov       ecx, dword ptr [ebx + 0x00004834]             // 0x004878f2    8b8b34480000
                         {disp32} mov       eax, dword ptr [ecx + 0x00000164]             // 0x004878f8    8b8164010000
                         add                eax, 0x08                                     // 0x004878fe    83c008
                         {disp32} mov       dword ptr [eax + 0x00000164], ebp             // 0x00487901    89a864010000
                         {disp32} mov       edx, dword ptr [ebx + 0x00004834]             // 0x00487907    8b9334480000
                         {disp32} mov       ecx, dword ptr [edx + 0x00000164]             // 0x0048790d    8b8a64010000
                         push               0x42700000                                    // 0x00487913    6800007042
                         push               0x7                                           // 0x00487918    6a07
                         add                ecx, 0x8                                      // 0x0048791a    83c108
                         call               _jmp_addr_0x004dc260                          // 0x0048791d    e83e490500
                         {disp32} mov       eax, dword ptr [ebx + 0x00004834]             // 0x00487922    8b8334480000
                         {disp32} inc       dword ptr [eax + 0x00000180]                  // 0x00487928    ff8080010000
_jmp_addr_0x0048792e:    pop                edi                                           // 0x0048792e    5f
                         pop                esi                                           // 0x0048792f    5e
                         {disp32} mov       dword ptr [ebx + 0x000051e4], ebp             // 0x00487930    89abe4510000
                         pop                ebp                                           // 0x00487936    5d
                         pop                ebx                                           // 0x00487937    5b
                         add                esp, 0x68                                     // 0x00487938    83c468
                         ret                                                              // 0x0048793b    c3
_jmp_addr_0x0048793c:    cmp                eax, 0x23                                     // 0x0048793c    83f823
                         {disp32} jne       _jmp_addr_0x00487b1c                          // 0x0048793f    0f85d7010000
                         {disp32} fld       dword ptr [ebx + 0x00000090]                  // 0x00487945    d98390000000
                         {disp8} lea        eax, dword ptr [esp + 0x6c]                   // 0x0048794b    8d44246c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1c8a8]             // 0x0048794f    d80da8588c00
                         push               eax                                           // 0x00487955    50
                         mov.s              ecx, ebx                                      // 0x00487956    8bcb
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x00487958    d95c2418
                         {disp32} fld       dword ptr [ebx + 0x00000090]                  // 0x0048795c    d98390000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1ea44]             // 0x00487962    d80d447a8c00
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x00487968    d95c2420
                         call               _jmp_addr_0x0048f200                          // 0x0048796c    e88f780000
                         {disp32} mov       esi, dword ptr [ebx + 0x0000482c]             // 0x00487971    8bb32c480000
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x00487977    8d4c2418
                         push               ecx                                           // 0x0048797b    51
                         {disp8} lea        edx, dword ptr [esp + 0x34]                   // 0x0048797c    8d542434
                         push               edx                                           // 0x00487980    52
                         add                esi, 0x38                                     // 0x00487981    83c638
                         push               esi                                           // 0x00487984    56
                         call               _jmp_addr_0x00801c90                          // 0x00487985    e806a33700
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x0048798a    8b4c2424
                         {disp8} lea        eax, dword ptr [esp + 0x3c]                   // 0x0048798e    8d44243c
                         push               eax                                           // 0x00487992    50
                         push               ecx                                           // 0x00487993    51
                         push               esi                                           // 0x00487994    56
                         call               _jmp_addr_0x007feb30                          // 0x00487995    e896713700
                         add                esp, 0x18                                     // 0x0048799a    83c418
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x0048799d    89442418
                         {disp8} mov        dword ptr [esp + 0x20], 0x0000000c            // 0x004879a1    c74424200c000000
_jmp_addr_0x004879a9:    push               0x64                                          // 0x004879a9    6a64
                         call               ?LocalRand@GRand@@SAIJ@Z                      // 0x004879ab    e8c06b2500
                         {disp8} mov        dword ptr [esp + 0x40], eax                   // 0x004879b0    89442440
                         {disp8} mov        dword ptr [esp + 0x44], ebp                   // 0x004879b4    896c2444
                         {disp8} fild       qword ptr [esp + 0x40]                        // 0x004879b8    df6c2440
                         push               0x64                                          // 0x004879bc    6a64
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x004879be    d84c241c
                         {disp8} fsub       dword ptr [esp + 0x24]                        // 0x004879c2    d8642424
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x004879c6    d95c2430
                         call               ?LocalRand@GRand@@SAIJ@Z                      // 0x004879ca    e8a16b2500
                         {disp8} mov        dword ptr [esp + 0x50], eax                   // 0x004879cf    89442450
                         {disp8} mov        dword ptr [esp + 0x54], ebp                   // 0x004879d3    896c2454
                         {disp8} fild       qword ptr [esp + 0x50]                        // 0x004879d7    df6c2450
                         push               0x64                                          // 0x004879db    6a64
                         {disp8} fmul       dword ptr [esp + 0x20]                        // 0x004879dd    d84c2420
                         fchs                                                             // 0x004879e1    d9e0
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x004879e3    d95c2430
                         call               ?LocalRand@GRand@@SAIJ@Z                      // 0x004879e7    e8846b2500
                         {disp8} mov        edx, dword ptr [esp + 0x30]                   // 0x004879ec    8b542430
                         {disp8} mov        dword ptr [esp + 0x60], eax                   // 0x004879f0    89442460
                         {disp8} mov        eax, dword ptr [esp + 0x34]                   // 0x004879f4    8b442434
                         {disp8} mov        dword ptr [esp + 0x64], ebp                   // 0x004879f8    896c2464
                         {disp8} fild       qword ptr [esp + 0x60]                        // 0x004879fc    df6c2460
                         push               0x64                                          // 0x00487a00    6a64
                         {disp8} mov        dword ptr [esp + 0x74], edx                   // 0x00487a02    89542474
                         {disp8} fmul       dword ptr [esp + 0x24]                        // 0x00487a06    d84c2424
                         {disp8} mov        dword ptr [esp + 0x78], eax                   // 0x00487a0a    89442478
                         {disp8} fsub       dword ptr [esp + 0x2c]                        // 0x00487a0e    d864242c
                         {disp8} fstp       dword ptr [esp + 0x70]                        // 0x00487a12    d95c2470
                         call               ?LocalRand@GRand@@SAIJ@Z                      // 0x00487a16    e8556b2500
                         mov.s              esi, eax                                      // 0x00487a1b    8bf0
                         push               0x50                                          // 0x00487a1d    6a50
                         add                esi, 0x50                                     // 0x00487a1f    83c650
                         call               ?LocalRand@GRand@@SAIJ@Z                      // 0x00487a22    e8496b2500
                         mov.s              edi, eax                                      // 0x00487a27    8bf8
                         push               0x1e                                          // 0x00487a29    6a1e
                         add                edi, 0x3c                                     // 0x00487a2b    83c73c
                         call               ?LocalRand@GRand@@SAIJ@Z                      // 0x00487a2e    e83d6b2500
                         {disp8} mov        edx, dword ptr [esp + 0x48]                   // 0x00487a33    8b542448
                         add                al, 0x14                                      // 0x00487a37    0414
                         {disp8} mov        byte ptr [esp + 0x44], al                     // 0x00487a39    88442444
                         {disp8} mov        ecx, dword ptr [esp + 0x44]                   // 0x00487a3d    8b4c2444
                         and                edx, 0x000000ff                               // 0x00487a41    81e2ff000000
                         and                ecx, 0x000000ff                               // 0x00487a47    81e1ff000000
                         imul               ecx, edx                                      // 0x00487a4d    0fafca
                         mov                eax, 0x80808081                               // 0x00487a50    b881808080
                         imul               ecx                                           // 0x00487a55    f7e9
                         add.s              edx, ecx                                      // 0x00487a57    03d1
                         {disp8} mov        ecx, dword ptr [esp + 0x49]                   // 0x00487a59    8b4c2449
                         and                ecx, 0x000000ff                               // 0x00487a5d    81e1ff000000
                         sar                edx, 7                                        // 0x00487a63    c1fa07
                         mov.s              eax, edx                                      // 0x00487a66    8bc2
                         and                edi, 0x000000ff                               // 0x00487a68    81e7ff000000
                         imul               ecx, edi                                      // 0x00487a6e    0fafcf
                         shr                eax, 0x1f                                     // 0x00487a71    c1e81f
                         add.s              edx, eax                                      // 0x00487a74    03d0
                         {disp8} mov        byte ptr [esp + 0x28], dl                     // 0x00487a76    88542428
                         mov                eax, 0x80808081                               // 0x00487a7a    b881808080
                         imul               ecx                                           // 0x00487a7f    f7e9
                         add.s              edx, ecx                                      // 0x00487a81    03d1
                         sar                edx, 7                                        // 0x00487a83    c1fa07
                         mov.s              ecx, edx                                      // 0x00487a86    8bca
                         shr                ecx, 0x1f                                     // 0x00487a88    c1e91f
                         add.s              edx, ecx                                      // 0x00487a8b    03d1
                         {disp8} mov        ecx, dword ptr [esp + 0x4a]                   // 0x00487a8d    8b4c244a
                         and                ecx, 0x000000ff                               // 0x00487a91    81e1ff000000
                         and                esi, 0x000000ff                               // 0x00487a97    81e6ff000000
                         imul               ecx, esi                                      // 0x00487a9d    0fafce
                         {disp8} mov        byte ptr [esp + 0x29], dl                     // 0x00487aa0    88542429
                         mov                eax, 0x80808081                               // 0x00487aa4    b881808080
                         imul               ecx                                           // 0x00487aa9    f7e9
                         add.s              edx, ecx                                      // 0x00487aab    03d1
                         sar                edx, 7                                        // 0x00487aad    c1fa07
                         mov.s              eax, edx                                      // 0x00487ab0    8bc2
                         shr                eax, 0x1f                                     // 0x00487ab2    c1e81f
                         add                esp, 0x18                                     // 0x00487ab5    83c418
                         add.s              edx, eax                                      // 0x00487ab8    03d0
                         {disp8} mov        eax, dword ptr [esp + 0x33]                   // 0x00487aba    8b442433
                         {disp8} mov        byte ptr [esp + 0x12], dl                     // 0x00487abe    88542412
                         {disp32} fld       dword ptr [ebx + 0x00000090]                  // 0x00487ac2    d98390000000
                         and                eax, 0x000000ff                               // 0x00487ac8    25ff000000
                         {disp32} fmul      dword ptr [__real@3e4ccccd]                   // 0x00487acd    d80d44b28a00
                         mov.s              ecx, eax                                      // 0x00487ad3    8bc8
                         shl                ecx, 8                                        // 0x00487ad5    c1e108
                         sub.s              ecx, eax                                      // 0x00487ad8    2bc8
                         mov                eax, 0x80808081                               // 0x00487ada    b881808080
                         imul               ecx                                           // 0x00487adf    f7e9
                         add.s              edx, ecx                                      // 0x00487ae1    03d1
                         sar                edx, 7                                        // 0x00487ae3    c1fa07
                         mov.s              ecx, edx                                      // 0x00487ae6    8bca
                         shr                ecx, 0x1f                                     // 0x00487ae8    c1e91f
                         add.s              edx, ecx                                      // 0x00487aeb    03d1
                         push               ebp                                           // 0x00487aed    55
                         push               ecx                                           // 0x00487aee    51
                         {disp8} mov        byte ptr [esp + 0x1b], dl                     // 0x00487aef    8854241b
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x00487af3    8b542418
                         fstp               dword ptr [esp]                               // 0x00487af7    d91c24
                         push               edx                                           // 0x00487afa    52
                         {disp8} lea        eax, dword ptr [esp + 0x6c]                   // 0x00487afb    8d44246c
                         push               eax                                           // 0x00487aff    50
                         {disp8} lea        ecx, dword ptr [esp + 0x7c]                   // 0x00487b00    8d4c247c
                         push               ecx                                           // 0x00487b04    51
                         call               _jmp_addr_0x00845c20                          // 0x00487b05    e816e13b00
                         {disp8} mov        eax, dword ptr [esp + 0x34]                   // 0x00487b0a    8b442434
                         add                esp, 0x14                                     // 0x00487b0e    83c414
                         dec                eax                                           // 0x00487b11    48
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x00487b12    89442420
                         {disp32} jne       _jmp_addr_0x004879a9                          // 0x00487b16    0f858dfeffff
_jmp_addr_0x00487b1c:    pop                edi                                           // 0x00487b1c    5f
                         pop                esi                                           // 0x00487b1d    5e
                         pop                ebp                                           // 0x00487b1e    5d
                         pop                ebx                                           // 0x00487b1f    5b
                         add                esp, 0x68                                     // 0x00487b20    83c468
                         ret                                                              // 0x00487b23    c3
                         nop                                                              // 0x00487b24    90
                         nop                                                              // 0x00487b25    90
                         nop                                                              // 0x00487b26    90
                         nop                                                              // 0x00487b27    90
                         nop                                                              // 0x00487b28    90
                         nop                                                              // 0x00487b29    90
                         nop                                                              // 0x00487b2a    90
                         nop                                                              // 0x00487b2b    90
                         nop                                                              // 0x00487b2c    90
                         nop                                                              // 0x00487b2d    90
                         nop                                                              // 0x00487b2e    90
                         nop                                                              // 0x00487b2f    90
_jmp_addr_0x00487b30:    push               ebx                                           // 0x00487b30    53
                         push               esi                                           // 0x00487b31    56
                         push               edi                                           // 0x00487b32    57
                         push               0x0                                           // 0x00487b33    6a00
                         mov.s              esi, ecx                                      // 0x00487b35    8bf1
                         push               0x56                                          // 0x00487b37    6a56
                         call               @GetAnim__9MorphableFll@16                    // 0x00487b39    e8121b1900
                         push               eax                                           // 0x00487b3e    50
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax             // 0x00487b3f    8986c0470000
                         call               _jmp_addr_0x004ec580                          // 0x00487b45    e8364a0600
                         {disp32} mov       eax, dword ptr [esi + 0x000048bc]             // 0x00487b4a    8b86bc480000
                         {disp32} mov       edi, dword ptr [esi + 0x000047d0]             // 0x00487b50    8bbed0470000
                         {disp32} mov       ebx, dword ptr [esi + 0x00004a38]             // 0x00487b56    8b9e384a0000
                         add                esp, 0x04                                     // 0x00487b5c    83c404
                         push               eax                                           // 0x00487b5f    50
                         push               edi                                           // 0x00487b60    57
                         push               0x56                                          // 0x00487b61    6a56
                         mov.s              ecx, esi                                      // 0x00487b63    8bce
                         {disp32} mov       dword ptr [esi + 0x000047e0], 0x3f800000      // 0x00487b65    c786e04700000000803f
                         call               _jmp_addr_0x00617a10                          // 0x00487b6f    e89cfe1800
                         cmp.s              edi, ebx                                      // 0x00487b74    3bfb
                         {disp32} mov       dword ptr [esi + 0x000047d0], eax             // 0x00487b76    8986d0470000
                         {disp32} jg        _jmp_addr_0x00487c62                          // 0x00487b7c    0f8fe0000000
                         cmp.s              eax, ebx                                      // 0x00487b82    3bc3
                         {disp32} jle       _jmp_addr_0x00487c62                          // 0x00487b84    0f8ed8000000
                         {disp32} mov       eax, dword ptr [esi + 0x000048cc]             // 0x00487b8a    8b86cc480000
                         test               eax, eax                                      // 0x00487b90    85c0
                         {disp32} mov       ecx, dword ptr [esi + 0x0000522c]             // 0x00487b92    8b8e2c520000
                         {disp32} mov       dword ptr [esi + 0x00005230], ecx             // 0x00487b98    898e30520000
                         {disp8} jne        _jmp_addr_0x00487bbd                          // 0x00487b9e    751d
                         push               eax                                           // 0x00487ba0    50
                         mov.s              ecx, esi                                      // 0x00487ba1    8bce
                         call               _jmp_addr_0x00484ec0                          // 0x00487ba3    e818d3ffff
                         mov.s              ecx, esi                                      // 0x00487ba8    8bce
                         call               _jmp_addr_0x0048d520                          // 0x00487baa    e871590000
                         pop                edi                                           // 0x00487baf    5f
                         {disp32} mov       dword ptr [esi + 0x000048cc], 0x00000000      // 0x00487bb0    c786cc48000000000000
                         pop                esi                                           // 0x00487bba    5e
                         pop                ebx                                           // 0x00487bbb    5b
                         ret                                                              // 0x00487bbc    c3
_jmp_addr_0x00487bbd:    push               eax                                           // 0x00487bbd    50
                         mov.s              ecx, esi                                      // 0x00487bbe    8bce
                         call               _jmp_addr_0x0048cc20                          // 0x00487bc0    e85b500000
                         {disp32} mov       eax, dword ptr [esi + 0x00004834]             // 0x00487bc5    8b8634480000
                         test               eax, eax                                      // 0x00487bcb    85c0
                         {disp32} je        _jmp_addr_0x00487c58                          // 0x00487bcd    0f8485000000
                         {disp32} mov       edx, dword ptr [eax + 0x00000164]             // 0x00487bd3    8b9064010000
                         {disp32} mov       edi, dword ptr [edx + 0x00001bec]             // 0x00487bd9    8bbaec1b0000
                         {disp32} mov       eax, dword ptr [eax + 0x00000160]             // 0x00487bdf    8b8060010000
                         {disp32} mov       ecx, dword ptr [esi + 0x000048d0]             // 0x00487be5    8b8ed0480000
                         {disp8} mov        dword ptr [eax + 0x28], ecx                   // 0x00487beb    894828
                         {disp32} mov       eax, dword ptr [esi + 0x000048d0]             // 0x00487bee    8b86d0480000
                         {disp32} mov       ecx, dword ptr [esi + 0x00004834]             // 0x00487bf4    8b8e34480000
                         mov                edx, dword ptr [ecx]                          // 0x00487bfa    8b11
                         push               eax                                           // 0x00487bfc    50
                         push               edi                                           // 0x00487bfd    57
                         call               dword ptr [edx + 0x74c]                       // 0x00487bfe    ff924c070000
                         {disp32} mov       ecx, dword ptr [esi + 0x000048d0]             // 0x00487c04    8b8ed0480000
                         push               0x0                                           // 0x00487c0a    6a00
                         push               ecx                                           // 0x00487c0c    51
                         push               eax                                           // 0x00487c0d    50
                         mov.s              ecx, edi                                      // 0x00487c0e    8bcf
                         call               ?GetInterface@GInterfaceStatus@@QAEPAVGInterface@@XZ                          // 0x00487c10    e89b4c1500
                         mov.s              ecx, eax                                      // 0x00487c15    8bc8
                         call               _jmp_addr_0x005da100                          // 0x00487c17    e8e4241500
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00487c1c    8b0d5c19d000
                         call               _jmp_addr_0x00555880                          // 0x00487c22    e859dc0c00
                         cmp.s              eax, edi                                      // 0x00487c27    3bc7
                         {disp8} jne        _jmp_addr_0x00487c58                          // 0x00487c29    752d
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00487c2b    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x00487c31    e81adc0c00
                         {disp32} mov       ecx, dword ptr [eax + 0x000003a0]             // 0x00487c36    8b88a0030000
                         call               _jmp_addr_0x0046c0b0                          // 0x00487c3c    e86f44feff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00487c41    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x00487c47    e804dc0c00
                         {disp8} mov        cl, byte ptr [eax + 0x38]                     // 0x00487c4c    8a4838
                         add                eax, 0x30                                     // 0x00487c4f    83c030
                         and                cl, -0x21                                     // 0x00487c52    80e1df
                         {disp8} mov        byte ptr [eax + 0x08], cl                     // 0x00487c55    884808
_jmp_addr_0x00487c58:    {disp32} mov       dword ptr [esi + 0x000048cc], 0x00000000      // 0x00487c58    c786cc48000000000000
_jmp_addr_0x00487c62:    pop                edi                                           // 0x00487c62    5f
                         pop                esi                                           // 0x00487c63    5e
                         pop                ebx                                           // 0x00487c64    5b
                         ret                                                              // 0x00487c65    c3
                         nop                                                              // 0x00487c66    90
                         nop                                                              // 0x00487c67    90
                         nop                                                              // 0x00487c68    90
                         nop                                                              // 0x00487c69    90
                         nop                                                              // 0x00487c6a    90
                         nop                                                              // 0x00487c6b    90
                         nop                                                              // 0x00487c6c    90
                         nop                                                              // 0x00487c6d    90
                         nop                                                              // 0x00487c6e    90
                         nop                                                              // 0x00487c6f    90
_jmp_addr_0x00487c70:    push               esi                                           // 0x00487c70    56
                         mov.s              esi, ecx                                      // 0x00487c71    8bf1
                         cmp                dword ptr [esi + 0x00004994], 0x08            // 0x00487c73    83be9449000008
                         {disp8} je         _jmp_addr_0x00487c82                          // 0x00487c7a    7406
                         xor.s              al, al                                        // 0x00487c7c    32c0
                         pop                esi                                           // 0x00487c7e    5e
                         ret                0x0004                                        // 0x00487c7f    c20400
_jmp_addr_0x00487c82:    {disp32} mov       eax, dword ptr [esi + 0x0000518c]             // 0x00487c82    8b868c510000
                         test               eax, eax                                      // 0x00487c88    85c0
                         {disp8} jne        _jmp_addr_0x00487c92                          // 0x00487c8a    7506
                         xor.s              al, al                                        // 0x00487c8c    32c0
                         pop                esi                                           // 0x00487c8e    5e
                         ret                0x0004                                        // 0x00487c8f    c20400
_jmp_addr_0x00487c92:    {disp32} mov       eax, dword ptr [esi + 0x0000522c]             // 0x00487c92    8b862c520000
                         test               eax, eax                                      // 0x00487c98    85c0
                         {disp32} mov       eax, dword ptr [esi + 0x000051c8]             // 0x00487c9a    8b86c8510000
                         {disp8} je         _jmp_addr_0x00487caa                          // 0x00487ca0    7408
                         push               eax                                           // 0x00487ca2    50
                         mov.s              ecx, esi                                      // 0x00487ca3    8bce
                         call               _jmp_addr_0x00481390                          // 0x00487ca5    e8e696ffff
_jmp_addr_0x00487caa:    {disp32} mov       ecx, dword ptr [esi + 0x00000098]             // 0x00487caa    8b8e98000000
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x00487cb0    8b542408
                         {disp32} mov       ecx, dword ptr [esi + ecx * 0x4 + 0x000000b4] // 0x00487cb4    8b8c8eb4000000
                         push               eax                                           // 0x00487cbb    50
                         push               edx                                           // 0x00487cbc    52
                         push               ecx                                           // 0x00487cbd    51
                         mov.s              ecx, esi                                      // 0x00487cbe    8bce
                         call               ?GetSafeBuffer@LH3DCreature@@QAEPAEXZ         // 0x00487cc0    e8ebc5ffff
                         push               eax                                           // 0x00487cc5    50
                         call               _jmp_addr_0x0083a0e0                          // 0x00487cc6    e815243b00
                         add                esp, 0x10                                     // 0x00487ccb    83c410
                         mov                al, 0x01                                      // 0x00487cce    b001
                         pop                esi                                           // 0x00487cd0    5e
                         ret                0x0004                                        // 0x00487cd1    c20400
                         nop                                                              // 0x00487cd4    90
                         nop                                                              // 0x00487cd5    90
                         nop                                                              // 0x00487cd6    90
                         nop                                                              // 0x00487cd7    90
                         nop                                                              // 0x00487cd8    90
                         nop                                                              // 0x00487cd9    90
                         nop                                                              // 0x00487cda    90
                         nop                                                              // 0x00487cdb    90
                         nop                                                              // 0x00487cdc    90
                         nop                                                              // 0x00487cdd    90
                         nop                                                              // 0x00487cde    90
                         nop                                                              // 0x00487cdf    90
_jmp_addr_0x00487ce0:    sub                esp, 0x1c                                     // 0x00487ce0    83ec1c
                         push               ebx                                           // 0x00487ce3    53
                         push               esi                                           // 0x00487ce4    56
                         mov.s              esi, ecx                                      // 0x00487ce5    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x0000518c]             // 0x00487ce7    8b868c510000
                         xor.s              bl, bl                                        // 0x00487ced    32db
                         test               eax, eax                                      // 0x00487cef    85c0
                         {disp8} jne        _jmp_addr_0x00487d16                          // 0x00487cf1    7523
                         call               _jmp_addr_0x0048b970                          // 0x00487cf3    e8783c0000
                         test               eax, eax                                      // 0x00487cf8    85c0
                         {disp32} je        _jmp_addr_0x00487f96                          // 0x00487cfa    0f8496020000
                         {disp32} mov       dword ptr [esi + 0x0000518c], 0x00000001      // 0x00487d00    c7868c51000001000000
                         mov                bl, 0x01                                      // 0x00487d0a    b301
                         {disp32} mov       dword ptr [esi + 0x000047d0], 0x00000000      // 0x00487d0c    c786d047000000000000
_jmp_addr_0x00487d16:    {disp8} fld        dword ptr [esi + 0x78]                        // 0x00487d16    d94678
                         {disp32} fld       dword ptr [esi + 0x00000090]                  // 0x00487d19    d98690000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x19c40]             // 0x00487d1f    d80d402c8c00
                         {disp8} fadd       dword ptr [esi + 0x7c]                        // 0x00487d25    d8467c
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00487d28    d95c241c
                         {disp32} fld       dword ptr [esi + 0x00000080]                  // 0x00487d2c    d98680000000
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x00487d32    d95c2420
                         {disp32} fld       dword ptr [esi + 0x00004a74]                  // 0x00487d36    d986744a0000
                         fsub               st, st(1)                                     // 0x00487d3c    d8e1
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x00487d3e    d95c240c
                         fstp               st(0)                                         // 0x00487d42    ddd8
                         {disp32} fld       dword ptr [esi + 0x00004a78]                  // 0x00487d44    d986784a0000
                         {disp8} fsub       dword ptr [esp + 0x1c]                        // 0x00487d4a    d864241c
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00487d4e    d95c2410
                         {disp32} fld       dword ptr [esi + 0x00004a7c]                  // 0x00487d52    d9867c4a0000
                         {disp8} fsub       dword ptr [esp + 0x20]                        // 0x00487d58    d8642420
                         {disp8} fst        dword ptr [esp + 0x14]                        // 0x00487d5c    d9542414
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x00487d60    d84c2414
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x00487d64    d944240c
                         {disp8} fmul       dword ptr [esp + 0x0c]                        // 0x00487d68    d84c240c
                         faddp              st(1), st                                     // 0x00487d6c    dec1
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00487d6e    d9442410
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x00487d72    d84c2410
                         faddp              st(1), st                                     // 0x00487d76    dec1
                         fsqrt                                                            // 0x00487d78    d9fa
                         {disp8} fst        dword ptr [esp + 0x08]                        // 0x00487d7a    d9542408
                         {disp32} fcomp     dword ptr [__real@3dcccccd]                   // 0x00487d7e    d81d2cb28a00
                         fnstsw             ax                                            // 0x00487d84    dfe0
                         test               ah, 0x01                                      // 0x00487d86    f6c401
                         {disp8} je         _jmp_addr_0x00487d9e                          // 0x00487d89    7413
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x00487d8b    d90598a38a00
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000            // 0x00487d91    c744240800000000
                         {disp32} jmp       _jmp_addr_0x00487e25                          // 0x00487d99    e987000000
_jmp_addr_0x00487d9e:    {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x00487d9e    8d44240c
                         push               eax                                           // 0x00487da2    50
                         call               _jmp_addr_0x007faa50                          // 0x00487da3    e8a82c3700
                         {disp32} fld       dword ptr [esi + 0x00000084]                  // 0x00487da8    d98684000000
                         fsub               st, st(1)                                     // 0x00487dae    d8e1
                         fstp               dword ptr [esp]                               // 0x00487db0    d91c24
                         fstp               st(0)                                         // 0x00487db3    ddd8
                         call               _jmp_addr_0x007faaf0                          // 0x00487db5    e8362d3700
                         {disp32} fcom      dword ptr [rdata_bytes + 0x1ecdc]             // 0x00487dba    d815dc7c8c00
                         add                esp, 0x04                                     // 0x00487dc0    83c404
                         fnstsw             ax                                            // 0x00487dc3    dfe0
                         test               ah, 0x41                                      // 0x00487dc5    f6c441
                         {disp8} jne        _jmp_addr_0x00487de1                          // 0x00487dc8    7517
                         {disp32} fcom      dword ptr [rdata_bytes + 0x26164]             // 0x00487dca    d81564f18c00
                         fnstsw             ax                                            // 0x00487dd0    dfe0
                         test               ah, 0x01                                      // 0x00487dd2    f6c401
                         {disp8} jne        _jmp_addr_0x00487de9                          // 0x00487dd5    7512
                         fstp               st(0)                                         // 0x00487dd7    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x26164]             // 0x00487dd9    d90564f18c00
                         {disp8} jmp        _jmp_addr_0x00487de9                          // 0x00487ddf    eb08
_jmp_addr_0x00487de1:    fstp               st(0)                                         // 0x00487de1    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x1ecdc]             // 0x00487de3    d905dc7c8c00
_jmp_addr_0x00487de9:    {disp8} fld        dword ptr [esp + 0x10]                        // 0x00487de9    d9442410
                         {disp8} fdiv       dword ptr [esp + 0x08]                        // 0x00487ded    d8742408
                         {disp8} fst        dword ptr [esp + 0x08]                        // 0x00487df1    d9542408
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x25fcc]             // 0x00487df5    d81dccef8c00
                         fnstsw             ax                                            // 0x00487dfb    dfe0
                         test               ah, 0x41                                      // 0x00487dfd    f6c441
                         {disp8} jne        _jmp_addr_0x00487e1d                          // 0x00487e00    751b
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x00487e02    d9442408
                         {disp32} fcomp     dword ptr [_rdata_float0p5]                   // 0x00487e06    d81db4a38a00
                         fnstsw             ax                                            // 0x00487e0c    dfe0
                         test               ah, 0x01                                      // 0x00487e0e    f6c401
                         {disp8} jne        _jmp_addr_0x00487e25                          // 0x00487e11    7512
                         {disp8} mov        dword ptr [esp + 0x08], 0x3f000000            // 0x00487e13    c74424080000003f
                         {disp8} jmp        _jmp_addr_0x00487e25                          // 0x00487e1b    eb08
_jmp_addr_0x00487e1d:    {disp8} mov        dword ptr [esp + 0x08], 0xbf000000            // 0x00487e1d    c7442408000000bf
_jmp_addr_0x00487e25:    test               bl, bl                                        // 0x00487e25    84db
                         {disp8} je         _jmp_addr_0x00487e64                          // 0x00487e27    743b
                         {disp32} mov       eax, dword ptr [esi + 0x000048d0]             // 0x00487e29    8b86d0480000
                         test               eax, eax                                      // 0x00487e2f    85c0
                         {disp8} je         _jmp_addr_0x00487e48                          // 0x00487e31    7415
                         {disp32} mov       eax, dword ptr [esi + 0x00005230]             // 0x00487e33    8b8630520000
                         xor.s              ecx, ecx                                      // 0x00487e39    33c9
                         test               eax, eax                                      // 0x00487e3b    85c0
                         sete               cl                                            // 0x00487e3d    0f94c1
                         {disp32} mov       dword ptr [esi + 0x0000522c], ecx             // 0x00487e40    898e2c520000
                         {disp8} jmp        _jmp_addr_0x00487e64                          // 0x00487e46    eb1c
_jmp_addr_0x00487e48:    {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x00487e48    d81598a38a00
                         fnstsw             ax                                            // 0x00487e4e    dfe0
                         test               ah, 0x41                                      // 0x00487e50    f6c441
                         {disp8} jne        _jmp_addr_0x00487e5c                          // 0x00487e53    7507
                         mov                eax, 0x00000001                               // 0x00487e55    b801000000
                         {disp8} jmp        _jmp_addr_0x00487e5e                          // 0x00487e5a    eb02
_jmp_addr_0x00487e5c:    xor.s              eax, eax                                      // 0x00487e5c    33c0
_jmp_addr_0x00487e5e:    {disp32} mov       dword ptr [esi + 0x0000522c], eax             // 0x00487e5e    89862c520000
_jmp_addr_0x00487e64:    {disp32} mov       eax, dword ptr [esi + 0x0000522c]             // 0x00487e64    8b862c520000
                         test               eax, eax                                      // 0x00487e6a    85c0
                         {disp8} je         _jmp_addr_0x00487e70                          // 0x00487e6c    7402
                         fchs                                                             // 0x00487e6e    d9e0
_jmp_addr_0x00487e70:    {disp32} fadd      dword ptr [rdata_bytes + 0x26164]             // 0x00487e70    d80564f18c00
                         push               0x0                                           // 0x00487e76    6a00
                         push               0x000000d0                                    // 0x00487e78    68d0000000
                         mov.s              ecx, esi                                      // 0x00487e7d    8bce
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26160]             // 0x00487e7f    d80d60f18c00
                         {disp32} fstp      dword ptr [esi + 0x00005168]                  // 0x00487e85    d99e68510000
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00487e8b    d9442410
                         {disp32} fadd      dword ptr [_rdata_float0p5]                   // 0x00487e8f    d805b4a38a00
                         {disp32} fstp      dword ptr [esi + 0x00005170]                  // 0x00487e95    d99e70510000
                         call               @GetAnim__9MorphableFll@16                    // 0x00487e9b    e8b0171900
                         push               0x0                                           // 0x00487ea0    6a00
                         push               0x000000d1                                    // 0x00487ea2    68d1000000
                         mov.s              ecx, esi                                      // 0x00487ea7    8bce
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax             // 0x00487ea9    8986c0470000
                         call               @GetAnim__9MorphableFll@16                    // 0x00487eaf    e89c171900
                         push               0x0                                           // 0x00487eb4    6a00
                         push               0x000000d2                                    // 0x00487eb6    68d2000000
                         mov.s              ecx, esi                                      // 0x00487ebb    8bce
                         {disp32} mov       dword ptr [esi + 0x000047c4], eax             // 0x00487ebd    8986c4470000
                         call               @GetAnim__9MorphableFll@16                    // 0x00487ec3    e888171900
                         push               0x0                                           // 0x00487ec8    6a00
                         push               0x000000d3                                    // 0x00487eca    68d3000000
                         mov.s              ecx, esi                                      // 0x00487ecf    8bce
                         {disp32} mov       dword ptr [esi + 0x000047c8], eax             // 0x00487ed1    8986c8470000
                         call               @GetAnim__9MorphableFll@16                    // 0x00487ed7    e874171900
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x00487edc    d90590a38a00
                         {disp32} fsub      dword ptr [esi + 0x00005170]                  // 0x00487ee2    d8a670510000
                         {disp32} mov       dword ptr [esi + 0x000047cc], eax             // 0x00487ee8    8986cc470000
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x00487eee    d90590a38a00
                         {disp8} mov        al, byte ptr [esp + 0x28]                     // 0x00487ef4    8a442428
                         test               al, al                                        // 0x00487ef8    84c0
                         {disp32} fsub      dword ptr [esi + 0x00005168]                  // 0x00487efa    d8a668510000
                         {disp8} fst        dword ptr [esp + 0x08]                        // 0x00487f00    d9542408
                         fmul               st, st(1)                                     // 0x00487f04    d8c9
                         {disp32} fstp      dword ptr [esi + 0x000047e0]                  // 0x00487f06    d99ee0470000
                         {disp32} fmul      dword ptr [esi + 0x00005168]                  // 0x00487f0c    d88e68510000
                         {disp32} fstp      dword ptr [esi + 0x000047e4]                  // 0x00487f12    d99ee4470000
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x00487f18    d9442408
                         {disp32} fmul      dword ptr [esi + 0x00005170]                  // 0x00487f1c    d88e70510000
                         {disp32} fstp      dword ptr [esi + 0x000047e8]                  // 0x00487f22    d99ee8470000
                         {disp32} fld       dword ptr [esi + 0x00005170]                  // 0x00487f28    d98670510000
                         {disp32} fmul      dword ptr [esi + 0x00005168]                  // 0x00487f2e    d88e68510000
                         {disp32} fstp      dword ptr [esi + 0x000047ec]                  // 0x00487f34    d99eec470000
                         {disp8} je         _jmp_addr_0x00487f47                          // 0x00487f3a    740b
                         cmp                dword ptr [esi + 0x00005190], 0x03            // 0x00487f3c    83be9051000003
                         {disp8} je         _jmp_addr_0x00487f5e                          // 0x00487f43    7419
                         {disp8} jmp        _jmp_addr_0x00487f50                          // 0x00487f45    eb09
_jmp_addr_0x00487f47:    cmp                dword ptr [esi + 0x00004994], 0x09            // 0x00487f47    83be9449000009
                         {disp8} je         _jmp_addr_0x00487f5e                          // 0x00487f4e    740e
_jmp_addr_0x00487f50:    {disp32} mov       edx, dword ptr [esi + 0x000047d0]             // 0x00487f50    8b96d0470000
                         cmp                edx, dword ptr [esi + 0x00004a80]             // 0x00487f56    3b96804a0000
                         {disp8} jge        _jmp_addr_0x00487f7e                          // 0x00487f5c    7d20
_jmp_addr_0x00487f5e:    {disp32} mov       eax, dword ptr [esi + 0x000048bc]             // 0x00487f5e    8b86bc480000
                         {disp32} mov       ecx, dword ptr [esi + 0x000047d0]             // 0x00487f64    8b8ed0470000
                         push               eax                                           // 0x00487f6a    50
                         push               ecx                                           // 0x00487f6b    51
                         push               0x000000d0                                    // 0x00487f6c    68d0000000
                         mov.s              ecx, esi                                      // 0x00487f71    8bce
                         call               _jmp_addr_0x00617a10                          // 0x00487f73    e898fa1800
                         {disp32} mov       dword ptr [esi + 0x000047d0], eax             // 0x00487f78    8986d0470000
_jmp_addr_0x00487f7e:    {disp32} mov       eax, dword ptr [esi + 0x000047d0]             // 0x00487f7e    8b86d0470000
                         {disp32} mov       dword ptr [esi + 0x000047dc], eax             // 0x00487f84    8986dc470000
                         {disp32} mov       dword ptr [esi + 0x000047d8], eax             // 0x00487f8a    8986d8470000
                         {disp32} mov       dword ptr [esi + 0x000047d4], eax             // 0x00487f90    8986d4470000
_jmp_addr_0x00487f96:    pop                esi                                           // 0x00487f96    5e
                         pop                ebx                                           // 0x00487f97    5b
                         add                esp, 0x1c                                     // 0x00487f98    83c41c
                         ret                0x0004                                        // 0x00487f9b    c20400
                         nop                                                              // 0x00487f9e    90
                         nop                                                              // 0x00487f9f    90
_jmp_addr_0x00487fa0:    sub                esp, 0x1c                                     // 0x00487fa0    83ec1c
                         push               ebx                                           // 0x00487fa3    53
                         mov                eax, 0x3f000000                               // 0x00487fa4    b80000003f
                         push               esi                                           // 0x00487fa9    56
                         mov.s              esi, ecx                                      // 0x00487faa    8bf1
                         {disp32} mov       dword ptr [esi + 0x0000516c], eax             // 0x00487fac    89866c510000
                         {disp32} mov       dword ptr [esi + 0x00005168], eax             // 0x00487fb2    898668510000
                         {disp32} mov       eax, dword ptr [esi + 0x000048cc]             // 0x00487fb8    8b86cc480000
                         test               eax, eax                                      // 0x00487fbe    85c0
                         {disp32} je        _jmp_addr_0x0048809f                          // 0x00487fc0    0f84d9000000
                         push               eax                                           // 0x00487fc6    50
                         call               _jmp_addr_0x00646950                          // 0x00487fc7    e884e91b00
                         {disp32} fld       dword ptr [esi + 0x00004a08]                  // 0x00487fcc    d986084a0000
                         {disp32} fmul      dword ptr [esi + 0x00000094]                  // 0x00487fd2    d88e94000000
                         add                esp, 0x04                                     // 0x00487fd8    83c404
                         test               eax, eax                                      // 0x00487fdb    85c0
                         {disp8} fadd       dword ptr [esi + 0x7c]                        // 0x00487fdd    d8467c
                         {disp32} je        _jmp_addr_0x0048809d                          // 0x00487fe0    0f84b7000000
                         {disp32} fld       dword ptr [eax + 0x000000cc]                  // 0x00487fe6    d980cc000000
                         fsub               st, st(1)                                     // 0x00487fec    d8e1
                         {disp32} fld       dword ptr [esi + 0x00004a20]                  // 0x00487fee    d986204a0000
                         {disp32} fmul      dword ptr [esi + 0x00000094]                  // 0x00487ff4    d88e94000000
                         {disp8} fadd       dword ptr [esi + 0x7c]                        // 0x00487ffa    d8467c
                         fsub               st, st(2)                                     // 0x00487ffd    d8e2
                         fdivp              st(1), st                                     // 0x00487fff    def9
                         {disp32} fstp      dword ptr [esi + 0x00005170]                  // 0x00488001    d99e70510000
                         fstp               st(0)                                         // 0x00488007    ddd8
                         {disp32} fld       dword ptr [esi + 0x00000084]                  // 0x00488009    d98684000000
                         {disp32} fsub      dword ptr [rdata_bytes + 0x1e8d8]             // 0x0048800f    d825d8788c00
                         fld                st(0)                                         // 0x00488015    d9c0
                         fsin                                                             // 0x00488017    d9fe
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x00488019    d95c240c
                         fcos                                                             // 0x0048801d    d9ff
                         fchs                                                             // 0x0048801f    d9e0
                         {disp32} fld       dword ptr [esi + 0x00004a1c]                  // 0x00488021    d9861c4a0000
                         {disp32} fmul      dword ptr [esi + 0x00000094]                  // 0x00488027    d88e94000000
                         fchs                                                             // 0x0048802d    d9e0
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x0048802f    d95c2408
                         {disp32} fld       dword ptr [eax + 0x000000c8]                  // 0x00488033    d980c8000000
                         {disp8} fsub       dword ptr [esi + 0x78]                        // 0x00488039    d86678
                         {disp32} fld       dword ptr [eax + 0x000000cc]                  // 0x0048803c    d980cc000000
                         {disp8} fsub       dword ptr [esi + 0x7c]                        // 0x00488042    d8667c
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00488045    d95c241c
                         {disp32} fld       dword ptr [eax + 0x000000d0]                  // 0x00488049    d980d0000000
                         {disp32} mov       eax, dword ptr [esi + 0x0000522c]             // 0x0048804f    8b862c520000
                         test               eax, eax                                      // 0x00488055    85c0
                         {disp32} fsub      dword ptr [esi + 0x00000080]                  // 0x00488057    d8a680000000
                         fxch               st(2)                                         // 0x0048805d    d9ca
                         fmul               st, st(2)                                     // 0x0048805f    d8ca
                         fxch               st(1)                                         // 0x00488061    d9c9
                         {disp8} fmul       dword ptr [esp + 0x0c]                        // 0x00488063    d84c240c
                         faddp              st(1), st                                     // 0x00488067    dec1
                         fxch               st(1)                                         // 0x00488069    d9c9
                         fstp               st(0)                                         // 0x0048806b    ddd8
                         {disp8} je         _jmp_addr_0x00488071                          // 0x0048806d    7402
                         fchs                                                             // 0x0048806f    d9e0
_jmp_addr_0x00488071:    {disp32} fld       dword ptr [esi + 0x00004a10]                  // 0x00488071    d986104a0000
                         {disp32} fmul      dword ptr [esi + 0x00000094]                  // 0x00488077    d88e94000000
                         fchs                                                             // 0x0048807d    d9e0
                         fxch               st(1)                                         // 0x0048807f    d9c9
                         fsub               st, st(1)                                     // 0x00488081    d8e1
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x00488083    d9442408
                         fsub               st, st(2)                                     // 0x00488087    d8e2
                         fdivp              st(1), st                                     // 0x00488089    def9
                         fxch               st(1)                                         // 0x0048808b    d9c9
                         fstp               st(0)                                         // 0x0048808d    ddd8
                         {disp32} fst       dword ptr [esi + 0x0000516c]                  // 0x0048808f    d9966c510000
                         {disp32} fstp      dword ptr [esi + 0x00005168]                  // 0x00488095    d99e68510000
                         {disp8} jmp        _jmp_addr_0x004880a9                          // 0x0048809b    eb0c
_jmp_addr_0x0048809d:    fstp               st(0)                                         // 0x0048809d    ddd8
_jmp_addr_0x0048809f:    {disp32} mov       dword ptr [esi + 0x00004998], 0x00000002      // 0x0048809f    c7869849000002000000
_jmp_addr_0x004880a9:    {disp32} fld       dword ptr [esi + 0x00005170]                  // 0x004880a9    d98670510000
                         xor.s              bl, bl                                        // 0x004880af    32db
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x26130]             // 0x004880b1    d81d30f18c00
                         mov                edx, 0xbe4ccccd                               // 0x004880b7    bacdcc4cbe
                         fnstsw             ax                                            // 0x004880bc    dfe0
                         test               ah, 0x01                                      // 0x004880be    f6c401
                         {disp8} je         _jmp_addr_0x004880cb                          // 0x004880c1    7408
                         mov                bl, 0x01                                      // 0x004880c3    b301
                         {disp32} mov       dword ptr [esi + 0x00005170], edx             // 0x004880c5    899670510000
_jmp_addr_0x004880cb:    {disp32} fld       dword ptr [esi + 0x00005170]                  // 0x004880cb    d98670510000
                         mov                ecx, 0x3f99999a                               // 0x004880d1    b99a99993f
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1dc98]             // 0x004880d6    d81d986c8c00
                         fnstsw             ax                                            // 0x004880dc    dfe0
                         test               ah, 0x41                                      // 0x004880de    f6c441
                         {disp8} jne        _jmp_addr_0x004880eb                          // 0x004880e1    7508
                         mov                bl, 0x01                                      // 0x004880e3    b301
                         {disp32} mov       dword ptr [esi + 0x00005170], ecx             // 0x004880e5    898e70510000
_jmp_addr_0x004880eb:    {disp32} fld       dword ptr [esi + 0x00005168]                  // 0x004880eb    d98668510000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x26130]             // 0x004880f1    d81d30f18c00
                         fnstsw             ax                                            // 0x004880f7    dfe0
                         test               ah, 0x01                                      // 0x004880f9    f6c401
                         {disp8} je         _jmp_addr_0x0048810c                          // 0x004880fc    740e
                         mov                bl, 0x01                                      // 0x004880fe    b301
                         {disp32} mov       dword ptr [esi + 0x0000516c], edx             // 0x00488100    89966c510000
                         {disp32} mov       dword ptr [esi + 0x00005168], edx             // 0x00488106    899668510000
_jmp_addr_0x0048810c:    {disp32} fld       dword ptr [esi + 0x00005168]                  // 0x0048810c    d98668510000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1dc98]             // 0x00488112    d81d986c8c00
                         fnstsw             ax                                            // 0x00488118    dfe0
                         test               ah, 0x41                                      // 0x0048811a    f6c441
                         {disp8} jne        _jmp_addr_0x0048812d                          // 0x0048811d    750e
                         mov                bl, 0x01                                      // 0x0048811f    b301
                         {disp32} mov       dword ptr [esi + 0x0000516c], ecx             // 0x00488121    898e6c510000
                         {disp32} mov       dword ptr [esi + 0x00005168], ecx             // 0x00488127    898e68510000
_jmp_addr_0x0048812d:    push               0x0                                           // 0x0048812d    6a00
                         push               0x000000e7                                    // 0x0048812f    68e7000000
                         mov.s              ecx, esi                                      // 0x00488134    8bce
                         call               @GetAnim__9MorphableFll@16                    // 0x00488136    e815151900
                         push               0x0                                           // 0x0048813b    6a00
                         push               0x000000e6                                    // 0x0048813d    68e6000000
                         mov.s              ecx, esi                                      // 0x00488142    8bce
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax             // 0x00488144    8986c0470000
                         call               @GetAnim__9MorphableFll@16                    // 0x0048814a    e801151900
                         push               0x0                                           // 0x0048814f    6a00
                         push               0x000000e5                                    // 0x00488151    68e5000000
                         mov.s              ecx, esi                                      // 0x00488156    8bce
                         {disp32} mov       dword ptr [esi + 0x000047c4], eax             // 0x00488158    8986c4470000
                         call               @GetAnim__9MorphableFll@16                    // 0x0048815e    e8ed141900
                         push               0x0                                           // 0x00488163    6a00
                         push               0x000000e4                                    // 0x00488165    68e4000000
                         mov.s              ecx, esi                                      // 0x0048816a    8bce
                         {disp32} mov       dword ptr [esi + 0x000047c8], eax             // 0x0048816c    8986c8470000
                         call               @GetAnim__9MorphableFll@16                    // 0x00488172    e8d9141900
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x00488177    d90590a38a00
                         {disp32} fsub      dword ptr [esi + 0x00005170]                  // 0x0048817d    d8a670510000
                         {disp32} mov       dword ptr [esi + 0x000047cc], eax             // 0x00488183    8986cc470000
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x00488189    d90590a38a00
                         {disp32} mov       eax, dword ptr [esi + 0x00004998]             // 0x0048818f    8b8698490000
                         cmp                eax, 0x01                                     // 0x00488195    83f801
                         {disp32} fsub      dword ptr [esi + 0x00005168]                  // 0x00488198    d8a668510000
                         fmul               st, st(1)                                     // 0x0048819e    d8c9
                         {disp32} fstp      dword ptr [esi + 0x000047e0]                  // 0x004881a0    d99ee0470000
                         {disp32} fmul      dword ptr [esi + 0x00005168]                  // 0x004881a6    d88e68510000
                         {disp32} fstp      dword ptr [esi + 0x000047e4]                  // 0x004881ac    d99ee4470000
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x004881b2    d90590a38a00
                         {disp32} fsub      dword ptr [esi + 0x0000516c]                  // 0x004881b8    d8a66c510000
                         {disp32} fmul      dword ptr [esi + 0x00005170]                  // 0x004881be    d88e70510000
                         {disp32} fstp      dword ptr [esi + 0x000047e8]                  // 0x004881c4    d99ee8470000
                         {disp32} fld       dword ptr [esi + 0x00005170]                  // 0x004881ca    d98670510000
                         {disp32} fmul      dword ptr [esi + 0x0000516c]                  // 0x004881d0    d88e6c510000
                         {disp32} fstp      dword ptr [esi + 0x000047ec]                  // 0x004881d6    d99eec470000
                         {disp8} je         _jmp_addr_0x004881fe                          // 0x004881dc    7420
                         cmp                eax, 0x03                                     // 0x004881de    83f803
                         {disp8} je         _jmp_addr_0x004881fe                          // 0x004881e1    741b
                         {disp32} mov       ecx, dword ptr [esi + 0x000048bc]             // 0x004881e3    8b8ebc480000
                         {disp32} mov       eax, dword ptr [esi + 0x000047d0]             // 0x004881e9    8b86d0470000
                         sub.s              eax, ecx                                      // 0x004881ef    2bc1
                         mov                ecx, 0x00000000                               // 0x004881f1    b900000000
                         sets               cl                                            // 0x004881f6    0f98c1
                         dec                ecx                                           // 0x004881f9    49
                         and.s              eax, ecx                                      // 0x004881fa    23c1
                         {disp8} jmp        _jmp_addr_0x00488218                          // 0x004881fc    eb1a
_jmp_addr_0x004881fe:    {disp32} mov       edx, dword ptr [esi + 0x000048bc]             // 0x004881fe    8b96bc480000
                         {disp32} mov       eax, dword ptr [esi + 0x000047d0]             // 0x00488204    8b86d0470000
                         push               edx                                           // 0x0048820a    52
                         push               eax                                           // 0x0048820b    50
                         push               0x000000e7                                    // 0x0048820c    68e7000000
                         mov.s              ecx, esi                                      // 0x00488211    8bce
                         call               _jmp_addr_0x00617a10                          // 0x00488213    e8f8f71800
_jmp_addr_0x00488218:    {disp32} mov       ecx, dword ptr [esi + 0x00004998]             // 0x00488218    8b8e98490000
                         cmp                ecx, 0x03                                     // 0x0048821e    83f903
                         {disp32} mov       dword ptr [esi + 0x000047d0], eax             // 0x00488221    8986d0470000
                         {disp32} mov       dword ptr [esi + 0x000047dc], eax             // 0x00488227    8986dc470000
                         {disp32} mov       dword ptr [esi + 0x000047d8], eax             // 0x0048822d    8986d8470000
                         {disp32} mov       dword ptr [esi + 0x000047d4], eax             // 0x00488233    8986d4470000
                         {disp32} je        _jmp_addr_0x00488313                          // 0x00488239    0f84d4000000
                         cmp                ecx, 0x02                                     // 0x0048823f    83f902
                         {disp32} je        _jmp_addr_0x00488313                          // 0x00488242    0f84cb000000
                         cmp                eax, dword ptr [esi + 0x00004a3c]             // 0x00488248    3b863c4a0000
                         {disp32} jl        _jmp_addr_0x00488313                          // 0x0048824e    0f8cbf000000
                         test               bl, bl                                        // 0x00488254    84db
                         {disp32} mov       dword ptr [esi + 0x000048c8], 0x00000000      // 0x00488256    c786c848000000000000
                         {disp32} mov       dword ptr [esi + 0x000048c4], 0x00000000      // 0x00488260    c786c448000000000000
                         {disp32} mov       dword ptr [esi + 0x000048c0], 0x00000000      // 0x0048826a    c786c048000000000000
                         {disp32} jne       _jmp_addr_0x00488309                          // 0x00488274    0f858f000000
                         {disp32} mov       ecx, dword ptr [esi + 0x000048cc]             // 0x0048827a    8b8ecc480000
                         push               edi                                           // 0x00488280    57
                         push               0x1                                           // 0x00488281    6a01
                         push               0x0                                           // 0x00488283    6a00
                         push               ecx                                           // 0x00488285    51
                         {disp32} mov       dword ptr [esi + 0x00004998], 0x00000003      // 0x00488286    c7869849000003000000
                         call               _jmp_addr_0x00646a00                          // 0x00488290    e86be71b00
                         {disp32} mov       edx, dword ptr [esi + 0x000048cc]             // 0x00488295    8b96cc480000
                         add                esp, 0x0c                                     // 0x0048829b    83c40c
                         push               edx                                           // 0x0048829e    52
                         mov.s              ecx, esi                                      // 0x0048829f    8bce
                         {disp32} mov       dword ptr [esi + 0x000048d0], eax             // 0x004882a1    8986d0480000
                         call               _jmp_addr_0x0048cc20                          // 0x004882a7    e874490000
                         {disp32} mov       eax, dword ptr [esi + 0x000048d0]             // 0x004882ac    8b86d0480000
                         push               0x0                                           // 0x004882b2    6a00
                         push               0x009c8de8                                    // 0x004882b4    68e88d9c00
                         push               0x009c7f50                                    // 0x004882b9    68507f9c00
                         push               0x0                                           // 0x004882be    6a00
                         push               eax                                           // 0x004882c0    50
                         call               ___RTDynamicCast                              // 0x004882c1    e853d73300
                         mov.s              edi, eax                                      // 0x004882c6    8bf8
                         add                esp, 0x14                                     // 0x004882c8    83c414
                         test               edi, edi                                      // 0x004882cb    85ff
                         {disp8} je         _jmp_addr_0x004882e5                          // 0x004882cd    7416
                         mov                edx, dword ptr [edi]                          // 0x004882cf    8b17
                         mov.s              ecx, edi                                      // 0x004882d1    8bcf
                         call               dword ptr [edx + 0x8ec]                       // 0x004882d3    ff92ec080000
                         mov                eax, dword ptr [edi]                          // 0x004882d9    8b07
                         push               0x18                                          // 0x004882db    6a18
                         mov.s              ecx, edi                                      // 0x004882dd    8bcf
                         call               dword ptr [eax + 0x8e8]                       // 0x004882df    ff90e8080000
_jmp_addr_0x004882e5:    {disp32} mov       eax, dword ptr [esi + 0x000048d0]             // 0x004882e5    8b86d0480000
                         test               eax, eax                                      // 0x004882eb    85c0
                         pop                edi                                           // 0x004882ed    5f
                         {disp8} je         _jmp_addr_0x00488309                          // 0x004882ee    7419
                         {disp32} mov       esi, dword ptr [esi + 0x00004834]             // 0x004882f0    8bb634480000
                         test               esi, esi                                      // 0x004882f6    85f6
                         {disp8} je         _jmp_addr_0x00488313                          // 0x004882f8    7419
                         {disp32} mov       ecx, dword ptr [esi + 0x00000160]             // 0x004882fa    8b8e60010000
                         pop                esi                                           // 0x00488300    5e
                         {disp8} mov        dword ptr [ecx + 0x28], eax                   // 0x00488301    894128
                         pop                ebx                                           // 0x00488304    5b
                         add                esp, 0x1c                                     // 0x00488305    83c41c
                         ret                                                              // 0x00488308    c3
_jmp_addr_0x00488309:    {disp32} mov       dword ptr [esi + 0x00004998], 0x00000002      // 0x00488309    c7869849000002000000
_jmp_addr_0x00488313:    pop                esi                                           // 0x00488313    5e
                         pop                ebx                                           // 0x00488314    5b
                         add                esp, 0x1c                                     // 0x00488315    83c41c
                         ret                                                              // 0x00488318    c3
                         nop                                                              // 0x00488319    90
                         nop                                                              // 0x0048831a    90
                         nop                                                              // 0x0048831b    90
                         nop                                                              // 0x0048831c    90
                         nop                                                              // 0x0048831d    90
                         nop                                                              // 0x0048831e    90
                         nop                                                              // 0x0048831f    90
_jmp_addr_0x00488320:    sub                esp, 0x50                                     // 0x00488320    83ec50
                         push               esi                                           // 0x00488323    56
                         mov.s              esi, ecx                                      // 0x00488324    8bf1
                         {disp32} fld       dword ptr [esi + 0x00000084]                  // 0x00488326    d98684000000
                         {disp32} mov       eax, dword ptr [esi + 0x000049a0]             // 0x0048832c    8b86a0490000
                         fld                st(0)                                         // 0x00488332    d9c0
                         push               edi                                           // 0x00488334    57
                         fcos                                                             // 0x00488335    d9ff
                         push               0x0                                           // 0x00488337    6a00
                         push               eax                                           // 0x00488339    50
                         {disp8} fstp       dword ptr [esp + 0x50]                        // 0x0048833a    d95c2450
                         fsin                                                             // 0x0048833e    d9fe
                         {disp8} fst        dword ptr [esp + 0x38]                        // 0x00488340    d9542438
                         fchs                                                             // 0x00488344    d9e0
                         {disp8} fstp       dword ptr [esp + 0x48]                        // 0x00488346    d95c2448
                         call               @GetAnim__9MorphableFll@16                    // 0x0048834a    e801131900
                         {disp32} fild      dword ptr [esi + 0x000048bc]                  // 0x0048834f    db86bc480000
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax             // 0x00488355    8986c0470000
                         {disp8} lea        ecx, dword ptr [eax + 0x10]                   // 0x0048835b    8d4810
                         mov                edx, dword ptr [ecx]                          // 0x0048835e    8b11
                         {disp32} fmul      dword ptr [esi + 0x00000094]                  // 0x00488360    d88e94000000
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x00488366    89542410
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                   // 0x0048836a    8b5104
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x0048836d    8b4908
                         fidiv              dword ptr [eax]                               // 0x00488370    da30
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x00488372    89542414
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x00488376    894c2418
                         {disp32} mov       eax, dword ptr [esi + 0x0000522c]             // 0x0048837a    8b862c520000
                         test               eax, eax                                      // 0x00488380    85c0
                         {disp8} lea        edi, dword ptr [esi + 0x78]                   // 0x00488382    8d7e78
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x00488385    d95c2408
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00488389    d9442410
                         {disp8} fmul       dword ptr [esp + 0x08]                        // 0x0048838d    d84c2408
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00488391    d95c2410
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x00488395    8b542410
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00488399    d9442414
                         {disp8} fmul       dword ptr [esp + 0x08]                        // 0x0048839d    d84c2408
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x004883a1    d9442418
                         {disp8} fmul       dword ptr [esp + 0x08]                        // 0x004883a5    d84c2408
                         {disp8} mov        dword ptr [esp + 0x08], edx                   // 0x004883a9    89542408
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x004883ad    d95c2418
                         {disp8} fst        dword ptr [esp + 0x0c]                        // 0x004883b1    d954240c
                         {disp8} fld        dword ptr [esp + 0x40]                        // 0x004883b5    d9442440
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x004883b9    d84c2418
                         {disp8} fld        dword ptr [esp + 0x48]                        // 0x004883bd    d9442448
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x004883c1    d84c2410
                         faddp              st(1), st                                     // 0x004883c5    dec1
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x004883c7    d95c2410
                         {disp8} fld        dword ptr [esp + 0x48]                        // 0x004883cb    d9442448
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x004883cf    d84c2418
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x004883d3    d9442430
                         {disp8} fmul       dword ptr [esp + 0x08]                        // 0x004883d7    d84c2408
                         faddp              st(1), st                                     // 0x004883db    dec1
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x004883dd    d95c2418
                         {disp8} je         _jmp_addr_0x0048840a                          // 0x004883e1    7427
                         fld                dword ptr [edi]                               // 0x004883e3    d907
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                   // 0x004883e5    8d44241c
                         {disp8} fsub       dword ptr [esp + 0x10]                        // 0x004883e9    d8642410
                         push               eax                                           // 0x004883ed    50
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x004883ee    d95c2420
                         {disp8} fld        dword ptr [edi + 0x04]                        // 0x004883f2    d94704
                         fsub               st, st(1)                                     // 0x004883f5    d8e1
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x004883f7    d95c2424
                         fstp               st(0)                                         // 0x004883fb    ddd8
                         {disp8} fld        dword ptr [edi + 0x08]                        // 0x004883fd    d94708
                         {disp8} fsub       dword ptr [esp + 0x1c]                        // 0x00488400    d864241c
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x00488404    d95c2428
                         {disp8} jmp        _jmp_addr_0x0048842b                          // 0x00488408    eb21
_jmp_addr_0x0048840a:    {disp8} fld        dword ptr [esp + 0x10]                        // 0x0048840a    d9442410
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x0048840e    8d4c241c
                         fadd               dword ptr [edi]                               // 0x00488412    d807
                         push               ecx                                           // 0x00488414    51
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x00488415    d95c2420
                         {disp8} fadd       dword ptr [edi + 0x04]                        // 0x00488419    d84704
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x0048841c    d95c2424
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x00488420    d944241c
                         {disp8} fadd       dword ptr [edi + 0x08]                        // 0x00488424    d84708
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x00488427    d95c2428
_jmp_addr_0x0048842b:    mov.s              ecx, esi                                      // 0x0048842b    8bce
                         call               _jmp_addr_0x006182f0                          // 0x0048842d    e8befe1800
                         push               edi                                           // 0x00488432    57
                         call               _jmp_addr_0x00483870                          // 0x00488433    e838b4ffff
                         add                esp, 0x04                                     // 0x00488438    83c404
                         test               eax, eax                                      // 0x0048843b    85c0
                         {disp8} jne        _jmp_addr_0x0048846d                          // 0x0048843d    752e
                         mov                edx, dword ptr [edi]                          // 0x0048843f    8b17
                         {disp8} mov        eax, dword ptr [edi + 0x04]                   // 0x00488441    8b4704
                         {disp8} mov        ecx, dword ptr [edi + 0x08]                   // 0x00488444    8b4f08
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x00488447    89542410
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x0048844b    8d542410
                         push               edx                                           // 0x0048844f    52
                         push               edi                                           // 0x00488450    57
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x00488451    8944241c
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x00488455    894c2420
                         call               _jmp_addr_0x004839d0                          // 0x00488459    e872b5ffff
                         add                esp, 0x08                                     // 0x0048845e    83c408
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x00488461    8d442410
                         push               eax                                           // 0x00488465    50
                         mov.s              ecx, esi                                      // 0x00488466    8bce
                         call               _jmp_addr_0x006182f0                          // 0x00488468    e883fe1800
_jmp_addr_0x0048846d:    {disp32} mov       ecx, dword ptr [esi + 0x000048bc]             // 0x0048846d    8b8ebc480000
                         {disp32} mov       edx, dword ptr [esi + 0x000047d0]             // 0x00488473    8b96d0470000
                         {disp32} mov       eax, dword ptr [esi + 0x000049a0]             // 0x00488479    8b86a0490000
                         push               ecx                                           // 0x0048847f    51
                         push               edx                                           // 0x00488480    52
                         push               eax                                           // 0x00488481    50
                         mov.s              ecx, esi                                      // 0x00488482    8bce
                         call               _jmp_addr_0x00617a10                          // 0x00488484    e887f51800
                         pop                edi                                           // 0x00488489    5f
                         {disp32} mov       dword ptr [esi + 0x000047d0], eax             // 0x0048848a    8986d0470000
                         {disp32} mov       dword ptr [esi + 0x000047e0], 0x3f800000      // 0x00488490    c786e04700000000803f
                         pop                esi                                           // 0x0048849a    5e
                         add                esp, 0x50                                     // 0x0048849b    83c450
                         ret                                                              // 0x0048849e    c3
                         nop                                                              // 0x0048849f    90
_jmp_addr_0x004884a0:    sub                esp, 0x58                                     // 0x004884a0    83ec58
                         push               ebx                                           // 0x004884a3    53
                         push               esi                                           // 0x004884a4    56
                         mov.s              esi, ecx                                      // 0x004884a5    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x0000518c]             // 0x004884a7    8b868c510000
                         test               eax, eax                                      // 0x004884ad    85c0
                         push               edi                                           // 0x004884af    57
                         {disp8} jne        _jmp_addr_0x004884d3                          // 0x004884b0    7521
                         call               _jmp_addr_0x0048b970                          // 0x004884b2    e8b9340000
                         test               eax, eax                                      // 0x004884b7    85c0
                         {disp32} je        _jmp_addr_0x0048877a                          // 0x004884b9    0f84bb020000
                         {disp32} mov       dword ptr [esi + 0x0000518c], 0x00000001      // 0x004884bf    c7868c51000001000000
                         {disp32} mov       dword ptr [esi + 0x000047d0], 0x00000000      // 0x004884c9    c786d047000000000000
_jmp_addr_0x004884d3:    {disp32} mov       eax, dword ptr [esi + 0x000048cc]             // 0x004884d3    8b86cc480000
                         test               eax, eax                                      // 0x004884d9    85c0
                         {disp32} je        _jmp_addr_0x0048876a                          // 0x004884db    0f8489020000
                         test               byte ptr [eax + 0x24], 0x40                   // 0x004884e1    f6402440
                         {disp32} je        _jmp_addr_0x0048876a                          // 0x004884e5    0f847f020000
                         push               eax                                           // 0x004884eb    50
                         call               _jmp_addr_0x00646950                          // 0x004884ec    e85fe41b00
                         mov.s              ebx, eax                                      // 0x004884f1    8bd8
                         add                esp, 0x04                                     // 0x004884f3    83c404
                         test               ebx, ebx                                      // 0x004884f6    85db
                         {disp32} je        _jmp_addr_0x0048876a                          // 0x004884f8    0f846c020000
                         {disp32} lea       edi, dword ptr [ebx + 0x000000c8]             // 0x004884fe    8dbbc8000000
                         push               edi                                           // 0x00488504    57
                         mov.s              ecx, esi                                      // 0x00488505    8bce
                         call               _jmp_addr_0x00482c90                          // 0x00488507    e884a7ffff
                         {disp32} fld       dword ptr [esi + 0x00000084]                  // 0x0048850c    d98684000000
                         fld                st(0)                                         // 0x00488512    d9c0
                         fsin                                                             // 0x00488514    d9fe
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00488516    d95c2410
                         fcos                                                             // 0x0048851a    d9ff
                         fchs                                                             // 0x0048851c    d9e0
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0048851e    d95c2418
                         fld                dword ptr [edi]                               // 0x00488522    d907
                         {disp8} fsub       dword ptr [esi + 0x78]                        // 0x00488524    d86678
                         {disp8} fld        dword ptr [edi + 0x04]                        // 0x00488527    d94704
                         {disp8} fsub       dword ptr [esi + 0x7c]                        // 0x0048852a    d8667c
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0048852d    d95c2420
                         {disp8} fld        dword ptr [edi + 0x08]                        // 0x00488531    d94708
                         {disp32} fsub      dword ptr [esi + 0x00000080]                  // 0x00488534    d8a680000000
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x0048853a    d9442418
                         fmul               st, st(1)                                     // 0x0048853e    d8c9
                         fxch               st(2)                                         // 0x00488540    d9ca
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x00488542    d84c2410
                         faddp              st(2), st                                     // 0x00488546    dec2
                         fxch               st(1)                                         // 0x00488548    d9c9
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x0048854a    d95c240c
                         fstp               st(0)                                         // 0x0048854e    ddd8
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x00488550    d944240c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00488554    d81d98a38a00
                         fnstsw             ax                                            // 0x0048855a    dfe0
                         test               ah, 0x01                                      // 0x0048855c    f6c401
                         {disp32} jne       _jmp_addr_0x0048876a                          // 0x0048855f    0f8505020000
                         {disp32} fld       dword ptr [esi + 0x00000084]                  // 0x00488565    d98684000000
                         {disp32} fsub      dword ptr [rdata_bytes + 0x1e8d8]             // 0x0048856b    d825d8788c00
                         fld                st(0)                                         // 0x00488571    d9c0
                         fsin                                                             // 0x00488573    d9fe
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00488575    d95c241c
                         fcos                                                             // 0x00488579    d9ff
                         fchs                                                             // 0x0048857b    d9e0
                         fld                dword ptr [edi]                               // 0x0048857d    d907
                         {disp8} fsub       dword ptr [esi + 0x78]                        // 0x0048857f    d86678
                         {disp8} fld        dword ptr [edi + 0x04]                        // 0x00488582    d94704
                         {disp8} fsub       dword ptr [esi + 0x7c]                        // 0x00488585    d8667c
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x00488588    d95c242c
                         {disp8} fld        dword ptr [edi + 0x08]                        // 0x0048858c    d94708
                         {disp32} fsub      dword ptr [esi + 0x00000080]                  // 0x0048858f    d8a680000000
                         fxch               st(2)                                         // 0x00488595    d9ca
                         fmul               st, st(2)                                     // 0x00488597    d8ca
                         fxch               st(1)                                         // 0x00488599    d9c9
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x0048859b    d84c241c
                         faddp              st(1), st                                     // 0x0048859f    dec1
                         fxch               st(1)                                         // 0x004885a1    d9c9
                         fstp               st(0)                                         // 0x004885a3    ddd8
                         fld                st(0)                                         // 0x004885a5    d9c0
                         fabs                                                             // 0x004885a7    d9e1
                         {disp32} fld       dword ptr [esi + 0x00004a1c]                  // 0x004885a9    d9861c4a0000
                         {disp32} fsub      dword ptr [esi + 0x00004a10]                  // 0x004885af    d8a6104a0000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1dc98]             // 0x004885b5    d80d986c8c00
                         {disp32} fadd      dword ptr [esi + 0x00004a10]                  // 0x004885bb    d886104a0000
                         {disp32} fmul      dword ptr [esi + 0x00000094]                  // 0x004885c1    d88e94000000
                         fchs                                                             // 0x004885c7    d9e0
                         fcompp                                                           // 0x004885c9    ded9
                         fnstsw             ax                                            // 0x004885cb    dfe0
                         test               ah, 0x01                                      // 0x004885cd    f6c401
                         {disp32} je        _jmp_addr_0x004886c9                          // 0x004885d0    0f84f3000000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x004885d6    d81d98a38a00
                         fnstsw             ax                                            // 0x004885dc    dfe0
                         test               ah, 0x41                                      // 0x004885de    f6c441
                         {disp8} jne        _jmp_addr_0x004885ef                          // 0x004885e1    750c
                         {disp32} mov       dword ptr [esi + 0x0000522c], 0x00000000      // 0x004885e3    c7862c52000000000000
                         {disp8} jmp        _jmp_addr_0x004885f9                          // 0x004885ed    eb0a
_jmp_addr_0x004885ef:    {disp32} mov       dword ptr [esi + 0x0000522c], 0x00000001      // 0x004885ef    c7862c52000001000000
_jmp_addr_0x004885f9:    {disp8} lea        eax, dword ptr [esp + 0x34]                   // 0x004885f9    8d442434
                         push               eax                                           // 0x004885fd    50
                         mov.s              ecx, esi                                      // 0x004885fe    8bce
                         call               _jmp_addr_0x004ebe10                          // 0x00488600    e80b380600
                         push               0x0                                           // 0x00488605    6a00
                         push               0x000000e1                                    // 0x00488607    68e1000000
                         mov.s              ecx, esi                                      // 0x0048860c    8bce
                         {disp32} mov       dword ptr [esi + 0x000049a0], 0x000000e1      // 0x0048860e    c786a0490000e1000000
                         call               @GetAnim__9MorphableFll@16                    // 0x00488618    e833101900
                         test               eax, eax                                      // 0x0048861d    85c0
                         {disp32} je        _jmp_addr_0x0048876a                          // 0x0048861f    0f8445010000
                         {disp8} fld        dword ptr [eax + 0x10]                        // 0x00488625    d94010
                         {disp8} fld        dword ptr [eax + 0x14]                        // 0x00488628    d94014
                         {disp8} fld        dword ptr [eax + 0x18]                        // 0x0048862b    d94018
                         {disp32} mov       eax, dword ptr [esi + 0x0000522c]             // 0x0048862e    8b862c520000
                         test               eax, eax                                      // 0x00488634    85c0
                         {disp8} je         _jmp_addr_0x0048863e                          // 0x00488636    7406
                         fxch               st(2)                                         // 0x00488638    d9ca
                         fchs                                                             // 0x0048863a    d9e0
                         fxch               st(2)                                         // 0x0048863c    d9ca
_jmp_addr_0x0048863e:    {disp8} fld        dword ptr [esp + 0x4c]                        // 0x0048863e    d944244c
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x00488642    8d4c2410
                         fmul               st, st(1)                                     // 0x00488646    d8c9
                         push               ecx                                           // 0x00488648    51
                         {disp8} fld        dword ptr [esp + 0x44]                        // 0x00488649    d9442444
                         mov.s              ecx, esi                                      // 0x0048864d    8bce
                         fmul               st, st(3)                                     // 0x0048864f    d8cb
                         faddp              st(1), st                                     // 0x00488651    dec1
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x00488653    d9442438
                         fmul               st, st(4)                                     // 0x00488657    d8cc
                         faddp              st(1), st                                     // 0x00488659    dec1
                         {disp8} fadd       dword ptr [esp + 0x5c]                        // 0x0048865b    d844245c
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0048865f    d95c2414
                         {disp8} fld        dword ptr [esp + 0x54]                        // 0x00488663    d9442454
                         fmul               st, st(1)                                     // 0x00488667    d8c9
                         {disp8} fld        dword ptr [esp + 0x48]                        // 0x00488669    d9442448
                         fmul               st, st(3)                                     // 0x0048866d    d8cb
                         faddp              st(1), st                                     // 0x0048866f    dec1
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x00488671    d944243c
                         fmul               st, st(4)                                     // 0x00488675    d8cc
                         faddp              st(1), st                                     // 0x00488677    dec1
                         {disp8} fadd       dword ptr [esp + 0x60]                        // 0x00488679    d8442460
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0048867d    d95c2418
                         {disp8} fld        dword ptr [esp + 0x58]                        // 0x00488681    d9442458
                         fmul               st, st(1)                                     // 0x00488685    d8c9
                         {disp8} fld        dword ptr [esp + 0x4c]                        // 0x00488687    d944244c
                         fmul               st, st(3)                                     // 0x0048868b    d8cb
                         faddp              st(1), st                                     // 0x0048868d    dec1
                         {disp8} fld        dword ptr [esp + 0x40]                        // 0x0048868f    d9442440
                         fmul               st, st(4)                                     // 0x00488693    d8cc
                         faddp              st(1), st                                     // 0x00488695    dec1
                         {disp8} fadd       dword ptr [esp + 0x64]                        // 0x00488697    d8442464
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0048869b    d95c241c
                         fstp               st(0)                                         // 0x0048869f    ddd8
                         fstp               st(0)                                         // 0x004886a1    ddd8
                         fstp               st(0)                                         // 0x004886a3    ddd8
                         call               _jmp_addr_0x00483780                          // 0x004886a5    e8d6b0ffff
                         test               eax, eax                                      // 0x004886aa    85c0
                         {disp32} je        _jmp_addr_0x0048876a                          // 0x004886ac    0f84b8000000
                         push               0x14                                          // 0x004886b2    6a14
                         mov.s              ecx, esi                                      // 0x004886b4    8bce
                         call               _jmp_addr_0x00484ec0                          // 0x004886b6    e805c8ffff
                         mov.s              ecx, esi                                      // 0x004886bb    8bce
                         call               _jmp_addr_0x00488320                          // 0x004886bd    e85efcffff
                         pop                edi                                           // 0x004886c2    5f
                         pop                esi                                           // 0x004886c3    5e
                         pop                ebx                                           // 0x004886c4    5b
                         add                esp, 0x58                                     // 0x004886c5    83c458
                         ret                                                              // 0x004886c8    c3
_jmp_addr_0x004886c9:    {disp32} fild      dword ptr [esi + 0x00004a3c]                  // 0x004886c9    db863c4a0000
                         {disp32} fld       dword ptr [esi + 0x00000090]                  // 0x004886cf    d98690000000
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x004886d5    d80db4a38a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x25fac]             // 0x004886db    d80dacef8c00
                         {disp32} fsubr     dword ptr [rdata_bytes + 0x26024]             // 0x004886e1    d82d24f08c00
                         {disp32} fmul      dword ptr [__real@447a0000]                   // 0x004886e7    d80d28b28a00
                         fdivp              st(1), st                                     // 0x004886ed    def9
                         {disp32} fld       dword ptr [ebx + 0x00000104]                  // 0x004886ef    d98304010000
                         fchs                                                             // 0x004886f5    d9e0
                         {disp32} fld       dword ptr [ebx + 0x0000010c]                  // 0x004886f7    d9830c010000
                         fchs                                                             // 0x004886fd    d9e0
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x004886ff    d84c2418
                         fxch               st(1)                                         // 0x00488703    d9c9
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x00488705    d84c2410
                         faddp              st(1), st                                     // 0x00488709    dec1
                         {disp8} fdivr      dword ptr [esp + 0x0c]                        // 0x0048870b    d87c240c
                         fld                st(1)                                         // 0x0048870f    d9c1
                         {disp32} fadd      dword ptr [__real@3dcccccd]                   // 0x00488711    d8052cb28a00
                         fld                st(1)                                         // 0x00488717    d9c1
                         fcompp                                                           // 0x00488719    ded9
                         fnstsw             ax                                            // 0x0048871b    dfe0
                         test               ah, 0x01                                      // 0x0048871d    f6c401
                         {disp8} je         _jmp_addr_0x00488781                          // 0x00488720    745f
                         fxch               st(1)                                         // 0x00488722    d9c9
                         {disp32} fsub      dword ptr [rdata_bytes + 0x1c840]             // 0x00488724    d82540588c00
                         fxch               st(1)                                         // 0x0048872a    d9c9
                         fcompp                                                           // 0x0048872c    ded9
                         fnstsw             ax                                            // 0x0048872e    dfe0
                         test               ah, 0x41                                      // 0x00488730    f6c441
                         {disp8} jne        _jmp_addr_0x00488768                          // 0x00488733    7533
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00488735    d81d98a38a00
                         fnstsw             ax                                            // 0x0048873b    dfe0
                         test               ah, 0x01                                      // 0x0048873d    f6c401
                         {disp8} je         _jmp_addr_0x00488749                          // 0x00488740    7407
                         mov                eax, 0x00000001                               // 0x00488742    b801000000
                         {disp8} jmp        _jmp_addr_0x0048874b                          // 0x00488747    eb02
_jmp_addr_0x00488749:    xor.s              eax, eax                                      // 0x00488749    33c0
_jmp_addr_0x0048874b:    push               0x15                                          // 0x0048874b    6a15
                         mov.s              ecx, esi                                      // 0x0048874d    8bce
                         {disp32} mov       dword ptr [esi + 0x0000522c], eax             // 0x0048874f    89862c520000
                         call               _jmp_addr_0x00484ec0                          // 0x00488755    e866c7ffff
                         mov.s              ecx, esi                                      // 0x0048875a    8bce
                         call               _jmp_addr_0x00487fa0                          // 0x0048875c    e83ff8ffff
                         pop                edi                                           // 0x00488761    5f
                         pop                esi                                           // 0x00488762    5e
                         pop                ebx                                           // 0x00488763    5b
                         add                esp, 0x58                                     // 0x00488764    83c458
                         ret                                                              // 0x00488767    c3
_jmp_addr_0x00488768:    fstp               st(0)                                         // 0x00488768    ddd8
_jmp_addr_0x0048876a:    push               0x0                                           // 0x0048876a    6a00
                         mov.s              ecx, esi                                      // 0x0048876c    8bce
                         call               _jmp_addr_0x00484ec0                          // 0x0048876e    e84dc7ffff
                         mov.s              ecx, esi                                      // 0x00488773    8bce
                         call               _jmp_addr_0x0048d520                          // 0x00488775    e8a64d0000
_jmp_addr_0x0048877a:    pop                edi                                           // 0x0048877a    5f
                         pop                esi                                           // 0x0048877b    5e
                         pop                ebx                                           // 0x0048877c    5b
                         add                esp, 0x58                                     // 0x0048877d    83c458
                         ret                                                              // 0x00488780    c3
_jmp_addr_0x00488781:    fstp               st(0)                                         // 0x00488781    ddd8
                         mov.s              ecx, esi                                      // 0x00488783    8bce
                         fstp               st(0)                                         // 0x00488785    ddd8
                         fstp               st(0)                                         // 0x00488787    ddd8
                         call               _jmp_addr_0x0048d250                          // 0x00488789    e8c24a0000
                         pop                edi                                           // 0x0048878e    5f
                         pop                esi                                           // 0x0048878f    5e
                         pop                ebx                                           // 0x00488790    5b
                         add                esp, 0x58                                     // 0x00488791    83c458
                         ret                                                              // 0x00488794    c3
                         nop                                                              // 0x00488795    90
                         nop                                                              // 0x00488796    90
                         nop                                                              // 0x00488797    90
                         nop                                                              // 0x00488798    90
                         nop                                                              // 0x00488799    90
                         nop                                                              // 0x0048879a    90
                         nop                                                              // 0x0048879b    90
                         nop                                                              // 0x0048879c    90
                         nop                                                              // 0x0048879d    90
                         nop                                                              // 0x0048879e    90
                         nop                                                              // 0x0048879f    90
_jmp_addr_0x004887a0:    sub                esp, 0x000000d8                               // 0x004887a0    81ecd8000000
                         push               ebx                                           // 0x004887a6    53
                         push               ebp                                           // 0x004887a7    55
                         push               esi                                           // 0x004887a8    56
                         push               edi                                           // 0x004887a9    57
                         xor.s              ebp, ebp                                      // 0x004887aa    33ed
                         push               ebp                                           // 0x004887ac    55
                         mov.s              esi, ecx                                      // 0x004887ad    8bf1
                         push               0x75                                          // 0x004887af    6a75
                         call               @GetAnim__9MorphableFll@16                    // 0x004887b1    e89a0e1900
                         {disp32} mov       edi, dword ptr [esi + 0x000047d0]             // 0x004887b6    8bbed0470000
                         {disp32} mov       ebx, dword ptr [esi + 0x00004a8c]             // 0x004887bc    8b9e8c4a0000
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax             // 0x004887c2    8986c0470000
                         {disp32} mov       eax, dword ptr [esi + 0x000048bc]             // 0x004887c8    8b86bc480000
                         push               eax                                           // 0x004887ce    50
                         push               edi                                           // 0x004887cf    57
                         push               0x75                                          // 0x004887d0    6a75
                         mov.s              ecx, esi                                      // 0x004887d2    8bce
                         {disp32} mov       dword ptr [esi + 0x000047e0], 0x3f800000      // 0x004887d4    c786e04700000000803f
                         call               _jmp_addr_0x00617a10                          // 0x004887de    e82df21800
                         cmp                dword ptr [esi + 0x000048cc], ebp             // 0x004887e3    39aecc480000
                         {disp32} mov       dword ptr [esi + 0x000047d4], eax             // 0x004887e9    8986d4470000
                         {disp32} mov       dword ptr [esi + 0x000047d0], eax             // 0x004887ef    8986d0470000
                         {disp32} je        _jmp_addr_0x004890e2                          // 0x004887f5    0f84e7080000
                         cmp.s              edi, ebx                                      // 0x004887fb    3bfb
                         {disp32} jg        _jmp_addr_0x004890e2                          // 0x004887fd    0f8fdf080000
                         cmp.s              eax, ebx                                      // 0x00488803    3bc3
                         {disp32} jle       _jmp_addr_0x004890e2                          // 0x00488805    0f8ed7080000
                         {disp8} lea        ecx, dword ptr [esp + 0x6c]                   // 0x0048880b    8d4c246c
                         push               ecx                                           // 0x0048880f    51
                         mov.s              ecx, esi                                      // 0x00488810    8bce
                         call               _jmp_addr_0x004ebe10                          // 0x00488812    e8f9350600
                         {disp32} fld       dword ptr [esi + 0x00004a28]                  // 0x00488817    d986284a0000
                         {disp8} fst        dword ptr [esp + 0x38]                        // 0x0048881d    d9542438
                         {disp32} mov       edx, dword ptr [esi + 0x00004a2c]             // 0x00488821    8b962c4a0000
                         {disp8} fld        dword ptr [esp + 0x78]                        // 0x00488827    d9442478
                         {disp32} mov       eax, dword ptr [esi + 0x00004a30]             // 0x0048882b    8b86304a0000
                         {disp8} mov        dword ptr [esp + 0x24], edx                   // 0x00488831    89542424
                         {disp8} fmul       dword ptr [esp + 0x24]                        // 0x00488835    d84c2424
                         {disp8} fld        dword ptr [esp + 0x6c]                        // 0x00488839    d944246c
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x0048883d    89442428
                         fmul               st, st(2)                                     // 0x00488841    d8ca
                         mov.s              ecx, edx                                      // 0x00488843    8bca
                         {disp8} mov        dword ptr [esp + 0x3c], ecx                   // 0x00488845    894c243c
                         faddp              st(1), st                                     // 0x00488849    dec1
                         {disp32} fld       dword ptr [esp + 0x00000084]                  // 0x0048884b    d9842484000000
                         {disp8} fmul       dword ptr [esp + 0x28]                        // 0x00488852    d84c2428
                         faddp              st(1), st                                     // 0x00488856    dec1
                         {disp32} fadd      dword ptr [esp + 0x00000090]                  // 0x00488858    d8842490000000
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0048885f    d95c2420
                         fstp               st(0)                                         // 0x00488863    ddd8
                         {disp8} fld        dword ptr [esp + 0x70]                        // 0x00488865    d9442470
                         {disp8} fmul       dword ptr [esp + 0x38]                        // 0x00488869    d84c2438
                         {disp8} fld        dword ptr [esp + 0x7c]                        // 0x0048886d    d944247c
                         {disp8} fmul       dword ptr [esp + 0x24]                        // 0x00488871    d84c2424
                         faddp              st(1), st                                     // 0x00488875    dec1
                         {disp32} fld       dword ptr [esp + 0x00000088]                  // 0x00488877    d9842488000000
                         {disp8} fmul       dword ptr [esp + 0x28]                        // 0x0048887e    d84c2428
                         faddp              st(1), st                                     // 0x00488882    dec1
                         {disp32} fadd      dword ptr [esp + 0x00000094]                  // 0x00488884    d8842494000000
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x0048888b    d95c2424
                         {disp32} fld       dword ptr [esp + 0x00000080]                  // 0x0048888f    d9842480000000
                         {disp8} fmul       dword ptr [esp + 0x3c]                        // 0x00488896    d84c243c
                         {disp8} fld        dword ptr [esp + 0x74]                        // 0x0048889a    d9442474
                         {disp8} fmul       dword ptr [esp + 0x38]                        // 0x0048889e    d84c2438
                         faddp              st(1), st                                     // 0x004888a2    dec1
                         {disp32} fld       dword ptr [esp + 0x0000008c]                  // 0x004888a4    d984248c000000
                         {disp8} fmul       dword ptr [esp + 0x28]                        // 0x004888ab    d84c2428
                         faddp              st(1), st                                     // 0x004888af    dec1
                         {disp32} fadd      dword ptr [esp + 0x00000098]                  // 0x004888b1    d8842498000000
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x004888b8    d95c2428
                         {disp32} fld       dword ptr [esp + 0x00000084]                  // 0x004888bc    d9842484000000
                         {disp32} fmul      dword ptr [_rdata_float1p0]                   // 0x004888c3    d80d90a38a00
                         {disp8} fsubr      dword ptr [esp + 0x78]                        // 0x004888c9    d86c2478
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x004888cd    d95c2410
                         {disp32} fld       dword ptr [esp + 0x00000088]                  // 0x004888d1    d9842488000000
                         {disp32} fmul      dword ptr [_rdata_float1p0]                   // 0x004888d8    d80d90a38a00
                         {disp8} fsubr      dword ptr [esp + 0x7c]                        // 0x004888de    d86c247c
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x004888e2    d95c2414
                         {disp32} fld       dword ptr [esp + 0x0000008c]                  // 0x004888e6    d984248c000000
                         {disp32} fmul      dword ptr [_rdata_float1p0]                   // 0x004888ed    d80d90a38a00
                         {disp32} fsubr     dword ptr [esp + 0x00000080]                  // 0x004888f3    d8ac2480000000
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x004888fa    d95c2418
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x004888fe    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00488902    d81d98a38a00
                         fnstsw             ax                                            // 0x00488908    dfe0
                         test               ah, 0x40                                      // 0x0048890a    f6c440
                         {disp8} je         _jmp_addr_0x00488931                          // 0x0048890d    7422
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x0048890f    d9442414
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00488913    d81d98a38a00
                         fnstsw             ax                                            // 0x00488919    dfe0
                         test               ah, 0x40                                      // 0x0048891b    f6c440
                         {disp8} je         _jmp_addr_0x00488931                          // 0x0048891e    7411
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00488920    d9442418
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00488924    d81d98a38a00
                         fnstsw             ax                                            // 0x0048892a    dfe0
                         test               ah, 0x40                                      // 0x0048892c    f6c440
                         {disp8} jne        _jmp_addr_0x00488975                          // 0x0048892f    7544
_jmp_addr_0x00488931:    {disp8} fld        dword ptr [esp + 0x10]                        // 0x00488931    d9442410
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x00488935    d84c2410
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00488939    d9442418
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x0048893d    d84c2418
                         faddp              st(1), st                                     // 0x00488941    dec1
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00488943    d9442414
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x00488947    d84c2414
                         faddp              st(1), st                                     // 0x0048894b    dec1
                         fsqrt                                                            // 0x0048894d    d9fa
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                   // 0x0048894f    d83d90a38a00
                         fld                st(0)                                         // 0x00488955    d9c0
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x00488957    d84c2410
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0048895b    d95c2410
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x0048895f    d9442414
                         fmul               st, st(1)                                     // 0x00488963    d8c9
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00488965    d95c2414
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00488969    d9442418
                         fmul               st, st(1)                                     // 0x0048896d    d8c9
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0048896f    d95c2418
                         fstp               st(0)                                         // 0x00488973    ddd8
_jmp_addr_0x00488975:    {disp32} mov       ecx, dword ptr [_game]                        // 0x00488975    8b0d5c19d000
                         call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ           // 0x0048897b    e800380c00
                         test               eax, eax                                      // 0x00488980    85c0
                         {disp32} je        _jmp_addr_0x004890e2                          // 0x00488982    0f845a070000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00488988    8b0d5c19d000
                         call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ           // 0x0048898e    e8ed370c00
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4dbdb8]        // 0x00488993    8b15b81dea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4dbdbc]        // 0x00488999    a1bc1dea00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4dbdc0]        // 0x0048899e    8b0dc01dea00
                         {disp8} mov        dword ptr [esp + 0x2c], edx                   // 0x004889a4    8954242c
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x004889a8    d944242c
                         {disp8} fsub       dword ptr [esp + 0x20]                        // 0x004889ac    d8642420
                         {disp8} mov        dword ptr [esp + 0x30], eax                   // 0x004889b0    89442430
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x004889b4    d9442430
                         {disp8} mov        dword ptr [esp + 0x34], ecx                   // 0x004889b8    894c2434
                         {disp8} fsub       dword ptr [esp + 0x24]                        // 0x004889bc    d8642424
                         {disp32} mov       ecx, dword ptr [esi + 0x000048cc]             // 0x004889c0    8b8ecc480000
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x004889c6    d9442434
                         mov                edx, dword ptr [ecx]                          // 0x004889ca    8b11
                         {disp8} fsub       dword ptr [esp + 0x28]                        // 0x004889cc    d8642428
                         fld                st(2)                                         // 0x004889d0    d9c2
                         fmul               st, st(3)                                     // 0x004889d2    d8cb
                         fld                st(1)                                         // 0x004889d4    d9c1
                         fmul               st, st(2)                                     // 0x004889d6    d8ca
                         faddp              st(1), st                                     // 0x004889d8    dec1
                         fld                st(2)                                         // 0x004889da    d9c2
                         fmul               st, st(3)                                     // 0x004889dc    d8cb
                         faddp              st(1), st                                     // 0x004889de    dec1
                         fsqrt                                                            // 0x004889e0    d9fa
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x004889e2    d95c241c
                         fstp               st(0)                                         // 0x004889e6    ddd8
                         fstp               st(0)                                         // 0x004889e8    ddd8
                         fstp               st(0)                                         // 0x004889ea    ddd8
                         call               dword ptr [edx + 0x208]                       // 0x004889ec    ff9208020000
                         test               eax, eax                                      // 0x004889f2    85c0
                         {disp8} je         _jmp_addr_0x00488a08                          // 0x004889f4    7412
                         {disp8} mov        dword ptr [esp + 0x40], ebp                   // 0x004889f6    896c2440
                         {disp8} mov        dword ptr [esp + 0x44], ebp                   // 0x004889fa    896c2444
                         {disp8} mov        dword ptr [esp + 0x48], 0x00000013            // 0x004889fe    c744244813000000
                         {disp8} jmp        _jmp_addr_0x00488a5e                          // 0x00488a06    eb56
_jmp_addr_0x00488a08:    {disp32} mov       ecx, dword ptr [esi + 0x000048cc]             // 0x00488a08    8b8ecc480000
                         mov                eax, dword ptr [ecx]                          // 0x00488a0e    8b01
                         push               ebp                                           // 0x00488a10    55
                         call               dword ptr [eax + 0x2c8]                       // 0x00488a11    ff90c8020000
                         test               eax, eax                                      // 0x00488a17    85c0
                         {disp8} je         _jmp_addr_0x00488a3c                          // 0x00488a19    7421
                         {disp8} mov        dword ptr [esp + 0x40], ebp                   // 0x00488a1b    896c2440
                         {disp8} mov        dword ptr [esp + 0x44], ebp                   // 0x00488a1f    896c2444
                         {disp8} mov        dword ptr [esp + 0x48], 0x00000016            // 0x00488a23    c744244816000000
                         {disp8} mov        dword ptr [esp + 0x4c], ebp                   // 0x00488a2b    896c244c
                         {disp8} mov        dword ptr [esp + 0x50], 0x00000096            // 0x00488a2f    c744245096000000
                         {disp32} jmp       _jmp_addr_0x00488b38                          // 0x00488a37    e9fc000000
_jmp_addr_0x00488a3c:    {disp32} mov       ecx, dword ptr [esi + 0x000048cc]             // 0x00488a3c    8b8ecc480000
                         mov                edx, dword ptr [ecx]                          // 0x00488a42    8b11
                         call               dword ptr [edx + 0x3cc]                       // 0x00488a44    ff92cc030000
                         test               eax, eax                                      // 0x00488a4a    85c0
                         {disp8} je         _jmp_addr_0x00488a91                          // 0x00488a4c    7443
                         {disp8} mov        dword ptr [esp + 0x40], ebp                   // 0x00488a4e    896c2440
                         {disp8} mov        dword ptr [esp + 0x44], ebp                   // 0x00488a52    896c2444
                         {disp8} mov        dword ptr [esp + 0x48], 0x00000019            // 0x00488a56    c744244819000000
_jmp_addr_0x00488a5e:    {disp32} mov       ecx, dword ptr [_global]                      // 0x00488a5e    8b0d203bcd00
                         push               ebp                                           // 0x00488a64    55
                         push               ebp                                           // 0x00488a65    55
                         push               ebp                                           // 0x00488a66    55
                         {disp8} mov        dword ptr [esp + 0x58], ebp                   // 0x00488a67    896c2458
                         {disp8} mov        dword ptr [esp + 0x5c], 0x00000096            // 0x00488a6b    c744245c96000000
                         {disp32} mov       eax, dword ptr [ecx + 0x000003b0]             // 0x00488a73    8b81b0030000
                         push               eax                                           // 0x00488a79    50
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x00488a7a    8b44242c
                         push               ebp                                           // 0x00488a7e    55
                         {disp8} lea        edx, dword ptr [esp + 0x54]                   // 0x00488a7f    8d542454
                         push               edx                                           // 0x00488a83    52
                         {disp32} mov       edx, dword ptr [esi + 0x000048cc]             // 0x00488a84    8b96cc480000
                         push               eax                                           // 0x00488a8a    50
                         push               edx                                           // 0x00488a8b    52
                         {disp32} jmp       _jmp_addr_0x00488b5a                          // 0x00488a8c    e9c9000000
_jmp_addr_0x00488a91:    {disp32} mov       ecx, dword ptr [esi + 0x000048cc]             // 0x00488a91    8b8ecc480000
                         mov                eax, dword ptr [ecx]                          // 0x00488a97    8b01
                         call               dword ptr [eax + 0x338]                       // 0x00488a99    ff9038030000
                         test               eax, eax                                      // 0x00488a9f    85c0
                         {disp8} je         _jmp_addr_0x00488b10                          // 0x00488aa1    746d
                         {disp32} mov       eax, dword ptr [esi + 0x000048cc]             // 0x00488aa3    8b86cc480000
                         test               byte ptr [eax + 0x24], 0x40                   // 0x00488aa9    f6402440
                         {disp8} jne        _jmp_addr_0x00488adb                          // 0x00488aad    752c
                         push               ebp                                           // 0x00488aaf    55
                         push               0x1                                           // 0x00488ab0    6a01
                         push               0x1                                           // 0x00488ab2    6a01
                         push               ebp                                           // 0x00488ab4    55
                         push               ebp                                           // 0x00488ab5    55
                         push               0x3                                           // 0x00488ab6    6a03
                         push               ebp                                           // 0x00488ab8    55
                         push               0x3                                           // 0x00488ab9    6a03
                         push               0x00000088                                    // 0x00488abb    6888000000
                         call               _jmp_addr_0x0071ed40                          // 0x00488ac0    e87b622900
                         add                esp, 0x08                                     // 0x00488ac5    83c408
                         push               eax                                           // 0x00488ac8    50
                         {disp8} lea        ecx, dword ptr [esp + 0x40]                   // 0x00488ac9    8d4c2440
                         push               ecx                                           // 0x00488acd    51
                         call               _jmp_addr_0x0071ea40                          // 0x00488ace    e86d5f2900
                         add                esp, 0x24                                     // 0x00488ad3    83c424
                         {disp32} jmp       _jmp_addr_0x00488b5f                          // 0x00488ad6    e984000000
_jmp_addr_0x00488adb:    {disp32} mov       ecx, dword ptr [_global]                      // 0x00488adb    8b0d203bcd00
                         push               ebp                                           // 0x00488ae1    55
                         push               ebp                                           // 0x00488ae2    55
                         push               ebp                                           // 0x00488ae3    55
                         {disp8} mov        dword ptr [esp + 0x4c], ebp                   // 0x00488ae4    896c244c
                         {disp8} mov        dword ptr [esp + 0x50], ebp                   // 0x00488ae8    896c2450
                         {disp8} mov        dword ptr [esp + 0x54], 0x00000014            // 0x00488aec    c744245414000000
                         {disp8} mov        dword ptr [esp + 0x58], 0x00000096            // 0x00488af4    c744245896000000
                         {disp32} mov       edx, dword ptr [ecx + 0x000003b0]             // 0x00488afc    8b91b0030000
                         push               edx                                           // 0x00488b02    52
                         push               ebp                                           // 0x00488b03    55
                         {disp8} lea        edx, dword ptr [esp + 0x54]                   // 0x00488b04    8d542454
                         push               edx                                           // 0x00488b08    52
                         {disp8} mov        edx, dword ptr [esp + 0x34]                   // 0x00488b09    8b542434
                         push               edx                                           // 0x00488b0d    52
                         {disp8} jmp        _jmp_addr_0x00488b59                          // 0x00488b0e    eb49
_jmp_addr_0x00488b10:    {disp32} mov       ecx, dword ptr [esi + 0x000048cc]             // 0x00488b10    8b8ecc480000
                         mov                eax, dword ptr [ecx]                          // 0x00488b16    8b01
                         call               dword ptr [eax + 0x1f0]                       // 0x00488b18    ff90f0010000
                         test               eax, eax                                      // 0x00488b1e    85c0
                         {disp8} mov        dword ptr [esp + 0x40], ebp                   // 0x00488b20    896c2440
                         {disp8} mov        dword ptr [esp + 0x44], ebp                   // 0x00488b24    896c2444
                         {disp8} mov        dword ptr [esp + 0x48], 0x00000016            // 0x00488b28    c744244816000000
                         {disp8} mov        dword ptr [esp + 0x4c], 0x00000096            // 0x00488b30    c744244c96000000
_jmp_addr_0x00488b38:    {disp32} mov       ecx, dword ptr [_global]                      // 0x00488b38    8b0d203bcd00
                         {disp32} mov       edx, dword ptr [ecx + 0x000003b0]             // 0x00488b3e    8b91b0030000
                         push               ebp                                           // 0x00488b44    55
                         push               ebp                                           // 0x00488b45    55
                         push               ebp                                           // 0x00488b46    55
                         push               edx                                           // 0x00488b47    52
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                   // 0x00488b48    8b54242c
                         push               ebp                                           // 0x00488b4c    55
                         {disp8} lea        eax, dword ptr [esp + 0x54]                   // 0x00488b4d    8d442454
                         push               eax                                           // 0x00488b51    50
                         {disp32} mov       eax, dword ptr [esi + 0x000048cc]             // 0x00488b52    8b86cc480000
                         push               edx                                           // 0x00488b58    52
_jmp_addr_0x00488b59:    push               eax                                           // 0x00488b59    50
_jmp_addr_0x00488b5a:    call               _jmp_addr_0x0042a4b0                          // 0x00488b5a    e85119faff
_jmp_addr_0x00488b5f:    {disp32} mov       ecx, dword ptr [esi + 0x000048cc]             // 0x00488b5f    8b8ecc480000
                         mov                edx, dword ptr [ecx]                          // 0x00488b65    8b11
                         call               dword ptr [edx + 0x208]                       // 0x00488b67    ff9208020000
                         test               eax, eax                                      // 0x00488b6d    85c0
                         {disp32} je        _jmp_addr_0x00488ec3                          // 0x00488b6f    0f844e030000
                         {disp32} mov       eax, dword ptr [esi + 0x000048cc]             // 0x00488b75    8b86cc480000
                         push               ebp                                           // 0x00488b7b    55
                         push               0x009c7fa0                                    // 0x00488b7c    68a07f9c00
                         push               0x009c7f50                                    // 0x00488b81    68507f9c00
                         push               ebp                                           // 0x00488b86    55
                         push               eax                                           // 0x00488b87    50
                         call               ___RTDynamicCast                              // 0x00488b88    e88cce3300
                         mov.s              edi, eax                                      // 0x00488b8d    8bf8
                         {disp32} mov       eax, dword ptr [esi + 0x00004834]             // 0x00488b8f    8b8634480000
                         add                esp, 0x14                                     // 0x00488b95    83c414
                         cmp.s              eax, ebp                                      // 0x00488b98    3bc5
                         {disp32} je        _jmp_addr_0x004890dc                          // 0x00488b9a    0f843c050000
                         mov                edx, dword ptr [edi]                          // 0x00488ba0    8b17
                         push               eax                                           // 0x00488ba2    50
                         mov.s              ecx, edi                                      // 0x00488ba3    8bcf
                         call               dword ptr [edx + 0x38c]                       // 0x00488ba5    ff928c030000
                         test               eax, eax                                      // 0x00488bab    85c0
                         {disp32} je        _jmp_addr_0x004890dc                          // 0x00488bad    0f8429050000
                         cmp                dword ptr [edi + 0x00000090], ebp             // 0x00488bb3    39af90000000
                         {disp8} jne        _jmp_addr_0x00488be8                          // 0x00488bb9    752d
                         push               0x0000154c                                    // 0x00488bbb    684c150000
                         push               0x009d1094                                    // 0x00488bc0    6894109d00
                         push               0x28                                          // 0x00488bc5    6a28
                         call               ___nw__FUl                                    // 0x00488bc7    e8c42b3500
                         add                esp, 0x0c                                     // 0x00488bcc    83c40c
                         cmp.s              eax, ebp                                      // 0x00488bcf    3bc5
                         {disp8} je         _jmp_addr_0x00488be0                          // 0x00488bd1    740d
                         {disp8} mov        ecx, dword ptr [edi + 0x40]                   // 0x00488bd3    8b4f40
                         push               ecx                                           // 0x00488bd6    51
                         mov.s              ecx, eax                                      // 0x00488bd7    8bc8
                         call               _jmp_addr_0x007f6f00                          // 0x00488bd9    e822e33600
                         {disp8} jmp        _jmp_addr_0x00488be2                          // 0x00488bde    eb02
_jmp_addr_0x00488be0:    xor.s              eax, eax                                      // 0x00488be0    33c0
_jmp_addr_0x00488be2:    {disp32} mov       dword ptr [edi + 0x00000090], eax             // 0x00488be2    898790000000
_jmp_addr_0x00488be8:    {disp8} fld        dword ptr [esp + 0x10]                        // 0x00488be8    d9442410
                         push               0x00001553                                    // 0x00488bec    6853150000
                         fadd.s             st(0), st(0)                                  // 0x00488bf1    dcc0
                         push               0x009d1094                                    // 0x00488bf3    6894109d00
                         push               0xb                                           // 0x00488bf8    6a0b
                         {disp32} fstp      dword ptr [esp + 0x000000a8]                  // 0x00488bfa    d99c24a8000000
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x00488c01    d9442420
                         fadd.s             st(0), st(0)                                  // 0x00488c05    dcc0
                         {disp32} fstp      dword ptr [esp + 0x000000ac]                  // 0x00488c07    d99c24ac000000
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x00488c0e    d9442424
                         fadd.s             st(0), st(0)                                  // 0x00488c12    dcc0
                         {disp32} fstp      dword ptr [esp + 0x000000b0]                  // 0x00488c14    d99c24b0000000
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x00488c1b    d944242c
                         {disp8} fsub       dword ptr [esi + 0x78]                        // 0x00488c1f    d86678
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x00488c22    d9442430
                         {disp8} fsub       dword ptr [esi + 0x7c]                        // 0x00488c26    d8667c
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x00488c29    d95c243c
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x00488c2d    d9442434
                         {disp32} fsub      dword ptr [esi + 0x00000080]                  // 0x00488c31    d8a680000000
                         {disp8} fstp       dword ptr [esp + 0x40]                        // 0x00488c37    d95c2440
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x00488c3b    d80db4a38a00
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x00488c41    d944243c
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x00488c45    d80db4a38a00
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x00488c4b    d95c2420
                         {disp8} fld        dword ptr [esp + 0x40]                        // 0x00488c4f    d9442440
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x00488c53    d80db4a38a00
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x00488c59    d95c2424
                         {disp8} fadd       dword ptr [esi + 0x78]                        // 0x00488c5d    d84678
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x00488c60    d95c2438
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x00488c64    d9442420
                         {disp8} mov        edx, dword ptr [esp + 0x38]                   // 0x00488c68    8b542438
                         {disp8} fadd       dword ptr [esi + 0x7c]                        // 0x00488c6c    d8467c
                         {disp8} mov        dword ptr [esp + 0x2c], edx                   // 0x00488c6f    8954242c
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x00488c73    d95c243c
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x00488c77    d9442424
                         {disp8} mov        eax, dword ptr [esp + 0x3c]                   // 0x00488c7b    8b44243c
                         {disp32} fadd      dword ptr [esi + 0x00000080]                  // 0x00488c7f    d88680000000
                         {disp8} mov        dword ptr [esp + 0x30], eax                   // 0x00488c85    89442430
                         {disp8} fstp       dword ptr [esp + 0x40]                        // 0x00488c89    d95c2440
                         {disp8} mov        ecx, dword ptr [esp + 0x40]                   // 0x00488c8d    8b4c2440
                         {disp8} mov        dword ptr [esp + 0x34], ecx                   // 0x00488c91    894c2434
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x00488c95    e876582500
                         sub                eax, 0x05                                     // 0x00488c9a    83e805
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x00488c9d    8944241c
                         {disp8} mov        dword ptr [esp + 0x20], ebp                   // 0x00488ca1    896c2420
                         {disp8} fild       qword ptr [esp + 0x1c]                        // 0x00488ca5    df6c241c
                         push               0x00001554                                    // 0x00488ca9    6854150000
                         push               0x009d1094                                    // 0x00488cae    6894109d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x00488cb3    d80d04c48a00
                         push               0x64                                          // 0x00488cb9    6a64
                         {disp8} fstp       dword ptr [esp + 0x54]                        // 0x00488cbb    d95c2454
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x00488cbf    e84c582500
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x00488cc4    89442428
                         {disp8} mov        dword ptr [esp + 0x2c], ebp                   // 0x00488cc8    896c242c
                         {disp8} fild       qword ptr [esp + 0x28]                        // 0x00488ccc    df6c2428
                         push               0x00001555                                    // 0x00488cd0    6855150000
                         push               0x009d1094                                    // 0x00488cd5    6894109d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1bb10]             // 0x00488cda    d80d104b8c00
                         push               0x64                                          // 0x00488ce0    6a64
                         {disp32} fstp      dword ptr [esp + 0x00000084]                  // 0x00488ce2    d99c2484000000
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x00488ce9    e822582500
                         {disp8} mov        dword ptr [esp + 0x34], eax                   // 0x00488cee    89442434
                         {disp8} mov        dword ptr [esp + 0x38], ebp                   // 0x00488cf2    896c2438
                         {disp8} fild       qword ptr [esp + 0x34]                        // 0x00488cf6    df6c2434
                         add                esp, 0x24                                     // 0x00488cfa    83c424
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1bb10]             // 0x00488cfd    d80d104b8c00
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00488d03    d95c2410
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x00488d07    d9442420
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]              // 0x00488d0b    d80d08c48a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x00488d11    d80d04c48a00
                         call               _jmp_addr_0x007a1400                          // 0x00488d17    e8e4863100
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x00488d1c    d9442428
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]              // 0x00488d20    d80d08c48a00
                         {disp8} mov        dword ptr [esp + 0x2c], eax                   // 0x00488d26    8944242c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x00488d2a    d80d04c48a00
                         call               _jmp_addr_0x007a1400                          // 0x00488d30    e8cb863100
                         {disp8} lea        ecx, dword ptr [esp + 0x2c]                   // 0x00488d35    8d4c242c
                         {disp8} mov        dword ptr [esp + 0x30], eax                   // 0x00488d39    89442430
                         {disp8} mov        dword ptr [esp + 0x34], 0x00000000            // 0x00488d3d    c744243400000000
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x00488d45    e846a33700
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00488d4a    d95c241c
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x00488d4e    d9442424
                         {disp8} fcomp      dword ptr [esp + 0x1c]                        // 0x00488d52    d85c241c
                         fnstsw             ax                                            // 0x00488d56    dfe0
                         test               ah, 0x01                                      // 0x00488d58    f6c401
                         {disp8} je         _jmp_addr_0x00488d65                          // 0x00488d5b    7408
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x00488d5d    8b54241c
                         {disp8} mov        dword ptr [esp + 0x24], edx                   // 0x00488d61    89542424
_jmp_addr_0x00488d65:    {disp8} fld        dword ptr [esp + 0x24]                        // 0x00488d65    d9442424
                         {disp8} fsub       dword ptr [esp + 0x1c]                        // 0x00488d69    d864241c
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x00488d6d    d95c2438
                         {disp32} fld       dword ptr [esi + 0x00000090]                  // 0x00488d71    d98690000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2616c]             // 0x00488d77    d80d6cf18c00
                         {disp8} fst        dword ptr [esp + 0x68]                        // 0x00488d7d    d9542468
                         fld                st(0)                                         // 0x00488d81    d9c0
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x00488d83    d9442438
                         fcomp              st(1)                                         // 0x00488d87    d8d9
                         fnstsw             ax                                            // 0x00488d89    dfe0
                         test               ah, 0x41                                      // 0x00488d8b    f6c441
                         {disp8} jne        _jmp_addr_0x00488d96                          // 0x00488d8e    7506
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x00488d90    d95c2438
                         {disp8} jmp        _jmp_addr_0x00488d98                          // 0x00488d94    eb02
_jmp_addr_0x00488d96:    fstp               st(0)                                         // 0x00488d96    ddd8
_jmp_addr_0x00488d98:    {disp8} fld        dword ptr [esp + 0x3c]                        // 0x00488d98    d944243c
                         mov                eax, dword ptr [edi]                          // 0x00488d9c    8b07
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1e8d8]             // 0x00488d9e    d80dd8788c00
                         mov.s              ecx, edi                                      // 0x00488da4    8bcf
                         {disp8} mov        dword ptr [esp + 0x58], 0x00000000            // 0x00488da6    c744245800000000
                         {disp32} fadd      dword ptr [esi + 0x00000084]                  // 0x00488dae    d88684000000
                         fld                st(0)                                         // 0x00488db4    d9c0
                         fsin                                                             // 0x00488db6    d9fe
                         fadd.s             st(0), st(0)                                  // 0x00488db8    dcc0
                         {disp8} fstp       dword ptr [esp + 0x54]                        // 0x00488dba    d95c2454
                         fcos                                                             // 0x00488dbe    d9ff
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1ece0]             // 0x00488dc0    d80de07c8c00
                         {disp8} fstp       dword ptr [esp + 0x5c]                        // 0x00488dc6    d95c245c
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x00488dca    d95c243c
                         call               dword ptr [eax + 0x64]                        // 0x00488dce    ff5064
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1ebdc]             // 0x00488dd1    d80ddc7b8c00
                         {disp8} fcom       dword ptr [esp + 0x68]                        // 0x00488dd7    d8542468
                         fnstsw             ax                                            // 0x00488ddb    dfe0
                         test               ah, 0x01                                      // 0x00488ddd    f6c401
                         {disp8} je         _jmp_addr_0x00488de8                          // 0x00488de0    7406
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x00488de2    d95c243c
                         {disp8} jmp        _jmp_addr_0x00488dea                          // 0x00488de6    eb02
_jmp_addr_0x00488de8:    fstp               st(0)                                         // 0x00488de8    ddd8
_jmp_addr_0x00488dea:    {disp8} fld        dword ptr [esp + 0x38]                        // 0x00488dea    d9442438
                         {disp8} mov        ebx, dword ptr [esp + 0x3c]                   // 0x00488dee    8b5c243c
                         {disp8} fmul       dword ptr [esp + 0x60]                        // 0x00488df2    d84c2460
                         push               edi                                           // 0x00488df6    57
                         push               ebx                                           // 0x00488df7    53
                         {disp32} lea       ecx, dword ptr [esp + 0x000000a4]             // 0x00488df8    8d8c24a4000000
                         {disp8} fadd       dword ptr [esp + 0x24]                        // 0x00488dff    d8442424
                         push               ecx                                           // 0x00488e03    51
                         {disp8} lea        edx, dword ptr [esp + 0x2c]                   // 0x00488e04    8d54242c
                         push               edx                                           // 0x00488e08    52
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x00488e09    d95c2434
                         {disp32} mov       ecx, dword ptr [edi + 0x00000090]             // 0x00488e0d    8b8f90000000
                         call               _jmp_addr_0x007f7d40                          // 0x00488e13    e828ef3600
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x00488e18    d9442438
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x00488e1c    d84c2410
                         push               edi                                           // 0x00488e20    57
                         push               ebx                                           // 0x00488e21    53
                         {disp8} lea        eax, dword ptr [esp + 0x5c]                   // 0x00488e22    8d44245c
                         {disp8} fadd       dword ptr [esp + 0x24]                        // 0x00488e26    d8442424
                         push               eax                                           // 0x00488e2a    50
                         {disp8} lea        ecx, dword ptr [esp + 0x2c]                   // 0x00488e2b    8d4c242c
                         push               ecx                                           // 0x00488e2f    51
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x00488e30    d95c2434
                         {disp32} mov       ecx, dword ptr [edi + 0x00000090]             // 0x00488e34    8b8f90000000
                         call               _jmp_addr_0x007f7d40                          // 0x00488e3a    e801ef3600
                         {disp32} mov       ecx, dword ptr [edi + 0x00000090]             // 0x00488e3f    8b8f90000000
                         call               _jmp_addr_0x007f7230                          // 0x00488e45    e8e6e33600
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x00488e4a    d81d90a38a00
                         fnstsw             ax                                            // 0x00488e50    dfe0
                         test               ah, 0x40                                      // 0x00488e52    f6c440
                         {disp8} je         _jmp_addr_0x00488e88                          // 0x00488e55    7431
                         {disp32} mov       ebx, dword ptr [edi + 0x00000090]             // 0x00488e57    8b9f90000000
                         cmp.s              ebx, ebp                                      // 0x00488e5d    3bdd
                         {disp8} je         _jmp_addr_0x00488e71                          // 0x00488e5f    7410
                         mov.s              ecx, ebx                                      // 0x00488e61    8bcb
                         call               ??1FragMesh@@QAE@XZ                           // 0x00488e63    e878e23600
                         push               ebx                                           // 0x00488e68    53
                         call               ??3@YAXPAX@Z                                  // 0x00488e69    e82a603200
                         add                esp, 0x04                                     // 0x00488e6e    83c404
_jmp_addr_0x00488e71:    {disp32} mov       dword ptr [edi + 0x00000090], ebp             // 0x00488e71    89af90000000
                         pop                edi                                           // 0x00488e77    5f
                         {disp32} mov       dword ptr [esi + 0x000048cc], ebp             // 0x00488e78    89aecc480000
                         pop                esi                                           // 0x00488e7e    5e
                         pop                ebp                                           // 0x00488e7f    5d
                         pop                ebx                                           // 0x00488e80    5b
                         add                esp, 0x000000d8                               // 0x00488e81    81c4d8000000
                         ret                                                              // 0x00488e87    c3
_jmp_addr_0x00488e88:    or                 byte ptr [edi + 0x7c], 0x20                   // 0x00488e88    804f7c20
                         {disp32} mov       ecx, dword ptr [esi + 0x00004834]             // 0x00488e8c    8b8e34480000
                         cmp.s              ecx, ebp                                      // 0x00488e92    3bcd
                         {disp8} je         _jmp_addr_0x00488e9d                          // 0x00488e94    7407
                         mov                edx, dword ptr [ecx]                          // 0x00488e96    8b11
                         call               dword ptr [edx + 0x1c]                        // 0x00488e98    ff521c
                         {disp8} jmp        _jmp_addr_0x00488e9f                          // 0x00488e9b    eb02
_jmp_addr_0x00488e9d:    xor.s              eax, eax                                      // 0x00488e9d    33c0
_jmp_addr_0x00488e9f:    push               eax                                           // 0x00488e9f    50
                         {disp32} mov       eax, dword ptr [esi + 0x00004834]             // 0x00488ea0    8b8634480000
                         push               eax                                           // 0x00488ea6    50
                         mov.s              ecx, edi                                      // 0x00488ea7    8bcf
                         call               ?ApplyEffectsDueToPhysicalDestruction@Abode@@QAEXPAVObject@@PAVGPlayer@@@Z                          // 0x00488ea9    e892d7f7ff
                         and                byte ptr [edi + 0x7c], -0x21                  // 0x00488eae    80677cdf
                         pop                edi                                           // 0x00488eb2    5f
                         {disp32} mov       dword ptr [esi + 0x000048cc], ebp             // 0x00488eb3    89aecc480000
                         pop                esi                                           // 0x00488eb9    5e
                         pop                ebp                                           // 0x00488eba    5d
                         pop                ebx                                           // 0x00488ebb    5b
                         add                esp, 0x000000d8                               // 0x00488ebc    81c4d8000000
                         ret                                                              // 0x00488ec2    c3
_jmp_addr_0x00488ec3:    {disp32} mov       ecx, dword ptr [esi + 0x000048cc]             // 0x00488ec3    8b8ecc480000
                         mov                edx, dword ptr [ecx]                          // 0x00488ec9    8b11
                         call               dword ptr [edx + 0x7b0]                       // 0x00488ecb    ff92b0070000
                         test               eax, eax                                      // 0x00488ed1    85c0
                         {disp32} je        _jmp_addr_0x00488fe7                          // 0x00488ed3    0f840e010000
                         {disp32} mov       eax, dword ptr [esi + 0x000048cc]             // 0x00488ed9    8b86cc480000
                         test               byte ptr [eax + 0x25], 0x10                   // 0x00488edf    f6402510
                         {disp32} jne       _jmp_addr_0x00488fe7                          // 0x00488ee3    0f85fe000000
                         {disp32} fld       dword ptr [esi + 0x00000090]                  // 0x00488ee9    d98690000000
                         push               eax                                           // 0x00488eef    50
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26168]             // 0x00488ef0    d80d68f18c00
                         {disp8} mov        dword ptr [esp + 0x58], 0x00000000            // 0x00488ef6    c744245800000000
                         {disp8} mov        dword ptr [esp + 0x5c], 0x00000000            // 0x00488efe    c744245c00000000
                         {disp8} mov        dword ptr [esp + 0x60], 0x00000000            // 0x00488f06    c744246000000000
                         fld                st(0)                                         // 0x00488f0e    d9c0
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x00488f10    d84c2414
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x00488f14    d95c2430
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00488f18    d9442418
                         fmul               st, st(1)                                     // 0x00488f1c    d8c9
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x00488f1e    d95c2434
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x00488f22    d944241c
                         fmul               st, st(1)                                     // 0x00488f26    d8c9
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x00488f28    d95c2438
                         fstp               st(0)                                         // 0x00488f2c    ddd8
                         call               _jmp_addr_0x00646950                          // 0x00488f2e    e81dda1b00
                         add                esp, 0x04                                     // 0x00488f33    83c404
                         cmp.s              eax, ebp                                      // 0x00488f36    3bc5
                         {disp8} je         _jmp_addr_0x00488f64                          // 0x00488f38    742a
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                   // 0x00488f3a    8b4c242c
                         add                eax, 0x00000104                               // 0x00488f3e    0504010000
                         mov                dword ptr [eax], ecx                          // 0x00488f43    8908
                         {disp8} mov        edx, dword ptr [esp + 0x30]                   // 0x00488f45    8b542430
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x00488f49    895004
                         {disp8} mov        ecx, dword ptr [esp + 0x34]                   // 0x00488f4c    8b4c2434
                         pop                edi                                           // 0x00488f50    5f
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x00488f51    894808
                         {disp32} mov       dword ptr [esi + 0x000048cc], ebp             // 0x00488f54    89aecc480000
                         pop                esi                                           // 0x00488f5a    5e
                         pop                ebp                                           // 0x00488f5b    5d
                         pop                ebx                                           // 0x00488f5c    5b
                         add                esp, 0x000000d8                               // 0x00488f5d    81c4d8000000
                         ret                                                              // 0x00488f63    c3
_jmp_addr_0x00488f64:    {disp32} mov       ecx, dword ptr [esi + 0x00004834]             // 0x00488f64    8b8e34480000
                         mov                edx, dword ptr [ecx]                          // 0x00488f6a    8b11
                         call               dword ptr [edx + 0x1c]                        // 0x00488f6c    ff521c
                         test               eax, eax                                      // 0x00488f6f    85c0
                         {disp8} je         _jmp_addr_0x00488f87                          // 0x00488f71    7414
                         {disp32} mov       ecx, dword ptr [esi + 0x00004834]             // 0x00488f73    8b8e34480000
                         mov                eax, dword ptr [ecx]                          // 0x00488f79    8b01
                         call               dword ptr [eax + 0x1c]                        // 0x00488f7b    ff501c
                         mov.s              ecx, eax                                      // 0x00488f7e    8bc8
                         call               _jmp_addr_0x0064a9f0                          // 0x00488f80    e86b1a1c00
                         {disp8} jmp        _jmp_addr_0x00488f89                          // 0x00488f85    eb02
_jmp_addr_0x00488f87:    xor.s              eax, eax                                      // 0x00488f87    33c0
_jmp_addr_0x00488f89:    {disp32} mov       ecx, dword ptr [esi + 0x000048cc]             // 0x00488f89    8b8ecc480000
                         mov                edx, dword ptr [ecx]                          // 0x00488f8f    8b11
                         push               eax                                           // 0x00488f91    50
                         {disp32} mov       eax, dword ptr [esi + 0x00004834]             // 0x00488f92    8b8634480000
                         push               0x1                                           // 0x00488f98    6a01
                         push               eax                                           // 0x00488f9a    50
                         {disp8} lea        eax, dword ptr [esp + 0x60]                   // 0x00488f9b    8d442460
                         push               eax                                           // 0x00488f9f    50
                         {disp8} lea        eax, dword ptr [esp + 0x3c]                   // 0x00488fa0    8d44243c
                         push               eax                                           // 0x00488fa4    50
                         {disp8} lea        eax, dword ptr [esp + 0x74]                   // 0x00488fa5    8d442474
                         push               eax                                           // 0x00488fa9    50
                         call               dword ptr [edx + 0x784]                       // 0x00488faa    ff9284070000
                         mov                eax, dword ptr [eax]                          // 0x00488fb0    8b00
                         cmp.s              eax, ebp                                      // 0x00488fb2    3bc5
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00488fb4    89442410
                         {disp32} je        _jmp_addr_0x004890dc                          // 0x00488fb8    0f841e010000
                         push               0x1                                           // 0x00488fbe    6a01
                         push               ebp                                           // 0x00488fc0    55
                         {disp8} lea        ecx, dword ptr [eax + 0x28]                   // 0x00488fc1    8d4828
                         call               _jmp_addr_0x007fcb80                          // 0x00488fc4    e8b73b3700
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x00488fc9    8d4c2410
                         push               ecx                                           // 0x00488fcd    51
                         call               _jmp_addr_0x00644800                          // 0x00488fce    e82db81b00
                         add                esp, 0x04                                     // 0x00488fd3    83c404
                         pop                edi                                           // 0x00488fd6    5f
                         {disp32} mov       dword ptr [esi + 0x000048cc], ebp             // 0x00488fd7    89aecc480000
                         pop                esi                                           // 0x00488fdd    5e
                         pop                ebp                                           // 0x00488fde    5d
                         pop                ebx                                           // 0x00488fdf    5b
                         add                esp, 0x000000d8                               // 0x00488fe0    81c4d8000000
                         ret                                                              // 0x00488fe6    c3
_jmp_addr_0x00488fe7:    {disp32} mov       ecx, dword ptr [esi + 0x000048cc]             // 0x00488fe7    8b8ecc480000
                         mov                edx, dword ptr [ecx]                          // 0x00488fed    8b11
                         call               dword ptr [edx + 0x34]                        // 0x00488fef    ff5234
                         test               eax, eax                                      // 0x00488ff2    85c0
                         {disp32} je        _jmp_addr_0x004890dc                          // 0x00488ff4    0f84e2000000
                         {disp32} mov       eax, dword ptr [esi + 0x00004834]             // 0x00488ffa    8b8634480000
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x00489000    d90590a38a00
                         cmp.s              eax, ebp                                      // 0x00489006    3bc5
                         {disp8} fst        dword ptr [esp + 0x10]                        // 0x00489008    d9542410
                         {disp8} je         _jmp_addr_0x00489076                          // 0x0048900c    7468
                         {disp32} mov       ecx, dword ptr [esi + 0x000048cc]             // 0x0048900e    8b8ecc480000
                         fstp               st(0)                                         // 0x00489014    ddd8
                         mov                eax, dword ptr [ecx]                          // 0x00489016    8b01
                         call               dword ptr [eax + 0xa4]                        // 0x00489018    ff90a4000000
                         mov.s              edi, eax                                      // 0x0048901e    8bf8
                         cmp.s              edi, ebp                                      // 0x00489020    3bfd
                         {disp8} je         _jmp_addr_0x00489072                          // 0x00489022    744e
                         {disp32} mov       ecx, dword ptr [esi + 0x00004834]             // 0x00489024    8b8e34480000
                         mov                edx, dword ptr [ecx]                          // 0x0048902a    8b11
                         call               dword ptr [edx + 0x42c]                       // 0x0048902c    ff922c040000
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00489032    d95c2410
                         mov                eax, dword ptr [edi]                          // 0x00489036    8b07
                         mov.s              ecx, edi                                      // 0x00489038    8bcf
                         call               dword ptr [eax + 0x42c]                       // 0x0048903a    ff902c040000
                         {disp8} fdivr      dword ptr [esp + 0x10]                        // 0x00489040    d87c2410
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x00489044    d81598a38a00
                         fnstsw             ax                                            // 0x0048904a    dfe0
                         test               ah, 0x01                                      // 0x0048904c    f6c401
                         {disp8} je         _jmp_addr_0x0048905b                          // 0x0048904f    740a
                         fstp               st(0)                                         // 0x00489051    ddd8
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x00489053    d90598a38a00
                         {disp8} jmp        _jmp_addr_0x00489076                          // 0x00489059    eb1b
_jmp_addr_0x0048905b:    {disp32} fcom      dword ptr [_rdata_float1p0]                   // 0x0048905b    d81590a38a00
                         fnstsw             ax                                            // 0x00489061    dfe0
                         test               ah, 0x41                                      // 0x00489063    f6c441
                         {disp8} jne        _jmp_addr_0x00489076                          // 0x00489066    750e
                         fstp               st(0)                                         // 0x00489068    ddd8
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0048906a    d90590a38a00
                         {disp8} jmp        _jmp_addr_0x00489076                          // 0x00489070    eb04
_jmp_addr_0x00489072:    {disp8} fld        dword ptr [esp + 0x10]                        // 0x00489072    d9442410
_jmp_addr_0x00489076:    {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x00489076    d80590a38a00
                         {disp32} mov       ecx, dword ptr [esi + 0x00004834]             // 0x0048907c    8b8e34480000
                         push               ebp                                           // 0x00489082    55
                         push               ecx                                           // 0x00489083    51
                         {disp32} fmul      dword ptr [__real@3dcccccd]                   // 0x00489084    d80d2cb28a00
                         push               0x3                                           // 0x0048908a    6a03
                         {disp32} lea       ecx, dword ptr [esp + 0x000000b4]             // 0x0048908c    8d8c24b4000000
                         {disp8} fstp       dword ptr [esp + 0x6c]                        // 0x00489093    d95c246c
                         call               _jmp_addr_0x00524fe0                          // 0x00489097    e844bf0900
                         {disp8} lea        edx, dword ptr [esp + 0x60]                   // 0x0048909c    8d542460
                         push               edx                                           // 0x004890a0    52
                         {disp32} lea       ecx, dword ptr [esp + 0x000000b4]             // 0x004890a1    8d8c24b4000000
                         call               _jmp_addr_0x00525720                          // 0x004890a8    e873c60900
                         {disp32} mov       ecx, dword ptr [esi + 0x000048cc]             // 0x004890ad    8b8ecc480000
                         mov                eax, dword ptr [ecx]                          // 0x004890b3    8b01
                         call               dword ptr [eax + 0xa4]                        // 0x004890b5    ff90a4000000
                         mov                edx, dword ptr [eax]                          // 0x004890bb    8b10
                         push               ebp                                           // 0x004890bd    55
                         {disp32} lea       ecx, dword ptr [esp + 0x000000ac]             // 0x004890be    8d8c24ac000000
                         push               ecx                                           // 0x004890c5    51
                         mov.s              ecx, eax                                      // 0x004890c6    8bc8
                         call               dword ptr [edx + 0x5cc]                       // 0x004890c8    ff92cc050000
                         fstp               st(0)                                         // 0x004890ce    ddd8
                         {disp32} lea       ecx, dword ptr [esp + 0x000000a8]             // 0x004890d0    8d8c24a8000000
                         call               _jmp_addr_0x00436960                          // 0x004890d7    e884d8faff
_jmp_addr_0x004890dc:    {disp32} mov       dword ptr [esi + 0x000048cc], ebp             // 0x004890dc    89aecc480000
_jmp_addr_0x004890e2:    pop                edi                                           // 0x004890e2    5f
                         pop                esi                                           // 0x004890e3    5e
                         pop                ebp                                           // 0x004890e4    5d
                         pop                ebx                                           // 0x004890e5    5b
                         add                esp, 0x000000d8                               // 0x004890e6    81c4d8000000
                         ret                                                              // 0x004890ec    c3
                         nop                                                              // 0x004890ed    90
                         nop                                                              // 0x004890ee    90
                         nop                                                              // 0x004890ef    90
_jmp_addr_0x004890f0:    push               ebx                                           // 0x004890f0    53
                         push               esi                                           // 0x004890f1    56
                         push               edi                                           // 0x004890f2    57
                         push               0x0                                           // 0x004890f3    6a00
                         mov.s              esi, ecx                                      // 0x004890f5    8bf1
                         push               0x000000d4                                    // 0x004890f7    68d4000000
                         call               @GetAnim__9MorphableFll@16                    // 0x004890fc    e84f051900
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax             // 0x00489101    8986c0470000
                         {disp32} mov       eax, dword ptr [esi + 0x00004980]             // 0x00489107    8b8680490000
                         push               0x0                                           // 0x0048910d    6a00
                         push               0x000000d5                                    // 0x0048910f    68d5000000
                         mov.s              ecx, esi                                      // 0x00489114    8bce
                         {disp32} mov       dword ptr [esi + 0x000047e0], eax             // 0x00489116    8986e0470000
                         call               @GetAnim__9MorphableFll@16                    // 0x0048911c    e82f051900
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x00489121    d90590a38a00
                         {disp32} mov       ecx, dword ptr [esi + 0x000048b4]             // 0x00489127    8b8eb4480000
                         {disp32} fsub      dword ptr [esi + 0x00004980]                  // 0x0048912d    d8a680490000
                         {disp32} mov       edi, dword ptr [esi + 0x000047d0]             // 0x00489133    8bbed0470000
                         {disp32} mov       ebx, dword ptr [esi + 0x00004a88]             // 0x00489139    8b9e884a0000
                         push               ecx                                           // 0x0048913f    51
                         push               edi                                           // 0x00489140    57
                         {disp32} fstp      dword ptr [esi + 0x000047e4]                  // 0x00489141    d99ee4470000
                         push               0x000000d4                                    // 0x00489147    68d4000000
                         mov.s              ecx, esi                                      // 0x0048914c    8bce
                         {disp32} mov       dword ptr [esi + 0x000047c4], eax             // 0x0048914e    8986c4470000
                         call               _jmp_addr_0x00617a10                          // 0x00489154    e8b7e81800
                         cmp.s              edi, ebx                                      // 0x00489159    3bfb
                         {disp32} mov       dword ptr [esi + 0x000047d4], eax             // 0x0048915b    8986d4470000
                         {disp32} mov       dword ptr [esi + 0x000047d0], eax             // 0x00489161    8986d0470000
                         {disp8} jg         _jmp_addr_0x00489177                          // 0x00489167    7f0e
                         cmp.s              eax, ebx                                      // 0x00489169    3bc3
                         {disp8} jle        _jmp_addr_0x00489177                          // 0x0048916b    7e0a
                         {disp32} mov       dword ptr [esi + 0x00005268], 0x00000001      // 0x0048916d    c7866852000001000000
_jmp_addr_0x00489177:    pop                edi                                           // 0x00489177    5f
                         pop                esi                                           // 0x00489178    5e
                         pop                ebx                                           // 0x00489179    5b
                         ret                                                              // 0x0048917a    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x0048917b    e8f986f7ff
_jmp_addr_0x00489180:    sub                esp, 0x10                                     // 0x00489180    83ec10
                         push               esi                                           // 0x00489183    56
                         mov.s              esi, ecx                                      // 0x00489184    8bf1
                         {disp32} mov       al, byte ptr [esi + 0x00004b24]               // 0x00489186    8a86244b0000
                         test               al, al                                        // 0x0048918c    84c0
                         push               0x0                                           // 0x0048918e    6a00
                         {disp8} je         _jmp_addr_0x00489202                          // 0x00489190    7470
                         push               0x6c                                          // 0x00489192    6a6c
                         call               @GetAnim__9MorphableFll@16                    // 0x00489194    e8b7041900
                         test               eax, eax                                      // 0x00489199    85c0
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax             // 0x0048919b    8986c0470000
                         {disp8} je         _jmp_addr_0x004891d5                          // 0x004891a1    7432
                         {disp32} mov       ecx, dword ptr [esi + 0x000047d0]             // 0x004891a3    8b8ed0470000
                         cmp                ecx, dword ptr [eax]                          // 0x004891a9    3b08
                         {disp8} jle        _jmp_addr_0x004891b7                          // 0x004891ab    7e0a
                         {disp32} mov       dword ptr [esi + 0x000047d0], 0x00000000      // 0x004891ad    c786d047000000000000
_jmp_addr_0x004891b7:    mov.s              ecx, esi                                      // 0x004891b7    8bce
                         call               _jmp_addr_0x0047f1c0                          // 0x004891b9    e80260ffff
                         {disp32} fimul     dword ptr [esi + 0x000048b4]                  // 0x004891be    da8eb4480000
                         call               _jmp_addr_0x007a1400                          // 0x004891c4    e837823100
                         {disp32} mov       edx, dword ptr [esi + 0x000047d0]             // 0x004891c9    8b96d0470000
                         push               eax                                           // 0x004891cf    50
                         push               edx                                           // 0x004891d0    52
                         push               0x6c                                          // 0x004891d1    6a6c
                         {disp8} jmp        _jmp_addr_0x0048922d                          // 0x004891d3    eb58
_jmp_addr_0x004891d5:    push               0x0                                           // 0x004891d5    6a00
                         push               0x7b                                          // 0x004891d7    6a7b
                         mov.s              ecx, esi                                      // 0x004891d9    8bce
                         call               @GetAnim__9MorphableFll@16                    // 0x004891db    e870041900
                         mov.s              ecx, esi                                      // 0x004891e0    8bce
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax             // 0x004891e2    8986c0470000
                         call               _jmp_addr_0x0047f1c0                          // 0x004891e8    e8d35fffff
                         {disp32} fimul     dword ptr [esi + 0x000048b4]                  // 0x004891ed    da8eb4480000
                         call               _jmp_addr_0x007a1400                          // 0x004891f3    e808823100
                         push               eax                                           // 0x004891f8    50
                         {disp32} mov       eax, dword ptr [esi + 0x000047d0]             // 0x004891f9    8b86d0470000
                         push               eax                                           // 0x004891ff    50
                         {disp8} jmp        _jmp_addr_0x0048922b                          // 0x00489200    eb29
_jmp_addr_0x00489202:    push               0x7b                                          // 0x00489202    6a7b
                         mov.s              ecx, esi                                      // 0x00489204    8bce
                         call               @GetAnim__9MorphableFll@16                    // 0x00489206    e845041900
                         mov.s              ecx, esi                                      // 0x0048920b    8bce
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax             // 0x0048920d    8986c0470000
                         call               _jmp_addr_0x0047f1c0                          // 0x00489213    e8a85fffff
                         {disp32} fimul     dword ptr [esi + 0x000048b4]                  // 0x00489218    da8eb4480000
                         call               _jmp_addr_0x007a1400                          // 0x0048921e    e8dd813100
                         {disp32} mov       ecx, dword ptr [esi + 0x000047d0]             // 0x00489223    8b8ed0470000
                         push               eax                                           // 0x00489229    50
                         push               ecx                                           // 0x0048922a    51
_jmp_addr_0x0048922b:    push               0x7b                                          // 0x0048922b    6a7b
_jmp_addr_0x0048922d:    mov.s              ecx, esi                                      // 0x0048922d    8bce
                         call               _jmp_addr_0x00617a10                          // 0x0048922f    e8dce71800
                         {disp32} mov       dword ptr [esi + 0x000047d0], eax             // 0x00489234    8986d0470000
                         {disp32} mov       eax, dword ptr [esi + 0x0000528c]             // 0x0048923a    8b868c520000
                         test               eax, eax                                      // 0x00489240    85c0
                         {disp32} mov       dword ptr [esi + 0x000047e0], 0x3f800000      // 0x00489242    c786e04700000000803f
                         {disp32} je        _jmp_addr_0x004894ed                          // 0x0048924c    0f849b020000
                         {disp32} fld       dword ptr [eax + 0x00000080]                  // 0x00489252    d98080000000
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x00489258    8d542408
                         {disp32} fsub      dword ptr [esi + 0x00000080]                  // 0x0048925c    d8a680000000
                         push               edx                                           // 0x00489262    52
                         {disp8} fld        dword ptr [eax + 0x7c]                        // 0x00489263    d9407c
                         {disp8} fsub       dword ptr [esi + 0x7c]                        // 0x00489266    d8667c
                         {disp8} fld        dword ptr [eax + 0x78]                        // 0x00489269    d94078
                         {disp8} fsub       dword ptr [esi + 0x78]                        // 0x0048926c    d86678
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x0048926f    d95c240c
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00489273    d95c2410
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00489277    d95c2414
                         call               _jmp_addr_0x007faa50                          // 0x0048927b    e8d0173700
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x00489280    d95c2408
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x00489284    8b442408
                         push               eax                                           // 0x00489288    50
                         call               _jmp_addr_0x007faaf0                          // 0x00489289    e862183700
                         {disp32} fstp      dword ptr [esi + 0x00000084]                  // 0x0048928e    d99e84000000
                         add                esp, 0x08                                     // 0x00489294    83c408
                         mov.s              ecx, esi                                      // 0x00489297    8bce
                         call               _jmp_addr_0x00486800                          // 0x00489299    e862d5ffff
                         test               eax, eax                                      // 0x0048929e    85c0
                         {disp32} jne       _jmp_addr_0x004894ed                          // 0x004892a0    0f8547020000
                         mov.s              ecx, esi                                      // 0x004892a6    8bce
                         call               _jmp_addr_0x0048b4b0                          // 0x004892a8    e803220000
                         cmp                dword ptr [esi + 0x0000579c], 0x02            // 0x004892ad    83be9c57000002
                         {disp32} jne       _jmp_addr_0x004894e6                          // 0x004892b4    0f852c020000
                         {disp32} fld       dword ptr [esi + 0x00004ab0]                  // 0x004892ba    d986b04a0000
                         mov                ecx, 0x00000001                               // 0x004892c0    b901000000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x26170]             // 0x004892c5    d81d70f18c00
                         fnstsw             ax                                            // 0x004892cb    dfe0
                         test               ah, 0x41                                      // 0x004892cd    f6c441
                         {disp8} jne        _jmp_addr_0x004892d7                          // 0x004892d0    7505
                         mov                ecx, 0x00000002                               // 0x004892d2    b902000000
_jmp_addr_0x004892d7:    {disp32} fld       dword ptr [esi + 0x00004ab0]                  // 0x004892d7    d986b04a0000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x21268]             // 0x004892dd    d81d68a28c00
                         fnstsw             ax                                            // 0x004892e3    dfe0
                         test               ah, 0x01                                      // 0x004892e5    f6c401
                         {disp8} je         _jmp_addr_0x004892ec                          // 0x004892e8    7402
                         xor.s              ecx, ecx                                      // 0x004892ea    33c9
_jmp_addr_0x004892ec:    {disp32} mov       edx, dword ptr [esi + 0x0000528c]             // 0x004892ec    8b968c520000
                         {disp32} mov       eax, dword ptr [edx + 0x00004994]             // 0x004892f2    8b8294490000
                         add                eax, -0x17                                    // 0x004892f8    83c0e9
                         cmp                eax, 0x0b                                     // 0x004892fb    83f80b
                         {disp32} ja        _jmp_addr_0x004894ed                          // 0x004892fe    0f87e9010000
                         jmp                dword ptr [eax*4 + 0x4894f4]                  // 0x00489304    ff2485f4944800
                         sub                ecx, 0x00                                     // 0x0048930b    83e900
                         {disp8} je         _jmp_addr_0x00489324                          // 0x0048930e    7414
                         dec                ecx                                           // 0x00489310    49
                         {disp8} je         _jmp_addr_0x0048931d                          // 0x00489311    740a
                         dec                ecx                                           // 0x00489313    49
                         {disp8} jne        _jmp_addr_0x0048932b                          // 0x00489314    7515
                         mov                eax, 0x00000001                               // 0x00489316    b801000000
                         {disp8} jmp        _jmp_addr_0x0048932f                          // 0x0048931b    eb12
_jmp_addr_0x0048931d:    mov                eax, 0x00000008                               // 0x0048931d    b808000000
                         {disp8} jmp        _jmp_addr_0x0048932f                          // 0x00489322    eb0b
_jmp_addr_0x00489324:    mov                eax, 0x00000010                               // 0x00489324    b810000000
                         {disp8} jmp        _jmp_addr_0x0048932f                          // 0x00489329    eb04
_jmp_addr_0x0048932b:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0048932b    8b442404
_jmp_addr_0x0048932f:    push               0x00001606                                    // 0x0048932f    6806160000
                         push               0x009d1094                                    // 0x00489334    6894109d00
                         push               eax                                           // 0x00489339    50
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x0048933a    e8d1512500
                         add                esp, 0x0c                                     // 0x0048933f    83c40c
                         test               eax, eax                                      // 0x00489342    85c0
                         {disp32} jne       _jmp_addr_0x004894ed                          // 0x00489344    0f85a3010000
                         {disp32} jmp       _jmp_addr_0x00489488                          // 0x0048934a    e939010000
                         {disp32} mov       edx, dword ptr [edx + 0x000049a0]             // 0x0048934f    8b92a0490000
                         cmp                edx, 0x7d                                     // 0x00489355    83fa7d
                         {disp32} jl        _jmp_addr_0x004893e1                          // 0x00489358    0f8c83000000
                         cmp                edx, 0x00000088                               // 0x0048935e    81fa88000000
                         {disp8} jg         _jmp_addr_0x004893e1                          // 0x00489364    7f7b
                         cmp                ecx, 0x02                                     // 0x00489366    83f902
                         {disp8} jne        _jmp_addr_0x00489387                          // 0x00489369    751c
                         push               0x00001612                                    // 0x0048936b    6812160000
                         push               0x009d1094                                    // 0x00489370    6894109d00
                         push               0x5                                           // 0x00489375    6a05
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x00489377    e894512500
                         add                esp, 0x0c                                     // 0x0048937c    83c40c
                         test               eax, eax                                      // 0x0048937f    85c0
                         {disp32} jne       _jmp_addr_0x00489488                          // 0x00489381    0f8501010000
_jmp_addr_0x00489387:    push               0x00001619                                    // 0x00489387    6819160000
                         push               0x009d1094                                    // 0x0048938c    6894109d00
                         push               0x4                                           // 0x00489391    6a04
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x00489393    e878512500
                         add                esp, 0x0c                                     // 0x00489398    83c40c
                         test               eax, eax                                      // 0x0048939b    85c0
                         {disp32} je        _jmp_addr_0x004894b0                          // 0x0048939d    0f840d010000
_jmp_addr_0x004893a3:    push               0x00001667                                    // 0x004893a3    6867160000
                         push               0x009d1094                                    // 0x004893a8    6894109d00
                         push               0x3                                           // 0x004893ad    6a03
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x004893af    e85c512500
                         add                esp, 0x0c                                     // 0x004893b4    83c40c
                         sub                eax, 0x00                                     // 0x004893b7    83e800
                         {disp32} je        _jmp_addr_0x004894d3                          // 0x004893ba    0f8413010000
                         dec                eax                                           // 0x004893c0    48
                         {disp32} je        _jmp_addr_0x004894c0                          // 0x004893c1    0f84f9000000
                         dec                eax                                           // 0x004893c7    48
                         {disp32} jne       _jmp_addr_0x004894ed                          // 0x004893c8    0f851f010000
                         push               0x0                                           // 0x004893ce    6a00
                         push               0x0000008a                                    // 0x004893d0    688a000000
                         mov.s              ecx, esi                                      // 0x004893d5    8bce
                         call               _jmp_addr_0x004846e0                          // 0x004893d7    e804b3ffff
                         pop                esi                                           // 0x004893dc    5e
                         add                esp, 0x10                                     // 0x004893dd    83c410
                         ret                                                              // 0x004893e0    c3
_jmp_addr_0x004893e1:    cmp                edx, 0x00000089                               // 0x004893e1    81fa89000000
                         {disp32} jne       _jmp_addr_0x00489488                          // 0x004893e7    0f859b000000
                         cmp                ecx, 0x02                                     // 0x004893ed    83f902
                         {disp8} jne        _jmp_addr_0x0048940a                          // 0x004893f0    7518
                         push               0x00001621                                    // 0x004893f2    6821160000
                         push               0x009d1094                                    // 0x004893f7    6894109d00
                         push               0x5                                           // 0x004893fc    6a05
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x004893fe    e80d512500
                         add                esp, 0x0c                                     // 0x00489403    83c40c
                         test               eax, eax                                      // 0x00489406    85c0
                         {disp8} jne        _jmp_addr_0x00489488                          // 0x00489408    757e
_jmp_addr_0x0048940a:    push               0x00001628                                    // 0x0048940a    6828160000
                         push               0x009d1094                                    // 0x0048940f    6894109d00
                         push               0x4                                           // 0x00489414    6a04
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x00489416    e8f5502500
                         add                esp, 0x0c                                     // 0x0048941b    83c40c
                         cmp                eax, 0x03                                     // 0x0048941e    83f803
                         {disp32} ja        _jmp_addr_0x004894ed                          // 0x00489421    0f87c6000000
                         jmp                dword ptr [eax*4 + 0x489524]                  // 0x00489427    ff248524954800
                         cmp                ecx, 0x02                                     // 0x0048942e    83f902
                         {disp8} jne        _jmp_addr_0x0048944b                          // 0x00489431    7518
                         push               0x00001643                                    // 0x00489433    6843160000
                         push               0x009d1094                                    // 0x00489438    6894109d00
                         push               0x5                                           // 0x0048943d    6a05
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x0048943f    e8cc502500
                         add                esp, 0x0c                                     // 0x00489444    83c40c
                         test               eax, eax                                      // 0x00489447    85c0
                         {disp8} jne        _jmp_addr_0x00489488                          // 0x00489449    753d
_jmp_addr_0x0048944b:    push               0x00001647                                    // 0x0048944b    6847160000
                         push               0x009d1094                                    // 0x00489450    6894109d00
                         push               0xa                                           // 0x00489455    6a0a
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x00489457    e8b4502500
                         add                esp, 0x0c                                     // 0x0048945c    83c40c
                         cmp                eax, 0x01                                     // 0x0048945f    83f801
                         {disp32} jne       _jmp_addr_0x004894ed                          // 0x00489462    0f8585000000
                         push               0x00001649                                    // 0x00489468    6849160000
                         push               0x009d1094                                    // 0x0048946d    6894109d00
                         push               0x2                                           // 0x00489472    6a02
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x00489474    e897502500
                         add                esp, 0x0c                                     // 0x00489479    83c40c
                         sub                eax, 0x00                                     // 0x0048947c    83e800
                         {disp32} je        _jmp_addr_0x004893a3                          // 0x0048947f    0f841effffff
                         dec                eax                                           // 0x00489485    48
                         {disp8} jne        _jmp_addr_0x004894ed                          // 0x00489486    7565
_jmp_addr_0x00489488:    {disp32} mov       ecx, dword ptr [esi + 0x000049a8]             // 0x00489488    8b8ea8490000
                         push               ecx                                           // 0x0048948e    51
                         push               0x0000165d                                    // 0x0048948f    685d160000
                         push               0x009d1094                                    // 0x00489494    6894109d00
                         push               0x3                                           // 0x00489499    6a03
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x0048949b    e870502500
                         add                esp, 0x0c                                     // 0x004894a0    83c40c
                         push               eax                                           // 0x004894a3    50
                         mov.s              ecx, esi                                      // 0x004894a4    8bce
                         call               _jmp_addr_0x00489ce0                          // 0x004894a6    e835080000
                         pop                esi                                           // 0x004894ab    5e
                         add                esp, 0x10                                     // 0x004894ac    83c410
                         ret                                                              // 0x004894af    c3
_jmp_addr_0x004894b0:    push               0x0                                           // 0x004894b0    6a00
                         push               0x3                                           // 0x004894b2    6a03
                         mov.s              ecx, esi                                      // 0x004894b4    8bce
                         call               _jmp_addr_0x00489ce0                          // 0x004894b6    e825080000
                         pop                esi                                           // 0x004894bb    5e
                         add                esp, 0x10                                     // 0x004894bc    83c410
                         ret                                                              // 0x004894bf    c3
_jmp_addr_0x004894c0:    push               0x0                                           // 0x004894c0    6a00
                         push               0x0000008b                                    // 0x004894c2    688b000000
                         mov.s              ecx, esi                                      // 0x004894c7    8bce
                         call               _jmp_addr_0x004846e0                          // 0x004894c9    e812b2ffff
                         pop                esi                                           // 0x004894ce    5e
                         add                esp, 0x10                                     // 0x004894cf    83c410
                         ret                                                              // 0x004894d2    c3
_jmp_addr_0x004894d3:    push               0x0                                           // 0x004894d3    6a00
                         push               0x0000008c                                    // 0x004894d5    688c000000
                         mov.s              ecx, esi                                      // 0x004894da    8bce
                         call               _jmp_addr_0x004846e0                          // 0x004894dc    e8ffb1ffff
                         pop                esi                                           // 0x004894e1    5e
                         add                esp, 0x10                                     // 0x004894e2    83c410
                         ret                                                              // 0x004894e5    c3
_jmp_addr_0x004894e6:    mov.s              ecx, esi                                      // 0x004894e6    8bce
                         call               _jmp_addr_0x00489540                          // 0x004894e8    e853000000
_jmp_addr_0x004894ed:    pop                esi                                           // 0x004894ed    5e
                         add                esp, 0x10                                     // 0x004894ee    83c410
                         ret                                                              // 0x004894f1    c3

// Snippet: db, [0x004894f2, 0x004894f4)
.byte 0x8b, 0xff                  // 0x004894f2

// Snippet: jmptbl, [0x004894f4, 0x00489534)
.byte 0x0b, 0x93, 0x48, 0x00      // 0x004894f4
.byte 0x4f, 0x93, 0x48, 0x00      // 0x004894f8
.byte 0xed, 0x94, 0x48, 0x00      // 0x004894fc
.byte 0x2e, 0x94, 0x48, 0x00      // 0x00489500
.byte 0x2e, 0x94, 0x48, 0x00      // 0x00489504
.byte 0x88, 0x94, 0x48, 0x00      // 0x00489508
.byte 0x2e, 0x94, 0x48, 0x00      // 0x0048950c
.byte 0xed, 0x94, 0x48, 0x00      // 0x00489510
.byte 0xed, 0x94, 0x48, 0x00      // 0x00489514
.byte 0x4f, 0x93, 0x48, 0x00      // 0x00489518
.byte 0x4f, 0x93, 0x48, 0x00      // 0x0048951c
.byte 0x0b, 0x93, 0x48, 0x00      // 0x00489520
.byte 0xb0, 0x94, 0x48, 0x00      // 0x00489524
.byte 0xa3, 0x93, 0x48, 0x00      // 0x00489528
.byte 0xa3, 0x93, 0x48, 0x00      // 0x0048952c
.byte 0x88, 0x94, 0x48, 0x00      // 0x00489530

// Snippet: db, [0x00489534, 0x00489540)
.byte 0x90, 0x90, 0x90, 0x90      // 0x00489534
.byte 0x90, 0x90, 0x90, 0x90      // 0x00489538
.byte 0x90, 0x90, 0x90, 0x90      // 0x0048953c

