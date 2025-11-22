.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern @PlaySoundEffect__6GAudioFP20LH_SamplePlayOptions@12
.extern ?GetNextPlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z
.extern _jmp_addr_0x00555880
.extern _jmp_addr_0x005e6540
.extern ?DoesObjectTypeCountAsFixed@MapCell@@SA_NW4OBJECT_TYPE@@@Z
.extern @GetLHPoint__9MapCoordsCFv@12
.extern _jmp_addr_0x00637cc0
.extern _jmp_addr_0x00646950
.extern @GetRealInterface__7GPlayerFUl@12
.extern ?CreateReaction@Reaction@@SAPAV1@PAVGameThingWithPos@@EPAVGPlayer@@H@Z
.extern _jmp_addr_0x0071b570
.extern _jmp_addr_0x007a1400
.extern _atexit
.extern ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z
.extern @Create__10LH3DObjectFQ210LH3DObject10ObjectType@4
.extern _jmp_addr_0x00823c90

.globl @InitialiseIsFixedForMapList__6ObjectFv@4
.globl _jmp_addr_0x0063a6a0
.globl _jmp_addr_0x0063a710
.extern ?GetInHandImmersionTexture@Object@@UAE?AW4IMMERSION_EFFECT_TYPE@@XZ
.globl ?CreateSmokyStuff@Object@@QAEIJMULH3DColor@@@Z
.extern ?ApplyWaterSpell@Object@@UAEMPAVSpellWater@@@Z
.globl _jmp_addr_0x0063a940
.globl ?Create@Game3DObject@@SAPAV1@W4ObjectType@LH3DObject@@@Z
.globl ?GetAltitudeFondation@Game3DObject@@QBEMXZ

.globl _globl_ct_0x0063ab30
.globl _globl_ct_0x0063ab60
.globl _globl_ct_0x0063ab80
.globl ?InitialiseIsFixedForMapList@Object@@UAEXH@Z
.globl ?CanBecomeArtifact@Object@@UAE_NXZ
.globl ?IsDrowning@Object@@UAE_NXZ
.globl ?DestroyedByBeam@Object@@UAEXXZ
.globl ?SetYJustAngle@Object@@UAEXM@Z
.globl ?BlocksTownClearArea@Object@@UAE_NXZ
.globl ?GetSacrificeValue@Object@@UAEMXZ
.globl ?ApplyWaterSpell@Object@@UAEMPAVSpellWater@@@Z
.globl ?DeleteObjectAndTakeResource@Object@@UAE_NPAV1@PAVGInterfaceStatus@@@Z
.globl ?GetRadiusMultiplierForApplyingPotToPos@Object@@UAEMXZ
.globl ?DoCreatureMimicAfterAddingResource@Object@@UAE_NW4RESOURCE_TYPE@@PAVGInterfaceStatus@@@Z
.globl ?DropSfx@Object@@UAEIXZ
.globl ?DiscipleInHandNear@Object@@UAEXPAVVillager@@PAVGInterfaceStatus@@@Z
.globl ?GetInHandImmersionTexture@Object@@UAE?AW4IMMERSION_EFFECT_TYPE@@XZ

// Snippet: asm, [0x0063a640, 0x0063ad63)
?InitialiseIsFixedForMapList@Object@@UAEXH@Z:
@InitialiseIsFixedForMapList__6ObjectFv@4:    push               esi                                           // 0x0063a640    56
                         mov.s              esi, ecx                                      // 0x0063a641    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x28]                   // 0x0063a643    8b4628
                         {disp8} mov        eax, dword ptr [eax + 0x10]                   // 0x0063a646    8b4010
                         push               eax                                           // 0x0063a649    50
                         call               ?DoesObjectTypeCountAsFixed@MapCell@@SA_NW4OBJECT_TYPE@@@Z                   // 0x0063a64a    e8c16efcff
                         xor.s              ecx, ecx                                      // 0x0063a64f    33c9
                         {disp8} mov        cx, word ptr [esi + 0x24]                     // 0x0063a651    668b4e24
                         shl                eax, 0xf                                      // 0x0063a655    c1e00f
                         add                esp, 0x04                                     // 0x0063a658    83c404
                         and                ecx, 0x00007fff                               // 0x0063a65b    81e1ff7f0000
                         or.s               ecx, eax                                      // 0x0063a661    0bc8
                         {disp8} mov        word ptr [esi + 0x24], cx                     // 0x0063a663    66894e24
                         pop                esi                                           // 0x0063a667    5e
                         ret                                                              // 0x0063a668    c3
                         nop                                                              // 0x0063a669    90
                         nop                                                              // 0x0063a66a    90
                         nop                                                              // 0x0063a66b    90
                         nop                                                              // 0x0063a66c    90
                         nop                                                              // 0x0063a66d    90
                         nop                                                              // 0x0063a66e    90
                         nop                                                              // 0x0063a66f    90
                         push               esi                                           // 0x0063a670    56
                         mov.s              esi, ecx                                      // 0x0063a671    8bf1
                         mov                eax, dword ptr [esi]                          // 0x0063a673    8b06
                         call               dword ptr [eax + 0x208]                       // 0x0063a675    ff9008020000
                         test               eax, eax                                      // 0x0063a67b    85c0
                         {disp8} jne        _jmp_addr_0x0063a68f                          // 0x0063a67d    7510
                         mov                edx, dword ptr [esi]                          // 0x0063a67f    8b16
                         mov.s              ecx, esi                                      // 0x0063a681    8bce
                         call               dword ptr [edx + 0x304]                       // 0x0063a683    ff9204030000
                         test               eax, eax                                      // 0x0063a689    85c0
                         {disp8} jne        _jmp_addr_0x0063a68f                          // 0x0063a68b    7502
                         pop                esi                                           // 0x0063a68d    5e
                         ret                                                              // 0x0063a68e    c3
_jmp_addr_0x0063a68f:    mov                eax, 0x00000001                               // 0x0063a68f    b801000000
                         pop                esi                                           // 0x0063a694    5e
                         ret                                                              // 0x0063a695    c3
                         nop                                                              // 0x0063a696    90
                         nop                                                              // 0x0063a697    90
                         nop                                                              // 0x0063a698    90
                         nop                                                              // 0x0063a699    90
                         nop                                                              // 0x0063a69a    90
                         nop                                                              // 0x0063a69b    90
                         nop                                                              // 0x0063a69c    90
                         nop                                                              // 0x0063a69d    90
                         nop                                                              // 0x0063a69e    90
                         nop                                                              // 0x0063a69f    90
_jmp_addr_0x0063a6a0:    push               ebx                                           // 0x0063a6a0    53
                         push               esi                                           // 0x0063a6a1    56
                         push               edi                                           // 0x0063a6a2    57
                         mov.s              ebx, ecx                                      // 0x0063a6a3    8bd9
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0063a6a5    8b0d5c19d000
                         push               0x0                                           // 0x0063a6ab    6a00
                         call               ?GetNextPlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z  // 0x0063a6ad    e8ee61f1ff
                         mov.s              edi, eax                                      // 0x0063a6b2    8bf8
                         test               edi, edi                                      // 0x0063a6b4    85ff
                         {disp8} je         _jmp_addr_0x0063a6f4                          // 0x0063a6b6    743c
_jmp_addr_0x0063a6b8:    xor.s              esi, esi                                      // 0x0063a6b8    33f6
_jmp_addr_0x0063a6ba:    push               esi                                           // 0x0063a6ba    56
                         mov.s              ecx, edi                                      // 0x0063a6bb    8bcf
                         call               @GetRealInterface__7GPlayerFUl@12             // 0x0063a6bd    e85e2a0100
                         test               eax, eax                                      // 0x0063a6c2    85c0
                         {disp8} je         _jmp_addr_0x0063a6dc                          // 0x0063a6c4    7416
                         push               esi                                           // 0x0063a6c6    56
                         mov.s              ecx, edi                                      // 0x0063a6c7    8bcf
                         call               @GetRealInterface__7GPlayerFUl@12             // 0x0063a6c9    e8522a0100
                         {disp32} mov       eax, dword ptr [eax + 0x0000039c]             // 0x0063a6ce    8b809c030000
                         cmp                dword ptr [eax + 0x00000120], ebx             // 0x0063a6d4    399820010000
                         {disp8} je         _jmp_addr_0x0063a6fa                          // 0x0063a6da    741e
_jmp_addr_0x0063a6dc:    inc                esi                                           // 0x0063a6dc    46
                         cmp                esi, 0x12                                     // 0x0063a6dd    83fe12
                         .byte              0x72, 0xd8// {disp8} jb _jmp_addr_0x0063a6ba  // 0x0063a6e0    72d8
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0063a6e2    8b0d5c19d000
                         push               edi                                           // 0x0063a6e8    57
                         call               ?GetNextPlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z  // 0x0063a6e9    e8b261f1ff
                         mov.s              edi, eax                                      // 0x0063a6ee    8bf8
                         test               edi, edi                                      // 0x0063a6f0    85ff
                         {disp8} jne        _jmp_addr_0x0063a6b8                          // 0x0063a6f2    75c4
_jmp_addr_0x0063a6f4:    pop                edi                                           // 0x0063a6f4    5f
                         pop                esi                                           // 0x0063a6f5    5e
                         xor.s              eax, eax                                      // 0x0063a6f6    33c0
                         pop                ebx                                           // 0x0063a6f8    5b
                         ret                                                              // 0x0063a6f9    c3
_jmp_addr_0x0063a6fa:    push               esi                                           // 0x0063a6fa    56
                         mov.s              ecx, edi                                      // 0x0063a6fb    8bcf
                         call               @GetRealInterface__7GPlayerFUl@12             // 0x0063a6fd    e81e2a0100
                         {disp32} mov       eax, dword ptr [eax + 0x0000039c]             // 0x0063a702    8b809c030000
                         pop                edi                                           // 0x0063a708    5f
                         pop                esi                                           // 0x0063a709    5e
                         pop                ebx                                           // 0x0063a70a    5b
                         ret                                                              // 0x0063a70b    c3
                         nop                                                              // 0x0063a70c    90
                         nop                                                              // 0x0063a70d    90
                         nop                                                              // 0x0063a70e    90
                         nop                                                              // 0x0063a70f    90
_jmp_addr_0x0063a710:    push               ebx                                           // 0x0063a710    53
                         push               esi                                           // 0x0063a711    56
                         push               edi                                           // 0x0063a712    57
                         mov.s              ebx, ecx                                      // 0x0063a713    8bd9
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0063a715    8b0d5c19d000
                         push               0x0                                           // 0x0063a71b    6a00
                         call               ?GetNextPlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z  // 0x0063a71d    e87e61f1ff
                         mov.s              edi, eax                                      // 0x0063a722    8bf8
                         test               edi, edi                                      // 0x0063a724    85ff
                         {disp8} je         _jmp_addr_0x0063a764                          // 0x0063a726    743c
_jmp_addr_0x0063a728:    xor.s              esi, esi                                      // 0x0063a728    33f6
_jmp_addr_0x0063a72a:    push               esi                                           // 0x0063a72a    56
                         mov.s              ecx, edi                                      // 0x0063a72b    8bcf
                         call               @GetRealInterface__7GPlayerFUl@12             // 0x0063a72d    e8ee290100
                         test               eax, eax                                      // 0x0063a732    85c0
                         {disp8} je         _jmp_addr_0x0063a74c                          // 0x0063a734    7416
                         push               esi                                           // 0x0063a736    56
                         mov.s              ecx, edi                                      // 0x0063a737    8bcf
                         call               @GetRealInterface__7GPlayerFUl@12             // 0x0063a739    e8e2290100
                         {disp32} mov       eax, dword ptr [eax + 0x0000039c]             // 0x0063a73e    8b809c030000
                         cmp                dword ptr [eax + 0x00000124], ebx             // 0x0063a744    399824010000
                         {disp8} je         _jmp_addr_0x0063a76a                          // 0x0063a74a    741e
_jmp_addr_0x0063a74c:    inc                esi                                           // 0x0063a74c    46
                         cmp                esi, 0x12                                     // 0x0063a74d    83fe12
                         .byte              0x72, 0xd8// {disp8} jb _jmp_addr_0x0063a72a  // 0x0063a750    72d8
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0063a752    8b0d5c19d000
                         push               edi                                           // 0x0063a758    57
                         call               ?GetNextPlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z  // 0x0063a759    e84261f1ff
                         mov.s              edi, eax                                      // 0x0063a75e    8bf8
                         test               edi, edi                                      // 0x0063a760    85ff
                         {disp8} jne        _jmp_addr_0x0063a728                          // 0x0063a762    75c4
_jmp_addr_0x0063a764:    pop                edi                                           // 0x0063a764    5f
                         pop                esi                                           // 0x0063a765    5e
                         xor.s              eax, eax                                      // 0x0063a766    33c0
                         pop                ebx                                           // 0x0063a768    5b
                         ret                                                              // 0x0063a769    c3
_jmp_addr_0x0063a76a:    push               esi                                           // 0x0063a76a    56
                         mov.s              ecx, edi                                      // 0x0063a76b    8bcf
                         call               @GetRealInterface__7GPlayerFUl@12             // 0x0063a76d    e8ae290100
                         {disp32} mov       eax, dword ptr [eax + 0x0000039c]             // 0x0063a772    8b809c030000
                         pop                edi                                           // 0x0063a778    5f
                         pop                esi                                           // 0x0063a779    5e
                         pop                ebx                                           // 0x0063a77a    5b
                         ret                                                              // 0x0063a77b    c3
                         nop                                                              // 0x0063a77c    90
                         nop                                                              // 0x0063a77d    90
                         nop                                                              // 0x0063a77e    90
                         nop                                                              // 0x0063a77f    90
?IsDrowning@Object@@UAE_NXZ:
                         test               byte ptr [ecx + 0x24], 0x40                   // 0x0063a780    f6412440
                         {disp8} je         _jmp_addr_0x0063a7ac                          // 0x0063a784    7426
                         push               ecx                                           // 0x0063a786    51
                         call               _jmp_addr_0x00646950                          // 0x0063a787    e8c4c10000
                         add                esp, 0x04                                     // 0x0063a78c    83c404
                         test               eax, eax                                      // 0x0063a78f    85c0
                         {disp8} je         _jmp_addr_0x0063a7ac                          // 0x0063a791    7419
                         {disp32} fld       dword ptr [eax + 0x000000cc]                  // 0x0063a793    d980cc000000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0063a799    d81d98a38a00
                         fnstsw             ax                                            // 0x0063a79f    dfe0
                         test               ah, 0x01                                      // 0x0063a7a1    f6c401
                         {disp8} je         _jmp_addr_0x0063a7ac                          // 0x0063a7a4    7406
                         mov                eax, 0x00000001                               // 0x0063a7a6    b801000000
                         ret                                                              // 0x0063a7ab    c3
_jmp_addr_0x0063a7ac:    xor.s              eax, eax                                      // 0x0063a7ac    33c0
                         ret                                                              // 0x0063a7ae    c3
                         nop                                                              // 0x0063a7af    90
?DropSfx@Object@@UAEIXZ:
                         xor.s              eax, eax                                      // 0x0063a7b0    33c0
                         ret                                                              // 0x0063a7b2    c3
                         nop                                                              // 0x0063a7b3    90
                         nop                                                              // 0x0063a7b4    90
                         nop                                                              // 0x0063a7b5    90
                         nop                                                              // 0x0063a7b6    90
                         nop                                                              // 0x0063a7b7    90
                         nop                                                              // 0x0063a7b8    90
                         nop                                                              // 0x0063a7b9    90
                         nop                                                              // 0x0063a7ba    90
                         nop                                                              // 0x0063a7bb    90
                         nop                                                              // 0x0063a7bc    90
                         nop                                                              // 0x0063a7bd    90
                         nop                                                              // 0x0063a7be    90
                         nop                                                              // 0x0063a7bf    90
?GetInHandImmersionTexture@Object@@UAE?AW4IMMERSION_EFFECT_TYPE@@XZ:
                         or                 eax, -0x1                                     // 0x0063a7c0    83c8ff
                         ret                                                              // 0x0063a7c3    c3
                         nop                                                              // 0x0063a7c4    90
                         nop                                                              // 0x0063a7c5    90
                         nop                                                              // 0x0063a7c6    90
                         nop                                                              // 0x0063a7c7    90
                         nop                                                              // 0x0063a7c8    90
                         nop                                                              // 0x0063a7c9    90
                         nop                                                              // 0x0063a7ca    90
                         nop                                                              // 0x0063a7cb    90
                         nop                                                              // 0x0063a7cc    90
                         nop                                                              // 0x0063a7cd    90
                         nop                                                              // 0x0063a7ce    90
                         nop                                                              // 0x0063a7cf    90
?CanBecomeArtifact@Object@@UAE_NXZ:
                         {disp8} mov        eax, dword ptr [ecx + 0x28]                   // 0x0063a7d0    8b4128
                         {disp32} fld       dword ptr [eax + 0x000000f4]                  // 0x0063a7d3    d980f4000000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0063a7d9    d81d98a38a00
                         fnstsw             ax                                            // 0x0063a7df    dfe0
                         test               ah, 0x41                                      // 0x0063a7e1    f6c441
                         {disp8} jne        _jmp_addr_0x0063a7f8                          // 0x0063a7e4    7512
                         mov                edx, dword ptr [ecx]                          // 0x0063a7e6    8b11
                         call               dword ptr [edx + 0x448]                       // 0x0063a7e8    ff9248040000
                         test               eax, eax                                      // 0x0063a7ee    85c0
                         {disp8} jne        _jmp_addr_0x0063a7f8                          // 0x0063a7f0    7506
                         mov                eax, 0x00000001                               // 0x0063a7f2    b801000000
                         ret                                                              // 0x0063a7f7    c3
_jmp_addr_0x0063a7f8:    xor.s              eax, eax                                      // 0x0063a7f8    33c0
                         ret                                                              // 0x0063a7fa    c3
                         call               ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                          // 0x0063a7fb    e8f96fdcff
?SetYJustAngle@Object@@UAEXM@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0063a800    8b442404
                         {disp8} mov        dword ptr [ecx + 0x4c], eax                   // 0x0063a804    89414c
                         ret                0x0004                                        // 0x0063a807    c20400
                         nop                                                              // 0x0063a80a    90
                         nop                                                              // 0x0063a80b    90
                         nop                                                              // 0x0063a80c    90
                         nop                                                              // 0x0063a80d    90
                         nop                                                              // 0x0063a80e    90
                         nop                                                              // 0x0063a80f    90
?CreateSmokyStuff@Object@@QAEIJMULH3DColor@@@Z:
                         sub                esp, 0x44                                     // 0x0063a810    83ec44
                         push               esi                                           // 0x0063a813    56
                         mov.s              esi, ecx                                      // 0x0063a814    8bf1
                         mov                eax, dword ptr [esi]                          // 0x0063a816    8b06
                         call               dword ptr [eax + 0x42c]                       // 0x0063a818    ff902c040000
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x0063a81e    d80db4a38a00
                         mov                edx, dword ptr [esi]                          // 0x0063a824    8b16
                         mov.s              ecx, esi                                      // 0x0063a826    8bce
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x0063a828    d95c240c
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x0063a82c    c744241000000000
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x0063a834    c744241400000000
                         call               dword ptr [edx + 0x508]                       // 0x0063a83c    ff9208050000
                         fld                st(0)                                         // 0x0063a842    d9c0
                         fcos                                                             // 0x0063a844    d9ff
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x0063a846    8b44240c
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0063a84a    8b4c2410
                         {disp8} mov        esi, dword ptr [esi + 0x40]                   // 0x0063a84e    8b7640
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x0063a851    89442404
                         {disp8} mov        eax, dword ptr [esp + 0x54]                   // 0x0063a855    8b442454
                         mov.s              edx, ecx                                      // 0x0063a859    8bd1
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x0063a85b    89542410
                         {disp8} mov        edx, dword ptr [esp + 0x4c]                   // 0x0063a85f    8b54244c
                         add                esi, 0x38                                     // 0x0063a863    83c638
                         push               eax                                           // 0x0063a866    50
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                   // 0x0063a867    894c240c
                         {disp8} mov        ecx, dword ptr [esp + 0x54]                   // 0x0063a86b    8b4c2454
                         push               ecx                                           // 0x0063a86f    51
                         push               edx                                           // 0x0063a870    52
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x0063a871    8d442418
                         push               eax                                           // 0x0063a875    50
                         {disp8} fstp       dword ptr [esp + 0x48]                        // 0x0063a876    d95c2448
                         fsin                                                             // 0x0063a87a    d9fe
                         fld                st(0)                                         // 0x0063a87c    d9c0
                         fchs                                                             // 0x0063a87e    d9e0
                         {disp8} fmul       dword ptr [esp + 0x24]                        // 0x0063a880    d84c2424
                         {disp8} fld        dword ptr [esp + 0x48]                        // 0x0063a884    d9442448
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x0063a888    d84c241c
                         faddp              st(1), st                                     // 0x0063a88c    dec1
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0063a88e    d95c241c
                         {disp8} fld        dword ptr [esp + 0x48]                        // 0x0063a892    d9442448
                         {disp8} fmul       dword ptr [esp + 0x24]                        // 0x0063a896    d84c2424
                         fxch               st(1)                                         // 0x0063a89a    d9c9
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x0063a89c    d84c2414
                         faddp              st(1), st                                     // 0x0063a8a0    dec1
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x0063a8a2    d95c2424
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x0063a8a6    d944241c
                         fadd               dword ptr [esi]                               // 0x0063a8aa    d806
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0063a8ac    d95c241c
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0063a8b0    d9442420
                         {disp8} fadd       dword ptr [esi + 0x04]                        // 0x0063a8b4    d84604
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0063a8b7    d95c2420
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x0063a8bb    d9442424
                         {disp8} fadd       dword ptr [esi + 0x08]                        // 0x0063a8bf    d84608
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x0063a8c2    d95c2424
                         call               _jmp_addr_0x00823c90                          // 0x0063a8c6    e8c5931e00
                         add                esp, 0x10                                     // 0x0063a8cb    83c410
                         pop                esi                                           // 0x0063a8ce    5e
                         add                esp, 0x44                                     // 0x0063a8cf    83c444
                         ret                0x000c                                        // 0x0063a8d2    c20c00
                         nop                                                              // 0x0063a8d5    90
                         nop                                                              // 0x0063a8d6    90
                         nop                                                              // 0x0063a8d7    90
                         nop                                                              // 0x0063a8d8    90
                         nop                                                              // 0x0063a8d9    90
                         nop                                                              // 0x0063a8da    90
                         nop                                                              // 0x0063a8db    90
                         nop                                                              // 0x0063a8dc    90
                         nop                                                              // 0x0063a8dd    90
                         nop                                                              // 0x0063a8de    90
                         nop                                                              // 0x0063a8df    90
?ApplyWaterSpell@Object@@UAEMPAVSpellWater@@@Z:
                         push               esi                                           // 0x0063a8e0    56
                         call               _jmp_addr_0x00637cc0                          // 0x0063a8e1    e8dad3ffff
                         test               eax, eax                                      // 0x0063a8e6    85c0
                         {disp8} je         _jmp_addr_0x0063a913                          // 0x0063a8e8    7429
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x0063a8ea    8b742408
                         {disp32} mov       eax, dword ptr [esi + 0x000000f0]             // 0x0063a8ee    8b86f0000000
                         test               eax, eax                                      // 0x0063a8f4    85c0
                         {disp8} jne        _jmp_addr_0x0063a913                          // 0x0063a8f6    751b
                         mov                eax, dword ptr [esi]                          // 0x0063a8f8    8b06
                         push               0x1                                           // 0x0063a8fa    6a01
                         mov.s              ecx, esi                                      // 0x0063a8fc    8bce
                         call               dword ptr [eax + 0x1c]                        // 0x0063a8fe    ff501c
                         push               eax                                           // 0x0063a901    50
                         push               0x22                                          // 0x0063a902    6a22
                         push               esi                                           // 0x0063a904    56
                         call               ?CreateReaction@Reaction@@SAPAV1@PAVGameThingWithPos@@EPAVGPlayer@@H@Z              // 0x0063a905    e866940a00
                         add                esp, 0x10                                     // 0x0063a90a    83c410
                         {disp32} mov       dword ptr [esi + 0x000000f0], eax             // 0x0063a90d    8986f0000000
_jmp_addr_0x0063a913:    {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x0063a913    d90598a38a00
                         pop                esi                                           // 0x0063a919    5e
                         ret                0x0004                                        // 0x0063a91a    c20400
                         nop                                                              // 0x0063a91d    90
                         nop                                                              // 0x0063a91e    90
                         nop                                                              // 0x0063a91f    90
?BlocksTownClearArea@Object@@UAE_NXZ:
                         mov                eax, 0x00000001                               // 0x0063a920    b801000000
                         ret                                                              // 0x0063a925    c3
                         nop                                                              // 0x0063a926    90
                         nop                                                              // 0x0063a927    90
                         nop                                                              // 0x0063a928    90
                         nop                                                              // 0x0063a929    90
                         nop                                                              // 0x0063a92a    90
                         nop                                                              // 0x0063a92b    90
                         nop                                                              // 0x0063a92c    90
                         nop                                                              // 0x0063a92d    90
                         nop                                                              // 0x0063a92e    90
                         nop                                                              // 0x0063a92f    90
?DeleteObjectAndTakeResource@Object@@UAE_NPAV1@PAVGInterfaceStatus@@@Z:
                         xor.s              eax, eax                                      // 0x0063a930    33c0
                         ret                0x0008                                        // 0x0063a932    c20800
                         nop                                                              // 0x0063a935    90
                         nop                                                              // 0x0063a936    90
                         nop                                                              // 0x0063a937    90
                         nop                                                              // 0x0063a938    90
                         nop                                                              // 0x0063a939    90
                         nop                                                              // 0x0063a93a    90
                         nop                                                              // 0x0063a93b    90
                         nop                                                              // 0x0063a93c    90
                         nop                                                              // 0x0063a93d    90
                         nop                                                              // 0x0063a93e    90
                         nop                                                              // 0x0063a93f    90
_jmp_addr_0x0063a940:    sub                esp, 0x00000180                               // 0x0063a940    81ec80010000
                         push               ebx                                           // 0x0063a946    53
                         {disp32} mov       ebx, dword ptr [esp + 0x0000018c]             // 0x0063a947    8b9c248c010000
                         test               ebx, ebx                                      // 0x0063a94e    85db
                         push               ebp                                           // 0x0063a950    55
                         push               esi                                           // 0x0063a951    56
                         push               edi                                           // 0x0063a952    57
                         mov.s              edi, ecx                                      // 0x0063a953    8bf9
                         {disp8} je         _jmp_addr_0x0063a95e                          // 0x0063a955    7407
                         mov                eax, dword ptr [ebx]                          // 0x0063a957    8b03
                         mov.s              ecx, ebx                                      // 0x0063a959    8bcb
                         call               dword ptr [eax + 0x1c]                        // 0x0063a95b    ff501c
_jmp_addr_0x0063a95e:    {disp32} mov       esi, dword ptr [esp + 0x00000194]             // 0x0063a95e    8bb42494010000
                         mov                edx, dword ptr [esi]                          // 0x0063a965    8b16
                         mov                ebp, dword ptr [edi]                          // 0x0063a967    8b2f
                         push               0x0                                           // 0x0063a969    6a00
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                   // 0x0063a96b    8d4e14
                         push               ecx                                           // 0x0063a96e    51
                         mov.s              ecx, esi                                      // 0x0063a96f    8bce
                         call               dword ptr [edx + 0x4a4]                       // 0x0063a971    ff92a4040000
                         mov.s              ecx, esi                                      // 0x0063a977    8bce
                         push               eax                                           // 0x0063a979    50
                         push               ebx                                           // 0x0063a97a    53
                         mov                ebx, dword ptr [esi]                          // 0x0063a97b    8b1e
                         mov.s              eax, ebx                                      // 0x0063a97d    8bc3
                         call               dword ptr [eax + 0x690]                       // 0x0063a97f    ff9090060000
                         push               eax                                           // 0x0063a985    50
                         mov.s              ecx, esi                                      // 0x0063a986    8bce
                         call               dword ptr [ebx + 0x98]                        // 0x0063a988    ff9398000000
                         mov                edx, dword ptr [esi]                          // 0x0063a98e    8b16
                         push               eax                                           // 0x0063a990    50
                         mov.s              ecx, esi                                      // 0x0063a991    8bce
                         call               dword ptr [edx + 0x690]                       // 0x0063a993    ff9290060000
                         push               eax                                           // 0x0063a999    50
                         mov.s              ecx, edi                                      // 0x0063a99a    8bcf
                         call               dword ptr [ebp + 0x9c]                        // 0x0063a99c    ff959c000000
                         test               eax, eax                                      // 0x0063a9a2    85c0
                         {disp8} je         _jmp_addr_0x0063a9ee                          // 0x0063a9a4    7448
                         {disp32} mov       ebx, dword ptr [esp + 0x00000198]             // 0x0063a9a6    8b9c2498010000
                         test               ebx, ebx                                      // 0x0063a9ad    85db
                         {disp8} je         _jmp_addr_0x0063a9ee                          // 0x0063a9af    743d
                         mov                eax, dword ptr [esi]                          // 0x0063a9b1    8b06
                         mov                ebp, dword ptr [edi]                          // 0x0063a9b3    8b2f
                         push               ebx                                           // 0x0063a9b5    53
                         mov.s              ecx, esi                                      // 0x0063a9b6    8bce
                         call               dword ptr [eax + 0x690]                       // 0x0063a9b8    ff9090060000
                         push               eax                                           // 0x0063a9be    50
                         mov.s              ecx, edi                                      // 0x0063a9bf    8bcf
                         call               dword ptr [ebp + 0x68c]                       // 0x0063a9c1    ff958c060000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0063a9c7    8b0d5c19d000
                         call               _jmp_addr_0x00555880                          // 0x0063a9cd    e8aeaef1ff
                         cmp.s              ebx, eax                                      // 0x0063a9d2    3bd8
                         {disp8} jne        _jmp_addr_0x0063a9ee                          // 0x0063a9d4    7518
                         mov                edx, dword ptr [edi]                          // 0x0063a9d6    8b17
                         mov.s              ecx, edi                                      // 0x0063a9d8    8bcf
                         call               dword ptr [edx + 0xe0]                        // 0x0063a9da    ff92e0000000
                         push               eax                                           // 0x0063a9e0    50
                         add                edi, 0x14                                     // 0x0063a9e1    83c714
                         push               edi                                           // 0x0063a9e4    57
                         push               ebx                                           // 0x0063a9e5    53
                         call               _jmp_addr_0x0071b570                          // 0x0063a9e6    e8850b0e00
                         add                esp, 0x0c                                     // 0x0063a9eb    83c40c
_jmp_addr_0x0063a9ee:    mov                eax, dword ptr [esi]                          // 0x0063a9ee    8b06
                         mov.s              ecx, esi                                      // 0x0063a9f0    8bce
                         call               dword ptr [eax + 0x690]                       // 0x0063a9f2    ff9090060000
                         cmp                eax, 0x01                                     // 0x0063a9f8    83f801
                         {disp32} jne       _jmp_addr_0x0063aaa2                          // 0x0063a9fb    0f85a1000000
                         mov                edx, dword ptr [esi]                          // 0x0063aa01    8b16
                         mov.s              ecx, esi                                      // 0x0063aa03    8bce
                         call               dword ptr [edx + 0x4b4]                       // 0x0063aa05    ff92b4040000
                         test               eax, eax                                      // 0x0063aa0b    85c0
                         {disp32} jne       _jmp_addr_0x0063aaa2                          // 0x0063aa0d    0f858f000000
                         {disp8} lea        ecx, dword ptr [esp + 0x28]                   // 0x0063aa13    8d4c2428
                         call               dword ptr [rdata_bytes + 0x75c]               // 0x0063aa17    ff155c978a00
                         mov                edx, dword ptr [esi]                          // 0x0063aa1d    8b16
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x0063aa1f    8d442410
                         push               eax                                           // 0x0063aa23    50
                         {disp8} lea        eax, dword ptr [esp + 0x20]                   // 0x0063aa24    8d442420
                         push               eax                                           // 0x0063aa28    50
                         mov.s              ecx, esi                                      // 0x0063aa29    8bce
                         call               dword ptr [edx + 0x100]                       // 0x0063aa2b    ff9200010000
                         mov.s              ecx, eax                                      // 0x0063aa31    8bc8
                         call               @GetLHPoint__9MapCoordsCFv@12                 // 0x0063aa33    e808b2fcff
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x37e37c]        // 0x0063aa38    8b0d7c43d400
                         {disp8} lea        eax, dword ptr [ecx + 0x01]                   // 0x0063aa3e    8d4101
                         {disp32} mov       ecx, dword ptr [_global]                      // 0x0063aa41    8b0d203bcd00
                         and                eax, 0x03                                     // 0x0063aa47    83e003
                         {disp32} mov       dword ptr [data_bytes + 0x37e37c], eax        // 0x0063aa4a    a37c43d400
                         {disp32} mov       edx, dword ptr [ecx + 0x000003ac]             // 0x0063aa4f    8b91ac030000
                         add                eax, 0x0000009b                               // 0x0063aa55    059b000000
                         {disp8} mov        dword ptr [esp + 0x2c], edx                   // 0x0063aa5a    8954242c
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x0063aa5e    8b542414
                         {disp8} mov        dword ptr [esp + 0x4c], eax                   // 0x0063aa62    8944244c
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0063aa66    8b442410
                         {disp8} mov        dword ptr [esp + 0x5c], edx                   // 0x0063aa6a    8954245c
                         {disp8} mov        dword ptr [esp + 0x58], eax                   // 0x0063aa6e    89442458
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x0063aa72    8b442418
                         {disp8} lea        edx, dword ptr [esp + 0x28]                   // 0x0063aa76    8d542428
                         push               edx                                           // 0x0063aa7a    52
                         {disp8} mov        dword ptr [esp + 0x4c], esi                   // 0x0063aa7b    8974244c
                         {disp8} mov        dword ptr [esp + 0x34], 0x00000001            // 0x0063aa7f    c744243401000000
                         {disp8} mov        dword ptr [esp + 0x64], eax                   // 0x0063aa87    89442464
                         {disp8} mov        dword ptr [esp + 0x38], 0x00000000            // 0x0063aa8b    c744243800000000
                         call               @PlaySoundEffect__6GAudioFP20LH_SamplePlayOptions@12                          // 0x0063aa93    e898f3deff
                         {disp8} lea        ecx, dword ptr [esp + 0x28]                   // 0x0063aa98    8d4c2428
                         call               dword ptr [rdata_bytes + 0x758]               // 0x0063aa9c    ff1558978a00
_jmp_addr_0x0063aaa2:    push               esi                                           // 0x0063aaa2    56
                         call               _jmp_addr_0x005e6540                          // 0x0063aaa3    e898bafaff
                         mov                eax, dword ptr [esi]                          // 0x0063aaa8    8b06
                         add                esp, 0x04                                     // 0x0063aaaa    83c404
                         push               0x0                                           // 0x0063aaad    6a00
                         mov.s              ecx, esi                                      // 0x0063aaaf    8bce
                         call               dword ptr [eax + 0xc]                         // 0x0063aab1    ff500c
                         pop                edi                                           // 0x0063aab4    5f
                         pop                esi                                           // 0x0063aab5    5e
                         pop                ebp                                           // 0x0063aab6    5d
                         pop                ebx                                           // 0x0063aab7    5b
                         add                esp, 0x00000180                               // 0x0063aab8    81c480010000
                         ret                0x0008                                        // 0x0063aabe    c20800
                         nop                                                              // 0x0063aac1    90
                         nop                                                              // 0x0063aac2    90
                         nop                                                              // 0x0063aac3    90
                         nop                                                              // 0x0063aac4    90
                         nop                                                              // 0x0063aac5    90
                         nop                                                              // 0x0063aac6    90
                         nop                                                              // 0x0063aac7    90
                         nop                                                              // 0x0063aac8    90
                         nop                                                              // 0x0063aac9    90
                         nop                                                              // 0x0063aaca    90
                         nop                                                              // 0x0063aacb    90
                         nop                                                              // 0x0063aacc    90
                         nop                                                              // 0x0063aacd    90
                         nop                                                              // 0x0063aace    90
                         nop                                                              // 0x0063aacf    90
?GetRadiusMultiplierForApplyingPotToPos@Object@@UAEMXZ:
                         {disp32} fld       dword ptr [rdata_bytes + 0x1dc98]             // 0x0063aad0    d905986c8c00
                         ret                                                              // 0x0063aad6    c3
                         nop                                                              // 0x0063aad7    90
                         nop                                                              // 0x0063aad8    90
                         nop                                                              // 0x0063aad9    90
                         nop                                                              // 0x0063aada    90
                         nop                                                              // 0x0063aadb    90
                         nop                                                              // 0x0063aadc    90
                         nop                                                              // 0x0063aadd    90
                         nop                                                              // 0x0063aade    90
                         nop                                                              // 0x0063aadf    90
?DoCreatureMimicAfterAddingResource@Object@@UAE_NW4RESOURCE_TYPE@@PAVGInterfaceStatus@@@Z:
                         xor.s              eax, eax                                      // 0x0063aae0    33c0
                         ret                0x0008                                        // 0x0063aae2    c20800
                         nop                                                              // 0x0063aae5    90
                         nop                                                              // 0x0063aae6    90
                         nop                                                              // 0x0063aae7    90
                         nop                                                              // 0x0063aae8    90
                         nop                                                              // 0x0063aae9    90
                         nop                                                              // 0x0063aaea    90
                         nop                                                              // 0x0063aaeb    90
                         nop                                                              // 0x0063aaec    90
                         nop                                                              // 0x0063aaed    90
                         nop                                                              // 0x0063aaee    90
                         nop                                                              // 0x0063aaef    90
?GetSacrificeValue@Object@@UAEMXZ:
                         mov                eax, dword ptr [ecx]                          // 0x0063aaf0    8b01
                         push               esi                                           // 0x0063aaf2    56
                         {disp8} mov        esi, dword ptr [ecx + 0x28]                   // 0x0063aaf3    8b7128
                         call               dword ptr [eax + 0x11c]                       // 0x0063aaf6    ff901c010000
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x0063aafc    d80db4a38a00
                         {disp32} fadd      dword ptr [_rdata_float0p5]                   // 0x0063ab02    d805b4a38a00
                         {disp32} fmul      dword ptr [esi + 0x000000e4]                  // 0x0063ab08    d88ee4000000
                         pop                esi                                           // 0x0063ab0e    5e
                         ret                                                              // 0x0063ab0f    c3
?DiscipleInHandNear@Object@@UAEXPAVVillager@@PAVGInterfaceStatus@@@Z:
                         ret                0x0008                                        // 0x0063ab10    c20800
                         nop                                                              // 0x0063ab13    90
                         nop                                                              // 0x0063ab14    90
                         nop                                                              // 0x0063ab15    90
                         nop                                                              // 0x0063ab16    90
                         nop                                                              // 0x0063ab17    90
                         nop                                                              // 0x0063ab18    90
                         nop                                                              // 0x0063ab19    90
                         nop                                                              // 0x0063ab1a    90
                         nop                                                              // 0x0063ab1b    90
                         nop                                                              // 0x0063ab1c    90
                         nop                                                              // 0x0063ab1d    90
                         nop                                                              // 0x0063ab1e    90
                         nop                                                              // 0x0063ab1f    90
?DestroyedByBeam@Object@@UAEXXZ:
                         mov                eax, dword ptr [ecx]                          // 0x0063ab20    8b01
                         push               0x0                                           // 0x0063ab22    6a00
                         call               dword ptr [eax + 0xc]                         // 0x0063ab24    ff500c
                         ret                                                              // 0x0063ab27    c3
                         nop                                                              // 0x0063ab28    90
                         nop                                                              // 0x0063ab29    90
                         nop                                                              // 0x0063ab2a    90
                         nop                                                              // 0x0063ab2b    90
                         nop                                                              // 0x0063ab2c    90
                         nop                                                              // 0x0063ab2d    90
                         nop                                                              // 0x0063ab2e    90
                         nop                                                              // 0x0063ab2f    90
_globl_ct_0x0063ab30:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x0063ab30    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x0063ab36    b001
                         test               al, cl                                        // 0x0063ab38    84c8
                         {disp8} jne        _jmp_addr_0x0063ab44                          // 0x0063ab3a    7508
                         or.s               cl, al                                        // 0x0063ab3c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x0063ab3e    880d34c9fa00
_jmp_addr_0x0063ab44:    {disp32} jmp       _jmp_addr_0x0063ab50                          // 0x0063ab44    e907000000
                         nop                                                              // 0x0063ab49    90
                         nop                                                              // 0x0063ab4a    90
                         nop                                                              // 0x0063ab4b    90
                         nop                                                              // 0x0063ab4c    90
                         nop                                                              // 0x0063ab4d    90
                         nop                                                              // 0x0063ab4e    90
                         nop                                                              // 0x0063ab4f    90
_jmp_addr_0x0063ab50:    push               0x00407870                                    // 0x0063ab50    6870784000
                         call               _atexit                                       // 0x0063ab55    e837ac1800
                         pop                ecx                                           // 0x0063ab5a    59
                         ret                                                              // 0x0063ab5b    c3
                         nop                                                              // 0x0063ab5c    90
                         nop                                                              // 0x0063ab5d    90
                         nop                                                              // 0x0063ab5e    90
                         nop                                                              // 0x0063ab5f    90
_globl_ct_0x0063ab60:    {disp32} jmp       _jmp_addr_0x0063ab70                          // 0x0063ab60    e90b000000
                         nop                                                              // 0x0063ab65    90
                         nop                                                              // 0x0063ab66    90
                         nop                                                              // 0x0063ab67    90
                         nop                                                              // 0x0063ab68    90
                         nop                                                              // 0x0063ab69    90
                         nop                                                              // 0x0063ab6a    90
                         nop                                                              // 0x0063ab6b    90
                         nop                                                              // 0x0063ab6c    90
                         nop                                                              // 0x0063ab6d    90
                         nop                                                              // 0x0063ab6e    90
                         nop                                                              // 0x0063ab6f    90
_jmp_addr_0x0063ab70:    {disp32} mov       dword ptr [data_bytes + 0x37e384], 0x3e000000 // 0x0063ab70    c7058443d4000000003e
                         ret                                                              // 0x0063ab7a    c3
                         call               ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                          // 0x0063ab7b    e8796cdcff
_globl_ct_0x0063ab80:    {disp32} jmp       _jmp_addr_0x0063ab90                          // 0x0063ab80    e90b000000
                         nop                                                              // 0x0063ab85    90
                         nop                                                              // 0x0063ab86    90
                         nop                                                              // 0x0063ab87    90
                         nop                                                              // 0x0063ab88    90
                         nop                                                              // 0x0063ab89    90
                         nop                                                              // 0x0063ab8a    90
                         nop                                                              // 0x0063ab8b    90
                         nop                                                              // 0x0063ab8c    90
                         nop                                                              // 0x0063ab8d    90
                         nop                                                              // 0x0063ab8e    90
                         nop                                                              // 0x0063ab8f    90
_jmp_addr_0x0063ab90:    {disp32} fld       dword ptr [rdata_bytes + 0x8830c]             // 0x0063ab90    d9050c139300
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x0063ab96    d80db4a38a00
                         {disp32} fstp      dword ptr [data_bytes + 0x37e388]             // 0x0063ab9c    d91d8843d400
                         ret                                                              // 0x0063aba2    c3
                         nop                                                              // 0x0063aba3    90
                         nop                                                              // 0x0063aba4    90
                         nop                                                              // 0x0063aba5    90
                         nop                                                              // 0x0063aba6    90
                         nop                                                              // 0x0063aba7    90
                         nop                                                              // 0x0063aba8    90
                         nop                                                              // 0x0063aba9    90
                         nop                                                              // 0x0063abaa    90
                         nop                                                              // 0x0063abab    90
                         nop                                                              // 0x0063abac    90
                         nop                                                              // 0x0063abad    90
                         nop                                                              // 0x0063abae    90
                         nop                                                              // 0x0063abaf    90

?Create@Game3DObject@@SAPAV1@W4ObjectType@LH3DObject@@@Z:
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x0063abb0    8b4c2404
                         {disp32} jmp       @Create__10LH3DObjectFQ210LH3DObject10ObjectType@4                          // 0x0063abb4    e917091d00
                         nop                                                              // 0x0063abb9    90
                         nop                                                              // 0x0063abba    90
                         nop                                                              // 0x0063abbb    90
                         nop                                                              // 0x0063abbc    90
                         nop                                                              // 0x0063abbd    90
                         nop                                                              // 0x0063abbe    90
                         nop                                                              // 0x0063abbf    90
?GetAltitudeFondation@Game3DObject@@QBEMXZ:    sub                esp, 0x24                                     // 0x0063abc0    83ec24
                         push               ebx                                           // 0x0063abc3    53
                         push               esi                                           // 0x0063abc4    56
                         push               edi                                           // 0x0063abc5    57
                         mov.s              edi, ecx                                      // 0x0063abc6    8bf9
                         mov                eax, dword ptr [edi]                          // 0x0063abc8    8b07
                         call               dword ptr [eax + 0xf8]                        // 0x0063abca    ff90f8000000
                         {disp8} fld        dword ptr [edi + 0x38]                        // 0x0063abd0    d94738
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]              // 0x0063abd3    d80d08c48a00
                         mov.s              esi, eax                                      // 0x0063abd9    8bf0
                         add                esi, 0x14                                     // 0x0063abdb    83c614
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x0063abde    d80d04c48a00
                         call               _jmp_addr_0x007a1400                          // 0x0063abe4    e817681600
                         {disp8} fld        dword ptr [edi + 0x40]                        // 0x0063abe9    d94740
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]              // 0x0063abec    d80d08c48a00
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x0063abf2    89442418
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x0063abf6    d80d04c48a00
                         call               _jmp_addr_0x007a1400                          // 0x0063abfc    e8ff671600
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x0063ac01    8d4c2418
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x0063ac05    8944241c
                         {disp8} mov        dword ptr [esp + 0x20], 0x00000000            // 0x0063ac09    c744242000000000
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x0063ac11    e87a841c00
                         {disp8} fst        dword ptr [esp + 0x14]                        // 0x0063ac16    d9542414
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x0063ac1a    d95c240c
                         xor.s              ebx, ebx                                      // 0x0063ac1e    33db
_jmp_addr_0x0063ac20:    cmp                ebx, 0x06                                     // 0x0063ac20    83fb06
                         {disp8} ja         _jmp_addr_0x0063aca0                          // 0x0063ac23    777b
                         jmp                dword ptr [ebx*4 + 0x63ad64]                  // 0x0063ac25    ff249d64ad6300
                         {disp8} fld        dword ptr [esi + 0x10]                        // 0x0063ac2c    d94610
                         {disp8} fadd       dword ptr [esi + 0x04]                        // 0x0063ac2f    d84604
                         {disp8} fld        dword ptr [esi + 0x14]                        // 0x0063ac32    d94614
                         {disp8} fadd       dword ptr [esi + 0x08]                        // 0x0063ac35    d84608
                         {disp8} jmp        _jmp_addr_0x0063acac                          // 0x0063ac38    eb72
                         {disp8} fld        dword ptr [esi + 0x04]                        // 0x0063ac3a    d94604
                         {disp8} fsub       dword ptr [esi + 0x10]                        // 0x0063ac3d    d86610
                         {disp8} fld        dword ptr [esi + 0x14]                        // 0x0063ac40    d94614
                         {disp8} fadd       dword ptr [esi + 0x08]                        // 0x0063ac43    d84608
                         {disp8} jmp        _jmp_addr_0x0063acac                          // 0x0063ac46    eb64
                         {disp8} fld        dword ptr [esi + 0x10]                        // 0x0063ac48    d94610
                         {disp8} fadd       dword ptr [esi + 0x04]                        // 0x0063ac4b    d84604
                         {disp8} fld        dword ptr [esi + 0x14]                        // 0x0063ac4e    d94614
                         {disp8} fadd       dword ptr [esi + 0x08]                        // 0x0063ac51    d84608
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0063ac54    d95c241c
                         {disp8} fld        dword ptr [esi + 0x0c]                        // 0x0063ac58    d9460c
                         {disp8} fsub       dword ptr [esi + 0x18]                        // 0x0063ac5b    d86618
                         {disp8} jmp        _jmp_addr_0x0063acb6                          // 0x0063ac5e    eb56
                         {disp8} fld        dword ptr [esi + 0x10]                        // 0x0063ac60    d94610
                         {disp8} fadd       dword ptr [esi + 0x04]                        // 0x0063ac63    d84604
                         {disp8} jmp        _jmp_addr_0x0063aca6                          // 0x0063ac66    eb3e
                         {disp8} fld        dword ptr [esi + 0x04]                        // 0x0063ac68    d94604
                         {disp8} fsub       dword ptr [esi + 0x10]                        // 0x0063ac6b    d86610
                         {disp8} fld        dword ptr [esi + 0x14]                        // 0x0063ac6e    d94614
                         {disp8} fadd       dword ptr [esi + 0x08]                        // 0x0063ac71    d84608
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0063ac74    d95c241c
                         {disp8} fld        dword ptr [esi + 0x0c]                        // 0x0063ac78    d9460c
                         {disp8} fsub       dword ptr [esi + 0x18]                        // 0x0063ac7b    d86618
                         {disp8} jmp        _jmp_addr_0x0063acb6                          // 0x0063ac7e    eb36
                         {disp8} fld        dword ptr [esi + 0x10]                        // 0x0063ac80    d94610
                         {disp8} fadd       dword ptr [esi + 0x04]                        // 0x0063ac83    d84604
                         {disp8} jmp        _jmp_addr_0x0063ac8e                          // 0x0063ac86    eb06
                         {disp8} fld        dword ptr [esi + 0x04]                        // 0x0063ac88    d94604
                         {disp8} fsub       dword ptr [esi + 0x10]                        // 0x0063ac8b    d86610
_jmp_addr_0x0063ac8e:    {disp8} fld        dword ptr [esi + 0x08]                        // 0x0063ac8e    d94608
                         {disp8} fsub       dword ptr [esi + 0x14]                        // 0x0063ac91    d86614
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0063ac94    d95c241c
                         {disp8} fld        dword ptr [esi + 0x0c]                        // 0x0063ac98    d9460c
                         {disp8} fsub       dword ptr [esi + 0x18]                        // 0x0063ac9b    d86618
                         {disp8} jmp        _jmp_addr_0x0063acb6                          // 0x0063ac9e    eb16
_jmp_addr_0x0063aca0:    {disp8} fld        dword ptr [esi + 0x04]                        // 0x0063aca0    d94604
                         {disp8} fsub       dword ptr [esi + 0x10]                        // 0x0063aca3    d86610
_jmp_addr_0x0063aca6:    {disp8} fld        dword ptr [esi + 0x08]                        // 0x0063aca6    d94608
                         {disp8} fsub       dword ptr [esi + 0x14]                        // 0x0063aca9    d86614
_jmp_addr_0x0063acac:    {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0063acac    d95c241c
                         {disp8} fld        dword ptr [esi + 0x18]                        // 0x0063acb0    d94618
                         {disp8} fadd       dword ptr [esi + 0x0c]                        // 0x0063acb3    d8460c
_jmp_addr_0x0063acb6:    {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0063acb6    d95c2420
                         {disp8} fst        dword ptr [esp + 0x10]                        // 0x0063acba    d9542410
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0063acbe    d9442420
                         {disp8} fmul       dword ptr [edi + 0x2c]                        // 0x0063acc2    d84f2c
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x0063acc5    d944241c
                         {disp8} fmul       dword ptr [edi + 0x20]                        // 0x0063acc9    d84f20
                         faddp              st(1), st                                     // 0x0063accc    dec1
                         fxch               st(1)                                         // 0x0063acce    d9c9
                         {disp8} fmul       dword ptr [edi + 0x14]                        // 0x0063acd0    d84f14
                         faddp              st(1), st                                     // 0x0063acd3    dec1
                         {disp8} fadd       dword ptr [edi + 0x38]                        // 0x0063acd5    d84738
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0063acd8    d9442410
                         {disp8} fmul       dword ptr [edi + 0x1c]                        // 0x0063acdc    d84f1c
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0063acdf    d9442420
                         {disp8} fmul       dword ptr [edi + 0x34]                        // 0x0063ace3    d84f34
                         faddp              st(1), st                                     // 0x0063ace6    dec1
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x0063ace8    d944241c
                         {disp8} fmul       dword ptr [edi + 0x28]                        // 0x0063acec    d84f28
                         faddp              st(1), st                                     // 0x0063acef    dec1
                         {disp8} fadd       dword ptr [edi + 0x40]                        // 0x0063acf1    d84740
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0063acf4    d95c2420
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]              // 0x0063acf8    d80d08c48a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x0063acfe    d80d04c48a00
                         call               _jmp_addr_0x007a1400                          // 0x0063ad04    e8f7661600
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0063ad09    d9442420
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]              // 0x0063ad0d    d80d08c48a00
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x0063ad13    89442424
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x0063ad17    d80d04c48a00
                         call               _jmp_addr_0x007a1400                          // 0x0063ad1d    e8de661600
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x0063ad22    8d4c2424
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x0063ad26    89442428
                         {disp8} mov        dword ptr [esp + 0x2c], 0x00000000            // 0x0063ad2a    c744242c00000000
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x0063ad32    e859831c00
                         {disp8} fcom       dword ptr [esp + 0x0c]                        // 0x0063ad37    d854240c
                         fnstsw             ax                                            // 0x0063ad3b    dfe0
                         test               ah, 0x01                                      // 0x0063ad3d    f6c401
                         {disp8} je         _jmp_addr_0x0063ad48                          // 0x0063ad40    7406
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x0063ad42    d95c240c
                         {disp8} jmp        _jmp_addr_0x0063ad4a                          // 0x0063ad46    eb02
_jmp_addr_0x0063ad48:    fstp               st(0)                                         // 0x0063ad48    ddd8
_jmp_addr_0x0063ad4a:    inc                ebx                                           // 0x0063ad4a    43
                         cmp                ebx, 0x08                                     // 0x0063ad4b    83fb08
                         {disp32} jb        _jmp_addr_0x0063ac20                          // 0x0063ad4e    0f82ccfeffff
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x0063ad54    d944240c
                         pop                edi                                           // 0x0063ad58    5f
                         {disp8} fsub       dword ptr [esp + 0x10]                        // 0x0063ad59    d8642410
                         pop                esi                                           // 0x0063ad5d    5e
                         pop                ebx                                           // 0x0063ad5e    5b
                         add                esp, 0x24                                     // 0x0063ad5f    83c424
                         ret                                                              // 0x0063ad62    c3

// Snippet: db, [0x0063ad63, 0x0063ad64)
.byte 0x90                        // 0x0063ad63

// Snippet: jmptbl, [0x0063ad64, 0x0063ad80)
.byte 0x2c, 0xac, 0x63, 0x00      // 0x0063ad64
.byte 0x3a, 0xac, 0x63, 0x00      // 0x0063ad68
.byte 0x48, 0xac, 0x63, 0x00      // 0x0063ad6c
.byte 0x60, 0xac, 0x63, 0x00      // 0x0063ad70
.byte 0x68, 0xac, 0x63, 0x00      // 0x0063ad74
.byte 0x80, 0xac, 0x63, 0x00      // 0x0063ad78
.byte 0x88, 0xac, 0x63, 0x00      // 0x0063ad7c

