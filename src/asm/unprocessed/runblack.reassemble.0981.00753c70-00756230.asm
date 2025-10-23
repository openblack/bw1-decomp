.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?GetPosOutside@Abode@@QAEPAUMapCoords@@PAU2@MMM@Z
.extern ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z
.extern @ReadPtr__10GameOSFileFPP9GameThing@12
.extern ?LookAtObject@Living@@QAEIPAVGameThingWithPos@@K@Z
.extern @IsReadyForNewAnimation__6LivingFUl@12
.extern ?RemoveFromGame@Living@@UAEIXZ
.extern ?Save@Living@@UAEIAAVGameOSFile@@@Z
.extern ?Load@Living@@UAEIAAVGameOSFile@@@Z
.extern ?ResolveLoad@Living@@UAEXXZ
.extern @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13
.extern @__pl__9MapCoordsCFRC9MapCoords@16
.extern ?GetQueryFirstEnumText@Object@@UAE?AW4HELP_TEXT@@XZ
.extern ?GetQueryLastEnumText@Object@@UAE?AW4HELP_TEXT@@XZ
.extern ?GetFOVHelpMessageSet@Object@@UAEIXZ
.extern ?GetFOVHelpCondition@Object@@UAEIXZ
.extern ?GameRand@GRand@@SAHJ@Z
.extern ?GameFloatRand@GRand@@SAMM@Z
.extern ?GetStoragePit@Town@@QAEPAVStoragePit@@XZ
.extern ?GetTemporaryResourceStorePotOrPos@Town@@QAEPAXABUMapCoords@@AAU2@W4RESOURCE_TYPE@@@Z
.extern ?GetCongregationPos@Town@@QAEPAUMapCoords@@PAU2@@Z
.extern ?IncrementNumOfDisciples@TownStats@@QAEXW4VILLAGER_DISCIPLE@@@Z
.extern ?DecrementNumOfDisciples@TownStats@@QAEXW4VILLAGER_DISCIPLE@@@Z
.extern ?Get3DAngleFromXZ@GUtils@@SAMABUMapCoords@@0@Z
.extern ?GetPosFromAngle@GUtils@@SAPAUMapCoords@@MM@Z
.extern ?DeleteDependancys@Villager@@QAEXXZ
.extern ?DiscipleDecideWhatToDo@Villager@@QAE_NXZ
.extern ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ
.extern ?GetAbode@Villager@@QAEPAVAbode@@XZ
.extern _jmp_addr_0x00761090
.extern @Read__8LHOSFileFPvUlPUl@20
.extern @Write__8LHOSFileFPvUlPUl@20

.globl ?GetChillOutPos@Villager@@QAEIAAUMapCoords@@@Z
.globl ?GetResourceDropoffPos@Villager@@QAEPAVGameThingWithPos@@W4RESOURCE_TYPE@@@Z
.globl ?SetDiscipleNothingToDo@Villager@@QAE_NXZ
.globl ?Save@Villager@@UAEIAAVGameOSFile@@@Z
.globl ?Load@Villager@@UAEIAAVGameOSFile@@@Z
.globl ?SetVillagerDisciple@Villager@@QAEIPAVGameThing@@W4VILLAGER_DISCIPLE@@H@Z
.globl _jmp_addr_0x00756170
.globl ?RemoveFromGame@Villager@@UAEIXZ
.globl ?IsFinalState@Villager@@UAE_NW4VILLAGER_STATES@@@Z
.globl ?GetQueryFirstEnumText@Villager@@UAE?AW4HELP_TEXT@@XZ
.globl ?GetQueryLastEnumText@Villager@@UAE?AW4HELP_TEXT@@XZ
.globl ?GetFOVHelpMessageSet@Villager@@UAEIXZ
.globl ?GetFOVHelpCondition@Villager@@UAEIXZ
.globl ?ResolveLoad@Villager@@UAEXXZ
.globl ?GetDiscipleStateIfInteractedWith@Villager@@UAEIPAVGInterfaceStatus@@PAVVillager@@@Z
.globl ?LoadMagicTreeReaction@Villager@@QAEIAAVGameOSFile@@@Z
.globl ?LoadHideInBuilding@Villager@@QAEIAAVGameOSFile@@@Z
.globl ?SaveHideInBuilding@Villager@@QAEIAAVGameOSFile@@@Z
.globl ?SaveShieldReaction@Villager@@QAEIAAVGameOSFile@@@Z
.globl ?LoadShieldReaction@Villager@@QAEIAAVGameOSFile@@@Z
.globl ?DiscipleNothingToDo@Villager@@QAE_NXZ
.globl ?EnterDiscipleNothingToDo@Villager@@QAE_NEE@Z
.globl ?SaveBuilding@Villager@@QAE_NAAVGameOSFile@@@Z
.globl ?LoadBuilding@Villager@@QAE_NAAVGameOSFile@@@Z
.globl ?SaveDance@Villager@@QAE_NAAVGameOSFile@@@Z
.globl ?LoadDance@Villager@@QAE_NAAVGameOSFile@@@Z
.globl ?SaveWorship@Villager@@QAE_NAAVGameOSFile@@@Z
.globl ?LoadWorship@Villager@@QAE_NAAVGameOSFile@@@Z
.globl ?SaveDead@Villager@@QAE_NAAVGameOSFile@@@Z
.globl ?LoadDead@Villager@@QAE_NAAVGameOSFile@@@Z
.globl ?SaveInHand@Villager@@QAE_NAAVGameOSFile@@@Z
.globl ?LoadInHand@Villager@@QAE_NAAVGameOSFile@@@Z
.globl ?SaveFishing@Villager@@QAE_NAAVGameOSFile@@@Z
.globl ?LoadFishing@Villager@@QAE_NAAVGameOSFile@@@Z
.globl ?SaveFarming@Villager@@QAE_NAAVGameOSFile@@@Z
.globl ?LoadFarming@Villager@@QAE_NAAVGameOSFile@@@Z
.globl ?SaveFootball@Villager@@QAE_NAAVGameOSFile@@@Z
.globl ?LoadFootball@Villager@@QAE_NAAVGameOSFile@@@Z
.globl ?SaveShepherd@Villager@@QAE_NAAVGameOSFile@@@Z
.globl ?LoadShepherd@Villager@@QAE_NAAVGameOSFile@@@Z
.globl ?SaveInScript@Villager@@QAE_NAAVGameOSFile@@@Z
.globl ?LoadInScript@Villager@@QAE_NAAVGameOSFile@@@Z
.globl ?SaveScriptPos@Villager@@QAE_NAAVGameOSFile@@@Z
.globl ?LoadScriptPos@Villager@@QAE_NAAVGameOSFile@@@Z
.globl ?SaveFire@Villager@@QAE_NAAVGameOSFile@@@Z
.globl ?LoadFire@Villager@@QAE_NAAVGameOSFile@@@Z
.globl ?SaveDiscipleNothingToDo@Villager@@QAE_NAAVGameOSFile@@@Z
.globl ?LoadDiscipleNothingToDo@Villager@@QAE_NAAVGameOSFile@@@Z
.globl ?SaveInspectObject@Villager@@QAE_NAAVGameOSFile@@@Z
.globl ?LoadInspectObject@Villager@@QAE_NAAVGameOSFile@@@Z
.globl ?SaveReaction@Villager@@QAE_NAAVGameOSFile@@@Z
.globl ?LoadReaction@Villager@@QAE_NAAVGameOSFile@@@Z
.globl ?SaveClearArea@Villager@@QAE_NAAVGameOSFile@@@Z
.globl ?LoadClearArea@Villager@@QAE_NAAVGameOSFile@@@Z
.globl ?SaveBreeder@Villager@@QAE_NAAVGameOSFile@@@Z
.globl ?LoadBreeder@Villager@@QAE_NAAVGameOSFile@@@Z
.globl ?SaveForesting@Villager@@QAE_NAAVGameOSFile@@@Z
.globl ?LoadForesting@Villager@@QAE_NAAVGameOSFile@@@Z
.globl ?SaveFootPath@Villager@@QAE_NAAVGameOSFile@@@Z
.globl ?LoadFootPath@Villager@@QAE_NAAVGameOSFile@@@Z
.globl ?SaveInspectionReaction@Villager@@QAE_NAAVGameOSFile@@@Z
.globl ?LoadInspectionReaction@Villager@@QAE_NAAVGameOSFile@@@Z
.globl ?SaveMagicTreeReaction@Villager@@QAE_NAAVGameOSFile@@@Z

?GetChillOutPos@Villager@@QAEIAAUMapCoords@@@Z:
                         sub               esp, 0x2c                                     // 0x00753c70    83ec2c
                         push              esi                                           // 0x00753c73    56
                         push              edi                                           // 0x00753c74    57
                         mov.s             edi, ecx                                      // 0x00753c75    8bf9
                         mov               eax, dword ptr [edi]                          // 0x00753c77    8b07
                         call              dword ptr [eax + 0x48]                        // 0x00753c79    ff5048
                         mov.s             esi, eax                                      // 0x00753c7c    8bf0
                         test              esi, esi                                      // 0x00753c7e    85f6
                         {disp32} je       _jmp_addr_0x00753d45                          // 0x00753c80    0f84bf000000
                         {disp8} lea       ecx, dword ptr [esp + 0x10]                   // 0x00753c86    8d4c2410
                         push              ecx                                           // 0x00753c8a    51
                         mov.s             ecx, esi                                      // 0x00753c8b    8bce
                         call              ?GetCongregationPos@Town@@QAEPAUMapCoords@@PAU2@@Z  // 0x00753c8d    e81eccfeff
                         {disp8} mov       edx, dword ptr [esi + 0x28]                   // 0x00753c92    8b5628
                         {disp32} fld      dword ptr [edx + 0x00000140]                  // 0x00753c95    d98240010000
                         add               edi, 0x14                                     // 0x00753c9b    83c714
                         {disp32} fmul     dword ptr [rdata_bytes + 0x3404]              // 0x00753c9e    d80d04c48a00
                         {disp8} lea       eax, dword ptr [esp + 0x10]                   // 0x00753ca4    8d442410
                         push              edi                                           // 0x00753ca8    57
                         push              eax                                           // 0x00753ca9    50
                         {disp8} fstp      dword ptr [esp + 0x10]                        // 0x00753caa    d95c2410
                         call              ?Get3DAngleFromXZ@GUtils@@SAMABUMapCoords@@0@Z                               // 0x00753cae    e8bd95ffff
                         {disp8} fstp      dword ptr [esp + 0x14]                        // 0x00753cb3    d95c2414
                         push              0x00000b7c                                    // 0x00753cb7    687c0b0000
                         push              0x00c235dc                                    // 0x00753cbc    68dc35c200
                         push              0x3f490fdb                                    // 0x00753cc1    68db0f493f
                         call              ?GameFloatRand@GRand@@SAMM@Z                  // 0x00753cc6    e865a8f8ff
                         {disp32} fsub     dword ptr [rdata_bytes + 0x1dca0]             // 0x00753ccb    d825a06c8c00
                         add               esp, 0x14                                     // 0x00753cd1    83c414
                         push              0x00000b7d                                    // 0x00753cd4    687d0b0000
                         {disp8} fadd      dword ptr [esp + 0x10]                        // 0x00753cd9    d8442410
                         push              0x00c235dc                                    // 0x00753cdd    68dc35c200
                         push              ecx                                           // 0x00753ce2    51
                         {disp8} fstp      dword ptr [esp + 0x18]                        // 0x00753ce3    d95c2418
                         {disp8} fld       dword ptr [esp + 0x14]                        // 0x00753ce7    d9442414
                         {disp32} fmul     dword ptr [rdata_bytes + 0x56ec8]             // 0x00753ceb    d80dc8fe8f00
                         fstp              dword ptr [esp]                               // 0x00753cf1    d91c24
                         call              ?GameFloatRand@GRand@@SAMM@Z                  // 0x00753cf4    e837a8f8ff
                         {disp8} mov       ecx, dword ptr [esp + 0x18]                   // 0x00753cf9    8b4c2418
                         {disp8} fadd      dword ptr [esp + 0x14]                        // 0x00753cfd    d8442414
                         add               esp, 0x08                                     // 0x00753d01    83c408
                         {disp8} lea       edx, dword ptr [esp + 0x20]                   // 0x00753d04    8d542420
                         fstp              dword ptr [esp]                               // 0x00753d08    d91c24
                         push              ecx                                           // 0x00753d0b    51
                         push              edx                                           // 0x00753d0c    52
                         call              ?GetPosFromAngle@GUtils@@SAPAUMapCoords@@MM@Z // 0x00753d0d    e86e98ffff
                         add               esp, 0x0c                                     // 0x00753d12    83c40c
                         push              eax                                           // 0x00753d15    50
                         {disp8} lea       eax, dword ptr [esp + 0x2c]                   // 0x00753d16    8d44242c
                         push              eax                                           // 0x00753d1a    50
                         {disp8} lea       ecx, dword ptr [esp + 0x18]                   // 0x00753d1b    8d4c2418
                         call              @__pl__9MapCoordsCFRC9MapCoords@16            // 0x00753d1f    e8fc17ebff
                         mov               edx, dword ptr [eax]                          // 0x00753d24    8b10
                         {disp8} mov       ecx, dword ptr [esp + 0x38]                   // 0x00753d26    8b4c2438
                         mov               dword ptr [ecx], edx                          // 0x00753d2a    8911
                         {disp8} mov       edx, dword ptr [eax + 0x04]                   // 0x00753d2c    8b5004
                         {disp8} mov       dword ptr [ecx + 0x04], edx                   // 0x00753d2f    895104
                         {disp8} mov       eax, dword ptr [eax + 0x08]                   // 0x00753d32    8b4008
                         pop               edi                                           // 0x00753d35    5f
                         {disp8} mov       dword ptr [ecx + 0x08], eax                   // 0x00753d36    894108
                         mov               eax, 0x00000001                               // 0x00753d39    b801000000
                         pop               esi                                           // 0x00753d3e    5e
                         add               esp, 0x2c                                     // 0x00753d3f    83c42c
                         ret               0x0004                                        // 0x00753d42    c20400
_jmp_addr_0x00753d45:    pop               edi                                           // 0x00753d45    5f
                         xor.s             eax, eax                                      // 0x00753d46    33c0
                         pop               esi                                           // 0x00753d48    5e
                         add               esp, 0x2c                                     // 0x00753d49    83c42c
                         ret               0x0004                                        // 0x00753d4c    c20400
                         nop                                                             // 0x00753d4f    90
                         sub               esp, 0x10                                     // 0x00753d50    83ec10
                         push              esi                                           // 0x00753d53    56
                         mov.s             esi, ecx                                      // 0x00753d54    8bf1
                         mov               eax, dword ptr [esi]                          // 0x00753d56    8b06
                         call              dword ptr [eax + 0x48]                        // 0x00753d58    ff5048
                         test              eax, eax                                      // 0x00753d5b    85c0
                         {disp8} je        _jmp_addr_0x00753dbb                          // 0x00753d5d    745c
                         {disp8} mov       ecx, dword ptr [eax + 0x28]                   // 0x00753d5f    8b4828
                         {disp32} fld      dword ptr [ecx + 0x00000144]                  // 0x00753d62    d98144010000
                         mov.s             ecx, esi                                      // 0x00753d68    8bce
                         {disp32} fmul     dword ptr [_rdata_float0p5]                   // 0x00753d6a    d80db4a38a00
                         {disp8} fstp      dword ptr [esp + 0x04]                        // 0x00753d70    d95c2404
                         call              ?GetAbode@Villager@@QAEPAVAbode@@XZ           // 0x00753d74    e8e7e3ffff
                         test              eax, eax                                      // 0x00753d79    85c0
                         {disp8} je        _jmp_addr_0x00753dbb                          // 0x00753d7b    743e
                         {disp8} fld       dword ptr [esp + 0x04]                        // 0x00753d7d    d9442404
                         {disp8} mov       edx, dword ptr [esp + 0x04]                   // 0x00753d81    8b542404
                         push              ecx                                           // 0x00753d85    51
                         fstp              dword ptr [esp]                               // 0x00753d86    d91c24
                         push              edx                                           // 0x00753d89    52
                         push              0x40400000                                    // 0x00753d8a    6800004040
                         {disp8} lea       ecx, dword ptr [esp + 0x14]                   // 0x00753d8f    8d4c2414
                         push              ecx                                           // 0x00753d93    51
                         mov.s             ecx, eax                                      // 0x00753d94    8bc8
                         call              ?GetPosOutside@Abode@@QAEPAUMapCoords@@PAU2@MMM@Z  // 0x00753d96    e84535cbff
                         mov               ecx, dword ptr [eax]                          // 0x00753d9b    8b08
                         {disp8} mov       edx, dword ptr [esp + 0x18]                   // 0x00753d9d    8b542418
                         mov               dword ptr [edx], ecx                          // 0x00753da1    890a
                         {disp8} mov       ecx, dword ptr [eax + 0x04]                   // 0x00753da3    8b4804
                         {disp8} mov       dword ptr [edx + 0x04], ecx                   // 0x00753da6    894a04
                         {disp8} mov       eax, dword ptr [eax + 0x08]                   // 0x00753da9    8b4008
                         {disp8} mov       dword ptr [edx + 0x08], eax                   // 0x00753dac    894208
                         mov               eax, 0x00000001                               // 0x00753daf    b801000000
                         pop               esi                                           // 0x00753db4    5e
                         add               esp, 0x10                                     // 0x00753db5    83c410
                         ret               0x0004                                        // 0x00753db8    c20400
_jmp_addr_0x00753dbb:    xor.s             eax, eax                                      // 0x00753dbb    33c0
                         pop               esi                                           // 0x00753dbd    5e
                         add               esp, 0x10                                     // 0x00753dbe    83c410
                         ret               0x0004                                        // 0x00753dc1    c20400
                         nop                                                             // 0x00753dc4    90
                         nop                                                             // 0x00753dc5    90
                         nop                                                             // 0x00753dc6    90
                         nop                                                             // 0x00753dc7    90
                         nop                                                             // 0x00753dc8    90
                         nop                                                             // 0x00753dc9    90
                         nop                                                             // 0x00753dca    90
                         nop                                                             // 0x00753dcb    90
                         nop                                                             // 0x00753dcc    90
                         nop                                                             // 0x00753dcd    90
                         nop                                                             // 0x00753dce    90
                         nop                                                             // 0x00753dcf    90
                         xor.s             eax, eax                                      // 0x00753dd0    33c0
                         {disp8} mov       ax, word ptr [ecx + 0x58]                     // 0x00753dd2    668b4158
                         test              ax, ax                                        // 0x00753dd6    6685c0
                         {disp8} lea       edx, dword ptr [eax + -0x01]                  // 0x00753dd9    8d50ff
                         {disp8} mov       word ptr [ecx + 0x58], dx                     // 0x00753ddc    66895158
                         {disp8} jne       _jmp_addr_0x00753df3                          // 0x00753de0    7511
                         {disp8} mov       word ptr [ecx + 0x58], ax                     // 0x00753de2    66894158
                         mov               eax, dword ptr [ecx]                          // 0x00753de6    8b01
                         push              0x000000a3                                    // 0x00753de8    68a3000000
                         call              dword ptr [eax + 0x8e8]                       // 0x00753ded    ff90e8080000
_jmp_addr_0x00753df3:    mov               eax, 0x00000001                               // 0x00753df3    b801000000
                         ret                                                             // 0x00753df8    c3
                         nop                                                             // 0x00753df9    90
                         nop                                                             // 0x00753dfa    90
                         nop                                                             // 0x00753dfb    90
                         nop                                                             // 0x00753dfc    90
                         nop                                                             // 0x00753dfd    90
                         nop                                                             // 0x00753dfe    90
                         nop                                                             // 0x00753dff    90
?RemoveFromGame@Villager@@UAEIXZ:
                         push              esi                                           // 0x00753e00    56
                         mov.s             esi, ecx                                      // 0x00753e01    8bf1
                         call              ?DeleteDependancys@Villager@@QAEXXZ           // 0x00753e03    e858bfffff
                         mov.s             ecx, esi                                      // 0x00753e08    8bce
                         call              ?RemoveFromGame@Living@@UAEIXZ                // 0x00753e0a    e851a7e9ff
                         pop               esi                                           // 0x00753e0f    5e
                         ret                                                             // 0x00753e10    c3
                         nop                                                             // 0x00753e11    90
                         nop                                                             // 0x00753e12    90
                         nop                                                             // 0x00753e13    90
                         nop                                                             // 0x00753e14    90
                         nop                                                             // 0x00753e15    90
                         nop                                                             // 0x00753e16    90
                         nop                                                             // 0x00753e17    90
                         nop                                                             // 0x00753e18    90
                         nop                                                             // 0x00753e19    90
                         nop                                                             // 0x00753e1a    90
                         nop                                                             // 0x00753e1b    90
                         nop                                                             // 0x00753e1c    90
                         nop                                                             // 0x00753e1d    90
                         nop                                                             // 0x00753e1e    90
                         nop                                                             // 0x00753e1f    90
?GetResourceDropoffPos@Villager@@QAEPAVGameThingWithPos@@W4RESOURCE_TYPE@@@Z:
                         sub               esp, 0x0c                                     // 0x00753e20    83ec0c
                         push              ebx                                           // 0x00753e23    53
                         push              esi                                           // 0x00753e24    56
                         mov.s             esi, ecx                                      // 0x00753e25    8bf1
                         mov               eax, dword ptr [esi]                          // 0x00753e27    8b06
                         push              edi                                           // 0x00753e29    57
                         call              dword ptr [eax + 0x48]                        // 0x00753e2a    ff5048
                         mov.s             ecx, esi                                      // 0x00753e2d    8bce
                         mov.s             ebx, eax                                      // 0x00753e2f    8bd8
                         {disp8} mov       dword ptr [esp + 0x0c], 0x00000000            // 0x00753e31    c744240c00000000
                         {disp8} mov       dword ptr [esp + 0x10], 0x00000000            // 0x00753e39    c744241000000000
                         {disp8} mov       dword ptr [esp + 0x14], 0x00000000            // 0x00753e41    c744241400000000
                         call              ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ // 0x00753e49    e8c2e0ffff
                         mov.s             edi, eax                                      // 0x00753e4e    8bf8
                         test              edi, edi                                      // 0x00753e50    85ff
                         {disp8} je        _jmp_addr_0x00753e7c                          // 0x00753e52    7428
                         mov               edx, dword ptr [edi]                          // 0x00753e54    8b17
                         mov.s             ecx, edi                                      // 0x00753e56    8bcf
                         call              dword ptr [edx + 0xd4]                        // 0x00753e58    ff92d4000000
                         test              eax, eax                                      // 0x00753e5e    85c0
                         {disp8} je        _jmp_addr_0x00753e7c                          // 0x00753e60    741a
_jmp_addr_0x00753e62:    {disp8} mov       esi, dword ptr [esp + 0x1c]                   // 0x00753e62    8b74241c
                         mov               eax, dword ptr [edi]                          // 0x00753e66    8b07
                         push              esi                                           // 0x00753e68    56
                         mov.s             ecx, edi                                      // 0x00753e69    8bcf
                         call              dword ptr [eax + 0x104]                       // 0x00753e6b    ff9004010000
                         pop               edi                                           // 0x00753e71    5f
                         mov.s             eax, esi                                      // 0x00753e72    8bc6
                         pop               esi                                           // 0x00753e74    5e
                         pop               ebx                                           // 0x00753e75    5b
                         add               esp, 0x0c                                     // 0x00753e76    83c40c
                         ret               0x0008                                        // 0x00753e79    c20800
_jmp_addr_0x00753e7c:    test              ebx, ebx                                      // 0x00753e7c    85db
                         {disp8} je        _jmp_addr_0x00753ed3                          // 0x00753e7e    7453
                         mov.s             ecx, ebx                                      // 0x00753e80    8bcb
                         call              ?GetStoragePit@Town@@QAEPAVStoragePit@@XZ     // 0x00753e82    e82977feff
                         mov.s             edi, eax                                      // 0x00753e87    8bf8
                         test              edi, edi                                      // 0x00753e89    85ff
                         {disp8} je        _jmp_addr_0x00753e9b                          // 0x00753e8b    740e
                         mov               edx, dword ptr [edi]                          // 0x00753e8d    8b17
                         mov.s             ecx, edi                                      // 0x00753e8f    8bcf
                         call              dword ptr [edx + 0xd4]                        // 0x00753e91    ff92d4000000
                         test              eax, eax                                      // 0x00753e97    85c0
                         {disp8} jne       _jmp_addr_0x00753e62                          // 0x00753e99    75c7
_jmp_addr_0x00753e9b:    {disp8} mov       ecx, dword ptr [esp + 0x20]                   // 0x00753e9b    8b4c2420
                         push              ecx                                           // 0x00753e9f    51
                         {disp8} lea       edx, dword ptr [esp + 0x10]                   // 0x00753ea0    8d542410
                         push              edx                                           // 0x00753ea4    52
                         add               esi, 0x14                                     // 0x00753ea5    83c614
                         push              esi                                           // 0x00753ea8    56
                         mov.s             ecx, ebx                                      // 0x00753ea9    8bcb
                         call              ?GetTemporaryResourceStorePotOrPos@Town@@QAEPAXABUMapCoords@@AAU2@W4RESOURCE_TYPE@@@Z                          // 0x00753eab    e850aafeff
                         {disp8} mov       eax, dword ptr [esp + 0x1c]                   // 0x00753eb0    8b44241c
                         {disp8} mov       edx, dword ptr [esp + 0x0c]                   // 0x00753eb4    8b54240c
                         mov.s             ecx, eax                                      // 0x00753eb8    8bc8
                         mov               dword ptr [ecx], edx                          // 0x00753eba    8911
                         {disp8} mov       edx, dword ptr [esp + 0x10]                   // 0x00753ebc    8b542410
                         pop               edi                                           // 0x00753ec0    5f
                         {disp8} mov       dword ptr [ecx + 0x04], edx                   // 0x00753ec1    895104
                         {disp8} mov       edx, dword ptr [esp + 0x10]                   // 0x00753ec4    8b542410
                         pop               esi                                           // 0x00753ec8    5e
                         {disp8} mov       dword ptr [ecx + 0x08], edx                   // 0x00753ec9    895108
                         pop               ebx                                           // 0x00753ecc    5b
                         add               esp, 0x0c                                     // 0x00753ecd    83c40c
                         ret               0x0008                                        // 0x00753ed0    c20800
_jmp_addr_0x00753ed3:    {disp8} mov       eax, dword ptr [esp + 0x1c]                   // 0x00753ed3    8b44241c
                         add               esi, 0x14                                     // 0x00753ed7    83c614
                         mov               edx, dword ptr [esi]                          // 0x00753eda    8b16
                         mov.s             ecx, eax                                      // 0x00753edc    8bc8
                         mov               dword ptr [ecx], edx                          // 0x00753ede    8911
                         {disp8} mov       edx, dword ptr [esi + 0x04]                   // 0x00753ee0    8b5604
                         {disp8} mov       dword ptr [ecx + 0x04], edx                   // 0x00753ee3    895104
                         {disp8} mov       edx, dword ptr [esi + 0x08]                   // 0x00753ee6    8b5608
                         pop               edi                                           // 0x00753ee9    5f
                         pop               esi                                           // 0x00753eea    5e
                         {disp8} mov       dword ptr [ecx + 0x08], edx                   // 0x00753eeb    895108
                         pop               ebx                                           // 0x00753eee    5b
                         add               esp, 0x0c                                     // 0x00753eef    83c40c
                         ret               0x0008                                        // 0x00753ef2    c20800
                         nop                                                             // 0x00753ef5    90
                         nop                                                             // 0x00753ef6    90
                         nop                                                             // 0x00753ef7    90
                         nop                                                             // 0x00753ef8    90
                         nop                                                             // 0x00753ef9    90
                         nop                                                             // 0x00753efa    90
                         nop                                                             // 0x00753efb    90
                         nop                                                             // 0x00753efc    90
                         nop                                                             // 0x00753efd    90
                         nop                                                             // 0x00753efe    90
                         nop                                                             // 0x00753eff    90
?IsFinalState@Villager@@UAE_NW4VILLAGER_STATES@@@Z:
                         {disp8} mov       eax, dword ptr [esp + 0x04]                   // 0x00753f00    8b442404
                         and               eax, 0x000000ff                               // 0x00753f04    25ff000000
                         lea               ecx, dword ptr [eax + eax * 0x2]              // 0x00753f09    8d0c40
                         shl               ecx, 3                                        // 0x00753f0c    c1e103
                         sub.s             ecx, eax                                      // 0x00753f0f    2bc8
                         lea               eax, dword ptr [ecx + ecx * 0x2]              // 0x00753f11    8d0449
                         {disp32} mov      eax, dword ptr [eax * 0x4 + 0x00db9e84]       // 0x00753f14    8b0485849edb00
                         ret               0x0004                                        // 0x00753f1b    c20400
                         nop                                                             // 0x00753f1e    90
                         nop                                                             // 0x00753f1f    90
?GetQueryFirstEnumText@Villager@@UAE?AW4HELP_TEXT@@XZ:
                         push              esi                                           // 0x00753f20    56
                         mov.s             esi, ecx                                      // 0x00753f21    8bf1
                         mov               eax, dword ptr [esi]                          // 0x00753f23    8b06
                         call              dword ptr [eax + 0xb04]                       // 0x00753f25    ff90040b0000
                         and               eax, 0x000000ff                               // 0x00753f2b    25ff000000
                         mov.s             ecx, eax                                      // 0x00753f30    8bc8
                         lea               eax, dword ptr [ecx + ecx * 0x2]              // 0x00753f32    8d0449
                         shl               eax, 3                                        // 0x00753f35    c1e003
                         sub.s             eax, ecx                                      // 0x00753f38    2bc1
                         lea               ecx, dword ptr [eax + eax * 0x2]              // 0x00753f3a    8d0c40
                         {disp32} mov      eax, dword ptr [ecx * 0x4 + 0x00db9f78]       // 0x00753f3d    8b048d789fdb00
                         test              eax, eax                                      // 0x00753f44    85c0
                         {disp8} jne       _jmp_addr_0x00753f8e                          // 0x00753f46    7546
                         xor.s             edx, edx                                      // 0x00753f48    33d2
                         {disp32} mov      dx, word ptr [esi + 0x000000e0]               // 0x00753f4a    668b96e0000000
                         shr               edx, 9                                        // 0x00753f51    c1ea09
                         test              dl, 0x01                                      // 0x00753f54    f6c201
                         {disp8} je        _jmp_addr_0x00753f87                          // 0x00753f57    742e
                         {disp32} mov      al, byte ptr [esi + 0x000000f2]               // 0x00753f59    8a86f2000000
                         test              eax, eax                                      // 0x00753f5f    85c0
                         {disp8} jl        _jmp_addr_0x00753f6f                          // 0x00753f61    7c0c
                         cmp               eax, 0x07                                     // 0x00753f63    83f807
                         {disp8} jg        _jmp_addr_0x00753f6f                          // 0x00753f66    7f07
                         add               eax, 0x00000c39                               // 0x00753f68    05390c0000
                         pop               esi                                           // 0x00753f6d    5e
                         ret                                                             // 0x00753f6e    c3
_jmp_addr_0x00753f6f:    cmp               eax, 0x09                                     // 0x00753f6f    83f809
                         {disp8} jne       _jmp_addr_0x00753f7b                          // 0x00753f72    7507
                         mov               eax, 0x00000ad2                               // 0x00753f74    b8d20a0000
                         pop               esi                                           // 0x00753f79    5e
                         ret                                                             // 0x00753f7a    c3
_jmp_addr_0x00753f7b:    cmp               eax, 0x08                                     // 0x00753f7b    83f808
                         {disp8} jne       _jmp_addr_0x00753f87                          // 0x00753f7e    7507
                         mov               eax, 0x00000c39                               // 0x00753f80    b8390c0000
                         pop               esi                                           // 0x00753f85    5e
                         ret                                                             // 0x00753f86    c3
_jmp_addr_0x00753f87:    mov.s             ecx, esi                                      // 0x00753f87    8bce
                         call              ?GetQueryFirstEnumText@Object@@UAE?AW4HELP_TEXT@@XZ                          // 0x00753f89    e8f245eeff
_jmp_addr_0x00753f8e:    pop               esi                                           // 0x00753f8e    5e
                         ret                                                             // 0x00753f8f    c3
?GetQueryLastEnumText@Villager@@UAE?AW4HELP_TEXT@@XZ:
                         push              esi                                           // 0x00753f90    56
                         mov.s             esi, ecx                                      // 0x00753f91    8bf1
                         mov               eax, dword ptr [esi]                          // 0x00753f93    8b06
                         push              edi                                           // 0x00753f95    57
                         call              dword ptr [eax + 0xb04]                       // 0x00753f96    ff90040b0000
                         and               eax, 0x000000ff                               // 0x00753f9c    25ff000000
                         mov.s             ecx, eax                                      // 0x00753fa1    8bc8
                         lea               eax, dword ptr [ecx + ecx * 0x2]              // 0x00753fa3    8d0449
                         shl               eax, 3                                        // 0x00753fa6    c1e003
                         sub.s             eax, ecx                                      // 0x00753fa9    2bc1
                         lea               ecx, dword ptr [eax + eax * 0x2]              // 0x00753fab    8d0c40
                         {disp32} mov      edi, dword ptr [ecx * 0x4 + 0x00db9f78]       // 0x00753fae    8b3c8d789fdb00
                         test              edi, edi                                      // 0x00753fb5    85ff
                         {disp8} jne       _jmp_addr_0x00754007                          // 0x00753fb7    754e
                         xor.s             edx, edx                                      // 0x00753fb9    33d2
                         {disp32} mov      dx, word ptr [esi + 0x000000e0]               // 0x00753fbb    668b96e0000000
                         shr               edx, 9                                        // 0x00753fc2    c1ea09
                         test              dl, 0x01                                      // 0x00753fc5    f6c201
                         {disp8} je        _jmp_addr_0x00753ffd                          // 0x00753fc8    7433
                         xor.s             eax, eax                                      // 0x00753fca    33c0
                         {disp32} mov      al, byte ptr [esi + 0x000000f2]               // 0x00753fcc    8a86f2000000
                         test              eax, eax                                      // 0x00753fd2    85c0
                         {disp8} jl        _jmp_addr_0x00753fe3                          // 0x00753fd4    7c0d
                         cmp               eax, 0x07                                     // 0x00753fd6    83f807
                         {disp8} jg        _jmp_addr_0x00753fe3                          // 0x00753fd9    7f08
                         pop               edi                                           // 0x00753fdb    5f
                         add               eax, 0x00000c39                               // 0x00753fdc    05390c0000
                         pop               esi                                           // 0x00753fe1    5e
                         ret                                                             // 0x00753fe2    c3
_jmp_addr_0x00753fe3:    cmp               eax, 0x09                                     // 0x00753fe3    83f809
                         {disp8} jne       _jmp_addr_0x00753ff0                          // 0x00753fe6    7508
                         pop               edi                                           // 0x00753fe8    5f
                         mov               eax, 0x00000ad2                               // 0x00753fe9    b8d20a0000
                         pop               esi                                           // 0x00753fee    5e
                         ret                                                             // 0x00753fef    c3
_jmp_addr_0x00753ff0:    cmp               eax, 0x08                                     // 0x00753ff0    83f808
                         {disp8} jne       _jmp_addr_0x00753ffd                          // 0x00753ff3    7508
                         pop               edi                                           // 0x00753ff5    5f
                         mov               eax, 0x00000c39                               // 0x00753ff6    b8390c0000
                         pop               esi                                           // 0x00753ffb    5e
                         ret                                                             // 0x00753ffc    c3
_jmp_addr_0x00753ffd:    mov.s             ecx, esi                                      // 0x00753ffd    8bce
                         call              ?GetQueryLastEnumText@Object@@UAE?AW4HELP_TEXT@@XZ                          // 0x00753fff    e88c45eeff
                         pop               edi                                           // 0x00754004    5f
                         pop               esi                                           // 0x00754005    5e
                         ret                                                             // 0x00754006    c3
_jmp_addr_0x00754007:    mov               eax, dword ptr [esi]                          // 0x00754007    8b06
                         mov.s             ecx, esi                                      // 0x00754009    8bce
                         call              dword ptr [eax + 0xb04]                       // 0x0075400b    ff90040b0000
                         and               eax, 0x000000ff                               // 0x00754011    25ff000000
                         mov.s             ecx, eax                                      // 0x00754016    8bc8
                         lea               eax, dword ptr [ecx + ecx * 0x2]              // 0x00754018    8d0449
                         shl               eax, 3                                        // 0x0075401b    c1e003
                         sub.s             eax, ecx                                      // 0x0075401e    2bc1
                         lea               ecx, dword ptr [eax + eax * 0x2]              // 0x00754020    8d0c40
                         cmp               dword ptr [ecx * 0x4 + 0x00db9f78], edi       // 0x00754023    393c8d789fdb00
                         {disp8} jbe       _jmp_addr_0x00754049                          // 0x0075402a    761d
                         xor.s             ecx, ecx                                      // 0x0075402c    33c9
                         {disp32} mov      cl, byte ptr [esi + 0x0000008c]               // 0x0075402e    8a8e8c000000
                         pop               edi                                           // 0x00754034    5f
                         pop               esi                                           // 0x00754035    5e
                         lea               eax, dword ptr [ecx + ecx * 0x2]              // 0x00754036    8d0449
                         shl               eax, 3                                        // 0x00754039    c1e003
                         sub.s             eax, ecx                                      // 0x0075403c    2bc1
                         lea               edx, dword ptr [eax + eax * 0x2]              // 0x0075403e    8d1440
                         {disp32} mov      eax, dword ptr [edx * 0x4 + 0x00db9f78]       // 0x00754041    8b0495789fdb00
                         ret                                                             // 0x00754048    c3
_jmp_addr_0x00754049:    mov.s             eax, edi                                      // 0x00754049    8bc7
                         pop               edi                                           // 0x0075404b    5f
                         pop               esi                                           // 0x0075404c    5e
                         ret                                                             // 0x0075404d    c3
                         nop                                                             // 0x0075404e    90
                         nop                                                             // 0x0075404f    90
?GetFOVHelpMessageSet@Villager@@UAEIXZ:
                         {disp32} jmp      ?GetFOVHelpMessageSet@Object@@UAEIXZ          // 0x00754050    e94b45eeff
                         nop                                                             // 0x00754055    90
                         nop                                                             // 0x00754056    90
                         nop                                                             // 0x00754057    90
                         nop                                                             // 0x00754058    90
                         nop                                                             // 0x00754059    90
                         nop                                                             // 0x0075405a    90
                         nop                                                             // 0x0075405b    90
                         nop                                                             // 0x0075405c    90
                         nop                                                             // 0x0075405d    90
                         nop                                                             // 0x0075405e    90
                         nop                                                             // 0x0075405f    90
?GetFOVHelpCondition@Villager@@UAEIXZ:
                         {disp32} jmp      ?GetFOVHelpCondition@Object@@UAEIXZ           // 0x00754060    e94b45eeff
                         nop                                                             // 0x00754065    90
                         nop                                                             // 0x00754066    90
                         nop                                                             // 0x00754067    90
                         nop                                                             // 0x00754068    90
                         nop                                                             // 0x00754069    90
                         nop                                                             // 0x0075406a    90
                         nop                                                             // 0x0075406b    90
                         nop                                                             // 0x0075406c    90
                         nop                                                             // 0x0075406d    90
                         nop                                                             // 0x0075406e    90
                         nop                                                             // 0x0075406f    90
?SetDiscipleNothingToDo@Villager@@QAE_NXZ:
                         sub               esp, 0x0c                                     // 0x00754070    83ec0c
                         push              esi                                           // 0x00754073    56
                         {disp8} lea       eax, dword ptr [esp + 0x04]                   // 0x00754074    8d442404
                         mov.s             esi, ecx                                      // 0x00754078    8bf1
                         push              eax                                           // 0x0075407a    50
                         {disp8} mov       dword ptr [esp + 0x08], 0x00000000            // 0x0075407b    c744240800000000
                         {disp8} mov       dword ptr [esp + 0x0c], 0x00000000            // 0x00754083    c744240c00000000
                         {disp8} mov       dword ptr [esp + 0x10], 0x00000000            // 0x0075408b    c744241000000000
                         call              ?FindDisciplePrayerPos@Villager@@QAE_NPAUMapCoords@@@Z                          // 0x00754093    e8e8000000
                         test              eax, eax                                      // 0x00754098    85c0
                         {disp8} je        _jmp_addr_0x007540bd                          // 0x0075409a    7421
                         push              0x000000dd                                    // 0x0075409c    68dd000000
                         {disp8} lea       ecx, dword ptr [esp + 0x08]                   // 0x007540a1    8d4c2408
                         push              ecx                                           // 0x007540a5    51
                         mov.s             ecx, esi                                      // 0x007540a6    8bce
                         {disp8} mov       word ptr [esi + 0x58], 0x0000                 // 0x007540a8    66c746580000
                         call              @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13// 0x007540ae    e8dde7e9ff
                         mov               eax, 0x00000001                               // 0x007540b3    b801000000
                         pop               esi                                           // 0x007540b8    5e
                         add               esp, 0x0c                                     // 0x007540b9    83c40c
                         ret                                                             // 0x007540bc    c3
_jmp_addr_0x007540bd:    xor.s             eax, eax                                      // 0x007540bd    33c0
                         pop               esi                                           // 0x007540bf    5e
                         add               esp, 0x0c                                     // 0x007540c0    83c40c
                         ret                                                             // 0x007540c3    c3
                         nop                                                             // 0x007540c4    90
                         nop                                                             // 0x007540c5    90
                         nop                                                             // 0x007540c6    90
                         nop                                                             // 0x007540c7    90
                         nop                                                             // 0x007540c8    90
                         nop                                                             // 0x007540c9    90
                         nop                                                             // 0x007540ca    90
                         nop                                                             // 0x007540cb    90
                         nop                                                             // 0x007540cc    90
                         nop                                                             // 0x007540cd    90
                         nop                                                             // 0x007540ce    90
                         nop                                                             // 0x007540cf    90
?DiscipleNothingToDo@Villager@@QAE_NXZ:
                         push              esi                                           // 0x007540d0    56
                         mov.s             esi, ecx                                      // 0x007540d1    8bf1
                         mov               eax, dword ptr [esi]                          // 0x007540d3    8b06
                         call              dword ptr [eax + 0x48]                        // 0x007540d5    ff5048
                         {disp32} mov      ecx, dword ptr [eax + 0x000005e8]             // 0x007540d8    8b88e8050000
                         test              ecx, ecx                                      // 0x007540de    85c9
                         {disp8} je        _jmp_addr_0x007540fa                          // 0x007540e0    7418
                         push              0x00000c35                                    // 0x007540e2    68350c0000
                         push              0x00c235dc                                    // 0x007540e7    68dc35c200
                         push              0xa                                           // 0x007540ec    6a0a
                         call              ?GameRand@GRand@@SAHJ@Z                       // 0x007540ee    e81da4f8ff
                         add               esp, 0x0c                                     // 0x007540f3    83c40c
                         {disp8} mov       word ptr [esi + 0x58], ax                     // 0x007540f6    66894658
_jmp_addr_0x007540fa:    dec               word ptr [esi + 0x58]                         // 0x007540fa    66ff4e58
                         {disp8} mov       ax, word ptr [esi + 0x58]                     // 0x007540fe    668b4658
                         test              ax, ax                                        // 0x00754102    6685c0
                         {disp8} jg        _jmp_addr_0x00754132                          // 0x00754105    7f2b
                         push              0x1                                           // 0x00754107    6a01
                         mov.s             ecx, esi                                      // 0x00754109    8bce
                         call              @IsReadyForNewAnimation__6LivingFUl@12        // 0x0075410b    e85088e9ff
                         test              eax, eax                                      // 0x00754110    85c0
                         {disp8} je        _jmp_addr_0x0075412c                          // 0x00754112    7418
                         mov.s             ecx, esi                                      // 0x00754114    8bce
                         call              ?DiscipleDecideWhatToDo@Villager@@QAE_NXZ     // 0x00754116    e805d6ffff
                         test              eax, eax                                      // 0x0075411b    85c0
                         {disp8} jne       _jmp_addr_0x00754132                          // 0x0075411d    7513
                         {disp8} mov       word ptr [esi + 0x58], 0x012c                 // 0x0075411f    66c746582c01
                         mov               eax, 0x00000001                               // 0x00754125    b801000000
                         pop               esi                                           // 0x0075412a    5e
                         ret                                                             // 0x0075412b    c3
_jmp_addr_0x0075412c:    {disp8} mov       word ptr [esi + 0x58], 0x0001                 // 0x0075412c    66c746580100
_jmp_addr_0x00754132:    mov               eax, 0x00000001                               // 0x00754132    b801000000
                         pop               esi                                           // 0x00754137    5e
                         ret                                                             // 0x00754138    c3
                         nop                                                             // 0x00754139    90
                         nop                                                             // 0x0075413a    90
                         nop                                                             // 0x0075413b    90
                         nop                                                             // 0x0075413c    90
                         nop                                                             // 0x0075413d    90
                         nop                                                             // 0x0075413e    90
                         nop                                                             // 0x0075413f    90
?EnterDiscipleNothingToDo@Villager@@QAE_NEE@Z:
                         push              esi                                           // 0x00754140    56
                         mov.s             esi, ecx                                      // 0x00754141    8bf1
                         mov               eax, dword ptr [esi]                          // 0x00754143    8b06
                         call              dword ptr [eax + 0x48]                        // 0x00754145    ff5048
                         test              eax, eax                                      // 0x00754148    85c0
                         {disp8} je        _jmp_addr_0x00754174                          // 0x0075414a    7428
                         mov               edx, dword ptr [esi]                          // 0x0075414c    8b16
                         mov.s             ecx, esi                                      // 0x0075414e    8bce
                         call              dword ptr [edx + 0x48]                        // 0x00754150    ff5248
                         {disp32} mov      ecx, dword ptr [eax + 0x000009a4]             // 0x00754153    8b88a4090000
                         test              ecx, ecx                                      // 0x00754159    85c9
                         {disp8} je        _jmp_addr_0x00754174                          // 0x0075415b    7417
                         mov               eax, dword ptr [esi]                          // 0x0075415d    8b06
                         mov.s             ecx, esi                                      // 0x0075415f    8bce
                         call              dword ptr [eax + 0x48]                        // 0x00754161    ff5048
                         {disp32} mov      ecx, dword ptr [eax + 0x000009a4]             // 0x00754164    8b88a4090000
                         push              0x2                                           // 0x0075416a    6a02
                         push              ecx                                           // 0x0075416c    51
                         mov.s             ecx, esi                                      // 0x0075416d    8bce
                         call              ?LookAtObject@Living@@QAEIPAVGameThingWithPos@@K@Z                          // 0x0075416f    e8ac83e9ff
_jmp_addr_0x00754174:    mov               eax, 0x00000001                               // 0x00754174    b801000000
                         pop               esi                                           // 0x00754179    5e
                         ret               0x0008                                        // 0x0075417a    c20800
                         nop                                                             // 0x0075417d    90
                         nop                                                             // 0x0075417e    90
                         nop                                                             // 0x0075417f    90
?FindDisciplePrayerPos@Villager@@QAE_NPAUMapCoords@@@Z:
                         sub               esp, 0x20                                     // 0x00754180    83ec20
                         push              ebx                                           // 0x00754183    53
                         mov.s             ebx, ecx                                      // 0x00754184    8bd9
                         mov               eax, dword ptr [ebx]                          // 0x00754186    8b03
                         push              esi                                           // 0x00754188    56
                         call              dword ptr [eax + 0x48]                        // 0x00754189    ff5048
                         test              eax, eax                                      // 0x0075418c    85c0
                         {disp32} je       _jmp_addr_0x0075426a                          // 0x0075418e    0f84d6000000
                         {disp32} mov      esi, dword ptr [eax + 0x000009a4]             // 0x00754194    8bb0a4090000
                         test              esi, esi                                      // 0x0075419a    85f6
                         {disp32} je       _jmp_addr_0x00754246                          // 0x0075419c    0f84a4000000
                         push              edi                                           // 0x007541a2    57
                         add               ebx, 0x14                                     // 0x007541a3    83c314
                         {disp8} lea       edi, dword ptr [esi + 0x14]                   // 0x007541a6    8d7e14
                         push              ebx                                           // 0x007541a9    53
                         push              edi                                           // 0x007541aa    57
                         call              ?Get3DAngleFromXZ@GUtils@@SAMABUMapCoords@@0@Z                               // 0x007541ab    e8c090ffff
                         {disp8} fstp      dword ptr [esp + 0x14]                        // 0x007541b0    d95c2414
                         push              0x00000c5b                                    // 0x007541b4    685b0c0000
                         push              0x00c235dc                                    // 0x007541b9    68dc35c200
                         push              0x3fc90fdb                                    // 0x007541be    68db0fc93f
                         call              ?GameFloatRand@GRand@@SAMM@Z                  // 0x007541c3    e868a3f8ff
                         {disp32} fsub     dword ptr [rdata_bytes + 0x1dc9c]             // 0x007541c8    d8259c6c8c00
                         push              0x00000c5c                                    // 0x007541ce    685c0c0000
                         push              0x00c235dc                                    // 0x007541d3    68dc35c200
                         {disp8} fadd      dword ptr [esp + 0x28]                        // 0x007541d8    d8442428
                         push              0x40800000                                    // 0x007541dc    6800008040
                         {disp8} fstp      dword ptr [esp + 0x30]                        // 0x007541e1    d95c2430
                         call              ?GameFloatRand@GRand@@SAMM@Z                  // 0x007541e5    e846a3f8ff
                         mov               edx, dword ptr [esi]                          // 0x007541ea    8b16
                         {disp8} fstp      dword ptr [esp + 0x2c]                        // 0x007541ec    d95c242c
                         add               esp, 0x20                                     // 0x007541f0    83c420
                         mov.s             ecx, esi                                      // 0x007541f3    8bce
                         call              dword ptr [edx + 0x64]                        // 0x007541f5    ff5264
                         {disp8} fadd      dword ptr [esp + 0x0c]                        // 0x007541f8    d844240c
                         {disp8} mov       ecx, dword ptr [esp + 0x10]                   // 0x007541fc    8b4c2410
                         {disp8} lea       edx, dword ptr [esp + 0x14]                   // 0x00754200    8d542414
                         {disp8} fstp      dword ptr [esp + 0x0c]                        // 0x00754204    d95c240c
                         {disp8} mov       eax, dword ptr [esp + 0x0c]                   // 0x00754208    8b44240c
                         push              eax                                           // 0x0075420c    50
                         push              ecx                                           // 0x0075420d    51
                         push              edx                                           // 0x0075420e    52
                         call              ?GetPosFromAngle@GUtils@@SAPAUMapCoords@@MM@Z // 0x0075420f    e86c93ffff
                         add               esp, 0x0c                                     // 0x00754214    83c40c
                         push              eax                                           // 0x00754217    50
                         {disp8} lea       eax, dword ptr [esp + 0x24]                   // 0x00754218    8d442424
                         push              eax                                           // 0x0075421c    50
                         mov.s             ecx, edi                                      // 0x0075421d    8bcf
                         call              @__pl__9MapCoordsCFRC9MapCoords@16            // 0x0075421f    e8fc12ebff
                         mov               edx, dword ptr [eax]                          // 0x00754224    8b10
                         {disp8} mov       ecx, dword ptr [esp + 0x30]                   // 0x00754226    8b4c2430
                         mov               dword ptr [ecx], edx                          // 0x0075422a    8911
                         {disp8} mov       edx, dword ptr [eax + 0x04]                   // 0x0075422c    8b5004
                         {disp8} mov       dword ptr [ecx + 0x04], edx                   // 0x0075422f    895104
                         {disp8} mov       eax, dword ptr [eax + 0x08]                   // 0x00754232    8b4008
                         pop               edi                                           // 0x00754235    5f
                         pop               esi                                           // 0x00754236    5e
                         {disp8} mov       dword ptr [ecx + 0x08], eax                   // 0x00754237    894108
                         mov               eax, 0x00000001                               // 0x0075423a    b801000000
                         pop               ebx                                           // 0x0075423f    5b
                         add               esp, 0x20                                     // 0x00754240    83c420
                         ret               0x0004                                        // 0x00754243    c20400
_jmp_addr_0x00754246:    {disp8} mov       ecx, dword ptr [esp + 0x2c]                   // 0x00754246    8b4c242c
                         add               eax, 0x14                                     // 0x0075424a    83c014
                         mov               edx, dword ptr [eax]                          // 0x0075424d    8b10
                         mov               dword ptr [ecx], edx                          // 0x0075424f    8911
                         {disp8} mov       edx, dword ptr [eax + 0x04]                   // 0x00754251    8b5004
                         {disp8} mov       dword ptr [ecx + 0x04], edx                   // 0x00754254    895104
                         {disp8} mov       eax, dword ptr [eax + 0x08]                   // 0x00754257    8b4008
                         pop               esi                                           // 0x0075425a    5e
                         {disp8} mov       dword ptr [ecx + 0x08], eax                   // 0x0075425b    894108
                         mov               eax, 0x00000001                               // 0x0075425e    b801000000
                         pop               ebx                                           // 0x00754263    5b
                         add               esp, 0x20                                     // 0x00754264    83c420
                         ret               0x0004                                        // 0x00754267    c20400
_jmp_addr_0x0075426a:    pop               esi                                           // 0x0075426a    5e
                         xor.s             eax, eax                                      // 0x0075426b    33c0
                         pop               ebx                                           // 0x0075426d    5b
                         add               esp, 0x20                                     // 0x0075426e    83c420
                         ret               0x0004                                        // 0x00754271    c20400
                         nop                                                             // 0x00754274    90
                         nop                                                             // 0x00754275    90
                         nop                                                             // 0x00754276    90
                         nop                                                             // 0x00754277    90
                         nop                                                             // 0x00754278    90
                         nop                                                             // 0x00754279    90
                         nop                                                             // 0x0075427a    90
                         nop                                                             // 0x0075427b    90
                         nop                                                             // 0x0075427c    90
                         nop                                                             // 0x0075427d    90
                         nop                                                             // 0x0075427e    90
                         nop                                                             // 0x0075427f    90
?Save@Villager@@UAEIAAVGameOSFile@@@Z:
                         push              esi                                           // 0x00754280    56
                         {disp8} mov       esi, dword ptr [esp + 0x08]                   // 0x00754281    8b742408
                         push              edi                                           // 0x00754285    57
                         mov.s             edi, ecx                                      // 0x00754286    8bf9
                         push              esi                                           // 0x00754288    56
                         call              ?Save@Living@@UAEIAAVGameOSFile@@@Z           // 0x00754289    e8a2a3e9ff
                         test              eax, eax                                      // 0x0075428e    85c0
                         {disp32} je       _jmp_addr_0x0075456d                          // 0x00754290    0f84d7020000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226990]        // 0x00754296    a190c9be00
                         push              ebx                                           // 0x0075429b    53
                         push              ebp                                           // 0x0075429c    55
                         xor.s             ebp, ebp                                      // 0x0075429d    33ed
                         cmp.s             eax, ebp                                      // 0x0075429f    3bc5
                         {disp32} je       _jmp_addr_0x007544b2                          // 0x007542a1    0f840b020000
                         push              ebp                                           // 0x007542a7    55
                         push              0x2                                           // 0x007542a8    6a02
                         {disp32} lea      ebx, dword ptr [edi + 0x000000e0]             // 0x007542aa    8d9fe0000000
                         push              ebx                                           // 0x007542b0    53
                         mov.s             ecx, esi                                      // 0x007542b1    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x007542b3    e868860600
                         cmp               eax, 0x03                                     // 0x007542b8    83f803
                         {disp8} jne       _jmp_addr_0x007542c3                          // 0x007542bb    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226990], ebp        // 0x007542bd    892d90c9be00
_jmp_addr_0x007542c3:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x007542c3    8b8e14020000
                         xor.s             eax, eax                                      // 0x007542c9    33c0
                         mov               al, byte ptr [ebx]                            // 0x007542cb    8a03
                         add               eax, 0x02                                     // 0x007542cd    83c002
                         add.s             ecx, eax                                      // 0x007542d0    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x007542d2    898e14020000
                         cmp               dword ptr [data_bytes + 0x226990], ebp        // 0x007542d8    392d90c9be00
                         {disp32} je       _jmp_addr_0x007544b2                          // 0x007542de    0f84ce010000
                         push              ebp                                           // 0x007542e4    55
                         push              0x4                                           // 0x007542e5    6a04
                         {disp32} lea      ebx, dword ptr [edi + 0x000000e8]             // 0x007542e7    8d9fe8000000
                         push              ebx                                           // 0x007542ed    53
                         mov.s             ecx, esi                                      // 0x007542ee    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x007542f0    e82b860600
                         cmp               eax, 0x03                                     // 0x007542f5    83f803
                         {disp8} jne       _jmp_addr_0x00754300                          // 0x007542f8    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226990], ebp        // 0x007542fa    892d90c9be00
_jmp_addr_0x00754300:    {disp32} mov      edx, dword ptr [esi + 0x00000214]             // 0x00754300    8b9614020000
                         xor.s             ecx, ecx                                      // 0x00754306    33c9
                         mov               cl, byte ptr [ebx]                            // 0x00754308    8a0b
                         add               ecx, 0x4                                      // 0x0075430a    83c104
                         add.s             edx, ecx                                      // 0x0075430d    03d1
                         {disp32} mov      dword ptr [esi + 0x00000214], edx             // 0x0075430f    899614020000
                         cmp               dword ptr [data_bytes + 0x226990], ebp        // 0x00754315    392d90c9be00
                         {disp32} je       _jmp_addr_0x007544b2                          // 0x0075431b    0f8491010000
                         push              ebp                                           // 0x00754321    55
                         push              0x4                                           // 0x00754322    6a04
                         {disp32} lea      ebx, dword ptr [edi + 0x000000ec]             // 0x00754324    8d9fec000000
                         push              ebx                                           // 0x0075432a    53
                         mov.s             ecx, esi                                      // 0x0075432b    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x0075432d    e8ee850600
                         cmp               eax, 0x03                                     // 0x00754332    83f803
                         {disp8} jne       _jmp_addr_0x0075433d                          // 0x00754335    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226990], ebp        // 0x00754337    892d90c9be00
_jmp_addr_0x0075433d:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x0075433d    8b8e14020000
                         xor.s             edx, edx                                      // 0x00754343    33d2
                         mov               dl, byte ptr [ebx]                            // 0x00754345    8a13
                         add               edx, 0x04                                     // 0x00754347    83c204
                         add.s             ecx, edx                                      // 0x0075434a    03ca
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x0075434c    898e14020000
                         cmp               dword ptr [data_bytes + 0x226990], ebp        // 0x00754352    392d90c9be00
                         {disp32} je       _jmp_addr_0x007544b2                          // 0x00754358    0f8454010000
                         push              ebp                                           // 0x0075435e    55
                         push              0x1                                           // 0x0075435f    6a01
                         {disp32} lea      ebx, dword ptr [edi + 0x000000f0]             // 0x00754361    8d9ff0000000
                         push              ebx                                           // 0x00754367    53
                         mov.s             ecx, esi                                      // 0x00754368    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x0075436a    e8b1850600
                         cmp               eax, 0x03                                     // 0x0075436f    83f803
                         {disp8} jne       _jmp_addr_0x0075437a                          // 0x00754372    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226990], ebp        // 0x00754374    892d90c9be00
_jmp_addr_0x0075437a:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x0075437a    8b8e14020000
                         xor.s             eax, eax                                      // 0x00754380    33c0
                         mov               al, byte ptr [ebx]                            // 0x00754382    8a03
                         inc               eax                                           // 0x00754384    40
                         add.s             ecx, eax                                      // 0x00754385    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x00754387    898e14020000
                         cmp               dword ptr [data_bytes + 0x226990], ebp        // 0x0075438d    392d90c9be00
                         {disp32} je       _jmp_addr_0x007544b2                          // 0x00754393    0f8419010000
                         push              ebp                                           // 0x00754399    55
                         push              0x1                                           // 0x0075439a    6a01
                         {disp32} lea      ebx, dword ptr [edi + 0x000000f1]             // 0x0075439c    8d9ff1000000
                         push              ebx                                           // 0x007543a2    53
                         mov.s             ecx, esi                                      // 0x007543a3    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x007543a5    e876850600
                         cmp               eax, 0x03                                     // 0x007543aa    83f803
                         {disp8} jne       _jmp_addr_0x007543b5                          // 0x007543ad    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226990], ebp        // 0x007543af    892d90c9be00
_jmp_addr_0x007543b5:    {disp32} mov      edx, dword ptr [esi + 0x00000214]             // 0x007543b5    8b9614020000
                         xor.s             ecx, ecx                                      // 0x007543bb    33c9
                         mov               cl, byte ptr [ebx]                            // 0x007543bd    8a0b
                         inc               ecx                                           // 0x007543bf    41
                         add.s             edx, ecx                                      // 0x007543c0    03d1
                         {disp32} mov      dword ptr [esi + 0x00000214], edx             // 0x007543c2    899614020000
                         cmp               dword ptr [data_bytes + 0x226990], ebp        // 0x007543c8    392d90c9be00
                         {disp32} je       _jmp_addr_0x007544b2                          // 0x007543ce    0f84de000000
                         push              ebp                                           // 0x007543d4    55
                         push              0x1                                           // 0x007543d5    6a01
                         {disp32} lea      ebx, dword ptr [edi + 0x000000f2]             // 0x007543d7    8d9ff2000000
                         push              ebx                                           // 0x007543dd    53
                         mov.s             ecx, esi                                      // 0x007543de    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x007543e0    e83b850600
                         cmp               eax, 0x03                                     // 0x007543e5    83f803
                         {disp8} jne       _jmp_addr_0x007543f0                          // 0x007543e8    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226990], ebp        // 0x007543ea    892d90c9be00
_jmp_addr_0x007543f0:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x007543f0    8b8e14020000
                         xor.s             edx, edx                                      // 0x007543f6    33d2
                         mov               dl, byte ptr [ebx]                            // 0x007543f8    8a13
                         inc               edx                                           // 0x007543fa    42
                         add.s             ecx, edx                                      // 0x007543fb    03ca
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x007543fd    898e14020000
                         cmp               dword ptr [data_bytes + 0x226990], ebp        // 0x00754403    392d90c9be00
                         {disp32} je       _jmp_addr_0x007544b2                          // 0x00754409    0f84a3000000
                         push              ebp                                           // 0x0075440f    55
                         push              0x2                                           // 0x00754410    6a02
                         {disp32} lea      ebx, dword ptr [edi + 0x000000f4]             // 0x00754412    8d9ff4000000
                         push              ebx                                           // 0x00754418    53
                         mov.s             ecx, esi                                      // 0x00754419    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x0075441b    e800850600
                         cmp               eax, 0x03                                     // 0x00754420    83f803
                         {disp8} jne       _jmp_addr_0x0075442b                          // 0x00754423    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226990], ebp        // 0x00754425    892d90c9be00
_jmp_addr_0x0075442b:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x0075442b    8b8e14020000
                         xor.s             eax, eax                                      // 0x00754431    33c0
                         mov               al, byte ptr [ebx]                            // 0x00754433    8a03
                         add               eax, 0x02                                     // 0x00754435    83c002
                         add.s             ecx, eax                                      // 0x00754438    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x0075443a    898e14020000
                         cmp               dword ptr [data_bytes + 0x226990], ebp        // 0x00754440    392d90c9be00
                         {disp8} je        _jmp_addr_0x007544b2                          // 0x00754446    746a
                         push              ebp                                           // 0x00754448    55
                         push              0x2                                           // 0x00754449    6a02
                         {disp32} lea      ebx, dword ptr [edi + 0x000000f6]             // 0x0075444b    8d9ff6000000
                         push              ebx                                           // 0x00754451    53
                         mov.s             ecx, esi                                      // 0x00754452    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x00754454    e8c7840600
                         cmp               eax, 0x03                                     // 0x00754459    83f803
                         {disp8} jne       _jmp_addr_0x00754464                          // 0x0075445c    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226990], ebp        // 0x0075445e    892d90c9be00
_jmp_addr_0x00754464:    {disp32} mov      edx, dword ptr [esi + 0x00000214]             // 0x00754464    8b9614020000
                         xor.s             ecx, ecx                                      // 0x0075446a    33c9
                         mov               cl, byte ptr [ebx]                            // 0x0075446c    8a0b
                         add               ecx, 0x2                                      // 0x0075446e    83c102
                         add.s             edx, ecx                                      // 0x00754471    03d1
                         {disp32} mov      dword ptr [esi + 0x00000214], edx             // 0x00754473    899614020000
                         cmp               dword ptr [data_bytes + 0x226990], ebp        // 0x00754479    392d90c9be00
                         {disp8} je        _jmp_addr_0x007544b2                          // 0x0075447f    7431
                         push              ebp                                           // 0x00754481    55
                         push              0x2                                           // 0x00754482    6a02
                         {disp32} lea      ebx, dword ptr [edi + 0x000000f8]             // 0x00754484    8d9ff8000000
                         push              ebx                                           // 0x0075448a    53
                         mov.s             ecx, esi                                      // 0x0075448b    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x0075448d    e88e840600
                         cmp               eax, 0x03                                     // 0x00754492    83f803
                         {disp8} jne       _jmp_addr_0x0075449d                          // 0x00754495    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226990], ebp        // 0x00754497    892d90c9be00
_jmp_addr_0x0075449d:    {disp32} mov      eax, dword ptr [esi + 0x00000214]             // 0x0075449d    8b8614020000
                         xor.s             edx, edx                                      // 0x007544a3    33d2
                         mov               dl, byte ptr [ebx]                            // 0x007544a5    8a13
                         add               edx, 0x02                                     // 0x007544a7    83c202
                         add.s             eax, edx                                      // 0x007544aa    03c2
                         {disp32} mov      dword ptr [esi + 0x00000214], eax             // 0x007544ac    898614020000
_jmp_addr_0x007544b2:    {disp32} mov      eax, dword ptr [edi + 0x00000128]             // 0x007544b2    8b8728010000
                         push              eax                                           // 0x007544b8    50
                         mov.s             ecx, esi                                      // 0x007544b9    8bce
                         call              ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x007544bb    e850d9e0ff
                         {disp32} mov      ecx, dword ptr [edi + 0x0000012c]             // 0x007544c0    8b8f2c010000
                         push              ecx                                           // 0x007544c6    51
                         mov.s             ecx, esi                                      // 0x007544c7    8bce
                         call              ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x007544c9    e842d9e0ff
                         {disp32} mov      edx, dword ptr [edi + 0x00000100]             // 0x007544ce    8b9700010000
                         push              edx                                           // 0x007544d4    52
                         mov.s             ecx, esi                                      // 0x007544d5    8bce
                         call              ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x007544d7    e834d9e0ff
                         cmp               dword ptr [data_bytes + 0x226990], ebp        // 0x007544dc    392d90c9be00
                         {disp8} mov       dword ptr [esp + 0x14], ebp                   // 0x007544e2    896c2414
                         {disp8} je        _jmp_addr_0x00754559                          // 0x007544e6    7471
                         push              ebp                                           // 0x007544e8    55
                         push              0x4                                           // 0x007544e9    6a04
                         {disp8} lea       eax, dword ptr [esp + 0x1c]                   // 0x007544eb    8d44241c
                         push              eax                                           // 0x007544ef    50
                         mov.s             ecx, esi                                      // 0x007544f0    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x007544f2    e829840600
                         cmp               eax, 0x03                                     // 0x007544f7    83f803
                         {disp8} jne       _jmp_addr_0x00754502                          // 0x007544fa    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226990], ebp        // 0x007544fc    892d90c9be00
_jmp_addr_0x00754502:    {disp8} mov       ecx, dword ptr [esp + 0x14]                   // 0x00754502    8b4c2414
                         {disp32} mov      edx, dword ptr [esi + 0x00000214]             // 0x00754506    8b9614020000
                         and               ecx, 0x000000ff                               // 0x0075450c    81e1ff000000
                         add               ecx, 0x4                                      // 0x00754512    83c104
                         add.s             edx, ecx                                      // 0x00754515    03d1
                         {disp32} mov      dword ptr [esi + 0x00000214], edx             // 0x00754517    899614020000
                         cmp               dword ptr [data_bytes + 0x226990], ebp        // 0x0075451d    392d90c9be00
                         {disp8} je        _jmp_addr_0x00754559                          // 0x00754523    7434
                         push              ebp                                           // 0x00754525    55
                         push              0x4                                           // 0x00754526    6a04
                         {disp8} lea       edx, dword ptr [esp + 0x1c]                   // 0x00754528    8d54241c
                         push              edx                                           // 0x0075452c    52
                         mov.s             ecx, esi                                      // 0x0075452d    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x0075452f    e8ec830600
                         cmp               eax, 0x03                                     // 0x00754534    83f803
                         {disp8} jne       _jmp_addr_0x0075453f                          // 0x00754537    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226990], ebp        // 0x00754539    892d90c9be00
_jmp_addr_0x0075453f:    {disp8} mov       eax, dword ptr [esp + 0x14]                   // 0x0075453f    8b442414
                         {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x00754543    8b8e14020000
                         and               eax, 0x000000ff                               // 0x00754549    25ff000000
                         add               eax, 0x04                                     // 0x0075454e    83c004
                         add.s             ecx, eax                                      // 0x00754551    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x00754553    898e14020000
_jmp_addr_0x00754559:    push              esi                                           // 0x00754559    56
                         mov.s             ecx, edi                                      // 0x0075455a    8bcf
                         call              ?SaveStateFunction@Villager@@QAE_NAAVGameOSFile@@@Z                          // 0x0075455c    e81f040000
                         pop               ebp                                           // 0x00754561    5d
                         pop               ebx                                           // 0x00754562    5b
                         pop               edi                                           // 0x00754563    5f
                         mov               eax, 0x00000001                               // 0x00754564    b801000000
                         pop               esi                                           // 0x00754569    5e
                         ret               0x0004                                        // 0x0075456a    c20400
_jmp_addr_0x0075456d:    pop               edi                                           // 0x0075456d    5f
                         xor.s             eax, eax                                      // 0x0075456e    33c0
                         pop               esi                                           // 0x00754570    5e
                         ret               0x0004                                        // 0x00754571    c20400
                         nop                                                             // 0x00754574    90
                         nop                                                             // 0x00754575    90
                         nop                                                             // 0x00754576    90
                         nop                                                             // 0x00754577    90
                         nop                                                             // 0x00754578    90
                         nop                                                             // 0x00754579    90
                         nop                                                             // 0x0075457a    90
                         nop                                                             // 0x0075457b    90
                         nop                                                             // 0x0075457c    90
                         nop                                                             // 0x0075457d    90
                         nop                                                             // 0x0075457e    90
                         nop                                                             // 0x0075457f    90
?Load@Villager@@UAEIAAVGameOSFile@@@Z:
                         push              ebx                                           // 0x00754580    53
                         push              esi                                           // 0x00754581    56
                         {disp8} mov       esi, dword ptr [esp + 0x0c]                   // 0x00754582    8b74240c
                         mov.s             ebx, ecx                                      // 0x00754586    8bd9
                         push              esi                                           // 0x00754588    56
                         call              ?Load@Living@@UAEIAAVGameOSFile@@@Z           // 0x00754589    e8d2a3e9ff
                         test              eax, eax                                      // 0x0075458e    85c0
                         {disp32} je       _jmp_addr_0x00754861                          // 0x00754590    0f84cb020000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226994]        // 0x00754596    a194c9be00
                         push              ebp                                           // 0x0075459b    55
                         xor.s             ebp, ebp                                      // 0x0075459c    33ed
                         cmp.s             eax, ebp                                      // 0x0075459e    3bc5
                         push              edi                                           // 0x007545a0    57
                         {disp32} lea      edi, dword ptr [ebx + 0x000000e0]             // 0x007545a1    8dbbe0000000
                         {disp8} je        _jmp_addr_0x007545d4                          // 0x007545a7    742b
                         push              ebp                                           // 0x007545a9    55
                         push              0x2                                           // 0x007545aa    6a02
                         push              edi                                           // 0x007545ac    57
                         mov.s             ecx, esi                                      // 0x007545ad    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x007545af    e82c830600
                         cmp               eax, 0x03                                     // 0x007545b4    83f803
                         {disp8} jne       _jmp_addr_0x007545bf                          // 0x007545b7    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226994], ebp        // 0x007545b9    892d94c9be00
_jmp_addr_0x007545bf:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x007545bf    8b8e14020000
                         xor.s             eax, eax                                      // 0x007545c5    33c0
                         mov               al, byte ptr [edi]                            // 0x007545c7    8a07
                         add               eax, 0x02                                     // 0x007545c9    83c002
                         add.s             ecx, eax                                      // 0x007545cc    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x007545ce    898e14020000
_jmp_addr_0x007545d4:    cmp               dword ptr [data_bytes + 0x226994], ebp        // 0x007545d4    392d94c9be00
                         {disp32} lea      edi, dword ptr [ebx + 0x000000e8]             // 0x007545da    8dbbe8000000
                         {disp8} je        _jmp_addr_0x0075460d                          // 0x007545e0    742b
                         push              ebp                                           // 0x007545e2    55
                         push              0x4                                           // 0x007545e3    6a04
                         push              edi                                           // 0x007545e5    57
                         mov.s             ecx, esi                                      // 0x007545e6    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x007545e8    e8f3820600
                         cmp               eax, 0x03                                     // 0x007545ed    83f803
                         {disp8} jne       _jmp_addr_0x007545f8                          // 0x007545f0    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226994], ebp        // 0x007545f2    892d94c9be00
_jmp_addr_0x007545f8:    {disp32} mov      eax, dword ptr [esi + 0x00000214]             // 0x007545f8    8b8614020000
                         xor.s             ecx, ecx                                      // 0x007545fe    33c9
                         mov               cl, byte ptr [edi]                            // 0x00754600    8a0f
                         add               ecx, 0x4                                      // 0x00754602    83c104
                         add.s             eax, ecx                                      // 0x00754605    03c1
                         {disp32} mov      dword ptr [esi + 0x00000214], eax             // 0x00754607    898614020000
_jmp_addr_0x0075460d:    cmp               dword ptr [data_bytes + 0x226994], ebp        // 0x0075460d    392d94c9be00
                         {disp32} lea      edi, dword ptr [ebx + 0x000000ec]             // 0x00754613    8dbbec000000
                         {disp8} je        _jmp_addr_0x00754646                          // 0x00754619    742b
                         push              ebp                                           // 0x0075461b    55
                         push              0x4                                           // 0x0075461c    6a04
                         push              edi                                           // 0x0075461e    57
                         mov.s             ecx, esi                                      // 0x0075461f    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x00754621    e8ba820600
                         cmp               eax, 0x03                                     // 0x00754626    83f803
                         {disp8} jne       _jmp_addr_0x00754631                          // 0x00754629    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226994], ebp        // 0x0075462b    892d94c9be00
_jmp_addr_0x00754631:    {disp32} mov      eax, dword ptr [esi + 0x00000214]             // 0x00754631    8b8614020000
                         xor.s             edx, edx                                      // 0x00754637    33d2
                         mov               dl, byte ptr [edi]                            // 0x00754639    8a17
                         add               edx, 0x04                                     // 0x0075463b    83c204
                         add.s             eax, edx                                      // 0x0075463e    03c2
                         {disp32} mov      dword ptr [esi + 0x00000214], eax             // 0x00754640    898614020000
_jmp_addr_0x00754646:    cmp               dword ptr [data_bytes + 0x226994], ebp        // 0x00754646    392d94c9be00
                         {disp32} lea      edi, dword ptr [ebx + 0x000000f0]             // 0x0075464c    8dbbf0000000
                         {disp8} je        _jmp_addr_0x0075467d                          // 0x00754652    7429
                         push              ebp                                           // 0x00754654    55
                         push              0x1                                           // 0x00754655    6a01
                         push              edi                                           // 0x00754657    57
                         mov.s             ecx, esi                                      // 0x00754658    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x0075465a    e881820600
                         cmp               eax, 0x03                                     // 0x0075465f    83f803
                         {disp8} jne       _jmp_addr_0x0075466a                          // 0x00754662    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226994], ebp        // 0x00754664    892d94c9be00
_jmp_addr_0x0075466a:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x0075466a    8b8e14020000
                         xor.s             eax, eax                                      // 0x00754670    33c0
                         mov               al, byte ptr [edi]                            // 0x00754672    8a07
                         inc               eax                                           // 0x00754674    40
                         add.s             ecx, eax                                      // 0x00754675    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x00754677    898e14020000
_jmp_addr_0x0075467d:    cmp               dword ptr [data_bytes + 0x226994], ebp        // 0x0075467d    392d94c9be00
                         {disp32} lea      edi, dword ptr [ebx + 0x000000f1]             // 0x00754683    8dbbf1000000
                         {disp8} je        _jmp_addr_0x007546b4                          // 0x00754689    7429
                         push              ebp                                           // 0x0075468b    55
                         push              0x1                                           // 0x0075468c    6a01
                         push              edi                                           // 0x0075468e    57
                         mov.s             ecx, esi                                      // 0x0075468f    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x00754691    e84a820600
                         cmp               eax, 0x03                                     // 0x00754696    83f803
                         {disp8} jne       _jmp_addr_0x007546a1                          // 0x00754699    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226994], ebp        // 0x0075469b    892d94c9be00
_jmp_addr_0x007546a1:    {disp32} mov      eax, dword ptr [esi + 0x00000214]             // 0x007546a1    8b8614020000
                         xor.s             ecx, ecx                                      // 0x007546a7    33c9
                         mov               cl, byte ptr [edi]                            // 0x007546a9    8a0f
                         inc               ecx                                           // 0x007546ab    41
                         add.s             eax, ecx                                      // 0x007546ac    03c1
                         {disp32} mov      dword ptr [esi + 0x00000214], eax             // 0x007546ae    898614020000
_jmp_addr_0x007546b4:    cmp               dword ptr [data_bytes + 0x226994], ebp        // 0x007546b4    392d94c9be00
                         {disp32} lea      edi, dword ptr [ebx + 0x000000f2]             // 0x007546ba    8dbbf2000000
                         {disp8} je        _jmp_addr_0x007546eb                          // 0x007546c0    7429
                         push              ebp                                           // 0x007546c2    55
                         push              0x1                                           // 0x007546c3    6a01
                         push              edi                                           // 0x007546c5    57
                         mov.s             ecx, esi                                      // 0x007546c6    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x007546c8    e813820600
                         cmp               eax, 0x03                                     // 0x007546cd    83f803
                         {disp8} jne       _jmp_addr_0x007546d8                          // 0x007546d0    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226994], ebp        // 0x007546d2    892d94c9be00
_jmp_addr_0x007546d8:    {disp32} mov      eax, dword ptr [esi + 0x00000214]             // 0x007546d8    8b8614020000
                         xor.s             edx, edx                                      // 0x007546de    33d2
                         mov               dl, byte ptr [edi]                            // 0x007546e0    8a17
                         inc               edx                                           // 0x007546e2    42
                         add.s             eax, edx                                      // 0x007546e3    03c2
                         {disp32} mov      dword ptr [esi + 0x00000214], eax             // 0x007546e5    898614020000
_jmp_addr_0x007546eb:    cmp               dword ptr [data_bytes + 0x226994], ebp        // 0x007546eb    392d94c9be00
                         {disp32} lea      edi, dword ptr [ebx + 0x000000f4]             // 0x007546f1    8dbbf4000000
                         {disp8} je        _jmp_addr_0x00754724                          // 0x007546f7    742b
                         push              ebp                                           // 0x007546f9    55
                         push              0x2                                           // 0x007546fa    6a02
                         push              edi                                           // 0x007546fc    57
                         mov.s             ecx, esi                                      // 0x007546fd    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x007546ff    e8dc810600
                         cmp               eax, 0x03                                     // 0x00754704    83f803
                         {disp8} jne       _jmp_addr_0x0075470f                          // 0x00754707    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226994], ebp        // 0x00754709    892d94c9be00
_jmp_addr_0x0075470f:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x0075470f    8b8e14020000
                         xor.s             eax, eax                                      // 0x00754715    33c0
                         mov               al, byte ptr [edi]                            // 0x00754717    8a07
                         add               eax, 0x02                                     // 0x00754719    83c002
                         add.s             ecx, eax                                      // 0x0075471c    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x0075471e    898e14020000
_jmp_addr_0x00754724:    cmp               dword ptr [data_bytes + 0x226994], ebp        // 0x00754724    392d94c9be00
                         {disp32} lea      edi, dword ptr [ebx + 0x000000f6]             // 0x0075472a    8dbbf6000000
                         {disp8} je        _jmp_addr_0x0075475d                          // 0x00754730    742b
                         push              ebp                                           // 0x00754732    55
                         push              0x2                                           // 0x00754733    6a02
                         push              edi                                           // 0x00754735    57
                         mov.s             ecx, esi                                      // 0x00754736    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x00754738    e8a3810600
                         cmp               eax, 0x03                                     // 0x0075473d    83f803
                         {disp8} jne       _jmp_addr_0x00754748                          // 0x00754740    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226994], ebp        // 0x00754742    892d94c9be00
_jmp_addr_0x00754748:    {disp32} mov      eax, dword ptr [esi + 0x00000214]             // 0x00754748    8b8614020000
                         xor.s             ecx, ecx                                      // 0x0075474e    33c9
                         mov               cl, byte ptr [edi]                            // 0x00754750    8a0f
                         add               ecx, 0x2                                      // 0x00754752    83c102
                         add.s             eax, ecx                                      // 0x00754755    03c1
                         {disp32} mov      dword ptr [esi + 0x00000214], eax             // 0x00754757    898614020000
_jmp_addr_0x0075475d:    cmp               dword ptr [data_bytes + 0x226994], ebp        // 0x0075475d    392d94c9be00
                         {disp32} lea      edi, dword ptr [ebx + 0x000000f8]             // 0x00754763    8dbbf8000000
                         {disp8} je        _jmp_addr_0x00754796                          // 0x00754769    742b
                         push              ebp                                           // 0x0075476b    55
                         push              0x2                                           // 0x0075476c    6a02
                         push              edi                                           // 0x0075476e    57
                         mov.s             ecx, esi                                      // 0x0075476f    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x00754771    e86a810600
                         cmp               eax, 0x03                                     // 0x00754776    83f803
                         {disp8} jne       _jmp_addr_0x00754781                          // 0x00754779    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226994], ebp        // 0x0075477b    892d94c9be00
_jmp_addr_0x00754781:    {disp32} mov      eax, dword ptr [esi + 0x00000214]             // 0x00754781    8b8614020000
                         xor.s             edx, edx                                      // 0x00754787    33d2
                         mov               dl, byte ptr [edi]                            // 0x00754789    8a17
                         add               edx, 0x02                                     // 0x0075478b    83c202
                         add.s             eax, edx                                      // 0x0075478e    03c2
                         {disp32} mov      dword ptr [esi + 0x00000214], eax             // 0x00754790    898614020000
_jmp_addr_0x00754796:    {disp32} lea      eax, dword ptr [ebx + 0x00000128]             // 0x00754796    8d8328010000
                         push              eax                                           // 0x0075479c    50
                         mov.s             ecx, esi                                      // 0x0075479d    8bce
                         call              @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x0075479f    e8dcd9e0ff
                         {disp32} lea      ecx, dword ptr [ebx + 0x0000012c]             // 0x007547a4    8d8b2c010000
                         push              ecx                                           // 0x007547aa    51
                         mov.s             ecx, esi                                      // 0x007547ab    8bce
                         call              @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x007547ad    e8ced9e0ff
                         {disp32} lea      edx, dword ptr [ebx + 0x00000100]             // 0x007547b2    8d9300010000
                         push              edx                                           // 0x007547b8    52
                         mov.s             ecx, esi                                      // 0x007547b9    8bce
                         call              @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x007547bb    e8c0d9e0ff
                         cmp               dword ptr [data_bytes + 0x226994], ebp        // 0x007547c0    392d94c9be00
                         {disp8} mov       dword ptr [esp + 0x14], ebp                   // 0x007547c6    896c2414
                         {disp8} je        _jmp_addr_0x0075483d                          // 0x007547ca    7471
                         push              ebp                                           // 0x007547cc    55
                         push              0x4                                           // 0x007547cd    6a04
                         {disp8} lea       eax, dword ptr [esp + 0x1c]                   // 0x007547cf    8d44241c
                         push              eax                                           // 0x007547d3    50
                         mov.s             ecx, esi                                      // 0x007547d4    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x007547d6    e805810600
                         cmp               eax, 0x03                                     // 0x007547db    83f803
                         {disp8} jne       _jmp_addr_0x007547e6                          // 0x007547de    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226994], ebp        // 0x007547e0    892d94c9be00
_jmp_addr_0x007547e6:    {disp8} mov       ecx, dword ptr [esp + 0x14]                   // 0x007547e6    8b4c2414
                         {disp32} mov      edx, dword ptr [esi + 0x00000214]             // 0x007547ea    8b9614020000
                         and               ecx, 0x000000ff                               // 0x007547f0    81e1ff000000
                         add               ecx, 0x4                                      // 0x007547f6    83c104
                         add.s             edx, ecx                                      // 0x007547f9    03d1
                         {disp32} mov      dword ptr [esi + 0x00000214], edx             // 0x007547fb    899614020000
                         cmp               dword ptr [data_bytes + 0x226994], ebp        // 0x00754801    392d94c9be00
                         {disp8} je        _jmp_addr_0x0075483d                          // 0x00754807    7434
                         push              ebp                                           // 0x00754809    55
                         push              0x4                                           // 0x0075480a    6a04
                         {disp8} lea       edx, dword ptr [esp + 0x1c]                   // 0x0075480c    8d54241c
                         push              edx                                           // 0x00754810    52
                         mov.s             ecx, esi                                      // 0x00754811    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x00754813    e8c8800600
                         cmp               eax, 0x03                                     // 0x00754818    83f803
                         {disp8} jne       _jmp_addr_0x00754823                          // 0x0075481b    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226994], ebp        // 0x0075481d    892d94c9be00
_jmp_addr_0x00754823:    {disp8} mov       eax, dword ptr [esp + 0x14]                   // 0x00754823    8b442414
                         {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x00754827    8b8e14020000
                         and               eax, 0x000000ff                               // 0x0075482d    25ff000000
                         add               eax, 0x04                                     // 0x00754832    83c004
                         add.s             ecx, eax                                      // 0x00754835    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x00754837    898e14020000
_jmp_addr_0x0075483d:    push              esi                                           // 0x0075483d    56
                         mov.s             ecx, ebx                                      // 0x0075483e    8bcb
                         call              ?LoadStateFunction@Villager@@QAE_NAAVGameOSFile@@@Z                          // 0x00754840    e86b010000
                         mov               edx, dword ptr [ebx]                          // 0x00754845    8b13
                         mov.s             ecx, ebx                                      // 0x00754847    8bcb
                         call              dword ptr [edx + 0x508]                       // 0x00754849    ff9208050000
                         {disp32} fstp     dword ptr [ebx + 0x00000108]                  // 0x0075484f    d99b08010000
                         pop               edi                                           // 0x00754855    5f
                         pop               ebp                                           // 0x00754856    5d
                         pop               esi                                           // 0x00754857    5e
                         mov               eax, 0x00000001                               // 0x00754858    b801000000
                         pop               ebx                                           // 0x0075485d    5b
                         ret               0x0004                                        // 0x0075485e    c20400
_jmp_addr_0x00754861:    pop               esi                                           // 0x00754861    5e
                         xor.s             eax, eax                                      // 0x00754862    33c0
                         pop               ebx                                           // 0x00754864    5b
                         ret               0x0004                                        // 0x00754865    c20400
                         nop                                                             // 0x00754868    90
                         nop                                                             // 0x00754869    90
                         nop                                                             // 0x0075486a    90
                         nop                                                             // 0x0075486b    90
                         nop                                                             // 0x0075486c    90
                         nop                                                             // 0x0075486d    90
                         nop                                                             // 0x0075486e    90
                         nop                                                             // 0x0075486f    90
?ResolveLoad@Villager@@UAEXXZ:
                         push              esi                                           // 0x00754870    56
                         push              edi                                           // 0x00754871    57
                         mov.s             esi, ecx                                      // 0x00754872    8bf1
                         call              ?ResolveLoad@Living@@UAEXXZ                   // 0x00754874    e8a7a4e9ff
                         {disp8} mov       ecx, dword ptr [esi + 0x40]                   // 0x00754879    8b4e40
                         mov               edi, dword ptr [ecx]                          // 0x0075487c    8b39
                         xor.s             eax, eax                                      // 0x0075487e    33c0
                         {disp32} mov      al, byte ptr [esi + 0x000000f2]               // 0x00754880    8a86f2000000
                         {disp32} lea      edx, dword ptr [eax * 0x8 + 0x00000000]       // 0x00754886    8d14c500000000
                         sub.s             edx, eax                                      // 0x0075488d    2bd0
                         {disp32} mov      edx, dword ptr [edx * 0x4 + 0x0099a200]       // 0x0075488f    8b149500a29900
                         call              dword ptr [edi + 0xcc]                        // 0x00754896    ff97cc000000
                         pop               edi                                           // 0x0075489c    5f
                         pop               esi                                           // 0x0075489d    5e
                         ret                                                             // 0x0075489e    c3
                         nop                                                             // 0x0075489f    90
?CallSaveStateFunction@Villager@@QAE_NAAVGameOSFile@@W4STATE_TYPE@@@Z:
                         sub               esp, 0x10                                     // 0x007548a0    83ec10
                         {disp8} mov       edx, dword ptr [esp + 0x18]                   // 0x007548a3    8b542418
                         xor.s             eax, eax                                      // 0x007548a7    33c0
                         {disp32} mov      al, byte ptr [edx + ecx * 0x1 + 0x0000008c]   // 0x007548a9    8a840a8c000000
                         push              esi                                           // 0x007548b0    56
                         push              edi                                           // 0x007548b1    57
                         lea               eax, dword ptr [eax + eax * 0x8]              // 0x007548b2    8d04c0
                         shl               eax, 4                                        // 0x007548b5    c1e004
                         {disp32} lea      eax, dword ptr [eax + 0x00d091c8]             // 0x007548b8    8d80c891d000
                         mov.s             esi, eax                                      // 0x007548be    8bf0
                         mov               edx, dword ptr [esi]                          // 0x007548c0    8b16
                         test              edx, edx                                      // 0x007548c2    85d2
                         {disp8} mov       edi, dword ptr [esi + 0x04]                   // 0x007548c4    8b7e04
                         {disp8} mov       dword ptr [esp + 0x0c], edi                   // 0x007548c7    897c240c
                         {disp8} mov       edi, dword ptr [esi + 0x08]                   // 0x007548cb    8b7e08
                         {disp8} mov       esi, dword ptr [esi + 0x0c]                   // 0x007548ce    8b760c
                         {disp8} mov       dword ptr [esp + 0x10], edi                   // 0x007548d1    897c2410
                         {disp8} mov       dword ptr [esp + 0x14], esi                   // 0x007548d5    89742414
                         {disp8} je        _jmp_addr_0x007548ff                          // 0x007548d9    7424
                         {disp8} mov       esi, dword ptr [eax + 0x04]                   // 0x007548db    8b7004
                         {disp8} mov       edi, dword ptr [eax + 0x08]                   // 0x007548de    8b7808
                         mov               edx, dword ptr [eax]                          // 0x007548e1    8b10
                         {disp8} mov       eax, dword ptr [eax + 0x0c]                   // 0x007548e3    8b400c
                         {disp8} mov       dword ptr [esp + 0x14], eax                   // 0x007548e6    89442414
                         {disp8} mov       eax, dword ptr [esp + 0x1c]                   // 0x007548ea    8b44241c
                         push              eax                                           // 0x007548ee    50
                         add.s             ecx, esi                                      // 0x007548ef    03ce
                         {disp8} mov       dword ptr [esp + 0x14], edi                   // 0x007548f1    897c2414
                         call              edx                                           // 0x007548f5    ffd2
                         pop               edi                                           // 0x007548f7    5f
                         pop               esi                                           // 0x007548f8    5e
                         add               esp, 0x10                                     // 0x007548f9    83c410
                         ret               0x0008                                        // 0x007548fc    c20800
_jmp_addr_0x007548ff:    pop               edi                                           // 0x007548ff    5f
                         xor.s             eax, eax                                      // 0x00754900    33c0
                         pop               esi                                           // 0x00754902    5e
                         add               esp, 0x10                                     // 0x00754903    83c410
                         ret               0x0008                                        // 0x00754906    c20800
                         nop                                                             // 0x00754909    90
                         nop                                                             // 0x0075490a    90
                         nop                                                             // 0x0075490b    90
                         nop                                                             // 0x0075490c    90
                         nop                                                             // 0x0075490d    90
                         nop                                                             // 0x0075490e    90
                         nop                                                             // 0x0075490f    90
?CallLoadStateFunction@Villager@@QAE_NAAVGameOSFile@@W4STATE_TYPE@@@Z:
                         sub               esp, 0x10                                     // 0x00754910    83ec10
                         {disp8} mov       edx, dword ptr [esp + 0x18]                   // 0x00754913    8b542418
                         xor.s             eax, eax                                      // 0x00754917    33c0
                         {disp32} mov      al, byte ptr [edx + ecx * 0x1 + 0x0000008c]   // 0x00754919    8a840a8c000000
                         push              esi                                           // 0x00754920    56
                         push              edi                                           // 0x00754921    57
                         lea               eax, dword ptr [eax + eax * 0x8]              // 0x00754922    8d04c0
                         shl               eax, 4                                        // 0x00754925    c1e004
                         {disp32} lea      eax, dword ptr [eax + 0x00d091d8]             // 0x00754928    8d80d891d000
                         mov.s             esi, eax                                      // 0x0075492e    8bf0
                         mov               edx, dword ptr [esi]                          // 0x00754930    8b16
                         test              edx, edx                                      // 0x00754932    85d2
                         {disp8} mov       edi, dword ptr [esi + 0x04]                   // 0x00754934    8b7e04
                         {disp8} mov       dword ptr [esp + 0x0c], edi                   // 0x00754937    897c240c
                         {disp8} mov       edi, dword ptr [esi + 0x08]                   // 0x0075493b    8b7e08
                         {disp8} mov       esi, dword ptr [esi + 0x0c]                   // 0x0075493e    8b760c
                         {disp8} mov       dword ptr [esp + 0x10], edi                   // 0x00754941    897c2410
                         {disp8} mov       dword ptr [esp + 0x14], esi                   // 0x00754945    89742414
                         {disp8} je        _jmp_addr_0x0075496f                          // 0x00754949    7424
                         {disp8} mov       esi, dword ptr [eax + 0x04]                   // 0x0075494b    8b7004
                         {disp8} mov       edi, dword ptr [eax + 0x08]                   // 0x0075494e    8b7808
                         mov               edx, dword ptr [eax]                          // 0x00754951    8b10
                         {disp8} mov       eax, dword ptr [eax + 0x0c]                   // 0x00754953    8b400c
                         {disp8} mov       dword ptr [esp + 0x14], eax                   // 0x00754956    89442414
                         {disp8} mov       eax, dword ptr [esp + 0x1c]                   // 0x0075495a    8b44241c
                         push              eax                                           // 0x0075495e    50
                         add.s             ecx, esi                                      // 0x0075495f    03ce
                         {disp8} mov       dword ptr [esp + 0x14], edi                   // 0x00754961    897c2414
                         call              edx                                           // 0x00754965    ffd2
                         pop               edi                                           // 0x00754967    5f
                         pop               esi                                           // 0x00754968    5e
                         add               esp, 0x10                                     // 0x00754969    83c410
                         ret               0x0008                                        // 0x0075496c    c20800
_jmp_addr_0x0075496f:    pop               edi                                           // 0x0075496f    5f
                         xor.s             eax, eax                                      // 0x00754970    33c0
                         pop               esi                                           // 0x00754972    5e
                         add               esp, 0x10                                     // 0x00754973    83c410
                         ret               0x0008                                        // 0x00754976    c20800
                         nop                                                             // 0x00754979    90
                         nop                                                             // 0x0075497a    90
                         nop                                                             // 0x0075497b    90
                         nop                                                             // 0x0075497c    90
                         nop                                                             // 0x0075497d    90
                         nop                                                             // 0x0075497e    90
                         nop                                                             // 0x0075497f    90
?SaveStateFunction@Villager@@QAE_NAAVGameOSFile@@@Z:
                         push              ebx                                           // 0x00754980    53
                         push              esi                                           // 0x00754981    56
                         push              edi                                           // 0x00754982    57
                         {disp8} mov       edi, dword ptr [esp + 0x10]                   // 0x00754983    8b7c2410
                         push              0x0                                           // 0x00754987    6a00
                         mov.s             esi, ecx                                      // 0x00754989    8bf1
                         push              edi                                           // 0x0075498b    57
                         call              ?CallSaveStateFunction@Villager@@QAE_NAAVGameOSFile@@W4STATE_TYPE@@@Z                          // 0x0075498c    e80fffffff
                         push              0x1                                           // 0x00754991    6a01
                         push              edi                                           // 0x00754993    57
                         mov.s             ecx, esi                                      // 0x00754994    8bce
                         mov.s             ebx, eax                                      // 0x00754996    8bd8
                         call              ?CallSaveStateFunction@Villager@@QAE_NAAVGameOSFile@@W4STATE_TYPE@@@Z                          // 0x00754998    e803ffffff
                         or.s              eax, ebx                                      // 0x0075499d    0bc3
                         neg               eax                                           // 0x0075499f    f7d8
                         pop               edi                                           // 0x007549a1    5f
                         sbb.s             eax, eax                                      // 0x007549a2    1bc0
                         pop               esi                                           // 0x007549a4    5e
                         neg               eax                                           // 0x007549a5    f7d8
                         pop               ebx                                           // 0x007549a7    5b
                         ret               0x0004                                        // 0x007549a8    c20400
                         nop                                                             // 0x007549ab    90
                         nop                                                             // 0x007549ac    90
                         nop                                                             // 0x007549ad    90
                         nop                                                             // 0x007549ae    90
                         nop                                                             // 0x007549af    90
?LoadStateFunction@Villager@@QAE_NAAVGameOSFile@@@Z:
                         push              ebx                                           // 0x007549b0    53
                         push              esi                                           // 0x007549b1    56
                         push              edi                                           // 0x007549b2    57
                         {disp8} mov       edi, dword ptr [esp + 0x10]                   // 0x007549b3    8b7c2410
                         push              0x0                                           // 0x007549b7    6a00
                         mov.s             esi, ecx                                      // 0x007549b9    8bf1
                         push              edi                                           // 0x007549bb    57
                         call              ?CallLoadStateFunction@Villager@@QAE_NAAVGameOSFile@@W4STATE_TYPE@@@Z                          // 0x007549bc    e84fffffff
                         push              0x1                                           // 0x007549c1    6a01
                         push              edi                                           // 0x007549c3    57
                         mov.s             ecx, esi                                      // 0x007549c4    8bce
                         mov.s             ebx, eax                                      // 0x007549c6    8bd8
                         call              ?CallLoadStateFunction@Villager@@QAE_NAAVGameOSFile@@W4STATE_TYPE@@@Z                          // 0x007549c8    e843ffffff
                         or.s              eax, ebx                                      // 0x007549cd    0bc3
                         {disp8} jbe       _jmp_addr_0x007549dc                          // 0x007549cf    760b
                         pop               edi                                           // 0x007549d1    5f
                         pop               esi                                           // 0x007549d2    5e
                         mov               eax, 0x00000001                               // 0x007549d3    b801000000
                         pop               ebx                                           // 0x007549d8    5b
                         ret               0x0004                                        // 0x007549d9    c20400
_jmp_addr_0x007549dc:    push              0x00000cdd                                    // 0x007549dc    68dd0c0000
                         push              0x00c235dc                                    // 0x007549e1    68dc35c200
                         push              0x14                                          // 0x007549e6    6a14
                         call              ?GameRand@GRand@@SAHJ@Z                       // 0x007549e8    e8239bf8ff
                         add               esp, 0x0c                                     // 0x007549ed    83c40c
                         inc               eax                                           // 0x007549f0    40
                         pop               edi                                           // 0x007549f1    5f
                         {disp8} mov       word ptr [esi + 0x58], ax                     // 0x007549f2    66894658
                         pop               esi                                           // 0x007549f6    5e
                         xor.s             eax, eax                                      // 0x007549f7    33c0
                         pop               ebx                                           // 0x007549f9    5b
                         ret               0x0004                                        // 0x007549fa    c20400
                         nop                                                             // 0x007549fd    90
                         nop                                                             // 0x007549fe    90
                         nop                                                             // 0x007549ff    90
?SaveBuilding@Villager@@QAE_NAAVGameOSFile@@@Z:
                         push              esi                                           // 0x00754a00    56
                         {disp8} mov       esi, dword ptr [esp + 0x08]                   // 0x00754a01    8b742408
                         push              edi                                           // 0x00754a05    57
                         mov.s             edi, ecx                                      // 0x00754a06    8bf9
                         {disp32} mov      eax, dword ptr [edi + 0x000000fc]             // 0x00754a08    8b87fc000000
                         push              eax                                           // 0x00754a0e    50
                         mov.s             ecx, esi                                      // 0x00754a0f    8bce
                         call              ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x00754a11    e8fad3e0ff
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226990]        // 0x00754a16    a190c9be00
                         test              eax, eax                                      // 0x00754a1b    85c0
                         {disp8} je        _jmp_addr_0x00754a55                          // 0x00754a1d    7436
                         push              0x0                                           // 0x00754a1f    6a00
                         push              0x4                                           // 0x00754a21    6a04
                         add               edi, 0x00000118                               // 0x00754a23    81c718010000
                         push              edi                                           // 0x00754a29    57
                         mov.s             ecx, esi                                      // 0x00754a2a    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x00754a2c    e8ef7e0600
                         cmp               eax, 0x03                                     // 0x00754a31    83f803
                         {disp8} jne       _jmp_addr_0x00754a40                          // 0x00754a34    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000 // 0x00754a36    c70590c9be0000000000
_jmp_addr_0x00754a40:    {disp32} mov      eax, dword ptr [esi + 0x00000214]             // 0x00754a40    8b8614020000
                         xor.s             ecx, ecx                                      // 0x00754a46    33c9
                         mov               cl, byte ptr [edi]                            // 0x00754a48    8a0f
                         add               ecx, 0x4                                      // 0x00754a4a    83c104
                         add.s             eax, ecx                                      // 0x00754a4d    03c1
                         {disp32} mov      dword ptr [esi + 0x00000214], eax             // 0x00754a4f    898614020000
_jmp_addr_0x00754a55:    pop               edi                                           // 0x00754a55    5f
                         mov               eax, 0x00000001                               // 0x00754a56    b801000000
                         pop               esi                                           // 0x00754a5b    5e
                         ret               0x0004                                        // 0x00754a5c    c20400
                         nop                                                             // 0x00754a5f    90
?LoadBuilding@Villager@@QAE_NAAVGameOSFile@@@Z:
                         push              esi                                           // 0x00754a60    56
                         {disp8} mov       esi, dword ptr [esp + 0x08]                   // 0x00754a61    8b742408
                         push              edi                                           // 0x00754a65    57
                         mov.s             edi, ecx                                      // 0x00754a66    8bf9
                         {disp32} lea      eax, dword ptr [edi + 0x000000fc]             // 0x00754a68    8d87fc000000
                         push              eax                                           // 0x00754a6e    50
                         mov.s             ecx, esi                                      // 0x00754a6f    8bce
                         call              @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x00754a71    e80ad7e0ff
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226994]        // 0x00754a76    a194c9be00
                         add               edi, 0x00000118                               // 0x00754a7b    81c718010000
                         test              eax, eax                                      // 0x00754a81    85c0
                         {disp8} je        _jmp_addr_0x00754ab5                          // 0x00754a83    7430
                         push              0x0                                           // 0x00754a85    6a00
                         push              0x4                                           // 0x00754a87    6a04
                         push              edi                                           // 0x00754a89    57
                         mov.s             ecx, esi                                      // 0x00754a8a    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x00754a8c    e84f7e0600
                         cmp               eax, 0x03                                     // 0x00754a91    83f803
                         {disp8} jne       _jmp_addr_0x00754aa0                          // 0x00754a94    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000 // 0x00754a96    c70594c9be0000000000
_jmp_addr_0x00754aa0:    {disp32} mov      eax, dword ptr [esi + 0x00000214]             // 0x00754aa0    8b8614020000
                         xor.s             ecx, ecx                                      // 0x00754aa6    33c9
                         mov               cl, byte ptr [edi]                            // 0x00754aa8    8a0f
                         add               ecx, 0x4                                      // 0x00754aaa    83c104
                         add.s             eax, ecx                                      // 0x00754aad    03c1
                         {disp32} mov      dword ptr [esi + 0x00000214], eax             // 0x00754aaf    898614020000
_jmp_addr_0x00754ab5:    pop               edi                                           // 0x00754ab5    5f
                         mov               eax, 0x00000001                               // 0x00754ab6    b801000000
                         pop               esi                                           // 0x00754abb    5e
                         ret               0x0004                                        // 0x00754abc    c20400
                         nop                                                             // 0x00754abf    90
?SaveDance@Villager@@QAE_NAAVGameOSFile@@@Z:
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226990]        // 0x00754ac0    a190c9be00
                         test              eax, eax                                      // 0x00754ac5    85c0
                         push              ebx                                           // 0x00754ac7    53
                         push              esi                                           // 0x00754ac8    56
                         push              edi                                           // 0x00754ac9    57
                         mov.s             ebx, ecx                                      // 0x00754aca    8bd9
                         {disp8} je        _jmp_addr_0x00754b47                          // 0x00754acc    7479
                         {disp8} mov       esi, dword ptr [esp + 0x10]                   // 0x00754ace    8b742410
                         push              0x0                                           // 0x00754ad2    6a00
                         push              0x4                                           // 0x00754ad4    6a04
                         {disp32} lea      edi, dword ptr [ebx + 0x00000118]             // 0x00754ad6    8dbb18010000
                         push              edi                                           // 0x00754adc    57
                         mov.s             ecx, esi                                      // 0x00754add    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x00754adf    e83c7e0600
                         cmp               eax, 0x03                                     // 0x00754ae4    83f803
                         {disp8} jne       _jmp_addr_0x00754af3                          // 0x00754ae7    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000 // 0x00754ae9    c70590c9be0000000000
_jmp_addr_0x00754af3:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x00754af3    8b8e14020000
                         xor.s             eax, eax                                      // 0x00754af9    33c0
                         mov               al, byte ptr [edi]                            // 0x00754afb    8a07
                         add               eax, 0x04                                     // 0x00754afd    83c004
                         add.s             ecx, eax                                      // 0x00754b00    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x00754b02    898e14020000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226990]        // 0x00754b08    a190c9be00
                         test              eax, eax                                      // 0x00754b0d    85c0
                         {disp8} je        _jmp_addr_0x00754b47                          // 0x00754b0f    7436
                         push              0x0                                           // 0x00754b11    6a00
                         push              0x4                                           // 0x00754b13    6a04
                         {disp32} lea      edi, dword ptr [ebx + 0x0000011c]             // 0x00754b15    8dbb1c010000
                         push              edi                                           // 0x00754b1b    57
                         mov.s             ecx, esi                                      // 0x00754b1c    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x00754b1e    e8fd7d0600
                         cmp               eax, 0x03                                     // 0x00754b23    83f803
                         {disp8} jne       _jmp_addr_0x00754b32                          // 0x00754b26    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000 // 0x00754b28    c70590c9be0000000000
_jmp_addr_0x00754b32:    {disp32} mov      eax, dword ptr [esi + 0x00000214]             // 0x00754b32    8b8614020000
                         xor.s             ecx, ecx                                      // 0x00754b38    33c9
                         mov               cl, byte ptr [edi]                            // 0x00754b3a    8a0f
                         add               ecx, 0x4                                      // 0x00754b3c    83c104
                         add.s             eax, ecx                                      // 0x00754b3f    03c1
                         {disp32} mov      dword ptr [esi + 0x00000214], eax             // 0x00754b41    898614020000
_jmp_addr_0x00754b47:    pop               edi                                           // 0x00754b47    5f
                         pop               esi                                           // 0x00754b48    5e
                         mov               eax, 0x00000001                               // 0x00754b49    b801000000
                         pop               ebx                                           // 0x00754b4e    5b
                         ret               0x0004                                        // 0x00754b4f    c20400
                         nop                                                             // 0x00754b52    90
                         nop                                                             // 0x00754b53    90
                         nop                                                             // 0x00754b54    90
                         nop                                                             // 0x00754b55    90
                         nop                                                             // 0x00754b56    90
                         nop                                                             // 0x00754b57    90
                         nop                                                             // 0x00754b58    90
                         nop                                                             // 0x00754b59    90
                         nop                                                             // 0x00754b5a    90
                         nop                                                             // 0x00754b5b    90
                         nop                                                             // 0x00754b5c    90
                         nop                                                             // 0x00754b5d    90
                         nop                                                             // 0x00754b5e    90
                         nop                                                             // 0x00754b5f    90
?LoadDance@Villager@@QAE_NAAVGameOSFile@@@Z:
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226994]        // 0x00754b60    a194c9be00
                         test              eax, eax                                      // 0x00754b65    85c0
                         push              ebx                                           // 0x00754b67    53
                         push              esi                                           // 0x00754b68    56
                         {disp8} mov       esi, dword ptr [esp + 0x0c]                   // 0x00754b69    8b74240c
                         mov.s             ebx, ecx                                      // 0x00754b6d    8bd9
                         push              edi                                           // 0x00754b6f    57
                         {disp32} lea      edi, dword ptr [ebx + 0x00000118]             // 0x00754b70    8dbb18010000
                         {disp8} je        _jmp_addr_0x00754ba8                          // 0x00754b76    7430
                         push              0x0                                           // 0x00754b78    6a00
                         push              0x4                                           // 0x00754b7a    6a04
                         push              edi                                           // 0x00754b7c    57
                         mov.s             ecx, esi                                      // 0x00754b7d    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x00754b7f    e85c7d0600
                         cmp               eax, 0x03                                     // 0x00754b84    83f803
                         {disp8} jne       _jmp_addr_0x00754b93                          // 0x00754b87    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000 // 0x00754b89    c70594c9be0000000000
_jmp_addr_0x00754b93:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x00754b93    8b8e14020000
                         xor.s             eax, eax                                      // 0x00754b99    33c0
                         mov               al, byte ptr [edi]                            // 0x00754b9b    8a07
                         add               eax, 0x04                                     // 0x00754b9d    83c004
                         add.s             ecx, eax                                      // 0x00754ba0    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x00754ba2    898e14020000
_jmp_addr_0x00754ba8:    {disp32} mov      eax, dword ptr [data_bytes + 0x226994]        // 0x00754ba8    a194c9be00
                         test              eax, eax                                      // 0x00754bad    85c0
                         {disp32} lea      edi, dword ptr [ebx + 0x0000011c]             // 0x00754baf    8dbb1c010000
                         {disp8} je        _jmp_addr_0x00754be7                          // 0x00754bb5    7430
                         push              0x0                                           // 0x00754bb7    6a00
                         push              0x4                                           // 0x00754bb9    6a04
                         push              edi                                           // 0x00754bbb    57
                         mov.s             ecx, esi                                      // 0x00754bbc    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x00754bbe    e81d7d0600
                         cmp               eax, 0x03                                     // 0x00754bc3    83f803
                         {disp8} jne       _jmp_addr_0x00754bd2                          // 0x00754bc6    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000 // 0x00754bc8    c70594c9be0000000000
_jmp_addr_0x00754bd2:    {disp32} mov      eax, dword ptr [esi + 0x00000214]             // 0x00754bd2    8b8614020000
                         xor.s             ecx, ecx                                      // 0x00754bd8    33c9
                         mov               cl, byte ptr [edi]                            // 0x00754bda    8a0f
                         add               ecx, 0x4                                      // 0x00754bdc    83c104
                         add.s             eax, ecx                                      // 0x00754bdf    03c1
                         {disp32} mov      dword ptr [esi + 0x00000214], eax             // 0x00754be1    898614020000
_jmp_addr_0x00754be7:    pop               edi                                           // 0x00754be7    5f
                         pop               esi                                           // 0x00754be8    5e
                         mov               eax, 0x00000001                               // 0x00754be9    b801000000
                         pop               ebx                                           // 0x00754bee    5b
                         ret               0x0004                                        // 0x00754bef    c20400
                         nop                                                             // 0x00754bf2    90
                         nop                                                             // 0x00754bf3    90
                         nop                                                             // 0x00754bf4    90
                         nop                                                             // 0x00754bf5    90
                         nop                                                             // 0x00754bf6    90
                         nop                                                             // 0x00754bf7    90
                         nop                                                             // 0x00754bf8    90
                         nop                                                             // 0x00754bf9    90
                         nop                                                             // 0x00754bfa    90
                         nop                                                             // 0x00754bfb    90
                         nop                                                             // 0x00754bfc    90
                         nop                                                             // 0x00754bfd    90
                         nop                                                             // 0x00754bfe    90
                         nop                                                             // 0x00754bff    90
?SaveWorship@Villager@@QAE_NAAVGameOSFile@@@Z:
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226990]        // 0x00754c00    a190c9be00
                         test              eax, eax                                      // 0x00754c05    85c0
                         {disp8} je        _jmp_addr_0x00754c4f                          // 0x00754c07    7446
                         push              esi                                           // 0x00754c09    56
                         push              edi                                           // 0x00754c0a    57
                         {disp8} mov       edi, dword ptr [esp + 0x0c]                   // 0x00754c0b    8b7c240c
                         push              0x0                                           // 0x00754c0f    6a00
                         {disp32} lea      esi, dword ptr [ecx + 0x00000118]             // 0x00754c11    8db118010000
                         push              0x4                                           // 0x00754c17    6a04
                         push              esi                                           // 0x00754c19    56
                         mov.s             ecx, edi                                      // 0x00754c1a    8bcf
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x00754c1c    e8ff7c0600
                         cmp               eax, 0x03                                     // 0x00754c21    83f803
                         {disp8} jne       _jmp_addr_0x00754c30                          // 0x00754c24    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000 // 0x00754c26    c70590c9be0000000000
_jmp_addr_0x00754c30:    {disp32} mov      ecx, dword ptr [edi + 0x00000214]             // 0x00754c30    8b8f14020000
                         xor.s             eax, eax                                      // 0x00754c36    33c0
                         mov               al, byte ptr [esi]                            // 0x00754c38    8a06
                         add               eax, 0x04                                     // 0x00754c3a    83c004
                         add.s             ecx, eax                                      // 0x00754c3d    03c8
                         {disp32} mov      dword ptr [edi + 0x00000214], ecx             // 0x00754c3f    898f14020000
                         pop               edi                                           // 0x00754c45    5f
                         mov               eax, 0x00000001                               // 0x00754c46    b801000000
                         pop               esi                                           // 0x00754c4b    5e
                         ret               0x0004                                        // 0x00754c4c    c20400
_jmp_addr_0x00754c4f:    mov               eax, 0x00000001                               // 0x00754c4f    b801000000
                         ret               0x0004                                        // 0x00754c54    c20400
                         nop                                                             // 0x00754c57    90
                         nop                                                             // 0x00754c58    90
                         nop                                                             // 0x00754c59    90
                         nop                                                             // 0x00754c5a    90
                         nop                                                             // 0x00754c5b    90
                         nop                                                             // 0x00754c5c    90
                         nop                                                             // 0x00754c5d    90
                         nop                                                             // 0x00754c5e    90
                         nop                                                             // 0x00754c5f    90
?LoadWorship@Villager@@QAE_NAAVGameOSFile@@@Z:
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226994]        // 0x00754c60    a194c9be00
                         test              eax, eax                                      // 0x00754c65    85c0
                         push              edi                                           // 0x00754c67    57
                         {disp32} lea      edi, dword ptr [ecx + 0x00000118]             // 0x00754c68    8db918010000
                         {disp8} je        _jmp_addr_0x00754caf                          // 0x00754c6e    743f
                         push              esi                                           // 0x00754c70    56
                         {disp8} mov       esi, dword ptr [esp + 0x0c]                   // 0x00754c71    8b74240c
                         push              0x0                                           // 0x00754c75    6a00
                         push              0x4                                           // 0x00754c77    6a04
                         push              edi                                           // 0x00754c79    57
                         mov.s             ecx, esi                                      // 0x00754c7a    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x00754c7c    e85f7c0600
                         cmp               eax, 0x03                                     // 0x00754c81    83f803
                         {disp8} jne       _jmp_addr_0x00754c90                          // 0x00754c84    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000 // 0x00754c86    c70594c9be0000000000
_jmp_addr_0x00754c90:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x00754c90    8b8e14020000
                         xor.s             eax, eax                                      // 0x00754c96    33c0
                         mov               al, byte ptr [edi]                            // 0x00754c98    8a07
                         add               eax, 0x04                                     // 0x00754c9a    83c004
                         add.s             ecx, eax                                      // 0x00754c9d    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x00754c9f    898e14020000
                         pop               esi                                           // 0x00754ca5    5e
                         mov               eax, 0x00000001                               // 0x00754ca6    b801000000
                         pop               edi                                           // 0x00754cab    5f
                         ret               0x0004                                        // 0x00754cac    c20400
_jmp_addr_0x00754caf:    mov               eax, 0x00000001                               // 0x00754caf    b801000000
                         pop               edi                                           // 0x00754cb4    5f
                         ret               0x0004                                        // 0x00754cb5    c20400
                         nop                                                             // 0x00754cb8    90
                         nop                                                             // 0x00754cb9    90
                         nop                                                             // 0x00754cba    90
                         nop                                                             // 0x00754cbb    90
                         nop                                                             // 0x00754cbc    90
                         nop                                                             // 0x00754cbd    90
                         nop                                                             // 0x00754cbe    90
                         nop                                                             // 0x00754cbf    90
?SaveDead@Villager@@QAE_NAAVGameOSFile@@@Z:
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226990]        // 0x00754cc0    a190c9be00
                         test              eax, eax                                      // 0x00754cc5    85c0
                         {disp8} je        _jmp_addr_0x00754d0d                          // 0x00754cc7    7444
                         push              esi                                           // 0x00754cc9    56
                         push              edi                                           // 0x00754cca    57
                         {disp8} mov       edi, dword ptr [esp + 0x0c]                   // 0x00754ccb    8b7c240c
                         push              0x0                                           // 0x00754ccf    6a00
                         {disp32} lea      esi, dword ptr [ecx + 0x00000118]             // 0x00754cd1    8db118010000
                         push              0x1                                           // 0x00754cd7    6a01
                         push              esi                                           // 0x00754cd9    56
                         mov.s             ecx, edi                                      // 0x00754cda    8bcf
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x00754cdc    e83f7c0600
                         cmp               eax, 0x03                                     // 0x00754ce1    83f803
                         {disp8} jne       _jmp_addr_0x00754cf0                          // 0x00754ce4    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000 // 0x00754ce6    c70590c9be0000000000
_jmp_addr_0x00754cf0:    {disp32} mov      ecx, dword ptr [edi + 0x00000214]             // 0x00754cf0    8b8f14020000
                         xor.s             eax, eax                                      // 0x00754cf6    33c0
                         mov               al, byte ptr [esi]                            // 0x00754cf8    8a06
                         inc               eax                                           // 0x00754cfa    40
                         add.s             ecx, eax                                      // 0x00754cfb    03c8
                         {disp32} mov      dword ptr [edi + 0x00000214], ecx             // 0x00754cfd    898f14020000
                         pop               edi                                           // 0x00754d03    5f
                         mov               eax, 0x00000001                               // 0x00754d04    b801000000
                         pop               esi                                           // 0x00754d09    5e
                         ret               0x0004                                        // 0x00754d0a    c20400
_jmp_addr_0x00754d0d:    mov               eax, 0x00000001                               // 0x00754d0d    b801000000
                         ret               0x0004                                        // 0x00754d12    c20400
                         nop                                                             // 0x00754d15    90
                         nop                                                             // 0x00754d16    90
                         nop                                                             // 0x00754d17    90
                         nop                                                             // 0x00754d18    90
                         nop                                                             // 0x00754d19    90
                         nop                                                             // 0x00754d1a    90
                         nop                                                             // 0x00754d1b    90
                         nop                                                             // 0x00754d1c    90
                         nop                                                             // 0x00754d1d    90
                         nop                                                             // 0x00754d1e    90
                         nop                                                             // 0x00754d1f    90
?LoadDead@Villager@@QAE_NAAVGameOSFile@@@Z:
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226994]        // 0x00754d20    a194c9be00
                         test              eax, eax                                      // 0x00754d25    85c0
                         push              edi                                           // 0x00754d27    57
                         {disp32} lea      edi, dword ptr [ecx + 0x00000118]             // 0x00754d28    8db918010000
                         {disp8} je        _jmp_addr_0x00754d6d                          // 0x00754d2e    743d
                         push              esi                                           // 0x00754d30    56
                         {disp8} mov       esi, dword ptr [esp + 0x0c]                   // 0x00754d31    8b74240c
                         push              0x0                                           // 0x00754d35    6a00
                         push              0x1                                           // 0x00754d37    6a01
                         push              edi                                           // 0x00754d39    57
                         mov.s             ecx, esi                                      // 0x00754d3a    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x00754d3c    e89f7b0600
                         cmp               eax, 0x03                                     // 0x00754d41    83f803
                         {disp8} jne       _jmp_addr_0x00754d50                          // 0x00754d44    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000 // 0x00754d46    c70594c9be0000000000
_jmp_addr_0x00754d50:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x00754d50    8b8e14020000
                         xor.s             eax, eax                                      // 0x00754d56    33c0
                         mov               al, byte ptr [edi]                            // 0x00754d58    8a07
                         inc               eax                                           // 0x00754d5a    40
                         add.s             ecx, eax                                      // 0x00754d5b    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x00754d5d    898e14020000
                         pop               esi                                           // 0x00754d63    5e
                         mov               eax, 0x00000001                               // 0x00754d64    b801000000
                         pop               edi                                           // 0x00754d69    5f
                         ret               0x0004                                        // 0x00754d6a    c20400
_jmp_addr_0x00754d6d:    mov               eax, 0x00000001                               // 0x00754d6d    b801000000
                         pop               edi                                           // 0x00754d72    5f
                         ret               0x0004                                        // 0x00754d73    c20400
                         nop                                                             // 0x00754d76    90
                         nop                                                             // 0x00754d77    90
                         nop                                                             // 0x00754d78    90
                         nop                                                             // 0x00754d79    90
                         nop                                                             // 0x00754d7a    90
                         nop                                                             // 0x00754d7b    90
                         nop                                                             // 0x00754d7c    90
                         nop                                                             // 0x00754d7d    90
                         nop                                                             // 0x00754d7e    90
                         nop                                                             // 0x00754d7f    90
?SaveInHand@Villager@@QAE_NAAVGameOSFile@@@Z:
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226990]        // 0x00754d80    a190c9be00
                         test              eax, eax                                      // 0x00754d85    85c0
                         {disp8} je        _jmp_addr_0x00754dcf                          // 0x00754d87    7446
                         push              esi                                           // 0x00754d89    56
                         push              edi                                           // 0x00754d8a    57
                         {disp8} mov       edi, dword ptr [esp + 0x0c]                   // 0x00754d8b    8b7c240c
                         push              0x0                                           // 0x00754d8f    6a00
                         {disp32} lea      esi, dword ptr [ecx + 0x0000010c]             // 0x00754d91    8db10c010000
                         push              0x4                                           // 0x00754d97    6a04
                         push              esi                                           // 0x00754d99    56
                         mov.s             ecx, edi                                      // 0x00754d9a    8bcf
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x00754d9c    e87f7b0600
                         cmp               eax, 0x03                                     // 0x00754da1    83f803
                         {disp8} jne       _jmp_addr_0x00754db0                          // 0x00754da4    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000 // 0x00754da6    c70590c9be0000000000
_jmp_addr_0x00754db0:    {disp32} mov      ecx, dword ptr [edi + 0x00000214]             // 0x00754db0    8b8f14020000
                         xor.s             eax, eax                                      // 0x00754db6    33c0
                         mov               al, byte ptr [esi]                            // 0x00754db8    8a06
                         add               eax, 0x04                                     // 0x00754dba    83c004
                         add.s             ecx, eax                                      // 0x00754dbd    03c8
                         {disp32} mov      dword ptr [edi + 0x00000214], ecx             // 0x00754dbf    898f14020000
                         pop               edi                                           // 0x00754dc5    5f
                         mov               eax, 0x00000001                               // 0x00754dc6    b801000000
                         pop               esi                                           // 0x00754dcb    5e
                         ret               0x0004                                        // 0x00754dcc    c20400
_jmp_addr_0x00754dcf:    mov               eax, 0x00000001                               // 0x00754dcf    b801000000
                         ret               0x0004                                        // 0x00754dd4    c20400
                         nop                                                             // 0x00754dd7    90
                         nop                                                             // 0x00754dd8    90
                         nop                                                             // 0x00754dd9    90
                         nop                                                             // 0x00754dda    90
                         nop                                                             // 0x00754ddb    90
                         nop                                                             // 0x00754ddc    90
                         nop                                                             // 0x00754ddd    90
                         nop                                                             // 0x00754dde    90
                         nop                                                             // 0x00754ddf    90
?LoadInHand@Villager@@QAE_NAAVGameOSFile@@@Z:
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226994]        // 0x00754de0    a194c9be00
                         test              eax, eax                                      // 0x00754de5    85c0
                         push              edi                                           // 0x00754de7    57
                         {disp32} lea      edi, dword ptr [ecx + 0x0000010c]             // 0x00754de8    8db90c010000
                         {disp8} je        _jmp_addr_0x00754e2f                          // 0x00754dee    743f
                         push              esi                                           // 0x00754df0    56
                         {disp8} mov       esi, dword ptr [esp + 0x0c]                   // 0x00754df1    8b74240c
                         push              0x0                                           // 0x00754df5    6a00
                         push              0x4                                           // 0x00754df7    6a04
                         push              edi                                           // 0x00754df9    57
                         mov.s             ecx, esi                                      // 0x00754dfa    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x00754dfc    e8df7a0600
                         cmp               eax, 0x03                                     // 0x00754e01    83f803
                         {disp8} jne       _jmp_addr_0x00754e10                          // 0x00754e04    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000 // 0x00754e06    c70594c9be0000000000
_jmp_addr_0x00754e10:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x00754e10    8b8e14020000
                         xor.s             eax, eax                                      // 0x00754e16    33c0
                         mov               al, byte ptr [edi]                            // 0x00754e18    8a07
                         add               eax, 0x04                                     // 0x00754e1a    83c004
                         add.s             ecx, eax                                      // 0x00754e1d    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x00754e1f    898e14020000
                         pop               esi                                           // 0x00754e25    5e
                         mov               eax, 0x00000001                               // 0x00754e26    b801000000
                         pop               edi                                           // 0x00754e2b    5f
                         ret               0x0004                                        // 0x00754e2c    c20400
_jmp_addr_0x00754e2f:    mov               eax, 0x00000001                               // 0x00754e2f    b801000000
                         pop               edi                                           // 0x00754e34    5f
                         ret               0x0004                                        // 0x00754e35    c20400
                         nop                                                             // 0x00754e38    90
                         nop                                                             // 0x00754e39    90
                         nop                                                             // 0x00754e3a    90
                         nop                                                             // 0x00754e3b    90
                         nop                                                             // 0x00754e3c    90
                         nop                                                             // 0x00754e3d    90
                         nop                                                             // 0x00754e3e    90
                         nop                                                             // 0x00754e3f    90
?SaveFishing@Villager@@QAE_NAAVGameOSFile@@@Z:
                         {disp32} mov      eax, dword ptr [ecx + 0x00000118]             // 0x00754e40    8b8118010000
                         {disp8} mov       ecx, dword ptr [esp + 0x04]                   // 0x00754e46    8b4c2404
                         push              eax                                           // 0x00754e4a    50
                         call              ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x00754e4b    e8c0cfe0ff
                         mov               eax, 0x00000001                               // 0x00754e50    b801000000
                         ret               0x0004                                        // 0x00754e55    c20400
                         nop                                                             // 0x00754e58    90
                         nop                                                             // 0x00754e59    90
                         nop                                                             // 0x00754e5a    90
                         nop                                                             // 0x00754e5b    90
                         nop                                                             // 0x00754e5c    90
                         nop                                                             // 0x00754e5d    90
                         nop                                                             // 0x00754e5e    90
                         nop                                                             // 0x00754e5f    90
?LoadFishing@Villager@@QAE_NAAVGameOSFile@@@Z:
                         add               ecx, 0x00000118                               // 0x00754e60    81c118010000
                         push              ecx                                           // 0x00754e66    51
                         {disp8} mov       ecx, dword ptr [esp + 0x08]                   // 0x00754e67    8b4c2408
                         call              @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x00754e6b    e810d3e0ff
                         mov               eax, 0x00000001                               // 0x00754e70    b801000000
                         ret               0x0004                                        // 0x00754e75    c20400
                         nop                                                             // 0x00754e78    90
                         nop                                                             // 0x00754e79    90
                         nop                                                             // 0x00754e7a    90
                         nop                                                             // 0x00754e7b    90
                         nop                                                             // 0x00754e7c    90
                         nop                                                             // 0x00754e7d    90
                         nop                                                             // 0x00754e7e    90
                         nop                                                             // 0x00754e7f    90
?SaveFarming@Villager@@QAE_NAAVGameOSFile@@@Z:
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226990]        // 0x00754e80    a190c9be00
                         test              eax, eax                                      // 0x00754e85    85c0
                         push              ebx                                           // 0x00754e87    53
                         push              edi                                           // 0x00754e88    57
                         {disp8} mov       edi, dword ptr [esp + 0x0c]                   // 0x00754e89    8b7c240c
                         mov.s             ebx, ecx                                      // 0x00754e8d    8bd9
                         {disp8} je        _jmp_addr_0x00754ec9                          // 0x00754e8f    7438
                         push              esi                                           // 0x00754e91    56
                         push              0x0                                           // 0x00754e92    6a00
                         push              0xc                                           // 0x00754e94    6a0c
                         {disp32} lea      esi, dword ptr [ebx + 0x0000011c]             // 0x00754e96    8db31c010000
                         push              esi                                           // 0x00754e9c    56
                         mov.s             ecx, edi                                      // 0x00754e9d    8bcf
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x00754e9f    e87c7a0600
                         cmp               eax, 0x03                                     // 0x00754ea4    83f803
                         {disp8} jne       _jmp_addr_0x00754eb3                          // 0x00754ea7    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000 // 0x00754ea9    c70590c9be0000000000
_jmp_addr_0x00754eb3:    {disp32} mov      ecx, dword ptr [edi + 0x00000214]             // 0x00754eb3    8b8f14020000
                         xor.s             eax, eax                                      // 0x00754eb9    33c0
                         mov               al, byte ptr [esi]                            // 0x00754ebb    8a06
                         pop               esi                                           // 0x00754ebd    5e
                         add               eax, 0x0c                                     // 0x00754ebe    83c00c
                         add.s             ecx, eax                                      // 0x00754ec1    03c8
                         {disp32} mov      dword ptr [edi + 0x00000214], ecx             // 0x00754ec3    898f14020000
_jmp_addr_0x00754ec9:    {disp32} mov      ecx, dword ptr [ebx + 0x00000118]             // 0x00754ec9    8b8b18010000
                         push              ecx                                           // 0x00754ecf    51
                         mov.s             ecx, edi                                      // 0x00754ed0    8bcf
                         call              ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x00754ed2    e839cfe0ff
                         pop               edi                                           // 0x00754ed7    5f
                         mov               eax, 0x00000001                               // 0x00754ed8    b801000000
                         pop               ebx                                           // 0x00754edd    5b
                         ret               0x0004                                        // 0x00754ede    c20400
                         nop                                                             // 0x00754ee1    90
                         nop                                                             // 0x00754ee2    90
                         nop                                                             // 0x00754ee3    90
                         nop                                                             // 0x00754ee4    90
                         nop                                                             // 0x00754ee5    90
                         nop                                                             // 0x00754ee6    90
                         nop                                                             // 0x00754ee7    90
                         nop                                                             // 0x00754ee8    90
                         nop                                                             // 0x00754ee9    90
                         nop                                                             // 0x00754eea    90
                         nop                                                             // 0x00754eeb    90
                         nop                                                             // 0x00754eec    90
                         nop                                                             // 0x00754eed    90
                         nop                                                             // 0x00754eee    90
                         nop                                                             // 0x00754eef    90
?LoadFarming@Villager@@QAE_NAAVGameOSFile@@@Z:
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226994]        // 0x00754ef0    a194c9be00
                         test              eax, eax                                      // 0x00754ef5    85c0
                         push              ebx                                           // 0x00754ef7    53
                         push              esi                                           // 0x00754ef8    56
                         {disp8} mov       esi, dword ptr [esp + 0x0c]                   // 0x00754ef9    8b74240c
                         mov.s             ebx, ecx                                      // 0x00754efd    8bd9
                         push              edi                                           // 0x00754eff    57
                         {disp32} lea      edi, dword ptr [ebx + 0x0000011c]             // 0x00754f00    8dbb1c010000
                         {disp8} je        _jmp_addr_0x00754f38                          // 0x00754f06    7430
                         push              0x0                                           // 0x00754f08    6a00
                         push              0xc                                           // 0x00754f0a    6a0c
                         push              edi                                           // 0x00754f0c    57
                         mov.s             ecx, esi                                      // 0x00754f0d    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x00754f0f    e8cc790600
                         cmp               eax, 0x03                                     // 0x00754f14    83f803
                         {disp8} jne       _jmp_addr_0x00754f23                          // 0x00754f17    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000 // 0x00754f19    c70594c9be0000000000
_jmp_addr_0x00754f23:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x00754f23    8b8e14020000
                         xor.s             eax, eax                                      // 0x00754f29    33c0
                         mov               al, byte ptr [edi]                            // 0x00754f2b    8a07
                         add               eax, 0x0c                                     // 0x00754f2d    83c00c
                         add.s             ecx, eax                                      // 0x00754f30    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x00754f32    898e14020000
_jmp_addr_0x00754f38:    add               ebx, 0x00000118                               // 0x00754f38    81c318010000
                         push              ebx                                           // 0x00754f3e    53
                         mov.s             ecx, esi                                      // 0x00754f3f    8bce
                         call              @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x00754f41    e83ad2e0ff
                         pop               edi                                           // 0x00754f46    5f
                         pop               esi                                           // 0x00754f47    5e
                         mov               eax, 0x00000001                               // 0x00754f48    b801000000
                         pop               ebx                                           // 0x00754f4d    5b
                         ret               0x0004                                        // 0x00754f4e    c20400
                         nop                                                             // 0x00754f51    90
                         nop                                                             // 0x00754f52    90
                         nop                                                             // 0x00754f53    90
                         nop                                                             // 0x00754f54    90
                         nop                                                             // 0x00754f55    90
                         nop                                                             // 0x00754f56    90
                         nop                                                             // 0x00754f57    90
                         nop                                                             // 0x00754f58    90
                         nop                                                             // 0x00754f59    90
                         nop                                                             // 0x00754f5a    90
                         nop                                                             // 0x00754f5b    90
                         nop                                                             // 0x00754f5c    90
                         nop                                                             // 0x00754f5d    90
                         nop                                                             // 0x00754f5e    90
                         nop                                                             // 0x00754f5f    90
?SaveFootball@Villager@@QAE_NAAVGameOSFile@@@Z:
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226990]        // 0x00754f60    a190c9be00
                         test              eax, eax                                      // 0x00754f65    85c0
                         push              ebx                                           // 0x00754f67    53
                         push              esi                                           // 0x00754f68    56
                         {disp8} mov       esi, dword ptr [esp + 0x0c]                   // 0x00754f69    8b74240c
                         push              edi                                           // 0x00754f6d    57
                         mov.s             edi, ecx                                      // 0x00754f6e    8bf9
                         {disp32} je       _jmp_addr_0x00755024                          // 0x00754f70    0f84ae000000
                         push              0x0                                           // 0x00754f76    6a00
                         push              0x1                                           // 0x00754f78    6a01
                         {disp32} lea      ebx, dword ptr [edi + 0x00000118]             // 0x00754f7a    8d9f18010000
                         push              ebx                                           // 0x00754f80    53
                         mov.s             ecx, esi                                      // 0x00754f81    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x00754f83    e898790600
                         cmp               eax, 0x03                                     // 0x00754f88    83f803
                         {disp8} jne       _jmp_addr_0x00754f97                          // 0x00754f8b    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000 // 0x00754f8d    c70590c9be0000000000
_jmp_addr_0x00754f97:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x00754f97    8b8e14020000
                         xor.s             eax, eax                                      // 0x00754f9d    33c0
                         mov               al, byte ptr [ebx]                            // 0x00754f9f    8a03
                         inc               eax                                           // 0x00754fa1    40
                         add.s             ecx, eax                                      // 0x00754fa2    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x00754fa4    898e14020000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226990]        // 0x00754faa    a190c9be00
                         test              eax, eax                                      // 0x00754faf    85c0
                         {disp8} je        _jmp_addr_0x00755024                          // 0x00754fb1    7471
                         push              0x0                                           // 0x00754fb3    6a00
                         push              0x1                                           // 0x00754fb5    6a01
                         {disp32} lea      ebx, dword ptr [edi + 0x00000119]             // 0x00754fb7    8d9f19010000
                         push              ebx                                           // 0x00754fbd    53
                         mov.s             ecx, esi                                      // 0x00754fbe    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x00754fc0    e85b790600
                         cmp               eax, 0x03                                     // 0x00754fc5    83f803
                         {disp8} jne       _jmp_addr_0x00754fd4                          // 0x00754fc8    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000 // 0x00754fca    c70590c9be0000000000
_jmp_addr_0x00754fd4:    {disp32} mov      edx, dword ptr [esi + 0x00000214]             // 0x00754fd4    8b9614020000
                         xor.s             ecx, ecx                                      // 0x00754fda    33c9
                         mov               cl, byte ptr [ebx]                            // 0x00754fdc    8a0b
                         inc               ecx                                           // 0x00754fde    41
                         add.s             edx, ecx                                      // 0x00754fdf    03d1
                         {disp32} mov      dword ptr [esi + 0x00000214], edx             // 0x00754fe1    899614020000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226990]        // 0x00754fe7    a190c9be00
                         test              eax, eax                                      // 0x00754fec    85c0
                         {disp8} je        _jmp_addr_0x00755024                          // 0x00754fee    7434
                         push              0x0                                           // 0x00754ff0    6a00
                         push              0x1                                           // 0x00754ff2    6a01
                         {disp32} lea      ebx, dword ptr [edi + 0x0000011a]             // 0x00754ff4    8d9f1a010000
                         push              ebx                                           // 0x00754ffa    53
                         mov.s             ecx, esi                                      // 0x00754ffb    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x00754ffd    e81e790600
                         cmp               eax, 0x03                                     // 0x00755002    83f803
                         {disp8} jne       _jmp_addr_0x00755011                          // 0x00755005    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000 // 0x00755007    c70590c9be0000000000
_jmp_addr_0x00755011:    {disp32} mov      eax, dword ptr [esi + 0x00000214]             // 0x00755011    8b8614020000
                         xor.s             edx, edx                                      // 0x00755017    33d2
                         mov               dl, byte ptr [ebx]                            // 0x00755019    8a13
                         inc               edx                                           // 0x0075501b    42
                         add.s             eax, edx                                      // 0x0075501c    03c2
                         {disp32} mov      dword ptr [esi + 0x00000214], eax             // 0x0075501e    898614020000
_jmp_addr_0x00755024:    {disp32} mov      eax, dword ptr [edi + 0x0000011c]             // 0x00755024    8b871c010000
                         push              eax                                           // 0x0075502a    50
                         mov.s             ecx, esi                                      // 0x0075502b    8bce
                         call              ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x0075502d    e8decde0ff
                         pop               edi                                           // 0x00755032    5f
                         pop               esi                                           // 0x00755033    5e
                         mov               eax, 0x00000001                               // 0x00755034    b801000000
                         pop               ebx                                           // 0x00755039    5b
                         ret               0x0004                                        // 0x0075503a    c20400
                         nop                                                             // 0x0075503d    90
                         nop                                                             // 0x0075503e    90
                         nop                                                             // 0x0075503f    90
?LoadFootball@Villager@@QAE_NAAVGameOSFile@@@Z:
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226994]        // 0x00755040    a194c9be00
                         test              eax, eax                                      // 0x00755045    85c0
                         push              ebx                                           // 0x00755047    53
                         push              esi                                           // 0x00755048    56
                         {disp8} mov       esi, dword ptr [esp + 0x0c]                   // 0x00755049    8b74240c
                         mov.s             ebx, ecx                                      // 0x0075504d    8bd9
                         push              edi                                           // 0x0075504f    57
                         {disp32} lea      edi, dword ptr [ebx + 0x00000118]             // 0x00755050    8dbb18010000
                         {disp8} je        _jmp_addr_0x00755086                          // 0x00755056    742e
                         push              0x0                                           // 0x00755058    6a00
                         push              0x1                                           // 0x0075505a    6a01
                         push              edi                                           // 0x0075505c    57
                         mov.s             ecx, esi                                      // 0x0075505d    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x0075505f    e87c780600
                         cmp               eax, 0x03                                     // 0x00755064    83f803
                         {disp8} jne       _jmp_addr_0x00755073                          // 0x00755067    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000 // 0x00755069    c70594c9be0000000000
_jmp_addr_0x00755073:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x00755073    8b8e14020000
                         xor.s             eax, eax                                      // 0x00755079    33c0
                         mov               al, byte ptr [edi]                            // 0x0075507b    8a07
                         inc               eax                                           // 0x0075507d    40
                         add.s             ecx, eax                                      // 0x0075507e    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x00755080    898e14020000
_jmp_addr_0x00755086:    {disp32} mov      eax, dword ptr [data_bytes + 0x226994]        // 0x00755086    a194c9be00
                         test              eax, eax                                      // 0x0075508b    85c0
                         {disp32} lea      edi, dword ptr [ebx + 0x00000119]             // 0x0075508d    8dbb19010000
                         {disp8} je        _jmp_addr_0x007550c3                          // 0x00755093    742e
                         push              0x0                                           // 0x00755095    6a00
                         push              0x1                                           // 0x00755097    6a01
                         push              edi                                           // 0x00755099    57
                         mov.s             ecx, esi                                      // 0x0075509a    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x0075509c    e83f780600
                         cmp               eax, 0x03                                     // 0x007550a1    83f803
                         {disp8} jne       _jmp_addr_0x007550b0                          // 0x007550a4    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000 // 0x007550a6    c70594c9be0000000000
_jmp_addr_0x007550b0:    {disp32} mov      eax, dword ptr [esi + 0x00000214]             // 0x007550b0    8b8614020000
                         xor.s             ecx, ecx                                      // 0x007550b6    33c9
                         mov               cl, byte ptr [edi]                            // 0x007550b8    8a0f
                         inc               ecx                                           // 0x007550ba    41
                         add.s             eax, ecx                                      // 0x007550bb    03c1
                         {disp32} mov      dword ptr [esi + 0x00000214], eax             // 0x007550bd    898614020000
_jmp_addr_0x007550c3:    {disp32} mov      eax, dword ptr [data_bytes + 0x226994]        // 0x007550c3    a194c9be00
                         test              eax, eax                                      // 0x007550c8    85c0
                         {disp32} lea      edi, dword ptr [ebx + 0x0000011a]             // 0x007550ca    8dbb1a010000
                         {disp8} je        _jmp_addr_0x00755100                          // 0x007550d0    742e
                         push              0x0                                           // 0x007550d2    6a00
                         push              0x1                                           // 0x007550d4    6a01
                         push              edi                                           // 0x007550d6    57
                         mov.s             ecx, esi                                      // 0x007550d7    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x007550d9    e802780600
                         cmp               eax, 0x03                                     // 0x007550de    83f803
                         {disp8} jne       _jmp_addr_0x007550ed                          // 0x007550e1    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000 // 0x007550e3    c70594c9be0000000000
_jmp_addr_0x007550ed:    {disp32} mov      eax, dword ptr [esi + 0x00000214]             // 0x007550ed    8b8614020000
                         xor.s             edx, edx                                      // 0x007550f3    33d2
                         mov               dl, byte ptr [edi]                            // 0x007550f5    8a17
                         inc               edx                                           // 0x007550f7    42
                         add.s             eax, edx                                      // 0x007550f8    03c2
                         {disp32} mov      dword ptr [esi + 0x00000214], eax             // 0x007550fa    898614020000
_jmp_addr_0x00755100:    add               ebx, 0x0000011c                               // 0x00755100    81c31c010000
                         push              ebx                                           // 0x00755106    53
                         mov.s             ecx, esi                                      // 0x00755107    8bce
                         call              @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x00755109    e872d0e0ff
                         pop               edi                                           // 0x0075510e    5f
                         pop               esi                                           // 0x0075510f    5e
                         mov               eax, 0x00000001                               // 0x00755110    b801000000
                         pop               ebx                                           // 0x00755115    5b
                         ret               0x0004                                        // 0x00755116    c20400
                         nop                                                             // 0x00755119    90
                         nop                                                             // 0x0075511a    90
                         nop                                                             // 0x0075511b    90
                         nop                                                             // 0x0075511c    90
                         nop                                                             // 0x0075511d    90
                         nop                                                             // 0x0075511e    90
                         nop                                                             // 0x0075511f    90
?SaveShepherd@Villager@@QAE_NAAVGameOSFile@@@Z:
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226990]        // 0x00755120    a190c9be00
                         test              eax, eax                                      // 0x00755125    85c0
                         push              ebx                                           // 0x00755127    53
                         push              esi                                           // 0x00755128    56
                         push              edi                                           // 0x00755129    57
                         mov.s             ebx, ecx                                      // 0x0075512a    8bd9
                         {disp8} je        _jmp_addr_0x007551a7                          // 0x0075512c    7479
                         {disp8} mov       esi, dword ptr [esp + 0x10]                   // 0x0075512e    8b742410
                         push              0x0                                           // 0x00755132    6a00
                         push              0x2                                           // 0x00755134    6a02
                         {disp32} lea      edi, dword ptr [ebx + 0x00000118]             // 0x00755136    8dbb18010000
                         push              edi                                           // 0x0075513c    57
                         mov.s             ecx, esi                                      // 0x0075513d    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x0075513f    e8dc770600
                         cmp               eax, 0x03                                     // 0x00755144    83f803
                         {disp8} jne       _jmp_addr_0x00755153                          // 0x00755147    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000 // 0x00755149    c70590c9be0000000000
_jmp_addr_0x00755153:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x00755153    8b8e14020000
                         xor.s             eax, eax                                      // 0x00755159    33c0
                         mov               al, byte ptr [edi]                            // 0x0075515b    8a07
                         add               eax, 0x02                                     // 0x0075515d    83c002
                         add.s             ecx, eax                                      // 0x00755160    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x00755162    898e14020000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226990]        // 0x00755168    a190c9be00
                         test              eax, eax                                      // 0x0075516d    85c0
                         {disp8} je        _jmp_addr_0x007551a7                          // 0x0075516f    7436
                         push              0x0                                           // 0x00755171    6a00
                         push              0x2                                           // 0x00755173    6a02
                         {disp32} lea      edi, dword ptr [ebx + 0x0000011a]             // 0x00755175    8dbb1a010000
                         push              edi                                           // 0x0075517b    57
                         mov.s             ecx, esi                                      // 0x0075517c    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x0075517e    e89d770600
                         cmp               eax, 0x03                                     // 0x00755183    83f803
                         {disp8} jne       _jmp_addr_0x00755192                          // 0x00755186    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000 // 0x00755188    c70590c9be0000000000
_jmp_addr_0x00755192:    {disp32} mov      eax, dword ptr [esi + 0x00000214]             // 0x00755192    8b8614020000
                         xor.s             ecx, ecx                                      // 0x00755198    33c9
                         mov               cl, byte ptr [edi]                            // 0x0075519a    8a0f
                         add               ecx, 0x2                                      // 0x0075519c    83c102
                         add.s             eax, ecx                                      // 0x0075519f    03c1
                         {disp32} mov      dword ptr [esi + 0x00000214], eax             // 0x007551a1    898614020000
_jmp_addr_0x007551a7:    pop               edi                                           // 0x007551a7    5f
                         pop               esi                                           // 0x007551a8    5e
                         mov               eax, 0x00000001                               // 0x007551a9    b801000000
                         pop               ebx                                           // 0x007551ae    5b
                         ret               0x0004                                        // 0x007551af    c20400
                         nop                                                             // 0x007551b2    90
                         nop                                                             // 0x007551b3    90
                         nop                                                             // 0x007551b4    90
                         nop                                                             // 0x007551b5    90
                         nop                                                             // 0x007551b6    90
                         nop                                                             // 0x007551b7    90
                         nop                                                             // 0x007551b8    90
                         nop                                                             // 0x007551b9    90
                         nop                                                             // 0x007551ba    90
                         nop                                                             // 0x007551bb    90
                         nop                                                             // 0x007551bc    90
                         nop                                                             // 0x007551bd    90
                         nop                                                             // 0x007551be    90
                         nop                                                             // 0x007551bf    90
?LoadShepherd@Villager@@QAE_NAAVGameOSFile@@@Z:
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226994]        // 0x007551c0    a194c9be00
                         test              eax, eax                                      // 0x007551c5    85c0
                         push              ebx                                           // 0x007551c7    53
                         push              esi                                           // 0x007551c8    56
                         {disp8} mov       esi, dword ptr [esp + 0x0c]                   // 0x007551c9    8b74240c
                         mov.s             ebx, ecx                                      // 0x007551cd    8bd9
                         push              edi                                           // 0x007551cf    57
                         {disp32} lea      edi, dword ptr [ebx + 0x00000118]             // 0x007551d0    8dbb18010000
                         {disp8} je        _jmp_addr_0x00755208                          // 0x007551d6    7430
                         push              0x0                                           // 0x007551d8    6a00
                         push              0x2                                           // 0x007551da    6a02
                         push              edi                                           // 0x007551dc    57
                         mov.s             ecx, esi                                      // 0x007551dd    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x007551df    e8fc760600
                         cmp               eax, 0x03                                     // 0x007551e4    83f803
                         {disp8} jne       _jmp_addr_0x007551f3                          // 0x007551e7    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000 // 0x007551e9    c70594c9be0000000000
_jmp_addr_0x007551f3:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x007551f3    8b8e14020000
                         xor.s             eax, eax                                      // 0x007551f9    33c0
                         mov               al, byte ptr [edi]                            // 0x007551fb    8a07
                         add               eax, 0x02                                     // 0x007551fd    83c002
                         add.s             ecx, eax                                      // 0x00755200    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x00755202    898e14020000
_jmp_addr_0x00755208:    {disp32} mov      eax, dword ptr [data_bytes + 0x226994]        // 0x00755208    a194c9be00
                         test              eax, eax                                      // 0x0075520d    85c0
                         {disp32} lea      edi, dword ptr [ebx + 0x0000011a]             // 0x0075520f    8dbb1a010000
                         {disp8} je        _jmp_addr_0x00755247                          // 0x00755215    7430
                         push              0x0                                           // 0x00755217    6a00
                         push              0x2                                           // 0x00755219    6a02
                         push              edi                                           // 0x0075521b    57
                         mov.s             ecx, esi                                      // 0x0075521c    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x0075521e    e8bd760600
                         cmp               eax, 0x03                                     // 0x00755223    83f803
                         {disp8} jne       _jmp_addr_0x00755232                          // 0x00755226    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000 // 0x00755228    c70594c9be0000000000
_jmp_addr_0x00755232:    {disp32} mov      eax, dword ptr [esi + 0x00000214]             // 0x00755232    8b8614020000
                         xor.s             ecx, ecx                                      // 0x00755238    33c9
                         mov               cl, byte ptr [edi]                            // 0x0075523a    8a0f
                         add               ecx, 0x2                                      // 0x0075523c    83c102
                         add.s             eax, ecx                                      // 0x0075523f    03c1
                         {disp32} mov      dword ptr [esi + 0x00000214], eax             // 0x00755241    898614020000
_jmp_addr_0x00755247:    pop               edi                                           // 0x00755247    5f
                         pop               esi                                           // 0x00755248    5e
                         mov               eax, 0x00000001                               // 0x00755249    b801000000
                         pop               ebx                                           // 0x0075524e    5b
                         ret               0x0004                                        // 0x0075524f    c20400
                         nop                                                             // 0x00755252    90
                         nop                                                             // 0x00755253    90
                         nop                                                             // 0x00755254    90
                         nop                                                             // 0x00755255    90
                         nop                                                             // 0x00755256    90
                         nop                                                             // 0x00755257    90
                         nop                                                             // 0x00755258    90
                         nop                                                             // 0x00755259    90
                         nop                                                             // 0x0075525a    90
                         nop                                                             // 0x0075525b    90
                         nop                                                             // 0x0075525c    90
                         nop                                                             // 0x0075525d    90
                         nop                                                             // 0x0075525e    90
                         nop                                                             // 0x0075525f    90
?SaveInScript@Villager@@QAE_NAAVGameOSFile@@@Z:
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226990]        // 0x00755260    a190c9be00
                         push              ebx                                           // 0x00755265    53
                         push              ebp                                           // 0x00755266    55
                         push              esi                                           // 0x00755267    56
                         xor.s             ebp, ebp                                      // 0x00755268    33ed
                         cmp.s             eax, ebp                                      // 0x0075526a    3bc5
                         push              edi                                           // 0x0075526c    57
                         mov.s             edi, ecx                                      // 0x0075526d    8bf9
                         {disp32} je       _jmp_addr_0x00755359                          // 0x0075526f    0f84e4000000
                         {disp8} mov       esi, dword ptr [esp + 0x14]                   // 0x00755275    8b742414
                         push              ebp                                           // 0x00755279    55
                         push              0x8                                           // 0x0075527a    6a08
                         {disp32} lea      ebx, dword ptr [edi + 0x0000010c]             // 0x0075527c    8d9f0c010000
                         push              ebx                                           // 0x00755282    53
                         mov.s             ecx, esi                                      // 0x00755283    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x00755285    e896760600
                         cmp               eax, 0x03                                     // 0x0075528a    83f803
                         {disp8} jne       _jmp_addr_0x00755295                          // 0x0075528d    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226990], ebp        // 0x0075528f    892d90c9be00
_jmp_addr_0x00755295:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x00755295    8b8e14020000
                         xor.s             eax, eax                                      // 0x0075529b    33c0
                         mov               al, byte ptr [ebx]                            // 0x0075529d    8a03
                         add               eax, 0x08                                     // 0x0075529f    83c008
                         add.s             ecx, eax                                      // 0x007552a2    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x007552a4    898e14020000
                         cmp               dword ptr [data_bytes + 0x226990], ebp        // 0x007552aa    392d90c9be00
                         {disp32} je       _jmp_addr_0x00755359                          // 0x007552b0    0f84a3000000
                         push              ebp                                           // 0x007552b6    55
                         push              0x4                                           // 0x007552b7    6a04
                         {disp32} lea      ebx, dword ptr [edi + 0x00000118]             // 0x007552b9    8d9f18010000
                         push              ebx                                           // 0x007552bf    53
                         mov.s             ecx, esi                                      // 0x007552c0    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x007552c2    e859760600
                         cmp               eax, 0x03                                     // 0x007552c7    83f803
                         {disp8} jne       _jmp_addr_0x007552d2                          // 0x007552ca    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226990], ebp        // 0x007552cc    892d90c9be00
_jmp_addr_0x007552d2:    {disp32} mov      edx, dword ptr [esi + 0x00000214]             // 0x007552d2    8b9614020000
                         xor.s             ecx, ecx                                      // 0x007552d8    33c9
                         mov               cl, byte ptr [ebx]                            // 0x007552da    8a0b
                         add               ecx, 0x4                                      // 0x007552dc    83c104
                         add.s             edx, ecx                                      // 0x007552df    03d1
                         {disp32} mov      dword ptr [esi + 0x00000214], edx             // 0x007552e1    899614020000
                         cmp               dword ptr [data_bytes + 0x226990], ebp        // 0x007552e7    392d90c9be00
                         {disp8} je        _jmp_addr_0x00755359                          // 0x007552ed    746a
                         push              ebp                                           // 0x007552ef    55
                         push              0x4                                           // 0x007552f0    6a04
                         {disp32} lea      ebx, dword ptr [edi + 0x0000011c]             // 0x007552f2    8d9f1c010000
                         push              ebx                                           // 0x007552f8    53
                         mov.s             ecx, esi                                      // 0x007552f9    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x007552fb    e820760600
                         cmp               eax, 0x03                                     // 0x00755300    83f803
                         {disp8} jne       _jmp_addr_0x0075530b                          // 0x00755303    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226990], ebp        // 0x00755305    892d90c9be00
_jmp_addr_0x0075530b:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x0075530b    8b8e14020000
                         xor.s             edx, edx                                      // 0x00755311    33d2
                         mov               dl, byte ptr [ebx]                            // 0x00755313    8a13
                         add               edx, 0x04                                     // 0x00755315    83c204
                         add.s             ecx, edx                                      // 0x00755318    03ca
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x0075531a    898e14020000
                         cmp               dword ptr [data_bytes + 0x226990], ebp        // 0x00755320    392d90c9be00
                         {disp8} je        _jmp_addr_0x00755359                          // 0x00755326    7431
                         push              ebp                                           // 0x00755328    55
                         push              0x4                                           // 0x00755329    6a04
                         add               edi, 0x00000120                               // 0x0075532b    81c720010000
                         push              edi                                           // 0x00755331    57
                         mov.s             ecx, esi                                      // 0x00755332    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x00755334    e8e7750600
                         cmp               eax, 0x03                                     // 0x00755339    83f803
                         {disp8} jne       _jmp_addr_0x00755344                          // 0x0075533c    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226990], ebp        // 0x0075533e    892d90c9be00
_jmp_addr_0x00755344:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x00755344    8b8e14020000
                         xor.s             eax, eax                                      // 0x0075534a    33c0
                         mov               al, byte ptr [edi]                            // 0x0075534c    8a07
                         add               eax, 0x04                                     // 0x0075534e    83c004
                         add.s             ecx, eax                                      // 0x00755351    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x00755353    898e14020000
_jmp_addr_0x00755359:    pop               edi                                           // 0x00755359    5f
                         pop               esi                                           // 0x0075535a    5e
                         pop               ebp                                           // 0x0075535b    5d
                         mov               eax, 0x00000001                               // 0x0075535c    b801000000
                         pop               ebx                                           // 0x00755361    5b
                         ret               0x0004                                        // 0x00755362    c20400
                         nop                                                             // 0x00755365    90
                         nop                                                             // 0x00755366    90
                         nop                                                             // 0x00755367    90
                         nop                                                             // 0x00755368    90
                         nop                                                             // 0x00755369    90
                         nop                                                             // 0x0075536a    90
                         nop                                                             // 0x0075536b    90
                         nop                                                             // 0x0075536c    90
                         nop                                                             // 0x0075536d    90
                         nop                                                             // 0x0075536e    90
                         nop                                                             // 0x0075536f    90
?LoadInScript@Villager@@QAE_NAAVGameOSFile@@@Z:
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226994]        // 0x00755370    a194c9be00
                         push              ebx                                           // 0x00755375    53
                         push              ebp                                           // 0x00755376    55
                         push              esi                                           // 0x00755377    56
                         {disp8} mov       esi, dword ptr [esp + 0x10]                   // 0x00755378    8b742410
                         xor.s             ebp, ebp                                      // 0x0075537c    33ed
                         cmp.s             eax, ebp                                      // 0x0075537e    3bc5
                         mov.s             ebx, ecx                                      // 0x00755380    8bd9
                         push              edi                                           // 0x00755382    57
                         {disp32} lea      edi, dword ptr [ebx + 0x0000010c]             // 0x00755383    8dbb0c010000
                         {disp8} je        _jmp_addr_0x007553b6                          // 0x00755389    742b
                         push              ebp                                           // 0x0075538b    55
                         push              0x8                                           // 0x0075538c    6a08
                         push              edi                                           // 0x0075538e    57
                         mov.s             ecx, esi                                      // 0x0075538f    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x00755391    e84a750600
                         cmp               eax, 0x03                                     // 0x00755396    83f803
                         {disp8} jne       _jmp_addr_0x007553a1                          // 0x00755399    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226994], ebp        // 0x0075539b    892d94c9be00
_jmp_addr_0x007553a1:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x007553a1    8b8e14020000
                         xor.s             eax, eax                                      // 0x007553a7    33c0
                         mov               al, byte ptr [edi]                            // 0x007553a9    8a07
                         add               eax, 0x08                                     // 0x007553ab    83c008
                         add.s             ecx, eax                                      // 0x007553ae    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x007553b0    898e14020000
_jmp_addr_0x007553b6:    cmp               dword ptr [data_bytes + 0x226994], ebp        // 0x007553b6    392d94c9be00
                         {disp32} lea      edi, dword ptr [ebx + 0x00000118]             // 0x007553bc    8dbb18010000
                         {disp8} je        _jmp_addr_0x007553ef                          // 0x007553c2    742b
                         push              ebp                                           // 0x007553c4    55
                         push              0x4                                           // 0x007553c5    6a04
                         push              edi                                           // 0x007553c7    57
                         mov.s             ecx, esi                                      // 0x007553c8    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x007553ca    e811750600
                         cmp               eax, 0x03                                     // 0x007553cf    83f803
                         {disp8} jne       _jmp_addr_0x007553da                          // 0x007553d2    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226994], ebp        // 0x007553d4    892d94c9be00
_jmp_addr_0x007553da:    {disp32} mov      eax, dword ptr [esi + 0x00000214]             // 0x007553da    8b8614020000
                         xor.s             ecx, ecx                                      // 0x007553e0    33c9
                         mov               cl, byte ptr [edi]                            // 0x007553e2    8a0f
                         add               ecx, 0x4                                      // 0x007553e4    83c104
                         add.s             eax, ecx                                      // 0x007553e7    03c1
                         {disp32} mov      dword ptr [esi + 0x00000214], eax             // 0x007553e9    898614020000
_jmp_addr_0x007553ef:    cmp               dword ptr [data_bytes + 0x226994], ebp        // 0x007553ef    392d94c9be00
                         {disp32} lea      edi, dword ptr [ebx + 0x0000011c]             // 0x007553f5    8dbb1c010000
                         {disp8} je        _jmp_addr_0x00755428                          // 0x007553fb    742b
                         push              ebp                                           // 0x007553fd    55
                         push              0x4                                           // 0x007553fe    6a04
                         push              edi                                           // 0x00755400    57
                         mov.s             ecx, esi                                      // 0x00755401    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x00755403    e8d8740600
                         cmp               eax, 0x03                                     // 0x00755408    83f803
                         {disp8} jne       _jmp_addr_0x00755413                          // 0x0075540b    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226994], ebp        // 0x0075540d    892d94c9be00
_jmp_addr_0x00755413:    {disp32} mov      eax, dword ptr [esi + 0x00000214]             // 0x00755413    8b8614020000
                         xor.s             edx, edx                                      // 0x00755419    33d2
                         mov               dl, byte ptr [edi]                            // 0x0075541b    8a17
                         add               edx, 0x04                                     // 0x0075541d    83c204
                         add.s             eax, edx                                      // 0x00755420    03c2
                         {disp32} mov      dword ptr [esi + 0x00000214], eax             // 0x00755422    898614020000
_jmp_addr_0x00755428:    cmp               dword ptr [data_bytes + 0x226994], ebp        // 0x00755428    392d94c9be00
                         {disp32} lea      edi, dword ptr [ebx + 0x00000120]             // 0x0075542e    8dbb20010000
                         {disp8} je        _jmp_addr_0x00755461                          // 0x00755434    742b
                         push              ebp                                           // 0x00755436    55
                         push              0x4                                           // 0x00755437    6a04
                         push              edi                                           // 0x00755439    57
                         mov.s             ecx, esi                                      // 0x0075543a    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x0075543c    e89f740600
                         cmp               eax, 0x03                                     // 0x00755441    83f803
                         {disp8} jne       _jmp_addr_0x0075544c                          // 0x00755444    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226994], ebp        // 0x00755446    892d94c9be00
_jmp_addr_0x0075544c:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x0075544c    8b8e14020000
                         xor.s             eax, eax                                      // 0x00755452    33c0
                         mov               al, byte ptr [edi]                            // 0x00755454    8a07
                         add               eax, 0x04                                     // 0x00755456    83c004
                         add.s             ecx, eax                                      // 0x00755459    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x0075545b    898e14020000
_jmp_addr_0x00755461:    pop               edi                                           // 0x00755461    5f
                         pop               esi                                           // 0x00755462    5e
                         pop               ebp                                           // 0x00755463    5d
                         mov               eax, 0x00000001                               // 0x00755464    b801000000
                         pop               ebx                                           // 0x00755469    5b
                         ret               0x0004                                        // 0x0075546a    c20400
                         nop                                                             // 0x0075546d    90
                         nop                                                             // 0x0075546e    90
                         nop                                                             // 0x0075546f    90
?SaveScriptPos@Villager@@QAE_NAAVGameOSFile@@@Z:
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226990]        // 0x00755470    a190c9be00
                         push              ebx                                           // 0x00755475    53
                         push              ebp                                           // 0x00755476    55
                         push              esi                                           // 0x00755477    56
                         xor.s             ebp, ebp                                      // 0x00755478    33ed
                         cmp.s             eax, ebp                                      // 0x0075547a    3bc5
                         push              edi                                           // 0x0075547c    57
                         mov.s             edi, ecx                                      // 0x0075547d    8bf9
                         {disp32} je       _jmp_addr_0x00755569                          // 0x0075547f    0f84e4000000
                         {disp8} mov       esi, dword ptr [esp + 0x14]                   // 0x00755485    8b742414
                         push              ebp                                           // 0x00755489    55
                         push              0x8                                           // 0x0075548a    6a08
                         {disp32} lea      ebx, dword ptr [edi + 0x0000010c]             // 0x0075548c    8d9f0c010000
                         push              ebx                                           // 0x00755492    53
                         mov.s             ecx, esi                                      // 0x00755493    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x00755495    e886740600
                         cmp               eax, 0x03                                     // 0x0075549a    83f803
                         {disp8} jne       _jmp_addr_0x007554a5                          // 0x0075549d    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226990], ebp        // 0x0075549f    892d90c9be00
_jmp_addr_0x007554a5:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x007554a5    8b8e14020000
                         xor.s             eax, eax                                      // 0x007554ab    33c0
                         mov               al, byte ptr [ebx]                            // 0x007554ad    8a03
                         add               eax, 0x08                                     // 0x007554af    83c008
                         add.s             ecx, eax                                      // 0x007554b2    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x007554b4    898e14020000
                         cmp               dword ptr [data_bytes + 0x226990], ebp        // 0x007554ba    392d90c9be00
                         {disp32} je       _jmp_addr_0x00755569                          // 0x007554c0    0f84a3000000
                         push              ebp                                           // 0x007554c6    55
                         push              0x4                                           // 0x007554c7    6a04
                         {disp32} lea      ebx, dword ptr [edi + 0x00000118]             // 0x007554c9    8d9f18010000
                         push              ebx                                           // 0x007554cf    53
                         mov.s             ecx, esi                                      // 0x007554d0    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x007554d2    e849740600
                         cmp               eax, 0x03                                     // 0x007554d7    83f803
                         {disp8} jne       _jmp_addr_0x007554e2                          // 0x007554da    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226990], ebp        // 0x007554dc    892d90c9be00
_jmp_addr_0x007554e2:    {disp32} mov      edx, dword ptr [esi + 0x00000214]             // 0x007554e2    8b9614020000
                         xor.s             ecx, ecx                                      // 0x007554e8    33c9
                         mov               cl, byte ptr [ebx]                            // 0x007554ea    8a0b
                         add               ecx, 0x4                                      // 0x007554ec    83c104
                         add.s             edx, ecx                                      // 0x007554ef    03d1
                         {disp32} mov      dword ptr [esi + 0x00000214], edx             // 0x007554f1    899614020000
                         cmp               dword ptr [data_bytes + 0x226990], ebp        // 0x007554f7    392d90c9be00
                         {disp8} je        _jmp_addr_0x00755569                          // 0x007554fd    746a
                         push              ebp                                           // 0x007554ff    55
                         push              0x4                                           // 0x00755500    6a04
                         {disp32} lea      ebx, dword ptr [edi + 0x0000011c]             // 0x00755502    8d9f1c010000
                         push              ebx                                           // 0x00755508    53
                         mov.s             ecx, esi                                      // 0x00755509    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x0075550b    e810740600
                         cmp               eax, 0x03                                     // 0x00755510    83f803
                         {disp8} jne       _jmp_addr_0x0075551b                          // 0x00755513    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226990], ebp        // 0x00755515    892d90c9be00
_jmp_addr_0x0075551b:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x0075551b    8b8e14020000
                         xor.s             edx, edx                                      // 0x00755521    33d2
                         mov               dl, byte ptr [ebx]                            // 0x00755523    8a13
                         add               edx, 0x04                                     // 0x00755525    83c204
                         add.s             ecx, edx                                      // 0x00755528    03ca
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x0075552a    898e14020000
                         cmp               dword ptr [data_bytes + 0x226990], ebp        // 0x00755530    392d90c9be00
                         {disp8} je        _jmp_addr_0x00755569                          // 0x00755536    7431
                         push              ebp                                           // 0x00755538    55
                         push              0x4                                           // 0x00755539    6a04
                         add               edi, 0x00000120                               // 0x0075553b    81c720010000
                         push              edi                                           // 0x00755541    57
                         mov.s             ecx, esi                                      // 0x00755542    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x00755544    e8d7730600
                         cmp               eax, 0x03                                     // 0x00755549    83f803
                         {disp8} jne       _jmp_addr_0x00755554                          // 0x0075554c    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226990], ebp        // 0x0075554e    892d90c9be00
_jmp_addr_0x00755554:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x00755554    8b8e14020000
                         xor.s             eax, eax                                      // 0x0075555a    33c0
                         mov               al, byte ptr [edi]                            // 0x0075555c    8a07
                         add               eax, 0x04                                     // 0x0075555e    83c004
                         add.s             ecx, eax                                      // 0x00755561    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x00755563    898e14020000
_jmp_addr_0x00755569:    pop               edi                                           // 0x00755569    5f
                         pop               esi                                           // 0x0075556a    5e
                         pop               ebp                                           // 0x0075556b    5d
                         mov               eax, 0x00000001                               // 0x0075556c    b801000000
                         pop               ebx                                           // 0x00755571    5b
                         ret               0x0004                                        // 0x00755572    c20400
                         nop                                                             // 0x00755575    90
                         nop                                                             // 0x00755576    90
                         nop                                                             // 0x00755577    90
                         nop                                                             // 0x00755578    90
                         nop                                                             // 0x00755579    90
                         nop                                                             // 0x0075557a    90
                         nop                                                             // 0x0075557b    90
                         nop                                                             // 0x0075557c    90
                         nop                                                             // 0x0075557d    90
                         nop                                                             // 0x0075557e    90
                         nop                                                             // 0x0075557f    90
?LoadScriptPos@Villager@@QAE_NAAVGameOSFile@@@Z:
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226994]        // 0x00755580    a194c9be00
                         push              ebx                                           // 0x00755585    53
                         push              ebp                                           // 0x00755586    55
                         push              esi                                           // 0x00755587    56
                         {disp8} mov       esi, dword ptr [esp + 0x10]                   // 0x00755588    8b742410
                         xor.s             ebp, ebp                                      // 0x0075558c    33ed
                         cmp.s             eax, ebp                                      // 0x0075558e    3bc5
                         mov.s             ebx, ecx                                      // 0x00755590    8bd9
                         push              edi                                           // 0x00755592    57
                         {disp32} lea      edi, dword ptr [ebx + 0x0000010c]             // 0x00755593    8dbb0c010000
                         {disp8} je        _jmp_addr_0x007555c6                          // 0x00755599    742b
                         push              ebp                                           // 0x0075559b    55
                         push              0x8                                           // 0x0075559c    6a08
                         push              edi                                           // 0x0075559e    57
                         mov.s             ecx, esi                                      // 0x0075559f    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x007555a1    e83a730600
                         cmp               eax, 0x03                                     // 0x007555a6    83f803
                         {disp8} jne       _jmp_addr_0x007555b1                          // 0x007555a9    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226994], ebp        // 0x007555ab    892d94c9be00
_jmp_addr_0x007555b1:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x007555b1    8b8e14020000
                         xor.s             eax, eax                                      // 0x007555b7    33c0
                         mov               al, byte ptr [edi]                            // 0x007555b9    8a07
                         add               eax, 0x08                                     // 0x007555bb    83c008
                         add.s             ecx, eax                                      // 0x007555be    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x007555c0    898e14020000
_jmp_addr_0x007555c6:    cmp               dword ptr [data_bytes + 0x226994], ebp        // 0x007555c6    392d94c9be00
                         {disp32} lea      edi, dword ptr [ebx + 0x00000118]             // 0x007555cc    8dbb18010000
                         {disp8} je        _jmp_addr_0x007555ff                          // 0x007555d2    742b
                         push              ebp                                           // 0x007555d4    55
                         push              0x4                                           // 0x007555d5    6a04
                         push              edi                                           // 0x007555d7    57
                         mov.s             ecx, esi                                      // 0x007555d8    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x007555da    e801730600
                         cmp               eax, 0x03                                     // 0x007555df    83f803
                         {disp8} jne       _jmp_addr_0x007555ea                          // 0x007555e2    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226994], ebp        // 0x007555e4    892d94c9be00
_jmp_addr_0x007555ea:    {disp32} mov      eax, dword ptr [esi + 0x00000214]             // 0x007555ea    8b8614020000
                         xor.s             ecx, ecx                                      // 0x007555f0    33c9
                         mov               cl, byte ptr [edi]                            // 0x007555f2    8a0f
                         add               ecx, 0x4                                      // 0x007555f4    83c104
                         add.s             eax, ecx                                      // 0x007555f7    03c1
                         {disp32} mov      dword ptr [esi + 0x00000214], eax             // 0x007555f9    898614020000
_jmp_addr_0x007555ff:    cmp               dword ptr [data_bytes + 0x226994], ebp        // 0x007555ff    392d94c9be00
                         {disp32} lea      edi, dword ptr [ebx + 0x0000011c]             // 0x00755605    8dbb1c010000
                         {disp8} je        _jmp_addr_0x00755638                          // 0x0075560b    742b
                         push              ebp                                           // 0x0075560d    55
                         push              0x4                                           // 0x0075560e    6a04
                         push              edi                                           // 0x00755610    57
                         mov.s             ecx, esi                                      // 0x00755611    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x00755613    e8c8720600
                         cmp               eax, 0x03                                     // 0x00755618    83f803
                         {disp8} jne       _jmp_addr_0x00755623                          // 0x0075561b    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226994], ebp        // 0x0075561d    892d94c9be00
_jmp_addr_0x00755623:    {disp32} mov      eax, dword ptr [esi + 0x00000214]             // 0x00755623    8b8614020000
                         xor.s             edx, edx                                      // 0x00755629    33d2
                         mov               dl, byte ptr [edi]                            // 0x0075562b    8a17
                         add               edx, 0x04                                     // 0x0075562d    83c204
                         add.s             eax, edx                                      // 0x00755630    03c2
                         {disp32} mov      dword ptr [esi + 0x00000214], eax             // 0x00755632    898614020000
_jmp_addr_0x00755638:    cmp               dword ptr [data_bytes + 0x226994], ebp        // 0x00755638    392d94c9be00
                         {disp32} lea      edi, dword ptr [ebx + 0x00000120]             // 0x0075563e    8dbb20010000
                         {disp8} je        _jmp_addr_0x00755671                          // 0x00755644    742b
                         push              ebp                                           // 0x00755646    55
                         push              0x4                                           // 0x00755647    6a04
                         push              edi                                           // 0x00755649    57
                         mov.s             ecx, esi                                      // 0x0075564a    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x0075564c    e88f720600
                         cmp               eax, 0x03                                     // 0x00755651    83f803
                         {disp8} jne       _jmp_addr_0x0075565c                          // 0x00755654    7506
                         {disp32} mov      dword ptr [data_bytes + 0x226994], ebp        // 0x00755656    892d94c9be00
_jmp_addr_0x0075565c:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x0075565c    8b8e14020000
                         xor.s             eax, eax                                      // 0x00755662    33c0
                         mov               al, byte ptr [edi]                            // 0x00755664    8a07
                         add               eax, 0x04                                     // 0x00755666    83c004
                         add.s             ecx, eax                                      // 0x00755669    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x0075566b    898e14020000
_jmp_addr_0x00755671:    pop               edi                                           // 0x00755671    5f
                         pop               esi                                           // 0x00755672    5e
                         pop               ebp                                           // 0x00755673    5d
                         mov               eax, 0x00000001                               // 0x00755674    b801000000
                         pop               ebx                                           // 0x00755679    5b
                         ret               0x0004                                        // 0x0075567a    c20400
                         nop                                                             // 0x0075567d    90
                         nop                                                             // 0x0075567e    90
                         nop                                                             // 0x0075567f    90
?SaveFire@Villager@@QAE_NAAVGameOSFile@@@Z:
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226990]        // 0x00755680    a190c9be00
                         test              eax, eax                                      // 0x00755685    85c0
                         push              ebx                                           // 0x00755687    53
                         push              edi                                           // 0x00755688    57
                         {disp8} mov       edi, dword ptr [esp + 0x0c]                   // 0x00755689    8b7c240c
                         mov.s             ebx, ecx                                      // 0x0075568d    8bd9
                         {disp8} je        _jmp_addr_0x007556c9                          // 0x0075568f    7438
                         push              esi                                           // 0x00755691    56
                         push              0x0                                           // 0x00755692    6a00
                         push              0x8                                           // 0x00755694    6a08
                         {disp32} lea      esi, dword ptr [ebx + 0x0000010c]             // 0x00755696    8db30c010000
                         push              esi                                           // 0x0075569c    56
                         mov.s             ecx, edi                                      // 0x0075569d    8bcf
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x0075569f    e87c720600
                         cmp               eax, 0x03                                     // 0x007556a4    83f803
                         {disp8} jne       _jmp_addr_0x007556b3                          // 0x007556a7    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000 // 0x007556a9    c70590c9be0000000000
_jmp_addr_0x007556b3:    {disp32} mov      ecx, dword ptr [edi + 0x00000214]             // 0x007556b3    8b8f14020000
                         xor.s             eax, eax                                      // 0x007556b9    33c0
                         mov               al, byte ptr [esi]                            // 0x007556bb    8a06
                         pop               esi                                           // 0x007556bd    5e
                         add               eax, 0x08                                     // 0x007556be    83c008
                         add.s             ecx, eax                                      // 0x007556c1    03c8
                         {disp32} mov      dword ptr [edi + 0x00000214], ecx             // 0x007556c3    898f14020000
_jmp_addr_0x007556c9:    {disp32} mov      ecx, dword ptr [ebx + 0x00000114]             // 0x007556c9    8b8b14010000
                         push              ecx                                           // 0x007556cf    51
                         mov.s             ecx, edi                                      // 0x007556d0    8bcf
                         call              ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x007556d2    e839c7e0ff
                         pop               edi                                           // 0x007556d7    5f
                         mov               eax, 0x00000001                               // 0x007556d8    b801000000
                         pop               ebx                                           // 0x007556dd    5b
                         ret               0x0004                                        // 0x007556de    c20400
                         nop                                                             // 0x007556e1    90
                         nop                                                             // 0x007556e2    90
                         nop                                                             // 0x007556e3    90
                         nop                                                             // 0x007556e4    90
                         nop                                                             // 0x007556e5    90
                         nop                                                             // 0x007556e6    90
                         nop                                                             // 0x007556e7    90
                         nop                                                             // 0x007556e8    90
                         nop                                                             // 0x007556e9    90
                         nop                                                             // 0x007556ea    90
                         nop                                                             // 0x007556eb    90
                         nop                                                             // 0x007556ec    90
                         nop                                                             // 0x007556ed    90
                         nop                                                             // 0x007556ee    90
                         nop                                                             // 0x007556ef    90
?LoadFire@Villager@@QAE_NAAVGameOSFile@@@Z:
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226994]        // 0x007556f0    a194c9be00
                         test              eax, eax                                      // 0x007556f5    85c0
                         push              ebx                                           // 0x007556f7    53
                         push              esi                                           // 0x007556f8    56
                         {disp8} mov       esi, dword ptr [esp + 0x0c]                   // 0x007556f9    8b74240c
                         mov.s             ebx, ecx                                      // 0x007556fd    8bd9
                         push              edi                                           // 0x007556ff    57
                         {disp32} lea      edi, dword ptr [ebx + 0x0000010c]             // 0x00755700    8dbb0c010000
                         {disp8} je        _jmp_addr_0x00755738                          // 0x00755706    7430
                         push              0x0                                           // 0x00755708    6a00
                         push              0x8                                           // 0x0075570a    6a08
                         push              edi                                           // 0x0075570c    57
                         mov.s             ecx, esi                                      // 0x0075570d    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x0075570f    e8cc710600
                         cmp               eax, 0x03                                     // 0x00755714    83f803
                         {disp8} jne       _jmp_addr_0x00755723                          // 0x00755717    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000 // 0x00755719    c70594c9be0000000000
_jmp_addr_0x00755723:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x00755723    8b8e14020000
                         xor.s             eax, eax                                      // 0x00755729    33c0
                         mov               al, byte ptr [edi]                            // 0x0075572b    8a07
                         add               eax, 0x08                                     // 0x0075572d    83c008
                         add.s             ecx, eax                                      // 0x00755730    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x00755732    898e14020000
_jmp_addr_0x00755738:    add               ebx, 0x00000114                               // 0x00755738    81c314010000
                         push              ebx                                           // 0x0075573e    53
                         mov.s             ecx, esi                                      // 0x0075573f    8bce
                         call              @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x00755741    e83acae0ff
                         pop               edi                                           // 0x00755746    5f
                         pop               esi                                           // 0x00755747    5e
                         mov               eax, 0x00000001                               // 0x00755748    b801000000
                         pop               ebx                                           // 0x0075574d    5b
                         ret               0x0004                                        // 0x0075574e    c20400
                         nop                                                             // 0x00755751    90
                         nop                                                             // 0x00755752    90
                         nop                                                             // 0x00755753    90
                         nop                                                             // 0x00755754    90
                         nop                                                             // 0x00755755    90
                         nop                                                             // 0x00755756    90
                         nop                                                             // 0x00755757    90
                         nop                                                             // 0x00755758    90
                         nop                                                             // 0x00755759    90
                         nop                                                             // 0x0075575a    90
                         nop                                                             // 0x0075575b    90
                         nop                                                             // 0x0075575c    90
                         nop                                                             // 0x0075575d    90
                         nop                                                             // 0x0075575e    90
                         nop                                                             // 0x0075575f    90
?SaveDiscipleNothingToDo@Villager@@QAE_NAAVGameOSFile@@@Z:
                         cmp               byte ptr [ecx + 0x000000f2], 0x09             // 0x00755760    80b9f200000009
                         {disp8} jne       _jmp_addr_0x00755773                          // 0x00755767    750a
                         {disp8} mov       eax, dword ptr [esp + 0x04]                   // 0x00755769    8b442404
                         push              eax                                           // 0x0075576d    50
                         call              ?SaveTrader@Villager@@QAE_NAAVGameOSFile@@@Z  // 0x0075576e    e82d000000
_jmp_addr_0x00755773:    mov               eax, 0x00000001                               // 0x00755773    b801000000
                         ret               0x0004                                        // 0x00755778    c20400
                         nop                                                             // 0x0075577b    90
                         nop                                                             // 0x0075577c    90
                         nop                                                             // 0x0075577d    90
                         nop                                                             // 0x0075577e    90
                         nop                                                             // 0x0075577f    90
?LoadDiscipleNothingToDo@Villager@@QAE_NAAVGameOSFile@@@Z:
                         cmp               byte ptr [ecx + 0x000000f2], 0x09             // 0x00755780    80b9f200000009
                         {disp8} jne       _jmp_addr_0x00755793                          // 0x00755787    750a
                         {disp8} mov       eax, dword ptr [esp + 0x04]                   // 0x00755789    8b442404
                         push              eax                                           // 0x0075578d    50
                         call              ?LoadTrader@Villager@@QAE_NAAVGameOSFile@@@Z  // 0x0075578e    e87d000000
_jmp_addr_0x00755793:    mov               eax, 0x00000001                               // 0x00755793    b801000000
                         ret               0x0004                                        // 0x00755798    c20400
                         nop                                                             // 0x0075579b    90
                         nop                                                             // 0x0075579c    90
                         nop                                                             // 0x0075579d    90
                         nop                                                             // 0x0075579e    90
                         nop                                                             // 0x0075579f    90
?SaveTrader@Villager@@QAE_NAAVGameOSFile@@@Z:
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226990]        // 0x007557a0    a190c9be00
                         test              eax, eax                                      // 0x007557a5    85c0
                         push              ebx                                           // 0x007557a7    53
                         push              edi                                           // 0x007557a8    57
                         {disp8} mov       edi, dword ptr [esp + 0x0c]                   // 0x007557a9    8b7c240c
                         mov.s             ebx, ecx                                      // 0x007557ad    8bd9
                         {disp8} je        _jmp_addr_0x007557e9                          // 0x007557af    7438
                         push              esi                                           // 0x007557b1    56
                         push              0x0                                           // 0x007557b2    6a00
                         push              0x4                                           // 0x007557b4    6a04
                         {disp32} lea      esi, dword ptr [ebx + 0x00000118]             // 0x007557b6    8db318010000
                         push              esi                                           // 0x007557bc    56
                         mov.s             ecx, edi                                      // 0x007557bd    8bcf
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x007557bf    e85c710600
                         cmp               eax, 0x03                                     // 0x007557c4    83f803
                         {disp8} jne       _jmp_addr_0x007557d3                          // 0x007557c7    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000 // 0x007557c9    c70590c9be0000000000
_jmp_addr_0x007557d3:    {disp32} mov      ecx, dword ptr [edi + 0x00000214]             // 0x007557d3    8b8f14020000
                         xor.s             eax, eax                                      // 0x007557d9    33c0
                         mov               al, byte ptr [esi]                            // 0x007557db    8a06
                         pop               esi                                           // 0x007557dd    5e
                         add               eax, 0x04                                     // 0x007557de    83c004
                         add.s             ecx, eax                                      // 0x007557e1    03c8
                         {disp32} mov      dword ptr [edi + 0x00000214], ecx             // 0x007557e3    898f14020000
_jmp_addr_0x007557e9:    {disp32} mov      ecx, dword ptr [ebx + 0x0000011c]             // 0x007557e9    8b8b1c010000
                         push              ecx                                           // 0x007557ef    51
                         mov.s             ecx, edi                                      // 0x007557f0    8bcf
                         call              ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x007557f2    e819c6e0ff
                         pop               edi                                           // 0x007557f7    5f
                         mov               eax, 0x00000001                               // 0x007557f8    b801000000
                         pop               ebx                                           // 0x007557fd    5b
                         ret               0x0004                                        // 0x007557fe    c20400
                         nop                                                             // 0x00755801    90
                         nop                                                             // 0x00755802    90
                         nop                                                             // 0x00755803    90
                         nop                                                             // 0x00755804    90
                         nop                                                             // 0x00755805    90
                         nop                                                             // 0x00755806    90
                         nop                                                             // 0x00755807    90
                         nop                                                             // 0x00755808    90
                         nop                                                             // 0x00755809    90
                         nop                                                             // 0x0075580a    90
                         nop                                                             // 0x0075580b    90
                         nop                                                             // 0x0075580c    90
                         nop                                                             // 0x0075580d    90
                         nop                                                             // 0x0075580e    90
                         nop                                                             // 0x0075580f    90
?LoadTrader@Villager@@QAE_NAAVGameOSFile@@@Z:
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226994]        // 0x00755810    a194c9be00
                         test              eax, eax                                      // 0x00755815    85c0
                         push              ebx                                           // 0x00755817    53
                         push              esi                                           // 0x00755818    56
                         {disp8} mov       esi, dword ptr [esp + 0x0c]                   // 0x00755819    8b74240c
                         mov.s             ebx, ecx                                      // 0x0075581d    8bd9
                         push              edi                                           // 0x0075581f    57
                         {disp32} lea      edi, dword ptr [ebx + 0x00000118]             // 0x00755820    8dbb18010000
                         {disp8} je        _jmp_addr_0x00755858                          // 0x00755826    7430
                         push              0x0                                           // 0x00755828    6a00
                         push              0x4                                           // 0x0075582a    6a04
                         push              edi                                           // 0x0075582c    57
                         mov.s             ecx, esi                                      // 0x0075582d    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x0075582f    e8ac700600
                         cmp               eax, 0x03                                     // 0x00755834    83f803
                         {disp8} jne       _jmp_addr_0x00755843                          // 0x00755837    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000 // 0x00755839    c70594c9be0000000000
_jmp_addr_0x00755843:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x00755843    8b8e14020000
                         xor.s             eax, eax                                      // 0x00755849    33c0
                         mov               al, byte ptr [edi]                            // 0x0075584b    8a07
                         add               eax, 0x04                                     // 0x0075584d    83c004
                         add.s             ecx, eax                                      // 0x00755850    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x00755852    898e14020000
_jmp_addr_0x00755858:    add               ebx, 0x0000011c                               // 0x00755858    81c31c010000
                         push              ebx                                           // 0x0075585e    53
                         mov.s             ecx, esi                                      // 0x0075585f    8bce
                         call              @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x00755861    e81ac9e0ff
                         pop               edi                                           // 0x00755866    5f
                         pop               esi                                           // 0x00755867    5e
                         mov               eax, 0x00000001                               // 0x00755868    b801000000
                         pop               ebx                                           // 0x0075586d    5b
                         ret               0x0004                                        // 0x0075586e    c20400
                         nop                                                             // 0x00755871    90
                         nop                                                             // 0x00755872    90
                         nop                                                             // 0x00755873    90
                         nop                                                             // 0x00755874    90
                         nop                                                             // 0x00755875    90
                         nop                                                             // 0x00755876    90
                         nop                                                             // 0x00755877    90
                         nop                                                             // 0x00755878    90
                         nop                                                             // 0x00755879    90
                         nop                                                             // 0x0075587a    90
                         nop                                                             // 0x0075587b    90
                         nop                                                             // 0x0075587c    90
                         nop                                                             // 0x0075587d    90
                         nop                                                             // 0x0075587e    90
                         nop                                                             // 0x0075587f    90
?SaveInspectObject@Villager@@QAE_NAAVGameOSFile@@@Z:
                         {disp32} mov      eax, dword ptr [ecx + 0x00000118]             // 0x00755880    8b8118010000
                         {disp8} mov       ecx, dword ptr [esp + 0x04]                   // 0x00755886    8b4c2404
                         push              eax                                           // 0x0075588a    50
                         call              ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x0075588b    e880c5e0ff
                         mov               eax, 0x00000001                               // 0x00755890    b801000000
                         ret               0x0004                                        // 0x00755895    c20400
                         nop                                                             // 0x00755898    90
                         nop                                                             // 0x00755899    90
                         nop                                                             // 0x0075589a    90
                         nop                                                             // 0x0075589b    90
                         nop                                                             // 0x0075589c    90
                         nop                                                             // 0x0075589d    90
                         nop                                                             // 0x0075589e    90
                         nop                                                             // 0x0075589f    90
?LoadInspectObject@Villager@@QAE_NAAVGameOSFile@@@Z:
                         add               ecx, 0x00000118                               // 0x007558a0    81c118010000
                         push              ecx                                           // 0x007558a6    51
                         {disp8} mov       ecx, dword ptr [esp + 0x08]                   // 0x007558a7    8b4c2408
                         call              @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x007558ab    e8d0c8e0ff
                         mov               eax, 0x00000001                               // 0x007558b0    b801000000
                         ret               0x0004                                        // 0x007558b5    c20400
                         nop                                                             // 0x007558b8    90
                         nop                                                             // 0x007558b9    90
                         nop                                                             // 0x007558ba    90
                         nop                                                             // 0x007558bb    90
                         nop                                                             // 0x007558bc    90
                         nop                                                             // 0x007558bd    90
                         nop                                                             // 0x007558be    90
                         nop                                                             // 0x007558bf    90
?SaveReaction@Villager@@QAE_NAAVGameOSFile@@@Z:
                         mov               eax, 0x00000001                               // 0x007558c0    b801000000
                         ret               0x0004                                        // 0x007558c5    c20400
                         nop                                                             // 0x007558c8    90
                         nop                                                             // 0x007558c9    90
                         nop                                                             // 0x007558ca    90
                         nop                                                             // 0x007558cb    90
                         nop                                                             // 0x007558cc    90
                         nop                                                             // 0x007558cd    90
                         nop                                                             // 0x007558ce    90
                         nop                                                             // 0x007558cf    90
?LoadReaction@Villager@@QAE_NAAVGameOSFile@@@Z:
                         mov               eax, 0x00000001                               // 0x007558d0    b801000000
                         ret               0x0004                                        // 0x007558d5    c20400
                         nop                                                             // 0x007558d8    90
                         nop                                                             // 0x007558d9    90
                         nop                                                             // 0x007558da    90
                         nop                                                             // 0x007558db    90
                         nop                                                             // 0x007558dc    90
                         nop                                                             // 0x007558dd    90
                         nop                                                             // 0x007558de    90
                         nop                                                             // 0x007558df    90
?SaveClearArea@Villager@@QAE_NAAVGameOSFile@@@Z:
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226990]        // 0x007558e0    a190c9be00
                         test              eax, eax                                      // 0x007558e5    85c0
                         push              ebx                                           // 0x007558e7    53
                         push              esi                                           // 0x007558e8    56
                         push              edi                                           // 0x007558e9    57
                         mov.s             ebx, ecx                                      // 0x007558ea    8bd9
                         {disp8} je        _jmp_addr_0x00755967                          // 0x007558ec    7479
                         {disp8} mov       esi, dword ptr [esp + 0x10]                   // 0x007558ee    8b742410
                         push              0x0                                           // 0x007558f2    6a00
                         push              0x8                                           // 0x007558f4    6a08
                         {disp32} lea      edi, dword ptr [ebx + 0x00000118]             // 0x007558f6    8dbb18010000
                         push              edi                                           // 0x007558fc    57
                         mov.s             ecx, esi                                      // 0x007558fd    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x007558ff    e81c700600
                         cmp               eax, 0x03                                     // 0x00755904    83f803
                         {disp8} jne       _jmp_addr_0x00755913                          // 0x00755907    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000 // 0x00755909    c70590c9be0000000000
_jmp_addr_0x00755913:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x00755913    8b8e14020000
                         xor.s             eax, eax                                      // 0x00755919    33c0
                         mov               al, byte ptr [edi]                            // 0x0075591b    8a07
                         add               eax, 0x08                                     // 0x0075591d    83c008
                         add.s             ecx, eax                                      // 0x00755920    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x00755922    898e14020000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226990]        // 0x00755928    a190c9be00
                         test              eax, eax                                      // 0x0075592d    85c0
                         {disp8} je        _jmp_addr_0x00755967                          // 0x0075592f    7436
                         push              0x0                                           // 0x00755931    6a00
                         push              0x4                                           // 0x00755933    6a04
                         {disp32} lea      edi, dword ptr [ebx + 0x00000120]             // 0x00755935    8dbb20010000
                         push              edi                                           // 0x0075593b    57
                         mov.s             ecx, esi                                      // 0x0075593c    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x0075593e    e8dd6f0600
                         cmp               eax, 0x03                                     // 0x00755943    83f803
                         {disp8} jne       _jmp_addr_0x00755952                          // 0x00755946    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000 // 0x00755948    c70590c9be0000000000
_jmp_addr_0x00755952:    {disp32} mov      eax, dword ptr [esi + 0x00000214]             // 0x00755952    8b8614020000
                         xor.s             ecx, ecx                                      // 0x00755958    33c9
                         mov               cl, byte ptr [edi]                            // 0x0075595a    8a0f
                         add               ecx, 0x4                                      // 0x0075595c    83c104
                         add.s             eax, ecx                                      // 0x0075595f    03c1
                         {disp32} mov      dword ptr [esi + 0x00000214], eax             // 0x00755961    898614020000
_jmp_addr_0x00755967:    pop               edi                                           // 0x00755967    5f
                         pop               esi                                           // 0x00755968    5e
                         mov               eax, 0x00000001                               // 0x00755969    b801000000
                         pop               ebx                                           // 0x0075596e    5b
                         ret               0x0004                                        // 0x0075596f    c20400
                         nop                                                             // 0x00755972    90
                         nop                                                             // 0x00755973    90
                         nop                                                             // 0x00755974    90
                         nop                                                             // 0x00755975    90
                         nop                                                             // 0x00755976    90
                         nop                                                             // 0x00755977    90
                         nop                                                             // 0x00755978    90
                         nop                                                             // 0x00755979    90
                         nop                                                             // 0x0075597a    90
                         nop                                                             // 0x0075597b    90
                         nop                                                             // 0x0075597c    90
                         nop                                                             // 0x0075597d    90
                         nop                                                             // 0x0075597e    90
                         nop                                                             // 0x0075597f    90
?LoadClearArea@Villager@@QAE_NAAVGameOSFile@@@Z:
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226994]        // 0x00755980    a194c9be00
                         test              eax, eax                                      // 0x00755985    85c0
                         push              ebx                                           // 0x00755987    53
                         push              esi                                           // 0x00755988    56
                         {disp8} mov       esi, dword ptr [esp + 0x0c]                   // 0x00755989    8b74240c
                         mov.s             ebx, ecx                                      // 0x0075598d    8bd9
                         push              edi                                           // 0x0075598f    57
                         {disp32} lea      edi, dword ptr [ebx + 0x00000118]             // 0x00755990    8dbb18010000
                         {disp8} je        _jmp_addr_0x007559c8                          // 0x00755996    7430
                         push              0x0                                           // 0x00755998    6a00
                         push              0x8                                           // 0x0075599a    6a08
                         push              edi                                           // 0x0075599c    57
                         mov.s             ecx, esi                                      // 0x0075599d    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x0075599f    e83c6f0600
                         cmp               eax, 0x03                                     // 0x007559a4    83f803
                         {disp8} jne       _jmp_addr_0x007559b3                          // 0x007559a7    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000 // 0x007559a9    c70594c9be0000000000
_jmp_addr_0x007559b3:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x007559b3    8b8e14020000
                         xor.s             eax, eax                                      // 0x007559b9    33c0
                         mov               al, byte ptr [edi]                            // 0x007559bb    8a07
                         add               eax, 0x08                                     // 0x007559bd    83c008
                         add.s             ecx, eax                                      // 0x007559c0    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x007559c2    898e14020000
_jmp_addr_0x007559c8:    {disp32} mov      eax, dword ptr [data_bytes + 0x226994]        // 0x007559c8    a194c9be00
                         test              eax, eax                                      // 0x007559cd    85c0
                         {disp32} lea      edi, dword ptr [ebx + 0x00000120]             // 0x007559cf    8dbb20010000
                         {disp8} je        _jmp_addr_0x00755a07                          // 0x007559d5    7430
                         push              0x0                                           // 0x007559d7    6a00
                         push              0x4                                           // 0x007559d9    6a04
                         push              edi                                           // 0x007559db    57
                         mov.s             ecx, esi                                      // 0x007559dc    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x007559de    e8fd6e0600
                         cmp               eax, 0x03                                     // 0x007559e3    83f803
                         {disp8} jne       _jmp_addr_0x007559f2                          // 0x007559e6    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000 // 0x007559e8    c70594c9be0000000000
_jmp_addr_0x007559f2:    {disp32} mov      eax, dword ptr [esi + 0x00000214]             // 0x007559f2    8b8614020000
                         xor.s             ecx, ecx                                      // 0x007559f8    33c9
                         mov               cl, byte ptr [edi]                            // 0x007559fa    8a0f
                         add               ecx, 0x4                                      // 0x007559fc    83c104
                         add.s             eax, ecx                                      // 0x007559ff    03c1
                         {disp32} mov      dword ptr [esi + 0x00000214], eax             // 0x00755a01    898614020000
_jmp_addr_0x00755a07:    pop               edi                                           // 0x00755a07    5f
                         pop               esi                                           // 0x00755a08    5e
                         mov               eax, 0x00000001                               // 0x00755a09    b801000000
                         pop               ebx                                           // 0x00755a0e    5b
                         ret               0x0004                                        // 0x00755a0f    c20400
                         nop                                                             // 0x00755a12    90
                         nop                                                             // 0x00755a13    90
                         nop                                                             // 0x00755a14    90
                         nop                                                             // 0x00755a15    90
                         nop                                                             // 0x00755a16    90
                         nop                                                             // 0x00755a17    90
                         nop                                                             // 0x00755a18    90
                         nop                                                             // 0x00755a19    90
                         nop                                                             // 0x00755a1a    90
                         nop                                                             // 0x00755a1b    90
                         nop                                                             // 0x00755a1c    90
                         nop                                                             // 0x00755a1d    90
                         nop                                                             // 0x00755a1e    90
                         nop                                                             // 0x00755a1f    90
?SaveBreeder@Villager@@QAE_NAAVGameOSFile@@@Z:
                         push              esi                                           // 0x00755a20    56
                         {disp8} mov       esi, dword ptr [esp + 0x08]                   // 0x00755a21    8b742408
                         push              edi                                           // 0x00755a25    57
                         mov.s             edi, ecx                                      // 0x00755a26    8bf9
                         {disp32} mov      eax, dword ptr [edi + 0x00000118]             // 0x00755a28    8b8718010000
                         push              eax                                           // 0x00755a2e    50
                         mov.s             ecx, esi                                      // 0x00755a2f    8bce
                         call              ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x00755a31    e8dac3e0ff
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226990]        // 0x00755a36    a190c9be00
                         test              eax, eax                                      // 0x00755a3b    85c0
                         {disp8} je        _jmp_addr_0x00755a75                          // 0x00755a3d    7436
                         push              0x0                                           // 0x00755a3f    6a00
                         push              0x8                                           // 0x00755a41    6a08
                         add               edi, 0x0000011c                               // 0x00755a43    81c71c010000
                         push              edi                                           // 0x00755a49    57
                         mov.s             ecx, esi                                      // 0x00755a4a    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x00755a4c    e8cf6e0600
                         cmp               eax, 0x03                                     // 0x00755a51    83f803
                         {disp8} jne       _jmp_addr_0x00755a60                          // 0x00755a54    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000 // 0x00755a56    c70590c9be0000000000
_jmp_addr_0x00755a60:    {disp32} mov      eax, dword ptr [esi + 0x00000214]             // 0x00755a60    8b8614020000
                         xor.s             ecx, ecx                                      // 0x00755a66    33c9
                         mov               cl, byte ptr [edi]                            // 0x00755a68    8a0f
                         add               ecx, 0x8                                      // 0x00755a6a    83c108
                         add.s             eax, ecx                                      // 0x00755a6d    03c1
                         {disp32} mov      dword ptr [esi + 0x00000214], eax             // 0x00755a6f    898614020000
_jmp_addr_0x00755a75:    pop               edi                                           // 0x00755a75    5f
                         mov               eax, 0x00000001                               // 0x00755a76    b801000000
                         pop               esi                                           // 0x00755a7b    5e
                         ret               0x0004                                        // 0x00755a7c    c20400
                         nop                                                             // 0x00755a7f    90
?LoadBreeder@Villager@@QAE_NAAVGameOSFile@@@Z:
                         push              esi                                           // 0x00755a80    56
                         {disp8} mov       esi, dword ptr [esp + 0x08]                   // 0x00755a81    8b742408
                         push              edi                                           // 0x00755a85    57
                         mov.s             edi, ecx                                      // 0x00755a86    8bf9
                         {disp32} lea      eax, dword ptr [edi + 0x00000118]             // 0x00755a88    8d8718010000
                         push              eax                                           // 0x00755a8e    50
                         mov.s             ecx, esi                                      // 0x00755a8f    8bce
                         call              @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x00755a91    e8eac6e0ff
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226994]        // 0x00755a96    a194c9be00
                         add               edi, 0x0000011c                               // 0x00755a9b    81c71c010000
                         test              eax, eax                                      // 0x00755aa1    85c0
                         {disp8} je        _jmp_addr_0x00755ad5                          // 0x00755aa3    7430
                         push              0x0                                           // 0x00755aa5    6a00
                         push              0x8                                           // 0x00755aa7    6a08
                         push              edi                                           // 0x00755aa9    57
                         mov.s             ecx, esi                                      // 0x00755aaa    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x00755aac    e82f6e0600
                         cmp               eax, 0x03                                     // 0x00755ab1    83f803
                         {disp8} jne       _jmp_addr_0x00755ac0                          // 0x00755ab4    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000 // 0x00755ab6    c70594c9be0000000000
_jmp_addr_0x00755ac0:    {disp32} mov      eax, dword ptr [esi + 0x00000214]             // 0x00755ac0    8b8614020000
                         xor.s             ecx, ecx                                      // 0x00755ac6    33c9
                         mov               cl, byte ptr [edi]                            // 0x00755ac8    8a0f
                         add               ecx, 0x8                                      // 0x00755aca    83c108
                         add.s             eax, ecx                                      // 0x00755acd    03c1
                         {disp32} mov      dword ptr [esi + 0x00000214], eax             // 0x00755acf    898614020000
_jmp_addr_0x00755ad5:    pop               edi                                           // 0x00755ad5    5f
                         mov               eax, 0x00000001                               // 0x00755ad6    b801000000
                         pop               esi                                           // 0x00755adb    5e
                         ret               0x0004                                        // 0x00755adc    c20400
                         nop                                                             // 0x00755adf    90
?SaveForesting@Villager@@QAE_NAAVGameOSFile@@@Z:
                         {disp32} mov      eax, dword ptr [ecx + 0x00000118]             // 0x00755ae0    8b8118010000
                         {disp8} mov       ecx, dword ptr [esp + 0x04]                   // 0x00755ae6    8b4c2404
                         push              eax                                           // 0x00755aea    50
                         call              ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x00755aeb    e820c3e0ff
                         mov               eax, 0x00000001                               // 0x00755af0    b801000000
                         ret               0x0004                                        // 0x00755af5    c20400
                         nop                                                             // 0x00755af8    90
                         nop                                                             // 0x00755af9    90
                         nop                                                             // 0x00755afa    90
                         nop                                                             // 0x00755afb    90
                         nop                                                             // 0x00755afc    90
                         nop                                                             // 0x00755afd    90
                         nop                                                             // 0x00755afe    90
                         nop                                                             // 0x00755aff    90
?LoadForesting@Villager@@QAE_NAAVGameOSFile@@@Z:
                         add               ecx, 0x00000118                               // 0x00755b00    81c118010000
                         push              ecx                                           // 0x00755b06    51
                         {disp8} mov       ecx, dword ptr [esp + 0x08]                   // 0x00755b07    8b4c2408
                         call              @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x00755b0b    e870c6e0ff
                         mov               eax, 0x00000001                               // 0x00755b10    b801000000
                         ret               0x0004                                        // 0x00755b15    c20400
                         nop                                                             // 0x00755b18    90
                         nop                                                             // 0x00755b19    90
                         nop                                                             // 0x00755b1a    90
                         nop                                                             // 0x00755b1b    90
                         nop                                                             // 0x00755b1c    90
                         nop                                                             // 0x00755b1d    90
                         nop                                                             // 0x00755b1e    90
                         nop                                                             // 0x00755b1f    90
?SaveFootPath@Villager@@QAE_NAAVGameOSFile@@@Z:
                         push              esi                                           // 0x00755b20    56
                         mov.s             esi, ecx                                      // 0x00755b21    8bf1
                         {disp32} mov      eax, dword ptr [esi + 0x000000c8]             // 0x00755b23    8b86c8000000
                         push              edi                                           // 0x00755b29    57
                         {disp8} mov       edi, dword ptr [esp + 0x0c]                   // 0x00755b2a    8b7c240c
                         push              eax                                           // 0x00755b2e    50
                         mov.s             ecx, edi                                      // 0x00755b2f    8bcf
                         call              ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x00755b31    e8dac2e0ff
                         {disp32} mov      ecx, dword ptr [esi + 0x000000cc]             // 0x00755b36    8b8ecc000000
                         push              ecx                                           // 0x00755b3c    51
                         mov.s             ecx, edi                                      // 0x00755b3d    8bcf
                         call              ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x00755b3f    e8ccc2e0ff
                         pop               edi                                           // 0x00755b44    5f
                         mov               eax, 0x00000001                               // 0x00755b45    b801000000
                         pop               esi                                           // 0x00755b4a    5e
                         ret               0x0004                                        // 0x00755b4b    c20400
                         nop                                                             // 0x00755b4e    90
                         nop                                                             // 0x00755b4f    90
?LoadFootPath@Villager@@QAE_NAAVGameOSFile@@@Z:
                         push              esi                                           // 0x00755b50    56
                         mov.s             esi, ecx                                      // 0x00755b51    8bf1
                         push              edi                                           // 0x00755b53    57
                         {disp8} mov       edi, dword ptr [esp + 0x0c]                   // 0x00755b54    8b7c240c
                         {disp32} lea      eax, dword ptr [esi + 0x000000c8]             // 0x00755b58    8d86c8000000
                         push              eax                                           // 0x00755b5e    50
                         mov.s             ecx, edi                                      // 0x00755b5f    8bcf
                         call              @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x00755b61    e81ac6e0ff
                         add               esi, 0x000000cc                               // 0x00755b66    81c6cc000000
                         push              esi                                           // 0x00755b6c    56
                         mov.s             ecx, edi                                      // 0x00755b6d    8bcf
                         call              @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x00755b6f    e80cc6e0ff
                         pop               edi                                           // 0x00755b74    5f
                         mov               eax, 0x00000001                               // 0x00755b75    b801000000
                         pop               esi                                           // 0x00755b7a    5e
                         ret               0x0004                                        // 0x00755b7b    c20400
                         nop                                                             // 0x00755b7e    90
                         nop                                                             // 0x00755b7f    90
?SaveInspectionReaction@Villager@@QAE_NAAVGameOSFile@@@Z:
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226990]        // 0x00755b80    a190c9be00
                         test              eax, eax                                      // 0x00755b85    85c0
                         push              ebx                                           // 0x00755b87    53
                         push              esi                                           // 0x00755b88    56
                         push              edi                                           // 0x00755b89    57
                         mov.s             ebx, ecx                                      // 0x00755b8a    8bd9
                         {disp8} je        _jmp_addr_0x00755c07                          // 0x00755b8c    7479
                         {disp8} mov       esi, dword ptr [esp + 0x10]                   // 0x00755b8e    8b742410
                         push              0x0                                           // 0x00755b92    6a00
                         push              0x4                                           // 0x00755b94    6a04
                         {disp32} lea      edi, dword ptr [ebx + 0x0000010c]             // 0x00755b96    8dbb0c010000
                         push              edi                                           // 0x00755b9c    57
                         mov.s             ecx, esi                                      // 0x00755b9d    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x00755b9f    e87c6d0600
                         cmp               eax, 0x03                                     // 0x00755ba4    83f803
                         {disp8} jne       _jmp_addr_0x00755bb3                          // 0x00755ba7    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000 // 0x00755ba9    c70590c9be0000000000
_jmp_addr_0x00755bb3:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x00755bb3    8b8e14020000
                         xor.s             eax, eax                                      // 0x00755bb9    33c0
                         mov               al, byte ptr [edi]                            // 0x00755bbb    8a07
                         add               eax, 0x04                                     // 0x00755bbd    83c004
                         add.s             ecx, eax                                      // 0x00755bc0    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x00755bc2    898e14020000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226990]        // 0x00755bc8    a190c9be00
                         test              eax, eax                                      // 0x00755bcd    85c0
                         {disp8} je        _jmp_addr_0x00755c07                          // 0x00755bcf    7436
                         push              0x0                                           // 0x00755bd1    6a00
                         push              0x4                                           // 0x00755bd3    6a04
                         {disp32} lea      edi, dword ptr [ebx + 0x00000110]             // 0x00755bd5    8dbb10010000
                         push              edi                                           // 0x00755bdb    57
                         mov.s             ecx, esi                                      // 0x00755bdc    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x00755bde    e83d6d0600
                         cmp               eax, 0x03                                     // 0x00755be3    83f803
                         {disp8} jne       _jmp_addr_0x00755bf2                          // 0x00755be6    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000 // 0x00755be8    c70590c9be0000000000
_jmp_addr_0x00755bf2:    {disp32} mov      eax, dword ptr [esi + 0x00000214]             // 0x00755bf2    8b8614020000
                         xor.s             ecx, ecx                                      // 0x00755bf8    33c9
                         mov               cl, byte ptr [edi]                            // 0x00755bfa    8a0f
                         add               ecx, 0x4                                      // 0x00755bfc    83c104
                         add.s             eax, ecx                                      // 0x00755bff    03c1
                         {disp32} mov      dword ptr [esi + 0x00000214], eax             // 0x00755c01    898614020000
_jmp_addr_0x00755c07:    pop               edi                                           // 0x00755c07    5f
                         pop               esi                                           // 0x00755c08    5e
                         mov               eax, 0x00000001                               // 0x00755c09    b801000000
                         pop               ebx                                           // 0x00755c0e    5b
                         ret               0x0004                                        // 0x00755c0f    c20400
                         nop                                                             // 0x00755c12    90
                         nop                                                             // 0x00755c13    90
                         nop                                                             // 0x00755c14    90
                         nop                                                             // 0x00755c15    90
                         nop                                                             // 0x00755c16    90
                         nop                                                             // 0x00755c17    90
                         nop                                                             // 0x00755c18    90
                         nop                                                             // 0x00755c19    90
                         nop                                                             // 0x00755c1a    90
                         nop                                                             // 0x00755c1b    90
                         nop                                                             // 0x00755c1c    90
                         nop                                                             // 0x00755c1d    90
                         nop                                                             // 0x00755c1e    90
                         nop                                                             // 0x00755c1f    90
?LoadInspectionReaction@Villager@@QAE_NAAVGameOSFile@@@Z:
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226994]        // 0x00755c20    a194c9be00
                         test              eax, eax                                      // 0x00755c25    85c0
                         push              ebx                                           // 0x00755c27    53
                         push              esi                                           // 0x00755c28    56
                         {disp8} mov       esi, dword ptr [esp + 0x0c]                   // 0x00755c29    8b74240c
                         mov.s             ebx, ecx                                      // 0x00755c2d    8bd9
                         push              edi                                           // 0x00755c2f    57
                         {disp32} lea      edi, dword ptr [ebx + 0x0000010c]             // 0x00755c30    8dbb0c010000
                         {disp8} je        _jmp_addr_0x00755c68                          // 0x00755c36    7430
                         push              0x0                                           // 0x00755c38    6a00
                         push              0x4                                           // 0x00755c3a    6a04
                         push              edi                                           // 0x00755c3c    57
                         mov.s             ecx, esi                                      // 0x00755c3d    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x00755c3f    e89c6c0600
                         cmp               eax, 0x03                                     // 0x00755c44    83f803
                         {disp8} jne       _jmp_addr_0x00755c53                          // 0x00755c47    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000 // 0x00755c49    c70594c9be0000000000
_jmp_addr_0x00755c53:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x00755c53    8b8e14020000
                         xor.s             eax, eax                                      // 0x00755c59    33c0
                         mov               al, byte ptr [edi]                            // 0x00755c5b    8a07
                         add               eax, 0x04                                     // 0x00755c5d    83c004
                         add.s             ecx, eax                                      // 0x00755c60    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x00755c62    898e14020000
_jmp_addr_0x00755c68:    {disp32} mov      eax, dword ptr [data_bytes + 0x226994]        // 0x00755c68    a194c9be00
                         test              eax, eax                                      // 0x00755c6d    85c0
                         {disp32} lea      edi, dword ptr [ebx + 0x00000110]             // 0x00755c6f    8dbb10010000
                         {disp8} je        _jmp_addr_0x00755ca7                          // 0x00755c75    7430
                         push              0x0                                           // 0x00755c77    6a00
                         push              0x4                                           // 0x00755c79    6a04
                         push              edi                                           // 0x00755c7b    57
                         mov.s             ecx, esi                                      // 0x00755c7c    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x00755c7e    e85d6c0600
                         cmp               eax, 0x03                                     // 0x00755c83    83f803
                         {disp8} jne       _jmp_addr_0x00755c92                          // 0x00755c86    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000 // 0x00755c88    c70594c9be0000000000
_jmp_addr_0x00755c92:    {disp32} mov      eax, dword ptr [esi + 0x00000214]             // 0x00755c92    8b8614020000
                         xor.s             ecx, ecx                                      // 0x00755c98    33c9
                         mov               cl, byte ptr [edi]                            // 0x00755c9a    8a0f
                         add               ecx, 0x4                                      // 0x00755c9c    83c104
                         add.s             eax, ecx                                      // 0x00755c9f    03c1
                         {disp32} mov      dword ptr [esi + 0x00000214], eax             // 0x00755ca1    898614020000
_jmp_addr_0x00755ca7:    pop               edi                                           // 0x00755ca7    5f
                         pop               esi                                           // 0x00755ca8    5e
                         mov               eax, 0x00000001                               // 0x00755ca9    b801000000
                         pop               ebx                                           // 0x00755cae    5b
                         ret               0x0004                                        // 0x00755caf    c20400
                         nop                                                             // 0x00755cb2    90
                         nop                                                             // 0x00755cb3    90
                         nop                                                             // 0x00755cb4    90
                         nop                                                             // 0x00755cb5    90
                         nop                                                             // 0x00755cb6    90
                         nop                                                             // 0x00755cb7    90
                         nop                                                             // 0x00755cb8    90
                         nop                                                             // 0x00755cb9    90
                         nop                                                             // 0x00755cba    90
                         nop                                                             // 0x00755cbb    90
                         nop                                                             // 0x00755cbc    90
                         nop                                                             // 0x00755cbd    90
                         nop                                                             // 0x00755cbe    90
                         nop                                                             // 0x00755cbf    90
?SaveMagicTreeReaction@Villager@@QAE_NAAVGameOSFile@@@Z:
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226990]        // 0x00755cc0    a190c9be00
                         test              eax, eax                                      // 0x00755cc5    85c0
                         push              ebx                                           // 0x00755cc7    53
                         push              esi                                           // 0x00755cc8    56
                         push              edi                                           // 0x00755cc9    57
                         mov.s             ebx, ecx                                      // 0x00755cca    8bd9
                         {disp8} je        _jmp_addr_0x00755d47                          // 0x00755ccc    7479
                         {disp8} mov       esi, dword ptr [esp + 0x10]                   // 0x00755cce    8b742410
                         push              0x0                                           // 0x00755cd2    6a00
                         push              0x4                                           // 0x00755cd4    6a04
                         {disp32} lea      edi, dword ptr [ebx + 0x0000010c]             // 0x00755cd6    8dbb0c010000
                         push              edi                                           // 0x00755cdc    57
                         mov.s             ecx, esi                                      // 0x00755cdd    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x00755cdf    e83c6c0600
                         cmp               eax, 0x03                                     // 0x00755ce4    83f803
                         {disp8} jne       _jmp_addr_0x00755cf3                          // 0x00755ce7    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000 // 0x00755ce9    c70590c9be0000000000
_jmp_addr_0x00755cf3:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x00755cf3    8b8e14020000
                         xor.s             eax, eax                                      // 0x00755cf9    33c0
                         mov               al, byte ptr [edi]                            // 0x00755cfb    8a07
                         add               eax, 0x04                                     // 0x00755cfd    83c004
                         add.s             ecx, eax                                      // 0x00755d00    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x00755d02    898e14020000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226990]        // 0x00755d08    a190c9be00
                         test              eax, eax                                      // 0x00755d0d    85c0
                         {disp8} je        _jmp_addr_0x00755d47                          // 0x00755d0f    7436
                         push              0x0                                           // 0x00755d11    6a00
                         push              0x4                                           // 0x00755d13    6a04
                         {disp32} lea      edi, dword ptr [ebx + 0x00000110]             // 0x00755d15    8dbb10010000
                         push              edi                                           // 0x00755d1b    57
                         mov.s             ecx, esi                                      // 0x00755d1c    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x00755d1e    e8fd6b0600
                         cmp               eax, 0x03                                     // 0x00755d23    83f803
                         {disp8} jne       _jmp_addr_0x00755d32                          // 0x00755d26    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000 // 0x00755d28    c70590c9be0000000000
_jmp_addr_0x00755d32:    {disp32} mov      eax, dword ptr [esi + 0x00000214]             // 0x00755d32    8b8614020000
                         xor.s             ecx, ecx                                      // 0x00755d38    33c9
                         mov               cl, byte ptr [edi]                            // 0x00755d3a    8a0f
                         add               ecx, 0x4                                      // 0x00755d3c    83c104
                         add.s             eax, ecx                                      // 0x00755d3f    03c1
                         {disp32} mov      dword ptr [esi + 0x00000214], eax             // 0x00755d41    898614020000
_jmp_addr_0x00755d47:    pop               edi                                           // 0x00755d47    5f
                         pop               esi                                           // 0x00755d48    5e
                         mov               eax, 0x00000001                               // 0x00755d49    b801000000
                         pop               ebx                                           // 0x00755d4e    5b
                         ret               0x0004                                        // 0x00755d4f    c20400
                         nop                                                             // 0x00755d52    90
                         nop                                                             // 0x00755d53    90
                         nop                                                             // 0x00755d54    90
                         nop                                                             // 0x00755d55    90
                         nop                                                             // 0x00755d56    90
                         nop                                                             // 0x00755d57    90
                         nop                                                             // 0x00755d58    90
                         nop                                                             // 0x00755d59    90
                         nop                                                             // 0x00755d5a    90
                         nop                                                             // 0x00755d5b    90
                         nop                                                             // 0x00755d5c    90
                         nop                                                             // 0x00755d5d    90
                         nop                                                             // 0x00755d5e    90
                         nop                                                             // 0x00755d5f    90
?LoadMagicTreeReaction@Villager@@QAEIAAVGameOSFile@@@Z:
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226994]        // 0x00755d60    a194c9be00
                         test              eax, eax                                      // 0x00755d65    85c0
                         push              ebx                                           // 0x00755d67    53
                         push              esi                                           // 0x00755d68    56
                         {disp8} mov       esi, dword ptr [esp + 0x0c]                   // 0x00755d69    8b74240c
                         mov.s             ebx, ecx                                      // 0x00755d6d    8bd9
                         push              edi                                           // 0x00755d6f    57
                         {disp32} lea      edi, dword ptr [ebx + 0x0000010c]             // 0x00755d70    8dbb0c010000
                         {disp8} je        _jmp_addr_0x00755da8                          // 0x00755d76    7430
                         push              0x0                                           // 0x00755d78    6a00
                         push              0x4                                           // 0x00755d7a    6a04
                         push              edi                                           // 0x00755d7c    57
                         mov.s             ecx, esi                                      // 0x00755d7d    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x00755d7f    e85c6b0600
                         cmp               eax, 0x03                                     // 0x00755d84    83f803
                         {disp8} jne       _jmp_addr_0x00755d93                          // 0x00755d87    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000 // 0x00755d89    c70594c9be0000000000
_jmp_addr_0x00755d93:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x00755d93    8b8e14020000
                         xor.s             eax, eax                                      // 0x00755d99    33c0
                         mov               al, byte ptr [edi]                            // 0x00755d9b    8a07
                         add               eax, 0x04                                     // 0x00755d9d    83c004
                         add.s             ecx, eax                                      // 0x00755da0    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x00755da2    898e14020000
_jmp_addr_0x00755da8:    {disp32} mov      eax, dword ptr [data_bytes + 0x226994]        // 0x00755da8    a194c9be00
                         test              eax, eax                                      // 0x00755dad    85c0
                         {disp32} lea      edi, dword ptr [ebx + 0x00000110]             // 0x00755daf    8dbb10010000
                         {disp8} je        _jmp_addr_0x00755de7                          // 0x00755db5    7430
                         push              0x0                                           // 0x00755db7    6a00
                         push              0x4                                           // 0x00755db9    6a04
                         push              edi                                           // 0x00755dbb    57
                         mov.s             ecx, esi                                      // 0x00755dbc    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x00755dbe    e81d6b0600
                         cmp               eax, 0x03                                     // 0x00755dc3    83f803
                         {disp8} jne       _jmp_addr_0x00755dd2                          // 0x00755dc6    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000 // 0x00755dc8    c70594c9be0000000000
_jmp_addr_0x00755dd2:    {disp32} mov      eax, dword ptr [esi + 0x00000214]             // 0x00755dd2    8b8614020000
                         xor.s             ecx, ecx                                      // 0x00755dd8    33c9
                         mov               cl, byte ptr [edi]                            // 0x00755dda    8a0f
                         add               ecx, 0x4                                      // 0x00755ddc    83c104
                         add.s             eax, ecx                                      // 0x00755ddf    03c1
                         {disp32} mov      dword ptr [esi + 0x00000214], eax             // 0x00755de1    898614020000
_jmp_addr_0x00755de7:    pop               edi                                           // 0x00755de7    5f
                         pop               esi                                           // 0x00755de8    5e
                         mov               eax, 0x00000001                               // 0x00755de9    b801000000
                         pop               ebx                                           // 0x00755dee    5b
                         ret               0x0004                                        // 0x00755def    c20400
                         nop                                                             // 0x00755df2    90
                         nop                                                             // 0x00755df3    90
                         nop                                                             // 0x00755df4    90
                         nop                                                             // 0x00755df5    90
                         nop                                                             // 0x00755df6    90
                         nop                                                             // 0x00755df7    90
                         nop                                                             // 0x00755df8    90
                         nop                                                             // 0x00755df9    90
                         nop                                                             // 0x00755dfa    90
                         nop                                                             // 0x00755dfb    90
                         nop                                                             // 0x00755dfc    90
                         nop                                                             // 0x00755dfd    90
                         nop                                                             // 0x00755dfe    90
                         nop                                                             // 0x00755dff    90
?SaveHideInBuilding@Villager@@QAEIAAVGameOSFile@@@Z:
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226990]        // 0x00755e00    a190c9be00
                         test              eax, eax                                      // 0x00755e05    85c0
                         push              ebx                                           // 0x00755e07    53
                         push              esi                                           // 0x00755e08    56
                         push              edi                                           // 0x00755e09    57
                         mov.s             ebx, ecx                                      // 0x00755e0a    8bd9
                         {disp8} je        _jmp_addr_0x00755e87                          // 0x00755e0c    7479
                         {disp8} mov       esi, dword ptr [esp + 0x10]                   // 0x00755e0e    8b742410
                         push              0x0                                           // 0x00755e12    6a00
                         push              0x4                                           // 0x00755e14    6a04
                         {disp32} lea      edi, dword ptr [ebx + 0x0000010c]             // 0x00755e16    8dbb0c010000
                         push              edi                                           // 0x00755e1c    57
                         mov.s             ecx, esi                                      // 0x00755e1d    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x00755e1f    e8fc6a0600
                         cmp               eax, 0x03                                     // 0x00755e24    83f803
                         {disp8} jne       _jmp_addr_0x00755e33                          // 0x00755e27    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000 // 0x00755e29    c70590c9be0000000000
_jmp_addr_0x00755e33:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x00755e33    8b8e14020000
                         xor.s             eax, eax                                      // 0x00755e39    33c0
                         mov               al, byte ptr [edi]                            // 0x00755e3b    8a07
                         add               eax, 0x04                                     // 0x00755e3d    83c004
                         add.s             ecx, eax                                      // 0x00755e40    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x00755e42    898e14020000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226990]        // 0x00755e48    a190c9be00
                         test              eax, eax                                      // 0x00755e4d    85c0
                         {disp8} je        _jmp_addr_0x00755e87                          // 0x00755e4f    7436
                         push              0x0                                           // 0x00755e51    6a00
                         push              0x8                                           // 0x00755e53    6a08
                         {disp32} lea      edi, dword ptr [ebx + 0x00000110]             // 0x00755e55    8dbb10010000
                         push              edi                                           // 0x00755e5b    57
                         mov.s             ecx, esi                                      // 0x00755e5c    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x00755e5e    e8bd6a0600
                         cmp               eax, 0x03                                     // 0x00755e63    83f803
                         {disp8} jne       _jmp_addr_0x00755e72                          // 0x00755e66    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000 // 0x00755e68    c70590c9be0000000000
_jmp_addr_0x00755e72:    {disp32} mov      eax, dword ptr [esi + 0x00000214]             // 0x00755e72    8b8614020000
                         xor.s             ecx, ecx                                      // 0x00755e78    33c9
                         mov               cl, byte ptr [edi]                            // 0x00755e7a    8a0f
                         add               ecx, 0x8                                      // 0x00755e7c    83c108
                         add.s             eax, ecx                                      // 0x00755e7f    03c1
                         {disp32} mov      dword ptr [esi + 0x00000214], eax             // 0x00755e81    898614020000
_jmp_addr_0x00755e87:    pop               edi                                           // 0x00755e87    5f
                         pop               esi                                           // 0x00755e88    5e
                         mov               eax, 0x00000001                               // 0x00755e89    b801000000
                         pop               ebx                                           // 0x00755e8e    5b
                         ret               0x0004                                        // 0x00755e8f    c20400
                         nop                                                             // 0x00755e92    90
                         nop                                                             // 0x00755e93    90
                         nop                                                             // 0x00755e94    90
                         nop                                                             // 0x00755e95    90
                         nop                                                             // 0x00755e96    90
                         nop                                                             // 0x00755e97    90
                         nop                                                             // 0x00755e98    90
                         nop                                                             // 0x00755e99    90
                         nop                                                             // 0x00755e9a    90
                         nop                                                             // 0x00755e9b    90
                         nop                                                             // 0x00755e9c    90
                         nop                                                             // 0x00755e9d    90
                         nop                                                             // 0x00755e9e    90
                         nop                                                             // 0x00755e9f    90
?LoadHideInBuilding@Villager@@QAEIAAVGameOSFile@@@Z:
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226994]        // 0x00755ea0    a194c9be00
                         test              eax, eax                                      // 0x00755ea5    85c0
                         push              ebx                                           // 0x00755ea7    53
                         push              esi                                           // 0x00755ea8    56
                         {disp8} mov       esi, dword ptr [esp + 0x0c]                   // 0x00755ea9    8b74240c
                         mov.s             ebx, ecx                                      // 0x00755ead    8bd9
                         push              edi                                           // 0x00755eaf    57
                         {disp32} lea      edi, dword ptr [ebx + 0x0000010c]             // 0x00755eb0    8dbb0c010000
                         {disp8} je        _jmp_addr_0x00755ee8                          // 0x00755eb6    7430
                         push              0x0                                           // 0x00755eb8    6a00
                         push              0x4                                           // 0x00755eba    6a04
                         push              edi                                           // 0x00755ebc    57
                         mov.s             ecx, esi                                      // 0x00755ebd    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x00755ebf    e81c6a0600
                         cmp               eax, 0x03                                     // 0x00755ec4    83f803
                         {disp8} jne       _jmp_addr_0x00755ed3                          // 0x00755ec7    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000 // 0x00755ec9    c70594c9be0000000000
_jmp_addr_0x00755ed3:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x00755ed3    8b8e14020000
                         xor.s             eax, eax                                      // 0x00755ed9    33c0
                         mov               al, byte ptr [edi]                            // 0x00755edb    8a07
                         add               eax, 0x04                                     // 0x00755edd    83c004
                         add.s             ecx, eax                                      // 0x00755ee0    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x00755ee2    898e14020000
_jmp_addr_0x00755ee8:    {disp32} mov      eax, dword ptr [data_bytes + 0x226994]        // 0x00755ee8    a194c9be00
                         test              eax, eax                                      // 0x00755eed    85c0
                         {disp32} lea      edi, dword ptr [ebx + 0x00000110]             // 0x00755eef    8dbb10010000
                         {disp8} je        _jmp_addr_0x00755f27                          // 0x00755ef5    7430
                         push              0x0                                           // 0x00755ef7    6a00
                         push              0x8                                           // 0x00755ef9    6a08
                         push              edi                                           // 0x00755efb    57
                         mov.s             ecx, esi                                      // 0x00755efc    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x00755efe    e8dd690600
                         cmp               eax, 0x03                                     // 0x00755f03    83f803
                         {disp8} jne       _jmp_addr_0x00755f12                          // 0x00755f06    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000 // 0x00755f08    c70594c9be0000000000
_jmp_addr_0x00755f12:    {disp32} mov      eax, dword ptr [esi + 0x00000214]             // 0x00755f12    8b8614020000
                         xor.s             ecx, ecx                                      // 0x00755f18    33c9
                         mov               cl, byte ptr [edi]                            // 0x00755f1a    8a0f
                         add               ecx, 0x8                                      // 0x00755f1c    83c108
                         add.s             eax, ecx                                      // 0x00755f1f    03c1
                         {disp32} mov      dword ptr [esi + 0x00000214], eax             // 0x00755f21    898614020000
_jmp_addr_0x00755f27:    pop               edi                                           // 0x00755f27    5f
                         pop               esi                                           // 0x00755f28    5e
                         mov               eax, 0x00000001                               // 0x00755f29    b801000000
                         pop               ebx                                           // 0x00755f2e    5b
                         ret               0x0004                                        // 0x00755f2f    c20400
                         nop                                                             // 0x00755f32    90
                         nop                                                             // 0x00755f33    90
                         nop                                                             // 0x00755f34    90
                         nop                                                             // 0x00755f35    90
                         nop                                                             // 0x00755f36    90
                         nop                                                             // 0x00755f37    90
                         nop                                                             // 0x00755f38    90
                         nop                                                             // 0x00755f39    90
                         nop                                                             // 0x00755f3a    90
                         nop                                                             // 0x00755f3b    90
                         nop                                                             // 0x00755f3c    90
                         nop                                                             // 0x00755f3d    90
                         nop                                                             // 0x00755f3e    90
                         nop                                                             // 0x00755f3f    90
?SaveShieldReaction@Villager@@QAEIAAVGameOSFile@@@Z:
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226990]        // 0x00755f40    a190c9be00
                         test              eax, eax                                      // 0x00755f45    85c0
                         {disp8} je        _jmp_addr_0x00755f8f                          // 0x00755f47    7446
                         push              esi                                           // 0x00755f49    56
                         push              edi                                           // 0x00755f4a    57
                         {disp8} mov       edi, dword ptr [esp + 0x0c]                   // 0x00755f4b    8b7c240c
                         push              0x0                                           // 0x00755f4f    6a00
                         {disp32} lea      esi, dword ptr [ecx + 0x0000010c]             // 0x00755f51    8db10c010000
                         push              0x8                                           // 0x00755f57    6a08
                         push              esi                                           // 0x00755f59    56
                         mov.s             ecx, edi                                      // 0x00755f5a    8bcf
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x00755f5c    e8bf690600
                         cmp               eax, 0x03                                     // 0x00755f61    83f803
                         {disp8} jne       _jmp_addr_0x00755f70                          // 0x00755f64    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000 // 0x00755f66    c70590c9be0000000000
_jmp_addr_0x00755f70:    {disp32} mov      ecx, dword ptr [edi + 0x00000214]             // 0x00755f70    8b8f14020000
                         xor.s             eax, eax                                      // 0x00755f76    33c0
                         mov               al, byte ptr [esi]                            // 0x00755f78    8a06
                         add               eax, 0x08                                     // 0x00755f7a    83c008
                         add.s             ecx, eax                                      // 0x00755f7d    03c8
                         {disp32} mov      dword ptr [edi + 0x00000214], ecx             // 0x00755f7f    898f14020000
                         pop               edi                                           // 0x00755f85    5f
                         mov               eax, 0x00000001                               // 0x00755f86    b801000000
                         pop               esi                                           // 0x00755f8b    5e
                         ret               0x0004                                        // 0x00755f8c    c20400
_jmp_addr_0x00755f8f:    mov               eax, 0x00000001                               // 0x00755f8f    b801000000
                         ret               0x0004                                        // 0x00755f94    c20400
                         nop                                                             // 0x00755f97    90
                         nop                                                             // 0x00755f98    90
                         nop                                                             // 0x00755f99    90
                         nop                                                             // 0x00755f9a    90
                         nop                                                             // 0x00755f9b    90
                         nop                                                             // 0x00755f9c    90
                         nop                                                             // 0x00755f9d    90
                         nop                                                             // 0x00755f9e    90
                         nop                                                             // 0x00755f9f    90
?LoadShieldReaction@Villager@@QAEIAAVGameOSFile@@@Z:
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226994]        // 0x00755fa0    a194c9be00
                         test              eax, eax                                      // 0x00755fa5    85c0
                         push              edi                                           // 0x00755fa7    57
                         {disp32} lea      edi, dword ptr [ecx + 0x0000010c]             // 0x00755fa8    8db90c010000
                         {disp8} je        _jmp_addr_0x00755fef                          // 0x00755fae    743f
                         push              esi                                           // 0x00755fb0    56
                         {disp8} mov       esi, dword ptr [esp + 0x0c]                   // 0x00755fb1    8b74240c
                         push              0x0                                           // 0x00755fb5    6a00
                         push              0x8                                           // 0x00755fb7    6a08
                         push              edi                                           // 0x00755fb9    57
                         mov.s             ecx, esi                                      // 0x00755fba    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x00755fbc    e81f690600
                         cmp               eax, 0x03                                     // 0x00755fc1    83f803
                         {disp8} jne       _jmp_addr_0x00755fd0                          // 0x00755fc4    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000 // 0x00755fc6    c70594c9be0000000000
_jmp_addr_0x00755fd0:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x00755fd0    8b8e14020000
                         xor.s             eax, eax                                      // 0x00755fd6    33c0
                         mov               al, byte ptr [edi]                            // 0x00755fd8    8a07
                         add               eax, 0x08                                     // 0x00755fda    83c008
                         add.s             ecx, eax                                      // 0x00755fdd    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x00755fdf    898e14020000
                         pop               esi                                           // 0x00755fe5    5e
                         mov               eax, 0x00000001                               // 0x00755fe6    b801000000
                         pop               edi                                           // 0x00755feb    5f
                         ret               0x0004                                        // 0x00755fec    c20400
_jmp_addr_0x00755fef:    mov               eax, 0x00000001                               // 0x00755fef    b801000000
                         pop               edi                                           // 0x00755ff4    5f
                         ret               0x0004                                        // 0x00755ff5    c20400
                         nop                                                             // 0x00755ff8    90
                         nop                                                             // 0x00755ff9    90
                         nop                                                             // 0x00755ffa    90
                         nop                                                             // 0x00755ffb    90
                         nop                                                             // 0x00755ffc    90
                         nop                                                             // 0x00755ffd    90
                         nop                                                             // 0x00755ffe    90
                         nop                                                             // 0x00755fff    90
?SetVillagerDisciple@Villager@@QAEIPAVGameThing@@W4VILLAGER_DISCIPLE@@H@Z:
                         push              ebx                                           // 0x00756000    53
                         {disp8} mov       ebx, dword ptr [esp + 0x0c]                   // 0x00756001    8b5c240c
                         test              ebx, ebx                                      // 0x00756005    85db
                         push              esi                                           // 0x00756007    56
                         mov.s             esi, ecx                                      // 0x00756008    8bf1
                         {disp8} jl        _jmp_addr_0x00756011                          // 0x0075600a    7c05
                         cmp               ebx, 0x0d                                     // 0x0075600c    83fb0d
                         {disp8} jl        _jmp_addr_0x00756018                          // 0x0075600f    7c07
_jmp_addr_0x00756011:    pop               esi                                           // 0x00756011    5e
                         xor.s             eax, eax                                      // 0x00756012    33c0
                         pop               ebx                                           // 0x00756014    5b
                         ret               0x000c                                        // 0x00756015    c20c00
_jmp_addr_0x00756018:    mov               eax, dword ptr [esi]                          // 0x00756018    8b06
                         mov.s             ecx, esi                                      // 0x0075601a    8bce
                         call              dword ptr [eax + 0x48]                        // 0x0075601c    ff5048
                         test              eax, eax                                      // 0x0075601f    85c0
                         {disp8} je        _jmp_addr_0x00756059                          // 0x00756021    7436
                         xor.s             eax, eax                                      // 0x00756023    33c0
                         {disp32} mov      al, byte ptr [esi + 0x000000f2]               // 0x00756025    8a86f2000000
                         cmp.s             eax, ebx                                      // 0x0075602b    3bc3
                         {disp8} je        _jmp_addr_0x00756059                          // 0x0075602d    742a
                         mov               edx, dword ptr [esi]                          // 0x0075602f    8b16
                         push              eax                                           // 0x00756031    50
                         mov.s             ecx, esi                                      // 0x00756032    8bce
                         call              dword ptr [edx + 0x48]                        // 0x00756034    ff5248
                         mov.s             ecx, eax                                      // 0x00756037    8bc8
                         add               ecx, 0x00000610                               // 0x00756039    81c110060000
                         call              ?DecrementNumOfDisciples@TownStats@@QAEXW4VILLAGER_DISCIPLE@@@Z                          // 0x0075603f    e83c3cffff
                         mov               eax, dword ptr [esi]                          // 0x00756044    8b06
                         push              ebx                                           // 0x00756046    53
                         mov.s             ecx, esi                                      // 0x00756047    8bce
                         call              dword ptr [eax + 0x48]                        // 0x00756049    ff5048
                         mov.s             ecx, eax                                      // 0x0075604c    8bc8
                         add               ecx, 0x00000610                               // 0x0075604e    81c110060000
                         call              ?IncrementNumOfDisciples@TownStats@@QAEXW4VILLAGER_DISCIPLE@@@Z                          // 0x00756054    e8073cffff
_jmp_addr_0x00756059:    test              ebx, ebx                                      // 0x00756059    85db
                         {disp8} je        _jmp_addr_0x007560ab                          // 0x0075605b    744e
                         xor.s             ecx, ecx                                      // 0x0075605d    33c9
                         {disp32} mov      cx, word ptr [esi + 0x000000e0]               // 0x0075605f    668b8ee0000000
                         {disp32} lea      edx, dword ptr [ebx * 0x8 + 0x00000000]       // 0x00756066    8d14dd00000000
                         sub.s             edx, ebx                                      // 0x0075606d    2bd3
                         and               ecx, 0x0000fbff                               // 0x0075606f    81e1fffb0000
                         or                ecx, 0x200                                    // 0x00756075    81c900020000
                         {disp32} mov      word ptr [esi + 0x000000e0], cx               // 0x0075607b    66898ee0000000
                         {disp8} mov       ecx, dword ptr [esi + 0x40]                   // 0x00756082    8b4e40
                         mov               eax, dword ptr [ecx]                          // 0x00756085    8b01
                         {disp32} mov      edx, dword ptr [edx * 0x4 + 0x0099a200]       // 0x00756087    8b149500a29900
                         call              dword ptr [eax + 0xcc]                        // 0x0075608e    ff90cc000000
                         mov               eax, dword ptr [esi]                          // 0x00756094    8b06
                         mov.s             ecx, esi                                      // 0x00756096    8bce
                         call              dword ptr [eax + 0x1c]                        // 0x00756098    ff501c
                         {disp32} mov      byte ptr [esi + 0x000000f2], bl               // 0x0075609b    889ef2000000
                         pop               esi                                           // 0x007560a1    5e
                         mov               eax, 0x00000001                               // 0x007560a2    b801000000
                         pop               ebx                                           // 0x007560a7    5b
                         ret               0x000c                                        // 0x007560a8    c20c00
_jmp_addr_0x007560ab:    {disp8} mov       ecx, dword ptr [esi + 0x40]                   // 0x007560ab    8b4e40
                         and               word ptr [esi + 0x000000e0], -0x0601          // 0x007560ae    6681a6e0000000fff9
                         mov               eax, dword ptr [ecx]                          // 0x007560b7    8b01
                         xor.s             edx, edx                                      // 0x007560b9    33d2
                         call              dword ptr [eax + 0xcc]                        // 0x007560bb    ff90cc000000
                         {disp32} mov      byte ptr [esi + 0x000000f2], bl               // 0x007560c1    889ef2000000
                         pop               esi                                           // 0x007560c7    5e
                         mov               eax, 0x00000001                               // 0x007560c8    b801000000
                         pop               ebx                                           // 0x007560cd    5b
                         ret               0x000c                                        // 0x007560ce    c20c00
                         nop                                                             // 0x007560d1    90
                         nop                                                             // 0x007560d2    90
                         nop                                                             // 0x007560d3    90
                         nop                                                             // 0x007560d4    90
                         nop                                                             // 0x007560d5    90
                         nop                                                             // 0x007560d6    90
                         nop                                                             // 0x007560d7    90
                         nop                                                             // 0x007560d8    90
                         nop                                                             // 0x007560d9    90
                         nop                                                             // 0x007560da    90
                         nop                                                             // 0x007560db    90
                         nop                                                             // 0x007560dc    90
                         nop                                                             // 0x007560dd    90
                         nop                                                             // 0x007560de    90
                         nop                                                             // 0x007560df    90
?GetDiscipleStateIfInteractedWith@Villager@@UAEIPAVGInterfaceStatus@@PAVVillager@@@Z:
                         push              ebx                                           // 0x007560e0    53
                         push              esi                                           // 0x007560e1    56
                         push              edi                                           // 0x007560e2    57
                         {disp8} mov       edi, dword ptr [esp + 0x14]                   // 0x007560e3    8b7c2414
                         mov.s             esi, ecx                                      // 0x007560e7    8bf1
                         cmp.s             edi, esi                                      // 0x007560e9    3bfe
                         {disp8} jne       _jmp_addr_0x007560fb                          // 0x007560eb    750e
                         xor.s             eax, eax                                      // 0x007560ed    33c0
                         {disp32} mov      al, byte ptr [esi + 0x000000f2]               // 0x007560ef    8a86f2000000
                         pop               edi                                           // 0x007560f5    5f
                         pop               esi                                           // 0x007560f6    5e
                         pop               ebx                                           // 0x007560f7    5b
                         ret               0x0008                                        // 0x007560f8    c20800
_jmp_addr_0x007560fb:    mov               eax, dword ptr [esi]                          // 0x007560fb    8b06
                         mov.s             ecx, esi                                      // 0x007560fd    8bce
                         call              dword ptr [eax + 0xd4]                        // 0x007560ff    ff90d4000000
                         test              eax, eax                                      // 0x00756105    85c0
                         {disp8} je        _jmp_addr_0x00756168                          // 0x00756107    745f
                         {disp8} mov       ecx, dword ptr [esp + 0x10]                   // 0x00756109    8b4c2410
                         mov               edx, dword ptr [ecx]                          // 0x0075610d    8b11
                         call              dword ptr [edx + 0x1c]                        // 0x0075610f    ff521c
                         mov.s             ebx, eax                                      // 0x00756112    8bd8
                         mov               eax, dword ptr [esi]                          // 0x00756114    8b06
                         mov.s             ecx, esi                                      // 0x00756116    8bce
                         call              dword ptr [eax + 0x1c]                        // 0x00756118    ff501c
                         cmp.s             ebx, eax                                      // 0x0075611b    3bd8
                         {disp8} jne       _jmp_addr_0x00756168                          // 0x0075611d    7549
                         mov               edx, dword ptr [edi]                          // 0x0075611f    8b17
                         mov.s             ecx, edi                                      // 0x00756121    8bcf
                         call              dword ptr [edx + 0x1c]                        // 0x00756123    ff521c
                         mov.s             ebx, eax                                      // 0x00756126    8bd8
                         mov               eax, dword ptr [esi]                          // 0x00756128    8b06
                         mov.s             ecx, esi                                      // 0x0075612a    8bce
                         call              dword ptr [eax + 0x1c]                        // 0x0075612c    ff501c
                         cmp.s             ebx, eax                                      // 0x0075612f    3bd8
                         {disp8} jne       _jmp_addr_0x00756168                          // 0x00756131    7535
                         mov.s             ecx, esi                                      // 0x00756133    8bce
                         call              _jmp_addr_0x00761090                          // 0x00756135    e856af0000
                         test              eax, eax                                      // 0x0075613a    85c0
                         {disp8} je        _jmp_addr_0x00756168                          // 0x0075613c    742a
                         mov.s             ecx, edi                                      // 0x0075613e    8bcf
                         call              _jmp_addr_0x00761090                          // 0x00756140    e84baf0000
                         test              eax, eax                                      // 0x00756145    85c0
                         {disp8} je        _jmp_addr_0x00756168                          // 0x00756147    741f
                         {disp8} mov       edx, dword ptr [esi + 0x28]                   // 0x00756149    8b5628
                         {disp8} mov       ecx, dword ptr [edi + 0x28]                   // 0x0075614c    8b4f28
                         {disp32} mov      eax, dword ptr [edx + 0x000001f8]             // 0x0075614f    8b82f8010000
                         cmp               eax, dword ptr [ecx + 0x000001f8]             // 0x00756155    3b81f8010000
                         {disp8} je        _jmp_addr_0x00756168                          // 0x0075615b    740b
                         pop               edi                                           // 0x0075615d    5f
                         pop               esi                                           // 0x0075615e    5e
                         mov               eax, 0x00000005                               // 0x0075615f    b805000000
                         pop               ebx                                           // 0x00756164    5b
                         ret               0x0008                                        // 0x00756165    c20800
_jmp_addr_0x00756168:    pop               edi                                           // 0x00756168    5f
                         pop               esi                                           // 0x00756169    5e
                         xor.s             eax, eax                                      // 0x0075616a    33c0
                         pop               ebx                                           // 0x0075616c    5b
                         ret               0x0008                                        // 0x0075616d    c20800
_jmp_addr_0x00756170:    {disp8} mov       eax, dword ptr [ecx + 0x40]                   // 0x00756170    8b4140
                         {disp8} mov       ecx, dword ptr [esp + 0x04]                   // 0x00756173    8b4c2404
                         {disp32} mov      dword ptr [data_bytes + 0x4f39e4], eax        // 0x00756177    a3e499eb00
                         {disp8} lea       eax, dword ptr [ecx + -0x01]                  // 0x0075617c    8d41ff
                         cmp               eax, 0x09                                     // 0x0075617f    83f809
                         {disp8} ja        _jmp_addr_0x007561fd                          // 0x00756182    7779
                         jmp               dword ptr [eax*4 + 0x756200]                  // 0x00756184    ff248500627500
                         {disp32} mov      dword ptr [data_bytes + 0x4f39e8], 0x00000000 // 0x0075618b    c705e899eb0000000000
                         ret               0x0004                                        // 0x00756195    c20400
                         {disp32} mov      dword ptr [data_bytes + 0x4f39e8], 0x00000001 // 0x00756198    c705e899eb0001000000
                         ret               0x0004                                        // 0x007561a2    c20400
                         {disp32} mov      dword ptr [data_bytes + 0x4f39e8], 0x00000002 // 0x007561a5    c705e899eb0002000000
                         ret               0x0004                                        // 0x007561af    c20400
                         {disp32} mov      dword ptr [data_bytes + 0x4f39e8], 0x00000003 // 0x007561b2    c705e899eb0003000000
                         ret               0x0004                                        // 0x007561bc    c20400
                         {disp32} mov      dword ptr [data_bytes + 0x4f39e8], 0x00000004 // 0x007561bf    c705e899eb0004000000
                         ret               0x0004                                        // 0x007561c9    c20400
                         {disp32} mov      dword ptr [data_bytes + 0x4f39e8], 0x00000006 // 0x007561cc    c705e899eb0006000000
                         ret               0x0004                                        // 0x007561d6    c20400
                         {disp32} mov      dword ptr [data_bytes + 0x4f39e8], 0x00000007 // 0x007561d9    c705e899eb0007000000
                         ret               0x0004                                        // 0x007561e3    c20400
                         {disp32} mov      dword ptr [data_bytes + 0x4f39e8], 0x00000005 // 0x007561e6    c705e899eb0005000000
                         ret               0x0004                                        // 0x007561f0    c20400
                         {disp32} mov      dword ptr [data_bytes + 0x4f39e8], 0x00000008 // 0x007561f3    c705e899eb0008000000
_jmp_addr_0x007561fd:    ret               0x0004                                        // 0x007561fd    c20400

// Snippet: jmptbl, [0x00756200, 0x00756228)
.byte 0x98, 0x61, 0x75, 0x00      // 0x00756200
.byte 0xb2, 0x61, 0x75, 0x00      // 0x00756204
.byte 0xcc, 0x61, 0x75, 0x00      // 0x00756208
.byte 0xbf, 0x61, 0x75, 0x00      // 0x0075620c
.byte 0xa5, 0x61, 0x75, 0x00      // 0x00756210
.byte 0xe6, 0x61, 0x75, 0x00      // 0x00756214
.byte 0x8b, 0x61, 0x75, 0x00      // 0x00756218
.byte 0xd9, 0x61, 0x75, 0x00      // 0x0075621c
.byte 0xe6, 0x61, 0x75, 0x00      // 0x00756220
.byte 0xf3, 0x61, 0x75, 0x00      // 0x00756224

// Snippet: db, [0x00756228, 0x00756230)
.byte 0x90, 0x90, 0x90, 0x90      // 0x00756228
.byte 0x90, 0x90, 0x90, 0x90      // 0x0075622c

