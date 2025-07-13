.intel_syntax noprefix
.align 16

.extern ?Init@Abode@@QAEXHII@Z
.extern _jmp_addr_0x00403190
.extern _jmp_addr_0x00403d20
.extern ?CreateAbodeSurroundingObjects@Abode@@QAEXXZ
.extern _jmp_addr_0x00405890
.extern _jmp_addr_0x00436960
.extern ??3Base@@SAXPAXK@Z
.extern _jmp_addr_0x004e3ee0
.extern _jmp_addr_0x0050aad0
.extern _Create__5FieldFRC9MapCoordsPC14GFieldTypeInfoP4Townffi
.extern @__ct__13MultiMapFixedFRC9MapCoordsPC18GMultiMapFixedInfofffi@32
.extern _jmp_addr_0x0052e280
.extern ?ToBeDeleted@MultiMapFixed@@UAEXH@Z
.extern _jmp_addr_0x005315a0
.extern _jmp_addr_0x00595d70
.extern ?Delete@Object@@UAEXH@Z
.extern _jmp_addr_0x00637cc0
.extern ?GetInspectObjectPos@Object@@UAE_NPAVVillager@@PAUMapCoords@@@Z
.extern _jmp_addr_0x007228d0
.extern ?GetPSysFireLocalRndFlamePos@Object@@UAE_NPAULHPoint@@PAH@Z
.extern _jmp_addr_0x00732d60
.extern _jmp_addr_0x007374c0
.extern @AddStructureToTown__4TownFP13MultiMapFixed@12
.extern _jmp_addr_0x00739a60
.extern _Create__10TownCentreFRC9MapCoordsPC10GAbodeInfoP4Townfffi
.extern _jmp_addr_0x0076d4c0
.extern ?Create@Wonder@@SAPAV1@ABUMapCoords@@PBVGAbodeInfo@@PAVTown@@MMMH@Z
.extern _jmp_addr_0x00779590
.extern  ___dl__FPv
.extern ??1FragMesh@@QAE@XZ
.extern ?Release@LH3DSmoke@@QAEXXZ
.extern ?SetInverse@LHMatrix@@QAEXAAU1@@Z
.extern _jmp_addr_0x007fb810
.extern _jmp_addr_0x007fbac0
.extern _rdata_float1p0
.extern ?Delete@Abode@@UAEXH@Z
.extern ?ToBeDeleted@Abode@@UAEXH@Z

.globl ??1Abode@@UAE@XZ
.globl ?SetZero@Abode@@QAEXXZ
.globl ?Create@Abode@@SAPAV1@PBUMapCoords@@PBVGAbodeInfo@@PAVTown@@MMIIMHH@Z
.globl ?CanBeSleptNextToByCreature@Fixed@@UAE_NPAVCreature@@@Z
.globl ?CanBePickedUpByCreature@Fixed@@UAE_NPAVCreature@@@Z
.globl ?CanBeSetOnFire@Fixed@@UAE_NPAVCreature@@@Z
.globl ?CanBeDestroyedByStoning@Fixed@@UAE_NPAVCreature@@@Z
.globl ?CanBeCrushed@Fixed@@UAE_NXZ
.globl ?VillagerMustAvoid@Fixed@@UAE_NPAVVillager@@@Z
.globl ?GetTownArtifact@Fixed@@UAEPAVGameThing@@XZ
.globl ?IsTownArtifact@Fixed@@UAE_NXZ
.globl ?IsFootpathLink@MultiMapFixed@@UAE_NXZ
.globl ?GetFootpathLink@MultiMapFixed@@UAEPAVGFootpathLink@@XZ
.globl ?CastMultiMapFixed@MultiMapFixed@@UAEPAV1@XZ
.globl ?IsBeingBuilt@MultiMapFixed@@UAE_NPAVCreature@@@Z
.globl ?NeedsRepair@MultiMapFixed@@UAE_NPAVCreature@@@Z
.globl ?AsMultiMapFixed@MultiMapFixed@@UAEPAV1@XZ
.globl ?IsSolidToNewAbode@MultiMapFixed@@UAE_NXZ
.globl ?IsPlaytimeStructure@MultiMapFixed@@UAE_NXZ
.globl ?IsPlaytimeStarted@MultiMapFixed@@UAE_NXZ
.globl ?AddPlaytimeVillager@MultiMapFixed@@UAE_NPAVVillager@@@Z
.globl ?GetResourceDropPosForComputerPlayer@MultiMapFixed@@UAEXPAUMapCoords@@@Z
.globl ?GetPercentBuilt@MultiMapFixed@@UAEMXZ
.globl ?GetPercentRepaired@MultiMapFixed@@UAEMXZ
.globl ?GetBuildingSiteWood@MultiMapFixed@@UAEIPAI@Z
.globl ?GetBuildingObject@MultiMapFixed@@UAEPAXXZ
.globl ?SetPower@MultiMapFixed@@UAEXM@Z
.globl ?GetResourcePos@MultiMapFixed@@UAEPAUMapCoords@@W4RESOURCE_TYPE@@H@Z
.globl ?IsPoisonedResource@MultiMapFixed@@UAE_NXZ
.globl ?GetResourceNearestEdge@MultiMapFixed@@UAEPAUMapCoords@@PAU2@W4RESOURCE_TYPE@@PAVObject@@H@Z
.globl ?AddToPlayer@MultiMapFixed@@UAEXXZ
.globl ?RemoveFromPlayer@MultiMapFixed@@UAEXXZ
.globl ?CalulateAmountOverMaximum@MultiMapFixed@@UAEHW4RESOURCE_TYPE@@@Z
.globl ?GetCollideData@MultiMapFixed@@UAEPAVNewCollide@@XZ
.globl ??_GAbode@@UAEPAXI@Z
.globl ?Delete@Abode@@UAEXH@Z
.globl ?ToBeDeleted@Abode@@UAEXH@Z
.globl ?GetTown@Abode@@UAEPAVTown@@XZ
.globl ?CastAbode@Abode@@UAEPAV1@XZ
.globl ?GetDebugText@Abode@@UAEPADXZ
.globl ?GetSaveType@Abode@@UAEIXZ
.globl ?GetArrivePos@Abode@@UAEPAUMapCoords@@PAU2@@Z
.globl ?GetCreatureBeliefType@Abode@@UAEIXZ
.globl ?GetOrigin@Abode@@UAEIXZ
.globl ?IsCastShadowAtNight@Abode@@UAE_NXZ
.globl ?IsAbode@Abode@@UAE_NXZ
.globl ?GetCreatureMimicType@Abode@@UAEIXZ
.globl ?IsHouse@Abode@@UAE_NXZ
.globl ?DestroyedByBeam@Abode@@UAEXXZ
.globl ?GetPSysFireLocalRndFlamePos@Abode@@UAE_NPAULHPoint@@PAH@Z
.globl ?GetPhysicsConstantsType@Abode@@UAEIXZ
.globl ?SetUpPhysOb@Abode@@UAEXPAVPhysOb@@@Z
.globl ?GetInspectObjectPos@Abode@@UAE_NPAVVillager@@PAUMapCoords@@@Z
.globl ?IsRepaired@Abode@@UAE_NXZ
.globl ?IsBuilt@Abode@@UAE_NXZ
.globl ?GetDestructionMesh@Abode@@UAEPAVLH3DMesh@@XZ
.globl ?SetTown@Abode@@UAEXPAVTown@@@Z
.globl ?GetShouldNotBeAddedToPlanned@Abode@@UAE_NXZ
.globl ?SetShouldNotBeAddedToPlanned@Abode@@UAEX_N@Z
.globl ?RestartBeingFunctional@Abode@@UAEXXZ
.globl ?CausesTownEmergencyIfDamaged@Abode@@UAE_NXZ

??1Abode@@UAE@XZ:
                         push               esi                                      // 0x00402b60    56
                         mov.s              esi, ecx                                 // 0x00402b61    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x0000008c]        // 0x00402b63    8b8e8c000000
                         test               ecx, ecx                                 // 0x00402b69    85c9
                         push               edi                                      // 0x00402b6b    57
                         mov                dword ptr [esi], 0x008a9a64              // 0x00402b6c    c706649a8a00
                         {disp8} je         _jmp_addr_0x00402b83                     // 0x00402b72    740f
                         call               ?Release@LH3DSmoke@@QAEXXZ               // 0x00402b74    e897613f00
                         {disp32} mov       dword ptr [esi + 0x0000008c], 0x00000000 // 0x00402b79    c7868c00000000000000
_jmp_addr_0x00402b83:    {disp32} mov       edi, dword ptr [esi + 0x00000090]        // 0x00402b83    8bbe90000000
                         test               edi, edi                                 // 0x00402b89    85ff
                         {disp8} je         _jmp_addr_0x00402ba7                     // 0x00402b8b    741a
                         mov.s              ecx, edi                                 // 0x00402b8d    8bcf
                         call               ??1FragMesh@@QAE@XZ                      // 0x00402b8f    e84c453f00
                         push               edi                                      // 0x00402b94    57
                         call                ___dl__FPv                              // 0x00402b95    e8fec23a00
                         add                esp, 0x04                                // 0x00402b9a    83c404
                         {disp32} mov       dword ptr [esi + 0x00000090], 0x00000000 // 0x00402b9d    c7869000000000000000
_jmp_addr_0x00402ba7:    mov.s              ecx, esi                                 // 0x00402ba7    8bce
                         call               _jmp_addr_0x0052e280                     // 0x00402ba9    e8d2b61200
                         pop                edi                                      // 0x00402bae    5f
                         pop                esi                                      // 0x00402baf    5e
                         ret                                                         // 0x00402bb0    c3
                         nop                                                         // 0x00402bb1    90
                         nop                                                         // 0x00402bb2    90
                         nop                                                         // 0x00402bb3    90
                         nop                                                         // 0x00402bb4    90
                         nop                                                         // 0x00402bb5    90
                         nop                                                         // 0x00402bb6    90
                         nop                                                         // 0x00402bb7    90
                         nop                                                         // 0x00402bb8    90
                         nop                                                         // 0x00402bb9    90
                         nop                                                         // 0x00402bba    90
                         nop                                                         // 0x00402bbb    90
                         nop                                                         // 0x00402bbc    90
                         nop                                                         // 0x00402bbd    90
                         nop                                                         // 0x00402bbe    90
                         nop                                                         // 0x00402bbf    90
?SetZero@Abode@@QAEXXZ:
                         xor.s              eax, eax                                 // 0x00402bc0    33c0
                         {disp32} mov       byte ptr [ecx + 0x000000b6], al          // 0x00402bc2    8881b6000000
                         {disp32} mov       byte ptr [ecx + 0x000000b4], al          // 0x00402bc8    8881b4000000
                         {disp32} mov       byte ptr [ecx + 0x000000b7], al          // 0x00402bce    8881b7000000
                         {disp32} mov       dword ptr [ecx + 0x00000094], eax        // 0x00402bd4    898194000000
                         {disp32} mov       dword ptr [ecx + 0x000000bc], eax        // 0x00402bda    8981bc000000
                         {disp32} mov       dword ptr [ecx + 0x000000c0], eax        // 0x00402be0    8981c0000000
                         {disp32} mov       dword ptr [ecx + 0x0000008c], eax        // 0x00402be6    89818c000000
                         {disp32} mov       dword ptr [ecx + 0x00000090], eax        // 0x00402bec    898190000000
                         {disp8} mov        byte ptr [ecx + 0x7c], al                // 0x00402bf2    88417c
                         {disp32} mov       dword ptr [ecx + 0x000000b0], eax        // 0x00402bf5    8981b0000000
                         {disp32} mov       byte ptr [ecx + 0x000000b5], al          // 0x00402bfb    8881b5000000
                         {disp32} mov       byte ptr [ecx + 0x000000b9], al          // 0x00402c01    8881b9000000
                         ret                                                         // 0x00402c07    c3
                         nop                                                         // 0x00402c08    90
                         nop                                                         // 0x00402c09    90
                         nop                                                         // 0x00402c0a    90
                         nop                                                         // 0x00402c0b    90
                         nop                                                         // 0x00402c0c    90
                         nop                                                         // 0x00402c0d    90
                         nop                                                         // 0x00402c0e    90
                         nop                                                         // 0x00402c0f    90
?Delete@Abode@@UAEXH@Z:
                         push               esi                                      // 0x00402c10    56
                         mov.s              esi, ecx                                 // 0x00402c11    8bf1
                         mov                eax, dword ptr [esi]                     // 0x00402c13    8b06
                         call               dword ptr [eax + 0x910]                  // 0x00402c15    ff9010090000
                         mov                edx, dword ptr [esi]                     // 0x00402c1b    8b16
                         mov.s              ecx, esi                                 // 0x00402c1d    8bce
                         call               dword ptr [edx + 0x48]                   // 0x00402c1f    ff5248
                         test               eax, eax                                 // 0x00402c22    85c0
                         {disp8} je         _jmp_addr_0x00402c4c                     // 0x00402c24    7426
                         {disp32} mov       eax, dword ptr [_game]                   // 0x00402c26    a15c19d000
                         {disp8} mov        ecx, dword ptr [eax + 0x14]              // 0x00402c2b    8b4814
                         test               ch, -0x80                                // 0x00402c2e    f6c580
                         {disp8} jne        _jmp_addr_0x00402c3d                     // 0x00402c31    750a
                         mov                edx, dword ptr [esi]                     // 0x00402c33    8b16
                         mov.s              ecx, esi                                 // 0x00402c35    8bce
                         call               dword ptr [edx + 0x90c]                  // 0x00402c37    ff920c090000
_jmp_addr_0x00402c3d:    mov                eax, dword ptr [esi]                     // 0x00402c3d    8b06
                         push               esi                                      // 0x00402c3f    56
                         mov.s              ecx, esi                                 // 0x00402c40    8bce
                         call               dword ptr [eax + 0x48]                   // 0x00402c42    ff5048
                         mov.s              ecx, eax                                 // 0x00402c45    8bc8
                         call               _jmp_addr_0x00739a60                     // 0x00402c47    e8146e3300
_jmp_addr_0x00402c4c:    mov.s              ecx, esi                                 // 0x00402c4c    8bce
                         call               ?Delete@Object@@UAEXH@Z                  // 0x00402c4e    e84d3a2300
                         pop                esi                                      // 0x00402c53    5e
                         ret                                                         // 0x00402c54    c3
                         nop                                                         // 0x00402c55    90
                         nop                                                         // 0x00402c56    90
                         nop                                                         // 0x00402c57    90
                         nop                                                         // 0x00402c58    90
                         nop                                                         // 0x00402c59    90
                         nop                                                         // 0x00402c5a    90
                         nop                                                         // 0x00402c5b    90
                         nop                                                         // 0x00402c5c    90
                         nop                                                         // 0x00402c5d    90
                         nop                                                         // 0x00402c5e    90
                         nop                                                         // 0x00402c5f    90
?ToBeDeleted@Abode@@UAEXH@Z:
                         push               esi                                      // 0x00402c60    56
                         mov.s              esi, ecx                                 // 0x00402c61    8bf1
                         mov                eax, dword ptr [esi]                     // 0x00402c63    8b06
                         push               edi                                      // 0x00402c65    57
                         call               dword ptr [eax + 0x48]                   // 0x00402c66    ff5048
                         mov                edx, dword ptr [esi]                     // 0x00402c69    8b16
                         mov.s              ecx, esi                                 // 0x00402c6b    8bce
                         mov.s              edi, eax                                 // 0x00402c6d    8bf8
                         call               dword ptr [edx + 0x910]                  // 0x00402c6f    ff9210090000
                         test               edi, edi                                 // 0x00402c75    85ff
                         {disp8} je         _jmp_addr_0x00402c98                     // 0x00402c77    741f
                         {disp32} mov       eax, dword ptr [_game]                   // 0x00402c79    a15c19d000
                         {disp8} mov        ecx, dword ptr [eax + 0x14]              // 0x00402c7e    8b4814
                         test               ch, -0x80                                // 0x00402c81    f6c580
                         {disp8} jne        _jmp_addr_0x00402c98                     // 0x00402c84    7512
                         mov                edx, dword ptr [esi]                     // 0x00402c86    8b16
                         mov.s              ecx, esi                                 // 0x00402c88    8bce
                         call               dword ptr [edx + 0x90c]                  // 0x00402c8a    ff920c090000
                         push               esi                                      // 0x00402c90    56
                         mov.s              ecx, edi                                 // 0x00402c91    8bcf
                         call               _jmp_addr_0x00739a60                     // 0x00402c93    e8c86d3300
_jmp_addr_0x00402c98:    mov.s              ecx, esi                                 // 0x00402c98    8bce
                         call               _jmp_addr_0x00403d20                     // 0x00402c9a    e881100000
                         {disp8} mov        eax, dword ptr [esp + 0x0c]              // 0x00402c9f    8b44240c
                         push               eax                                      // 0x00402ca3    50
                         mov.s              ecx, esi                                 // 0x00402ca4    8bce
                         call               ?ToBeDeleted@MultiMapFixed@@UAEXH@Z      // 0x00402ca6    e805b61200
                         pop                edi                                      // 0x00402cab    5f
                         pop                esi                                      // 0x00402cac    5e
                         ret                0x0004                                   // 0x00402cad    c20400
?DestroyedByBeam@Abode@@UAEXXZ:
                         push               esi                                      // 0x00402cb0    56
                         push               edi                                      // 0x00402cb1    57
                         mov.s              esi, ecx                                 // 0x00402cb2    8bf1
                         mov                edi, dword ptr [esi]                     // 0x00402cb4    8b3e
                         push               0x0                                      // 0x00402cb6    6a00
                         call               dword ptr [edi + 0x11c]                  // 0x00402cb8    ff971c010000
                         push               ecx                                      // 0x00402cbe    51
                         mov.s              ecx, esi                                 // 0x00402cbf    8bce
                         fstp               dword ptr [esp]                          // 0x00402cc1    d91c24
                         call               dword ptr [edi + 0x5b8]                  // 0x00402cc4    ff97b8050000
                         fstp               st(0)                                    // 0x00402cca    ddd8
                         pop                edi                                      // 0x00402ccc    5f
                         pop                esi                                      // 0x00402ccd    5e
                         ret                                                         // 0x00402cce    c3
                         nop                                                         // 0x00402ccf    90
?GetInspectObjectPos@Abode@@UAE_NPAVVillager@@PAUMapCoords@@@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x08]              // 0x00402cd0    8b442408
                         {disp8} mov        edx, dword ptr [esp + 0x04]              // 0x00402cd4    8b542404
                         push               eax                                      // 0x00402cd8    50
                         push               edx                                      // 0x00402cd9    52
                         call               ?GetInspectObjectPos@Object@@UAE_NPAVVillager@@PAUMapCoords@@@Z                     // 0x00402cda    e8d15f2300
                         ret                0x0008                                   // 0x00402cdf    c20800
                         nop                                                         // 0x00402ce2    90
                         nop                                                         // 0x00402ce3    90
                         nop                                                         // 0x00402ce4    90
                         nop                                                         // 0x00402ce5    90
                         nop                                                         // 0x00402ce6    90
                         nop                                                         // 0x00402ce7    90
                         nop                                                         // 0x00402ce8    90
                         nop                                                         // 0x00402ce9    90
                         nop                                                         // 0x00402cea    90
                         nop                                                         // 0x00402ceb    90
                         nop                                                         // 0x00402cec    90
                         nop                                                         // 0x00402ced    90
                         nop                                                         // 0x00402cee    90
                         nop                                                         // 0x00402cef    90
?GetPSysFireLocalRndFlamePos@Abode@@UAE_NPAULHPoint@@PAH@Z:
                         sub                esp, 0x30                                // 0x00402cf0    83ec30
                         push               esi                                      // 0x00402cf3    56
                         {disp8} mov        esi, dword ptr [esp + 0x38]              // 0x00402cf4    8b742438
                         push               edi                                      // 0x00402cf8    57
                         mov.s              edi, ecx                                 // 0x00402cf9    8bf9
                         {disp32} mov       ecx, dword ptr [edi + 0x00000090]        // 0x00402cfb    8b8f90000000
                         test               ecx, ecx                                 // 0x00402d01    85c9
                         {disp32} je        _jmp_addr_0x00402da3                     // 0x00402d03    0f849a000000
                         push               0x006de590                               // 0x00402d09    6890e56d00
                         push               esi                                      // 0x00402d0e    56
                         call               _jmp_addr_0x0076d4c0                     // 0x00402d0f    e8aca73600
                         test               al, al                                   // 0x00402d14    84c0
                         {disp32} je        _jmp_addr_0x00402da3                     // 0x00402d16    0f8487000000
                         {disp8} mov        edx, dword ptr [edi + 0x40]              // 0x00402d1c    8b5740
                         add                edx, 0x14                                // 0x00402d1f    83c214
                         {disp8} lea        ecx, dword ptr [esp + 0x08]              // 0x00402d22    8d4c2408
                         call               ?SetInverse@LHMatrix@@QAEXAAU1@@Z        // 0x00402d26    e865853f00
                         fld                dword ptr [esi]                          // 0x00402d2b    d906
                         {disp8} fld        dword ptr [esi + 0x04]                   // 0x00402d2d    d94604
                         {disp8} mov        eax, dword ptr [esp + 0x40]              // 0x00402d30    8b442440
                         {disp8} fld        dword ptr [esi + 0x08]                   // 0x00402d34    d94608
                         pop                edi                                      // 0x00402d37    5f
                         {disp8} fld        dword ptr [esp + 0x1c]                   // 0x00402d38    d944241c
                         fmul               st, st(1)                                // 0x00402d3c    d8c9
                         {disp8} fld        dword ptr [esp + 0x10]                   // 0x00402d3e    d9442410
                         fmul               st, st(3)                                // 0x00402d42    d8cb
                         faddp              st(1), st                                // 0x00402d44    dec1
                         {disp8} fld        dword ptr [esp + 0x04]                   // 0x00402d46    d9442404
                         fmul               st, st(4)                                // 0x00402d4a    d8cc
                         faddp              st(1), st                                // 0x00402d4c    dec1
                         {disp8} fadd       dword ptr [esp + 0x28]                   // 0x00402d4e    d8442428
                         fstp               dword ptr [esi]                          // 0x00402d52    d91e
                         {disp8} fld        dword ptr [esp + 0x20]                   // 0x00402d54    d9442420
                         fmul               st, st(1)                                // 0x00402d58    d8c9
                         {disp8} fld        dword ptr [esp + 0x14]                   // 0x00402d5a    d9442414
                         fmul               st, st(3)                                // 0x00402d5e    d8cb
                         faddp              st(1), st                                // 0x00402d60    dec1
                         {disp8} fld        dword ptr [esp + 0x08]                   // 0x00402d62    d9442408
                         fmul               st, st(4)                                // 0x00402d66    d8cc
                         faddp              st(1), st                                // 0x00402d68    dec1
                         {disp8} fadd       dword ptr [esp + 0x2c]                   // 0x00402d6a    d844242c
                         {disp8} fstp       dword ptr [esi + 0x04]                   // 0x00402d6e    d95e04
                         {disp8} fld        dword ptr [esp + 0x24]                   // 0x00402d71    d9442424
                         fmul               st, st(1)                                // 0x00402d75    d8c9
                         {disp8} fld        dword ptr [esp + 0x18]                   // 0x00402d77    d9442418
                         fmul               st, st(3)                                // 0x00402d7b    d8cb
                         faddp              st(1), st                                // 0x00402d7d    dec1
                         {disp8} fld        dword ptr [esp + 0x0c]                   // 0x00402d7f    d944240c
                         fmul               st, st(4)                                // 0x00402d83    d8cc
                         faddp              st(1), st                                // 0x00402d85    dec1
                         {disp8} fadd       dword ptr [esp + 0x30]                   // 0x00402d87    d8442430
                         {disp8} fstp       dword ptr [esi + 0x08]                   // 0x00402d8b    d95e08
                         mov                dword ptr [eax], 0x00000000              // 0x00402d8e    c70000000000
                         mov                al, 0x01                                 // 0x00402d94    b001
                         fstp               st(0)                                    // 0x00402d96    ddd8
                         pop                esi                                      // 0x00402d98    5e
                         fstp               st(0)                                    // 0x00402d99    ddd8
                         fstp               st(0)                                    // 0x00402d9b    ddd8
                         add                esp, 0x30                                // 0x00402d9d    83c430
                         ret                0x0008                                   // 0x00402da0    c20800
_jmp_addr_0x00402da3:    {disp8} mov        ecx, dword ptr [esp + 0x40]              // 0x00402da3    8b4c2440
                         push               ecx                                      // 0x00402da7    51
                         push               esi                                      // 0x00402da8    56
                         mov.s              ecx, edi                                 // 0x00402da9    8bcf
                         call               ?GetPSysFireLocalRndFlamePos@Object@@UAE_NPAULHPoint@@PAH@Z                     // 0x00402dab    e8c0f93200
                         pop                edi                                      // 0x00402db0    5f
                         pop                esi                                      // 0x00402db1    5e
                         add                esp, 0x30                                // 0x00402db2    83c430
                         ret                0x0008                                   // 0x00402db5    c20800
                         nop                                                         // 0x00402db8    90
                         nop                                                         // 0x00402db9    90
                         nop                                                         // 0x00402dba    90
                         nop                                                         // 0x00402dbb    90
                         nop                                                         // 0x00402dbc    90
                         nop                                                         // 0x00402dbd    90
                         nop                                                         // 0x00402dbe    90
                         nop                                                         // 0x00402dbf    90
?GetPhysicsConstantsType@Abode@@UAEIXZ:
                         xor.s              eax, eax                                 // 0x00402dc0    33c0
                         ret                                                         // 0x00402dc2    c3
                         nop                                                         // 0x00402dc3    90
                         nop                                                         // 0x00402dc4    90
                         nop                                                         // 0x00402dc5    90
                         nop                                                         // 0x00402dc6    90
                         nop                                                         // 0x00402dc7    90
                         nop                                                         // 0x00402dc8    90
                         nop                                                         // 0x00402dc9    90
                         nop                                                         // 0x00402dca    90
                         nop                                                         // 0x00402dcb    90
                         nop                                                         // 0x00402dcc    90
                         nop                                                         // 0x00402dcd    90
                         nop                                                         // 0x00402dce    90
                         nop                                                         // 0x00402dcf    90
?SetUpPhysOb@Abode@@UAEXPAVPhysOb@@@Z:
                         {disp32} mov       eax, dword ptr [ecx + 0x00000090]        // 0x00402dd0    8b8190000000
                         test               eax, eax                                 // 0x00402dd6    85c0
                         {disp8} je         _jmp_addr_0x00402de0                     // 0x00402dd8    7406
                         mov                dword ptr [eax], 0x00000000              // 0x00402dda    c70000000000
_jmp_addr_0x00402de0:    mov                eax, dword ptr [ecx]                     // 0x00402de0    8b01
                         push               esi                                      // 0x00402de2    56
                         push               0x0                                      // 0x00402de3    6a00
                         call               dword ptr [eax + 0x788]                  // 0x00402de5    ff9088070000
                         {disp8} mov        esi, dword ptr [esp + 0x0c]              // 0x00402deb    8b74240c
                         lea                ecx, dword ptr [eax + eax * 0x2]         // 0x00402def    8d0c40
                         {disp32} lea       edx, dword ptr [ecx * 0x8 + 0x00cc63e0]  // 0x00402df2    8d14cde063cc00
                         push               edx                                      // 0x00402df9    52
                         push               0x44fa0000                               // 0x00402dfa    680000fa44
                         mov.s              ecx, esi                                 // 0x00402dff    8bce
                         call               _jmp_addr_0x007fb810                     // 0x00402e01    e80a8a3f00
                         mov.s              ecx, esi                                 // 0x00402e06    8bce
                         call               _jmp_addr_0x007fbac0                     // 0x00402e08    e8b38c3f00
                         pop                esi                                      // 0x00402e0d    5e
                         ret                0x0004                                   // 0x00402e0e    c20400
                         nop                                                         // 0x00402e11    90
                         nop                                                         // 0x00402e12    90
                         nop                                                         // 0x00402e13    90
                         nop                                                         // 0x00402e14    90
                         nop                                                         // 0x00402e15    90
                         nop                                                         // 0x00402e16    90
                         nop                                                         // 0x00402e17    90
                         nop                                                         // 0x00402e18    90
                         nop                                                         // 0x00402e19    90
                         nop                                                         // 0x00402e1a    90
                         nop                                                         // 0x00402e1b    90
                         nop                                                         // 0x00402e1c    90
                         nop                                                         // 0x00402e1d    90
                         nop                                                         // 0x00402e1e    90
                         nop                                                         // 0x00402e1f    90
?Create@Abode@@SAPAV1@PBUMapCoords@@PBVGAbodeInfo@@PAVTown@@MMIIMHH@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x08]              // 0x00402e20    8b442408
                         {disp32} mov       ecx, dword ptr [eax + 0x00000120]        // 0x00402e24    8b8820010000
                         cmp                ecx, 0x00000100                          // 0x00402e2a    81f900010000
                         push               esi                                      // 0x00402e30    56
                         {disp32} jg        _jmp_addr_0x00402f4e                     // 0x00402e31    0f8f17010000
                         {disp32} je        _jmp_addr_0x00402f25                     // 0x00402e37    0f84e8000000
                         add                ecx, -0xa                                // 0x00402e3d    83c1f6
                         cmp                ecx, 0x7a                                // 0x00402e40    83f97a
                         {disp32} ja        _jmp_addr_0x00402ffb                     // 0x00402e43    0f87b2010000
                         xor.s              edx, edx                                 // 0x00402e49    33d2
                         {disp32} mov       dl, byte ptr [ecx + 0x004030b0]          // 0x00402e4b    8a91b0304000
                         jmp                dword ptr [edx*4 + 0x403098]             // 0x00402e51    ff249598304000
                         {disp8} mov        ecx, dword ptr [esp + 0x28]              // 0x00402e58    8b4c2428
                         {disp8} mov        edx, dword ptr [esp + 0x24]              // 0x00402e5c    8b542424
                         push               ecx                                      // 0x00402e60    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x00402e61    8b4c241c
                         push               edx                                      // 0x00402e65    52
                         {disp8} mov        edx, dword ptr [esp + 0x1c]              // 0x00402e66    8b54241c
                         push               ecx                                      // 0x00402e6a    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x00402e6b    8b4c241c
                         push               edx                                      // 0x00402e6f    52
                         {disp8} mov        edx, dword ptr [esp + 0x18]              // 0x00402e70    8b542418
                         push               ecx                                      // 0x00402e74    51
                         push               eax                                      // 0x00402e75    50
                         push               edx                                      // 0x00402e76    52
                         call               _jmp_addr_0x007374c0                     // 0x00402e77    e844463300
                         {disp32} jmp       _jmp_addr_0x0040306d                     // 0x00402e7c    e9ec010000
                         {disp8} mov        ecx, dword ptr [esp + 0x28]              // 0x00402e81    8b4c2428
                         {disp8} mov        edx, dword ptr [esp + 0x24]              // 0x00402e85    8b542424
                         push               ecx                                      // 0x00402e89    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x00402e8a    8b4c241c
                         push               edx                                      // 0x00402e8e    52
                         {disp8} mov        edx, dword ptr [esp + 0x1c]              // 0x00402e8f    8b54241c
                         push               ecx                                      // 0x00402e93    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x00402e94    8b4c241c
                         push               edx                                      // 0x00402e98    52
                         {disp8} mov        edx, dword ptr [esp + 0x18]              // 0x00402e99    8b542418
                         push               ecx                                      // 0x00402e9d    51
                         push               eax                                      // 0x00402e9e    50
                         push               edx                                      // 0x00402e9f    52
                         call               _jmp_addr_0x00732d60                     // 0x00402ea0    e8bbfe3200
                         {disp32} jmp       _jmp_addr_0x0040306d                     // 0x00402ea5    e9c3010000
                         {disp8} mov        ecx, dword ptr [esp + 0x28]              // 0x00402eaa    8b4c2428
                         {disp8} mov        edx, dword ptr [esp + 0x24]              // 0x00402eae    8b542424
                         push               ecx                                      // 0x00402eb2    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x00402eb3    8b4c241c
                         push               edx                                      // 0x00402eb7    52
                         {disp8} mov        edx, dword ptr [esp + 0x1c]              // 0x00402eb8    8b54241c
                         push               ecx                                      // 0x00402ebc    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x00402ebd    8b4c241c
                         push               edx                                      // 0x00402ec1    52
                         {disp8} mov        edx, dword ptr [esp + 0x18]              // 0x00402ec2    8b542418
                         push               ecx                                      // 0x00402ec6    51
                         push               eax                                      // 0x00402ec7    50
                         push               edx                                      // 0x00402ec8    52
                         call               _jmp_addr_0x00405890                     // 0x00402ec9    e8c2290000
                         {disp32} jmp       _jmp_addr_0x0040306d                     // 0x00402ece    e99a010000
                         {disp8} mov        ecx, dword ptr [esp + 0x28]              // 0x00402ed3    8b4c2428
                         {disp8} mov        edx, dword ptr [esp + 0x24]              // 0x00402ed7    8b542424
                         push               ecx                                      // 0x00402edb    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x00402edc    8b4c241c
                         push               edx                                      // 0x00402ee0    52
                         {disp8} mov        edx, dword ptr [esp + 0x1c]              // 0x00402ee1    8b54241c
                         push               ecx                                      // 0x00402ee5    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x00402ee6    8b4c241c
                         push               edx                                      // 0x00402eea    52
                         {disp8} mov        edx, dword ptr [esp + 0x18]              // 0x00402eeb    8b542418
                         push               ecx                                      // 0x00402eef    51
                         push               eax                                      // 0x00402ef0    50
                         push               edx                                      // 0x00402ef1    52
                         call               _jmp_addr_0x0050aad0                     // 0x00402ef2    e8d97b1000
                         {disp32} jmp       _jmp_addr_0x0040306d                     // 0x00402ef7    e971010000
                         {disp8} mov        ecx, dword ptr [esp + 0x28]              // 0x00402efc    8b4c2428
                         {disp8} mov        edx, dword ptr [esp + 0x24]              // 0x00402f00    8b542424
                         push               ecx                                      // 0x00402f04    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x00402f05    8b4c241c
                         push               edx                                      // 0x00402f09    52
                         {disp8} mov        edx, dword ptr [esp + 0x1c]              // 0x00402f0a    8b54241c
                         push               ecx                                      // 0x00402f0e    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x00402f0f    8b4c241c
                         push               edx                                      // 0x00402f13    52
                         {disp8} mov        edx, dword ptr [esp + 0x18]              // 0x00402f14    8b542418
                         push               ecx                                      // 0x00402f18    51
                         push               eax                                      // 0x00402f19    50
                         push               edx                                      // 0x00402f1a    52
                         call               _jmp_addr_0x00779590                     // 0x00402f1b    e870663700
                         {disp32} jmp       _jmp_addr_0x0040306d                     // 0x00402f20    e948010000
_jmp_addr_0x00402f25:    {disp8} mov        ecx, dword ptr [esp + 0x28]              // 0x00402f25    8b4c2428
                         {disp8} mov        edx, dword ptr [esp + 0x24]              // 0x00402f29    8b542424
                         push               ecx                                      // 0x00402f2d    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x00402f2e    8b4c241c
                         push               edx                                      // 0x00402f32    52
                         {disp8} mov        edx, dword ptr [esp + 0x1c]              // 0x00402f33    8b54241c
                         push               ecx                                      // 0x00402f37    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x00402f38    8b4c241c
                         push               edx                                      // 0x00402f3c    52
                         {disp8} mov        edx, dword ptr [esp + 0x18]              // 0x00402f3d    8b542418
                         push               ecx                                      // 0x00402f41    51
                         push               eax                                      // 0x00402f42    50
                         push               edx                                      // 0x00402f43    52
                         call               ?Create@Wonder@@SAPAV1@ABUMapCoords@@PBVGAbodeInfo@@PAVTown@@MMMH@Z  // 0x00402f44    e8375f3700
                         {disp32} jmp       _jmp_addr_0x0040306d                     // 0x00402f49    e91f010000
_jmp_addr_0x00402f4e:    cmp                ecx, 0x00001004                          // 0x00402f4e    81f904100000
                         {disp32} jg        _jmp_addr_0x00402feb                     // 0x00402f54    0f8f91000000
                         {disp8} je         _jmp_addr_0x00402fc2                     // 0x00402f5a    7466
                         cmp                ecx, 0x00000204                          // 0x00402f5c    81f904020000
                         {disp8} je         _jmp_addr_0x00402f99                     // 0x00402f62    7435
                         cmp                ecx, 0x00000404                          // 0x00402f64    81f904040000
                         {disp32} jne       _jmp_addr_0x00402ffb                     // 0x00402f6a    0f858b000000
                         {disp8} mov        ecx, dword ptr [esp + 0x28]              // 0x00402f70    8b4c2428
                         {disp8} mov        edx, dword ptr [esp + 0x24]              // 0x00402f74    8b542424
                         push               ecx                                      // 0x00402f78    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x00402f79    8b4c241c
                         push               edx                                      // 0x00402f7d    52
                         {disp8} mov        edx, dword ptr [esp + 0x1c]              // 0x00402f7e    8b54241c
                         push               ecx                                      // 0x00402f82    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x00402f83    8b4c241c
                         push               edx                                      // 0x00402f87    52
                         {disp8} mov        edx, dword ptr [esp + 0x18]              // 0x00402f88    8b542418
                         push               ecx                                      // 0x00402f8c    51
                         push               eax                                      // 0x00402f8d    50
                         push               edx                                      // 0x00402f8e    52
                         call               _Create__10TownCentreFRC9MapCoordsPC10GAbodeInfoP4Townfffi                     // 0x00402f8f    e8fc0c3400
                         {disp32} jmp       _jmp_addr_0x0040306d                     // 0x00402f94    e9d4000000
_jmp_addr_0x00402f99:    {disp8} mov        ecx, dword ptr [esp + 0x28]              // 0x00402f99    8b4c2428
                         {disp8} mov        edx, dword ptr [esp + 0x24]              // 0x00402f9d    8b542424
                         push               ecx                                      // 0x00402fa1    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x00402fa2    8b4c241c
                         push               edx                                      // 0x00402fa6    52
                         {disp8} mov        edx, dword ptr [esp + 0x1c]              // 0x00402fa7    8b54241c
                         push               ecx                                      // 0x00402fab    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x00402fac    8b4c241c
                         push               edx                                      // 0x00402fb0    52
                         {disp8} mov        edx, dword ptr [esp + 0x18]              // 0x00402fb1    8b542418
                         push               ecx                                      // 0x00402fb5    51
                         push               eax                                      // 0x00402fb6    50
                         push               edx                                      // 0x00402fb7    52
                         call               _jmp_addr_0x00595d70                     // 0x00402fb8    e8b32d1900
                         {disp32} jmp       _jmp_addr_0x0040306d                     // 0x00402fbd    e9ab000000
_jmp_addr_0x00402fc2:    {disp8} mov        ecx, dword ptr [esp + 0x28]              // 0x00402fc2    8b4c2428
                         {disp8} mov        edx, dword ptr [esp + 0x24]              // 0x00402fc6    8b542424
                         push               ecx                                      // 0x00402fca    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x00402fcb    8b4c241c
                         push               edx                                      // 0x00402fcf    52
                         {disp8} mov        edx, dword ptr [esp + 0x1c]              // 0x00402fd0    8b54241c
                         push               ecx                                      // 0x00402fd4    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x00402fd5    8b4c241c
                         push               edx                                      // 0x00402fd9    52
                         {disp8} mov        edx, dword ptr [esp + 0x18]              // 0x00402fda    8b542418
                         push               ecx                                      // 0x00402fde    51
                         push               eax                                      // 0x00402fdf    50
                         push               edx                                      // 0x00402fe0    52
                         call               _jmp_addr_0x005315a0                     // 0x00402fe1    e8bae51200
                         {disp32} jmp       _jmp_addr_0x0040306d                     // 0x00402fe6    e982000000
_jmp_addr_0x00402feb:    cmp                ecx, 0x00002004                          // 0x00402feb    81f904200000
                         {disp8} je         _jmp_addr_0x00403049                     // 0x00402ff1    7456
                         cmp                ecx, 0x00004004                          // 0x00402ff3    81f904400000
                         {disp8} je         _jmp_addr_0x00403021                     // 0x00402ff9    7426
_jmp_addr_0x00402ffb:    {disp8} mov        ecx, dword ptr [esp + 0x28]              // 0x00402ffb    8b4c2428
                         {disp8} mov        edx, dword ptr [esp + 0x24]              // 0x00402fff    8b542424
                         push               ecx                                      // 0x00403003    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x00403004    8b4c241c
                         push               edx                                      // 0x00403008    52
                         {disp8} mov        edx, dword ptr [esp + 0x1c]              // 0x00403009    8b54241c
                         push               ecx                                      // 0x0040300d    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x0040300e    8b4c241c
                         push               edx                                      // 0x00403012    52
                         {disp8} mov        edx, dword ptr [esp + 0x18]              // 0x00403013    8b542418
                         push               ecx                                      // 0x00403017    51
                         push               eax                                      // 0x00403018    50
                         push               edx                                      // 0x00403019    52
                         call               _jmp_addr_0x00403190                     // 0x0040301a    e871010000
                         {disp8} jmp        _jmp_addr_0x0040306d                     // 0x0040301f    eb4c
_jmp_addr_0x00403021:    {disp8} mov        eax, dword ptr [esp + 0x28]              // 0x00403021    8b442428
                         {disp8} mov        ecx, dword ptr [esp + 0x24]              // 0x00403025    8b4c2424
                         {disp8} mov        edx, dword ptr [esp + 0x14]              // 0x00403029    8b542414
                         push               eax                                      // 0x0040302d    50
                         {disp8} mov        eax, dword ptr [esp + 0x14]              // 0x0040302e    8b442414
                         push               ecx                                      // 0x00403032    51
                         {disp8} mov        ecx, dword ptr [esp + 0x10]              // 0x00403033    8b4c2410
                         push               edx                                      // 0x00403037    52
                         push               eax                                      // 0x00403038    50
                         push               0x00ccf1c4                               // 0x00403039    68c4f1cc00
                         push               ecx                                      // 0x0040303e    51
                         call               _Create__5FieldFRC9MapCoordsPC14GFieldTypeInfoP4Townffi                     // 0x0040303f    e83c521200
                         add                esp, 0x18                                // 0x00403044    83c418
                         pop                esi                                      // 0x00403047    5e
                         ret                                                         // 0x00403048    c3
_jmp_addr_0x00403049:    {disp8} mov        edx, dword ptr [esp + 0x28]              // 0x00403049    8b542428
                         {disp8} mov        ecx, dword ptr [esp + 0x24]              // 0x0040304d    8b4c2424
                         push               edx                                      // 0x00403051    52
                         {disp8} mov        edx, dword ptr [esp + 0x1c]              // 0x00403052    8b54241c
                         push               ecx                                      // 0x00403056    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x00403057    8b4c241c
                         push               edx                                      // 0x0040305b    52
                         {disp8} mov        edx, dword ptr [esp + 0x1c]              // 0x0040305c    8b54241c
                         push               ecx                                      // 0x00403060    51
                         push               edx                                      // 0x00403061    52
                         push               eax                                      // 0x00403062    50
                         {disp8} mov        eax, dword ptr [esp + 0x20]              // 0x00403063    8b442420
                         push               eax                                      // 0x00403067    50
                         call               _jmp_addr_0x007228d0                     // 0x00403068    e863f83100
_jmp_addr_0x0040306d:    mov.s              esi, eax                                 // 0x0040306d    8bf0
                         add                esp, 0x1c                                // 0x0040306f    83c41c
                         test               esi, esi                                 // 0x00403072    85f6
                         {disp8} je         _jmp_addr_0x00403093                     // 0x00403074    741d
                         {disp8} mov        ecx, dword ptr [esp + 0x20]              // 0x00403076    8b4c2420
                         {disp8} mov        edx, dword ptr [esp + 0x1c]              // 0x0040307a    8b54241c
                         {disp8} mov        eax, dword ptr [esp + 0x2c]              // 0x0040307e    8b44242c
                         push               ecx                                      // 0x00403082    51
                         push               edx                                      // 0x00403083    52
                         push               eax                                      // 0x00403084    50
                         mov.s              ecx, esi                                 // 0x00403085    8bce
                         call               ?Init@Abode@@QAEXHII@Z                   // 0x00403087    e8a4000000
                         mov.s              ecx, esi                                 // 0x0040308c    8bce
                         call               ?CreateAbodeSurroundingObjects@Abode@@QAEXXZ                     // 0x0040308e    e86d0d0000
_jmp_addr_0x00403093:    mov.s              eax, esi                                 // 0x00403093    8bc6
                         pop                esi                                      // 0x00403095    5e
                         ret                                                         // 0x00403096    c3

// Snippet: db, [0x00403097, 0x00403098)
.byte 0x90                        // 0x00403097

// Snippet: jmptbl, [0x00403098, 0x004030b0)
.byte 0xaa, 0x2e, 0x40, 0x00      // 0x00403098
.byte 0x58, 0x2e, 0x40, 0x00      // 0x0040309c
.byte 0x81, 0x2e, 0x40, 0x00      // 0x004030a0
.byte 0xd3, 0x2e, 0x40, 0x00      // 0x004030a4
.byte 0xfc, 0x2e, 0x40, 0x00      // 0x004030a8
.byte 0xfb, 0x2f, 0x40, 0x00      // 0x004030ac

// Snippet: ijmptbl, [0x004030b0, 0x00403130)
.byte 0x00, 0x05, 0x05, 0x05      // 0x004030b0
.byte 0x05, 0x05, 0x05, 0x05      // 0x004030b4
.byte 0x05, 0x05, 0x01, 0x05      // 0x004030b8
.byte 0x05, 0x05, 0x05, 0x05      // 0x004030bc
.byte 0x05, 0x05, 0x05, 0x05      // 0x004030c0
.byte 0x05, 0x05, 0x05, 0x05      // 0x004030c4
.byte 0x05, 0x05, 0x02, 0x05      // 0x004030c8
.byte 0x05, 0x05, 0x05, 0x05      // 0x004030cc
.byte 0x05, 0x05, 0x05, 0x05      // 0x004030d0
.byte 0x05, 0x05, 0x05, 0x05      // 0x004030d4
.byte 0x05, 0x05, 0x05, 0x05      // 0x004030d8
.byte 0x05, 0x05, 0x05, 0x05      // 0x004030dc
.byte 0x05, 0x05, 0x05, 0x05      // 0x004030e0
.byte 0x05, 0x05, 0x05, 0x05      // 0x004030e4
.byte 0x05, 0x05, 0x03, 0x05      // 0x004030e8
.byte 0x05, 0x05, 0x05, 0x05      // 0x004030ec
.byte 0x05, 0x05, 0x05, 0x05      // 0x004030f0
.byte 0x05, 0x05, 0x05, 0x05      // 0x004030f4
.byte 0x05, 0x05, 0x05, 0x05      // 0x004030f8
.byte 0x05, 0x05, 0x05, 0x05      // 0x004030fc
.byte 0x05, 0x05, 0x05, 0x05      // 0x00403100
.byte 0x05, 0x05, 0x05, 0x05      // 0x00403104
.byte 0x05, 0x05, 0x05, 0x05      // 0x00403108
.byte 0x05, 0x05, 0x05, 0x05      // 0x0040310c
.byte 0x05, 0x05, 0x05, 0x05      // 0x00403110
.byte 0x05, 0x05, 0x05, 0x05      // 0x00403114
.byte 0x05, 0x05, 0x05, 0x05      // 0x00403118
.byte 0x05, 0x05, 0x05, 0x05      // 0x0040311c
.byte 0x05, 0x05, 0x05, 0x05      // 0x00403120
.byte 0x05, 0x05, 0x05, 0x05      // 0x00403124
.byte 0x05, 0x05, 0x04, 0x90      // 0x00403128
.byte 0x90, 0x90, 0x90, 0x90      // 0x0040312c

