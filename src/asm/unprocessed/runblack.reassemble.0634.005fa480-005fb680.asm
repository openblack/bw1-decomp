.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?__nw@Base@@SAPAXK@Z
.extern ??3Base@@SAXPAXK@Z
.extern _jmp_addr_0x004f5230
.extern ?MyInterface@GGame@@QAEPAVGInterface@@XZ
.extern ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z
.extern @ReadPtr__10GameOSFileFPP9GameThing@12
.extern _jmp_addr_0x00562240
.extern _jmp_addr_0x005622b0
.extern ??0GameThing@@QAE@XZ
.extern _jmp_addr_0x0056fa80
.extern _jmp_addr_0x00590010
.extern _jmp_addr_0x005cd170
.extern ?GetMagicEffectInfo@GMagicInfo@@QBEPAVGMagicEffectInfo@@XZ
.extern _jmp_addr_0x005fba00
.extern _jmp_addr_0x00600e20
.extern _jmp_addr_0x00603720
.extern ?InBounds@MapCoords@@QBEIXZ
.extern @FindType__9MapCoordsCF11OBJECT_TYPEP6Object@16
.extern @SetScale__6ObjectFf@12
.extern ??0PileFood@@QAE@XZ
.extern @__ct__8PileFoodFRC9MapCoordsPC8GPotInfoUlP13MultiMapFixedP4Towniff@40
.extern _jmp_addr_0x0066e0e0
.extern ?CallVirtualFunctionsForCreation@PileFood@@UAEXABUMapCoords@@@Z
.extern ?Save@PileFood@@UAEIAAVGameOSFile@@@Z
.extern ?Load@PileFood@@UAEIAAVGameOSFile@@@Z
.extern @__ct__5SpellF10MAGIC_TYPEP9GameThing@16
.extern _jmp_addr_0x00722270
.extern _jmp_addr_0x00724c80
.extern _jmp_addr_0x00724ec0
.extern _jmp_addr_0x007254f0
.extern _jmp_addr_0x00725c50
.extern _jmp_addr_0x00730ab0
.extern ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern @Read__8LHOSFileFPvUlPUl@20
.extern @Write__8LHOSFileFPvUlPUl@20
.extern _atexit
.extern ___RTDynamicCast
.extern ??2@YAPAXI@Z
.extern __strcmpi
.extern ___nw__FUl
.extern _jmp_addr_0x007fac10
.extern ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z
.extern @Create__10LH3DObjectFQ210LH3DObject10ObjectType@4

.globl _jmp_addr_0x005fa680
.globl _jmp_addr_0x005fa7d0
.globl _jmp_addr_0x005fa8b0
.globl _jmp_addr_0x005fa950
.globl _jmp_addr_0x005fa9f0
.globl _jmp_addr_0x005facc0
.globl _jmp_addr_0x005face0
.globl _jmp_addr_0x005fad00
.globl _jmp_addr_0x005faf00
.globl _jmp_addr_0x005faf60
.globl _jmp_addr_0x005faf80
.globl _jmp_addr_0x005fafc0
.globl ?GetObjectFromHand@GMagicHand@@QBEPAVObject@@XZ
.globl _jmp_addr_0x005fb060
.globl _jmp_addr_0x005fb0b0
.globl _jmp_addr_0x005fb130
.globl _jmp_addr_0x005fb190
.globl ?GetInfoFromText@GMagicInfo@@SAHPAD@Z
.globl ?GetMagicInfoText@GMagicInfo@@QBEPBDXZ
.globl _jmp_addr_0x005fb400
.globl _jmp_addr_0x005fb420
.globl _jmp_addr_0x005fb490
.globl _jmp_addr_0x005fb520
.globl _jmp_addr_0x005fb5d0

.globl _globl_ct_0x005fa710
.globl _globl_ct_0x005fa740
.globl _globl_ct_0x005fa770
.globl _globl_ct_0x005fa850
.globl _globl_ct_0x005fa880
.globl _globl_ct_0x005fab80
.globl _globl_ct_0x005fabb0
.globl _globl_ct_0x005fabd0
.globl _globl_ct_0x005fad10
.globl _globl_ct_0x005fad40
.globl _globl_ct_0x005fad60
.globl _globl_ct_0x005faed0
.globl _globl_ct_0x005fb380
.globl ?SetPlayer@MagicFood@@UAEXPAVGPlayer@@@Z
.globl ?GetPlayer@MagicFood@@UAEPAVGPlayer@@XZ
.globl ?GetImpressiveType@MagicFood@@UAE?AW4IMPRESSIVE_TYPE@@XZ
.globl ?GetSaveType@MagicFood@@UAEIXZ
.globl ?GetDebugText@MagicFood@@UAEPADXZ
.globl ??_GMagicFood@@UAEPAXI@Z
.globl ?CallVirtualFunctionsForCreation@MagicFood@@UAEXABUMapCoords@@@Z
.globl ?Save@MagicFood@@UAEIAAVGameOSFile@@@Z
.globl ?Load@MagicFood@@UAEIAAVGameOSFile@@@Z
.globl ?GetSaveType@GMagicHand@@UAEIXZ
.globl ?GetDebugText@GMagicHand@@UAEPADXZ
.globl ??_GGMagicHand@@UAEPAXI@Z
.globl ?CleanUpForSerialisation@GMagicHand@@UAEXXZ
.globl ?Save@GMagicHand@@UAEIAAVGameOSFile@@@Z
.globl ?Load@GMagicHand@@UAEIAAVGameOSFile@@@Z

start_0x005fa480_0x005fb680:
// Snippet: asm, [0x005fa480, 0x005fb66f)
                         {disp8} mov        al, byte ptr [esp + 0x08]                     // 0x005fa480    8a442408
                         sub                esp, 0x08                                     // 0x005fa484    83ec08
                         push               ebx                                           // 0x005fa487    53
                         xor.s              ebx, ebx                                      // 0x005fa488    33db
                         cmp.s              al, bl                                        // 0x005fa48a    3ac3
                         push               esi                                           // 0x005fa48c    56
                         {disp32} mov       esi, dword ptr [__imp__timeGetTime@4]         // 0x005fa48d    8b358c988a00
                         {disp8} je         _jmp_addr_0x005fa4af                          // 0x005fa493    741a
                         call               esi                                           // 0x005fa495    ffd6
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x005fa497    89442408
                         {disp8} mov        dword ptr [esp + 0x0c], ebx                   // 0x005fa49b    895c240c
                         {disp8} fild       qword ptr [esp + 0x08]                        // 0x005fa49f    df6c2408
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3418]              // 0x005fa4a3    d80d18c48a00
                         {disp32} fstp      dword ptr [data_bytes + 0x36bb00]             // 0x005fa4a9    d91d001bd300
_jmp_addr_0x005fa4af:    call               esi                                           // 0x005fa4af    ffd6
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x005fa4b1    89442408
                         {disp8} mov        dword ptr [esp + 0x0c], ebx                   // 0x005fa4b5    895c240c
                         {disp8} fild       qword ptr [esp + 0x08]                        // 0x005fa4b9    df6c2408
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3418]              // 0x005fa4bd    d80d18c48a00
                         {disp32} fst       dword ptr [data_bytes + 0x36bafc]             // 0x005fa4c3    d915fc1ad300
                         {disp32} fsub      dword ptr [data_bytes + 0x36bb00]             // 0x005fa4c9    d825001bd300
                         {disp32} fst       dword ptr [data_bytes + 0x36baf8]             // 0x005fa4cf    d915f81ad300
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1ebd4]             // 0x005fa4d5    d80dd47b8c00
                         {disp8} fst        dword ptr [esp + 0x18]                        // 0x005fa4db    d9542418
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x005fa4df    d81d90a38a00
                         fnstsw             ax                                            // 0x005fa4e5    dfe0
                         test               ah, 0x41                                      // 0x005fa4e7    f6c441
                         {disp8} jne        _jmp_addr_0x005fa507                          // 0x005fa4ea    751b
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x005fa4ec    d9442418
                         call               _jmp_addr_0x007a1400                          // 0x005fa4f0    e80b6f1a00
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x005fa4f5    89442408
                         {disp8} fild       dword ptr [esp + 0x08]                        // 0x005fa4f9    db442408
                         mov                bl, 0x01                                      // 0x005fa4fd    b301
                         {disp8} fsubr      dword ptr [esp + 0x18]                        // 0x005fa4ff    d86c2418
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x005fa503    d95c2418
_jmp_addr_0x005fa507:    {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x005fa507    8b442418
                         push               0x00d31b04                                    // 0x005fa50b    68041bd300
                         push               0x8                                           // 0x005fa510    6a08
                         push               eax                                           // 0x005fa512    50
                         call               _jmp_addr_0x00590010                          // 0x005fa513    e8f85af9ff
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x005fa518    8b4c2420
                         add                esp, 0x0c                                     // 0x005fa51c    83c40c
                         fstp               dword ptr [ecx]                               // 0x005fa51f    d919
                         pop                esi                                           // 0x005fa521    5e
                         mov.s              al, bl                                        // 0x005fa522    8ac3
                         pop                ebx                                           // 0x005fa524    5b
                         add                esp, 0x08                                     // 0x005fa525    83c408
                         ret                                                              // 0x005fa528    c3
                         nop                                                              // 0x005fa529    90
                         nop                                                              // 0x005fa52a    90
                         nop                                                              // 0x005fa52b    90
                         nop                                                              // 0x005fa52c    90
                         nop                                                              // 0x005fa52d    90
                         nop                                                              // 0x005fa52e    90
                         nop                                                              // 0x005fa52f    90
                         push               ecx                                           // 0x005fa530    51
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x005fa531    d9442408
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x005fa535    d81d90a38a00
                         fnstsw             ax                                            // 0x005fa53b    dfe0
                         test               ah, 0x41                                      // 0x005fa53d    f6c441
                         {disp8} jne        _jmp_addr_0x005fa55b                          // 0x005fa540    7519
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x005fa542    d9442408
                         call               _jmp_addr_0x007a1400                          // 0x005fa546    e8b56e1a00
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x005fa54b    89442400
                         {disp8} fild       dword ptr [esp + 0x00]                        // 0x005fa54f    db442400
                         {disp8} fsubr      dword ptr [esp + 0x08]                        // 0x005fa553    d86c2408
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x005fa557    d95c2408
_jmp_addr_0x005fa55b:    push               esi                                           // 0x005fa55b    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x005fa55c    8b74240c
                         push               0x00d31b44                                    // 0x005fa560    68441bd300
                         push               0x8                                           // 0x005fa565    6a08
                         push               esi                                           // 0x005fa567    56
                         call               _jmp_addr_0x00590010                          // 0x005fa568    e8a35af9ff
                         {disp8} fmul       dword ptr [esp + 0x20]                        // 0x005fa56d    d84c2420
                         push               0x00d31b24                                    // 0x005fa571    68241bd300
                         push               0x8                                           // 0x005fa576    6a08
                         push               esi                                           // 0x005fa578    56
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x005fa579    d95c2424
                         call               _jmp_addr_0x00590010                          // 0x005fa57d    e88e5af9ff
                         {disp8} fmul       dword ptr [esp + 0x2c]                        // 0x005fa582    d84c242c
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x005fa586    8b442428
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x005fa58a    8b4c2424
                         add                esp, 0x18                                     // 0x005fa58e    83c418
                         {disp8} fstp       dword ptr [eax + 0x04]                        // 0x005fa591    d95804
                         mov                dword ptr [eax], 0x00000000                   // 0x005fa594    c70000000000
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x005fa59a    894808
                         pop                esi                                           // 0x005fa59d    5e
                         pop                ecx                                           // 0x005fa59e    59
                         ret                                                              // 0x005fa59f    c3
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x005fa5a0    8b442404
                         {disp8} mov        ecx, dword ptr [eax + 0x40]                   // 0x005fa5a4    8b4840
                         push               ebx                                           // 0x005fa5a7    53
                         xor.s              ebx, ebx                                      // 0x005fa5a8    33db
                         cmp.s              ecx, ebx                                      // 0x005fa5aa    3bcb
                         push               edi                                           // 0x005fa5ac    57
                         {disp32} je        _jmp_addr_0x005fa679                          // 0x005fa5ad    0f84c6000000
                         {disp8} mov        ecx, dword ptr [eax + 0x28]                   // 0x005fa5b3    8b4828
                         cmp.s              ecx, ebx                                      // 0x005fa5b6    3bcb
                         {disp32} je        _jmp_addr_0x005fa679                          // 0x005fa5b8    0f84bb000000
                         mov                eax, dword ptr [ecx]                          // 0x005fa5be    8b01
                         push               esi                                           // 0x005fa5c0    56
                         call               dword ptr [eax + 0x2c]                        // 0x005fa5c1    ff502c
                         push               0x00000404                                    // 0x005fa5c4    6804040000
                         push               0x00bf3d7c                                    // 0x005fa5c9    687c3dbf00
                         push               0xc                                           // 0x005fa5ce    6a0c
                         mov.s              esi, eax                                      // 0x005fa5d0    8bf0
                         call               ___nw__FUl                                    // 0x005fa5d2    e8b9111e00
                         add                esp, 0x0c                                     // 0x005fa5d7    83c40c
                         cmp.s              eax, ebx                                      // 0x005fa5da    3bc3
                         {disp8} je         _jmp_addr_0x005fa5e6                          // 0x005fa5dc    7408
                         mov                dword ptr [eax], ebx                          // 0x005fa5de    8918
                         {disp8} mov        dword ptr [eax + 0x04], ebx                   // 0x005fa5e0    895804
                         {disp8} mov        dword ptr [eax + 0x08], ebx                   // 0x005fa5e3    895808
_jmp_addr_0x005fa5e6:    xor.s              ecx, ecx                                      // 0x005fa5e6    33c9
                         call               @Create__10LH3DObjectFQ210LH3DObject10ObjectType@4                          // 0x005fa5e8    e8e30e2100
                         cmp.s              esi, ebx                                      // 0x005fa5ed    3bf3
                         {disp32} mov       ecx, dword ptr [?g_current_pack@LH3DMesh@@2PAULH3DPack@@A]        // 0x005fa5ef    8b0d34fee900
                         mov.s              edi, eax                                      // 0x005fa5f5    8bf8
                         mov.s              eax, esi                                      // 0x005fa5f7    8bc6
                         {disp8} jl         _jmp_addr_0x005fa5ff                          // 0x005fa5f9    7c04
                         cmp                esi, dword ptr [ecx]                          // 0x005fa5fb    3b31
                         {disp8} jl         _jmp_addr_0x005fa601                          // 0x005fa5fd    7c02
_jmp_addr_0x005fa5ff:    xor.s              eax, eax                                      // 0x005fa5ff    33c0
_jmp_addr_0x005fa601:    {disp8} mov        edx, dword ptr [ecx + eax * 0x4 + 0x04]       // 0x005fa601    8b548104
                         mov                esi, dword ptr [edi]                          // 0x005fa605    8b37
                         push               ebx                                           // 0x005fa607    53
                         push               ebx                                           // 0x005fa608    53
                         mov.s              ecx, edi                                      // 0x005fa609    8bcf
                         call               dword ptr [esi + 0xf4]                        // 0x005fa60b    ff96f4000000
                         mov                edx, dword ptr [edi]                          // 0x005fa611    8b17
                         push               ebx                                           // 0x005fa613    53
                         push               ebx                                           // 0x005fa614    53
                         push               ebx                                           // 0x005fa615    53
                         mov.s              ecx, edi                                      // 0x005fa616    8bcf
                         call               dword ptr [edx + 0x24]                        // 0x005fa618    ff5224
                         push               ebx                                           // 0x005fa61b    53
                         push               ebx                                           // 0x005fa61c    53
                         {disp8} lea        esi, dword ptr [edi + 0x14]                   // 0x005fa61d    8d7714
                         push               ebx                                           // 0x005fa620    53
                         mov.s              ecx, esi                                      // 0x005fa621    8bce
                         call               _jmp_addr_0x007fac10                          // 0x005fa623    e8e8052000
                         cmp.s              edi, ebx                                      // 0x005fa628    3bfb
                         mov                eax, 0x41200000                               // 0x005fa62a    b800002041
                         {disp8} mov        dword ptr [esi + 0x2c], ebx                   // 0x005fa62f    895e2c
                         {disp8} mov        dword ptr [esi + 0x28], ebx                   // 0x005fa632    895e28
                         {disp8} mov        dword ptr [esi + 0x24], ebx                   // 0x005fa635    895e24
                         {disp8} mov        dword ptr [esi + 0x1c], ebx                   // 0x005fa638    895e1c
                         {disp8} mov        dword ptr [esi + 0x18], ebx                   // 0x005fa63b    895e18
                         {disp8} mov        dword ptr [esi + 0x14], ebx                   // 0x005fa63e    895e14
                         {disp8} mov        dword ptr [esi + 0x0c], ebx                   // 0x005fa641    895e0c
                         {disp8} mov        dword ptr [esi + 0x08], ebx                   // 0x005fa644    895e08
                         {disp8} mov        dword ptr [esi + 0x04], ebx                   // 0x005fa647    895e04
                         {disp8} mov        dword ptr [esi + 0x20], eax                   // 0x005fa64a    894620
                         {disp8} mov        dword ptr [esi + 0x10], eax                   // 0x005fa64d    894610
                         mov                dword ptr [esi], eax                          // 0x005fa650    8906
                         pop                esi                                           // 0x005fa652    5e
                         {disp8} je         _jmp_addr_0x005fa679                          // 0x005fa653    7424
                         push               0x8                                           // 0x005fa655    6a08
                         call               ??2@YAPAXI@Z                                  // 0x005fa657    e892be1c00
                         add                esp, 0x04                                     // 0x005fa65c    83c404
                         cmp.s              eax, ebx                                      // 0x005fa65f    3bc3
                         {disp8} je         _jmp_addr_0x005fa679                          // 0x005fa661    7416
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x371cc0]        // 0x005fa663    8b0dc07cd300
                         {disp8} mov        dword ptr [eax + 0x04], edi                   // 0x005fa669    897804
                         mov                dword ptr [eax], ecx                          // 0x005fa66c    8908
                         {disp32} mov       dword ptr [data_bytes + 0x371cc0], eax        // 0x005fa66e    a3c07cd300
                         {disp32} inc       dword ptr [data_bytes + 0x371cc4]             // 0x005fa673    ff05c47cd300
_jmp_addr_0x005fa679:    pop                edi                                           // 0x005fa679    5f
                         pop                ebx                                           // 0x005fa67a    5b
                         ret                                                              // 0x005fa67b    c3
                         nop                                                              // 0x005fa67c    90
                         nop                                                              // 0x005fa67d    90
                         nop                                                              // 0x005fa67e    90
                         nop                                                              // 0x005fa67f    90
_jmp_addr_0x005fa680:    {disp32} mov       ecx, dword ptr [data_bytes + 0x371cc0]        // 0x005fa680    8b0dc07cd300
                         test               ecx, ecx                                      // 0x005fa686    85c9
                         push               ebx                                           // 0x005fa688    53
                         push               esi                                           // 0x005fa689    56
                         push               edi                                           // 0x005fa68a    57
                         {disp8} je         _jmp_addr_0x005fa702                          // 0x005fa68b    7475
                         {disp8} mov        edi, dword ptr [ecx + 0x04]                   // 0x005fa68d    8b7904
                         test               edi, edi                                      // 0x005fa690    85ff
                         {disp8} je         _jmp_addr_0x005fa702                          // 0x005fa692    746e
_jmp_addr_0x005fa694:    mov.s              eax, ecx                                      // 0x005fa694    8bc1
                         xor.s              ebx, ebx                                      // 0x005fa696    33db
                         test               eax, eax                                      // 0x005fa698    85c0
                         {disp8} je         _jmp_addr_0x005fa6d7                          // 0x005fa69a    743b
_jmp_addr_0x005fa69c:    cmp                dword ptr [eax + 0x04], edi                   // 0x005fa69c    397804
                         mov                esi, dword ptr [eax]                          // 0x005fa69f    8b30
                         {disp8} jne        _jmp_addr_0x005fa6cf                          // 0x005fa6a1    752c
                         cmp.s              eax, ecx                                      // 0x005fa6a3    3bc1
                         {disp8} jne        _jmp_addr_0x005fa6af                          // 0x005fa6a5    7508
                         {disp32} mov       dword ptr [data_bytes + 0x371cc0], esi        // 0x005fa6a7    8935c07cd300
                         {disp8} jmp        _jmp_addr_0x005fa6b1                          // 0x005fa6ad    eb02
_jmp_addr_0x005fa6af:    mov                dword ptr [ebx], esi                          // 0x005fa6af    8933
_jmp_addr_0x005fa6b1:    {disp32} mov       edx, dword ptr [data_bytes + 0x371cc4]        // 0x005fa6b1    8b15c47cd300
                         dec                edx                                           // 0x005fa6b7    4a
                         push               eax                                           // 0x005fa6b8    50
                         {disp32} mov       dword ptr [data_bytes + 0x371cc4], edx        // 0x005fa6b9    8915c47cd300
                         call               ??3@YAXPAX@Z                                  // 0x005fa6bf    e8d4471b00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x371cc0]        // 0x005fa6c4    8b0dc07cd300
                         add                esp, 0x04                                     // 0x005fa6ca    83c404
                         {disp8} jmp        _jmp_addr_0x005fa6d1                          // 0x005fa6cd    eb02
_jmp_addr_0x005fa6cf:    mov.s              ebx, eax                                      // 0x005fa6cf    8bd8
_jmp_addr_0x005fa6d1:    test               esi, esi                                      // 0x005fa6d1    85f6
                         mov.s              eax, esi                                      // 0x005fa6d3    8bc6
                         {disp8} jne        _jmp_addr_0x005fa69c                          // 0x005fa6d5    75c5
_jmp_addr_0x005fa6d7:    mov                eax, dword ptr [edi]                          // 0x005fa6d7    8b07
                         mov.s              ecx, edi                                      // 0x005fa6d9    8bcf
                         call               dword ptr [eax + 4]                           // 0x005fa6db    ff5004
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x371cc0]        // 0x005fa6de    8b0dc07cd300
                         mov.s              eax, ecx                                      // 0x005fa6e4    8bc1
                         test               eax, eax                                      // 0x005fa6e6    85c0
                         {disp8} je         _jmp_addr_0x005fa702                          // 0x005fa6e8    7418
_jmp_addr_0x005fa6ea:    cmp                dword ptr [eax + 0x04], edi                   // 0x005fa6ea    397804
                         mov                eax, dword ptr [eax]                          // 0x005fa6ed    8b00
                         {disp8} je         _jmp_addr_0x005fa6f7                          // 0x005fa6ef    7406
                         test               eax, eax                                      // 0x005fa6f1    85c0
                         {disp8} je         _jmp_addr_0x005fa702                          // 0x005fa6f3    740d
                         {disp8} jmp        _jmp_addr_0x005fa6ea                          // 0x005fa6f5    ebf3
_jmp_addr_0x005fa6f7:    test               eax, eax                                      // 0x005fa6f7    85c0
                         {disp8} je         _jmp_addr_0x005fa702                          // 0x005fa6f9    7407
                         {disp8} mov        edi, dword ptr [eax + 0x04]                   // 0x005fa6fb    8b7804
                         test               edi, edi                                      // 0x005fa6fe    85ff
                         {disp8} jne        _jmp_addr_0x005fa694                          // 0x005fa700    7592
_jmp_addr_0x005fa702:    pop                edi                                           // 0x005fa702    5f
                         pop                esi                                           // 0x005fa703    5e
                         pop                ebx                                           // 0x005fa704    5b
                         ret                                                              // 0x005fa705    c3
                         nop                                                              // 0x005fa706    90
                         nop                                                              // 0x005fa707    90
                         nop                                                              // 0x005fa708    90
                         nop                                                              // 0x005fa709    90
                         nop                                                              // 0x005fa70a    90
                         nop                                                              // 0x005fa70b    90
                         nop                                                              // 0x005fa70c    90
                         nop                                                              // 0x005fa70d    90
                         nop                                                              // 0x005fa70e    90
                         nop                                                              // 0x005fa70f    90
_globl_ct_0x005fa710:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x005fa710    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x005fa716    b001
                         test               al, cl                                        // 0x005fa718    84c8
                         {disp8} jne        _jmp_addr_0x005fa724                          // 0x005fa71a    7508
                         or.s               cl, al                                        // 0x005fa71c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x005fa71e    880d34c9fa00
_jmp_addr_0x005fa724:    {disp32} jmp       _jmp_addr_0x005fa730                          // 0x005fa724    e907000000
                         nop                                                              // 0x005fa729    90
                         nop                                                              // 0x005fa72a    90
                         nop                                                              // 0x005fa72b    90
                         nop                                                              // 0x005fa72c    90
                         nop                                                              // 0x005fa72d    90
                         nop                                                              // 0x005fa72e    90
                         nop                                                              // 0x005fa72f    90
_jmp_addr_0x005fa730:    push               0x00407870                                    // 0x005fa730    6870784000
                         call               _atexit                                       // 0x005fa735    e857b01c00
                         pop                ecx                                           // 0x005fa73a    59
                         ret                                                              // 0x005fa73b    c3
                         nop                                                              // 0x005fa73c    90
                         nop                                                              // 0x005fa73d    90
                         nop                                                              // 0x005fa73e    90
                         nop                                                              // 0x005fa73f    90
_globl_ct_0x005fa740:    {disp32} jmp       _jmp_addr_0x005fa750                          // 0x005fa740    e90b000000
                         nop                                                              // 0x005fa745    90
                         nop                                                              // 0x005fa746    90
                         nop                                                              // 0x005fa747    90
                         nop                                                              // 0x005fa748    90
                         nop                                                              // 0x005fa749    90
                         nop                                                              // 0x005fa74a    90
                         nop                                                              // 0x005fa74b    90
                         nop                                                              // 0x005fa74c    90
                         nop                                                              // 0x005fa74d    90
                         nop                                                              // 0x005fa74e    90
                         nop                                                              // 0x005fa74f    90
_jmp_addr_0x005fa750:    {disp32} fld       dword ptr [rdata_bytes + 0x82714]             // 0x005fa750    d90514b79200
                         {disp32} fmul      dword ptr [rdata_bytes + 0x82710]             // 0x005fa756    d80d10b79200
                         {disp32} fstp      dword ptr [data_bytes + 0x371cdc]             // 0x005fa75c    d91ddc7cd300
                         ret                                                              // 0x005fa762    c3
                         nop                                                              // 0x005fa763    90
                         nop                                                              // 0x005fa764    90
                         nop                                                              // 0x005fa765    90
                         nop                                                              // 0x005fa766    90
                         nop                                                              // 0x005fa767    90
                         nop                                                              // 0x005fa768    90
                         nop                                                              // 0x005fa769    90
                         nop                                                              // 0x005fa76a    90
                         nop                                                              // 0x005fa76b    90
                         nop                                                              // 0x005fa76c    90
                         nop                                                              // 0x005fa76d    90
                         nop                                                              // 0x005fa76e    90
                         nop                                                              // 0x005fa76f    90
_globl_ct_0x005fa770:    {disp32} jmp       _jmp_addr_0x005fa780                          // 0x005fa770    e90b000000
                         nop                                                              // 0x005fa775    90
                         nop                                                              // 0x005fa776    90
                         nop                                                              // 0x005fa777    90
                         nop                                                              // 0x005fa778    90
                         nop                                                              // 0x005fa779    90
                         nop                                                              // 0x005fa77a    90
                         nop                                                              // 0x005fa77b    90
                         nop                                                              // 0x005fa77c    90
                         nop                                                              // 0x005fa77d    90
                         nop                                                              // 0x005fa77e    90
                         nop                                                              // 0x005fa77f    90
_jmp_addr_0x005fa780:    {disp32} mov       dword ptr [data_bytes + 0x371cd8], 0xffffffff // 0x005fa780    c705d87cd300ffffffff
                         ret                                                              // 0x005fa78a    c3
                         call               ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                          // 0x005fa78b    e86970e0ff
                         push               esi                                           // 0x005fa790    56
                         push               0xd                                           // 0x005fa791    6a0d
                         push               0x00bf3db8                                    // 0x005fa793    68b83dbf00
                         push               0x000000f4                                    // 0x005fa798    68f4000000
                         mov.s              esi, ecx                                      // 0x005fa79d    8bf1
                         call               ?__nw@Base@@SAPAXK@Z                          // 0x005fa79f    e84cbfe3ff
                         add                esp, 0x0c                                     // 0x005fa7a4    83c40c
                         test               eax, eax                                      // 0x005fa7a7    85c0
                         {disp8} je         _jmp_addr_0x005fa7bf                          // 0x005fa7a9    7414
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x005fa7ab    8b542408
                         {disp8} mov        ecx, dword ptr [esi + 0x10]                   // 0x005fa7af    8b4e10
                         push               edx                                           // 0x005fa7b2    52
                         push               ecx                                           // 0x005fa7b3    51
                         mov.s              ecx, eax                                      // 0x005fa7b4    8bc8
                         call               _jmp_addr_0x00722270                          // 0x005fa7b6    e8b57a1200
                         pop                esi                                           // 0x005fa7bb    5e
                         ret                0x0004                                        // 0x005fa7bc    c20400
_jmp_addr_0x005fa7bf:    xor.s              eax, eax                                      // 0x005fa7bf    33c0
                         pop                esi                                           // 0x005fa7c1    5e
                         ret                0x0004                                        // 0x005fa7c2    c20400
                         nop                                                              // 0x005fa7c5    90
                         nop                                                              // 0x005fa7c6    90
                         nop                                                              // 0x005fa7c7    90
                         nop                                                              // 0x005fa7c8    90
                         nop                                                              // 0x005fa7c9    90
                         nop                                                              // 0x005fa7ca    90
                         nop                                                              // 0x005fa7cb    90
                         nop                                                              // 0x005fa7cc    90
                         nop                                                              // 0x005fa7cd    90
                         nop                                                              // 0x005fa7ce    90
                         nop                                                              // 0x005fa7cf    90
_jmp_addr_0x005fa7d0:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x005fa7d0    8b442404
                         {disp32} mov       eax, dword ptr [eax * 0x4 + 0x00d37d78]       // 0x005fa7d4    8b0485787dd300
                         ret                                                              // 0x005fa7db    c3
                         nop                                                              // 0x005fa7dc    90
                         nop                                                              // 0x005fa7dd    90
                         nop                                                              // 0x005fa7de    90
                         nop                                                              // 0x005fa7df    90
                         xor.s              eax, eax                                      // 0x005fa7e0    33c0
                         ret                0x0008                                        // 0x005fa7e2    c20800
                         nop                                                              // 0x005fa7e5    90
                         nop                                                              // 0x005fa7e6    90
                         nop                                                              // 0x005fa7e7    90
                         nop                                                              // 0x005fa7e8    90
                         nop                                                              // 0x005fa7e9    90
                         nop                                                              // 0x005fa7ea    90
                         nop                                                              // 0x005fa7eb    90
                         nop                                                              // 0x005fa7ec    90
                         nop                                                              // 0x005fa7ed    90
                         nop                                                              // 0x005fa7ee    90
                         nop                                                              // 0x005fa7ef    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x005fa7f0    8b442404
                         push               0x0                                           // 0x005fa7f4    6a00
                         push               0x009c8060                                    // 0x005fa7f6    6860809c00
                         push               0x009c7f50                                    // 0x005fa7fb    68507f9c00
                         push               0x0                                           // 0x005fa800    6a00
                         push               eax                                           // 0x005fa802    50
                         call               ___RTDynamicCast                              // 0x005fa803    e811b21c00
                         add                esp, 0x14                                     // 0x005fa808    83c414
                         test               eax, eax                                      // 0x005fa80b    85c0
                         {disp8} je         _jmp_addr_0x005fa826                          // 0x005fa80d    7417
                         {disp32} mov       ecx, dword ptr [eax + 0x00000370]             // 0x005fa80f    8b8870030000
                         call               _jmp_addr_0x004f5230                          // 0x005fa815    e816aaefff
                         test               al, al                                        // 0x005fa81a    84c0
                         {disp8} jne        _jmp_addr_0x005fa826                          // 0x005fa81c    7508
                         mov                eax, 0x00000001                               // 0x005fa81e    b801000000
                         ret                0x0008                                        // 0x005fa823    c20800
_jmp_addr_0x005fa826:    xor.s              eax, eax                                      // 0x005fa826    33c0
                         ret                0x0008                                        // 0x005fa828    c20800
                         call               ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                          // 0x005fa82b    e8c96fe0ff
                         mov.s              eax, ecx                                      // 0x005fa830    8bc1
                         ret                                                              // 0x005fa832    c3
                         nop                                                              // 0x005fa833    90
                         nop                                                              // 0x005fa834    90
                         nop                                                              // 0x005fa835    90
                         nop                                                              // 0x005fa836    90
                         nop                                                              // 0x005fa837    90
                         nop                                                              // 0x005fa838    90
                         nop                                                              // 0x005fa839    90
                         nop                                                              // 0x005fa83a    90
                         nop                                                              // 0x005fa83b    90
                         nop                                                              // 0x005fa83c    90
                         nop                                                              // 0x005fa83d    90
                         nop                                                              // 0x005fa83e    90
                         nop                                                              // 0x005fa83f    90
                         mov.s              eax, ecx                                      // 0x005fa840    8bc1
                         ret                                                              // 0x005fa842    c3
                         nop                                                              // 0x005fa843    90
                         nop                                                              // 0x005fa844    90
                         nop                                                              // 0x005fa845    90
                         nop                                                              // 0x005fa846    90
                         nop                                                              // 0x005fa847    90
                         nop                                                              // 0x005fa848    90
                         nop                                                              // 0x005fa849    90
                         nop                                                              // 0x005fa84a    90
                         nop                                                              // 0x005fa84b    90
                         nop                                                              // 0x005fa84c    90
                         nop                                                              // 0x005fa84d    90
                         nop                                                              // 0x005fa84e    90
                         nop                                                              // 0x005fa84f    90
_globl_ct_0x005fa850:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x005fa850    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x005fa856    b001
                         test               al, cl                                        // 0x005fa858    84c8
                         {disp8} jne        _jmp_addr_0x005fa864                          // 0x005fa85a    7508
                         or.s               cl, al                                        // 0x005fa85c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x005fa85e    880d34c9fa00
_jmp_addr_0x005fa864:    {disp32} jmp       _jmp_addr_0x005fa870                          // 0x005fa864    e907000000
                         nop                                                              // 0x005fa869    90
                         nop                                                              // 0x005fa86a    90
                         nop                                                              // 0x005fa86b    90
                         nop                                                              // 0x005fa86c    90
                         nop                                                              // 0x005fa86d    90
                         nop                                                              // 0x005fa86e    90
                         nop                                                              // 0x005fa86f    90
_jmp_addr_0x005fa870:    push               0x00407870                                    // 0x005fa870    6870784000
                         call               _atexit                                       // 0x005fa875    e817af1c00
                         pop                ecx                                           // 0x005fa87a    59
                         ret                                                              // 0x005fa87b    c3
                         nop                                                              // 0x005fa87c    90
                         nop                                                              // 0x005fa87d    90
                         nop                                                              // 0x005fa87e    90
                         nop                                                              // 0x005fa87f    90
_globl_ct_0x005fa880:    {disp32} jmp       _jmp_addr_0x005fa890                          // 0x005fa880    e90b000000
                         nop                                                              // 0x005fa885    90
                         nop                                                              // 0x005fa886    90
                         nop                                                              // 0x005fa887    90
                         nop                                                              // 0x005fa888    90
                         nop                                                              // 0x005fa889    90
                         nop                                                              // 0x005fa88a    90
                         nop                                                              // 0x005fa88b    90
                         nop                                                              // 0x005fa88c    90
                         nop                                                              // 0x005fa88d    90
                         nop                                                              // 0x005fa88e    90
                         nop                                                              // 0x005fa88f    90
_jmp_addr_0x005fa890:    {disp32} fld       dword ptr [rdata_bytes + 0x8271c]             // 0x005fa890    d9051cb79200
                         {disp32} fmul      dword ptr [rdata_bytes + 0x82718]             // 0x005fa896    d80d18b79200
                         {disp32} fstp      dword ptr [data_bytes + 0x371ce4]             // 0x005fa89c    d91de47cd300
                         ret                                                              // 0x005fa8a2    c3
                         nop                                                              // 0x005fa8a3    90
                         nop                                                              // 0x005fa8a4    90
                         nop                                                              // 0x005fa8a5    90
                         nop                                                              // 0x005fa8a6    90
                         nop                                                              // 0x005fa8a7    90
                         nop                                                              // 0x005fa8a8    90
                         nop                                                              // 0x005fa8a9    90
                         nop                                                              // 0x005fa8aa    90
                         nop                                                              // 0x005fa8ab    90
                         nop                                                              // 0x005fa8ac    90
                         nop                                                              // 0x005fa8ad    90
                         nop                                                              // 0x005fa8ae    90
                         nop                                                              // 0x005fa8af    90
_jmp_addr_0x005fa8b0:    {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x005fa8b0    8b4c240c
                         xor.s              eax, eax                                      // 0x005fa8b4    33c0
                         sub.s              ecx, eax                                      // 0x005fa8b6    2bc8
                         push               esi                                           // 0x005fa8b8    56
                         push               edi                                           // 0x005fa8b9    57
                         {disp8} je         _jmp_addr_0x005fa90a                          // 0x005fa8ba    744e
                         dec                ecx                                           // 0x005fa8bc    49
                         {disp8} jne        _jmp_addr_0x005fa907                          // 0x005fa8bd    7548
                         push               0x19                                          // 0x005fa8bf    6a19
                         push               0x00bf3de4                                    // 0x005fa8c1    68e43dbf00
                         push               0x000000b8                                    // 0x005fa8c6    68b8000000
                         call               ?__nw@Base@@SAPAXK@Z                          // 0x005fa8cb    e820bee3ff
                         add                esp, 0x0c                                     // 0x005fa8d0    83c40c
                         test               eax, eax                                      // 0x005fa8d3    85c0
                         {disp8} je         _jmp_addr_0x005fa941                          // 0x005fa8d5    746a
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x005fa8d7    8b4c241c
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x005fa8db    8b542418
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x005fa8df    8b7c240c
                         push               0x1                                           // 0x005fa8e3    6a01
                         push               ecx                                           // 0x005fa8e5    51
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x005fa8e6    8b4c2418
                         push               edx                                           // 0x005fa8ea    52
                         push               ecx                                           // 0x005fa8eb    51
                         push               edi                                           // 0x005fa8ec    57
                         mov.s              ecx, eax                                      // 0x005fa8ed    8bc8
                         call               _jmp_addr_0x00600e20                          // 0x005fa8ef    e82c650000
_jmp_addr_0x005fa8f4:    mov.s              esi, eax                                      // 0x005fa8f4    8bf0
                         test               esi, esi                                      // 0x005fa8f6    85f6
                         {disp8} je         _jmp_addr_0x005fa905                          // 0x005fa8f8    740b
                         mov                eax, dword ptr [esi]                          // 0x005fa8fa    8b06
                         push               edi                                           // 0x005fa8fc    57
                         mov.s              ecx, esi                                      // 0x005fa8fd    8bce
                         call               dword ptr [eax + 0x658]                       // 0x005fa8ff    ff9058060000
_jmp_addr_0x005fa905:    mov.s              eax, esi                                      // 0x005fa905    8bc6
_jmp_addr_0x005fa907:    pop                edi                                           // 0x005fa907    5f
                         pop                esi                                           // 0x005fa908    5e
                         ret                                                              // 0x005fa909    c3
_jmp_addr_0x005fa90a:    push               0x16                                          // 0x005fa90a    6a16
                         push               0x00bf3de4                                    // 0x005fa90c    68e43dbf00
                         push               0x000000c0                                    // 0x005fa911    68c0000000
                         call               ?__nw@Base@@SAPAXK@Z                          // 0x005fa916    e8d5bde3ff
                         add                esp, 0x0c                                     // 0x005fa91b    83c40c
                         test               eax, eax                                      // 0x005fa91e    85c0
                         {disp8} je         _jmp_addr_0x005fa941                          // 0x005fa920    741f
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x005fa922    8b54241c
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x005fa926    8b4c2418
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x005fa92a    8b7c240c
                         push               0x1                                           // 0x005fa92e    6a01
                         push               edx                                           // 0x005fa930    52
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x005fa931    8b542418
                         push               ecx                                           // 0x005fa935    51
                         push               edx                                           // 0x005fa936    52
                         push               edi                                           // 0x005fa937    57
                         mov.s              ecx, eax                                      // 0x005fa938    8bc8
                         call               _jmp_addr_0x005fa9f0                          // 0x005fa93a    e8b1000000
                         {disp8} jmp        _jmp_addr_0x005fa8f4                          // 0x005fa93f    ebb3
_jmp_addr_0x005fa941:    pop                edi                                           // 0x005fa941    5f
                         xor.s              eax, eax                                      // 0x005fa942    33c0
                         pop                esi                                           // 0x005fa944    5e
                         ret                                                              // 0x005fa945    c3
                         nop                                                              // 0x005fa946    90
                         nop                                                              // 0x005fa947    90
                         nop                                                              // 0x005fa948    90
                         nop                                                              // 0x005fa949    90
                         nop                                                              // 0x005fa94a    90
                         nop                                                              // 0x005fa94b    90
                         nop                                                              // 0x005fa94c    90
                         nop                                                              // 0x005fa94d    90
                         nop                                                              // 0x005fa94e    90
                         nop                                                              // 0x005fa94f    90
_jmp_addr_0x005fa950:    push               esi                                           // 0x005fa950    56
                         mov.s              esi, ecx                                      // 0x005fa951    8bf1
                         call               ??0PileFood@@QAE@XZ                           // 0x005fa953    e888360700
                         mov.s              ecx, esi                                      // 0x005fa958    8bce
                         mov                dword ptr [esi], 0x0092b724                   // 0x005fa95a    c70624b79200
                         call               _jmp_addr_0x005faa80                          // 0x005fa960    e81b010000
                         mov.s              eax, esi                                      // 0x005fa965    8bc6
                         pop                esi                                           // 0x005fa967    5e
                         ret                                                              // 0x005fa968    c3
                         nop                                                              // 0x005fa969    90
                         nop                                                              // 0x005fa96a    90
                         nop                                                              // 0x005fa96b    90
                         nop                                                              // 0x005fa96c    90
                         nop                                                              // 0x005fa96d    90
                         nop                                                              // 0x005fa96e    90
                         nop                                                              // 0x005fa96f    90
?SetPlayer@MagicFood@@UAEXPAVGPlayer@@@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x005fa970    8b442404
                         {disp32} mov       dword ptr [ecx + 0x000000bc], eax             // 0x005fa974    8981bc000000
                         ret                0x0004                                        // 0x005fa97a    c20400
                         nop                                                              // 0x005fa97d    90
                         nop                                                              // 0x005fa97e    90
                         nop                                                              // 0x005fa97f    90
?GetPlayer@MagicFood@@UAEPAVGPlayer@@XZ:
                         {disp32} mov       eax, dword ptr [ecx + 0x000000bc]             // 0x005fa980    8b81bc000000
                         ret                                                              // 0x005fa986    c3
                         nop                                                              // 0x005fa987    90
                         nop                                                              // 0x005fa988    90
                         nop                                                              // 0x005fa989    90
                         nop                                                              // 0x005fa98a    90
                         nop                                                              // 0x005fa98b    90
                         nop                                                              // 0x005fa98c    90
                         nop                                                              // 0x005fa98d    90
                         nop                                                              // 0x005fa98e    90
                         nop                                                              // 0x005fa98f    90
?GetImpressiveType@MagicFood@@UAE?AW4IMPRESSIVE_TYPE@@XZ:
                         mov                eax, 0x00000010                               // 0x005fa990    b810000000
                         ret                                                              // 0x005fa995    c3
                         nop                                                              // 0x005fa996    90
                         nop                                                              // 0x005fa997    90
                         nop                                                              // 0x005fa998    90
                         nop                                                              // 0x005fa999    90
                         nop                                                              // 0x005fa99a    90
                         nop                                                              // 0x005fa99b    90
                         nop                                                              // 0x005fa99c    90
                         nop                                                              // 0x005fa99d    90
                         nop                                                              // 0x005fa99e    90
                         nop                                                              // 0x005fa99f    90
?GetSaveType@MagicFood@@UAEIXZ:
                         mov                eax, 0x0000001e                               // 0x005fa9a0    b81e000000
                         ret                                                              // 0x005fa9a5    c3
                         nop                                                              // 0x005fa9a6    90
                         nop                                                              // 0x005fa9a7    90
                         nop                                                              // 0x005fa9a8    90
                         nop                                                              // 0x005fa9a9    90
                         nop                                                              // 0x005fa9aa    90
                         nop                                                              // 0x005fa9ab    90
                         nop                                                              // 0x005fa9ac    90
                         nop                                                              // 0x005fa9ad    90
                         nop                                                              // 0x005fa9ae    90
                         nop                                                              // 0x005fa9af    90
?GetDebugText@MagicFood@@UAEPADXZ:
                         mov                eax, 0x00bf3e04                               // 0x005fa9b0    b8043ebf00
                         ret                                                              // 0x005fa9b5    c3
                         nop                                                              // 0x005fa9b6    90
                         nop                                                              // 0x005fa9b7    90
                         nop                                                              // 0x005fa9b8    90
                         nop                                                              // 0x005fa9b9    90
                         nop                                                              // 0x005fa9ba    90
                         nop                                                              // 0x005fa9bb    90
                         nop                                                              // 0x005fa9bc    90
                         nop                                                              // 0x005fa9bd    90
                         nop                                                              // 0x005fa9be    90
                         nop                                                              // 0x005fa9bf    90
??_GMagicFood@@UAEPAXI@Z:
                         push               esi                                           // 0x005fa9c0    56
                         mov.s              esi, ecx                                      // 0x005fa9c1    8bf1
                         call               _jmp_addr_0x005faa70                          // 0x005fa9c3    e8a8000000
                         test               byte ptr [esp + 0x08], 0x01                   // 0x005fa9c8    f644240801
                         {disp8} je         _jmp_addr_0x005fa9dd                          // 0x005fa9cd    740e
                         push               0x000000c0                                    // 0x005fa9cf    68c0000000
                         push               esi                                           // 0x005fa9d4    56
                         call               ??3Base@@SAXPAXK@Z                          // 0x005fa9d5    e896bfe3ff
                         add                esp, 0x08                                     // 0x005fa9da    83c408
_jmp_addr_0x005fa9dd:    mov.s              eax, esi                                      // 0x005fa9dd    8bc6
                         pop                esi                                           // 0x005fa9df    5e
                         ret                0x0004                                        // 0x005fa9e0    c20400
                         nop                                                              // 0x005fa9e3    90
                         nop                                                              // 0x005fa9e4    90
                         nop                                                              // 0x005fa9e5    90
                         nop                                                              // 0x005fa9e6    90
                         nop                                                              // 0x005fa9e7    90
                         nop                                                              // 0x005fa9e8    90
                         nop                                                              // 0x005fa9e9    90
                         nop                                                              // 0x005fa9ea    90
                         nop                                                              // 0x005fa9eb    90
                         nop                                                              // 0x005fa9ec    90
                         nop                                                              // 0x005fa9ed    90
                         nop                                                              // 0x005fa9ee    90
                         nop                                                              // 0x005fa9ef    90
_jmp_addr_0x005fa9f0:    {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x005fa9f0    8b442414
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x005fa9f4    8b54240c
                         push               esi                                           // 0x005fa9f8    56
                         push               0x3f800000                                    // 0x005fa9f9    680000803f
                         push               0x0                                           // 0x005fa9fe    6a00
                         push               eax                                           // 0x005faa00    50
                         mov.s              esi, ecx                                      // 0x005faa01    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x005faa03    8b4c2420
                         push               0x0                                           // 0x005faa07    6a00
                         push               ecx                                           // 0x005faa09    51
                         push               edx                                           // 0x005faa0a    52
                         call               _jmp_addr_0x005faa90                          // 0x005faa0b    e880000000
                         push               eax                                           // 0x005faa10    50
                         {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x005faa11    8b442424
                         push               eax                                           // 0x005faa15    50
                         mov.s              ecx, esi                                      // 0x005faa16    8bce
                         call               @__ct__8PileFoodFRC9MapCoordsPC8GPotInfoUlP13MultiMapFixedP4Towniff@40                          // 0x005faa18    e853360700
                         mov.s              ecx, esi                                      // 0x005faa1d    8bce
                         mov                dword ptr [esi], 0x0092b724                   // 0x005faa1f    c70624b79200
                         call               _jmp_addr_0x005faa80                          // 0x005faa25    e856000000
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x005faa2a    8b44240c
                         test               eax, eax                                      // 0x005faa2e    85c0
                         {disp8} jne        _jmp_addr_0x005faa4e                          // 0x005faa30    751c
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x005faa32    8b0d5c19d000
                         {disp32} mov       al, byte ptr [ecx + 0x00205a5b]               // 0x005faa38    8a815b5a2000
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x005faa3e    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x005faa41    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x005faa44    8d0450
                         shl                eax, 5                                        // 0x005faa47    c1e005
                         {disp8} lea        eax, dword ptr [eax + ecx * 0x1 + 0x18]       // 0x005faa4a    8d440818
_jmp_addr_0x005faa4e:    mov.s              ecx, esi                                      // 0x005faa4e    8bce
                         {disp32} mov       dword ptr [esi + 0x000000bc], eax             // 0x005faa50    8986bc000000
                         call               _jmp_addr_0x005faae0                          // 0x005faa56    e885000000
                         push               ecx                                           // 0x005faa5b    51
                         mov.s              ecx, esi                                      // 0x005faa5c    8bce
                         fstp               dword ptr [esp]                               // 0x005faa5e    d91c24
                         call               @SetScale__6ObjectFf@12                       // 0x005faa61    e89ae70300
                         mov.s              eax, esi                                      // 0x005faa66    8bc6
                         pop                esi                                           // 0x005faa68    5e
                         ret                0x0014                                        // 0x005faa69    c21400
                         nop                                                              // 0x005faa6c    90
                         nop                                                              // 0x005faa6d    90
                         nop                                                              // 0x005faa6e    90
                         nop                                                              // 0x005faa6f    90
_jmp_addr_0x005faa70:    mov                dword ptr [ecx], 0x0092b724                   // 0x005faa70    c70124b79200
                         {disp32} jmp       _jmp_addr_0x0066e0e0                          // 0x005faa76    e965360700
                         nop                                                              // 0x005faa7b    90
                         nop                                                              // 0x005faa7c    90
                         nop                                                              // 0x005faa7d    90
                         nop                                                              // 0x005faa7e    90
                         nop                                                              // 0x005faa7f    90
_jmp_addr_0x005faa80:    {disp32} mov       dword ptr [ecx + 0x000000bc], 0x00000000      // 0x005faa80    c781bc00000000000000
                         ret                                                              // 0x005faa8a    c3
                         call               ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                          // 0x005faa8b    e8696de0ff
_jmp_addr_0x005faa90:    mov                eax, 0x00d4d308                               // 0x005faa90    b808d3d400
                         ret                                                              // 0x005faa95    c3
                         nop                                                              // 0x005faa96    90
                         nop                                                              // 0x005faa97    90
                         nop                                                              // 0x005faa98    90
                         nop                                                              // 0x005faa99    90
                         nop                                                              // 0x005faa9a    90
                         nop                                                              // 0x005faa9b    90
                         nop                                                              // 0x005faa9c    90
                         nop                                                              // 0x005faa9d    90
                         nop                                                              // 0x005faa9e    90
                         nop                                                              // 0x005faa9f    90
                         {disp32} mov       eax, dword ptr [data_bytes + 0x371d48]        // 0x005faaa0    a1487dd300
                         ret                                                              // 0x005faaa5    c3
                         nop                                                              // 0x005faaa6    90
                         nop                                                              // 0x005faaa7    90
                         nop                                                              // 0x005faaa8    90
                         nop                                                              // 0x005faaa9    90
                         nop                                                              // 0x005faaaa    90
                         nop                                                              // 0x005faaab    90
                         nop                                                              // 0x005faaac    90
                         nop                                                              // 0x005faaad    90
                         nop                                                              // 0x005faaae    90
                         nop                                                              // 0x005faaaf    90
?CallVirtualFunctionsForCreation@MagicFood@@UAEXABUMapCoords@@@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x005faab0    8b442404
                         push               esi                                           // 0x005faab4    56
                         mov.s              esi, ecx                                      // 0x005faab5    8bf1
                         push               eax                                           // 0x005faab7    50
                         call               ?CallVirtualFunctionsForCreation@PileFood@@UAEXABUMapCoords@@@Z                          // 0x005faab8    e8e3360700
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x005faabd    8b4e40
                         test               ecx, ecx                                      // 0x005faac0    85c9
                         {disp8} je         _jmp_addr_0x005faad8                          // 0x005faac2    7414
                         mov                eax, dword ptr [ecx]                          // 0x005faac4    8b01
                         xor.s              edx, edx                                      // 0x005faac6    33d2
                         call               dword ptr [eax + 0x78]                        // 0x005faac8    ff5078
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x005faacb    8b4e40
                         mov                eax, dword ptr [ecx]                          // 0x005faace    8b01
                         xor.s              edx, edx                                      // 0x005faad0    33d2
                         call               dword ptr [eax + 0x80]                        // 0x005faad2    ff9080000000
_jmp_addr_0x005faad8:    pop                esi                                           // 0x005faad8    5e
                         ret                0x0004                                        // 0x005faad9    c20400
                         nop                                                              // 0x005faadc    90
                         nop                                                              // 0x005faadd    90
                         nop                                                              // 0x005faade    90
                         nop                                                              // 0x005faadf    90
_jmp_addr_0x005faae0:    {disp32} fld       dword ptr [__real@3e999999]                   // 0x005faae0    d9053cb28a00
                         ret                                                              // 0x005faae6    c3
                         nop                                                              // 0x005faae7    90
                         nop                                                              // 0x005faae8    90
                         nop                                                              // 0x005faae9    90
                         nop                                                              // 0x005faaea    90
                         nop                                                              // 0x005faaeb    90
                         nop                                                              // 0x005faaec    90
                         nop                                                              // 0x005faaed    90
                         nop                                                              // 0x005faaee    90
                         nop                                                              // 0x005faaef    90
                         {disp8} mov        eax, dword ptr [ecx + 0x70]                   // 0x005faaf0    8b4170
                         ret                                                              // 0x005faaf3    c3
                         nop                                                              // 0x005faaf4    90
                         nop                                                              // 0x005faaf5    90
                         nop                                                              // 0x005faaf6    90
                         nop                                                              // 0x005faaf7    90
                         nop                                                              // 0x005faaf8    90
                         nop                                                              // 0x005faaf9    90
                         nop                                                              // 0x005faafa    90
                         nop                                                              // 0x005faafb    90
                         nop                                                              // 0x005faafc    90
                         nop                                                              // 0x005faafd    90
                         nop                                                              // 0x005faafe    90
                         nop                                                              // 0x005faaff    90
?Save@MagicFood@@UAEIAAVGameOSFile@@@Z:
                         push               esi                                           // 0x005fab00    56
                         push               edi                                           // 0x005fab01    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x005fab02    8b7c240c
                         mov.s              esi, ecx                                      // 0x005fab06    8bf1
                         push               edi                                           // 0x005fab08    57
                         call               ?Save@PileFood@@UAEIAAVGameOSFile@@@Z         // 0x005fab09    e8924a0700
                         test               eax, eax                                      // 0x005fab0e    85c0
                         {disp8} je         _jmp_addr_0x005fab2a                          // 0x005fab10    7418
                         {disp32} mov       eax, dword ptr [esi + 0x000000bc]             // 0x005fab12    8b86bc000000
                         push               eax                                           // 0x005fab18    50
                         mov.s              ecx, edi                                      // 0x005fab19    8bcf
                         call               ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x005fab1b    e8f072f6ff
                         pop                edi                                           // 0x005fab20    5f
                         mov                eax, 0x00000001                               // 0x005fab21    b801000000
                         pop                esi                                           // 0x005fab26    5e
                         ret                0x0004                                        // 0x005fab27    c20400
_jmp_addr_0x005fab2a:    pop                edi                                           // 0x005fab2a    5f
                         xor.s              eax, eax                                      // 0x005fab2b    33c0
                         pop                esi                                           // 0x005fab2d    5e
                         ret                0x0004                                        // 0x005fab2e    c20400
                         nop                                                              // 0x005fab31    90
                         nop                                                              // 0x005fab32    90
                         nop                                                              // 0x005fab33    90
                         nop                                                              // 0x005fab34    90
                         nop                                                              // 0x005fab35    90
                         nop                                                              // 0x005fab36    90
                         nop                                                              // 0x005fab37    90
                         nop                                                              // 0x005fab38    90
                         nop                                                              // 0x005fab39    90
                         nop                                                              // 0x005fab3a    90
                         nop                                                              // 0x005fab3b    90
                         nop                                                              // 0x005fab3c    90
                         nop                                                              // 0x005fab3d    90
                         nop                                                              // 0x005fab3e    90
                         nop                                                              // 0x005fab3f    90
?Load@MagicFood@@UAEIAAVGameOSFile@@@Z:
                         push               esi                                           // 0x005fab40    56
                         push               edi                                           // 0x005fab41    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x005fab42    8b7c240c
                         mov.s              esi, ecx                                      // 0x005fab46    8bf1
                         push               edi                                           // 0x005fab48    57
                         call               ?Load@PileFood@@UAEIAAVGameOSFile@@@Z         // 0x005fab49    e8924a0700
                         test               eax, eax                                      // 0x005fab4e    85c0
                         {disp8} je         _jmp_addr_0x005fab6a                          // 0x005fab50    7418
                         add                esi, 0x000000bc                               // 0x005fab52    81c6bc000000
                         push               esi                                           // 0x005fab58    56
                         mov.s              ecx, edi                                      // 0x005fab59    8bcf
                         call               @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x005fab5b    e82076f6ff
                         pop                edi                                           // 0x005fab60    5f
                         mov                eax, 0x00000001                               // 0x005fab61    b801000000
                         pop                esi                                           // 0x005fab66    5e
                         ret                0x0004                                        // 0x005fab67    c20400
_jmp_addr_0x005fab6a:    pop                edi                                           // 0x005fab6a    5f
                         xor.s              eax, eax                                      // 0x005fab6b    33c0
                         pop                esi                                           // 0x005fab6d    5e
                         ret                0x0004                                        // 0x005fab6e    c20400
                         nop                                                              // 0x005fab71    90
                         nop                                                              // 0x005fab72    90
                         nop                                                              // 0x005fab73    90
                         nop                                                              // 0x005fab74    90
                         nop                                                              // 0x005fab75    90
                         nop                                                              // 0x005fab76    90
                         nop                                                              // 0x005fab77    90
                         nop                                                              // 0x005fab78    90
                         nop                                                              // 0x005fab79    90
                         nop                                                              // 0x005fab7a    90
                         nop                                                              // 0x005fab7b    90
                         nop                                                              // 0x005fab7c    90
                         nop                                                              // 0x005fab7d    90
                         nop                                                              // 0x005fab7e    90
                         nop                                                              // 0x005fab7f    90
_globl_ct_0x005fab80:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x005fab80    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x005fab86    b001
                         test               al, cl                                        // 0x005fab88    84c8
                         {disp8} jne        _jmp_addr_0x005fab94                          // 0x005fab8a    7508
                         or.s               cl, al                                        // 0x005fab8c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x005fab8e    880d34c9fa00
_jmp_addr_0x005fab94:    {disp32} jmp       _jmp_addr_0x005faba0                          // 0x005fab94    e907000000
                         nop                                                              // 0x005fab99    90
                         nop                                                              // 0x005fab9a    90
                         nop                                                              // 0x005fab9b    90
                         nop                                                              // 0x005fab9c    90
                         nop                                                              // 0x005fab9d    90
                         nop                                                              // 0x005fab9e    90
                         nop                                                              // 0x005fab9f    90
_jmp_addr_0x005faba0:    push               0x00407870                                    // 0x005faba0    6870784000
                         call               _atexit                                       // 0x005faba5    e8e7ab1c00
                         pop                ecx                                           // 0x005fabaa    59
                         ret                                                              // 0x005fabab    c3
                         nop                                                              // 0x005fabac    90
                         nop                                                              // 0x005fabad    90
                         nop                                                              // 0x005fabae    90
                         nop                                                              // 0x005fabaf    90
_globl_ct_0x005fabb0:    {disp32} jmp       _jmp_addr_0x005fabc0                          // 0x005fabb0    e90b000000
                         nop                                                              // 0x005fabb5    90
                         nop                                                              // 0x005fabb6    90
                         nop                                                              // 0x005fabb7    90
                         nop                                                              // 0x005fabb8    90
                         nop                                                              // 0x005fabb9    90
                         nop                                                              // 0x005fabba    90
                         nop                                                              // 0x005fabbb    90
                         nop                                                              // 0x005fabbc    90
                         nop                                                              // 0x005fabbd    90
                         nop                                                              // 0x005fabbe    90
                         nop                                                              // 0x005fabbf    90
_jmp_addr_0x005fabc0:    {disp32} mov       dword ptr [data_bytes + 0x371cec], 0x3e000000 // 0x005fabc0    c705ec7cd3000000003e
                         ret                                                              // 0x005fabca    c3
                         call               ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                          // 0x005fabcb    e8296ce0ff
_globl_ct_0x005fabd0:    {disp32} jmp       _jmp_addr_0x005fabe0                          // 0x005fabd0    e90b000000
                         nop                                                              // 0x005fabd5    90
                         nop                                                              // 0x005fabd6    90
                         nop                                                              // 0x005fabd7    90
                         nop                                                              // 0x005fabd8    90
                         nop                                                              // 0x005fabd9    90
                         nop                                                              // 0x005fabda    90
                         nop                                                              // 0x005fabdb    90
                         nop                                                              // 0x005fabdc    90
                         nop                                                              // 0x005fabdd    90
                         nop                                                              // 0x005fabde    90
                         nop                                                              // 0x005fabdf    90
_jmp_addr_0x005fabe0:    {disp32} fld       dword ptr [rdata_bytes + 0x82f9c]             // 0x005fabe0    d9059cbf9200
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x005fabe6    d80db4a38a00
                         {disp32} fstp      dword ptr [data_bytes + 0x371cf0]             // 0x005fabec    d91df07cd300
                         ret                                                              // 0x005fabf2    c3
                         nop                                                              // 0x005fabf3    90
                         nop                                                              // 0x005fabf4    90
                         nop                                                              // 0x005fabf5    90
                         nop                                                              // 0x005fabf6    90
                         nop                                                              // 0x005fabf7    90
                         nop                                                              // 0x005fabf8    90
                         nop                                                              // 0x005fabf9    90
                         nop                                                              // 0x005fabfa    90
                         nop                                                              // 0x005fabfb    90
                         nop                                                              // 0x005fabfc    90
                         nop                                                              // 0x005fabfd    90
                         nop                                                              // 0x005fabfe    90
                         nop                                                              // 0x005fabff    90
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x005fac00    8b442408
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x005fac04    8b542404
                         push               eax                                           // 0x005fac08    50
                         add                edx, 0x14                                     // 0x005fac09    83c214
                         push               edx                                           // 0x005fac0c    52
                         call               _jmp_addr_0x005fba00                          // 0x005fac0d    e8ee0d0000
                         ret                0x0008                                        // 0x005fac12    c20800
                         nop                                                              // 0x005fac15    90
                         nop                                                              // 0x005fac16    90
                         nop                                                              // 0x005fac17    90
                         nop                                                              // 0x005fac18    90
                         nop                                                              // 0x005fac19    90
                         nop                                                              // 0x005fac1a    90
                         nop                                                              // 0x005fac1b    90
                         nop                                                              // 0x005fac1c    90
                         nop                                                              // 0x005fac1d    90
                         nop                                                              // 0x005fac1e    90
                         nop                                                              // 0x005fac1f    90
                         push               esi                                           // 0x005fac20    56
                         push               edi                                           // 0x005fac21    57
                         push               0x15                                          // 0x005fac22    6a15
                         push               0x00bf3e10                                    // 0x005fac24    68103ebf00
                         push               0x000000f0                                    // 0x005fac29    68f0000000
                         mov.s              edi, ecx                                      // 0x005fac2e    8bf9
                         call               ?__nw@Base@@SAPAXK@Z                          // 0x005fac30    e8bbbae3ff
                         mov.s              esi, eax                                      // 0x005fac35    8bf0
                         add                esp, 0x0c                                     // 0x005fac37    83c40c
                         test               esi, esi                                      // 0x005fac3a    85f6
                         {disp8} je         _jmp_addr_0x005fac62                          // 0x005fac3c    7424
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x005fac3e    8b44240c
                         {disp8} mov        ecx, dword ptr [edi + 0x10]                   // 0x005fac42    8b4f10
                         push               eax                                           // 0x005fac45    50
                         push               ecx                                           // 0x005fac46    51
                         mov.s              ecx, esi                                      // 0x005fac47    8bce
                         call               @__ct__5SpellF10MAGIC_TYPEP9GameThing@16      // 0x005fac49    e8f24e1200
                         mov.s              ecx, esi                                      // 0x005fac4e    8bce
                         mov                dword ptr [esi], 0x008f6ad8                   // 0x005fac50    c706d86a8f00
                         call               _jmp_addr_0x00724c80                          // 0x005fac56    e825a01200
                         pop                edi                                           // 0x005fac5b    5f
                         mov.s              eax, esi                                      // 0x005fac5c    8bc6
                         pop                esi                                           // 0x005fac5e    5e
                         ret                0x0004                                        // 0x005fac5f    c20400
_jmp_addr_0x005fac62:    pop                edi                                           // 0x005fac62    5f
                         xor.s              eax, eax                                      // 0x005fac63    33c0
                         pop                esi                                           // 0x005fac65    5e
                         ret                0x0004                                        // 0x005fac66    c20400
                         nop                                                              // 0x005fac69    90
                         nop                                                              // 0x005fac6a    90
                         nop                                                              // 0x005fac6b    90
                         nop                                                              // 0x005fac6c    90
                         nop                                                              // 0x005fac6d    90
                         nop                                                              // 0x005fac6e    90
                         nop                                                              // 0x005fac6f    90
                         push               esi                                           // 0x005fac70    56
                         push               edi                                           // 0x005fac71    57
                         push               0x1d                                          // 0x005fac72    6a1d
                         push               0x00bf3e10                                    // 0x005fac74    68103ebf00
                         push               0x000000f4                                    // 0x005fac79    68f4000000
                         mov.s              edi, ecx                                      // 0x005fac7e    8bf9
                         call               ?__nw@Base@@SAPAXK@Z                          // 0x005fac80    e86bbae3ff
                         mov.s              esi, eax                                      // 0x005fac85    8bf0
                         add                esp, 0x0c                                     // 0x005fac87    83c40c
                         test               esi, esi                                      // 0x005fac8a    85f6
                         {disp8} je         _jmp_addr_0x005facb2                          // 0x005fac8c    7424
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x005fac8e    8b44240c
                         {disp8} mov        ecx, dword ptr [edi + 0x10]                   // 0x005fac92    8b4f10
                         push               eax                                           // 0x005fac95    50
                         push               ecx                                           // 0x005fac96    51
                         mov.s              ecx, esi                                      // 0x005fac97    8bce
                         call               @__ct__5SpellF10MAGIC_TYPEP9GameThing@16      // 0x005fac99    e8a24e1200
                         mov.s              ecx, esi                                      // 0x005fac9e    8bce
                         mov                dword ptr [esi], 0x008f553c                   // 0x005faca0    c7063c558f00
                         call               _jmp_addr_0x00724ec0                          // 0x005faca6    e815a21200
                         pop                edi                                           // 0x005facab    5f
                         mov.s              eax, esi                                      // 0x005facac    8bc6
                         pop                esi                                           // 0x005facae    5e
                         ret                0x0004                                        // 0x005facaf    c20400
_jmp_addr_0x005facb2:    pop                edi                                           // 0x005facb2    5f
                         xor.s              eax, eax                                      // 0x005facb3    33c0
                         pop                esi                                           // 0x005facb5    5e
                         ret                0x0004                                        // 0x005facb6    c20400
                         nop                                                              // 0x005facb9    90
                         nop                                                              // 0x005facba    90
                         nop                                                              // 0x005facbb    90
                         nop                                                              // 0x005facbc    90
                         nop                                                              // 0x005facbd    90
                         nop                                                              // 0x005facbe    90
                         nop                                                              // 0x005facbf    90
_jmp_addr_0x005facc0:    {disp8} mov        eax, dword ptr [ecx + 0x10]                   // 0x005facc0    8b4110
                         sub                eax, 0x16                                     // 0x005facc3    83e816
                         {disp8} je         _jmp_addr_0x005facd9                          // 0x005facc6    7411
                         dec                eax                                           // 0x005facc8    48
                         {disp8} je         _jmp_addr_0x005facd2                          // 0x005facc9    7407
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x005faccb    d90590a38a00
                         ret                                                              // 0x005facd1    c3
_jmp_addr_0x005facd2:    {disp32} fld       dword ptr [rdata_bytes + 0x82fa4]             // 0x005facd2    d905a4bf9200
                         ret                                                              // 0x005facd8    c3
_jmp_addr_0x005facd9:    {disp32} fld       dword ptr [rdata_bytes + 0x82fa0]             // 0x005facd9    d905a0bf9200
                         ret                                                              // 0x005facdf    c3
_jmp_addr_0x005face0:    {disp8} mov        eax, dword ptr [ecx + 0x10]                   // 0x005face0    8b4110
                         sub                eax, 0x16                                     // 0x005face3    83e816
                         {disp8} je         _jmp_addr_0x005facf9                          // 0x005face6    7411
                         dec                eax                                           // 0x005face8    48
                         {disp8} je         _jmp_addr_0x005facf2                          // 0x005face9    7407
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x005faceb    d90590a38a00
                         ret                                                              // 0x005facf1    c3
_jmp_addr_0x005facf2:    {disp32} fld       dword ptr [rdata_bytes + 0x82fac]             // 0x005facf2    d905acbf9200
                         ret                                                              // 0x005facf8    c3
_jmp_addr_0x005facf9:    {disp32} fld       dword ptr [rdata_bytes + 0x82fa8]             // 0x005facf9    d905a8bf9200
                         ret                                                              // 0x005facff    c3
_jmp_addr_0x005fad00:    {disp32} fld       dword ptr [rdata_bytes + 0x82fb0]             // 0x005fad00    d905b0bf9200
                         ret                                                              // 0x005fad06    c3
                         nop                                                              // 0x005fad07    90
                         nop                                                              // 0x005fad08    90
                         nop                                                              // 0x005fad09    90
                         nop                                                              // 0x005fad0a    90
                         nop                                                              // 0x005fad0b    90
                         nop                                                              // 0x005fad0c    90
                         nop                                                              // 0x005fad0d    90
                         nop                                                              // 0x005fad0e    90
                         nop                                                              // 0x005fad0f    90
_globl_ct_0x005fad10:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x005fad10    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x005fad16    b001
                         test               al, cl                                        // 0x005fad18    84c8
                         {disp8} jne        _jmp_addr_0x005fad24                          // 0x005fad1a    7508
                         or.s               cl, al                                        // 0x005fad1c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x005fad1e    880d34c9fa00
_jmp_addr_0x005fad24:    {disp32} jmp       _jmp_addr_0x005fad30                          // 0x005fad24    e907000000
                         nop                                                              // 0x005fad29    90
                         nop                                                              // 0x005fad2a    90
                         nop                                                              // 0x005fad2b    90
                         nop                                                              // 0x005fad2c    90
                         nop                                                              // 0x005fad2d    90
                         nop                                                              // 0x005fad2e    90
                         nop                                                              // 0x005fad2f    90
_jmp_addr_0x005fad30:    push               0x00407870                                    // 0x005fad30    6870784000
                         call               _atexit                                       // 0x005fad35    e857aa1c00
                         pop                ecx                                           // 0x005fad3a    59
                         ret                                                              // 0x005fad3b    c3
                         nop                                                              // 0x005fad3c    90
                         nop                                                              // 0x005fad3d    90
                         nop                                                              // 0x005fad3e    90
                         nop                                                              // 0x005fad3f    90
_globl_ct_0x005fad40:    {disp32} jmp       _jmp_addr_0x005fad50                          // 0x005fad40    e90b000000
                         nop                                                              // 0x005fad45    90
                         nop                                                              // 0x005fad46    90
                         nop                                                              // 0x005fad47    90
                         nop                                                              // 0x005fad48    90
                         nop                                                              // 0x005fad49    90
                         nop                                                              // 0x005fad4a    90
                         nop                                                              // 0x005fad4b    90
                         nop                                                              // 0x005fad4c    90
                         nop                                                              // 0x005fad4d    90
                         nop                                                              // 0x005fad4e    90
                         nop                                                              // 0x005fad4f    90
_jmp_addr_0x005fad50:    {disp32} mov       dword ptr [data_bytes + 0x371d00], 0x3e000000 // 0x005fad50    c705007dd3000000003e
                         ret                                                              // 0x005fad5a    c3
                         call               ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                          // 0x005fad5b    e8996ae0ff
_globl_ct_0x005fad60:    {disp32} jmp       _jmp_addr_0x005fad70                          // 0x005fad60    e90b000000
                         nop                                                              // 0x005fad65    90
                         nop                                                              // 0x005fad66    90
                         nop                                                              // 0x005fad67    90
                         nop                                                              // 0x005fad68    90
                         nop                                                              // 0x005fad69    90
                         nop                                                              // 0x005fad6a    90
                         nop                                                              // 0x005fad6b    90
                         nop                                                              // 0x005fad6c    90
                         nop                                                              // 0x005fad6d    90
                         nop                                                              // 0x005fad6e    90
                         nop                                                              // 0x005fad6f    90
_jmp_addr_0x005fad70:    {disp32} fld       dword ptr [rdata_bytes + 0x82fb8]             // 0x005fad70    d905b8bf9200
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x005fad76    d80db4a38a00
                         {disp32} fstp      dword ptr [data_bytes + 0x371d04]             // 0x005fad7c    d91d047dd300
                         ret                                                              // 0x005fad82    c3
                         nop                                                              // 0x005fad83    90
                         nop                                                              // 0x005fad84    90
                         nop                                                              // 0x005fad85    90
                         nop                                                              // 0x005fad86    90
                         nop                                                              // 0x005fad87    90
                         nop                                                              // 0x005fad88    90
                         nop                                                              // 0x005fad89    90
                         nop                                                              // 0x005fad8a    90
                         nop                                                              // 0x005fad8b    90
                         nop                                                              // 0x005fad8c    90
                         nop                                                              // 0x005fad8d    90
                         nop                                                              // 0x005fad8e    90
                         nop                                                              // 0x005fad8f    90
                         push               esi                                           // 0x005fad90    56
                         push               edi                                           // 0x005fad91    57
                         push               0xe                                           // 0x005fad92    6a0e
                         push               0x00bf3e34                                    // 0x005fad94    68343ebf00
                         push               0x000000f8                                    // 0x005fad99    68f8000000
                         mov.s              edi, ecx                                      // 0x005fad9e    8bf9
                         call               ?__nw@Base@@SAPAXK@Z                          // 0x005fada0    e84bb9e3ff
                         mov.s              esi, eax                                      // 0x005fada5    8bf0
                         add                esp, 0x0c                                     // 0x005fada7    83c40c
                         test               esi, esi                                      // 0x005fadaa    85f6
                         {disp8} je         _jmp_addr_0x005faddc                          // 0x005fadac    742e
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x005fadae    8b44240c
                         {disp8} mov        ecx, dword ptr [edi + 0x10]                   // 0x005fadb2    8b4f10
                         push               eax                                           // 0x005fadb5    50
                         push               ecx                                           // 0x005fadb6    51
                         mov.s              ecx, esi                                      // 0x005fadb7    8bce
                         call               @__ct__5SpellF10MAGIC_TYPEP9GameThing@16      // 0x005fadb9    e8824d1200
                         {disp32} mov       dword ptr [esi + 0x000000ec], 0x00000000      // 0x005fadbe    c786ec00000000000000
                         mov.s              ecx, esi                                      // 0x005fadc8    8bce
                         mov                dword ptr [esi], 0x008f4fe4                   // 0x005fadca    c706e44f8f00
                         call               _jmp_addr_0x007254f0                          // 0x005fadd0    e81ba71200
                         pop                edi                                           // 0x005fadd5    5f
                         mov.s              eax, esi                                      // 0x005fadd6    8bc6
                         pop                esi                                           // 0x005fadd8    5e
                         ret                0x0004                                        // 0x005fadd9    c20400
_jmp_addr_0x005faddc:    pop                edi                                           // 0x005faddc    5f
                         xor.s              eax, eax                                      // 0x005faddd    33c0
                         pop                esi                                           // 0x005faddf    5e
                         ret                0x0004                                        // 0x005fade0    c20400
                         nop                                                              // 0x005fade3    90
                         nop                                                              // 0x005fade4    90
                         nop                                                              // 0x005fade5    90
                         nop                                                              // 0x005fade6    90
                         nop                                                              // 0x005fade7    90
                         nop                                                              // 0x005fade8    90
                         nop                                                              // 0x005fade9    90
                         nop                                                              // 0x005fadea    90
                         nop                                                              // 0x005fadeb    90
                         nop                                                              // 0x005fadec    90
                         nop                                                              // 0x005faded    90
                         nop                                                              // 0x005fadee    90
                         nop                                                              // 0x005fadef    90
_jmp_addr_0x005fadf0:    sub                esp, 0x0c                                     // 0x005fadf0    83ec0c
                         push               ebx                                           // 0x005fadf3    53
                         push               esi                                           // 0x005fadf4    56
                         push               edi                                           // 0x005fadf5    57
                         {disp8} mov        edi, dword ptr [esp + 0x1c]                   // 0x005fadf6    8b7c241c
                         xor.s              ebx, ebx                                      // 0x005fadfa    33db
                         push               ebx                                           // 0x005fadfc    53
                         push               ebx                                           // 0x005fadfd    53
                         mov.s              ecx, edi                                      // 0x005fadfe    8bcf
                         call               @FindType__9MapCoordsCF11OBJECT_TYPEP6Object@16                          // 0x005fae00    e8bb970000
                         mov.s              esi, eax                                      // 0x005fae05    8bf0
                         cmp.s              esi, ebx                                      // 0x005fae07    3bf3
                         {disp8} je         _jmp_addr_0x005fae5d                          // 0x005fae09    7452
_jmp_addr_0x005fae0b:    mov                eax, dword ptr [esi]                          // 0x005fae0b    8b06
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x005fae0d    8d4c240c
                         push               ecx                                           // 0x005fae11    51
                         mov.s              ecx, esi                                      // 0x005fae12    8bce
                         {disp8} mov        dword ptr [esp + 0x10], ebx                   // 0x005fae14    895c2410
                         {disp8} mov        dword ptr [esp + 0x14], ebx                   // 0x005fae18    895c2414
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000            // 0x005fae1c    c744241800000000
                         call               dword ptr [eax + 0x5f0]                       // 0x005fae24    ff90f0050000
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x005fae2a    8d54240c
                         push               edx                                           // 0x005fae2e    52
                         push               edi                                           // 0x005fae2f    57
                         call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z                               // 0x005fae30    e83b1f1500
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x005fae35    d95c2424
                         mov                eax, dword ptr [esi]                          // 0x005fae39    8b06
                         add                esp, 0x08                                     // 0x005fae3b    83c408
                         mov.s              ecx, esi                                      // 0x005fae3e    8bce
                         call               dword ptr [eax + 0x64]                        // 0x005fae40    ff5064
                         {disp8} fcomp      dword ptr [esp + 0x1c]                        // 0x005fae43    d85c241c
                         fnstsw             ax                                            // 0x005fae47    dfe0
                         test               ah, 0x41                                      // 0x005fae49    f6c441
                         {disp8} je         _jmp_addr_0x005fae69                          // 0x005fae4c    741b
                         push               esi                                           // 0x005fae4e    56
                         push               ebx                                           // 0x005fae4f    53
                         mov.s              ecx, edi                                      // 0x005fae50    8bcf
                         call               @FindType__9MapCoordsCF11OBJECT_TYPEP6Object@16                          // 0x005fae52    e869970000
                         mov.s              esi, eax                                      // 0x005fae57    8bf0
                         cmp.s              esi, ebx                                      // 0x005fae59    3bf3
                         {disp8} jne        _jmp_addr_0x005fae0b                          // 0x005fae5b    75ae
_jmp_addr_0x005fae5d:    pop                edi                                           // 0x005fae5d    5f
                         pop                esi                                           // 0x005fae5e    5e
                         mov                eax, 0x00000001                               // 0x005fae5f    b801000000
                         pop                ebx                                           // 0x005fae64    5b
                         add                esp, 0x0c                                     // 0x005fae65    83c40c
                         ret                                                              // 0x005fae68    c3
_jmp_addr_0x005fae69:    pop                edi                                           // 0x005fae69    5f
                         pop                esi                                           // 0x005fae6a    5e
                         xor.s              eax, eax                                      // 0x005fae6b    33c0
                         pop                ebx                                           // 0x005fae6d    5b
                         add                esp, 0x0c                                     // 0x005fae6e    83c40c
                         ret                                                              // 0x005fae71    c3
                         nop                                                              // 0x005fae72    90
                         nop                                                              // 0x005fae73    90
                         nop                                                              // 0x005fae74    90
                         nop                                                              // 0x005fae75    90
                         nop                                                              // 0x005fae76    90
                         nop                                                              // 0x005fae77    90
                         nop                                                              // 0x005fae78    90
                         nop                                                              // 0x005fae79    90
                         nop                                                              // 0x005fae7a    90
                         nop                                                              // 0x005fae7b    90
                         nop                                                              // 0x005fae7c    90
                         nop                                                              // 0x005fae7d    90
                         nop                                                              // 0x005fae7e    90
                         nop                                                              // 0x005fae7f    90
                         push               esi                                           // 0x005fae80    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x005fae81    8b742408
                         mov.s              ecx, esi                                      // 0x005fae85    8bce
                         call               ?InBounds@MapCoords@@QBEIXZ                   // 0x005fae87    e834940000
                         test               eax, eax                                      // 0x005fae8c    85c0
                         {disp8} je         _jmp_addr_0x005faebe                          // 0x005fae8e    742e
                         mov.s              ecx, esi                                      // 0x005fae90    8bce
                         call               _jmp_addr_0x00603720                          // 0x005fae92    e889880000
                         test               eax, eax                                      // 0x005fae97    85c0
                         {disp8} je         _jmp_addr_0x005faebe                          // 0x005fae99    7423
                         push               esi                                           // 0x005fae9b    56
                         call               _jmp_addr_0x005fadf0                          // 0x005fae9c    e84fffffff
                         add                esp, 0x04                                     // 0x005faea1    83c404
                         test               eax, eax                                      // 0x005faea4    85c0
                         {disp8} je         _jmp_addr_0x005faebe                          // 0x005faea6    7416
                         push               esi                                           // 0x005faea8    56
                         call               _jmp_addr_0x00725c50                          // 0x005faea9    e8a2ad1200
                         add                esp, 0x04                                     // 0x005faeae    83c404
                         test               eax, eax                                      // 0x005faeb1    85c0
                         {disp8} je         _jmp_addr_0x005faebe                          // 0x005faeb3    7409
                         mov                eax, 0x00000001                               // 0x005faeb5    b801000000
                         pop                esi                                           // 0x005faeba    5e
                         ret                0x0008                                        // 0x005faebb    c20800
_jmp_addr_0x005faebe:    xor.s              eax, eax                                      // 0x005faebe    33c0
                         pop                esi                                           // 0x005faec0    5e
                         ret                0x0008                                        // 0x005faec1    c20800
                         nop                                                              // 0x005faec4    90
                         nop                                                              // 0x005faec5    90
                         nop                                                              // 0x005faec6    90
                         nop                                                              // 0x005faec7    90
                         nop                                                              // 0x005faec8    90
                         nop                                                              // 0x005faec9    90
                         nop                                                              // 0x005faeca    90
                         nop                                                              // 0x005faecb    90
                         nop                                                              // 0x005faecc    90
                         nop                                                              // 0x005faecd    90
                         nop                                                              // 0x005faece    90
                         nop                                                              // 0x005faecf    90
_globl_ct_0x005faed0:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x005faed0    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x005faed6    b001
                         test               al, cl                                        // 0x005faed8    84c8
                         {disp8} jne        _jmp_addr_0x005faee4                          // 0x005faeda    7508
                         or.s               cl, al                                        // 0x005faedc    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x005faede    880d34c9fa00
_jmp_addr_0x005faee4:    {disp32} jmp       _jmp_addr_0x005faef0                          // 0x005faee4    e907000000
                         nop                                                              // 0x005faee9    90
                         nop                                                              // 0x005faeea    90
                         nop                                                              // 0x005faeeb    90
                         nop                                                              // 0x005faeec    90
                         nop                                                              // 0x005faeed    90
                         nop                                                              // 0x005faeee    90
                         nop                                                              // 0x005faeef    90
_jmp_addr_0x005faef0:    push               0x00407870                                    // 0x005faef0    6870784000
                         call               _atexit                                       // 0x005faef5    e897a81c00
                         pop                ecx                                           // 0x005faefa    59
                         ret                                                              // 0x005faefb    c3
                         nop                                                              // 0x005faefc    90
                         nop                                                              // 0x005faefd    90
                         nop                                                              // 0x005faefe    90
                         nop                                                              // 0x005faeff    90
_jmp_addr_0x005faf00:    push               esi                                           // 0x005faf00    56
                         mov.s              esi, ecx                                      // 0x005faf01    8bf1
                         call               ??0GameThing@@QAE@XZ                          // 0x005faf03    e8084bf7ff
                         mov.s              ecx, esi                                      // 0x005faf08    8bce
                         mov                dword ptr [esi], 0x0092bfc0                   // 0x005faf0a    c706c0bf9200
                         call               _jmp_addr_0x005faf70                          // 0x005faf10    e85b000000
                         mov.s              eax, esi                                      // 0x005faf15    8bc6
                         pop                esi                                           // 0x005faf17    5e
                         ret                                                              // 0x005faf18    c3
                         nop                                                              // 0x005faf19    90
                         nop                                                              // 0x005faf1a    90
                         nop                                                              // 0x005faf1b    90
                         nop                                                              // 0x005faf1c    90
                         nop                                                              // 0x005faf1d    90
                         nop                                                              // 0x005faf1e    90
                         nop                                                              // 0x005faf1f    90
?GetSaveType@GMagicHand@@UAEIXZ:
                         mov                eax, 0x000000fd                               // 0x005faf20    b8fd000000
                         ret                                                              // 0x005faf25    c3
                         nop                                                              // 0x005faf26    90
                         nop                                                              // 0x005faf27    90
                         nop                                                              // 0x005faf28    90
                         nop                                                              // 0x005faf29    90
                         nop                                                              // 0x005faf2a    90
                         nop                                                              // 0x005faf2b    90
                         nop                                                              // 0x005faf2c    90
                         nop                                                              // 0x005faf2d    90
                         nop                                                              // 0x005faf2e    90
                         nop                                                              // 0x005faf2f    90
?GetDebugText@GMagicHand@@UAEPADXZ:
                         mov                eax, 0x00bf3e74                               // 0x005faf30    b8743ebf00
                         ret                                                              // 0x005faf35    c3
                         nop                                                              // 0x005faf36    90
                         nop                                                              // 0x005faf37    90
                         nop                                                              // 0x005faf38    90
                         nop                                                              // 0x005faf39    90
                         nop                                                              // 0x005faf3a    90
                         nop                                                              // 0x005faf3b    90
                         nop                                                              // 0x005faf3c    90
                         nop                                                              // 0x005faf3d    90
                         nop                                                              // 0x005faf3e    90
                         nop                                                              // 0x005faf3f    90
??_GGMagicHand@@UAEPAXI@Z:
                         push               esi                                           // 0x005faf40    56
                         mov.s              esi, ecx                                      // 0x005faf41    8bf1
                         call               _jmp_addr_0x005faf60                          // 0x005faf43    e818000000
                         test               byte ptr [esp + 0x08], 0x01                   // 0x005faf48    f644240801
                         {disp8} je         _jmp_addr_0x005faf5a                          // 0x005faf4d    740b
                         push               0x1c                                          // 0x005faf4f    6a1c
                         push               esi                                           // 0x005faf51    56
                         call               ??3Base@@SAXPAXK@Z                          // 0x005faf52    e819bae3ff
                         add                esp, 0x08                                     // 0x005faf57    83c408
_jmp_addr_0x005faf5a:    mov.s              eax, esi                                      // 0x005faf5a    8bc6
                         pop                esi                                           // 0x005faf5c    5e
                         ret                0x0004                                        // 0x005faf5d    c20400
_jmp_addr_0x005faf60:    mov                dword ptr [ecx], 0x0092bfc0                   // 0x005faf60    c701c0bf9200
                         {disp32} jmp       _jmp_addr_0x0056fa80                          // 0x005faf66    e9154bf7ff
                         nop                                                              // 0x005faf6b    90
                         nop                                                              // 0x005faf6c    90
                         nop                                                              // 0x005faf6d    90
                         nop                                                              // 0x005faf6e    90
                         nop                                                              // 0x005faf6f    90
_jmp_addr_0x005faf70:    xor.s              eax, eax                                      // 0x005faf70    33c0
                         {disp8} mov        byte ptr [ecx + 0x14], al                     // 0x005faf72    884114
                         {disp8} mov        dword ptr [ecx + 0x18], eax                   // 0x005faf75    894118
                         ret                                                              // 0x005faf78    c3
                         nop                                                              // 0x005faf79    90
                         nop                                                              // 0x005faf7a    90
                         nop                                                              // 0x005faf7b    90
                         nop                                                              // 0x005faf7c    90
                         nop                                                              // 0x005faf7d    90
                         nop                                                              // 0x005faf7e    90
                         nop                                                              // 0x005faf7f    90
_jmp_addr_0x005faf80:    push               esi                                           // 0x005faf80    56
                         call               ?GetObjectFromHand@GMagicHand@@QBEPAVObject@@XZ                          // 0x005faf81    e8ba000000
                         mov.s              esi, eax                                      // 0x005faf86    8bf0
                         test               esi, esi                                      // 0x005faf88    85f6
                         {disp8} je         _jmp_addr_0x005fafb3                          // 0x005faf8a    7427
                         mov                eax, dword ptr [esi]                          // 0x005faf8c    8b06
                         mov.s              ecx, esi                                      // 0x005faf8e    8bce
                         call               dword ptr [eax + 0x2c]                        // 0x005faf90    ff502c
                         test               eax, eax                                      // 0x005faf93    85c0
                         {disp8} je         _jmp_addr_0x005fafb3                          // 0x005faf95    741c
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x005faf97    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x005faf9d    e8aea8f5ff
                         {disp32} mov       eax, dword ptr [eax + 0x0000039c]             // 0x005fafa2    8b809c030000
                         mov                edx, dword ptr [esi]                          // 0x005fafa8    8b16
                         push               eax                                           // 0x005fafaa    50
                         mov.s              ecx, esi                                      // 0x005fafab    8bce
                         call               dword ptr [edx + 0xd0]                        // 0x005fafad    ff92d0000000
_jmp_addr_0x005fafb3:    pop                esi                                           // 0x005fafb3    5e
                         ret                                                              // 0x005fafb4    c3
                         nop                                                              // 0x005fafb5    90
                         nop                                                              // 0x005fafb6    90
                         nop                                                              // 0x005fafb7    90
                         nop                                                              // 0x005fafb8    90
                         nop                                                              // 0x005fafb9    90
                         nop                                                              // 0x005fafba    90
                         nop                                                              // 0x005fafbb    90
                         nop                                                              // 0x005fafbc    90
                         nop                                                              // 0x005fafbd    90
                         nop                                                              // 0x005fafbe    90
                         nop                                                              // 0x005fafbf    90
_jmp_addr_0x005fafc0:    xor.s              eax, eax                                      // 0x005fafc0    33c0
                         {disp8} mov        al, byte ptr [ecx + 0x14]                     // 0x005fafc2    8a4114
                         cmp                al, 0x01                                      // 0x005fafc5    3c01
                         {disp8} jae        _jmp_addr_0x005fb032                          // 0x005fafc7    7369
                         push               ebx                                           // 0x005fafc9    53
                         push               esi                                           // 0x005fafca    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x005fafcb    8b74240c
                         and                eax, 0x000000ff                               // 0x005fafcf    25ff000000
                         {disp8} mov        dword ptr [ecx + eax * 0x4 + 0x18], esi       // 0x005fafd4    89748118
                         {disp8} mov        bl, byte ptr [ecx + 0x14]                     // 0x005fafd8    8a5914
                         push               edi                                           // 0x005fafdb    57
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x005fafdc    8b7c2414
                         inc                bl                                            // 0x005fafe0    fec3
                         {disp8} mov        byte ptr [ecx + 0x14], bl                     // 0x005fafe2    885914
                         {disp32} fld       dword ptr [edi + 0x000000c8]                  // 0x005fafe5    d987c8000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]              // 0x005fafeb    d80d00c48a00
                         call               _jmp_addr_0x007a1400                          // 0x005faff1    e80a641a00
                         {disp8} mov        dword ptr [esi + 0x14], eax                   // 0x005faff6    894614
                         {disp32} fld       dword ptr [edi + 0x000000d0]                  // 0x005faff9    d987d0000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]              // 0x005fafff    d80d00c48a00
                         call               _jmp_addr_0x007a1400                          // 0x005fb005    e8f6631a00
                         {disp8} mov        dword ptr [esi + 0x18], eax                   // 0x005fb00a    894618
                         {disp8} mov        dword ptr [esi + 0x1c], 0x00000000            // 0x005fb00d    c7461c00000000
                         or                 byte ptr [esi + 0x24], 4                      // 0x005fb014    804e2404
                         mov                eax, dword ptr [edi]                          // 0x005fb018    8b07
                         mov                ebx, dword ptr [esi]                          // 0x005fb01a    8b1e
                         mov.s              ecx, edi                                      // 0x005fb01c    8bcf
                         call               dword ptr [eax + 0x1c]                        // 0x005fb01e    ff501c
                         push               eax                                           // 0x005fb021    50
                         mov.s              ecx, esi                                      // 0x005fb022    8bce
                         call               dword ptr [ebx + 0x20]                        // 0x005fb024    ff5320
                         pop                edi                                           // 0x005fb027    5f
                         pop                esi                                           // 0x005fb028    5e
                         mov                eax, 0x00000001                               // 0x005fb029    b801000000
                         pop                ebx                                           // 0x005fb02e    5b
                         ret                0x0008                                        // 0x005fb02f    c20800
_jmp_addr_0x005fb032:    xor.s              eax, eax                                      // 0x005fb032    33c0
                         ret                0x0008                                        // 0x005fb034    c20800
                         nop                                                              // 0x005fb037    90
                         nop                                                              // 0x005fb038    90
                         nop                                                              // 0x005fb039    90
                         nop                                                              // 0x005fb03a    90
                         nop                                                              // 0x005fb03b    90
                         nop                                                              // 0x005fb03c    90
                         nop                                                              // 0x005fb03d    90
                         nop                                                              // 0x005fb03e    90
                         nop                                                              // 0x005fb03f    90
?GetObjectFromHand@GMagicHand@@QBEPAVObject@@XZ:
                         xor.s              eax, eax                                      // 0x005fb040    33c0
                         {disp8} mov        al, byte ptr [ecx + 0x14]                     // 0x005fb042    8a4114
                         test               al, al                                        // 0x005fb045    84c0
                         {disp8} jbe        _jmp_addr_0x005fb053                          // 0x005fb047    760a
                         and                eax, 0x000000ff                               // 0x005fb049    25ff000000
                         {disp8} mov        eax, dword ptr [ecx + eax * 0x4 + 0x14]       // 0x005fb04e    8b448114
                         ret                                                              // 0x005fb052    c3
_jmp_addr_0x005fb053:    xor.s              eax, eax                                      // 0x005fb053    33c0
                         ret                                                              // 0x005fb055    c3
                         nop                                                              // 0x005fb056    90
                         nop                                                              // 0x005fb057    90
                         nop                                                              // 0x005fb058    90
                         nop                                                              // 0x005fb059    90
                         nop                                                              // 0x005fb05a    90
                         nop                                                              // 0x005fb05b    90
                         nop                                                              // 0x005fb05c    90
                         nop                                                              // 0x005fb05d    90
                         nop                                                              // 0x005fb05e    90
                         nop                                                              // 0x005fb05f    90
_jmp_addr_0x005fb060:    {disp8} mov        al, byte ptr [ecx + 0x14]                     // 0x005fb060    8a4114
                         test               al, al                                        // 0x005fb063    84c0
                         {disp8} jbe        _jmp_addr_0x005fb09d                          // 0x005fb065    7636
                         dec                al                                            // 0x005fb067    fec8
                         {disp8} mov        byte ptr [ecx + 0x14], al                     // 0x005fb069    884114
                         push               esi                                           // 0x005fb06c    56
                         and                eax, 0x000000ff                               // 0x005fb06d    25ff000000
                         {disp8} mov        esi, dword ptr [ecx + eax * 0x4 + 0x18]       // 0x005fb072    8b748118
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x005fb076    8b4c2408
                         mov                eax, dword ptr [esi]                          // 0x005fb07a    8b06
                         .byte              0x66, 0x81, 0x66, 0x24, 0xfb, 0xff// and word ptr [esi + 0x24], -0x0005 // 0x005fb07c    66816624fbff
                         push               ecx                                           // 0x005fb082    51
                         mov.s              ecx, esi                                      // 0x005fb083    8bce
                         call               dword ptr [eax + 0x704]                       // 0x005fb085    ff9004070000
                         {disp8} mov        ecx, dword ptr [esi + 0x44]                   // 0x005fb08b    8b4e44
                         test               ecx, ecx                                      // 0x005fb08e    85c9
                         {disp8} je         _jmp_addr_0x005fb097                          // 0x005fb090    7405
                         call               _jmp_addr_0x00730ab0                          // 0x005fb092    e8195a1300
_jmp_addr_0x005fb097:    mov.s              eax, esi                                      // 0x005fb097    8bc6
                         pop                esi                                           // 0x005fb099    5e
                         ret                0x0004                                        // 0x005fb09a    c20400
_jmp_addr_0x005fb09d:    xor.s              eax, eax                                      // 0x005fb09d    33c0
                         ret                0x0004                                        // 0x005fb09f    c20400
                         nop                                                              // 0x005fb0a2    90
                         nop                                                              // 0x005fb0a3    90
                         nop                                                              // 0x005fb0a4    90
                         nop                                                              // 0x005fb0a5    90
                         nop                                                              // 0x005fb0a6    90
                         nop                                                              // 0x005fb0a7    90
                         nop                                                              // 0x005fb0a8    90
                         nop                                                              // 0x005fb0a9    90
                         nop                                                              // 0x005fb0aa    90
                         nop                                                              // 0x005fb0ab    90
                         nop                                                              // 0x005fb0ac    90
                         nop                                                              // 0x005fb0ad    90
                         nop                                                              // 0x005fb0ae    90
                         nop                                                              // 0x005fb0af    90
_jmp_addr_0x005fb0b0:    push               ebx                                           // 0x005fb0b0    53
                         push               esi                                           // 0x005fb0b1    56
                         mov.s              esi, ecx                                      // 0x005fb0b2    8bf1
                         xor.s              ecx, ecx                                      // 0x005fb0b4    33c9
                         {disp8} mov        cl, byte ptr [esi + 0x14]                     // 0x005fb0b6    8a4e14
                         xor.s              eax, eax                                      // 0x005fb0b9    33c0
                         push               edi                                           // 0x005fb0bb    57
                         test               ecx, ecx                                      // 0x005fb0bc    85c9
                         {disp8} jle        _jmp_addr_0x005fb0d3                          // 0x005fb0be    7e13
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x005fb0c0    8b7c2410
                         {disp8} lea        edx, dword ptr [esi + 0x18]                   // 0x005fb0c4    8d5618
_jmp_addr_0x005fb0c7:    cmp                edi, dword ptr [edx]                          // 0x005fb0c7    3b3a
                         {disp8} je         _jmp_addr_0x005fb0db                          // 0x005fb0c9    7410
                         inc                eax                                           // 0x005fb0cb    40
                         add                edx, 0x04                                     // 0x005fb0cc    83c204
                         cmp.s              eax, ecx                                      // 0x005fb0cf    3bc1
                         {disp8} jl         _jmp_addr_0x005fb0c7                          // 0x005fb0d1    7cf4
_jmp_addr_0x005fb0d3:    pop                edi                                           // 0x005fb0d3    5f
                         pop                esi                                           // 0x005fb0d4    5e
                         xor.s              eax, eax                                      // 0x005fb0d5    33c0
                         pop                ebx                                           // 0x005fb0d7    5b
                         ret                0x0008                                        // 0x005fb0d8    c20800
_jmp_addr_0x005fb0db:    dec                ecx                                           // 0x005fb0db    49
                         cmp.s              eax, ecx                                      // 0x005fb0dc    3bc1
                         {disp8} jge        _jmp_addr_0x005fb0f7                          // 0x005fb0de    7d17
                         {disp8} lea        edx, dword ptr [esi + eax * 0x4 + 0x18]       // 0x005fb0e0    8d548618
_jmp_addr_0x005fb0e4:    {disp8} mov        ecx, dword ptr [edx + 0x04]                   // 0x005fb0e4    8b4a04
                         mov                dword ptr [edx], ecx                          // 0x005fb0e7    890a
                         xor.s              ecx, ecx                                      // 0x005fb0e9    33c9
                         {disp8} mov        cl, byte ptr [esi + 0x14]                     // 0x005fb0eb    8a4e14
                         inc                eax                                           // 0x005fb0ee    40
                         add                edx, 0x04                                     // 0x005fb0ef    83c204
                         dec                ecx                                           // 0x005fb0f2    49
                         cmp.s              eax, ecx                                      // 0x005fb0f3    3bc1
                         {disp8} jl         _jmp_addr_0x005fb0e4                          // 0x005fb0f5    7ced
_jmp_addr_0x005fb0f7:    {disp8} mov        bl, byte ptr [esi + 0x14]                     // 0x005fb0f7    8a5e14
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x005fb0fa    8b442414
                         dec                bl                                            // 0x005fb0fe    fecb
                         {disp8} mov        byte ptr [esi + 0x14], bl                     // 0x005fb100    885e14
                         mov                edx, dword ptr [edi]                          // 0x005fb103    8b17
                         .byte              0x66, 0x81, 0x67, 0x24, 0xfb, 0xff// and word ptr [edi + 0x24], -0x0005 // 0x005fb105    66816724fbff
                         push               eax                                           // 0x005fb10b    50
                         mov.s              ecx, edi                                      // 0x005fb10c    8bcf
                         call               dword ptr [edx + 0x704]                       // 0x005fb10e    ff9204070000
                         {disp8} mov        ecx, dword ptr [edi + 0x44]                   // 0x005fb114    8b4f44
                         test               ecx, ecx                                      // 0x005fb117    85c9
                         {disp8} je         _jmp_addr_0x005fb120                          // 0x005fb119    7405
                         call               _jmp_addr_0x00730ab0                          // 0x005fb11b    e890591300
_jmp_addr_0x005fb120:    pop                edi                                           // 0x005fb120    5f
                         pop                esi                                           // 0x005fb121    5e
                         mov                eax, 0x00000001                               // 0x005fb122    b801000000
                         pop                ebx                                           // 0x005fb127    5b
                         ret                0x0008                                        // 0x005fb128    c20800
                         call               ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                          // 0x005fb12b    e8c966e0ff
_jmp_addr_0x005fb130:    push               ebx                                           // 0x005fb130    53
                         push               ebp                                           // 0x005fb131    55
                         push               esi                                           // 0x005fb132    56
                         mov.s              esi, ecx                                      // 0x005fb133    8bf1
                         {disp8} mov        al, byte ptr [esi + 0x14]                     // 0x005fb135    8a4614
                         push               edi                                           // 0x005fb138    57
                         xor.s              edi, edi                                      // 0x005fb139    33ff
                         test               al, al                                        // 0x005fb13b    84c0
                         {disp8} jbe        _jmp_addr_0x005fb160                          // 0x005fb13d    7621
                         {disp8} lea        ebp, dword ptr [esi + 0x18]                   // 0x005fb13f    8d6e18
_jmp_addr_0x005fb142:    {disp8} mov        ebx, dword ptr [ebp + 0x00]                   // 0x005fb142    8b5d00
                         mov                eax, dword ptr [ebx]                          // 0x005fb145    8b03
                         mov.s              ecx, ebx                                      // 0x005fb147    8bcb
                         call               dword ptr [eax + 0x190]                       // 0x005fb149    ff9090010000
                         test               eax, eax                                      // 0x005fb14f    85c0
                         {disp8} je         _jmp_addr_0x005fb169                          // 0x005fb151    7416
                         xor.s              ecx, ecx                                      // 0x005fb153    33c9
                         {disp8} mov        cl, byte ptr [esi + 0x14]                     // 0x005fb155    8a4e14
                         inc                edi                                           // 0x005fb158    47
                         add                ebp, 0x04                                     // 0x005fb159    83c504
                         cmp.s              edi, ecx                                      // 0x005fb15c    3bf9
                         {disp8} jl         _jmp_addr_0x005fb142                          // 0x005fb15e    7ce2
_jmp_addr_0x005fb160:    pop                edi                                           // 0x005fb160    5f
                         pop                esi                                           // 0x005fb161    5e
                         pop                ebp                                           // 0x005fb162    5d
                         xor.s              eax, eax                                      // 0x005fb163    33c0
                         pop                ebx                                           // 0x005fb165    5b
                         ret                0x0004                                        // 0x005fb166    c20400
_jmp_addr_0x005fb169:    {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x005fb169    8b7c2414
                         push               edi                                           // 0x005fb16d    57
                         push               ebx                                           // 0x005fb16e    53
                         mov.s              ecx, esi                                      // 0x005fb16f    8bce
                         call               _jmp_addr_0x005fb0b0                          // 0x005fb171    e83affffff
                         push               edi                                           // 0x005fb176    57
                         mov.s              ecx, esi                                      // 0x005fb177    8bce
                         call               _jmp_addr_0x005fb130                          // 0x005fb179    e8b2ffffff
                         pop                edi                                           // 0x005fb17e    5f
                         pop                esi                                           // 0x005fb17f    5e
                         pop                ebp                                           // 0x005fb180    5d
                         mov                eax, 0x00000001                               // 0x005fb181    b801000000
                         pop                ebx                                           // 0x005fb186    5b
                         ret                0x0004                                        // 0x005fb187    c20400
                         call               dword ptr [__imp__TlsAlloc@0]                 // 0x005fb18a    ff15d0928a00
_jmp_addr_0x005fb190:    sub                esp, 0x20                                     // 0x005fb190    83ec20
                         push               ebx                                           // 0x005fb193    53
                         push               ebp                                           // 0x005fb194    55
                         mov.s              ebp, ecx                                      // 0x005fb195    8be9
                         {disp8} mov        cl, byte ptr [ebp + 0x14]                     // 0x005fb197    8a4d14
                         xor.s              eax, eax                                      // 0x005fb19a    33c0
                         xor.s              ebx, ebx                                      // 0x005fb19c    33db
                         test               cl, cl                                        // 0x005fb19e    84c9
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x005fb1a0    8944240c
                         {disp32} jbe       _jmp_addr_0x005fb291                          // 0x005fb1a4    0f86e7000000
                         push               esi                                           // 0x005fb1aa    56
                         {disp8} lea        eax, dword ptr [ebp + 0x18]                   // 0x005fb1ab    8d4518
                         push               edi                                           // 0x005fb1ae    57
                         {disp8} mov        edi, dword ptr [esp + 0x34]                   // 0x005fb1af    8b7c2434
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x005fb1b3    89442410
_jmp_addr_0x005fb1b7:    {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x005fb1b7    8b4c2410
                         mov                esi, dword ptr [ecx]                          // 0x005fb1bb    8b31
                         test               esi, esi                                      // 0x005fb1bd    85f6
                         {disp32} je        _jmp_addr_0x005fb278                          // 0x005fb1bf    0f84b3000000
                         {disp32} fld       dword ptr [edi + 0x000000c8]                  // 0x005fb1c5    d987c8000000
                         {disp32} mov       edx, dword ptr [edi + 0x000000cc]             // 0x005fb1cb    8b97cc000000
                         {disp32} mov       eax, dword ptr [edi + 0x000000d0]             // 0x005fb1d1    8b87d0000000
                         fld                st(0)                                         // 0x005fb1d7    d9c0
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]              // 0x005fb1d9    d80d00c48a00
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x005fb1df    8954241c
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x005fb1e3    89442420
                         call               _jmp_addr_0x007a1400                          // 0x005fb1e7    e814621a00
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x005fb1ec    d9442420
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]              // 0x005fb1f0    d80d00c48a00
                         {disp8} mov        dword ptr [esi + 0x14], eax                   // 0x005fb1f6    894614
                         call               _jmp_addr_0x007a1400                          // 0x005fb1f9    e802621a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]              // 0x005fb1fe    d80d08c48a00
                         {disp8} mov        dword ptr [esi + 0x18], eax                   // 0x005fb204    894618
                         {disp8} mov        dword ptr [esi + 0x1c], 0x00000000            // 0x005fb207    c7461c00000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x005fb20e    d80d04c48a00
                         call               _jmp_addr_0x007a1400                          // 0x005fb214    e8e7611a00
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x005fb219    d9442420
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]              // 0x005fb21d    d80d08c48a00
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x005fb223    89442424
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x005fb227    d80d04c48a00
                         call               _jmp_addr_0x007a1400                          // 0x005fb22d    e8ce611a00
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x005fb232    8d4c2424
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x005fb236    89442428
                         {disp8} mov        dword ptr [esp + 0x2c], 0x00000000            // 0x005fb23a    c744242c00000000
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x005fb242    e8497e2000
                         {disp8} fsubr      dword ptr [esp + 0x1c]                        // 0x005fb247    d86c241c
                         mov.s              ecx, esi                                      // 0x005fb24b    8bce
                         {disp8} fadd       dword ptr [esi + 0x1c]                        // 0x005fb24d    d8461c
                         {disp8} fstp       dword ptr [esi + 0x1c]                        // 0x005fb250    d95e1c
                         mov                edx, dword ptr [esi]                          // 0x005fb253    8b16
                         call               dword ptr [edx + 0x804]                       // 0x005fb255    ff9204080000
                         cmp                eax, 0x01                                     // 0x005fb25b    83f801
                         {disp8} jne        _jmp_addr_0x005fb26c                          // 0x005fb25e    750c
                         mov                eax, dword ptr [esi]                          // 0x005fb260    8b06
                         mov.s              ecx, esi                                      // 0x005fb262    8bce
                         call               dword ptr [eax + 0x2c]                        // 0x005fb264    ff502c
                         cmp                eax, 0x01                                     // 0x005fb267    83f801
                         {disp8} je         _jmp_addr_0x005fb278                          // 0x005fb26a    740c
_jmp_addr_0x005fb26c:    push               edi                                           // 0x005fb26c    57
                         mov.s              ecx, ebp                                      // 0x005fb26d    8bcd
                         call               _jmp_addr_0x005fb130                          // 0x005fb26f    e8bcfeffff
                         or                 dword ptr [esp + 0x14], eax                   // 0x005fb274    09442414
_jmp_addr_0x005fb278:    add                dword ptr [esp + 0x10], 0x04                  // 0x005fb278    8344241004
                         xor.s              ecx, ecx                                      // 0x005fb27d    33c9
                         {disp8} mov        cl, byte ptr [ebp + 0x14]                     // 0x005fb27f    8a4d14
                         inc                ebx                                           // 0x005fb282    43
                         cmp.s              ebx, ecx                                      // 0x005fb283    3bd9
                         {disp32} jl        _jmp_addr_0x005fb1b7                          // 0x005fb285    0f8c2cffffff
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x005fb28b    8b442414
                         pop                edi                                           // 0x005fb28f    5f
                         pop                esi                                           // 0x005fb290    5e
_jmp_addr_0x005fb291:    pop                ebp                                           // 0x005fb291    5d
                         pop                ebx                                           // 0x005fb292    5b
                         add                esp, 0x20                                     // 0x005fb293    83c420
                         ret                0x0004                                        // 0x005fb296    c20400
                         nop                                                              // 0x005fb299    90
                         nop                                                              // 0x005fb29a    90
                         nop                                                              // 0x005fb29b    90
                         nop                                                              // 0x005fb29c    90
                         nop                                                              // 0x005fb29d    90
                         nop                                                              // 0x005fb29e    90
                         nop                                                              // 0x005fb29f    90
?CleanUpForSerialisation@GMagicHand@@UAEXXZ:
                         xor.s              eax, eax                                      // 0x005fb2a0    33c0
                         {disp8} mov        al, byte ptr [ecx + 0x14]                     // 0x005fb2a2    8a4114
                         cmp                eax, 0x01                                     // 0x005fb2a5    83f801
                         {disp8} jge        _jmp_addr_0x005fb2bb                          // 0x005fb2a8    7d11
                         push               edi                                           // 0x005fb2aa    57
                         {disp8} lea        edi, dword ptr [ecx + eax * 0x4 + 0x18]       // 0x005fb2ab    8d7c8118
                         mov                ecx, 0x00000001                               // 0x005fb2af    b901000000
                         sub.s              ecx, eax                                      // 0x005fb2b4    2bc8
                         xor.s              eax, eax                                      // 0x005fb2b6    33c0
                         rep stosd                                                        // 0x005fb2b8    f3ab
                         pop                edi                                           // 0x005fb2ba    5f
_jmp_addr_0x005fb2bb:    ret                                                              // 0x005fb2bb    c3
                         nop                                                              // 0x005fb2bc    90
                         nop                                                              // 0x005fb2bd    90
                         nop                                                              // 0x005fb2be    90
                         nop                                                              // 0x005fb2bf    90
?Save@GMagicHand@@UAEIAAVGameOSFile@@@Z:
                         push               ebx                                           // 0x005fb2c0    53
                         push               esi                                           // 0x005fb2c1    56
                         mov.s              esi, ecx                                      // 0x005fb2c2    8bf1
                         mov                eax, dword ptr [esi]                          // 0x005fb2c4    8b06
                         call               dword ptr [eax + 0x14]                        // 0x005fb2c6    ff5014
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x005fb2c9    a190c9be00
                         test               eax, eax                                      // 0x005fb2ce    85c0
                         {disp8} mov        ebx, dword ptr [esp + 0x0c]                   // 0x005fb2d0    8b5c240c
                         {disp8} je         _jmp_addr_0x005fb309                          // 0x005fb2d4    7433
                         push               edi                                           // 0x005fb2d6    57
                         push               0x0                                           // 0x005fb2d7    6a00
                         push               0x1                                           // 0x005fb2d9    6a01
                         {disp8} lea        edi, dword ptr [esi + 0x14]                   // 0x005fb2db    8d7e14
                         push               edi                                           // 0x005fb2de    57
                         mov.s              ecx, ebx                                      // 0x005fb2df    8bcb
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x005fb2e1    e83a161c00
                         cmp                eax, 0x03                                     // 0x005fb2e6    83f803
                         {disp8} jne        _jmp_addr_0x005fb2f5                          // 0x005fb2e9    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226990], 0x00000000 // 0x005fb2eb    c70590c9be0000000000
_jmp_addr_0x005fb2f5:    {disp32} mov       eax, dword ptr [ebx + 0x00000214]             // 0x005fb2f5    8b8314020000
                         xor.s              ecx, ecx                                      // 0x005fb2fb    33c9
                         mov                cl, byte ptr [edi]                            // 0x005fb2fd    8a0f
                         pop                edi                                           // 0x005fb2ff    5f
                         inc                ecx                                           // 0x005fb300    41
                         add.s              eax, ecx                                      // 0x005fb301    03c1
                         {disp32} mov       dword ptr [ebx + 0x00000214], eax             // 0x005fb303    898314020000
_jmp_addr_0x005fb309:    push               0x1                                           // 0x005fb309    6a01
                         add                esi, 0x18                                     // 0x005fb30b    83c618
                         push               esi                                           // 0x005fb30e    56
                         mov.s              ecx, ebx                                      // 0x005fb30f    8bcb
                         call               _jmp_addr_0x00562240                          // 0x005fb311    e82a6ff6ff
                         pop                esi                                           // 0x005fb316    5e
                         mov                eax, 0x00000001                               // 0x005fb317    b801000000
                         pop                ebx                                           // 0x005fb31c    5b
                         ret                0x0004                                        // 0x005fb31d    c20400
?Load@GMagicHand@@UAEIAAVGameOSFile@@@Z:
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x005fb320    a194c9be00
                         test               eax, eax                                      // 0x005fb325    85c0
                         push               ebx                                           // 0x005fb327    53
                         push               esi                                           // 0x005fb328    56
                         mov.s              ebx, ecx                                      // 0x005fb329    8bd9
                         push               edi                                           // 0x005fb32b    57
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x005fb32c    8b7c2410
                         {disp8} lea        esi, dword ptr [ebx + 0x14]                   // 0x005fb330    8d7314
                         {disp8} je         _jmp_addr_0x005fb363                          // 0x005fb333    742e
                         push               0x0                                           // 0x005fb335    6a00
                         push               0x1                                           // 0x005fb337    6a01
                         push               esi                                           // 0x005fb339    56
                         mov.s              ecx, edi                                      // 0x005fb33a    8bcf
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x005fb33c    e89f151c00
                         cmp                eax, 0x03                                     // 0x005fb341    83f803
                         {disp8} jne        _jmp_addr_0x005fb350                          // 0x005fb344    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226994], 0x00000000 // 0x005fb346    c70594c9be0000000000
_jmp_addr_0x005fb350:    {disp32} mov       ecx, dword ptr [edi + 0x00000214]             // 0x005fb350    8b8f14020000
                         xor.s              eax, eax                                      // 0x005fb356    33c0
                         mov                al, byte ptr [esi]                            // 0x005fb358    8a06
                         inc                eax                                           // 0x005fb35a    40
                         add.s              ecx, eax                                      // 0x005fb35b    03c8
                         {disp32} mov       dword ptr [edi + 0x00000214], ecx             // 0x005fb35d    898f14020000
_jmp_addr_0x005fb363:    add                ebx, 0x18                                     // 0x005fb363    83c318
                         push               ebx                                           // 0x005fb366    53
                         mov.s              ecx, edi                                      // 0x005fb367    8bcf
                         call               _jmp_addr_0x005622b0                          // 0x005fb369    e8426ff6ff
                         pop                edi                                           // 0x005fb36e    5f
                         pop                esi                                           // 0x005fb36f    5e
                         mov                eax, 0x00000001                               // 0x005fb370    b801000000
                         pop                ebx                                           // 0x005fb375    5b
                         ret                0x0004                                        // 0x005fb376    c20400
                         nop                                                              // 0x005fb379    90
                         nop                                                              // 0x005fb37a    90
                         nop                                                              // 0x005fb37b    90
                         nop                                                              // 0x005fb37c    90
                         nop                                                              // 0x005fb37d    90
                         nop                                                              // 0x005fb37e    90
                         nop                                                              // 0x005fb37f    90
_globl_ct_0x005fb380:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x005fb380    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x005fb386    b001
                         test               al, cl                                        // 0x005fb388    84c8
                         {disp8} jne        _jmp_addr_0x005fb394                          // 0x005fb38a    7508
                         or.s               cl, al                                        // 0x005fb38c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x005fb38e    880d34c9fa00
_jmp_addr_0x005fb394:    {disp32} jmp       _jmp_addr_0x005fb3a0                          // 0x005fb394    e907000000
                         nop                                                              // 0x005fb399    90
                         nop                                                              // 0x005fb39a    90
                         nop                                                              // 0x005fb39b    90
                         nop                                                              // 0x005fb39c    90
                         nop                                                              // 0x005fb39d    90
                         nop                                                              // 0x005fb39e    90
                         nop                                                              // 0x005fb39f    90
_jmp_addr_0x005fb3a0:    push               0x00407870                                    // 0x005fb3a0    6870784000
                         call               _atexit                                       // 0x005fb3a5    e8e7a31c00
                         pop                ecx                                           // 0x005fb3aa    59
                         ret                                                              // 0x005fb3ab    c3
                         nop                                                              // 0x005fb3ac    90
                         nop                                                              // 0x005fb3ad    90
                         nop                                                              // 0x005fb3ae    90
                         nop                                                              // 0x005fb3af    90

?GetInfoFromText@GMagicInfo@@SAHPAD@Z:
                         push               ebx                                           // 0x005fb3b0    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]                   // 0x005fb3b1    8b5c2408
                         push               esi                                           // 0x005fb3b5    56
                         push               edi                                           // 0x005fb3b6    57
                         xor.s              edi, edi                                      // 0x005fb3b7    33ff
                         mov                esi, OFFSET _MagicInfoTable                   // 0x005fb3b9    be107dd300
_jmp_addr_0x005fb3be:    mov                ecx, dword ptr [esi]                          // 0x005fb3be    8b0e
                         call               ?GetMagicInfoText@GMagicInfo@@QBEPBDXZ        // 0x005fb3c0    e82b000000
                         push               eax                                           // 0x005fb3c5    50
                         push               ebx                                           // 0x005fb3c6    53
                         call               __strcmpi                                     // 0x005fb3c7    e814b91c00
                         add                esp, 0x08                                     // 0x005fb3cc    83c408
                         test               eax, eax                                      // 0x005fb3cf    85c0
                         {disp8} je         _jmp_addr_0x005fb3e8                          // 0x005fb3d1    7415
                         add                esi, 0x04                                     // 0x005fb3d3    83c604
                         inc                edi                                           // 0x005fb3d6    47
                         cmp                esi, 0x00d37db8                               // 0x005fb3d7    81feb87dd300
                         {disp8} jl         _jmp_addr_0x005fb3be                          // 0x005fb3dd    7cdf
                         pop                edi                                           // 0x005fb3df    5f
                         pop                esi                                           // 0x005fb3e0    5e
                         mov                eax, 0x0000002a                               // 0x005fb3e1    b82a000000
                         pop                ebx                                           // 0x005fb3e6    5b
                         ret                                                              // 0x005fb3e7    c3
_jmp_addr_0x005fb3e8:    mov.s              eax, edi                                      // 0x005fb3e8    8bc7
                         pop                edi                                           // 0x005fb3ea    5f
                         pop                esi                                           // 0x005fb3eb    5e
                         pop                ebx                                           // 0x005fb3ec    5b
                         ret                                                              // 0x005fb3ed    c3
                         nop                                                              // 0x005fb3ee    90
                         nop                                                              // 0x005fb3ef    90
?GetMagicInfoText@GMagicInfo@@QBEPBDXZ:
                                         call               ?GetMagicEffectInfo@GMagicInfo@@QBEPAVGMagicEffectInfo@@XZ        // 0x005fb3f0    e88b020000
                         add                eax, 0x34                                     // 0x005fb3f5    83c034
                         ret                                                              // 0x005fb3f8    c3
                         nop                                                              // 0x005fb3f9    90
                         nop                                                              // 0x005fb3fa    90
                         nop                                                              // 0x005fb3fb    90
                         nop                                                              // 0x005fb3fc    90
                         nop                                                              // 0x005fb3fd    90
                         nop                                                              // 0x005fb3fe    90
                         nop                                                              // 0x005fb3ff    90
_jmp_addr_0x005fb400:    {disp8} mov        eax, dword ptr [ecx + 0x28]                   // 0x005fb400    8b4128
                         lea                eax, dword ptr [eax + eax * 0x4]              // 0x005fb403    8d0480
                         lea                eax, dword ptr [eax + eax * 0x4]              // 0x005fb406    8d0480
                         shl                eax, 4                                        // 0x005fb409    c1e004
                         add                eax, 0x00d9d678 /* OFFSET _GSpellSeedInfo_ARRAY_00d9d678 */                              // 0x005fb40c    0578d6d900
                         ret                                                              // 0x005fb411    c3
                         nop                                                              // 0x005fb412    90
                         nop                                                              // 0x005fb413    90
                         nop                                                              // 0x005fb414    90
                         nop                                                              // 0x005fb415    90
                         nop                                                              // 0x005fb416    90
                         nop                                                              // 0x005fb417    90
                         nop                                                              // 0x005fb418    90
                         nop                                                              // 0x005fb419    90
                         nop                                                              // 0x005fb41a    90
                         nop                                                              // 0x005fb41b    90
                         nop                                                              // 0x005fb41c    90
                         nop                                                              // 0x005fb41d    90
                         nop                                                              // 0x005fb41e    90
                         nop                                                              // 0x005fb41f    90
_jmp_addr_0x005fb420:    mov                eax, 0x00000001                               // 0x005fb420    b801000000
                         ret                0x0008                                        // 0x005fb425    c20800
                         nop                                                              // 0x005fb428    90
                         nop                                                              // 0x005fb429    90
                         nop                                                              // 0x005fb42a    90
                         nop                                                              // 0x005fb42b    90
                         nop                                                              // 0x005fb42c    90
                         nop                                                              // 0x005fb42d    90
                         nop                                                              // 0x005fb42e    90
                         nop                                                              // 0x005fb42f    90
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x005fb430    8b542408
                         mov                eax, dword ptr [ecx]                          // 0x005fb434    8b01
                         push               edx                                           // 0x005fb436    52
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x005fb437    8b542408
                         add                edx, 0x14                                     // 0x005fb43b    83c214
                         push               edx                                           // 0x005fb43e    52
                         call               dword ptr [eax + 0x30]                        // 0x005fb43f    ff5030
                         ret                0x0008                                        // 0x005fb442    c20800
                         nop                                                              // 0x005fb445    90
                         nop                                                              // 0x005fb446    90
                         nop                                                              // 0x005fb447    90
                         nop                                                              // 0x005fb448    90
                         nop                                                              // 0x005fb449    90
                         nop                                                              // 0x005fb44a    90
                         nop                                                              // 0x005fb44b    90
                         nop                                                              // 0x005fb44c    90
                         nop                                                              // 0x005fb44d    90
                         nop                                                              // 0x005fb44e    90
                         nop                                                              // 0x005fb44f    90
                         push               esi                                           // 0x005fb450    56
                         push               0x3b                                          // 0x005fb451    6a3b
                         push               0x00bf3e80                                    // 0x005fb453    68803ebf00
                         push               0x000000ec                                    // 0x005fb458    68ec000000
                         mov.s              esi, ecx                                      // 0x005fb45d    8bf1
                         call               ?__nw@Base@@SAPAXK@Z                          // 0x005fb45f    e88cb2e3ff
                         add                esp, 0x0c                                     // 0x005fb464    83c40c
                         test               eax, eax                                      // 0x005fb467    85c0
                         {disp8} je         _jmp_addr_0x005fb47f                          // 0x005fb469    7414
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x005fb46b    8b542408
                         {disp8} mov        ecx, dword ptr [esi + 0x10]                   // 0x005fb46f    8b4e10
                         push               edx                                           // 0x005fb472    52
                         push               ecx                                           // 0x005fb473    51
                         mov.s              ecx, eax                                      // 0x005fb474    8bc8
                         call               @__ct__5SpellF10MAGIC_TYPEP9GameThing@16      // 0x005fb476    e8c5461200
                         pop                esi                                           // 0x005fb47b    5e
                         ret                0x0004                                        // 0x005fb47c    c20400
_jmp_addr_0x005fb47f:    xor.s              eax, eax                                      // 0x005fb47f    33c0
                         pop                esi                                           // 0x005fb481    5e
                         ret                0x0004                                        // 0x005fb482    c20400
                         nop                                                              // 0x005fb485    90
                         nop                                                              // 0x005fb486    90
                         nop                                                              // 0x005fb487    90
                         nop                                                              // 0x005fb488    90
                         nop                                                              // 0x005fb489    90
                         nop                                                              // 0x005fb48a    90
                         nop                                                              // 0x005fb48b    90
                         nop                                                              // 0x005fb48c    90
                         nop                                                              // 0x005fb48d    90
                         nop                                                              // 0x005fb48e    90
                         nop                                                              // 0x005fb48f    90
_jmp_addr_0x005fb490:    push               ebx                                           // 0x005fb490    53
                         push               esi                                           // 0x005fb491    56
                         push               edi                                           // 0x005fb492    57
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x005fb493    8b7c2414
                         test               edi, edi                                      // 0x005fb497    85ff
                         {disp8} jne        _jmp_addr_0x005fb4b9                          // 0x005fb499    751e
                         {disp32} mov       edx, dword ptr [_game]                        // 0x005fb49b    8b155c19d000
                         xor.s              eax, eax                                      // 0x005fb4a1    33c0
                         {disp32} mov       al, byte ptr [edx + 0x00205a5b]               // 0x005fb4a3    8a825b5a2000
                         lea                esi, dword ptr [eax + eax * 0x4]              // 0x005fb4a9    8d3480
                         lea                esi, dword ptr [eax + esi * 0x8]              // 0x005fb4ac    8d34f0
                         lea                eax, dword ptr [eax + esi * 0x2]              // 0x005fb4af    8d0470
                         shl                eax, 5                                        // 0x005fb4b2    c1e005
                         {disp8} lea        edi, dword ptr [eax + edx * 0x1 + 0x18]       // 0x005fb4b5    8d7c1018
_jmp_addr_0x005fb4b9:    mov                edx, dword ptr [ecx]                          // 0x005fb4b9    8b11
                         push               edi                                           // 0x005fb4bb    57
                         xor.s              ebx, ebx                                      // 0x005fb4bc    33db
                         call               dword ptr [edx + 0x34]                        // 0x005fb4be    ff5234
                         mov.s              esi, eax                                      // 0x005fb4c1    8bf0
                         test               esi, esi                                      // 0x005fb4c3    85f6
                         {disp8} je         _jmp_addr_0x005fb50e                          // 0x005fb4c5    7447
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x005fb4c7    8b4c2420
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x005fb4cb    8b542418
                         mov                eax, dword ptr [esi]                          // 0x005fb4cf    8b06
                         push               ecx                                           // 0x005fb4d1    51
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x005fb4d2    8b4c2414
                         push               edx                                           // 0x005fb4d6    52
                         push               ecx                                           // 0x005fb4d7    51
                         push               edi                                           // 0x005fb4d8    57
                         mov.s              ecx, esi                                      // 0x005fb4d9    8bce
                         call               dword ptr [eax + 0x534]                       // 0x005fb4db    ff9034050000
                         mov.s              edi, eax                                      // 0x005fb4e1    8bf8
                         cmp                edi, 0x01                                     // 0x005fb4e3    83ff01
                         {disp8} je         _jmp_addr_0x005fb500                          // 0x005fb4e6    7418
                         mov                edx, dword ptr [esi]                          // 0x005fb4e8    8b16
                         push               ebx                                           // 0x005fb4ea    53
                         mov.s              ecx, esi                                      // 0x005fb4eb    8bce
                         call               dword ptr [edx + 0xc]                         // 0x005fb4ed    ff520c
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x005fb4f0    8b4c241c
                         xor.s              eax, eax                                      // 0x005fb4f4    33c0
                         mov                dword ptr [ecx], eax                          // 0x005fb4f6    8901
                         mov.s              eax, edi                                      // 0x005fb4f8    8bc7
                         pop                edi                                           // 0x005fb4fa    5f
                         pop                esi                                           // 0x005fb4fb    5e
                         pop                ebx                                           // 0x005fb4fc    5b
                         ret                0x0014                                        // 0x005fb4fd    c21400
_jmp_addr_0x005fb500:    {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x005fb500    8b54241c
                         mov.s              eax, edi                                      // 0x005fb504    8bc7
                         pop                edi                                           // 0x005fb506    5f
                         mov                dword ptr [edx], esi                          // 0x005fb507    8932
                         pop                esi                                           // 0x005fb509    5e
                         pop                ebx                                           // 0x005fb50a    5b
                         ret                0x0014                                        // 0x005fb50b    c21400
_jmp_addr_0x005fb50e:    {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x005fb50e    8b44241c
                         pop                edi                                           // 0x005fb512    5f
                         mov                dword ptr [eax], esi                          // 0x005fb513    8930
                         pop                esi                                           // 0x005fb515    5e
                         mov.s              eax, ebx                                      // 0x005fb516    8bc3
                         pop                ebx                                           // 0x005fb518    5b
                         ret                0x0014                                        // 0x005fb519    c21400
                         nop                                                              // 0x005fb51c    90
                         nop                                                              // 0x005fb51d    90
                         nop                                                              // 0x005fb51e    90
                         nop                                                              // 0x005fb51f    90
_jmp_addr_0x005fb520:    push               esi                                           // 0x005fb520    56
                         mov.s              esi, ecx                                      // 0x005fb521    8bf1
                         call               _jmp_addr_0x005fb400                          // 0x005fb523    e8d8feffff
                         {disp32} mov       ecx, dword ptr [eax + 0x00000118]             // 0x005fb528    8b8818010000
                         test               ecx, ecx                                      // 0x005fb52e    85c9
                         {disp8} jne        _jmp_addr_0x005fb559                          // 0x005fb530    7527
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x005fb532    8b442418
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x005fb536    8b4c2414
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x005fb53a    8b542410
                         push               eax                                           // 0x005fb53e    50
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x005fb53f    8b442410
                         push               ecx                                           // 0x005fb543    51
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x005fb544    8b4c2410
                         push               edx                                           // 0x005fb548    52
                         add                ecx, 0x14                                     // 0x005fb549    83c114
                         push               eax                                           // 0x005fb54c    50
                         push               ecx                                           // 0x005fb54d    51
                         mov.s              ecx, esi                                      // 0x005fb54e    8bce
                         call               _jmp_addr_0x005fb490                          // 0x005fb550    e83bffffff
                         pop                esi                                           // 0x005fb555    5e
                         ret                0x0014                                        // 0x005fb556    c21400
_jmp_addr_0x005fb559:    push               ebx                                           // 0x005fb559    53
                         push               edi                                           // 0x005fb55a    57
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x005fb55b    8b7c2414
                         test               edi, edi                                      // 0x005fb55f    85ff
                         {disp8} jne        _jmp_addr_0x005fb581                          // 0x005fb561    751e
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x005fb563    8b0d5c19d000
                         xor.s              eax, eax                                      // 0x005fb569    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a5b]               // 0x005fb56b    8a815b5a2000
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x005fb571    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x005fb574    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x005fb577    8d0450
                         shl                eax, 5                                        // 0x005fb57a    c1e005
                         {disp8} lea        edi, dword ptr [eax + ecx * 0x1 + 0x18]       // 0x005fb57d    8d7c0818
_jmp_addr_0x005fb581:    mov                edx, dword ptr [esi]                          // 0x005fb581    8b16
                         push               edi                                           // 0x005fb583    57
                         mov.s              ecx, esi                                      // 0x005fb584    8bce
                         xor.s              ebx, ebx                                      // 0x005fb586    33db
                         call               dword ptr [edx + 0x34]                        // 0x005fb588    ff5234
                         mov.s              esi, eax                                      // 0x005fb58b    8bf0
                         test               esi, esi                                      // 0x005fb58d    85f6
                         {disp8} je         _jmp_addr_0x005fb5bd                          // 0x005fb58f    742c
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x005fb591    8b4c2420
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x005fb595    8b542418
                         mov                eax, dword ptr [esi]                          // 0x005fb599    8b06
                         push               ecx                                           // 0x005fb59b    51
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x005fb59c    8b4c2414
                         push               edx                                           // 0x005fb5a0    52
                         push               ecx                                           // 0x005fb5a1    51
                         push               edi                                           // 0x005fb5a2    57
                         mov.s              ecx, esi                                      // 0x005fb5a3    8bce
                         call               dword ptr [eax + 0x538]                       // 0x005fb5a5    ff9038050000
                         mov.s              ebx, eax                                      // 0x005fb5ab    8bd8
                         cmp                ebx, 0x01                                     // 0x005fb5ad    83fb01
                         {disp8} je         _jmp_addr_0x005fb5bd                          // 0x005fb5b0    740b
                         mov                edx, dword ptr [esi]                          // 0x005fb5b2    8b16
                         push               0x0                                           // 0x005fb5b4    6a00
                         mov.s              ecx, esi                                      // 0x005fb5b6    8bce
                         call               dword ptr [edx + 0xc]                         // 0x005fb5b8    ff520c
                         xor.s              esi, esi                                      // 0x005fb5bb    33f6
_jmp_addr_0x005fb5bd:    {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x005fb5bd    8b44241c
                         mov                dword ptr [eax], esi                          // 0x005fb5c1    8930
                         pop                edi                                           // 0x005fb5c3    5f
                         mov.s              eax, ebx                                      // 0x005fb5c4    8bc3
                         pop                ebx                                           // 0x005fb5c6    5b
                         pop                esi                                           // 0x005fb5c7    5e
                         ret                0x0014                                        // 0x005fb5c8    c21400
                         call               ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                          // 0x005fb5cb    e82962e0ff
_jmp_addr_0x005fb5d0:    push               esi                                           // 0x005fb5d0    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x005fb5d1    8b742408
                         push               edi                                           // 0x005fb5d5    57
                         mov.s              edi, ecx                                      // 0x005fb5d6    8bf9
                         mov.s              ecx, esi                                      // 0x005fb5d8    8bce
                         call               ?InBounds@MapCoords@@QBEIXZ                   // 0x005fb5da    e8e18c0000
                         test               eax, eax                                      // 0x005fb5df    85c0
                         {disp32} je        _jmp_addr_0x005fb668                          // 0x005fb5e1    0f8481000000
                         {disp8} mov        ecx, dword ptr [edi + 0x34]                   // 0x005fb5e7    8b4f34
                         cmp                ecx, 0x03                                     // 0x005fb5ea    83f903
                         mov                eax, 0x00000001                               // 0x005fb5ed    b801000000
                         {disp8} ja         _jmp_addr_0x005fb66a                          // 0x005fb5f2    7776
                         jmp                dword ptr [ecx*4 + 0x5fb670]                  // 0x005fb5f4    ff248d70b65f00
                         mov.s              ecx, esi                                      // 0x005fb5fb    8bce
                         call               _jmp_addr_0x00603720                          // 0x005fb5fd    e81e810000
                         pop                edi                                           // 0x005fb602    5f
                         pop                esi                                           // 0x005fb603    5e
                         ret                0x0008                                        // 0x005fb604    c20800
                         mov.s              ecx, esi                                      // 0x005fb607    8bce
                         call               _jmp_addr_0x00603720                          // 0x005fb609    e812810000
                         test               eax, eax                                      // 0x005fb60e    85c0
                         {disp8} je         _jmp_addr_0x005fb668                          // 0x005fb610    7456
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x005fb612    8b442410
                         push               0x1                                           // 0x005fb616    6a01
                         push               0x0                                           // 0x005fb618    6a00
                         push               0x0                                           // 0x005fb61a    6a00
                         push               eax                                           // 0x005fb61c    50
                         push               esi                                           // 0x005fb61d    56
                         call               _jmp_addr_0x005cd170                          // 0x005fb61e    e84d1bfdff
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005fb623    d81d98a38a00
                         add                esp, 0x14                                     // 0x005fb629    83c414
                         fnstsw             ax                                            // 0x005fb62c    dfe0
                         test               ah, 0x41                                      // 0x005fb62e    f6c441
                         {disp8} jne        _jmp_addr_0x005fb668                          // 0x005fb631    7535
                         pop                edi                                           // 0x005fb633    5f
                         mov                eax, 0x00000001                               // 0x005fb634    b801000000
                         pop                esi                                           // 0x005fb639    5e
                         ret                0x0008                                        // 0x005fb63a    c20800
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x005fb63d    8b4c2410
                         push               0x1                                           // 0x005fb641    6a01
                         push               0x0                                           // 0x005fb643    6a00
                         push               0x0                                           // 0x005fb645    6a00
                         push               ecx                                           // 0x005fb647    51
                         push               esi                                           // 0x005fb648    56
                         call               _jmp_addr_0x005cd170                          // 0x005fb649    e8221bfdff
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005fb64e    d81d98a38a00
                         add                esp, 0x14                                     // 0x005fb654    83c414
                         fnstsw             ax                                            // 0x005fb657    dfe0
                         test               ah, 0x41                                      // 0x005fb659    f6c441
                         {disp8} jne        _jmp_addr_0x005fb668                          // 0x005fb65c    750a
                         pop                edi                                           // 0x005fb65e    5f
                         mov                eax, 0x00000001                               // 0x005fb65f    b801000000
                         pop                esi                                           // 0x005fb664    5e
                         ret                0x0008                                        // 0x005fb665    c20800
_jmp_addr_0x005fb668:    xor.s              eax, eax                                      // 0x005fb668    33c0
_jmp_addr_0x005fb66a:    pop                edi                                           // 0x005fb66a    5f
                         pop                esi                                           // 0x005fb66b    5e
                         ret                0x0008                                        // 0x005fb66c    c20800

// Snippet: db, [0x005fb66f, 0x005fb670)
.byte 0x90                        // 0x005fb66f

// Snippet: jmptbl, [0x005fb670, 0x005fb680)
.byte 0x5e, 0xb6, 0x5f, 0x00      // 0x005fb670
.byte 0xfb, 0xb5, 0x5f, 0x00      // 0x005fb674
.byte 0x3d, 0xb6, 0x5f, 0x00      // 0x005fb678
.byte 0x07, 0xb6, 0x5f, 0x00      // 0x005fb67c

