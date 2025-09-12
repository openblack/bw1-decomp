.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x00407a20
.extern _jmp_addr_0x00408100
.extern ??0SetupControl@@QAE@HHHHHPA_W@Z
.extern @__ct__10SetupButtonFiiiiiPwi@36
.extern @__ct__9SetupListFiiiii@28
.extern @DeleteString__9SetupListFi@12
.extern @__ct__9SetupEditFiiiiiPwi@33
.extern @__ct__14SetupBigButtonFiiiPwiii@36
.extern @__ct__13SetupCheckBoxFiiibiPwi@33
.extern @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20
.extern ?DrawTextWrap@SetupThing@@SAMHHHHH_NPA_WHPAULH3DColor@@00@Z
.extern ?unadjust@SetupThing@@SAMAAH0@Z
.extern _jmp_addr_0x00411fc0
.extern ?DrawLine@SetupThing@@SAXHHHHKHMM@Z
.extern ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z
.extern ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z
.extern ?DrawBevBox@SetupThing@@SAXHHHHHHHK@Z
.extern ?IsBallFree@Ball@@QAE_NXZ
.extern _jmp_addr_0x004c80b0
.extern @Init__13DialogBoxBaseFUlUlPFiP8SetupBoxP12SetupControlii_v@20
.extern ?Destroy@DialogBoxBase@@UAEXXZ
.extern _jmp_addr_0x00513640
.extern _jmp_addr_0x0053b4a0
.extern _jmp_addr_0x005ea980
.extern ?LookAtObject@Living@@QAEIPAVGameThingWithPos@@K@Z
.extern ?GetReaction@Living@@QAEXXZ
.extern ?SetStateAnim@Living@@QAEXXZ
.extern _jmp_addr_0x005ecc20
.extern @SetState__12LivingActionFUlUc@16
.extern @SetupMoveToOnFootpath__6LivingFR16GameThingWithPosRC9MapCoordsUc@17
.extern _jmp_addr_0x005f6a70
.extern _jmp_addr_0x005f6b80
.extern _jmp_addr_0x005f6d80
.extern _jmp_addr_0x005f7d10
.extern _jmp_addr_0x005f80c0
.extern @__ct__9MapCoordsFRC7LHPoint@12
.extern ?IsWater@MapCoords@@QBEIXZ
.extern ?InBounds@MapCoords@@QBEIXZ
.extern _jmp_addr_0x0060aad0
.extern @SetupMobileMoveToPos__13MobileWallHugFRC9MapCoords14MOVE_TO_STATES@16
.extern ?SetupMobileMoveToObject@MobileWallHug@@QAEXPAVObject@@@Z
.extern ?EndPhysics@Object@@UAEXPAVPhysicsObject@@_N@Z
.extern _jmp_addr_0x00647460
.extern _jmp_addr_0x0066b9c0
.extern ?GameFloatRand@GRand@@SAMM@Z
.extern ?GetInfo@Reaction@@QBEPAVReactionInfo@@XZ
.extern _jmp_addr_0x006e4750
.extern _jmp_addr_0x00712f20
.extern _jmp_addr_0x00712fe0
.extern _jmp_addr_0x00713140
.extern _jmp_addr_0x00713a80
.extern _jmp_addr_0x00713b70
.extern _jmp_addr_0x00713cc0
.extern _jmp_addr_0x007436f0
.extern _jmp_addr_0x0074cd50
.extern ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z
.extern ?FastDistance@GUtils@@SAHABUMapCoords@@0@Z
.extern ?GetAngleFromXZ@GUtils@@SAGABUMapCoords@@0@Z
.extern _jmp_addr_0x0074d3e0
.extern _jmp_addr_0x0074d400
.extern _jmp_addr_0x0074e1d0
.extern _jmp_addr_0x0074e200
.extern ?VillagerDead@Villager@@QAEXW4DEATH_REASON@@PAVGPlayer@@MH@Z
.extern ?TestSpecial@Villager@@QAEXXZ
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern _LHFileLength__FPcPUl
.extern _LHLoadData__FPcPvUlPUl
.extern _atexit
.extern _sprintf
.extern ___RTDynamicCast
.extern _wcscpy
.extern _wcsncpy
.extern _wcslen
.extern _swprintf
.extern ??2@YAPAXI@Z
.extern _sscanf
.extern _iswspace
.extern __strcmpi
.extern __chkstk
.extern _strtok
.extern __strnicmp
.extern ___nw__FUl
.extern _jmp_addr_0x007de090
.extern _jmp_addr_0x007ded50
.extern _jmp_addr_0x007dee00
.extern @SetCursor__7LHMouseFPv19LH_MOUSE_IMAGE_TYPEi@20
.extern _jmp_addr_0x007e69d0
.extern _jmp_addr_0x007e6a30
.extern _jmp_addr_0x007faa50
.extern _jmp_addr_0x007faaf0
.extern ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z
.extern ?StartFrame@LH3DRender@@SAXXZ
.extern ?FinishFrame@LH3DRender@@QAEXXZ
.extern _CHAR2WCHAR__FPc
.extern @GetStringWidth__13GatheringTextFPwif@20
.extern @DrawText__13GatheringTextFPwfffffffffP9LH3DColoriii@64
.extern @DrawTextRaw__13GatheringTextFPwiffffP9LH3DColoriP9LH3DColorff@52
.extern _jmp_addr_0x00844d00
.extern _jmp_addr_0x00844d30
.extern _jmp_addr_0x00844e70
.extern _jmp_addr_0x008450b0
.extern _jmp_addr_0x00845420
.extern _jmp_addr_0x00845740

.globl ?AddReaction@Living@@UAEXPAVReaction@@W4VILLAGER_STATES@@@Z
.globl _jmp_addr_0x005f0fb0
.globl _jmp_addr_0x005f1010
.globl _jmp_addr_0x005f10b0
.globl ?StopReacting@Living@@UAEXXZ
.globl ?IsAvailableForReaction@Living@@UAE_NW4REACTION@@@Z
.globl ?ProcessReaction@Living@@QAEXXZ
.globl ?SetupLookAtObject@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z
.globl ?FleeFromSpellPriority@Living@@UAEEPAVReaction@@0@Z
.globl ?ReactToFlyingObjectPriority@Living@@UAEEPAVReaction@@0@Z
.globl ?NumGameTurnsToReactToPredatorFunction@Living@@UAEIPAVGameThingWithPos@@IM@Z
.globl ?NumGameTurnsBeforeReactingAgainToPredatorFunction@Living@@UAEIPAVGameThingWithPos@@IM@Z
.globl ?NumGameTurnsToReactToCreatureFunction@Living@@UAEIPAVGameThingWithPos@@IM@Z
.globl ?NumGameTurnsBeforeReactingAgainToCreatureFunction@Living@@UAEIPAVGameThingWithPos@@IM@Z
.globl ?FleeingFromObjectReaction@PuzzleHorse@@UAE_NXZ
.globl ?FleeFromObjectIfComingTowardsMe@Living@@QAEIPAVGameThingWithPos@@W4VILLAGER_STATES@@1@Z
.globl _jmp_addr_0x005f1e60
.globl ?LookingAtObjectReaction@PuzzleHorse@@UAE_NXZ
.globl ?FollowingObjectReaction@PuzzleHorse@@UAE_NXZ
.globl ?GotoFoodReaction@PuzzleHorse@@UAE_NXZ
.globl ?GotoWoodReaction@PuzzleHorse@@UAE_NXZ
.globl ?GetTopState@Living@@QBE?AW4VILLAGER_STATES@@XZ
.globl ?SetupMoveToObject@Living@@QAE_NPAVObject@@E@Z
.globl @SetupMoveToPos__6LivingFRC9MapCoordsUc@13
.globl @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13
.globl @SetTopState__6LivingFUc@12
.globl @SetCurrentAndDestinationState__6LivingFUcUc@16
.globl @SetState__6LivingFUlUc@16
.globl _jmp_addr_0x005f2af0
.globl _jmp_addr_0x005f3120
.globl _jmp_addr_0x005f32f0
.globl _jmp_addr_0x005f3cc0
.globl ?MakeTipVideo@@YAXXZ
.globl _jmp_addr_0x005f3d90
.globl ?StartTipOfTheDayText@@YAXXZ
.globl _RenderLoadingFrame__Fb
.globl _jmp_addr_0x005f5200
.globl _jmp_addr_0x005f5cf0

.globl _globl_ct_0x005f0eb0
.globl _globl_ct_0x005f0ee0
.globl _globl_ct_0x005f0f10
.globl _globl_ct_0x005f2740
.globl _globl_ct_0x005f2770
.globl _globl_ct_0x005f2790
.globl _globl_ct_0x005f27c0
.globl _globl_ct_0x005f3c40
.globl _globl_ct_0x005f3c70
.globl _globl_ct_0x005f3c90
.globl _globl_ct_0x005f5180
.globl _globl_ct_0x005f51b0
.globl _globl_ct_0x005f51d0
.globl _SetState__6LivingFUlUc
.globl _SetCurrentAndDestinationState__6LivingFUcUc
.globl _SetTopState__6LivingFUc
.globl ?EndPhysics@Villager@@UAEXPAVPhysicsObject@@_N@Z
.globl ?EndPhysics@Animal@@UAEXPAVPhysicsObject@@_N@Z
.globl ?StopReactingAndSetState@Living@@UAEXXZ
.globl ?SetupFleeFromObject@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z
.globl ?SetupFleeFromPredator@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z
.globl ?SetupLookAtSpell@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z
.globl ?SetupLookAtNiceSpell@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z
.globl ?SetupFollowObject@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z
.globl ?SetupReactToCreature@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z
.globl ?SetupReactToFood@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z
.globl ?SetupReactToMagicTree@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z
.globl ?SetupReactToFlyingObject@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z
.globl ?SetupReactToBall@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z
.globl ?SetupReactToCreatureGift@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z
.globl ?SetupReactToNewBuilding@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z
.globl ?FleeFromObjectPriority@Living@@UAEEPAVReaction@@0@Z
.globl ?FleeFromPredatorPriority@Living@@UAEEPAVReaction@@0@Z
.globl ?LookAtObjectPriority@Living@@UAEEPAVReaction@@0@Z
.globl ?FollowObjectPriority@Living@@UAEEPAVReaction@@0@Z
.globl ?LookAtSpellPriority@Living@@UAEEPAVReaction@@0@Z
.globl ?LookAtNiceSpellPriority@Living@@UAEEPAVReaction@@0@Z
.globl ?FollowSpellPriority@Living@@UAEEPAVReaction@@0@Z
.globl ?ReactToCreaturePriority@Living@@UAEEPAVReaction@@0@Z
.globl ?ReactToFoodPriority@Living@@UAEEPAVReaction@@0@Z
.globl ?ReactToWoodPriority@Living@@UAEEPAVReaction@@0@Z
.globl ?ReactToMagicTreePriority@Living@@UAEEPAVReaction@@0@Z
.globl ?ReactToBallPriority@Living@@UAEEPAVReaction@@0@Z
.globl ?ReactToMagicShieldPriority@Living@@UAEEPAVReaction@@0@Z
.globl ?ReactToCreatureGiftPriority@Living@@UAEEPAVReaction@@0@Z
.globl ?ReactToNewBuildingPriority@Living@@UAEEPAVReaction@@0@Z
.globl ?ReactToFaintingPriority@Living@@UAEEPAVReaction@@0@Z
.globl ?ReactToConfusedPriority@Living@@UAEEPAVReaction@@0@Z
.globl ?StandardNumGameTurnsToReactFunction@Living@@UAEIPAVGameThingWithPos@@IM@Z
.globl ?StandardNumGameTurnsBeforeReactingAgainFunction@Living@@UAEIPAVGameThingWithPos@@IM@Z
.globl ?NumGameTurnsToReactToBurningObjectFunction@Living@@UAEIPAVGameThingWithPos@@IM@Z
.globl ?NumGameTurnsBeforeReactingAgainToBurningObjectFunction@Living@@UAEIPAVGameThingWithPos@@IM@Z
.globl ?NumGameTurnsToReactToShieldFunction@Living@@UAEIPAVGameThingWithPos@@IM@Z
.globl ?NumGameTurnsBeforeReactingToShieldAgainFunction@Living@@UAEIPAVGameThingWithPos@@IM@Z
.globl ?GetFleeingPositionFromStationaryObject@Living@@UAEXPAUMapCoords@@PAVGameThingWithPos@@M@Z
.globl ?GetFleeingPositionFromMovingObject@Living@@UAEXPAUMapCoords@@PAVGameThingWithPos@@M@Z
.globl ?FleeingAndLookingAtObjectReaction@PuzzleHorse@@UAE_NXZ
.globl ?InspectObjectReaction@PuzzleHorse@@UAE_NXZ
.globl ?ArrivesAtFoodReaction@Living@@UAE_NXZ
.globl ?LookAtFlyingObjectReaction@Living@@UAE_NXZ
.globl ?AmILikelyToMove@Living@@UAE_NXZ
.globl ?StandardNumGameTurnsBeforeReactingToWoodAgainFunction@Living@@UAEIPAVGameThingWithPos@@IM@Z
.globl ?Init@LobbyBox@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z
.globl ?Destroy@LobbyBox@@UAEXXZ
.globl ?InitControls@LobbyBox@@UAEXXZ

start_0x005f0a60_0x005f6a70:
// Snippet: asm, [0x005f0a60, 0x005f69fe)
?EndPhysics@Villager@@UAEXPAVPhysicsObject@@_N@Z:
                         push               ebx                                           // 0x005f0a60    53
                         push               ebp                                           // 0x005f0a61    55
                         push               esi                                           // 0x005f0a62    56
                         push               edi                                           // 0x005f0a63    57
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x005f0a64    8b7c2414
                         test               edi, edi                                      // 0x005f0a68    85ff
                         mov.s              esi, ecx                                      // 0x005f0a6a    8bf1
                         mov                ebx, 0x00000003                               // 0x005f0a6c    bb03000000
                         {disp32} je        _jmp_addr_0x005f0b79                          // 0x005f0a71    0f8402010000
                         {disp32} fld       dword ptr [edi + 0x000000d8]                  // 0x005f0a77    d987d8000000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x25fcc]             // 0x005f0a7d    d81dccef8c00
                         fnstsw             ax                                            // 0x005f0a83    dfe0
                         test               ah, 0x01                                      // 0x005f0a85    f6c401
                         {disp8} je         _jmp_addr_0x005f0ac1                          // 0x005f0a88    7437
                         {disp32} lea       eax, dword ptr [edi + 0x000000e0]             // 0x005f0a8a    8d87e0000000
                         push               eax                                           // 0x005f0a90    50
                         mov                ebx, 0x00000001                               // 0x005f0a91    bb01000000
                         call               _jmp_addr_0x007faa50                          // 0x005f0a96    e8b59f2000
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x005f0a9b    d95c2418
                         add                esp, 0x04                                     // 0x005f0a9f    83c404
                         mov.s              ecx, edi                                      // 0x005f0aa2    8bcf
                         call               _jmp_addr_0x00647460                          // 0x005f0aa4    e8b7690500
                         test               eax, eax                                      // 0x005f0aa9    85c0
                         {disp32} je        _jmp_addr_0x005f0b58                          // 0x005f0aab    0f84a7000000
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                   // 0x005f0ab1    8d4e14
                         push               ecx                                           // 0x005f0ab4    51
                         push               0x3f000000                                    // 0x005f0ab5    680000003f
                         push               0x2                                           // 0x005f0aba    6a02
                         {disp32} jmp       _jmp_addr_0x005f0b4a                          // 0x005f0abc    e989000000
_jmp_addr_0x005f0ac1:    {disp32} fld       dword ptr [edi + 0x000000d8]                  // 0x005f0ac1    d987d8000000
                         {disp32} fcomp     dword ptr [_rdata_float0p5]                   // 0x005f0ac7    d81db4a38a00
                         fnstsw             ax                                            // 0x005f0acd    dfe0
                         test               ah, 0x41                                      // 0x005f0acf    f6c441
                         {disp8} jne        _jmp_addr_0x005f0b11                          // 0x005f0ad2    753d
                         {disp32} lea       edx, dword ptr [edi + 0x000000e0]             // 0x005f0ad4    8d97e0000000
                         push               edx                                           // 0x005f0ada    52
                         mov                ebx, 0x00000002                               // 0x005f0adb    bb02000000
                         call               _jmp_addr_0x007faa50                          // 0x005f0ae0    e86b9f2000
                         {disp32} fadd      dword ptr [rdata_bytes + 0x1a6a0]             // 0x005f0ae5    d805a0368c00
                         fstp               dword ptr [esp]                               // 0x005f0aeb    d91c24
                         call               _jmp_addr_0x007faaf0                          // 0x005f0aee    e8fd9f2000
                         add                esp, 0x04                                     // 0x005f0af3    83c404
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x005f0af6    d95c2414
                         mov.s              ecx, edi                                      // 0x005f0afa    8bcf
                         call               _jmp_addr_0x00647460                          // 0x005f0afc    e85f690500
                         test               eax, eax                                      // 0x005f0b01    85c0
                         {disp8} je         _jmp_addr_0x005f0b58                          // 0x005f0b03    7453
                         {disp8} lea        eax, dword ptr [esi + 0x14]                   // 0x005f0b05    8d4614
                         push               eax                                           // 0x005f0b08    50
                         push               0x3f000000                                    // 0x005f0b09    680000003f
                         push               ebx                                           // 0x005f0b0e    53
                         {disp8} jmp        _jmp_addr_0x005f0b4a                          // 0x005f0b0f    eb39
_jmp_addr_0x005f0b11:    {disp32} lea       ecx, dword ptr [edi + 0x000000ec]             // 0x005f0b11    8d8fec000000
                         push               ecx                                           // 0x005f0b17    51
                         xor.s              ebx, ebx                                      // 0x005f0b18    33db
                         call               _jmp_addr_0x007faa50                          // 0x005f0b1a    e8319f2000
                         {disp32} fadd      dword ptr [rdata_bytes + 0x1a6a0]             // 0x005f0b1f    d805a0368c00
                         fstp               dword ptr [esp]                               // 0x005f0b25    d91c24
                         call               _jmp_addr_0x007faaf0                          // 0x005f0b28    e8c39f2000
                         add                esp, 0x04                                     // 0x005f0b2d    83c404
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x005f0b30    d95c2414
                         mov.s              ecx, edi                                      // 0x005f0b34    8bcf
                         call               _jmp_addr_0x00647460                          // 0x005f0b36    e825690500
                         test               eax, eax                                      // 0x005f0b3b    85c0
                         {disp8} je         _jmp_addr_0x005f0b58                          // 0x005f0b3d    7419
                         {disp8} lea        edx, dword ptr [esi + 0x14]                   // 0x005f0b3f    8d5614
                         push               edx                                           // 0x005f0b42    52
                         push               0x3dcccccd                                    // 0x005f0b43    68cdcccc3d
                         push               0x1                                           // 0x005f0b48    6a01
_jmp_addr_0x005f0b4a:    mov.s              ecx, edi                                      // 0x005f0b4a    8bcf
                         call               _jmp_addr_0x00647460                          // 0x005f0b4c    e80f690500
                         mov.s              ecx, eax                                      // 0x005f0b51    8bc8
                         call               _jmp_addr_0x004c80b0                          // 0x005f0b53    e85875edff
_jmp_addr_0x005f0b58:    {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x005f0b58    8b4c2414
                         mov                eax, dword ptr [esi]                          // 0x005f0b5c    8b06
                         push               ecx                                           // 0x005f0b5e    51
                         mov.s              ecx, esi                                      // 0x005f0b5f    8bce
                         call               dword ptr [eax + 0x524]                       // 0x005f0b61    ff9024050000
                         test               byte ptr [edi + 0x000001d8], 0x08             // 0x005f0b67    f687d801000008
                         {disp8} jne        _jmp_addr_0x005f0b79                          // 0x005f0b6e    7509
                         .byte              0x66, 0x81, 0xa6, 0xe0, 0x0, 0x0, 0x0, 0xdf, 0xff// and word ptr [esi + 0x000000e0], -0x0021 // 0x005f0b70    6681a6e0000000dfff
_jmp_addr_0x005f0b79:    {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x005f0b79    8b542418
                         push               edx                                           // 0x005f0b7d    52
                         push               edi                                           // 0x005f0b7e    57
                         mov.s              ecx, esi                                      // 0x005f0b7f    8bce
                         call               ?EndPhysics@Object@@UAEXPAVPhysicsObject@@_N@Z// 0x005f0b81    e81a6a0400
                         mov.s              ebp, eax                                      // 0x005f0b86    8be8
                         xor.s              eax, eax                                      // 0x005f0b88    33c0
                         {disp32} mov       ax, word ptr [esi + 0x000000b4]               // 0x005f0b8a    668b86b4000000
                         and                ebx, 0x03                                     // 0x005f0b91    83e303
                         shl                ebx, 4                                        // 0x005f0b94    c1e304
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                   // 0x005f0b97    8d4e14
                         and                eax, 0x0000ffcf                               // 0x005f0b9a    25cfff0000
                         or.s               eax, ebx                                      // 0x005f0b9f    0bc3
                         {disp32} mov       word ptr [esi + 0x000000b4], ax               // 0x005f0ba1    668986b4000000
                         {disp8} mov        dword ptr [esi + 0x1c], 0x00000000            // 0x005f0ba8    c7461c00000000
                         call               ?IsWater@MapCoords@@QBEIXZ                    // 0x005f0baf    e8fc290100
                         test               eax, eax                                      // 0x005f0bb4    85c0
                         mov                edx, dword ptr [esi]                          // 0x005f0bb6    8b16
                         mov.s              ecx, esi                                      // 0x005f0bb8    8bce
                         {disp32} je        _jmp_addr_0x005f0ca0                          // 0x005f0bba    0f84e0000000
                         call               dword ptr [edx + 0x11c]                       // 0x005f0bc0    ff921c010000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005f0bc6    d81d98a38a00
                         fnstsw             ax                                            // 0x005f0bcc    dfe0
                         test               ah, 0x41                                      // 0x005f0bce    f6c441
                         {disp8} je         _jmp_addr_0x005f0c4f                          // 0x005f0bd1    747c
                         mov                eax, dword ptr [esi]                          // 0x005f0bd3    8b06
                         mov.s              ecx, esi                                      // 0x005f0bd5    8bce
                         call               dword ptr [eax + 0xaf4]                       // 0x005f0bd7    ff90f40a0000
                         test               eax, eax                                      // 0x005f0bdd    85c0
                         {disp8} je         _jmp_addr_0x005f0c04                          // 0x005f0bdf    7423
                         mov                edx, dword ptr [esi]                          // 0x005f0be1    8b16
                         push               0xe                                           // 0x005f0be3    6a0e
                         mov.s              ecx, esi                                      // 0x005f0be5    8bce
                         call               dword ptr [edx + 0x8e8]                       // 0x005f0be7    ff92e8080000
                         {disp8} mov        eax, dword ptr [esi + 0x28]                   // 0x005f0bed    8b4628
                         {disp32} mov       cx, word ptr [eax + 0x00000290]               // 0x005f0bf0    668b8890020000
                         pop                edi                                           // 0x005f0bf7    5f
                         {disp8} mov        word ptr [esi + 0x58], cx                     // 0x005f0bf8    66894e58
                         pop                esi                                           // 0x005f0bfc    5e
                         mov.s              eax, ebp                                      // 0x005f0bfd    8bc5
                         pop                ebp                                           // 0x005f0bff    5d
                         pop                ebx                                           // 0x005f0c00    5b
                         ret                0x0008                                        // 0x005f0c01    c20800
_jmp_addr_0x005f0c04:    test               edi, edi                                      // 0x005f0c04    85ff
                         {disp8} mov        word ptr [esi + 0x58], 0x0000                 // 0x005f0c06    66c746580000
                         {disp8} je         _jmp_addr_0x005f0c17                          // 0x005f0c0c    7409
                         mov.s              ecx, edi                                      // 0x005f0c0e    8bcf
                         call               _jmp_addr_0x00647460                          // 0x005f0c10    e84b680500
                         {disp8} jmp        _jmp_addr_0x005f0c35                          // 0x005f0c15    eb1e
_jmp_addr_0x005f0c17:    {disp32} mov       ecx, dword ptr [_game]                        // 0x005f0c17    8b0d5c19d000
                         xor.s              eax, eax                                      // 0x005f0c1d    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a5b]               // 0x005f0c1f    8a815b5a2000
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x005f0c25    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x005f0c28    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x005f0c2b    8d0450
                         shl                eax, 5                                        // 0x005f0c2e    c1e005
                         {disp8} lea        eax, dword ptr [eax + ecx * 0x1 + 0x18]       // 0x005f0c31    8d440818
_jmp_addr_0x005f0c35:    push               0x1                                           // 0x005f0c35    6a01
                         push               0x3c23d70a                                    // 0x005f0c37    680ad7233c
                         push               eax                                           // 0x005f0c3c    50
                         push               0x6                                           // 0x005f0c3d    6a06
                         mov.s              ecx, esi                                      // 0x005f0c3f    8bce
                         call               ?VillagerDead@Villager@@QAEXW4DEATH_REASON@@PAVGPlayer@@MH@Z                          // 0x005f0c41    e87afa1500
                         pop                edi                                           // 0x005f0c46    5f
                         pop                esi                                           // 0x005f0c47    5e
                         mov.s              eax, ebp                                      // 0x005f0c48    8bc5
                         pop                ebp                                           // 0x005f0c4a    5d
                         pop                ebx                                           // 0x005f0c4b    5b
                         ret                0x0008                                        // 0x005f0c4c    c20800
_jmp_addr_0x005f0c4f:    test               edi, edi                                      // 0x005f0c4f    85ff
                         {disp8} mov        ecx, dword ptr [esi + 0x28]                   // 0x005f0c51    8b4e28
                         {disp32} mov       dx, word ptr [ecx + 0x0000039a]               // 0x005f0c54    668b919a030000
                         {disp8} mov        word ptr [esi + 0x58], dx                     // 0x005f0c5b    66895658
                         {disp8} je         _jmp_addr_0x005f0c83                          // 0x005f0c5f    7422
                         mov.s              ecx, edi                                      // 0x005f0c61    8bcf
                         call               _jmp_addr_0x00647460                          // 0x005f0c63    e8f8670500
                         {disp32} mov       dword ptr [esi + 0x00000104], eax             // 0x005f0c68    898604010000
                         mov                eax, dword ptr [esi]                          // 0x005f0c6e    8b06
                         push               0x10                                          // 0x005f0c70    6a10
                         mov.s              ecx, esi                                      // 0x005f0c72    8bce
                         call               dword ptr [eax + 0x8e8]                       // 0x005f0c74    ff90e8080000
                         pop                edi                                           // 0x005f0c7a    5f
                         pop                esi                                           // 0x005f0c7b    5e
                         mov.s              eax, ebp                                      // 0x005f0c7c    8bc5
                         pop                ebp                                           // 0x005f0c7e    5d
                         pop                ebx                                           // 0x005f0c7f    5b
                         ret                0x0008                                        // 0x005f0c80    c20800
_jmp_addr_0x005f0c83:    xor.s              eax, eax                                      // 0x005f0c83    33c0
                         {disp32} mov       dword ptr [esi + 0x00000104], eax             // 0x005f0c85    898604010000
                         mov                eax, dword ptr [esi]                          // 0x005f0c8b    8b06
                         push               0x10                                          // 0x005f0c8d    6a10
                         mov.s              ecx, esi                                      // 0x005f0c8f    8bce
                         call               dword ptr [eax + 0x8e8]                       // 0x005f0c91    ff90e8080000
                         pop                edi                                           // 0x005f0c97    5f
                         pop                esi                                           // 0x005f0c98    5e
                         mov.s              eax, ebp                                      // 0x005f0c99    8bc5
                         pop                ebp                                           // 0x005f0c9b    5d
                         pop                ebx                                           // 0x005f0c9c    5b
                         ret                0x0008                                        // 0x005f0c9d    c20800
_jmp_addr_0x005f0ca0:    call               dword ptr [edx + 0x11c]                       // 0x005f0ca0    ff921c010000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005f0ca6    d81d98a38a00
                         fnstsw             ax                                            // 0x005f0cac    dfe0
                         test               ah, 0x41                                      // 0x005f0cae    f6c441
                         {disp8} je         _jmp_addr_0x005f0d0c                          // 0x005f0cb1    7459
                         test               edi, edi                                      // 0x005f0cb3    85ff
                         {disp8} je         _jmp_addr_0x005f0cc0                          // 0x005f0cb5    7409
                         mov.s              ecx, edi                                      // 0x005f0cb7    8bcf
                         call               _jmp_addr_0x00647460                          // 0x005f0cb9    e8a2670500
                         {disp8} jmp        _jmp_addr_0x005f0cc2                          // 0x005f0cbe    eb02
_jmp_addr_0x005f0cc0:    xor.s              eax, eax                                      // 0x005f0cc0    33c0
_jmp_addr_0x005f0cc2:    {disp32} mov       cl, byte ptr [esi + 0x000000b4]               // 0x005f0cc2    8a8eb4000000
                         and                cl, 0x01                                      // 0x005f0cc8    80e101
                         cmp                cl, 0x01                                      // 0x005f0ccb    80f901
                         {disp8} jne        _jmp_addr_0x005f0cde                          // 0x005f0cce    750e
                         mov                edx, dword ptr [esi]                          // 0x005f0cd0    8b16
                         push               0xf                                           // 0x005f0cd2    6a0f
                         mov.s              ecx, esi                                      // 0x005f0cd4    8bce
                         call               dword ptr [edx + 0x8e8]                       // 0x005f0cd6    ff92e8080000
                         {disp8} jmp        _jmp_addr_0x005f0cec                          // 0x005f0cdc    eb0e
_jmp_addr_0x005f0cde:    push               0x1                                           // 0x005f0cde    6a01
                         push               0x0                                           // 0x005f0ce0    6a00
                         push               eax                                           // 0x005f0ce2    50
                         push               0x5                                           // 0x005f0ce3    6a05
                         mov.s              ecx, esi                                      // 0x005f0ce5    8bce
                         call               ?VillagerDead@Villager@@QAEXW4DEATH_REASON@@PAVGPlayer@@MH@Z                          // 0x005f0ce7    e8d4f91500
_jmp_addr_0x005f0cec:    xor.s              eax, eax                                      // 0x005f0cec    33c0
                         {disp32} mov       ax, word ptr [esi + 0x000000b4]               // 0x005f0cee    668b86b4000000
                         pop                edi                                           // 0x005f0cf5    5f
                         and                eax, 0x0000ffcf                               // 0x005f0cf6    25cfff0000
                         or.s               eax, ebx                                      // 0x005f0cfb    0bc3
                         {disp32} mov       word ptr [esi + 0x000000b4], ax               // 0x005f0cfd    668986b4000000
                         pop                esi                                           // 0x005f0d04    5e
                         mov.s              eax, ebp                                      // 0x005f0d05    8bc5
                         pop                ebp                                           // 0x005f0d07    5d
                         pop                ebx                                           // 0x005f0d08    5b
                         ret                0x0008                                        // 0x005f0d09    c20800
_jmp_addr_0x005f0d0c:    mov                edi, 0x00000400                               // 0x005f0d0c    bf00040000
                         test               word ptr [esi + 0x000000b4], di               // 0x005f0d11    6685beb4000000
                         {disp8} je         _jmp_addr_0x005f0d21                          // 0x005f0d18    7407
                         mov.s              ecx, esi                                      // 0x005f0d1a    8bce
                         call               ?TestSpecial@Villager@@QAEXXZ                 // 0x005f0d1c    e81f261600
_jmp_addr_0x005f0d21:    {disp32} mov       cl, byte ptr [esi + 0x0000008e]               // 0x005f0d21    8a8e8e000000
                         mov                edx, dword ptr [esi]                          // 0x005f0d27    8b16
                         {disp8} mov        byte ptr [esp + 0x14], cl                     // 0x005f0d29    884c2414
                         push               0xb                                           // 0x005f0d2d    6a0b
                         mov.s              ecx, esi                                      // 0x005f0d2f    8bce
                         call               dword ptr [edx + 0x8e8]                       // 0x005f0d31    ff92e8080000
                         test               word ptr [esi + 0x24], di                     // 0x005f0d37    66857e24
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x005f0d3b    8b542414
                         {disp8} jne        _jmp_addr_0x005f0d5e                          // 0x005f0d3f    751d
                         mov.s              eax, edx                                      // 0x005f0d41    8bc2
                         and                eax, 0x000000ff                               // 0x005f0d43    25ff000000
                         lea                ecx, dword ptr [eax + eax * 0x2]              // 0x005f0d48    8d0c40
                         shl                ecx, 3                                        // 0x005f0d4b    c1e103
                         sub.s              ecx, eax                                      // 0x005f0d4e    2bc8
                         lea                eax, dword ptr [ecx + ecx * 0x2]              // 0x005f0d50    8d0449
                         {disp32} mov       ecx, dword ptr [eax * 0x4 + 0x00db9f6c]       // 0x005f0d53    8b0c856c9fdb00
                         test               ecx, ecx                                      // 0x005f0d5a    85c9
                         {disp8} je         _jmp_addr_0x005f0d69                          // 0x005f0d5c    740b
_jmp_addr_0x005f0d5e:    mov                eax, dword ptr [esi]                          // 0x005f0d5e    8b06
                         push               edx                                           // 0x005f0d60    52
                         mov.s              ecx, esi                                      // 0x005f0d61    8bce
                         call               dword ptr [eax + 0x8e8]                       // 0x005f0d63    ff90e8080000
_jmp_addr_0x005f0d69:    pop                edi                                           // 0x005f0d69    5f
                         pop                esi                                           // 0x005f0d6a    5e
                         mov.s              eax, ebp                                      // 0x005f0d6b    8bc5
                         pop                ebp                                           // 0x005f0d6d    5d
                         pop                ebx                                           // 0x005f0d6e    5b
                         ret                0x0008                                        // 0x005f0d6f    c20800
                         nop                                                              // 0x005f0d72    90
                         nop                                                              // 0x005f0d73    90
                         nop                                                              // 0x005f0d74    90
                         nop                                                              // 0x005f0d75    90
                         nop                                                              // 0x005f0d76    90
                         nop                                                              // 0x005f0d77    90
                         nop                                                              // 0x005f0d78    90
                         nop                                                              // 0x005f0d79    90
                         nop                                                              // 0x005f0d7a    90
                         nop                                                              // 0x005f0d7b    90
                         nop                                                              // 0x005f0d7c    90
                         nop                                                              // 0x005f0d7d    90
                         nop                                                              // 0x005f0d7e    90
                         nop                                                              // 0x005f0d7f    90
?EndPhysics@Animal@@UAEXPAVPhysicsObject@@_N@Z:
                         push               ebx                                           // 0x005f0d80    53
                         push               ebp                                           // 0x005f0d81    55
                         push               esi                                           // 0x005f0d82    56
                         push               edi                                           // 0x005f0d83    57
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x005f0d84    8b7c2414
                         test               edi, edi                                      // 0x005f0d88    85ff
                         mov.s              esi, ecx                                      // 0x005f0d8a    8bf1
                         mov                ebx, 0x00000003                               // 0x005f0d8c    bb03000000
                         {disp8} je         _jmp_addr_0x005f0df9                          // 0x005f0d91    7466
                         {disp32} fld       dword ptr [edi + 0x000000d8]                  // 0x005f0d93    d987d8000000
                         {disp32} fcomp     dword ptr [_rdata_float0p5]                   // 0x005f0d99    d81db4a38a00
                         fnstsw             ax                                            // 0x005f0d9f    dfe0
                         test               ah, 0x41                                      // 0x005f0da1    f6c441
                         {disp8} jne        _jmp_addr_0x005f0dad                          // 0x005f0da4    7507
                         mov                ebx, 0x00000001                               // 0x005f0da6    bb01000000
                         {disp8} jmp        _jmp_addr_0x005f0dc9                          // 0x005f0dab    eb1c
_jmp_addr_0x005f0dad:    {disp32} fld       dword ptr [edi + 0x000000d8]                  // 0x005f0dad    d987d8000000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x25fcc]             // 0x005f0db3    d81dccef8c00
                         fnstsw             ax                                            // 0x005f0db9    dfe0
                         test               ah, 0x01                                      // 0x005f0dbb    f6c401
                         {disp8} je         _jmp_addr_0x005f0dc7                          // 0x005f0dbe    7407
                         mov                ebx, 0x00000002                               // 0x005f0dc0    bb02000000
                         {disp8} jmp        _jmp_addr_0x005f0dc9                          // 0x005f0dc5    eb02
_jmp_addr_0x005f0dc7:    xor.s              ebx, ebx                                      // 0x005f0dc7    33db
_jmp_addr_0x005f0dc9:    {disp32} lea       eax, dword ptr [edi + 0x000000bc]             // 0x005f0dc9    8d87bc000000
                         push               eax                                           // 0x005f0dcf    50
                         call               _jmp_addr_0x007faa50                          // 0x005f0dd0    e87b9c2000
                         {disp32} fadd      dword ptr [rdata_bytes + 0x1a6a0]             // 0x005f0dd5    d805a0368c00
                         fstp               dword ptr [esp]                               // 0x005f0ddb    d91c24
                         call               _jmp_addr_0x007faaf0                          // 0x005f0dde    e80d9d2000
                         mov                edx, dword ptr [esi]                          // 0x005f0de3    8b16
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x005f0de5    d95c2418
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x005f0de9    8b442418
                         add                esp, 0x04                                     // 0x005f0ded    83c404
                         push               eax                                           // 0x005f0df0    50
                         mov.s              ecx, esi                                      // 0x005f0df1    8bce
                         call               dword ptr [edx + 0x524]                       // 0x005f0df3    ff9224050000
_jmp_addr_0x005f0df9:    {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x005f0df9    8b4c2418
                         push               ecx                                           // 0x005f0dfd    51
                         push               edi                                           // 0x005f0dfe    57
                         mov.s              ecx, esi                                      // 0x005f0dff    8bce
                         call               ?EndPhysics@Object@@UAEXPAVPhysicsObject@@_N@Z// 0x005f0e01    e89a670400
                         xor.s              edx, edx                                      // 0x005f0e06    33d2
                         {disp32} mov       dx, word ptr [esi + 0x000000b4]               // 0x005f0e08    668b96b4000000
                         and                ebx, 0x03                                     // 0x005f0e0f    83e303
                         shl                ebx, 4                                        // 0x005f0e12    c1e304
                         mov.s              ebp, eax                                      // 0x005f0e15    8be8
                         mov.s              ecx, esi                                      // 0x005f0e17    8bce
                         and                edx, 0x0000ffcf                               // 0x005f0e19    81e2cfff0000
                         or.s               edx, ebx                                      // 0x005f0e1f    0bd3
                         {disp32} mov       word ptr [esi + 0x000000b4], dx               // 0x005f0e21    668996b4000000
                         {disp8} mov        dword ptr [esi + 0x1c], 0x00000000            // 0x005f0e28    c7461c00000000
                         mov                eax, dword ptr [esi]                          // 0x005f0e2f    8b06
                         call               dword ptr [eax + 0x11c]                       // 0x005f0e31    ff901c010000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005f0e37    d81d98a38a00
                         fnstsw             ax                                            // 0x005f0e3d    dfe0
                         test               ah, 0x41                                      // 0x005f0e3f    f6c441
                         {disp8} je         _jmp_addr_0x005f0e90                          // 0x005f0e42    744c
                         {disp32} mov       cl, byte ptr [esi + 0x000000b4]               // 0x005f0e44    8a8eb4000000
                         mov                edx, dword ptr [esi]                          // 0x005f0e4a    8b16
                         and                cl, 0x01                                      // 0x005f0e4c    80e101
                         dec                cl                                            // 0x005f0e4f    fec9
                         neg                cl                                            // 0x005f0e51    f6d9
                         sbb.s              ecx, ecx                                      // 0x005f0e53    1bc9
                         inc                ecx                                           // 0x005f0e55    41
                         mov.s              edi, ecx                                      // 0x005f0e56    8bf9
                         mov.s              ecx, esi                                      // 0x005f0e58    8bce
                         call               dword ptr [edx + 0x6a4]                       // 0x005f0e5a    ff92a4060000
                         xor.s              eax, eax                                      // 0x005f0e60    33c0
                         {disp32} mov       ax, word ptr [esi + 0x000000b4]               // 0x005f0e62    668b86b4000000
                         and                eax, 0x0000ffcf                               // 0x005f0e69    25cfff0000
                         or.s               eax, ebx                                      // 0x005f0e6e    0bc3
                         test               edi, edi                                      // 0x005f0e70    85ff
                         {disp32} mov       word ptr [esi + 0x000000b4], ax               // 0x005f0e72    668986b4000000
                         {disp8} je         _jmp_addr_0x005f0e9c                          // 0x005f0e79    7421
                         mov                edx, dword ptr [esi]                          // 0x005f0e7b    8b16
                         push               0xf                                           // 0x005f0e7d    6a0f
                         mov.s              ecx, esi                                      // 0x005f0e7f    8bce
                         call               dword ptr [edx + 0x8e8]                       // 0x005f0e81    ff92e8080000
                         pop                edi                                           // 0x005f0e87    5f
                         pop                esi                                           // 0x005f0e88    5e
                         mov.s              eax, ebp                                      // 0x005f0e89    8bc5
                         pop                ebp                                           // 0x005f0e8b    5d
                         pop                ebx                                           // 0x005f0e8c    5b
                         ret                0x0008                                        // 0x005f0e8d    c20800
_jmp_addr_0x005f0e90:    mov                eax, dword ptr [esi]                          // 0x005f0e90    8b06
                         push               0xb                                           // 0x005f0e92    6a0b
                         mov.s              ecx, esi                                      // 0x005f0e94    8bce
                         call               dword ptr [eax + 0x8e8]                       // 0x005f0e96    ff90e8080000
_jmp_addr_0x005f0e9c:    pop                edi                                           // 0x005f0e9c    5f
                         pop                esi                                           // 0x005f0e9d    5e
                         mov.s              eax, ebp                                      // 0x005f0e9e    8bc5
                         pop                ebp                                           // 0x005f0ea0    5d
                         pop                ebx                                           // 0x005f0ea1    5b
                         ret                0x0008                                        // 0x005f0ea2    c20800
                         nop                                                              // 0x005f0ea5    90
                         nop                                                              // 0x005f0ea6    90
                         nop                                                              // 0x005f0ea7    90
                         nop                                                              // 0x005f0ea8    90
                         nop                                                              // 0x005f0ea9    90
                         nop                                                              // 0x005f0eaa    90
                         nop                                                              // 0x005f0eab    90
                         nop                                                              // 0x005f0eac    90
                         nop                                                              // 0x005f0ead    90
                         nop                                                              // 0x005f0eae    90
                         nop                                                              // 0x005f0eaf    90
_globl_ct_0x005f0eb0:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x005f0eb0    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x005f0eb6    b001
                         test               al, cl                                        // 0x005f0eb8    84c8
                         {disp8} jne        _jmp_addr_0x005f0ec4                          // 0x005f0eba    7508
                         or.s               cl, al                                        // 0x005f0ebc    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x005f0ebe    880d34c9fa00
_jmp_addr_0x005f0ec4:    {disp32} jmp       _jmp_addr_0x005f0ed0                          // 0x005f0ec4    e907000000
                         nop                                                              // 0x005f0ec9    90
                         nop                                                              // 0x005f0eca    90
                         nop                                                              // 0x005f0ecb    90
                         nop                                                              // 0x005f0ecc    90
                         nop                                                              // 0x005f0ecd    90
                         nop                                                              // 0x005f0ece    90
                         nop                                                              // 0x005f0ecf    90
_jmp_addr_0x005f0ed0:    push               0x00407870                                    // 0x005f0ed0    6870784000
                         call               _atexit                                       // 0x005f0ed5    e8b7481d00
                         pop                ecx                                           // 0x005f0eda    59
                         ret                                                              // 0x005f0edb    c3
                         nop                                                              // 0x005f0edc    90
                         nop                                                              // 0x005f0edd    90
                         nop                                                              // 0x005f0ede    90
                         nop                                                              // 0x005f0edf    90
_globl_ct_0x005f0ee0:    {disp32} jmp       _jmp_addr_0x005f0ef0                          // 0x005f0ee0    e90b000000
                         nop                                                              // 0x005f0ee5    90
                         nop                                                              // 0x005f0ee6    90
                         nop                                                              // 0x005f0ee7    90
                         nop                                                              // 0x005f0ee8    90
                         nop                                                              // 0x005f0ee9    90
                         nop                                                              // 0x005f0eea    90
                         nop                                                              // 0x005f0eeb    90
                         nop                                                              // 0x005f0eec    90
                         nop                                                              // 0x005f0eed    90
                         nop                                                              // 0x005f0eee    90
                         nop                                                              // 0x005f0eef    90
_jmp_addr_0x005f0ef0:    {disp32} fld       dword ptr [rdata_bytes + 0x8263c]             // 0x005f0ef0    d9053cb69200
                         {disp32} fmul      dword ptr [rdata_bytes + 0x82638]             // 0x005f0ef6    d80d38b69200
                         {disp32} fstp      dword ptr [data_bytes + 0x36a894]             // 0x005f0efc    d91d9408d300
                         ret                                                              // 0x005f0f02    c3
                         nop                                                              // 0x005f0f03    90
                         nop                                                              // 0x005f0f04    90
                         nop                                                              // 0x005f0f05    90
                         nop                                                              // 0x005f0f06    90
                         nop                                                              // 0x005f0f07    90
                         nop                                                              // 0x005f0f08    90
                         nop                                                              // 0x005f0f09    90
                         nop                                                              // 0x005f0f0a    90
                         nop                                                              // 0x005f0f0b    90
                         nop                                                              // 0x005f0f0c    90
                         nop                                                              // 0x005f0f0d    90
                         nop                                                              // 0x005f0f0e    90
                         nop                                                              // 0x005f0f0f    90
_globl_ct_0x005f0f10:    {disp32} jmp       _jmp_addr_0x005f0f20                          // 0x005f0f10    e90b000000
                         nop                                                              // 0x005f0f15    90
                         nop                                                              // 0x005f0f16    90
                         nop                                                              // 0x005f0f17    90
                         nop                                                              // 0x005f0f18    90
                         nop                                                              // 0x005f0f19    90
                         nop                                                              // 0x005f0f1a    90
                         nop                                                              // 0x005f0f1b    90
                         nop                                                              // 0x005f0f1c    90
                         nop                                                              // 0x005f0f1d    90
                         nop                                                              // 0x005f0f1e    90
                         nop                                                              // 0x005f0f1f    90
_jmp_addr_0x005f0f20:    {disp32} mov       dword ptr [data_bytes + 0x36a890], 0xffffffff // 0x005f0f20    c7059008d300ffffffff
                         ret                                                              // 0x005f0f2a    c3
                         call               ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                          // 0x005f0f2b    e8c908e1ff
?AddReaction@Living@@UAEXPAVReaction@@W4VILLAGER_STATES@@@Z:
                         push               esi                                           // 0x005f0f30    56
                         mov.s              esi, ecx                                      // 0x005f0f31    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000094]             // 0x005f0f33    8b8694000000
                         test               eax, eax                                      // 0x005f0f39    85c0
                         push               edi                                           // 0x005f0f3b    57
                         {disp8} jne        _jmp_addr_0x005f0f46                          // 0x005f0f3c    7508
                         mov                eax, dword ptr [esi]                          // 0x005f0f3e    8b06
                         call               dword ptr [eax + 0x8ec]                       // 0x005f0f40    ff90ec080000
_jmp_addr_0x005f0f46:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x005f0f46    8b442410
                         mov                edx, dword ptr [esi]                          // 0x005f0f4a    8b16
                         push               eax                                           // 0x005f0f4c    50
                         mov.s              ecx, esi                                      // 0x005f0f4d    8bce
                         call               dword ptr [edx + 0x8e8]                       // 0x005f0f4f    ff92e8080000
                         mov                edx, dword ptr [esi]                          // 0x005f0f55    8b16
                         mov.s              ecx, esi                                      // 0x005f0f57    8bce
                         call               dword ptr [edx + 0x978]                       // 0x005f0f59    ff9278090000
                         test               eax, eax                                      // 0x005f0f5f    85c0
                         {disp8} je         _jmp_addr_0x005f0f6f                          // 0x005f0f61    740c
                         mov                eax, dword ptr [esi]                          // 0x005f0f63    8b06
                         push               0x1                                           // 0x005f0f65    6a01
                         mov.s              ecx, esi                                      // 0x005f0f67    8bce
                         call               dword ptr [eax + 0xb08]                       // 0x005f0f69    ff90080b0000
_jmp_addr_0x005f0f6f:    {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x005f0f6f    8b7c240c
                         push               0x8                                           // 0x005f0f73    6a08
                         {disp32} mov       dword ptr [esi + 0x00000094], edi             // 0x005f0f75    89be94000000
                         call               ??2@YAPAXI@Z                                  // 0x005f0f7b    e86e551d00
                         add                esp, 0x04                                     // 0x005f0f80    83c404
                         test               eax, eax                                      // 0x005f0f83    85c0
                         {disp8} je         _jmp_addr_0x005f0f9a                          // 0x005f0f85    7413
                         {disp8} mov        ecx, dword ptr [edi + 0x18]                   // 0x005f0f87    8b4f18
                         mov                dword ptr [eax], esi                          // 0x005f0f8a    8930
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x005f0f8c    894804
                         {disp8} mov        dword ptr [edi + 0x18], eax                   // 0x005f0f8f    894718
                         {disp8} inc        dword ptr [edi + 0x1c]                        // 0x005f0f92    ff471c
                         pop                edi                                           // 0x005f0f95    5f
                         pop                esi                                           // 0x005f0f96    5e
                         ret                0x0008                                        // 0x005f0f97    c20800
_jmp_addr_0x005f0f9a:    xor.s              eax, eax                                      // 0x005f0f9a    33c0
                         {disp8} mov        dword ptr [edi + 0x18], eax                   // 0x005f0f9c    894718
                         {disp8} inc        dword ptr [edi + 0x1c]                        // 0x005f0f9f    ff471c
                         pop                edi                                           // 0x005f0fa2    5f
                         pop                esi                                           // 0x005f0fa3    5e
                         ret                0x0008                                        // 0x005f0fa4    c20800
                         nop                                                              // 0x005f0fa7    90
                         nop                                                              // 0x005f0fa8    90
                         nop                                                              // 0x005f0fa9    90
                         nop                                                              // 0x005f0faa    90
                         nop                                                              // 0x005f0fab    90
                         nop                                                              // 0x005f0fac    90
                         nop                                                              // 0x005f0fad    90
                         nop                                                              // 0x005f0fae    90
                         nop                                                              // 0x005f0faf    90
_jmp_addr_0x005f0fb0:    {disp32} mov       eax, dword ptr [ecx + 0x00000098]             // 0x005f0fb0    8b8198000000
                         test               eax, eax                                      // 0x005f0fb6    85c0
                         {disp8} je         _jmp_addr_0x005f0fcb                          // 0x005f0fb8    7411
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x005f0fba    8b542404
_jmp_addr_0x005f0fbe:    {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x005f0fbe    8b4804
                         cmp                dword ptr [ecx], edx                          // 0x005f0fc1    3911
                         {disp8} je         _jmp_addr_0x005f0fd0                          // 0x005f0fc3    740b
                         mov                eax, dword ptr [eax]                          // 0x005f0fc5    8b00
                         test               eax, eax                                      // 0x005f0fc7    85c0
                         {disp8} jne        _jmp_addr_0x005f0fbe                          // 0x005f0fc9    75f3
_jmp_addr_0x005f0fcb:    xor.s              eax, eax                                      // 0x005f0fcb    33c0
                         ret                0x0004                                        // 0x005f0fcd    c20400
_jmp_addr_0x005f0fd0:    {disp8} mov        eax, dword ptr [ecx + 0x04]                   // 0x005f0fd0    8b4104
                         ret                0x0004                                        // 0x005f0fd3    c20400
                         nop                                                              // 0x005f0fd6    90
                         nop                                                              // 0x005f0fd7    90
                         nop                                                              // 0x005f0fd8    90
                         nop                                                              // 0x005f0fd9    90
                         nop                                                              // 0x005f0fda    90
                         nop                                                              // 0x005f0fdb    90
                         nop                                                              // 0x005f0fdc    90
                         nop                                                              // 0x005f0fdd    90
                         nop                                                              // 0x005f0fde    90
                         nop                                                              // 0x005f0fdf    90
_jmp_addr_0x005f0fe0:    {disp32} mov       eax, dword ptr [ecx + 0x00000098]             // 0x005f0fe0    8b8198000000
                         test               eax, eax                                      // 0x005f0fe6    85c0
                         {disp8} je         _jmp_addr_0x005f100c                          // 0x005f0fe8    7422
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x005f0fea    8b542404
_jmp_addr_0x005f0fee:    {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x005f0fee    8b4804
                         cmp                dword ptr [ecx], edx                          // 0x005f0ff1    3911
                         {disp8} je         _jmp_addr_0x005f0ffe                          // 0x005f0ff3    7409
                         mov                eax, dword ptr [eax]                          // 0x005f0ff5    8b00
                         test               eax, eax                                      // 0x005f0ff7    85c0
                         {disp8} jne        _jmp_addr_0x005f0fee                          // 0x005f0ff9    75f3
                         ret                0x0004                                        // 0x005f0ffb    c20400
_jmp_addr_0x005f0ffe:    {disp32} mov       eax, dword ptr [_game]                        // 0x005f0ffe    a15c19d000
                         {disp32} mov       edx, dword ptr [eax + 0x00205a40]             // 0x005f1003    8b90405a2000
                         {disp8} mov        dword ptr [ecx + 0x04], edx                   // 0x005f1009    895104
_jmp_addr_0x005f100c:    ret                0x0004                                        // 0x005f100c    c20400
                         nop                                                              // 0x005f100f    90
_jmp_addr_0x005f1010:    sub                esp, 0x0c                                     // 0x005f1010    83ec0c
                         push               esi                                           // 0x005f1013    56
                         mov.s              esi, ecx                                      // 0x005f1014    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000094]             // 0x005f1016    8b8694000000
                         test               eax, eax                                      // 0x005f101c    85c0
                         push               edi                                           // 0x005f101e    57
                         {disp8} jne        _jmp_addr_0x005f1029                          // 0x005f101f    7508
                         mov                eax, dword ptr [esi]                          // 0x005f1021    8b06
                         call               dword ptr [eax + 0x8ec]                       // 0x005f1023    ff90ec080000
_jmp_addr_0x005f1029:    {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x005f1029    8b442424
                         test               eax, eax                                      // 0x005f102d    85c0
                         {disp8} je         _jmp_addr_0x005f104b                          // 0x005f102f    741a
                         mov                edx, dword ptr [esi]                          // 0x005f1031    8b16
                         mov.s              ecx, esi                                      // 0x005f1033    8bce
                         call               dword ptr [edx + 0x978]                       // 0x005f1035    ff9278090000
                         test               eax, eax                                      // 0x005f103b    85c0
                         {disp8} je         _jmp_addr_0x005f104b                          // 0x005f103d    740c
                         mov                eax, dword ptr [esi]                          // 0x005f103f    8b06
                         push               0x1                                           // 0x005f1041    6a01
                         mov.s              ecx, esi                                      // 0x005f1043    8bce
                         call               dword ptr [eax + 0xb08]                       // 0x005f1045    ff90080b0000
_jmp_addr_0x005f104b:    {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x005f104b    8b4c2420
                         {disp8} mov        edi, dword ptr [esp + 0x1c]                   // 0x005f104f    8b7c241c
                         mov                edx, dword ptr [edi]                          // 0x005f1053    8b17
                         push               ecx                                           // 0x005f1055    51
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x005f1056    8d44240c
                         push               eax                                           // 0x005f105a    50
                         mov.s              ecx, edi                                      // 0x005f105b    8bcf
                         call               dword ptr [edx + 0x104]                       // 0x005f105d    ff9204010000
                         push               eax                                           // 0x005f1063    50
                         push               edi                                           // 0x005f1064    57
                         mov.s              ecx, esi                                      // 0x005f1065    8bce
                         call               @SetupMoveToOnFootpath__6LivingFR16GameThingWithPosRC9MapCoordsUc@17                          // 0x005f1067    e8b4ccffff
                         {disp8} mov        edi, dword ptr [esp + 0x18]                   // 0x005f106c    8b7c2418
                         push               0x8                                           // 0x005f1070    6a08
                         {disp32} mov       dword ptr [esi + 0x00000094], edi             // 0x005f1072    89be94000000
                         call               ??2@YAPAXI@Z                                  // 0x005f1078    e871541d00
                         add                esp, 0x04                                     // 0x005f107d    83c404
                         test               eax, eax                                      // 0x005f1080    85c0
                         {disp8} je         _jmp_addr_0x005f109a                          // 0x005f1082    7416
                         {disp8} mov        ecx, dword ptr [edi + 0x18]                   // 0x005f1084    8b4f18
                         mov                dword ptr [eax], esi                          // 0x005f1087    8930
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x005f1089    894804
                         {disp8} mov        dword ptr [edi + 0x18], eax                   // 0x005f108c    894718
                         {disp8} inc        dword ptr [edi + 0x1c]                        // 0x005f108f    ff471c
                         pop                edi                                           // 0x005f1092    5f
                         pop                esi                                           // 0x005f1093    5e
                         add                esp, 0x0c                                     // 0x005f1094    83c40c
                         ret                0x0010                                        // 0x005f1097    c21000
_jmp_addr_0x005f109a:    xor.s              eax, eax                                      // 0x005f109a    33c0
                         {disp8} mov        dword ptr [edi + 0x18], eax                   // 0x005f109c    894718
                         {disp8} inc        dword ptr [edi + 0x1c]                        // 0x005f109f    ff471c
                         pop                edi                                           // 0x005f10a2    5f
                         pop                esi                                           // 0x005f10a3    5e
                         add                esp, 0x0c                                     // 0x005f10a4    83c40c
                         ret                0x0010                                        // 0x005f10a7    c21000
                         call               dword ptr [__imp__ShellExecuteA@4]            // 0x005f10aa    ff15ac978a00
_jmp_addr_0x005f10b0:    push               esi                                           // 0x005f10b0    56
                         mov.s              esi, ecx                                      // 0x005f10b1    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000094]             // 0x005f10b3    8b8694000000
                         test               eax, eax                                      // 0x005f10b9    85c0
                         push               edi                                           // 0x005f10bb    57
                         {disp8} jne        _jmp_addr_0x005f10c6                          // 0x005f10bc    7508
                         mov                eax, dword ptr [esi]                          // 0x005f10be    8b06
                         call               dword ptr [eax + 0x8ec]                       // 0x005f10c0    ff90ec080000
_jmp_addr_0x005f10c6:    {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x005f10c6    8b442418
                         test               eax, eax                                      // 0x005f10ca    85c0
                         {disp8} je         _jmp_addr_0x005f10e8                          // 0x005f10cc    741a
                         mov                edx, dword ptr [esi]                          // 0x005f10ce    8b16
                         mov.s              ecx, esi                                      // 0x005f10d0    8bce
                         call               dword ptr [edx + 0x978]                       // 0x005f10d2    ff9278090000
                         test               eax, eax                                      // 0x005f10d8    85c0
                         {disp8} je         _jmp_addr_0x005f10e8                          // 0x005f10da    740c
                         mov                eax, dword ptr [esi]                          // 0x005f10dc    8b06
                         push               0x1                                           // 0x005f10de    6a01
                         mov.s              ecx, esi                                      // 0x005f10e0    8bce
                         call               dword ptr [eax + 0xb08]                       // 0x005f10e2    ff90080b0000
_jmp_addr_0x005f10e8:    {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x005f10e8    8b4c2414
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x005f10ec    8b542410
                         push               ecx                                           // 0x005f10f0    51
                         push               edx                                           // 0x005f10f1    52
                         mov.s              ecx, esi                                      // 0x005f10f2    8bce
                         call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13// 0x005f10f4    e897170000
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x005f10f9    8b7c240c
                         push               0x8                                           // 0x005f10fd    6a08
                         {disp32} mov       dword ptr [esi + 0x00000094], edi             // 0x005f10ff    89be94000000
                         call               ??2@YAPAXI@Z                                  // 0x005f1105    e8e4531d00
                         add                esp, 0x04                                     // 0x005f110a    83c404
                         test               eax, eax                                      // 0x005f110d    85c0
                         {disp8} je         _jmp_addr_0x005f1124                          // 0x005f110f    7413
                         {disp8} mov        ecx, dword ptr [edi + 0x18]                   // 0x005f1111    8b4f18
                         mov                dword ptr [eax], esi                          // 0x005f1114    8930
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x005f1116    894804
                         {disp8} mov        dword ptr [edi + 0x18], eax                   // 0x005f1119    894718
                         {disp8} inc        dword ptr [edi + 0x1c]                        // 0x005f111c    ff471c
                         pop                edi                                           // 0x005f111f    5f
                         pop                esi                                           // 0x005f1120    5e
                         ret                0x0010                                        // 0x005f1121    c21000
_jmp_addr_0x005f1124:    xor.s              eax, eax                                      // 0x005f1124    33c0
                         {disp8} mov        dword ptr [edi + 0x18], eax                   // 0x005f1126    894718
                         {disp8} inc        dword ptr [edi + 0x1c]                        // 0x005f1129    ff471c
                         pop                edi                                           // 0x005f112c    5f
                         pop                esi                                           // 0x005f112d    5e
                         ret                0x0010                                        // 0x005f112e    c21000
                         nop                                                              // 0x005f1131    90
                         nop                                                              // 0x005f1132    90
                         nop                                                              // 0x005f1133    90
                         nop                                                              // 0x005f1134    90
                         nop                                                              // 0x005f1135    90
                         nop                                                              // 0x005f1136    90
                         nop                                                              // 0x005f1137    90
                         nop                                                              // 0x005f1138    90
                         nop                                                              // 0x005f1139    90
                         nop                                                              // 0x005f113a    90
                         nop                                                              // 0x005f113b    90
                         nop                                                              // 0x005f113c    90
                         nop                                                              // 0x005f113d    90
                         nop                                                              // 0x005f113e    90
                         nop                                                              // 0x005f113f    90
?StopReacting@Living@@UAEXXZ:
                         push               esi                                           // 0x005f1140    56
                         mov.s              esi, ecx                                      // 0x005f1141    8bf1
                         push               edi                                           // 0x005f1143    57
                         {disp32} mov       edi, dword ptr [esi + 0x00000094]             // 0x005f1144    8bbe94000000
                         test               edi, edi                                      // 0x005f114a    85ff
                         {disp8} je         _jmp_addr_0x005f11b2                          // 0x005f114c    7464
                         {disp8} mov        edx, dword ptr [edi + 0x18]                   // 0x005f114e    8b5718
                         mov.s              eax, edx                                      // 0x005f1151    8bc2
                         xor.s              ecx, ecx                                      // 0x005f1153    33c9
                         test               eax, eax                                      // 0x005f1155    85c0
                         {disp8} je         _jmp_addr_0x005f118a                          // 0x005f1157    7431
_jmp_addr_0x005f1159:    cmp                dword ptr [eax], esi                          // 0x005f1159    3930
                         {disp8} je         _jmp_addr_0x005f1168                          // 0x005f115b    740b
                         mov.s              ecx, eax                                      // 0x005f115d    8bc8
                         {disp8} mov        eax, dword ptr [eax + 0x04]                   // 0x005f115f    8b4004
                         test               eax, eax                                      // 0x005f1162    85c0
                         {disp8} jne        _jmp_addr_0x005f1159                          // 0x005f1164    75f3
                         {disp8} jmp        _jmp_addr_0x005f118a                          // 0x005f1166    eb22
_jmp_addr_0x005f1168:    test               ecx, ecx                                      // 0x005f1168    85c9
                         {disp8} jne        _jmp_addr_0x005f1174                          // 0x005f116a    7508
                         {disp8} mov        ecx, dword ptr [edx + 0x04]                   // 0x005f116c    8b4a04
                         {disp8} mov        dword ptr [edi + 0x18], ecx                   // 0x005f116f    894f18
                         {disp8} jmp        _jmp_addr_0x005f117a                          // 0x005f1172    eb06
_jmp_addr_0x005f1174:    {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x005f1174    8b5004
                         {disp8} mov        dword ptr [ecx + 0x04], edx                   // 0x005f1177    895104
_jmp_addr_0x005f117a:    push               eax                                           // 0x005f117a    50
                         call               ??3@YAXPAX@Z                                  // 0x005f117b    e818dd1b00
                         {disp8} mov        eax, dword ptr [edi + 0x1c]                   // 0x005f1180    8b471c
                         add                esp, 0x04                                     // 0x005f1183    83c404
                         dec                eax                                           // 0x005f1186    48
                         {disp8} mov        dword ptr [edi + 0x1c], eax                   // 0x005f1187    89471c
_jmp_addr_0x005f118a:    {disp32} mov       eax, dword ptr [esi + 0x00000094]             // 0x005f118a    8b8694000000
                         {disp8} mov        ecx, dword ptr [eax + 0x24]                   // 0x005f1190    8b4824
                         push               ecx                                           // 0x005f1193    51
                         mov.s              ecx, esi                                      // 0x005f1194    8bce
                         call               _jmp_addr_0x005f0fe0                          // 0x005f1196    e845feffff
                         {disp32} mov       dword ptr [esi + 0x00000094], 0x00000000      // 0x005f119b    c7869400000000000000
                         pop                edi                                           // 0x005f11a5    5f
                         {disp32} mov       dword ptr [esi + 0x000000bc], 0x00000000      // 0x005f11a6    c786bc00000000000000
                         pop                esi                                           // 0x005f11b0    5e
                         ret                                                              // 0x005f11b1    c3
_jmp_addr_0x005f11b2:    pop                edi                                           // 0x005f11b2    5f
                         {disp32} mov       dword ptr [esi + 0x000000bc], 0x00000000      // 0x005f11b3    c786bc00000000000000
                         pop                esi                                           // 0x005f11bd    5e
                         ret                                                              // 0x005f11be    c3
                         nop                                                              // 0x005f11bf    90
?StopReactingAndSetState@Living@@UAEXXZ:
                         push               esi                                           // 0x005f11c0    56
                         mov.s              esi, ecx                                      // 0x005f11c1    8bf1
                         mov                eax, dword ptr [esi]                          // 0x005f11c3    8b06
                         call               dword ptr [eax + 0x9a0]                       // 0x005f11c5    ff90a0090000
                         {disp32} mov       eax, dword ptr [esi + 0x00000094]             // 0x005f11cb    8b8694000000
                         test               eax, eax                                      // 0x005f11d1    85c0
                         {disp8} je         _jmp_addr_0x005f11df                          // 0x005f11d3    740a
                         mov                edx, dword ptr [esi]                          // 0x005f11d5    8b16
                         mov.s              ecx, esi                                      // 0x005f11d7    8bce
                         call               dword ptr [edx + 0x998]                       // 0x005f11d9    ff9298090000
_jmp_addr_0x005f11df:    pop                esi                                           // 0x005f11df    5e
                         ret                                                              // 0x005f11e0    c3
                         nop                                                              // 0x005f11e1    90
                         nop                                                              // 0x005f11e2    90
                         nop                                                              // 0x005f11e3    90
                         nop                                                              // 0x005f11e4    90
                         nop                                                              // 0x005f11e5    90
                         nop                                                              // 0x005f11e6    90
                         nop                                                              // 0x005f11e7    90
                         nop                                                              // 0x005f11e8    90
                         nop                                                              // 0x005f11e9    90
                         nop                                                              // 0x005f11ea    90
                         nop                                                              // 0x005f11eb    90
                         nop                                                              // 0x005f11ec    90
                         nop                                                              // 0x005f11ed    90
                         nop                                                              // 0x005f11ee    90
                         nop                                                              // 0x005f11ef    90
?IsAvailableForReaction@Living@@UAE_NW4REACTION@@@Z:
                         push               ebx                                           // 0x005f11f0    53
                         push               esi                                           // 0x005f11f1    56
                         mov.s              esi, ecx                                      // 0x005f11f2    8bf1
                         mov                eax, dword ptr [esi]                          // 0x005f11f4    8b06
                         call               dword ptr [eax + 0xb04]                       // 0x005f11f6    ff90040b0000
                         mov                edx, dword ptr [esi]                          // 0x005f11fc    8b16
                         mov.s              ecx, esi                                      // 0x005f11fe    8bce
                         mov.s              bl, al                                        // 0x005f1200    8ad8
                         call               dword ptr [edx + 0xd4]                        // 0x005f1202    ff92d4000000
                         test               eax, eax                                      // 0x005f1208    85c0
                         {disp8} je         _jmp_addr_0x005f1268                          // 0x005f120a    745c
                         xor.s              eax, eax                                      // 0x005f120c    33c0
                         {disp8} mov        ax, word ptr [esi + 0x24]                     // 0x005f120e    668b4624
                         not                ax                                            // 0x005f1212    66f7d0
                         shr                eax, 0xa                                      // 0x005f1215    c1e80a
                         test               al, 0x01                                      // 0x005f1218    a801
                         {disp8} je         _jmp_addr_0x005f1268                          // 0x005f121a    744c
                         mov.s              ecx, esi                                      // 0x005f121c    8bce
                         call               _jmp_addr_0x005ecc20                          // 0x005f121e    e8fdb9ffff
                         test               eax, eax                                      // 0x005f1223    85c0
                         {disp8} jne        _jmp_addr_0x005f1268                          // 0x005f1225    7541
                         cmp                bl, 0x0f                                      // 0x005f1227    80fb0f
                         {disp8} je         _jmp_addr_0x005f1268                          // 0x005f122a    743c
                         cmp                bl, 0x10                                      // 0x005f122c    80fb10
                         {disp8} je         _jmp_addr_0x005f1268                          // 0x005f122f    7437
                         cmp                bl, 0x11                                      // 0x005f1231    80fb11
                         {disp8} je         _jmp_addr_0x005f1268                          // 0x005f1234    7432
                         cmp                bl, 0x12                                      // 0x005f1236    80fb12
                         {disp8} je         _jmp_addr_0x005f1268                          // 0x005f1239    742d
                         cmp                bl, 0x0e                                      // 0x005f123b    80fb0e
                         {disp8} je         _jmp_addr_0x005f1268                          // 0x005f123e    7428
                         cmp                bl, 0x17                                      // 0x005f1240    80fb17
                         {disp8} je         _jmp_addr_0x005f1268                          // 0x005f1243    7423
                         cmp                bl, 0x05                                      // 0x005f1245    80fb05
                         {disp8} je         _jmp_addr_0x005f1268                          // 0x005f1248    741e
                         {disp32} mov       cl, byte ptr [esi + 0x000000b4]               // 0x005f124a    8a8eb4000000
                         and                cl, 0x01                                      // 0x005f1250    80e101
                         cmp                cl, 0x01                                      // 0x005f1253    80f901
                         {disp8} je         _jmp_addr_0x005f1268                          // 0x005f1256    7410
                         test               byte ptr [esi + 0x24], -0x80                  // 0x005f1258    f6462480
                         {disp8} jne        _jmp_addr_0x005f1268                          // 0x005f125c    750a
                         pop                esi                                           // 0x005f125e    5e
                         mov                eax, 0x00000001                               // 0x005f125f    b801000000
                         pop                ebx                                           // 0x005f1264    5b
                         ret                0x0004                                        // 0x005f1265    c20400
_jmp_addr_0x005f1268:    pop                esi                                           // 0x005f1268    5e
                         xor.s              eax, eax                                      // 0x005f1269    33c0
                         pop                ebx                                           // 0x005f126b    5b
                         ret                0x0004                                        // 0x005f126c    c20400
                         nop                                                              // 0x005f126f    90
?ProcessReaction@Living@@QAEXXZ:
                                  sub                esp, 0x14                                     // 0x005f1270    83ec14
                         push               esi                                           // 0x005f1273    56
                         mov.s              esi, ecx                                      // 0x005f1274    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x00000094]             // 0x005f1276    8b8e94000000
                         test               ecx, ecx                                      // 0x005f127c    85c9
                         {disp32} je        _jmp_addr_0x005f134e                          // 0x005f127e    0f84ca000000
                         mov                eax, dword ptr [ecx]                          // 0x005f1284    8b01
                         call               dword ptr [eax + 0x2c]                        // 0x005f1286    ff502c
                         test               eax, eax                                      // 0x005f1289    85c0
                         {disp8} jne        _jmp_addr_0x005f129c                          // 0x005f128b    750f
                         mov                edx, dword ptr [esi]                          // 0x005f128d    8b16
                         mov.s              ecx, esi                                      // 0x005f128f    8bce
                         call               dword ptr [edx + 0x998]                       // 0x005f1291    ff9298090000
                         pop                esi                                           // 0x005f1297    5e
                         add                esp, 0x14                                     // 0x005f1298    83c414
                         ret                                                              // 0x005f129b    c3
_jmp_addr_0x005f129c:    {disp32} mov       ecx, dword ptr [esi + 0x000000bc]             // 0x005f129c    8b8ebc000000
                         test               ecx, ecx                                      // 0x005f12a2    85c9
                         {disp32} je        _jmp_addr_0x005f1344                          // 0x005f12a4    0f849a000000
                         mov                eax, dword ptr [ecx]                          // 0x005f12aa    8b01
                         call               dword ptr [eax + 0x2c]                        // 0x005f12ac    ff502c
                         test               eax, eax                                      // 0x005f12af    85c0
                         {disp32} je        _jmp_addr_0x005f1344                          // 0x005f12b1    0f848d000000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000094]             // 0x005f12b7    8b8e94000000
                         {disp8} mov        eax, dword ptr [ecx + 0x24]                   // 0x005f12bd    8b4124
                         push               ebx                                           // 0x005f12c0    53
                         push               ebp                                           // 0x005f12c1    55
                         push               edi                                           // 0x005f12c2    57
                         push               eax                                           // 0x005f12c3    50
                         mov.s              ecx, esi                                      // 0x005f12c4    8bce
                         call               _jmp_addr_0x005f0fb0                          // 0x005f12c6    e8e5fcffff
                         {disp32} mov       edx, dword ptr [_game]                        // 0x005f12cb    8b155c19d000
                         {disp32} mov       edi, dword ptr [edx + 0x00205a40]             // 0x005f12d1    8bba405a2000
                         sub.s              edi, eax                                      // 0x005f12d7    2bf8
                         {disp32} mov       eax, dword ptr [esi + 0x000000bc]             // 0x005f12d9    8b86bc000000
                         add                eax, 0x14                                     // 0x005f12df    83c014
                         push               eax                                           // 0x005f12e2    50
                         {disp8} lea        eax, dword ptr [esi + 0x14]                   // 0x005f12e3    8d4614
                         push               eax                                           // 0x005f12e6    50
                         call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z                               // 0x005f12e7    e884ba1500
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x005f12ec    d95c2418
                         {disp32} mov       ecx, dword ptr [esi + 0x00000094]             // 0x005f12f0    8b8e94000000
                         {disp8} mov        eax, dword ptr [ecx + 0x24]                   // 0x005f12f6    8b4124
                         lea                edx, dword ptr [eax + eax * 0x2]              // 0x005f12f9    8d1440
                         shl                edx, 6                                        // 0x005f12fc    c1e206
                         add                edx, 0x00c09cf0                               // 0x005f12ff    81c2f09cc000
                         mov.s              ebx, edx                                      // 0x005f1305    8bda
                         mov                edx, dword ptr [ebx]                          // 0x005f1307    8b13
                         {disp8} mov        ecx, dword ptr [ebx + 0x04]                   // 0x005f1309    8b4b04
                         {disp8} mov        ebp, dword ptr [ebx + 0x08]                   // 0x005f130c    8b6b08
                         {disp8} mov        ebx, dword ptr [ebx + 0x0c]                   // 0x005f130f    8b5b0c
                         add                esp, 0x08                                     // 0x005f1312    83c408
                         {disp8} mov        dword ptr [esp + 0x1c], ebp                   // 0x005f1315    896c241c
                         {disp8} mov        ebp, dword ptr [esp + 0x10]                   // 0x005f1319    8b6c2410
                         push               ebp                                           // 0x005f131d    55
                         {disp8} mov        dword ptr [esp + 0x24], ebx                   // 0x005f131e    895c2424
                         {disp32} mov       ebx, dword ptr [esi + 0x000000bc]             // 0x005f1322    8b9ebc000000
                         push               eax                                           // 0x005f1328    50
                         push               ebx                                           // 0x005f1329    53
                         add.s              ecx, esi                                      // 0x005f132a    03ce
                         call               edx                                           // 0x005f132c    ffd2
                         cmp.s              edi, eax                                      // 0x005f132e    3bf8
                         pop                edi                                           // 0x005f1330    5f
                         pop                ebp                                           // 0x005f1331    5d
                         pop                ebx                                           // 0x005f1332    5b
                         {disp8} jle        _jmp_addr_0x005f134e                          // 0x005f1333    7e19
                         mov                eax, dword ptr [esi]                          // 0x005f1335    8b06
                         mov.s              ecx, esi                                      // 0x005f1337    8bce
                         call               dword ptr [eax + 0x99c]                       // 0x005f1339    ff909c090000
                         pop                esi                                           // 0x005f133f    5e
                         add                esp, 0x14                                     // 0x005f1340    83c414
                         ret                                                              // 0x005f1343    c3
_jmp_addr_0x005f1344:    mov                edx, dword ptr [esi]                          // 0x005f1344    8b16
                         mov.s              ecx, esi                                      // 0x005f1346    8bce
                         call               dword ptr [edx + 0x99c]                       // 0x005f1348    ff929c090000
_jmp_addr_0x005f134e:    pop                esi                                           // 0x005f134e    5e
                         add                esp, 0x14                                     // 0x005f134f    83c414
                         ret                                                              // 0x005f1352    c3
                         nop                                                              // 0x005f1353    90
                         nop                                                              // 0x005f1354    90
                         nop                                                              // 0x005f1355    90
                         nop                                                              // 0x005f1356    90
                         nop                                                              // 0x005f1357    90
                         nop                                                              // 0x005f1358    90
                         nop                                                              // 0x005f1359    90
                         nop                                                              // 0x005f135a    90
                         nop                                                              // 0x005f135b    90
                         nop                                                              // 0x005f135c    90
                         nop                                                              // 0x005f135d    90
                         nop                                                              // 0x005f135e    90
                         nop                                                              // 0x005f135f    90
?SetupFleeFromObject@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z:
                         push               esi                                           // 0x005f1360    56
                         mov.s              esi, ecx                                      // 0x005f1361    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x005f1363    8b4c240c
                         mov                eax, dword ptr [esi]                          // 0x005f1367    8b06
                         push               0x6                                           // 0x005f1369    6a06
                         push               ecx                                           // 0x005f136b    51
                         mov.s              ecx, esi                                      // 0x005f136c    8bce
                         call               dword ptr [eax + 0x990]                       // 0x005f136e    ff9090090000
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x005f1374    8b542408
                         {disp32} mov       dword ptr [esi + 0x000000bc], edx             // 0x005f1378    8996bc000000
                         pop                esi                                           // 0x005f137e    5e
                         ret                0x0008                                        // 0x005f137f    c20800
                         nop                                                              // 0x005f1382    90
                         nop                                                              // 0x005f1383    90
                         nop                                                              // 0x005f1384    90
                         nop                                                              // 0x005f1385    90
                         nop                                                              // 0x005f1386    90
                         nop                                                              // 0x005f1387    90
                         nop                                                              // 0x005f1388    90
                         nop                                                              // 0x005f1389    90
                         nop                                                              // 0x005f138a    90
                         nop                                                              // 0x005f138b    90
                         nop                                                              // 0x005f138c    90
                         nop                                                              // 0x005f138d    90
                         nop                                                              // 0x005f138e    90
                         nop                                                              // 0x005f138f    90
?SetupFleeFromPredator@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z:
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x005f1390    8b542408
                         mov                eax, dword ptr [ecx]                          // 0x005f1394    8b01
                         push               edx                                           // 0x005f1396    52
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x005f1397    8b542408
                         push               edx                                           // 0x005f139b    52
                         call               dword ptr [eax + 0x9a4]                       // 0x005f139c    ff90a4090000
                         ret                0x0008                                        // 0x005f13a2    c20800
                         nop                                                              // 0x005f13a5    90
                         nop                                                              // 0x005f13a6    90
                         nop                                                              // 0x005f13a7    90
                         nop                                                              // 0x005f13a8    90
                         nop                                                              // 0x005f13a9    90
                         nop                                                              // 0x005f13aa    90
                         nop                                                              // 0x005f13ab    90
                         nop                                                              // 0x005f13ac    90
                         nop                                                              // 0x005f13ad    90
                         nop                                                              // 0x005f13ae    90
                         nop                                                              // 0x005f13af    90
?SetupLookAtObject@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z:
                         push               esi                                           // 0x005f13b0    56
                         mov.s              esi, ecx                                      // 0x005f13b1    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x005f13b3    8b4c240c
                         mov                eax, dword ptr [esi]                          // 0x005f13b7    8b06
                         push               0x7                                           // 0x005f13b9    6a07
                         push               ecx                                           // 0x005f13bb    51
                         mov.s              ecx, esi                                      // 0x005f13bc    8bce
                         call               dword ptr [eax + 0x990]                       // 0x005f13be    ff9090090000
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x005f13c4    8b542408
                         {disp32} mov       dword ptr [esi + 0x000000bc], edx             // 0x005f13c8    8996bc000000
                         pop                esi                                           // 0x005f13ce    5e
                         ret                0x0008                                        // 0x005f13cf    c20800
                         nop                                                              // 0x005f13d2    90
                         nop                                                              // 0x005f13d3    90
                         nop                                                              // 0x005f13d4    90
                         nop                                                              // 0x005f13d5    90
                         nop                                                              // 0x005f13d6    90
                         nop                                                              // 0x005f13d7    90
                         nop                                                              // 0x005f13d8    90
                         nop                                                              // 0x005f13d9    90
                         nop                                                              // 0x005f13da    90
                         nop                                                              // 0x005f13db    90
                         nop                                                              // 0x005f13dc    90
                         nop                                                              // 0x005f13dd    90
                         nop                                                              // 0x005f13de    90
                         nop                                                              // 0x005f13df    90
?SetupLookAtSpell@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z:
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x005f13e0    8b542408
                         mov                eax, dword ptr [ecx]                          // 0x005f13e4    8b01
                         push               edx                                           // 0x005f13e6    52
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x005f13e7    8b542408
                         push               edx                                           // 0x005f13eb    52
                         call               dword ptr [eax + 0x9a8]                       // 0x005f13ec    ff90a8090000
                         ret                0x0008                                        // 0x005f13f2    c20800
                         nop                                                              // 0x005f13f5    90
                         nop                                                              // 0x005f13f6    90
                         nop                                                              // 0x005f13f7    90
                         nop                                                              // 0x005f13f8    90
                         nop                                                              // 0x005f13f9    90
                         nop                                                              // 0x005f13fa    90
                         nop                                                              // 0x005f13fb    90
                         nop                                                              // 0x005f13fc    90
                         nop                                                              // 0x005f13fd    90
                         nop                                                              // 0x005f13fe    90
                         nop                                                              // 0x005f13ff    90
?SetupLookAtNiceSpell@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z:
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x005f1400    8b542408
                         mov                eax, dword ptr [ecx]                          // 0x005f1404    8b01
                         push               edx                                           // 0x005f1406    52
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x005f1407    8b542408
                         push               edx                                           // 0x005f140b    52
                         call               dword ptr [eax + 0x9a8]                       // 0x005f140c    ff90a8090000
                         ret                0x0008                                        // 0x005f1412    c20800
                         nop                                                              // 0x005f1415    90
                         nop                                                              // 0x005f1416    90
                         nop                                                              // 0x005f1417    90
                         nop                                                              // 0x005f1418    90
                         nop                                                              // 0x005f1419    90
                         nop                                                              // 0x005f141a    90
                         nop                                                              // 0x005f141b    90
                         nop                                                              // 0x005f141c    90
                         nop                                                              // 0x005f141d    90
                         nop                                                              // 0x005f141e    90
                         nop                                                              // 0x005f141f    90
?SetupFollowObject@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z:
                         push               esi                                           // 0x005f1420    56
                         mov.s              esi, ecx                                      // 0x005f1421    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x005f1423    8b4c240c
                         mov                eax, dword ptr [esi]                          // 0x005f1427    8b06
                         push               0x8                                           // 0x005f1429    6a08
                         push               ecx                                           // 0x005f142b    51
                         mov.s              ecx, esi                                      // 0x005f142c    8bce
                         call               dword ptr [eax + 0x990]                       // 0x005f142e    ff9090090000
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x005f1434    8b542408
                         {disp32} mov       dword ptr [esi + 0x000000bc], edx             // 0x005f1438    8996bc000000
                         pop                esi                                           // 0x005f143e    5e
                         ret                0x0008                                        // 0x005f143f    c20800
                         nop                                                              // 0x005f1442    90
                         nop                                                              // 0x005f1443    90
                         nop                                                              // 0x005f1444    90
                         nop                                                              // 0x005f1445    90
                         nop                                                              // 0x005f1446    90
                         nop                                                              // 0x005f1447    90
                         nop                                                              // 0x005f1448    90
                         nop                                                              // 0x005f1449    90
                         nop                                                              // 0x005f144a    90
                         nop                                                              // 0x005f144b    90
                         nop                                                              // 0x005f144c    90
                         nop                                                              // 0x005f144d    90
                         nop                                                              // 0x005f144e    90
                         nop                                                              // 0x005f144f    90
?SetupReactToCreature@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x005f1450    8b442404
                         push               esi                                           // 0x005f1454    56
                         push               edi                                           // 0x005f1455    57
                         push               0x0                                           // 0x005f1456    6a00
                         push               0x009c7f50                                    // 0x005f1458    68507f9c00
                         push               0x009c7f30                                    // 0x005f145d    68307f9c00
                         push               0x0                                           // 0x005f1462    6a00
                         push               eax                                           // 0x005f1464    50
                         mov.s              esi, ecx                                      // 0x005f1465    8bf1
                         call               ___RTDynamicCast                              // 0x005f1467    e8ad451d00
                         mov.s              edi, eax                                      // 0x005f146c    8bf8
                         mov                edx, dword ptr [edi]                          // 0x005f146e    8b17
                         add                esp, 0x14                                     // 0x005f1470    83c414
                         mov.s              ecx, edi                                      // 0x005f1473    8bcf
                         call               dword ptr [edx + 0x7ec]                       // 0x005f1475    ff92ec070000
                         test               eax, eax                                      // 0x005f147b    85c0
                         {disp8} je         _jmp_addr_0x005f149b                          // 0x005f147d    741c
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x005f147f    8b4c2410
                         mov                eax, dword ptr [esi]                          // 0x005f1483    8b06
                         push               0x6                                           // 0x005f1485    6a06
                         push               ecx                                           // 0x005f1487    51
                         mov.s              ecx, esi                                      // 0x005f1488    8bce
                         call               dword ptr [eax + 0x990]                       // 0x005f148a    ff9090090000
                         {disp32} mov       dword ptr [esi + 0x000000bc], edi             // 0x005f1490    89bebc000000
                         pop                edi                                           // 0x005f1496    5f
                         pop                esi                                           // 0x005f1497    5e
                         ret                0x0008                                        // 0x005f1498    c20800
_jmp_addr_0x005f149b:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x005f149b    8b442410
                         mov                edx, dword ptr [esi]                          // 0x005f149f    8b16
                         push               0x7                                           // 0x005f14a1    6a07
                         push               eax                                           // 0x005f14a3    50
                         mov.s              ecx, esi                                      // 0x005f14a4    8bce
                         call               dword ptr [edx + 0x990]                       // 0x005f14a6    ff9290090000
                         {disp32} mov       dword ptr [esi + 0x000000bc], edi             // 0x005f14ac    89bebc000000
                         pop                edi                                           // 0x005f14b2    5f
                         pop                esi                                           // 0x005f14b3    5e
                         ret                0x0008                                        // 0x005f14b4    c20800
                         nop                                                              // 0x005f14b7    90
                         nop                                                              // 0x005f14b8    90
                         nop                                                              // 0x005f14b9    90
                         nop                                                              // 0x005f14ba    90
                         nop                                                              // 0x005f14bb    90
                         nop                                                              // 0x005f14bc    90
                         nop                                                              // 0x005f14bd    90
                         nop                                                              // 0x005f14be    90
                         nop                                                              // 0x005f14bf    90
?SetupReactToFood@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x005f14c0    8b442404
                         push               esi                                           // 0x005f14c4    56
                         push               edi                                           // 0x005f14c5    57
                         push               0x0                                           // 0x005f14c6    6a00
                         push               0x009c7f50                                    // 0x005f14c8    68507f9c00
                         push               0x009c7f30                                    // 0x005f14cd    68307f9c00
                         push               0x0                                           // 0x005f14d2    6a00
                         push               eax                                           // 0x005f14d4    50
                         mov.s              esi, ecx                                      // 0x005f14d5    8bf1
                         call               ___RTDynamicCast                              // 0x005f14d7    e83d451d00
                         mov                edx, dword ptr [esi]                          // 0x005f14dc    8b16
                         add                esp, 0x14                                     // 0x005f14de    83c414
                         mov.s              edi, eax                                      // 0x005f14e1    8bf8
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x005f14e3    8b442410
                         push               0x13                                          // 0x005f14e7    6a13
                         push               eax                                           // 0x005f14e9    50
                         mov.s              ecx, esi                                      // 0x005f14ea    8bce
                         call               dword ptr [edx + 0x990]                       // 0x005f14ec    ff9290090000
                         {disp32} mov       dword ptr [esi + 0x000000bc], edi             // 0x005f14f2    89bebc000000
                         pop                edi                                           // 0x005f14f8    5f
                         pop                esi                                           // 0x005f14f9    5e
                         ret                0x0008                                        // 0x005f14fa    c20800
                         nop                                                              // 0x005f14fd    90
                         nop                                                              // 0x005f14fe    90
                         nop                                                              // 0x005f14ff    90
?SetupReactToMagicTree@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z:
                         push               esi                                           // 0x005f1500    56
                         mov.s              esi, ecx                                      // 0x005f1501    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x005f1503    8b4c240c
                         mov                eax, dword ptr [esi]                          // 0x005f1507    8b06
                         push               0x7                                           // 0x005f1509    6a07
                         push               ecx                                           // 0x005f150b    51
                         mov.s              ecx, esi                                      // 0x005f150c    8bce
                         call               dword ptr [eax + 0x990]                       // 0x005f150e    ff9090090000
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x005f1514    8b542408
                         {disp32} mov       dword ptr [esi + 0x000000bc], edx             // 0x005f1518    8996bc000000
                         pop                esi                                           // 0x005f151e    5e
                         ret                0x0008                                        // 0x005f151f    c20800
                         nop                                                              // 0x005f1522    90
                         nop                                                              // 0x005f1523    90
                         nop                                                              // 0x005f1524    90
                         nop                                                              // 0x005f1525    90
                         nop                                                              // 0x005f1526    90
                         nop                                                              // 0x005f1527    90
                         nop                                                              // 0x005f1528    90
                         nop                                                              // 0x005f1529    90
                         nop                                                              // 0x005f152a    90
                         nop                                                              // 0x005f152b    90
                         nop                                                              // 0x005f152c    90
                         nop                                                              // 0x005f152d    90
                         nop                                                              // 0x005f152e    90
                         nop                                                              // 0x005f152f    90
?SetupReactToFlyingObject@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z:
                         push               esi                                           // 0x005f1530    56
                         mov.s              esi, ecx                                      // 0x005f1531    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x005f1533    8b4c240c
                         mov                eax, dword ptr [esi]                          // 0x005f1537    8b06
                         push               0xc                                           // 0x005f1539    6a0c
                         push               ecx                                           // 0x005f153b    51
                         mov.s              ecx, esi                                      // 0x005f153c    8bce
                         call               dword ptr [eax + 0x990]                       // 0x005f153e    ff9090090000
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x005f1544    8b542408
                         {disp32} mov       dword ptr [esi + 0x000000bc], edx             // 0x005f1548    8996bc000000
                         pop                esi                                           // 0x005f154e    5e
                         ret                0x0008                                        // 0x005f154f    c20800
                         nop                                                              // 0x005f1552    90
                         nop                                                              // 0x005f1553    90
                         nop                                                              // 0x005f1554    90
                         nop                                                              // 0x005f1555    90
                         nop                                                              // 0x005f1556    90
                         nop                                                              // 0x005f1557    90
                         nop                                                              // 0x005f1558    90
                         nop                                                              // 0x005f1559    90
                         nop                                                              // 0x005f155a    90
                         nop                                                              // 0x005f155b    90
                         nop                                                              // 0x005f155c    90
                         nop                                                              // 0x005f155d    90
                         nop                                                              // 0x005f155e    90
                         nop                                                              // 0x005f155f    90
?SetupReactToBall@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z:
                         push               esi                                           // 0x005f1560    56
                         mov.s              esi, ecx                                      // 0x005f1561    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x005f1563    8b4c240c
                         mov                eax, dword ptr [esi]                          // 0x005f1567    8b06
                         push               0x19                                          // 0x005f1569    6a19
                         push               ecx                                           // 0x005f156b    51
                         mov.s              ecx, esi                                      // 0x005f156c    8bce
                         call               dword ptr [eax + 0x990]                       // 0x005f156e    ff9090090000
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x005f1574    8b542408
                         {disp32} mov       dword ptr [esi + 0x000000bc], edx             // 0x005f1578    8996bc000000
                         pop                esi                                           // 0x005f157e    5e
                         ret                0x0008                                        // 0x005f157f    c20800
                         nop                                                              // 0x005f1582    90
                         nop                                                              // 0x005f1583    90
                         nop                                                              // 0x005f1584    90
                         nop                                                              // 0x005f1585    90
                         nop                                                              // 0x005f1586    90
                         nop                                                              // 0x005f1587    90
                         nop                                                              // 0x005f1588    90
                         nop                                                              // 0x005f1589    90
                         nop                                                              // 0x005f158a    90
                         nop                                                              // 0x005f158b    90
                         nop                                                              // 0x005f158c    90
                         nop                                                              // 0x005f158d    90
                         nop                                                              // 0x005f158e    90
                         nop                                                              // 0x005f158f    90
?SetupReactToCreatureGift@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z:
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x005f1590    8b542408
                         mov                eax, dword ptr [ecx]                          // 0x005f1594    8b01
                         push               edx                                           // 0x005f1596    52
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x005f1597    8b542408
                         push               edx                                           // 0x005f159b    52
                         call               dword ptr [eax + 0x9bc]                       // 0x005f159c    ff90bc090000
                         ret                0x0008                                        // 0x005f15a2    c20800
                         nop                                                              // 0x005f15a5    90
                         nop                                                              // 0x005f15a6    90
                         nop                                                              // 0x005f15a7    90
                         nop                                                              // 0x005f15a8    90
                         nop                                                              // 0x005f15a9    90
                         nop                                                              // 0x005f15aa    90
                         nop                                                              // 0x005f15ab    90
                         nop                                                              // 0x005f15ac    90
                         nop                                                              // 0x005f15ad    90
                         nop                                                              // 0x005f15ae    90
                         nop                                                              // 0x005f15af    90
?SetupReactToNewBuilding@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z:
                         ret                0x0008                                        // 0x005f15b0    c20800
                         nop                                                              // 0x005f15b3    90
                         nop                                                              // 0x005f15b4    90
                         nop                                                              // 0x005f15b5    90
                         nop                                                              // 0x005f15b6    90
                         nop                                                              // 0x005f15b7    90
                         nop                                                              // 0x005f15b8    90
                         nop                                                              // 0x005f15b9    90
                         nop                                                              // 0x005f15ba    90
                         nop                                                              // 0x005f15bb    90
                         nop                                                              // 0x005f15bc    90
                         nop                                                              // 0x005f15bd    90
                         nop                                                              // 0x005f15be    90
                         nop                                                              // 0x005f15bf    90
?FleeFromObjectPriority@Living@@UAEEPAVReaction@@0@Z:
                         {disp32} mov       al, byte ptr [data_bytes + 0x3896c0]          // 0x005f15c0    a0c0f6d400
                         ret                0x0008                                        // 0x005f15c5    c20800
                         nop                                                              // 0x005f15c8    90
                         nop                                                              // 0x005f15c9    90
                         nop                                                              // 0x005f15ca    90
                         nop                                                              // 0x005f15cb    90
                         nop                                                              // 0x005f15cc    90
                         nop                                                              // 0x005f15cd    90
                         nop                                                              // 0x005f15ce    90
                         nop                                                              // 0x005f15cf    90
?FleeFromPredatorPriority@Living@@UAEEPAVReaction@@0@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x005f15d0    8b442404
                         push               esi                                           // 0x005f15d4    56
                         {disp8} mov        esi, dword ptr [eax + 0x14]                   // 0x005f15d5    8b7014
                         test               esi, esi                                      // 0x005f15d8    85f6
                         {disp8} je         _jmp_addr_0x005f1603                          // 0x005f15da    7427
                         mov                edx, dword ptr [esi]                          // 0x005f15dc    8b16
                         mov.s              ecx, esi                                      // 0x005f15de    8bce
                         call               dword ptr [edx + 0x454]                       // 0x005f15e0    ff9254040000
                         test               eax, eax                                      // 0x005f15e6    85c0
                         {disp8} je         _jmp_addr_0x005f1603                          // 0x005f15e8    7419
                         {disp8} mov        eax, dword ptr [esi + 0x28]                   // 0x005f15ea    8b4628
                         {disp32} mov       edx, dword ptr [eax + 0x0000010c]             // 0x005f15ed    8b900c010000
                         xor.s              ecx, ecx                                      // 0x005f15f3    33c9
                         {disp8} mov        cx, word ptr [esi + 0x5a]                     // 0x005f15f5    668b4e5a
                         cmp.s              ecx, edx                                      // 0x005f15f9    3bca
                         {disp8} jg         _jmp_addr_0x005f1603                          // 0x005f15fb    7f06
                         xor.s              al, al                                        // 0x005f15fd    32c0
                         pop                esi                                           // 0x005f15ff    5e
                         ret                0x0008                                        // 0x005f1600    c20800
_jmp_addr_0x005f1603:    {disp32} mov       al, byte ptr [data_bytes + 0x38a1b0]          // 0x005f1603    a0b001d500
                         pop                esi                                           // 0x005f1608    5e
                         ret                0x0008                                        // 0x005f1609    c20800
                         nop                                                              // 0x005f160c    90
                         nop                                                              // 0x005f160d    90
                         nop                                                              // 0x005f160e    90
                         nop                                                              // 0x005f160f    90
?LookAtObjectPriority@Living@@UAEEPAVReaction@@0@Z:
                         {disp32} mov       al, byte ptr [data_bytes + 0x389724]          // 0x005f1610    a024f7d400
                         ret                0x0008                                        // 0x005f1615    c20800
                         nop                                                              // 0x005f1618    90
                         nop                                                              // 0x005f1619    90
                         nop                                                              // 0x005f161a    90
                         nop                                                              // 0x005f161b    90
                         nop                                                              // 0x005f161c    90
                         nop                                                              // 0x005f161d    90
                         nop                                                              // 0x005f161e    90
                         nop                                                              // 0x005f161f    90
?FollowObjectPriority@Living@@UAEEPAVReaction@@0@Z:
                         {disp32} mov       al, byte ptr [data_bytes + 0x389788]          // 0x005f1620    a088f7d400
                         ret                0x0008                                        // 0x005f1625    c20800
                         nop                                                              // 0x005f1628    90
                         nop                                                              // 0x005f1629    90
                         nop                                                              // 0x005f162a    90
                         nop                                                              // 0x005f162b    90
                         nop                                                              // 0x005f162c    90
                         nop                                                              // 0x005f162d    90
                         nop                                                              // 0x005f162e    90
                         nop                                                              // 0x005f162f    90
?FleeFromSpellPriority@Living@@UAEEPAVReaction@@0@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x005f1630    8b442404
                         {disp8} mov        eax, dword ptr [eax + 0x14]                   // 0x005f1634    8b4014
                         add                eax, 0x14                                     // 0x005f1637    83c014
                         push               eax                                           // 0x005f163a    50
                         add                ecx, 0x14                                     // 0x005f163b    83c114
                         push               ecx                                           // 0x005f163e    51
                         call               ?FastDistance@GUtils@@SAHABUMapCoords@@0@Z    // 0x005f163f    e8ccb71500
                         add                esp, 0x08                                     // 0x005f1644    83c408
                         cmp                eax, 0x000927c0                               // 0x005f1647    3dc0270900
                         {disp8} jge        _jmp_addr_0x005f167a                          // 0x005f164c    7d2c
                         mov                ecx, 0x000927c0                               // 0x005f164e    b9c0270900
                         sub.s              ecx, eax                                      // 0x005f1653    2bc8
                         lea                eax, dword ptr [ecx + ecx * 0x4]              // 0x005f1655    8d0489
                         lea                ecx, dword ptr [eax + eax * 0x4]              // 0x005f1658    8d0c80
                         shl                ecx, 2                                        // 0x005f165b    c1e102
                         mov                eax, 0x6fd91d85                               // 0x005f165e    b8851dd96f
                         imul               ecx                                           // 0x005f1663    f7e9
                         mov.s              eax, edx                                      // 0x005f1665    8bc2
                         sar                eax, 0x12                                     // 0x005f1667    c1f812
                         mov.s              ecx, eax                                      // 0x005f166a    8bc8
                         shr                ecx, 0x1f                                     // 0x005f166c    c1e91f
                         add.s              eax, ecx                                      // 0x005f166f    03c1
                         add                eax, dword ptr [data_bytes + 0x3897ec]        // 0x005f1671    0305ecf7d400
                         ret                0x0008                                        // 0x005f1677    c20800
_jmp_addr_0x005f167a:    {disp32} mov       al, byte ptr [data_bytes + 0x3897ec]          // 0x005f167a    a0ecf7d400
                         ret                0x0008                                        // 0x005f167f    c20800
                         nop                                                              // 0x005f1682    90
                         nop                                                              // 0x005f1683    90
                         nop                                                              // 0x005f1684    90
                         nop                                                              // 0x005f1685    90
                         nop                                                              // 0x005f1686    90
                         nop                                                              // 0x005f1687    90
                         nop                                                              // 0x005f1688    90
                         nop                                                              // 0x005f1689    90
                         nop                                                              // 0x005f168a    90
                         nop                                                              // 0x005f168b    90
                         nop                                                              // 0x005f168c    90
                         nop                                                              // 0x005f168d    90
                         nop                                                              // 0x005f168e    90
                         nop                                                              // 0x005f168f    90
?LookAtSpellPriority@Living@@UAEEPAVReaction@@0@Z:
                         {disp32} mov       al, byte ptr [data_bytes + 0x389850]          // 0x005f1690    a050f8d400
                         ret                0x0008                                        // 0x005f1695    c20800
                         nop                                                              // 0x005f1698    90
                         nop                                                              // 0x005f1699    90
                         nop                                                              // 0x005f169a    90
                         nop                                                              // 0x005f169b    90
                         nop                                                              // 0x005f169c    90
                         nop                                                              // 0x005f169d    90
                         nop                                                              // 0x005f169e    90
                         nop                                                              // 0x005f169f    90
?LookAtNiceSpellPriority@Living@@UAEEPAVReaction@@0@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x005f16a0    8b442404
                         {disp8} mov        eax, dword ptr [eax + 0x14]                   // 0x005f16a4    8b4014
                         push               esi                                           // 0x005f16a7    56
                         push               0x0                                           // 0x005f16a8    6a00
                         push               0x00be0300                                    // 0x005f16aa    680003be00
                         push               0x009c7f30                                    // 0x005f16af    68307f9c00
                         push               0x0                                           // 0x005f16b4    6a00
                         push               eax                                           // 0x005f16b6    50
                         mov.s              esi, ecx                                      // 0x005f16b7    8bf1
                         call               ___RTDynamicCast                              // 0x005f16b9    e85b431d00
                         add                esp, 0x14                                     // 0x005f16be    83c414
                         test               eax, eax                                      // 0x005f16c1    85c0
                         {disp8} je         _jmp_addr_0x005f16d3                          // 0x005f16c3    740e
                         cmp                dword ptr [eax + 0x000000a0], esi             // 0x005f16c5    39b0a0000000
                         {disp8} jne        _jmp_addr_0x005f16d3                          // 0x005f16cb    7506
                         xor.s              al, al                                        // 0x005f16cd    32c0
                         pop                esi                                           // 0x005f16cf    5e
                         ret                0x0008                                        // 0x005f16d0    c20800
_jmp_addr_0x005f16d3:    {disp32} mov       al, byte ptr [data_bytes + 0x389ef4]          // 0x005f16d3    a0f4fed400
                         pop                esi                                           // 0x005f16d8    5e
                         ret                0x0008                                        // 0x005f16d9    c20800
                         nop                                                              // 0x005f16dc    90
                         nop                                                              // 0x005f16dd    90
                         nop                                                              // 0x005f16de    90
                         nop                                                              // 0x005f16df    90
?FollowSpellPriority@Living@@UAEEPAVReaction@@0@Z:
                         {disp32} mov       al, byte ptr [data_bytes + 0x3898b4]          // 0x005f16e0    a0b4f8d400
                         ret                0x0008                                        // 0x005f16e5    c20800
                         nop                                                              // 0x005f16e8    90
                         nop                                                              // 0x005f16e9    90
                         nop                                                              // 0x005f16ea    90
                         nop                                                              // 0x005f16eb    90
                         nop                                                              // 0x005f16ec    90
                         nop                                                              // 0x005f16ed    90
                         nop                                                              // 0x005f16ee    90
                         nop                                                              // 0x005f16ef    90
?ReactToCreaturePriority@Living@@UAEEPAVReaction@@0@Z:
                         mov                eax, dword ptr [ecx]                          // 0x005f16f0    8b01
                         call               dword ptr [eax + 0x978]                       // 0x005f16f2    ff9078090000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x389918]        // 0x005f16f8    8b0d18f9d400
                         neg                eax                                           // 0x005f16fe    f7d8
                         sbb.s              al, al                                        // 0x005f1700    1ac0
                         not                al                                            // 0x005f1702    f6d0
                         and.s              eax, ecx                                      // 0x005f1704    23c1
                         ret                0x0008                                        // 0x005f1706    c20800
                         nop                                                              // 0x005f1709    90
                         nop                                                              // 0x005f170a    90
                         nop                                                              // 0x005f170b    90
                         nop                                                              // 0x005f170c    90
                         nop                                                              // 0x005f170d    90
                         nop                                                              // 0x005f170e    90
                         nop                                                              // 0x005f170f    90
?ReactToFoodPriority@Living@@UAEEPAVReaction@@0@Z:
                         push               ebx                                           // 0x005f1710    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]                   // 0x005f1711    8b5c2408
                         {disp8} mov        eax, dword ptr [ebx + 0x14]                   // 0x005f1715    8b4314
                         push               esi                                           // 0x005f1718    56
                         push               edi                                           // 0x005f1719    57
                         push               0x0                                           // 0x005f171a    6a00
                         push               0x009c7f50                                    // 0x005f171c    68507f9c00
                         push               0x009c7f30                                    // 0x005f1721    68307f9c00
                         push               0x0                                           // 0x005f1726    6a00
                         push               eax                                           // 0x005f1728    50
                         mov.s              edi, ecx                                      // 0x005f1729    8bf9
                         call               ___RTDynamicCast                              // 0x005f172b    e8e9421d00
                         mov.s              esi, eax                                      // 0x005f1730    8bf0
                         {disp8} mov        al, byte ptr [esi + 0x24]                     // 0x005f1732    8a4624
                         add                esp, 0x14                                     // 0x005f1735    83c414
                         test               al, 0x44                                      // 0x005f1738    a844
                         {disp8} jne        _jmp_addr_0x005f1792                          // 0x005f173a    7556
                         mov                eax, dword ptr [esi]                          // 0x005f173c    8b06
                         push               0x0                                           // 0x005f173e    6a00
                         mov.s              ecx, esi                                      // 0x005f1740    8bce
                         call               dword ptr [eax + 0x98]                        // 0x005f1742    ff9098000000
                         test               eax, eax                                      // 0x005f1748    85c0
                         {disp8} je         _jmp_addr_0x005f1792                          // 0x005f174a    7446
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                   // 0x005f174c    8d4e14
                         push               ecx                                           // 0x005f174f    51
                         {disp8} lea        edx, dword ptr [edi + 0x14]                   // 0x005f1750    8d5714
                         push               edx                                           // 0x005f1753    52
                         call               _jmp_addr_0x0074cd50                          // 0x005f1754    e8f7b51500
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x005f1759    d95c2418
                         add                esp, 0x08                                     // 0x005f175d    83c408
                         mov.s              ecx, ebx                                      // 0x005f1760    8bcb
                         call               ?GetInfo@Reaction@@QBEPAVReactionInfo@@XZ     // 0x005f1762    e8992f0f00
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x005f1767    d9442410
                         {disp8} fcomp      dword ptr [eax + 0x44]                        // 0x005f176b    d85844
                         fnstsw             ax                                            // 0x005f176e    dfe0
                         test               ah, 0x41                                      // 0x005f1770    f6c441
                         {disp8} je         _jmp_addr_0x005f1792                          // 0x005f1773    741d
                         mov                eax, dword ptr [edi]                          // 0x005f1775    8b07
                         push               esi                                           // 0x005f1777    56
                         mov.s              ecx, edi                                      // 0x005f1778    8bcf
                         call               dword ptr [eax + 0x97c]                       // 0x005f177a    ff907c090000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x38997c]        // 0x005f1780    8b0d7cf9d400
                         neg                eax                                           // 0x005f1786    f7d8
                         sbb.s              al, al                                        // 0x005f1788    1ac0
                         pop                edi                                           // 0x005f178a    5f
                         pop                esi                                           // 0x005f178b    5e
                         pop                ebx                                           // 0x005f178c    5b
                         and.s              eax, ecx                                      // 0x005f178d    23c1
                         ret                0x0008                                        // 0x005f178f    c20800
_jmp_addr_0x005f1792:    pop                edi                                           // 0x005f1792    5f
                         pop                esi                                           // 0x005f1793    5e
                         xor.s              al, al                                        // 0x005f1794    32c0
                         pop                ebx                                           // 0x005f1796    5b
                         ret                0x0008                                        // 0x005f1797    c20800
                         call               dword ptr [rdata_bytes + 0x994]               // 0x005f179a    ff1594998a00
?ReactToWoodPriority@Living@@UAEEPAVReaction@@0@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x005f17a0    8b442404
                         {disp8} mov        eax, dword ptr [eax + 0x14]                   // 0x005f17a4    8b4014
                         push               esi                                           // 0x005f17a7    56
                         push               0x0                                           // 0x005f17a8    6a00
                         push               0x009c7f50                                    // 0x005f17aa    68507f9c00
                         push               0x009c7f30                                    // 0x005f17af    68307f9c00
                         push               0x0                                           // 0x005f17b4    6a00
                         push               eax                                           // 0x005f17b6    50
                         mov.s              esi, ecx                                      // 0x005f17b7    8bf1
                         call               ___RTDynamicCast                              // 0x005f17b9    e85b421d00
                         {disp8} mov        cl, byte ptr [eax + 0x24]                     // 0x005f17be    8a4824
                         add                esp, 0x14                                     // 0x005f17c1    83c414
                         test               cl, 0x04                                      // 0x005f17c4    f6c104
                         {disp8} je         _jmp_addr_0x005f17cf                          // 0x005f17c7    7406
                         xor.s              al, al                                        // 0x005f17c9    32c0
                         pop                esi                                           // 0x005f17cb    5e
                         ret                0x0008                                        // 0x005f17cc    c20800
_jmp_addr_0x005f17cf:    mov                edx, dword ptr [esi]                          // 0x005f17cf    8b16
                         push               eax                                           // 0x005f17d1    50
                         mov.s              ecx, esi                                      // 0x005f17d2    8bce
                         call               dword ptr [edx + 0x980]                       // 0x005f17d4    ff9280090000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x389b70]        // 0x005f17da    8b0d70fbd400
                         dec                eax                                           // 0x005f17e0    48
                         neg                eax                                           // 0x005f17e1    f7d8
                         sbb.s              al, al                                        // 0x005f17e3    1ac0
                         not                al                                            // 0x005f17e5    f6d0
                         pop                esi                                           // 0x005f17e7    5e
                         and.s              eax, ecx                                      // 0x005f17e8    23c1
                         ret                0x0008                                        // 0x005f17ea    c20800
                         nop                                                              // 0x005f17ed    90
                         nop                                                              // 0x005f17ee    90
                         nop                                                              // 0x005f17ef    90
?ReactToMagicTreePriority@Living@@UAEEPAVReaction@@0@Z:
                         {disp32} mov       al, byte ptr [data_bytes + 0x3899e0]          // 0x005f17f0    a0e0f9d400
                         ret                0x0008                                        // 0x005f17f5    c20800
                         nop                                                              // 0x005f17f8    90
                         nop                                                              // 0x005f17f9    90
                         nop                                                              // 0x005f17fa    90
                         nop                                                              // 0x005f17fb    90
                         nop                                                              // 0x005f17fc    90
                         nop                                                              // 0x005f17fd    90
                         nop                                                              // 0x005f17fe    90
                         nop                                                              // 0x005f17ff    90
?ReactToFlyingObjectPriority@Living@@UAEEPAVReaction@@0@Z:
                         {disp32} mov       al, byte ptr [ecx + 0x0000008c]               // 0x005f1800    8a818c000000
                         cmp                al, 0x0a                                      // 0x005f1806    3c0a
                         {disp8} je         _jmp_addr_0x005f1816                          // 0x005f1808    740c
                         cmp                al, 0x0b                                      // 0x005f180a    3c0b
                         {disp8} je         _jmp_addr_0x005f1816                          // 0x005f180c    7408
                         {disp32} mov       al, byte ptr [data_bytes + 0x389a44]          // 0x005f180e    a044fad400
                         ret                0x0008                                        // 0x005f1813    c20800
_jmp_addr_0x005f1816:    xor.s              al, al                                        // 0x005f1816    32c0
                         ret                0x0008                                        // 0x005f1818    c20800
                         call               ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                          // 0x005f181b    e8d9ffe0ff
?ReactToBallPriority@Living@@UAEEPAVReaction@@0@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x005f1820    8b442404
                         {disp8} mov        eax, dword ptr [eax + 0x14]                   // 0x005f1824    8b4014
                         push               0x0                                           // 0x005f1827    6a00
                         push               0x009cd070                                    // 0x005f1829    6870d09c00
                         push               0x009c7f30                                    // 0x005f182e    68307f9c00
                         push               0x0                                           // 0x005f1833    6a00
                         push               eax                                           // 0x005f1835    50
                         call               ___RTDynamicCast                              // 0x005f1836    e8de411d00
                         add                esp, 0x14                                     // 0x005f183b    83c414
                         mov.s              ecx, eax                                      // 0x005f183e    8bc8
                         call               ?IsBallFree@Ball@@QAE_NXZ                     // 0x005f1840    e89b48e4ff
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x389b0c]        // 0x005f1845    8b0d0cfbd400
                         dec                eax                                           // 0x005f184b    48
                         neg                eax                                           // 0x005f184c    f7d8
                         sbb.s              al, al                                        // 0x005f184e    1ac0
                         not                al                                            // 0x005f1850    f6d0
                         and.s              eax, ecx                                      // 0x005f1852    23c1
                         ret                0x0008                                        // 0x005f1854    c20800
                         nop                                                              // 0x005f1857    90
                         nop                                                              // 0x005f1858    90
                         nop                                                              // 0x005f1859    90
                         nop                                                              // 0x005f185a    90
                         nop                                                              // 0x005f185b    90
                         nop                                                              // 0x005f185c    90
                         nop                                                              // 0x005f185d    90
                         nop                                                              // 0x005f185e    90
                         nop                                                              // 0x005f185f    90
?ReactToMagicShieldPriority@Living@@UAEEPAVReaction@@0@Z:
                         {disp32} mov       al, byte ptr [data_bytes + 0x389bd4]          // 0x005f1860    a0d4fbd400
                         ret                0x0008                                        // 0x005f1865    c20800
                         nop                                                              // 0x005f1868    90
                         nop                                                              // 0x005f1869    90
                         nop                                                              // 0x005f186a    90
                         nop                                                              // 0x005f186b    90
                         nop                                                              // 0x005f186c    90
                         nop                                                              // 0x005f186d    90
                         nop                                                              // 0x005f186e    90
                         nop                                                              // 0x005f186f    90
?ReactToCreatureGiftPriority@Living@@UAEEPAVReaction@@0@Z:
                         {disp32} mov       al, byte ptr [data_bytes + 0x389c38]          // 0x005f1870    a038fcd400
                         ret                0x0008                                        // 0x005f1875    c20800
                         nop                                                              // 0x005f1878    90
                         nop                                                              // 0x005f1879    90
                         nop                                                              // 0x005f187a    90
                         nop                                                              // 0x005f187b    90
                         nop                                                              // 0x005f187c    90
                         nop                                                              // 0x005f187d    90
                         nop                                                              // 0x005f187e    90
                         nop                                                              // 0x005f187f    90
?ReactToNewBuildingPriority@Living@@UAEEPAVReaction@@0@Z:
                         mov                eax, dword ptr [ecx]                          // 0x005f1880    8b01
                         call               dword ptr [eax + 0x978]                       // 0x005f1882    ff9078090000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x389c9c]        // 0x005f1888    8b0d9cfcd400
                         neg                eax                                           // 0x005f188e    f7d8
                         sbb.s              al, al                                        // 0x005f1890    1ac0
                         not                al                                            // 0x005f1892    f6d0
                         and.s              eax, ecx                                      // 0x005f1894    23c1
                         ret                0x0008                                        // 0x005f1896    c20800
                         nop                                                              // 0x005f1899    90
                         nop                                                              // 0x005f189a    90
                         nop                                                              // 0x005f189b    90
                         nop                                                              // 0x005f189c    90
                         nop                                                              // 0x005f189d    90
                         nop                                                              // 0x005f189e    90
                         nop                                                              // 0x005f189f    90
?ReactToFaintingPriority@Living@@UAEEPAVReaction@@0@Z:
                         {disp32} mov       al, byte ptr [data_bytes + 0x38a084]          // 0x005f18a0    a08400d500
                         ret                0x0008                                        // 0x005f18a5    c20800
                         nop                                                              // 0x005f18a8    90
                         nop                                                              // 0x005f18a9    90
                         nop                                                              // 0x005f18aa    90
                         nop                                                              // 0x005f18ab    90
                         nop                                                              // 0x005f18ac    90
                         nop                                                              // 0x005f18ad    90
                         nop                                                              // 0x005f18ae    90
                         nop                                                              // 0x005f18af    90
?ReactToConfusedPriority@Living@@UAEEPAVReaction@@0@Z:
                         {disp32} mov       al, byte ptr [data_bytes + 0x38a0e8]          // 0x005f18b0    a0e800d500
                         ret                0x0008                                        // 0x005f18b5    c20800
                         nop                                                              // 0x005f18b8    90
                         nop                                                              // 0x005f18b9    90
                         nop                                                              // 0x005f18ba    90
                         nop                                                              // 0x005f18bb    90
                         nop                                                              // 0x005f18bc    90
                         nop                                                              // 0x005f18bd    90
                         nop                                                              // 0x005f18be    90
                         nop                                                              // 0x005f18bf    90
?StandardNumGameTurnsToReactFunction@Living@@UAEIPAVGameThingWithPos@@IM@Z:
                         sub                esp, 0x08                                     // 0x005f18c0    83ec08
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x005f18c3    8b442410
                         {disp32} fld       dword ptr [rdata_bytes + 0x82630]             // 0x005f18c7    d90530b69200
                         lea                eax, dword ptr [eax + eax * 0x4]              // 0x005f18cd    8d0480
                         lea                eax, dword ptr [eax + eax * 0x4]              // 0x005f18d0    8d0480
                         shl                eax, 2                                        // 0x005f18d3    c1e002
                         {disp32} fadd      dword ptr [eax + 0x00d4f6dc]                  // 0x005f18d6    d880dcf6d400
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x005f18dc    c744240400000000
                         fld                st(0)                                         // 0x005f18e4    d9c0
                         {disp8} fsub       dword ptr [esp + 0x14]                        // 0x005f18e6    d8642414
                         fdiv               st, st(1)                                     // 0x005f18ea    d8f1
                         {disp32} fmul      dword ptr [eax + 0x00d4f6e0]                  // 0x005f18ec    d888e0f6d400
                         {disp32} mov       eax, dword ptr [eax + 0x00d4f6c4]             // 0x005f18f2    8b80c4f6d400
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x005f18f8    89442400
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x005f18fc    d80db4a38a00
                         {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x005f1902    d80590a38a00
                         {disp8} fimul      dword ptr [esp + 0x00]                        // 0x005f1908    da4c2400
                         call               _jmp_addr_0x007a1400                          // 0x005f190c    e8effa1a00
                         fstp               st(0)                                         // 0x005f1911    ddd8
                         add                esp, 0x08                                     // 0x005f1913    83c408
                         ret                0x000c                                        // 0x005f1916    c20c00
                         nop                                                              // 0x005f1919    90
                         nop                                                              // 0x005f191a    90
                         nop                                                              // 0x005f191b    90
                         nop                                                              // 0x005f191c    90
                         nop                                                              // 0x005f191d    90
                         nop                                                              // 0x005f191e    90
                         nop                                                              // 0x005f191f    90
?StandardNumGameTurnsBeforeReactingAgainFunction@Living@@UAEIPAVGameThingWithPos@@IM@Z:
                         sub                esp, 0x08                                     // 0x005f1920    83ec08
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x005f1923    8b442410
                         {disp32} fld       dword ptr [rdata_bytes + 0x82630]             // 0x005f1927    d90530b69200
                         lea                eax, dword ptr [eax + eax * 0x4]              // 0x005f192d    8d0480
                         lea                eax, dword ptr [eax + eax * 0x4]              // 0x005f1930    8d0480
                         shl                eax, 2                                        // 0x005f1933    c1e002
                         {disp32} fadd      dword ptr [eax + 0x00d4f6dc]                  // 0x005f1936    d880dcf6d400
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x005f193c    c744240400000000
                         fld                st(0)                                         // 0x005f1944    d9c0
                         {disp8} fsub       dword ptr [esp + 0x14]                        // 0x005f1946    d8642414
                         fdiv               st, st(1)                                     // 0x005f194a    d8f1
                         {disp32} fmul      dword ptr [eax + 0x00d4f6e0]                  // 0x005f194c    d888e0f6d400
                         {disp32} mov       eax, dword ptr [eax + 0x00d4f6c8]             // 0x005f1952    8b80c8f6d400
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x005f1958    89442400
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x005f195c    d80db4a38a00
                         {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x005f1962    d80590a38a00
                         {disp8} fimul      dword ptr [esp + 0x00]                        // 0x005f1968    da4c2400
                         call               _jmp_addr_0x007a1400                          // 0x005f196c    e88ffa1a00
                         fstp               st(0)                                         // 0x005f1971    ddd8
                         add                esp, 0x08                                     // 0x005f1973    83c408
                         ret                0x000c                                        // 0x005f1976    c20c00
                         nop                                                              // 0x005f1979    90
                         nop                                                              // 0x005f197a    90
                         nop                                                              // 0x005f197b    90
                         nop                                                              // 0x005f197c    90
                         nop                                                              // 0x005f197d    90
                         nop                                                              // 0x005f197e    90
                         nop                                                              // 0x005f197f    90
?NumGameTurnsToReactToPredatorFunction@Living@@UAEIPAVGameThingWithPos@@IM@Z:
                         push               ebx                                           // 0x005f1980    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]                   // 0x005f1981    8b5c2408
                         push               esi                                           // 0x005f1985    56
                         push               edi                                           // 0x005f1986    57
                         push               0x0                                           // 0x005f1987    6a00
                         push               0x009c8e00                                    // 0x005f1989    68008e9c00
                         push               0x009c7f30                                    // 0x005f198e    68307f9c00
                         push               0x0                                           // 0x005f1993    6a00
                         push               ebx                                           // 0x005f1995    53
                         mov.s              edi, ecx                                      // 0x005f1996    8bf9
                         call               ___RTDynamicCast                              // 0x005f1998    e87c401d00
                         mov.s              esi, eax                                      // 0x005f199d    8bf0
                         add                esp, 0x14                                     // 0x005f199f    83c414
                         test               esi, esi                                      // 0x005f19a2    85f6
                         {disp8} jne        _jmp_addr_0x005f19ac                          // 0x005f19a4    7506
                         pop                edi                                           // 0x005f19a6    5f
                         pop                esi                                           // 0x005f19a7    5e
                         pop                ebx                                           // 0x005f19a8    5b
                         ret                0x000c                                        // 0x005f19a9    c20c00
_jmp_addr_0x005f19ac:    cmp                byte ptr [edi + 0x0000008c], 0x07             // 0x005f19ac    80bf8c00000007
                         {disp8} jne        _jmp_addr_0x005f19e0                          // 0x005f19b3    752b
                         mov                eax, dword ptr [esi]                          // 0x005f19b5    8b06
                         mov.s              ecx, esi                                      // 0x005f19b7    8bce
                         call               dword ptr [eax + 0x154]                       // 0x005f19b9    ff9054010000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x26e4]              // 0x005f19bf    d81de4b68a00
                         fnstsw             ax                                            // 0x005f19c5    dfe0
                         test               ah, 0x41                                      // 0x005f19c7    f6c441
                         {disp8} jne        _jmp_addr_0x005f19e0                          // 0x005f19ca    7514
                         push               esi                                           // 0x005f19cc    56
                         mov.s              ecx, edi                                      // 0x005f19cd    8bcf
                         call               _jmp_addr_0x005f1e60                          // 0x005f19cf    e88c040000
                         test               eax, eax                                      // 0x005f19d4    85c0
                         {disp8} je         _jmp_addr_0x005f19e0                          // 0x005f19d6    7408
                         pop                edi                                           // 0x005f19d8    5f
                         pop                esi                                           // 0x005f19d9    5e
                         xor.s              eax, eax                                      // 0x005f19da    33c0
                         pop                ebx                                           // 0x005f19dc    5b
                         ret                0x000c                                        // 0x005f19dd    c20c00
_jmp_addr_0x005f19e0:    {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x005f19e0    8b442418
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x005f19e4    8b4c2414
                         mov                edx, dword ptr [edi]                          // 0x005f19e8    8b17
                         push               eax                                           // 0x005f19ea    50
                         push               ecx                                           // 0x005f19eb    51
                         push               ebx                                           // 0x005f19ec    53
                         mov.s              ecx, edi                                      // 0x005f19ed    8bcf
                         call               dword ptr [edx + 0xac0]                       // 0x005f19ef    ff92c00a0000
                         pop                edi                                           // 0x005f19f5    5f
                         pop                esi                                           // 0x005f19f6    5e
                         pop                ebx                                           // 0x005f19f7    5b
                         ret                0x000c                                        // 0x005f19f8    c20c00
                         call               ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                          // 0x005f19fb    e8f9fde0ff
?NumGameTurnsBeforeReactingAgainToPredatorFunction@Living@@UAEIPAVGameThingWithPos@@IM@Z:
                         push               ebx                                           // 0x005f1a00    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]                   // 0x005f1a01    8b5c2408
                         push               esi                                           // 0x005f1a05    56
                         push               edi                                           // 0x005f1a06    57
                         push               0x0                                           // 0x005f1a07    6a00
                         push               0x009c8e00                                    // 0x005f1a09    68008e9c00
                         push               0x009c7f30                                    // 0x005f1a0e    68307f9c00
                         push               0x0                                           // 0x005f1a13    6a00
                         push               ebx                                           // 0x005f1a15    53
                         mov.s              edi, ecx                                      // 0x005f1a16    8bf9
                         call               ___RTDynamicCast                              // 0x005f1a18    e8fc3f1d00
                         mov.s              esi, eax                                      // 0x005f1a1d    8bf0
                         add                esp, 0x14                                     // 0x005f1a1f    83c414
                         test               esi, esi                                      // 0x005f1a22    85f6
                         {disp8} je         _jmp_addr_0x005f1a7c                          // 0x005f1a24    7456
                         mov                eax, dword ptr [esi]                          // 0x005f1a26    8b06
                         mov.s              ecx, esi                                      // 0x005f1a28    8bce
                         call               dword ptr [eax + 0x154]                       // 0x005f1a2a    ff9054010000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x26e4]              // 0x005f1a30    d81de4b68a00
                         fnstsw             ax                                            // 0x005f1a36    dfe0
                         test               ah, 0x41                                      // 0x005f1a38    f6c441
                         {disp8} je         _jmp_addr_0x005f1a7c                          // 0x005f1a3b    743f
                         add                esi, 0x14                                     // 0x005f1a3d    83c614
                         {disp8} lea        ecx, dword ptr [edi + 0x14]                   // 0x005f1a40    8d4f14
                         push               esi                                           // 0x005f1a43    56
                         push               ecx                                           // 0x005f1a44    51
                         call               _jmp_addr_0x0074cd50                          // 0x005f1a45    e806b31500
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x005f1a4a    8b4c241c
                         lea                eax, dword ptr [ecx + ecx * 0x4]              // 0x005f1a4e    8d0489
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x005f1a51    8d1480
                         {disp32} fcomp     dword ptr [edx * 0x4 + 0x00d4f6f0]            // 0x005f1a54    d81c95f0f6d400
                         add                esp, 0x08                                     // 0x005f1a5b    83c408
                         fnstsw             ax                                            // 0x005f1a5e    dfe0
                         test               ah, 0x01                                      // 0x005f1a60    f6c401
                         {disp8} jne        _jmp_addr_0x005f1a7c                          // 0x005f1a63    7517
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x005f1a65    8b542418
                         mov                eax, dword ptr [edi]                          // 0x005f1a69    8b07
                         push               edx                                           // 0x005f1a6b    52
                         push               ecx                                           // 0x005f1a6c    51
                         push               ebx                                           // 0x005f1a6d    53
                         mov.s              ecx, edi                                      // 0x005f1a6e    8bcf
                         call               dword ptr [eax + 0xac4]                       // 0x005f1a70    ff90c40a0000
                         pop                edi                                           // 0x005f1a76    5f
                         pop                esi                                           // 0x005f1a77    5e
                         pop                ebx                                           // 0x005f1a78    5b
                         ret                0x000c                                        // 0x005f1a79    c20c00
_jmp_addr_0x005f1a7c:    pop                edi                                           // 0x005f1a7c    5f
                         pop                esi                                           // 0x005f1a7d    5e
                         xor.s              eax, eax                                      // 0x005f1a7e    33c0
                         pop                ebx                                           // 0x005f1a80    5b
                         ret                0x000c                                        // 0x005f1a81    c20c00
                         nop                                                              // 0x005f1a84    90
                         nop                                                              // 0x005f1a85    90
                         nop                                                              // 0x005f1a86    90
                         nop                                                              // 0x005f1a87    90
                         nop                                                              // 0x005f1a88    90
                         nop                                                              // 0x005f1a89    90
                         nop                                                              // 0x005f1a8a    90
                         nop                                                              // 0x005f1a8b    90
                         nop                                                              // 0x005f1a8c    90
                         nop                                                              // 0x005f1a8d    90
                         nop                                                              // 0x005f1a8e    90
                         nop                                                              // 0x005f1a8f    90
?NumGameTurnsToReactToBurningObjectFunction@Living@@UAEIPAVGameThingWithPos@@IM@Z:
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x005f1a90    8b54240c
                         mov                eax, dword ptr [ecx]                          // 0x005f1a94    8b01
                         push               edx                                           // 0x005f1a96    52
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x005f1a97    8b54240c
                         push               edx                                           // 0x005f1a9b    52
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x005f1a9c    8b54240c
                         push               edx                                           // 0x005f1aa0    52
                         call               dword ptr [eax + 0xac0]                       // 0x005f1aa1    ff90c00a0000
                         ret                0x000c                                        // 0x005f1aa7    c20c00
                         call               dword ptr [__imp__GetStdHandle@4]             // 0x005f1aaa    ff15b0928a00
?NumGameTurnsBeforeReactingAgainToBurningObjectFunction@Living@@UAEIPAVGameThingWithPos@@IM@Z:
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x005f1ab0    8b54240c
                         mov                eax, dword ptr [ecx]                          // 0x005f1ab4    8b01
                         push               edx                                           // 0x005f1ab6    52
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x005f1ab7    8b54240c
                         push               edx                                           // 0x005f1abb    52
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x005f1abc    8b54240c
                         push               edx                                           // 0x005f1ac0    52
                         call               dword ptr [eax + 0xac4]                       // 0x005f1ac1    ff90c40a0000
                         ret                0x000c                                        // 0x005f1ac7    c20c00
                         call               dword ptr [rdata_bytes + 0x754]               // 0x005f1aca    ff1554978a00
?NumGameTurnsToReactToShieldFunction@Living@@UAEIPAVGameThingWithPos@@IM@Z:
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x005f1ad0    8b54240c
                         mov                eax, dword ptr [ecx]                          // 0x005f1ad4    8b01
                         push               edx                                           // 0x005f1ad6    52
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x005f1ad7    8b54240c
                         push               edx                                           // 0x005f1adb    52
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x005f1adc    8b54240c
                         push               edx                                           // 0x005f1ae0    52
                         call               dword ptr [eax + 0xac0]                       // 0x005f1ae1    ff90c00a0000
                         ret                0x000c                                        // 0x005f1ae7    c20c00
                         call               dword ptr [__imp__BinkNextFrame@4]            // 0x005f1aea    ff1544998a00
?NumGameTurnsBeforeReactingToShieldAgainFunction@Living@@UAEIPAVGameThingWithPos@@IM@Z:
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x005f1af0    8b54240c
                         mov                eax, dword ptr [ecx]                          // 0x005f1af4    8b01
                         push               edx                                           // 0x005f1af6    52
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x005f1af7    8b54240c
                         push               edx                                           // 0x005f1afb    52
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x005f1afc    8b54240c
                         push               edx                                           // 0x005f1b00    52
                         call               dword ptr [eax + 0xac4]                       // 0x005f1b01    ff90c40a0000
                         ret                0x000c                                        // 0x005f1b07    c20c00
                         call               dword ptr [__imp__GetOpenFileNameA@4]         // 0x005f1b0a    ff1570998a00
?NumGameTurnsToReactToCreatureFunction@Living@@UAEIPAVGameThingWithPos@@IM@Z:
                         sub                esp, 0x08                                     // 0x005f1b10    83ec08
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x005f1b13    8b442410
                         {disp32} fld       dword ptr [rdata_bytes + 0x82630]             // 0x005f1b17    d90530b69200
                         push               ebx                                           // 0x005f1b1d    53
                         push               esi                                           // 0x005f1b1e    56
                         lea                eax, dword ptr [eax + eax * 0x4]              // 0x005f1b1f    8d0480
                         lea                esi, dword ptr [eax + eax * 0x4]              // 0x005f1b22    8d3480
                         shl                esi, 2                                        // 0x005f1b25    c1e602
                         {disp32} fadd      dword ptr [esi + 0x00d4f6dc]                  // 0x005f1b28    d886dcf6d400
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x005f1b2e    8b442414
                         {disp32} fld       dword ptr [esi + 0x00d4f6e0]                  // 0x005f1b32    d986e0f6d400
                         push               edi                                           // 0x005f1b38    57
                         push               0x0                                           // 0x005f1b39    6a00
                         fld                st(1)                                         // 0x005f1b3b    d9c1
                         push               0x009c8060                                    // 0x005f1b3d    6860809c00
                         {disp8} fsub       dword ptr [esp + 0x28]                        // 0x005f1b42    d8642428
                         push               0x009c7f30                                    // 0x005f1b46    68307f9c00
                         push               0x0                                           // 0x005f1b4b    6a00
                         push               eax                                           // 0x005f1b4d    50
                         fmul               st, st(1)                                     // 0x005f1b4e    d8c9
                         mov.s              ebx, ecx                                      // 0x005f1b50    8bd9
                         fdiv               st, st(2)                                     // 0x005f1b52    d8f2
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x005f1b54    d90590a38a00
                         fsub               st, st(2)                                     // 0x005f1b5a    d8e2
                         faddp              st(1), st                                     // 0x005f1b5c    dec1
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x005f1b5e    d95c2430
                         fstp               st(0)                                         // 0x005f1b62    ddd8
                         fstp               st(0)                                         // 0x005f1b64    ddd8
                         call               ___RTDynamicCast                              // 0x005f1b66    e8ae3e1d00
                         mov.s              edi, eax                                      // 0x005f1b6b    8bf8
                         add                esp, 0x14                                     // 0x005f1b6d    83c414
                         test               edi, edi                                      // 0x005f1b70    85ff
                         {disp8} jne        _jmp_addr_0x005f1b7d                          // 0x005f1b72    7509
                         pop                edi                                           // 0x005f1b74    5f
                         pop                esi                                           // 0x005f1b75    5e
                         pop                ebx                                           // 0x005f1b76    5b
                         add                esp, 0x08                                     // 0x005f1b77    83c408
                         ret                0x000c                                        // 0x005f1b7a    c20c00
_jmp_addr_0x005f1b7d:    mov                edx, dword ptr [edi]                          // 0x005f1b7d    8b17
                         mov.s              ecx, edi                                      // 0x005f1b7f    8bcf
                         call               dword ptr [edx + 0x1a8]                       // 0x005f1b81    ff92a8010000
                         sub                eax, 0x19                                     // 0x005f1b87    83e819
                         {disp8} je         _jmp_addr_0x005f1b9b                          // 0x005f1b8a    740f
                         dec                eax                                           // 0x005f1b8c    48
                         {disp8} jne        _jmp_addr_0x005f1ba5                          // 0x005f1b8d    7516
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x005f1b8f    d944241c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x19c50]             // 0x005f1b93    d80d502c8c00
                         {disp8} jmp        _jmp_addr_0x005f1ba1                          // 0x005f1b99    eb06
_jmp_addr_0x005f1b9b:    {disp8} fld        dword ptr [esp + 0x1c]                        // 0x005f1b9b    d944241c
                         fadd.s             st(0), st(0)                                  // 0x005f1b9f    dcc0
_jmp_addr_0x005f1ba1:    {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x005f1ba1    d95c241c
_jmp_addr_0x005f1ba5:    mov                eax, dword ptr [ebx]                          // 0x005f1ba5    8b03
                         mov.s              ecx, ebx                                      // 0x005f1ba7    8bcb
                         call               dword ptr [eax + 0x48]                        // 0x005f1ba9    ff5048
                         test               eax, eax                                      // 0x005f1bac    85c0
                         {disp8} je         _jmp_addr_0x005f1bd0                          // 0x005f1bae    7420
                         mov                edx, dword ptr [ebx]                          // 0x005f1bb0    8b13
                         push               edi                                           // 0x005f1bb2    57
                         mov.s              ecx, ebx                                      // 0x005f1bb3    8bcb
                         call               dword ptr [edx + 0x48]                        // 0x005f1bb5    ff5248
                         mov.s              ecx, eax                                      // 0x005f1bb8    8bc8
                         call               _jmp_addr_0x007436f0                          // 0x005f1bba    e8311b1500
                         cmp                eax, 0x03                                     // 0x005f1bbf    83f803
                         {disp8} jne        _jmp_addr_0x005f1bd0                          // 0x005f1bc2    750c
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x005f1bc4    d944241c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2418]              // 0x005f1bc8    d80d18b48a00
                         {disp8} jmp        _jmp_addr_0x005f1bd4                          // 0x005f1bce    eb04
_jmp_addr_0x005f1bd0:    {disp8} fld        dword ptr [esp + 0x1c]                        // 0x005f1bd0    d944241c
_jmp_addr_0x005f1bd4:    {disp32} mov       eax, dword ptr [esi + 0x00d4f6c4]             // 0x005f1bd4    8b86c4f6d400
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x005f1bda    8944240c
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x005f1bde    c744241000000000
                         {disp8} fild       qword ptr [esp + 0x0c]                        // 0x005f1be6    df6c240c
                         fmul               st, st(1)                                     // 0x005f1bea    d8c9
                         call               _jmp_addr_0x007a1400                          // 0x005f1bec    e80ff81a00
                         fstp               st(0)                                         // 0x005f1bf1    ddd8
                         pop                edi                                           // 0x005f1bf3    5f
                         pop                esi                                           // 0x005f1bf4    5e
                         pop                ebx                                           // 0x005f1bf5    5b
                         add                esp, 0x08                                     // 0x005f1bf6    83c408
                         ret                0x000c                                        // 0x005f1bf9    c20c00
                         nop                                                              // 0x005f1bfc    90
                         nop                                                              // 0x005f1bfd    90
                         nop                                                              // 0x005f1bfe    90
                         nop                                                              // 0x005f1bff    90
?NumGameTurnsBeforeReactingAgainToCreatureFunction@Living@@UAEIPAVGameThingWithPos@@IM@Z:
                         sub                esp, 0x08                                     // 0x005f1c00    83ec08
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x005f1c03    8b442410
                         push               ebx                                           // 0x005f1c07    53
                         push               esi                                           // 0x005f1c08    56
                         lea                eax, dword ptr [eax + eax * 0x4]              // 0x005f1c09    8d0480
                         lea                esi, dword ptr [eax + eax * 0x4]              // 0x005f1c0c    8d3480
                         shl                esi, 2                                        // 0x005f1c0f    c1e602
                         {disp32} fld       dword ptr [esi + 0x00d4f6e0]                  // 0x005f1c12    d986e0f6d400
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x005f1c18    8b442414
                         fld                st(0)                                         // 0x005f1c1c    d9c0
                         push               edi                                           // 0x005f1c1e    57
                         {disp8} fmul       dword ptr [esp + 0x20]                        // 0x005f1c1f    d84c2420
                         push               0x0                                           // 0x005f1c23    6a00
                         {disp32} fld       dword ptr [rdata_bytes + 0x82630]             // 0x005f1c25    d90530b69200
                         push               0x009c8060                                    // 0x005f1c2b    6860809c00
                         {disp32} fadd      dword ptr [esi + 0x00d4f6dc]                  // 0x005f1c30    d886dcf6d400
                         push               0x009c7f30                                    // 0x005f1c36    68307f9c00
                         push               0x0                                           // 0x005f1c3b    6a00
                         push               eax                                           // 0x005f1c3d    50
                         fdivp              st(1), st                                     // 0x005f1c3e    def9
                         mov.s              ebx, ecx                                      // 0x005f1c40    8bd9
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x005f1c42    d90590a38a00
                         fsub               st, st(2)                                     // 0x005f1c48    d8e2
                         faddp              st(1), st                                     // 0x005f1c4a    dec1
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x005f1c4c    d95c2430
                         fstp               st(0)                                         // 0x005f1c50    ddd8
                         call               ___RTDynamicCast                              // 0x005f1c52    e8c23d1d00
                         mov.s              edi, eax                                      // 0x005f1c57    8bf8
                         mov                edx, dword ptr [edi]                          // 0x005f1c59    8b17
                         add                esp, 0x14                                     // 0x005f1c5b    83c414
                         mov.s              ecx, edi                                      // 0x005f1c5e    8bcf
                         call               dword ptr [edx + 0x1a8]                       // 0x005f1c60    ff92a8010000
                         sub                eax, 0x19                                     // 0x005f1c66    83e819
                         {disp8} je         _jmp_addr_0x005f1c7a                          // 0x005f1c69    740f
                         dec                eax                                           // 0x005f1c6b    48
                         {disp8} jne        _jmp_addr_0x005f1c88                          // 0x005f1c6c    751a
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x005f1c6e    d944241c
                         {disp32} fmul      dword ptr [__real@3eaaaaab]                   // 0x005f1c72    d80d6cb28a00
                         {disp8} jmp        _jmp_addr_0x005f1c84                          // 0x005f1c78    eb0a
_jmp_addr_0x005f1c7a:    {disp8} fld        dword ptr [esp + 0x1c]                        // 0x005f1c7a    d944241c
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x005f1c7e    d80db4a38a00
_jmp_addr_0x005f1c84:    {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x005f1c84    d95c241c
_jmp_addr_0x005f1c88:    {disp32} mov       eax, dword ptr [edi + 0x00000164]             // 0x005f1c88    8b8764010000
                         {disp32} mov       eax, dword ptr [eax + 0x00000f60]             // 0x005f1c8e    8b80600f0000
                         cmp                eax, 0x00000148                               // 0x005f1c94    3d48010000
                         {disp8} jge        _jmp_addr_0x005f1cb9                          // 0x005f1c99    7d1e
                         mov.s              ecx, eax                                      // 0x005f1c9b    8bc8
                         shl                ecx, 4                                        // 0x005f1c9d    c1e104
                         add.s              ecx, eax                                      // 0x005f1ca0    03c8
                         shl                ecx, 4                                        // 0x005f1ca2    c1e104
                         cmp                dword ptr [ecx + 0x00c6c4ac], 0x18            // 0x005f1ca5    83b9acc4c60018
                         {disp8} je         _jmp_addr_0x005f1cb9                          // 0x005f1cac    740b
                         pop                edi                                           // 0x005f1cae    5f
                         pop                esi                                           // 0x005f1caf    5e
                         xor.s              eax, eax                                      // 0x005f1cb0    33c0
                         pop                ebx                                           // 0x005f1cb2    5b
                         add                esp, 0x08                                     // 0x005f1cb3    83c408
                         ret                0x000c                                        // 0x005f1cb6    c20c00
_jmp_addr_0x005f1cb9:    mov                edx, dword ptr [ebx]                          // 0x005f1cb9    8b13
                         mov.s              ecx, ebx                                      // 0x005f1cbb    8bcb
                         call               dword ptr [edx + 0x48]                        // 0x005f1cbd    ff5248
                         test               eax, eax                                      // 0x005f1cc0    85c0
                         {disp8} je         _jmp_addr_0x005f1ce8                          // 0x005f1cc2    7424
                         mov                eax, dword ptr [ebx]                          // 0x005f1cc4    8b03
                         push               edi                                           // 0x005f1cc6    57
                         mov.s              ecx, ebx                                      // 0x005f1cc7    8bcb
                         call               dword ptr [eax + 0x48]                        // 0x005f1cc9    ff5048
                         mov.s              ecx, eax                                      // 0x005f1ccc    8bc8
                         call               _jmp_addr_0x007436f0                          // 0x005f1cce    e81d1a1500
                         cmp                eax, 0x03                                     // 0x005f1cd3    83f803
                         {disp8} jl         _jmp_addr_0x005f1ce8                          // 0x005f1cd6    7c10
                         cmp                eax, 0x04                                     // 0x005f1cd8    83f804
                         {disp8} jg         _jmp_addr_0x005f1ce8                          // 0x005f1cdb    7f0b
                         pop                edi                                           // 0x005f1cdd    5f
                         pop                esi                                           // 0x005f1cde    5e
                         xor.s              eax, eax                                      // 0x005f1cdf    33c0
                         pop                ebx                                           // 0x005f1ce1    5b
                         add                esp, 0x08                                     // 0x005f1ce2    83c408
                         ret                0x000c                                        // 0x005f1ce5    c20c00
_jmp_addr_0x005f1ce8:    {disp32} mov       ecx, dword ptr [esi + 0x00d4f6c8]             // 0x005f1ce8    8b8ec8f6d400
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                   // 0x005f1cee    894c240c
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x005f1cf2    c744241000000000
                         {disp8} fild       qword ptr [esp + 0x0c]                        // 0x005f1cfa    df6c240c
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x005f1cfe    d84c241c
                         call               _jmp_addr_0x007a1400                          // 0x005f1d02    e8f9f61a00
                         pop                edi                                           // 0x005f1d07    5f
                         pop                esi                                           // 0x005f1d08    5e
                         pop                ebx                                           // 0x005f1d09    5b
                         add                esp, 0x08                                     // 0x005f1d0a    83c408
                         ret                0x000c                                        // 0x005f1d0d    c20c00
?FleeingFromObjectReaction@PuzzleHorse@@UAE_NXZ:
                         push               ecx                                           // 0x005f1d10    51
                         push               esi                                           // 0x005f1d11    56
                         mov.s              esi, ecx                                      // 0x005f1d12    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x000000bc]             // 0x005f1d14    8b86bc000000
                         test               eax, eax                                      // 0x005f1d1a    85c0
                         {disp8} jne        _jmp_addr_0x005f1d23                          // 0x005f1d1c    7505
                         xor.s              eax, eax                                      // 0x005f1d1e    33c0
                         pop                esi                                           // 0x005f1d20    5e
                         pop                ecx                                           // 0x005f1d21    59
                         ret                                                              // 0x005f1d22    c3
_jmp_addr_0x005f1d23:    mov.s              ecx, esi                                      // 0x005f1d23    8bce
                         call               ?GetReaction@Living@@QAEXXZ                   // 0x005f1d25    e836adffff
                         test               eax, eax                                      // 0x005f1d2a    85c0
                         {disp8} je         _jmp_addr_0x005f1d79                          // 0x005f1d2c    744b
                         {disp32} mov       eax, dword ptr [esi + 0x000000bc]             // 0x005f1d2e    8b86bc000000
                         add                eax, 0x14                                     // 0x005f1d34    83c014
                         push               eax                                           // 0x005f1d37    50
                         {disp8} lea        eax, dword ptr [esi + 0x14]                   // 0x005f1d38    8d4614
                         push               eax                                           // 0x005f1d3b    50
                         call               _jmp_addr_0x0074cd50                          // 0x005f1d3c    e80fb01500
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x005f1d41    d95c240c
                         add                esp, 0x08                                     // 0x005f1d45    83c408
                         mov.s              ecx, esi                                      // 0x005f1d48    8bce
                         call               ?GetReaction@Living@@QAEXXZ                   // 0x005f1d4a    e811adffff
                         mov.s              ecx, eax                                      // 0x005f1d4f    8bc8
                         call               ?GetInfo@Reaction@@QBEPAVReactionInfo@@XZ     // 0x005f1d51    e8aa290f00
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x005f1d56    d9442404
                         {disp8} fcomp      dword ptr [eax + 0x44]                        // 0x005f1d5a    d85844
                         fnstsw             ax                                            // 0x005f1d5d    dfe0
                         test               ah, 0x41                                      // 0x005f1d5f    f6c441
                         {disp8} je         _jmp_addr_0x005f1d79                          // 0x005f1d62    7415
                         {disp32} mov       eax, dword ptr [esi + 0x000000bc]             // 0x005f1d64    8b86bc000000
                         push               0x1e                                          // 0x005f1d6a    6a1e
                         push               0x1e                                          // 0x005f1d6c    6a1e
                         push               eax                                           // 0x005f1d6e    50
                         mov.s              ecx, esi                                      // 0x005f1d6f    8bce
                         call               ?FleeFromObjectIfComingTowardsMe@Living@@QAEIPAVGameThingWithPos@@W4VILLAGER_STATES@@1@Z                          // 0x005f1d71    e81a000000
                         pop                esi                                           // 0x005f1d76    5e
                         pop                ecx                                           // 0x005f1d77    59
                         ret                                                              // 0x005f1d78    c3
_jmp_addr_0x005f1d79:    mov                edx, dword ptr [esi]                          // 0x005f1d79    8b16
                         mov.s              ecx, esi                                      // 0x005f1d7b    8bce
                         call               dword ptr [edx + 0x99c]                       // 0x005f1d7d    ff929c090000
                         mov                eax, 0x00000001                               // 0x005f1d83    b801000000
                         pop                esi                                           // 0x005f1d88    5e
                         pop                ecx                                           // 0x005f1d89    59
                         ret                                                              // 0x005f1d8a    c3
                         call               ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                          // 0x005f1d8b    e869fae0ff
?FleeFromObjectIfComingTowardsMe@Living@@QAEIPAVGameThingWithPos@@W4VILLAGER_STATES@@1@Z:
                         sub                esp, 0x10                                     // 0x005f1d90    83ec10
                         push               esi                                           // 0x005f1d93    56
                         mov.s              esi, ecx                                      // 0x005f1d94    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x000000bc]             // 0x005f1d96    8b86bc000000
                         add                eax, 0x14                                     // 0x005f1d9c    83c014
                         push               edi                                           // 0x005f1d9f    57
                         push               eax                                           // 0x005f1da0    50
                         {disp8} lea        eax, dword ptr [esi + 0x14]                   // 0x005f1da1    8d4614
                         push               eax                                           // 0x005f1da4    50
                         call               _jmp_addr_0x0074cd50                          // 0x005f1da5    e8a6af1500
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x005f1daa    d95c2410
                         add                esp, 0x08                                     // 0x005f1dae    83c408
                         mov.s              ecx, esi                                      // 0x005f1db1    8bce
                         call               ?GetReaction@Living@@QAEXXZ                   // 0x005f1db3    e8a8acffff
                         mov.s              ecx, eax                                      // 0x005f1db8    8bc8
                         call               ?GetInfo@Reaction@@QBEPAVReactionInfo@@XZ     // 0x005f1dba    e841290f00
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x005f1dbf    d9442408
                         {disp8} fcomp      dword ptr [eax + 0x40]                        // 0x005f1dc3    d85840
                         {disp8} mov        edi, dword ptr [esp + 0x1c]                   // 0x005f1dc6    8b7c241c
                         fnstsw             ax                                            // 0x005f1dca    dfe0
                         test               ah, 0x41                                      // 0x005f1dcc    f6c441
                         {disp8} jne        _jmp_addr_0x005f1e03                          // 0x005f1dcf    7532
                         push               edi                                           // 0x005f1dd1    57
                         mov.s              ecx, esi                                      // 0x005f1dd2    8bce
                         call               _jmp_addr_0x005f1e60                          // 0x005f1dd4    e887000000
                         test               eax, eax                                      // 0x005f1dd9    85c0
                         {disp8} jne        _jmp_addr_0x005f1e03                          // 0x005f1ddb    7526
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x005f1ddd    8b442420
                         mov                edx, dword ptr [esi]                          // 0x005f1de1    8b16
                         push               eax                                           // 0x005f1de3    50
                         mov.s              ecx, esi                                      // 0x005f1de4    8bce
                         call               dword ptr [edx + 0x8e8]                       // 0x005f1de6    ff92e8080000
                         push               0x1                                           // 0x005f1dec    6a01
                         push               edi                                           // 0x005f1dee    57
                         mov.s              ecx, esi                                      // 0x005f1def    8bce
                         call               ?LookAtObject@Living@@QAEIPAVGameThingWithPos@@K@Z                          // 0x005f1df1    e82aa7ffff
                         pop                edi                                           // 0x005f1df6    5f
                         mov                eax, 0x00000001                               // 0x005f1df7    b801000000
                         pop                esi                                           // 0x005f1dfc    5e
                         add                esp, 0x10                                     // 0x005f1dfd    83c410
                         ret                0x000c                                        // 0x005f1e00    c20c00
_jmp_addr_0x005f1e03:    mov                edx, dword ptr [esi]                          // 0x005f1e03    8b16
                         xor.s              eax, eax                                      // 0x005f1e05    33c0
                         push               0x41200000                                    // 0x005f1e07    6800002041
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x005f1e0c    89442410
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x005f1e10    89442414
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x005f1e14    89442418
                         push               edi                                           // 0x005f1e18    57
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x005f1e19    8d442414
                         push               eax                                           // 0x005f1e1d    50
                         mov.s              ecx, esi                                      // 0x005f1e1e    8bce
                         call               dword ptr [edx + 0xafc]                       // 0x005f1e20    ff92fc0a0000
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x005f1e26    8d4c240c
                         call               ?InBounds@MapCoords@@QBEIXZ                   // 0x005f1e2a    e891240100
                         test               eax, eax                                      // 0x005f1e2f    85c0
                         {disp8} je         _jmp_addr_0x005f1e44                          // 0x005f1e31    7411
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x005f1e33    8b4c2424
                         push               ecx                                           // 0x005f1e37    51
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x005f1e38    8d542410
                         push               edx                                           // 0x005f1e3c    52
                         mov.s              ecx, esi                                      // 0x005f1e3d    8bce
                         call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13// 0x005f1e3f    e84c0a0000
_jmp_addr_0x005f1e44:    pop                edi                                           // 0x005f1e44    5f
                         mov                eax, 0x00000001                               // 0x005f1e45    b801000000
                         pop                esi                                           // 0x005f1e4a    5e
                         add                esp, 0x10                                     // 0x005f1e4b    83c410
                         ret                0x000c                                        // 0x005f1e4e    c20c00
                         nop                                                              // 0x005f1e51    90
                         nop                                                              // 0x005f1e52    90
                         nop                                                              // 0x005f1e53    90
                         nop                                                              // 0x005f1e54    90
                         nop                                                              // 0x005f1e55    90
                         nop                                                              // 0x005f1e56    90
                         nop                                                              // 0x005f1e57    90
                         nop                                                              // 0x005f1e58    90
                         nop                                                              // 0x005f1e59    90
                         nop                                                              // 0x005f1e5a    90
                         nop                                                              // 0x005f1e5b    90
                         nop                                                              // 0x005f1e5c    90
                         nop                                                              // 0x005f1e5d    90
                         nop                                                              // 0x005f1e5e    90
                         nop                                                              // 0x005f1e5f    90
_jmp_addr_0x005f1e60:    sub                esp, 0x34                                     // 0x005f1e60    83ec34
                         {disp8} mov        eax, dword ptr [ecx + 0x1c]                   // 0x005f1e63    8b411c
                         push               esi                                           // 0x005f1e66    56
                         {disp8} lea        esi, dword ptr [ecx + 0x14]                   // 0x005f1e67    8d7114
                         push               edi                                           // 0x005f1e6a    57
                         mov.s              ecx, esi                                      // 0x005f1e6b    8bce
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x005f1e6d    89442408
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x005f1e71    e81a122100
                         {disp8} fadd       dword ptr [esp + 0x08]                        // 0x005f1e76    d8442408
                         {disp8} mov        edi, dword ptr [esp + 0x40]                   // 0x005f1e7a    8b7c2440
                         {disp8} mov        ecx, dword ptr [edi + 0x1c]                   // 0x005f1e7e    8b4f1c
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x005f1e81    d95c241c
                         {disp8} mov        dword ptr [esp + 0x40], ecx                   // 0x005f1e85    894c2440
                         fild               dword ptr [esi]                               // 0x005f1e89    db06
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x005f1e8b    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x005f1e91    d95c2418
                         {disp8} fild       dword ptr [esi + 0x04]                        // 0x005f1e95    db4604
                         {disp8} lea        esi, dword ptr [edi + 0x14]                   // 0x005f1e98    8d7714
                         mov.s              ecx, esi                                      // 0x005f1e9b    8bce
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x005f1e9d    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x005f1ea3    d95c2420
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x005f1ea7    e8e4112100
                         {disp8} fadd       dword ptr [esp + 0x40]                        // 0x005f1eac    d8442440
                         fild               dword ptr [esi]                               // 0x005f1eb0    db06
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x005f1eb2    d80da4a38a00
                         {disp8} fild       dword ptr [esi + 0x04]                        // 0x005f1eb8    db4604
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x005f1ebb    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x005f1ec1    d95c2438
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x005f1ec5    d9442418
                         fsub               st, st(1)                                     // 0x005f1ec9    d8e1
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x005f1ecb    d95c240c
                         fstp               st(0)                                         // 0x005f1ecf    ddd8
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x005f1ed1    d944241c
                         fsub               st, st(1)                                     // 0x005f1ed5    d8e1
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x005f1ed7    d95c2410
                         fstp               st(0)                                         // 0x005f1edb    ddd8
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x005f1edd    d9442420
                         {disp8} fsub       dword ptr [esp + 0x38]                        // 0x005f1ee1    d8642438
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x005f1ee5    d95c2414
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x005f1ee9    d944240c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005f1eed    d81d98a38a00
                         fnstsw             ax                                            // 0x005f1ef3    dfe0
                         test               ah, 0x40                                      // 0x005f1ef5    f6c440
                         {disp8} je         _jmp_addr_0x005f1f1c                          // 0x005f1ef8    7422
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x005f1efa    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005f1efe    d81d98a38a00
                         fnstsw             ax                                            // 0x005f1f04    dfe0
                         test               ah, 0x40                                      // 0x005f1f06    f6c440
                         {disp8} je         _jmp_addr_0x005f1f1c                          // 0x005f1f09    7411
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x005f1f0b    d9442414
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005f1f0f    d81d98a38a00
                         fnstsw             ax                                            // 0x005f1f15    dfe0
                         test               ah, 0x40                                      // 0x005f1f17    f6c440
                         {disp8} jne        _jmp_addr_0x005f1f60                          // 0x005f1f1a    7544
_jmp_addr_0x005f1f1c:    {disp8} fld        dword ptr [esp + 0x14]                        // 0x005f1f1c    d9442414
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x005f1f20    d84c2414
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x005f1f24    d9442410
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x005f1f28    d84c2410
                         faddp              st(1), st                                     // 0x005f1f2c    dec1
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x005f1f2e    d944240c
                         {disp8} fmul       dword ptr [esp + 0x0c]                        // 0x005f1f32    d84c240c
                         faddp              st(1), st                                     // 0x005f1f36    dec1
                         fsqrt                                                            // 0x005f1f38    d9fa
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                   // 0x005f1f3a    d83d90a38a00
                         fld                st(0)                                         // 0x005f1f40    d9c0
                         {disp8} fmul       dword ptr [esp + 0x0c]                        // 0x005f1f42    d84c240c
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x005f1f46    d95c240c
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x005f1f4a    d9442410
                         fmul               st, st(1)                                     // 0x005f1f4e    d8c9
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x005f1f50    d95c2410
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x005f1f54    d9442414
                         fmul               st, st(1)                                     // 0x005f1f58    d8c9
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x005f1f5a    d95c2414
                         fstp               st(0)                                         // 0x005f1f5e    ddd8
_jmp_addr_0x005f1f60:    mov                edx, dword ptr [edi]                          // 0x005f1f60    8b17
                         {disp8} lea        eax, dword ptr [esp + 0x24]                   // 0x005f1f62    8d442424
                         push               eax                                           // 0x005f1f66    50
                         mov.s              ecx, edi                                      // 0x005f1f67    8bcf
                         call               dword ptr [edx + 0x168]                       // 0x005f1f69    ff9268010000
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x005f1f6f    d9442424
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x005f1f73    d81598a38a00
                         pop                edi                                           // 0x005f1f79    5f
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x005f1f7a    d9442424
                         pop                esi                                           // 0x005f1f7e    5e
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x005f1f7f    d9442424
                         fnstsw             ax                                            // 0x005f1f83    dfe0
                         test               ah, 0x40                                      // 0x005f1f85    f6c440
                         {disp8} je         _jmp_addr_0x005f1fa6                          // 0x005f1f88    741c
                         fld                st(1)                                         // 0x005f1f8a    d9c1
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005f1f8c    d81d98a38a00
                         fnstsw             ax                                            // 0x005f1f92    dfe0
                         test               ah, 0x40                                      // 0x005f1f94    f6c440
                         {disp8} je         _jmp_addr_0x005f1fa6                          // 0x005f1f97    740d
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x005f1f99    d81598a38a00
                         fnstsw             ax                                            // 0x005f1f9f    dfe0
                         test               ah, 0x40                                      // 0x005f1fa1    f6c440
                         {disp8} jne        _jmp_addr_0x005f1fd2                          // 0x005f1fa4    752c
_jmp_addr_0x005f1fa6:    fld                st(0)                                         // 0x005f1fa6    d9c0
                         fmul               st, st(1)                                     // 0x005f1fa8    d8c9
                         fld                st(2)                                         // 0x005f1faa    d9c2
                         fmul               st, st(3)                                     // 0x005f1fac    d8cb
                         faddp              st(1), st                                     // 0x005f1fae    dec1
                         fld                st(3)                                         // 0x005f1fb0    d9c3
                         fmul               st, st(4)                                     // 0x005f1fb2    d8cc
                         faddp              st(1), st                                     // 0x005f1fb4    dec1
                         fsqrt                                                            // 0x005f1fb6    d9fa
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                   // 0x005f1fb8    d83d90a38a00
                         fxch               st(3)                                         // 0x005f1fbe    d9cb
                         fmul               st, st(3)                                     // 0x005f1fc0    d8cb
                         fxch               st(3)                                         // 0x005f1fc2    d9cb
                         fxch               st(2)                                         // 0x005f1fc4    d9ca
                         fmul               st, st(2)                                     // 0x005f1fc6    d8ca
                         fxch               st(2)                                         // 0x005f1fc8    d9ca
                         fxch               st(1)                                         // 0x005f1fca    d9c9
                         fmul               st, st(1)                                     // 0x005f1fcc    d8c9
                         fxch               st(1)                                         // 0x005f1fce    d9c9
                         fstp               st(0)                                         // 0x005f1fd0    ddd8
_jmp_addr_0x005f1fd2:    {disp8} fmul       dword ptr [esp + 0x0c]                        // 0x005f1fd2    d84c240c
                         fxch               st(1)                                         // 0x005f1fd6    d9c9
                         {disp8} fmul       dword ptr [esp + 0x08]                        // 0x005f1fd8    d84c2408
                         faddp              st(1), st                                     // 0x005f1fdc    dec1
                         fxch               st(1)                                         // 0x005f1fde    d9c9
                         {disp8} fmul       dword ptr [esp + 0x04]                        // 0x005f1fe0    d84c2404
                         faddp              st(1), st                                     // 0x005f1fe4    dec1
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1ba04]             // 0x005f1fe6    d81d044a8c00
                         fnstsw             ax                                            // 0x005f1fec    dfe0
                         test               ah, 0x01                                      // 0x005f1fee    f6c401
                         {disp8} je         _jmp_addr_0x005f1ffb                          // 0x005f1ff1    7408
                         xor.s              eax, eax                                      // 0x005f1ff3    33c0
                         add                esp, 0x34                                     // 0x005f1ff5    83c434
                         ret                0x0004                                        // 0x005f1ff8    c20400
_jmp_addr_0x005f1ffb:    mov                eax, 0x00000001                               // 0x005f1ffb    b801000000
                         add                esp, 0x34                                     // 0x005f2000    83c434
                         ret                0x0004                                        // 0x005f2003    c20400
                         nop                                                              // 0x005f2006    90
                         nop                                                              // 0x005f2007    90
                         nop                                                              // 0x005f2008    90
                         nop                                                              // 0x005f2009    90
                         nop                                                              // 0x005f200a    90
                         nop                                                              // 0x005f200b    90
                         nop                                                              // 0x005f200c    90
                         nop                                                              // 0x005f200d    90
                         nop                                                              // 0x005f200e    90
                         nop                                                              // 0x005f200f    90
?GetFleeingPositionFromStationaryObject@Living@@UAEXPAUMapCoords@@PAVGameThingWithPos@@M@Z:
                         sub                esp, 0x3c                                     // 0x005f2010    83ec3c
                         {disp8} mov        eax, dword ptr [esp + 0x44]                   // 0x005f2013    8b442444
                         push               esi                                           // 0x005f2017    56
                         {disp8} lea        esi, dword ptr [eax + 0x14]                   // 0x005f2018    8d7014
                         push               edi                                           // 0x005f201b    57
                         mov.s              edi, ecx                                      // 0x005f201c    8bf9
                         {disp8} mov        ecx, dword ptr [esi + 0x08]                   // 0x005f201e    8b4e08
                         {disp8} mov        dword ptr [esp + 0x4c], ecx                   // 0x005f2021    894c244c
                         mov.s              ecx, esi                                      // 0x005f2025    8bce
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x005f2027    e864102100
                         {disp8} fadd       dword ptr [esp + 0x4c]                        // 0x005f202c    d844244c
                         {disp8} mov        edx, dword ptr [edi + 0x1c]                   // 0x005f2030    8b571c
                         {disp8} mov        dword ptr [esp + 0x4c], edx                   // 0x005f2033    8954244c
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x005f2037    d95c2418
                         fild               dword ptr [esi]                               // 0x005f203b    db06
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x005f203d    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x005f2043    d95c2414
                         {disp8} fild       dword ptr [esi + 0x04]                        // 0x005f2047    db4604
                         {disp8} lea        esi, dword ptr [edi + 0x14]                   // 0x005f204a    8d7714
                         mov.s              ecx, esi                                      // 0x005f204d    8bce
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x005f204f    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x005f2055    d95c241c
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x005f2059    e832102100
                         {disp8} fadd       dword ptr [esp + 0x4c]                        // 0x005f205e    d844244c
                         pop                edi                                           // 0x005f2062    5f
                         fild               dword ptr [esi]                               // 0x005f2063    db06
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x005f2065    d80da4a38a00
                         {disp8} fild       dword ptr [esi + 0x04]                        // 0x005f206b    db4604
                         pop                esi                                           // 0x005f206e    5e
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x005f206f    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x005f2075    d95c2438
                         fld                st(0)                                         // 0x005f2079    d9c0
                         {disp8} fsub       dword ptr [esp + 0x0c]                        // 0x005f207b    d864240c
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x005f207f    d95c2418
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x005f2083    8b442418
                         fld                st(1)                                         // 0x005f2087    d9c1
                         {disp8} fsub       dword ptr [esp + 0x10]                        // 0x005f2089    d8642410
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x005f208d    89442400
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x005f2091    d95c241c
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x005f2095    d9442438
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x005f2099    8b4c241c
                         {disp8} fsub       dword ptr [esp + 0x14]                        // 0x005f209d    d8642414
                         {disp8} mov        dword ptr [esp + 0x04], ecx                   // 0x005f20a1    894c2404
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x005f20a5    c744240400000000
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x005f20ad    d95c2420
                         {disp8} fld        dword ptr [esp + 0x00]                        // 0x005f20b1    d9442400
                         {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x005f20b5    8b542420
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x005f20b9    d81598a38a00
                         {disp8} mov        dword ptr [esp + 0x08], edx                   // 0x005f20bf    89542408
                         fnstsw             ax                                            // 0x005f20c3    dfe0
                         test               ah, 0x40                                      // 0x005f20c5    f6c440
                         {disp8} je         _jmp_addr_0x005f20db                          // 0x005f20c8    7411
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x005f20ca    d9442408
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005f20ce    d81d98a38a00
                         fnstsw             ax                                            // 0x005f20d4    dfe0
                         test               ah, 0x40                                      // 0x005f20d6    f6c440
                         {disp8} jne        _jmp_addr_0x005f2109                          // 0x005f20d9    752e
_jmp_addr_0x005f20db:    {disp8} fld        dword ptr [esp + 0x08]                        // 0x005f20db    d9442408
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x005f20df    c744240400000000
                         {disp8} fmul       dword ptr [esp + 0x08]                        // 0x005f20e7    d84c2408
                         fld                st(1)                                         // 0x005f20eb    d9c1
                         fmul               st, st(2)                                     // 0x005f20ed    d8ca
                         faddp              st(1), st                                     // 0x005f20ef    dec1
                         fsqrt                                                            // 0x005f20f1    d9fa
                         {disp8} fdivr      dword ptr [esp + 0x48]                        // 0x005f20f3    d87c2448
                         fxch               st(1)                                         // 0x005f20f7    d9c9
                         fmul               st, st(1)                                     // 0x005f20f9    d8c9
                         fxch               st(1)                                         // 0x005f20fb    d9c9
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x005f20fd    d9442408
                         fmul               st, st(1)                                     // 0x005f2101    d8c9
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x005f2103    d95c2408
                         fstp               st(0)                                         // 0x005f2107    ddd8
_jmp_addr_0x005f2109:    fadd               st, st(1)                                     // 0x005f2109    d8c1
                         {disp8} lea        eax, dword ptr [esp + 0x00]                   // 0x005f210b    8d442400
                         push               eax                                           // 0x005f210f    50
                         {disp8} lea        ecx, dword ptr [esp + 0x28]                   // 0x005f2110    8d4c2428
                         {disp8} fstp       dword ptr [esp + 0x04]                        // 0x005f2114    d95c2404
                         fstp               st(0)                                         // 0x005f2118    ddd8
                         {disp8} fadd       dword ptr [esp + 0x08]                        // 0x005f211a    d8442408
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x005f211e    d95c2408
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x005f2122    d944240c
                         {disp8} fadd       dword ptr [esp + 0x3c]                        // 0x005f2126    d844243c
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x005f212a    d95c240c
                         call               @__ct__9MapCoordsFRC7LHPoint@12               // 0x005f212e    e82d100100
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x005f2133    8b542424
                         {disp8} mov        ecx, dword ptr [esp + 0x40]                   // 0x005f2137    8b4c2440
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x005f213b    8b442428
                         mov                dword ptr [ecx], edx                          // 0x005f213f    8911
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                   // 0x005f2141    8b54242c
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x005f2145    894104
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x005f2148    895108
                         add                esp, 0x3c                                     // 0x005f214b    83c43c
                         ret                0x000c                                        // 0x005f214e    c20c00
                         nop                                                              // 0x005f2151    90
                         nop                                                              // 0x005f2152    90
                         nop                                                              // 0x005f2153    90
                         nop                                                              // 0x005f2154    90
                         nop                                                              // 0x005f2155    90
                         nop                                                              // 0x005f2156    90
                         nop                                                              // 0x005f2157    90
                         nop                                                              // 0x005f2158    90
                         nop                                                              // 0x005f2159    90
                         nop                                                              // 0x005f215a    90
                         nop                                                              // 0x005f215b    90
                         nop                                                              // 0x005f215c    90
                         nop                                                              // 0x005f215d    90
                         nop                                                              // 0x005f215e    90
                         nop                                                              // 0x005f215f    90
?GetFleeingPositionFromMovingObject@Living@@UAEXPAUMapCoords@@PAVGameThingWithPos@@M@Z:
                         sub                esp, 0x30                                     // 0x005f2160    83ec30
                         push               ebx                                           // 0x005f2163    53
                         push               esi                                           // 0x005f2164    56
                         mov.s              esi, ecx                                      // 0x005f2165    8bf1
                         push               edi                                           // 0x005f2167    57
                         {disp8} mov        edi, dword ptr [esp + 0x44]                   // 0x005f2168    8b7c2444
                         mov                eax, dword ptr [edi]                          // 0x005f216c    8b07
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x005f216e    8d4c2418
                         push               ecx                                           // 0x005f2172    51
                         mov.s              ecx, edi                                      // 0x005f2173    8bcf
                         call               dword ptr [eax + 0x168]                       // 0x005f2175    ff9068010000
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x005f217b    d9442418
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x005f217f    d84c2418
                         {disp8} fstp       dword ptr [esp + 0x44]                        // 0x005f2183    d95c2444
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x005f2187    d944241c
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x005f218b    d84c241c
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x005f218f    d9442420
                         {disp8} fmul       dword ptr [esp + 0x20]                        // 0x005f2193    d84c2420
                         faddp              st(1), st                                     // 0x005f2197    dec1
                         {disp8} fadd       dword ptr [esp + 0x44]                        // 0x005f2199    d8442444
                         fsqrt                                                            // 0x005f219d    d9fa
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005f219f    d81d98a38a00
                         fnstsw             ax                                            // 0x005f21a5    dfe0
                         test               ah, 0x41                                      // 0x005f21a7    f6c441
                         {disp32} jne       _jmp_addr_0x005f237c                          // 0x005f21aa    0f85cc010000
                         {disp8} mov        ebx, dword ptr [esp + 0x40]                   // 0x005f21b0    8b5c2440
                         {disp8} lea        eax, dword ptr [esi + 0x14]                   // 0x005f21b4    8d4614
                         mov.s              edx, eax                                      // 0x005f21b7    8bd0
                         push               ebp                                           // 0x005f21b9    55
                         mov                ebp, dword ptr [edx]                          // 0x005f21ba    8b2a
                         mov.s              ecx, ebx                                      // 0x005f21bc    8bcb
                         mov                dword ptr [ecx], ebp                          // 0x005f21be    8929
                         {disp8} mov        ebp, dword ptr [edx + 0x04]                   // 0x005f21c0    8b6a04
                         {disp8} mov        dword ptr [ecx + 0x04], ebp                   // 0x005f21c3    896904
                         {disp8} mov        edx, dword ptr [edx + 0x08]                   // 0x005f21c6    8b5208
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x005f21c9    895108
                         fild               dword ptr [eax]                               // 0x005f21cc    db00
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x005f21ce    8b44241c
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x005f21d2    89442418
                         {disp32} fmul      dword ptr [rdata_bytes + 0x82630]             // 0x005f21d6    d80d30b69200
                         pop                ebp                                           // 0x005f21dc    5d
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]              // 0x005f21dd    d80d1cc48a00
                         {disp8} fild       dword ptr [edi + 0x14]                        // 0x005f21e3    db4714
                         {disp32} fmul      dword ptr [rdata_bytes + 0x82630]             // 0x005f21e6    d80d30b69200
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]              // 0x005f21ec    d80d1cc48a00
                         fsubp              st(1), st                                     // 0x005f21f2    dee9
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x005f21f4    d95c2424
                         {disp8} fild       dword ptr [esi + 0x18]                        // 0x005f21f8    db4618
                         {disp32} fmul      dword ptr [rdata_bytes + 0x82630]             // 0x005f21fb    d80d30b69200
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]              // 0x005f2201    d80d1cc48a00
                         {disp8} fild       dword ptr [edi + 0x18]                        // 0x005f2207    db4718
                         {disp32} fmul      dword ptr [rdata_bytes + 0x82630]             // 0x005f220a    d80d30b69200
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]              // 0x005f2210    d80d1cc48a00
                         fsubp              st(1), st                                     // 0x005f2216    dee9
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x005f2218    d95c242c
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x005f221c    d9442420
                         fchs                                                             // 0x005f2220    d9e0
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x005f2222    d95c240c
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x005f2226    d944240c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005f222a    d81d98a38a00
                         fnstsw             ax                                            // 0x005f2230    dfe0
                         test               ah, 0x40                                      // 0x005f2232    f6c440
                         {disp8} je         _jmp_addr_0x005f2259                          // 0x005f2235    7422
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x005f2237    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005f223b    d81d98a38a00
                         fnstsw             ax                                            // 0x005f2241    dfe0
                         test               ah, 0x40                                      // 0x005f2243    f6c440
                         {disp8} je         _jmp_addr_0x005f2259                          // 0x005f2246    7411
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x005f2248    d9442418
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005f224c    d81d98a38a00
                         fnstsw             ax                                            // 0x005f2252    dfe0
                         test               ah, 0x40                                      // 0x005f2254    f6c440
                         {disp8} jne        _jmp_addr_0x005f2289                          // 0x005f2257    7530
_jmp_addr_0x005f2259:    {disp8} fld        dword ptr [esp + 0x10]                        // 0x005f2259    d9442410
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x005f225d    d84c2410
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x005f2261    d944240c
                         {disp8} fmul       dword ptr [esp + 0x0c]                        // 0x005f2265    d84c240c
                         faddp              st(1), st                                     // 0x005f2269    dec1
                         {disp8} fadd       dword ptr [esp + 0x44]                        // 0x005f226b    d8442444
                         fsqrt                                                            // 0x005f226f    d9fa
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                   // 0x005f2271    d83d90a38a00
                         fld                st(0)                                         // 0x005f2277    d9c0
                         {disp8} fmul       dword ptr [esp + 0x0c]                        // 0x005f2279    d84c240c
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x005f227d    d95c240c
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x005f2281    d84c2418
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x005f2285    d95c2414
_jmp_addr_0x005f2289:    push               0x000002f1                                    // 0x005f2289    68f1020000
                         push               0x00bf3b3c                                    // 0x005f228e    683c3bbf00
                         push               0x41000000                                    // 0x005f2293    6800000041
                         call               ?GameFloatRand@GRand@@SAMM@Z                  // 0x005f2298    e893c20e00
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x005f229d    d9442418
                         {disp8} fmul       dword ptr [esp + 0x54]                        // 0x005f22a1    d84c2454
                         push               0x000002f2                                    // 0x005f22a5    68f2020000
                         push               0x00bf3b3c                                    // 0x005f22aa    683c3bbf00
                         faddp              st(1), st                                     // 0x005f22af    dec1
                         push               0x41000000                                    // 0x005f22b1    6800000041
                         {disp32} fsub      dword ptr [rdata_bytes + 0x2418]              // 0x005f22b6    d82518b48a00
                         {disp8} fstp       dword ptr [esp + 0x48]                        // 0x005f22bc    d95c2448
                         call               ?GameFloatRand@GRand@@SAMM@Z                  // 0x005f22c0    e86bc20e00
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x005f22c5    d944242c
                         {disp8} fmul       dword ptr [esp + 0x60]                        // 0x005f22c9    d84c2460
                         add                esp, 0x18                                     // 0x005f22cd    83c418
                         faddp              st(1), st                                     // 0x005f22d0    dec1
                         {disp32} fsub      dword ptr [rdata_bytes + 0x2418]              // 0x005f22d2    d82518b48a00
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x005f22d8    d9442414
                         {disp8} fmul       dword ptr [esp + 0x2c]                        // 0x005f22dc    d84c242c
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x005f22e0    d944240c
                         {disp8} fmul       dword ptr [esp + 0x24]                        // 0x005f22e4    d84c2424
                         faddp              st(1), st                                     // 0x005f22e8    dec1
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005f22ea    d81d98a38a00
                         fild               dword ptr [ebx]                               // 0x005f22f0    db03
                         {disp32} fmul      dword ptr [rdata_bytes + 0x82630]             // 0x005f22f2    d80d30b69200
                         fnstsw             ax                                            // 0x005f22f8    dfe0
                         test               ah, 0x01                                      // 0x005f22fa    f6c401
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]              // 0x005f22fd    d80d1cc48a00
                         {disp8} jne        _jmp_addr_0x005f234c                          // 0x005f2303    7547
                         {disp8} fadd       dword ptr [esp + 0x30]                        // 0x005f2305    d8442430
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]              // 0x005f2309    d80d08c48a00
                         {disp32} fdiv      dword ptr [rdata_bytes + 0x82630]             // 0x005f230f    d83530b69200
                         call               _jmp_addr_0x007a1400                          // 0x005f2315    e8e6f01a00
                         {disp8} fild       dword ptr [ebx + 0x04]                        // 0x005f231a    db4304
                         mov                dword ptr [ebx], eax                          // 0x005f231d    8903
                         {disp32} fmul      dword ptr [rdata_bytes + 0x82630]             // 0x005f231f    d80d30b69200
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]              // 0x005f2325    d80d1cc48a00
                         fxch               st(1)                                         // 0x005f232b    d9c9
_jmp_addr_0x005f232d:    faddp              st(1), st                                     // 0x005f232d    dec1
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]              // 0x005f232f    d80d08c48a00
                         {disp32} fdiv      dword ptr [rdata_bytes + 0x82630]             // 0x005f2335    d83530b69200
                         call               _jmp_addr_0x007a1400                          // 0x005f233b    e8c0f01a00
                         pop                edi                                           // 0x005f2340    5f
                         pop                esi                                           // 0x005f2341    5e
                         {disp8} mov        dword ptr [ebx + 0x04], eax                   // 0x005f2342    894304
                         pop                ebx                                           // 0x005f2345    5b
                         add                esp, 0x30                                     // 0x005f2346    83c430
                         ret                0x000c                                        // 0x005f2349    c20c00
_jmp_addr_0x005f234c:    {disp8} fld        dword ptr [esp + 0x30]                        // 0x005f234c    d9442430
                         fchs                                                             // 0x005f2350    d9e0
                         faddp              st(1), st                                     // 0x005f2352    dec1
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]              // 0x005f2354    d80d08c48a00
                         {disp32} fdiv      dword ptr [rdata_bytes + 0x82630]             // 0x005f235a    d83530b69200
                         call               _jmp_addr_0x007a1400                          // 0x005f2360    e89bf01a00
                         {disp8} fild       dword ptr [ebx + 0x04]                        // 0x005f2365    db4304
                         mov                dword ptr [ebx], eax                          // 0x005f2368    8903
                         {disp32} fmul      dword ptr [rdata_bytes + 0x82630]             // 0x005f236a    d80d30b69200
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]              // 0x005f2370    d80d1cc48a00
                         fxch               st(1)                                         // 0x005f2376    d9c9
                         fchs                                                             // 0x005f2378    d9e0
                         {disp8} jmp        _jmp_addr_0x005f232d                          // 0x005f237a    ebb1
_jmp_addr_0x005f237c:    {disp8} mov        eax, dword ptr [esp + 0x48]                   // 0x005f237c    8b442448
                         {disp8} mov        ecx, dword ptr [esp + 0x40]                   // 0x005f2380    8b4c2440
                         mov                edx, dword ptr [esi]                          // 0x005f2384    8b16
                         push               eax                                           // 0x005f2386    50
                         push               edi                                           // 0x005f2387    57
                         push               ecx                                           // 0x005f2388    51
                         mov.s              ecx, esi                                      // 0x005f2389    8bce
                         call               dword ptr [edx + 0xb00]                       // 0x005f238b    ff92000b0000
                         pop                edi                                           // 0x005f2391    5f
                         pop                esi                                           // 0x005f2392    5e
                         pop                ebx                                           // 0x005f2393    5b
                         add                esp, 0x30                                     // 0x005f2394    83c430
                         ret                0x000c                                        // 0x005f2397    c20c00
                         call               dword ptr [__imp__DirectDrawEnumerateA@4]     // 0x005f239a    ff1528908a00
?LookingAtObjectReaction@PuzzleHorse@@UAE_NXZ:
                         push               ecx                                           // 0x005f23a0    51
                         push               esi                                           // 0x005f23a1    56
                         mov.s              esi, ecx                                      // 0x005f23a2    8bf1
                         call               ?GetReaction@Living@@QAEXXZ                   // 0x005f23a4    e8b7a6ffff
                         test               eax, eax                                      // 0x005f23a9    85c0
                         {disp8} jne        _jmp_addr_0x005f23b0                          // 0x005f23ab    7503
                         pop                esi                                           // 0x005f23ad    5e
                         pop                ecx                                           // 0x005f23ae    59
                         ret                                                              // 0x005f23af    c3
_jmp_addr_0x005f23b0:    {disp32} mov       eax, dword ptr [esi + 0x000000bc]             // 0x005f23b0    8b86bc000000
                         test               eax, eax                                      // 0x005f23b6    85c0
                         {disp8} jne        _jmp_addr_0x005f23bd                          // 0x005f23b8    7503
                         pop                esi                                           // 0x005f23ba    5e
                         pop                ecx                                           // 0x005f23bb    59
                         ret                                                              // 0x005f23bc    c3
_jmp_addr_0x005f23bd:    add                eax, 0x14                                     // 0x005f23bd    83c014
                         push               eax                                           // 0x005f23c0    50
                         {disp8} lea        eax, dword ptr [esi + 0x14]                   // 0x005f23c1    8d4614
                         push               eax                                           // 0x005f23c4    50
                         call               _jmp_addr_0x0074cd50                          // 0x005f23c5    e886a91500
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x005f23ca    d95c240c
                         add                esp, 0x08                                     // 0x005f23ce    83c408
                         mov.s              ecx, esi                                      // 0x005f23d1    8bce
                         call               ?GetReaction@Living@@QAEXXZ                   // 0x005f23d3    e888a6ffff
                         mov.s              ecx, eax                                      // 0x005f23d8    8bc8
                         call               ?GetInfo@Reaction@@QBEPAVReactionInfo@@XZ     // 0x005f23da    e821230f00
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x005f23df    d9442404
                         {disp8} fcomp      dword ptr [eax + 0x44]                        // 0x005f23e3    d85844
                         fnstsw             ax                                            // 0x005f23e6    dfe0
                         test               ah, 0x41                                      // 0x005f23e8    f6c441
                         {disp8} jne        _jmp_addr_0x005f23ff                          // 0x005f23eb    7512
                         mov                edx, dword ptr [esi]                          // 0x005f23ed    8b16
                         mov.s              ecx, esi                                      // 0x005f23ef    8bce
                         call               dword ptr [edx + 0x99c]                       // 0x005f23f1    ff929c090000
                         mov                eax, 0x00000001                               // 0x005f23f7    b801000000
                         pop                esi                                           // 0x005f23fc    5e
                         pop                ecx                                           // 0x005f23fd    59
                         ret                                                              // 0x005f23fe    c3
_jmp_addr_0x005f23ff:    {disp32} mov       eax, dword ptr [esi + 0x000000bc]             // 0x005f23ff    8b86bc000000
                         push               0x1                                           // 0x005f2405    6a01
                         push               eax                                           // 0x005f2407    50
                         mov.s              ecx, esi                                      // 0x005f2408    8bce
                         call               ?LookAtObject@Living@@QAEIPAVGameThingWithPos@@K@Z                          // 0x005f240a    e811a1ffff
                         mov                eax, 0x00000001                               // 0x005f240f    b801000000
                         pop                esi                                           // 0x005f2414    5e
                         pop                ecx                                           // 0x005f2415    59
                         ret                                                              // 0x005f2416    c3
                         nop                                                              // 0x005f2417    90
                         nop                                                              // 0x005f2418    90
                         nop                                                              // 0x005f2419    90
                         nop                                                              // 0x005f241a    90
                         nop                                                              // 0x005f241b    90
                         nop                                                              // 0x005f241c    90
                         nop                                                              // 0x005f241d    90
                         nop                                                              // 0x005f241e    90
                         nop                                                              // 0x005f241f    90
?FleeingAndLookingAtObjectReaction@PuzzleHorse@@UAE_NXZ:
                         mov                eax, dword ptr [ecx]                          // 0x005f2420    8b01
                         jmp                dword ptr [eax + 0x88c]                       // 0x005f2422    ffa08c080000
                         nop                                                              // 0x005f2428    90
                         nop                                                              // 0x005f2429    90
                         nop                                                              // 0x005f242a    90
                         nop                                                              // 0x005f242b    90
                         nop                                                              // 0x005f242c    90
                         nop                                                              // 0x005f242d    90
                         nop                                                              // 0x005f242e    90
                         nop                                                              // 0x005f242f    90
?FollowingObjectReaction@PuzzleHorse@@UAE_NXZ:
                         sub                esp, 0x14                                     // 0x005f2430    83ec14
                         push               esi                                           // 0x005f2433    56
                         mov.s              esi, ecx                                      // 0x005f2434    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x000000bc]             // 0x005f2436    8b86bc000000
                         test               eax, eax                                      // 0x005f243c    85c0
                         {disp8} jne        _jmp_addr_0x005f2445                          // 0x005f243e    7505
                         pop                esi                                           // 0x005f2440    5e
                         add                esp, 0x14                                     // 0x005f2441    83c414
                         ret                                                              // 0x005f2444    c3
_jmp_addr_0x005f2445:    push               edi                                           // 0x005f2445    57
                         add                eax, 0x14                                     // 0x005f2446    83c014
                         push               eax                                           // 0x005f2449    50
                         {disp8} lea        edi, dword ptr [esi + 0x14]                   // 0x005f244a    8d7e14
                         push               edi                                           // 0x005f244d    57
                         call               _jmp_addr_0x0074cd50                          // 0x005f244e    e8fda81500
                         {disp8} fst        dword ptr [esp + 0x10]                        // 0x005f2453    d9542410
                         add                esp, 0x08                                     // 0x005f2457    83c408
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x005f245a    d95c240c
                         mov.s              ecx, esi                                      // 0x005f245e    8bce
                         call               ?GetReaction@Living@@QAEXXZ                   // 0x005f2460    e8fba5ffff
                         mov.s              ecx, eax                                      // 0x005f2465    8bc8
                         call               ?GetInfo@Reaction@@QBEPAVReactionInfo@@XZ     // 0x005f2467    e894220f00
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x005f246c    d944240c
                         {disp8} fcomp      dword ptr [eax + 0x44]                        // 0x005f2470    d85844
                         fnstsw             ax                                            // 0x005f2473    dfe0
                         test               ah, 0x41                                      // 0x005f2475    f6c441
                         {disp32} jne       _jmp_addr_0x005f251a                          // 0x005f2478    0f859c000000
                         {disp32} mov       eax, dword ptr [esi + 0x000000bc]             // 0x005f247e    8b86bc000000
                         push               ebx                                           // 0x005f2484    53
                         push               ebp                                           // 0x005f2485    55
                         add                eax, 0x14                                     // 0x005f2486    83c014
                         push               eax                                           // 0x005f2489    50
                         push               edi                                           // 0x005f248a    57
                         call               ?GetAngleFromXZ@GUtils@@SAGABUMapCoords@@0@Z                               // 0x005f248b    e8b0ad1500
                         add                esp, 0x08                                     // 0x005f2490    83c408
                         mov.s              ecx, esi                                      // 0x005f2493    8bce
                         mov.s              ebx, eax                                      // 0x005f2495    8bd8
                         call               ?GetReaction@Living@@QAEXXZ                   // 0x005f2497    e8c4a5ffff
                         mov.s              ecx, eax                                      // 0x005f249c    8bc8
                         call               ?GetInfo@Reaction@@QBEPAVReactionInfo@@XZ     // 0x005f249e    e85d220f00
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x005f24a3    d9442410
                         {disp8} fsub       dword ptr [eax + 0x44]                        // 0x005f24a7    d86044
                         push               ecx                                           // 0x005f24aa    51
                         fstp               dword ptr [esp]                               // 0x005f24ab    d91c24
                         call               _jmp_addr_0x0074e1d0                          // 0x005f24ae    e81dbd1500
                         push               eax                                           // 0x005f24b3    50
                         push               ebx                                           // 0x005f24b4    53
                         call               _jmp_addr_0x0074d3e0                          // 0x005f24b5    e826af1500
                         add                esp, 0x0c                                     // 0x005f24ba    83c40c
                         mov.s              ecx, esi                                      // 0x005f24bd    8bce
                         mov.s              ebp, eax                                      // 0x005f24bf    8be8
                         call               ?GetReaction@Living@@QAEXXZ                   // 0x005f24c1    e89aa5ffff
                         mov.s              ecx, eax                                      // 0x005f24c6    8bc8
                         call               ?GetInfo@Reaction@@QBEPAVReactionInfo@@XZ     // 0x005f24c8    e833220f00
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x005f24cd    d9442410
                         {disp8} fsub       dword ptr [eax + 0x44]                        // 0x005f24d1    d86044
                         push               ecx                                           // 0x005f24d4    51
                         fstp               dword ptr [esp]                               // 0x005f24d5    d91c24
                         call               _jmp_addr_0x0074e200                          // 0x005f24d8    e823bd1500
                         push               eax                                           // 0x005f24dd    50
                         push               ebx                                           // 0x005f24de    53
                         call               _jmp_addr_0x0074d400                          // 0x005f24df    e81caf1500
                         mov                ecx, dword ptr [edi]                          // 0x005f24e4    8b0f
                         {disp8} mov        edx, dword ptr [edi + 0x04]                   // 0x005f24e6    8b5704
                         {disp8} mov        edi, dword ptr [edi + 0x08]                   // 0x005f24e9    8b7f08
                         add                esp, 0x0c                                     // 0x005f24ec    83c40c
                         add.s              ecx, ebp                                      // 0x005f24ef    03cd
                         add.s              edx, eax                                      // 0x005f24f1    03d0
                         push               0x8                                           // 0x005f24f3    6a08
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                   // 0x005f24f5    8d44241c
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                   // 0x005f24f9    894c241c
                         push               eax                                           // 0x005f24fd    50
                         mov.s              ecx, esi                                      // 0x005f24fe    8bce
                         {disp8} mov        dword ptr [esp + 0x28], edi                   // 0x005f2500    897c2428
                         {disp8} mov        dword ptr [esp + 0x24], edx                   // 0x005f2504    89542424
                         call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13// 0x005f2508    e883030000
                         pop                ebp                                           // 0x005f250d    5d
                         pop                ebx                                           // 0x005f250e    5b
                         pop                edi                                           // 0x005f250f    5f
                         mov                eax, 0x00000001                               // 0x005f2510    b801000000
                         pop                esi                                           // 0x005f2515    5e
                         add                esp, 0x14                                     // 0x005f2516    83c414
                         ret                                                              // 0x005f2519    c3
_jmp_addr_0x005f251a:    {disp32} mov       ecx, dword ptr [esi + 0x000000bc]             // 0x005f251a    8b8ebc000000
                         push               0x1                                           // 0x005f2520    6a01
                         push               ecx                                           // 0x005f2522    51
                         mov.s              ecx, esi                                      // 0x005f2523    8bce
                         call               ?LookAtObject@Living@@QAEIPAVGameThingWithPos@@K@Z                          // 0x005f2525    e8f69fffff
                         pop                edi                                           // 0x005f252a    5f
                         mov                eax, 0x00000001                               // 0x005f252b    b801000000
                         pop                esi                                           // 0x005f2530    5e
                         add                esp, 0x14                                     // 0x005f2531    83c414
                         ret                                                              // 0x005f2534    c3
                         nop                                                              // 0x005f2535    90
                         nop                                                              // 0x005f2536    90
                         nop                                                              // 0x005f2537    90
                         nop                                                              // 0x005f2538    90
                         nop                                                              // 0x005f2539    90
                         nop                                                              // 0x005f253a    90
                         nop                                                              // 0x005f253b    90
                         nop                                                              // 0x005f253c    90
                         nop                                                              // 0x005f253d    90
                         nop                                                              // 0x005f253e    90
                         nop                                                              // 0x005f253f    90
?InspectObjectReaction@PuzzleHorse@@UAE_NXZ:
                         mov                eax, dword ptr [ecx]                          // 0x005f2540    8b01
                         jmp                dword ptr [eax + 0x88c]                       // 0x005f2542    ffa08c080000
                         nop                                                              // 0x005f2548    90
                         nop                                                              // 0x005f2549    90
                         nop                                                              // 0x005f254a    90
                         nop                                                              // 0x005f254b    90
                         nop                                                              // 0x005f254c    90
                         nop                                                              // 0x005f254d    90
                         nop                                                              // 0x005f254e    90
                         nop                                                              // 0x005f254f    90
?GotoFoodReaction@PuzzleHorse@@UAE_NXZ:
                         sub                esp, 0x0c                                     // 0x005f2550    83ec0c
                         push               esi                                           // 0x005f2553    56
                         push               edi                                           // 0x005f2554    57
                         push               0x0                                           // 0x005f2555    6a00
                         push               0x009c7f50                                    // 0x005f2557    68507f9c00
                         mov.s              edi, ecx                                      // 0x005f255c    8bf9
                         {disp32} mov       eax, dword ptr [edi + 0x000000bc]             // 0x005f255e    8b87bc000000
                         push               0x009c7f30                                    // 0x005f2564    68307f9c00
                         push               0x0                                           // 0x005f2569    6a00
                         push               eax                                           // 0x005f256b    50
                         call               ___RTDynamicCast                              // 0x005f256c    e8a8341d00
                         mov.s              esi, eax                                      // 0x005f2571    8bf0
                         add                esp, 0x14                                     // 0x005f2573    83c414
                         test               esi, esi                                      // 0x005f2576    85f6
                         {disp8} je         _jmp_addr_0x005f25aa                          // 0x005f2578    7430
                         mov                eax, dword ptr [esi]                          // 0x005f257a    8b06
                         mov.s              ecx, esi                                      // 0x005f257c    8bce
                         call               dword ptr [eax + 0x2c]                        // 0x005f257e    ff502c
                         test               eax, eax                                      // 0x005f2581    85c0
                         {disp8} je         _jmp_addr_0x005f25aa                          // 0x005f2583    7425
                         mov                edx, dword ptr [esi]                          // 0x005f2585    8b16
                         push               0x14                                          // 0x005f2587    6a14
                         push               edi                                           // 0x005f2589    57
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x005f258a    8d442410
                         push               eax                                           // 0x005f258e    50
                         mov.s              ecx, esi                                      // 0x005f258f    8bce
                         call               dword ptr [edx + 0x648]                       // 0x005f2591    ff9248060000
                         push               eax                                           // 0x005f2597    50
                         mov.s              ecx, edi                                      // 0x005f2598    8bcf
                         call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13// 0x005f259a    e8f1020000
                         pop                edi                                           // 0x005f259f    5f
                         mov                eax, 0x00000001                               // 0x005f25a0    b801000000
                         pop                esi                                           // 0x005f25a5    5e
                         add                esp, 0x0c                                     // 0x005f25a6    83c40c
                         ret                                                              // 0x005f25a9    c3
_jmp_addr_0x005f25aa:    mov                edx, dword ptr [edi]                          // 0x005f25aa    8b17
                         mov.s              ecx, edi                                      // 0x005f25ac    8bcf
                         call               dword ptr [edx + 0x99c]                       // 0x005f25ae    ff929c090000
                         pop                edi                                           // 0x005f25b4    5f
                         mov                eax, 0x00000001                               // 0x005f25b5    b801000000
                         pop                esi                                           // 0x005f25ba    5e
                         add                esp, 0x0c                                     // 0x005f25bb    83c40c
                         ret                                                              // 0x005f25be    c3
                         nop                                                              // 0x005f25bf    90
?GotoWoodReaction@PuzzleHorse@@UAE_NXZ:
                         sub                esp, 0x0c                                     // 0x005f25c0    83ec0c
                         push               esi                                           // 0x005f25c3    56
                         push               edi                                           // 0x005f25c4    57
                         push               0x0                                           // 0x005f25c5    6a00
                         push               0x009c7f50                                    // 0x005f25c7    68507f9c00
                         mov.s              edi, ecx                                      // 0x005f25cc    8bf9
                         {disp32} mov       eax, dword ptr [edi + 0x000000bc]             // 0x005f25ce    8b87bc000000
                         push               0x009c7f30                                    // 0x005f25d4    68307f9c00
                         push               0x0                                           // 0x005f25d9    6a00
                         push               eax                                           // 0x005f25db    50
                         call               ___RTDynamicCast                              // 0x005f25dc    e838341d00
                         mov.s              esi, eax                                      // 0x005f25e1    8bf0
                         add                esp, 0x14                                     // 0x005f25e3    83c414
                         test               esi, esi                                      // 0x005f25e6    85f6
                         {disp8} je         _jmp_addr_0x005f261a                          // 0x005f25e8    7430
                         mov                eax, dword ptr [esi]                          // 0x005f25ea    8b06
                         mov.s              ecx, esi                                      // 0x005f25ec    8bce
                         call               dword ptr [eax + 0x2c]                        // 0x005f25ee    ff502c
                         test               eax, eax                                      // 0x005f25f1    85c0
                         {disp8} je         _jmp_addr_0x005f261a                          // 0x005f25f3    7425
                         mov                edx, dword ptr [esi]                          // 0x005f25f5    8b16
                         push               0x16                                          // 0x005f25f7    6a16
                         push               edi                                           // 0x005f25f9    57
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x005f25fa    8d442410
                         push               eax                                           // 0x005f25fe    50
                         mov.s              ecx, esi                                      // 0x005f25ff    8bce
                         call               dword ptr [edx + 0x648]                       // 0x005f2601    ff9248060000
                         push               eax                                           // 0x005f2607    50
                         mov.s              ecx, edi                                      // 0x005f2608    8bcf
                         call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13// 0x005f260a    e881020000
                         pop                edi                                           // 0x005f260f    5f
                         mov                eax, 0x00000001                               // 0x005f2610    b801000000
                         pop                esi                                           // 0x005f2615    5e
                         add                esp, 0x0c                                     // 0x005f2616    83c40c
                         ret                                                              // 0x005f2619    c3
_jmp_addr_0x005f261a:    mov                edx, dword ptr [edi]                          // 0x005f261a    8b17
                         mov.s              ecx, edi                                      // 0x005f261c    8bcf
                         call               dword ptr [edx + 0x99c]                       // 0x005f261e    ff929c090000
                         pop                edi                                           // 0x005f2624    5f
                         mov                eax, 0x00000001                               // 0x005f2625    b801000000
                         pop                esi                                           // 0x005f262a    5e
                         add                esp, 0x0c                                     // 0x005f262b    83c40c
                         ret                                                              // 0x005f262e    c3
                         nop                                                              // 0x005f262f    90
?ArrivesAtFoodReaction@Living@@UAE_NXZ:
                         mov                eax, dword ptr [ecx]                          // 0x005f2630    8b01
                         call               dword ptr [eax + 0x99c]                       // 0x005f2632    ff909c090000
                         mov                eax, 0x00000001                               // 0x005f2638    b801000000
                         ret                                                              // 0x005f263d    c3
                         nop                                                              // 0x005f263e    90
                         nop                                                              // 0x005f263f    90
                         push               esi                                           // 0x005f2640    56
                         push               0x0                                           // 0x005f2641    6a00
                         push               0x009c7f50                                    // 0x005f2643    68507f9c00
                         mov.s              esi, ecx                                      // 0x005f2648    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x000000bc]             // 0x005f264a    8b86bc000000
                         push               0x009c7f30                                    // 0x005f2650    68307f9c00
                         push               0x0                                           // 0x005f2655    6a00
                         push               eax                                           // 0x005f2657    50
                         call               ___RTDynamicCast                              // 0x005f2658    e8bc331d00
                         add                esp, 0x14                                     // 0x005f265d    83c414
                         test               eax, eax                                      // 0x005f2660    85c0
                         {disp8} je         _jmp_addr_0x005f2689                          // 0x005f2662    7425
                         mov                edx, dword ptr [eax]                          // 0x005f2664    8b10
                         mov.s              ecx, eax                                      // 0x005f2666    8bc8
                         call               dword ptr [edx + 0x2c]                        // 0x005f2668    ff522c
                         test               eax, eax                                      // 0x005f266b    85c0
                         {disp8} je         _jmp_addr_0x005f2689                          // 0x005f266d    741a
                         {disp32} mov       eax, dword ptr [esi + 0x000000bc]             // 0x005f266f    8b86bc000000
                         push               0x1a                                          // 0x005f2675    6a1a
                         add                eax, 0x14                                     // 0x005f2677    83c014
                         push               eax                                           // 0x005f267a    50
                         mov.s              ecx, esi                                      // 0x005f267b    8bce
                         call               @SetupMoveToPos__6LivingFRC9MapCoordsUc@13    // 0x005f267d    e8ae010000
                         mov                eax, 0x00000001                               // 0x005f2682    b801000000
                         pop                esi                                           // 0x005f2687    5e
                         ret                                                              // 0x005f2688    c3
_jmp_addr_0x005f2689:    mov                edx, dword ptr [esi]                          // 0x005f2689    8b16
                         mov.s              ecx, esi                                      // 0x005f268b    8bce
                         call               dword ptr [edx + 0x99c]                       // 0x005f268d    ff929c090000
                         mov                eax, 0x00000001                               // 0x005f2693    b801000000
                         pop                esi                                           // 0x005f2698    5e
                         ret                                                              // 0x005f2699    c3
                         call               dword ptr [__imp__DirectInputCreateA@4]       // 0x005f269a    ff1534908a00
                         {disp32} mov       ecx, dword ptr [ecx + 0x000000bc]             // 0x005f26a0    8b89bc000000
                         push               0x0                                           // 0x005f26a6    6a00
                         push               0x009cd070                                    // 0x005f26a8    6870d09c00
                         push               0x009c7f30                                    // 0x005f26ad    68307f9c00
                         push               0x0                                           // 0x005f26b2    6a00
                         push               ecx                                           // 0x005f26b4    51
                         call               ___RTDynamicCast                              // 0x005f26b5    e85f331d00
                         add                esp, 0x14                                     // 0x005f26ba    83c414
                         test               eax, eax                                      // 0x005f26bd    85c0
                         {disp8} je         _jmp_addr_0x005f26ca                          // 0x005f26bf    7409
                         push               eax                                           // 0x005f26c1    50
                         call               _jmp_addr_0x006e4750                          // 0x005f26c2    e889200f00
                         add                esp, 0x04                                     // 0x005f26c7    83c404
_jmp_addr_0x005f26ca:    mov                eax, 0x00000001                               // 0x005f26ca    b801000000
                         ret                                                              // 0x005f26cf    c3
?LookAtFlyingObjectReaction@Living@@UAE_NXZ:
                         push               esi                                           // 0x005f26d0    56
                         mov.s              esi, ecx                                      // 0x005f26d1    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x000000bc]             // 0x005f26d3    8b86bc000000
                         push               0x1                                           // 0x005f26d9    6a01
                         push               eax                                           // 0x005f26db    50
                         call               ?LookAtObject@Living@@QAEIPAVGameThingWithPos@@K@Z                          // 0x005f26dc    e83f9effff
                         mov                edx, dword ptr [esi]                          // 0x005f26e1    8b16
                         push               0x1                                           // 0x005f26e3    6a01
                         mov.s              ecx, esi                                      // 0x005f26e5    8bce
                         call               dword ptr [edx + 0x8fc]                       // 0x005f26e7    ff92fc080000
                         mov                eax, 0x00000001                               // 0x005f26ed    b801000000
                         pop                esi                                           // 0x005f26f2    5e
                         ret                                                              // 0x005f26f3    c3
                         nop                                                              // 0x005f26f4    90
                         nop                                                              // 0x005f26f5    90
                         nop                                                              // 0x005f26f6    90
                         nop                                                              // 0x005f26f7    90
                         nop                                                              // 0x005f26f8    90
                         nop                                                              // 0x005f26f9    90
                         nop                                                              // 0x005f26fa    90
                         nop                                                              // 0x005f26fb    90
                         nop                                                              // 0x005f26fc    90
                         nop                                                              // 0x005f26fd    90
                         nop                                                              // 0x005f26fe    90
                         nop                                                              // 0x005f26ff    90
                         ret                                                              // 0x005f2700    c3
                         nop                                                              // 0x005f2701    90
                         nop                                                              // 0x005f2702    90
                         nop                                                              // 0x005f2703    90
                         nop                                                              // 0x005f2704    90
                         nop                                                              // 0x005f2705    90
                         nop                                                              // 0x005f2706    90
                         nop                                                              // 0x005f2707    90
                         nop                                                              // 0x005f2708    90
                         nop                                                              // 0x005f2709    90
                         nop                                                              // 0x005f270a    90
                         nop                                                              // 0x005f270b    90
                         nop                                                              // 0x005f270c    90
                         nop                                                              // 0x005f270d    90
                         nop                                                              // 0x005f270e    90
                         nop                                                              // 0x005f270f    90
?AmILikelyToMove@Living@@UAE_NXZ:
                         {disp32} mov       dl, byte ptr [ecx + 0x0000008c]               // 0x005f2710    8a918c000000
                         xor.s              eax, eax                                      // 0x005f2716    33c0
                         cmp                dl, 0x01                                      // 0x005f2718    80fa01
                         sete               al                                            // 0x005f271b    0f94c0
                         ret                                                              // 0x005f271e    c3
                         nop                                                              // 0x005f271f    90
?StandardNumGameTurnsBeforeReactingToWoodAgainFunction@Living@@UAEIPAVGameThingWithPos@@IM@Z:
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x005f2720    8b54240c
                         mov                eax, dword ptr [ecx]                          // 0x005f2724    8b01
                         push               edx                                           // 0x005f2726    52
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x005f2727    8b54240c
                         push               edx                                           // 0x005f272b    52
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x005f272c    8b54240c
                         push               edx                                           // 0x005f2730    52
                         call               dword ptr [eax + 0xac4]                       // 0x005f2731    ff90c40a0000
                         ret                0x000c                                        // 0x005f2737    c20c00
                         call               dword ptr [rdata_bytes + 0xc0]                // 0x005f273a    ff15c0908a00
_globl_ct_0x005f2740:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x005f2740    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x005f2746    b001
                         test               al, cl                                        // 0x005f2748    84c8
                         {disp8} jne        _jmp_addr_0x005f2754                          // 0x005f274a    7508
                         or.s               cl, al                                        // 0x005f274c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x005f274e    880d34c9fa00
_jmp_addr_0x005f2754:    {disp32} jmp       _jmp_addr_0x005f2760                          // 0x005f2754    e907000000
                         nop                                                              // 0x005f2759    90
                         nop                                                              // 0x005f275a    90
                         nop                                                              // 0x005f275b    90
                         nop                                                              // 0x005f275c    90
                         nop                                                              // 0x005f275d    90
                         nop                                                              // 0x005f275e    90
                         nop                                                              // 0x005f275f    90
_jmp_addr_0x005f2760:    push               0x00407870                                    // 0x005f2760    6870784000
                         call               _atexit                                       // 0x005f2765    e827301d00
                         pop                ecx                                           // 0x005f276a    59
                         ret                                                              // 0x005f276b    c3
                         nop                                                              // 0x005f276c    90
                         nop                                                              // 0x005f276d    90
                         nop                                                              // 0x005f276e    90
                         nop                                                              // 0x005f276f    90
_globl_ct_0x005f2770:    {disp32} jmp       _jmp_addr_0x005f2780                          // 0x005f2770    e90b000000
                         nop                                                              // 0x005f2775    90
                         nop                                                              // 0x005f2776    90
                         nop                                                              // 0x005f2777    90
                         nop                                                              // 0x005f2778    90
                         nop                                                              // 0x005f2779    90
                         nop                                                              // 0x005f277a    90
                         nop                                                              // 0x005f277b    90
                         nop                                                              // 0x005f277c    90
                         nop                                                              // 0x005f277d    90
                         nop                                                              // 0x005f277e    90
                         nop                                                              // 0x005f277f    90
_jmp_addr_0x005f2780:    {disp32} mov       dword ptr [data_bytes + 0x36a8a0], 0x3e000000 // 0x005f2780    c705a008d3000000003e
                         ret                                                              // 0x005f278a    c3
                         call               ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                          // 0x005f278b    e869f0e0ff
_globl_ct_0x005f2790:    {disp32} jmp       _jmp_addr_0x005f27a0                          // 0x005f2790    e90b000000
                         nop                                                              // 0x005f2795    90
                         nop                                                              // 0x005f2796    90
                         nop                                                              // 0x005f2797    90
                         nop                                                              // 0x005f2798    90
                         nop                                                              // 0x005f2799    90
                         nop                                                              // 0x005f279a    90
                         nop                                                              // 0x005f279b    90
                         nop                                                              // 0x005f279c    90
                         nop                                                              // 0x005f279d    90
                         nop                                                              // 0x005f279e    90
                         nop                                                              // 0x005f279f    90
_jmp_addr_0x005f27a0:    {disp32} fld       dword ptr [rdata_bytes + 0x82644]             // 0x005f27a0    d90544b69200
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x005f27a6    d80db4a38a00
                         {disp32} fstp      dword ptr [data_bytes + 0x36a8a4]             // 0x005f27ac    d91da408d300
                         ret                                                              // 0x005f27b2    c3
                         nop                                                              // 0x005f27b3    90
                         nop                                                              // 0x005f27b4    90
                         nop                                                              // 0x005f27b5    90
                         nop                                                              // 0x005f27b6    90
                         nop                                                              // 0x005f27b7    90
                         nop                                                              // 0x005f27b8    90
                         nop                                                              // 0x005f27b9    90
                         nop                                                              // 0x005f27ba    90
                         nop                                                              // 0x005f27bb    90
                         nop                                                              // 0x005f27bc    90
                         nop                                                              // 0x005f27bd    90
                         nop                                                              // 0x005f27be    90
                         nop                                                              // 0x005f27bf    90
_globl_ct_0x005f27c0:    {disp32} jmp       _jmp_addr_0x005f27d0                          // 0x005f27c0    e90b000000
                         nop                                                              // 0x005f27c5    90
                         nop                                                              // 0x005f27c6    90
                         nop                                                              // 0x005f27c7    90
                         nop                                                              // 0x005f27c8    90
                         nop                                                              // 0x005f27c9    90
                         nop                                                              // 0x005f27ca    90
                         nop                                                              // 0x005f27cb    90
                         nop                                                              // 0x005f27cc    90
                         nop                                                              // 0x005f27cd    90
                         nop                                                              // 0x005f27ce    90
                         nop                                                              // 0x005f27cf    90
_jmp_addr_0x005f27d0:    {disp32} fld       dword ptr [rdata_bytes + 0x82648]             // 0x005f27d0    d90548b69200
                         {disp32} fmul      dword ptr [_abode_info_float_0x008a99f0]      // 0x005f27d6    d80df0998a00
                         {disp32} fstp      dword ptr [data_bytes + 0x36a8ac]             // 0x005f27dc    d91dac08d300
                         ret                                                              // 0x005f27e2    c3
                         nop                                                              // 0x005f27e3    90
                         nop                                                              // 0x005f27e4    90
                         nop                                                              // 0x005f27e5    90
                         nop                                                              // 0x005f27e6    90
                         nop                                                              // 0x005f27e7    90
                         nop                                                              // 0x005f27e8    90
                         nop                                                              // 0x005f27e9    90
                         nop                                                              // 0x005f27ea    90
                         nop                                                              // 0x005f27eb    90
                         nop                                                              // 0x005f27ec    90
                         nop                                                              // 0x005f27ed    90
                         nop                                                              // 0x005f27ee    90
                         nop                                                              // 0x005f27ef    90
?GetTopState@Living@@QBE?AW4VILLAGER_STATES@@XZ:
                               {disp32} mov       al, byte ptr [ecx + 0x0000008c]               // 0x005f27f0    8a818c000000
                         ret                                                              // 0x005f27f6    c3
                         nop                                                              // 0x005f27f7    90
                         nop                                                              // 0x005f27f8    90
                         nop                                                              // 0x005f27f9    90
                         nop                                                              // 0x005f27fa    90
                         nop                                                              // 0x005f27fb    90
                         nop                                                              // 0x005f27fc    90
                         nop                                                              // 0x005f27fd    90
                         nop                                                              // 0x005f27fe    90
                         nop                                                              // 0x005f27ff    90
?SetupMoveToObject@Living@@QAE_NPAVObject@@E@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x005f2800    8b442404
                         push               esi                                           // 0x005f2804    56
                         mov.s              esi, ecx                                      // 0x005f2805    8bf1
                         push               eax                                           // 0x005f2807    50
                         call               ?SetupMobileMoveToObject@MobileWallHug@@QAEXPAVObject@@@Z                          // 0x005f2808    e8c3840100
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x005f280d    8b44240c
                         mov                edx, dword ptr [esi]                          // 0x005f2811    8b16
                         push               eax                                           // 0x005f2813    50
                         push               0x2                                           // 0x005f2814    6a02
                         mov.s              ecx, esi                                      // 0x005f2816    8bce
                         call               dword ptr [edx + 0x8dc]                       // 0x005f2818    ff92dc080000
                         dec                eax                                           // 0x005f281e    48
                         neg                eax                                           // 0x005f281f    f7d8
                         sbb.s              eax, eax                                      // 0x005f2821    1bc0
                         inc                eax                                           // 0x005f2823    40
                         pop                esi                                           // 0x005f2824    5e
                         ret                0x0008                                        // 0x005f2825    c20800
                         nop                                                              // 0x005f2828    90
                         nop                                                              // 0x005f2829    90
                         nop                                                              // 0x005f282a    90
                         nop                                                              // 0x005f282b    90
                         nop                                                              // 0x005f282c    90
                         nop                                                              // 0x005f282d    90
                         nop                                                              // 0x005f282e    90
                         nop                                                              // 0x005f282f    90
@SetupMoveToPos__6LivingFRC9MapCoordsUc@13:    push               ecx                                           // 0x005f2830    51
                         push               esi                                           // 0x005f2831    56
                         mov.s              esi, ecx                                      // 0x005f2832    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x28]                   // 0x005f2834    8b4628
                         {disp32} mov       cl, byte ptr [eax + 0x00000124]               // 0x005f2837    8a8824010000
                         test               byte ptr [esi + 0x24], -0x80                  // 0x005f283d    f6462480
                         {disp8} mov        byte ptr [esp + 0x04], cl                     // 0x005f2841    884c2404
                         {disp8} je         _jmp_addr_0x005f284c                          // 0x005f2845    7405
                         {disp8} mov        byte ptr [esp + 0x04], 0x03                   // 0x005f2847    c644240403
_jmp_addr_0x005f284c:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x005f284c    8b442410
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x005f2850    8b4c2404
                         mov                edx, dword ptr [esi]                          // 0x005f2854    8b16
                         push               eax                                           // 0x005f2856    50
                         push               ecx                                           // 0x005f2857    51
                         mov.s              ecx, esi                                      // 0x005f2858    8bce
                         call               dword ptr [edx + 0x8dc]                       // 0x005f285a    ff92dc080000
                         cmp                eax, 0x01                                     // 0x005f2860    83f801
                         {disp8} jne        _jmp_addr_0x005f287b                          // 0x005f2863    7516
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x005f2865    8b54240c
                         push               edx                                           // 0x005f2869    52
                         mov.s              ecx, esi                                      // 0x005f286a    8bce
                         call               _jmp_addr_0x0060aad0                          // 0x005f286c    e85f820100
                         mov                eax, 0x00000001                               // 0x005f2871    b801000000
                         pop                esi                                           // 0x005f2876    5e
                         pop                ecx                                           // 0x005f2877    59
                         ret                0x0008                                        // 0x005f2878    c20800
_jmp_addr_0x005f287b:    xor.s              eax, eax                                      // 0x005f287b    33c0
                         pop                esi                                           // 0x005f287d    5e
                         pop                ecx                                           // 0x005f287e    59
                         ret                0x0008                                        // 0x005f287f    c20800
                         nop                                                              // 0x005f2882    90
                         nop                                                              // 0x005f2883    90
                         nop                                                              // 0x005f2884    90
                         nop                                                              // 0x005f2885    90
                         nop                                                              // 0x005f2886    90
                         nop                                                              // 0x005f2887    90
                         nop                                                              // 0x005f2888    90
                         nop                                                              // 0x005f2889    90
                         nop                                                              // 0x005f288a    90
                         nop                                                              // 0x005f288b    90
                         nop                                                              // 0x005f288c    90
                         nop                                                              // 0x005f288d    90
                         nop                                                              // 0x005f288e    90
                         nop                                                              // 0x005f288f    90
@SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13:    push               ecx                                           // 0x005f2890    51
                         push               esi                                           // 0x005f2891    56
                         mov.s              esi, ecx                                      // 0x005f2892    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x28]                   // 0x005f2894    8b4628
                         {disp32} mov       cl, byte ptr [eax + 0x00000124]               // 0x005f2897    8a8824010000
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x005f289d    8b442410
                         mov                edx, dword ptr [esi]                          // 0x005f28a1    8b16
                         {disp8} mov        byte ptr [esp + 0x04], cl                     // 0x005f28a3    884c2404
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x005f28a7    8b4c2404
                         push               eax                                           // 0x005f28ab    50
                         push               ecx                                           // 0x005f28ac    51
                         mov.s              ecx, esi                                      // 0x005f28ad    8bce
                         call               dword ptr [edx + 0x8dc]                       // 0x005f28af    ff92dc080000
                         cmp                eax, 0x01                                     // 0x005f28b5    83f801
                         {disp8} jne        _jmp_addr_0x005f28d2                          // 0x005f28b8    7518
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x005f28ba    8b54240c
                         push               0xc                                           // 0x005f28be    6a0c
                         push               edx                                           // 0x005f28c0    52
                         mov.s              ecx, esi                                      // 0x005f28c1    8bce
                         call               @SetupMobileMoveToPos__13MobileWallHugFRC9MapCoords14MOVE_TO_STATES@16                          // 0x005f28c3    e8f8820100
                         mov                eax, 0x00000001                               // 0x005f28c8    b801000000
                         pop                esi                                           // 0x005f28cd    5e
                         pop                ecx                                           // 0x005f28ce    59
                         ret                0x0008                                        // 0x005f28cf    c20800
_jmp_addr_0x005f28d2:    xor.s              eax, eax                                      // 0x005f28d2    33c0
                         pop                esi                                           // 0x005f28d4    5e
                         pop                ecx                                           // 0x005f28d5    59
                         ret                0x0008                                        // 0x005f28d6    c20800
                         nop                                                              // 0x005f28d9    90
                         nop                                                              // 0x005f28da    90
                         nop                                                              // 0x005f28db    90
                         nop                                                              // 0x005f28dc    90
                         nop                                                              // 0x005f28dd    90
                         nop                                                              // 0x005f28de    90
                         nop                                                              // 0x005f28df    90
_SetTopState__6LivingFUc:
@SetTopState__6LivingFUc@12:    push               ebx                                           // 0x005f28e0    53
                         push               esi                                           // 0x005f28e1    56
                         push               edi                                           // 0x005f28e2    57
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x005f28e3    8b7c2410
                         mov.s              esi, ecx                                      // 0x005f28e7    8bf1
                         mov                eax, dword ptr [esi]                          // 0x005f28e9    8b06
                         push               edi                                           // 0x005f28eb    57
                         mov                ebx, 0x0000002e                               // 0x005f28ec    bb2e000000
                         call               dword ptr [eax + 0x904]                       // 0x005f28f1    ff9004090000
                         test               eax, eax                                      // 0x005f28f7    85c0
                         {disp8} je         _jmp_addr_0x005f2978                          // 0x005f28f9    747d
                         mov                edx, dword ptr [esi]                          // 0x005f28fb    8b16
                         push               edi                                           // 0x005f28fd    57
                         mov.s              ecx, esi                                      // 0x005f28fe    8bce
                         call               dword ptr [edx + 0x8e4]                       // 0x005f2900    ff92e4080000
                         mov.s              ebx, eax                                      // 0x005f2906    8bd8
                         mov                eax, dword ptr [esi]                          // 0x005f2908    8b06
                         push               edi                                           // 0x005f290a    57
                         mov.s              ecx, esi                                      // 0x005f290b    8bce
                         call               dword ptr [eax + 0x90c]                       // 0x005f290d    ff900c090000
                         test               eax, eax                                      // 0x005f2913    85c0
                         {disp8} je         _jmp_addr_0x005f296d                          // 0x005f2915    7456
                         mov                edx, dword ptr [esi]                          // 0x005f2917    8b16
                         mov.s              ecx, esi                                      // 0x005f2919    8bce
                         call               dword ptr [edx + 0x8f0]                       // 0x005f291b    ff92f0080000
                         cmp                ebx, -0x01                                    // 0x005f2921    83fbff
                         {disp8} je         _jmp_addr_0x005f293e                          // 0x005f2924    7418
                         mov                eax, dword ptr [esi]                          // 0x005f2926    8b06
                         push               0x1                                           // 0x005f2928    6a01
                         push               ebx                                           // 0x005f292a    53
                         mov.s              ecx, esi                                      // 0x005f292b    8bce
                         call               dword ptr [eax + 0x8f8]                       // 0x005f292d    ff90f8080000
                         pop                edi                                           // 0x005f2933    5f
                         pop                esi                                           // 0x005f2934    5e
                         mov                eax, 0x00000001                               // 0x005f2935    b801000000
                         pop                ebx                                           // 0x005f293a    5b
                         ret                0x0004                                        // 0x005f293b    c20400
_jmp_addr_0x005f293e:    mov.s              ecx, esi                                      // 0x005f293e    8bce
                         call               ?SetStateAnim@Living@@QAEXXZ                  // 0x005f2940    e8cba1ffff
                         mov                edx, dword ptr [esi]                          // 0x005f2945    8b16
                         push               edi                                           // 0x005f2947    57
                         mov.s              ecx, esi                                      // 0x005f2948    8bce
                         call               dword ptr [edx + 0x8e0]                       // 0x005f294a    ff92e0080000
                         cmp                eax, -0x01                                    // 0x005f2950    83f8ff
                         {disp8} je         _jmp_addr_0x005f2962                          // 0x005f2953    740d
                         mov                edx, dword ptr [esi]                          // 0x005f2955    8b16
                         push               0x1                                           // 0x005f2957    6a01
                         push               eax                                           // 0x005f2959    50
                         mov.s              ecx, esi                                      // 0x005f295a    8bce
                         call               dword ptr [edx + 0x8f8]                       // 0x005f295c    ff92f8080000
_jmp_addr_0x005f2962:    pop                edi                                           // 0x005f2962    5f
                         pop                esi                                           // 0x005f2963    5e
                         mov                eax, 0x00000001                               // 0x005f2964    b801000000
                         pop                ebx                                           // 0x005f2969    5b
                         ret                0x0004                                        // 0x005f296a    c20400
_jmp_addr_0x005f296d:    pop                edi                                           // 0x005f296d    5f
                         pop                esi                                           // 0x005f296e    5e
                         mov                eax, 0x0000002f                               // 0x005f296f    b82f000000
                         pop                ebx                                           // 0x005f2974    5b
                         ret                0x0004                                        // 0x005f2975    c20400
_jmp_addr_0x005f2978:    pop                edi                                           // 0x005f2978    5f
                         pop                esi                                           // 0x005f2979    5e
                         mov.s              eax, ebx                                      // 0x005f297a    8bc3
                         pop                ebx                                           // 0x005f297c    5b
                         ret                0x0004                                        // 0x005f297d    c20400
_SetCurrentAndDestinationState__6LivingFUcUc:
@SetCurrentAndDestinationState__6LivingFUcUc@16:    push               ebx                                           // 0x005f2980    53
                         {disp8} mov        ebx, dword ptr [esp + 0x0c]                   // 0x005f2981    8b5c240c
                         push               esi                                           // 0x005f2985    56
                         push               edi                                           // 0x005f2986    57
                         mov.s              esi, ecx                                      // 0x005f2987    8bf1
                         mov                eax, dword ptr [esi]                          // 0x005f2989    8b06
                         push               ebx                                           // 0x005f298b    53
                         call               dword ptr [eax + 0x904]                       // 0x005f298c    ff9004090000
                         test               eax, eax                                      // 0x005f2992    85c0
                         {disp32} je        _jmp_addr_0x005f2a1c                          // 0x005f2994    0f8482000000
                         mov                edx, dword ptr [esi]                          // 0x005f299a    8b16
                         push               ebx                                           // 0x005f299c    53
                         mov.s              ecx, esi                                      // 0x005f299d    8bce
                         call               dword ptr [edx + 0x8e4]                       // 0x005f299f    ff92e4080000
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x005f29a5    8b4c2410
                         push               ebx                                           // 0x005f29a9    53
                         mov.s              edi, eax                                      // 0x005f29aa    8bf8
                         mov                eax, dword ptr [esi]                          // 0x005f29ac    8b06
                         push               ecx                                           // 0x005f29ae    51
                         mov.s              ecx, esi                                      // 0x005f29af    8bce
                         call               dword ptr [eax + 0x908]                       // 0x005f29b1    ff9008090000
                         test               eax, eax                                      // 0x005f29b7    85c0
                         {disp8} je         _jmp_addr_0x005f2a11                          // 0x005f29b9    7456
                         mov                edx, dword ptr [esi]                          // 0x005f29bb    8b16
                         mov.s              ecx, esi                                      // 0x005f29bd    8bce
                         call               dword ptr [edx + 0x8f0]                       // 0x005f29bf    ff92f0080000
                         cmp                edi, -0x01                                    // 0x005f29c5    83ffff
                         {disp8} je         _jmp_addr_0x005f29e2                          // 0x005f29c8    7418
                         mov                eax, dword ptr [esi]                          // 0x005f29ca    8b06
                         push               0x1                                           // 0x005f29cc    6a01
                         push               edi                                           // 0x005f29ce    57
                         mov.s              ecx, esi                                      // 0x005f29cf    8bce
                         call               dword ptr [eax + 0x8f8]                       // 0x005f29d1    ff90f8080000
                         pop                edi                                           // 0x005f29d7    5f
                         pop                esi                                           // 0x005f29d8    5e
                         mov                eax, 0x00000001                               // 0x005f29d9    b801000000
                         pop                ebx                                           // 0x005f29de    5b
                         ret                0x0008                                        // 0x005f29df    c20800
_jmp_addr_0x005f29e2:    mov.s              ecx, esi                                      // 0x005f29e2    8bce
                         call               ?SetStateAnim@Living@@QAEXXZ                  // 0x005f29e4    e827a1ffff
                         mov                edx, dword ptr [esi]                          // 0x005f29e9    8b16
                         push               ebx                                           // 0x005f29eb    53
                         mov.s              ecx, esi                                      // 0x005f29ec    8bce
                         call               dword ptr [edx + 0x8e0]                       // 0x005f29ee    ff92e0080000
                         cmp                eax, -0x01                                    // 0x005f29f4    83f8ff
                         {disp8} je         _jmp_addr_0x005f2a06                          // 0x005f29f7    740d
                         mov                edx, dword ptr [esi]                          // 0x005f29f9    8b16
                         push               0x1                                           // 0x005f29fb    6a01
                         push               eax                                           // 0x005f29fd    50
                         mov.s              ecx, esi                                      // 0x005f29fe    8bce
                         call               dword ptr [edx + 0x8f8]                       // 0x005f2a00    ff92f8080000
_jmp_addr_0x005f2a06:    pop                edi                                           // 0x005f2a06    5f
                         pop                esi                                           // 0x005f2a07    5e
                         mov                eax, 0x00000001                               // 0x005f2a08    b801000000
                         pop                ebx                                           // 0x005f2a0d    5b
                         ret                0x0008                                        // 0x005f2a0e    c20800
_jmp_addr_0x005f2a11:    pop                edi                                           // 0x005f2a11    5f
                         pop                esi                                           // 0x005f2a12    5e
                         mov                eax, 0x0000002f                               // 0x005f2a13    b82f000000
                         pop                ebx                                           // 0x005f2a18    5b
                         ret                0x0008                                        // 0x005f2a19    c20800
_jmp_addr_0x005f2a1c:    pop                edi                                           // 0x005f2a1c    5f
                         pop                esi                                           // 0x005f2a1d    5e
                         mov                eax, 0x0000002e                               // 0x005f2a1e    b82e000000
                         pop                ebx                                           // 0x005f2a23    5b
                         ret                0x0008                                        // 0x005f2a24    c20800
                         nop                                                              // 0x005f2a27    90
                         nop                                                              // 0x005f2a28    90
                         nop                                                              // 0x005f2a29    90
                         nop                                                              // 0x005f2a2a    90
                         nop                                                              // 0x005f2a2b    90
                         nop                                                              // 0x005f2a2c    90
                         nop                                                              // 0x005f2a2d    90
                         nop                                                              // 0x005f2a2e    90
                         nop                                                              // 0x005f2a2f    90
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x005f2a30    8b542408
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x005f2a34    8b442404
                         push               esi                                           // 0x005f2a38    56
                         mov.s              esi, ecx                                      // 0x005f2a39    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x005f2a3b    8b4c2410
                         push               ecx                                           // 0x005f2a3f    51
                         push               edx                                           // 0x005f2a40    52
                         mov.s              ecx, esi                                      // 0x005f2a41    8bce
                         {disp32} mov       dword ptr [esi + 0x000000c0], eax             // 0x005f2a43    8986c0000000
                         call               @SetupMoveToPos__6LivingFRC9MapCoordsUc@13    // 0x005f2a49    e8e2fdffff
                         test               eax, eax                                      // 0x005f2a4e    85c0
                         {disp8} je         _jmp_addr_0x005f2a70                          // 0x005f2a50    741e
                         mov                eax, dword ptr [esi]                          // 0x005f2a52    8b06
                         push               0x3                                           // 0x005f2a54    6a03
                         push               0x0                                           // 0x005f2a56    6a00
                         mov.s              ecx, esi                                      // 0x005f2a58    8bce
                         call               dword ptr [eax + 0x938]                       // 0x005f2a5a    ff9038090000
                         mov.s              ecx, esi                                      // 0x005f2a60    8bce
                         call               ?SetStateAnim@Living@@QAEXXZ                  // 0x005f2a62    e8a9a0ffff
                         mov                eax, 0x00000001                               // 0x005f2a67    b801000000
                         pop                esi                                           // 0x005f2a6c    5e
                         ret                0x000c                                        // 0x005f2a6d    c20c00
_jmp_addr_0x005f2a70:    xor.s              eax, eax                                      // 0x005f2a70    33c0
                         pop                esi                                           // 0x005f2a72    5e
                         ret                0x000c                                        // 0x005f2a73    c20c00
                         nop                                                              // 0x005f2a76    90
                         nop                                                              // 0x005f2a77    90
                         nop                                                              // 0x005f2a78    90
                         nop                                                              // 0x005f2a79    90
                         nop                                                              // 0x005f2a7a    90
                         nop                                                              // 0x005f2a7b    90
                         nop                                                              // 0x005f2a7c    90
                         nop                                                              // 0x005f2a7d    90
                         nop                                                              // 0x005f2a7e    90
                         nop                                                              // 0x005f2a7f    90
_SetState__6LivingFUlUc:
@SetState__6LivingFUlUc@16:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x005f2a80    8b442408
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x005f2a84    8b542404
                         push               eax                                           // 0x005f2a88    50
                         push               edx                                           // 0x005f2a89    52
                         add                ecx, 0x0000008c                               // 0x005f2a8a    81c18c000000
                         call               @SetState__12LivingActionFUlUc@16             // 0x005f2a90    e8fba1ffff
                         ret                0x0008                                        // 0x005f2a95    c20800
                         nop                                                              // 0x005f2a98    90
                         nop                                                              // 0x005f2a99    90
                         nop                                                              // 0x005f2a9a    90
                         nop                                                              // 0x005f2a9b    90
                         nop                                                              // 0x005f2a9c    90
                         nop                                                              // 0x005f2a9d    90
                         nop                                                              // 0x005f2a9e    90
                         nop                                                              // 0x005f2a9f    90
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x36a480]        // 0x005f2aa0    8b0d8004d300
                         cmp                ecx, 0x000003e8                               // 0x005f2aa6    81f9e8030000
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x005f2aac    8b442404
                         {disp32} mov       byte ptr [ecx + 0x00d30484], al               // 0x005f2ab0    88818404d300
                         {disp8} jae        _jmp_addr_0x005f2abf                          // 0x005f2ab6    7307
                         inc                ecx                                           // 0x005f2ab8    41
                         {disp32} mov       dword ptr [data_bytes + 0x36a480], ecx        // 0x005f2ab9    890d8004d300
_jmp_addr_0x005f2abf:    {disp32} mov       ecx, dword ptr [data_bytes + 0x36a47c]        // 0x005f2abf    8b0d7c04d300
                         and                eax, 0x000000ff                               // 0x005f2ac5    25ff000000
                         add.s              ecx, eax                                      // 0x005f2aca    03c8
                         {disp32} mov       dword ptr [data_bytes + 0x36a47c], ecx        // 0x005f2acc    890d7c04d300
                         ret                                                              // 0x005f2ad2    c3
                         nop                                                              // 0x005f2ad3    90
                         nop                                                              // 0x005f2ad4    90
                         nop                                                              // 0x005f2ad5    90
                         nop                                                              // 0x005f2ad6    90
                         nop                                                              // 0x005f2ad7    90
                         nop                                                              // 0x005f2ad8    90
                         nop                                                              // 0x005f2ad9    90
                         nop                                                              // 0x005f2ada    90
                         nop                                                              // 0x005f2adb    90
                         nop                                                              // 0x005f2adc    90
                         nop                                                              // 0x005f2add    90
                         nop                                                              // 0x005f2ade    90
                         nop                                                              // 0x005f2adf    90
                         ret                                                              // 0x005f2ae0    c3
                         nop                                                              // 0x005f2ae1    90
                         nop                                                              // 0x005f2ae2    90
                         nop                                                              // 0x005f2ae3    90
                         nop                                                              // 0x005f2ae4    90
                         nop                                                              // 0x005f2ae5    90
                         nop                                                              // 0x005f2ae6    90
                         nop                                                              // 0x005f2ae7    90
                         nop                                                              // 0x005f2ae8    90
                         nop                                                              // 0x005f2ae9    90
                         nop                                                              // 0x005f2aea    90
                         nop                                                              // 0x005f2aeb    90
                         nop                                                              // 0x005f2aec    90
                         nop                                                              // 0x005f2aed    90
                         nop                                                              // 0x005f2aee    90
                         nop                                                              // 0x005f2aef    90
_jmp_addr_0x005f2af0:    mov.s              edx, ecx                                      // 0x005f2af0    8bd1
                         or                 ecx, 0xffffffff                               // 0x005f2af2    83c9ff
                         push               ebx                                           // 0x005f2af5    53
                         push               ebp                                           // 0x005f2af6    55
                         push               esi                                           // 0x005f2af7    56
                         push               edi                                           // 0x005f2af8    57
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x005f2af9    8b7c2414
                         xor.s              eax, eax                                      // 0x005f2afd    33c0
                         repne scasb                                                      // 0x005f2aff    f2ae
                         not                ecx                                           // 0x005f2b01    f7d1
                         sub.s              edi, ecx                                      // 0x005f2b03    2bf9
                         mov.s              eax, ecx                                      // 0x005f2b05    8bc1
                         shr                ecx, 2                                        // 0x005f2b07    c1e902
                         mov.s              esi, edi                                      // 0x005f2b0a    8bf7
                         {disp8} lea        ebx, dword ptr [edx + 0x08]                   // 0x005f2b0c    8d5a08
                         mov.s              edi, ebx                                      // 0x005f2b0f    8bfb
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x005f2b11    f3a5
                         mov.s              ecx, eax                                      // 0x005f2b13    8bc8
                         and                ecx, 0x03                                     // 0x005f2b15    83e103
                         rep movsb                                                        // 0x005f2b18    f3a4
                         {disp8} mov        edi, dword ptr [esp + 0x18]                   // 0x005f2b1a    8b7c2418
                         or                 ecx, 0xffffffff                               // 0x005f2b1e    83c9ff
                         xor.s              eax, eax                                      // 0x005f2b21    33c0
                         repne scasb                                                      // 0x005f2b23    f2ae
                         not                ecx                                           // 0x005f2b25    f7d1
                         sub.s              edi, ecx                                      // 0x005f2b27    2bf9
                         mov.s              eax, ecx                                      // 0x005f2b29    8bc1
                         mov.s              esi, edi                                      // 0x005f2b2b    8bf7
                         shr                ecx, 2                                        // 0x005f2b2d    c1e902
                         {disp32} lea       ebx, dword ptr [edx + 0x00000088]             // 0x005f2b30    8d9a88000000
                         mov.s              edi, ebx                                      // 0x005f2b36    8bfb
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x005f2b38    f3a5
                         mov.s              ecx, eax                                      // 0x005f2b3a    8bc8
                         and                ecx, 0x03                                     // 0x005f2b3c    83e103
                         rep movsb                                                        // 0x005f2b3f    f3a4
                         {disp8} mov        edi, dword ptr [esp + 0x1c]                   // 0x005f2b41    8b7c241c
                         xor.s              ebx, ebx                                      // 0x005f2b45    33db
                         cmp.s              edi, ebx                                      // 0x005f2b47    3bfb
                         {disp32} lea       ebp, dword ptr [edx + 0x00000108]             // 0x005f2b49    8daa08010000
                         {disp8} jne        _jmp_addr_0x005f2b56                          // 0x005f2b4f    7505
                         mov                edi, 0x00bf3b60                               // 0x005f2b51    bf603bbf00
_jmp_addr_0x005f2b56:    or                 ecx, 0xffffffff                               // 0x005f2b56    83c9ff
                         xor.s              eax, eax                                      // 0x005f2b59    33c0
                         repne scasb                                                      // 0x005f2b5b    f2ae
                         not                ecx                                           // 0x005f2b5d    f7d1
                         sub.s              edi, ecx                                      // 0x005f2b5f    2bf9
                         mov.s              eax, ecx                                      // 0x005f2b61    8bc1
                         mov.s              esi, edi                                      // 0x005f2b63    8bf7
                         shr                ecx, 2                                        // 0x005f2b65    c1e902
                         mov.s              edi, ebp                                      // 0x005f2b68    8bfd
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x005f2b6a    f3a5
                         mov.s              ecx, eax                                      // 0x005f2b6c    8bc8
                         and                ecx, 0x03                                     // 0x005f2b6e    83e103
                         rep movsb                                                        // 0x005f2b71    f3a4
                         pop                edi                                           // 0x005f2b73    5f
                         pop                esi                                           // 0x005f2b74    5e
                         {disp32} lea       ecx, dword ptr [edx + 0x00000118]             // 0x005f2b75    8d8a18010000
                         pop                ebp                                           // 0x005f2b7b    5d
                         mov                dword ptr [edx], ebx                          // 0x005f2b7c    891a
                         {disp8} mov        dword ptr [edx + 0x04], ebx                   // 0x005f2b7e    895a04
                         {disp32} mov       dword ptr [edx + 0x0000211c], ebx             // 0x005f2b81    899a1c210000
                         {disp32} mov       dword ptr [edx + 0x00002120], ebx             // 0x005f2b87    899a20210000
                         {disp32} mov       dword ptr [edx + 0x00000114], 0x00000001      // 0x005f2b8d    c7821401000001000000
                         {disp32} mov       dword ptr [edx + 0x00002118], ecx             // 0x005f2b97    898a18210000
                         mov.s              eax, edx                                      // 0x005f2b9d    8bc2
                         pop                ebx                                           // 0x005f2b9f    5b
                         ret                0x000c                                        // 0x005f2ba0    c20c00
                         nop                                                              // 0x005f2ba3    90
                         nop                                                              // 0x005f2ba4    90
                         nop                                                              // 0x005f2ba5    90
                         nop                                                              // 0x005f2ba6    90
                         nop                                                              // 0x005f2ba7    90
                         nop                                                              // 0x005f2ba8    90
                         nop                                                              // 0x005f2ba9    90
                         nop                                                              // 0x005f2baa    90
                         nop                                                              // 0x005f2bab    90
                         nop                                                              // 0x005f2bac    90
                         nop                                                              // 0x005f2bad    90
                         nop                                                              // 0x005f2bae    90
                         nop                                                              // 0x005f2baf    90
_jmp_addr_0x005f2bb0:    push               ebx                                           // 0x005f2bb0    53
                         push               esi                                           // 0x005f2bb1    56
                         push               edi                                           // 0x005f2bb2    57
                         push               0x37                                          // 0x005f2bb3    6a37
                         push               0x00bf3b68                                    // 0x005f2bb5    68683bbf00
                         push               0x00000094                                    // 0x005f2bba    6894000000
                         mov.s              ebx, ecx                                      // 0x005f2bbf    8bd9
                         call               ___nw__FUl                                    // 0x005f2bc1    e8ca8b1e00
                         {disp8} mov        edi, dword ptr [esp + 0x1c]                   // 0x005f2bc6    8b7c241c
                         or                 ecx, 0xffffffff                               // 0x005f2bca    83c9ff
                         mov.s              edx, eax                                      // 0x005f2bcd    8bd0
                         add                esp, 0x0c                                     // 0x005f2bcf    83c40c
                         xor.s              eax, eax                                      // 0x005f2bd2    33c0
                         repne scasb                                                      // 0x005f2bd4    f2ae
                         not                ecx                                           // 0x005f2bd6    f7d1
                         sub.s              edi, ecx                                      // 0x005f2bd8    2bf9
                         mov.s              eax, ecx                                      // 0x005f2bda    8bc1
                         mov.s              esi, edi                                      // 0x005f2bdc    8bf7
                         shr                ecx, 2                                        // 0x005f2bde    c1e902
                         mov.s              edi, edx                                      // 0x005f2be1    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x005f2be3    f3a5
                         mov.s              ecx, eax                                      // 0x005f2be5    8bc8
                         and                ecx, 0x03                                     // 0x005f2be7    83e103
                         rep movsb                                                        // 0x005f2bea    f3a4
                         mov                ecx, dword ptr [ebx]                          // 0x005f2bec    8b0b
                         pop                edi                                           // 0x005f2bee    5f
                         {disp32} mov       dword ptr [edx + 0x0000008c], ecx             // 0x005f2bef    898a8c000000
                         {disp32} mov       dword ptr [edx + 0x00000088], 0x00000000      // 0x005f2bf5    c7828800000000000000
                         pop                esi                                           // 0x005f2bff    5e
                         mov                dword ptr [ebx], edx                          // 0x005f2c00    8913
                         mov.s              eax, edx                                      // 0x005f2c02    8bc2
                         pop                ebx                                           // 0x005f2c04    5b
                         ret                0x0004                                        // 0x005f2c05    c20400
                         nop                                                              // 0x005f2c08    90
                         nop                                                              // 0x005f2c09    90
                         nop                                                              // 0x005f2c0a    90
                         nop                                                              // 0x005f2c0b    90
                         nop                                                              // 0x005f2c0c    90
                         nop                                                              // 0x005f2c0d    90
                         nop                                                              // 0x005f2c0e    90
                         nop                                                              // 0x005f2c0f    90
_jmp_addr_0x005f2c10:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x005f2c10    8b442404
                         push               ebx                                           // 0x005f2c14    53
                         push               esi                                           // 0x005f2c15    56
                         mov.s              esi, ecx                                      // 0x005f2c16    8bf1
                         push               eax                                           // 0x005f2c18    50
                         xor.s              ebx, ebx                                      // 0x005f2c19    33db
                         call               _jmp_addr_0x005f2d00                          // 0x005f2c1b    e8e0000000
                         cmp.s              eax, ebx                                      // 0x005f2c20    3bc3
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x005f2c22    8944240c
                         {disp32} je        _jmp_addr_0x005f2ce5                          // 0x005f2c26    0f84b9000000
                         push               ebp                                           // 0x005f2c2c    55
                         push               edi                                           // 0x005f2c2d    57
                         push               0x4a                                          // 0x005f2c2e    6a4a
                         push               0x00bf3b68                                    // 0x005f2c30    68683bbf00
                         push               0x00000124                                    // 0x005f2c35    6824010000
                         call               ___nw__FUl                                    // 0x005f2c3a    e8518b1e00
                         {disp8} mov        edi, dword ptr [esp + 0x24]                   // 0x005f2c3f    8b7c2424
                         mov.s              ebp, eax                                      // 0x005f2c43    8be8
                         or                 ecx, 0xffffffff                               // 0x005f2c45    83c9ff
                         xor.s              eax, eax                                      // 0x005f2c48    33c0
                         add                esp, 0x0c                                     // 0x005f2c4a    83c40c
                         repne scasb                                                      // 0x005f2c4d    f2ae
                         {disp8} mov        ax, word ptr [esp + 0x20]                     // 0x005f2c4f    668b442420
                         not                ecx                                           // 0x005f2c54    f7d1
                         sub.s              edi, ecx                                      // 0x005f2c56    2bf9
                         mov.s              edx, ecx                                      // 0x005f2c58    8bd1
                         shr                ecx, 2                                        // 0x005f2c5a    c1e902
                         mov.s              esi, edi                                      // 0x005f2c5d    8bf7
                         mov.s              edi, ebp                                      // 0x005f2c5f    8bfd
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x005f2c61    f3a5
                         mov.s              ecx, edx                                      // 0x005f2c63    8bca
                         and                ecx, 0x03                                     // 0x005f2c65    83e103
                         rep movsb                                                        // 0x005f2c68    f3a4
                         {disp8} mov        edi, dword ptr [esp + 0x24]                   // 0x005f2c6a    8b7c2424
                         cmp.s              edi, ebx                                      // 0x005f2c6e    3bfb
                         {disp8} mov        cl, byte ptr [esp + 0x1c]                     // 0x005f2c70    8a4c241c
                         {disp32} mov       byte ptr [ebp + 0x00000080], bl               // 0x005f2c74    889d80000000
                         {disp32} mov       dword ptr [ebp + 0x0000010c], ebx             // 0x005f2c7a    899d0c010000
                         {disp32} mov       word ptr [ebp + 0x00000112], ax               // 0x005f2c80    66898512010000
                         {disp32} mov       byte ptr [ebp + 0x00000114], cl               // 0x005f2c87    888d14010000
                         {disp32} mov       dword ptr [ebp + 0x0000011c], ebx             // 0x005f2c8d    899d1c010000
                         {disp32} mov       dword ptr [ebp + 0x00000120], ebx             // 0x005f2c93    899d20010000
                         {disp32} mov       dword ptr [ebp + 0x00000118], ebx             // 0x005f2c99    899d18010000
                         {disp8} je         _jmp_addr_0x005f2cd2                          // 0x005f2c9f    7431
                         cmp                byte ptr [edi], bl                            // 0x005f2ca1    381f
                         {disp8} je         _jmp_addr_0x005f2cd2                          // 0x005f2ca3    742d
                         or                 ecx, 0xffffffff                               // 0x005f2ca5    83c9ff
                         xor.s              eax, eax                                      // 0x005f2ca8    33c0
                         {disp32} mov       dword ptr [ebp + 0x00000118], 0x00000001      // 0x005f2caa    c7851801000001000000
                         repne scasb                                                      // 0x005f2cb4    f2ae
                         not                ecx                                           // 0x005f2cb6    f7d1
                         sub.s              edi, ecx                                      // 0x005f2cb8    2bf9
                         mov.s              eax, ecx                                      // 0x005f2cba    8bc1
                         mov.s              esi, edi                                      // 0x005f2cbc    8bf7
                         shr                ecx, 2                                        // 0x005f2cbe    c1e902
                         {disp32} lea       edx, dword ptr [ebp + 0x00000100]             // 0x005f2cc1    8d9500010000
                         mov.s              edi, edx                                      // 0x005f2cc7    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x005f2cc9    f3a5
                         mov.s              ecx, eax                                      // 0x005f2ccb    8bc8
                         and                ecx, 0x03                                     // 0x005f2ccd    83e103
                         rep movsb                                                        // 0x005f2cd0    f3a4
_jmp_addr_0x005f2cd2:    {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x005f2cd2    8b4c2414
                         push               ebp                                           // 0x005f2cd6    55
                         call               _jmp_addr_0x005f2d40                          // 0x005f2cd7    e864000000
                         pop                edi                                           // 0x005f2cdc    5f
                         mov.s              eax, ebp                                      // 0x005f2cdd    8bc5
                         pop                ebp                                           // 0x005f2cdf    5d
                         pop                esi                                           // 0x005f2ce0    5e
                         pop                ebx                                           // 0x005f2ce1    5b
                         ret                0x0014                                        // 0x005f2ce2    c21400
_jmp_addr_0x005f2ce5:    {disp32} inc       dword ptr [esi + 0x0000211c]                  // 0x005f2ce5    ff861c210000
                         pop                esi                                           // 0x005f2ceb    5e
                         mov.s              eax, ebx                                      // 0x005f2cec    8bc3
                         pop                ebx                                           // 0x005f2cee    5b
                         ret                0x0014                                        // 0x005f2cef    c21400
                         nop                                                              // 0x005f2cf2    90
                         nop                                                              // 0x005f2cf3    90
                         nop                                                              // 0x005f2cf4    90
                         nop                                                              // 0x005f2cf5    90
                         nop                                                              // 0x005f2cf6    90
                         nop                                                              // 0x005f2cf7    90
                         nop                                                              // 0x005f2cf8    90
                         nop                                                              // 0x005f2cf9    90
                         nop                                                              // 0x005f2cfa    90
                         nop                                                              // 0x005f2cfb    90
                         nop                                                              // 0x005f2cfc    90
                         nop                                                              // 0x005f2cfd    90
                         nop                                                              // 0x005f2cfe    90
                         nop                                                              // 0x005f2cff    90
_jmp_addr_0x005f2d00:    push               esi                                           // 0x005f2d00    56
                         push               edi                                           // 0x005f2d01    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x005f2d02    8b7c240c
                         test               edi, edi                                      // 0x005f2d06    85ff
                         {disp8} je         _jmp_addr_0x005f2d28                          // 0x005f2d08    741e
                         mov                esi, dword ptr [ecx]                          // 0x005f2d0a    8b31
                         test               esi, esi                                      // 0x005f2d0c    85f6
                         {disp8} je         _jmp_addr_0x005f2d28                          // 0x005f2d0e    7418
_jmp_addr_0x005f2d10:    push               edi                                           // 0x005f2d10    57
                         push               esi                                           // 0x005f2d11    56
                         call               __strcmpi                                     // 0x005f2d12    e8c93f1d00
                         add                esp, 0x08                                     // 0x005f2d17    83c408
                         test               eax, eax                                      // 0x005f2d1a    85c0
                         {disp8} je         _jmp_addr_0x005f2d2f                          // 0x005f2d1c    7411
                         {disp32} mov       esi, dword ptr [esi + 0x0000008c]             // 0x005f2d1e    8bb68c000000
                         test               esi, esi                                      // 0x005f2d24    85f6
                         {disp8} jne        _jmp_addr_0x005f2d10                          // 0x005f2d26    75e8
_jmp_addr_0x005f2d28:    pop                edi                                           // 0x005f2d28    5f
                         xor.s              eax, eax                                      // 0x005f2d29    33c0
                         pop                esi                                           // 0x005f2d2b    5e
                         ret                0x0004                                        // 0x005f2d2c    c20400
_jmp_addr_0x005f2d2f:    pop                edi                                           // 0x005f2d2f    5f
                         mov.s              eax, esi                                      // 0x005f2d30    8bc6
                         pop                esi                                           // 0x005f2d32    5e
                         ret                0x0004                                        // 0x005f2d33    c20400
                         nop                                                              // 0x005f2d36    90
                         nop                                                              // 0x005f2d37    90
                         nop                                                              // 0x005f2d38    90
                         nop                                                              // 0x005f2d39    90
                         nop                                                              // 0x005f2d3a    90
                         nop                                                              // 0x005f2d3b    90
                         nop                                                              // 0x005f2d3c    90
                         nop                                                              // 0x005f2d3d    90
                         nop                                                              // 0x005f2d3e    90
                         nop                                                              // 0x005f2d3f    90
_jmp_addr_0x005f2d40:    {disp32} mov       eax, dword ptr [ecx + 0x00000088]             // 0x005f2d40    8b8188000000
                         test               eax, eax                                      // 0x005f2d46    85c0
                         {disp8} je         _jmp_addr_0x005f2d6f                          // 0x005f2d48    7425
                         mov.s              ecx, eax                                      // 0x005f2d4a    8bc8
                         {disp32} mov       eax, dword ptr [ecx + 0x00000120]             // 0x005f2d4c    8b8120010000
                         test               eax, eax                                      // 0x005f2d52    85c0
                         {disp8} je         _jmp_addr_0x005f2d62                          // 0x005f2d54    740c
_jmp_addr_0x005f2d56:    mov.s              ecx, eax                                      // 0x005f2d56    8bc8
                         {disp32} mov       eax, dword ptr [ecx + 0x00000120]             // 0x005f2d58    8b8120010000
                         test               eax, eax                                      // 0x005f2d5e    85c0
                         {disp8} jne        _jmp_addr_0x005f2d56                          // 0x005f2d60    75f4
_jmp_addr_0x005f2d62:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x005f2d62    8b442404
                         {disp32} mov       dword ptr [ecx + 0x00000120], eax             // 0x005f2d66    898120010000
                         ret                0x0004                                        // 0x005f2d6c    c20400
_jmp_addr_0x005f2d6f:    {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x005f2d6f    8b542404
                         {disp32} mov       dword ptr [ecx + 0x00000088], edx             // 0x005f2d73    899188000000
                         ret                0x0004                                        // 0x005f2d79    c20400
                         nop                                                              // 0x005f2d7c    90
                         nop                                                              // 0x005f2d7d    90
                         nop                                                              // 0x005f2d7e    90
                         nop                                                              // 0x005f2d7f    90
_jmp_addr_0x005f2d80:    push               ebp                                           // 0x005f2d80    55
                         push               esi                                           // 0x005f2d81    56
                         push               edi                                           // 0x005f2d82    57
                         push               0x0000009b                                    // 0x005f2d83    689b000000
                         push               0x00bf3b68                                    // 0x005f2d88    68683bbf00
                         push               0x000002e8                                    // 0x005f2d8d    68e8020000
                         mov.s              ebp, ecx                                      // 0x005f2d92    8be9
                         call               ___nw__FUl                                    // 0x005f2d94    e8f7891e00
                         {disp8} mov        edi, dword ptr [esp + 0x1c]                   // 0x005f2d99    8b7c241c
                         or                 ecx, 0xffffffff                               // 0x005f2d9d    83c9ff
                         mov.s              edx, eax                                      // 0x005f2da0    8bd0
                         xor.s              eax, eax                                      // 0x005f2da2    33c0
                         add                esp, 0x0c                                     // 0x005f2da4    83c40c
                         repne scasb                                                      // 0x005f2da7    f2ae
                         not                ecx                                           // 0x005f2da9    f7d1
                         sub.s              edi, ecx                                      // 0x005f2dab    2bf9
                         mov.s              eax, ecx                                      // 0x005f2dad    8bc1
                         shr                ecx, 2                                        // 0x005f2daf    c1e902
                         mov.s              esi, edi                                      // 0x005f2db2    8bf7
                         mov.s              edi, edx                                      // 0x005f2db4    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x005f2db6    f3a5
                         mov.s              ecx, eax                                      // 0x005f2db8    8bc8
                         and                ecx, 0x03                                     // 0x005f2dba    83e103
                         rep movsb                                                        // 0x005f2dbd    f3a4
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x005f2dbf    8b4c2414
                         {disp8} mov        dword ptr [edx + 0x60], ecx                   // 0x005f2dc3    894a60
                         {disp32} mov       byte ptr [edx + 0x00000260], 0x00             // 0x005f2dc6    c6826002000000
                         {disp32} mov       dword ptr [edx + 0x000002e0], ebp             // 0x005f2dcd    89aae0020000
                         {disp32} mov       dword ptr [edx + 0x000002e4], 0x00000000      // 0x005f2dd3    c782e402000000000000
                         {disp32} inc       dword ptr [ebp + 0x0000010c]                  // 0x005f2ddd    ff850c010000
                         {disp32} mov       ecx, dword ptr [ebp + 0x0000011c]             // 0x005f2de3    8b8d1c010000
                         test               ecx, ecx                                      // 0x005f2de9    85c9
                         {disp8} je         _jmp_addr_0x005f2e11                          // 0x005f2deb    7424
                         {disp32} mov       eax, dword ptr [ecx + 0x000002e4]             // 0x005f2ded    8b81e4020000
                         test               eax, eax                                      // 0x005f2df3    85c0
                         {disp8} je         _jmp_addr_0x005f2e03                          // 0x005f2df5    740c
_jmp_addr_0x005f2df7:    mov.s              ecx, eax                                      // 0x005f2df7    8bc8
                         {disp32} mov       eax, dword ptr [ecx + 0x000002e4]             // 0x005f2df9    8b81e4020000
                         test               eax, eax                                      // 0x005f2dff    85c0
                         {disp8} jne        _jmp_addr_0x005f2df7                          // 0x005f2e01    75f4
_jmp_addr_0x005f2e03:    pop                edi                                           // 0x005f2e03    5f
                         pop                esi                                           // 0x005f2e04    5e
                         {disp32} mov       dword ptr [ecx + 0x000002e4], edx             // 0x005f2e05    8991e4020000
                         mov.s              eax, edx                                      // 0x005f2e0b    8bc2
                         pop                ebp                                           // 0x005f2e0d    5d
                         ret                0x0008                                        // 0x005f2e0e    c20800
_jmp_addr_0x005f2e11:    pop                edi                                           // 0x005f2e11    5f
                         pop                esi                                           // 0x005f2e12    5e
                         {disp32} mov       dword ptr [ebp + 0x0000011c], edx             // 0x005f2e13    89951c010000
                         mov.s              eax, edx                                      // 0x005f2e19    8bc2
                         pop                ebp                                           // 0x005f2e1b    5d
                         ret                0x0008                                        // 0x005f2e1c    c20800
                         nop                                                              // 0x005f2e1f    90
_jmp_addr_0x005f2e20:    push               ebp                                           // 0x005f2e20    55
                         push               esi                                           // 0x005f2e21    56
                         push               edi                                           // 0x005f2e22    57
                         push               0x000000c4                                    // 0x005f2e23    68c4000000
                         push               0x00bf3b68                                    // 0x005f2e28    68683bbf00
                         push               0x000002e8                                    // 0x005f2e2d    68e8020000
                         mov.s              ebp, ecx                                      // 0x005f2e32    8be9
                         call               ___nw__FUl                                    // 0x005f2e34    e857891e00
                         {disp8} mov        edi, dword ptr [esp + 0x1c]                   // 0x005f2e39    8b7c241c
                         or                 ecx, 0xffffffff                               // 0x005f2e3d    83c9ff
                         mov.s              edx, eax                                      // 0x005f2e40    8bd0
                         xor.s              eax, eax                                      // 0x005f2e42    33c0
                         add                esp, 0x0c                                     // 0x005f2e44    83c40c
                         repne scasb                                                      // 0x005f2e47    f2ae
                         not                ecx                                           // 0x005f2e49    f7d1
                         sub.s              edi, ecx                                      // 0x005f2e4b    2bf9
                         mov.s              eax, ecx                                      // 0x005f2e4d    8bc1
                         shr                ecx, 2                                        // 0x005f2e4f    c1e902
                         mov.s              esi, edi                                      // 0x005f2e52    8bf7
                         mov.s              edi, edx                                      // 0x005f2e54    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x005f2e56    f3a5
                         mov.s              ecx, eax                                      // 0x005f2e58    8bc8
                         and                ecx, 0x03                                     // 0x005f2e5a    83e103
                         rep movsb                                                        // 0x005f2e5d    f3a4
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x005f2e5f    8b4c2414
                         {disp8} mov        dword ptr [edx + 0x60], ecx                   // 0x005f2e63    894a60
                         {disp32} mov       byte ptr [edx + 0x00000260], 0x00             // 0x005f2e66    c6826002000000
                         {disp32} mov       dword ptr [edx + 0x000002e0], ebp             // 0x005f2e6d    89aae0020000
                         {disp32} mov       dword ptr [edx + 0x000002e4], 0x00000000      // 0x005f2e73    c782e402000000000000
                         {disp32} inc       dword ptr [ebp + 0x0000010c]                  // 0x005f2e7d    ff850c010000
                         {disp32} mov       ecx, dword ptr [ebp + 0x0000011c]             // 0x005f2e83    8b8d1c010000
                         test               ecx, ecx                                      // 0x005f2e89    85c9
                         {disp8} je         _jmp_addr_0x005f2eb1                          // 0x005f2e8b    7424
                         {disp32} mov       eax, dword ptr [ecx + 0x000002e4]             // 0x005f2e8d    8b81e4020000
                         test               eax, eax                                      // 0x005f2e93    85c0
                         {disp8} je         _jmp_addr_0x005f2ea3                          // 0x005f2e95    740c
_jmp_addr_0x005f2e97:    mov.s              ecx, eax                                      // 0x005f2e97    8bc8
                         {disp32} mov       eax, dword ptr [ecx + 0x000002e4]             // 0x005f2e99    8b81e4020000
                         test               eax, eax                                      // 0x005f2e9f    85c0
                         {disp8} jne        _jmp_addr_0x005f2e97                          // 0x005f2ea1    75f4
_jmp_addr_0x005f2ea3:    pop                edi                                           // 0x005f2ea3    5f
                         pop                esi                                           // 0x005f2ea4    5e
                         {disp32} mov       dword ptr [ecx + 0x000002e4], edx             // 0x005f2ea5    8991e4020000
                         mov.s              eax, edx                                      // 0x005f2eab    8bc2
                         pop                ebp                                           // 0x005f2ead    5d
                         ret                0x0008                                        // 0x005f2eae    c20800
_jmp_addr_0x005f2eb1:    pop                edi                                           // 0x005f2eb1    5f
                         pop                esi                                           // 0x005f2eb2    5e
                         {disp32} mov       dword ptr [ebp + 0x0000011c], edx             // 0x005f2eb3    89951c010000
                         mov.s              eax, edx                                      // 0x005f2eb9    8bc2
                         pop                ebp                                           // 0x005f2ebb    5d
                         ret                0x0008                                        // 0x005f2ebc    c20800
                         nop                                                              // 0x005f2ebf    90
_jmp_addr_0x005f2ec0:    push               ebp                                           // 0x005f2ec0    55
                         push               esi                                           // 0x005f2ec1    56
                         push               edi                                           // 0x005f2ec2    57
                         push               0x000000e6                                    // 0x005f2ec3    68e6000000
                         push               0x00bf3b68                                    // 0x005f2ec8    68683bbf00
                         push               0x000002e8                                    // 0x005f2ecd    68e8020000
                         mov.s              ebp, ecx                                      // 0x005f2ed2    8be9
                         call               ___nw__FUl                                    // 0x005f2ed4    e8b7881e00
                         {disp8} mov        edi, dword ptr [esp + 0x1c]                   // 0x005f2ed9    8b7c241c
                         or                 ecx, 0xffffffff                               // 0x005f2edd    83c9ff
                         mov.s              edx, eax                                      // 0x005f2ee0    8bd0
                         xor.s              eax, eax                                      // 0x005f2ee2    33c0
                         add                esp, 0x0c                                     // 0x005f2ee4    83c40c
                         repne scasb                                                      // 0x005f2ee7    f2ae
                         not                ecx                                           // 0x005f2ee9    f7d1
                         sub.s              edi, ecx                                      // 0x005f2eeb    2bf9
                         mov.s              eax, ecx                                      // 0x005f2eed    8bc1
                         shr                ecx, 2                                        // 0x005f2eef    c1e902
                         mov.s              esi, edi                                      // 0x005f2ef2    8bf7
                         mov.s              edi, edx                                      // 0x005f2ef4    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x005f2ef6    f3a5
                         mov.s              ecx, eax                                      // 0x005f2ef8    8bc8
                         and                ecx, 0x03                                     // 0x005f2efa    83e103
                         rep movsb                                                        // 0x005f2efd    f3a4
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x005f2eff    8b7c2414
                         or                 ecx, 0xffffffff                               // 0x005f2f03    83c9ff
                         {disp32} mov       byte ptr [edx + 0x00000260], 0x00             // 0x005f2f06    c6826002000000
                         xor.s              eax, eax                                      // 0x005f2f0d    33c0
                         repne scasb                                                      // 0x005f2f0f    f2ae
                         not                ecx                                           // 0x005f2f11    f7d1
                         sub.s              edi, ecx                                      // 0x005f2f13    2bf9
                         mov.s              eax, ecx                                      // 0x005f2f15    8bc1
                         shr                ecx, 2                                        // 0x005f2f17    c1e902
                         {disp8} lea        esi, dword ptr [edx + 0x60]                   // 0x005f2f1a    8d7260
                         {disp8} mov        dword ptr [esp + 0x10], esi                   // 0x005f2f1d    89742410
                         mov.s              esi, edi                                      // 0x005f2f21    8bf7
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x005f2f23    8b7c2410
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x005f2f27    f3a5
                         mov.s              ecx, eax                                      // 0x005f2f29    8bc8
                         and                ecx, 0x03                                     // 0x005f2f2b    83e103
                         rep movsb                                                        // 0x005f2f2e    f3a4
                         {disp32} mov       dword ptr [edx + 0x000002e0], ebp             // 0x005f2f30    89aae0020000
                         {disp32} mov       dword ptr [edx + 0x000002e4], 0x00000000      // 0x005f2f36    c782e402000000000000
                         {disp32} inc       dword ptr [ebp + 0x0000010c]                  // 0x005f2f40    ff850c010000
                         {disp32} mov       ecx, dword ptr [ebp + 0x0000011c]             // 0x005f2f46    8b8d1c010000
                         test               ecx, ecx                                      // 0x005f2f4c    85c9
                         {disp8} je         _jmp_addr_0x005f2f74                          // 0x005f2f4e    7424
                         {disp32} mov       eax, dword ptr [ecx + 0x000002e4]             // 0x005f2f50    8b81e4020000
                         test               eax, eax                                      // 0x005f2f56    85c0
                         {disp8} je         _jmp_addr_0x005f2f66                          // 0x005f2f58    740c
_jmp_addr_0x005f2f5a:    mov.s              ecx, eax                                      // 0x005f2f5a    8bc8
                         {disp32} mov       eax, dword ptr [ecx + 0x000002e4]             // 0x005f2f5c    8b81e4020000
                         test               eax, eax                                      // 0x005f2f62    85c0
                         {disp8} jne        _jmp_addr_0x005f2f5a                          // 0x005f2f64    75f4
_jmp_addr_0x005f2f66:    pop                edi                                           // 0x005f2f66    5f
                         pop                esi                                           // 0x005f2f67    5e
                         {disp32} mov       dword ptr [ecx + 0x000002e4], edx             // 0x005f2f68    8991e4020000
                         mov.s              eax, edx                                      // 0x005f2f6e    8bc2
                         pop                ebp                                           // 0x005f2f70    5d
                         ret                0x0008                                        // 0x005f2f71    c20800
_jmp_addr_0x005f2f74:    pop                edi                                           // 0x005f2f74    5f
                         pop                esi                                           // 0x005f2f75    5e
                         {disp32} mov       dword ptr [ebp + 0x0000011c], edx             // 0x005f2f76    89951c010000
                         mov.s              eax, edx                                      // 0x005f2f7c    8bc2
                         pop                ebp                                           // 0x005f2f7e    5d
                         ret                0x0008                                        // 0x005f2f7f    c20800
                         nop                                                              // 0x005f2f82    90
                         nop                                                              // 0x005f2f83    90
                         nop                                                              // 0x005f2f84    90
                         nop                                                              // 0x005f2f85    90
                         nop                                                              // 0x005f2f86    90
                         nop                                                              // 0x005f2f87    90
                         nop                                                              // 0x005f2f88    90
                         nop                                                              // 0x005f2f89    90
                         nop                                                              // 0x005f2f8a    90
                         nop                                                              // 0x005f2f8b    90
                         nop                                                              // 0x005f2f8c    90
                         nop                                                              // 0x005f2f8d    90
                         nop                                                              // 0x005f2f8e    90
                         nop                                                              // 0x005f2f8f    90
_jmp_addr_0x005f2f90:    sub                esp, 0x08                                     // 0x005f2f90    83ec08
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x005f2f93    8b44240c
                         push               ebp                                           // 0x005f2f97    55
                         push               esi                                           // 0x005f2f98    56
                         push               edi                                           // 0x005f2f99    57
                         xor.s              edi, edi                                      // 0x005f2f9a    33ff
                         mov.s              esi, ecx                                      // 0x005f2f9c    8bf1
                         push               eax                                           // 0x005f2f9e    50
                         {disp8} mov        dword ptr [esp + 0x10], edi                   // 0x005f2f9f    897c2410
                         {disp8} mov        dword ptr [esp + 0x14], edi                   // 0x005f2fa3    897c2414
                         call               _jmp_addr_0x005f2d00                          // 0x005f2fa7    e854fdffff
                         cmp.s              eax, edi                                      // 0x005f2fac    3bc7
                         {disp32} je        _jmp_addr_0x005f3104                          // 0x005f2fae    0f8450010000
                         {disp32} mov       ebp, dword ptr [eax + 0x00000088]             // 0x005f2fb4    8ba888000000
                         cmp.s              ebp, edi                                      // 0x005f2fba    3bef
                         {disp32} je        _jmp_addr_0x005f310a                          // 0x005f2fbc    0f8448010000
                         push               ebx                                           // 0x005f2fc2    53
                         {disp8} mov        ebx, dword ptr [esp + 0x24]                   // 0x005f2fc3    8b5c2424
_jmp_addr_0x005f2fc7:    {disp32} mov       edi, dword ptr [ebp + 0x0000011c]             // 0x005f2fc7    8bbd1c010000
                         test               edi, edi                                      // 0x005f2fcd    85ff
                         {disp8} je         _jmp_addr_0x005f2fed                          // 0x005f2fcf    741c
_jmp_addr_0x005f2fd1:    {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x005f2fd1    8b4c2420
                         push               ecx                                           // 0x005f2fd5    51
                         push               edi                                           // 0x005f2fd6    57
                         call               __strcmpi                                     // 0x005f2fd7    e8043d1d00
                         add                esp, 0x08                                     // 0x005f2fdc    83c408
                         test               eax, eax                                      // 0x005f2fdf    85c0
                         {disp8} je         _jmp_addr_0x005f3032                          // 0x005f2fe1    744f
                         {disp32} mov       edi, dword ptr [edi + 0x000002e4]             // 0x005f2fe3    8bbfe4020000
                         test               edi, edi                                      // 0x005f2fe9    85ff
                         {disp8} jne        _jmp_addr_0x005f2fd1                          // 0x005f2feb    75e4
_jmp_addr_0x005f2fed:    {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x005f2fed    8b442414
                         test               eax, eax                                      // 0x005f2ff1    85c0
                         {disp8} jne        _jmp_addr_0x005f301a                          // 0x005f2ff3    7525
                         xor.s              eax, eax                                      // 0x005f2ff5    33c0
                         {disp32} mov       ax, word ptr [ebp + 0x00000112]               // 0x005f2ff7    668b8512010000
                         push               0x0                                           // 0x005f2ffe    6a00
                         mov.s              ecx, esi                                      // 0x005f3000    8bce
                         push               eax                                           // 0x005f3002    50
                         push               ebx                                           // 0x005f3003    53
                         call               _jmp_addr_0x005f3250                          // 0x005f3004    e847020000
                         xor.s              ecx, ecx                                      // 0x005f3009    33c9
                         {disp32} mov       cx, word ptr [ebp + 0x00000112]               // 0x005f300b    668b8d12010000
                         add.s              ebx, ecx                                      // 0x005f3012    03d9
_jmp_addr_0x005f3014:    {disp32} inc       dword ptr [esi + 0x0000211c]                  // 0x005f3014    ff861c210000
_jmp_addr_0x005f301a:    {disp32} mov       ebp, dword ptr [ebp + 0x00000120]             // 0x005f301a    8bad20010000
                         test               ebp, ebp                                      // 0x005f3020    85ed
                         {disp8} jne        _jmp_addr_0x005f2fc7                          // 0x005f3022    75a3
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x005f3024    8b442410
                         pop                ebx                                           // 0x005f3028    5b
                         pop                edi                                           // 0x005f3029    5f
                         pop                esi                                           // 0x005f302a    5e
                         pop                ebp                                           // 0x005f302b    5d
                         add                esp, 0x08                                     // 0x005f302c    83c408
                         ret                0x000c                                        // 0x005f302f    c20c00
_jmp_addr_0x005f3032:    push               ebp                                           // 0x005f3032    55
                         mov.s              ecx, esi                                      // 0x005f3033    8bce
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000001            // 0x005f3035    c744241801000000
                         call               _jmp_addr_0x005f3160                          // 0x005f303d    e81e010000
                         test               eax, eax                                      // 0x005f3042    85c0
                         {disp8} je         _jmp_addr_0x005f301a                          // 0x005f3044    74d4
                         {disp32} mov       cl, byte ptr [edi + 0x00000260]               // 0x005f3046    8a8f60020000
                         test               cl, cl                                        // 0x005f304c    84c9
                         {disp32} lea       eax, dword ptr [edi + 0x00000260]             // 0x005f304e    8d8760020000
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x005f3054    8944241c
                         {disp8} je         _jmp_addr_0x005f30b5                          // 0x005f3058    745b
                         {disp32} lea       edx, dword ptr [ebp + 0x00000080]             // 0x005f305a    8d9580000000
                         or                 ecx, 0xffffffff                               // 0x005f3060    83c9ff
                         xor.s              eax, eax                                      // 0x005f3063    33c0
                         mov.s              edi, edx                                      // 0x005f3065    8bfa
                         repne scasb                                                      // 0x005f3067    f2ae
                         not                ecx                                           // 0x005f3069    f7d1
                         dec                ecx                                           // 0x005f306b    49
                         {disp8} jne        _jmp_addr_0x005f308e                          // 0x005f306c    7520
                         xor.s              edx, edx                                      // 0x005f306e    33d2
                         {disp32} mov       dx, word ptr [ebp + 0x00000112]               // 0x005f3070    668b9512010000
                         push               eax                                           // 0x005f3077    50
                         mov.s              ecx, esi                                      // 0x005f3078    8bce
                         push               edx                                           // 0x005f307a    52
                         push               ebx                                           // 0x005f307b    53
                         call               _jmp_addr_0x005f3250                          // 0x005f307c    e8cf010000
                         xor.s              eax, eax                                      // 0x005f3081    33c0
                         {disp32} mov       ax, word ptr [ebp + 0x00000112]               // 0x005f3083    668b8512010000
                         add.s              ebx, eax                                      // 0x005f308a    03d8
                         {disp8} jmp        _jmp_addr_0x005f3014                          // 0x005f308c    eb86
_jmp_addr_0x005f308e:    {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x005f308e    8b4c241c
                         push               ebx                                           // 0x005f3092    53
                         push               ecx                                           // 0x005f3093    51
                         push               edx                                           // 0x005f3094    52
                         mov.s              ecx, esi                                      // 0x005f3095    8bce
                         call               _jmp_addr_0x005f2f90                          // 0x005f3097    e8f4feffff
                         test               eax, eax                                      // 0x005f309c    85c0
                         {disp32} je        _jmp_addr_0x005f301a                          // 0x005f309e    0f8476ffffff
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x005f30a4    8b4c2410
                         add.s              ebx, eax                                      // 0x005f30a8    03d8
                         add.s              ecx, eax                                      // 0x005f30aa    03c8
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x005f30ac    894c2410
                         {disp32} jmp       _jmp_addr_0x005f301a                          // 0x005f30b0    e965ffffff
_jmp_addr_0x005f30b5:    xor.s              eax, eax                                      // 0x005f30b5    33c0
                         {disp32} mov       ax, word ptr [ebp + 0x00000112]               // 0x005f30b7    668b8512010000
                         cmp                ax, 0x0004                                    // 0x005f30be    663d0400
                         {disp8} jbe        _jmp_addr_0x005f30d8                          // 0x005f30c2    7614
                         add                edi, 0x60                                     // 0x005f30c4    83c760
                         push               edi                                           // 0x005f30c7    57
                         and                eax, 0x0000ffff                               // 0x005f30c8    25ffff0000
                         push               eax                                           // 0x005f30cd    50
                         push               ebx                                           // 0x005f30ce    53
                         mov.s              ecx, esi                                      // 0x005f30cf    8bce
                         call               _jmp_addr_0x005f3290                          // 0x005f30d1    e8ba010000
                         {disp8} jmp        _jmp_addr_0x005f30ea                          // 0x005f30d6    eb12
_jmp_addr_0x005f30d8:    {disp8} mov        edx, dword ptr [edi + 0x60]                   // 0x005f30d8    8b5760
                         push               edx                                           // 0x005f30db    52
                         and                eax, 0x0000ffff                               // 0x005f30dc    25ffff0000
                         push               eax                                           // 0x005f30e1    50
                         push               ebx                                           // 0x005f30e2    53
                         mov.s              ecx, esi                                      // 0x005f30e3    8bce
                         call               _jmp_addr_0x005f3250                          // 0x005f30e5    e866010000
_jmp_addr_0x005f30ea:    {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x005f30ea    8b4c2410
                         xor.s              eax, eax                                      // 0x005f30ee    33c0
                         {disp32} mov       ax, word ptr [ebp + 0x00000112]               // 0x005f30f0    668b8512010000
                         add.s              ebx, eax                                      // 0x005f30f7    03d8
                         add.s              ecx, eax                                      // 0x005f30f9    03c8
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x005f30fb    894c2410
                         {disp32} jmp       _jmp_addr_0x005f301a                          // 0x005f30ff    e916ffffff
_jmp_addr_0x005f3104:    {disp32} inc       dword ptr [esi + 0x0000211c]                  // 0x005f3104    ff861c210000
_jmp_addr_0x005f310a:    mov.s              eax, edi                                      // 0x005f310a    8bc7
                         pop                edi                                           // 0x005f310c    5f
                         pop                esi                                           // 0x005f310d    5e
                         pop                ebp                                           // 0x005f310e    5d
                         add                esp, 0x08                                     // 0x005f310f    83c408
                         ret                0x000c                                        // 0x005f3112    c20c00
                         nop                                                              // 0x005f3115    90
                         nop                                                              // 0x005f3116    90
                         nop                                                              // 0x005f3117    90
                         nop                                                              // 0x005f3118    90
                         nop                                                              // 0x005f3119    90
                         nop                                                              // 0x005f311a    90
                         nop                                                              // 0x005f311b    90
                         nop                                                              // 0x005f311c    90
                         nop                                                              // 0x005f311d    90
                         nop                                                              // 0x005f311e    90
                         nop                                                              // 0x005f311f    90
_jmp_addr_0x005f3120:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x005f3120    8b442408
                         push               esi                                           // 0x005f3124    56
                         push               edi                                           // 0x005f3125    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x005f3126    8b7c240c
                         push               eax                                           // 0x005f312a    50
                         mov.s              esi, ecx                                      // 0x005f312b    8bf1
                         push               edi                                           // 0x005f312d    57
                         call               _jmp_addr_0x005f3210                          // 0x005f312e    e8dd000000
                         test               eax, eax                                      // 0x005f3133    85c0
                         {disp8} je         _jmp_addr_0x005f314a                          // 0x005f3135    7413
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x005f3137    8b4c2414
                         push               ecx                                           // 0x005f313b    51
                         push               eax                                           // 0x005f313c    50
                         push               edi                                           // 0x005f313d    57
                         mov.s              ecx, esi                                      // 0x005f313e    8bce
                         call               _jmp_addr_0x005f2f90                          // 0x005f3140    e84bfeffff
                         pop                edi                                           // 0x005f3145    5f
                         pop                esi                                           // 0x005f3146    5e
                         ret                0x000c                                        // 0x005f3147    c20c00
_jmp_addr_0x005f314a:    pop                edi                                           // 0x005f314a    5f
                         xor.s              eax, eax                                      // 0x005f314b    33c0
                         pop                esi                                           // 0x005f314d    5e
                         ret                0x000c                                        // 0x005f314e    c20c00
                         nop                                                              // 0x005f3151    90
                         nop                                                              // 0x005f3152    90
                         nop                                                              // 0x005f3153    90
                         nop                                                              // 0x005f3154    90
                         nop                                                              // 0x005f3155    90
                         nop                                                              // 0x005f3156    90
                         nop                                                              // 0x005f3157    90
                         nop                                                              // 0x005f3158    90
                         nop                                                              // 0x005f3159    90
                         nop                                                              // 0x005f315a    90
                         nop                                                              // 0x005f315b    90
                         nop                                                              // 0x005f315c    90
                         nop                                                              // 0x005f315d    90
                         nop                                                              // 0x005f315e    90
                         nop                                                              // 0x005f315f    90
_jmp_addr_0x005f3160:    push               ecx                                           // 0x005f3160    51
                         push               ebx                                           // 0x005f3161    53
                         push               ebp                                           // 0x005f3162    55
                         push               esi                                           // 0x005f3163    56
                         {disp8} mov        esi, dword ptr [esp + 0x14]                   // 0x005f3164    8b742414
                         {disp32} mov       eax, dword ptr [esi + 0x00000118]             // 0x005f3168    8b8618010000
                         test               eax, eax                                      // 0x005f316e    85c0
                         push               edi                                           // 0x005f3170    57
                         {disp32} je        _jmp_addr_0x005f31ff                          // 0x005f3171    0f8488000000
                         {disp32} mov       eax, dword ptr [ecx + 0x00000114]             // 0x005f3177    8b8114010000
                         test               eax, eax                                      // 0x005f317d    85c0
                         {disp8} je         _jmp_addr_0x005f31f5                          // 0x005f317f    7474
                         {disp32} lea       ebp, dword ptr [ecx + 0x00000108]             // 0x005f3181    8da908010000
                         or                 ecx, 0xffffffff                               // 0x005f3187    83c9ff
                         xor.s              eax, eax                                      // 0x005f318a    33c0
                         mov.s              edi, ebp                                      // 0x005f318c    8bfd
                         repne scasb                                                      // 0x005f318e    f2ae
                         not                ecx                                           // 0x005f3190    f7d1
                         dec                ecx                                           // 0x005f3192    49
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x005f3193    c744241000000000
                         {disp8} je         _jmp_addr_0x005f31f5                          // 0x005f319b    7458
                         add                esi, 0x00000100                               // 0x005f319d    81c600010000
                         {disp8} mov        dword ptr [esp + 0x18], ebp                   // 0x005f31a3    896c2418
_jmp_addr_0x005f31a7:    or                 ecx, 0xffffffff                               // 0x005f31a7    83c9ff
                         xor.s              eax, eax                                      // 0x005f31aa    33c0
                         xor.s              edx, edx                                      // 0x005f31ac    33d2
                         mov.s              edi, esi                                      // 0x005f31ae    8bfe
                         repne scasb                                                      // 0x005f31b0    f2ae
                         not                ecx                                           // 0x005f31b2    f7d1
                         dec                ecx                                           // 0x005f31b4    49
                         {disp8} je         _jmp_addr_0x005f31d3                          // 0x005f31b5    741c
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x005f31b7    8b442418
                         mov                bl, byte ptr [eax]                            // 0x005f31bb    8a18
_jmp_addr_0x005f31bd:    cmp                bl, byte ptr [esi + edx * 0x1]                // 0x005f31bd    3a1c16
                         {disp8} je         _jmp_addr_0x005f31ff                          // 0x005f31c0    743d
                         or                 ecx, 0xffffffff                               // 0x005f31c2    83c9ff
                         xor.s              eax, eax                                      // 0x005f31c5    33c0
                         inc                edx                                           // 0x005f31c7    42
                         mov.s              edi, esi                                      // 0x005f31c8    8bfe
                         repne scasb                                                      // 0x005f31ca    f2ae
                         not                ecx                                           // 0x005f31cc    f7d1
                         dec                ecx                                           // 0x005f31ce    49
                         cmp.s              edx, ecx                                      // 0x005f31cf    3bd1
                         .byte              0x72, 0xea// {disp8} jb _jmp_addr_0x005f31bd  // 0x005f31d1    72ea
_jmp_addr_0x005f31d3:    {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x005f31d3    8b542410
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x005f31d7    8b442418
                         inc                edx                                           // 0x005f31db    42
                         inc                eax                                           // 0x005f31dc    40
                         or                 ecx, 0xffffffff                               // 0x005f31dd    83c9ff
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x005f31e0    89442418
                         xor.s              eax, eax                                      // 0x005f31e4    33c0
                         mov.s              edi, ebp                                      // 0x005f31e6    8bfd
                         repne scasb                                                      // 0x005f31e8    f2ae
                         not                ecx                                           // 0x005f31ea    f7d1
                         dec                ecx                                           // 0x005f31ec    49
                         cmp.s              edx, ecx                                      // 0x005f31ed    3bd1
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x005f31ef    89542410
                         .byte              0x72, 0xb2// {disp8} jb _jmp_addr_0x005f31a7  // 0x005f31f3    72b2
_jmp_addr_0x005f31f5:    pop                edi                                           // 0x005f31f5    5f
                         pop                esi                                           // 0x005f31f6    5e
                         pop                ebp                                           // 0x005f31f7    5d
                         xor.s              eax, eax                                      // 0x005f31f8    33c0
                         pop                ebx                                           // 0x005f31fa    5b
                         pop                ecx                                           // 0x005f31fb    59
                         ret                0x0004                                        // 0x005f31fc    c20400
_jmp_addr_0x005f31ff:    pop                edi                                           // 0x005f31ff    5f
                         pop                esi                                           // 0x005f3200    5e
                         pop                ebp                                           // 0x005f3201    5d
                         mov                eax, 0x00000001                               // 0x005f3202    b801000000
                         pop                ebx                                           // 0x005f3207    5b
                         pop                ecx                                           // 0x005f3208    59
                         ret                0x0004                                        // 0x005f3209    c20400
                         nop                                                              // 0x005f320c    90
                         nop                                                              // 0x005f320d    90
                         nop                                                              // 0x005f320e    90
                         nop                                                              // 0x005f320f    90
_jmp_addr_0x005f3210:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x005f3210    8b442404
                         push               esi                                           // 0x005f3214    56
                         push               eax                                           // 0x005f3215    50
                         xor.s              esi, esi                                      // 0x005f3216    33f6
                         call               _jmp_addr_0x005f2d00                          // 0x005f3218    e8e3faffff
                         test               eax, eax                                      // 0x005f321d    85c0
                         {disp8} je         _jmp_addr_0x005f3248                          // 0x005f321f    7427
                         {disp32} mov       eax, dword ptr [eax + 0x00000088]             // 0x005f3221    8b8088000000
                         test               eax, eax                                      // 0x005f3227    85c0
                         {disp8} je         _jmp_addr_0x005f3248                          // 0x005f3229    741d
                         {disp32} mov       eax, dword ptr [eax + 0x0000011c]             // 0x005f322b    8b801c010000
                         test               eax, eax                                      // 0x005f3231    85c0
                         {disp8} je         _jmp_addr_0x005f3248                          // 0x005f3233    7413
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x005f3235    8b4c240c
_jmp_addr_0x005f3239:    cmp.s              ecx, esi                                      // 0x005f3239    3bce
                         {disp8} je         _jmp_addr_0x005f324a                          // 0x005f323b    740d
                         {disp32} mov       eax, dword ptr [eax + 0x000002e4]             // 0x005f323d    8b80e4020000
                         inc                esi                                           // 0x005f3243    46
                         test               eax, eax                                      // 0x005f3244    85c0
                         {disp8} jne        _jmp_addr_0x005f3239                          // 0x005f3246    75f1
_jmp_addr_0x005f3248:    xor.s              eax, eax                                      // 0x005f3248    33c0
_jmp_addr_0x005f324a:    pop                esi                                           // 0x005f324a    5e
                         ret                0x0008                                        // 0x005f324b    c20800
                         nop                                                              // 0x005f324e    90
                         nop                                                              // 0x005f324f    90
_jmp_addr_0x005f3250:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x005f3250    8b442408
                         cmp                eax, 0x01                                     // 0x005f3254    83f801
                         {disp8} jne        _jmp_addr_0x005f3266                          // 0x005f3257    750d
                         {disp8} mov        al, byte ptr [esp + 0x0c]                     // 0x005f3259    8a44240c
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x005f325d    8b4c2404
                         mov                byte ptr [ecx], al                            // 0x005f3261    8801
                         ret                0x000c                                        // 0x005f3263    c20c00
_jmp_addr_0x005f3266:    cmp                eax, 0x02                                     // 0x005f3266    83f802
                         {disp8} jne        _jmp_addr_0x005f327a                          // 0x005f3269    750f
                         {disp8} mov        dx, word ptr [esp + 0x0c]                     // 0x005f326b    668b54240c
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x005f3270    8b442404
                         mov                word ptr [eax], dx                            // 0x005f3274    668910
                         ret                0x000c                                        // 0x005f3277    c20c00
_jmp_addr_0x005f327a:    cmp                eax, 0x04                                     // 0x005f327a    83f804
                         {disp8} jne        _jmp_addr_0x005f3289                          // 0x005f327d    750a
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x005f327f    8b4c240c
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x005f3283    8b542404
                         mov                dword ptr [edx], ecx                          // 0x005f3287    890a
_jmp_addr_0x005f3289:    ret                0x000c                                        // 0x005f3289    c20c00
                         nop                                                              // 0x005f328c    90
                         nop                                                              // 0x005f328d    90
                         nop                                                              // 0x005f328e    90
                         nop                                                              // 0x005f328f    90
_jmp_addr_0x005f3290:    {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x005f3290    8b54240c
                         push               ebx                                           // 0x005f3294    53
                         mov.s              ebx, ecx                                      // 0x005f3295    8bd9
                         push               esi                                           // 0x005f3297    56
                         {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x005f3298    8b742410
                         or                 ecx, 0xffffffff                               // 0x005f329c    83c9ff
                         push               edi                                           // 0x005f329f    57
                         xor.s              eax, eax                                      // 0x005f32a0    33c0
                         mov.s              edi, edx                                      // 0x005f32a2    8bfa
                         repne scasb                                                      // 0x005f32a4    f2ae
                         not                ecx                                           // 0x005f32a6    f7d1
                         dec                ecx                                           // 0x005f32a8    49
                         cmp.s              ecx, esi                                      // 0x005f32a9    3bce
                         {disp8} jbe        _jmp_addr_0x005f32b3                          // 0x005f32ab    7606
                         {disp32} inc       dword ptr [ebx + 0x00002120]                  // 0x005f32ad    ff8320210000
_jmp_addr_0x005f32b3:    xor.s              ebx, ebx                                      // 0x005f32b3    33db
                         cmp.s              esi, ebx                                      // 0x005f32b5    3bf3
                         {disp8} jbe        _jmp_addr_0x005f32da                          // 0x005f32b7    7621
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x005f32b9    8b7c2410
                         mov.s              ecx, edx                                      // 0x005f32bd    8bca
                         push               ebp                                           // 0x005f32bf    55
                         mov.s              eax, edi                                      // 0x005f32c0    8bc7
                         sub.s              ecx, edi                                      // 0x005f32c2    2bcf
                         mov.s              ebp, esi                                      // 0x005f32c4    8bee
_jmp_addr_0x005f32c6:    mov                dl, byte ptr [ecx + eax * 0x1]                // 0x005f32c6    8a1401
                         mov                byte ptr [eax], dl                            // 0x005f32c9    8810
                         inc                eax                                           // 0x005f32cb    40
                         dec                ebp                                           // 0x005f32cc    4d
                         {disp8} jne        _jmp_addr_0x005f32c6                          // 0x005f32cd    75f7
                         pop                ebp                                           // 0x005f32cf    5d
                         {disp8} mov        byte ptr [edi + esi * 0x1 + -0x01], bl        // 0x005f32d0    885c37ff
                         pop                edi                                           // 0x005f32d4    5f
                         pop                esi                                           // 0x005f32d5    5e
                         pop                ebx                                           // 0x005f32d6    5b
                         ret                0x000c                                        // 0x005f32d7    c20c00
_jmp_addr_0x005f32da:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x005f32da    8b442410
                         pop                edi                                           // 0x005f32de    5f
                         {disp8} mov        byte ptr [eax + esi * 0x1 + -0x01], bl        // 0x005f32df    885c30ff
                         pop                esi                                           // 0x005f32e3    5e
                         pop                ebx                                           // 0x005f32e4    5b
                         ret                0x000c                                        // 0x005f32e5    c20c00
                         nop                                                              // 0x005f32e8    90
                         nop                                                              // 0x005f32e9    90
                         nop                                                              // 0x005f32ea    90
                         nop                                                              // 0x005f32eb    90
                         nop                                                              // 0x005f32ec    90
                         nop                                                              // 0x005f32ed    90
                         nop                                                              // 0x005f32ee    90
                         nop                                                              // 0x005f32ef    90
_jmp_addr_0x005f32f0:    sub                esp, 0x000000d0                               // 0x005f32f0    81ecd0000000
                         push               ebx                                           // 0x005f32f6    53
                         push               ebp                                           // 0x005f32f7    55
                         push               esi                                           // 0x005f32f8    56
                         {disp32} mov       esi, dword ptr [esp + 0x000000e0]             // 0x005f32f9    8bb424e0000000
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x005f3300    8d442410
                         push               eax                                           // 0x005f3304    50
                         push               esi                                           // 0x005f3305    56
                         mov.s              ebx, ecx                                      // 0x005f3306    8bd9
                         call               _LHFileLength__FPcPUl                         // 0x005f3308    e853961c00
                         add                esp, 0x08                                     // 0x005f330d    83c408
                         test               eax, eax                                      // 0x005f3310    85c0
                         {disp8} jne        _jmp_addr_0x005f3353                          // 0x005f3312    753f
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x005f3314    8b442410
                         test               eax, eax                                      // 0x005f3318    85c0
                         {disp8} jbe        _jmp_addr_0x005f3353                          // 0x005f331a    7637
                         inc                eax                                           // 0x005f331c    40
                         push               eax                                           // 0x005f331d    50
                         mov                ecx, 0x00e85964                               // 0x005f331e    b96459e800
                         call               _jmp_addr_0x007e69d0                          // 0x005f3323    e8a8361f00
                         mov.s              ebp, eax                                      // 0x005f3328    8be8
                         test               ebp, ebp                                      // 0x005f332a    85ed
                         {disp8} mov        dword ptr [esp + 0x0c], ebp                   // 0x005f332c    896c240c
                         {disp8} je         _jmp_addr_0x005f3353                          // 0x005f3330    7421
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x005f3332    8b4c2410
                         push               0x0                                           // 0x005f3336    6a00
                         inc                ecx                                           // 0x005f3338    41
                         push               ecx                                           // 0x005f3339    51
                         push               ebp                                           // 0x005f333a    55
                         push               esi                                           // 0x005f333b    56
                         call               _LHLoadData__FPcPvUlPUl                       // 0x005f333c    e8af9a1c00
                         add                esp, 0x10                                     // 0x005f3341    83c410
                         test               eax, eax                                      // 0x005f3344    85c0
                         {disp8} je         _jmp_addr_0x005f336c                          // 0x005f3346    7424
                         push               ebp                                           // 0x005f3348    55
                         mov                ecx, 0x00e85964                               // 0x005f3349    b96459e800
                         call               _jmp_addr_0x007e6a30                          // 0x005f334e    e8dd361f00
_jmp_addr_0x005f3353:    {disp32} mov       eax, dword ptr [ebx + 0x0000211c]             // 0x005f3353    8b831c210000
                         pop                esi                                           // 0x005f3359    5e
                         inc                eax                                           // 0x005f335a    40
                         pop                ebp                                           // 0x005f335b    5d
                         {disp32} mov       dword ptr [ebx + 0x0000211c], eax             // 0x005f335c    89831c210000
                         pop                ebx                                           // 0x005f3362    5b
                         add                esp, 0x000000d0                               // 0x005f3363    81c4d0000000
                         ret                0x0004                                        // 0x005f3369    c20400
_jmp_addr_0x005f336c:    {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x005f336c    8b542410
                         push               edi                                           // 0x005f3370    57
                         xor.s              eax, eax                                      // 0x005f3371    33c0
                         push               ebp                                           // 0x005f3373    55
                         {disp32} lea       esi, dword ptr [ebx + 0x00000118]             // 0x005f3374    8db318010000
                         mov                byte ptr [edx + ebp * 0x1], -0x01             // 0x005f337a    c6042aff
                         mov                ecx, 0x00000800                               // 0x005f337e    b900080000
                         mov.s              edi, esi                                      // 0x005f3383    8bfe
                         push               eax                                           // 0x005f3385    50
                         rep stosd                                                        // 0x005f3386    f3ab
                         push               eax                                           // 0x005f3388    50
                         mov.s              ecx, ebx                                      // 0x005f3389    8bcb
                         call               _jmp_addr_0x005f35b0                          // 0x005f338b    e820020000
                         push               ebp                                           // 0x005f3390    55
                         push               0x00002000                                    // 0x005f3391    6800200000
                         push               esi                                           // 0x005f3396    56
                         mov.s              ecx, ebx                                      // 0x005f3397    8bcb
                         call               _jmp_addr_0x005f35b0                          // 0x005f3399    e812020000
                         test               eax, eax                                      // 0x005f339e    85c0
                         {disp32} je        _jmp_addr_0x005f358b                          // 0x005f33a0    0f84e5010000
_jmp_addr_0x005f33a6:    {disp32} mov       dword ptr [ebx + 0x00002118], esi             // 0x005f33a6    89b318210000
_jmp_addr_0x005f33ac:    {disp32} mov       ecx, dword ptr [ebx + 0x00002118]             // 0x005f33ac    8b8b18210000
                         mov                al, byte ptr [ecx]                            // 0x005f33b2    8a01
                         cmp                al, 0x09                                      // 0x005f33b4    3c09
                         {disp8} je         _jmp_addr_0x005f33bc                          // 0x005f33b6    7404
                         cmp                al, 0x20                                      // 0x005f33b8    3c20
                         {disp8} jne        _jmp_addr_0x005f33c5                          // 0x005f33ba    7509
_jmp_addr_0x005f33bc:    inc                ecx                                           // 0x005f33bc    41
                         {disp32} mov       dword ptr [ebx + 0x00002118], ecx             // 0x005f33bd    898b18210000
                         {disp8} jmp        _jmp_addr_0x005f33ac                          // 0x005f33c3    ebe7
_jmp_addr_0x005f33c5:    {disp32} mov       eax, dword ptr [ebx + 0x00002118]             // 0x005f33c5    8b8318210000
                         push               0x1                                           // 0x005f33cb    6a01
                         push               0x00bf3b94                                    // 0x005f33cd    68943bbf00
                         push               eax                                           // 0x005f33d2    50
                         call               __strnicmp                                    // 0x005f33d3    e838731e00
                         add                esp, 0x0c                                     // 0x005f33d8    83c40c
                         test               eax, eax                                      // 0x005f33db    85c0
                         {disp32} je        _jmp_addr_0x005f356f                          // 0x005f33dd    0f848c010000
                         {disp32} mov       ecx, dword ptr [ebx + 0x00002118]             // 0x005f33e3    8b8b18210000
                         push               0x2                                           // 0x005f33e9    6a02
                         push               0x00bf3b90                                    // 0x005f33eb    68903bbf00
                         push               ecx                                           // 0x005f33f0    51
                         call               __strnicmp                                    // 0x005f33f1    e81a731e00
                         add                esp, 0x0c                                     // 0x005f33f6    83c40c
                         test               eax, eax                                      // 0x005f33f9    85c0
                         {disp32} je        _jmp_addr_0x005f356f                          // 0x005f33fb    0f846e010000
                         {disp32} mov       edi, dword ptr [ebx + 0x00002118]             // 0x005f3401    8bbb18210000
                         or                 ecx, 0xffffffff                               // 0x005f3407    83c9ff
                         xor.s              eax, eax                                      // 0x005f340a    33c0
                         repne scasb                                                      // 0x005f340c    f2ae
                         not                ecx                                           // 0x005f340e    f7d1
                         dec                ecx                                           // 0x005f3410    49
                         {disp32} je        _jmp_addr_0x005f356f                          // 0x005f3411    0f8458010000
                         {disp8} lea        esi, dword ptr [ebx + 0x08]                   // 0x005f3417    8d7308
                         push               esi                                           // 0x005f341a    56
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                   // 0x005f341b    8d54241c
                         push               0x00bf3b88                                    // 0x005f341f    68883bbf00
                         push               edx                                           // 0x005f3424    52
                         call               _sprintf                                      // 0x005f3425    e8a8231d00
                         add                esp, 0x0c                                     // 0x005f342a    83c40c
                         {disp32} lea       ebp, dword ptr [ebx + 0x00000088]             // 0x005f342d    8dab88000000
                         push               ebp                                           // 0x005f3433    55
                         {disp32} lea       eax, dword ptr [esp + 0x00000080]             // 0x005f3434    8d842480000000
                         push               0x00bf3b88                                    // 0x005f343b    68883bbf00
                         push               eax                                           // 0x005f3440    50
                         call               _sprintf                                      // 0x005f3441    e88c231d00
                         {disp32} mov       edx, dword ptr [ebx + 0x00002118]             // 0x005f3446    8b9318210000
                         or                 ecx, 0xffffffff                               // 0x005f344c    83c9ff
                         xor.s              eax, eax                                      // 0x005f344f    33c0
                         {disp8} lea        edi, dword ptr [esp + 0x24]                   // 0x005f3451    8d7c2424
                         repne scasb                                                      // 0x005f3455    f2ae
                         not                ecx                                           // 0x005f3457    f7d1
                         dec                ecx                                           // 0x005f3459    49
                         push               ecx                                           // 0x005f345a    51
                         {disp8} lea        ecx, dword ptr [esp + 0x28]                   // 0x005f345b    8d4c2428
                         push               ecx                                           // 0x005f345f    51
                         push               edx                                           // 0x005f3460    52
                         call               __strnicmp                                    // 0x005f3461    e8aa721e00
                         add                esp, 0x18                                     // 0x005f3466    83c418
                         test               eax, eax                                      // 0x005f3469    85c0
                         {disp32} je        _jmp_addr_0x005f3564                          // 0x005f346b    0f84f3000000
                         or                 ecx, 0xffffffff                               // 0x005f3471    83c9ff
                         xor.s              eax, eax                                      // 0x005f3474    33c0
                         {disp8} lea        edi, dword ptr [esp + 0x7c]                   // 0x005f3476    8d7c247c
                         repne scasb                                                      // 0x005f347a    f2ae
                         not                ecx                                           // 0x005f347c    f7d1
                         dec                ecx                                           // 0x005f347e    49
                         push               ecx                                           // 0x005f347f    51
                         {disp32} mov       ecx, dword ptr [ebx + 0x00002118]             // 0x005f3480    8b8b18210000
                         {disp32} lea       eax, dword ptr [esp + 0x00000080]             // 0x005f3486    8d842480000000
                         push               eax                                           // 0x005f348d    50
                         push               ecx                                           // 0x005f348e    51
                         call               __strnicmp                                    // 0x005f348f    e87c721e00
                         add                esp, 0x0c                                     // 0x005f3494    83c40c
                         test               eax, eax                                      // 0x005f3497    85c0
                         {disp32} je        _jmp_addr_0x005f3564                          // 0x005f3499    0f84c5000000
                         or                 ecx, 0xffffffff                               // 0x005f349f    83c9ff
                         xor.s              eax, eax                                      // 0x005f34a2    33c0
                         mov.s              edi, esi                                      // 0x005f34a4    8bfe
                         repne scasb                                                      // 0x005f34a6    f2ae
                         not                ecx                                           // 0x005f34a8    f7d1
                         sub.s              edi, ecx                                      // 0x005f34aa    2bf9
                         mov.s              eax, ecx                                      // 0x005f34ac    8bc1
                         shr                ecx, 2                                        // 0x005f34ae    c1e902
                         mov.s              esi, edi                                      // 0x005f34b1    8bf7
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x005f34b3    8d542418
                         mov.s              edi, edx                                      // 0x005f34b7    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x005f34b9    f3a5
                         mov.s              ecx, eax                                      // 0x005f34bb    8bc8
                         and                ecx, 0x03                                     // 0x005f34bd    83e103
                         rep movsb                                                        // 0x005f34c0    f3a4
                         or                 ecx, 0xffffffff                               // 0x005f34c2    83c9ff
                         xor.s              eax, eax                                      // 0x005f34c5    33c0
                         mov.s              edi, ebp                                      // 0x005f34c7    8bfd
                         repne scasb                                                      // 0x005f34c9    f2ae
                         not                ecx                                           // 0x005f34cb    f7d1
                         sub.s              edi, ecx                                      // 0x005f34cd    2bf9
                         mov.s              eax, ecx                                      // 0x005f34cf    8bc1
                         shr                ecx, 2                                        // 0x005f34d1    c1e902
                         mov.s              esi, edi                                      // 0x005f34d4    8bf7
                         {disp8} lea        edx, dword ptr [esp + 0x7c]                   // 0x005f34d6    8d54247c
                         mov.s              edi, edx                                      // 0x005f34da    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x005f34dc    f3a5
                         mov.s              ecx, eax                                      // 0x005f34de    8bc8
                         and                ecx, 0x03                                     // 0x005f34e0    83e103
                         rep movsb                                                        // 0x005f34e3    f3a4
                         {disp32} mov       edx, dword ptr [ebx + 0x00002118]             // 0x005f34e5    8b9318210000
                         or                 ecx, 0xffffffff                               // 0x005f34eb    83c9ff
                         xor.s              eax, eax                                      // 0x005f34ee    33c0
                         {disp8} lea        edi, dword ptr [esp + 0x18]                   // 0x005f34f0    8d7c2418
                         repne scasb                                                      // 0x005f34f4    f2ae
                         not                ecx                                           // 0x005f34f6    f7d1
                         dec                ecx                                           // 0x005f34f8    49
                         push               ecx                                           // 0x005f34f9    51
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x005f34fa    8d4c241c
                         push               ecx                                           // 0x005f34fe    51
                         push               edx                                           // 0x005f34ff    52
                         call               __strnicmp                                    // 0x005f3500    e80b721e00
                         add                esp, 0x0c                                     // 0x005f3505    83c40c
                         test               eax, eax                                      // 0x005f3508    85c0
                         {disp8} je         _jmp_addr_0x005f3554                          // 0x005f350a    7448
                         or                 ecx, 0xffffffff                               // 0x005f350c    83c9ff
                         xor.s              eax, eax                                      // 0x005f350f    33c0
                         {disp8} lea        edi, dword ptr [esp + 0x7c]                   // 0x005f3511    8d7c247c
                         repne scasb                                                      // 0x005f3515    f2ae
                         not                ecx                                           // 0x005f3517    f7d1
                         dec                ecx                                           // 0x005f3519    49
                         push               ecx                                           // 0x005f351a    51
                         {disp32} mov       ecx, dword ptr [ebx + 0x00002118]             // 0x005f351b    8b8b18210000
                         {disp32} lea       eax, dword ptr [esp + 0x00000080]             // 0x005f3521    8d842480000000
                         push               eax                                           // 0x005f3528    50
                         push               ecx                                           // 0x005f3529    51
                         call               __strnicmp                                    // 0x005f352a    e8e1711e00
                         add                esp, 0x0c                                     // 0x005f352f    83c40c
                         test               eax, eax                                      // 0x005f3532    85c0
                         {disp8} je         _jmp_addr_0x005f3554                          // 0x005f3534    741e
                         {disp32} mov       edx, dword ptr [ebx + 0x00002118]             // 0x005f3536    8b9318210000
                         or                 ecx, 0xffffffff                               // 0x005f353c    83c9ff
                         xor.s              eax, eax                                      // 0x005f353f    33c0
                         mov.s              edi, edx                                      // 0x005f3541    8bfa
                         repne scasb                                                      // 0x005f3543    f2ae
                         not                ecx                                           // 0x005f3545    f7d1
                         dec                ecx                                           // 0x005f3547    49
                         {disp8} je         _jmp_addr_0x005f356b                          // 0x005f3548    7421
                         push               edx                                           // 0x005f354a    52
                         mov.s              ecx, ebx                                      // 0x005f354b    8bcb
                         call               _jmp_addr_0x005f39b0                          // 0x005f354d    e85e040000
                         {disp8} jmp        _jmp_addr_0x005f356b                          // 0x005f3552    eb17
_jmp_addr_0x005f3554:    {disp32} mov       edx, dword ptr [ebx + 0x00002118]             // 0x005f3554    8b9318210000
                         push               edx                                           // 0x005f355a    52
                         mov.s              ecx, ebx                                      // 0x005f355b    8bcb
                         call               _jmp_addr_0x005f3680                          // 0x005f355d    e81e010000
                         {disp8} jmp        _jmp_addr_0x005f356b                          // 0x005f3562    eb07
_jmp_addr_0x005f3564:    {disp8} mov        dword ptr [ebx + 0x04], 0x00000000            // 0x005f3564    c7430400000000
_jmp_addr_0x005f356b:    {disp8} mov        ebp, dword ptr [esp + 0x10]                   // 0x005f356b    8b6c2410
_jmp_addr_0x005f356f:    push               ebp                                           // 0x005f356f    55
                         push               0x00002000                                    // 0x005f3570    6800200000
                         {disp32} lea       esi, dword ptr [ebx + 0x00000118]             // 0x005f3575    8db318010000
                         push               esi                                           // 0x005f357b    56
                         mov.s              ecx, ebx                                      // 0x005f357c    8bcb
                         call               _jmp_addr_0x005f35b0                          // 0x005f357e    e82d000000
                         test               eax, eax                                      // 0x005f3583    85c0
                         {disp32} jne       _jmp_addr_0x005f33a6                          // 0x005f3585    0f851bfeffff
_jmp_addr_0x005f358b:    push               ebp                                           // 0x005f358b    55
                         mov                ecx, 0x00e85964                               // 0x005f358c    b96459e800
                         call               _jmp_addr_0x007e6a30                          // 0x005f3591    e89a341f00
                         pop                edi                                           // 0x005f3596    5f
                         pop                esi                                           // 0x005f3597    5e
                         pop                ebp                                           // 0x005f3598    5d
                         pop                ebx                                           // 0x005f3599    5b
                         add                esp, 0x000000d0                               // 0x005f359a    81c4d0000000
                         ret                0x0004                                        // 0x005f35a0    c20400
                         nop                                                              // 0x005f35a3    90
                         nop                                                              // 0x005f35a4    90
                         nop                                                              // 0x005f35a5    90
                         nop                                                              // 0x005f35a6    90
                         nop                                                              // 0x005f35a7    90
                         nop                                                              // 0x005f35a8    90
                         nop                                                              // 0x005f35a9    90
                         nop                                                              // 0x005f35aa    90
                         nop                                                              // 0x005f35ab    90
                         nop                                                              // 0x005f35ac    90
                         nop                                                              // 0x005f35ad    90
                         nop                                                              // 0x005f35ae    90
                         nop                                                              // 0x005f35af    90
_jmp_addr_0x005f35b0:    {disp32} mov       eax, dword ptr [data_bytes + 0x36a8b4]        // 0x005f35b0    a1b408d300
                         push               esi                                           // 0x005f35b5    56
                         xor.s              esi, esi                                      // 0x005f35b6    33f6
                         test               eax, eax                                      // 0x005f35b8    85c0
                         push               edi                                           // 0x005f35ba    57
                         {disp8} je         _jmp_addr_0x005f35d2                          // 0x005f35bb    7415
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x005f35bd    8b44240c
                         test               eax, eax                                      // 0x005f35c1    85c0
                         {disp32} mov       dword ptr [data_bytes + 0x36a8b4], esi        // 0x005f35c3    8935b408d300
                         {disp8} je         _jmp_addr_0x005f35da                          // 0x005f35c9    740f
_jmp_addr_0x005f35cb:    pop                edi                                           // 0x005f35cb    5f
                         xor.s              eax, eax                                      // 0x005f35cc    33c0
                         pop                esi                                           // 0x005f35ce    5e
                         ret                0x000c                                        // 0x005f35cf    c20c00
_jmp_addr_0x005f35d2:    {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x005f35d2    8b4c240c
                         test               ecx, ecx                                      // 0x005f35d6    85c9
                         {disp8} jne        _jmp_addr_0x005f3603                          // 0x005f35d8    7529
_jmp_addr_0x005f35da:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x005f35da    8b442410
                         test               eax, eax                                      // 0x005f35de    85c0
                         {disp8} je         _jmp_addr_0x005f35f3                          // 0x005f35e0    7411
                         pop                edi                                           // 0x005f35e2    5f
                         {disp32} mov       dword ptr [data_bytes + 0x36a8b4], 0x00000001 // 0x005f35e3    c705b408d30001000000
                         xor.s              eax, eax                                      // 0x005f35ed    33c0
                         pop                esi                                           // 0x005f35ef    5e
                         ret                0x000c                                        // 0x005f35f0    c20c00
_jmp_addr_0x005f35f3:    {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x005f35f3    8b442414
                         pop                edi                                           // 0x005f35f7    5f
                         {disp32} mov       dword ptr [data_bytes + 0x36a8b0], eax        // 0x005f35f8    a3b008d300
                         xor.s              eax, eax                                      // 0x005f35fd    33c0
                         pop                esi                                           // 0x005f35ff    5e
                         ret                0x000c                                        // 0x005f3600    c20c00
_jmp_addr_0x005f3603:    mov                byte ptr [ecx], 0x00                          // 0x005f3603    c60100
                         {disp32} mov       edx, dword ptr [data_bytes + 0x36a8b0]        // 0x005f3606    8b15b008d300
                         mov                al, byte ptr [edx]                            // 0x005f360c    8a02
                         cmp                al, 0x0a                                      // 0x005f360e    3c0a
                         {disp8} je         _jmp_addr_0x005f35cb                          // 0x005f3610    74b9
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x005f3612    8b7c2410
_jmp_addr_0x005f3616:    cmp.s              esi, edi                                      // 0x005f3616    3bf7
                         {disp8} jge        _jmp_addr_0x005f3635                          // 0x005f3618    7d1b
                         cmp                al, -0x01                                     // 0x005f361a    3cff
                         {disp8} je         _jmp_addr_0x005f3635                          // 0x005f361c    7417
                         mov                byte ptr [ecx], al                            // 0x005f361e    8801
                         {disp32} mov       edx, dword ptr [data_bytes + 0x36a8b0]        // 0x005f3620    8b15b008d300
                         inc                ecx                                           // 0x005f3626    41
                         inc                edx                                           // 0x005f3627    42
                         {disp32} mov       dword ptr [data_bytes + 0x36a8b0], edx        // 0x005f3628    8915b008d300
                         mov                al, byte ptr [edx]                            // 0x005f362e    8a02
                         inc                esi                                           // 0x005f3630    46
                         cmp                al, 0x0a                                      // 0x005f3631    3c0a
                         {disp8} jne        _jmp_addr_0x005f3616                          // 0x005f3633    75e1
_jmp_addr_0x005f3635:    test               esi, esi                                      // 0x005f3635    85f6
                         {disp8} je         _jmp_addr_0x005f35cb                          // 0x005f3637    7492
                         cmp                byte ptr [edx], -0x01                         // 0x005f3639    803aff
                         {disp8} je         _jmp_addr_0x005f3652                          // 0x005f363c    7414
                         {disp8} mov        byte ptr [ecx + -0x01], 0x00                  // 0x005f363e    c641ff00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x36a8b0]        // 0x005f3642    a1b008d300
                         inc                eax                                           // 0x005f3647    40
                         pop                edi                                           // 0x005f3648    5f
                         {disp32} mov       dword ptr [data_bytes + 0x36a8b0], eax        // 0x005f3649    a3b008d300
                         pop                esi                                           // 0x005f364e    5e
                         ret                0x000c                                        // 0x005f364f    c20c00
_jmp_addr_0x005f3652:    cmp.s              esi, edi                                      // 0x005f3652    3bf7
                         {disp8} jne        _jmp_addr_0x005f3663                          // 0x005f3654    750d
                         pop                edi                                           // 0x005f3656    5f
                         mov                byte ptr [ecx], 0x00                          // 0x005f3657    c60100
                         {disp32} mov       eax, dword ptr [data_bytes + 0x36a8b0]        // 0x005f365a    a1b008d300
                         pop                esi                                           // 0x005f365f    5e
                         ret                0x000c                                        // 0x005f3660    c20c00
_jmp_addr_0x005f3663:    pop                edi                                           // 0x005f3663    5f
                         {disp8} mov        byte ptr [ecx + -0x01], 0x00                  // 0x005f3664    c641ff00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x36a8b0]        // 0x005f3668    a1b008d300
                         pop                esi                                           // 0x005f366d    5e
                         ret                0x000c                                        // 0x005f366e    c20c00
                         nop                                                              // 0x005f3671    90
                         nop                                                              // 0x005f3672    90
                         nop                                                              // 0x005f3673    90
                         nop                                                              // 0x005f3674    90
                         nop                                                              // 0x005f3675    90
                         nop                                                              // 0x005f3676    90
                         nop                                                              // 0x005f3677    90
                         nop                                                              // 0x005f3678    90
                         nop                                                              // 0x005f3679    90
                         nop                                                              // 0x005f367a    90
                         nop                                                              // 0x005f367b    90
                         nop                                                              // 0x005f367c    90
                         nop                                                              // 0x005f367d    90
                         nop                                                              // 0x005f367e    90
                         nop                                                              // 0x005f367f    90
_jmp_addr_0x005f3680:    sub                esp, 0x00000144                               // 0x005f3680    81ec44010000
                         {disp32} mov       eax, dword ptr [esp + 0x00000148]             // 0x005f3686    8b842448010000
                         push               ebx                                           // 0x005f368d    53
                         push               esi                                           // 0x005f368e    56
                         mov.s              esi, ecx                                      // 0x005f368f    8bf1
                         push               0x00bf3b98                                    // 0x005f3691    68983bbf00
                         push               eax                                           // 0x005f3696    50
                         {disp8} mov        dword ptr [esp + 0x10], esi                   // 0x005f3697    89742410
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000            // 0x005f369b    c744241800000000
                         call               _strtok                                       // 0x005f36a3    e8825d1d00
                         add                esp, 0x08                                     // 0x005f36a8    83c408
                         push               eax                                           // 0x005f36ab    50
                         mov.s              ecx, esi                                      // 0x005f36ac    8bce
                         call               _jmp_addr_0x005f2bb0                          // 0x005f36ae    e8fdf4ffff
                         push               0x00bf3b98                                    // 0x005f36b3    68983bbf00
                         push               0x0                                           // 0x005f36b8    6a00
                         {disp8} mov        dword ptr [esi + 0x04], eax                   // 0x005f36ba    894604
                         call               _strtok                                       // 0x005f36bd    e8685d1d00
                         mov.s              ebx, eax                                      // 0x005f36c2    8bd8
                         add                esp, 0x08                                     // 0x005f36c4    83c408
                         test               ebx, ebx                                      // 0x005f36c7    85db
                         {disp32} je        _jmp_addr_0x005f39a2                          // 0x005f36c9    0f84d3020000
                         push               ebp                                           // 0x005f36cf    55
                         push               edi                                           // 0x005f36d0    57
_jmp_addr_0x005f36d1:    xor.s              eax, eax                                      // 0x005f36d1    33c0
                         mov                ecx, 0x00000019                               // 0x005f36d3    b919000000
                         {disp32} lea       edi, dword ptr [esp + 0x0000008c]             // 0x005f36d8    8dbc248c000000
                         rep stosd                                                        // 0x005f36df    f3ab
                         mov                ecx, 0x00000019                               // 0x005f36e1    b919000000
                         {disp8} lea        edi, dword ptr [esp + 0x28]                   // 0x005f36e6    8d7c2428
                         rep stosd                                                        // 0x005f36ea    f3ab
                         mov                ecx, 0x00000019                               // 0x005f36ec    b919000000
                         {disp32} lea       edi, dword ptr [esp + 0x000000f0]             // 0x005f36f1    8dbc24f0000000
                         rep stosd                                                        // 0x005f36f8    f3ab
                         or                 ecx, 0xffffffff                               // 0x005f36fa    83c9ff
                         xor.s              edx, edx                                      // 0x005f36fd    33d2
                         xor.s              ebp, ebp                                      // 0x005f36ff    33ed
                         mov.s              edi, ebx                                      // 0x005f3701    8bfb
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000004            // 0x005f3703    c744241404000000
                         repne scasb                                                      // 0x005f370b    f2ae
                         not                ecx                                           // 0x005f370d    f7d1
                         dec                ecx                                           // 0x005f370f    49
                         {disp32} je        _jmp_addr_0x005f3815                          // 0x005f3710    0f84ff000000
                         {disp32} lea       ecx, dword ptr [esp + 0x0000008c]             // 0x005f3716    8d8c248c000000
                         {disp8} mov        dword ptr [esp + 0x24], ecx                   // 0x005f371d    894c2424
                         {disp8} lea        eax, dword ptr [esp + 0x28]                   // 0x005f3721    8d442428
                         {disp32} lea       ecx, dword ptr [esp + 0x000000f0]             // 0x005f3725    8d8c24f0000000
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x005f372c    8944241c
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x005f3730    894c2420
_jmp_addr_0x005f3734:    mov                al, byte ptr [ebx + ebp * 0x1]                // 0x005f3734    8a042b
                         cmp                al, 0x3a                                      // 0x005f3737    3c3a
                         {disp32} jne       _jmp_addr_0x005f37c8                          // 0x005f3739    0f8589000000
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x005f373f    8b542410
                         add                edx, 0x08                                     // 0x005f3743    83c208
                         or                 ecx, 0xffffffff                               // 0x005f3746    83c9ff
                         xor.s              eax, eax                                      // 0x005f3749    33c0
                         mov.s              edi, edx                                      // 0x005f374b    8bfa
                         repne scasb                                                      // 0x005f374d    f2ae
                         not                ecx                                           // 0x005f374f    f7d1
                         dec                ecx                                           // 0x005f3751    49
                         push               ecx                                           // 0x005f3752    51
                         push               edx                                           // 0x005f3753    52
                         {disp8} lea        esi, dword ptr [ebx + ebp * 0x1 + 0x01]       // 0x005f3754    8d742b01
                         push               esi                                           // 0x005f3758    56
                         call               __strnicmp                                    // 0x005f3759    e8b26f1e00
                         add                esp, 0x0c                                     // 0x005f375e    83c40c
                         test               eax, eax                                      // 0x005f3761    85c0
                         {disp8} jne        _jmp_addr_0x005f376f                          // 0x005f3763    750a
                         mov                edx, 0x00000002                               // 0x005f3765    ba02000000
                         {disp32} jmp       _jmp_addr_0x005f3800                          // 0x005f376a    e991000000
_jmp_addr_0x005f376f:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x005f376f    8b442410
                         {disp32} lea       edx, dword ptr [eax + 0x00000088]             // 0x005f3773    8d9088000000
                         or                 ecx, 0xffffffff                               // 0x005f3779    83c9ff
                         xor.s              eax, eax                                      // 0x005f377c    33c0
                         mov.s              edi, edx                                      // 0x005f377e    8bfa
                         repne scasb                                                      // 0x005f3780    f2ae
                         not                ecx                                           // 0x005f3782    f7d1
                         dec                ecx                                           // 0x005f3784    49
                         push               ecx                                           // 0x005f3785    51
                         push               edx                                           // 0x005f3786    52
                         push               esi                                           // 0x005f3787    56
                         call               __strnicmp                                    // 0x005f3788    e8836f1e00
                         add                esp, 0x0c                                     // 0x005f378d    83c40c
                         test               eax, eax                                      // 0x005f3790    85c0
                         {disp8} jne        _jmp_addr_0x005f379b                          // 0x005f3792    7507
                         mov                edx, 0x00000002                               // 0x005f3794    ba02000000
                         {disp8} jmp        _jmp_addr_0x005f3800                          // 0x005f3799    eb65
_jmp_addr_0x005f379b:    {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x005f379b    8d4c2414
                         push               ecx                                           // 0x005f379f    51
                         push               0x009cda78                                    // 0x005f37a0    6878da9c00
                         push               esi                                           // 0x005f37a5    56
                         call               _sscanf                                       // 0x005f37a6    e828331d00
                         add                esp, 0x0c                                     // 0x005f37ab    83c40c
                         test               eax, eax                                      // 0x005f37ae    85c0
                         {disp8} jle        _jmp_addr_0x005f37b9                          // 0x005f37b0    7e07
                         mov                edx, 0x00000001                               // 0x005f37b2    ba01000000
                         {disp8} jmp        _jmp_addr_0x005f3800                          // 0x005f37b7    eb47
_jmp_addr_0x005f37b9:    mov                al, byte ptr [esi]                            // 0x005f37b9    8a06
                         xor.s              edx, edx                                      // 0x005f37bb    33d2
                         cmp                al, 0x24                                      // 0x005f37bd    3c24
                         setne              dl                                            // 0x005f37bf    0f95c2
                         dec                edx                                           // 0x005f37c2    4a
                         and                edx, 0x03                                     // 0x005f37c3    83e203
                         {disp8} jmp        _jmp_addr_0x005f3800                          // 0x005f37c6    eb38
_jmp_addr_0x005f37c8:    cmp                al, 0x20                                      // 0x005f37c8    3c20
                         {disp8} je         _jmp_addr_0x005f3800                          // 0x005f37ca    7434
                         mov.s              ecx, edx                                      // 0x005f37cc    8bca
                         sub                ecx, 0x00                                     // 0x005f37ce    83e900
                         {disp8} je         _jmp_addr_0x005f37f5                          // 0x005f37d1    7422
                         sub                ecx, 0x02                                     // 0x005f37d3    83e902
                         {disp8} je         _jmp_addr_0x005f37e8                          // 0x005f37d6    7410
                         dec                ecx                                           // 0x005f37d8    49
                         {disp8} jne        _jmp_addr_0x005f3800                          // 0x005f37d9    7525
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x005f37db    8b4c2420
                         mov                byte ptr [ecx], al                            // 0x005f37df    8801
                         inc                ecx                                           // 0x005f37e1    41
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x005f37e2    894c2420
                         {disp8} jmp        _jmp_addr_0x005f3800                          // 0x005f37e6    eb18
_jmp_addr_0x005f37e8:    {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x005f37e8    8b4c241c
                         mov                byte ptr [ecx], al                            // 0x005f37ec    8801
                         inc                ecx                                           // 0x005f37ee    41
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                   // 0x005f37ef    894c241c
                         {disp8} jmp        _jmp_addr_0x005f3800                          // 0x005f37f3    eb0b
_jmp_addr_0x005f37f5:    {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x005f37f5    8b4c2424
                         mov                byte ptr [ecx], al                            // 0x005f37f9    8801
                         inc                ecx                                           // 0x005f37fb    41
                         {disp8} mov        dword ptr [esp + 0x24], ecx                   // 0x005f37fc    894c2424
_jmp_addr_0x005f3800:    or                 ecx, 0xffffffff                               // 0x005f3800    83c9ff
                         xor.s              eax, eax                                      // 0x005f3803    33c0
                         inc                ebp                                           // 0x005f3805    45
                         mov.s              edi, ebx                                      // 0x005f3806    8bfb
                         repne scasb                                                      // 0x005f3808    f2ae
                         not                ecx                                           // 0x005f380a    f7d1
                         dec                ecx                                           // 0x005f380c    49
                         cmp.s              ebp, ecx                                      // 0x005f380d    3be9
                         {disp32} jb        _jmp_addr_0x005f3734                          // 0x005f380f    0f821fffffff
_jmp_addr_0x005f3815:    {disp8} mov        al, byte ptr [esp + 0x28]                     // 0x005f3815    8a442428
                         test               al, al                                        // 0x005f3819    84c0
                         {disp8} jne        _jmp_addr_0x005f3845                          // 0x005f381b    7528
                         or                 ecx, 0xffffffff                               // 0x005f381d    83c9ff
                         xor.s              eax, eax                                      // 0x005f3820    33c0
                         {disp32} lea       edi, dword ptr [esp + 0x0000008c]             // 0x005f3822    8dbc248c000000
                         repne scasb                                                      // 0x005f3829    f2ae
                         not                ecx                                           // 0x005f382b    f7d1
                         sub.s              edi, ecx                                      // 0x005f382d    2bf9
                         mov.s              eax, ecx                                      // 0x005f382f    8bc1
                         mov.s              esi, edi                                      // 0x005f3831    8bf7
                         shr                ecx, 2                                        // 0x005f3833    c1e902
                         {disp8} lea        edx, dword ptr [esp + 0x28]                   // 0x005f3836    8d542428
                         mov.s              edi, edx                                      // 0x005f383a    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x005f383c    f3a5
                         mov.s              ecx, eax                                      // 0x005f383e    8bc8
                         and                ecx, 0x03                                     // 0x005f3840    83e103
                         rep movsb                                                        // 0x005f3843    f3a4
_jmp_addr_0x005f3845:    {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x005f3845    8b542418
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x005f3849    8b4c2414
                         inc                edx                                           // 0x005f384d    42
                         mov                eax, 0x00000200                               // 0x005f384e    b800020000
                         cmp.s              ecx, eax                                      // 0x005f3853    3bc8
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x005f3855    89542418
                         {disp8} jbe        _jmp_addr_0x005f386b                          // 0x005f3859    7610
                         {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x005f385b    8b742410
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x005f385f    89442414
                         {disp32} inc       dword ptr [esi + 0x00002120]                  // 0x005f3863    ff8620210000
                         {disp8} jmp        _jmp_addr_0x005f386f                          // 0x005f3869    eb04
_jmp_addr_0x005f386b:    {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x005f386b    8b742410
_jmp_addr_0x005f386f:    {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x005f386f    8b542414
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x005f3873    8b442418
                         {disp32} lea       ecx, dword ptr [esp + 0x000000f0]             // 0x005f3877    8d8c24f0000000
                         push               ecx                                           // 0x005f387e    51
                         push               edx                                           // 0x005f387f    52
                         {disp8} mov        edx, dword ptr [esi + 0x04]                   // 0x005f3880    8b5604
                         push               eax                                           // 0x005f3883    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00000098]             // 0x005f3884    8d8c2498000000
                         push               ecx                                           // 0x005f388b    51
                         push               edx                                           // 0x005f388c    52
                         mov.s              ecx, esi                                      // 0x005f388d    8bce
                         call               _jmp_addr_0x005f2c10                          // 0x005f388f    e87cf3ffff
                         mov                esi, dword ptr [esi]                          // 0x005f3894    8b36
                         test               esi, esi                                      // 0x005f3896    85f6
                         mov.s              ebx, eax                                      // 0x005f3898    8bd8
                         {disp8} je         _jmp_addr_0x005f38ec                          // 0x005f389a    7450
_jmp_addr_0x005f389c:    {disp8} mov        ebp, dword ptr [esp + 0x10]                   // 0x005f389c    8b6c2410
                         cmp                esi, dword ptr [ebp + 0x04]                   // 0x005f38a0    3b7504
                         {disp8} je         _jmp_addr_0x005f38b7                          // 0x005f38a3    7412
                         {disp8} lea        eax, dword ptr [esp + 0x28]                   // 0x005f38a5    8d442428
                         push               eax                                           // 0x005f38a9    50
                         push               esi                                           // 0x005f38aa    56
                         call               __strcmpi                                     // 0x005f38ab    e830341d00
                         add                esp, 0x08                                     // 0x005f38b0    83c408
                         test               eax, eax                                      // 0x005f38b3    85c0
                         {disp8} je         _jmp_addr_0x005f38c3                          // 0x005f38b5    740c
_jmp_addr_0x005f38b7:    {disp32} mov       esi, dword ptr [esi + 0x0000008c]             // 0x005f38b7    8bb68c000000
                         test               esi, esi                                      // 0x005f38bd    85f6
                         {disp8} jne        _jmp_addr_0x005f389c                          // 0x005f38bf    75db
                         {disp8} jmp        _jmp_addr_0x005f38f0                          // 0x005f38c1    eb2d
_jmp_addr_0x005f38c3:    or                 ecx, 0xffffffff                               // 0x005f38c3    83c9ff
                         xor.s              eax, eax                                      // 0x005f38c6    33c0
                         {disp8} lea        edi, dword ptr [esp + 0x28]                   // 0x005f38c8    8d7c2428
                         repne scasb                                                      // 0x005f38cc    f2ae
                         not                ecx                                           // 0x005f38ce    f7d1
                         sub.s              edi, ecx                                      // 0x005f38d0    2bf9
                         mov.s              eax, ecx                                      // 0x005f38d2    8bc1
                         mov.s              esi, edi                                      // 0x005f38d4    8bf7
                         shr                ecx, 2                                        // 0x005f38d6    c1e902
                         {disp32} lea       edx, dword ptr [ebx + 0x00000080]             // 0x005f38d9    8d9380000000
                         mov.s              edi, edx                                      // 0x005f38df    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x005f38e1    f3a5
                         mov.s              ecx, eax                                      // 0x005f38e3    8bc8
                         and                ecx, 0x03                                     // 0x005f38e5    83e103
                         rep movsb                                                        // 0x005f38e8    f3a4
                         {disp8} jmp        _jmp_addr_0x005f38f0                          // 0x005f38ea    eb04
_jmp_addr_0x005f38ec:    {disp8} mov        ebp, dword ptr [esp + 0x10]                   // 0x005f38ec    8b6c2410
_jmp_addr_0x005f38f0:    {disp32} mov       al, byte ptr [ebx + 0x00000080]               // 0x005f38f0    8a8380000000
                         test               al, al                                        // 0x005f38f6    84c0
                         {disp32} jne       _jmp_addr_0x005f3987                          // 0x005f38f8    0f8589000000
                         {disp8} lea        edx, dword ptr [ebp + 0x08]                   // 0x005f38fe    8d5508
                         or                 ecx, 0xffffffff                               // 0x005f3901    83c9ff
                         xor.s              eax, eax                                      // 0x005f3904    33c0
                         mov.s              edi, edx                                      // 0x005f3906    8bfa
                         repne scasb                                                      // 0x005f3908    f2ae
                         not                ecx                                           // 0x005f390a    f7d1
                         dec                ecx                                           // 0x005f390c    49
                         push               ecx                                           // 0x005f390d    51
                         push               edx                                           // 0x005f390e    52
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x005f390f    8d4c2430
                         push               ecx                                           // 0x005f3913    51
                         call               __strnicmp                                    // 0x005f3914    e8f76d1e00
                         add                esp, 0x0c                                     // 0x005f3919    83c40c
                         test               eax, eax                                      // 0x005f391c    85c0
                         {disp8} je         _jmp_addr_0x005f3981                          // 0x005f391e    7461
                         {disp32} lea       edx, dword ptr [ebp + 0x00000088]             // 0x005f3920    8d9588000000
                         or                 ecx, 0xffffffff                               // 0x005f3926    83c9ff
                         mov.s              edi, edx                                      // 0x005f3929    8bfa
                         xor.s              eax, eax                                      // 0x005f392b    33c0
                         repne scasb                                                      // 0x005f392d    f2ae
                         not                ecx                                           // 0x005f392f    f7d1
                         dec                ecx                                           // 0x005f3931    49
                         push               ecx                                           // 0x005f3932    51
                         push               edx                                           // 0x005f3933    52
                         {disp8} lea        edx, dword ptr [esp + 0x30]                   // 0x005f3934    8d542430
                         push               edx                                           // 0x005f3938    52
                         call               __strnicmp                                    // 0x005f3939    e8d26d1e00
                         add                esp, 0x0c                                     // 0x005f393e    83c40c
                         test               eax, eax                                      // 0x005f3941    85c0
                         {disp8} je         _jmp_addr_0x005f3981                          // 0x005f3943    743c
                         {disp32} lea       esi, dword ptr [esp + 0x0000008c]             // 0x005f3945    8db4248c000000
                         {disp8} lea        eax, dword ptr [esp + 0x28]                   // 0x005f394c    8d442428
_jmp_addr_0x005f3950:    mov                dl, byte ptr [eax]                            // 0x005f3950    8a10
                         mov                bl, byte ptr [esi]                            // 0x005f3952    8a1e
                         mov.s              cl, dl                                        // 0x005f3954    8aca
                         cmp.s              dl, bl                                        // 0x005f3956    3ad3
                         {disp8} jne        _jmp_addr_0x005f3978                          // 0x005f3958    751e
                         test               cl, cl                                        // 0x005f395a    84c9
                         {disp8} je         _jmp_addr_0x005f3974                          // 0x005f395c    7416
                         {disp8} mov        dl, byte ptr [eax + 0x01]                     // 0x005f395e    8a5001
                         {disp8} mov        bl, byte ptr [esi + 0x01]                     // 0x005f3961    8a5e01
                         mov.s              cl, dl                                        // 0x005f3964    8aca
                         cmp.s              dl, bl                                        // 0x005f3966    3ad3
                         {disp8} jne        _jmp_addr_0x005f3978                          // 0x005f3968    750e
                         add                eax, 0x02                                     // 0x005f396a    83c002
                         add                esi, 0x02                                     // 0x005f396d    83c602
                         test               cl, cl                                        // 0x005f3970    84c9
                         {disp8} jne        _jmp_addr_0x005f3950                          // 0x005f3972    75dc
_jmp_addr_0x005f3974:    xor.s              eax, eax                                      // 0x005f3974    33c0
                         {disp8} jmp        _jmp_addr_0x005f397d                          // 0x005f3976    eb05
_jmp_addr_0x005f3978:    sbb.s              eax, eax                                      // 0x005f3978    1bc0
                         sbb                eax, -0x01                                    // 0x005f397a    83d8ff
_jmp_addr_0x005f397d:    test               eax, eax                                      // 0x005f397d    85c0
                         {disp8} je         _jmp_addr_0x005f3987                          // 0x005f397f    7406
_jmp_addr_0x005f3981:    {disp32} inc       dword ptr [ebp + 0x0000211c]                  // 0x005f3981    ff851c210000
_jmp_addr_0x005f3987:    push               0x00bf3b98                                    // 0x005f3987    68983bbf00
                         push               0x0                                           // 0x005f398c    6a00
                         call               _strtok                                       // 0x005f398e    e8975a1d00
                         mov.s              ebx, eax                                      // 0x005f3993    8bd8
                         add                esp, 0x08                                     // 0x005f3995    83c408
                         test               ebx, ebx                                      // 0x005f3998    85db
                         {disp32} jne       _jmp_addr_0x005f36d1                          // 0x005f399a    0f8531fdffff
                         pop                edi                                           // 0x005f39a0    5f
                         pop                ebp                                           // 0x005f39a1    5d
_jmp_addr_0x005f39a2:    pop                esi                                           // 0x005f39a2    5e
                         pop                ebx                                           // 0x005f39a3    5b
                         add                esp, 0x00000144                               // 0x005f39a4    81c444010000
                         ret                0x0004                                        // 0x005f39aa    c20400
                         nop                                                              // 0x005f39ad    90
                         nop                                                              // 0x005f39ae    90
                         nop                                                              // 0x005f39af    90
_jmp_addr_0x005f39b0:    sub                esp, 0x000002d4                               // 0x005f39b0    81ecd4020000
                         push               ebp                                           // 0x005f39b6    55
                         mov.s              ebp, ecx                                      // 0x005f39b7    8be9
                         {disp8} mov        eax, dword ptr [ebp + 0x04]                   // 0x005f39b9    8b4504
                         push               esi                                           // 0x005f39bc    56
                         xor.s              esi, esi                                      // 0x005f39bd    33f6
                         test               eax, eax                                      // 0x005f39bf    85c0
                         push               edi                                           // 0x005f39c1    57
                         {disp32} je        _jmp_addr_0x005f3b93                          // 0x005f39c2    0f84cb010000
                         {disp32} mov       eax, dword ptr [esp + 0x000002e4]             // 0x005f39c8    8b8424e4020000
                         push               0x00bf3b98                                    // 0x005f39cf    68983bbf00
                         push               eax                                           // 0x005f39d4    50
                         call               _strtok                                       // 0x005f39d5    e8505a1d00
                         add                esp, 0x08                                     // 0x005f39da    83c408
                         push               0x20                                          // 0x005f39dd    6a20
                         push               eax                                           // 0x005f39df    50
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x005f39e0    8d4c2420
                         push               ecx                                           // 0x005f39e4    51
                         mov.s              ecx, ebp                                      // 0x005f39e5    8bcd
                         call               _jmp_addr_0x005f3be0                          // 0x005f39e7    e8f4010000
                         push               0x00bf3b98                                    // 0x005f39ec    68983bbf00
                         push               esi                                           // 0x005f39f1    56
                         call               _strtok                                       // 0x005f39f2    e8335a1d00
                         mov.s              edi, eax                                      // 0x005f39f7    8bf8
                         add                esp, 0x08                                     // 0x005f39f9    83c408
                         test               edi, edi                                      // 0x005f39fc    85ff
                         {disp32} je        _jmp_addr_0x005f3b99                          // 0x005f39fe    0f8495010000
                         push               ebx                                           // 0x005f3a04    53
                         {disp8} jmp        _jmp_addr_0x005f3a0b                          // 0x005f3a05    eb04
_jmp_addr_0x005f3a07:    {disp8} mov        esi, dword ptr [esp + 0x18]                   // 0x005f3a07    8b742418
_jmp_addr_0x005f3a0b:    {disp8} mov        edx, dword ptr [ebp + 0x04]                   // 0x005f3a0b    8b5504
                         inc                esi                                           // 0x005f3a0e    46
                         push               esi                                           // 0x005f3a0f    56
                         push               edx                                           // 0x005f3a10    52
                         mov.s              ecx, ebp                                      // 0x005f3a11    8bcd
                         {disp8} mov        dword ptr [esp + 0x20], esi                   // 0x005f3a13    89742420
                         call               _jmp_addr_0x005f3bb0                          // 0x005f3a17    e894010000
                         mov.s              ebx, eax                                      // 0x005f3a1c    8bd8
                         test               ebx, ebx                                      // 0x005f3a1e    85db
                         {disp32} je        _jmp_addr_0x005f3b6d                          // 0x005f3a20    0f8447010000
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x005f3a26    8d442410
                         push               eax                                           // 0x005f3a2a    50
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x005f3a2b    8d4c2414
                         push               ecx                                           // 0x005f3a2f    51
                         push               0x00bf3ba0                                    // 0x005f3a30    68a03bbf00
                         push               edi                                           // 0x005f3a35    57
                         call               _sscanf                                       // 0x005f3a36    e898301d00
                         add                esp, 0x10                                     // 0x005f3a3b    83c410
                         cmp                eax, 0x01                                     // 0x005f3a3e    83f801
                         {disp8} jle        _jmp_addr_0x005f3a74                          // 0x005f3a41    7e31
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x005f3a43    8d542414
                         push               edx                                           // 0x005f3a47    52
                         push               0x00bf3b9c                                    // 0x005f3a48    689c3bbf00
                         push               edi                                           // 0x005f3a4d    57
                         call               _sscanf                                       // 0x005f3a4e    e880301d00
                         add                esp, 0x0c                                     // 0x005f3a53    83c40c
                         test               eax, eax                                      // 0x005f3a56    85c0
                         {disp32} jle       _jmp_addr_0x005f3b6d                          // 0x005f3a58    0f8e0f010000
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x005f3a5e    8b442414
                         push               eax                                           // 0x005f3a62    50
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x005f3a63    8d4c2420
                         push               ecx                                           // 0x005f3a67    51
                         mov.s              ecx, ebx                                      // 0x005f3a68    8bcb
                         call               _jmp_addr_0x005f2e20                          // 0x005f3a6a    e8b1f3ffff
                         {disp32} jmp       _jmp_addr_0x005f3b6d                          // 0x005f3a6f    e9f9000000
_jmp_addr_0x005f3a74:    {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x005f3a74    8d542410
                         push               edx                                           // 0x005f3a78    52
                         push               0x009cda78                                    // 0x005f3a79    6878da9c00
                         push               edi                                           // 0x005f3a7e    57
                         call               _sscanf                                       // 0x005f3a7f    e84f301d00
                         add                esp, 0x0c                                     // 0x005f3a84    83c40c
                         test               eax, eax                                      // 0x005f3a87    85c0
                         {disp8} jle        _jmp_addr_0x005f3aa1                          // 0x005f3a89    7e16
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x005f3a8b    8b442410
                         push               eax                                           // 0x005f3a8f    50
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x005f3a90    8d4c2420
                         push               ecx                                           // 0x005f3a94    51
                         mov.s              ecx, ebx                                      // 0x005f3a95    8bcb
                         call               _jmp_addr_0x005f2d80                          // 0x005f3a97    e8e4f2ffff
                         {disp32} jmp       _jmp_addr_0x005f3b6d                          // 0x005f3a9c    e9cc000000
_jmp_addr_0x005f3aa1:    mov                al, byte ptr [edi]                            // 0x005f3aa1    8a07
                         cmp                al, 0x2a                                      // 0x005f3aa3    3c2a
                         {disp8} jne        _jmp_addr_0x005f3af5                          // 0x005f3aa5    754e
                         {disp32} mov       esi, dword ptr [ebx + 0x0000011c]             // 0x005f3aa7    8bb31c010000
                         inc                edi                                           // 0x005f3aad    47
                         test               esi, esi                                      // 0x005f3aae    85f6
                         {disp32} je        _jmp_addr_0x005f3b6d                          // 0x005f3ab0    0f84b7000000
_jmp_addr_0x005f3ab6:    push               edi                                           // 0x005f3ab6    57
                         push               esi                                           // 0x005f3ab7    56
                         call               __strcmpi                                     // 0x005f3ab8    e823321d00
                         add                esp, 0x08                                     // 0x005f3abd    83c408
                         test               eax, eax                                      // 0x005f3ac0    85c0
                         {disp8} je         _jmp_addr_0x005f3ad3                          // 0x005f3ac2    740f
                         {disp32} mov       esi, dword ptr [esi + 0x000002e4]             // 0x005f3ac4    8bb6e4020000
                         test               esi, esi                                      // 0x005f3aca    85f6
                         {disp8} jne        _jmp_addr_0x005f3ab6                          // 0x005f3acc    75e8
                         {disp32} jmp       _jmp_addr_0x005f3b6d                          // 0x005f3ace    e99a000000
_jmp_addr_0x005f3ad3:    push               0x0                                           // 0x005f3ad3    6a00
                         {disp8} lea        edx, dword ptr [esp + 0x20]                   // 0x005f3ad5    8d542420
                         push               edx                                           // 0x005f3ad9    52
                         mov.s              ecx, ebx                                      // 0x005f3ada    8bcb
                         call               _jmp_addr_0x005f2d80                          // 0x005f3adc    e89ff2ffff
                         {disp8} mov        ecx, dword ptr [esi + 0x60]                   // 0x005f3ae1    8b4e60
                         {disp8} mov        dword ptr [eax + 0x60], ecx                   // 0x005f3ae4    894860
                         {disp32} lea       edi, dword ptr [esi + 0x00000260]             // 0x005f3ae7    8dbe60020000
                         {disp32} lea       edx, dword ptr [eax + 0x00000260]             // 0x005f3aed    8d9060020000
                         {disp8} jmp        _jmp_addr_0x005f3b50                          // 0x005f3af3    eb5b
_jmp_addr_0x005f3af5:    cmp                al, 0x22                                      // 0x005f3af5    3c22
                         {disp8} jne        _jmp_addr_0x005f3b21                          // 0x005f3af7    7528
                         push               0x22                                          // 0x005f3af9    6a22
                         push               edi                                           // 0x005f3afb    57
                         {disp32} lea       ecx, dword ptr [esp + 0x000000ec]             // 0x005f3afc    8d8c24ec000000
                         push               ecx                                           // 0x005f3b03    51
                         mov.s              ecx, ebp                                      // 0x005f3b04    8bcd
                         call               _jmp_addr_0x005f3be0                          // 0x005f3b06    e8d5000000
                         {disp32} lea       edx, dword ptr [esp + 0x000000e4]             // 0x005f3b0b    8d9424e4000000
                         push               edx                                           // 0x005f3b12    52
                         {disp8} lea        eax, dword ptr [esp + 0x20]                   // 0x005f3b13    8d442420
                         push               eax                                           // 0x005f3b17    50
                         mov.s              ecx, ebx                                      // 0x005f3b18    8bcb
                         call               _jmp_addr_0x005f2ec0                          // 0x005f3b1a    e8a1f3ffff
                         {disp8} jmp        _jmp_addr_0x005f3b6d                          // 0x005f3b1f    eb4c
_jmp_addr_0x005f3b21:    push               0x0                                           // 0x005f3b21    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x005f3b23    8d4c2420
                         push               ecx                                           // 0x005f3b27    51
                         mov.s              ecx, ebx                                      // 0x005f3b28    8bcb
                         call               _jmp_addr_0x005f2d80                          // 0x005f3b2a    e851f2ffff
                         push               0x20                                          // 0x005f3b2f    6a20
                         push               edi                                           // 0x005f3b31    57
                         {disp32} lea       edx, dword ptr [esp + 0x00000088]             // 0x005f3b32    8d942488000000
                         push               edx                                           // 0x005f3b39    52
                         mov.s              ecx, ebp                                      // 0x005f3b3a    8bcd
                         mov.s              esi, eax                                      // 0x005f3b3c    8bf0
                         call               _jmp_addr_0x005f3be0                          // 0x005f3b3e    e89d000000
                         {disp32} lea       edi, dword ptr [esp + 0x00000080]             // 0x005f3b43    8dbc2480000000
                         {disp32} lea       edx, dword ptr [esi + 0x00000260]             // 0x005f3b4a    8d9660020000
_jmp_addr_0x005f3b50:    or                 ecx, 0xffffffff                               // 0x005f3b50    83c9ff
                         xor.s              eax, eax                                      // 0x005f3b53    33c0
                         repne scasb                                                      // 0x005f3b55    f2ae
                         not                ecx                                           // 0x005f3b57    f7d1
                         sub.s              edi, ecx                                      // 0x005f3b59    2bf9
                         mov.s              eax, ecx                                      // 0x005f3b5b    8bc1
                         mov.s              esi, edi                                      // 0x005f3b5d    8bf7
                         shr                ecx, 2                                        // 0x005f3b5f    c1e902
                         mov.s              edi, edx                                      // 0x005f3b62    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x005f3b64    f3a5
                         mov.s              ecx, eax                                      // 0x005f3b66    8bc8
                         and                ecx, 0x03                                     // 0x005f3b68    83e103
                         rep movsb                                                        // 0x005f3b6b    f3a4
_jmp_addr_0x005f3b6d:    push               0x00bf3b98                                    // 0x005f3b6d    68983bbf00
                         push               0x0                                           // 0x005f3b72    6a00
                         call               _strtok                                       // 0x005f3b74    e8b1581d00
                         mov.s              edi, eax                                      // 0x005f3b79    8bf8
                         add                esp, 0x08                                     // 0x005f3b7b    83c408
                         test               edi, edi                                      // 0x005f3b7e    85ff
                         {disp32} jne       _jmp_addr_0x005f3a07                          // 0x005f3b80    0f8581feffff
                         pop                ebx                                           // 0x005f3b86    5b
                         pop                edi                                           // 0x005f3b87    5f
                         pop                esi                                           // 0x005f3b88    5e
                         pop                ebp                                           // 0x005f3b89    5d
                         add                esp, 0x000002d4                               // 0x005f3b8a    81c4d4020000
                         ret                0x0004                                        // 0x005f3b90    c20400
_jmp_addr_0x005f3b93:    {disp32} inc       dword ptr [ebp + 0x0000211c]                  // 0x005f3b93    ff851c210000
_jmp_addr_0x005f3b99:    pop                edi                                           // 0x005f3b99    5f
                         pop                esi                                           // 0x005f3b9a    5e
                         pop                ebp                                           // 0x005f3b9b    5d
                         add                esp, 0x000002d4                               // 0x005f3b9c    81c4d4020000
                         ret                0x0004                                        // 0x005f3ba2    c20400
                         nop                                                              // 0x005f3ba5    90
                         nop                                                              // 0x005f3ba6    90
                         nop                                                              // 0x005f3ba7    90
                         nop                                                              // 0x005f3ba8    90
                         nop                                                              // 0x005f3ba9    90
                         nop                                                              // 0x005f3baa    90
                         nop                                                              // 0x005f3bab    90
                         nop                                                              // 0x005f3bac    90
                         nop                                                              // 0x005f3bad    90
                         nop                                                              // 0x005f3bae    90
                         nop                                                              // 0x005f3baf    90
_jmp_addr_0x005f3bb0:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x005f3bb0    8b442404
                         {disp32} mov       eax, dword ptr [eax + 0x00000088]             // 0x005f3bb4    8b8088000000
                         test               eax, eax                                      // 0x005f3bba    85c0
                         {disp8} je         _jmp_addr_0x005f3bd4                          // 0x005f3bbc    7416
                         {disp8} mov        cl, byte ptr [esp + 0x08]                     // 0x005f3bbe    8a4c2408
_jmp_addr_0x005f3bc2:    cmp                byte ptr [eax + 0x00000114], cl               // 0x005f3bc2    388814010000
                         {disp8} je         _jmp_addr_0x005f3bd6                          // 0x005f3bc8    740c
                         {disp32} mov       eax, dword ptr [eax + 0x00000120]             // 0x005f3bca    8b8020010000
                         test               eax, eax                                      // 0x005f3bd0    85c0
                         {disp8} jne        _jmp_addr_0x005f3bc2                          // 0x005f3bd2    75ee
_jmp_addr_0x005f3bd4:    xor.s              eax, eax                                      // 0x005f3bd4    33c0
_jmp_addr_0x005f3bd6:    ret                0x0008                                        // 0x005f3bd6    c20800
                         nop                                                              // 0x005f3bd9    90
                         nop                                                              // 0x005f3bda    90
                         nop                                                              // 0x005f3bdb    90
                         nop                                                              // 0x005f3bdc    90
                         nop                                                              // 0x005f3bdd    90
                         nop                                                              // 0x005f3bde    90
                         nop                                                              // 0x005f3bdf    90
_jmp_addr_0x005f3be0:    push               ebp                                           // 0x005f3be0    55
                         {disp8} mov        ebp, dword ptr [esp + 0x0c]                   // 0x005f3be1    8b6c240c
                         push               esi                                           // 0x005f3be5    56
                         push               edi                                           // 0x005f3be6    57
                         or                 ecx, 0xffffffff                               // 0x005f3be7    83c9ff
                         xor.s              eax, eax                                      // 0x005f3bea    33c0
                         xor.s              edx, edx                                      // 0x005f3bec    33d2
                         xor.s              esi, esi                                      // 0x005f3bee    33f6
                         mov.s              edi, ebp                                      // 0x005f3bf0    8bfd
                         repne scasb                                                      // 0x005f3bf2    f2ae
                         not                ecx                                           // 0x005f3bf4    f7d1
                         dec                ecx                                           // 0x005f3bf6    49
                         {disp8} je         _jmp_addr_0x005f3c26                          // 0x005f3bf7    742d
                         push               ebx                                           // 0x005f3bf9    53
                         {disp8} mov        ebx, dword ptr [esp + 0x14]                   // 0x005f3bfa    8b5c2414
_jmp_addr_0x005f3bfe:    mov                al, byte ptr [edx + ebp * 0x1]                // 0x005f3bfe    8a042a
                         cmp                al, byte ptr [esp + 0x1c]                     // 0x005f3c01    3a44241c
                         {disp8} je         _jmp_addr_0x005f3c0b                          // 0x005f3c05    7404
                         mov                byte ptr [esi + ebx * 0x1], al                // 0x005f3c07    88041e
                         inc                esi                                           // 0x005f3c0a    46
_jmp_addr_0x005f3c0b:    or                 ecx, 0xffffffff                               // 0x005f3c0b    83c9ff
                         xor.s              eax, eax                                      // 0x005f3c0e    33c0
                         inc                edx                                           // 0x005f3c10    42
                         mov.s              edi, ebp                                      // 0x005f3c11    8bfd
                         repne scasb                                                      // 0x005f3c13    f2ae
                         not                ecx                                           // 0x005f3c15    f7d1
                         dec                ecx                                           // 0x005f3c17    49
                         cmp.s              edx, ecx                                      // 0x005f3c18    3bd1
                         .byte              0x72, 0xe2// {disp8} jb _jmp_addr_0x005f3bfe  // 0x005f3c1a    72e2
                         mov                byte ptr [esi + ebx * 0x1], al                // 0x005f3c1c    88041e
                         pop                ebx                                           // 0x005f3c1f    5b
                         pop                edi                                           // 0x005f3c20    5f
                         pop                esi                                           // 0x005f3c21    5e
                         pop                ebp                                           // 0x005f3c22    5d
                         ret                0x000c                                        // 0x005f3c23    c20c00
_jmp_addr_0x005f3c26:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x005f3c26    8b442410
                         pop                edi                                           // 0x005f3c2a    5f
                         mov                byte ptr [esi + eax * 0x1], 0x00              // 0x005f3c2b    c6040600
                         pop                esi                                           // 0x005f3c2f    5e
                         pop                ebp                                           // 0x005f3c30    5d
                         ret                0x000c                                        // 0x005f3c31    c20c00
                         nop                                                              // 0x005f3c34    90
                         nop                                                              // 0x005f3c35    90
                         nop                                                              // 0x005f3c36    90
                         nop                                                              // 0x005f3c37    90
                         nop                                                              // 0x005f3c38    90
                         nop                                                              // 0x005f3c39    90
                         nop                                                              // 0x005f3c3a    90
                         nop                                                              // 0x005f3c3b    90
                         nop                                                              // 0x005f3c3c    90
                         nop                                                              // 0x005f3c3d    90
                         nop                                                              // 0x005f3c3e    90
                         nop                                                              // 0x005f3c3f    90
_globl_ct_0x005f3c40:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x005f3c40    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x005f3c46    b001
                         test               al, cl                                        // 0x005f3c48    84c8
                         {disp8} jne        _jmp_addr_0x005f3c54                          // 0x005f3c4a    7508
                         or.s               cl, al                                        // 0x005f3c4c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x005f3c4e    880d34c9fa00
_jmp_addr_0x005f3c54:    {disp32} jmp       _jmp_addr_0x005f3c60                          // 0x005f3c54    e907000000
                         nop                                                              // 0x005f3c59    90
                         nop                                                              // 0x005f3c5a    90
                         nop                                                              // 0x005f3c5b    90
                         nop                                                              // 0x005f3c5c    90
                         nop                                                              // 0x005f3c5d    90
                         nop                                                              // 0x005f3c5e    90
                         nop                                                              // 0x005f3c5f    90
_jmp_addr_0x005f3c60:    push               0x00407870                                    // 0x005f3c60    6870784000
                         call               _atexit                                       // 0x005f3c65    e8271b1d00
                         pop                ecx                                           // 0x005f3c6a    59
                         ret                                                              // 0x005f3c6b    c3
                         nop                                                              // 0x005f3c6c    90
                         nop                                                              // 0x005f3c6d    90
                         nop                                                              // 0x005f3c6e    90
                         nop                                                              // 0x005f3c6f    90
_globl_ct_0x005f3c70:    {disp32} jmp       _jmp_addr_0x005f3c80                          // 0x005f3c70    e90b000000
                         nop                                                              // 0x005f3c75    90
                         nop                                                              // 0x005f3c76    90
                         nop                                                              // 0x005f3c77    90
                         nop                                                              // 0x005f3c78    90
                         nop                                                              // 0x005f3c79    90
                         nop                                                              // 0x005f3c7a    90
                         nop                                                              // 0x005f3c7b    90
                         nop                                                              // 0x005f3c7c    90
                         nop                                                              // 0x005f3c7d    90
                         nop                                                              // 0x005f3c7e    90
                         nop                                                              // 0x005f3c7f    90
_jmp_addr_0x005f3c80:    {disp32} mov       dword ptr [data_bytes + 0x36b8bc], 0x3e000000 // 0x005f3c80    c705bc18d3000000003e
                         ret                                                              // 0x005f3c8a    c3
                         call               ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                          // 0x005f3c8b    e869dbe0ff
_globl_ct_0x005f3c90:    {disp32} jmp       _jmp_addr_0x005f3ca0                          // 0x005f3c90    e90b000000
                         nop                                                              // 0x005f3c95    90
                         nop                                                              // 0x005f3c96    90
                         nop                                                              // 0x005f3c97    90
                         nop                                                              // 0x005f3c98    90
                         nop                                                              // 0x005f3c99    90
                         nop                                                              // 0x005f3c9a    90
                         nop                                                              // 0x005f3c9b    90
                         nop                                                              // 0x005f3c9c    90
                         nop                                                              // 0x005f3c9d    90
                         nop                                                              // 0x005f3c9e    90
                         nop                                                              // 0x005f3c9f    90
_jmp_addr_0x005f3ca0:    {disp32} fld       dword ptr [rdata_bytes + 0x82650]             // 0x005f3ca0    d90550b69200
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x005f3ca6    d80db4a38a00
                         {disp32} fstp      dword ptr [data_bytes + 0x36b8c0]             // 0x005f3cac    d91dc018d300
                         ret                                                              // 0x005f3cb2    c3
                         nop                                                              // 0x005f3cb3    90
                         nop                                                              // 0x005f3cb4    90
                         nop                                                              // 0x005f3cb5    90
                         nop                                                              // 0x005f3cb6    90
                         nop                                                              // 0x005f3cb7    90
                         nop                                                              // 0x005f3cb8    90
                         nop                                                              // 0x005f3cb9    90
                         nop                                                              // 0x005f3cba    90
                         nop                                                              // 0x005f3cbb    90
                         nop                                                              // 0x005f3cbc    90
                         nop                                                              // 0x005f3cbd    90
                         nop                                                              // 0x005f3cbe    90
                         nop                                                              // 0x005f3cbf    90
_jmp_addr_0x005f3cc0:    push               0x1                                           // 0x005f3cc0    6a01
                         call               _RenderLoadingFrame__Fb                       // 0x005f3cc2    e879110000
                         add                esp, 0x04                                     // 0x005f3cc7    83c404
                         {disp32} mov       dword ptr [data_bytes + 0x36b8c8], 0x00000000 // 0x005f3cca    c705c818d30000000000
                         ret                                                              // 0x005f3cd4    c3
                         nop                                                              // 0x005f3cd5    90
                         nop                                                              // 0x005f3cd6    90
                         nop                                                              // 0x005f3cd7    90
                         nop                                                              // 0x005f3cd8    90
                         nop                                                              // 0x005f3cd9    90
                         nop                                                              // 0x005f3cda    90
                         nop                                                              // 0x005f3cdb    90
                         nop                                                              // 0x005f3cdc    90
                         nop                                                              // 0x005f3cdd    90
                         nop                                                              // 0x005f3cde    90
                         nop                                                              // 0x005f3cdf    90
?MakeTipVideo@@YAXXZ:    push               esi                                           // 0x005f3ce0    56
                         {disp32} mov       esi, dword ptr [data_bytes + 0x36b8d4]        // 0x005f3ce1    8b35d418d300
                         test               esi, esi                                      // 0x005f3ce7    85f6
                         {disp8} je         _jmp_addr_0x005f3d05                          // 0x005f3ce9    741a
                         mov.s              ecx, esi                                      // 0x005f3ceb    8bce
                         call               _jmp_addr_0x00844d30                          // 0x005f3ced    e83e102500
                         push               esi                                           // 0x005f3cf2    56
                         call               ??3@YAXPAX@Z                                  // 0x005f3cf3    e8a0b11b00
                         add                esp, 0x04                                     // 0x005f3cf8    83c404
                         {disp32} mov       dword ptr [data_bytes + 0x36b8d4], 0x00000000 // 0x005f3cfb    c705d418d30000000000
_jmp_addr_0x005f3d05:    push               0x44                                          // 0x005f3d05    6a44
                         push               0x00bf3bc4                                    // 0x005f3d07    68c43bbf00
                         push               0x68                                          // 0x005f3d0c    6a68
                         call               ___nw__FUl                                    // 0x005f3d0e    e87d7a1e00
                         add                esp, 0x0c                                     // 0x005f3d13    83c40c
                         test               eax, eax                                      // 0x005f3d16    85c0
                         pop                esi                                           // 0x005f3d18    5e
                         {disp8} je         _jmp_addr_0x005f3d24                          // 0x005f3d19    7409
                         mov.s              ecx, eax                                      // 0x005f3d1b    8bc8
                         call               _jmp_addr_0x00844d00                          // 0x005f3d1d    e8de0f2500
                         {disp8} jmp        _jmp_addr_0x005f3d26                          // 0x005f3d22    eb02
_jmp_addr_0x005f3d24:    xor.s              eax, eax                                      // 0x005f3d24    33c0
_jmp_addr_0x005f3d26:    push               0x1                                           // 0x005f3d26    6a01
                         push               0x1                                           // 0x005f3d28    6a01
                         push               0x00bf3bb4                                    // 0x005f3d2a    68b43bbf00
                         mov.s              ecx, eax                                      // 0x005f3d2f    8bc8
                         {disp32} mov       dword ptr [data_bytes + 0x36b8d4], eax        // 0x005f3d31    a3d418d300
                         call               _jmp_addr_0x00844e70                          // 0x005f3d36    e835112500
                         {disp32} mov       eax, dword ptr [data_bytes + 0x36b8d4]        // 0x005f3d3b    a1d418d300
                         {disp8} mov        dword ptr [eax + 0x10], 0xffffffff            // 0x005f3d40    c74010ffffffff
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x36b8d4]        // 0x005f3d47    8b0dd418d300
                         {disp8} mov        eax, dword ptr [ecx + 0x1c]                   // 0x005f3d4d    8b411c
                         test               eax, eax                                      // 0x005f3d50    85c0
                         {disp8} je         _jmp_addr_0x005f3d65                          // 0x005f3d52    7411
                         {disp32} mov       edx, dword ptr [data_bytes + 0x36b8dc]        // 0x005f3d54    8b15dc18d300
                         push               0x0                                           // 0x005f3d5a    6a00
                         inc                edx                                           // 0x005f3d5c    42
                         push               edx                                           // 0x005f3d5d    52
                         push               eax                                           // 0x005f3d5e    50
                         call               dword ptr [__imp__BinkGoto@12]                // 0x005f3d5f    ff1540998a00
_jmp_addr_0x005f3d65:    {disp32} mov       ecx, dword ptr [data_bytes + 0x36b8d4]        // 0x005f3d65    8b0dd418d300
                         call               _jmp_addr_0x008450b0                          // 0x005f3d6b    e840132500
                         call               ?StartFrame@LH3DRender@@SAXXZ                 // 0x005f3d70    e86bb32300
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x36b8d4]        // 0x005f3d75    8b0dd418d300
                         call               _jmp_addr_0x00845420                          // 0x005f3d7b    e8a0162500
                         call               ?FinishFrame@LH3DRender@@QAEXXZ               // 0x005f3d80    e8dbb62300
                         call               ?StartFrame@LH3DRender@@SAXXZ                 // 0x005f3d85    e856b32300
                         {disp32} jmp       ?FinishFrame@LH3DRender@@QAEXXZ               // 0x005f3d8a    e9d1b62300
                         nop                                                              // 0x005f3d8f    90
_jmp_addr_0x005f3d90:    push               esi                                           // 0x005f3d90    56
                         {disp32} mov       esi, dword ptr [data_bytes + 0x36b8d4]        // 0x005f3d91    8b35d418d300
                         test               esi, esi                                      // 0x005f3d97    85f6
                         {disp8} je         _jmp_addr_0x005f3db5                          // 0x005f3d99    741a
                         mov.s              ecx, esi                                      // 0x005f3d9b    8bce
                         call               _jmp_addr_0x00844d30                          // 0x005f3d9d    e88e0f2500
                         push               esi                                           // 0x005f3da2    56
                         call               ??3@YAXPAX@Z                                  // 0x005f3da3    e8f0b01b00
                         add                esp, 0x04                                     // 0x005f3da8    83c404
                         {disp32} mov       dword ptr [data_bytes + 0x36b8d4], 0x00000000 // 0x005f3dab    c705d418d30000000000
_jmp_addr_0x005f3db5:    pop                esi                                           // 0x005f3db5    5e
                         ret                                                              // 0x005f3db6    c3
                         nop                                                              // 0x005f3db7    90
                         nop                                                              // 0x005f3db8    90
                         nop                                                              // 0x005f3db9    90
                         nop                                                              // 0x005f3dba    90
                         nop                                                              // 0x005f3dbb    90
                         nop                                                              // 0x005f3dbc    90
                         nop                                                              // 0x005f3dbd    90
                         nop                                                              // 0x005f3dbe    90
                         nop                                                              // 0x005f3dbf    90
_jmp_addr_0x005f3dc0:    {disp8} fld        dword ptr [esp + 0x04]                        // 0x005f3dc0    d9442404
                         sub                esp, 0x00000854                               // 0x005f3dc4    81ec54080000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005f3dca    d81d98a38a00
                         fnstsw             ax                                            // 0x005f3dd0    dfe0
                         test               ah, 0x41                                      // 0x005f3dd2    f6c441
                         {disp32} jne       _jmp_addr_0x005f4c81                          // 0x005f3dd5    0f85a60e0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x36b8d4]        // 0x005f3ddb    a1d418d300
                         test               eax, eax                                      // 0x005f3de0    85c0
                         {disp8} jne        _jmp_addr_0x005f3df6                          // 0x005f3de2    7512
                         call               ?MakeTipVideo@@YAXXZ                          // 0x005f3de4    e8f7feffff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x36b8d4]        // 0x005f3de9    a1d418d300
                         test               eax, eax                                      // 0x005f3dee    85c0
                         {disp32} je        _jmp_addr_0x005f4c81                          // 0x005f3df0    0f848b0e0000
_jmp_addr_0x005f3df6:    {disp32} fld       dword ptr [esp + 0x00000858]                  // 0x005f3df6    d9842458080000
                         {disp32} fsub      dword ptr [_rdata_float0p5]                   // 0x005f3dfd    d825b4a38a00
                         fadd.s             st(0), st(0)                                  // 0x005f3e03    dcc0
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x005f3e05    d81598a38a00
                         fnstsw             ax                                            // 0x005f3e0b    dfe0
                         test               ah, 0x41                                      // 0x005f3e0d    f6c441
                         {disp8} jne        _jmp_addr_0x005f3e31                          // 0x005f3e10    751f
                         {disp32} fcom      dword ptr [_rdata_float1p0]                   // 0x005f3e12    d81590a38a00
                         fnstsw             ax                                            // 0x005f3e18    dfe0
                         test               ah, 0x01                                      // 0x005f3e1a    f6c401
                         {disp8} je         _jmp_addr_0x005f3e25                          // 0x005f3e1d    7406
                         {disp8} fstp       dword ptr [esp + 0x04]                        // 0x005f3e1f    d95c2404
                         {disp8} jmp        _jmp_addr_0x005f3e3b                          // 0x005f3e23    eb16
_jmp_addr_0x005f3e25:    fstp               st(0)                                         // 0x005f3e25    ddd8
                         {disp8} mov        dword ptr [esp + 0x04], 0x3f800000            // 0x005f3e27    c74424040000803f
                         {disp8} jmp        _jmp_addr_0x005f3e3b                          // 0x005f3e2f    eb0a
_jmp_addr_0x005f3e31:    fstp               st(0)                                         // 0x005f3e31    ddd8
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x005f3e33    c744240400000000
_jmp_addr_0x005f3e3b:    {disp32} fld       dword ptr [esp + 0x00000858]                  // 0x005f3e3b    d9842458080000
                         fadd.s             st(0), st(0)                                  // 0x005f3e42    dcc0
                         {disp32} fcom      dword ptr [_rdata_float1p0]                   // 0x005f3e44    d81590a38a00
                         fnstsw             ax                                            // 0x005f3e4a    dfe0
                         test               ah, 0x41                                      // 0x005f3e4c    f6c441
                         {disp8} jne        _jmp_addr_0x005f3e59                          // 0x005f3e4f    7508
                         fstp               st(0)                                         // 0x005f3e51    ddd8
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x005f3e53    d90590a38a00
_jmp_addr_0x005f3e59:    push               ebx                                           // 0x005f3e59    53
                         push               ebp                                           // 0x005f3e5a    55
                         push               esi                                           // 0x005f3e5b    56
                         {disp32} mov       esi, dword ptr [data_bytes + 0x4bf058]        // 0x005f3e5c    8b355850e800
                         and                esi, 0x0000ffff                               // 0x005f3e62    81e6ffff0000
                         push               edi                                           // 0x005f3e68    57
                         {disp8} mov        dword ptr [esp + 0x1c], esi                   // 0x005f3e69    8974241c
                         {disp8} fild       dword ptr [esp + 0x1c]                        // 0x005f3e6d    db44241c
                         xor.s              edi, edi                                      // 0x005f3e71    33ff
                         {disp32} mov       di, word ptr [data_bytes + 0x4bf05a]          // 0x005f3e73    668b3d5a50e800
                         fld                st(0)                                         // 0x005f3e7a    d9c0
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2620]              // 0x005f3e7c    d80d20b68a00
                         {disp8} mov        dword ptr [esp + 0x34], edi                   // 0x005f3e82    897c2434
                         call               _jmp_addr_0x007a1400                          // 0x005f3e86    e875d51a00
                         fld                st(0)                                         // 0x005f3e8b    d9c0
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2618]              // 0x005f3e8d    d80d18b68a00
                         {disp8} mov        dword ptr [esp + 0x44], eax                   // 0x005f3e93    89442444
                         call               _jmp_addr_0x007a1400                          // 0x005f3e97    e864d51a00
                         fld                st(0)                                         // 0x005f3e9c    d9c0
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1ebdc]             // 0x005f3e9e    d80ddc7b8c00
                         {disp8} mov        dword ptr [esp + 0x50], eax                   // 0x005f3ea4    89442450
                         call               _jmp_addr_0x007a1400                          // 0x005f3ea8    e853d51a00
                         {disp8} fild       dword ptr [esp + 0x34]                        // 0x005f3ead    db442434
                         {disp8} mov        dword ptr [esp + 0x3c], eax                   // 0x005f3eb1    8944243c
                         {disp8} fst        dword ptr [esp + 0x2c]                        // 0x005f3eb5    d954242c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26000]             // 0x005f3eb9    d80d00f08c00
                         call               _jmp_addr_0x007a1400                          // 0x005f3ebf    e83cd51a00
                         fld                st(0)                                         // 0x005f3ec4    d9c0
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1b9e8]             // 0x005f3ec6    d80de8498c00
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x005f3ecc    89442418
                         call               _jmp_addr_0x007a1400                          // 0x005f3ed0    e82bd51a00
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x005f3ed5    d944242c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x33f4]              // 0x005f3ed9    d80df4c38a00
                         {disp8} mov        dword ptr [esp + 0x4c], eax                   // 0x005f3edf    8944244c
                         call               _jmp_addr_0x007a1400                          // 0x005f3ee3    e818d51a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2128c]             // 0x005f3ee8    d80d8ca28c00
                         {disp8} mov        dword ptr [esp + 0x48], eax                   // 0x005f3eee    89442448
                         call               _jmp_addr_0x007a1400                          // 0x005f3ef2    e809d51a00
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x005f3ef7    d944242c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2128c]             // 0x005f3efb    d80d8ca28c00
                         {disp8} mov        dword ptr [esp + 0x40], eax                   // 0x005f3f01    89442440
                         call               _jmp_addr_0x007a1400                          // 0x005f3f05    e8f6d41a00
                         {disp32} fmul      dword ptr [__real@437f0000]                   // 0x005f3f0a    d80d70b28a00
                         {disp8} mov        dword ptr [esp + 0x2c], eax                   // 0x005f3f10    8944242c
                         call               _jmp_addr_0x007a1400                          // 0x005f3f14    e8e7d41a00
                         push               0x0                                           // 0x005f3f19    6a00
                         push               0x1                                           // 0x005f3f1b    6a01
                         push               0x0                                           // 0x005f3f1d    6a00
                         mov                ecx, 0x00e85204                               // 0x005f3f1f    b90452e800
                         mov.s              ebx, eax                                      // 0x005f3f24    8bd8
                         {disp32} mov       dword ptr [data_bytes + 0x27271c], 0x00000001 // 0x005f3f26    c7051c87c30001000000
                         call               @SetCursor__7LHMouseFPv19LH_MOUSE_IMAGE_TYPEi@20                          // 0x005f3f30    e87b141f00
                         {disp32} mov       ebp, dword ptr [data_bytes + 0x506d08]        // 0x005f3f35    8b2d08cdec00
                         call               ?StartFrame@LH3DRender@@SAXXZ                 // 0x005f3f3b    e8a0b12300
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x36b8d4]        // 0x005f3f40    8b0dd418d300
                         {disp32} mov       dword ptr [data_bytes + 0x2078], ebx          // 0x005f3f46    891d78809c00
                         {disp8} mov        eax, dword ptr [ecx + 0x38]                   // 0x005f3f4c    8b4138
                         test               eax, eax                                      // 0x005f3f4f    85c0
                         {disp32} je        _jmp_addr_0x005f40da                          // 0x005f3f51    0f8483010000
                         push               0x42c80000                                    // 0x005f3f57    680000c842
                         push               0x0                                           // 0x005f3f5c    6a00
                         push               0x0000a000                                    // 0x005f3f5e    6800a00000
                         push               0xffff6000                                    // 0x005f3f63    680060ffff
                         push               0x0                                           // 0x005f3f68    6a00
                         {disp8} mov        byte ptr [esp + 0x24], -0x38                  // 0x005f3f6a    c6442424c8
                         {disp8} mov        byte ptr [esp + 0x25], -0x38                  // 0x005f3f6f    c6442425c8
                         {disp8} mov        byte ptr [esp + 0x26], -0x38                  // 0x005f3f74    c6442426c8
                         {disp8} mov        byte ptr [esp + 0x27], bl                     // 0x005f3f79    885c2427
                         {disp8} fild       dword ptr [ecx + 0x44]                        // 0x005f3f7d    db4144
                         {disp8} mov        edx, dword ptr [ecx + 0x38]                   // 0x005f3f80    8b5138
                         {disp8} lea        eax, dword ptr [esp + 0x24]                   // 0x005f3f83    8d442424
                         {disp32} fmul      dword ptr [rdata_bytes + 0x250c]              // 0x005f3f87    d80d0cb58a00
                         push               eax                                           // 0x005f3f8d    50
                         push               edx                                           // 0x005f3f8e    52
                         push               ecx                                           // 0x005f3f8f    51
                         {disp32} fsub      dword ptr [rdata_bytes + 0x2fbd0]             // 0x005f3f90    d825d08b8d00
                         fstp               dword ptr [esp]                               // 0x005f3f96    d91c24
                         push               ecx                                           // 0x005f3f99    51
                         {disp8} fild       dword ptr [ecx + 0x40]                        // 0x005f3f9a    db4140
                         {disp32} fmul      dword ptr [rdata_bytes + 0x250c]              // 0x005f3f9d    d80d0cb58a00
                         {disp32} fsub      dword ptr [rdata_bytes + 0x2fbd0]             // 0x005f3fa3    d825d08b8d00
                         fstp               dword ptr [esp]                               // 0x005f3fa9    d91c24
                         push               0x3c800000                                    // 0x005f3fac    680000803c
                         push               0x3c800000                                    // 0x005f3fb1    680000803c
                         push               edi                                           // 0x005f3fb6    57
                         push               esi                                           // 0x005f3fb7    56
                         push               0x0                                           // 0x005f3fb8    6a00
                         push               0x0                                           // 0x005f3fba    6a00
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x005f3fbc    e8bfe9e1ff
                         push               0x0                                           // 0x005f3fc1    6a00
                         push               0x0                                           // 0x005f3fc3    6a00
                         push               0xff000000                                    // 0x005f3fc5    68000000ff
                         push               0xff000000                                    // 0x005f3fca    68000000ff
                         push               0x0                                           // 0x005f3fcf    6a00
                         push               0x0                                           // 0x005f3fd1    6a00
                         mov.s              eax, edi                                      // 0x005f3fd3    8bc7
                         cdq                                                              // 0x005f3fd5    99
                         push               edi                                           // 0x005f3fd6    57
                         sub.s              eax, edx                                      // 0x005f3fd7    2bc2
                         push               esi                                           // 0x005f3fd9    56
                         sar                eax, 1                                        // 0x005f3fda    d1f8
                         push               eax                                           // 0x005f3fdc    50
                         push               0x0                                           // 0x005f3fdd    6a00
                         call               ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z          // 0x005f3fdf    e8dcf2e1ff
                         {disp8} fld        dword ptr [esp + 0x78]                        // 0x005f3fe4    d9442478
                         add                esp, 0x64                                     // 0x005f3fe8    83c464
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x005f3feb    d81d90a38a00
                         fnstsw             ax                                            // 0x005f3ff1    dfe0
                         test               ah, 0x01                                      // 0x005f3ff3    f6c401
                         {disp32} je        _jmp_addr_0x005f4082                          // 0x005f3ff6    0f8486000000
                         push               0x42c80000                                    // 0x005f3ffc    680000c842
                         push               0x0                                           // 0x005f4001    6a00
                         push               0x0000a000                                    // 0x005f4003    6800a00000
                         push               0xffff6000                                    // 0x005f4008    680060ffff
                         push               0x0                                           // 0x005f400d    6a00
                         {disp8} lea        eax, dword ptr [esp + 0x24]                   // 0x005f400f    8d442424
                         push               eax                                           // 0x005f4013    50
                         {disp32} mov       eax, dword ptr [data_bytes + 0x36b8d4]        // 0x005f4014    a1d418d300
                         {disp8} mov        edx, dword ptr [esp + 0x44]                   // 0x005f4019    8b542444
                         {disp8} mov        edi, dword ptr [esp + 0x64]                   // 0x005f401d    8b7c2464
                         {disp8} mov        byte ptr [esp + 0x28], -0x01                  // 0x005f4021    c6442428ff
                         {disp8} mov        byte ptr [esp + 0x29], -0x01                  // 0x005f4026    c6442429ff
                         {disp8} mov        byte ptr [esp + 0x2a], -0x01                  // 0x005f402b    c644242aff
                         {disp8} mov        byte ptr [esp + 0x2b], bl                     // 0x005f4030    885c242b
                         {disp8} fild       dword ptr [eax + 0x44]                        // 0x005f4034    db4044
                         {disp8} mov        ecx, dword ptr [eax + 0x38]                   // 0x005f4037    8b4838
                         push               ecx                                           // 0x005f403a    51
                         {disp32} fmul      dword ptr [rdata_bytes + 0x250c]              // 0x005f403b    d80d0cb58a00
                         push               ecx                                           // 0x005f4041    51
                         {disp32} fsub      dword ptr [rdata_bytes + 0x2fbd0]             // 0x005f4042    d825d08b8d00
                         fstp               dword ptr [esp]                               // 0x005f4048    d91c24
                         push               ecx                                           // 0x005f404b    51
                         {disp8} fild       dword ptr [eax + 0x40]                        // 0x005f404c    db4040
                         {disp8} mov        eax, dword ptr [esp + 0x6c]                   // 0x005f404f    8b44246c
                         {disp8} mov        ecx, dword ptr [esp + 0x64]                   // 0x005f4053    8b4c2464
                         add.s              edx, eax                                      // 0x005f4057    03d0
                         {disp32} fmul      dword ptr [rdata_bytes + 0x250c]              // 0x005f4059    d80d0cb58a00
                         add.s              ecx, edi                                      // 0x005f405f    03cf
                         {disp32} fsub      dword ptr [rdata_bytes + 0x2fbd0]             // 0x005f4061    d825d08b8d00
                         fstp               dword ptr [esp]                               // 0x005f4067    d91c24
                         push               0x3c800000                                    // 0x005f406a    680000803c
                         push               0x3c800000                                    // 0x005f406f    680000803c
                         push               edx                                           // 0x005f4074    52
                         push               ecx                                           // 0x005f4075    51
                         push               eax                                           // 0x005f4076    50
                         push               edi                                           // 0x005f4077    57
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x005f4078    e803e9e1ff
                         add                esp, 0x3c                                     // 0x005f407d    83c43c
                         {disp8} jmp        _jmp_addr_0x005f4086                          // 0x005f4080    eb04
_jmp_addr_0x005f4082:    {disp8} mov        edi, dword ptr [esp + 0x4c]                   // 0x005f4082    8b7c244c
_jmp_addr_0x005f4086:    {disp8} fld        dword ptr [esp + 0x14]                        // 0x005f4086    d9442414
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005f408a    d81d98a38a00
                         fnstsw             ax                                            // 0x005f4090    dfe0
                         test               ah, 0x41                                      // 0x005f4092    f6c441
                         {disp8} jne        _jmp_addr_0x005f410f                          // 0x005f4095    7578
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x005f4097    d9442414
                         {disp8} mov        byte ptr [esp + 0x10], -0x01                  // 0x005f409b    c6442410ff
                         {disp32} fmul      dword ptr [__real@437f0000]                   // 0x005f40a0    d80d70b28a00
                         {disp8} mov        byte ptr [esp + 0x11], -0x01                  // 0x005f40a6    c6442411ff
                         {disp8} mov        byte ptr [esp + 0x12], -0x01                  // 0x005f40ab    c6442412ff
                         call               _jmp_addr_0x007a1400                          // 0x005f40b0    e84bd31a00
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                   // 0x005f40b5    8b54242c
                         {disp8} mov        ecx, dword ptr [esp + 0x48]                   // 0x005f40b9    8b4c2448
                         push               0x0                                           // 0x005f40bd    6a00
                         push               0x0                                           // 0x005f40bf    6a00
                         push               edx                                           // 0x005f40c1    52
                         {disp8} mov        byte ptr [esp + 0x1f], al                     // 0x005f40c2    8844241f
                         {disp8} mov        eax, dword ptr [esp + 0x4c]                   // 0x005f40c6    8b44244c
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x005f40ca    8b54241c
                         push               eax                                           // 0x005f40ce    50
                         push               ecx                                           // 0x005f40cf    51
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x36b8d4]        // 0x005f40d0    8b0dd418d300
                         push               edi                                           // 0x005f40d6    57
                         push               edx                                           // 0x005f40d7    52
                         {disp8} jmp        _jmp_addr_0x005f410a                          // 0x005f40d8    eb30
_jmp_addr_0x005f40da:    {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x005f40da    8b44242c
                         {disp8} mov        edx, dword ptr [esp + 0x40]                   // 0x005f40de    8b542440
                         push               0x0                                           // 0x005f40e2    6a00
                         push               0x0                                           // 0x005f40e4    6a00
                         push               eax                                           // 0x005f40e6    50
                         {disp8} mov        eax, dword ptr [esp + 0x54]                   // 0x005f40e7    8b442454
                         push               edx                                           // 0x005f40eb    52
                         {disp8} mov        edx, dword ptr [esp + 0x5c]                   // 0x005f40ec    8b54245c
                         push               eax                                           // 0x005f40f0    50
                         {disp8} mov        byte ptr [esp + 0x28], -0x01                  // 0x005f40f1    c6442428ff
                         {disp8} mov        byte ptr [esp + 0x29], -0x01                  // 0x005f40f6    c6442429ff
                         {disp8} mov        byte ptr [esp + 0x2a], -0x01                  // 0x005f40fb    c644242aff
                         {disp8} mov        byte ptr [esp + 0x2b], bl                     // 0x005f4100    885c242b
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x005f4104    8b442428
                         push               edx                                           // 0x005f4108    52
                         push               eax                                           // 0x005f4109    50
_jmp_addr_0x005f410a:    call               _jmp_addr_0x00845740                          // 0x005f410a    e831162500
_jmp_addr_0x005f410f:    mov                eax, 0x66666667                               // 0x005f410f    b867666666
                         imul               esi                                           // 0x005f4114    f7ee
                         {disp8} mov        eax, dword ptr [esp + 0x3c]                   // 0x005f4116    8b44243c
                         push               0x0                                           // 0x005f411a    6a00
                         push               0x0                                           // 0x005f411c    6a00
                         sar                edx, 1                                        // 0x005f411e    d1fa
                         push               0x0                                           // 0x005f4120    6a00
                         mov.s              ecx, edx                                      // 0x005f4122    8bca
                         push               0xa0808080                                    // 0x005f4124    68808080a0
                         shr                ecx, 0x1f                                     // 0x005f4129    c1e91f
                         push               0xa0808080                                    // 0x005f412c    68808080a0
                         add.s              edx, ecx                                      // 0x005f4131    03d1
                         mov.s              edi, edx                                      // 0x005f4133    8bfa
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                   // 0x005f4135    8b54242c
                         push               0x0                                           // 0x005f4139    6a00
                         push               edx                                           // 0x005f413b    52
                         push               edi                                           // 0x005f413c    57
                         push               eax                                           // 0x005f413d    50
                         push               0x0                                           // 0x005f413e    6a00
                         call               ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z          // 0x005f4140    e87bf1e1ff
                         {disp32} lea       ecx, dword ptr [esi * 0x4 + 0x00000000]       // 0x005f4145    8d0cb500000000
                         push               0x0                                           // 0x005f414c    6a00
                         mov                eax, 0x66666667                               // 0x005f414e    b867666666
                         imul               ecx                                           // 0x005f4153    f7e9
                         {disp8} mov        eax, dword ptr [esp + 0x44]                   // 0x005f4155    8b442444
                         push               0x0                                           // 0x005f4159    6a00
                         push               0xa0808080                                    // 0x005f415b    68808080a0
                         push               0xa0808080                                    // 0x005f4160    68808080a0
                         sar                edx, 1                                        // 0x005f4165    d1fa
                         push               0xa0808080                                    // 0x005f4167    68808080a0
                         mov.s              ecx, edx                                      // 0x005f416c    8bca
                         push               0xa0808080                                    // 0x005f416e    68808080a0
                         shr                ecx, 0x1f                                     // 0x005f4173    c1e91f
                         add.s              edx, ecx                                      // 0x005f4176    03d1
                         {disp8} mov        ecx, dword ptr [esp + 0x7c]                   // 0x005f4178    8b4c247c
                         push               eax                                           // 0x005f417c    50
                         push               edx                                           // 0x005f417d    52
                         push               ecx                                           // 0x005f417e    51
                         push               edi                                           // 0x005f417f    57
                         {disp8} mov        dword ptr [esp + 0x6c], edx                   // 0x005f4180    8954246c
                         call               ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z          // 0x005f4184    e837f1e1ff
                         {disp8} mov        edx, dword ptr [esp + 0x68]                   // 0x005f4189    8b542468
                         {disp32} mov       eax, dword ptr [esp + 0x0000008c]             // 0x005f418d    8b84248c000000
                         {disp8} mov        ecx, dword ptr [esp + 0x6c]                   // 0x005f4194    8b4c246c
                         add                esp, 0x50                                     // 0x005f4198    83c450
                         push               0x0                                           // 0x005f419b    6a00
                         push               0x0                                           // 0x005f419d    6a00
                         push               0xa0808080                                    // 0x005f419f    68808080a0
                         push               0x0                                           // 0x005f41a4    6a00
                         push               0x0                                           // 0x005f41a6    6a00
                         push               0xa0808080                                    // 0x005f41a8    68808080a0
                         push               edx                                           // 0x005f41ad    52
                         push               esi                                           // 0x005f41ae    56
                         push               eax                                           // 0x005f41af    50
                         push               ecx                                           // 0x005f41b0    51
                         call               ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z          // 0x005f41b1    e80af1e1ff
                         {disp8} fild       dword ptr [esp + 0x64]                        // 0x005f41b6    db442464
                         mov                eax, 0x66666667                               // 0x005f41ba    b867666666
                         imul               esi                                           // 0x005f41bf    f7ee
                         {disp8} fstp       dword ptr [esp + 0x5c]                        // 0x005f41c1    d95c245c
                         {disp8} fild       dword ptr [esp + 0x40]                        // 0x005f41c5    db442440
                         {disp8} fstp       dword ptr [esp + 0x44]                        // 0x005f41c9    d95c2444
                         {disp8} fild       dword ptr [esp + 0x78]                        // 0x005f41cd    db442478
                         add                esp, 0x28                                     // 0x005f41d1    83c428
                         sar                edx, 3                                        // 0x005f41d4    c1fa03
                         mov.s              eax, edx                                      // 0x005f41d7    8bc2
                         {disp8} fstp       dword ptr [esp + 0x58]                        // 0x005f41d9    d95c2458
                         {disp8} fild       dword ptr [esp + 0x44]                        // 0x005f41dd    db442444
                         push               0x1                                           // 0x005f41e1    6a01
                         shr                eax, 0x1f                                     // 0x005f41e3    c1e81f
                         push               0x0                                           // 0x005f41e6    6a00
                         {disp8} lea        ecx, dword ptr [edx + eax * 0x1 + -0x02]      // 0x005f41e8    8d4c02fe
                         {disp8} fstp       dword ptr [esp + 0x5c]                        // 0x005f41ec    d95c245c
                         push               0x1                                           // 0x005f41f0    6a01
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                   // 0x005f41f2    8d54241c
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x005f41f6    894c2420
                         {disp8} mov        byte ptr [esp + 0x1c], -0x01                  // 0x005f41fa    c644241cff
                         {disp8} mov        byte ptr [esp + 0x1d], -0x01                  // 0x005f41ff    c644241dff
                         {disp8} mov        byte ptr [esp + 0x1e], -0x01                  // 0x005f4204    c644241eff
                         {disp8} mov        byte ptr [esp + 0x1f], bl                     // 0x005f4209    885c241f
                         push               edx                                           // 0x005f420d    52
                         {disp8} fild       dword ptr [esp + 0x24]                        // 0x005f420e    db442424
                         {disp8} mov        esi, dword ptr [esp + 0x44]                   // 0x005f4212    8b742444
                         {disp8} mov        edi, dword ptr [esp + 0x2c]                   // 0x005f4216    8b7c242c
                         {disp8} mov        eax, dword ptr [esp + 0x68]                   // 0x005f421a    8b442468
                         push               ecx                                           // 0x005f421e    51
                         fstp               dword ptr [esp]                               // 0x005f421f    d91c24
                         push               ecx                                           // 0x005f4222    51
                         {disp32} fld       dword ptr [_near_clipping]                    // 0x005f4223    d905e039e800
                         {disp8} mov        ecx, dword ptr [esp + 0x6c]                   // 0x005f4229    8b4c246c
                         {disp32} fmul      dword ptr [__real@3fc00000]                   // 0x005f422d    d80d4cb28a00
                         fstp               dword ptr [esp]                               // 0x005f4233    d91c24
                         push               esi                                           // 0x005f4236    56
                         push               edi                                           // 0x005f4237    57
                         push               edi                                           // 0x005f4238    57
                         push               eax                                           // 0x005f4239    50
                         push               esi                                           // 0x005f423a    56
                         push               esi                                           // 0x005f423b    56
                         push               ecx                                           // 0x005f423c    51
                         push               0x00d308bc                                    // 0x005f423d    68bc08d300
                         mov.s              ecx, ebp                                      // 0x005f4242    8bcd
                         call               @DrawText__13GatheringTextFPwfffffffffP9LH3DColoriii@64                          // 0x005f4244    e867d32300
                         {disp8} mov        eax, dword ptr [esp + 0x3c]                   // 0x005f4249    8b44243c
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x005f424d    8b542418
                         sub.s              edx, eax                                      // 0x005f4251    2bd0
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x005f4253    8954241c
                         {disp8} fild       dword ptr [esp + 0x1c]                        // 0x005f4257    db44241c
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x005f425b    d95c2438
                         {disp8} fcom       dword ptr [esp + 0x38]                        // 0x005f425f    d8542438
                         fnstsw             ax                                            // 0x005f4263    dfe0
                         test               ah, 0x01                                      // 0x005f4265    f6c401
                         {disp8} jne        _jmp_addr_0x005f42d8                          // 0x005f4268    756e
_jmp_addr_0x005f426a:    {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x005f426a    8b442414
                         cmp                eax, 0x08                                     // 0x005f426e    83f808
                         {disp8} jle        _jmp_addr_0x005f42d8                          // 0x005f4271    7e65
                         push               0x1                                           // 0x005f4273    6a01
                         fstp               st(0)                                         // 0x005f4275    ddd8
                         push               0x0                                           // 0x005f4277    6a00
                         push               0x1                                           // 0x005f4279    6a01
                         {disp8} mov        edx, dword ptr [esp + 0x60]                   // 0x005f427b    8b542460
                         sub                eax, 0x02                                     // 0x005f427f    83e802
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x005f4282    89442420
                         {disp8} fild       dword ptr [esp + 0x20]                        // 0x005f4286    db442420
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                   // 0x005f428a    8d44241c
                         push               eax                                           // 0x005f428e    50
                         push               ecx                                           // 0x005f428f    51
                         fstp               dword ptr [esp]                               // 0x005f4290    d91c24
                         push               ecx                                           // 0x005f4293    51
                         {disp32} fld       dword ptr [_near_clipping]                    // 0x005f4294    d905e039e800
                         {disp8} mov        ecx, dword ptr [esp + 0x70]                   // 0x005f429a    8b4c2470
                         {disp32} fmul      dword ptr [__real@3fc00000]                   // 0x005f429e    d80d4cb28a00
                         {disp8} mov        byte ptr [esp + 0x28], -0x01                  // 0x005f42a4    c6442428ff
                         {disp8} mov        byte ptr [esp + 0x29], -0x01                  // 0x005f42a9    c6442429ff
                         {disp8} mov        byte ptr [esp + 0x2a], -0x01                  // 0x005f42ae    c644242aff
                         fstp               dword ptr [esp]                               // 0x005f42b3    d91c24
                         push               esi                                           // 0x005f42b6    56
                         push               edi                                           // 0x005f42b7    57
                         push               edi                                           // 0x005f42b8    57
                         push               ecx                                           // 0x005f42b9    51
                         push               esi                                           // 0x005f42ba    56
                         push               esi                                           // 0x005f42bb    56
                         push               edx                                           // 0x005f42bc    52
                         push               0x00d308bc                                    // 0x005f42bd    68bc08d300
                         mov.s              ecx, ebp                                      // 0x005f42c2    8bcd
                         {disp8} mov        byte ptr [esp + 0x4b], bl                     // 0x005f42c4    885c244b
                         call               @DrawText__13GatheringTextFPwfffffffffP9LH3DColoriii@64                          // 0x005f42c8    e8e3d22300
                         {disp8} fcom       dword ptr [esp + 0x38]                        // 0x005f42cd    d8542438
                         fnstsw             ax                                            // 0x005f42d1    dfe0
                         test               ah, 0x01                                      // 0x005f42d3    f6c401
                         {disp8} je         _jmp_addr_0x005f426a                          // 0x005f42d6    7492
_jmp_addr_0x005f42d8:    {disp8} fld        dword ptr [esp + 0x38]                        // 0x005f42d8    d9442438
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x005f42dc    8b4c2418
                         fsub               st, st(1)                                     // 0x005f42e0    d8e1
                         mov.s              eax, ebx                                      // 0x005f42e2    8bc3
                         cdq                                                              // 0x005f42e4    99
                         sub.s              eax, edx                                      // 0x005f42e5    2bc2
                         sar                eax, 1                                        // 0x005f42e7    d1f8
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x005f42e9    d80db4a38a00
                         {disp8} mov        dword ptr [esp + 0x5c], eax                   // 0x005f42ef    8944245c
                         {disp8} mov        byte ptr [esp + 0x13], al                     // 0x005f42f3    88442413
                         {disp8} mov        eax, dword ptr [esp + 0x3c]                   // 0x005f42f7    8b44243c
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x005f42fb    d95c241c
                         push               0x1                                           // 0x005f42ff    6a01
                         add                eax, 0x02                                     // 0x005f4301    83c002
                         fstp               st(0)                                         // 0x005f4304    ddd8
                         {disp8} mov        dword ptr [esp + 0x3c], eax                   // 0x005f4306    8944243c
                         {disp8} fild       dword ptr [esp + 0x18]                        // 0x005f430a    db442418
                         push               0x1                                           // 0x005f430e    6a01
                         add                ecx, 0x2                                      // 0x005f4310    83c102
                         push               0x1                                           // 0x005f4313    6a01
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x005f4315    d95c2420
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x005f4319    8b442420
                         {disp8} fild       dword ptr [esp + 0x44]                        // 0x005f431d    db442444
                         {disp8} mov        dword ptr [esp + 0x24], ecx                   // 0x005f4321    894c2424
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                   // 0x005f4325    8d54241c
                         push               edx                                           // 0x005f4329    52
                         {disp8} fstp       dword ptr [esp + 0x48]                        // 0x005f432a    d95c2448
                         {disp8} mov        edx, dword ptr [esp + 0x54]                   // 0x005f432e    8b542454
                         {disp8} fild       dword ptr [esp + 0x28]                        // 0x005f4332    db442428
                         push               eax                                           // 0x005f4336    50
                         push               ecx                                           // 0x005f4337    51
                         add                edx, 0x02                                     // 0x005f4338    83c202
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x005f433b    d95c2430
                         {disp8} mov        eax, dword ptr [esp + 0x30]                   // 0x005f433f    8b442430
                         {disp32} fld       dword ptr [_near_clipping]                    // 0x005f4343    d905e039e800
                         {disp8} mov        dword ptr [esp + 0x5c], edx                   // 0x005f4349    8954245c
                         {disp32} fmul      dword ptr [__real@3fc00000]                   // 0x005f434d    d80d4cb28a00
                         {disp8} mov        byte ptr [esp + 0x28], 0x00                   // 0x005f4353    c644242800
                         {disp8} mov        byte ptr [esp + 0x29], 0x00                   // 0x005f4358    c644242900
                         {disp8} mov        byte ptr [esp + 0x2a], 0x00                   // 0x005f435d    c644242a00
                         fstp               dword ptr [esp]                               // 0x005f4362    d91c24
                         push               ecx                                           // 0x005f4365    51
                         {disp8} fld        dword ptr [esp + 0x54]                        // 0x005f4366    d9442454
                         {disp8} mov        ecx, dword ptr [esp + 0x6c]                   // 0x005f436a    8b4c246c
                         {disp8} fadd       dword ptr [esp + 0x38]                        // 0x005f436e    d8442438
                         add                ecx, 0x2                                      // 0x005f4372    83c102
                         {disp8} mov        dword ptr [esp + 0x6c], ecx                   // 0x005f4375    894c246c
                         fstp               dword ptr [esp]                               // 0x005f4379    d91c24
                         push               eax                                           // 0x005f437c    50
                         {disp8} fild       dword ptr [esp + 0x70]                        // 0x005f437d    db442470
                         push               eax                                           // 0x005f4381    50
                         {disp8} mov        eax, dword ptr [esp + 0x5c]                   // 0x005f4382    8b44245c
                         push               ecx                                           // 0x005f4386    51
                         fstp               dword ptr [esp]                               // 0x005f4387    d91c24
                         push               eax                                           // 0x005f438a    50
                         {disp8} fild       dword ptr [esp + 0x70]                        // 0x005f438b    db442470
                         push               eax                                           // 0x005f438f    50
                         push               ecx                                           // 0x005f4390    51
                         mov.s              ecx, ebp                                      // 0x005f4391    8bcd
                         fstp               dword ptr [esp]                               // 0x005f4393    d91c24
                         push               0x00d308bc                                    // 0x005f4396    68bc08d300
                         call               @DrawText__13GatheringTextFPwfffffffffP9LH3DColoriii@64                          // 0x005f439b    e810d22300
                         fstp               st(0)                                         // 0x005f43a0    ddd8
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x005f43a2    8b4c2414
                         {disp32} fld       dword ptr [_near_clipping]                    // 0x005f43a6    d905e039e800
                         {disp32} fmul      dword ptr [__real@3fc00000]                   // 0x005f43ac    d80d4cb28a00
                         push               0x1                                           // 0x005f43b2    6a01
                         push               0x1                                           // 0x005f43b4    6a01
                         push               0x1                                           // 0x005f43b6    6a01
                         {disp8} lea        eax, dword ptr [esp + 0x24]                   // 0x005f43b8    8d442424
                         push               eax                                           // 0x005f43bc    50
                         push               ecx                                           // 0x005f43bd    51
                         push               ecx                                           // 0x005f43be    51
                         fstp               dword ptr [esp]                               // 0x005f43bf    d91c24
                         {disp8} mov        byte ptr [esp + 0x30], -0x01                  // 0x005f43c2    c6442430ff
                         {disp8} fld        dword ptr [esp + 0x4c]                        // 0x005f43c7    d944244c
                         {disp8} mov        byte ptr [esp + 0x31], -0x01                  // 0x005f43cb    c6442431ff
                         {disp8} fadd       dword ptr [esp + 0x34]                        // 0x005f43d0    d8442434
                         {disp8} mov        byte ptr [esp + 0x32], -0x01                  // 0x005f43d4    c6442432ff
                         {disp8} mov        byte ptr [esp + 0x33], bl                     // 0x005f43d9    885c2433
                         {disp8} mov        edx, dword ptr [esp + 0x70]                   // 0x005f43dd    8b542470
                         {disp8} mov        eax, dword ptr [esp + 0x6c]                   // 0x005f43e1    8b44246c
                         push               ecx                                           // 0x005f43e5    51
                         fstp               dword ptr [esp]                               // 0x005f43e6    d91c24
                         push               edi                                           // 0x005f43e9    57
                         push               edi                                           // 0x005f43ea    57
                         push               edx                                           // 0x005f43eb    52
                         push               esi                                           // 0x005f43ec    56
                         push               esi                                           // 0x005f43ed    56
                         push               eax                                           // 0x005f43ee    50
                         push               0x00d308bc                                    // 0x005f43ef    68bc08d300
                         mov.s              ecx, ebp                                      // 0x005f43f4    8bcd
                         call               @DrawText__13GatheringTextFPwfffffffffP9LH3DColoriii@64                          // 0x005f43f6    e8b5d12300
                         fstp               st(0)                                         // 0x005f43fb    ddd8
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4bf058]        // 0x005f43fd    8b0d5850e800
                         and                ecx, 0x0000ffff                               // 0x005f4403    81e1ffff0000
                         cmp                word ptr [data_bytes + 0x36b8e0], 0x00        // 0x005f4409    66833de018d30000
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                   // 0x005f4411    894c241c
                         {disp8} fild       dword ptr [esp + 0x1c]                        // 0x005f4415    db44241c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x22930]             // 0x005f4419    d80d30b98c00
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x005f441f    d95c241c
                         {disp32} jne       _jmp_addr_0x005f44b4                          // 0x005f4423    0f858b000000
                         push               0x0                                           // 0x005f4429    6a00
                         call               dword ptr [__imp__LHRegistrySetCurrentKey__YAXW4LH_REG_KEY_TYPE___Z@4]               // 0x005f442b    ff15b4938a00
                         {disp32} mov       esi, dword ptr [__imp__RegistryRetrieveULong__YA_AW4LH_RETURN__PAD0PAK_Z]          // 0x005f4431    8b3544938a00
                         push               0x00d31ae0                                    // 0x005f4437    68e01ad300
                         push               0x00bf3c2c                                    // 0x005f443c    682c3cbf00
                         push               0x00bea5b8                                    // 0x005f4441    68b8a5be00
                         call               esi                                           // 0x005f4446    ffd6
                         add                esp, 0x10                                     // 0x005f4448    83c410
                         test               eax, eax                                      // 0x005f444b    85c0
                         {disp8} je         _jmp_addr_0x005f4459                          // 0x005f444d    740a
                         {disp32} mov       dword ptr [data_bytes + 0x36bae0], 0x00000064 // 0x005f444f    c705e01ad30064000000
_jmp_addr_0x005f4459:    push               0x00d31ae4                                    // 0x005f4459    68e41ad300
                         push               0x00bf3c18                                    // 0x005f445e    68183cbf00
                         push               0x00bea5b8                                    // 0x005f4463    68b8a5be00
                         call               esi                                           // 0x005f4468    ffd6
                         add                esp, 0x0c                                     // 0x005f446a    83c40c
                         test               eax, eax                                      // 0x005f446d    85c0
                         {disp32} je        _jmp_addr_0x005f46b1                          // 0x005f446f    0f843c020000
                         {disp32} mov       dword ptr [data_bytes + 0x36bae4], 0x00000000 // 0x005f4475    c705e41ad30000000000
_jmp_addr_0x005f447f:    mov                eax, 0x00c4cd30                               // 0x005f447f    b830cdc400
_jmp_addr_0x005f4484:    {disp32} mov       ecx, dword ptr [data_bytes + 0x36bae0]        // 0x005f4484    8b0de01ad300
                         push               eax                                           // 0x005f448a    50
                         xor.s              edx, edx                                      // 0x005f448b    33d2
                         mov.s              eax, ecx                                      // 0x005f448d    8bc1
                         mov                esi, 0x00000064                               // 0x005f448f    be64000000
                         div                esi                                           // 0x005f4494    f7f6
                         mov                eax, 0x51eb851f                               // 0x005f4496    b81f85eb51
                         push               edx                                           // 0x005f449b    52
                         mul                ecx                                           // 0x005f449c    f7e1
                         shr                edx, 5                                        // 0x005f449e    c1ea05
                         push               edx                                           // 0x005f44a1    52
                         push               0x00bf3bfc                                    // 0x005f44a2    68fc3bbf00
                         push               0x00d318e0                                    // 0x005f44a7    68e018d300
                         call               _swprintf                                     // 0x005f44ac    e8ce1f1d00
                         add                esp, 0x14                                     // 0x005f44b1    83c414
_jmp_addr_0x005f44b4:    {disp32} mov       ax, word ptr [data_bytes + 0x4bf05a]          // 0x005f44b4    66a15a50e800
                         {disp32} mov       esi, dword ptr [data_bytes + 0x4bf058]        // 0x005f44ba    8b355850e800
                         push               0x00d318e0                                    // 0x005f44c0    68e018d300
                         {disp8} mov        byte ptr [esp + 0x1c], -0x38                  // 0x005f44c5    c644241cc8
                         {disp8} mov        byte ptr [esp + 0x1d], -0x38                  // 0x005f44ca    c644241dc8
                         {disp8} mov        byte ptr [esp + 0x1e], -0x38                  // 0x005f44cf    c644241ec8
                         {disp8} mov        byte ptr [esp + 0x1f], bl                     // 0x005f44d4    885c241f
                         {disp8} mov        word ptr [esp + 0x38], ax                     // 0x005f44d8    6689442438
                         call               _wcslen                                       // 0x005f44dd    e8801f1d00
                         {disp8} mov        edi, dword ptr [esp + 0x20]                   // 0x005f44e2    8b7c2420
                         add                esp, 0x04                                     // 0x005f44e6    83c404
                         push               edi                                           // 0x005f44e9    57
                         push               eax                                           // 0x005f44ea    50
                         push               0x00d318e0                                    // 0x005f44eb    68e018d300
                         mov.s              ecx, ebp                                      // 0x005f44f0    8bcd
                         call               @GetStringWidth__13GatheringTextFPwif@20      // 0x005f44f2    e839cc2300
                         {disp32} fld       dword ptr [_near_clipping]                    // 0x005f44f7    d905e039e800
                         {disp32} fmul      dword ptr [__real@3fc00000]                   // 0x005f44fd    d80d4cb28a00
                         {disp8} mov        edx, dword ptr [esp + 0x34]                   // 0x005f4503    8b542434
                         push               0x45800000                                    // 0x005f4507    6800008045
                         push               0x0                                           // 0x005f450c    6a00
                         push               0x0                                           // 0x005f450e    6a00
                         push               0x0                                           // 0x005f4510    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x28]                   // 0x005f4512    8d4c2428
                         push               ecx                                           // 0x005f4516    51
                         push               edi                                           // 0x005f4517    57
                         push               ecx                                           // 0x005f4518    51
                         fstp               dword ptr [esp]                               // 0x005f4519    d91c24
                         and                edx, 0x0000ffff                               // 0x005f451c    81e2ffff0000
                         {disp8} mov        dword ptr [esp + 0x50], edx                   // 0x005f4522    89542450
                         {disp8} fild       dword ptr [esp + 0x50]                        // 0x005f4526    db442450
                         push               ecx                                           // 0x005f452a    51
                         and                esi, 0x0000ffff                               // 0x005f452b    81e6ffff0000
                         {disp8} fsub       dword ptr [esp + 0x3c]                        // 0x005f4531    d864243c
                         {disp8} mov        dword ptr [esp + 0x3c], esi                   // 0x005f4535    8974243c
                         {disp32} fsub      dword ptr [rdata_bytes + 0x2478]              // 0x005f4539    d82578b48a00
                         fstp               dword ptr [esp]                               // 0x005f453f    d91c24
                         push               ecx                                           // 0x005f4542    51
                         {disp8} fild       dword ptr [esp + 0x40]                        // 0x005f4543    db442440
                         fsub               st, st(1)                                     // 0x005f4547    d8e1
                         {disp32} fsub      dword ptr [rdata_bytes + 0x2478]              // 0x005f4549    d82578b48a00
                         fstp               dword ptr [esp]                               // 0x005f454f    d91c24
                         push               0x00d318e0                                    // 0x005f4552    68e018d300
                         fstp               st(0)                                         // 0x005f4557    ddd8
                         call               _wcslen                                       // 0x005f4559    e8041f1d00
                         add                esp, 0x04                                     // 0x005f455e    83c404
                         push               eax                                           // 0x005f4561    50
                         push               0x00d318e0                                    // 0x005f4562    68e018d300
                         mov.s              ecx, ebp                                      // 0x005f4567    8bcd
                         call               @DrawTextRaw__13GatheringTextFPwiffffP9LH3DColoriP9LH3DColorff@52                          // 0x005f4569    e8f2e62300
                         {disp8} mov        eax, dword ptr [esp + 0x4c]                   // 0x005f456e    8b44244c
                         {disp8} lea        ecx, dword ptr [eax + -0x01]                  // 0x005f4572    8d48ff
                         {disp8} mov        dword ptr [esp + 0x28], ecx                   // 0x005f4575    894c2428
                         {disp8} mov        ecx, dword ptr [esp + 0x48]                   // 0x005f4579    8b4c2448
                         {disp8} lea        edx, dword ptr [ecx + -0x01]                  // 0x005f457d    8d51ff
                         {disp8} mov        dword ptr [esp + 0x30], edx                   // 0x005f4580    89542430
                         {disp8} mov        edx, dword ptr [esp + 0x40]                   // 0x005f4584    8b542440
                         {disp8} lea        eax, dword ptr [edx + eax * 0x1 + 0x01]       // 0x005f4588    8d440201
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                   // 0x005f458c    8b54242c
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x005f4590    89442420
                         {disp8} lea        eax, dword ptr [edx + ecx * 0x1 + 0x01]       // 0x005f4594    8d440a01
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4bf058]        // 0x005f4598    8b0d5850e800
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x005f459e    89442424
                         and                ecx, 0x0000ffff                               // 0x005f45a2    81e1ffff0000
                         mov                eax, 0x51eb851f                               // 0x005f45a8    b81f85eb51
                         imul               ecx                                           // 0x005f45ad    f7e9
                         sar                edx, 4                                        // 0x005f45af    c1fa04
                         mov.s              ecx, edx                                      // 0x005f45b2    8bca
                         shr                ecx, 0x1f                                     // 0x005f45b4    c1e91f
                         add.s              edx, ecx                                      // 0x005f45b7    03d1
                         mov.s              esi, edx                                      // 0x005f45b9    8bf2
                         {disp8} lea        edx, dword ptr [esp + 0x30]                   // 0x005f45bb    8d542430
                         push               edx                                           // 0x005f45bf    52
                         {disp8} lea        eax, dword ptr [esp + 0x2c]                   // 0x005f45c0    8d44242c
                         push               eax                                           // 0x005f45c4    50
                         {disp8} mov        dword ptr [esp + 0x24], esi                   // 0x005f45c5    89742424
                         call               ?unadjust@SetupThing@@SAMAAH0@Z               // 0x005f45c9    e862d6e1ff
                         {disp8} lea        ecx, dword ptr [esp + 0x2c]                   // 0x005f45ce    8d4c242c
                         fstp               st(0)                                         // 0x005f45d2    ddd8
                         push               ecx                                           // 0x005f45d4    51
                         {disp8} lea        edx, dword ptr [esp + 0x2c]                   // 0x005f45d5    8d54242c
                         push               edx                                           // 0x005f45d9    52
                         call               ?unadjust@SetupThing@@SAMAAH0@Z               // 0x005f45da    e851d6e1ff
                         fstp               st(0)                                         // 0x005f45df    ddd8
                         push               esi                                           // 0x005f45e1    56
                         call               _jmp_addr_0x00411fc0                          // 0x005f45e2    e8d9d9e1ff
                         {disp8} fild       dword ptr [esp + 0x30]                        // 0x005f45e7    db442430
                         push               -0x1                                          // 0x005f45eb    6aff
                         push               -0x1                                          // 0x005f45ed    6aff
                         {disp8} fst        dword ptr [esp + 0x48]                        // 0x005f45ef    d9542448
                         push               0x10                                          // 0x005f45f3    6a10
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1c81c]             // 0x005f45f5    d80d1c588c00
                         push               0x1                                           // 0x005f45fb    6a01
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x005f45fd    d95c243c
                         {disp8} fild       dword ptr [esp + 0x48]                        // 0x005f4601    db442448
                         {disp8} fld        dword ptr [esp + 0x50]                        // 0x005f4605    d9442450
                         {disp32} fmul      dword ptr [__real@3fc00000]                   // 0x005f4609    d80d4cb28a00
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x005f460f    d95c2438
                         fld                st(0)                                         // 0x005f4613    d9c0
                         {disp8} fadd       dword ptr [esp + 0x3c]                        // 0x005f4615    d844243c
                         call               _jmp_addr_0x007a1400                          // 0x005f4619    e8e2cd1a00
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x005f461e    d9442438
                         push               eax                                           // 0x005f4622    50
                         fadd               st, st(1)                                     // 0x005f4623    d8c1
                         {disp8} mov        eax, dword ptr [esp + 0x48]                   // 0x005f4625    8b442448
                         push               eax                                           // 0x005f4629    50
                         call               _jmp_addr_0x007a1400                          // 0x005f462a    e8d1cd1a00
                         fstp               st(0)                                         // 0x005f462f    ddd8
                         {disp8} mov        ecx, dword ptr [esp + 0x54]                   // 0x005f4631    8b4c2454
                         push               eax                                           // 0x005f4635    50
                         push               ecx                                           // 0x005f4636    51
                         call               ?DrawBevBox@SetupThing@@SAXHHHHHHHK@Z         // 0x005f4637    e8e4f5e1ff
                         {disp32} fld       dword ptr [esp + 0x000008a0]                  // 0x005f463c    d98424a0080000
                         add                esp, 0x34                                     // 0x005f4643    83c434
                         call               _jmp_addr_0x007a1400                          // 0x005f4646    e8b5cd1a00
                         {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x005f464b    8b542420
                         {disp8} mov        ebp, dword ptr [esp + 0x28]                   // 0x005f464f    8b6c2428
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x005f4653    8944241c
                         {disp8} fild       dword ptr [esp + 0x1c]                        // 0x005f4657    db44241c
                         sub.s              edx, ebp                                      // 0x005f465b    2bd5
                         add                edx, 0x78                                     // 0x005f465d    83c278
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x005f4660    8954241c
                         {disp32} fsubr     dword ptr [esp + 0x0000086c]                  // 0x005f4664    d8ac246c080000
                         fld                st(0)                                         // 0x005f466b    d9c0
                         {disp32} fsub      dword ptr [_rdata_float0p5]                   // 0x005f466d    d825b4a38a00
                         fadd.s             st(0), st(0)                                  // 0x005f4673    dcc0
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x005f4675    d95c2434
                         {disp8} fild       dword ptr [esp + 0x1c]                        // 0x005f4679    db44241c
                         fxch               st(1)                                         // 0x005f467d    d9c9
                         fadd.s             st(0), st(0)                                  // 0x005f467f    dcc0
                         fmulp              st(1), st                                     // 0x005f4681    dec9
                         {disp8} fiadd      dword ptr [esp + 0x28]                        // 0x005f4683    da442428
                         {disp32} fsub      dword ptr [rdata_bytes + 0x1a6a8]             // 0x005f4687    d825a8368c00
                         call               _jmp_addr_0x007a1400                          // 0x005f468d    e86ecd1a00
                         mov.s              edi, eax                                      // 0x005f4692    8bf8
                         add                ebp, 0x03                                     // 0x005f4694    83c503
                         cmp.s              edi, ebp                                      // 0x005f4697    3bfd
                         {disp8} lea        eax, dword ptr [edi + 0x78]                   // 0x005f4699    8d4778
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x005f469c    89442410
                         {disp8} jle        _jmp_addr_0x005f46d7                          // 0x005f46a0    7e35
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x005f46a2    8b4c2420
                         add                ecx, -0x3                                     // 0x005f46a6    83c1fd
                         cmp.s              edi, ecx                                      // 0x005f46a9    3bf9
                         {disp8} jl         _jmp_addr_0x005f46d9                          // 0x005f46ab    7c2c
                         mov.s              edi, ecx                                      // 0x005f46ad    8bf9
                         {disp8} jmp        _jmp_addr_0x005f46d9                          // 0x005f46af    eb28
_jmp_addr_0x005f46b1:    {disp32} mov       eax, dword ptr [data_bytes + 0x36bae4]        // 0x005f46b1    a1e41ad300
                         test               eax, eax                                      // 0x005f46b6    85c0
                         {disp32} je        _jmp_addr_0x005f447f                          // 0x005f46b8    0f84c1fdffff
                         push               eax                                           // 0x005f46be    50
                         {disp8} lea        edx, dword ptr [esp + 0x64]                   // 0x005f46bf    8d542464
                         push               0x00bf3be8                                    // 0x005f46c3    68e83bbf00
                         push               edx                                           // 0x005f46c8    52
                         call               dword ptr [__imp___0LHSPrintfW__QAA_PAGZZ@4]  // 0x005f46c9    ff15d8938a00
                         add                esp, 0x0c                                     // 0x005f46cf    83c40c
                         {disp32} jmp       _jmp_addr_0x005f4484                          // 0x005f46d2    e9adfdffff
_jmp_addr_0x005f46d7:    mov.s              edi, ebp                                      // 0x005f46d7    8bfd
_jmp_addr_0x005f46d9:    cmp.s              eax, ebp                                      // 0x005f46d9    3bc5
                         {disp8} jle        _jmp_addr_0x005f46ee                          // 0x005f46db    7e11
                         {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x005f46dd    8b542420
                         {disp8} lea        ecx, dword ptr [edx + -0x03]                  // 0x005f46e1    8d4afd
                         cmp.s              eax, ecx                                      // 0x005f46e4    3bc1
                         {disp8} jl         _jmp_addr_0x005f46f2                          // 0x005f46e6    7c0a
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x005f46e8    894c2410
                         {disp8} jmp        _jmp_addr_0x005f46f2                          // 0x005f46ec    eb04
_jmp_addr_0x005f46ee:    {disp8} mov        dword ptr [esp + 0x10], ebp                   // 0x005f46ee    896c2410
_jmp_addr_0x005f46f2:    {disp8} fild       dword ptr [esp + 0x24]                        // 0x005f46f2    db442424
                         push               0x1                                           // 0x005f46f6    6a01
                         push               0x0                                           // 0x005f46f8    6a00
                         push               0xcdffffff                                    // 0x005f46fa    68ffffffcd
                         fld                st(0)                                         // 0x005f46ff    d9c0
                         push               0xcdffffff                                    // 0x005f4701    68ffffffcd
                         {disp8} fadd       dword ptr [esp + 0x28]                        // 0x005f4706    d8442428
                         push               0xcdffffff                                    // 0x005f470a    68ffffffcd
                         push               0xcdffffff                                    // 0x005f470f    68ffffffcd
                         {disp32} fsub      dword ptr [rdata_bytes + 0x2418]              // 0x005f4714    d82518b48a00
                         call               _jmp_addr_0x007a1400                          // 0x005f471a    e8e1cc1a00
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x005f471f    d944242c
                         fadd               st, st(1)                                     // 0x005f4723    d8c1
                         push               eax                                           // 0x005f4725    50
                         push               edi                                           // 0x005f4726    57
                         {disp32} fadd      dword ptr [rdata_bytes + 0x19c50]             // 0x005f4727    d805502c8c00
                         call               _jmp_addr_0x007a1400                          // 0x005f472d    e8cecc1a00
                         fstp               st(0)                                         // 0x005f4732    ddd8
                         push               eax                                           // 0x005f4734    50
                         push               ebp                                           // 0x005f4735    55
                         call               ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z          // 0x005f4736    e885ebe1ff
                         {disp8} fild       dword ptr [esp + 0x4c]                        // 0x005f473b    db44244c
                         push               0x1                                           // 0x005f473f    6a01
                         push               0x0                                           // 0x005f4741    6a00
                         fld                st(0)                                         // 0x005f4743    d9c0
                         push               0xcdffffff                                    // 0x005f4745    68ffffffcd
                         {disp8} fadd       dword ptr [esp + 0x4c]                        // 0x005f474a    d844244c
                         push               0x0                                           // 0x005f474e    6a00
                         push               0x0                                           // 0x005f4750    6a00
                         push               0xcdffffff                                    // 0x005f4752    68ffffffcd
                         {disp32} fsub      dword ptr [rdata_bytes + 0x2418]              // 0x005f4757    d82518b48a00
                         call               _jmp_addr_0x007a1400                          // 0x005f475d    e89ecc1a00
                         {disp8} fld        dword ptr [esp + 0x54]                        // 0x005f4762    d9442454
                         fadd               st, st(1)                                     // 0x005f4766    d8c1
                         push               eax                                           // 0x005f4768    50
                         {disp8} mov        eax, dword ptr [esp + 0x54]                   // 0x005f4769    8b442454
                         push               eax                                           // 0x005f476d    50
                         {disp32} fadd      dword ptr [rdata_bytes + 0x19c50]             // 0x005f476e    d805502c8c00
                         call               _jmp_addr_0x007a1400                          // 0x005f4774    e887cc1a00
                         fstp               st(0)                                         // 0x005f4779    ddd8
                         push               eax                                           // 0x005f477b    50
                         push               edi                                           // 0x005f477c    57
                         call               ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z          // 0x005f477d    e83eebe1ff
                         {disp8} mov        ecx, dword ptr [esp + 0x70]                   // 0x005f4782    8b4c2470
                         {disp8} mov        ebp, dword ptr [esp + 0x78]                   // 0x005f4786    8b6c2478
                         sub.s              ecx, ebp                                      // 0x005f478a    2bcd
                         add                ecx, 0x78                                     // 0x005f478c    83c178
                         {disp8} mov        dword ptr [esp + 0x6c], ecx                   // 0x005f478f    894c246c
                         {disp8} fild       dword ptr [esp + 0x6c]                        // 0x005f4793    db44246c
                         add                esp, 0x50                                     // 0x005f4797    83c450
                         {disp8} fmul       dword ptr [esp + 0x34]                        // 0x005f479a    d84c2434
                         {disp8} fiadd      dword ptr [esp + 0x28]                        // 0x005f479e    da442428
                         {disp32} fsub      dword ptr [rdata_bytes + 0x1a6a8]             // 0x005f47a2    d825a8368c00
                         call               _jmp_addr_0x007a1400                          // 0x005f47a8    e853cc1a00
                         mov.s              edi, eax                                      // 0x005f47ad    8bf8
                         add                ebp, 0x03                                     // 0x005f47af    83c503
                         cmp.s              edi, ebp                                      // 0x005f47b2    3bfd
                         {disp8} lea        eax, dword ptr [edi + 0x78]                   // 0x005f47b4    8d4778
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x005f47b7    89442410
                         {disp8} jle        _jmp_addr_0x005f47cc                          // 0x005f47bb    7e0f
                         {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x005f47bd    8b542420
                         {disp8} lea        ecx, dword ptr [edx + -0x03]                  // 0x005f47c1    8d4afd
                         cmp.s              edi, ecx                                      // 0x005f47c4    3bf9
                         {disp8} jl         _jmp_addr_0x005f47ce                          // 0x005f47c6    7c06
                         mov.s              edi, ecx                                      // 0x005f47c8    8bf9
                         {disp8} jmp        _jmp_addr_0x005f47ce                          // 0x005f47ca    eb02
_jmp_addr_0x005f47cc:    mov.s              edi, ebp                                      // 0x005f47cc    8bfd
_jmp_addr_0x005f47ce:    cmp.s              eax, ebp                                      // 0x005f47ce    3bc5
                         {disp8} jle        _jmp_addr_0x005f47e3                          // 0x005f47d0    7e11
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x005f47d2    8b4c2420
                         add                ecx, -0x3                                     // 0x005f47d6    83c1fd
                         cmp.s              eax, ecx                                      // 0x005f47d9    3bc1
                         {disp8} jl         _jmp_addr_0x005f47e7                          // 0x005f47db    7c0a
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x005f47dd    894c2410
                         {disp8} jmp        _jmp_addr_0x005f47e7                          // 0x005f47e1    eb04
_jmp_addr_0x005f47e3:    {disp8} mov        dword ptr [esp + 0x10], ebp                   // 0x005f47e3    896c2410
_jmp_addr_0x005f47e7:    {disp8} fild       dword ptr [esp + 0x24]                        // 0x005f47e7    db442424
                         push               0x1                                           // 0x005f47eb    6a01
                         push               0x0                                           // 0x005f47ed    6a00
                         push               0xff000000                                    // 0x005f47ef    68000000ff
                         fld                st(0)                                         // 0x005f47f4    d9c0
                         push               0xff000000                                    // 0x005f47f6    68000000ff
                         {disp8} fadd       dword ptr [esp + 0x28]                        // 0x005f47fb    d8442428
                         push               0xff000000                                    // 0x005f47ff    68000000ff
                         push               0xff000000                                    // 0x005f4804    68000000ff
                         {disp32} fsub      dword ptr [rdata_bytes + 0x19c50]             // 0x005f4809    d825502c8c00
                         call               _jmp_addr_0x007a1400                          // 0x005f480f    e8eccb1a00
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x005f4814    d944242c
                         fadd               st, st(1)                                     // 0x005f4818    d8c1
                         push               eax                                           // 0x005f481a    50
                         push               edi                                           // 0x005f481b    57
                         {disp32} fadd      dword ptr [rdata_bytes + 0x19c50]             // 0x005f481c    d805502c8c00
                         call               _jmp_addr_0x007a1400                          // 0x005f4822    e8d9cb1a00
                         fstp               st(0)                                         // 0x005f4827    ddd8
                         push               eax                                           // 0x005f4829    50
                         push               ebp                                           // 0x005f482a    55
                         call               ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z          // 0x005f482b    e890eae1ff
                         {disp8} fild       dword ptr [esp + 0x4c]                        // 0x005f4830    db44244c
                         push               0x1                                           // 0x005f4834    6a01
                         push               0x0                                           // 0x005f4836    6a00
                         fld                st(0)                                         // 0x005f4838    d9c0
                         push               0xff000000                                    // 0x005f483a    68000000ff
                         {disp8} fadd       dword ptr [esp + 0x4c]                        // 0x005f483f    d844244c
                         push               0x0                                           // 0x005f4843    6a00
                         push               0x0                                           // 0x005f4845    6a00
                         push               0xff000000                                    // 0x005f4847    68000000ff
                         {disp32} fsub      dword ptr [rdata_bytes + 0x19c50]             // 0x005f484c    d825502c8c00
                         call               _jmp_addr_0x007a1400                          // 0x005f4852    e8a9cb1a00
                         {disp8} fld        dword ptr [esp + 0x54]                        // 0x005f4857    d9442454
                         {disp8} mov        edx, dword ptr [esp + 0x50]                   // 0x005f485b    8b542450
                         fadd               st, st(1)                                     // 0x005f485f    d8c1
                         push               eax                                           // 0x005f4861    50
                         push               edx                                           // 0x005f4862    52
                         {disp32} fadd      dword ptr [rdata_bytes + 0x19c50]             // 0x005f4863    d805502c8c00
                         call               _jmp_addr_0x007a1400                          // 0x005f4869    e892cb1a00
                         fstp               st(0)                                         // 0x005f486e    ddd8
                         push               eax                                           // 0x005f4870    50
                         push               edi                                           // 0x005f4871    57
                         call               ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z          // 0x005f4872    e849eae1ff
                         {disp8} fild       dword ptr [esp + 0x74]                        // 0x005f4877    db442474
                         {disp8} fld        dword ptr [esp + 0x7c]                        // 0x005f487b    d944247c
                         add                esp, 0x50                                     // 0x005f487f    83c450
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26030]             // 0x005f4882    d80d30f08c00
                         push               0x1                                           // 0x005f4888    6a01
                         push               0x0                                           // 0x005f488a    6a00
                         push               0x0                                           // 0x005f488c    6a00
                         fadd               st, st(1)                                     // 0x005f488e    d8c1
                         push               0x0                                           // 0x005f4890    6a00
                         push               0xff000000                                    // 0x005f4892    68000000ff
                         push               0xff000000                                    // 0x005f4897    68000000ff
                         {disp32} fadd      dword ptr [rdata_bytes + 0x19c50]             // 0x005f489c    d805502c8c00
                         call               _jmp_addr_0x007a1400                          // 0x005f48a2    e859cb1a00
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x005f48a7    d944242c
                         push               eax                                           // 0x005f48ab    50
                         fadd               st, st(1)                                     // 0x005f48ac    d8c1
                         {disp8} mov        eax, dword ptr [esp + 0x3c]                   // 0x005f48ae    8b44243c
                         add                eax, -0x04                                    // 0x005f48b2    83c0fc
                         {disp32} fadd      dword ptr [rdata_bytes + 0x19c50]             // 0x005f48b5    d805502c8c00
                         push               eax                                           // 0x005f48bb    50
                         call               _jmp_addr_0x007a1400                          // 0x005f48bc    e83fcb1a00
                         fstp               st(0)                                         // 0x005f48c1    ddd8
                         {disp8} mov        ecx, dword ptr [esp + 0x48]                   // 0x005f48c3    8b4c2448
                         push               eax                                           // 0x005f48c7    50
                         add                ecx, 0x3                                      // 0x005f48c8    83c103
                         push               ecx                                           // 0x005f48cb    51
                         call               ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z          // 0x005f48cc    e8efe9e1ff
                         {disp8} fild       dword ptr [esp + 0x4c]                        // 0x005f48d1    db44244c
                         {disp8} mov        edx, dword ptr [esp + 0x50]                   // 0x005f48d5    8b542450
                         push               0x1                                           // 0x005f48d9    6a01
                         push               0x0                                           // 0x005f48db    6a00
                         fld                st(0)                                         // 0x005f48dd    d9c0
                         push               0xff000000                                    // 0x005f48df    68000000ff
                         push               0x0                                           // 0x005f48e4    6a00
                         {disp8} lea        edi, dword ptr [edx + 0x03]                   // 0x005f48e6    8d7a03
                         push               0x0                                           // 0x005f48e9    6a00
                         {disp8} mov        dword ptr [esp + 0x58], edi                   // 0x005f48eb    897c2458
                         push               0xff000000                                    // 0x005f48ef    68000000ff
                         {disp8} fadd       dword ptr [esp + 0x58]                        // 0x005f48f4    d8442458
                         {disp32} fsub      dword ptr [rdata_bytes + 0x2418]              // 0x005f48f8    d82518b48a00
                         call               _jmp_addr_0x007a1400                          // 0x005f48fe    e8fdca1a00
                         {disp8} fld        dword ptr [esp + 0x6c]                        // 0x005f4903    d944246c
                         {disp32} fmul      dword ptr [__real@3e999999]                   // 0x005f4907    d80d3cb28a00
                         push               eax                                           // 0x005f490d    50
                         {disp8} fiadd      dword ptr [esp + 0x60]                        // 0x005f490e    da442460
                         call               _jmp_addr_0x007a1400                          // 0x005f4912    e8e9ca1a00
                         {disp8} fld        dword ptr [esp + 0x58]                        // 0x005f4917    d9442458
                         fadd               st, st(1)                                     // 0x005f491b    d8c1
                         push               eax                                           // 0x005f491d    50
                         {disp32} fadd      dword ptr [rdata_bytes + 0x19c50]             // 0x005f491e    d805502c8c00
                         call               _jmp_addr_0x007a1400                          // 0x005f4924    e8d7ca1a00
                         fstp               st(0)                                         // 0x005f4929    ddd8
                         push               eax                                           // 0x005f492b    50
                         push               edi                                           // 0x005f492c    57
                         call               ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z          // 0x005f492d    e88ee9e1ff
                         {disp32} mov       edx, dword ptr [esp + 0x000000ac]             // 0x005f4932    8b9424ac000000
                         {disp32} mov       ecx, dword ptr [esp + 0x00000080]             // 0x005f4939    8b8c2480000000
                         add                esp, 0x50                                     // 0x005f4940    83c450
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x005f4943    8b442428
                         push               0x42c80000                                    // 0x005f4947    680000c842
                         push               0x0                                           // 0x005f494c    6a00
                         {disp8} mov        edi, dword ptr [esp + 0x28]                   // 0x005f494e    8b7c2428
                         {disp8} mov        ebp, dword ptr [esp + 0x2c]                   // 0x005f4952    8b6c242c
                         push               0x0000a000                                    // 0x005f4956    6800a00000
                         push               0xffff6000                                    // 0x005f495b    680060ffff
                         push               0x1                                           // 0x005f4960    6a01
                         push               0x0                                           // 0x005f4962    6a00
                         {disp32} mov       dword ptr [data_bytes + 0x2078], edx          // 0x005f4964    891578809c00
                         {disp32} mov       edx, dword ptr [_SetupThing]                  // 0x005f496a    8b1580ccc400
                         push               edx                                           // 0x005f4970    52
                         push               0x3cc00000                                    // 0x005f4971    680000c03c
                         push               0x3e580000                                    // 0x005f4976    680000583e
                         push               0x0                                           // 0x005f497b    6a00
                         sub.s              ecx, esi                                      // 0x005f497d    2bce
                         push               0x3e400000                                    // 0x005f497f    680000403e
                         sub.s              eax, esi                                      // 0x005f4984    2bc6
                         lea                edx, dword ptr [esi + ecx * 0x1]              // 0x005f4986    8d140e
                         push               edx                                           // 0x005f4989    52
                         lea                edx, dword ptr [esi + eax * 0x1]              // 0x005f498a    8d1406
                         push               edx                                           // 0x005f498d    52
                         push               ecx                                           // 0x005f498e    51
                         add.s              edi, esi                                      // 0x005f498f    03fe
                         add.s              ebp, esi                                      // 0x005f4991    03ee
                         push               eax                                           // 0x005f4993    50
                         {disp8} mov        dword ptr [esp + 0x64], eax                   // 0x005f4994    89442464
                         {disp8} mov        dword ptr [esp + 0x5c], edi                   // 0x005f4998    897c245c
                         {disp8} mov        dword ptr [esp + 0x6c], ecx                   // 0x005f499c    894c246c
                         {disp8} mov        dword ptr [esp + 0x60], ebp                   // 0x005f49a0    896c2460
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x005f49a4    e8d7dfe1ff
                         {disp32} mov       eax, dword ptr [_SetupThing]                  // 0x005f49a9    a180ccc400
                         {disp8} mov        ecx, dword ptr [esp + 0x6c]                   // 0x005f49ae    8b4c246c
                         push               0x42c80000                                    // 0x005f49b2    680000c842
                         push               0x0                                           // 0x005f49b7    6a00
                         push               0x0000a000                                    // 0x005f49b9    6800a00000
                         push               0xffff6000                                    // 0x005f49be    680060ffff
                         push               0x1                                           // 0x005f49c3    6a01
                         push               0x0                                           // 0x005f49c5    6a00
                         push               eax                                           // 0x005f49c7    50
                         {disp8} mov        eax, dword ptr [esp + 0x78]                   // 0x005f49c8    8b442478
                         push               0x3cc00000                                    // 0x005f49cc    680000c03c
                         push               0x3ea00000                                    // 0x005f49d1    680000a03e
                         push               0x0                                           // 0x005f49d6    6a00
                         push               0x3e940000                                    // 0x005f49d8    680000943e
                         lea                edx, dword ptr [esi + ecx * 0x1]              // 0x005f49dd    8d140e
                         push               edx                                           // 0x005f49e0    52
                         push               eax                                           // 0x005f49e1    50
                         push               ecx                                           // 0x005f49e2    51
                         sub.s              eax, esi                                      // 0x005f49e3    2bc6
                         push               eax                                           // 0x005f49e5    50
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x005f49e6    e895dfe1ff
                         {disp32} mov       eax, dword ptr [_SetupThing]                  // 0x005f49eb    a180ccc400
                         add                esp, 0x78                                     // 0x005f49f0    83c478
                         push               0x42c80000                                    // 0x005f49f3    680000c842
                         push               0x0                                           // 0x005f49f8    6a00
                         push               0x0000a000                                    // 0x005f49fa    6800a00000
                         push               0xffff6000                                    // 0x005f49ff    680060ffff
                         push               0x1                                           // 0x005f4a04    6a01
                         push               0x0                                           // 0x005f4a06    6a00
                         push               eax                                           // 0x005f4a08    50
                         {disp8} mov        eax, dword ptr [esp + 0x40]                   // 0x005f4a09    8b442440
                         {disp8} mov        ecx, dword ptr [esp + 0x44]                   // 0x005f4a0d    8b4c2444
                         push               0x3e000000                                    // 0x005f4a11    680000003e
                         push               0x3e580000                                    // 0x005f4a16    680000583e
                         push               0x3dd00000                                    // 0x005f4a1b    680000d03d
                         push               0x3e400000                                    // 0x005f4a20    680000403e
                         push               eax                                           // 0x005f4a25    50
                         lea                edx, dword ptr [esi + ecx * 0x1]              // 0x005f4a26    8d140e
                         push               edx                                           // 0x005f4a29    52
                         sub.s              eax, esi                                      // 0x005f4a2a    2bc6
                         push               eax                                           // 0x005f4a2c    50
                         push               ecx                                           // 0x005f4a2d    51
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x005f4a2e    e84ddfe1ff
                         {disp32} mov       eax, dword ptr [_SetupThing]                  // 0x005f4a33    a180ccc400
                         push               0x42c80000                                    // 0x005f4a38    680000c842
                         {disp8} mov        ecx, dword ptr [esp + 0x60]                   // 0x005f4a3d    8b4c2460
                         push               0x0                                           // 0x005f4a41    6a00
                         push               0x0000a000                                    // 0x005f4a43    6800a00000
                         push               0xffff6000                                    // 0x005f4a48    680060ffff
                         push               0x1                                           // 0x005f4a4d    6a01
                         push               0x0                                           // 0x005f4a4f    6a00
                         push               eax                                           // 0x005f4a51    50
                         {disp8} mov        eax, dword ptr [esp + 0x7c]                   // 0x005f4a52    8b44247c
                         push               0x3e000000                                    // 0x005f4a56    680000003e
                         push               0x3ea00000                                    // 0x005f4a5b    680000a03e
                         push               0x3dd00000                                    // 0x005f4a60    680000d03d
                         push               0x3e940000                                    // 0x005f4a65    680000943e
                         push               eax                                           // 0x005f4a6a    50
                         push               ecx                                           // 0x005f4a6b    51
                         sub.s              eax, esi                                      // 0x005f4a6c    2bc6
                         push               eax                                           // 0x005f4a6e    50
                         sub.s              ecx, esi                                      // 0x005f4a6f    2bce
                         push               ecx                                           // 0x005f4a71    51
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x005f4a72    e809dfe1ff
                         {disp32} mov       ecx, dword ptr [_SetupThing]                  // 0x005f4a77    8b0d80ccc400
                         {disp32} mov       eax, dword ptr [esp + 0x000000a8]             // 0x005f4a7d    8b8424a8000000
                         add                esp, 0x78                                     // 0x005f4a84    83c478
                         push               0x42c80000                                    // 0x005f4a87    680000c842
                         push               0x0                                           // 0x005f4a8c    6a00
                         push               0x0000a000                                    // 0x005f4a8e    6800a00000
                         push               0xffff6000                                    // 0x005f4a93    680060ffff
                         push               0x1                                           // 0x005f4a98    6a01
                         push               0x0                                           // 0x005f4a9a    6a00
                         push               ecx                                           // 0x005f4a9c    51
                         {disp8} mov        ecx, dword ptr [esp + 0x3c]                   // 0x005f4a9d    8b4c243c
                         push               0x3cc00000                                    // 0x005f4aa1    680000c03c
                         push               0x3e940000                                    // 0x005f4aa6    680000943e
                         push               0x0                                           // 0x005f4aab    6a00
                         push               0x3e580000                                    // 0x005f4aad    680000583e
                         lea                edx, dword ptr [esi + eax * 0x1]              // 0x005f4ab2    8d1406
                         push               edx                                           // 0x005f4ab5    52
                         {disp8} mov        edx, dword ptr [esp + 0x58]                   // 0x005f4ab6    8b542458
                         sub.s              ecx, esi                                      // 0x005f4aba    2bce
                         push               ecx                                           // 0x005f4abc    51
                         push               eax                                           // 0x005f4abd    50
                         lea                eax, dword ptr [esi + edx * 0x1]              // 0x005f4abe    8d0416
                         push               eax                                           // 0x005f4ac1    50
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x005f4ac2    e8b9dee1ff
                         {disp32} mov       ecx, dword ptr [_SetupThing]                  // 0x005f4ac7    8b0d80ccc400
                         {disp8} mov        eax, dword ptr [esp + 0x60]                   // 0x005f4acd    8b442460
                         push               0x42c80000                                    // 0x005f4ad1    680000c842
                         {disp8} mov        edx, dword ptr [esp + 0x60]                   // 0x005f4ad6    8b542460
                         push               0x0                                           // 0x005f4ada    6a00
                         push               0x0000a000                                    // 0x005f4adc    6800a00000
                         push               0xffff6000                                    // 0x005f4ae1    680060ffff
                         push               0x1                                           // 0x005f4ae6    6a01
                         push               0x0                                           // 0x005f4ae8    6a00
                         push               ecx                                           // 0x005f4aea    51
                         push               0x3e000000                                    // 0x005f4aeb    680000003e
                         push               0x3e940000                                    // 0x005f4af0    680000943e
                         push               0x3dd00000                                    // 0x005f4af5    680000d03d
                         push               0x3e580000                                    // 0x005f4afa    680000583e
                         push               eax                                           // 0x005f4aff    50
                         sub.s              edx, esi                                      // 0x005f4b00    2bd6
                         push               edx                                           // 0x005f4b02    52
                         sub.s              eax, esi                                      // 0x005f4b03    2bc6
                         push               eax                                           // 0x005f4b05    50
                         {disp32} mov       eax, dword ptr [esp + 0x0000009c]             // 0x005f4b06    8b84249c000000
                         lea                ecx, dword ptr [esi + eax * 0x1]              // 0x005f4b0d    8d0c06
                         push               ecx                                           // 0x005f4b10    51
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x005f4b11    e86adee1ff
                         {disp32} mov       edx, dword ptr [_SetupThing]                  // 0x005f4b16    8b1580ccc400
                         add                esp, 0x78                                     // 0x005f4b1c    83c478
                         {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x005f4b1f    8b442424
                         push               0x42c80000                                    // 0x005f4b23    680000c842
                         push               0x0                                           // 0x005f4b28    6a00
                         push               0x0000a000                                    // 0x005f4b2a    6800a00000
                         push               0xffff6000                                    // 0x005f4b2f    680060ffff
                         push               0x1                                           // 0x005f4b34    6a01
                         push               0x0                                           // 0x005f4b36    6a00
                         push               edx                                           // 0x005f4b38    52
                         {disp8} mov        edx, dword ptr [esp + 0x4c]                   // 0x005f4b39    8b54244c
                         push               0x3dd00000                                    // 0x005f4b3d    680000d03d
                         push               0x3e580000                                    // 0x005f4b42    680000583e
                         push               0x3cc00000                                    // 0x005f4b47    680000c03c
                         push               0x3e400000                                    // 0x005f4b4c    680000403e
                         sub.s              eax, esi                                      // 0x005f4b51    2bc6
                         push               eax                                           // 0x005f4b53    50
                         {disp8} mov        eax, dword ptr [esp + 0x58]                   // 0x005f4b54    8b442458
                         lea                ecx, dword ptr [esi + eax * 0x1]              // 0x005f4b58    8d0c06
                         push               ecx                                           // 0x005f4b5b    51
                         lea                ecx, dword ptr [esi + edx * 0x1]              // 0x005f4b5c    8d0c16
                         push               ecx                                           // 0x005f4b5f    51
                         push               eax                                           // 0x005f4b60    50
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x005f4b61    e81adee1ff
                         {disp32} mov       edx, dword ptr [_SetupThing]                  // 0x005f4b66    8b1580ccc400
                         {disp8} mov        eax, dword ptr [esp + 0x60]                   // 0x005f4b6c    8b442460
                         push               0x42c80000                                    // 0x005f4b70    680000c842
                         push               0x0                                           // 0x005f4b75    6a00
                         {disp8} mov        ecx, dword ptr [esp + 0x74]                   // 0x005f4b77    8b4c2474
                         push               0x0000a000                                    // 0x005f4b7b    6800a00000
                         push               0xffff6000                                    // 0x005f4b80    680060ffff
                         push               0x1                                           // 0x005f4b85    6a01
                         push               0x0                                           // 0x005f4b87    6a00
                         push               edx                                           // 0x005f4b89    52
                         push               0x3dd00000                                    // 0x005f4b8a    680000d03d
                         push               0x3ea00000                                    // 0x005f4b8f    680000a03e
                         push               0x3cc00000                                    // 0x005f4b94    680000c03c
                         push               0x3e940000                                    // 0x005f4b99    680000943e
                         sub.s              eax, esi                                      // 0x005f4b9e    2bc6
                         push               eax                                           // 0x005f4ba0    50
                         {disp32} mov       eax, dword ptr [esp + 0x0000008c]             // 0x005f4ba1    8b84248c000000
                         push               eax                                           // 0x005f4ba8    50
                         lea                edx, dword ptr [esi + ecx * 0x1]              // 0x005f4ba9    8d140e
                         push               edx                                           // 0x005f4bac    52
                         sub.s              eax, esi                                      // 0x005f4bad    2bc6
                         push               eax                                           // 0x005f4baf    50
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x005f4bb0    e8cbdde1ff
                         {disp32} mov       eax, dword ptr [esp + 0x000000a8]             // 0x005f4bb5    8b8424a8000000
                         {disp32} mov       edx, dword ptr [esp + 0x00000098]             // 0x005f4bbc    8b942498000000
                         {disp32} mov       ecx, dword ptr [esp + 0x000000a0]             // 0x005f4bc3    8b8c24a0000000
                         {disp32} mov       ebp, dword ptr [esp + 0x0000009c]             // 0x005f4bca    8bac249c000000
                         add                esp, 0x78                                     // 0x005f4bd1    83c478
                         push               0x42c80000                                    // 0x005f4bd4    680000c842
                         push               0x0                                           // 0x005f4bd9    6a00
                         push               0x1                                           // 0x005f4bdb    6a01
                         add.s              eax, esi                                      // 0x005f4bdd    03c6
                         push               -0x1                                          // 0x005f4bdf    6aff
                         push               eax                                           // 0x005f4be1    50
                         sub.s              edx, esi                                      // 0x005f4be2    2bd6
                         push               edx                                           // 0x005f4be4    52
                         add.s              ecx, esi                                      // 0x005f4be5    03ce
                         push               eax                                           // 0x005f4be7    50
                         sub.s              ebp, esi                                      // 0x005f4be8    2bee
                         push               ecx                                           // 0x005f4bea    51
                         {disp8} mov        dword ptr [esp + 0x48], ecx                   // 0x005f4beb    894c2448
                         {disp8} mov        dword ptr [esp + 0x40], edx                   // 0x005f4bef    89542440
                         {disp8} mov        dword ptr [esp + 0x50], eax                   // 0x005f4bf3    89442450
                         {disp8} mov        dword ptr [esp + 0x44], ebp                   // 0x005f4bf7    896c2444
                         {disp32} mov       dword ptr [data_bytes + 0x2078], ebx          // 0x005f4bfb    891d78809c00
                         call               ?DrawLine@SetupThing@@SAXHHHHKHMM@Z           // 0x005f4c01    e89ad9e1ff
                         {disp8} mov        eax, dword ptr [esp + 0x44]                   // 0x005f4c06    8b442444
                         {disp8} mov        ecx, dword ptr [esp + 0x50]                   // 0x005f4c0a    8b4c2450
                         push               0x42c80000                                    // 0x005f4c0e    680000c842
                         push               0x0                                           // 0x005f4c13    6a00
                         push               0x1                                           // 0x005f4c15    6a01
                         push               -0x1                                          // 0x005f4c17    6aff
                         push               eax                                           // 0x005f4c19    50
                         {disp8} mov        eax, dword ptr [esp + 0x5c]                   // 0x005f4c1a    8b44245c
                         push               eax                                           // 0x005f4c1e    50
                         push               ecx                                           // 0x005f4c1f    51
                         push               eax                                           // 0x005f4c20    50
                         call               ?DrawLine@SetupThing@@SAXHHHHKHMM@Z           // 0x005f4c21    e87ad9e1ff
                         {disp8} mov        edx, dword ptr [esp + 0x64]                   // 0x005f4c26    8b542464
                         {disp8} mov        eax, dword ptr [esp + 0x60]                   // 0x005f4c2a    8b442460
                         {disp8} mov        ecx, dword ptr [esp + 0x70]                   // 0x005f4c2e    8b4c2470
                         add                esp, 0x40                                     // 0x005f4c32    83c440
                         push               0x42c80000                                    // 0x005f4c35    680000c842
                         push               0x0                                           // 0x005f4c3a    6a00
                         push               0x1                                           // 0x005f4c3c    6a01
                         push               -0x1                                          // 0x005f4c3e    6aff
                         push               edx                                           // 0x005f4c40    52
                         push               eax                                           // 0x005f4c41    50
                         push               ecx                                           // 0x005f4c42    51
                         push               eax                                           // 0x005f4c43    50
                         call               ?DrawLine@SetupThing@@SAXHHHHKHMM@Z           // 0x005f4c44    e857d9e1ff
                         {disp8} mov        eax, dword ptr [esp + 0x44]                   // 0x005f4c49    8b442444
                         {disp8} mov        edx, dword ptr [esp + 0x40]                   // 0x005f4c4d    8b542440
                         push               0x42c80000                                    // 0x005f4c51    680000c842
                         push               0x0                                           // 0x005f4c56    6a00
                         push               0x1                                           // 0x005f4c58    6a01
                         push               -0x1                                          // 0x005f4c5a    6aff
                         push               eax                                           // 0x005f4c5c    50
                         push               edx                                           // 0x005f4c5d    52
                         push               eax                                           // 0x005f4c5e    50
                         {disp8} mov        eax, dword ptr [esp + 0x64]                   // 0x005f4c5f    8b442464
                         push               eax                                           // 0x005f4c63    50
                         call               ?DrawLine@SetupThing@@SAXHHHHKHMM@Z           // 0x005f4c64    e837d9e1ff
                         add                esp, 0x40                                     // 0x005f4c69    83c440
                         {disp32} mov       byte ptr [data_bytes + 0x2726d0], 0x00        // 0x005f4c6c    c605d086c30000
                         call               ?FinishFrame@LH3DRender@@QAEXXZ               // 0x005f4c73    e8e8a72300
                         call               _jmp_addr_0x007dee00                          // 0x005f4c78    e883a11e00
                         pop                edi                                           // 0x005f4c7d    5f
                         pop                esi                                           // 0x005f4c7e    5e
                         pop                ebp                                           // 0x005f4c7f    5d
                         pop                ebx                                           // 0x005f4c80    5b
_jmp_addr_0x005f4c81:    add                esp, 0x00000854                               // 0x005f4c81    81c454080000
                         ret                                                              // 0x005f4c87    c3
                         nop                                                              // 0x005f4c88    90
                         nop                                                              // 0x005f4c89    90
                         nop                                                              // 0x005f4c8a    90
                         nop                                                              // 0x005f4c8b    90
                         nop                                                              // 0x005f4c8c    90
                         nop                                                              // 0x005f4c8d    90
                         nop                                                              // 0x005f4c8e    90
                         nop                                                              // 0x005f4c8f    90
?StartTipOfTheDayText@@YAXXZ:
                         push               ecx                                           // 0x005f4c90    51
                         push               esi                                           // 0x005f4c91    56
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x005f4c92    c744240400000000
                         call               dword ptr [__imp__timeGetTime@4]              // 0x005f4c9a    ff158c988a00
                         shr                eax, 4                                        // 0x005f4ca0    c1e804
                         xor.s              edx, edx                                      // 0x005f4ca3    33d2
                         mov                ecx, 0x00000022                               // 0x005f4ca5    b922000000
                         div                ecx                                           // 0x005f4caa    f7f1
                         mov.s              esi, edx                                      // 0x005f4cac    8bf2
                         call               _jmp_addr_0x0066b9c0                          // 0x005f4cae    e80d6d0700
                         test               eax, eax                                      // 0x005f4cb3    85c0
                         {disp8} jne        _jmp_addr_0x005f4cf6                          // 0x005f4cb5    753f
_jmp_addr_0x005f4cb7:    {disp32} mov       ecx, dword ptr [data_bytes + 0x36b8d4]        // 0x005f4cb7    8b0dd418d300
                         test               ecx, ecx                                      // 0x005f4cbd    85c9
                         {disp32} mov       dword ptr [data_bytes + 0x36b8dc], eax        // 0x005f4cbf    a3dc18d300
                         {disp8} jne        _jmp_addr_0x005f4cd0                          // 0x005f4cc4    750a
                         call               ?MakeTipVideo@@YAXXZ                          // 0x005f4cc6    e815f0ffff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x36b8dc]        // 0x005f4ccb    a1dc18d300
_jmp_addr_0x005f4cd0:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351cac]        // 0x005f4cd0    8b0dac7cd100
                         add                eax, 0x0000141f                               // 0x005f4cd6    051f140000
                         cmp.s              eax, ecx                                      // 0x005f4cdb    3bc1
                         {disp32} mov       byte ptr [data_bytes + 0x36b8d8], 0x01        // 0x005f4cdd    c605d818d30001
                         {disp32} mov       dword ptr [data_bytes + 0x36b8d0], eax        // 0x005f4ce4    a3d018d300
                         {disp8} jae        _jmp_addr_0x005f4cef                          // 0x005f4ce9    7304
                         test               eax, eax                                      // 0x005f4ceb    85c0
                         {disp8} ja         _jmp_addr_0x005f4d15                          // 0x005f4ced    7726
_jmp_addr_0x005f4cef:    {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005f4cef    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x005f4d20                          // 0x005f4cf4    eb2a
_jmp_addr_0x005f4cf6:    {disp8} lea        eax, dword ptr [esi + 0x01]                   // 0x005f4cf6    8d4601
                         {disp32} mov       dword ptr [data_bytes + 0x36b8dc], eax        // 0x005f4cf9    a3dc18d300
_jmp_addr_0x005f4cfe:    cmp                eax, 0x1d                                     // 0x005f4cfe    83f81d
                         {disp8} je         _jmp_addr_0x005f4d08                          // 0x005f4d01    7405
                         cmp                eax, 0x20                                     // 0x005f4d03    83f820
                         {disp8} jne        _jmp_addr_0x005f4cb7                          // 0x005f4d06    75af
_jmp_addr_0x005f4d08:    cdq                                                              // 0x005f4d08    99
                         mov                ecx, 0x00000022                               // 0x005f4d09    b922000000
                         idiv               ecx                                           // 0x005f4d0e    f7f9
                         inc                edx                                           // 0x005f4d10    42
                         mov.s              eax, edx                                      // 0x005f4d11    8bc2
                         {disp8} jmp        _jmp_addr_0x005f4cfe                          // 0x005f4d13    ebe9
_jmp_addr_0x005f4d15:    lea                edx, dword ptr [eax + eax * 0x2]              // 0x005f4d15    8d1440
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005f4d18    a1a87cd100
                         lea                eax, dword ptr [eax + edx * 0x4]              // 0x005f4d1d    8d0490
_jmp_addr_0x005f4d20:    {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x005f4d20    8b4808
                         push               edi                                           // 0x005f4d23    57
                         push               ecx                                           // 0x005f4d24    51
                         push               0x00d308bc                                    // 0x005f4d25    68bc08d300
                         call               _wcscpy                                       // 0x005f4d2a    e887121d00
                         push               0x00d308bc                                    // 0x005f4d2f    68bc08d300
                         xor.s              edi, edi                                      // 0x005f4d34    33ff
                         call               _wcslen                                       // 0x005f4d36    e827171d00
                         add                esp, 0x0c                                     // 0x005f4d3b    83c40c
                         test               eax, eax                                      // 0x005f4d3e    85c0
                         {disp8} jle        _jmp_addr_0x005f4d9b                          // 0x005f4d40    7e59
_jmp_addr_0x005f4d42:    {disp32} mov       ax, word ptr [edi * 0x2 + 0x00d308bc]         // 0x005f4d42    668b047dbc08d300
                         cmp                ax, 0x0024                                    // 0x005f4d4a    663d2400
                         {disp32} lea       esi, dword ptr [edi * 0x2 + 0x00d308bc]       // 0x005f4d4e    8d347dbc08d300
                         {disp8} je         _jmp_addr_0x005f4d5d                          // 0x005f4d55    7406
                         cmp                ax, 0x005c                                    // 0x005f4d57    663d5c00
                         {disp8} jne        _jmp_addr_0x005f4d89                          // 0x005f4d5b    752c
_jmp_addr_0x005f4d5d:    test               ax, ax                                        // 0x005f4d5d    6685c0
                         {disp8} je         _jmp_addr_0x005f4d89                          // 0x005f4d60    7427
_jmp_addr_0x005f4d62:    xor.s              edx, edx                                      // 0x005f4d62    33d2
                         mov                dx, word ptr [esi]                            // 0x005f4d64    668b16
                         push               edx                                           // 0x005f4d67    52
                         call               _iswspace                                     // 0x005f4d68    e8fb1d1d00
                         add                esp, 0x04                                     // 0x005f4d6d    83c404
                         test               eax, eax                                      // 0x005f4d70    85c0
                         {disp8} jne        _jmp_addr_0x005f4d89                          // 0x005f4d72    7515
                         cmp                word ptr [esi], 0xf8fe                        // 0x005f4d74    66813efef8
                         {disp8} je         _jmp_addr_0x005f4d89                          // 0x005f4d79    740e
                         mov                word ptr [esi], 0x0020                        // 0x005f4d7b    66c7062000
                         add                esi, 0x02                                     // 0x005f4d80    83c602
                         inc                edi                                           // 0x005f4d83    47
                         cmp                word ptr [esi], ax                            // 0x005f4d84    663906
                         {disp8} jne        _jmp_addr_0x005f4d62                          // 0x005f4d87    75d9
_jmp_addr_0x005f4d89:    push               0x00d308bc                                    // 0x005f4d89    68bc08d300
                         inc                edi                                           // 0x005f4d8e    47
                         call               _wcslen                                       // 0x005f4d8f    e8ce161d00
                         add                esp, 0x04                                     // 0x005f4d94    83c404
                         cmp.s              edi, eax                                      // 0x005f4d97    3bf8
                         {disp8} jl         _jmp_addr_0x005f4d42                          // 0x005f4d99    7ca7
_jmp_addr_0x005f4d9b:    call               _jmp_addr_0x007dee00                          // 0x005f4d9b    e860a01e00
                         {disp32} mov       al, byte ptr [data_bytes + 0x22dbad]          // 0x005f4da0    a0ad3bbf00
                         test               al, al                                        // 0x005f4da5    84c0
                         pop                edi                                           // 0x005f4da7    5f
                         {disp32} je        _jmp_addr_0x005f4e32                          // 0x005f4da8    0f8484000000
                         {disp32} mov       esi, dword ptr [__imp__BinkService@4]         // 0x005f4dae    8b3534998a00
_jmp_addr_0x005f4db4:    {disp32} mov       eax, dword ptr [data_bytes + 0x36b8d4]        // 0x005f4db4    a1d418d300
                         {disp8} mov        eax, dword ptr [eax + 0x1c]                   // 0x005f4db9    8b401c
                         test               eax, eax                                      // 0x005f4dbc    85c0
                         {disp8} je         _jmp_addr_0x005f4dc3                          // 0x005f4dbe    7403
                         push               eax                                           // 0x005f4dc0    50
                         call               esi                                           // 0x005f4dc1    ffd6
_jmp_addr_0x005f4dc3:    {disp8} fld        dword ptr [esp + 0x04]                        // 0x005f4dc3    d9442404
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x005f4dc7    d81d90a38a00
                         fnstsw             ax                                            // 0x005f4dcd    dfe0
                         test               ah, 0x41                                      // 0x005f4dcf    f6c441
                         {disp8} jne        _jmp_addr_0x005f4ddc                          // 0x005f4dd2    7508
                         {disp8} mov        dword ptr [esp + 0x04], 0x3f800000            // 0x005f4dd4    c74424040000803f
_jmp_addr_0x005f4ddc:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x005f4ddc    8b442404
                         push               0x0                                           // 0x005f4de0    6a00
                         push               eax                                           // 0x005f4de2    50
                         call               _jmp_addr_0x005f3dc0                          // 0x005f4de3    e8d8efffff
                         {disp32} fild      dword ptr [?g_delta_time@LH3DTech@@2MA]       // 0x005f4de8    db053481c300
                         add                esp, 0x08                                     // 0x005f4dee    83c408
                         push               0x1                                           // 0x005f4df1    6a01
                         {disp32} fmul      dword ptr [_rdata_float0p001]                 // 0x005f4df3    d80db0a38a00
                         mov                ecx, 0x00e85050                               // 0x005f4df9    b95050e800
                         {disp8} fadd       dword ptr [esp + 0x08]                        // 0x005f4dfe    d8442408
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x005f4e02    d95c2408
                         call               _jmp_addr_0x007de090                          // 0x005f4e06    e885921e00
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x005f4e0b    d9442404
                         {disp32} fcomp     qword ptr [__real@8@3fff8000000000000000]   // 0x005f4e0f    dc1d80b68a00
                         fnstsw             ax                                            // 0x005f4e15    dfe0
                         test               ah, 0x01                                      // 0x005f4e17    f6c401
                         {disp8} jne        _jmp_addr_0x005f4db4                          // 0x005f4e1a    7598
                         {disp32} mov       byte ptr [data_bytes + 0x22dbad], 0x00        // 0x005f4e1c    c605ad3bbf0000
                         {disp32} mov       dword ptr [data_bytes + 0x27271c], 0x00000000 // 0x005f4e23    c7051c87c30000000000
                         call               _jmp_addr_0x007dee00                          // 0x005f4e2d    e8ce9f1e00
_jmp_addr_0x005f4e32:    pop                esi                                           // 0x005f4e32    5e
                         pop                ecx                                           // 0x005f4e33    59
                         ret                                                              // 0x005f4e34    c3
                         nop                                                              // 0x005f4e35    90
                         nop                                                              // 0x005f4e36    90
                         nop                                                              // 0x005f4e37    90
                         nop                                                              // 0x005f4e38    90
                         nop                                                              // 0x005f4e39    90
                         nop                                                              // 0x005f4e3a    90
                         nop                                                              // 0x005f4e3b    90
                         nop                                                              // 0x005f4e3c    90
                         nop                                                              // 0x005f4e3d    90
                         nop                                                              // 0x005f4e3e    90
                         nop                                                              // 0x005f4e3f    90
_RenderLoadingFrame__Fb: push               ecx                                           // 0x005f4e40    51
                         {disp32} mov       eax, dword ptr [data_bytes + 0x33b980]        // 0x005f4e41    a18019d000
                         test               eax, eax                                      // 0x005f4e46    85c0
                         {disp32} je        _jmp_addr_0x005f517b                          // 0x005f4e48    0f842d030000
                         {disp32} mov       al, byte ptr [data_bytes + 0x36b8d8]          // 0x005f4e4e    a0d818d300
                         test               al, al                                        // 0x005f4e53    84c0
                         {disp32} je        _jmp_addr_0x005f517b                          // 0x005f4e55    0f8420030000
                         {disp32} mov       al, byte ptr [data_bytes + 0x22dbac]          // 0x005f4e5b    a0ac3bbf00
                         test               al, al                                        // 0x005f4e60    84c0
                         {disp32} je        _jmp_addr_0x005f517b                          // 0x005f4e62    0f8413030000
                         call               dword ptr [__imp__timeGetTime@4]              // 0x005f4e68    ff158c988a00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x36b8c8]        // 0x005f4e6e    8b0dc818d300
                         test               ecx, ecx                                      // 0x005f4e74    85c9
                         {disp8} jne        _jmp_addr_0x005f4e8c                          // 0x005f4e76    7514
                         mov.s              ecx, eax                                      // 0x005f4e78    8bc8
                         {disp32} mov       dword ptr [data_bytes + 0x36bae8], ecx        // 0x005f4e7a    890de81ad300
                         {disp32} mov       dword ptr [data_bytes + 0x36b8c8], 0x00000001 // 0x005f4e80    c705c818d30001000000
                         {disp8} jmp        _jmp_addr_0x005f4e92                          // 0x005f4e8a    eb06
_jmp_addr_0x005f4e8c:    {disp32} mov       ecx, dword ptr [data_bytes + 0x36bae8]        // 0x005f4e8c    8b0de81ad300
_jmp_addr_0x005f4e92:    mov.s              edx, eax                                      // 0x005f4e92    8bd0
                         sub.s              edx, ecx                                      // 0x005f4e94    2bd1
                         cmp                edx, 0x00000096                               // 0x005f4e96    81fa96000000
                         {disp32} jb        _jmp_addr_0x005f517b                          // 0x005f4e9c    0f82d9020000
                         push               esi                                           // 0x005f4ea2    56
                         push               edi                                           // 0x005f4ea3    57
                         {disp32} mov       edi, dword ptr [data_bytes + 0x33b980]        // 0x005f4ea4    8b3d8019d000
                         mov                esi, 0x00000001                               // 0x005f4eaa    be01000000
                         cmp.s              edi, esi                                      // 0x005f4eaf    3bfe
                         {disp8} jne        _jmp_addr_0x005f4ec9                          // 0x005f4eb1    7516
                         cmp                edx, 0x0000015e                               // 0x005f4eb3    81fa5e010000
                         {disp8} jbe        _jmp_addr_0x005f4ec9                          // 0x005f4eb9    760e
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x36b8c8]        // 0x005f4ebb    8b0dc818d300
                         add                ecx, 0x0000015e                               // 0x005f4ec1    81c15e010000
                         {disp8} jmp        _jmp_addr_0x005f4ed5                          // 0x005f4ec7    eb0c
_jmp_addr_0x005f4ec9:    mov.s              edx, eax                                      // 0x005f4ec9    8bd0
                         sub.s              edx, ecx                                      // 0x005f4ecb    2bd1
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x36b8c8]        // 0x005f4ecd    8b0dc818d300
                         add.s              ecx, edx                                      // 0x005f4ed3    03ca
_jmp_addr_0x005f4ed5:    {disp32} mov       dword ptr [data_bytes + 0x36b8c8], ecx        // 0x005f4ed5    890dc818d300
                         mov                ecx, 0x00e85050                               // 0x005f4edb    b95050e800
                         {disp32} mov       dword ptr [data_bytes + 0x36bae8], eax        // 0x005f4ee0    a3e81ad300
                         call               _jmp_addr_0x007ded50                          // 0x005f4ee5    e8669e1e00
                         test               eax, eax                                      // 0x005f4eea    85c0
                         {disp32} jne       _jmp_addr_0x005f513c                          // 0x005f4eec    0f854a020000
                         cmp                dword ptr [data_bytes + 0x33b980], esi        // 0x005f4ef2    39358019d000
                         {disp8} jne        _jmp_addr_0x005f4f1c                          // 0x005f4ef8    7522
                         {disp32} fild      dword ptr [data_bytes + 0x36b8c8]             // 0x005f4efa    db05c818d300
                         push               ecx                                           // 0x005f4f00    51
                         {disp32} fidiv     dword ptr [data_bytes + 0x22dba8]             // 0x005f4f01    da35a83bbf00
                         fstp               dword ptr [esp]                               // 0x005f4f07    d91c24
                         push               0x3f800000                                    // 0x005f4f0a    680000803f
                         call               _jmp_addr_0x005f3dc0                          // 0x005f4f0f    e8aceeffff
                         add                esp, 0x08                                     // 0x005f4f14    83c408
                         {disp32} jmp       _jmp_addr_0x005f513c                          // 0x005f4f17    e920020000
_jmp_addr_0x005f4f1c:    {disp32} mov       eax, dword ptr [data_bytes + 0x36b8c8]        // 0x005f4f1c    a1c818d300
                         cmp                eax, dword ptr [data_bytes + 0x22dbb0]        // 0x005f4f21    3b05b03bbf00
                         {disp32} jle       _jmp_addr_0x005f513c                          // 0x005f4f27    0f8e0f020000
                         call               ?StartFrame@LH3DRender@@SAXXZ                 // 0x005f4f2d    e8aea12300
                         {disp32} mov       eax, dword ptr [data_bytes + 0x36b8c8]        // 0x005f4f32    a1c818d300
                         sub                eax, dword ptr [data_bytes + 0x22dbb0]        // 0x005f4f37    2b05b03bbf00
                         cdq                                                              // 0x005f4f3d    99
                         sub.s              eax, edx                                      // 0x005f4f3e    2bc2
                         sar                eax, 1                                        // 0x005f4f40    d1f8
                         test               eax, eax                                      // 0x005f4f42    85c0
                         {disp8} jle        _jmp_addr_0x005f4f60                          // 0x005f4f44    7e1a
                         cmp                eax, 0x000000ff                               // 0x005f4f46    3dff000000
                         {disp8} jge        _jmp_addr_0x005f4f54                          // 0x005f4f4b    7d07
                         {disp32} mov       dword ptr [data_bytes + 0x2078], eax          // 0x005f4f4d    a378809c00
                         {disp8} jmp        _jmp_addr_0x005f4f6a                          // 0x005f4f52    eb16
_jmp_addr_0x005f4f54:    {disp32} mov       dword ptr [data_bytes + 0x2078], 0x000000ff   // 0x005f4f54    c70578809c00ff000000
                         {disp8} jmp        _jmp_addr_0x005f4f6a                          // 0x005f4f5e    eb0a
_jmp_addr_0x005f4f60:    {disp32} mov       dword ptr [data_bytes + 0x2078], 0x00000000   // 0x005f4f60    c70578809c0000000000
_jmp_addr_0x005f4f6a:    {disp32} mov       esi, dword ptr [data_bytes + 0x4bf058]        // 0x005f4f6a    8b355850e800
                         xor.s              eax, eax                                      // 0x005f4f70    33c0
                         {disp32} mov       ax, word ptr [data_bytes + 0x4bf05a]          // 0x005f4f72    66a15a50e800
                         and                esi, 0x0000ffff                               // 0x005f4f78    81e6ffff0000
                         {disp8} mov        dword ptr [esp + 0x08], esi                   // 0x005f4f7e    89742408
                         {disp8} fild       dword ptr [esp + 0x08]                        // 0x005f4f82    db442408
                         push               ebx                                           // 0x005f4f86    53
                         push               ebp                                           // 0x005f4f87    55
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1ea44]             // 0x005f4f88    d80d447a8c00
                         shr                eax, 1                                        // 0x005f4f8e    d1e8
                         {disp8} lea        edi, dword ptr [eax + -0x1e]                  // 0x005f4f90    8d78e2
                         {disp8} lea        ebp, dword ptr [eax + 0x1e]                   // 0x005f4f93    8d681e
                         call               _jmp_addr_0x007a1400                          // 0x005f4f96    e865c41a00
                         push               0x0                                           // 0x005f4f9b    6a00
                         push               0x0                                           // 0x005f4f9d    6a00
                         push               0x0                                           // 0x005f4f9f    6a00
                         push               0x0                                           // 0x005f4fa1    6a00
                         push               0x9f000000                                    // 0x005f4fa3    680000009f
                         push               0x9f000000                                    // 0x005f4fa8    680000009f
                         {disp8} lea        ecx, dword ptr [edi + -0x0f]                  // 0x005f4fad    8d4ff1
                         push               ecx                                           // 0x005f4fb0    51
                         push               esi                                           // 0x005f4fb1    56
                         push               edi                                           // 0x005f4fb2    57
                         push               -0x1                                          // 0x005f4fb3    6aff
                         mov.s              ebx, eax                                      // 0x005f4fb5    8bd8
                         call               ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z          // 0x005f4fb7    e804e3e1ff
                         push               0x0                                           // 0x005f4fbc    6a00
                         push               0x0                                           // 0x005f4fbe    6a00
                         push               0x0                                           // 0x005f4fc0    6a00
                         push               0x0                                           // 0x005f4fc2    6a00
                         push               0x9f000000                                    // 0x005f4fc4    680000009f
                         push               0x9f000000                                    // 0x005f4fc9    680000009f
                         {disp8} lea        edx, dword ptr [ebp + 0x0f]                   // 0x005f4fce    8d550f
                         push               edx                                           // 0x005f4fd1    52
                         push               esi                                           // 0x005f4fd2    56
                         push               ebp                                           // 0x005f4fd3    55
                         push               -0x1                                          // 0x005f4fd4    6aff
                         call               ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z          // 0x005f4fd6    e8e5e2e1ff
                         add                esp, 0x50                                     // 0x005f4fdb    83c450
                         push               0x0                                           // 0x005f4fde    6a00
                         push               0x0                                           // 0x005f4fe0    6a00
                         push               0xff202020                                    // 0x005f4fe2    68202020ff
                         push               0xff404040                                    // 0x005f4fe7    68404040ff
                         push               0xff404040                                    // 0x005f4fec    68404040ff
                         push               0xff202020                                    // 0x005f4ff1    68202020ff
                         push               ebp                                           // 0x005f4ff6    55
                         push               ebx                                           // 0x005f4ff7    53
                         push               edi                                           // 0x005f4ff8    57
                         push               -0x1                                          // 0x005f4ff9    6aff
                         call               ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z          // 0x005f4ffb    e8c0e2e1ff
                         push               0x0                                           // 0x005f5000    6a00
                         push               0x0                                           // 0x005f5002    6a00
                         push               0xff404040                                    // 0x005f5004    68404040ff
                         push               0xff404040                                    // 0x005f5009    68404040ff
                         push               0xff404040                                    // 0x005f500e    68404040ff
                         push               0xff404040                                    // 0x005f5013    68404040ff
                         mov.s              eax, esi                                      // 0x005f5018    8bc6
                         sub.s              eax, ebx                                      // 0x005f501a    2bc3
                         push               ebp                                           // 0x005f501c    55
                         push               eax                                           // 0x005f501d    50
                         push               edi                                           // 0x005f501e    57
                         push               ebx                                           // 0x005f501f    53
                         {disp8} mov        dword ptr [esp + 0x60], eax                   // 0x005f5020    89442460
                         call               ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z          // 0x005f5024    e897e2e1ff
                         {disp8} mov        eax, dword ptr [esp + 0x60]                   // 0x005f5029    8b442460
                         add                esp, 0x50                                     // 0x005f502d    83c450
                         push               0x0                                           // 0x005f5030    6a00
                         push               0x0                                           // 0x005f5032    6a00
                         push               0xff404040                                    // 0x005f5034    68404040ff
                         push               0xff202020                                    // 0x005f5039    68202020ff
                         push               0xff202020                                    // 0x005f503e    68202020ff
                         push               0xff404040                                    // 0x005f5043    68404040ff
                         push               ebp                                           // 0x005f5048    55
                         push               esi                                           // 0x005f5049    56
                         push               edi                                           // 0x005f504a    57
                         push               eax                                           // 0x005f504b    50
                         call               ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z          // 0x005f504c    e86fe2e1ff
                         push               0x42c80000                                    // 0x005f5051    680000c842
                         push               0x0                                           // 0x005f5056    6a00
                         push               0x0                                           // 0x005f5058    6a00
                         push               0xf0f0f0f0                                    // 0x005f505a    68f0f0f0f0
                         push               edi                                           // 0x005f505f    57
                         push               esi                                           // 0x005f5060    56
                         push               edi                                           // 0x005f5061    57
                         push               -0x1                                          // 0x005f5062    6aff
                         call               ?DrawLine@SetupThing@@SAXHHHHKHMM@Z           // 0x005f5064    e837d5e1ff
                         add                esp, 0x48                                     // 0x005f5069    83c448
                         push               0x42c80000                                    // 0x005f506c    680000c842
                         push               0x0                                           // 0x005f5071    6a00
                         push               0x0                                           // 0x005f5073    6a00
                         push               0xf0f0f0f0                                    // 0x005f5075    68f0f0f0f0
                         push               ebp                                           // 0x005f507a    55
                         push               esi                                           // 0x005f507b    56
                         push               ebp                                           // 0x005f507c    55
                         push               -0x1                                          // 0x005f507d    6aff
                         call               ?DrawLine@SetupThing@@SAXHHHHKHMM@Z           // 0x005f507f    e81cd5e1ff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351cac]        // 0x005f5084    a1ac7cd100
                         add                esp, 0x20                                     // 0x005f5089    83c420
                         cmp                eax, 0x00001a77                               // 0x005f508c    3d771a0000
                         pop                ebp                                           // 0x005f5091    5d
                         pop                ebx                                           // 0x005f5092    5b
                         {disp8} ja         _jmp_addr_0x005f509c                          // 0x005f5093    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005f5095    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x005f50a8                          // 0x005f509a    eb0c
_jmp_addr_0x005f509c:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x005f509c    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x00013d94]             // 0x005f50a2    8d81943d0100
_jmp_addr_0x005f50a8:    {disp8} mov        esi, dword ptr [eax + 0x08]                   // 0x005f50a8    8b7008
                         push               0x0                                           // 0x005f50ab    6a00
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x005f50ad    8d54240c
                         push               0x1                                           // 0x005f50b1    6a01
                         push               edx                                           // 0x005f50b3    52
                         {disp8} mov        byte ptr [esp + 0x14], 0x00                   // 0x005f50b4    c644241400
                         {disp8} mov        byte ptr [esp + 0x15], 0x00                   // 0x005f50b9    c644241500
                         {disp8} mov        byte ptr [esp + 0x16], 0x00                   // 0x005f50be    c644241600
                         {disp8} mov        byte ptr [esp + 0x17], -0x01                  // 0x005f50c3    c6442417ff
                         call               _jmp_addr_0x00407a20                          // 0x005f50c8    e85329e1ff
                         push               eax                                           // 0x005f50cd    50
                         push               esi                                           // 0x005f50ce    56
                         push               0x1                                           // 0x005f50cf    6a01
                         push               0x00000191                                    // 0x005f50d1    6891010000
                         push               0x00000191                                    // 0x005f50d6    6891010000
                         push               0x000002bd                                    // 0x005f50db    68bd020000
                         push               0x000000c9                                    // 0x005f50e0    68c9000000
                         push               0x65                                          // 0x005f50e5    6a65
                         call               ?DrawTextWrap@SetupThing@@SAMHHHHH_NPA_WHPAULH3DColor@@00@Z                 // 0x005f50e7    e864c6e1ff
                         fstp               st(0)                                         // 0x005f50ec    ddd8
                         add                esp, 0x2c                                     // 0x005f50ee    83c42c
                         push               0x0                                           // 0x005f50f1    6a00
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x005f50f3    8d44240c
                         push               0x1                                           // 0x005f50f7    6a01
                         push               eax                                           // 0x005f50f9    50
                         {disp8} mov        byte ptr [esp + 0x14], -0x01                  // 0x005f50fa    c6442414ff
                         {disp8} mov        byte ptr [esp + 0x15], -0x01                  // 0x005f50ff    c6442415ff
                         {disp8} mov        byte ptr [esp + 0x16], -0x01                  // 0x005f5104    c6442416ff
                         {disp8} mov        byte ptr [esp + 0x17], -0x01                  // 0x005f5109    c6442417ff
                         call               _jmp_addr_0x00407a20                          // 0x005f510e    e80d29e1ff
                         push               eax                                           // 0x005f5113    50
                         push               esi                                           // 0x005f5114    56
                         push               0x1                                           // 0x005f5115    6a01
                         push               0x00000190                                    // 0x005f5117    6890010000
                         push               0x00000190                                    // 0x005f511c    6890010000
                         push               0x000002bc                                    // 0x005f5121    68bc020000
                         push               0x000000c8                                    // 0x005f5126    68c8000000
                         push               0x64                                          // 0x005f512b    6a64
                         call               ?DrawTextWrap@SetupThing@@SAMHHHHH_NPA_WHPAULH3DColor@@00@Z                 // 0x005f512d    e81ec6e1ff
                         fstp               st(0)                                         // 0x005f5132    ddd8
                         add                esp, 0x2c                                     // 0x005f5134    83c42c
                         call               ?FinishFrame@LH3DRender@@QAEXXZ               // 0x005f5137    e824a32300
_jmp_addr_0x005f513c:    {disp8} mov        al, byte ptr [esp + 0x10]                     // 0x005f513c    8a442410
                         test               al, al                                        // 0x005f5140    84c0
                         pop                edi                                           // 0x005f5142    5f
                         pop                esi                                           // 0x005f5143    5e
                         {disp8} je         _jmp_addr_0x005f5152                          // 0x005f5144    740c
                         push               0x1                                           // 0x005f5146    6a01
                         mov                ecx, 0x00e85050                               // 0x005f5148    b95050e800
                         call               _jmp_addr_0x007de090                          // 0x005f514d    e83e8f1e00
_jmp_addr_0x005f5152:    {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x005f5152    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x005f5157    8b08
                         push               0x0                                           // 0x005f5159    6a00
                         push               0x3f800000                                    // 0x005f515b    680000803f
                         push               0x0                                           // 0x005f5160    6a00
                         push               0x3                                           // 0x005f5162    6a03
                         push               0x0                                           // 0x005f5164    6a00
                         push               0x0                                           // 0x005f5166    6a00
                         push               eax                                           // 0x005f5168    50
                         call               dword ptr [ecx + 0x28]                        // 0x005f5169    ff5128
                         {disp32} mov       dword ptr [data_bytes + 0x27271c], 0x00000000 // 0x005f516c    c7051c87c30000000000
                         call               _jmp_addr_0x007dee00                          // 0x005f5176    e8859c1e00
_jmp_addr_0x005f517b:    pop                ecx                                           // 0x005f517b    59
                         ret                                                              // 0x005f517c    c3
                         nop                                                              // 0x005f517d    90
                         nop                                                              // 0x005f517e    90
                         nop                                                              // 0x005f517f    90
_globl_ct_0x005f5180:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x005f5180    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x005f5186    b001
                         test               al, cl                                        // 0x005f5188    84c8
                         {disp8} jne        _jmp_addr_0x005f5194                          // 0x005f518a    7508
                         or.s               cl, al                                        // 0x005f518c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x005f518e    880d34c9fa00
_jmp_addr_0x005f5194:    {disp32} jmp       _jmp_addr_0x005f51a0                          // 0x005f5194    e907000000
                         nop                                                              // 0x005f5199    90
                         nop                                                              // 0x005f519a    90
                         nop                                                              // 0x005f519b    90
                         nop                                                              // 0x005f519c    90
                         nop                                                              // 0x005f519d    90
                         nop                                                              // 0x005f519e    90
                         nop                                                              // 0x005f519f    90
_jmp_addr_0x005f51a0:    push               0x00407870                                    // 0x005f51a0    6870784000
                         call               _atexit                                       // 0x005f51a5    e8e7051d00
                         pop                ecx                                           // 0x005f51aa    59
                         ret                                                              // 0x005f51ab    c3
                         nop                                                              // 0x005f51ac    90
                         nop                                                              // 0x005f51ad    90
                         nop                                                              // 0x005f51ae    90
                         nop                                                              // 0x005f51af    90
_globl_ct_0x005f51b0:    {disp32} jmp       _jmp_addr_0x005f51c0                          // 0x005f51b0    e90b000000
                         nop                                                              // 0x005f51b5    90
                         nop                                                              // 0x005f51b6    90
                         nop                                                              // 0x005f51b7    90
                         nop                                                              // 0x005f51b8    90
                         nop                                                              // 0x005f51b9    90
                         nop                                                              // 0x005f51ba    90
                         nop                                                              // 0x005f51bb    90
                         nop                                                              // 0x005f51bc    90
                         nop                                                              // 0x005f51bd    90
                         nop                                                              // 0x005f51be    90
                         nop                                                              // 0x005f51bf    90
_jmp_addr_0x005f51c0:    {disp32} mov       dword ptr [data_bytes + 0x36baf0], 0xffffffff // 0x005f51c0    c705f01ad300ffffffff
                         ret                                                              // 0x005f51ca    c3
                         call               ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                          // 0x005f51cb    e829c6e0ff
_globl_ct_0x005f51d0:    {disp32} jmp       _jmp_addr_0x005f51e0                          // 0x005f51d0    e90b000000
                         nop                                                              // 0x005f51d5    90
                         nop                                                              // 0x005f51d6    90
                         nop                                                              // 0x005f51d7    90
                         nop                                                              // 0x005f51d8    90
                         nop                                                              // 0x005f51d9    90
                         nop                                                              // 0x005f51da    90
                         nop                                                              // 0x005f51db    90
                         nop                                                              // 0x005f51dc    90
                         nop                                                              // 0x005f51dd    90
                         nop                                                              // 0x005f51de    90
                         nop                                                              // 0x005f51df    90
_jmp_addr_0x005f51e0:    {disp32} fld       dword ptr [rdata_bytes + 0x82658]             // 0x005f51e0    d90558b69200
                         {disp32} fmul      dword ptr [rdata_bytes + 0x82654]             // 0x005f51e6    d80d54b69200
                         {disp32} fstp      dword ptr [data_bytes + 0x36baec]             // 0x005f51ec    d91dec1ad300
                         ret                                                              // 0x005f51f2    c3
                         nop                                                              // 0x005f51f3    90
                         nop                                                              // 0x005f51f4    90
                         nop                                                              // 0x005f51f5    90
                         nop                                                              // 0x005f51f6    90
                         nop                                                              // 0x005f51f7    90
                         nop                                                              // 0x005f51f8    90
                         nop                                                              // 0x005f51f9    90
                         nop                                                              // 0x005f51fa    90
                         nop                                                              // 0x005f51fb    90
                         nop                                                              // 0x005f51fc    90
                         nop                                                              // 0x005f51fd    90
                         nop                                                              // 0x005f51fe    90
                         nop                                                              // 0x005f51ff    90
_jmp_addr_0x005f5200:    push               ebx                                           // 0x005f5200    53
                         {disp8} mov        ebx, dword ptr [esp + 0x0c]                   // 0x005f5201    8b5c240c
                         push               ebp                                           // 0x005f5205    55
                         push               esi                                           // 0x005f5206    56
                         or                 ecx, 0xffffffff                               // 0x005f5207    83c9ff
                         push               edi                                           // 0x005f520a    57
                         xor.s              eax, eax                                      // 0x005f520b    33c0
                         xor.s              esi, esi                                      // 0x005f520d    33f6
                         mov.s              edi, ebx                                      // 0x005f520f    8bfb
                         repne scasb                                                      // 0x005f5211    f2ae
                         not                ecx                                           // 0x005f5213    f7d1
                         dec                ecx                                           // 0x005f5215    49
                         test               ecx, ecx                                      // 0x005f5216    85c9
                         {disp8} jle        _jmp_addr_0x005f523b                          // 0x005f5218    7e21
                         {disp8} mov        ebp, dword ptr [esp + 0x14]                   // 0x005f521a    8b6c2414
                         mov.s              edx, ebx                                      // 0x005f521e    8bd3
                         sub.s              ebp, ebx                                      // 0x005f5220    2beb
_jmp_addr_0x005f5222:    mov                al, byte ptr [edx + ebp * 0x1]                // 0x005f5222    8a042a
                         cmp                al, byte ptr [edx]                            // 0x005f5225    3a02
                         {disp8} jne        _jmp_addr_0x005f5248                          // 0x005f5227    751f
                         inc                esi                                           // 0x005f5229    46
                         or                 ecx, 0xffffffff                               // 0x005f522a    83c9ff
                         xor.s              eax, eax                                      // 0x005f522d    33c0
                         inc                edx                                           // 0x005f522f    42
                         mov.s              edi, ebx                                      // 0x005f5230    8bfb
                         repne scasb                                                      // 0x005f5232    f2ae
                         not                ecx                                           // 0x005f5234    f7d1
                         dec                ecx                                           // 0x005f5236    49
                         cmp.s              esi, ecx                                      // 0x005f5237    3bf1
                         {disp8} jl         _jmp_addr_0x005f5222                          // 0x005f5239    7ce7
_jmp_addr_0x005f523b:    {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x005f523b    8b4c2414
                         pop                edi                                           // 0x005f523f    5f
                         {disp8} lea        eax, dword ptr [esi + ecx * 0x1 + 0x01]       // 0x005f5240    8d440e01
                         pop                esi                                           // 0x005f5244    5e
                         pop                ebp                                           // 0x005f5245    5d
                         pop                ebx                                           // 0x005f5246    5b
                         ret                                                              // 0x005f5247    c3
_jmp_addr_0x005f5248:    pop                edi                                           // 0x005f5248    5f
                         pop                esi                                           // 0x005f5249    5e
                         pop                ebp                                           // 0x005f524a    5d
                         xor.s              eax, eax                                      // 0x005f524b    33c0
                         pop                ebx                                           // 0x005f524d    5b
                         ret                                                              // 0x005f524e    c3
                         nop                                                              // 0x005f524f    90
?Init@LobbyBox@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x005f5250    8b44240c
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x005f5254    8b542404
                         push               ebx                                           // 0x005f5258    53
                         push               edi                                           // 0x005f5259    57
                         mov.s              edi, ecx                                      // 0x005f525a    8bf9
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x005f525c    8b4c2410
                         push               eax                                           // 0x005f5260    50
                         push               ecx                                           // 0x005f5261    51
                         push               edx                                           // 0x005f5262    52
                         mov.s              ecx, edi                                      // 0x005f5263    8bcf
                         call               @Init__13DialogBoxBaseFUlUlPFiP8SetupBoxP12SetupControlii_v@20                          // 0x005f5265    e896e1f1ff
                         push               0x4e                                          // 0x005f526a    6a4e
                         push               0x00bf3c38                                    // 0x005f526c    68383cbf00
                         push               0x000002b0                                    // 0x005f5271    68b0020000
                         {disp32} mov       dword ptr [data_bytes + 0x36baf4], edi        // 0x005f5276    893df41ad300
                         call               ___nw__FUl                                    // 0x005f527c    e80f651e00
                         xor.s              ebx, ebx                                      // 0x005f5281    33db
                         add                esp, 0x0c                                     // 0x005f5283    83c40c
                         cmp.s              eax, ebx                                      // 0x005f5286    3bc3
                         {disp8} je         _jmp_addr_0x005f52b8                          // 0x005f5288    742e
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x35a4ac]        // 0x005f528a    8b0dac04d200
                         cmp.s              ecx, ebx                                      // 0x005f5290    3bcb
                         {disp8} je         _jmp_addr_0x005f529e                          // 0x005f5292    740a
                         cmp                dword ptr [ecx + 0x04], ebx                   // 0x005f5294    395904
                         mov                ecx, 0x00000145                               // 0x005f5297    b945010000
                         {disp8} jne        _jmp_addr_0x005f52a3                          // 0x005f529c    7505
_jmp_addr_0x005f529e:    mov                ecx, 0x00000168                               // 0x005f529e    b968010000
_jmp_addr_0x005f52a3:    push               ecx                                           // 0x005f52a3    51
                         push               0x000000c8                                    // 0x005f52a4    68c8000000
                         push               0x50                                          // 0x005f52a9    6a50
                         push               0x28                                          // 0x005f52ab    6a28
                         push               0x1                                           // 0x005f52ad    6a01
                         mov.s              ecx, eax                                      // 0x005f52af    8bc8
                         call               @__ct__9SetupListFiiiii@28                    // 0x005f52b1    e89a51e1ff
                         {disp8} jmp        _jmp_addr_0x005f52ba                          // 0x005f52b6    eb02
_jmp_addr_0x005f52b8:    xor.s              eax, eax                                      // 0x005f52b8    33c0
_jmp_addr_0x005f52ba:    push               ebp                                           // 0x005f52ba    55
                         push               0x4f                                          // 0x005f52bb    6a4f
                         push               0x00bf3c38                                    // 0x005f52bd    68383cbf00
                         push               0x000002b0                                    // 0x005f52c2    68b0020000
                         {disp8} mov        dword ptr [edi + 0x2c], eax                   // 0x005f52c7    89472c
                         call               ___nw__FUl                                    // 0x005f52ca    e8c1641e00
                         add                esp, 0x0c                                     // 0x005f52cf    83c40c
                         cmp.s              eax, ebx                                      // 0x005f52d2    3bc3
                         mov                ebp, 0x00000002                               // 0x005f52d4    bd02000000
                         {disp8} je         _jmp_addr_0x005f52f6                          // 0x005f52d9    741b
                         push               0x00000168                                    // 0x005f52db    6868010000
                         push               0x00000190                                    // 0x005f52e0    6890010000
                         push               0x50                                          // 0x005f52e5    6a50
                         push               0x000000fa                                    // 0x005f52e7    68fa000000
                         push               ebp                                           // 0x005f52ec    55
                         mov.s              ecx, eax                                      // 0x005f52ed    8bc8
                         call               @__ct__9SetupListFiiiii@28                    // 0x005f52ef    e85c51e1ff
                         {disp8} jmp        _jmp_addr_0x005f52f8                          // 0x005f52f4    eb02
_jmp_addr_0x005f52f6:    xor.s              eax, eax                                      // 0x005f52f6    33c0
_jmp_addr_0x005f52f8:    push               0x50                                          // 0x005f52f8    6a50
                         push               0x00bf3c38                                    // 0x005f52fa    68383cbf00
                         push               0x000002b0                                    // 0x005f52ff    68b0020000
                         {disp8} mov        dword ptr [edi + 0x30], eax                   // 0x005f5304    894730
                         call               ___nw__FUl                                    // 0x005f5307    e884641e00
                         add                esp, 0x0c                                     // 0x005f530c    83c40c
                         cmp.s              eax, ebx                                      // 0x005f530f    3bc3
                         {disp8} je         _jmp_addr_0x005f532c                          // 0x005f5311    7419
                         push               0x00000168                                    // 0x005f5313    6868010000
                         push               0x64                                          // 0x005f5318    6a64
                         push               0x50                                          // 0x005f531a    6a50
                         push               0x00000294                                    // 0x005f531c    6894020000
                         push               0x3                                           // 0x005f5321    6a03
                         mov.s              ecx, eax                                      // 0x005f5323    8bc8
                         call               @__ct__9SetupListFiiiii@28                    // 0x005f5325    e82651e1ff
                         {disp8} jmp        _jmp_addr_0x005f532e                          // 0x005f532a    eb02
_jmp_addr_0x005f532c:    xor.s              eax, eax                                      // 0x005f532c    33c0
_jmp_addr_0x005f532e:    push               esi                                           // 0x005f532e    56
                         push               0x51                                          // 0x005f532f    6a51
                         push               0x00bf3c38                                    // 0x005f5331    68383cbf00
                         push               0x00000244                                    // 0x005f5336    6844020000
                         {disp8} mov        dword ptr [edi + 0x34], eax                   // 0x005f533b    894734
                         call               ___nw__FUl                                    // 0x005f533e    e84d641e00
                         mov.s              esi, eax                                      // 0x005f5343    8bf0
                         add                esp, 0x0c                                     // 0x005f5345    83c40c
                         cmp.s              esi, ebx                                      // 0x005f5348    3bf3
                         {disp8} je         _jmp_addr_0x005f5397                          // 0x005f534a    744b
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000dd5 // 0x005f534c    813dac7cd100d50d0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005f5356    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x005f5362                          // 0x005f535b    7605
                         add                eax, 0x0000a5fc                               // 0x005f535d    05fca50000
_jmp_addr_0x005f5362:    {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x005f5362    8b4808
                         push               ecx                                           // 0x005f5365    51
                         push               0x1b                                          // 0x005f5366    6a1b
                         push               0x000000c8                                    // 0x005f5368    68c8000000
                         push               0x32                                          // 0x005f536d    6a32
                         push               0x28                                          // 0x005f536f    6a28
                         push               0x000003e7                                    // 0x005f5371    68e7030000
                         mov.s              ecx, esi                                      // 0x005f5376    8bce
                         call               ??0SetupControl@@QAE@HHHHHPA_W@Z              // 0x005f5378    e8d33ee1ff
                         mov                dword ptr [esi], 0x008ab5c0                   // 0x005f537d    c706c0b58a00
                         {disp32} mov       dword ptr [esi + 0x0000023c], ebp             // 0x005f5383    89ae3c020000
                         {disp32} mov       byte ptr [esi + 0x0000022a], bl               // 0x005f5389    889e2a020000
                         {disp32} mov       dword ptr [esi + 0x00000240], ebx             // 0x005f538f    899e40020000
                         {disp8} jmp        _jmp_addr_0x005f5399                          // 0x005f5395    eb02
_jmp_addr_0x005f5397:    xor.s              esi, esi                                      // 0x005f5397    33f6
_jmp_addr_0x005f5399:    push               0x52                                          // 0x005f5399    6a52
                         push               0x00bf3c38                                    // 0x005f539b    68383cbf00
                         push               0x00000244                                    // 0x005f53a0    6844020000
                         {disp8} mov        dword ptr [edi + 0x6c], esi                   // 0x005f53a5    89776c
                         call               ___nw__FUl                                    // 0x005f53a8    e8e3631e00
                         mov.s              esi, eax                                      // 0x005f53ad    8bf0
                         add                esp, 0x0c                                     // 0x005f53af    83c40c
                         cmp.s              esi, ebx                                      // 0x005f53b2    3bf3
                         {disp8} je         _jmp_addr_0x005f540d                          // 0x005f53b4    7457
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000dd6 // 0x005f53b6    813dac7cd100d60d0000
                         {disp8} ja         _jmp_addr_0x005f53c9                          // 0x005f53c0    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005f53c2    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x005f53d5                          // 0x005f53c7    eb0c
_jmp_addr_0x005f53c9:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x005f53c9    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x0000a608]             // 0x005f53cf    8d8208a60000
_jmp_addr_0x005f53d5:    {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x005f53d5    8b4008
                         push               eax                                           // 0x005f53d8    50
                         push               0x1b                                          // 0x005f53d9    6a1b
                         push               0x00000190                                    // 0x005f53db    6890010000
                         push               0x32                                          // 0x005f53e0    6a32
                         push               0x000000fa                                    // 0x005f53e2    68fa000000
                         push               0x000003e7                                    // 0x005f53e7    68e7030000
                         mov.s              ecx, esi                                      // 0x005f53ec    8bce
                         call               ??0SetupControl@@QAE@HHHHHPA_W@Z              // 0x005f53ee    e85d3ee1ff
                         mov                dword ptr [esi], 0x008ab5c0                   // 0x005f53f3    c706c0b58a00
                         {disp32} mov       dword ptr [esi + 0x0000023c], ebp             // 0x005f53f9    89ae3c020000
                         {disp32} mov       byte ptr [esi + 0x0000022a], bl               // 0x005f53ff    889e2a020000
                         {disp32} mov       dword ptr [esi + 0x00000240], ebx             // 0x005f5405    899e40020000
                         {disp8} jmp        _jmp_addr_0x005f540f                          // 0x005f540b    eb02
_jmp_addr_0x005f540d:    xor.s              esi, esi                                      // 0x005f540d    33f6
_jmp_addr_0x005f540f:    push               0x53                                          // 0x005f540f    6a53
                         push               0x00bf3c38                                    // 0x005f5411    68383cbf00
                         push               0x00000244                                    // 0x005f5416    6844020000
                         {disp8} mov        dword ptr [edi + 0x70], esi                   // 0x005f541b    897770
                         call               ___nw__FUl                                    // 0x005f541e    e86d631e00
                         mov.s              esi, eax                                      // 0x005f5423    8bf0
                         add                esp, 0x0c                                     // 0x005f5425    83c40c
                         cmp.s              esi, ebx                                      // 0x005f5428    3bf3
                         {disp8} je         _jmp_addr_0x005f5480                          // 0x005f542a    7454
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000dd7 // 0x005f542c    813dac7cd100d70d0000
                         {disp8} ja         _jmp_addr_0x005f543f                          // 0x005f5436    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005f5438    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x005f544b                          // 0x005f543d    eb0c
_jmp_addr_0x005f543f:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x005f543f    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x0000a614]             // 0x005f5445    8d8114a60000
_jmp_addr_0x005f544b:    {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x005f544b    8b5008
                         push               edx                                           // 0x005f544e    52
                         push               0x1b                                          // 0x005f544f    6a1b
                         push               0x64                                          // 0x005f5451    6a64
                         push               0x32                                          // 0x005f5453    6a32
                         push               0x00000294                                    // 0x005f5455    6894020000
                         push               0x000003e7                                    // 0x005f545a    68e7030000
                         mov.s              ecx, esi                                      // 0x005f545f    8bce
                         call               ??0SetupControl@@QAE@HHHHHPA_W@Z              // 0x005f5461    e8ea3de1ff
                         mov                dword ptr [esi], 0x008ab5c0                   // 0x005f5466    c706c0b58a00
                         {disp32} mov       dword ptr [esi + 0x0000023c], ebp             // 0x005f546c    89ae3c020000
                         {disp32} mov       byte ptr [esi + 0x0000022a], bl               // 0x005f5472    889e2a020000
                         {disp32} mov       dword ptr [esi + 0x00000240], ebx             // 0x005f5478    899e40020000
                         {disp8} jmp        _jmp_addr_0x005f5482                          // 0x005f547e    eb02
_jmp_addr_0x005f5480:    xor.s              esi, esi                                      // 0x005f5480    33f6
_jmp_addr_0x005f5482:    push               0x57                                          // 0x005f5482    6a57
                         push               0x00bf3c38                                    // 0x005f5484    68383cbf00
                         push               0x00000244                                    // 0x005f5489    6844020000
                         {disp8} mov        dword ptr [edi + 0x74], esi                   // 0x005f548e    897774
                         call               ___nw__FUl                                    // 0x005f5491    e8fa621e00
                         mov.s              esi, eax                                      // 0x005f5496    8bf0
                         add                esp, 0x0c                                     // 0x005f5498    83c40c
                         cmp.s              esi, ebx                                      // 0x005f549b    3bf3
                         {disp8} je         _jmp_addr_0x005f54d1                          // 0x005f549d    7432
                         push               0x00c4cd30                                    // 0x005f549f    6830cdc400
                         push               0x1e                                          // 0x005f54a4    6a1e
                         push               0x0000012c                                    // 0x005f54a6    682c010000
                         push               0x17                                          // 0x005f54ab    6a17
                         push               0x28                                          // 0x005f54ad    6a28
                         push               ebx                                           // 0x005f54af    53
                         mov.s              ecx, esi                                      // 0x005f54b0    8bce
                         call               ??0SetupControl@@QAE@HHHHHPA_W@Z              // 0x005f54b2    e8993de1ff
                         mov                dword ptr [esi], 0x008ab5c0                   // 0x005f54b7    c706c0b58a00
                         {disp32} mov       dword ptr [esi + 0x0000023c], ebx             // 0x005f54bd    899e3c020000
                         {disp32} mov       byte ptr [esi + 0x0000022a], bl               // 0x005f54c3    889e2a020000
                         {disp32} mov       dword ptr [esi + 0x00000240], ebx             // 0x005f54c9    899e40020000
                         {disp8} jmp        _jmp_addr_0x005f54d3                          // 0x005f54cf    eb02
_jmp_addr_0x005f54d1:    xor.s              esi, esi                                      // 0x005f54d1    33f6
_jmp_addr_0x005f54d3:    push               0x5b                                          // 0x005f54d3    6a5b
                         push               0x00bf3c38                                    // 0x005f54d5    68383cbf00
                         push               0x00000468                                    // 0x005f54da    6868040000
                         {disp8} mov        dword ptr [edi + 0x5c], esi                   // 0x005f54df    89775c
                         call               ___nw__FUl                                    // 0x005f54e2    e8a9621e00
                         add                esp, 0x0c                                     // 0x005f54e7    83c40c
                         cmp.s              eax, ebx                                      // 0x005f54ea    3bc3
                         {disp8} je         _jmp_addr_0x005f5513                          // 0x005f54ec    7425
                         push               ebx                                           // 0x005f54ee    53
                         push               0x009cee0c                                    // 0x005f54ef    680cee9c00
                         push               0x1e                                          // 0x005f54f4    6a1e
                         push               0x0000012c                                    // 0x005f54f6    682c010000
                         push               0x0000020d                                    // 0x005f54fb    680d020000
                         push               0x00000096                                    // 0x005f5500    6896000000
                         push               0x000003e6                                    // 0x005f5505    68e6030000
                         mov.s              ecx, eax                                      // 0x005f550a    8bc8
                         call               @__ct__9SetupEditFiiiiiPwi@33                 // 0x005f550c    e80f6de1ff
                         {disp8} jmp        _jmp_addr_0x005f5515                          // 0x005f5511    eb02
_jmp_addr_0x005f5513:    xor.s              eax, eax                                      // 0x005f5513    33c0
_jmp_addr_0x005f5515:    push               0x5e                                          // 0x005f5515    6a5e
                         push               0x00bf3c38                                    // 0x005f5517    68383cbf00
                         {disp8} mov        dword ptr [edi + 0x78], eax                   // 0x005f551c    894778
                         push               0x00000244                                    // 0x005f551f    6844020000
                         {disp8} mov        dword ptr [eax + 0x20], 0x00000010            // 0x005f5524    c7402010000000
                         call               ___nw__FUl                                    // 0x005f552b    e860621e00
                         add                esp, 0x0c                                     // 0x005f5530    83c40c
                         cmp.s              eax, ebx                                      // 0x005f5533    3bc3
                         {disp8} je         _jmp_addr_0x005f5573                          // 0x005f5535    743c
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001a8c // 0x005f5537    813dac7cd1008c1a0000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x005f5541    8b0da87cd100
                         {disp8} jbe        _jmp_addr_0x005f554f                          // 0x005f5547    7606
                         add                ecx, 0x00013e90                               // 0x005f5549    81c1903e0100
_jmp_addr_0x005f554f:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x005f554f    8b4908
                         push               ebx                                           // 0x005f5552    53
                         push               ecx                                           // 0x005f5553    51
                         push               0x1e                                          // 0x005f5554    6a1e
                         push               0x00000096                                    // 0x005f5556    6896000000
                         push               0x0000020d                                    // 0x005f555b    680d020000
                         push               0x000001d6                                    // 0x005f5560    68d6010000
                         push               0x0000029a                                    // 0x005f5565    689a020000
                         mov.s              ecx, eax                                      // 0x005f556a    8bc8
                         call               @__ct__10SetupButtonFiiiiiPwi@36              // 0x005f556c    e83f43e1ff
                         {disp8} jmp        _jmp_addr_0x005f5575                          // 0x005f5571    eb02
_jmp_addr_0x005f5573:    xor.s              eax, eax                                      // 0x005f5573    33c0
_jmp_addr_0x005f5575:    push               0x61                                          // 0x005f5575    6a61
                         push               0x00bf3c38                                    // 0x005f5577    68383cbf00
                         {disp8} mov        dword ptr [edi + 0x1c], eax                   // 0x005f557c    89471c
                         push               0x0000025c                                    // 0x005f557f    685c020000
                         {disp32} mov       dword ptr [eax + 0x00000238], 0x005f59c0      // 0x005f5584    c78038020000c0595f00
                         call               ___nw__FUl                                    // 0x005f558e    e8fd611e00
                         add                esp, 0x0c                                     // 0x005f5593    83c40c
                         cmp.s              eax, ebx                                      // 0x005f5596    3bc3
                         {disp8} je         _jmp_addr_0x005f55d9                          // 0x005f5598    743f
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000d4d // 0x005f559a    813dac7cd1004d0d0000
                         {disp8} ja         _jmp_addr_0x005f55ae                          // 0x005f55a4    7708
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x005f55a6    8b0da87cd100
                         {disp8} jmp        _jmp_addr_0x005f55ba                          // 0x005f55ac    eb0c
_jmp_addr_0x005f55ae:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x005f55ae    8b15a87cd100
                         {disp32} lea       ecx, dword ptr [edx + 0x00009f9c]             // 0x005f55b4    8d8a9c9f0000
_jmp_addr_0x005f55ba:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x005f55ba    8b4908
                         push               0x3                                           // 0x005f55bd    6a03
                         push               0x1                                           // 0x005f55bf    6a01
                         push               0x28                                          // 0x005f55c1    6a28
                         push               ecx                                           // 0x005f55c3    51
                         push               0x00000208                                    // 0x005f55c4    6808020000
                         push               0x000002d0                                    // 0x005f55c9    68d0020000
                         push               0xc                                           // 0x005f55ce    6a0c
                         mov.s              ecx, eax                                      // 0x005f55d0    8bc8
                         call               @__ct__14SetupBigButtonFiiiPwiii@36           // 0x005f55d2    e8897ce1ff
                         {disp8} jmp        _jmp_addr_0x005f55db                          // 0x005f55d7    eb02
_jmp_addr_0x005f55d9:    xor.s              eax, eax                                      // 0x005f55d9    33c0
_jmp_addr_0x005f55db:    push               0x62                                          // 0x005f55db    6a62
                         push               0x00bf3c38                                    // 0x005f55dd    68383cbf00
                         push               0x0000025c                                    // 0x005f55e2    685c020000
                         {disp8} mov        dword ptr [edi + 0x44], eax                   // 0x005f55e7    894744
                         call               ___nw__FUl                                    // 0x005f55ea    e8a1611e00
                         add                esp, 0x0c                                     // 0x005f55ef    83c40c
                         cmp.s              eax, ebx                                      // 0x005f55f2    3bc3
                         {disp8} je         _jmp_addr_0x005f5628                          // 0x005f55f4    7432
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000d7a // 0x005f55f6    813dac7cd1007a0d0000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x005f5600    8b0da87cd100
                         {disp8} jbe        _jmp_addr_0x005f560e                          // 0x005f5606    7606
                         add                ecx, 0x0000a1b8                               // 0x005f5608    81c1b8a10000
_jmp_addr_0x005f560e:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x005f560e    8b4908
                         push               ebp                                           // 0x005f5611    55
                         push               ebx                                           // 0x005f5612    53
                         push               0x28                                          // 0x005f5613    6a28
                         push               ecx                                           // 0x005f5615    51
                         push               0x00000208                                    // 0x005f5616    6808020000
                         push               0x28                                          // 0x005f561b    6a28
                         push               0xe                                           // 0x005f561d    6a0e
                         mov.s              ecx, eax                                      // 0x005f561f    8bc8
                         call               @__ct__14SetupBigButtonFiiiPwiii@36           // 0x005f5621    e83a7ce1ff
                         {disp8} jmp        _jmp_addr_0x005f562a                          // 0x005f5626    eb02
_jmp_addr_0x005f5628:    xor.s              eax, eax                                      // 0x005f5628    33c0
_jmp_addr_0x005f562a:    push               0x66                                          // 0x005f562a    6a66
                         push               0x00bf3c38                                    // 0x005f562c    68383cbf00
                         push               0x00000468                                    // 0x005f5631    6868040000
                         {disp8} mov        dword ptr [edi + 0x54], eax                   // 0x005f5636    894754
                         call               ___nw__FUl                                    // 0x005f5639    e852611e00
                         add                esp, 0x0c                                     // 0x005f563e    83c40c
                         cmp.s              eax, ebx                                      // 0x005f5641    3bc3
                         {disp8} je         _jmp_addr_0x005f5668                          // 0x005f5643    7423
                         push               0x1                                           // 0x005f5645    6a01
                         push               0x00c4cd30                                    // 0x005f5647    6830cdc400
                         push               0x1e                                          // 0x005f564c    6a1e
                         push               0x00000190                                    // 0x005f564e    6890010000
                         push               0x000001e0                                    // 0x005f5653    68e0010000
                         push               0x000000fa                                    // 0x005f5658    68fa000000
                         push               0xa                                           // 0x005f565d    6a0a
                         mov.s              ecx, eax                                      // 0x005f565f    8bc8
                         call               @__ct__9SetupEditFiiiiiPwi@33                 // 0x005f5661    e8ba6be1ff
                         {disp8} jmp        _jmp_addr_0x005f566a                          // 0x005f5666    eb02
_jmp_addr_0x005f5668:    xor.s              eax, eax                                      // 0x005f5668    33c0
_jmp_addr_0x005f566a:    push               0x67                                          // 0x005f566a    6a67
                         push               0x00bf3c38                                    // 0x005f566c    68383cbf00
                         push               0x00000244                                    // 0x005f5671    6844020000
                         {disp8} mov        dword ptr [edi + 0x48], eax                   // 0x005f5676    894748
                         call               ___nw__FUl                                    // 0x005f5679    e812611e00
                         mov.s              esi, eax                                      // 0x005f567e    8bf0
                         add                esp, 0x0c                                     // 0x005f5680    83c40c
                         cmp.s              esi, ebx                                      // 0x005f5683    3bf3
                         {disp8} je         _jmp_addr_0x005f56e1                          // 0x005f5685    745a
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000db2 // 0x005f5687    813dac7cd100b20d0000
                         {disp8} ja         _jmp_addr_0x005f569a                          // 0x005f5691    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005f5693    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x005f56a6                          // 0x005f5698    eb0c
_jmp_addr_0x005f569a:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x005f569a    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x0000a458]             // 0x005f56a0    8d8258a40000
_jmp_addr_0x005f56a6:    {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x005f56a6    8b4008
                         push               eax                                           // 0x005f56a9    50
                         push               0x1e                                          // 0x005f56aa    6a1e
                         push               0x00000190                                    // 0x005f56ac    6890010000
                         push               0x000001c2                                    // 0x005f56b1    68c2010000
                         push               0x000000f8                                    // 0x005f56b6    68f8000000
                         push               0x000003e7                                    // 0x005f56bb    68e7030000
                         mov.s              ecx, esi                                      // 0x005f56c0    8bce
                         call               ??0SetupControl@@QAE@HHHHHPA_W@Z              // 0x005f56c2    e8893be1ff
                         mov                dword ptr [esi], 0x008ab5c0                   // 0x005f56c7    c706c0b58a00
                         {disp32} mov       dword ptr [esi + 0x0000023c], ebp             // 0x005f56cd    89ae3c020000
                         {disp32} mov       byte ptr [esi + 0x0000022a], bl               // 0x005f56d3    889e2a020000
                         {disp32} mov       dword ptr [esi + 0x00000240], ebx             // 0x005f56d9    899e40020000
                         {disp8} jmp        _jmp_addr_0x005f56e3                          // 0x005f56df    eb02
_jmp_addr_0x005f56e1:    xor.s              esi, esi                                      // 0x005f56e1    33f6
_jmp_addr_0x005f56e3:    push               0x6d                                          // 0x005f56e3    6a6d
                         push               0x00bf3c38                                    // 0x005f56e5    68383cbf00
                         push               0x00000244                                    // 0x005f56ea    6844020000
                         {disp8} mov        dword ptr [edi + 0x68], esi                   // 0x005f56ef    897768
                         call               ___nw__FUl                                    // 0x005f56f2    e899601e00
                         add                esp, 0x0c                                     // 0x005f56f7    83c40c
                         cmp.s              eax, ebx                                      // 0x005f56fa    3bc3
                         {disp8} je         _jmp_addr_0x005f5737                          // 0x005f56fc    7439
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001a9c // 0x005f56fe    813dac7cd1009c1a0000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x005f5708    8b0da87cd100
                         {disp8} jbe        _jmp_addr_0x005f5716                          // 0x005f570e    7606
                         add                ecx, 0x00013f50                               // 0x005f5710    81c1503f0100
_jmp_addr_0x005f5716:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x005f5716    8b4908
                         push               ebx                                           // 0x005f5719    53
                         push               ecx                                           // 0x005f571a    51
                         push               0x1e                                          // 0x005f571b    6a1e
                         push               0x00000096                                    // 0x005f571d    6896000000
                         push               0x0000020d                                    // 0x005f5722    680d020000
                         push               0x000001d6                                    // 0x005f5727    68d6010000
                         push               0x10                                          // 0x005f572c    6a10
                         mov.s              ecx, eax                                      // 0x005f572e    8bc8
                         call               @__ct__10SetupButtonFiiiiiPwi@36              // 0x005f5730    e87b41e1ff
                         {disp8} jmp        _jmp_addr_0x005f5739                          // 0x005f5735    eb02
_jmp_addr_0x005f5737:    xor.s              eax, eax                                      // 0x005f5737    33c0
_jmp_addr_0x005f5739:    {disp8} mov        dword ptr [edi + 0x58], eax                   // 0x005f5739    894758
                         {disp32} mov       edx, dword ptr [data_bytes + 0x30b680]        // 0x005f573c    8b158016cd00
                         {disp8} mov        dword ptr [edx + 0x30], 0x00d4f128            // 0x005f5742    c7423028f1d400
                         {disp8} mov        ecx, dword ptr [edi + 0x58]                   // 0x005f5749    8b4f58
                         mov                eax, dword ptr [ecx]                          // 0x005f574c    8b01
                         push               0x1                                           // 0x005f574e    6a01
                         call               dword ptr [eax + 8]                           // 0x005f5750    ff5008
                         {disp8} mov        ecx, dword ptr [edi + 0x1c]                   // 0x005f5753    8b4f1c
                         mov                edx, dword ptr [ecx]                          // 0x005f5756    8b11
                         push               ebx                                           // 0x005f5758    53
                         call               dword ptr [edx + 8]                           // 0x005f5759    ff5208
                         push               0x75                                          // 0x005f575c    6a75
                         push               0x00bf3c38                                    // 0x005f575e    68383cbf00
                         push               0x00000244                                    // 0x005f5763    6844020000
                         call               ___nw__FUl                                    // 0x005f5768    e823601e00
                         add                esp, 0x0c                                     // 0x005f576d    83c40c
                         cmp.s              eax, ebx                                      // 0x005f5770    3bc3
                         {disp8} je         _jmp_addr_0x005f57aa                          // 0x005f5772    7436
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000db0 // 0x005f5774    813dac7cd100b00d0000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x005f577e    8b0da87cd100
                         {disp8} jbe        _jmp_addr_0x005f578c                          // 0x005f5784    7606
                         add                ecx, 0x0000a440                               // 0x005f5786    81c140a40000
_jmp_addr_0x005f578c:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x005f578c    8b4908
                         push               ebx                                           // 0x005f578f    53
                         push               ecx                                           // 0x005f5790    51
                         push               0x1e                                          // 0x005f5791    6a1e
                         push               0x000000c8                                    // 0x005f5793    68c8000000
                         push               0x0000019a                                    // 0x005f5798    689a010000
                         push               0x28                                          // 0x005f579d    6a28
                         push               0x6                                           // 0x005f579f    6a06
                         mov.s              ecx, eax                                      // 0x005f57a1    8bc8
                         call               @__ct__10SetupButtonFiiiiiPwi@36              // 0x005f57a3    e80841e1ff
                         {disp8} jmp        _jmp_addr_0x005f57ac                          // 0x005f57a8    eb02
_jmp_addr_0x005f57aa:    xor.s              eax, eax                                      // 0x005f57aa    33c0
_jmp_addr_0x005f57ac:    push               0x76                                          // 0x005f57ac    6a76
                         push               0x00bf3c38                                    // 0x005f57ae    68383cbf00
                         push               0x00000244                                    // 0x005f57b3    6844020000
                         {disp8} mov        dword ptr [edi + 0x3c], eax                   // 0x005f57b8    89473c
                         call               ___nw__FUl                                    // 0x005f57bb    e8d05f1e00
                         add                esp, 0x0c                                     // 0x005f57c0    83c40c
                         cmp.s              eax, ebx                                      // 0x005f57c3    3bc3
                         mov                ebp, 0x00000db1                               // 0x005f57c5    bdb10d0000
                         {disp8} je         _jmp_addr_0x005f5803                          // 0x005f57ca    7437
                         cmp                dword ptr [data_bytes + 0x351cac], ebp        // 0x005f57cc    392dac7cd100
                         {disp8} ja         _jmp_addr_0x005f57dc                          // 0x005f57d2    7708
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x005f57d4    8b0da87cd100
                         {disp8} jmp        _jmp_addr_0x005f57e8                          // 0x005f57da    eb0c
_jmp_addr_0x005f57dc:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x005f57dc    8b15a87cd100
                         {disp32} lea       ecx, dword ptr [edx + 0x0000a44c]             // 0x005f57e2    8d8a4ca40000
_jmp_addr_0x005f57e8:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x005f57e8    8b4908
                         push               ebx                                           // 0x005f57eb    53
                         push               ecx                                           // 0x005f57ec    51
                         push               0x1e                                          // 0x005f57ed    6a1e
                         push               0x5f                                          // 0x005f57ef    6a5f
                         push               0x000001bd                                    // 0x005f57f1    68bd010000
                         push               0x28                                          // 0x005f57f6    6a28
                         push               0x7                                           // 0x005f57f8    6a07
                         mov.s              ecx, eax                                      // 0x005f57fa    8bc8
                         call               @__ct__10SetupButtonFiiiiiPwi@36              // 0x005f57fc    e8af40e1ff
                         {disp8} jmp        _jmp_addr_0x005f5805                          // 0x005f5801    eb02
_jmp_addr_0x005f5803:    xor.s              eax, eax                                      // 0x005f5803    33c0
_jmp_addr_0x005f5805:    push               0x77                                          // 0x005f5805    6a77
                         push               0x00bf3c38                                    // 0x005f5807    68383cbf00
                         push               0x00000468                                    // 0x005f580c    6868040000
                         {disp8} mov        dword ptr [edi + 0x40], eax                   // 0x005f5811    894740
                         call               ___nw__FUl                                    // 0x005f5814    e8775f1e00
                         add                esp, 0x0c                                     // 0x005f5819    83c40c
                         cmp.s              eax, ebx                                      // 0x005f581c    3bc3
                         {disp8} je         _jmp_addr_0x005f5840                          // 0x005f581e    7420
                         push               0x1                                           // 0x005f5820    6a01
                         push               0x00c4cd30                                    // 0x005f5822    6830cdc400
                         push               0x1e                                          // 0x005f5827    6a1e
                         push               0x5f                                          // 0x005f5829    6a5f
                         push               0x000001bd                                    // 0x005f582b    68bd010000
                         push               0x00000091                                    // 0x005f5830    6891000000
                         push               0x8                                           // 0x005f5835    6a08
                         mov.s              ecx, eax                                      // 0x005f5837    8bc8
                         call               @__ct__9SetupEditFiiiiiPwi@33                 // 0x005f5839    e8e269e1ff
                         {disp8} jmp        _jmp_addr_0x005f5842                          // 0x005f583e    eb02
_jmp_addr_0x005f5840:    xor.s              eax, eax                                      // 0x005f5840    33c0
_jmp_addr_0x005f5842:    push               0x78                                          // 0x005f5842    6a78
                         push               0x00bf3c38                                    // 0x005f5844    68383cbf00
                         push               0x00000468                                    // 0x005f5849    6868040000
                         {disp8} mov        dword ptr [edi + 0x4c], eax                   // 0x005f584e    89474c
                         call               ___nw__FUl                                    // 0x005f5851    e83a5f1e00
                         add                esp, 0x0c                                     // 0x005f5856    83c40c
                         cmp.s              eax, ebx                                      // 0x005f5859    3bc3
                         {disp8} je         _jmp_addr_0x005f587d                          // 0x005f585b    7420
                         push               0x1                                           // 0x005f585d    6a01
                         push               0x00c4cd30                                    // 0x005f585f    6830cdc400
                         push               0x1e                                          // 0x005f5864    6a1e
                         push               0x5f                                          // 0x005f5866    6a5f
                         push               0x000001e0                                    // 0x005f5868    68e0010000
                         push               0x00000091                                    // 0x005f586d    6891000000
                         push               0x9                                           // 0x005f5872    6a09
                         mov.s              ecx, eax                                      // 0x005f5874    8bc8
                         call               @__ct__9SetupEditFiiiiiPwi@33                 // 0x005f5876    e8a569e1ff
                         {disp8} jmp        _jmp_addr_0x005f587f                          // 0x005f587b    eb02
_jmp_addr_0x005f587d:    xor.s              eax, eax                                      // 0x005f587d    33c0
_jmp_addr_0x005f587f:    push               0x7a                                          // 0x005f587f    6a7a
                         push               0x00bf3c38                                    // 0x005f5881    68383cbf00
                         {disp8} mov        dword ptr [edi + 0x50], eax                   // 0x005f5886    894750
                         push               0x00000244                                    // 0x005f5889    6844020000
                         {disp32} mov       byte ptr [eax + 0x00000260], 0x01             // 0x005f588e    c6806002000001
                         call               ___nw__FUl                                    // 0x005f5895    e8f65e1e00
                         mov.s              esi, eax                                      // 0x005f589a    8bf0
                         add                esp, 0x0c                                     // 0x005f589c    83c40c
                         cmp.s              esi, ebx                                      // 0x005f589f    3bf3
                         {disp8} je         _jmp_addr_0x005f58f2                          // 0x005f58a1    744f
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000d84 // 0x005f58a3    813dac7cd100840d0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005f58ad    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x005f58b9                          // 0x005f58b2    7605
                         add                eax, 0x0000a230                               // 0x005f58b4    0530a20000
_jmp_addr_0x005f58b9:    {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x005f58b9    8b4808
                         push               ecx                                           // 0x005f58bc    51
                         push               0x1e                                          // 0x005f58bd    6a1e
                         push               0x64                                          // 0x005f58bf    6a64
                         push               0x000001e0                                    // 0x005f58c1    68e0010000
                         push               0x28                                          // 0x005f58c6    6a28
                         push               0x000003e7                                    // 0x005f58c8    68e7030000
                         mov.s              ecx, esi                                      // 0x005f58cd    8bce
                         call               ??0SetupControl@@QAE@HHHHHPA_W@Z              // 0x005f58cf    e87c39e1ff
                         mov                dword ptr [esi], 0x008ab5c0                   // 0x005f58d4    c706c0b58a00
                         {disp32} mov       dword ptr [esi + 0x0000023c], 0x00000002      // 0x005f58da    c7863c02000002000000
                         {disp32} mov       byte ptr [esi + 0x0000022a], bl               // 0x005f58e4    889e2a020000
                         {disp32} mov       dword ptr [esi + 0x00000240], ebx             // 0x005f58ea    899e40020000
                         {disp8} jmp        _jmp_addr_0x005f58f4                          // 0x005f58f0    eb02
_jmp_addr_0x005f58f2:    xor.s              esi, esi                                      // 0x005f58f2    33f6
_jmp_addr_0x005f58f4:    push               0x7b                                          // 0x005f58f4    6a7b
                         push               0x00bf3c38                                    // 0x005f58f6    68383cbf00
                         push               0x00000244                                    // 0x005f58fb    6844020000
                         {disp8} mov        dword ptr [edi + 0x64], esi                   // 0x005f5900    897764
                         call               ___nw__FUl                                    // 0x005f5903    e8885e1e00
                         add                esp, 0x0c                                     // 0x005f5908    83c40c
                         cmp.s              eax, ebx                                      // 0x005f590b    3bc3
                         pop                esi                                           // 0x005f590d    5e
                         {disp8} je         _jmp_addr_0x005f594a                          // 0x005f590e    743a
                         cmp                dword ptr [data_bytes + 0x351cac], ebp        // 0x005f5910    392dac7cd100
                         {disp8} ja         _jmp_addr_0x005f5920                          // 0x005f5916    7708
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x005f5918    8b0da87cd100
                         {disp8} jmp        _jmp_addr_0x005f592c                          // 0x005f591e    eb0c
_jmp_addr_0x005f5920:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x005f5920    8b15a87cd100
                         {disp32} lea       ecx, dword ptr [edx + 0x0000a44c]             // 0x005f5926    8d8a4ca40000
_jmp_addr_0x005f592c:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x005f592c    8b4908
                         push               ebx                                           // 0x005f592f    53
                         push               ecx                                           // 0x005f5930    51
                         push               0x1e                                          // 0x005f5931    6a1e
                         push               0x000000c8                                    // 0x005f5933    68c8000000
                         push               0x000001e0                                    // 0x005f5938    68e0010000
                         push               0x28                                          // 0x005f593d    6a28
                         push               0x4                                           // 0x005f593f    6a04
                         mov.s              ecx, eax                                      // 0x005f5941    8bc8
                         call               @__ct__10SetupButtonFiiiiiPwi@36              // 0x005f5943    e8683fe1ff
                         {disp8} jmp        _jmp_addr_0x005f594c                          // 0x005f5948    eb02
_jmp_addr_0x005f594a:    xor.s              eax, eax                                      // 0x005f594a    33c0
_jmp_addr_0x005f594c:    push               0x7f                                          // 0x005f594c    6a7f
                         push               0x00bf3c38                                    // 0x005f594e    68383cbf00
                         push               0x00000260                                    // 0x005f5953    6860020000
                         {disp8} mov        dword ptr [edi + 0x38], eax                   // 0x005f5958    894738
                         call               ___nw__FUl                                    // 0x005f595b    e8305e1e00
                         add                esp, 0x0c                                     // 0x005f5960    83c40c
                         cmp.s              eax, ebx                                      // 0x005f5963    3bc3
                         pop                ebp                                           // 0x005f5965    5d
                         {disp8} je         _jmp_addr_0x005f599a                          // 0x005f5966    7432
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000db8 // 0x005f5968    813dac7cd100b80d0000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x005f5972    8b0da87cd100
                         {disp8} jbe        _jmp_addr_0x005f5980                          // 0x005f5978    7606
                         add                ecx, 0x0000a4a0                               // 0x005f597a    81c1a0a40000
_jmp_addr_0x005f5980:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x005f5980    8b4908
                         push               0x14                                          // 0x005f5983    6a14
                         push               ecx                                           // 0x005f5985    51
                         push               ebx                                           // 0x005f5986    53
                         push               ebx                                           // 0x005f5987    53
                         push               0x0000023a                                    // 0x005f5988    683a020000
                         push               0x46                                          // 0x005f598d    6a46
                         push               0xf                                           // 0x005f598f    6a0f
                         mov.s              ecx, eax                                      // 0x005f5991    8bc8
                         call               @__ct__13SetupCheckBoxFiiibiPwi@33            // 0x005f5993    e878b5e1ff
                         {disp8} jmp        _jmp_addr_0x005f599c                          // 0x005f5998    eb02
_jmp_addr_0x005f599a:    xor.s              eax, eax                                      // 0x005f599a    33c0
_jmp_addr_0x005f599c:    {disp32} mov       dword ptr [edi + 0x00000080], eax             // 0x005f599c    898780000000
                         mov                ecx, 0x00000010                               // 0x005f59a2    b910000000
                         {disp8} mov        dword ptr [eax + 0x20], ecx                   // 0x005f59a7    894820
                         {disp32} mov       edx, dword ptr [data_bytes + 0x36baf4]        // 0x005f59aa    8b15f41ad300
                         {disp8} mov        eax, dword ptr [edx + 0x04]                   // 0x005f59b0    8b4204
                         pop                edi                                           // 0x005f59b3    5f
                         {disp32} mov       dword ptr [eax + 0x000000ac], ecx             // 0x005f59b4    8988ac000000
                         pop                ebx                                           // 0x005f59ba    5b
                         ret                0x000c                                        // 0x005f59bb    c20c00
                         nop                                                              // 0x005f59be    90
                         nop                                                              // 0x005f59bf    90
                         {disp32} mov       eax, dword ptr [rdata_bytes + 0x434]          // 0x005f59c0    a134948a00
                         xor.s              ecx, ecx                                      // 0x005f59c5    33c9
                         mov                cl, byte ptr [eax]                            // 0x005f59c7    8a08
                         push               ecx                                           // 0x005f59c9    51
                         call               dword ptr [rdata_bytes + 0x430]               // 0x005f59ca    ff1530948a00
                         add                esp, 0x04                                     // 0x005f59d0    83c404
                         test               al, al                                        // 0x005f59d3    84c0
                         {disp8} jne        _jmp_addr_0x005f5a18                          // 0x005f59d5    7541
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001a9f // 0x005f59d7    813dac7cd1009f1a0000
                         {disp8} ja         _jmp_addr_0x005f59fa                          // 0x005f59e1    7717
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005f59e3    a1a87cd100
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x005f59e8    8b4008
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x005f59eb    8b4c2404
                         push               0x0                                           // 0x005f59ef    6a00
                         push               0x0                                           // 0x005f59f1    6a00
                         push               eax                                           // 0x005f59f3    50
                         call               @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x005f59f4    e897b7e1ff
                         ret                                                              // 0x005f59f9    c3
_jmp_addr_0x005f59fa:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x005f59fa    8b15a87cd100
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x005f5a00    8b4c2404
                         {disp32} lea       eax, dword ptr [edx + 0x00013f74]             // 0x005f5a04    8d82743f0100
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x005f5a0a    8b4008
                         push               0x0                                           // 0x005f5a0d    6a00
                         push               0x0                                           // 0x005f5a0f    6a00
                         push               eax                                           // 0x005f5a11    50
                         call               @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x005f5a12    e879b7e1ff
                         ret                                                              // 0x005f5a17    c3
_jmp_addr_0x005f5a18:    {disp32} mov       ecx, dword ptr [data_bytes + 0x30b670]        // 0x005f5a18    8b0d7016cd00
                         {disp32} mov       dword ptr [ecx + 0x00000090], 0x00000000      // 0x005f5a1e    c7819000000000000000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30b670]        // 0x005f5a28    8b0d7016cd00
                         mov                edx, dword ptr [ecx]                          // 0x005f5a2e    8b11
                         {disp8} jmp        dword ptr [edx + 0xc]                         // 0x005f5a30    ff620c
                         nop                                                              // 0x005f5a33    90
                         nop                                                              // 0x005f5a34    90
                         nop                                                              // 0x005f5a35    90
                         nop                                                              // 0x005f5a36    90
                         nop                                                              // 0x005f5a37    90
                         nop                                                              // 0x005f5a38    90
                         nop                                                              // 0x005f5a39    90
                         nop                                                              // 0x005f5a3a    90
                         nop                                                              // 0x005f5a3b    90
                         nop                                                              // 0x005f5a3c    90
                         nop                                                              // 0x005f5a3d    90
                         nop                                                              // 0x005f5a3e    90
                         nop                                                              // 0x005f5a3f    90
?Destroy@LobbyBox@@UAEXXZ:
                         call               ?Destroy@DialogBoxBase@@UAEXXZ                // 0x005f5a40    e84bdbf1ff
                         {disp32} mov       dword ptr [data_bytes + 0x36baf4], 0x00000000 // 0x005f5a45    c705f41ad30000000000
                         ret                                                              // 0x005f5a4f    c3
?InitControls@LobbyBox@@UAEXXZ:
                         {disp32} mov       eax, dword ptr [data_bytes + 0x36baf4]        // 0x005f5a50    a1f41ad300
                         push               ebx                                           // 0x005f5a55    53
                         push               esi                                           // 0x005f5a56    56
                         push               edi                                           // 0x005f5a57    57
                         mov.s              edi, ecx                                      // 0x005f5a58    8bf9
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x005f5a5a    8b4804
                         {disp32} mov       dword ptr [ecx + 0x000000ac], 0x00000010      // 0x005f5a5d    c781ac00000010000000
                         {disp8} mov        esi, dword ptr [edi + 0x48]                   // 0x005f5a67    8b7748
                         push               0x000000ff                                    // 0x005f5a6a    68ff000000
                         {disp8} lea        ebx, dword ptr [esi + 0x24]                   // 0x005f5a6f    8d5e24
                         push               0x00c4cd30                                    // 0x005f5a72    6830cdc400
                         push               ebx                                           // 0x005f5a77    53
                         call               _wcsncpy                                      // 0x005f5a78    e8a8091d00
                         push               ebx                                           // 0x005f5a7d    53
                         {disp32} mov       word ptr [esi + 0x00000222], 0x0000           // 0x005f5a7e    66c786220200000000
                         call               _wcslen                                       // 0x005f5a87    e8d6091d00
                         {disp32} mov       dword ptr [esi + 0x0000024c], eax             // 0x005f5a8c    89864c020000
                         {disp32} mov       dword ptr [esi + 0x00000254], eax             // 0x005f5a92    898654020000
                         {disp32} mov       dword ptr [esi + 0x00000250], eax             // 0x005f5a98    898650020000
                         {disp32} mov       dword ptr [esi + 0x00000258], 0x00000000      // 0x005f5a9e    c7865802000000000000
                         {disp8} mov        esi, dword ptr [edi + 0x30]                   // 0x005f5aa8    8b7730
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]             // 0x005f5aab    8b8650020000
                         add                esp, 0x10                                     // 0x005f5ab1    83c410
                         test               eax, eax                                      // 0x005f5ab4    85c0
                         {disp8} jle        _jmp_addr_0x005f5acb                          // 0x005f5ab6    7e13
_jmp_addr_0x005f5ab8:    dec                eax                                           // 0x005f5ab8    48
                         push               eax                                           // 0x005f5ab9    50
                         mov.s              ecx, esi                                      // 0x005f5aba    8bce
                         call               @DeleteString__9SetupListFi@12                // 0x005f5abc    e89f52e1ff
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]             // 0x005f5ac1    8b8650020000
                         test               eax, eax                                      // 0x005f5ac7    85c0
                         {disp8} jg         _jmp_addr_0x005f5ab8                          // 0x005f5ac9    7fed
_jmp_addr_0x005f5acb:    mov.s              ecx, edi                                      // 0x005f5acb    8bcf
                         call               _jmp_addr_0x005f80c0                          // 0x005f5acd    e8ee250000
                         {disp8} mov        esi, dword ptr [edi + 0x34]                   // 0x005f5ad2    8b7734
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]             // 0x005f5ad5    8b8650020000
                         test               eax, eax                                      // 0x005f5adb    85c0
                         {disp8} jle        _jmp_addr_0x005f5af2                          // 0x005f5add    7e13
_jmp_addr_0x005f5adf:    dec                eax                                           // 0x005f5adf    48
                         push               eax                                           // 0x005f5ae0    50
                         mov.s              ecx, esi                                      // 0x005f5ae1    8bce
                         call               @DeleteString__9SetupListFi@12                // 0x005f5ae3    e87852e1ff
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]             // 0x005f5ae8    8b8650020000
                         test               eax, eax                                      // 0x005f5aee    85c0
                         {disp8} jg         _jmp_addr_0x005f5adf                          // 0x005f5af0    7fed
_jmp_addr_0x005f5af2:    {disp8} mov        esi, dword ptr [edi + 0x2c]                   // 0x005f5af2    8b772c
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]             // 0x005f5af5    8b8650020000
                         test               eax, eax                                      // 0x005f5afb    85c0
                         {disp8} jle        _jmp_addr_0x005f5b12                          // 0x005f5afd    7e13
_jmp_addr_0x005f5aff:    dec                eax                                           // 0x005f5aff    48
                         push               eax                                           // 0x005f5b00    50
                         mov.s              ecx, esi                                      // 0x005f5b01    8bce
                         call               @DeleteString__9SetupListFi@12                // 0x005f5b03    e85852e1ff
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]             // 0x005f5b08    8b8650020000
                         test               eax, eax                                      // 0x005f5b0e    85c0
                         {disp8} jg         _jmp_addr_0x005f5aff                          // 0x005f5b10    7fed
_jmp_addr_0x005f5b12:    {disp8} mov        esi, dword ptr [edi + 0x30]                   // 0x005f5b12    8b7730
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]             // 0x005f5b15    8b8650020000
                         test               eax, eax                                      // 0x005f5b1b    85c0
                         {disp8} jle        _jmp_addr_0x005f5b32                          // 0x005f5b1d    7e13
_jmp_addr_0x005f5b1f:    dec                eax                                           // 0x005f5b1f    48
                         push               eax                                           // 0x005f5b20    50
                         mov.s              ecx, esi                                      // 0x005f5b21    8bce
                         call               @DeleteString__9SetupListFi@12                // 0x005f5b23    e83852e1ff
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]             // 0x005f5b28    8b8650020000
                         test               eax, eax                                      // 0x005f5b2e    85c0
                         {disp8} jg         _jmp_addr_0x005f5b1f                          // 0x005f5b30    7fed
_jmp_addr_0x005f5b32:    {disp8} mov        ecx, dword ptr [edi + 0x58]                   // 0x005f5b32    8b4f58
                         mov                edx, dword ptr [ecx]                          // 0x005f5b35    8b11
                         push               0x1                                           // 0x005f5b37    6a01
                         call               dword ptr [edx + 8]                           // 0x005f5b39    ff5208
                         {disp8} mov        ecx, dword ptr [edi + 0x1c]                   // 0x005f5b3c    8b4f1c
                         mov                eax, dword ptr [ecx]                          // 0x005f5b3f    8b01
                         push               0x0                                           // 0x005f5b41    6a00
                         call               dword ptr [eax + 8]                           // 0x005f5b43    ff5008
                         pop                edi                                           // 0x005f5b46    5f
                         pop                esi                                           // 0x005f5b47    5e
                         pop                ebx                                           // 0x005f5b48    5b
                         ret                                                              // 0x005f5b49    c3
                         call               dword ptr [rdata_bytes + 0x328]               // 0x005f5b4a    ff1528938a00
_jmp_addr_0x005f5b50:    push               ebp                                           // 0x005f5b50    55
                         push               esi                                           // 0x005f5b51    56
                         mov.s              esi, ecx                                      // 0x005f5b52    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x48]                   // 0x005f5b54    8b4648
                         add                eax, 0x24                                     // 0x005f5b57    83c024
                         push               edi                                           // 0x005f5b5a    57
                         push               eax                                           // 0x005f5b5b    50
                         call               _wcslen                                       // 0x005f5b5c    e801091d00
                         add                esp, 0x04                                     // 0x005f5b61    83c404
                         test               eax, eax                                      // 0x005f5b64    85c0
                         {disp32} jbe       _jmp_addr_0x005f5c91                          // 0x005f5b66    0f8625010000
                         {disp8} mov        ecx, dword ptr [esi + 0x2c]                   // 0x005f5b6c    8b4e2c
                         {disp32} mov       eax, dword ptr [ecx + 0x00000248]             // 0x005f5b6f    8b8148020000
                         test               eax, eax                                      // 0x005f5b75    85c0
                         {disp32} mov       edx, dword ptr [data_bytes + 0x35a4c8]        // 0x005f5b77    8b15c804d200
                         {disp8} jge        _jmp_addr_0x005f5bc6                          // 0x005f5b7d    7d47
                         {disp8} mov        edi, dword ptr [esi + 0x34]                   // 0x005f5b7f    8b7e34
                         {disp32} mov       ebp, dword ptr [edi + 0x00000248]             // 0x005f5b82    8baf48020000
                         test               ebp, ebp                                      // 0x005f5b88    85ed
                         {disp8} jge        _jmp_addr_0x005f5bc6                          // 0x005f5b8a    7d3a
                         test               edx, edx                                      // 0x005f5b8c    85d2
                         {disp8} jne        _jmp_addr_0x005f5bc6                          // 0x005f5b8e    7536
                         {disp8} mov        ecx, dword ptr [esi + 0x48]                   // 0x005f5b90    8b4e48
                         add                ecx, 0x24                                     // 0x005f5b93    83c124
                         push               ecx                                           // 0x005f5b96    51
                         call               _wcslen                                       // 0x005f5b97    e8c6081d00
                         add                esp, 0x04                                     // 0x005f5b9c    83c404
                         {disp8} lea        edx, dword ptr [eax + eax * 0x1 + 0x02]       // 0x005f5b9f    8d540002
                         {disp8} mov        eax, dword ptr [esi + 0x48]                   // 0x005f5ba3    8b4648
                         push               edx                                           // 0x005f5ba6    52
                         add                eax, 0x24                                     // 0x005f5ba7    83c024
                         push               eax                                           // 0x005f5baa    50
                         push               0x0                                           // 0x005f5bab    6a00
                         push               ecx                                           // 0x005f5bad    51
                         mov.s              ecx, esp                                      // 0x005f5bae    8bcc
                         push               0x0                                           // 0x005f5bb0    6a00
                         call               dword ptr [__imp___0LH_USER_ID__QAE_K_Z@4]    // 0x005f5bb2    ff1588968a00
                         call               dword ptr [rdata_bytes + 0x3e4]               // 0x005f5bb8    ff15e4938a00
                         add                esp, 0x10                                     // 0x005f5bbe    83c410
                         {disp32} jmp       _jmp_addr_0x005f5c91                          // 0x005f5bc1    e9cb000000
_jmp_addr_0x005f5bc6:    test               eax, eax                                      // 0x005f5bc6    85c0
                         {disp8} jl         _jmp_addr_0x005f5c1f                          // 0x005f5bc8    7c55
                         test               edx, edx                                      // 0x005f5bca    85d2
                         {disp8} jne        _jmp_addr_0x005f5c27                          // 0x005f5bcc    7559
                         test               eax, eax                                      // 0x005f5bce    85c0
                         {disp8} jl         _jmp_addr_0x005f5be5                          // 0x005f5bd0    7c13
                         cmp                eax, dword ptr [ecx + 0x00000250]             // 0x005f5bd2    3b8150020000
                         {disp8} jge        _jmp_addr_0x005f5be5                          // 0x005f5bd8    7d0b
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000264]             // 0x005f5bda    8b8964020000
                         mov                edi, dword ptr [ecx + eax * 0x4]              // 0x005f5be0    8b3c81
                         {disp8} jmp        _jmp_addr_0x005f5be7                          // 0x005f5be3    eb02
_jmp_addr_0x005f5be5:    xor.s              edi, edi                                      // 0x005f5be5    33ff
_jmp_addr_0x005f5be7:    {disp8} mov        edx, dword ptr [esi + 0x48]                   // 0x005f5be7    8b5648
                         add                edx, 0x24                                     // 0x005f5bea    83c224
                         push               edx                                           // 0x005f5bed    52
                         call               _wcslen                                       // 0x005f5bee    e86f081d00
                         {disp8} mov        ecx, dword ptr [esi + 0x48]                   // 0x005f5bf3    8b4e48
                         add                esp, 0x04                                     // 0x005f5bf6    83c404
                         {disp8} lea        eax, dword ptr [eax + eax * 0x1 + 0x02]       // 0x005f5bf9    8d440002
                         push               eax                                           // 0x005f5bfd    50
                         add                ecx, 0x24                                     // 0x005f5bfe    83c124
                         push               ecx                                           // 0x005f5c01    51
                         add                edi, 0x000000c0                               // 0x005f5c02    81c7c0000000
                         push               edi                                           // 0x005f5c08    57
                         push               ecx                                           // 0x005f5c09    51
                         mov.s              ecx, esp                                      // 0x005f5c0a    8bcc
                         push               0x0                                           // 0x005f5c0c    6a00
                         call               dword ptr [__imp___0LH_USER_ID__QAE_K_Z@4]    // 0x005f5c0e    ff1588968a00
                         call               dword ptr [rdata_bytes + 0x3e4]               // 0x005f5c14    ff15e4938a00
                         add                esp, 0x10                                     // 0x005f5c1a    83c410
                         {disp8} jmp        _jmp_addr_0x005f5c91                          // 0x005f5c1d    eb72
_jmp_addr_0x005f5c1f:    test               edx, edx                                      // 0x005f5c1f    85d2
                         {disp32} je        _jmp_addr_0x005f5cea                          // 0x005f5c21    0f84c3000000
_jmp_addr_0x005f5c27:    {disp8} mov        ecx, dword ptr [esi + 0x34]                   // 0x005f5c27    8b4e34
                         {disp32} mov       eax, dword ptr [ecx + 0x00000248]             // 0x005f5c2a    8b8148020000
                         test               eax, eax                                      // 0x005f5c30    85c0
                         {disp8} jl         _jmp_addr_0x005f5c5d                          // 0x005f5c32    7c29
                         cmp                eax, dword ptr [ecx + 0x00000250]             // 0x005f5c34    3b8150020000
                         {disp8} jge        _jmp_addr_0x005f5c50                          // 0x005f5c3a    7d14
                         {disp32} mov       edx, dword ptr [ecx + 0x00000264]             // 0x005f5c3c    8b9164020000
                         mov                eax, dword ptr [edx + eax * 0x4]              // 0x005f5c42    8b0482
                         {disp32} mov       eax, dword ptr [eax + 0x00000178]             // 0x005f5c45    8b8078010000
                         push               0x0                                           // 0x005f5c4b    6a00
                         push               eax                                           // 0x005f5c4d    50
                         {disp8} jmp        _jmp_addr_0x005f5c6a                          // 0x005f5c4e    eb1a
_jmp_addr_0x005f5c50:    xor.s              eax, eax                                      // 0x005f5c50    33c0
                         {disp32} mov       eax, dword ptr [eax + 0x00000178]             // 0x005f5c52    8b8078010000
                         push               0x0                                           // 0x005f5c58    6a00
                         push               eax                                           // 0x005f5c5a    50
                         {disp8} jmp        _jmp_addr_0x005f5c6a                          // 0x005f5c5b    eb0d
_jmp_addr_0x005f5c5d:    push               0x0                                           // 0x005f5c5d    6a00
                         push               ecx                                           // 0x005f5c5f    51
                         mov.s              ecx, esp                                      // 0x005f5c60    8bcc
                         push               0x0                                           // 0x005f5c62    6a00
                         call               dword ptr [__imp___0LH_USER_ID__QAE_K_Z@4]    // 0x005f5c64    ff1588968a00
_jmp_addr_0x005f5c6a:    {disp8} mov        eax, dword ptr [esi + 0x48]                   // 0x005f5c6a    8b4648
                         add                eax, 0x24                                     // 0x005f5c6d    83c024
                         push               eax                                           // 0x005f5c70    50
                         call               _wcslen                                       // 0x005f5c71    e8ec071d00
                         {disp8} mov        edx, dword ptr [esi + 0x48]                   // 0x005f5c76    8b5648
                         add                esp, 0x04                                     // 0x005f5c79    83c404
                         {disp8} lea        ecx, dword ptr [eax + eax * 0x1 + 0x02]       // 0x005f5c7c    8d4c0002
                         push               ecx                                           // 0x005f5c80    51
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x35a4c8]        // 0x005f5c81    8b0dc804d200
                         add                edx, 0x24                                     // 0x005f5c87    83c224
                         push               edx                                           // 0x005f5c8a    52
                         call               dword ptr [rdata_bytes + 0x68c]               // 0x005f5c8b    ff158c968a00
_jmp_addr_0x005f5c91:    {disp8} mov        eax, dword ptr [esi + 0x2c]                   // 0x005f5c91    8b462c
                         or                 ecx, 0xffffffff                               // 0x005f5c94    83c9ff
                         {disp32} mov       dword ptr [eax + 0x00000248], ecx             // 0x005f5c97    898848020000
                         {disp8} mov        eax, dword ptr [esi + 0x34]                   // 0x005f5c9d    8b4634
                         {disp32} mov       dword ptr [eax + 0x00000248], ecx             // 0x005f5ca0    898848020000
                         {disp8} mov        esi, dword ptr [esi + 0x48]                   // 0x005f5ca6    8b7648
                         push               0x000000ff                                    // 0x005f5ca9    68ff000000
                         {disp8} lea        edi, dword ptr [esi + 0x24]                   // 0x005f5cae    8d7e24
                         push               0x00c4cd30                                    // 0x005f5cb1    6830cdc400
                         push               edi                                           // 0x005f5cb6    57
                         call               _wcsncpy                                      // 0x005f5cb7    e869071d00
                         push               edi                                           // 0x005f5cbc    57
                         {disp32} mov       word ptr [esi + 0x00000222], 0x0000           // 0x005f5cbd    66c786220200000000
                         call               _wcslen                                       // 0x005f5cc6    e897071d00
                         add                esp, 0x10                                     // 0x005f5ccb    83c410
                         {disp32} mov       dword ptr [esi + 0x0000024c], eax             // 0x005f5cce    89864c020000
                         {disp32} mov       dword ptr [esi + 0x00000254], eax             // 0x005f5cd4    898654020000
                         {disp32} mov       dword ptr [esi + 0x00000250], eax             // 0x005f5cda    898650020000
                         {disp32} mov       dword ptr [esi + 0x00000258], 0x00000000      // 0x005f5ce0    c7865802000000000000
_jmp_addr_0x005f5cea:    pop                edi                                           // 0x005f5cea    5f
                         pop                esi                                           // 0x005f5ceb    5e
                         pop                ebp                                           // 0x005f5cec    5d
                         ret                                                              // 0x005f5ced    c3
                         nop                                                              // 0x005f5cee    90
                         nop                                                              // 0x005f5cef    90
_jmp_addr_0x005f5cf0:    sub                esp, 0x14                                     // 0x005f5cf0    83ec14
                         push               ebx                                           // 0x005f5cf3    53
                         xor.s              ebx, ebx                                      // 0x005f5cf4    33db
                         push               esi                                           // 0x005f5cf6    56
                         mov.s              esi, ecx                                      // 0x005f5cf7    8bf1
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x005f5cf9    8d4c2408
                         {disp8} mov        dword ptr [esp + 0x0c], ebx                   // 0x005f5cfd    895c240c
                         {disp8} mov        dword ptr [esp + 0x08], ebx                   // 0x005f5d01    895c2408
                         {disp8} mov        byte ptr [esp + 0x10], bl                     // 0x005f5d05    885c2410
                         {disp8} mov        dword ptr [esp + 0x15], ebx                   // 0x005f5d09    895c2415
                         call               _jmp_addr_0x00713b70                          // 0x005f5d0d    e85ede1100
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x005f5d12    8d4c2408
                         call               _jmp_addr_0x00713cc0                          // 0x005f5d16    e8a5df1100
                         push               ebx                                           // 0x005f5d1b    53
                         push               eax                                           // 0x005f5d1c    50
                         push               0x0092b66c                                    // 0x005f5d1d    686cb69200
                         mov.s              ecx, esi                                      // 0x005f5d22    8bce
                         call               _jmp_addr_0x005f5da0                          // 0x005f5d24    e877000000
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x005f5d29    8b4c2408
                         cmp.s              ecx, ebx                                      // 0x005f5d2d    3bcb
                         {disp8} je         _jmp_addr_0x005f5d84                          // 0x005f5d2f    7453
                         push               ebp                                           // 0x005f5d31    55
                         push               edi                                           // 0x005f5d32    57
_jmp_addr_0x005f5d33:    {disp8} mov        ebp, dword ptr [ecx + 0x04]                   // 0x005f5d33    8b6904
                         xor.s              edi, edi                                      // 0x005f5d36    33ff
                         cmp.s              ecx, ebx                                      // 0x005f5d38    3bcb
                         mov.s              eax, ecx                                      // 0x005f5d3a    8bc1
                         {disp8} je         _jmp_addr_0x005f5d71                          // 0x005f5d3c    7433
_jmp_addr_0x005f5d3e:    cmp                dword ptr [eax + 0x04], ebp                   // 0x005f5d3e    396804
                         mov                esi, dword ptr [eax]                          // 0x005f5d41    8b30
                         {disp8} jne        _jmp_addr_0x005f5d69                          // 0x005f5d43    7524
                         cmp.s              eax, ecx                                      // 0x005f5d45    3bc1
                         {disp8} jne        _jmp_addr_0x005f5d4f                          // 0x005f5d47    7506
                         {disp8} mov        dword ptr [esp + 0x10], esi                   // 0x005f5d49    89742410
                         {disp8} jmp        _jmp_addr_0x005f5d51                          // 0x005f5d4d    eb02
_jmp_addr_0x005f5d4f:    mov                dword ptr [edi], esi                          // 0x005f5d4f    8937
_jmp_addr_0x005f5d51:    {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x005f5d51    8b542414
                         dec                edx                                           // 0x005f5d55    4a
                         push               eax                                           // 0x005f5d56    50
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x005f5d57    89542418
                         call               ??3@YAXPAX@Z                                  // 0x005f5d5b    e838911b00
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x005f5d60    8b4c2414
                         add                esp, 0x04                                     // 0x005f5d64    83c404
                         {disp8} jmp        _jmp_addr_0x005f5d6b                          // 0x005f5d67    eb02
_jmp_addr_0x005f5d69:    mov.s              edi, eax                                      // 0x005f5d69    8bf8
_jmp_addr_0x005f5d6b:    cmp.s              esi, ebx                                      // 0x005f5d6b    3bf3
                         mov.s              eax, esi                                      // 0x005f5d6d    8bc6
                         {disp8} jne        _jmp_addr_0x005f5d3e                          // 0x005f5d6f    75cd
_jmp_addr_0x005f5d71:    push               ebp                                           // 0x005f5d71    55
                         call               ??3@YAXPAX@Z                                  // 0x005f5d72    e821911b00
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x005f5d77    8b4c2414
                         add                esp, 0x04                                     // 0x005f5d7b    83c404
                         cmp.s              ecx, ebx                                      // 0x005f5d7e    3bcb
                         {disp8} jne        _jmp_addr_0x005f5d33                          // 0x005f5d80    75b1
                         pop                edi                                           // 0x005f5d82    5f
                         pop                ebp                                           // 0x005f5d83    5d
_jmp_addr_0x005f5d84:    {disp8} mov        eax, dword ptr [esp + 0x15]                   // 0x005f5d84    8b442415
                         pop                esi                                           // 0x005f5d88    5e
                         cmp.s              eax, ebx                                      // 0x005f5d89    3bc3
                         pop                ebx                                           // 0x005f5d8b    5b
                         {disp8} je         _jmp_addr_0x005f5d97                          // 0x005f5d8c    7409
                         push               eax                                           // 0x005f5d8e    50
                         call               ??3@YAXPAX@Z                                  // 0x005f5d8f    e804911b00
                         add                esp, 0x04                                     // 0x005f5d94    83c404
_jmp_addr_0x005f5d97:    add                esp, 0x14                                     // 0x005f5d97    83c414
                         ret                                                              // 0x005f5d9a    c3
                         call               ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                          // 0x005f5d9b    e859bae0ff
_jmp_addr_0x005f5da0:    push               ebx                                           // 0x005f5da0    53
                         push               ebp                                           // 0x005f5da1    55
                         {disp8} mov        ebp, dword ptr [esp + 0x10]                   // 0x005f5da2    8b6c2410
                         push               esi                                           // 0x005f5da6    56
                         or                 ecx, 0xffffffff                               // 0x005f5da7    83c9ff
                         push               edi                                           // 0x005f5daa    57
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x005f5dab    8b7c2414
                         xor.s              eax, eax                                      // 0x005f5daf    33c0
                         repne scasb                                                      // 0x005f5db1    f2ae
                         not                ecx                                           // 0x005f5db3    f7d1
                         dec                ecx                                           // 0x005f5db5    49
                         test               ebp, ebp                                      // 0x005f5db6    85ed
                         mov.s              esi, ecx                                      // 0x005f5db8    8bf1
                         {disp8} je         _jmp_addr_0x005f5dc8                          // 0x005f5dba    740c
                         or                 ecx, 0xffffffff                               // 0x005f5dbc    83c9ff
                         mov.s              edi, ebp                                      // 0x005f5dbf    8bfd
                         repne scasb                                                      // 0x005f5dc1    f2ae
                         not                ecx                                           // 0x005f5dc3    f7d1
                         dec                ecx                                           // 0x005f5dc5    49
                         add.s              esi, ecx                                      // 0x005f5dc6    03f1
_jmp_addr_0x005f5dc8:    {disp8} mov        edi, dword ptr [esp + 0x1c]                   // 0x005f5dc8    8b7c241c
                         test               edi, edi                                      // 0x005f5dcc    85ff
                         {disp8} je         _jmp_addr_0x005f5ddc                          // 0x005f5dce    740c
                         or                 ecx, 0xffffffff                               // 0x005f5dd0    83c9ff
                         xor.s              eax, eax                                      // 0x005f5dd3    33c0
                         repne scasb                                                      // 0x005f5dd5    f2ae
                         not                ecx                                           // 0x005f5dd7    f7d1
                         dec                ecx                                           // 0x005f5dd9    49
                         add.s              esi, ecx                                      // 0x005f5dda    03f1
_jmp_addr_0x005f5ddc:    push               0x000000d3                                    // 0x005f5ddc    68d3000000
                         add                esi, 0x0a                                     // 0x005f5de1    83c60a
                         push               0x00bf3c38                                    // 0x005f5de4    68383cbf00
                         push               esi                                           // 0x005f5de9    56
                         call               ___nw__FUl                                    // 0x005f5dea    e8a1591e00
                         mov.s              ebx, eax                                      // 0x005f5def    8bd8
                         mov.s              ecx, esi                                      // 0x005f5df1    8bce
                         mov.s              edx, ecx                                      // 0x005f5df3    8bd1
                         shr                ecx, 2                                        // 0x005f5df5    c1e902
                         xor.s              eax, eax                                      // 0x005f5df8    33c0
                         mov.s              edi, ebx                                      // 0x005f5dfa    8bfb
                         rep stosd                                                        // 0x005f5dfc    f3ab
                         mov.s              ecx, edx                                      // 0x005f5dfe    8bca
                         and                ecx, 0x03                                     // 0x005f5e00    83e103
                         add                esp, 0x0c                                     // 0x005f5e03    83c40c
                         test               ebp, ebp                                      // 0x005f5e06    85ed
                         rep stosb                                                        // 0x005f5e08    f3aa
                         {disp8} je         _jmp_addr_0x005f5e47                          // 0x005f5e0a    743b
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x005f5e0c    8b44241c
                         test               eax, eax                                      // 0x005f5e10    85c0
                         {disp8} je         _jmp_addr_0x005f5e2f                          // 0x005f5e12    741b
                         push               eax                                           // 0x005f5e14    50
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x005f5e15    8b442418
                         push               0x3a                                          // 0x005f5e19    6a3a
                         push               ebp                                           // 0x005f5e1b    55
                         push               0x3a                                          // 0x005f5e1c    6a3a
                         push               eax                                           // 0x005f5e1e    50
                         push               0x00beff90                                    // 0x005f5e1f    6890ffbe00
                         push               ebx                                           // 0x005f5e24    53
                         call               _sprintf                                      // 0x005f5e25    e8a8f91c00
                         add                esp, 0x1c                                     // 0x005f5e2a    83c41c
                         {disp8} jmp        _jmp_addr_0x005f5e68                          // 0x005f5e2d    eb39
_jmp_addr_0x005f5e2f:    {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x005f5e2f    8b4c2414
                         push               ebp                                           // 0x005f5e33    55
                         push               0x3a                                          // 0x005f5e34    6a3a
                         push               ecx                                           // 0x005f5e36    51
                         push               0x00beff88                                    // 0x005f5e37    6888ffbe00
                         push               ebx                                           // 0x005f5e3c    53
                         call               _sprintf                                      // 0x005f5e3d    e890f91c00
                         add                esp, 0x14                                     // 0x005f5e42    83c414
                         {disp8} jmp        _jmp_addr_0x005f5e68                          // 0x005f5e45    eb21
_jmp_addr_0x005f5e47:    {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x005f5e47    8b7c2414
                         or                 ecx, 0xffffffff                               // 0x005f5e4b    83c9ff
                         xor.s              eax, eax                                      // 0x005f5e4e    33c0
                         repne scasb                                                      // 0x005f5e50    f2ae
                         not                ecx                                           // 0x005f5e52    f7d1
                         sub.s              edi, ecx                                      // 0x005f5e54    2bf9
                         mov.s              edx, ecx                                      // 0x005f5e56    8bd1
                         mov.s              esi, edi                                      // 0x005f5e58    8bf7
                         shr                ecx, 2                                        // 0x005f5e5a    c1e902
                         mov.s              edi, ebx                                      // 0x005f5e5d    8bfb
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x005f5e5f    f3a5
                         mov.s              ecx, edx                                      // 0x005f5e61    8bca
                         and                ecx, 0x03                                     // 0x005f5e63    83e103
                         rep movsb                                                        // 0x005f5e66    f3a4
_jmp_addr_0x005f5e68:    push               0x0                                           // 0x005f5e68    6a00
                         push               ecx                                           // 0x005f5e6a    51
                         mov.s              ecx, esp                                      // 0x005f5e6b    8bcc
                         push               0x0                                           // 0x005f5e6d    6a00
                         call               dword ptr [__imp___0LH_USER_ID__QAE_K_Z@4]    // 0x005f5e6f    ff1588968a00
                         or                 ecx, 0xffffffff                               // 0x005f5e75    83c9ff
                         xor.s              eax, eax                                      // 0x005f5e78    33c0
                         mov.s              edi, ebx                                      // 0x005f5e7a    8bfb
                         repne scasb                                                      // 0x005f5e7c    f2ae
                         not                ecx                                           // 0x005f5e7e    f7d1
                         dec                ecx                                           // 0x005f5e80    49
                         {disp8} lea        eax, dword ptr [ecx + ecx * 0x1 + 0x02]       // 0x005f5e81    8d440902
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x35a4c8]        // 0x005f5e85    8b0dc804d200
                         push               eax                                           // 0x005f5e8b    50
                         push               ebx                                           // 0x005f5e8c    53
                         call               dword ptr [rdata_bytes + 0x68c]               // 0x005f5e8d    ff158c968a00
                         push               ebx                                           // 0x005f5e93    53
                         call               ??3@YAXPAX@Z                                  // 0x005f5e94    e8ff8f1b00
                         add                esp, 0x04                                     // 0x005f5e99    83c404
                         pop                edi                                           // 0x005f5e9c    5f
                         pop                esi                                           // 0x005f5e9d    5e
                         pop                ebp                                           // 0x005f5e9e    5d
                         pop                ebx                                           // 0x005f5e9f    5b
                         ret                0x000c                                        // 0x005f5ea0    c20c00
                         nop                                                              // 0x005f5ea3    90
                         nop                                                              // 0x005f5ea4    90
                         nop                                                              // 0x005f5ea5    90
                         nop                                                              // 0x005f5ea6    90
                         nop                                                              // 0x005f5ea7    90
                         nop                                                              // 0x005f5ea8    90
                         nop                                                              // 0x005f5ea9    90
                         nop                                                              // 0x005f5eaa    90
                         nop                                                              // 0x005f5eab    90
                         nop                                                              // 0x005f5eac    90
                         nop                                                              // 0x005f5ead    90
                         nop                                                              // 0x005f5eae    90
                         nop                                                              // 0x005f5eaf    90
_jmp_addr_0x005f5eb0:    push               esi                                           // 0x005f5eb0    56
                         push               edi                                           // 0x005f5eb1    57
                         mov.s              edi, ecx                                      // 0x005f5eb2    8bf9
                         {disp8} mov        eax, dword ptr [edi + 0x34]                   // 0x005f5eb4    8b4734
                         {disp32} mov       ecx, dword ptr [eax + 0x00000250]             // 0x005f5eb7    8b8850020000
                         xor.s              esi, esi                                      // 0x005f5ebd    33f6
                         test               ecx, ecx                                      // 0x005f5ebf    85c9
                         {disp32} jle       _jmp_addr_0x005f5fa2                          // 0x005f5ec1    0f8edb000000
_jmp_addr_0x005f5ec7:    test               esi, esi                                      // 0x005f5ec7    85f6
                         {disp8} jl         _jmp_addr_0x005f5f0d                          // 0x005f5ec9    7c42
                         cmp                esi, dword ptr [eax + 0x00000250]             // 0x005f5ecb    3bb050020000
                         {disp8} jge        _jmp_addr_0x005f5f0d                          // 0x005f5ed1    7d3a
                         {disp32} mov       ecx, dword ptr [eax + 0x00000260]             // 0x005f5ed3    8b8860020000
                         mov                ecx, dword ptr [ecx + esi * 0x4]              // 0x005f5ed9    8b0cb1
                         test               ecx, ecx                                      // 0x005f5edc    85c9
                         {disp8} je         _jmp_addr_0x005f5f0d                          // 0x005f5ede    742d
                         {disp8} mov        dl, byte ptr [ecx + 0x08]                     // 0x005f5ee0    8a5108
                         test               dl, dl                                        // 0x005f5ee3    84d2
                         {disp8} je         _jmp_addr_0x005f5f0d                          // 0x005f5ee5    7426
                         test               esi, esi                                      // 0x005f5ee7    85f6
                         {disp32} jl        _jmp_addr_0x005f5f90                          // 0x005f5ee9    0f8ca1000000
                         cmp                esi, dword ptr [eax + 0x00000250]             // 0x005f5eef    3bb050020000
                         {disp32} jge       _jmp_addr_0x005f5f90                          // 0x005f5ef5    0f8d95000000
                         {disp32} mov       edx, dword ptr [eax + 0x00000268]             // 0x005f5efb    8b9068020000
                         mov                dword ptr [edx + esi * 0x4], 0x000000ff       // 0x005f5f01    c704b2ff000000
                         {disp32} jmp       _jmp_addr_0x005f5f90                          // 0x005f5f08    e983000000
_jmp_addr_0x005f5f0d:    {disp32} mov       cl, byte ptr [data_bytes + 0x38951c]          // 0x005f5f0d    8a0d1cf5d400
                         test               cl, cl                                        // 0x005f5f13    84c9
                         {disp8} je         _jmp_addr_0x005f5f77                          // 0x005f5f15    7460
                         test               esi, esi                                      // 0x005f5f17    85f6
                         {disp8} jl         _jmp_addr_0x005f5f90                          // 0x005f5f19    7c75
                         cmp                esi, dword ptr [eax + 0x00000250]             // 0x005f5f1b    3bb050020000
                         {disp8} jge        _jmp_addr_0x005f5f90                          // 0x005f5f21    7d6d
                         {disp32} mov       eax, dword ptr [eax + 0x00000260]             // 0x005f5f23    8b8060020000
                         mov                ecx, dword ptr [eax + esi * 0x4]              // 0x005f5f29    8b0cb0
                         test               ecx, ecx                                      // 0x005f5f2c    85c9
                         {disp8} je         _jmp_addr_0x005f5f90                          // 0x005f5f2e    7460
                         push               0x00d4f1f0                                    // 0x005f5f30    68f0f1d400
                         call               _jmp_addr_0x00713a80                          // 0x005f5f35    e846db1100
                         test               al, al                                        // 0x005f5f3a    84c0
                         {disp8} mov        eax, dword ptr [edi + 0x34]                   // 0x005f5f3c    8b4734
                         {disp8} je         _jmp_addr_0x005f5f5c                          // 0x005f5f3f    741b
                         test               esi, esi                                      // 0x005f5f41    85f6
                         {disp8} jl         _jmp_addr_0x005f5f90                          // 0x005f5f43    7c4b
                         cmp                esi, dword ptr [eax + 0x00000250]             // 0x005f5f45    3bb050020000
                         {disp8} jge        _jmp_addr_0x005f5f90                          // 0x005f5f4b    7d43
                         {disp32} mov       ecx, dword ptr [eax + 0x00000268]             // 0x005f5f4d    8b8868020000
                         mov                dword ptr [ecx + esi * 0x4], 0x0000ff00       // 0x005f5f53    c704b100ff0000
                         {disp8} jmp        _jmp_addr_0x005f5f90                          // 0x005f5f5a    eb34
_jmp_addr_0x005f5f5c:    test               esi, esi                                      // 0x005f5f5c    85f6
                         {disp8} jl         _jmp_addr_0x005f5f90                          // 0x005f5f5e    7c30
                         cmp                esi, dword ptr [eax + 0x00000250]             // 0x005f5f60    3bb050020000
                         {disp8} jge        _jmp_addr_0x005f5f90                          // 0x005f5f66    7d28
                         {disp32} mov       edx, dword ptr [eax + 0x00000268]             // 0x005f5f68    8b9068020000
                         mov                dword ptr [edx + esi * 0x4], 0x00ff0000       // 0x005f5f6e    c704b20000ff00
                         {disp8} jmp        _jmp_addr_0x005f5f90                          // 0x005f5f75    eb19
_jmp_addr_0x005f5f77:    test               esi, esi                                      // 0x005f5f77    85f6
                         {disp8} jl         _jmp_addr_0x005f5f90                          // 0x005f5f79    7c15
                         cmp                esi, dword ptr [eax + 0x00000250]             // 0x005f5f7b    3bb050020000
                         {disp8} jge        _jmp_addr_0x005f5f90                          // 0x005f5f81    7d0d
                         {disp32} mov       eax, dword ptr [eax + 0x00000268]             // 0x005f5f83    8b8068020000
                         mov                dword ptr [eax + esi * 0x4], 0x0000ff00       // 0x005f5f89    c704b000ff0000
_jmp_addr_0x005f5f90:    {disp8} mov        eax, dword ptr [edi + 0x34]                   // 0x005f5f90    8b4734
                         {disp32} mov       ecx, dword ptr [eax + 0x00000250]             // 0x005f5f93    8b8850020000
                         inc                esi                                           // 0x005f5f99    46
                         cmp.s              esi, ecx                                      // 0x005f5f9a    3bf1
                         {disp32} jl        _jmp_addr_0x005f5ec7                          // 0x005f5f9c    0f8c25ffffff
_jmp_addr_0x005f5fa2:    pop                edi                                           // 0x005f5fa2    5f
                         pop                esi                                           // 0x005f5fa3    5e
                         ret                                                              // 0x005f5fa4    c3
                         nop                                                              // 0x005f5fa5    90
                         nop                                                              // 0x005f5fa6    90
                         nop                                                              // 0x005f5fa7    90
                         nop                                                              // 0x005f5fa8    90
                         nop                                                              // 0x005f5fa9    90
                         nop                                                              // 0x005f5faa    90
                         nop                                                              // 0x005f5fab    90
                         nop                                                              // 0x005f5fac    90
                         nop                                                              // 0x005f5fad    90
                         nop                                                              // 0x005f5fae    90
                         nop                                                              // 0x005f5faf    90
                         mov                eax, 0x00001548                               // 0x005f5fb0    b848150000
                         call               __chkstk                                      // 0x005f5fb5    e8f60e1d00
                         {disp32} mov       eax, dword ptr [esp + 0x0000154c]             // 0x005f5fba    8b84244c150000
                         cmp                eax, 0x08                                     // 0x005f5fc1    83f808
                         push               ebx                                           // 0x005f5fc4    53
                         push               ebp                                           // 0x005f5fc5    55
                         push               esi                                           // 0x005f5fc6    56
                         push               edi                                           // 0x005f5fc7    57
                         {disp32} ja        _jmp_addr_0x005f699e                          // 0x005f5fc8    0f87d0090000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x36baf4]        // 0x005f5fce    8b15f41ad300
                         jmp                dword ptr [eax*4 + 0x5f6a00]                  // 0x005f5fd4    ff2485006a5f00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x36baf4]        // 0x005f5fdb    a1f41ad300
                         {disp8} mov        byte ptr [eax + 0x7c], 0x01                   // 0x005f5fe0    c6407c01
                         {disp32} jmp       _jmp_addr_0x005f699e                          // 0x005f5fe4    e9b5090000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x36baf4]        // 0x005f5fe9    8b0df41ad300
                         {disp8} mov        al, byte ptr [ecx + 0x20]                     // 0x005f5fef    8a4120
                         test               al, al                                        // 0x005f5ff2    84c0
                         {disp8} jne        _jmp_addr_0x005f6001                          // 0x005f5ff4    750b
                         mov                edx, dword ptr [ecx]                          // 0x005f5ff6    8b11
                         call               dword ptr [edx + 0x20]                        // 0x005f5ff8    ff5220
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x36baf4]        // 0x005f5ffb    8b0df41ad300
_jmp_addr_0x005f6001:    {disp8} mov        al, byte ptr [ecx + 0x21]                     // 0x005f6001    8a4121
                         test               al, al                                        // 0x005f6004    84c0
                         {disp8} je         _jmp_addr_0x005f6033                          // 0x005f6006    742b
                         {disp32} mov       al, byte ptr [data_bytes + 0x38951c]          // 0x005f6008    a01cf5d400
                         test               al, al                                        // 0x005f600d    84c0
                         {disp8} je         _jmp_addr_0x005f6028                          // 0x005f600f    7417
                         push               0x0                                           // 0x005f6011    6a00
                         push               0x00d4f1f0                                    // 0x005f6013    68f0f1d400
                         push               0x00d4f2b8                                    // 0x005f6018    68b8f2d400
                         call               _jmp_addr_0x005f5da0                          // 0x005f601d    e87efdffff
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x36baf4]        // 0x005f6022    8b0df41ad300
_jmp_addr_0x005f6028:    call               _jmp_addr_0x005f5eb0                          // 0x005f6028    e883feffff
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x36baf4]        // 0x005f602d    8b0df41ad300
_jmp_addr_0x005f6033:    {disp8} mov        byte ptr [ecx + 0x21], 0x00                   // 0x005f6033    c6412100
                         {disp32} mov       eax, dword ptr [data_bytes + 0x36baf4]        // 0x005f6037    a1f41ad300
                         {disp8} mov        byte ptr [eax + 0x20], 0x00                   // 0x005f603c    c6402000
                         {disp32} jmp       _jmp_addr_0x005f699e                          // 0x005f6040    e959090000
                         {disp32} mov       eax, dword ptr [esp + 0x00001568]             // 0x005f6045    8b842468150000
                         cmp                eax, 0x0d                                     // 0x005f604c    83f80d
                         {disp8} jne        _jmp_addr_0x005f607e                          // 0x005f604f    752d
                         {disp32} mov       eax, dword ptr [esp + 0x00001564]             // 0x005f6051    8b842464150000
                         test               eax, eax                                      // 0x005f6058    85c0
                         {disp8} je         _jmp_addr_0x005f6072                          // 0x005f605a    7416
                         cmp                dword ptr [eax + 0x18], 0x0a                  // 0x005f605c    8378180a
                         {disp8} jne        _jmp_addr_0x005f6072                          // 0x005f6060    7510
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x36baf4]        // 0x005f6062    8b0df41ad300
                         call               _jmp_addr_0x005f5b50                          // 0x005f6068    e8e3faffff
                         {disp32} jmp       _jmp_addr_0x005f699e                          // 0x005f606d    e92c090000
_jmp_addr_0x005f6072:    {disp8} mov        ecx, dword ptr [edx + 0x44]                   // 0x005f6072    8b4a44
                         {disp32} mov       dword ptr [esp + 0x00001564], ecx             // 0x005f6075    898c2464150000
                         {disp8} jmp        _jmp_addr_0x005f6091                          // 0x005f607c    eb13
_jmp_addr_0x005f607e:    cmp                eax, 0x1b                                     // 0x005f607e    83f81b
                         {disp32} jne       _jmp_addr_0x005f699e                          // 0x005f6081    0f8517090000
                         {disp8} mov        eax, dword ptr [edx + 0x54]                   // 0x005f6087    8b4254
                         {disp32} mov       dword ptr [esp + 0x00001564], eax             // 0x005f608a    89842464150000
_jmp_addr_0x005f6091:    {disp32} mov       edi, dword ptr [esp + 0x00001564]             // 0x005f6091    8bbc2464150000
                         test               edi, edi                                      // 0x005f6098    85ff
                         {disp32} je        _jmp_addr_0x005f699e                          // 0x005f609a    0f84fe080000
                         {disp8} mov        ecx, dword ptr [edi + 0x18]                   // 0x005f60a0    8b4f18
                         cmp                ecx, 0x0000029a                               // 0x005f60a3    81f99a020000
                         {disp8} jne        _jmp_addr_0x005f60cb                          // 0x005f60a9    7520
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30b670]        // 0x005f60ab    8b0d7016cd00
                         {disp32} mov       dword ptr [ecx + 0x00000090], 0x00000000      // 0x005f60b1    c7819000000000000000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30b670]        // 0x005f60bb    8b0d7016cd00
                         mov                edx, dword ptr [ecx]                          // 0x005f60c1    8b11
                         call               dword ptr [edx + 0xc]                         // 0x005f60c3    ff520c
                         {disp32} jmp       _jmp_addr_0x005f699e                          // 0x005f60c6    e9d3080000
_jmp_addr_0x005f60cb:    {disp32} mov       eax, dword ptr [edi + 0x00000238]             // 0x005f60cb    8b8738020000
                         test               eax, eax                                      // 0x005f60d1    85c0
                         {disp8} je         _jmp_addr_0x005f60e8                          // 0x005f60d3    7413
                         {disp32} mov       ecx, dword ptr [esp + 0x00001560]             // 0x005f60d5    8b8c2460150000
                         push               edi                                           // 0x005f60dc    57
                         push               ecx                                           // 0x005f60dd    51
                         call               eax                                           // 0x005f60de    ffd0
                         add                esp, 0x08                                     // 0x005f60e0    83c408
                         {disp32} jmp       _jmp_addr_0x005f699e                          // 0x005f60e3    e9b6080000
_jmp_addr_0x005f60e8:    or                 esi, 0xffffffff                               // 0x005f60e8    83ceff
                         cmp                ecx, 0x01                                     // 0x005f60eb    83f901
                         {disp8} jne        _jmp_addr_0x005f6112                          // 0x005f60ee    7522
                         mov.s              ecx, edx                                      // 0x005f60f0    8bca
                         call               _jmp_addr_0x005f7d10                          // 0x005f60f2    e8191c0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x36baf4]        // 0x005f60f7    a1f41ad300
                         {disp8} mov        edx, dword ptr [eax + 0x2c]                   // 0x005f60fc    8b502c
                         {disp32} mov       ecx, dword ptr [edx + 0x00000248]             // 0x005f60ff    8b8a48020000
                         test               ecx, ecx                                      // 0x005f6105    85c9
                         {disp8} jl         _jmp_addr_0x005f6112                          // 0x005f6107    7c09
                         {disp8} mov        eax, dword ptr [eax + 0x34]                   // 0x005f6109    8b4034
                         {disp32} mov       dword ptr [eax + 0x00000248], esi             // 0x005f610c    89b048020000
_jmp_addr_0x005f6112:    cmp                dword ptr [edi + 0x18], 0x03                  // 0x005f6112    837f1803
                         {disp8} jne        _jmp_addr_0x005f6133                          // 0x005f6116    751b
                         {disp32} mov       eax, dword ptr [data_bytes + 0x36baf4]        // 0x005f6118    a1f41ad300
                         {disp8} mov        ecx, dword ptr [eax + 0x34]                   // 0x005f611d    8b4834
                         {disp32} mov       edx, dword ptr [ecx + 0x00000248]             // 0x005f6120    8b9148020000
                         test               edx, edx                                      // 0x005f6126    85d2
                         {disp8} jl         _jmp_addr_0x005f6133                          // 0x005f6128    7c09
                         {disp8} mov        eax, dword ptr [eax + 0x2c]                   // 0x005f612a    8b402c
                         {disp32} mov       dword ptr [eax + 0x00000248], esi             // 0x005f612d    89b048020000
_jmp_addr_0x005f6133:    cmp                dword ptr [edi + 0x18], 0x10                  // 0x005f6133    837f1810
                         {disp8} jne        _jmp_addr_0x005f614e                          // 0x005f6137    7515
                         {disp32} mov       al, byte ptr [edi + 0x00000229]               // 0x005f6139    8a8729020000
                         test               al, al                                        // 0x005f613f    84c0
                         {disp8} jne        _jmp_addr_0x005f614e                          // 0x005f6141    750b
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30b680]        // 0x005f6143    8b0d8016cd00
                         mov                edx, dword ptr [ecx]                          // 0x005f6149    8b11
                         call               dword ptr [edx + 0xc]                         // 0x005f614b    ff520c
_jmp_addr_0x005f614e:    cmp                dword ptr [edi + 0x18], 0x0c                  // 0x005f614e    837f180c
                         {disp32} mov       ebp, dword ptr [esp + 0x00001560]             // 0x005f6152    8bac2460150000
                         {disp32} jne       _jmp_addr_0x005f6345                          // 0x005f6159    0f85e6010000
                         {disp32} mov       al, byte ptr [edi + 0x00000229]               // 0x005f615f    8a8729020000
                         test               al, al                                        // 0x005f6165    84c0
                         {disp32} jne       _jmp_addr_0x005f6345                          // 0x005f6167    0f85d8010000
                         {disp32} mov       al, byte ptr [data_bytes + 0x38951c]          // 0x005f616d    a01cf5d400
                         xor.s              bl, bl                                        // 0x005f6172    32db
                         test               al, al                                        // 0x005f6174    84c0
                         {disp32} je        _jmp_addr_0x005f6307                          // 0x005f6176    0f848b010000
                         push               0x0                                           // 0x005f617c    6a00
                         {disp32} lea       ecx, dword ptr [esp + 0x00000118]             // 0x005f617e    8d8c2418010000
                         call               _jmp_addr_0x00712f20                          // 0x005f6185    e896cd1100
                         push               0x00d4f2b8                                    // 0x005f618a    68b8f2d400
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x005f618f    8d442414
                         push               0x00bea808                                    // 0x005f6193    6808a8be00
                         push               eax                                           // 0x005f6198    50
                         call               _sprintf                                      // 0x005f6199    e834f61c00
                         add                esp, 0x0c                                     // 0x005f619e    83c40c
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x005f61a1    8d4c2410
                         push               ecx                                           // 0x005f61a5    51
                         {disp32} lea       ecx, dword ptr [esp + 0x00000118]             // 0x005f61a6    8d8c2418010000
                         call               _jmp_addr_0x00713140                          // 0x005f61ad    e88ecf1100
                         test               al, al                                        // 0x005f61b2    84c0
                         {disp8} jne        _jmp_addr_0x005f61e4                          // 0x005f61b4    752e
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001a4c // 0x005f61b6    813dac7cd1004c1a0000
                         {disp8} ja         _jmp_addr_0x005f61c9                          // 0x005f61c0    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005f61c2    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x005f61d5                          // 0x005f61c7    eb0c
_jmp_addr_0x005f61c9:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x005f61c9    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x00013b90]             // 0x005f61cf    8d82903b0100
_jmp_addr_0x005f61d5:    {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x005f61d5    8b4008
                         push               0x0                                           // 0x005f61d8    6a00
                         push               0x0                                           // 0x005f61da    6a00
                         push               eax                                           // 0x005f61dc    50
                         mov.s              ecx, ebp                                      // 0x005f61dd    8bcd
                         call               @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x005f61df    e8acafe1ff
_jmp_addr_0x005f61e4:    {disp32} mov       ecx, dword ptr [data_bytes + 0x36baf4]        // 0x005f61e4    8b0df41ad300
                         {disp8} mov        eax, dword ptr [ecx + 0x34]                   // 0x005f61ea    8b4134
                         {disp32} mov       edx, dword ptr [eax + 0x00000250]             // 0x005f61ed    8b9050020000
                         {disp32} mov       ecx, dword ptr [esp + 0x00000550]             // 0x005f61f3    8b8c2450050000
                         cmp.s              ecx, edx                                      // 0x005f61fa    3bca
                         {disp8} jge        _jmp_addr_0x005f6243                          // 0x005f61fc    7d45
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000012e8 // 0x005f61fe    813dac7cd100e8120000
                         {disp8} ja         _jmp_addr_0x005f6211                          // 0x005f6208    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005f620a    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x005f621d                          // 0x005f620f    eb0c
_jmp_addr_0x005f6211:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x005f6211    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x0000e2e0]             // 0x005f6217    8d82e0e20000
_jmp_addr_0x005f621d:    {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x005f621d    8b4008
                         push               ecx                                           // 0x005f6220    51
                         push               eax                                           // 0x005f6221    50
                         {disp32} lea       ecx, dword ptr [esp + 0x0000055c]             // 0x005f6222    8d8c245c050000
                         push               ecx                                           // 0x005f6229    51
                         call               _swprintf                                     // 0x005f622a    e850021d00
                         add                esp, 0x0c                                     // 0x005f622f    83c40c
                         push               0x0                                           // 0x005f6232    6a00
                         push               0x0                                           // 0x005f6234    6a00
                         {disp32} lea       edx, dword ptr [esp + 0x0000055c]             // 0x005f6236    8d94245c050000
                         push               edx                                           // 0x005f623d    52
                         {disp32} jmp       _jmp_addr_0x005f62e3                          // 0x005f623e    e9a0000000
_jmp_addr_0x005f6243:    {disp8} jle        _jmp_addr_0x005f627e                          // 0x005f6243    7e39
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000012e9 // 0x005f6245    813dac7cd100e9120000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005f624f    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x005f625b                          // 0x005f6254    7605
                         add                eax, 0x0000e2ec                               // 0x005f6256    05ece20000
_jmp_addr_0x005f625b:    push               ecx                                           // 0x005f625b    51
                         {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x005f625c    8b4808
                         push               ecx                                           // 0x005f625f    51
                         {disp32} lea       edx, dword ptr [esp + 0x0000055c]             // 0x005f6260    8d94245c050000
                         push               edx                                           // 0x005f6267    52
                         call               _swprintf                                     // 0x005f6268    e812021d00
                         add                esp, 0x0c                                     // 0x005f626d    83c40c
                         push               0x0                                           // 0x005f6270    6a00
                         push               0x0                                           // 0x005f6272    6a00
                         {disp32} lea       eax, dword ptr [esp + 0x0000055c]             // 0x005f6274    8d84245c050000
                         push               eax                                           // 0x005f627b    50
                         {disp8} jmp        _jmp_addr_0x005f62e3                          // 0x005f627c    eb65
_jmp_addr_0x005f627e:    xor.s              esi, esi                                      // 0x005f627e    33f6
                         test               edx, edx                                      // 0x005f6280    85d2
                         {disp8} jle        _jmp_addr_0x005f62fb                          // 0x005f6282    7e77
_jmp_addr_0x005f6284:    test               esi, esi                                      // 0x005f6284    85f6
                         {disp8} jl         _jmp_addr_0x005f629b                          // 0x005f6286    7c13
                         cmp                esi, dword ptr [eax + 0x00000250]             // 0x005f6288    3bb050020000
                         {disp8} jge        _jmp_addr_0x005f629b                          // 0x005f628e    7d0b
                         {disp32} mov       ecx, dword ptr [eax + 0x00000260]             // 0x005f6290    8b8860020000
                         mov                ecx, dword ptr [ecx + esi * 0x4]              // 0x005f6296    8b0cb1
                         {disp8} jmp        _jmp_addr_0x005f629d                          // 0x005f6299    eb02
_jmp_addr_0x005f629b:    xor.s              ecx, ecx                                      // 0x005f629b    33c9
_jmp_addr_0x005f629d:    push               0x00d4f1f0                                    // 0x005f629d    68f0f1d400
                         call               _jmp_addr_0x00713a80                          // 0x005f62a2    e8d9d71100
                         test               al, al                                        // 0x005f62a7    84c0
                         {disp8} jne        _jmp_addr_0x005f62ad                          // 0x005f62a9    7502
                         mov                bl, 0x01                                      // 0x005f62ab    b301
_jmp_addr_0x005f62ad:    {disp32} mov       edx, dword ptr [data_bytes + 0x36baf4]        // 0x005f62ad    8b15f41ad300
                         {disp8} mov        eax, dword ptr [edx + 0x34]                   // 0x005f62b3    8b4234
                         {disp32} mov       ecx, dword ptr [eax + 0x00000250]             // 0x005f62b6    8b8850020000
                         inc                esi                                           // 0x005f62bc    46
                         cmp.s              esi, ecx                                      // 0x005f62bd    3bf1
                         {disp8} jl         _jmp_addr_0x005f6284                          // 0x005f62bf    7cc3
                         test               bl, bl                                        // 0x005f62c1    84db
                         {disp8} je         _jmp_addr_0x005f62fb                          // 0x005f62c3    7436
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001a37 // 0x005f62c5    813dac7cd100371a0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005f62cf    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x005f62db                          // 0x005f62d4    7605
                         add                eax, 0x00013a94                               // 0x005f62d6    05943a0100
_jmp_addr_0x005f62db:    {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x005f62db    8b4808
                         push               0x0                                           // 0x005f62de    6a00
                         push               0x0                                           // 0x005f62e0    6a00
                         push               ecx                                           // 0x005f62e2    51
_jmp_addr_0x005f62e3:    mov.s              ecx, ebp                                      // 0x005f62e3    8bcd
                         call               @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x005f62e5    e8a6aee1ff
                         {disp32} lea       ecx, dword ptr [esp + 0x00000114]             // 0x005f62ea    8d8c2414010000
                         call               _jmp_addr_0x00712fe0                          // 0x005f62f1    e8eacc1100
                         {disp32} jmp       _jmp_addr_0x005f699e                          // 0x005f62f6    e9a3060000
_jmp_addr_0x005f62fb:    {disp32} lea       ecx, dword ptr [esp + 0x00000114]             // 0x005f62fb    8d8c2414010000
                         call               _jmp_addr_0x00712fe0                          // 0x005f6302    e8d9cc1100
_jmp_addr_0x005f6307:    {disp32} mov       edx, dword ptr [data_bytes + 0x36baf4]        // 0x005f6307    8b15f41ad300
                         {disp32} mov       eax, dword ptr [edx + 0x00000080]             // 0x005f630d    8b8280000000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000248]             // 0x005f6313    8b8848020000
                         test               ecx, ecx                                      // 0x005f6319    85c9
                         {disp8} je         _jmp_addr_0x005f632d                          // 0x005f631b    7410
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x35a4c8]        // 0x005f631d    8b0dc804d200
                         {disp32} mov       dword ptr [ecx + 0x0000008c], 0x00000001      // 0x005f6323    c7818c00000001000000
_jmp_addr_0x005f632d:    {disp32} mov       ecx, dword ptr [data_bytes + 0x35a4c8]        // 0x005f632d    8b0dc804d200
                         push               0x00d4f128                                    // 0x005f6333    6828f1d400
                         push               0x0000042c                                    // 0x005f6338    682c040000
                         push               0x64                                          // 0x005f633d    6a64
                         call               dword ptr [rdata_bytes + 0x550]               // 0x005f633f    ff1550958a00
_jmp_addr_0x005f6345:    cmp                dword ptr [edi + 0x18], 0x05                  // 0x005f6345    837f1805
                         {disp8} jne        _jmp_addr_0x005f6356                          // 0x005f6349    750b
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x36baf4]        // 0x005f634b    8b0df41ad300
                         call               _jmp_addr_0x005f6a70                          // 0x005f6351    e81a070000
_jmp_addr_0x005f6356:    cmp                dword ptr [edi + 0x18], 0x04                  // 0x005f6356    837f1804
                         {disp8} jne        _jmp_addr_0x005f6387                          // 0x005f635a    752b
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x36baf4]        // 0x005f635c    8b0df41ad300
                         call               _jmp_addr_0x005f6b80                          // 0x005f6362    e819080000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x36baf4]        // 0x005f6367    8b15f41ad300
                         {disp8} mov        ecx, dword ptr [edx + 0x1c]                   // 0x005f636d    8b4a1c
                         mov                eax, dword ptr [ecx]                          // 0x005f6370    8b01
                         push               0x1                                           // 0x005f6372    6a01
                         call               dword ptr [eax + 8]                           // 0x005f6374    ff5008
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x36baf4]        // 0x005f6377    8b0df41ad300
                         {disp8} mov        ecx, dword ptr [ecx + 0x58]                   // 0x005f637d    8b4958
                         mov                edx, dword ptr [ecx]                          // 0x005f6380    8b11
                         push               0x1                                           // 0x005f6382    6a01
                         call               dword ptr [edx + 8]                           // 0x005f6384    ff5208
_jmp_addr_0x005f6387:    cmp                dword ptr [edi + 0x18], 0x07                  // 0x005f6387    837f1807
                         {disp32} jne       _jmp_addr_0x005f64ca                          // 0x005f638b    0f8539010000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x36baf4]        // 0x005f6391    a1f41ad300
                         {disp8} mov        dword ptr [eax + 0x24], 0x00000001            // 0x005f6396    c7402401000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x36baf4]        // 0x005f639d    a1f41ad300
                         {disp8} mov        ecx, dword ptr [eax + 0x4c]                   // 0x005f63a2    8b484c
                         add                ecx, 0x24                                     // 0x005f63a5    83c124
                         test               ecx, ecx                                      // 0x005f63a8    85c9
                         {disp8} je         _jmp_addr_0x005f6416                          // 0x005f63aa    746a
                         push               ecx                                           // 0x005f63ac    51
                         call               _wcslen                                       // 0x005f63ad    e8b0001d00
                         add                esp, 0x04                                     // 0x005f63b2    83c404
                         test               eax, eax                                      // 0x005f63b5    85c0
                         {disp8} jne        _jmp_addr_0x005f6411                          // 0x005f63b7    7558
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000db9 // 0x005f63b9    813dac7cd100b90d0000
                         {disp8} ja         _jmp_addr_0x005f63e6                          // 0x005f63c3    7721
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005f63c5    a1a87cd100
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x005f63ca    8b5008
                         push               0x0                                           // 0x005f63cd    6a00
                         push               0x0                                           // 0x005f63cf    6a00
                         push               edx                                           // 0x005f63d1    52
                         mov.s              ecx, ebp                                      // 0x005f63d2    8bcd
                         call               @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x005f63d4    e8b7ade1ff
                         pop                edi                                           // 0x005f63d9    5f
                         pop                esi                                           // 0x005f63da    5e
                         pop                ebp                                           // 0x005f63db    5d
                         pop                ebx                                           // 0x005f63dc    5b
                         add                esp, 0x00001548                               // 0x005f63dd    81c448150000
                         ret                0x0014                                        // 0x005f63e3    c21400
_jmp_addr_0x005f63e6:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x005f63e6    8b0da87cd100
                         {disp32} mov       edx, dword ptr [ecx + 0x0000a4b4]             // 0x005f63ec    8b91b4a40000
                         {disp32} lea       eax, dword ptr [ecx + 0x0000a4ac]             // 0x005f63f2    8d81aca40000
                         push               0x0                                           // 0x005f63f8    6a00
                         push               0x0                                           // 0x005f63fa    6a00
                         push               edx                                           // 0x005f63fc    52
                         mov.s              ecx, ebp                                      // 0x005f63fd    8bcd
                         call               @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x005f63ff    e88cade1ff
                         pop                edi                                           // 0x005f6404    5f
                         pop                esi                                           // 0x005f6405    5e
                         pop                ebp                                           // 0x005f6406    5d
                         pop                ebx                                           // 0x005f6407    5b
                         add                esp, 0x00001548                               // 0x005f6408    81c448150000
                         ret                0x0014                                        // 0x005f640e    c21400
_jmp_addr_0x005f6411:    {disp32} mov       eax, dword ptr [data_bytes + 0x36baf4]        // 0x005f6411    a1f41ad300
_jmp_addr_0x005f6416:    {disp8} mov        esi, dword ptr [eax + 0x50]                   // 0x005f6416    8b7050
                         {disp8} mov        eax, dword ptr [eax + 0x4c]                   // 0x005f6419    8b404c
                         add                eax, 0x24                                     // 0x005f641c    83c024
                         push               eax                                           // 0x005f641f    50
                         call               _jmp_addr_0x0053b4a0                          // 0x005f6420    e87b50f4ff
                         add                esp, 0x04                                     // 0x005f6425    83c404
                         push               0x1                                           // 0x005f6428    6a01
                         add                esi, 0x24                                     // 0x005f642a    83c624
                         push               esi                                           // 0x005f642d    56
                         mov.s              edi, eax                                      // 0x005f642e    8bf8
                         call               _jmp_addr_0x0053b4a0                          // 0x005f6430    e86b50f4ff
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x35a4ac]        // 0x005f6435    8b0dac04d200
                         add                esp, 0x04                                     // 0x005f643b    83c404
                         push               eax                                           // 0x005f643e    50
                         push               edi                                           // 0x005f643f    57
                         call               dword ptr [rdata_bytes + 0x650]               // 0x005f6440    ff1550968a00
                         test               eax, eax                                      // 0x005f6446    85c0
                         {disp8} je         _jmp_addr_0x005f64a3                          // 0x005f6448    7459
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000dba // 0x005f644a    813dac7cd100ba0d0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005f6454    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x005f6460                          // 0x005f6459    7605
                         add                eax, 0x0000a4b8                               // 0x005f645b    05b8a40000
_jmp_addr_0x005f6460:    {disp8} mov        esi, dword ptr [eax + 0x08]                   // 0x005f6460    8b7008
                         call               dword ptr [__imp__GetText_LHLogger__SAPADXZ@4]// 0x005f6463    ff15a8938a00
                         push               eax                                           // 0x005f6469    50
                         call               _CHAR2WCHAR__FPc                              // 0x005f646a    e8319c2300
                         add                esp, 0x04                                     // 0x005f646f    83c404
                         push               eax                                           // 0x005f6472    50
                         push               esi                                           // 0x005f6473    56
                         {disp32} lea       ecx, dword ptr [esp + 0x00000d5c]             // 0x005f6474    8d8c245c0d0000
                         push               0x00bea62c                                    // 0x005f647b    682ca6be00
                         push               ecx                                           // 0x005f6480    51
                         call               dword ptr [__imp___0LHSPrintfW__QAA_PAGZZ@4]  // 0x005f6481    ff15d8938a00
                         add                esp, 0x10                                     // 0x005f6487    83c410
                         push               0x0                                           // 0x005f648a    6a00
                         push               0x0                                           // 0x005f648c    6a00
                         push               eax                                           // 0x005f648e    50
                         mov.s              ecx, ebp                                      // 0x005f648f    8bcd
                         call               @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x005f6491    e8faace1ff
                         pop                edi                                           // 0x005f6496    5f
                         pop                esi                                           // 0x005f6497    5e
                         pop                ebp                                           // 0x005f6498    5d
                         pop                ebx                                           // 0x005f6499    5b
                         add                esp, 0x00001548                               // 0x005f649a    81c448150000
                         ret                0x0014                                        // 0x005f64a0    c21400
_jmp_addr_0x005f64a3:    {disp32} mov       edx, dword ptr [data_bytes + 0x36baf4]        // 0x005f64a3    8b15f41ad300
                         {disp8} mov        ecx, dword ptr [edx + 0x1c]                   // 0x005f64a9    8b4a1c
                         mov                eax, dword ptr [ecx]                          // 0x005f64ac    8b01
                         push               0x1                                           // 0x005f64ae    6a01
                         call               dword ptr [eax + 8]                           // 0x005f64b0    ff5008
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x36baf4]        // 0x005f64b3    8b0df41ad300
                         {disp8} mov        ecx, dword ptr [ecx + 0x58]                   // 0x005f64b9    8b4958
                         mov                edx, dword ptr [ecx]                          // 0x005f64bc    8b11
                         push               0x1                                           // 0x005f64be    6a01
                         call               dword ptr [edx + 8]                           // 0x005f64c0    ff5208
                         {disp32} mov       edi, dword ptr [esp + 0x00001564]             // 0x005f64c3    8bbc2464150000
_jmp_addr_0x005f64ca:    cmp                dword ptr [edi + 0x18], 0x06                  // 0x005f64ca    837f1806
                         {disp8} jne        _jmp_addr_0x005f64fb                          // 0x005f64ce    752b
                         {disp32} mov       eax, dword ptr [data_bytes + 0x35a4ac]        // 0x005f64d0    a1ac04d200
                         {disp32} mov       ecx, dword ptr [eax + 0x00000088]             // 0x005f64d5    8b8888000000
                         mov                eax, dword ptr [ecx]                          // 0x005f64db    8b01
                         push               0x0                                           // 0x005f64dd    6a00
                         push               eax                                           // 0x005f64df    50
                         push               0x0000138b                                    // 0x005f64e0    688b130000
                         call               dword ptr [rdata_bytes + 0x490]               // 0x005f64e5    ff1590948a00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x35a4ac]        // 0x005f64eb    8b0dac04d200
                         add                esp, 0x0c                                     // 0x005f64f1    83c40c
                         push               eax                                           // 0x005f64f4    50
                         call               dword ptr [rdata_bytes + 0x54c]               // 0x005f64f5    ff154c958a00
_jmp_addr_0x005f64fb:    cmp                dword ptr [edi + 0x18], 0x0b                  // 0x005f64fb    837f180b
                         {disp8} jne        _jmp_addr_0x005f652c                          // 0x005f64ff    752b
                         {disp32} mov       edx, dword ptr [data_bytes + 0x36baf4]        // 0x005f6501    8b15f41ad300
                         {disp8} mov        ecx, dword ptr [edx + 0x58]                   // 0x005f6507    8b4a58
                         mov                eax, dword ptr [ecx]                          // 0x005f650a    8b01
                         push               0x1                                           // 0x005f650c    6a01
                         call               dword ptr [eax + 8]                           // 0x005f650e    ff5008
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x36baf4]        // 0x005f6511    8b0df41ad300
                         {disp8} mov        ecx, dword ptr [ecx + 0x1c]                   // 0x005f6517    8b491c
                         mov                edx, dword ptr [ecx]                          // 0x005f651a    8b11
                         push               0x0                                           // 0x005f651c    6a00
                         call               dword ptr [edx + 8]                           // 0x005f651e    ff5208
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x36baf4]        // 0x005f6521    8b0df41ad300
                         call               _jmp_addr_0x005f6a70                          // 0x005f6527    e844050000
_jmp_addr_0x005f652c:    cmp                dword ptr [edi + 0x18], 0x0e                  // 0x005f652c    837f180e
                         {disp32} jne       _jmp_addr_0x005f699e                          // 0x005f6530    0f8568040000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x36baf4]        // 0x005f6536    8b0df41ad300
                         {disp8} mov        eax, dword ptr [ecx + 0x2c]                   // 0x005f653c    8b412c
                         {disp32} mov       dl, byte ptr [eax + 0x00000229]               // 0x005f653f    8a9029020000
                         test               dl, dl                                        // 0x005f6545    84d2
                         {disp8} je         _jmp_addr_0x005f657d                          // 0x005f6547    7434
                         {disp8} mov        ecx, dword ptr [ecx + 0x58]                   // 0x005f6549    8b4958
                         mov                edx, dword ptr [ecx]                          // 0x005f654c    8b11
                         push               0x1                                           // 0x005f654e    6a01
                         call               dword ptr [edx + 8]                           // 0x005f6550    ff5208
                         {disp32} mov       eax, dword ptr [data_bytes + 0x36baf4]        // 0x005f6553    a1f41ad300
                         {disp8} mov        ecx, dword ptr [eax + 0x1c]                   // 0x005f6558    8b481c
                         mov                edx, dword ptr [ecx]                          // 0x005f655b    8b11
                         push               0x0                                           // 0x005f655d    6a00
                         call               dword ptr [edx + 8]                           // 0x005f655f    ff5208
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x36baf4]        // 0x005f6562    8b0df41ad300
                         call               _jmp_addr_0x005f80c0                          // 0x005f6568    e8531b0000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x36baf4]        // 0x005f656d    8b0df41ad300
                         call               _jmp_addr_0x005f6a70                          // 0x005f6573    e8f8040000
                         {disp32} jmp       _jmp_addr_0x005f699e                          // 0x005f6578    e921040000
_jmp_addr_0x005f657d:    {disp32} mov       eax, dword ptr [_game]                        // 0x005f657d    a15c19d000
                         cmp                dword ptr [eax + 0x00205a28], 0x01            // 0x005f6582    83b8285a200001
                         {disp8} jne        _jmp_addr_0x005f6595                          // 0x005f6589    750a
                         call               _jmp_addr_0x00513640                          // 0x005f658b    e8b0d0f1ff
                         {disp32} jmp       _jmp_addr_0x005f699e                          // 0x005f6590    e909040000
_jmp_addr_0x005f6595:    call               _jmp_addr_0x005f6a70                          // 0x005f6595    e8d6040000
                         call               _jmp_addr_0x00513640                          // 0x005f659a    e8a1d0f1ff
                         mov                ecx, 0x00d204a8                               // 0x005f659f    b9a804d200
                         call               _jmp_addr_0x005ea980                          // 0x005f65a4    e8d743ffff
                         {disp32} jmp       _jmp_addr_0x005f699e                          // 0x005f65a9    e9f0030000
                         cmp                dword ptr [esp + 0x00001568], 0x00002710      // 0x005f65ae    81bc246815000010270000
                         {disp32} jne       _jmp_addr_0x005f699e                          // 0x005f65b9    0f85df030000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x36baf4]        // 0x005f65bf    a1f41ad300
                         cmp                byte ptr [eax + 0x7c], 0x01                   // 0x005f65c4    80787c01
                         {disp32} jne       _jmp_addr_0x005f699e                          // 0x005f65c8    0f85d0030000
                         {disp8} mov        byte ptr [eax + 0x7c], 0x00                   // 0x005f65ce    c6407c00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x36baf4]        // 0x005f65d2    8b0df41ad300
                         {disp32} mov       eax, dword ptr [ecx + 0x00000088]             // 0x005f65d8    8b8188000000
                         test               eax, eax                                      // 0x005f65de    85c0
                         {disp32} je        _jmp_addr_0x005f699e                          // 0x005f65e0    0f84b8030000
                         {disp32} mov       eax, dword ptr [ecx + 0x00000084]             // 0x005f65e6    8b8184000000
                         test               eax, eax                                      // 0x005f65ec    85c0
                         {disp8} je         _jmp_addr_0x005f65f5                          // 0x005f65ee    7405
                         {disp8} mov        ebp, dword ptr [eax + 0x04]                   // 0x005f65f0    8b6804
                         {disp8} jmp        _jmp_addr_0x005f65f7                          // 0x005f65f3    eb02
_jmp_addr_0x005f65f5:    xor.s              ebp, ebp                                      // 0x005f65f5    33ed
_jmp_addr_0x005f65f7:    push               0x0                                           // 0x005f65f7    6a00
                         push               0x0                                           // 0x005f65f9    6a00
                         {disp8} mov        byte ptr [ecx + 0x7c], 0x01                   // 0x005f65fb    c6417c01
                         {disp32} mov       ecx, dword ptr [esp + 0x00001568]             // 0x005f65ff    8b8c2468150000
                         push               ebp                                           // 0x005f6606    55
                         call               @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x005f6607    e884abe1ff
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x36baf4]        // 0x005f660c    8b0df41ad300
                         {disp32} mov       eax, dword ptr [ecx + 0x00000084]             // 0x005f6612    8b8184000000
                         {disp32} lea       esi, dword ptr [ecx + 0x00000084]             // 0x005f6618    8db184000000
                         xor.s              ebx, ebx                                      // 0x005f661e    33db
                         test               eax, eax                                      // 0x005f6620    85c0
                         {disp8} je         _jmp_addr_0x005f664f                          // 0x005f6622    742b
_jmp_addr_0x005f6624:    cmp                dword ptr [eax + 0x04], ebp                   // 0x005f6624    396804
                         mov                edi, dword ptr [eax]                          // 0x005f6627    8b38
                         {disp8} jne        _jmp_addr_0x005f6647                          // 0x005f6629    751c
                         cmp                eax, dword ptr [esi]                          // 0x005f662b    3b06
                         {disp8} jne        _jmp_addr_0x005f6633                          // 0x005f662d    7504
                         mov                dword ptr [esi], edi                          // 0x005f662f    893e
                         {disp8} jmp        _jmp_addr_0x005f6635                          // 0x005f6631    eb02
_jmp_addr_0x005f6633:    mov                dword ptr [ebx], edi                          // 0x005f6633    893b
_jmp_addr_0x005f6635:    {disp8} mov        edx, dword ptr [esi + 0x04]                   // 0x005f6635    8b5604
                         dec                edx                                           // 0x005f6638    4a
                         push               eax                                           // 0x005f6639    50
                         {disp8} mov        dword ptr [esi + 0x04], edx                   // 0x005f663a    895604
                         call               ??3@YAXPAX@Z                                  // 0x005f663d    e856881b00
                         add                esp, 0x04                                     // 0x005f6642    83c404
                         {disp8} jmp        _jmp_addr_0x005f6649                          // 0x005f6645    eb02
_jmp_addr_0x005f6647:    mov.s              ebx, eax                                      // 0x005f6647    8bd8
_jmp_addr_0x005f6649:    test               edi, edi                                      // 0x005f6649    85ff
                         mov.s              eax, edi                                      // 0x005f664b    8bc7
                         {disp8} jne        _jmp_addr_0x005f6624                          // 0x005f664d    75d5
_jmp_addr_0x005f664f:    push               ebp                                           // 0x005f664f    55
                         call               ??3@YAXPAX@Z                                  // 0x005f6650    e843881b00
                         add                esp, 0x04                                     // 0x005f6655    83c404
                         {disp32} jmp       _jmp_addr_0x005f699e                          // 0x005f6658    e941030000
                         {disp32} mov       edx, dword ptr [esp + 0x0000156c]             // 0x005f665d    8b94246c150000
                         {disp32} mov       eax, dword ptr [esp + 0x00001568]             // 0x005f6664    8b842468150000
                         {disp32} mov       ebp, dword ptr [esp + 0x00001560]             // 0x005f666b    8bac2460150000
                         push               edx                                           // 0x005f6672    52
                         push               eax                                           // 0x005f6673    50
                         mov.s              ecx, ebp                                      // 0x005f6674    8bcd
                         call               _jmp_addr_0x00408100                          // 0x005f6676    e8851ae1ff
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x36baf4]        // 0x005f667b    8b0df41ad300
                         {disp8} mov        esi, dword ptr [ecx + 0x78]                   // 0x005f6681    8b7178
                         xor.s              ebx, ebx                                      // 0x005f6684    33db
                         cmp.s              eax, ebx                                      // 0x005f6686    3bc3
                         {disp32} je        _jmp_addr_0x005f6982                          // 0x005f6688    0f84f4020000
                         {disp8} mov        eax, dword ptr [eax + 0x18]                   // 0x005f668e    8b4018
                         cmp                eax, 0x0000029a                               // 0x005f6691    3d9a020000
                         {disp32} jg        _jmp_addr_0x005f6947                          // 0x005f6696    0f8fab020000
                         {disp32} je        _jmp_addr_0x005f6923                          // 0x005f669c    0f8481020000
                         dec                eax                                           // 0x005f66a2    48
                         cmp                eax, 0x0f                                     // 0x005f66a3    83f80f
                         {disp32} ja        _jmp_addr_0x005f6947                          // 0x005f66a6    0f879b020000
                         jmp                dword ptr [eax*4 + 0x5f6a24]                  // 0x005f66ac    ff2485246a5f00
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000dd8 // 0x005f66b3    813dac7cd100d80d0000
                         {disp8} ja         _jmp_addr_0x005f66d5                          // 0x005f66bd    7716
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005f66bf    a1a87cd100
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x005f66c4    8b4008
                         push               0x000000ff                                    // 0x005f66c7    68ff000000
                         {disp8} lea        edi, dword ptr [esi + 0x24]                   // 0x005f66cc    8d7e24
                         push               eax                                           // 0x005f66cf    50
                         {disp32} jmp       _jmp_addr_0x005f6954                          // 0x005f66d0    e97f020000
_jmp_addr_0x005f66d5:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x005f66d5    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x0000a620]             // 0x005f66db    8d8220a60000
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x005f66e1    8b4008
                         push               0x000000ff                                    // 0x005f66e4    68ff000000
                         {disp8} lea        edi, dword ptr [esi + 0x24]                   // 0x005f66e9    8d7e24
                         push               eax                                           // 0x005f66ec    50
                         {disp32} jmp       _jmp_addr_0x005f6954                          // 0x005f66ed    e962020000
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000dd9 // 0x005f66f2    813dac7cd100d90d0000
                         {disp8} ja         _jmp_addr_0x005f6714                          // 0x005f66fc    7716
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005f66fe    a1a87cd100
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x005f6703    8b5008
                         push               0x000000ff                                    // 0x005f6706    68ff000000
                         {disp8} lea        edi, dword ptr [esi + 0x24]                   // 0x005f670b    8d7e24
                         push               edx                                           // 0x005f670e    52
                         {disp32} jmp       _jmp_addr_0x005f6954                          // 0x005f670f    e940020000
_jmp_addr_0x005f6714:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x005f6714    8b0da87cd100
                         {disp32} mov       edx, dword ptr [ecx + 0x0000a634]             // 0x005f671a    8b9134a60000
                         {disp32} lea       eax, dword ptr [ecx + 0x0000a62c]             // 0x005f6720    8d812ca60000
                         push               0x000000ff                                    // 0x005f6726    68ff000000
                         {disp8} lea        edi, dword ptr [esi + 0x24]                   // 0x005f672b    8d7e24
                         push               edx                                           // 0x005f672e    52
                         {disp32} jmp       _jmp_addr_0x005f6954                          // 0x005f672f    e920020000
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000dda // 0x005f6734    813dac7cd100da0d0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005f673e    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x005f674a                          // 0x005f6743    7605
                         add                eax, 0x0000a638                               // 0x005f6745    0538a60000
_jmp_addr_0x005f674a:    {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x005f674a    8b4808
                         push               0x000000ff                                    // 0x005f674d    68ff000000
                         {disp8} lea        edi, dword ptr [esi + 0x24]                   // 0x005f6752    8d7e24
                         push               ecx                                           // 0x005f6755    51
                         {disp32} jmp       _jmp_addr_0x005f6954                          // 0x005f6756    e9f9010000
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000ddb // 0x005f675b    813dac7cd100db0d0000
                         {disp8} ja         _jmp_addr_0x005f677d                          // 0x005f6765    7716
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005f6767    a1a87cd100
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x005f676c    8b4008
                         push               0x000000ff                                    // 0x005f676f    68ff000000
                         {disp8} lea        edi, dword ptr [esi + 0x24]                   // 0x005f6774    8d7e24
                         push               eax                                           // 0x005f6777    50
                         {disp32} jmp       _jmp_addr_0x005f6954                          // 0x005f6778    e9d7010000
_jmp_addr_0x005f677d:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x005f677d    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x0000a644]             // 0x005f6783    8d8244a60000
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x005f6789    8b4008
                         push               0x000000ff                                    // 0x005f678c    68ff000000
                         {disp8} lea        edi, dword ptr [esi + 0x24]                   // 0x005f6791    8d7e24
                         push               eax                                           // 0x005f6794    50
                         {disp32} jmp       _jmp_addr_0x005f6954                          // 0x005f6795    e9ba010000
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000ddc // 0x005f679a    813dac7cd100dc0d0000
                         {disp8} ja         _jmp_addr_0x005f67bc                          // 0x005f67a4    7716
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005f67a6    a1a87cd100
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x005f67ab    8b5008
                         push               0x000000ff                                    // 0x005f67ae    68ff000000
                         {disp8} lea        edi, dword ptr [esi + 0x24]                   // 0x005f67b3    8d7e24
                         push               edx                                           // 0x005f67b6    52
                         {disp32} jmp       _jmp_addr_0x005f6954                          // 0x005f67b7    e998010000
_jmp_addr_0x005f67bc:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x005f67bc    8b0da87cd100
                         {disp32} mov       edx, dword ptr [ecx + 0x0000a658]             // 0x005f67c2    8b9158a60000
                         {disp32} lea       eax, dword ptr [ecx + 0x0000a650]             // 0x005f67c8    8d8150a60000
                         push               0x000000ff                                    // 0x005f67ce    68ff000000
                         {disp8} lea        edi, dword ptr [esi + 0x24]                   // 0x005f67d3    8d7e24
                         push               edx                                           // 0x005f67d6    52
                         {disp32} jmp       _jmp_addr_0x005f6954                          // 0x005f67d7    e978010000
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000ddd // 0x005f67dc    813dac7cd100dd0d0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005f67e6    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x005f67f2                          // 0x005f67eb    7605
                         add                eax, 0x0000a65c                               // 0x005f67ed    055ca60000
_jmp_addr_0x005f67f2:    {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x005f67f2    8b4808
                         push               0x000000ff                                    // 0x005f67f5    68ff000000
                         {disp8} lea        edi, dword ptr [esi + 0x24]                   // 0x005f67fa    8d7e24
                         push               ecx                                           // 0x005f67fd    51
                         {disp32} jmp       _jmp_addr_0x005f6954                          // 0x005f67fe    e951010000
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000dde // 0x005f6803    813dac7cd100de0d0000
                         {disp8} ja         _jmp_addr_0x005f6825                          // 0x005f680d    7716
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005f680f    a1a87cd100
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x005f6814    8b4008
                         push               0x000000ff                                    // 0x005f6817    68ff000000
                         {disp8} lea        edi, dword ptr [esi + 0x24]                   // 0x005f681c    8d7e24
                         push               eax                                           // 0x005f681f    50
                         {disp32} jmp       _jmp_addr_0x005f6954                          // 0x005f6820    e92f010000
_jmp_addr_0x005f6825:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x005f6825    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x0000a668]             // 0x005f682b    8d8268a60000
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x005f6831    8b4008
                         push               0x000000ff                                    // 0x005f6834    68ff000000
                         {disp8} lea        edi, dword ptr [esi + 0x24]                   // 0x005f6839    8d7e24
                         push               eax                                           // 0x005f683c    50
                         {disp32} jmp       _jmp_addr_0x005f6954                          // 0x005f683d    e912010000
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000ddf // 0x005f6842    813dac7cd100df0d0000
                         {disp8} ja         _jmp_addr_0x005f6864                          // 0x005f684c    7716
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005f684e    a1a87cd100
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x005f6853    8b5008
                         push               0x000000ff                                    // 0x005f6856    68ff000000
                         {disp8} lea        edi, dword ptr [esi + 0x24]                   // 0x005f685b    8d7e24
                         push               edx                                           // 0x005f685e    52
                         {disp32} jmp       _jmp_addr_0x005f6954                          // 0x005f685f    e9f0000000
_jmp_addr_0x005f6864:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x005f6864    8b0da87cd100
                         {disp32} mov       edx, dword ptr [ecx + 0x0000a67c]             // 0x005f686a    8b917ca60000
                         {disp32} lea       eax, dword ptr [ecx + 0x0000a674]             // 0x005f6870    8d8174a60000
                         push               0x000000ff                                    // 0x005f6876    68ff000000
                         {disp8} lea        edi, dword ptr [esi + 0x24]                   // 0x005f687b    8d7e24
                         push               edx                                           // 0x005f687e    52
                         {disp32} jmp       _jmp_addr_0x005f6954                          // 0x005f687f    e9d0000000
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000de0 // 0x005f6884    813dac7cd100e00d0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005f688e    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x005f689a                          // 0x005f6893    7605
                         add                eax, 0x0000a680                               // 0x005f6895    0580a60000
_jmp_addr_0x005f689a:    {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x005f689a    8b4808
                         push               0x000000ff                                    // 0x005f689d    68ff000000
                         {disp8} lea        edi, dword ptr [esi + 0x24]                   // 0x005f68a2    8d7e24
                         push               ecx                                           // 0x005f68a5    51
                         {disp32} jmp       _jmp_addr_0x005f6954                          // 0x005f68a6    e9a9000000
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000de1 // 0x005f68ab    813dac7cd100e10d0000
                         {disp8} ja         _jmp_addr_0x005f68cd                          // 0x005f68b5    7716
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005f68b7    a1a87cd100
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x005f68bc    8b4008
                         push               0x000000ff                                    // 0x005f68bf    68ff000000
                         {disp8} lea        edi, dword ptr [esi + 0x24]                   // 0x005f68c4    8d7e24
                         push               eax                                           // 0x005f68c7    50
                         {disp32} jmp       _jmp_addr_0x005f6954                          // 0x005f68c8    e987000000
_jmp_addr_0x005f68cd:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x005f68cd    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x0000a68c]             // 0x005f68d3    8d828ca60000
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x005f68d9    8b4008
                         push               0x000000ff                                    // 0x005f68dc    68ff000000
                         {disp8} lea        edi, dword ptr [esi + 0x24]                   // 0x005f68e1    8d7e24
                         push               eax                                           // 0x005f68e4    50
                         {disp8} jmp        _jmp_addr_0x005f6954                          // 0x005f68e5    eb6d
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000de2 // 0x005f68e7    813dac7cd100e20d0000
                         {disp8} ja         _jmp_addr_0x005f6906                          // 0x005f68f1    7713
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005f68f3    a1a87cd100
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x005f68f8    8b5008
                         push               0x000000ff                                    // 0x005f68fb    68ff000000
                         {disp8} lea        edi, dword ptr [esi + 0x24]                   // 0x005f6900    8d7e24
                         push               edx                                           // 0x005f6903    52
                         {disp8} jmp        _jmp_addr_0x005f6954                          // 0x005f6904    eb4e
_jmp_addr_0x005f6906:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x005f6906    8b0da87cd100
                         {disp32} mov       edx, dword ptr [ecx + 0x0000a6a0]             // 0x005f690c    8b91a0a60000
                         {disp32} lea       eax, dword ptr [ecx + 0x0000a698]             // 0x005f6912    8d8198a60000
                         push               0x000000ff                                    // 0x005f6918    68ff000000
                         {disp8} lea        edi, dword ptr [esi + 0x24]                   // 0x005f691d    8d7e24
                         push               edx                                           // 0x005f6920    52
                         {disp8} jmp        _jmp_addr_0x005f6954                          // 0x005f6921    eb31
_jmp_addr_0x005f6923:    cmp                dword ptr [data_bytes + 0x351cac], 0x00001a7e // 0x005f6923    813dac7cd1007e1a0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005f692d    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x005f6939                          // 0x005f6932    7605
                         add                eax, 0x00013de8                               // 0x005f6934    05e83d0100
_jmp_addr_0x005f6939:    {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x005f6939    8b4808
                         push               0x000000ff                                    // 0x005f693c    68ff000000
                         {disp8} lea        edi, dword ptr [esi + 0x24]                   // 0x005f6941    8d7e24
                         push               ecx                                           // 0x005f6944    51
                         {disp8} jmp        _jmp_addr_0x005f6954                          // 0x005f6945    eb0d
_jmp_addr_0x005f6947:    push               0x000000ff                                    // 0x005f6947    68ff000000
                         {disp8} lea        edi, dword ptr [esi + 0x24]                   // 0x005f694c    8d7e24
                         push               0x00c4cd30                                    // 0x005f694f    6830cdc400
_jmp_addr_0x005f6954:    push               edi                                           // 0x005f6954    57
                         call               _wcsncpy                                      // 0x005f6955    e8cbfa1c00
                         push               edi                                           // 0x005f695a    57
                         {disp32} mov       word ptr [esi + 0x00000222], bx               // 0x005f695b    66899e22020000
                         call               _wcslen                                       // 0x005f6962    e8fbfa1c00
                         add                esp, 0x10                                     // 0x005f6967    83c410
                         {disp32} mov       dword ptr [esi + 0x0000024c], eax             // 0x005f696a    89864c020000
                         {disp32} mov       dword ptr [esi + 0x00000254], eax             // 0x005f6970    898654020000
                         {disp32} mov       dword ptr [esi + 0x00000250], eax             // 0x005f6976    898650020000
                         {disp32} mov       dword ptr [esi + 0x00000258], ebx             // 0x005f697c    899e58020000
_jmp_addr_0x005f6982:    {disp32} mov       ecx, dword ptr [data_bytes + 0x35a4d8]        // 0x005f6982    8b0dd804d200
                         xor.s              edx, edx                                      // 0x005f6988    33d2
                         cmp                ecx, 0x01                                     // 0x005f698a    83f901
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x36baf4]        // 0x005f698d    8b0df41ad300
                         sete               dl                                            // 0x005f6993    0f94c2
                         push               ebp                                           // 0x005f6996    55
                         push               ebx                                           // 0x005f6997    53
                         push               edx                                           // 0x005f6998    52
                         call               _jmp_addr_0x005f6d80                          // 0x005f6999    e8e2030000
_jmp_addr_0x005f699e:    {disp32} mov       eax, dword ptr [data_bytes + 0x36baf4]        // 0x005f699e    a1f41ad300
                         {disp8} mov        ecx, dword ptr [eax + 0x2c]                   // 0x005f69a3    8b482c
                         {disp32} mov       edx, dword ptr [ecx + 0x00000248]             // 0x005f69a6    8b9148020000
                         test               edx, edx                                      // 0x005f69ac    85d2
                         {disp8} jge        _jmp_addr_0x005f69c9                          // 0x005f69ae    7d19
                         {disp8} mov        ecx, dword ptr [eax + 0x40]                   // 0x005f69b0    8b4840
                         mov                edx, dword ptr [ecx]                          // 0x005f69b3    8b11
                         push               0x1                                           // 0x005f69b5    6a01
                         call               dword ptr [edx + 8]                           // 0x005f69b7    ff5208
                         {disp32} mov       eax, dword ptr [data_bytes + 0x36baf4]        // 0x005f69ba    a1f41ad300
                         {disp8} mov        ecx, dword ptr [eax + 0x38]                   // 0x005f69bf    8b4838
                         mov                edx, dword ptr [ecx]                          // 0x005f69c2    8b11
                         push               0x1                                           // 0x005f69c4    6a01
                         call               dword ptr [edx + 8]                           // 0x005f69c6    ff5208
_jmp_addr_0x005f69c9:    {disp32} mov       eax, dword ptr [data_bytes + 0x36baf4]        // 0x005f69c9    a1f41ad300
                         {disp8} mov        ecx, dword ptr [eax + 0x4c]                   // 0x005f69ce    8b484c
                         add                ecx, 0x24                                     // 0x005f69d1    83c124
                         push               ecx                                           // 0x005f69d4    51
                         call               _wcslen                                       // 0x005f69d5    e888fa1c00
                         add                esp, 0x04                                     // 0x005f69da    83c404
                         test               eax, eax                                      // 0x005f69dd    85c0
                         {disp8} jbe        _jmp_addr_0x005f69f1                          // 0x005f69df    7610
                         {disp32} mov       edx, dword ptr [data_bytes + 0x36baf4]        // 0x005f69e1    8b15f41ad300
                         {disp8} mov        ecx, dword ptr [edx + 0x40]                   // 0x005f69e7    8b4a40
                         mov                eax, dword ptr [ecx]                          // 0x005f69ea    8b01
                         push               0x0                                           // 0x005f69ec    6a00
                         call               dword ptr [eax + 8]                           // 0x005f69ee    ff5008
_jmp_addr_0x005f69f1:    pop                edi                                           // 0x005f69f1    5f
                         pop                esi                                           // 0x005f69f2    5e
                         pop                ebp                                           // 0x005f69f3    5d
                         pop                ebx                                           // 0x005f69f4    5b
                         add                esp, 0x00001548                               // 0x005f69f5    81c448150000
                         ret                0x0014                                        // 0x005f69fb    c21400

// Snippet: db, [0x005f69fe, 0x005f6a00)
.byte 0x8b, 0xff                  // 0x005f69fe

// Snippet: jmptbl, [0x005f6a00, 0x005f6a64)
.byte 0x5d, 0x66, 0x5f, 0x00      // 0x005f6a00
.byte 0x91, 0x60, 0x5f, 0x00      // 0x005f6a04
.byte 0x9e, 0x69, 0x5f, 0x00      // 0x005f6a08
.byte 0xae, 0x65, 0x5f, 0x00      // 0x005f6a0c
.byte 0x9e, 0x69, 0x5f, 0x00      // 0x005f6a10
.byte 0xdb, 0x5f, 0x5f, 0x00      // 0x005f6a14
.byte 0xe9, 0x5f, 0x5f, 0x00      // 0x005f6a18
.byte 0x9e, 0x69, 0x5f, 0x00      // 0x005f6a1c
.byte 0x45, 0x60, 0x5f, 0x00      // 0x005f6a20
.byte 0xb3, 0x66, 0x5f, 0x00      // 0x005f6a24
.byte 0xf2, 0x66, 0x5f, 0x00      // 0x005f6a28
.byte 0x34, 0x67, 0x5f, 0x00      // 0x005f6a2c
.byte 0x5b, 0x67, 0x5f, 0x00      // 0x005f6a30
.byte 0x47, 0x69, 0x5f, 0x00      // 0x005f6a34
.byte 0x9a, 0x67, 0x5f, 0x00      // 0x005f6a38
.byte 0x5b, 0x67, 0x5f, 0x00      // 0x005f6a3c
.byte 0xdc, 0x67, 0x5f, 0x00      // 0x005f6a40
.byte 0x03, 0x68, 0x5f, 0x00      // 0x005f6a44
.byte 0x42, 0x68, 0x5f, 0x00      // 0x005f6a48
.byte 0x47, 0x69, 0x5f, 0x00      // 0x005f6a4c
.byte 0x84, 0x68, 0x5f, 0x00      // 0x005f6a50
.byte 0x47, 0x69, 0x5f, 0x00      // 0x005f6a54
.byte 0xe7, 0x68, 0x5f, 0x00      // 0x005f6a58
.byte 0x47, 0x69, 0x5f, 0x00      // 0x005f6a5c
.byte 0xab, 0x68, 0x5f, 0x00      // 0x005f6a60

// Snippet: db, [0x005f6a64, 0x005f6a70)
.byte 0x90, 0x90, 0x90, 0x90      // 0x005f6a64
.byte 0x90, 0x90, 0x90, 0x90      // 0x005f6a68
.byte 0x90, 0x90, 0x90, 0x90      // 0x005f6a6c

