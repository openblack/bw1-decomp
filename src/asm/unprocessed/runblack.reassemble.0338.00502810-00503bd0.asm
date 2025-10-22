.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern @StartFight__14CameraModeNew3FP6GArena@12
.extern _jmp_addr_0x0045a800
.extern ?FinishActionUnsuccessfully@Creature@@QAEXPADHH@Z
.extern _jmp_addr_0x00477370
.extern _jmp_addr_0x004774f0
.extern ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ
.extern _jmp_addr_0x004792a0
.extern _jmp_addr_0x004794d0
.extern _jmp_addr_0x0047a7a0
.extern _jmp_addr_0x0047a880
.extern _jmp_addr_0x0047d640
.extern _jmp_addr_0x0047d740
.extern _jmp_addr_0x00480e10
.extern ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ
.extern _jmp_addr_0x004842e0
.extern _jmp_addr_0x00484300
.extern _jmp_addr_0x00484410
.extern _jmp_addr_0x004845f0
.extern _jmp_addr_0x00484e10
.extern _jmp_addr_0x00485df0
.extern _jmp_addr_0x00485f40
.extern ?GetObjectActionStatus@LH3DCreature@@QAEIXZ
.extern _jmp_addr_0x004d8df0
.extern _jmp_addr_0x004f00e0
.extern _jmp_addr_0x004f62d0
.extern _jmp_addr_0x004f6340
.extern _jmp_addr_0x004f6410
.extern _jmp_addr_0x004f64d0
.extern _jmp_addr_0x0050baf0
.extern _jmp_addr_0x0050c290
.extern ?GetCamera@GGame@@QAEPAVGCamera@@XZ
.extern _jmp_addr_0x00555880
.extern @GetLHPoint__9MapCoordsCFv@12
.extern ?IsMemberOfThisPlayer@GPlayer@@QAE_NPAVGInterfaceStatus@@@Z
.extern ?GameRand@GRand@@SAHJ@Z
.extern ?CreateReaction@Reaction@@SAPAV1@PAVGameThingWithPos@@EPAVGPlayer@@H@Z
.extern _jmp_addr_0x006e8160
.extern _jmp_addr_0x0071cd70
.extern _jmp_addr_0x0071cdf0
.extern ?GetDistance@GUtils@@SAXABUMapCoords@@0@Z
.extern _jmp_addr_0x0074cde0
.extern ?ConvertWholeDistanceToMeters@GUtils@@SAMJ@Z
.extern _jmp_addr_0x007a1400
.extern ___RTDynamicCast
.extern ??2@YAPAXI@Z
.extern ___nw__FUl
.extern _jmp_addr_0x007faa50
.extern _jmp_addr_0x007faaf0
.extern ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z

start_0x00502810_0x00503bd0:
// Snippet: asm, [0x00502810, 0x00503ba3)
                         {disp32} mov       eax, dword ptr [ecx + 0x00000160]                    // 0x00502810    8b8160010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                          // 0x00502816    8b4858
                         call               _jmp_addr_0x00484300                                 // 0x00502819    e8e21af8ff
                         neg                eax                                                  // 0x0050281e    f7d8
                         sbb.s              eax, eax                                             // 0x00502820    1bc0
                         and                eax, 0xfffffffe                                      // 0x00502822    83e0fe
                         add                eax, 0x02                                            // 0x00502825    83c002
                         ret                                                                     // 0x00502828    c3
                         nop                                                                     // 0x00502829    90
                         nop                                                                     // 0x0050282a    90
                         nop                                                                     // 0x0050282b    90
                         nop                                                                     // 0x0050282c    90
                         nop                                                                     // 0x0050282d    90
                         nop                                                                     // 0x0050282e    90
                         nop                                                                     // 0x0050282f    90
                         sub                esp, 0x1c                                            // 0x00502830    83ec1c
                         push               ebx                                                  // 0x00502833    53
                         push               ebp                                                  // 0x00502834    55
                         push               esi                                                  // 0x00502835    56
                         mov.s              esi, ecx                                             // 0x00502836    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x00502838    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x0050283e    8b88b40f0000
                         push               edi                                                  // 0x00502844    57
                         add                eax, 0x00000fa8                                      // 0x00502845    05a80f0000
                         push               0x0                                                  // 0x0050284a    6a00
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x0050284c    8d0c49
                         push               0x009c7f50                                           // 0x0050284f    68507f9c00
                         shl                ecx, 5                                               // 0x00502854    c1e105
                         {disp8} mov        ebx, dword ptr [ecx + eax * 0x1 + 0x34]              // 0x00502857    8b5c0134
                         {disp8} mov        edx, dword ptr [ebx + 0x30]                          // 0x0050285b    8b5330
                         push               0x009c7f30                                           // 0x0050285e    68307f9c00
                         push               0x0                                                  // 0x00502863    6a00
                         push               edx                                                  // 0x00502865    52
                         call               ___RTDynamicCast                                     // 0x00502866    e8ae312c00
                         mov.s              edi, eax                                             // 0x0050286b    8bf8
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]                    // 0x0050286d    8b8660010000
                         mov                edx, dword ptr [edi]                                 // 0x00502873    8b17
                         {disp8} mov        ebp, dword ptr [eax + 0x58]                          // 0x00502875    8b6858
                         add                esp, 0x14                                            // 0x00502878    83c414
                         mov.s              ecx, edi                                             // 0x0050287b    8bcf
                         call               dword ptr [edx + 0x178]                              // 0x0050287d    ff9278010000
                         test               eax, eax                                             // 0x00502883    85c0
                         {disp8} jne        _jmp_addr_0x005028ab                                 // 0x00502885    7524
                         mov.s              ecx, ebx                                             // 0x00502887    8bcb
                         call               _jmp_addr_0x004d8df0                                 // 0x00502889    e86265fdff
                         push               0x1                                                  // 0x0050288e    6a01
                         push               0x1                                                  // 0x00502890    6a01
                         push               0x00be6698                                           // 0x00502892    689866be00
                         mov.s              ecx, esi                                             // 0x00502897    8bce
                         call               ?FinishActionUnsuccessfully@Creature@@QAEXPADHH@Z    // 0x00502899    e8922ef7ff
                         pop                edi                                                  // 0x0050289e    5f
                         pop                esi                                                  // 0x0050289f    5e
                         pop                ebp                                                  // 0x005028a0    5d
                         mov                eax, 0x00000001                                      // 0x005028a1    b801000000
                         pop                ebx                                                  // 0x005028a6    5b
                         add                esp, 0x1c                                            // 0x005028a7    83c41c
                         ret                                                                     // 0x005028aa    c3
_jmp_addr_0x005028ab:    push               edi                                                  // 0x005028ab    57
                         mov.s              ecx, esi                                             // 0x005028ac    8bce
                         call               _jmp_addr_0x00477370                                 // 0x005028ae    e8bd4af7ff
                         test               eax, eax                                             // 0x005028b3    85c0
                         {disp32} jne       _jmp_addr_0x005029ab                                 // 0x005028b5    0f85f0000000
                         {disp8} mov        eax, dword ptr [ebx + 0x2c]                          // 0x005028bb    8b432c
                         {disp8} lea        ebp, dword ptr [ebx + 0x24]                          // 0x005028be    8d6b24
                         mov.s              ecx, ebp                                             // 0x005028c1    8bcd
                         {disp8} mov        dword ptr [esp + 0x10], eax                          // 0x005028c3    89442410
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z     // 0x005028c7    e8c4073000
                         {disp8} fadd       dword ptr [esp + 0x10]                               // 0x005028cc    d8442410
                         mov                edx, dword ptr [edi]                                 // 0x005028d0    8b17
                         push               0x0                                                  // 0x005028d2    6a00
                         {disp8} fstp       dword ptr [esp + 0x28]                               // 0x005028d4    d95c2428
                         mov.s              ecx, edi                                             // 0x005028d8    8bcf
                         {disp8} fild       dword ptr [ebp + 0x00]                               // 0x005028da    db4500
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x005028dd    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x24]                               // 0x005028e3    d95c2424
                         {disp8} fild       dword ptr [ebp + 0x04]                               // 0x005028e7    db4504
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x005028ea    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x2c]                               // 0x005028f0    d95c242c
                         call               dword ptr [edx + 0x64]                               // 0x005028f4    ff5264
                         mov                eax, dword ptr [esi]                                 // 0x005028f7    8b06
                         {disp8} fstp       dword ptr [esp + 0x14]                               // 0x005028f9    d95c2414
                         mov.s              ecx, esi                                             // 0x005028fd    8bce
                         call               dword ptr [eax + 0x64]                               // 0x005028ff    ff5064
                         {disp8} fadd       dword ptr [esp + 0x14]                               // 0x00502902    d8442414
                         push               ecx                                                  // 0x00502906    51
                         {disp8} lea        ecx, dword ptr [esp + 0x28]                          // 0x00502907    8d4c2428
                         fadd.s             st(0), st(0)                                         // 0x0050290b    dcc0
                         fstp               dword ptr [esp]                                      // 0x0050290d    d91c24
                         push               ecx                                                  // 0x00502910    51
                         push               ebx                                                  // 0x00502911    53
                         mov.s              ecx, esi                                             // 0x00502912    8bce
                         call               _jmp_addr_0x0047a880                                 // 0x00502914    e8677ff7ff
                         test               eax, eax                                             // 0x00502919    85c0
                         {disp8} je         _jmp_addr_0x0050292c                                 // 0x0050291b    740f
                         cmp                eax, 0x02                                            // 0x0050291d    83f802
                         {disp8} je         _jmp_addr_0x0050292c                                 // 0x00502920    740a
                         pop                edi                                                  // 0x00502922    5f
                         pop                esi                                                  // 0x00502923    5e
                         pop                ebp                                                  // 0x00502924    5d
                         xor.s              eax, eax                                             // 0x00502925    33c0
                         pop                ebx                                                  // 0x00502927    5b
                         add                esp, 0x1c                                            // 0x00502928    83c41c
                         ret                                                                     // 0x0050292b    c3
_jmp_addr_0x0050292c:    mov.s              ecx, ebx                                             // 0x0050292c    8bcb
                         call               _jmp_addr_0x004d8df0                                 // 0x0050292e    e8bd64fdff
                         push               0x00000755                                           // 0x00502933    6855070000
                         push               0x00be6588                                           // 0x00502938    688865be00
                         push               0xc                                                  // 0x0050293d    6a0c
                         call               ___nw__FUl                                           // 0x0050293f    e84c8e2d00
                         add                esp, 0x0c                                            // 0x00502944    83c40c
                         test               eax, eax                                             // 0x00502947    85c0
                         {disp8} je         _jmp_addr_0x00502963                                 // 0x00502949    7418
                         {disp8} mov        edx, dword ptr [esp + 0x20]                          // 0x0050294b    8b542420
                         mov                dword ptr [eax], edx                                 // 0x0050294f    8910
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                          // 0x00502951    8b4c2424
                         {disp8} mov        dword ptr [eax + 0x04], ecx                          // 0x00502955    894804
                         {disp8} mov        edx, dword ptr [esp + 0x28]                          // 0x00502958    8b542428
                         {disp8} mov        dword ptr [eax + 0x08], edx                          // 0x0050295c    895008
                         mov.s              edi, eax                                             // 0x0050295f    8bf8
                         {disp8} jmp        _jmp_addr_0x00502965                                 // 0x00502961    eb02
_jmp_addr_0x00502963:    xor.s              edi, edi                                             // 0x00502963    33ff
_jmp_addr_0x00502965:    test               edi, edi                                             // 0x00502965    85ff
                         {disp8} je         _jmp_addr_0x0050298e                                 // 0x00502967    7425
                         push               0x8                                                  // 0x00502969    6a08
                         call               ??2@YAPAXI@Z                                         // 0x0050296b    e87e3b2c00
                         add                esp, 0x04                                            // 0x00502970    83c404
                         test               eax, eax                                             // 0x00502973    85c0
                         {disp8} je         _jmp_addr_0x0050298e                                 // 0x00502975    7417
_jmp_addr_0x00502977:    {disp32} mov       ecx, dword ptr [esi + 0x00001220]                    // 0x00502977    8b8e20120000
                         {disp8} mov        dword ptr [eax + 0x04], edi                          // 0x0050297d    897804
                         mov                dword ptr [eax], ecx                                 // 0x00502980    8908
                         {disp32} mov       dword ptr [esi + 0x00001220], eax                    // 0x00502982    898620120000
                         {disp32} inc       dword ptr [esi + 0x00001224]                         // 0x00502988    ff8624120000
_jmp_addr_0x0050298e:    push               0x1                                                  // 0x0050298e    6a01
                         push               0x1                                                  // 0x00502990    6a01
                         push               0x00be6670                                           // 0x00502992    687066be00
                         mov.s              ecx, esi                                             // 0x00502997    8bce
                         call               ?FinishActionUnsuccessfully@Creature@@QAEXPADHH@Z    // 0x00502999    e8922df7ff
_jmp_addr_0x0050299e:    pop                edi                                                  // 0x0050299e    5f
                         pop                esi                                                  // 0x0050299f    5e
                         pop                ebp                                                  // 0x005029a0    5d
                         mov                eax, 0x00000001                                      // 0x005029a1    b801000000
                         pop                ebx                                                  // 0x005029a6    5b
                         add                esp, 0x1c                                            // 0x005029a7    83c41c
                         ret                                                                     // 0x005029aa    c3
_jmp_addr_0x005029ab:    push               0x10                                                 // 0x005029ab    6a10
                         {disp8} lea        eax, dword ptr [esp + 0x18]                          // 0x005029ad    8d442418
                         push               eax                                                  // 0x005029b1    50
                         push               edi                                                  // 0x005029b2    57
                         mov.s              ecx, ebp                                             // 0x005029b3    8bcd
                         call               _jmp_addr_0x00485f40                                 // 0x005029b5    e88635f8ff
                         sub                eax, 0x00                                            // 0x005029ba    83e800
                         {disp32} je        _jmp_addr_0x00502ad3                                 // 0x005029bd    0f8410010000
                         dec                eax                                                  // 0x005029c3    48
                         {disp32} je        _jmp_addr_0x00502a4c                                 // 0x005029c4    0f8482000000
                         dec                eax                                                  // 0x005029ca    48
                         {disp8} jne        _jmp_addr_0x0050299e                                 // 0x005029cb    75d1
                         mov.s              ecx, ebx                                             // 0x005029cd    8bcb
                         call               _jmp_addr_0x004d8df0                                 // 0x005029cf    e81c64fdff
                         push               0x00000777                                           // 0x005029d4    6877070000
                         push               0x00be6588                                           // 0x005029d9    688865be00
                         push               0xc                                                  // 0x005029de    6a0c
                         call               ___nw__FUl                                           // 0x005029e0    e8ab8d2d00
                         add                esp, 0x0c                                            // 0x005029e5    83c40c
                         test               eax, eax                                             // 0x005029e8    85c0
                         {disp8} je         _jmp_addr_0x00502a04                                 // 0x005029ea    7418
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                          // 0x005029ec    8b4c2414
                         mov                dword ptr [eax], ecx                                 // 0x005029f0    8908
                         {disp8} mov        edx, dword ptr [esp + 0x18]                          // 0x005029f2    8b542418
                         {disp8} mov        dword ptr [eax + 0x04], edx                          // 0x005029f6    895004
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                          // 0x005029f9    8b4c241c
                         {disp8} mov        dword ptr [eax + 0x08], ecx                          // 0x005029fd    894808
                         mov.s              edi, eax                                             // 0x00502a00    8bf8
                         {disp8} jmp        _jmp_addr_0x00502a06                                 // 0x00502a02    eb02
_jmp_addr_0x00502a04:    xor.s              edi, edi                                             // 0x00502a04    33ff
_jmp_addr_0x00502a06:    test               edi, edi                                             // 0x00502a06    85ff
                         {disp8} je         _jmp_addr_0x00502a2f                                 // 0x00502a08    7425
                         push               0x8                                                  // 0x00502a0a    6a08
                         call               ??2@YAPAXI@Z                                         // 0x00502a0c    e8dd3a2c00
                         add                esp, 0x04                                            // 0x00502a11    83c404
                         test               eax, eax                                             // 0x00502a14    85c0
                         {disp8} je         _jmp_addr_0x00502a2f                                 // 0x00502a16    7417
                         {disp32} mov       ecx, dword ptr [esi + 0x00001220]                    // 0x00502a18    8b8e20120000
                         {disp8} mov        dword ptr [eax + 0x04], edi                          // 0x00502a1e    897804
                         mov                dword ptr [eax], ecx                                 // 0x00502a21    8908
                         {disp32} mov       dword ptr [esi + 0x00001220], eax                    // 0x00502a23    898620120000
                         {disp32} inc       dword ptr [esi + 0x00001224]                         // 0x00502a29    ff8624120000
_jmp_addr_0x00502a2f:    push               0x1                                                  // 0x00502a2f    6a01
                         push               0x1                                                  // 0x00502a31    6a01
                         push               0x00be6650                                           // 0x00502a33    685066be00
                         mov.s              ecx, esi                                             // 0x00502a38    8bce
                         call               ?FinishActionUnsuccessfully@Creature@@QAEXPADHH@Z    // 0x00502a3a    e8f12cf7ff
                         pop                edi                                                  // 0x00502a3f    5f
                         pop                esi                                                  // 0x00502a40    5e
                         pop                ebp                                                  // 0x00502a41    5d
                         mov                eax, 0x00000001                                      // 0x00502a42    b801000000
                         pop                ebx                                                  // 0x00502a47    5b
                         add                esp, 0x1c                                            // 0x00502a48    83c41c
                         ret                                                                     // 0x00502a4b    c3
_jmp_addr_0x00502a4c:    push               0x0                                                  // 0x00502a4c    6a00
                         push               0x10                                                 // 0x00502a4e    6a10
                         mov.s              ecx, ebp                                             // 0x00502a50    8bcd
                         call               _jmp_addr_0x00485df0                                 // 0x00502a52    e89933f8ff
                         push               ecx                                                  // 0x00502a57    51
                         fstp               dword ptr [esp]                                      // 0x00502a58    d91c24
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                          // 0x00502a5b    8d54241c
                         push               edx                                                  // 0x00502a5f    52
                         push               ebx                                                  // 0x00502a60    53
                         mov.s              ecx, esi                                             // 0x00502a61    8bce
                         call               _jmp_addr_0x0047a880                                 // 0x00502a63    e8187ef7ff
                         test               eax, eax                                             // 0x00502a68    85c0
                         {disp8} je         _jmp_addr_0x00502a7b                                 // 0x00502a6a    740f
                         cmp                eax, 0x02                                            // 0x00502a6c    83f802
                         {disp8} je         _jmp_addr_0x00502a7b                                 // 0x00502a6f    740a
                         pop                edi                                                  // 0x00502a71    5f
                         pop                esi                                                  // 0x00502a72    5e
                         pop                ebp                                                  // 0x00502a73    5d
                         xor.s              eax, eax                                             // 0x00502a74    33c0
                         pop                ebx                                                  // 0x00502a76    5b
                         add                esp, 0x1c                                            // 0x00502a77    83c41c
                         ret                                                                     // 0x00502a7a    c3
_jmp_addr_0x00502a7b:    mov.s              ecx, ebx                                             // 0x00502a7b    8bcb
                         call               _jmp_addr_0x004d8df0                                 // 0x00502a7d    e86e63fdff
                         push               0x0000076f                                           // 0x00502a82    686f070000
                         push               0x00be6588                                           // 0x00502a87    688865be00
                         push               0xc                                                  // 0x00502a8c    6a0c
                         call               ___nw__FUl                                           // 0x00502a8e    e8fd8c2d00
                         add                esp, 0x0c                                            // 0x00502a93    83c40c
                         test               eax, eax                                             // 0x00502a96    85c0
                         {disp8} je         _jmp_addr_0x00502ab2                                 // 0x00502a98    7418
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                          // 0x00502a9a    8b4c2414
                         mov                dword ptr [eax], ecx                                 // 0x00502a9e    8908
                         {disp8} mov        edx, dword ptr [esp + 0x18]                          // 0x00502aa0    8b542418
                         {disp8} mov        dword ptr [eax + 0x04], edx                          // 0x00502aa4    895004
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                          // 0x00502aa7    8b4c241c
                         {disp8} mov        dword ptr [eax + 0x08], ecx                          // 0x00502aab    894808
                         mov.s              edi, eax                                             // 0x00502aae    8bf8
                         {disp8} jmp        _jmp_addr_0x00502ab4                                 // 0x00502ab0    eb02
_jmp_addr_0x00502ab2:    xor.s              edi, edi                                             // 0x00502ab2    33ff
_jmp_addr_0x00502ab4:    test               edi, edi                                             // 0x00502ab4    85ff
                         {disp32} je        _jmp_addr_0x0050298e                                 // 0x00502ab6    0f84d2feffff
                         push               0x8                                                  // 0x00502abc    6a08
                         call               ??2@YAPAXI@Z                                         // 0x00502abe    e82b3a2c00
                         add                esp, 0x04                                            // 0x00502ac3    83c404
                         test               eax, eax                                             // 0x00502ac6    85c0
                         {disp32} je        _jmp_addr_0x0050298e                                 // 0x00502ac8    0f84c0feffff
                         {disp32} jmp       _jmp_addr_0x00502977                                 // 0x00502ace    e9a4feffff
_jmp_addr_0x00502ad3:    {disp32} mov       edx, dword ptr [esi + 0x00000164]                    // 0x00502ad3    8b9664010000
                         push               0x10                                                 // 0x00502ad9    6a10
                         push               edi                                                  // 0x00502adb    57
                         mov.s              ecx, ebp                                             // 0x00502adc    8bcd
                         {disp32} mov       dword ptr [edx + 0x000021f4], 0x00000001             // 0x00502ade    c782f421000001000000
                         call               _jmp_addr_0x00480e10                                 // 0x00502ae8    e823e3f7ff
                         pop                edi                                                  // 0x00502aed    5f
                         neg                eax                                                  // 0x00502aee    f7d8
                         pop                esi                                                  // 0x00502af0    5e
                         sbb.s              eax, eax                                             // 0x00502af1    1bc0
                         pop                ebp                                                  // 0x00502af3    5d
                         and                eax, 0x02                                            // 0x00502af4    83e002
                         pop                ebx                                                  // 0x00502af7    5b
                         add                esp, 0x1c                                            // 0x00502af8    83c41c
                         ret                                                                     // 0x00502afb    c3
                         nop                                                                     // 0x00502afc    90
                         nop                                                                     // 0x00502afd    90
                         nop                                                                     // 0x00502afe    90
                         nop                                                                     // 0x00502aff    90
                         push               esi                                                  // 0x00502b00    56
                         mov.s              esi, ecx                                             // 0x00502b01    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]                    // 0x00502b03    8b8660010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                          // 0x00502b09    8b4858
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ        // 0x00502b0c    e8bf17f8ff
                         test               eax, eax                                             // 0x00502b11    85c0
                         {disp32} je        _jmp_addr_0x00502c4b                                 // 0x00502b13    0f8432010000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000160]                    // 0x00502b19    8b8e60010000
                         {disp8} mov        ecx, dword ptr [ecx + 0x58]                          // 0x00502b1f    8b4958
                         push               edi                                                  // 0x00502b22    57
                         call               ?GetObjectActionStatus@LH3DCreature@@QAEIXZ          // 0x00502b23    e8588cf8ff
                         cmp                eax, 0x03                                            // 0x00502b28    83f803
                         {disp32} jne       _jmp_addr_0x00502c46                                 // 0x00502b2b    0f8515010000
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x00502b31    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x00502b37    8b88b40f0000
                         add                eax, 0x00000fa8                                      // 0x00502b3d    05a80f0000
                         push               0x0                                                  // 0x00502b42    6a00
                         lea                edx, dword ptr [ecx + ecx * 0x2]                     // 0x00502b44    8d1449
                         push               0x009c7f50                                           // 0x00502b47    68507f9c00
                         shl                edx, 5                                               // 0x00502b4c    c1e205
                         {disp8} mov        eax, dword ptr [edx + eax * 0x1 + 0x34]              // 0x00502b4f    8b440234
                         {disp8} mov        eax, dword ptr [eax + 0x30]                          // 0x00502b53    8b4030
                         push               0x009c7f30                                           // 0x00502b56    68307f9c00
                         push               0x0                                                  // 0x00502b5b    6a00
                         push               eax                                                  // 0x00502b5d    50
                         call               ___RTDynamicCast                                     // 0x00502b5e    e8b62e2c00
                         mov.s              edi, eax                                             // 0x00502b63    8bf8
                         mov                edx, dword ptr [edi]                                 // 0x00502b65    8b17
                         add                esp, 0x14                                            // 0x00502b67    83c414
                         mov.s              ecx, edi                                             // 0x00502b6a    8bcf
                         call               dword ptr [edx + 0x178]                              // 0x00502b6c    ff9278010000
                         test               eax, eax                                             // 0x00502b72    85c0
                         {disp32} je        _jmp_addr_0x00502c46                                 // 0x00502b74    0f84cc000000
                         mov                eax, dword ptr [edi]                                 // 0x00502b7a    8b07
                         mov.s              ecx, edi                                             // 0x00502b7c    8bcf
                         call               dword ptr [eax + 0x3c4]                              // 0x00502b7e    ff90c4030000
                         test               eax, eax                                             // 0x00502b84    85c0
                         {disp8} je         _jmp_addr_0x00502b9e                                 // 0x00502b86    7416
                         mov                edx, dword ptr [edi]                                 // 0x00502b88    8b17
                         {disp8} lea        eax, dword ptr [esi + 0x14]                          // 0x00502b8a    8d4614
                         push               eax                                                  // 0x00502b8d    50
                         push               esi                                                  // 0x00502b8e    56
                         push               0x3f800000                                           // 0x00502b8f    680000803f
                         push               0x1                                                  // 0x00502b94    6a01
                         mov.s              ecx, edi                                             // 0x00502b96    8bcf
                         call               dword ptr [edx + 0x604]                              // 0x00502b98    ff9204060000
_jmp_addr_0x00502b9e:    mov.s              ecx, esi                                             // 0x00502b9e    8bce
                         call               _jmp_addr_0x004792a0                                 // 0x00502ba0    e8fb66f7ff
                         test               eax, eax                                             // 0x00502ba5    85c0
                         {disp32} je        _jmp_addr_0x00502c46                                 // 0x00502ba7    0f8499000000
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x00502bad    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x00502bb3    8b88b40f0000
                         add                eax, 0x00000fa8                                      // 0x00502bb9    05a80f0000
                         push               0x0                                                  // 0x00502bbe    6a00
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x00502bc0    8d0c49
                         push               0x009c7f50                                           // 0x00502bc3    68507f9c00
                         shl                ecx, 5                                               // 0x00502bc8    c1e105
                         {disp8} mov        eax, dword ptr [ecx + eax * 0x1 + 0x34]              // 0x00502bcb    8b440134
                         {disp8} mov        edx, dword ptr [eax + 0x30]                          // 0x00502bcf    8b5030
                         push               0x009c7f30                                           // 0x00502bd2    68307f9c00
                         push               0x0                                                  // 0x00502bd7    6a00
                         push               edx                                                  // 0x00502bd9    52
                         call               ___RTDynamicCast                                     // 0x00502bda    e83a2e2c00
                         mov                edx, dword ptr [eax]                                 // 0x00502bdf    8b10
                         add                esp, 0x14                                            // 0x00502be1    83c414
                         mov.s              ecx, eax                                             // 0x00502be4    8bc8
                         call               dword ptr [edx + 0x11c]                              // 0x00502be6    ff921c010000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x00502bec    d81d98a38a00
                         fnstsw             ax                                                   // 0x00502bf2    dfe0
                         test               ah, 0x41                                             // 0x00502bf4    f6c441
                         {disp8} je         _jmp_addr_0x00502c46                                 // 0x00502bf7    744d
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x00502bf9    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x00502bff    8b88b40f0000
                         add                eax, 0x00000fa8                                      // 0x00502c05    05a80f0000
                         push               0x0                                                  // 0x00502c0a    6a00
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x00502c0c    8d0c49
                         push               0x009c7f50                                           // 0x00502c0f    68507f9c00
                         shl                ecx, 5                                               // 0x00502c14    c1e105
                         {disp8} mov        eax, dword ptr [ecx + eax * 0x1 + 0x34]              // 0x00502c17    8b440134
                         {disp8} mov        edx, dword ptr [eax + 0x30]                          // 0x00502c1b    8b5030
                         push               0x009c7f30                                           // 0x00502c1e    68307f9c00
                         push               0x0                                                  // 0x00502c23    6a00
                         push               edx                                                  // 0x00502c25    52
                         call               ___RTDynamicCast                                     // 0x00502c26    e8ee2d2c00
                         add                esp, 0x14                                            // 0x00502c2b    83c414
                         push               eax                                                  // 0x00502c2e    50
                         mov.s              ecx, esi                                             // 0x00502c2f    8bce
                         call               _jmp_addr_0x004794d0                                 // 0x00502c31    e89a68f7ff
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x00502c36    8b8664010000
                         {disp32} mov       dword ptr [eax + 0x00000658], 0x00000001             // 0x00502c3c    c7805806000001000000
_jmp_addr_0x00502c46:    pop                edi                                                  // 0x00502c46    5f
                         xor.s              eax, eax                                             // 0x00502c47    33c0
                         pop                esi                                                  // 0x00502c49    5e
                         ret                                                                     // 0x00502c4a    c3
_jmp_addr_0x00502c4b:    {disp32} mov       ecx, dword ptr [esi + 0x00000160]                    // 0x00502c4b    8b8e60010000
                         {disp8} mov        ecx, dword ptr [ecx + 0x58]                          // 0x00502c51    8b4958
                         call               ?GetObjectActionStatus@LH3DCreature@@QAEIXZ          // 0x00502c54    e8278bf8ff
                         sub                eax, 0x02                                            // 0x00502c59    83e802
                         {disp8} je         _jmp_addr_0x00502c66                                 // 0x00502c5c    7408
                         dec                eax                                                  // 0x00502c5e    48
                         mov                eax, 0x00000002                                      // 0x00502c5f    b802000000
                         {disp8} je         _jmp_addr_0x00502c6b                                 // 0x00502c64    7405
_jmp_addr_0x00502c66:    mov                eax, 0x00000001                                      // 0x00502c66    b801000000
_jmp_addr_0x00502c6b:    pop                esi                                                  // 0x00502c6b    5e
                         ret                                                                     // 0x00502c6c    c3
                         nop                                                                     // 0x00502c6d    90
                         nop                                                                     // 0x00502c6e    90
                         nop                                                                     // 0x00502c6f    90
                         sub                esp, 0x0c                                            // 0x00502c70    83ec0c
                         push               esi                                                  // 0x00502c73    56
                         mov.s              esi, ecx                                             // 0x00502c74    8bf1
                         mov                eax, dword ptr [esi]                                 // 0x00502c76    8b06
                         push               edi                                                  // 0x00502c78    57
                         call               dword ptr [eax + 0x1c]                               // 0x00502c79    ff501c
                         test               eax, eax                                             // 0x00502c7c    85c0
                         {disp8} jne        _jmp_addr_0x00502c8b                                 // 0x00502c7e    750b
                         pop                edi                                                  // 0x00502c80    5f
                         mov                eax, 0x00000002                                      // 0x00502c81    b802000000
                         pop                esi                                                  // 0x00502c86    5e
                         add                esp, 0x0c                                            // 0x00502c87    83c40c
                         ret                                                                     // 0x00502c8a    c3
_jmp_addr_0x00502c8b:    mov.s              ecx, esi                                             // 0x00502c8b    8bce
                         call               _jmp_addr_0x0047d740                                 // 0x00502c8d    e8aeaaf7ff
                         {disp32} mov       ecx, dword ptr [eax + 0x000000c8]                    // 0x00502c92    8b88c8000000
                         add                eax, 0x000000c8                                      // 0x00502c98    05c8000000
                         {disp8} mov        dword ptr [esp + 0x08], ecx                          // 0x00502c9d    894c2408
                         {disp8} mov        edx, dword ptr [eax + 0x04]                          // 0x00502ca1    8b5004
                         push               0x000007b0                                           // 0x00502ca4    68b0070000
                         {disp8} mov        dword ptr [esp + 0x10], edx                          // 0x00502ca9    89542410
                         {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x00502cad    8b4008
                         push               0x00be6588                                           // 0x00502cb0    688865be00
                         push               0x1e                                                 // 0x00502cb5    6a1e
                         {disp8} mov        dword ptr [esp + 0x1c], eax                          // 0x00502cb7    8944241c
                         call               ?GameRand@GRand@@SAHJ@Z                              // 0x00502cbb    e850b81d00
                         add                esp, 0x0c                                            // 0x00502cc0    83c40c
                         add                eax, 0x0a                                            // 0x00502cc3    83c00a
                         push               eax                                                  // 0x00502cc6    50
                         push               0x42200000                                           // 0x00502cc7    6800002042
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                          // 0x00502ccc    8d4c2410
                         push               ecx                                                  // 0x00502cd0    51
                         mov.s              ecx, esi                                             // 0x00502cd1    8bce
                         call               _jmp_addr_0x00502e70                                 // 0x00502cd3    e898010000
                         mov.s              ecx, esi                                             // 0x00502cd8    8bce
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ      // 0x00502cda    e8714bf7ff
                         mov.s              ecx, eax                                             // 0x00502cdf    8bc8
                         call               _jmp_addr_0x00484300                                 // 0x00502ce1    e81a16f8ff
                         test               eax, eax                                             // 0x00502ce6    85c0
                         {disp8} jne        _jmp_addr_0x00502d68                                 // 0x00502ce8    757e
                         xor.s              edx, edx                                             // 0x00502cea    33d2
                         mov                eax, 0x000003e8                                      // 0x00502cec    b8e8030000
                         div                dword ptr [data_bytes + 0x33ba38]                    // 0x00502cf1    f735381ad000
                         {disp32} mov       edi, dword ptr [esi + 0x00000164]                    // 0x00502cf7    8bbe64010000
                         xor.s              edx, edx                                             // 0x00502cfd    33d2
                         mov.s              ecx, eax                                             // 0x00502cff    8bc8
                         {disp32} mov       eax, dword ptr [edi + 0x00001bdc]                    // 0x00502d01    8b87dc1b0000
                         div                ecx                                                  // 0x00502d07    f7f1
                         xor.s              edx, edx                                             // 0x00502d09    33d2
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000                   // 0x00502d0b    c744240c00000000
                         {disp8} mov        dword ptr [esp + 0x08], eax                          // 0x00502d13    89442408
                         {disp8} fild       qword ptr [esp + 0x08]                               // 0x00502d17    df6c2408
                         movsx              eax, word ptr [esi + 0x58]                           // 0x00502d1b    0fbf4658
                         div                ecx                                                  // 0x00502d1f    f7f1
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000                   // 0x00502d21    c744240c00000000
                         {disp8} mov        dword ptr [esp + 0x08], eax                          // 0x00502d29    89442408
                         {disp8} fild       qword ptr [esp + 0x08]                               // 0x00502d2d    df6c2408
                         {disp32} fcom      dword ptr [rdata_bytes + 0x26e4]                     // 0x00502d31    d815e4b68a00
                         fnstsw             ax                                                   // 0x00502d37    dfe0
                         test               ah, 0x01                                             // 0x00502d39    f6c401
                         {disp8} jne        _jmp_addr_0x00502d46                                 // 0x00502d3c    7508
                         fstp               st(0)                                                // 0x00502d3e    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x26e4]                     // 0x00502d40    d905e4b68a00
_jmp_addr_0x00502d46:    fxch               st(1)                                                // 0x00502d46    d9c9
                         fcomp              st(1)                                                // 0x00502d48    d8d9
                         fnstsw             ax                                                   // 0x00502d4a    dfe0
                         fstp               st(0)                                                // 0x00502d4c    ddd8
                         test               ah, 0x41                                             // 0x00502d4e    f6c441
                         {disp8} jne        _jmp_addr_0x00502d68                                 // 0x00502d51    7515
                         {disp32} mov       dword ptr [edi + 0x00001bdc], 0x00000000             // 0x00502d53    c787dc1b000000000000
                         pop                edi                                                  // 0x00502d5d    5f
                         mov                eax, 0x00000002                                      // 0x00502d5e    b802000000
                         pop                esi                                                  // 0x00502d63    5e
                         add                esp, 0x0c                                            // 0x00502d64    83c40c
                         ret                                                                     // 0x00502d67    c3
_jmp_addr_0x00502d68:    pop                edi                                                  // 0x00502d68    5f
                         xor.s              eax, eax                                             // 0x00502d69    33c0
                         pop                esi                                                  // 0x00502d6b    5e
                         add                esp, 0x0c                                            // 0x00502d6c    83c40c
                         ret                                                                     // 0x00502d6f    c3
                         sub                esp, 0x0c                                            // 0x00502d70    83ec0c
                         push               esi                                                  // 0x00502d73    56
                         mov.s              esi, ecx                                             // 0x00502d74    8bf1
                         mov                eax, dword ptr [esi]                                 // 0x00502d76    8b06
                         call               dword ptr [eax + 0x1c]                               // 0x00502d78    ff501c
                         test               eax, eax                                             // 0x00502d7b    85c0
                         {disp8} jne        _jmp_addr_0x00502d89                                 // 0x00502d7d    750a
                         mov                eax, 0x00000002                                      // 0x00502d7f    b802000000
                         pop                esi                                                  // 0x00502d84    5e
                         add                esp, 0x0c                                            // 0x00502d85    83c40c
                         ret                                                                     // 0x00502d88    c3
_jmp_addr_0x00502d89:    push               ebx                                                  // 0x00502d89    53
                         push               edi                                                  // 0x00502d8a    57
                         mov.s              ecx, esi                                             // 0x00502d8b    8bce
                         call               _jmp_addr_0x0047d640                                 // 0x00502d8d    e8aea8f7ff
                         {disp32} mov       ecx, dword ptr [eax + 0x000000b0]                    // 0x00502d92    8b88b0000000
                         add                eax, 0x000000b0                                      // 0x00502d98    05b0000000
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                          // 0x00502d9d    894c240c
                         {disp8} mov        edx, dword ptr [eax + 0x04]                          // 0x00502da1    8b5004
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]                    // 0x00502da4    8b8e64010000
                         {disp8} mov        dword ptr [esp + 0x10], edx                          // 0x00502daa    89542410
                         {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x00502dae    8b4008
                         {disp8} mov        dword ptr [esp + 0x14], eax                          // 0x00502db1    89442414
                         {disp32} mov       eax, dword ptr [ecx + 0x00000fb4]                    // 0x00502db5    8b81b40f0000
                         add                ecx, 0x00000fa8                                      // 0x00502dbb    81c1a80f0000
                         lea                edi, dword ptr [eax + eax * 0x2]                     // 0x00502dc1    8d3c40
                         xor.s              edx, edx                                             // 0x00502dc4    33d2
                         mov                eax, 0x000003e8                                      // 0x00502dc6    b8e8030000
                         div                dword ptr [data_bytes + 0x33ba38]                    // 0x00502dcb    f735381ad000
                         shl                edi, 5                                               // 0x00502dd1    c1e705
                         xor.s              edx, edx                                             // 0x00502dd4    33d2
                         mov.s              ebx, eax                                             // 0x00502dd6    8bd8
                         {disp8} mov        eax, dword ptr [edi + ecx * 0x1 + 0x38]              // 0x00502dd8    8b440f38
                         div                ebx                                                  // 0x00502ddc    f7f3
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                          // 0x00502dde    8d4c240c
                         push               eax                                                  // 0x00502de2    50
                         push               0x42c80000                                           // 0x00502de3    680000c842
                         push               ecx                                                  // 0x00502de8    51
                         mov.s              ecx, esi                                             // 0x00502de9    8bce
                         call               _jmp_addr_0x00502e70                                 // 0x00502deb    e880000000
                         pop                edi                                                  // 0x00502df0    5f
                         pop                ebx                                                  // 0x00502df1    5b
                         pop                esi                                                  // 0x00502df2    5e
                         add                esp, 0x0c                                            // 0x00502df3    83c40c
                         ret                                                                     // 0x00502df6    c3
                         nop                                                                     // 0x00502df7    90
                         nop                                                                     // 0x00502df8    90
                         nop                                                                     // 0x00502df9    90
                         nop                                                                     // 0x00502dfa    90
                         nop                                                                     // 0x00502dfb    90
                         nop                                                                     // 0x00502dfc    90
                         nop                                                                     // 0x00502dfd    90
                         nop                                                                     // 0x00502dfe    90
                         nop                                                                     // 0x00502dff    90
                         sub                esp, 0x0c                                            // 0x00502e00    83ec0c
                         push               esi                                                  // 0x00502e03    56
                         mov.s              esi, ecx                                             // 0x00502e04    8bf1
                         mov                eax, dword ptr [esi]                                 // 0x00502e06    8b06
                         call               dword ptr [eax + 0x1c]                               // 0x00502e08    ff501c
                         test               eax, eax                                             // 0x00502e0b    85c0
                         {disp8} jne        _jmp_addr_0x00502e19                                 // 0x00502e0d    750a
                         mov                eax, 0x00000002                                      // 0x00502e0f    b802000000
                         pop                esi                                                  // 0x00502e14    5e
                         add                esp, 0x0c                                            // 0x00502e15    83c40c
                         ret                                                                     // 0x00502e18    c3
_jmp_addr_0x00502e19:    mov.s              ecx, esi                                             // 0x00502e19    8bce
                         call               _jmp_addr_0x0047d640                                 // 0x00502e1b    e820a8f7ff
                         {disp32} mov       ecx, dword ptr [eax + 0x000000b0]                    // 0x00502e20    8b88b0000000
                         add                eax, 0x000000b0                                      // 0x00502e26    05b0000000
                         {disp8} mov        dword ptr [esp + 0x04], ecx                          // 0x00502e2b    894c2404
                         {disp8} mov        edx, dword ptr [eax + 0x04]                          // 0x00502e2f    8b5004
                         push               0x5                                                  // 0x00502e32    6a05
                         push               0x42c80000                                           // 0x00502e34    680000c842
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                          // 0x00502e39    8d4c240c
                         {disp8} mov        dword ptr [esp + 0x10], edx                          // 0x00502e3d    89542410
                         {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x00502e41    8b4008
                         push               ecx                                                  // 0x00502e44    51
                         mov.s              ecx, esi                                             // 0x00502e45    8bce
                         {disp8} mov        dword ptr [esp + 0x18], eax                          // 0x00502e47    89442418
                         call               _jmp_addr_0x00502e70                                 // 0x00502e4b    e820000000
                         {disp32} mov       edx, dword ptr [esi + 0x00000164]                    // 0x00502e50    8b9664010000
                         {disp32} mov       esi, dword ptr [edx + 0x00001bdc]                    // 0x00502e56    8bb2dc1b0000
                         xor.s              eax, eax                                             // 0x00502e5c    33c0
                         cmp                esi, 0x14                                            // 0x00502e5e    83fe14
                         setle              al                                                   // 0x00502e61    0f9ec0
                         pop                esi                                                  // 0x00502e64    5e
                         dec                eax                                                  // 0x00502e65    48
                         and                eax, 0x02                                            // 0x00502e66    83e002
                         add                esp, 0x0c                                            // 0x00502e69    83c40c
                         ret                                                                     // 0x00502e6c    c3
                         nop                                                                     // 0x00502e6d    90
                         nop                                                                     // 0x00502e6e    90
                         nop                                                                     // 0x00502e6f    90
_jmp_addr_0x00502e70:    sub                esp, 0x20                                            // 0x00502e70    83ec20
                         push               esi                                                  // 0x00502e73    56
                         mov.s              esi, ecx                                             // 0x00502e74    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]                    // 0x00502e76    8b8660010000
                         {disp8} mov        eax, dword ptr [eax + 0x58]                          // 0x00502e7c    8b4058
                         push               edi                                                  // 0x00502e7f    57
                         {disp8} mov        edi, dword ptr [esp + 0x2c]                          // 0x00502e80    8b7c242c
                         add                eax, 0x78                                            // 0x00502e84    83c078
                         push               edi                                                  // 0x00502e87    57
                         push               eax                                                  // 0x00502e88    50
                         call               _jmp_addr_0x0074cde0                                 // 0x00502e89    e8529f2400
                         {disp8} fstp       dword ptr [esp + 0x10]                               // 0x00502e8e    d95c2410
                         {disp32} mov       ecx, dword ptr [esi + 0x00000160]                    // 0x00502e92    8b8e60010000
                         {disp8} mov        eax, dword ptr [ecx + 0x58]                          // 0x00502e98    8b4158
                         {disp32} fld       dword ptr [eax + 0x00000080]                         // 0x00502e9b    d98080000000
                         add                eax, 0x78                                            // 0x00502ea1    83c078
                         {disp8} fsub       dword ptr [edi + 0x08]                               // 0x00502ea4    d86708
                         {disp8} lea        edx, dword ptr [esp + 0x18]                          // 0x00502ea7    8d542418
                         {disp8} fld        dword ptr [eax + 0x04]                               // 0x00502eab    d94004
                         push               edx                                                  // 0x00502eae    52
                         {disp8} fsub       dword ptr [edi + 0x04]                               // 0x00502eaf    d86704
                         fld                dword ptr [eax]                                      // 0x00502eb2    d900
                         fsub               dword ptr [edi]                                      // 0x00502eb4    d827
                         {disp8} fstp       dword ptr [esp + 0x1c]                               // 0x00502eb6    d95c241c
                         {disp8} fstp       dword ptr [esp + 0x20]                               // 0x00502eba    d95c2420
                         {disp8} fstp       dword ptr [esp + 0x24]                               // 0x00502ebe    d95c2424
                         call               _jmp_addr_0x006e8160                                 // 0x00502ec2    e899521e00
                         {disp32} fcomp     dword ptr [__real@3dcccccd]                          // 0x00502ec7    d81d2cb28a00
                         add                esp, 0x0c                                            // 0x00502ecd    83c40c
                         fnstsw             ax                                                   // 0x00502ed0    dfe0
                         test               ah, 0x01                                             // 0x00502ed2    f6c401
                         {disp32} jne       _jmp_addr_0x00502fdd                                 // 0x00502ed5    0f8502010000
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]                    // 0x00502edb    8b8660010000
                         {disp8} fld        dword ptr [edi + 0x08]                               // 0x00502ee1    d94708
                         {disp8} mov        eax, dword ptr [eax + 0x58]                          // 0x00502ee4    8b4058
                         {disp32} fsub      dword ptr [eax + 0x00000080]                         // 0x00502ee7    d8a080000000
                         add                eax, 0x78                                            // 0x00502eed    83c078
                         {disp8} fld        dword ptr [edi + 0x04]                               // 0x00502ef0    d94704
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                          // 0x00502ef3    8d4c241c
                         {disp8} fsub       dword ptr [eax + 0x04]                               // 0x00502ef7    d86004
                         push               ecx                                                  // 0x00502efa    51
                         fld                dword ptr [edi]                                      // 0x00502efb    d907
                         fsub               dword ptr [eax]                                      // 0x00502efd    d820
                         {disp8} fstp       dword ptr [esp + 0x20]                               // 0x00502eff    d95c2420
                         {disp8} fstp       dword ptr [esp + 0x24]                               // 0x00502f03    d95c2424
                         {disp8} fstp       dword ptr [esp + 0x28]                               // 0x00502f07    d95c2428
                         call               _jmp_addr_0x007faa50                                 // 0x00502f0b    e8407b2f00
                         {disp32} mov       edx, dword ptr [esi + 0x00000160]                    // 0x00502f10    8b9660010000
                         {disp8} fstp       dword ptr [esp + 0x30]                               // 0x00502f16    d95c2430
                         {disp8} mov        eax, dword ptr [edx + 0x58]                          // 0x00502f1a    8b4258
                         {disp32} fld       dword ptr [eax + 0x00000084]                         // 0x00502f1d    d98084000000
                         {disp8} fld        dword ptr [esp + 0x30]                               // 0x00502f23    d9442430
                         fsub               st, st(1)                                            // 0x00502f27    d8e1
                         fstp               dword ptr [esp]                                      // 0x00502f29    d91c24
                         fstp               st(0)                                                // 0x00502f2c    ddd8
                         call               _jmp_addr_0x007faaf0                                 // 0x00502f2e    e8bd7b2f00
                         fabs                                                                    // 0x00502f33    d9e1
                         add                esp, 0x04                                            // 0x00502f35    83c404
                         {disp32} fcomp     qword ptr [rdata_bytes + 0x1eb48]                    // 0x00502f38    dc1d487b8c00
                         fnstsw             ax                                                   // 0x00502f3e    dfe0
                         test               ah, 0x41                                             // 0x00502f40    f6c441
                         {disp8} jne        _jmp_addr_0x00502f55                                 // 0x00502f43    7510
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                          // 0x00502f45    8b4c242c
                         push               ecx                                                  // 0x00502f49    51
                         {disp32} mov       ecx, dword ptr [esi + 0x00000160]                    // 0x00502f4a    8b8e60010000
                         call               _jmp_addr_0x004f00e0                                 // 0x00502f50    e88bd1feff
_jmp_addr_0x00502f55:    xor.s              edx, edx                                             // 0x00502f55    33d2
                         mov                eax, 0x000003e8                                      // 0x00502f57    b8e8030000
                         div                dword ptr [data_bytes + 0x33ba38]                    // 0x00502f5c    f735381ad000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]                    // 0x00502f62    8b8e64010000
                         xor.s              edx, edx                                             // 0x00502f68    33d2
                         mov.s              edi, eax                                             // 0x00502f6a    8bf8
                         {disp32} mov       eax, dword ptr [ecx + 0x00001bdc]                    // 0x00502f6c    8b81dc1b0000
                         div                edi                                                  // 0x00502f72    f7f7
                         {disp8} mov        edi, dword ptr [esp + 0x34]                          // 0x00502f74    8b7c2434
                         cmp.s              eax, edi                                             // 0x00502f78    3bc7
                         {disp8} ja         _jmp_addr_0x00502fdd                                 // 0x00502f7a    7761
                         {disp8} fld        dword ptr [esp + 0x08]                               // 0x00502f7c    d9442408
                         {disp8} fcomp      dword ptr [esp + 0x30]                               // 0x00502f80    d85c2430
                         fnstsw             ax                                                   // 0x00502f84    dfe0
                         test               ah, 0x41                                             // 0x00502f86    f6c441
                         {disp8} je         _jmp_addr_0x00502fdd                                 // 0x00502f89    7452
                         mov                edx, dword ptr [esi]                                 // 0x00502f8b    8b16
                         mov.s              ecx, esi                                             // 0x00502f8d    8bce
                         call               dword ptr [edx + 0x1c]                               // 0x00502f8f    ff521c
                         test               eax, eax                                             // 0x00502f92    85c0
                         {disp8} je         _jmp_addr_0x00502fd3                                 // 0x00502f94    743d
                         mov.s              ecx, esi                                             // 0x00502f96    8bce
                         call               _jmp_addr_0x0047d640                                 // 0x00502f98    e8a3a6f7ff
                         {disp32} mov       esi, dword ptr [eax + 0x000000a0]                    // 0x00502f9d    8bb0a0000000
                         xor.s              edx, edx                                             // 0x00502fa3    33d2
                         mov                eax, 0x000003e8                                      // 0x00502fa5    b8e8030000
                         div                dword ptr [data_bytes + 0x33ba38]                    // 0x00502faa    f735381ad000
                         {disp8} mov        dword ptr [esp + 0x08], eax                          // 0x00502fb0    89442408
                         xor.s              eax, eax                                             // 0x00502fb4    33c0
                         {disp8} mov        dword ptr [esp + 0x0c], eax                          // 0x00502fb6    8944240c
                         {disp8} fild       qword ptr [esp + 0x08]                               // 0x00502fba    df6c2408
                         {disp8} mov        dword ptr [esp + 0x0c], eax                          // 0x00502fbe    8944240c
                         {disp8} mov        dword ptr [esp + 0x08], edi                          // 0x00502fc2    897c2408
                         {disp8} fimul      dword ptr [esp + 0x08]                               // 0x00502fc6    da4c2408
                         call               _jmp_addr_0x007a1400                                 // 0x00502fca    e831e42900
                         cmp.s              esi, eax                                             // 0x00502fcf    3bf0
                         {disp8} ja         _jmp_addr_0x00502fdd                                 // 0x00502fd1    770a
_jmp_addr_0x00502fd3:    pop                edi                                                  // 0x00502fd3    5f
                         xor.s              eax, eax                                             // 0x00502fd4    33c0
                         pop                esi                                                  // 0x00502fd6    5e
                         add                esp, 0x20                                            // 0x00502fd7    83c420
                         ret                0x000c                                               // 0x00502fda    c20c00
_jmp_addr_0x00502fdd:    pop                edi                                                  // 0x00502fdd    5f
                         mov                eax, 0x00000002                                      // 0x00502fde    b802000000
                         pop                esi                                                  // 0x00502fe3    5e
                         add                esp, 0x20                                            // 0x00502fe4    83c420
                         ret                0x000c                                               // 0x00502fe7    c20c00
                         call               dword ptr [__imp__BinkSetSoundOnOff@8]               // 0x00502fea    ff1550998a00
                         {disp32} mov       eax, dword ptr [ecx + 0x00000164]                    // 0x00502ff0    8b8164010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x00502ff6    8b88b40f0000
                         add                eax, 0x00000fa8                                      // 0x00502ffc    05a80f0000
                         push               0x0                                                  // 0x00503001    6a00
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x00503003    8d0c49
                         push               0x009c7f50                                           // 0x00503006    68507f9c00
                         shl                ecx, 5                                               // 0x0050300b    c1e105
                         {disp8} mov        eax, dword ptr [ecx + eax * 0x1 + 0x34]              // 0x0050300e    8b440134
                         {disp8} mov        edx, dword ptr [eax + 0x30]                          // 0x00503012    8b5030
                         push               0x009c7f30                                           // 0x00503015    68307f9c00
                         push               0x0                                                  // 0x0050301a    6a00
                         push               edx                                                  // 0x0050301c    52
                         call               ___RTDynamicCast                                     // 0x0050301d    e8f7292c00
                         push               0x0                                                  // 0x00503022    6a00
                         push               0x009c8de8                                           // 0x00503024    68e88d9c00
                         push               0x009c7f50                                           // 0x00503029    68507f9c00
                         push               0x0                                                  // 0x0050302e    6a00
                         push               eax                                                  // 0x00503030    50
                         call               ___RTDynamicCast                                     // 0x00503031    e8e3292c00
                         add                esp, 0x28                                            // 0x00503036    83c428
                         test               eax, eax                                             // 0x00503039    85c0
                         {disp8} je         _jmp_addr_0x00503055                                 // 0x0050303b    7418
                         cmp                byte ptr [eax + 0x0000008c], 0x0a                    // 0x0050303d    80b88c0000000a
                         {disp8} jne        _jmp_addr_0x00503049                                 // 0x00503044    7503
                         xor.s              eax, eax                                             // 0x00503046    33c0
                         ret                                                                     // 0x00503048    c3
_jmp_addr_0x00503049:    mov                edx, dword ptr [eax]                                 // 0x00503049    8b10
                         push               0xe                                                  // 0x0050304b    6a0e
                         mov.s              ecx, eax                                             // 0x0050304d    8bc8
                         call               dword ptr [edx + 0x8e8]                              // 0x0050304f    ff92e8080000
_jmp_addr_0x00503055:    mov                eax, 0x00000002                                      // 0x00503055    b802000000
                         ret                                                                     // 0x0050305a    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                                 // 0x0050305b    e819e8efff
                         mov                eax, 0x00000001                                      // 0x00503060    b801000000
                         ret                                                                     // 0x00503065    c3
                         nop                                                                     // 0x00503066    90
                         nop                                                                     // 0x00503067    90
                         nop                                                                     // 0x00503068    90
                         nop                                                                     // 0x00503069    90
                         nop                                                                     // 0x0050306a    90
                         nop                                                                     // 0x0050306b    90
                         nop                                                                     // 0x0050306c    90
                         nop                                                                     // 0x0050306d    90
                         nop                                                                     // 0x0050306e    90
                         nop                                                                     // 0x0050306f    90
                         mov                eax, 0x00000002                                      // 0x00503070    b802000000
                         ret                                                                     // 0x00503075    c3
                         nop                                                                     // 0x00503076    90
                         nop                                                                     // 0x00503077    90
                         nop                                                                     // 0x00503078    90
                         nop                                                                     // 0x00503079    90
                         nop                                                                     // 0x0050307a    90
                         nop                                                                     // 0x0050307b    90
                         nop                                                                     // 0x0050307c    90
                         nop                                                                     // 0x0050307d    90
                         nop                                                                     // 0x0050307e    90
                         nop                                                                     // 0x0050307f    90
                         sub                esp, 0x10                                            // 0x00503080    83ec10
                         push               esi                                                  // 0x00503083    56
                         mov.s              esi, ecx                                             // 0x00503084    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x00503086    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x0050308c    8b88b40f0000
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x00503092    8d0c49
                         shl                ecx, 5                                               // 0x00503095    c1e105
                         {disp32} mov       edx, dword ptr [ecx + eax * 0x1 + 0x00000fdc]        // 0x00503098    8b9401dc0f0000
                         {disp8} mov        ecx, dword ptr [edx + 0x30]                          // 0x0050309f    8b4a30
                         {disp8} fild       dword ptr [ecx + 0x14]                               // 0x005030a2    db4114
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000                   // 0x005030a5    c744240c00000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2864c]                    // 0x005030ad    d80d4c168d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]                     // 0x005030b3    d80d1cc48a00
                         {disp8} fild       dword ptr [esi + 0x14]                               // 0x005030b9    db4614
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2864c]                    // 0x005030bc    d80d4c168d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]                     // 0x005030c2    d80d1cc48a00
                         fsubp              st(1), st                                            // 0x005030c8    dee9
                         {disp8} fstp       dword ptr [esp + 0x08]                               // 0x005030ca    d95c2408
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x005030ce    8b88b40f0000
                         lea                edx, dword ptr [ecx + ecx * 0x2]                     // 0x005030d4    8d1449
                         shl                edx, 5                                               // 0x005030d7    c1e205
                         {disp32} mov       eax, dword ptr [edx + eax * 0x1 + 0x00000fdc]        // 0x005030da    8b8402dc0f0000
                         {disp8} mov        ecx, dword ptr [eax + 0x30]                          // 0x005030e1    8b4830
                         {disp8} fild       dword ptr [ecx + 0x18]                               // 0x005030e4    db4118
                         {disp8} lea        edx, dword ptr [esp + 0x08]                          // 0x005030e7    8d542408
                         push               edx                                                  // 0x005030eb    52
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2864c]                    // 0x005030ec    d80d4c168d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]                     // 0x005030f2    d80d1cc48a00
                         {disp8} fild       dword ptr [esi + 0x18]                               // 0x005030f8    db4618
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2864c]                    // 0x005030fb    d80d4c168d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]                     // 0x00503101    d80d1cc48a00
                         fsubp              st(1), st                                            // 0x00503107    dee9
                         {disp8} fstp       dword ptr [esp + 0x14]                               // 0x00503109    d95c2414
                         call               _jmp_addr_0x006e8160                                 // 0x0050310d    e84e501e00
                         {disp32} fcomp     dword ptr [__real@3dcccccd]                          // 0x00503112    d81d2cb28a00
                         add                esp, 0x04                                            // 0x00503118    83c404
                         fnstsw             ax                                                   // 0x0050311b    dfe0
                         test               ah, 0x01                                             // 0x0050311d    f6c401
                         {disp8} je         _jmp_addr_0x0050312c                                 // 0x00503120    740a
                         mov                eax, 0x00000002                                      // 0x00503122    b802000000
                         pop                esi                                                  // 0x00503127    5e
                         add                esp, 0x10                                            // 0x00503128    83c410
                         ret                                                                     // 0x0050312b    c3
_jmp_addr_0x0050312c:    {disp8} lea        eax, dword ptr [esp + 0x08]                          // 0x0050312c    8d442408
                         push               eax                                                  // 0x00503130    50
                         call               _jmp_addr_0x007faa50                                 // 0x00503131    e81a792f00
                         {disp32} fadd      dword ptr [rdata_bytes + 0x1a6a0]                    // 0x00503136    d805a0368c00
                         add                esp, 0x04                                            // 0x0050313c    83c404
                         {disp8} fstp       dword ptr [esp + 0x04]                               // 0x0050313f    d95c2404
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                          // 0x00503143    8b4c2404
                         push               ecx                                                  // 0x00503147    51
                         {disp32} mov       ecx, dword ptr [esi + 0x00000160]                    // 0x00503148    8b8e60010000
                         call               _jmp_addr_0x004f00e0                                 // 0x0050314e    e88dcffeff
                         neg                eax                                                  // 0x00503153    f7d8
                         sbb.s              eax, eax                                             // 0x00503155    1bc0
                         and                eax, 0x02                                            // 0x00503157    83e002
                         pop                esi                                                  // 0x0050315a    5e
                         add                esp, 0x10                                            // 0x0050315b    83c410
                         ret                                                                     // 0x0050315e    c3
                         nop                                                                     // 0x0050315f    90
                         {disp32} mov       eax, dword ptr [ecx + 0x00000160]                    // 0x00503160    8b8160010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                          // 0x00503166    8b4858
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ        // 0x00503169    e86211f8ff
                         neg                eax                                                  // 0x0050316e    f7d8
                         sbb.s              eax, eax                                             // 0x00503170    1bc0
                         and                eax, 0xfffffffe                                      // 0x00503172    83e0fe
                         add                eax, 0x02                                            // 0x00503175    83c002
                         ret                                                                     // 0x00503178    c3
                         nop                                                                     // 0x00503179    90
                         nop                                                                     // 0x0050317a    90
                         nop                                                                     // 0x0050317b    90
                         nop                                                                     // 0x0050317c    90
                         nop                                                                     // 0x0050317d    90
                         nop                                                                     // 0x0050317e    90
                         nop                                                                     // 0x0050317f    90
                         sub                esp, 0x10                                            // 0x00503180    83ec10
                         push               ebx                                                  // 0x00503183    53
                         push               ebp                                                  // 0x00503184    55
                         push               esi                                                  // 0x00503185    56
                         mov.s              esi, ecx                                             // 0x00503186    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x00503188    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x0050318e    8b88b40f0000
                         push               edi                                                  // 0x00503194    57
                         add                eax, 0x00000fa8                                      // 0x00503195    05a80f0000
                         push               0x0                                                  // 0x0050319a    6a00
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x0050319c    8d0c49
                         push               0x009c7f50                                           // 0x0050319f    68507f9c00
                         shl                ecx, 5                                               // 0x005031a4    c1e105
                         {disp8} mov        edx, dword ptr [ecx + eax * 0x1 + 0x34]              // 0x005031a7    8b540134
                         {disp8} mov        ebx, dword ptr [edx + 0x30]                          // 0x005031ab    8b5a30
                         push               0x009c7f30                                           // 0x005031ae    68307f9c00
                         push               0x0                                                  // 0x005031b3    6a00
                         push               ebx                                                  // 0x005031b5    53
                         call               ___RTDynamicCast                                     // 0x005031b6    e85e282c00
                         mov.s              edi, eax                                             // 0x005031bb    8bf8
                         add                esp, 0x14                                            // 0x005031bd    83c414
                         test               edi, edi                                             // 0x005031c0    85ff
                         {disp8} jne        _jmp_addr_0x005031cc                                 // 0x005031c2    7508
                         {disp32} fld       dword ptr [rdata_bytes + 0x2478]                     // 0x005031c4    d90578b48a00
                         {disp8} jmp        _jmp_addr_0x005031d3                                 // 0x005031ca    eb07
_jmp_addr_0x005031cc:    mov                eax, dword ptr [edi]                                 // 0x005031cc    8b07
                         mov.s              ecx, edi                                             // 0x005031ce    8bcf
                         call               dword ptr [eax + 0x64]                               // 0x005031d0    ff5064
_jmp_addr_0x005031d3:    {disp32} mov       ecx, dword ptr [esi + 0x00000160]                    // 0x005031d3    8b8e60010000
                         {disp8} mov        ecx, dword ptr [ecx + 0x58]                          // 0x005031d9    8b4958
                         {disp32} fadd      dword ptr [ecx + 0x00005228]                         // 0x005031dc    d88128520000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26030]                    // 0x005031e2    d80d30f08c00
                         {disp32} fld       dword ptr [rdata_bytes + 0x2864c]                    // 0x005031e8    d9054c168d00
                         fcomp              st(1)                                                // 0x005031ee    d8d9
                         fnstsw             ax                                                   // 0x005031f0    dfe0
                         test               ah, 0x41                                             // 0x005031f2    f6c441
                         {disp8} jne        _jmp_addr_0x00503205                                 // 0x005031f5    750e
                         {disp32} mov       edx, dword ptr [rdata_bytes + 0x2864c]               // 0x005031f7    8b154c168d00
                         fstp               st(0)                                                // 0x005031fd    ddd8
                         {disp8} mov        dword ptr [esp + 0x10], edx                          // 0x005031ff    89542410
                         {disp8} jmp        _jmp_addr_0x00503209                                 // 0x00503203    eb04
_jmp_addr_0x00503205:    {disp8} fstp       dword ptr [esp + 0x10]                               // 0x00503205    d95c2410
_jmp_addr_0x00503209:    call               _jmp_addr_0x004842e0                                 // 0x00503209    e8d210f8ff
                         test               eax, eax                                             // 0x0050320e    85c0
                         {disp32} je        _jmp_addr_0x00503367                                 // 0x00503210    0f8451010000
                         add                ebx, 0x14                                            // 0x00503216    83c314
                         {disp8} lea        eax, dword ptr [esi + 0x14]                          // 0x00503219    8d4614
                         push               ebx                                                  // 0x0050321c    53
                         push               eax                                                  // 0x0050321d    50
                         call               ?GetDistance@GUtils@@SAXABUMapCoords@@0@Z            // 0x0050321e    e88d9a2400
                         push               eax                                                  // 0x00503223    50
                         call               ?ConvertWholeDistanceToMeters@GUtils@@SAMJ@Z         // 0x00503224    e897aa2400
                         {disp8} fcomp      dword ptr [esp + 0x1c]                               // 0x00503229    d85c241c
                         add                esp, 0x0c                                            // 0x0050322d    83c40c
                         fnstsw             ax                                                   // 0x00503230    dfe0
                         test               ah, 0x01                                             // 0x00503232    f6c401
                         {disp8} je         _jmp_addr_0x00503244                                 // 0x00503235    740d
                         pop                edi                                                  // 0x00503237    5f
                         pop                esi                                                  // 0x00503238    5e
                         pop                ebp                                                  // 0x00503239    5d
                         mov                eax, 0x00000002                                      // 0x0050323a    b802000000
                         pop                ebx                                                  // 0x0050323f    5b
                         add                esp, 0x10                                            // 0x00503240    83c410
                         ret                                                                     // 0x00503243    c3
_jmp_addr_0x00503244:    test               edi, edi                                             // 0x00503244    85ff
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x00503246    8b8664010000
                         {disp8} je         _jmp_addr_0x00503275                                 // 0x0050324c    7427
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x0050324e    8b88b40f0000
                         {disp8} mov        edx, dword ptr [esp + 0x10]                          // 0x00503254    8b542410
                         add                eax, 0x00000fa8                                      // 0x00503258    05a80f0000
                         push               0x0                                                  // 0x0050325d    6a00
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x0050325f    8d0c49
                         shl                ecx, 5                                               // 0x00503262    c1e105
                         {disp8} mov        eax, dword ptr [ecx + eax * 0x1 + 0x34]              // 0x00503265    8b440134
                         push               edx                                                  // 0x00503269    52
                         push               edi                                                  // 0x0050326a    57
                         push               eax                                                  // 0x0050326b    50
                         mov.s              ecx, esi                                             // 0x0050326c    8bce
                         call               _jmp_addr_0x0047a7a0                                 // 0x0050326e    e82d75f7ff
                         {disp8} jmp        _jmp_addr_0x005032a6                                 // 0x00503273    eb31
_jmp_addr_0x00503275:    {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x00503275    8b88b40f0000
                         {disp8} mov        edx, dword ptr [esp + 0x10]                          // 0x0050327b    8b542410
                         add                eax, 0x00000fa8                                      // 0x0050327f    05a80f0000
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x00503284    8d0c49
                         shl                ecx, 5                                               // 0x00503287    c1e105
                         {disp8} mov        ebp, dword ptr [ecx + eax * 0x1 + 0x34]              // 0x0050328a    8b6c0134
                         push               0x0                                                  // 0x0050328e    6a00
                         push               edx                                                  // 0x00503290    52
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                          // 0x00503291    8d44241c
                         push               eax                                                  // 0x00503295    50
                         mov.s              ecx, ebx                                             // 0x00503296    8bcb
                         call               @GetLHPoint__9MapCoordsCFv@12                        // 0x00503298    e8a3291000
                         push               eax                                                  // 0x0050329d    50
                         push               ebp                                                  // 0x0050329e    55
                         mov.s              ecx, esi                                             // 0x0050329f    8bce
                         call               _jmp_addr_0x0047a880                                 // 0x005032a1    e8da75f7ff
_jmp_addr_0x005032a6:    sub                eax, 0x00                                            // 0x005032a6    83e800
                         {disp8} je         _jmp_addr_0x005032c4                                 // 0x005032a9    7419
                         sub                eax, 0x02                                            // 0x005032ab    83e802
                         {disp8} je         _jmp_addr_0x005032c4                                 // 0x005032ae    7414
                         dec                eax                                                  // 0x005032b0    48
                         {disp32} jne       _jmp_addr_0x005034d2                                 // 0x005032b1    0f851b020000
                         pop                edi                                                  // 0x005032b7    5f
                         pop                esi                                                  // 0x005032b8    5e
                         pop                ebp                                                  // 0x005032b9    5d
                         mov                eax, 0x00000002                                      // 0x005032ba    b802000000
                         pop                ebx                                                  // 0x005032bf    5b
                         add                esp, 0x10                                            // 0x005032c0    83c410
                         ret                                                                     // 0x005032c3    c3
_jmp_addr_0x005032c4:    {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x005032c4    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x005032ca    8b88b40f0000
                         add                eax, 0x00000fa8                                      // 0x005032d0    05a80f0000
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x005032d5    8d0c49
                         shl                ecx, 5                                               // 0x005032d8    c1e105
                         {disp8} mov        ecx, dword ptr [ecx + eax * 0x1 + 0x34]              // 0x005032db    8b4c0134
                         call               _jmp_addr_0x004d8df0                                 // 0x005032df    e80c5bfdff
                         {disp8} mov        edx, dword ptr [edi + 0x1c]                          // 0x005032e4    8b571c
                         add                edi, 0x14                                            // 0x005032e7    83c714
                         mov.s              ecx, edi                                             // 0x005032ea    8bcf
                         {disp8} mov        dword ptr [esp + 0x10], edx                          // 0x005032ec    89542410
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z     // 0x005032f0    e89bfd2f00
                         {disp8} fadd       dword ptr [esp + 0x10]                               // 0x005032f5    d8442410
                         push               0x00000882                                           // 0x005032f9    6882080000
                         push               0x00be6588                                           // 0x005032fe    688865be00
                         {disp8} fstp       dword ptr [esp + 0x20]                               // 0x00503303    d95c2420
                         push               0xc                                                  // 0x00503307    6a0c
                         fild               dword ptr [edi]                                      // 0x00503309    db07
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x0050330b    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x20]                               // 0x00503311    d95c2420
                         {disp8} fild       dword ptr [edi + 0x04]                               // 0x00503315    db4704
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x00503318    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x28]                               // 0x0050331e    d95c2428
                         call               ___nw__FUl                                           // 0x00503322    e869842d00
                         add                esp, 0x0c                                            // 0x00503327    83c40c
                         test               eax, eax                                             // 0x0050332a    85c0
                         {disp8} je         _jmp_addr_0x00503346                                 // 0x0050332c    7418
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                          // 0x0050332e    8b4c2414
                         {disp8} mov        edx, dword ptr [esp + 0x18]                          // 0x00503332    8b542418
                         mov                dword ptr [eax], ecx                                 // 0x00503336    8908
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                          // 0x00503338    8b4c241c
                         {disp8} mov        dword ptr [eax + 0x04], edx                          // 0x0050333c    895004
                         {disp8} mov        dword ptr [eax + 0x08], ecx                          // 0x0050333f    894808
                         mov.s              edi, eax                                             // 0x00503342    8bf8
                         {disp8} jmp        _jmp_addr_0x00503348                                 // 0x00503344    eb02
_jmp_addr_0x00503346:    xor.s              edi, edi                                             // 0x00503346    33ff
_jmp_addr_0x00503348:    test               edi, edi                                             // 0x00503348    85ff
                         {disp32} je        _jmp_addr_0x005034b5                                 // 0x0050334a    0f8465010000
                         push               0x8                                                  // 0x00503350    6a08
                         call               ??2@YAPAXI@Z                                         // 0x00503352    e897312c00
                         add                esp, 0x04                                            // 0x00503357    83c404
                         test               eax, eax                                             // 0x0050335a    85c0
                         {disp32} je        _jmp_addr_0x005034b5                                 // 0x0050335c    0f8453010000
                         {disp32} jmp       _jmp_addr_0x0050349e                                 // 0x00503362    e937010000
_jmp_addr_0x00503367:    {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x00503367    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x0050336d    8b88b40f0000
                         add                eax, 0x00000fa8                                      // 0x00503373    05a80f0000
                         lea                edx, dword ptr [ecx + ecx * 0x2]                     // 0x00503378    8d1449
                         shl                edx, 5                                               // 0x0050337b    c1e205
                         {disp8} mov        eax, dword ptr [edx + eax * 0x1 + 0x34]              // 0x0050337e    8b440234
                         push               0x6                                                  // 0x00503382    6a06
                         add                eax, 0x24                                            // 0x00503384    83c024
                         push               eax                                                  // 0x00503387    50
                         mov.s              ecx, esi                                             // 0x00503388    8bce
                         call               _jmp_addr_0x004774f0                                 // 0x0050338a    e86141f7ff
                         test               eax, eax                                             // 0x0050338f    85c0
                         {disp32} jne       _jmp_addr_0x005034d2                                 // 0x00503391    0f853b010000
                         test               edi, edi                                             // 0x00503397    85ff
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x00503399    8b8664010000
                         {disp8} je         _jmp_addr_0x005033c8                                 // 0x0050339f    7427
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x005033a1    8b88b40f0000
                         {disp8} mov        edx, dword ptr [esp + 0x10]                          // 0x005033a7    8b542410
                         add                eax, 0x00000fa8                                      // 0x005033ab    05a80f0000
                         push               0x0                                                  // 0x005033b0    6a00
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x005033b2    8d0c49
                         shl                ecx, 5                                               // 0x005033b5    c1e105
                         {disp8} mov        eax, dword ptr [ecx + eax * 0x1 + 0x34]              // 0x005033b8    8b440134
                         push               edx                                                  // 0x005033bc    52
                         push               edi                                                  // 0x005033bd    57
                         push               eax                                                  // 0x005033be    50
                         mov.s              ecx, esi                                             // 0x005033bf    8bce
                         call               _jmp_addr_0x0047a7a0                                 // 0x005033c1    e8da73f7ff
                         {disp8} jmp        _jmp_addr_0x005033fa                                 // 0x005033c6    eb32
_jmp_addr_0x005033c8:    {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x005033c8    8b88b40f0000
                         {disp8} mov        edx, dword ptr [esp + 0x10]                          // 0x005033ce    8b542410
                         add                eax, 0x00000fa8                                      // 0x005033d2    05a80f0000
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x005033d7    8d0c49
                         shl                ecx, 5                                               // 0x005033da    c1e105
                         {disp8} mov        ebp, dword ptr [ecx + eax * 0x1 + 0x34]              // 0x005033dd    8b6c0134
                         push               0x0                                                  // 0x005033e1    6a00
                         push               edx                                                  // 0x005033e3    52
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                          // 0x005033e4    8d44241c
                         push               eax                                                  // 0x005033e8    50
                         {disp8} lea        ecx, dword ptr [ebx + 0x14]                          // 0x005033e9    8d4b14
                         call               @GetLHPoint__9MapCoordsCFv@12                        // 0x005033ec    e84f281000
                         push               eax                                                  // 0x005033f1    50
                         push               ebp                                                  // 0x005033f2    55
                         mov.s              ecx, esi                                             // 0x005033f3    8bce
                         call               _jmp_addr_0x0047a880                                 // 0x005033f5    e88674f7ff
_jmp_addr_0x005033fa:    sub                eax, 0x00                                            // 0x005033fa    83e800
                         {disp8} je         _jmp_addr_0x00503408                                 // 0x005033fd    7409
                         sub                eax, 0x02                                            // 0x005033ff    83e802
                         {disp32} jne       _jmp_addr_0x005034d2                                 // 0x00503402    0f85ca000000
_jmp_addr_0x00503408:    {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x00503408    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x0050340e    8b88b40f0000
                         add                eax, 0x00000fa8                                      // 0x00503414    05a80f0000
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x00503419    8d0c49
                         shl                ecx, 5                                               // 0x0050341c    c1e105
                         {disp8} mov        ecx, dword ptr [ecx + eax * 0x1 + 0x34]              // 0x0050341f    8b4c0134
                         call               _jmp_addr_0x004d8df0                                 // 0x00503423    e8c859fdff
                         {disp8} mov        edx, dword ptr [edi + 0x1c]                          // 0x00503428    8b571c
                         add                edi, 0x14                                            // 0x0050342b    83c714
                         mov.s              ecx, edi                                             // 0x0050342e    8bcf
                         {disp8} mov        dword ptr [esp + 0x10], edx                          // 0x00503430    89542410
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z     // 0x00503434    e857fc2f00
                         {disp8} fadd       dword ptr [esp + 0x10]                               // 0x00503439    d8442410
                         push               0x000008a7                                           // 0x0050343d    68a7080000
                         push               0x00be6588                                           // 0x00503442    688865be00
                         {disp8} fstp       dword ptr [esp + 0x20]                               // 0x00503447    d95c2420
                         push               0xc                                                  // 0x0050344b    6a0c
                         fild               dword ptr [edi]                                      // 0x0050344d    db07
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x0050344f    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x20]                               // 0x00503455    d95c2420
                         {disp8} fild       dword ptr [edi + 0x04]                               // 0x00503459    db4704
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x0050345c    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x28]                               // 0x00503462    d95c2428
                         call               ___nw__FUl                                           // 0x00503466    e825832d00
                         add                esp, 0x0c                                            // 0x0050346b    83c40c
                         test               eax, eax                                             // 0x0050346e    85c0
                         {disp8} je         _jmp_addr_0x0050348a                                 // 0x00503470    7418
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                          // 0x00503472    8b4c2414
                         {disp8} mov        edx, dword ptr [esp + 0x18]                          // 0x00503476    8b542418
                         mov                dword ptr [eax], ecx                                 // 0x0050347a    8908
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                          // 0x0050347c    8b4c241c
                         {disp8} mov        dword ptr [eax + 0x04], edx                          // 0x00503480    895004
                         {disp8} mov        dword ptr [eax + 0x08], ecx                          // 0x00503483    894808
                         mov.s              edi, eax                                             // 0x00503486    8bf8
                         {disp8} jmp        _jmp_addr_0x0050348c                                 // 0x00503488    eb02
_jmp_addr_0x0050348a:    xor.s              edi, edi                                             // 0x0050348a    33ff
_jmp_addr_0x0050348c:    test               edi, edi                                             // 0x0050348c    85ff
                         {disp8} je         _jmp_addr_0x005034b5                                 // 0x0050348e    7425
                         push               0x8                                                  // 0x00503490    6a08
                         call               ??2@YAPAXI@Z                                         // 0x00503492    e857302c00
                         add                esp, 0x04                                            // 0x00503497    83c404
                         test               eax, eax                                             // 0x0050349a    85c0
                         {disp8} je         _jmp_addr_0x005034b5                                 // 0x0050349c    7417
_jmp_addr_0x0050349e:    {disp32} mov       ecx, dword ptr [esi + 0x00001220]                    // 0x0050349e    8b8e20120000
                         {disp8} mov        dword ptr [eax + 0x04], edi                          // 0x005034a4    897804
                         mov                dword ptr [eax], ecx                                 // 0x005034a7    8908
                         {disp32} mov       dword ptr [esi + 0x00001220], eax                    // 0x005034a9    898620120000
                         {disp32} inc       dword ptr [esi + 0x00001224]                         // 0x005034af    ff8624120000
_jmp_addr_0x005034b5:    push               0x1                                                  // 0x005034b5    6a01
                         push               0x1                                                  // 0x005034b7    6a01
                         push               0x00be66c8                                           // 0x005034b9    68c866be00
                         mov.s              ecx, esi                                             // 0x005034be    8bce
                         call               ?FinishActionUnsuccessfully@Creature@@QAEXPADHH@Z    // 0x005034c0    e86b22f7ff
                         pop                edi                                                  // 0x005034c5    5f
                         pop                esi                                                  // 0x005034c6    5e
                         pop                ebp                                                  // 0x005034c7    5d
                         mov                eax, 0x00000001                                      // 0x005034c8    b801000000
                         pop                ebx                                                  // 0x005034cd    5b
                         add                esp, 0x10                                            // 0x005034ce    83c410
                         ret                                                                     // 0x005034d1    c3
_jmp_addr_0x005034d2:    pop                edi                                                  // 0x005034d2    5f
                         pop                esi                                                  // 0x005034d3    5e
                         pop                ebp                                                  // 0x005034d4    5d
                         xor.s              eax, eax                                             // 0x005034d5    33c0
                         pop                ebx                                                  // 0x005034d7    5b
                         add                esp, 0x10                                            // 0x005034d8    83c410
                         ret                                                                     // 0x005034db    c3
                         nop                                                                     // 0x005034dc    90
                         nop                                                                     // 0x005034dd    90
                         nop                                                                     // 0x005034de    90
                         nop                                                                     // 0x005034df    90
                         {disp32} mov       ecx, dword ptr [ecx + 0x00001074]                    // 0x005034e0    8b8974100000
                         test               ecx, ecx                                             // 0x005034e6    85c9
                         {disp8} je         _jmp_addr_0x005034f1                                 // 0x005034e8    7407
                         push               0x1                                                  // 0x005034ea    6a01
                         call               _jmp_addr_0x0050baf0                                 // 0x005034ec    e8ff850000
_jmp_addr_0x005034f1:    mov                eax, 0x00000002                                      // 0x005034f1    b802000000
                         ret                                                                     // 0x005034f6    c3
                         nop                                                                     // 0x005034f7    90
                         nop                                                                     // 0x005034f8    90
                         nop                                                                     // 0x005034f9    90
                         nop                                                                     // 0x005034fa    90
                         nop                                                                     // 0x005034fb    90
                         nop                                                                     // 0x005034fc    90
                         nop                                                                     // 0x005034fd    90
                         nop                                                                     // 0x005034fe    90
                         nop                                                                     // 0x005034ff    90
                         push               esi                                                  // 0x00503500    56
                         mov.s              esi, ecx                                             // 0x00503501    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]                    // 0x00503503    8b8660010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                          // 0x00503509    8b4858
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ        // 0x0050350c    e8bf0df8ff
                         test               eax, eax                                             // 0x00503511    85c0
                         {disp8} je         _jmp_addr_0x00503527                                 // 0x00503513    7412
                         mov.s              ecx, esi                                             // 0x00503515    8bce
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ      // 0x00503517    e83443f7ff
                         mov.s              ecx, eax                                             // 0x0050351c    8bc8
                         call               _jmp_addr_0x00484e10                                 // 0x0050351e    e8ed18f8ff
                         test               eax, eax                                             // 0x00503523    85c0
                         {disp8} je         _jmp_addr_0x0050356f                                 // 0x00503525    7448
_jmp_addr_0x00503527:    {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x00503527    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x0050352d    8b88b40f0000
                         add                eax, 0x00000fa8                                      // 0x00503533    05a80f0000
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x00503538    8d0c49
                         shl                ecx, 5                                               // 0x0050353b    c1e105
                         {disp8} mov        edx, dword ptr [ecx + eax * 0x1 + 0x38]              // 0x0050353e    8b540138
                         {disp8} lea        eax, dword ptr [ecx + eax * 0x1 + 0x38]              // 0x00503542    8d440138
                         dec                edx                                                  // 0x00503546    4a
                         mov                dword ptr [eax], edx                                 // 0x00503547    8910
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x00503549    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x0050354f    8b88b40f0000
                         add                eax, 0x00000fa8                                      // 0x00503555    05a80f0000
                         lea                edx, dword ptr [ecx + ecx * 0x2]                     // 0x0050355a    8d1449
                         shl                edx, 5                                               // 0x0050355d    c1e205
                         {disp8} mov        ecx, dword ptr [edx + eax * 0x1 + 0x38]              // 0x00503560    8b4c0238
                         test               ecx, ecx                                             // 0x00503564    85c9
                         {disp8} jg         _jmp_addr_0x0050356f                                 // 0x00503566    7f07
                         mov                eax, 0x00000002                                      // 0x00503568    b802000000
                         pop                esi                                                  // 0x0050356d    5e
                         ret                                                                     // 0x0050356e    c3
_jmp_addr_0x0050356f:    xor.s              eax, eax                                             // 0x0050356f    33c0
                         pop                esi                                                  // 0x00503571    5e
                         ret                                                                     // 0x00503572    c3
                         nop                                                                     // 0x00503573    90
                         nop                                                                     // 0x00503574    90
                         nop                                                                     // 0x00503575    90
                         nop                                                                     // 0x00503576    90
                         nop                                                                     // 0x00503577    90
                         nop                                                                     // 0x00503578    90
                         nop                                                                     // 0x00503579    90
                         nop                                                                     // 0x0050357a    90
                         nop                                                                     // 0x0050357b    90
                         nop                                                                     // 0x0050357c    90
                         nop                                                                     // 0x0050357d    90
                         nop                                                                     // 0x0050357e    90
                         nop                                                                     // 0x0050357f    90
                         {disp32} mov       eax, dword ptr [ecx + 0x00001074]                    // 0x00503580    8b8174100000
                         test               eax, eax                                             // 0x00503586    85c0
                         push               ebx                                                  // 0x00503588    53
                         push               edi                                                  // 0x00503589    57
                         {disp8} je         _jmp_addr_0x005035ce                                 // 0x0050358a    7442
                         {disp8} mov        edi, dword ptr [eax + 0x78]                          // 0x0050358c    8b7878
                         xor.s              ebx, ebx                                             // 0x0050358f    33db
                         test               edi, edi                                             // 0x00503591    85ff
                         {disp8} je         _jmp_addr_0x005035c1                                 // 0x00503593    742c
                         push               esi                                                  // 0x00503595    56
_jmp_addr_0x00503596:    {disp8} mov        eax, dword ptr [edi + 0x04]                          // 0x00503596    8b4704
                         {disp8} mov        esi, dword ptr [eax + 0x1c]                          // 0x00503599    8b701c
                         test               esi, esi                                             // 0x0050359c    85f6
                         {disp8} je         _jmp_addr_0x005035b6                                 // 0x0050359e    7416
_jmp_addr_0x005035a0:    {disp8} mov        ecx, dword ptr [esi + 0x04]                          // 0x005035a0    8b4e04
                         mov                edx, dword ptr [ecx]                                 // 0x005035a3    8b11
                         call               dword ptr [edx + 0x174]                              // 0x005035a5    ff9274010000
                         test               eax, eax                                             // 0x005035ab    85c0
                         {disp8} je         _jmp_addr_0x005035b0                                 // 0x005035ad    7401
                         inc                ebx                                                  // 0x005035af    43
_jmp_addr_0x005035b0:    mov                esi, dword ptr [esi]                                 // 0x005035b0    8b36
                         test               esi, esi                                             // 0x005035b2    85f6
                         {disp8} jne        _jmp_addr_0x005035a0                                 // 0x005035b4    75ea
_jmp_addr_0x005035b6:    mov                edi, dword ptr [edi]                                 // 0x005035b6    8b3f
                         test               edi, edi                                             // 0x005035b8    85ff
                         {disp8} jne        _jmp_addr_0x00503596                                 // 0x005035ba    75da
                         test               ebx, ebx                                             // 0x005035bc    85db
                         pop                esi                                                  // 0x005035be    5e
                         {disp8} jne        _jmp_addr_0x005035c9                                 // 0x005035bf    7508
_jmp_addr_0x005035c1:    pop                edi                                                  // 0x005035c1    5f
                         mov                eax, 0x00000002                                      // 0x005035c2    b802000000
                         pop                ebx                                                  // 0x005035c7    5b
                         ret                                                                     // 0x005035c8    c3
_jmp_addr_0x005035c9:    pop                edi                                                  // 0x005035c9    5f
                         xor.s              eax, eax                                             // 0x005035ca    33c0
                         pop                ebx                                                  // 0x005035cc    5b
                         ret                                                                     // 0x005035cd    c3
_jmp_addr_0x005035ce:    pop                edi                                                  // 0x005035ce    5f
                         mov                eax, 0x00000001                                      // 0x005035cf    b801000000
                         pop                ebx                                                  // 0x005035d4    5b
                         ret                                                                     // 0x005035d5    c3
                         nop                                                                     // 0x005035d6    90
                         nop                                                                     // 0x005035d7    90
                         nop                                                                     // 0x005035d8    90
                         nop                                                                     // 0x005035d9    90
                         nop                                                                     // 0x005035da    90
                         nop                                                                     // 0x005035db    90
                         nop                                                                     // 0x005035dc    90
                         nop                                                                     // 0x005035dd    90
                         nop                                                                     // 0x005035de    90
                         nop                                                                     // 0x005035df    90
                         {disp32} mov       ecx, dword ptr [ecx + 0x00001074]                    // 0x005035e0    8b8974100000
                         test               ecx, ecx                                             // 0x005035e6    85c9
                         {disp8} je         _jmp_addr_0x005035f7                                 // 0x005035e8    740d
                         call               _jmp_addr_0x0050c290                                 // 0x005035ea    e8a18c0000
                         neg                eax                                                  // 0x005035ef    f7d8
                         sbb.s              eax, eax                                             // 0x005035f1    1bc0
                         and                eax, 0x02                                            // 0x005035f3    83e002
                         ret                                                                     // 0x005035f6    c3
_jmp_addr_0x005035f7:    mov                eax, 0x00000001                                      // 0x005035f7    b801000000
                         ret                                                                     // 0x005035fc    c3
                         nop                                                                     // 0x005035fd    90
                         nop                                                                     // 0x005035fe    90
                         nop                                                                     // 0x005035ff    90
                         push               esi                                                  // 0x00503600    56
                         push               edi                                                  // 0x00503601    57
                         mov.s              edi, ecx                                             // 0x00503602    8bf9
                         {disp32} mov       eax, dword ptr [edi + 0x00000164]                    // 0x00503604    8b8764010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x0050360a    8b88b40f0000
                         add                eax, 0x00000fa8                                      // 0x00503610    05a80f0000
                         push               0x0                                                  // 0x00503615    6a00
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x00503617    8d0c49
                         push               0x009c7f50                                           // 0x0050361a    68507f9c00
                         shl                ecx, 5                                               // 0x0050361f    c1e105
                         {disp8} mov        eax, dword ptr [ecx + eax * 0x1 + 0x34]              // 0x00503622    8b440134
                         {disp8} mov        edx, dword ptr [eax + 0x30]                          // 0x00503626    8b5030
                         push               0x009c7f30                                           // 0x00503629    68307f9c00
                         push               0x0                                                  // 0x0050362e    6a00
                         push               edx                                                  // 0x00503630    52
                         call               ___RTDynamicCast                                     // 0x00503631    e8e3232c00
                         add                esp, 0x14                                            // 0x00503636    83c414
                         {disp8} lea        ecx, dword ptr [edi + 0x14]                          // 0x00503639    8d4f14
                         push               ecx                                                  // 0x0050363c    51
                         push               edi                                                  // 0x0050363d    57
                         mov.s              esi, eax                                             // 0x0050363e    8bf0
                         mov                eax, dword ptr [esi]                                 // 0x00503640    8b06
                         push               0x3f800000                                           // 0x00503642    680000803f
                         push               0x3                                                  // 0x00503647    6a03
                         mov.s              ecx, esi                                             // 0x00503649    8bce
                         call               dword ptr [eax + 0x604]                              // 0x0050364b    ff9004060000
                         push               0x0                                                  // 0x00503651    6a00
                         push               0x009c8de8                                           // 0x00503653    68e88d9c00
                         push               0x009c7f50                                           // 0x00503658    68507f9c00
                         push               0x0                                                  // 0x0050365d    6a00
                         push               esi                                                  // 0x0050365f    56
                         call               ___RTDynamicCast                                     // 0x00503660    e8b4232c00
                         mov.s              edi, eax                                             // 0x00503665    8bf8
                         add                esp, 0x14                                            // 0x00503667    83c414
                         test               edi, edi                                             // 0x0050366a    85ff
                         {disp8} je         _jmp_addr_0x005036ad                                 // 0x0050366c    743f
                         mov                edx, dword ptr [edi]                                 // 0x0050366e    8b17
                         push               0x3f800000                                           // 0x00503670    680000803f
                         mov.s              ecx, edi                                             // 0x00503675    8bcf
                         call               dword ptr [edx + 0x5b0]                              // 0x00503677    ff92b0050000
                         {disp8} mov        eax, dword ptr [esi + 0x28]                          // 0x0050367d    8b4628
                         {disp8} mov        eax, dword ptr [eax + 0x10]                          // 0x00503680    8b4010
                         sub                eax, 0x02                                            // 0x00503683    83e802
                         {disp8} je         _jmp_addr_0x005036a1                                 // 0x00503686    7419
                         sub                eax, 0x02                                            // 0x00503688    83e802
                         {disp8} jne        _jmp_addr_0x005036ad                                 // 0x0050368b    7520
                         mov                edx, dword ptr [edi]                                 // 0x0050368d    8b17
                         push               0x1f                                                 // 0x0050368f    6a1f
                         mov.s              ecx, edi                                             // 0x00503691    8bcf
                         call               dword ptr [edx + 0x8e8]                              // 0x00503693    ff92e8080000
                         pop                edi                                                  // 0x00503699    5f
                         mov                eax, 0x00000002                                      // 0x0050369a    b802000000
                         pop                esi                                                  // 0x0050369f    5e
                         ret                                                                     // 0x005036a0    c3
_jmp_addr_0x005036a1:    mov                eax, dword ptr [edi]                                 // 0x005036a1    8b07
                         push               0x24                                                 // 0x005036a3    6a24
                         mov.s              ecx, edi                                             // 0x005036a5    8bcf
                         call               dword ptr [eax + 0x8e8]                              // 0x005036a7    ff90e8080000
_jmp_addr_0x005036ad:    pop                edi                                                  // 0x005036ad    5f
                         mov                eax, 0x00000002                                      // 0x005036ae    b802000000
                         pop                esi                                                  // 0x005036b3    5e
                         ret                                                                     // 0x005036b4    c3
                         nop                                                                     // 0x005036b5    90
                         nop                                                                     // 0x005036b6    90
                         nop                                                                     // 0x005036b7    90
                         nop                                                                     // 0x005036b8    90
                         nop                                                                     // 0x005036b9    90
                         nop                                                                     // 0x005036ba    90
                         nop                                                                     // 0x005036bb    90
                         nop                                                                     // 0x005036bc    90
                         nop                                                                     // 0x005036bd    90
                         nop                                                                     // 0x005036be    90
                         nop                                                                     // 0x005036bf    90
                         sub                esp, 0x10                                            // 0x005036c0    83ec10
                         push               ebx                                                  // 0x005036c3    53
                         push               esi                                                  // 0x005036c4    56
                         mov.s              esi, ecx                                             // 0x005036c5    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]                    // 0x005036c7    8b8660010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                          // 0x005036cd    8b4858
                         push               edi                                                  // 0x005036d0    57
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ        // 0x005036d1    e8fa0bf8ff
                         test               eax, eax                                             // 0x005036d6    85c0
                         {disp32} jne       _jmp_addr_0x0050381b                                 // 0x005036d8    0f853d010000
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x005036de    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x005036e4    8b88b40f0000
                         push               ebp                                                  // 0x005036ea    55
                         add                eax, 0x00000fa8                                      // 0x005036eb    05a80f0000
                         push               0x0                                                  // 0x005036f0    6a00
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x005036f2    8d0c49
                         push               0x009c7f50                                           // 0x005036f5    68507f9c00
                         shl                ecx, 5                                               // 0x005036fa    c1e105
                         {disp8} mov        eax, dword ptr [ecx + eax * 0x1 + 0x34]              // 0x005036fd    8b440134
                         {disp8} mov        edx, dword ptr [eax + 0x30]                          // 0x00503701    8b5030
                         push               0x009c7f30                                           // 0x00503704    68307f9c00
                         push               0x0                                                  // 0x00503709    6a00
                         push               edx                                                  // 0x0050370b    52
                         call               ___RTDynamicCast                                     // 0x0050370c    e808232c00
                         push               0x0                                                  // 0x00503711    6a00
                         push               0x009c8060                                           // 0x00503713    6860809c00
                         push               0x009c7f50                                           // 0x00503718    68507f9c00
                         push               0x0                                                  // 0x0050371d    6a00
                         push               eax                                                  // 0x0050371f    50
                         call               ___RTDynamicCast                                     // 0x00503720    e8f4222c00
                         mov.s              ebp, eax                                             // 0x00503725    8be8
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x00503727    8b8664010000
                         {disp32} mov       dword ptr [eax + 0x000021f4], 0x00000001             // 0x0050372d    c780f421000001000000
                         {disp32} mov       eax, dword ptr [esi + 0x000010a0]                    // 0x00503737    8b86a0100000
                         add                esp, 0x28                                            // 0x0050373d    83c428
                         test               eax, eax                                             // 0x00503740    85c0
                         mov.s              ebx, eax                                             // 0x00503742    8bd8
                         {disp8} jne        _jmp_addr_0x0050374c                                 // 0x00503744    7506
                         {disp32} mov       ebx, dword ptr [ebp + 0x000010a0]                    // 0x00503746    8b9da0100000
_jmp_addr_0x0050374c:    {disp8} mov        ecx, dword ptr [ebx + 0x1c]                          // 0x0050374c    8b4b1c
                         {disp8} lea        edi, dword ptr [ebx + 0x14]                          // 0x0050374f    8d7b14
                         {disp8} mov        dword ptr [esp + 0x10], ecx                          // 0x00503752    894c2410
                         mov.s              ecx, edi                                             // 0x00503756    8bcf
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z     // 0x00503758    e833f92f00
                         {disp8} fadd       dword ptr [esp + 0x10]                               // 0x0050375d    d8442410
                         mov.s              ecx, ebx                                             // 0x00503761    8bcb
                         {disp8} fstp       dword ptr [esp + 0x18]                               // 0x00503763    d95c2418
                         fild               dword ptr [edi]                                      // 0x00503767    db07
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x00503769    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x14]                               // 0x0050376f    d95c2414
                         {disp8} fild       dword ptr [edi + 0x04]                               // 0x00503773    db4704
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x00503776    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x1c]                               // 0x0050377c    d95c241c
                         mov                edx, dword ptr [ebx]                                 // 0x00503780    8b13
                         call               dword ptr [edx + 0x60]                               // 0x00503782    ff5260
                         {disp8} fstp       dword ptr [esp + 0x10]                               // 0x00503785    d95c2410
                         mov.s              ecx, esi                                             // 0x00503789    8bce
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ      // 0x0050378b    e8c040f7ff
                         {disp8} mov        edx, dword ptr [esp + 0x10]                          // 0x00503790    8b542410
                         {disp32} mov       ecx, dword ptr [ebp + 0x00000160]                    // 0x00503794    8b8d60010000
                         {disp8} mov        ecx, dword ptr [ecx + 0x58]                          // 0x0050379a    8b4958
                         push               edx                                                  // 0x0050379d    52
                         {disp8} lea        edx, dword ptr [esp + 0x18]                          // 0x0050379e    8d542418
                         push               edx                                                  // 0x005037a2    52
                         push               ecx                                                  // 0x005037a3    51
                         mov.s              ecx, eax                                             // 0x005037a4    8bc8
                         call               _jmp_addr_0x00484410                                 // 0x005037a6    e8650cf8ff
                         test               eax, eax                                             // 0x005037ab    85c0
                         pop                ebp                                                  // 0x005037ad    5d
                         {disp8} je         _jmp_addr_0x0050381b                                 // 0x005037ae    746b
                         mov                eax, dword ptr [esi]                                 // 0x005037b0    8b06
                         push               0x1                                                  // 0x005037b2    6a01
                         mov.s              ecx, esi                                             // 0x005037b4    8bce
                         call               dword ptr [eax + 0x1c]                               // 0x005037b6    ff501c
                         push               eax                                                  // 0x005037b9    50
                         push               0x13                                                 // 0x005037ba    6a13
                         push               esi                                                  // 0x005037bc    56
                         call               ?CreateReaction@Reaction@@SAPAV1@PAVGameThingWithPos@@EPAVGPlayer@@H@Z                     // 0x005037bd    e8ae051e00
                         {disp32} mov       edi, dword ptr [esi + 0x00000178]                    // 0x005037c2    8bbe78010000
                         add                esp, 0x10                                            // 0x005037c8    83c410
                         inc                edi                                                  // 0x005037cb    47
                         {disp32} mov       dword ptr [esi + 0x00000178], edi                    // 0x005037cc    89be78010000
                         {disp32} mov       ecx, dword ptr [_game]                               // 0x005037d2    8b0d5c19d000
                         call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ                  // 0x005037d8    e8a3890400
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                          // 0x005037dd    8b4858
                         test               ecx, ecx                                             // 0x005037e0    85c9
                         {disp8} jge        _jmp_addr_0x005037e8                                 // 0x005037e2    7d04
                         xor.s              eax, eax                                             // 0x005037e4    33c0
                         {disp8} jmp        _jmp_addr_0x005037ec                                 // 0x005037e6    eb04
_jmp_addr_0x005037e8:    {disp8} mov        eax, dword ptr [eax + ecx * 0x4 + 0x28]              // 0x005037e8    8b448828
_jmp_addr_0x005037ec:    push               0x0                                                  // 0x005037ec    6a00
                         push               0x009cd3b0                                           // 0x005037ee    68b0d39c00
                         push               0x009cd390                                           // 0x005037f3    6890d39c00
                         push               0x0                                                  // 0x005037f8    6a00
                         push               eax                                                  // 0x005037fa    50
                         call               ___RTDynamicCast                                     // 0x005037fb    e819222c00
                         add                esp, 0x14                                            // 0x00503800    83c414
                         test               eax, eax                                             // 0x00503803    85c0
                         {disp8} je         _jmp_addr_0x0050380f                                 // 0x00503805    7408
                         push               ebx                                                  // 0x00503807    53
                         mov.s              ecx, eax                                             // 0x00503808    8bc8
                         call               @StartFight__14CameraModeNew3FP6GArena@12            // 0x0050380a    e8c16cf5ff
_jmp_addr_0x0050380f:    pop                edi                                                  // 0x0050380f    5f
                         pop                esi                                                  // 0x00503810    5e
                         mov                eax, 0x00000002                                      // 0x00503811    b802000000
                         pop                ebx                                                  // 0x00503816    5b
                         add                esp, 0x10                                            // 0x00503817    83c410
                         ret                                                                     // 0x0050381a    c3
_jmp_addr_0x0050381b:    pop                edi                                                  // 0x0050381b    5f
                         pop                esi                                                  // 0x0050381c    5e
                         xor.s              eax, eax                                             // 0x0050381d    33c0
                         pop                ebx                                                  // 0x0050381f    5b
                         add                esp, 0x10                                            // 0x00503820    83c410
                         ret                                                                     // 0x00503823    c3
                         nop                                                                     // 0x00503824    90
                         nop                                                                     // 0x00503825    90
                         nop                                                                     // 0x00503826    90
                         nop                                                                     // 0x00503827    90
                         nop                                                                     // 0x00503828    90
                         nop                                                                     // 0x00503829    90
                         nop                                                                     // 0x0050382a    90
                         nop                                                                     // 0x0050382b    90
                         nop                                                                     // 0x0050382c    90
                         nop                                                                     // 0x0050382d    90
                         nop                                                                     // 0x0050382e    90
                         nop                                                                     // 0x0050382f    90
                         push               esi                                                  // 0x00503830    56
                         mov.s              esi, ecx                                             // 0x00503831    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]                    // 0x00503833    8b8660010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                          // 0x00503839    8b4858
                         push               edi                                                  // 0x0050383c    57
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ        // 0x0050383d    e88e0af8ff
                         test               eax, eax                                             // 0x00503842    85c0
                         {disp8} jne        _jmp_addr_0x005038b3                                 // 0x00503844    756d
                         {disp32} mov       ecx, dword ptr [_game]                               // 0x00503846    8b0d5c19d000
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]                      // 0x0050384c    8a81595a2000
                         lea                edx, dword ptr [eax + eax * 0x4]                     // 0x00503852    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]                     // 0x00503855    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]                     // 0x00503858    8d0450
                         mov                edx, dword ptr [esi]                                 // 0x0050385b    8b16
                         shl                eax, 5                                               // 0x0050385d    c1e005
                         {disp8} lea        edi, dword ptr [eax + ecx * 0x1 + 0x18]              // 0x00503860    8d7c0818
                         mov.s              ecx, esi                                             // 0x00503864    8bce
                         call               dword ptr [edx + 0x1c]                               // 0x00503866    ff521c
                         cmp.s              eax, edi                                             // 0x00503869    3bc7
                         {disp8} jne        _jmp_addr_0x005038ab                                 // 0x0050386b    753e
                         {disp32} mov       ecx, dword ptr [_game]                               // 0x0050386d    8b0d5c19d000
                         call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ                  // 0x00503873    e808890400
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                          // 0x00503878    8b4858
                         test               ecx, ecx                                             // 0x0050387b    85c9
                         {disp8} jge        _jmp_addr_0x00503883                                 // 0x0050387d    7d04
                         xor.s              eax, eax                                             // 0x0050387f    33c0
                         {disp8} jmp        _jmp_addr_0x00503887                                 // 0x00503881    eb04
_jmp_addr_0x00503883:    {disp8} mov        eax, dword ptr [eax + ecx * 0x4 + 0x28]              // 0x00503883    8b448828
_jmp_addr_0x00503887:    push               0x0                                                  // 0x00503887    6a00
                         push               0x009cd3b0                                           // 0x00503889    68b0d39c00
                         push               0x009cd390                                           // 0x0050388e    6890d39c00
                         push               0x0                                                  // 0x00503893    6a00
                         push               eax                                                  // 0x00503895    50
                         call               ___RTDynamicCast                                     // 0x00503896    e87e212c00
                         add                esp, 0x14                                            // 0x0050389b    83c414
                         test               eax, eax                                             // 0x0050389e    85c0
                         {disp8} je         _jmp_addr_0x005038ab                                 // 0x005038a0    7409
                         push               0x1                                                  // 0x005038a2    6a01
                         mov.s              ecx, eax                                             // 0x005038a4    8bc8
                         call               _jmp_addr_0x0045a800                                 // 0x005038a6    e8556ff5ff
_jmp_addr_0x005038ab:    pop                edi                                                  // 0x005038ab    5f
                         mov                eax, 0x00000002                                      // 0x005038ac    b802000000
                         pop                esi                                                  // 0x005038b1    5e
                         ret                                                                     // 0x005038b2    c3
_jmp_addr_0x005038b3:    {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x005038b3    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x005038b9    8b88b40f0000
                         add                eax, 0x00000fa8                                      // 0x005038bf    05a80f0000
                         push               0x0                                                  // 0x005038c4    6a00
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x005038c6    8d0c49
                         push               0x009c7f50                                           // 0x005038c9    68507f9c00
                         shl                ecx, 5                                               // 0x005038ce    c1e105
                         {disp8} mov        eax, dword ptr [ecx + eax * 0x1 + 0x34]              // 0x005038d1    8b440134
                         {disp8} mov        edx, dword ptr [eax + 0x30]                          // 0x005038d5    8b5030
                         push               0x009c7f30                                           // 0x005038d8    68307f9c00
                         push               0x0                                                  // 0x005038dd    6a00
                         push               edx                                                  // 0x005038df    52
                         call               ___RTDynamicCast                                     // 0x005038e0    e834212c00
                         push               0x0                                                  // 0x005038e5    6a00
                         push               0x009c8060                                           // 0x005038e7    6860809c00
                         push               0x009c7f50                                           // 0x005038ec    68507f9c00
                         push               0x0                                                  // 0x005038f1    6a00
                         push               eax                                                  // 0x005038f3    50
                         call               ___RTDynamicCast                                     // 0x005038f4    e820212c00
                         mov                edx, dword ptr [eax]                                 // 0x005038f9    8b10
                         add                esp, 0x28                                            // 0x005038fb    83c428
                         mov.s              ecx, eax                                             // 0x005038fe    8bc8
                         call               dword ptr [edx + 0x11c]                              // 0x00503900    ff921c010000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x00503906    d81d98a38a00
                         fnstsw             ax                                                   // 0x0050390c    dfe0
                         test               ah, 0x41                                             // 0x0050390e    f6c441
                         {disp32} je        _jmp_addr_0x005039a5                                 // 0x00503911    0f848e000000
                         test               byte ptr [esi + 0x25], 0x04                          // 0x00503917    f6462504
                         {disp32} jne       _jmp_addr_0x005039a5                                 // 0x0050391b    0f8584000000
                         {disp32} mov       ecx, dword ptr [_game]                               // 0x00503921    8b0d5c19d000
                         push               ebx                                                  // 0x00503927    53
                         call               _jmp_addr_0x00555880                                 // 0x00503928    e8531f0500
                         mov.s              ebx, eax                                             // 0x0050392d    8bd8
                         mov                eax, dword ptr [esi]                                 // 0x0050392f    8b06
                         mov.s              ecx, esi                                             // 0x00503931    8bce
                         call               dword ptr [eax + 0x1c]                               // 0x00503933    ff501c
                         mov.s              edi, eax                                             // 0x00503936    8bf8
                         test               edi, edi                                             // 0x00503938    85ff
                         {disp8} je         _jmp_addr_0x00503962                                 // 0x0050393a    7426
                         push               ebx                                                  // 0x0050393c    53
                         mov.s              ecx, edi                                             // 0x0050393d    8bcf
                         call               ?IsMemberOfThisPlayer@GPlayer@@QAE_NPAVGInterfaceStatus@@@Z                                 // 0x0050393f    e80c9e1400
                         test               eax, eax                                             // 0x00503944    85c0
                         {disp8} je         _jmp_addr_0x00503954                                 // 0x00503946    740c
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                          // 0x00503948    8d4e14
                         push               ecx                                                  // 0x0050394b    51
                         {disp8} mov        ecx, dword ptr [ebx + 0x30]                          // 0x0050394c    8b4b30
                         call               _jmp_addr_0x0071cdf0                                 // 0x0050394f    e89c942100
_jmp_addr_0x00503954:    push               0x1                                                  // 0x00503954    6a01
                         push               edi                                                  // 0x00503956    57
                         push               0x28                                                 // 0x00503957    6a28
                         push               esi                                                  // 0x00503959    56
                         call               ?CreateReaction@Reaction@@SAPAV1@PAVGameThingWithPos@@EPAVGPlayer@@H@Z                     // 0x0050395a    e811041e00
                         add                esp, 0x10                                            // 0x0050395f    83c410
_jmp_addr_0x00503962:    {disp32} mov       edi, dword ptr [esi + 0x0000017c]                    // 0x00503962    8bbe7c010000
                         {disp32} mov       edx, dword ptr [esi + 0x00000160]                    // 0x00503968    8b9660010000
                         inc                edi                                                  // 0x0050396e    47
                         {disp32} mov       dword ptr [esi + 0x0000017c], edi                    // 0x0050396f    89be7c010000
                         {disp8} mov        ecx, dword ptr [edx + 0x58]                          // 0x00503975    8b4a58
                         call               _jmp_addr_0x004845f0                                 // 0x00503978    e8730cf8ff
                         {disp32} mov       ecx, dword ptr [_game]                               // 0x0050397d    8b0d5c19d000
                         xor.s              eax, eax                                             // 0x00503983    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]                      // 0x00503985    8a81595a2000
                         lea                edx, dword ptr [eax + eax * 0x4]                     // 0x0050398b    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]                     // 0x0050398e    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]                     // 0x00503991    8d0450
                         mov                edx, dword ptr [esi]                                 // 0x00503994    8b16
                         shl                eax, 5                                               // 0x00503996    c1e005
                         {disp8} lea        edi, dword ptr [eax + ecx * 0x1 + 0x18]              // 0x00503999    8d7c0818
                         mov.s              ecx, esi                                             // 0x0050399d    8bce
                         call               dword ptr [edx + 0x1c]                               // 0x0050399f    ff521c
                         pop                ebx                                                  // 0x005039a2    5b
                         {disp8} jmp        _jmp_addr_0x00503a1f                                 // 0x005039a3    eb7a
_jmp_addr_0x005039a5:    {disp32} mov       eax, dword ptr [esi + 0x00000160]                    // 0x005039a5    8b8660010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                          // 0x005039ab    8b4858
                         {disp32} mov       eax, dword ptr [ecx + 0x0000528c]                    // 0x005039ae    8b818c520000
                         test               eax, eax                                             // 0x005039b4    85c0
                         {disp32} jne       _jmp_addr_0x00503a44                                 // 0x005039b6    0f8588000000
                         {disp32} mov       ecx, dword ptr [_game]                               // 0x005039bc    8b0d5c19d000
                         call               _jmp_addr_0x00555880                                 // 0x005039c2    e8b91e0500
                         mov                edx, dword ptr [esi]                                 // 0x005039c7    8b16
                         mov.s              ecx, esi                                             // 0x005039c9    8bce
                         mov.s              edi, eax                                             // 0x005039cb    8bf8
                         call               dword ptr [edx + 0x1c]                               // 0x005039cd    ff521c
                         test               eax, eax                                             // 0x005039d0    85c0
                         {disp8} je         _jmp_addr_0x005039ec                                 // 0x005039d2    7418
                         push               edi                                                  // 0x005039d4    57
                         mov.s              ecx, eax                                             // 0x005039d5    8bc8
                         call               ?IsMemberOfThisPlayer@GPlayer@@QAE_NPAVGInterfaceStatus@@@Z                                 // 0x005039d7    e8749d1400
                         test               eax, eax                                             // 0x005039dc    85c0
                         {disp8} je         _jmp_addr_0x005039ec                                 // 0x005039de    740c
                         {disp8} mov        ecx, dword ptr [edi + 0x30]                          // 0x005039e0    8b4f30
                         {disp8} lea        eax, dword ptr [esi + 0x14]                          // 0x005039e3    8d4614
                         push               eax                                                  // 0x005039e6    50
                         call               _jmp_addr_0x0071cd70                                 // 0x005039e7    e884932100
_jmp_addr_0x005039ec:    {disp32} mov       ecx, dword ptr [esi + 0x00000160]                    // 0x005039ec    8b8e60010000
                         {disp8} mov        ecx, dword ptr [ecx + 0x58]                          // 0x005039f2    8b4958
                         call               _jmp_addr_0x004845f0                                 // 0x005039f5    e8f60bf8ff
                         {disp32} mov       ecx, dword ptr [_game]                               // 0x005039fa    8b0d5c19d000
                         xor.s              eax, eax                                             // 0x00503a00    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]                      // 0x00503a02    8a81595a2000
                         lea                edx, dword ptr [eax + eax * 0x4]                     // 0x00503a08    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]                     // 0x00503a0b    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]                     // 0x00503a0e    8d0450
                         mov                edx, dword ptr [esi]                                 // 0x00503a11    8b16
                         shl                eax, 5                                               // 0x00503a13    c1e005
                         {disp8} lea        edi, dword ptr [eax + ecx * 0x1 + 0x18]              // 0x00503a16    8d7c0818
                         mov.s              ecx, esi                                             // 0x00503a1a    8bce
                         call               dword ptr [edx + 0x1c]                               // 0x00503a1c    ff521c
_jmp_addr_0x00503a1f:    cmp.s              eax, edi                                             // 0x00503a1f    3bc7
                         {disp32} jne       _jmp_addr_0x005038ab                                 // 0x00503a21    0f8584feffff
                         {disp32} mov       ecx, dword ptr [_game]                               // 0x00503a27    8b0d5c19d000
                         call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ                  // 0x00503a2d    e84e870400
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                          // 0x00503a32    8b4858
                         test               ecx, ecx                                             // 0x00503a35    85c9
                         {disp32} jge       _jmp_addr_0x00503883                                 // 0x00503a37    0f8d46feffff
                         xor.s              eax, eax                                             // 0x00503a3d    33c0
                         {disp32} jmp       _jmp_addr_0x00503887                                 // 0x00503a3f    e943feffff
_jmp_addr_0x00503a44:    pop                edi                                                  // 0x00503a44    5f
                         xor.s              eax, eax                                             // 0x00503a45    33c0
                         pop                esi                                                  // 0x00503a47    5e
                         ret                                                                     // 0x00503a48    c3
                         nop                                                                     // 0x00503a49    90
                         nop                                                                     // 0x00503a4a    90
                         nop                                                                     // 0x00503a4b    90
                         nop                                                                     // 0x00503a4c    90
                         nop                                                                     // 0x00503a4d    90
                         nop                                                                     // 0x00503a4e    90
                         nop                                                                     // 0x00503a4f    90
                         push               esi                                                  // 0x00503a50    56
                         mov.s              esi, ecx                                             // 0x00503a51    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]                    // 0x00503a53    8b8660010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                          // 0x00503a59    8b4858
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ        // 0x00503a5c    e86f08f8ff
                         test               eax, eax                                             // 0x00503a61    85c0
                         {disp8} jne        _jmp_addr_0x00503a87                                 // 0x00503a63    7522
                         mov.s              ecx, esi                                             // 0x00503a65    8bce
                         call               _jmp_addr_0x004792a0                                 // 0x00503a67    e83458f7ff
                         test               eax, eax                                             // 0x00503a6c    85c0
                         {disp8} je         _jmp_addr_0x00503a80                                 // 0x00503a6e    7410
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]                    // 0x00503a70    8b8e64010000
                         {disp32} mov       dword ptr [ecx + 0x00000658], 0x00000001             // 0x00503a76    c7815806000001000000
_jmp_addr_0x00503a80:    mov                eax, 0x00000002                                      // 0x00503a80    b802000000
                         pop                esi                                                  // 0x00503a85    5e
                         ret                                                                     // 0x00503a86    c3
_jmp_addr_0x00503a87:    xor.s              eax, eax                                             // 0x00503a87    33c0
                         pop                esi                                                  // 0x00503a89    5e
                         ret                                                                     // 0x00503a8a    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                                 // 0x00503a8b    e8e9ddefff
                         push               ecx                                                  // 0x00503a90    51
                         push               esi                                                  // 0x00503a91    56
                         mov.s              esi, ecx                                             // 0x00503a92    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x00503a94    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x00503a9a    8b88b40f0000
                         push               edi                                                  // 0x00503aa0    57
                         add                eax, 0x00000fa8                                      // 0x00503aa1    05a80f0000
                         push               0x0                                                  // 0x00503aa6    6a00
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x00503aa8    8d0c49
                         push               0x009c7f50                                           // 0x00503aab    68507f9c00
                         shl                ecx, 5                                               // 0x00503ab0    c1e105
                         {disp8} mov        eax, dword ptr [ecx + eax * 0x1 + 0x34]              // 0x00503ab3    8b440134
                         {disp8} mov        edx, dword ptr [eax + 0x30]                          // 0x00503ab7    8b5030
                         push               0x009c7f30                                           // 0x00503aba    68307f9c00
                         push               0x0                                                  // 0x00503abf    6a00
                         push               edx                                                  // 0x00503ac1    52
                         call               ___RTDynamicCast                                     // 0x00503ac2    e8521f2c00
                         push               0x0                                                  // 0x00503ac7    6a00
                         push               0x009c8060                                           // 0x00503ac9    6860809c00
                         push               0x009c7f50                                           // 0x00503ace    68507f9c00
                         push               0x0                                                  // 0x00503ad3    6a00
                         push               eax                                                  // 0x00503ad5    50
                         call               ___RTDynamicCast                                     // 0x00503ad6    e83e1f2c00
                         mov.s              edi, eax                                             // 0x00503adb    8bf8
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x00503add    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x00503ae3    8b88b40f0000
                         add                eax, 0x00000fa8                                      // 0x00503ae9    05a80f0000
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x00503aee    8d0c49
                         shl                ecx, 5                                               // 0x00503af1    c1e105
                         {disp8} mov        eax, dword ptr [ecx + eax * 0x1 + 0x38]              // 0x00503af4    8b440138
                         add                eax, -0x02                                           // 0x00503af8    83c0fe
                         add                esp, 0x28                                            // 0x00503afb    83c428
                         cmp                eax, 0x0e                                            // 0x00503afe    83f80e
                         {disp8} ja         _jmp_addr_0x00503b3a                                 // 0x00503b01    7737
                         xor.s              edx, edx                                             // 0x00503b03    33d2
                         {disp32} mov       dl, byte ptr [eax + 0x00503bb8]                      // 0x00503b05    8a90b83b5000
                         jmp                dword ptr [edx*4 + 0x503ba4]                         // 0x00503b0b    ff2495a43b5000
                         push               esi                                                  // 0x00503b12    56
                         mov.s              ecx, edi                                             // 0x00503b13    8bcf
                         call               _jmp_addr_0x004f62d0                                 // 0x00503b15    e8b627ffff
                         {disp8} jmp        _jmp_addr_0x00503b3e                                 // 0x00503b1a    eb22
                         push               esi                                                  // 0x00503b1c    56
                         mov.s              ecx, edi                                             // 0x00503b1d    8bcf
                         call               _jmp_addr_0x004f6340                                 // 0x00503b1f    e81c28ffff
                         {disp8} jmp        _jmp_addr_0x00503b3e                                 // 0x00503b24    eb18
                         push               esi                                                  // 0x00503b26    56
                         mov.s              ecx, edi                                             // 0x00503b27    8bcf
                         call               _jmp_addr_0x004f6410                                 // 0x00503b29    e8e228ffff
                         {disp8} jmp        _jmp_addr_0x00503b3e                                 // 0x00503b2e    eb0e
                         push               esi                                                  // 0x00503b30    56
                         mov.s              ecx, edi                                             // 0x00503b31    8bcf
                         call               _jmp_addr_0x004f64d0                                 // 0x00503b33    e89829ffff
                         {disp8} jmp        _jmp_addr_0x00503b3e                                 // 0x00503b38    eb04
_jmp_addr_0x00503b3a:    {disp8} mov        eax, dword ptr [esp + 0x08]                          // 0x00503b3a    8b442408
_jmp_addr_0x00503b3e:    sub                eax, 0x00                                            // 0x00503b3e    83e800
                         {disp8} je         _jmp_addr_0x00503b82                                 // 0x00503b41    743f
                         dec                eax                                                  // 0x00503b43    48
                         {disp8} je         _jmp_addr_0x00503b52                                 // 0x00503b44    740c
                         dec                eax                                                  // 0x00503b46    48
                         {disp8} je         _jmp_addr_0x00503b82                                 // 0x00503b47    7439
                         pop                edi                                                  // 0x00503b49    5f
                         mov                eax, 0x00000001                                      // 0x00503b4a    b801000000
                         pop                esi                                                  // 0x00503b4f    5e
                         pop                ecx                                                  // 0x00503b50    59
                         ret                                                                     // 0x00503b51    c3
_jmp_addr_0x00503b52:    {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x00503b52    8b8664010000
                         {disp32} mov       edx, dword ptr [eax + 0x00000f60]                    // 0x00503b58    8b90600f0000
                         push               0x1                                                  // 0x00503b5e    6a01
                         push               0x1                                                  // 0x00503b60    6a01
                         push               0x00be66e8                                           // 0x00503b62    68e866be00
                         mov.s              ecx, esi                                             // 0x00503b67    8bce
                         {disp32} mov       dword ptr [eax + edx * 0x4 + 0x0001cea0], 0x00000000 // 0x00503b69    c78490a0ce010000000000
                         call               ?FinishActionUnsuccessfully@Creature@@QAEXPADHH@Z    // 0x00503b74    e8b71bf7ff
                         pop                edi                                                  // 0x00503b79    5f
                         mov                eax, 0x00000001                                      // 0x00503b7a    b801000000
                         pop                esi                                                  // 0x00503b7f    5e
                         pop                ecx                                                  // 0x00503b80    59
                         ret                                                                     // 0x00503b81    c3
_jmp_addr_0x00503b82:    {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x00503b82    8b8664010000
                         {disp32} mov       dword ptr [eax + 0x00001be8], edi                    // 0x00503b88    89b8e81b0000
                         {disp32} mov       ecx, dword ptr [edi + 0x00000164]                    // 0x00503b8e    8b8f64010000
                         pop                edi                                                  // 0x00503b94    5f
                         {disp32} mov       dword ptr [ecx + 0x00001be8], esi                    // 0x00503b95    89b1e81b0000
                         mov                eax, 0x00000002                                      // 0x00503b9b    b802000000
                         pop                esi                                                  // 0x00503ba0    5e
                         pop                ecx                                                  // 0x00503ba1    59
                         ret                                                                     // 0x00503ba2    c3

// Snippet: db, [0x00503ba3, 0x00503ba4)
.byte 0x90                        // 0x00503ba3

// Snippet: jmptbl, [0x00503ba4, 0x00503bb8)
.byte 0x12, 0x3b, 0x50, 0x00      // 0x00503ba4
.byte 0x1c, 0x3b, 0x50, 0x00      // 0x00503ba8
.byte 0x26, 0x3b, 0x50, 0x00      // 0x00503bac
.byte 0x30, 0x3b, 0x50, 0x00      // 0x00503bb0
.byte 0x3a, 0x3b, 0x50, 0x00      // 0x00503bb4

// Snippet: ijmptbl, [0x00503bb8, 0x00503bc7)
.byte 0x00, 0x01, 0x04, 0x04      // 0x00503bb8
.byte 0x02, 0x04, 0x04, 0x04      // 0x00503bbc
.byte 0x04, 0x04, 0x04, 0x04      // 0x00503bc0
.byte 0x04, 0x04, 0x03            // 0x00503bc4

// Snippet: db, [0x00503bc7, 0x00503bd0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x00503bc7
.byte 0x90, 0x90, 0x90, 0x90      // 0x00503bcb
.byte 0x90                        // 0x00503bcf

