.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes

.extern _GetMidTextSize__Fv
.extern _GetSmallTextSize__Fv
.extern @FindControl__8SetupBoxFi@12
.extern @SetFocusControl__8SetupBoxFP12SetupControl@12
.extern ??0SetupControl@@QAE@HHHHHPA_W@Z
.extern ??1SetupControl@@UAE@XZ
.extern @__ct__10SetupButtonFiiiiiPwi@36
.extern @__ct__11SetupSliderFiiiiifPw@36
.extern @AutoScroll__9SetupListFb@9
.extern @__ct__9SetupListFiiiii@28
.extern ?UpdateHeights@SetupList@@QAEXXZ
.extern @DeleteString__9SetupListFi@12
.extern @InsertString__9SetupListFiPw@16
.extern @__ct__9SetupEditFiiiiiPwi@33
.extern @__ct__14SetupBigButtonFiiiPwiii@36
.extern @SetNum__9HLineDataFi@12
.extern @__ct__15SetupHLineGraphFiiiiiPwb@33
.extern @__ct__14SetupTabButtonFiiiiiPwiii@35
.extern @__ct__13SetupCheckBoxFiiibiPwi@33
.extern ?DrawText@SetupThing@@SAMHHHW4TEXTJUSTIFY@@PA_WHPAULH3DColor@@H@Z
.extern _jmp_addr_0x00411dd0
.extern _jmp_addr_0x00411f10
.extern _jmp_addr_0x00411fc0
.extern ?DrawBigButton@SetupThing@@SAXHH_N0HW4BBSTYLE@@0HH@Z
.extern ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z
.extern ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z
.extern _jmp_addr_0x00436960
.extern ??3Base@@SAXPAXK@Z
.extern _jmp_addr_0x004707f0
.extern @Init__13DialogBoxBaseFUlUlPFiP8SetupBoxP12SetupControlii_v@20
.extern ?Destroy@DialogBoxBase@@UAEXXZ
.extern _jmp_addr_0x00513640
.extern _jmp_addr_0x005259d0
.extern @UseFootpathIfNecessary__13GFootpathLinkFP6LivingRC9MapCoordsUcP16GameThingWithPos@24
.extern ?GetNextActivePlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z
.extern ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z
.extern ?IsMultiplayerGame@GGame@@QBE_NXZ
.extern _jmp_addr_0x00563f60
.extern @ReadCheckSum__10GameOSFileFP9GameThing@12
.extern @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13
.extern _RenderLoadingFrame__Fb
.extern _jmp_addr_0x006041c0
.extern @GetLHPoint__9MapCoordsCFv@12
.extern _jmp_addr_0x00634370
.extern ?GetPlayerNumber@GPlayer@@QBEEXZ
.extern @GetPlayer3DColor__7GPlayerFv@12
.extern ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern @Read__8LHOSFileFPvUlPUl@20
.extern @Write__8LHOSFileFPvUlPUl@20
.extern _atexit
.extern _sprintf
.extern ___RTDynamicCast
.extern _wcscat
.extern _wcscpy
.extern _wcsncpy
.extern _wcslen
.extern _swprintf
.extern __strcmpi
.extern __chkstk
.extern __splitpath
.extern ___nw__FUl
.extern @CandidateList_GetSelectIdx__Q24slim5TbIMEFv@4
.extern @CandidateList_SetViewWindow__Q24slim5TbIMEFUiUiUi@20
.extern ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z
.extern _CHAR2WCHAR__FPc

.globl _jmp_addr_0x0056f7d0
.globl _jmp_addr_0x0056f8d0
.globl _jmp_addr_0x0056f910
.globl ??0GameThing@@QAE@XZ
.globl _jmp_addr_0x0056fa70
.globl _jmp_addr_0x0056fa80
.globl @ProcessDead__9GameThingFi@12
.globl _ProcessDeadList__9GameThingFi@4
.globl ?ToBeDeleted@GameThing@@UAEXH@Z
.globl ?Save@GameThing@@QAEIAAVGGameOSFile@@@Z
.globl ?Load@GameThing@@QAEIAAVGGameOSFile@@@Z
.globl @GetSaveType__9GameThingFv@4
.globl ?ToBeDeleted@GameThingWithPos@@UAEXH@Z
.globl ?Get3DSoundPos@GameThingWithPos@@UAEHPAULHPoint@@@Z
.globl ?GetBoredomMultiplier@GameThingWithPos@@QAEHPAVReaction@@@Z
.globl ?GetUpdateOfBoredomValue@GameThingWithPos@@UAEMPAUReaction@@PAV1@@Z
.globl ?CheckAndSetSaved@GameThing@@QAE_NXZ
.globl ?GetPlayer@GameThing@@QAEPAVGPlayer@@XZ
.globl ?SetPlayer@GameThing@@QAEXPAVGPlayer@@@Z
.globl ?UseFootpathIfNecessary@GameThingWithPos@@QAEXPAVLiving@@ABUMapCoords@@E@Z
.globl ?Save@GameThingWithPos@@UAEXPAUGameOSFile@@@Z
.globl ?Load@GameThingWithPos@@QAEIAAVGameOSFile@@@Z
.globl ?SetToZero@GameThingWithPos@@QAEXXZ
.globl _jmp_addr_0x005707f0
.globl _jmp_addr_0x00570890
.globl _jmp_addr_0x005708d0
.globl _jmp_addr_0x00571f50
.globl _jmp_addr_0x00571ff0
.globl _jmp_addr_0x00572090
.globl _jmp_addr_0x005725b0
.globl _jmp_addr_0x005729e0

.globl _globl_ct_0x0056f960
.globl _globl_ct_0x0056f990
.globl _globl_ct_0x0056f9c0
.globl _globl_ct_0x0056f9e0
.globl _globl_ct_0x00570620
.globl _globl_ct_0x00570650
.globl _globl_ct_0x00570670
.globl ??_GSetupStaticTextNoHit@@UAEPAXI@Z
.globl ??_GSetupMP3Button@@UAEPAXI@Z
.globl ?GetSaveType@GameThing@@UAEIXZ
.globl ?GetPlayer@GameThing@@QAEPAVGPlayer@@XZ
.globl ?SaveExtraData@GameThing@@QAEXAAVGameOSFile@@@Z
.globl ?UseFootpathIfNecessary@GameThing@@QAEXPAVLiving@@ABUMapCoords@@E@Z
.globl ?SetPlayer@GameThing@@QAEXPAVGPlayer@@@Z
.globl ?GetTown@GameThing@@QAEPAVTown@@XZ
.globl _HitTest__20SetupStaticTextNoHitFii
.globl ?UpdateSpellInfo@GameThing@@QAEXPAVSpell@@PAVPSysProcessInfo@@@Z
.globl ?JustGetResource@GameThing@@QAEIW4RESOURCE_TYPE@@KPA_N@Z
.globl ?JustRemoveResource@GameThing@@QAEIW4RESOURCE_TYPE@@KPA_N@Z
.globl ?JustAddResource@GameThing@@QAEIW4RESOURCE_TYPE@@K_N@Z
.globl ?MaintainSpell@GameThing@@UAEXIM@Z
.globl ??1GameThing@@UAE@XZ
.globl ?GetSaveType@GameThingWithPos@@QAEKXZ
.globl ?GetPower@GameThingWithPos@@UBEMXZ
.globl ?GetPSysPower@GameThingWithPos@@UBEMXZ
.globl ?GetSpeedInMetres@GameThingWithPos@@UBEMXZ
.globl ?SetSpeedInMetres@GameThingWithPos@@UAEXMH@Z
.globl ?GetRunningSpeedInMetres@GameThingWithPos@@UBEMXZ
.globl ?GetDistanceFromObject@GameThingWithPos@@UBEMPAUMapCoords@@@Z
.globl ?GetDefaultSpeedInMetres@GameThingWithPos@@UAEMXZ
.globl ?GetPSysBeamTargetPos@GameThingWithPos@@UAEXPAULHPoint@@@Z
.globl ?GetSpeedInMetresPerSecond@GameThingWithPos@@UBEMXZ
.globl ?SetSpeedInMetresPerSecond@GameThingWithPos@@UAEXMH@Z
.globl ?GetRunningSpeedInMetresPerSecond@GameThingWithPos@@UAEMXZ
.globl ?GetDefaultSpeedInMetresPerSecond@GameThingWithPos@@UAEMXZ
.globl ?GetMovementDirection@GameThingWithPos@@UAEXPAULHPoint@@@Z
.globl ?GetPhysicsMovementDirection@GameThingWithPos@@UAEXPAULHPoint@@@Z
.globl ?GetOverwritePickUpToolTip@GameThingWithPos@@UAEIXZ
.globl ?IsInteractable@GameThingWithPos@@UAE_NXZ
.globl ?GetOverwriteInteractableToolTip@GameThingWithPos@@UAEIXZ
.globl ?GetOverwriteDropToolTip@GameThingWithPos@@UAEIXZ
.globl ?GetOverwriteTapToolTip@GameThingWithPos@@UAEIXZ
.globl ?GetImpressiveType@GameThingWithPos@@UAE?AW4IMPRESSIVE_TYPE@@XZ
.globl ?GetUpdateOfBoredomValue@GameThingWithPos@@UAEMPAUReaction@@PAV1@@Z
.globl ?CalculateWhereIWillBeAfterNSeconds@GameThingWithPos@@UAEXMPAULHPoint@@@Z
.globl ?ForDrawFXGetNumVertices@GameThingWithPos@@UAEHXZ
.globl ?ForDrawFXGetVertexPos@GameThingWithPos@@UAEXHPAULHPoint@@@Z
.globl ?CanBeThrownByPlayer@GameThingWithPos@@UBE_NXZ
.globl ?GetFOVHelpMessageSet@GameThingWithPos@@UAEIXZ
.globl ?GetFOVHelpCondition@GameThingWithPos@@UAEIXZ
.globl ?GetScriptObjectType@GameThingWithPos@@UAEIXZ
.globl ?GetSpellCastPos@GameThingWithPos@@UAEXPAUMapCoords@@@Z
.globl ?Init@MultiplayerConditionBox@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z
.globl ?Destroy@MultiplayerConditionBox@@UAEXXZ
.globl ?InitControls@MultiplayerConditionBox@@UAEXXZ
.globl ?Init@GatheringBox@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z
.globl ?Destroy@GatheringBox@@UAEXXZ

?Init@MultiplayerConditionBox@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z:
                         sub                esp, 0x00000818                               // 0x0056eef0    81ec18080000
                         {disp32} mov       eax, dword ptr [esp + 0x00000824]             // 0x0056eef6    8b842424080000
                         push               ebx                                           // 0x0056eefd    53
                         push               ebp                                           // 0x0056eefe    55
                         push               esi                                           // 0x0056eeff    56
                         push               edi                                           // 0x0056ef00    57
                         {disp32} mov       edi, dword ptr [esp + 0x0000082c]             // 0x0056ef01    8bbc242c080000
                         mov.s              ebp, ecx                                      // 0x0056ef08    8be9
                         {disp32} mov       ecx, dword ptr [esp + 0x00000830]             // 0x0056ef0a    8b8c2430080000
                         push               eax                                           // 0x0056ef11    50
                         push               ecx                                           // 0x0056ef12    51
                         push               edi                                           // 0x0056ef13    57
                         mov.s              ecx, ebp                                      // 0x0056ef14    8bcd
                         call               @Init__13DialogBoxBaseFUlUlPFiP8SetupBoxP12SetupControlii_v@20                          // 0x0056ef16    e8e544faff
                         xor.s              esi, esi                                      // 0x0056ef1b    33f6
                         {disp8} mov        dword ptr [esp + 0x1c], edi                   // 0x0056ef1d    897c241c
                         {disp8} mov        dword ptr [esp + 0x20], esi                   // 0x0056ef21    89742420
                         {disp8} fild       qword ptr [esp + 0x1c]                        // 0x0056ef25    df6c241c
                         mov.s              edx, edi                                      // 0x0056ef29    8bd7
                         shr                edx, 1                                        // 0x0056ef2b    d1ea
                         mov                eax, 0x00000190                               // 0x0056ef2d    b890010000
                         {disp32} fmul      dword ptr [_rdata_float0p2]                   // 0x0056ef32    d80daca38a00
                         sub.s              eax, edx                                      // 0x0056ef38    2bc2
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x0056ef3a    89442414
                         {disp8} mov        dword ptr [esp + 0x18], esi                   // 0x0056ef3e    89742418
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0056ef42    d95c241c
                         {disp32} mov       dword ptr [data_bytes + 0x340058], ebp        // 0x0056ef46    892d5860d000
                         {disp8} fild       qword ptr [esp + 0x14]                        // 0x0056ef4c    df6c2414
                         {disp8} mov        dword ptr [ebp + 0x38], 0x00000001            // 0x0056ef50    c7453801000000
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0056ef57    d95c2410
_jmp_addr_0x0056ef5b:    mov.s              eax, esi                                      // 0x0056ef5b    8bc6
                         sub                eax, 0x00                                     // 0x0056ef5d    83e800
                         {disp8} je         _jmp_addr_0x0056ef9e                          // 0x0056ef60    743c
                         dec                eax                                           // 0x0056ef62    48
                         {disp8} je         _jmp_addr_0x0056ef6f                          // 0x0056ef63    740a
                         {disp8} mov        dword ptr [esp + 0x14], 0x00c4cd30            // 0x0056ef65    c744241430cdc400
                         {disp8} jmp        _jmp_addr_0x0056efbb                          // 0x0056ef6d    eb4c
_jmp_addr_0x0056ef6f:    cmp                dword ptr [data_bytes + 0x351c9c], 0x13       // 0x0056ef6f    833d9c7cd10013
                         {disp8} ja         _jmp_addr_0x0056ef86                          // 0x0056ef76    770e
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351c98]        // 0x0056ef78    a1987cd100
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0056ef7d    8b5008
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x0056ef80    89542414
                         {disp8} jmp        _jmp_addr_0x0056efbb                          // 0x0056ef84    eb35
_jmp_addr_0x0056ef86:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351c98]        // 0x0056ef86    8b0d987cd100
                         {disp32} mov       edx, dword ptr [ecx + 0x000000ec]             // 0x0056ef8c    8b91ec000000
                         {disp32} lea       eax, dword ptr [ecx + 0x000000e4]             // 0x0056ef92    8d81e4000000
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x0056ef98    89542414
                         {disp8} jmp        _jmp_addr_0x0056efbb                          // 0x0056ef9c    eb1d
_jmp_addr_0x0056ef9e:    cmp                dword ptr [data_bytes + 0x351cac], 0x00001a7a // 0x0056ef9e    813dac7cd1007a1a0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056efa8    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0056efb4                          // 0x0056efad    7605
                         add                eax, 0x00013db8                               // 0x0056efaf    05b83d0100
_jmp_addr_0x0056efb4:    {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x0056efb4    8b4808
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x0056efb7    894c2414
_jmp_addr_0x0056efbb:    push               0x00000379                                    // 0x0056efbb    6879030000
                         push               0x00bef098                                    // 0x0056efc0    6898f0be00
                         push               0x00000254                                    // 0x0056efc5    6854020000
                         call               ___nw__FUl                                    // 0x0056efca    e8c1c72600
                         mov.s              ebx, eax                                      // 0x0056efcf    8bd8
                         add                esp, 0x0c                                     // 0x0056efd1    83c40c
                         test               ebx, ebx                                      // 0x0056efd4    85db
                         {disp8} je         _jmp_addr_0x0056f041                          // 0x0056efd6    7469
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0056efd8    d9442410
                         call               _jmp_addr_0x007a1400                          // 0x0056efdc    e81f242300
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0056efe1    d9442410
                         xor.s              edx, edx                                      // 0x0056efe5    33d2
                         {disp8} fadd       dword ptr [esp + 0x1c]                        // 0x0056efe7    d844241c
                         cmp                esi, 0x04                                     // 0x0056efeb    83fe04
                         sete               dl                                            // 0x0056efee    0f94c2
                         mov.s              edi, eax                                      // 0x0056eff1    8bf8
                         xor.s              eax, eax                                      // 0x0056eff3    33c0
                         test               esi, esi                                      // 0x0056eff5    85f6
                         sete               al                                            // 0x0056eff7    0f94c0
                         xor.s              ecx, ecx                                      // 0x0056effa    33c9
                         push               edx                                           // 0x0056effc    52
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x0056effd    8b542418
                         push               eax                                           // 0x0056f001    50
                         cmp                esi, dword ptr [ebp + 0x38]                   // 0x0056f002    3b7538
                         sete               cl                                            // 0x0056f005    0f94c1
                         push               ecx                                           // 0x0056f008    51
                         push               edx                                           // 0x0056f009    52
                         push               0x28                                          // 0x0056f00a    6a28
                         call               _jmp_addr_0x007a1400                          // 0x0056f00c    e8ef232300
                         sub.s              eax, edi                                      // 0x0056f011    2bc7
                         push               eax                                           // 0x0056f013    50
                         {disp32} mov       eax, dword ptr [esp + 0x00000848]             // 0x0056f014    8b842448080000
                         shr                eax, 1                                        // 0x0056f01b    d1e8
                         xor.s              edx, edx                                      // 0x0056f01d    33d2
                         mov                ecx, 0x00000104                               // 0x0056f01f    b904010000
                         sub.s              ecx, eax                                      // 0x0056f024    2bc8
                         test               esi, esi                                      // 0x0056f026    85f6
                         setne              dl                                            // 0x0056f028    0f95c2
                         push               ecx                                           // 0x0056f02b    51
                         push               edi                                           // 0x0056f02c    57
                         mov.s              ecx, ebx                                      // 0x0056f02d    8bcb
                         add                edx, 0x06                                     // 0x0056f02f    83c206
                         push               edx                                           // 0x0056f032    52
                         call               @__ct__14SetupTabButtonFiiiiiPwiii@35         // 0x0056f033    e8a805eaff
                         {disp32} mov       edi, dword ptr [esp + 0x0000082c]             // 0x0056f038    8bbc242c080000
                         {disp8} jmp        _jmp_addr_0x0056f043                          // 0x0056f03f    eb02
_jmp_addr_0x0056f041:    xor.s              eax, eax                                      // 0x0056f041    33c0
_jmp_addr_0x0056f043:    {disp8} mov        dword ptr [ebp + esi * 0x4 + 0x10], eax       // 0x0056f043    8944b510
                         call               _GetSmallTextSize__Fv                         // 0x0056f047    e8c489e9ff
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0056f04c    d9442410
                         {disp8} mov        ecx, dword ptr [ebp + esi * 0x4 + 0x10]       // 0x0056f050    8b4cb510
                         {disp8} fadd       dword ptr [esp + 0x1c]                        // 0x0056f054    d844241c
                         inc                esi                                           // 0x0056f058    46
                         cmp                esi, 0x05                                     // 0x0056f059    83fe05
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0056f05c    d95c2410
                         {disp8} mov        dword ptr [ecx + 0x20], eax                   // 0x0056f060    894120
                         {disp32} jl        _jmp_addr_0x0056ef5b                          // 0x0056f063    0f8cf2feffff
                         call               _GetMidTextSize__Fv                           // 0x0056f069    e89289e9ff
                         {disp8} mov        edx, dword ptr [ebp + 0x04]                   // 0x0056f06e    8b5504
                         push               0x00000380                                    // 0x0056f071    6880030000
                         push               0x00bef098                                    // 0x0056f076    6898f0be00
                         {disp32} mov       dword ptr [edx + 0x000000ac], eax             // 0x0056f07b    8982ac000000
                         push               0x0000025c                                    // 0x0056f081    685c020000
                         {disp32} mov       byte ptr [data_bytes + 0x286cec], 0x01        // 0x0056f086    c605ecccc40001
                         call               ___nw__FUl                                    // 0x0056f08d    e8fec62600
                         add                esp, 0x0c                                     // 0x0056f092    83c40c
                         test               eax, eax                                      // 0x0056f095    85c0
                         {disp8} je         _jmp_addr_0x0056f0cd                          // 0x0056f097    7434
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000d59 // 0x0056f099    813dac7cd100590d0000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056f0a3    8b0da87cd100
                         {disp8} jbe        _jmp_addr_0x0056f0b1                          // 0x0056f0a9    7606
                         add                ecx, 0x0000a02c                               // 0x0056f0ab    81c12ca00000
_jmp_addr_0x0056f0b1:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x0056f0b1    8b4908
                         push               0x2                                           // 0x0056f0b4    6a02
                         push               0x0                                           // 0x0056f0b6    6a00
                         push               0x28                                          // 0x0056f0b8    6a28
                         push               ecx                                           // 0x0056f0ba    51
                         push               0x00000212                                    // 0x0056f0bb    6812020000
                         push               0x14                                          // 0x0056f0c0    6a14
                         push               0x8                                           // 0x0056f0c2    6a08
                         mov.s              ecx, eax                                      // 0x0056f0c4    8bc8
                         call               @__ct__14SetupBigButtonFiiiPwiii@36           // 0x0056f0c6    e895e1e9ff
                         {disp8} jmp        _jmp_addr_0x0056f0cf                          // 0x0056f0cb    eb02
_jmp_addr_0x0056f0cd:    xor.s              eax, eax                                      // 0x0056f0cd    33c0
_jmp_addr_0x0056f0cf:    push               0x00000381                                    // 0x0056f0cf    6881030000
                         push               0x00bef098                                    // 0x0056f0d4    6898f0be00
                         push               0x00000258                                    // 0x0056f0d9    6858020000
                         {disp8} mov        dword ptr [ebp + 0x18], eax                   // 0x0056f0de    894518
                         call               ___nw__FUl                                    // 0x0056f0e1    e8aac62600
                         add                esp, 0x0c                                     // 0x0056f0e6    83c40c
                         test               eax, eax                                      // 0x0056f0e9    85c0
                         {disp8} je         _jmp_addr_0x0056f10c                          // 0x0056f0eb    741f
                         push               0x0                                           // 0x0056f0ed    6a00
                         push               0x00c4cd30                                    // 0x0056f0ef    6830cdc400
                         push               0x000000b4                                    // 0x0056f0f4    68b4000000
                         {disp8} lea        edx, dword ptr [edi + -0x41]                  // 0x0056f0f9    8d57bf
                         push               edx                                           // 0x0056f0fc    52
                         push               0x64                                          // 0x0056f0fd    6a64
                         push               0x28                                          // 0x0056f0ff    6a28
                         push               0x0                                           // 0x0056f101    6a00
                         mov.s              ecx, eax                                      // 0x0056f103    8bc8
                         call               @__ct__15SetupHLineGraphFiiiiiPwb@33          // 0x0056f105    e806f4e9ff
                         {disp8} jmp        _jmp_addr_0x0056f10e                          // 0x0056f10a    eb02
_jmp_addr_0x0056f10c:    xor.s              eax, eax                                      // 0x0056f10c    33c0
_jmp_addr_0x0056f10e:    push               0x00000382                                    // 0x0056f10e    6882030000
                         push               0x00bef098                                    // 0x0056f113    6898f0be00
                         push               0x000002b0                                    // 0x0056f118    68b0020000
                         {disp8} mov        dword ptr [ebp + 0x2c], eax                   // 0x0056f11d    89452c
                         call               ___nw__FUl                                    // 0x0056f120    e86bc62600
                         add                esp, 0x0c                                     // 0x0056f125    83c40c
                         test               eax, eax                                      // 0x0056f128    85c0
                         {disp8} je         _jmp_addr_0x0056f147                          // 0x0056f12a    741b
                         push               0x000000b4                                    // 0x0056f12c    68b4000000
                         add                edi, -0x41                                    // 0x0056f131    83c7bf
                         push               edi                                           // 0x0056f134    57
                         push               0x00000159                                    // 0x0056f135    6859010000
                         push               0x28                                          // 0x0056f13a    6a28
                         push               0x5                                           // 0x0056f13c    6a05
                         mov.s              ecx, eax                                      // 0x0056f13e    8bc8
                         call               @__ct__9SetupListFiiiii@28                    // 0x0056f140    e80bb3e9ff
                         {disp8} jmp        _jmp_addr_0x0056f149                          // 0x0056f145    eb02
_jmp_addr_0x0056f147:    xor.s              eax, eax                                      // 0x0056f147    33c0
_jmp_addr_0x0056f149:    push               0x00000383                                    // 0x0056f149    6883030000
                         push               0x00bef098                                    // 0x0056f14e    6898f0be00
                         push               0x00000244                                    // 0x0056f153    6844020000
                         {disp8} mov        dword ptr [ebp + 0x30], eax                   // 0x0056f158    894530
                         call               ___nw__FUl                                    // 0x0056f15b    e830c62600
                         mov.s              esi, eax                                      // 0x0056f160    8bf0
                         add                esp, 0x0c                                     // 0x0056f162    83c40c
                         test               esi, esi                                      // 0x0056f165    85f6
                         {disp8} je         _jmp_addr_0x0056f1b7                          // 0x0056f167    744e
                         cmp                dword ptr [data_bytes + 0x351c9c], 0x14       // 0x0056f169    833d9c7cd10014
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351c98]        // 0x0056f170    a1987cd100
                         {disp8} jbe        _jmp_addr_0x0056f17c                          // 0x0056f175    7605
                         add                eax, 0x000000f0                               // 0x0056f177    05f0000000
_jmp_addr_0x0056f17c:    {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x0056f17c    8b4808
                         push               ecx                                           // 0x0056f17f    51
                         push               0x1c                                          // 0x0056f180    6a1c
                         push               0x000002d0                                    // 0x0056f182    68d0020000
                         push               0x3c                                          // 0x0056f187    6a3c
                         push               0x28                                          // 0x0056f189    6a28
                         push               0x1                                           // 0x0056f18b    6a01
                         mov.s              ecx, esi                                      // 0x0056f18d    8bce
                         call               ??0SetupControl@@QAE@HHHHHPA_W@Z              // 0x0056f18f    e8bca0e9ff
                         mov                dword ptr [esi], 0x008ab5c0                   // 0x0056f194    c706c0b58a00
                         {disp32} mov       dword ptr [esi + 0x0000023c], 0x00000001      // 0x0056f19a    c7863c02000001000000
                         {disp32} mov       byte ptr [esi + 0x0000022a], 0x00             // 0x0056f1a4    c6862a02000000
                         {disp32} mov       dword ptr [esi + 0x00000240], 0x00000000      // 0x0056f1ab    c7864002000000000000
                         {disp8} jmp        _jmp_addr_0x0056f1b9                          // 0x0056f1b5    eb02
_jmp_addr_0x0056f1b7:    xor.s              esi, esi                                      // 0x0056f1b7    33f6
_jmp_addr_0x0056f1b9:    {disp32} mov       edi, dword ptr [rdata_bytes + 0x3d8]          // 0x0056f1b9    8b3dd8938a00
                         {disp8} mov        dword ptr [ebp + 0x34], esi                   // 0x0056f1bf    897534
                         {disp8} mov        dword ptr [esp + 0x10], 0x42c80000            // 0x0056f1c2    c74424100000c842
                         mov                esi, 0x00000001                               // 0x0056f1ca    be01000000
                         add                ebp, 0x1c                                     // 0x0056f1cf    83c51c
_jmp_addr_0x0056f1d2:    push               0x00000388                                    // 0x0056f1d2    6888030000
                         push               0x00bef098                                    // 0x0056f1d7    6898f0be00
                         push               0x00000260                                    // 0x0056f1dc    6860020000
                         call               ___nw__FUl                                    // 0x0056f1e1    e8aac52600
                         mov.s              ebx, eax                                      // 0x0056f1e6    8bd8
                         add                esp, 0x0c                                     // 0x0056f1e8    83c40c
                         test               ebx, ebx                                      // 0x0056f1eb    85db
                         {disp8} je         _jmp_addr_0x0056f21f                          // 0x0056f1ed    7430
                         push               0x19                                          // 0x0056f1ef    6a19
                         push               esi                                           // 0x0056f1f1    56
                         {disp8} lea        edx, dword ptr [esp + 0x2c]                   // 0x0056f1f2    8d54242c
                         push               0x00bef0d8                                    // 0x0056f1f6    68d8f0be00
                         push               edx                                           // 0x0056f1fb    52
                         call               edi                                           // 0x0056f1fc    ffd7
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0056f1fe    d9442420
                         add                esp, 0x0c                                     // 0x0056f202    83c40c
                         push               eax                                           // 0x0056f205    50
                         push               0x1                                           // 0x0056f206    6a01
                         push               0x0                                           // 0x0056f208    6a00
                         push               0x00000127                                    // 0x0056f20a    6827010000
                         call               _jmp_addr_0x007a1400                          // 0x0056f20f    e8ec212300
                         push               eax                                           // 0x0056f214    50
                         push               esi                                           // 0x0056f215    56
                         mov.s              ecx, ebx                                      // 0x0056f216    8bcb
                         call               @__ct__13SetupCheckBoxFiiibiPwi@33            // 0x0056f218    e8f31ceaff
                         {disp8} jmp        _jmp_addr_0x0056f221                          // 0x0056f21d    eb02
_jmp_addr_0x0056f21f:    xor.s              eax, eax                                      // 0x0056f21f    33c0
_jmp_addr_0x0056f221:    {disp8} fld        dword ptr [esp + 0x10]                        // 0x0056f221    d9442410
                         {disp8} mov        dword ptr [ebp + 0x00], eax                   // 0x0056f225    894500
                         {disp32} fadd      dword ptr [rdata_bytes + 0x241c]              // 0x0056f228    d8051cb48a00
                         add                ebp, 0x04                                     // 0x0056f22e    83c504
                         inc                esi                                           // 0x0056f231    46
                         {disp32} mov       dword ptr [eax + 0x00000248], 0x00000001      // 0x0056f232    c7804802000001000000
                         {disp8} lea        eax, dword ptr [esi + -0x01]                  // 0x0056f23c    8d46ff
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0056f23f    d95c2410
                         cmp                eax, 0x04                                     // 0x0056f243    83f804
                         {disp8} jl         _jmp_addr_0x0056f1d2                          // 0x0056f246    7c8a
                         pop                edi                                           // 0x0056f248    5f
                         pop                esi                                           // 0x0056f249    5e
                         pop                ebp                                           // 0x0056f24a    5d
                         pop                ebx                                           // 0x0056f24b    5b
                         add                esp, 0x00000818                               // 0x0056f24c    81c418080000
                         ret                0x000c                                        // 0x0056f252    c20c00
                         nop                                                              // 0x0056f255    90
                         nop                                                              // 0x0056f256    90
                         nop                                                              // 0x0056f257    90
                         nop                                                              // 0x0056f258    90
                         nop                                                              // 0x0056f259    90
                         nop                                                              // 0x0056f25a    90
                         nop                                                              // 0x0056f25b    90
                         nop                                                              // 0x0056f25c    90
                         nop                                                              // 0x0056f25d    90
                         nop                                                              // 0x0056f25e    90
                         nop                                                              // 0x0056f25f    90
?Destroy@MultiplayerConditionBox@@UAEXXZ:
                         call               ?Destroy@DialogBoxBase@@UAEXXZ                // 0x0056f260    e82b43faff
                         {disp32} mov       dword ptr [data_bytes + 0x340058], 0x00000000 // 0x0056f265    c7055860d00000000000
                         ret                                                              // 0x0056f26f    c3
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x0056f270    8b44241c
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0056f274    8b4c2410
                         sub                esp, 0x00000830                               // 0x0056f278    81ec30080000
                         push               ebx                                           // 0x0056f27e    53
                         push               ebp                                           // 0x0056f27f    55
                         push               esi                                           // 0x0056f280    56
                         push               edi                                           // 0x0056f281    57
                         xor.s              ebp, ebp                                      // 0x0056f282    33ed
                         xor.s              edi, edi                                      // 0x0056f284    33ff
                         cmp.s              eax, ecx                                      // 0x0056f286    3bc1
                         {disp32} jl        _jmp_addr_0x0056f44d                          // 0x0056f288    0f8cbf010000
                         {disp32} mov       ecx, dword ptr [esp + 0x00000860]             // 0x0056f28e    8b8c2460080000
                         cmp                ecx, dword ptr [esp + 0x00000858]             // 0x0056f295    3b8c2458080000
                         {disp32} jg        _jmp_addr_0x0056f44d                          // 0x0056f29c    0f8fab010000
                         {disp32} mov       eax, dword ptr [esp + 0x00000848]             // 0x0056f2a2    8b842448080000
                         cmp.s              eax, ebp                                      // 0x0056f2a9    3bc5
                         {disp8} jl         _jmp_addr_0x0056f2c7                          // 0x0056f2ab    7c1a
                         {disp32} mov       ecx, dword ptr [esp + 0x00000844]             // 0x0056f2ad    8b8c2444080000
                         cmp                eax, dword ptr [ecx + 0x00000250]             // 0x0056f2b4    3b8150020000
                         {disp8} jge        _jmp_addr_0x0056f2c7                          // 0x0056f2ba    7d0b
                         {disp32} mov       edx, dword ptr [ecx + 0x00000264]             // 0x0056f2bc    8b9164020000
                         mov                eax, dword ptr [edx + eax * 0x4]              // 0x0056f2c2    8b0482
                         {disp8} jmp        _jmp_addr_0x0056f2c9                          // 0x0056f2c5    eb02
_jmp_addr_0x0056f2c7:    xor.s              eax, eax                                      // 0x0056f2c7    33c0
_jmp_addr_0x0056f2c9:    {disp32} mov       ecx, dword ptr [_game]                        // 0x0056f2c9    8b0d5c19d000
                         push               ebp                                           // 0x0056f2cf    55
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x0056f2d0    89442418
                         {disp8} mov        dword ptr [esp + 0x28], ebp                   // 0x0056f2d4    896c2428
                         {disp8} mov        dword ptr [esp + 0x2c], ebp                   // 0x0056f2d8    896c242c
                         {disp8} mov        dword ptr [esp + 0x30], ebp                   // 0x0056f2dc    896c2430
                         {disp8} mov        dword ptr [esp + 0x34], ebp                   // 0x0056f2e0    896c2434
                         call               ?GetNextActivePlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z                          // 0x0056f2e4    e8e715feff
                         mov.s              esi, eax                                      // 0x0056f2e9    8bf0
                         cmp.s              esi, ebp                                      // 0x0056f2eb    3bf5
                         {disp32} je        _jmp_addr_0x0056f44d                          // 0x0056f2ed    0f845a010000
                         {disp8} lea        ebx, dword ptr [esp + 0x24]                   // 0x0056f2f3    8d5c2424
_jmp_addr_0x0056f2f7:    cmp                byte ptr [esi + 0x000000b5], 0x04             // 0x0056f2f7    80beb500000004
                         {disp8} jae        _jmp_addr_0x0056f31f                          // 0x0056f2fe    731f
                         mov.s              ecx, esi                                      // 0x0056f300    8bce
                         call               ?GetPlayerNumber@GPlayer@@QBEEXZ              // 0x0056f302    e889b40d00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x340058]        // 0x0056f307    8b0d5860d000
                         {disp8} mov        eax, dword ptr [ecx + eax * 0x4 + 0x1c]       // 0x0056f30d    8b44811c
                         cmp                dword ptr [eax + 0x00000248], ebp             // 0x0056f311    39a848020000
                         {disp8} je         _jmp_addr_0x0056f31f                          // 0x0056f317    7406
                         mov                dword ptr [ebx], esi                          // 0x0056f319    8933
                         inc                edi                                           // 0x0056f31b    47
                         add                ebx, 0x04                                     // 0x0056f31c    83c304
_jmp_addr_0x0056f31f:    {disp32} mov       ecx, dword ptr [_game]                        // 0x0056f31f    8b0d5c19d000
                         push               esi                                           // 0x0056f325    56
                         call               ?GetNextActivePlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z                          // 0x0056f326    e8a515feff
                         mov.s              esi, eax                                      // 0x0056f32b    8bf0
                         cmp.s              esi, ebp                                      // 0x0056f32d    3bf5
                         {disp8} jne        _jmp_addr_0x0056f2f7                          // 0x0056f32f    75c6
                         cmp.s              edi, ebp                                      // 0x0056f331    3bfd
                         {disp32} je        _jmp_addr_0x0056f44d                          // 0x0056f333    0f8414010000
                         {disp32} mov       ecx, dword ptr [esp + 0x00000854]             // 0x0056f339    8b8c2454080000
                         {disp32} mov       esi, dword ptr [esp + 0x0000084c]             // 0x0056f340    8bb4244c080000
                         sub.s              ecx, esi                                      // 0x0056f347    2bce
                         mov                eax, 0x55555556                               // 0x0056f349    b856555555
                         imul               ecx                                           // 0x0056f34e    f7e9
                         mov.s              eax, edx                                      // 0x0056f350    8bc2
                         shr                eax, 0x1f                                     // 0x0056f352    c1e81f
                         add.s              edx, eax                                      // 0x0056f355    03d0
                         mov.s              ecx, edx                                      // 0x0056f357    8bca
                         xor.s              edx, edx                                      // 0x0056f359    33d2
                         mov.s              eax, ecx                                      // 0x0056f35b    8bc1
                         div                edi                                           // 0x0056f35d    f7f7
                         cmp.s              edi, ebp                                      // 0x0056f35f    3bfd
                         mov.s              ebx, eax                                      // 0x0056f361    8bd8
                         {disp32} jbe       _jmp_addr_0x0056f44d                          // 0x0056f363    0f86e4000000
                         {disp8} lea        edx, dword ptr [esp + 0x24]                   // 0x0056f369    8d542424
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x0056f36d    89542410
                         lea                ebp, dword ptr [esi + ecx * 0x2]              // 0x0056f371    8d2c4e
                         {disp8} mov        dword ptr [esp + 0x1c], edi                   // 0x0056f374    897c241c
_jmp_addr_0x0056f378:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0056f378    8b442410
                         mov                edi, dword ptr [eax]                          // 0x0056f37c    8b38
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0056f37e    8d4c2414
                         push               ecx                                           // 0x0056f382    51
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                   // 0x0056f383    8d54241c
                         {disp32} lea       esi, dword ptr [edi + 0x000000f8]             // 0x0056f387    8db7f8000000
                         push               edx                                           // 0x0056f38d    52
                         mov.s              ecx, esi                                      // 0x0056f38e    8bce
                         call               _jmp_addr_0x0056f8d0                          // 0x0056f390    e83b050000
                         {disp8} mov        esi, dword ptr [esi + 0x04]                   // 0x0056f395    8b7604
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x0056f398    8b442418
                         cmp.s              eax, esi                                      // 0x0056f39c    3bc6
                         {disp8} je         _jmp_addr_0x0056f3af                          // 0x0056f39e    740f
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x0056f3a0    8b4c2414
                         cmp                ecx, dword ptr [eax + 0x0c]                   // 0x0056f3a4    3b480c
                         {disp8} jl         _jmp_addr_0x0056f3af                          // 0x0056f3a7    7c06
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x0056f3a9    8d442418
                         {disp8} jmp        _jmp_addr_0x0056f3b7                          // 0x0056f3ad    eb08
_jmp_addr_0x0056f3af:    {disp8} mov        dword ptr [esp + 0x20], esi                   // 0x0056f3af    89742420
                         {disp8} lea        eax, dword ptr [esp + 0x20]                   // 0x0056f3b3    8d442420
_jmp_addr_0x0056f3b7:    mov                ecx, dword ptr [eax]                          // 0x0056f3b7    8b08
                         {disp8} mov        eax, dword ptr [ecx + 0x14]                   // 0x0056f3b9    8b4114
                         {disp8} mov        edx, dword ptr [ecx + 0x18]                   // 0x0056f3bc    8b5118
                         cmp.s              eax, edx                                      // 0x0056f3bf    3bc2
                         {disp8} jbe        _jmp_addr_0x0056f3c5                          // 0x0056f3c1    7602
                         mov.s              eax, edx                                      // 0x0056f3c3    8bc2
_jmp_addr_0x0056f3c5:    {disp8} mov        dl, byte ptr [ecx + 0x1c]                     // 0x0056f3c5    8a511c
                         test               dl, dl                                        // 0x0056f3c8    84d2
                         {disp8} jne        _jmp_addr_0x0056f3ea                          // 0x0056f3ca    751e
                         push               eax                                           // 0x0056f3cc    50
                         {disp8} lea        edx, dword ptr [esp + 0x40]                   // 0x0056f3cd    8d542440
                         push               0x00bef0ec                                    // 0x0056f3d1    68ecf0be00
                         push               edx                                           // 0x0056f3d6    52
                         call               dword ptr [__imp___0LHSPrintfW__QAA_PAGZZ@4]  // 0x0056f3d7    ff15d8938a00
                         add                esp, 0x0c                                     // 0x0056f3dd    83c40c
                         mov.s              esi, eax                                      // 0x0056f3e0    8bf0
                         push               0x0                                           // 0x0056f3e2    6a00
                         {disp8} lea        eax, dword ptr [esp + 0x3c]                   // 0x0056f3e4    8d44243c
                         {disp8} jmp        _jmp_addr_0x0056f40f                          // 0x0056f3e8    eb25
_jmp_addr_0x0056f3ea:    cmp                dword ptr [data_bytes + 0x351c9c], 0x18       // 0x0056f3ea    833d9c7cd10018
                         {disp8} ja         _jmp_addr_0x0056f3fa                          // 0x0056f3f1    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351c98]        // 0x0056f3f3    a1987cd100
                         {disp8} jmp        _jmp_addr_0x0056f406                          // 0x0056f3f8    eb0c
_jmp_addr_0x0056f3fa:    {disp32} mov       edx, dword ptr [data_bytes + 0x351c98]        // 0x0056f3fa    8b15987cd100
                         {disp32} lea       eax, dword ptr [edx + 0x00000120]             // 0x0056f400    8d8220010000
_jmp_addr_0x0056f406:    {disp8} mov        esi, dword ptr [eax + 0x08]                   // 0x0056f406    8b7008
                         push               0x0                                           // 0x0056f409    6a00
                         {disp8} lea        eax, dword ptr [esp + 0x38]                   // 0x0056f40b    8d442438
_jmp_addr_0x0056f40f:    push               eax                                           // 0x0056f40f    50
                         mov.s              ecx, edi                                      // 0x0056f410    8bcf
                         call               @GetPlayer3DColor__7GPlayerFv@12              // 0x0056f412    e879c10d00
                         {disp32} mov       ecx, dword ptr [esp + 0x00000860]             // 0x0056f417    8b8c2460080000
                         push               eax                                           // 0x0056f41e    50
                         push               0x1a                                          // 0x0056f41f    6a1a
                         push               esi                                           // 0x0056f421    56
                         push               0x1                                           // 0x0056f422    6a01
                         push               ebx                                           // 0x0056f424    53
                         push               ecx                                           // 0x0056f425    51
                         push               ebp                                           // 0x0056f426    55
                         call               ?DrawText@SetupThing@@SAMHHHW4TEXTJUSTIFY@@PA_WHPAULH3DColor@@H@Z                // 0x0056f427    e88425eaff
                         fstp               st(0)                                         // 0x0056f42c    ddd8
                         {disp8} mov        ecx, dword ptr [esp + 0x30]                   // 0x0056f42e    8b4c2430
                         {disp8} mov        eax, dword ptr [esp + 0x3c]                   // 0x0056f432    8b44243c
                         add                ecx, 0x4                                      // 0x0056f436    83c104
                         add                esp, 0x20                                     // 0x0056f439    83c420
                         add.s              ebp, ebx                                      // 0x0056f43c    03eb
                         dec                eax                                           // 0x0056f43e    48
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x0056f43f    894c2410
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x0056f443    8944241c
                         {disp32} jne       _jmp_addr_0x0056f378                          // 0x0056f447    0f852bffffff
_jmp_addr_0x0056f44d:    pop                edi                                           // 0x0056f44d    5f
                         pop                esi                                           // 0x0056f44e    5e
                         pop                ebp                                           // 0x0056f44f    5d
                         mov                eax, 0x00000001                               // 0x0056f450    b801000000
                         pop                ebx                                           // 0x0056f455    5b
                         add                esp, 0x00000830                               // 0x0056f456    81c430080000
                         ret                0x0020                                        // 0x0056f45c    c22000
                         nop                                                              // 0x0056f45f    90
?InitControls@MultiplayerConditionBox@@UAEXXZ:
                         sub                esp, 0x00000808                               // 0x0056f460    81ec08080000
                         push               ebx                                           // 0x0056f466    53
                         push               ebp                                           // 0x0056f467    55
                         push               esi                                           // 0x0056f468    56
                         push               edi                                           // 0x0056f469    57
                         mov.s              edi, ecx                                      // 0x0056f46a    8bf9
                         {disp8} mov        dword ptr [edi + 0x38], 0x00000001            // 0x0056f46c    c7473801000000
                         xor.s              ebp, ebp                                      // 0x0056f473    33ed
                         {disp8} lea        esi, dword ptr [edi + 0x1c]                   // 0x0056f475    8d771c
                         mov                ebx, 0x00000004                               // 0x0056f478    bb04000000
_jmp_addr_0x0056f47d:    mov                eax, dword ptr [esi]                          // 0x0056f47d    8b06
                         {disp32} mov       dword ptr [eax + 0x00000248], 0x00000001      // 0x0056f47f    c7804802000001000000
                         mov                ecx, dword ptr [esi]                          // 0x0056f489    8b0e
                         mov                edx, dword ptr [ecx]                          // 0x0056f48b    8b11
                         push               0x1                                           // 0x0056f48d    6a01
                         call               dword ptr [edx + 8]                           // 0x0056f48f    ff5208
                         add                esi, 0x04                                     // 0x0056f492    83c604
                         dec                ebx                                           // 0x0056f495    4b
                         {disp8} jne        _jmp_addr_0x0056f47d                          // 0x0056f496    75e5
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0056f498    8b0d5c19d000
                         push               0x0                                           // 0x0056f49e    6a00
                         call               ?GetNextActivePlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z                          // 0x0056f4a0    e82b14feff
                         mov.s              esi, eax                                      // 0x0056f4a5    8bf0
                         test               esi, esi                                      // 0x0056f4a7    85f6
                         {disp8} je         _jmp_addr_0x0056f4e3                          // 0x0056f4a9    7438
_jmp_addr_0x0056f4ab:    mov.s              ecx, esi                                      // 0x0056f4ab    8bce
                         call               ?GetPlayerNumber@GPlayer@@QBEEXZ              // 0x0056f4ad    e8deb20d00
                         mov.s              ecx, eax                                      // 0x0056f4b2    8bc8
                         mov                edx, 0x00000001                               // 0x0056f4b4    ba01000000
                         shl                edx, cl                                       // 0x0056f4b9    d3e2
                         mov.s              ecx, esi                                      // 0x0056f4bb    8bce
                         or.s               ebp, edx                                      // 0x0056f4bd    0bea
                         call               ?GetPlayerNumber@GPlayer@@QBEEXZ              // 0x0056f4bf    e8ccb20d00
                         {disp8} mov        eax, dword ptr [edi + eax * 0x4 + 0x1c]       // 0x0056f4c4    8b44871c
                         mov                edx, dword ptr [eax]                          // 0x0056f4c8    8b10
                         push               0x0                                           // 0x0056f4ca    6a00
                         mov.s              ecx, eax                                      // 0x0056f4cc    8bc8
                         call               dword ptr [edx + 8]                           // 0x0056f4ce    ff5208
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0056f4d1    8b0d5c19d000
                         push               esi                                           // 0x0056f4d7    56
                         call               ?GetNextActivePlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z                          // 0x0056f4d8    e8f313feff
                         mov.s              esi, eax                                      // 0x0056f4dd    8bf0
                         test               esi, esi                                      // 0x0056f4df    85f6
                         {disp8} jne        _jmp_addr_0x0056f4ab                          // 0x0056f4e1    75c8
_jmp_addr_0x0056f4e3:    {disp32} mov       eax, dword ptr [data_bytes + 0x30ab08]        // 0x0056f4e3    a1080bcd00
                         {disp8} mov        cl, byte ptr [eax + 0x40]                     // 0x0056f4e8    8a4840
                         test               cl, cl                                        // 0x0056f4eb    84c9
                         {disp8} je         _jmp_addr_0x0056f51d                          // 0x0056f4ed    742e
                         push               0x00001a0e                                    // 0x0056f4ef    680e1a0000
                         mov                ecx, 0x00d17ca8                               // 0x0056f4f4    b9a87cd100
                         call               _jmp_addr_0x004707f0                          // 0x0056f4f9    e8f212f0ff
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056f4fe    8b4008
                         {disp8} mov        ecx, dword ptr [edi + 0x10]                   // 0x0056f501    8b4f10
                         push               eax                                           // 0x0056f504    50
                         add                ecx, 0x24                                     // 0x0056f505    83c124
                         push               ecx                                           // 0x0056f508    51
                         call               _wcscpy                                       // 0x0056f509    e8a86a2500
                         {disp32} mov       edx, dword ptr [data_bytes + 0x30ab08]        // 0x0056f50e    8b15080bcd00
                         add                esp, 0x08                                     // 0x0056f514    83c408
                         {disp8} mov        byte ptr [edx + 0x40], 0x00                   // 0x0056f517    c6424000
                         {disp8} jmp        _jmp_addr_0x0056f53f                          // 0x0056f51b    eb22
_jmp_addr_0x0056f51d:    push               0x00001a7a                                    // 0x0056f51d    687a1a0000
                         mov                ecx, 0x00d17ca8                               // 0x0056f522    b9a87cd100
                         call               _jmp_addr_0x004707f0                          // 0x0056f527    e8c412f0ff
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056f52c    8b4008
                         push               eax                                           // 0x0056f52f    50
                         {disp8} mov        eax, dword ptr [edi + 0x10]                   // 0x0056f530    8b4710
                         add                eax, 0x24                                     // 0x0056f533    83c024
                         push               eax                                           // 0x0056f536    50
                         call               _wcscpy                                       // 0x0056f537    e87a6a2500
                         add                esp, 0x08                                     // 0x0056f53c    83c408
_jmp_addr_0x0056f53f:    push               ebp                                           // 0x0056f53f    55
                         mov.s              ecx, edi                                      // 0x0056f540    8bcf
                         call               _jmp_addr_0x0056f6b0                          // 0x0056f542    e869010000
                         {disp8} mov        esi, dword ptr [edi + 0x30]                   // 0x0056f547    8b7730
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]             // 0x0056f54a    8b8650020000
                         test               eax, eax                                      // 0x0056f550    85c0
                         {disp8} jle        _jmp_addr_0x0056f567                          // 0x0056f552    7e13
_jmp_addr_0x0056f554:    dec                eax                                           // 0x0056f554    48
                         push               eax                                           // 0x0056f555    50
                         mov.s              ecx, esi                                      // 0x0056f556    8bce
                         call               @DeleteString__9SetupListFi@12                // 0x0056f558    e803b8e9ff
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]             // 0x0056f55d    8b8650020000
                         test               eax, eax                                      // 0x0056f563    85c0
                         {disp8} jg         _jmp_addr_0x0056f554                          // 0x0056f565    7fed
_jmp_addr_0x0056f567:    {disp32} mov       edx, dword ptr [_game]                        // 0x0056f567    8b155c19d000
                         xor.s              eax, eax                                      // 0x0056f56d    33c0
                         {disp32} mov       al, byte ptr [edx + 0x00205a59]               // 0x0056f56f    8a82595a2000
                         lea                ecx, dword ptr [eax + eax * 0x4]              // 0x0056f575    8d0c80
                         lea                ecx, dword ptr [eax + ecx * 0x8]              // 0x0056f578    8d0cc8
                         lea                eax, dword ptr [eax + ecx * 0x2]              // 0x0056f57b    8d0448
                         shl                eax, 5                                        // 0x0056f57e    c1e005
                         {disp32} mov       ecx, dword ptr [eax + edx * 0x1 + 0x00000114] // 0x0056f581    8b8c1014010000
                         mov                eax, dword ptr [ecx]                          // 0x0056f588    8b01
                         xor.s              ecx, ecx                                      // 0x0056f58a    33c9
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0056f58c    89442410
                         {disp32} mov       cl, byte ptr [edx + 0x00205a59]               // 0x0056f590    8a8a595a2000
                         lea                esi, dword ptr [ecx + ecx * 0x4]              // 0x0056f596    8d3489
                         lea                esi, dword ptr [ecx + esi * 0x8]              // 0x0056f599    8d34f1
                         lea                ecx, dword ptr [ecx + esi * 0x2]              // 0x0056f59c    8d0c71
                         shl                ecx, 5                                        // 0x0056f59f    c1e105
                         cmp                eax, dword ptr [ecx + edx * 0x1 + 0x00000114] // 0x0056f5a2    3b841114010000
                         {disp32} je        _jmp_addr_0x0056f696                          // 0x0056f5a9    0f84e7000000
                         {disp32} mov       ebp, dword ptr [rdata_bytes + 0x3d8]          // 0x0056f5af    8b2dd8938a00
_jmp_addr_0x0056f5b5:    {disp32} mov       edx, dword ptr [data_bytes + 0x351c9c]        // 0x0056f5b5    8b159c7cd100
                         {disp8} mov        ecx, dword ptr [eax + 0x18]                   // 0x0056f5bb    8b4818
                         {disp8} lea        ebx, dword ptr [eax + 0x10]                   // 0x0056f5be    8d5810
                         mov                eax, dword ptr [ebx]                          // 0x0056f5c1    8b03
                         inc                eax                                           // 0x0056f5c3    40
                         cmp.s              eax, edx                                      // 0x0056f5c4    3bc2
                         {disp8} jae        _jmp_addr_0x0056f5cc                          // 0x0056f5c6    7304
                         test               eax, eax                                      // 0x0056f5c8    85c0
                         {disp8} ja         _jmp_addr_0x0056f5d3                          // 0x0056f5ca    7707
_jmp_addr_0x0056f5cc:    {disp32} mov       eax, dword ptr [data_bytes + 0x351c98]        // 0x0056f5cc    a1987cd100
                         {disp8} jmp        _jmp_addr_0x0056f5de                          // 0x0056f5d1    eb0b
_jmp_addr_0x0056f5d3:    lea                edx, dword ptr [eax + eax * 0x2]              // 0x0056f5d3    8d1440
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351c98]        // 0x0056f5d6    a1987cd100
                         lea                eax, dword ptr [eax + edx * 0x4]              // 0x0056f5db    8d0490
_jmp_addr_0x0056f5de:    {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056f5de    8b4008
                         push               ecx                                           // 0x0056f5e1    51
                         push               eax                                           // 0x0056f5e2    50
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x0056f5e3    8d4c241c
                         push               0x00bef0f4                                    // 0x0056f5e7    68f4f0be00
                         push               ecx                                           // 0x0056f5ec    51
                         call               ebp                                           // 0x0056f5ed    ffd5
                         {disp8} mov        esi, dword ptr [edi + 0x30]                   // 0x0056f5ef    8b7730
                         {disp32} mov       edx, dword ptr [esi + 0x00000250]             // 0x0056f5f2    8b9650020000
                         add                esp, 0x10                                     // 0x0056f5f8    83c410
                         push               eax                                           // 0x0056f5fb    50
                         push               edx                                           // 0x0056f5fc    52
                         mov.s              ecx, esi                                      // 0x0056f5fd    8bce
                         call               @InsertString__9SetupListFiPw@16              // 0x0056f5ff    e86cb8e9ff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000250]             // 0x0056f604    8b8e50020000
                         {disp8} lea        eax, dword ptr [ecx + -0x01]                  // 0x0056f60a    8d41ff
                         test               eax, eax                                      // 0x0056f60d    85c0
                         {disp8} jl         _jmp_addr_0x0056f622                          // 0x0056f60f    7c11
                         cmp.s              eax, ecx                                      // 0x0056f611    3bc1
                         {disp8} jge        _jmp_addr_0x0056f622                          // 0x0056f613    7d0d
                         {disp32} mov       ecx, dword ptr [esi + 0x00000268]             // 0x0056f615    8b8e68020000
                         mov                dword ptr [ecx + eax * 0x4], 0x00000000       // 0x0056f61b    c7048100000000
_jmp_addr_0x0056f622:    {disp8} mov        ecx, dword ptr [edi + 0x30]                   // 0x0056f622    8b4f30
                         {disp32} mov       eax, dword ptr [ecx + 0x00000250]             // 0x0056f625    8b8150020000
                         dec                eax                                           // 0x0056f62b    48
                         {disp8} js         _jmp_addr_0x0056f641                          // 0x0056f62c    7813
                         cmp                eax, dword ptr [ecx + 0x00000250]             // 0x0056f62e    3b8150020000
                         {disp8} jge        _jmp_addr_0x0056f641                          // 0x0056f634    7d0b
                         {disp32} mov       edx, dword ptr [ecx + 0x00000264]             // 0x0056f636    8b9164020000
                         mov                ecx, dword ptr [ebx]                          // 0x0056f63c    8b0b
                         mov                dword ptr [edx + eax * 0x4], ecx              // 0x0056f63e    890c82
_jmp_addr_0x0056f641:    {disp8} mov        ecx, dword ptr [edi + 0x30]                   // 0x0056f641    8b4f30
                         {disp32} mov       eax, dword ptr [ecx + 0x00000250]             // 0x0056f644    8b8150020000
                         dec                eax                                           // 0x0056f64a    48
                         {disp8} js         _jmp_addr_0x0056f662                          // 0x0056f64b    7815
                         cmp                eax, dword ptr [ecx + 0x00000250]             // 0x0056f64d    3b8150020000
                         {disp8} jge        _jmp_addr_0x0056f662                          // 0x0056f653    7d0d
                         {disp32} mov       edx, dword ptr [ecx + 0x0000026c]             // 0x0056f655    8b916c020000
                         mov                dword ptr [edx + eax * 0x4], 0x0056f270       // 0x0056f65b    c7048270f25600
_jmp_addr_0x0056f662:    {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0056f662    8d4c2410
                         call               _jmp_addr_0x0056f910                          // 0x0056f666    e8a5020000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0056f66b    8b0d5c19d000
                         xor.s              eax, eax                                      // 0x0056f671    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x0056f673    8a81595a2000
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x0056f679    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x0056f67c    8d14d0
                         lea                edx, dword ptr [eax + edx * 0x2]              // 0x0056f67f    8d1450
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0056f682    8b442410
                         shl                edx, 5                                        // 0x0056f686    c1e205
                         cmp                eax, dword ptr [edx + ecx * 0x1 + 0x00000114] // 0x0056f689    3b840a14010000
                         {disp32} jne       _jmp_addr_0x0056f5b5                          // 0x0056f690    0f851fffffff
_jmp_addr_0x0056f696:    pop                edi                                           // 0x0056f696    5f
                         pop                esi                                           // 0x0056f697    5e
                         pop                ebp                                           // 0x0056f698    5d
                         pop                ebx                                           // 0x0056f699    5b
                         add                esp, 0x00000808                               // 0x0056f69a    81c408080000
                         ret                                                              // 0x0056f6a0    c3
                         nop                                                              // 0x0056f6a1    90
                         nop                                                              // 0x0056f6a2    90
                         nop                                                              // 0x0056f6a3    90
                         nop                                                              // 0x0056f6a4    90
                         nop                                                              // 0x0056f6a5    90
                         nop                                                              // 0x0056f6a6    90
                         nop                                                              // 0x0056f6a7    90
                         nop                                                              // 0x0056f6a8    90
                         nop                                                              // 0x0056f6a9    90
                         nop                                                              // 0x0056f6aa    90
                         nop                                                              // 0x0056f6ab    90
                         nop                                                              // 0x0056f6ac    90
                         nop                                                              // 0x0056f6ad    90
                         nop                                                              // 0x0056f6ae    90
                         nop                                                              // 0x0056f6af    90
_jmp_addr_0x0056f6b0:    sub                esp, 0x18                                     // 0x0056f6b0    83ec18
                         push               ebp                                           // 0x0056f6b3    55
                         mov.s              ebp, ecx                                      // 0x0056f6b4    8be9
                         {disp8} mov        ecx, dword ptr [ebp + 0x2c]                   // 0x0056f6b6    8b4d2c
                         push               esi                                           // 0x0056f6b9    56
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x0056f6ba    c744241400000000
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000            // 0x0056f6c2    c744241800000000
                         {disp8} mov        dword ptr [esp + 0x1c], 0x00000000            // 0x0056f6ca    c744241c00000000
                         mov                eax, dword ptr [ecx]                          // 0x0056f6d2    8b01
                         push               edi                                           // 0x0056f6d4    57
                         call               dword ptr [eax + 0x34]                        // 0x0056f6d5    ff5034
                         {disp8} lea        ecx, dword ptr [ebp + 0x1c]                   // 0x0056f6d8    8d4d1c
                         xor.s              edi, edi                                      // 0x0056f6db    33ff
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                   // 0x0056f6dd    894c240c
_jmp_addr_0x0056f6e1:    test               byte ptr [esp + 0x28], 0x01                   // 0x0056f6e1    f644242801
                         {disp32} je        _jmp_addr_0x0056f78a                          // 0x0056f6e6    0f849e000000
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x0056f6ec    8b54240c
                         mov                eax, dword ptr [edx]                          // 0x0056f6f0    8b02
                         {disp32} mov       ecx, dword ptr [eax + 0x00000248]             // 0x0056f6f2    8b8848020000
                         test               ecx, ecx                                      // 0x0056f6f8    85c9
                         {disp32} je        _jmp_addr_0x0056f78a                          // 0x0056f6fa    0f848a000000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0056f700    8b0d5c19d000
                         push               edi                                           // 0x0056f706    57
                         call               ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z          // 0x0056f707    e8a412feff
                         {disp32} mov       ecx, dword ptr [eax + 0x000008d8]             // 0x0056f70c    8b88d8080000
                         push               ecx                                           // 0x0056f712    51
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x0056f713    8d4c241c
                         call               @SetNum__9HLineDataFi@12                      // 0x0056f717    e814e3e9ff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0056f71c    8b0d5c19d000
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x0056f722    8d542414
                         push               edx                                           // 0x0056f726    52
                         push               edi                                           // 0x0056f727    57
                         call               ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z          // 0x0056f728    e88312feff
                         mov.s              ecx, eax                                      // 0x0056f72d    8bc8
                         call               @GetPlayer3DColor__7GPlayerFv@12              // 0x0056f72f    e85cbe0d00
                         mov                eax, dword ptr [eax]                          // 0x0056f734    8b00
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x0056f736    89442418
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x0056f73a    8b44241c
                         xor.s              esi, esi                                      // 0x0056f73e    33f6
                         test               eax, eax                                      // 0x0056f740    85c0
                         {disp8} jle        _jmp_addr_0x0056f77d                          // 0x0056f742    7e39
_jmp_addr_0x0056f744:    {disp32} mov       ecx, dword ptr [_game]                        // 0x0056f744    8b0d5c19d000
                         push               edi                                           // 0x0056f74a    57
                         call               ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z          // 0x0056f74b    e86012feff
                         {disp32} fld       dword ptr [eax + esi * 0x4 + 0x00000108]      // 0x0056f750    d984b008010000
                         test               esi, esi                                      // 0x0056f757    85f6
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0056f759    d95c2410
                         {disp8} jl         _jmp_addr_0x0056f774                          // 0x0056f75d    7c15
                         cmp                esi, dword ptr [esp + 0x1c]                   // 0x0056f75f    3b74241c
                         {disp8} jge        _jmp_addr_0x0056f774                          // 0x0056f763    7d0f
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x0056f765    8b442420
                         test               eax, eax                                      // 0x0056f769    85c0
                         {disp8} je         _jmp_addr_0x0056f774                          // 0x0056f76b    7407
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0056f76d    d9442410
                         fstp               dword ptr [eax + esi * 0x4]                   // 0x0056f771    d91cb0
_jmp_addr_0x0056f774:    {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x0056f774    8b44241c
                         inc                esi                                           // 0x0056f778    46
                         cmp.s              esi, eax                                      // 0x0056f779    3bf0
                         {disp8} jl         _jmp_addr_0x0056f744                          // 0x0056f77b    7cc7
_jmp_addr_0x0056f77d:    {disp8} mov        ecx, dword ptr [ebp + 0x2c]                   // 0x0056f77d    8b4d2c
                         mov                eax, dword ptr [ecx]                          // 0x0056f780    8b01
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x0056f782    8d542418
                         push               edx                                           // 0x0056f786    52
                         call               dword ptr [eax + 0x3c]                        // 0x0056f787    ff503c
_jmp_addr_0x0056f78a:    {disp8} mov        esi, dword ptr [esp + 0x28]                   // 0x0056f78a    8b742428
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x0056f78e    8b4c240c
                         shr                esi, 1                                        // 0x0056f792    d1ee
                         inc                edi                                           // 0x0056f794    47
                         add                ecx, 0x4                                      // 0x0056f795    83c104
                         cmp                edi, 0x04                                     // 0x0056f798    83ff04
                         {disp8} mov        dword ptr [esp + 0x28], esi                   // 0x0056f79b    89742428
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                   // 0x0056f79f    894c240c
                         {disp32} jl        _jmp_addr_0x0056f6e1                          // 0x0056f7a3    0f8c38ffffff
                         {disp8} mov        ecx, dword ptr [ebp + 0x2c]                   // 0x0056f7a9    8b4d2c
                         mov                eax, dword ptr [ecx]                          // 0x0056f7ac    8b01
                         push               0x1                                           // 0x0056f7ae    6a01
                         push               0x0                                           // 0x0056f7b0    6a00
                         push               0x3f800000                                    // 0x0056f7b2    680000803f
                         call               dword ptr [eax + 0x38]                        // 0x0056f7b7    ff5038
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x0056f7ba    8b4c2420
                         push               ecx                                           // 0x0056f7be    51
                         call               ??3@YAXPAX@Z                                  // 0x0056f7bf    e8d4f62300
                         add                esp, 0x04                                     // 0x0056f7c4    83c404
                         pop                edi                                           // 0x0056f7c7    5f
                         pop                esi                                           // 0x0056f7c8    5e
                         pop                ebp                                           // 0x0056f7c9    5d
                         add                esp, 0x18                                     // 0x0056f7ca    83c418
                         ret                0x0004                                        // 0x0056f7cd    c20400
_jmp_addr_0x0056f7d0:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0056f7d0    8b442408
                         dec                eax                                           // 0x0056f7d4    48
                         push               esi                                           // 0x0056f7d5    56
                         {disp8} je         _jmp_addr_0x0056f846                          // 0x0056f7d6    746e
                         sub                eax, 0x05                                     // 0x0056f7d8    83e805
                         {disp8} je         _jmp_addr_0x0056f839                          // 0x0056f7db    745c
                         sub                eax, 0x07                                     // 0x0056f7dd    83e807
                         {disp32} jne       _jmp_addr_0x0056f8c6                          // 0x0056f7e0    0f85e0000000
                         {disp32} mov       esi, dword ptr [data_bytes + 0x2078]          // 0x0056f7e6    8b3578809c00
                         push               0x1                                           // 0x0056f7ec    6a01
                         push               0x1                                           // 0x0056f7ee    6a01
                         mov.s              eax, esi                                      // 0x0056f7f0    8bc6
                         cdq                                                              // 0x0056f7f2    99
                         sub.s              eax, edx                                      // 0x0056f7f3    2bc2
                         push               0x00202020                                    // 0x0056f7f5    6820202000
                         sar                eax, 1                                        // 0x0056f7fa    d1f8
                         {disp32} mov       dword ptr [data_bytes + 0x2078], eax          // 0x0056f7fc    a378809c00
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0056f801    8b442414
                         {disp8} mov        eax, dword ptr [eax + 0x34]                   // 0x0056f805    8b4034
                         {disp8} mov        ecx, dword ptr [eax + 0x14]                   // 0x0056f808    8b4814
                         {disp8} mov        edx, dword ptr [eax + 0x10]                   // 0x0056f80b    8b5010
                         push               0x00202020                                    // 0x0056f80e    6820202000
                         push               0x00202020                                    // 0x0056f813    6820202000
                         push               0x00202020                                    // 0x0056f818    6820202000
                         push               ecx                                           // 0x0056f81d    51
                         {disp8} mov        ecx, dword ptr [eax + 0x0c]                   // 0x0056f81e    8b480c
                         push               edx                                           // 0x0056f821    52
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0056f822    8b5008
                         push               ecx                                           // 0x0056f825    51
                         push               edx                                           // 0x0056f826    52
                         call               ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z          // 0x0056f827    e8943aeaff
                         add                esp, 0x28                                     // 0x0056f82c    83c428
                         {disp32} mov       dword ptr [data_bytes + 0x2078], esi          // 0x0056f82f    893578809c00
                         pop                esi                                           // 0x0056f835    5e
                         ret                0x0018                                        // 0x0056f836    c21800
_jmp_addr_0x0056f839:    {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x0056f839    8b4c2408
                         mov                eax, dword ptr [ecx]                          // 0x0056f83d    8b01
                         call               dword ptr [eax + 0x20]                        // 0x0056f83f    ff5020
                         pop                esi                                           // 0x0056f842    5e
                         ret                0x0018                                        // 0x0056f843    c21800
_jmp_addr_0x0056f846:    {disp8} mov        esi, dword ptr [esp + 0x14]                   // 0x0056f846    8b742414
                         {disp8} mov        eax, dword ptr [esi + 0x18]                   // 0x0056f84a    8b4618
                         cmp                eax, 0x08                                     // 0x0056f84d    83f808
                         {disp8} je         _jmp_addr_0x0056f857                          // 0x0056f850    7405
                         cmp                eax, 0x06                                     // 0x0056f852    83f806
                         {disp8} jne        _jmp_addr_0x0056f85c                          // 0x0056f855    7505
_jmp_addr_0x0056f857:    call               _jmp_addr_0x00513640                          // 0x0056f857    e8e43dfaff
_jmp_addr_0x0056f85c:    {disp8} mov        eax, dword ptr [esi + 0x18]                   // 0x0056f85c    8b4618
                         cmp                eax, 0x01                                     // 0x0056f85f    83f801
                         {disp8} jl         _jmp_addr_0x0056f8c6                          // 0x0056f862    7c62
                         cmp                eax, 0x04                                     // 0x0056f864    83f804
                         {disp8} jg         _jmp_addr_0x0056f8c6                          // 0x0056f867    7f5d
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0056f869    8b0d5c19d000
                         push               ebx                                           // 0x0056f86f    53
                         push               edi                                           // 0x0056f870    57
                         xor.s              edi, edi                                      // 0x0056f871    33ff
                         push               edi                                           // 0x0056f873    57
                         call               ?GetNextActivePlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z                          // 0x0056f874    e85710feff
                         {disp8} mov        ebx, dword ptr [esp + 0x10]                   // 0x0056f879    8b5c2410
                         mov.s              esi, eax                                      // 0x0056f87d    8bf0
                         test               esi, esi                                      // 0x0056f87f    85f6
                         {disp8} je         _jmp_addr_0x0056f8bc                          // 0x0056f881    7439
_jmp_addr_0x0056f883:    mov.s              ecx, esi                                      // 0x0056f883    8bce
                         call               ?GetPlayerNumber@GPlayer@@QBEEXZ              // 0x0056f885    e806af0d00
                         {disp8} mov        eax, dword ptr [ebx + eax * 0x4 + 0x1c]       // 0x0056f88a    8b44831c
                         {disp32} mov       ecx, dword ptr [eax + 0x00000248]             // 0x0056f88e    8b8848020000
                         test               ecx, ecx                                      // 0x0056f894    85c9
                         {disp8} je         _jmp_addr_0x0056f8aa                          // 0x0056f896    7412
                         mov.s              ecx, esi                                      // 0x0056f898    8bce
                         call               ?GetPlayerNumber@GPlayer@@QBEEXZ              // 0x0056f89a    e8f1ae0d00
                         mov                edx, 0x00000001                               // 0x0056f89f    ba01000000
                         mov.s              ecx, eax                                      // 0x0056f8a4    8bc8
                         shl                edx, cl                                       // 0x0056f8a6    d3e2
                         or.s               edi, edx                                      // 0x0056f8a8    0bfa
_jmp_addr_0x0056f8aa:    {disp32} mov       ecx, dword ptr [_game]                        // 0x0056f8aa    8b0d5c19d000
                         push               esi                                           // 0x0056f8b0    56
                         call               ?GetNextActivePlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z                          // 0x0056f8b1    e81a10feff
                         mov.s              esi, eax                                      // 0x0056f8b6    8bf0
                         test               esi, esi                                      // 0x0056f8b8    85f6
                         {disp8} jne        _jmp_addr_0x0056f883                          // 0x0056f8ba    75c7
_jmp_addr_0x0056f8bc:    push               edi                                           // 0x0056f8bc    57
                         mov.s              ecx, ebx                                      // 0x0056f8bd    8bcb
                         call               _jmp_addr_0x0056f6b0                          // 0x0056f8bf    e8ecfdffff
                         pop                edi                                           // 0x0056f8c4    5f
                         pop                ebx                                           // 0x0056f8c5    5b
_jmp_addr_0x0056f8c6:    pop                esi                                           // 0x0056f8c6    5e
                         ret                0x0018                                        // 0x0056f8c7    c21800
                         call               dword ptr [__imp__HeapFree@12]                // 0x0056f8ca    ff1500928a00
_jmp_addr_0x0056f8d0:    {disp8} mov        ecx, dword ptr [ecx + 0x04]                   // 0x0056f8d0    8b4904
                         {disp8} mov        eax, dword ptr [ecx + 0x04]                   // 0x0056f8d3    8b4104
                         {disp32} mov       edx, dword ptr [data_bytes + 0x33b9e4]        // 0x0056f8d6    8b15e419d000
                         cmp.s              eax, edx                                      // 0x0056f8dc    3bc2
                         {disp8} je         _jmp_addr_0x0056f903                          // 0x0056f8de    7423
                         push               esi                                           // 0x0056f8e0    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x0056f8e1    8b74240c
                         mov                esi, dword ptr [esi]                          // 0x0056f8e5    8b36
_jmp_addr_0x0056f8e7:    cmp                dword ptr [eax + 0x0c], esi                   // 0x0056f8e7    39700c
                         {disp8} jge        _jmp_addr_0x0056f8f1                          // 0x0056f8ea    7d05
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056f8ec    8b4008
                         {disp8} jmp        _jmp_addr_0x0056f8f5                          // 0x0056f8ef    eb04
_jmp_addr_0x0056f8f1:    mov.s              ecx, eax                                      // 0x0056f8f1    8bc8
                         mov                eax, dword ptr [eax]                          // 0x0056f8f3    8b00
_jmp_addr_0x0056f8f5:    cmp.s              eax, edx                                      // 0x0056f8f5    3bc2
                         {disp8} jne        _jmp_addr_0x0056f8e7                          // 0x0056f8f7    75ee
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0056f8f9    8b442408
                         mov                dword ptr [eax], ecx                          // 0x0056f8fd    8908
                         pop                esi                                           // 0x0056f8ff    5e
                         ret                0x0008                                        // 0x0056f900    c20800
_jmp_addr_0x0056f903:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0056f903    8b442404
                         mov                dword ptr [eax], ecx                          // 0x0056f907    8908
                         ret                0x0008                                        // 0x0056f909    c20800
                         nop                                                              // 0x0056f90c    90
                         nop                                                              // 0x0056f90d    90
                         nop                                                              // 0x0056f90e    90
                         nop                                                              // 0x0056f90f    90
_jmp_addr_0x0056f910:    mov                eax, dword ptr [ecx]                          // 0x0056f910    8b01
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0056f912    8b5008
                         push               esi                                           // 0x0056f915    56
                         {disp32} mov       esi, dword ptr [data_bytes + 0x33b9e4]        // 0x0056f916    8b35e419d000
                         cmp.s              edx, esi                                      // 0x0056f91c    3bd6
                         {disp8} je         _jmp_addr_0x0056f932                          // 0x0056f91e    7412
                         mov                eax, dword ptr [edx]                          // 0x0056f920    8b02
                         cmp.s              eax, esi                                      // 0x0056f922    3bc6
                         {disp8} je         _jmp_addr_0x0056f92e                          // 0x0056f924    7408
_jmp_addr_0x0056f926:    mov.s              edx, eax                                      // 0x0056f926    8bd0
                         mov                eax, dword ptr [edx]                          // 0x0056f928    8b02
                         cmp.s              eax, esi                                      // 0x0056f92a    3bc6
                         {disp8} jne        _jmp_addr_0x0056f926                          // 0x0056f92c    75f8
_jmp_addr_0x0056f92e:    mov                dword ptr [ecx], edx                          // 0x0056f92e    8911
                         pop                esi                                           // 0x0056f930    5e
                         ret                                                              // 0x0056f931    c3
_jmp_addr_0x0056f932:    {disp8} mov        eax, dword ptr [eax + 0x04]                   // 0x0056f932    8b4004
                         mov                edx, dword ptr [ecx]                          // 0x0056f935    8b11
                         cmp                edx, dword ptr [eax + 0x08]                   // 0x0056f937    3b5008
                         {disp8} jne        _jmp_addr_0x0056f948                          // 0x0056f93a    750c
_jmp_addr_0x0056f93c:    mov                dword ptr [ecx], eax                          // 0x0056f93c    8901
                         {disp8} mov        eax, dword ptr [eax + 0x04]                   // 0x0056f93e    8b4004
                         mov                edx, dword ptr [ecx]                          // 0x0056f941    8b11
                         cmp                edx, dword ptr [eax + 0x08]                   // 0x0056f943    3b5008
                         {disp8} je         _jmp_addr_0x0056f93c                          // 0x0056f946    74f4
_jmp_addr_0x0056f948:    mov                edx, dword ptr [ecx]                          // 0x0056f948    8b11
                         cmp                dword ptr [edx + 0x08], eax                   // 0x0056f94a    394208
                         {disp8} je         _jmp_addr_0x0056f951                          // 0x0056f94d    7402
                         mov                dword ptr [ecx], eax                          // 0x0056f94f    8901
_jmp_addr_0x0056f951:    pop                esi                                           // 0x0056f951    5e
                         ret                                                              // 0x0056f952    c3
                         nop                                                              // 0x0056f953    90
                         nop                                                              // 0x0056f954    90
                         nop                                                              // 0x0056f955    90
                         nop                                                              // 0x0056f956    90
                         nop                                                              // 0x0056f957    90
                         nop                                                              // 0x0056f958    90
                         nop                                                              // 0x0056f959    90
                         nop                                                              // 0x0056f95a    90
                         nop                                                              // 0x0056f95b    90
                         nop                                                              // 0x0056f95c    90
                         nop                                                              // 0x0056f95d    90
                         nop                                                              // 0x0056f95e    90
                         nop                                                              // 0x0056f95f    90
_globl_ct_0x0056f960:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x0056f960    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x0056f966    b001
                         test               al, cl                                        // 0x0056f968    84c8
                         {disp8} jne        _jmp_addr_0x0056f974                          // 0x0056f96a    7508
                         or.s               cl, al                                        // 0x0056f96c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x0056f96e    880d34c9fa00
_jmp_addr_0x0056f974:    {disp32} jmp       _jmp_addr_0x0056f980                          // 0x0056f974    e907000000
                         nop                                                              // 0x0056f979    90
                         nop                                                              // 0x0056f97a    90
                         nop                                                              // 0x0056f97b    90
                         nop                                                              // 0x0056f97c    90
                         nop                                                              // 0x0056f97d    90
                         nop                                                              // 0x0056f97e    90
                         nop                                                              // 0x0056f97f    90
_jmp_addr_0x0056f980:    push               0x00407870                                    // 0x0056f980    6870784000
                         call               _atexit                                       // 0x0056f985    e8075e2500
                         pop                ecx                                           // 0x0056f98a    59
                         ret                                                              // 0x0056f98b    c3
                         nop                                                              // 0x0056f98c    90
                         nop                                                              // 0x0056f98d    90
                         nop                                                              // 0x0056f98e    90
                         nop                                                              // 0x0056f98f    90
_globl_ct_0x0056f990:    {disp32} jmp       _jmp_addr_0x0056f9a0                          // 0x0056f990    e90b000000
                         nop                                                              // 0x0056f995    90
                         nop                                                              // 0x0056f996    90
                         nop                                                              // 0x0056f997    90
                         nop                                                              // 0x0056f998    90
                         nop                                                              // 0x0056f999    90
                         nop                                                              // 0x0056f99a    90
                         nop                                                              // 0x0056f99b    90
                         nop                                                              // 0x0056f99c    90
                         nop                                                              // 0x0056f99d    90
                         nop                                                              // 0x0056f99e    90
                         nop                                                              // 0x0056f99f    90
_jmp_addr_0x0056f9a0:    {disp32} fld       dword ptr [rdata_bytes + 0x56f44]             // 0x0056f9a0    d90544ff8f00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x56f40]             // 0x0056f9a6    d80d40ff8f00
                         {disp32} fstp      dword ptr [data_bytes + 0x340078]             // 0x0056f9ac    d91d7860d000
                         ret                                                              // 0x0056f9b2    c3
                         nop                                                              // 0x0056f9b3    90
                         nop                                                              // 0x0056f9b4    90
                         nop                                                              // 0x0056f9b5    90
                         nop                                                              // 0x0056f9b6    90
                         nop                                                              // 0x0056f9b7    90
                         nop                                                              // 0x0056f9b8    90
                         nop                                                              // 0x0056f9b9    90
                         nop                                                              // 0x0056f9ba    90
                         nop                                                              // 0x0056f9bb    90
                         nop                                                              // 0x0056f9bc    90
                         nop                                                              // 0x0056f9bd    90
                         nop                                                              // 0x0056f9be    90
                         nop                                                              // 0x0056f9bf    90
_globl_ct_0x0056f9c0:    {disp32} jmp       _jmp_addr_0x0056f9d0                          // 0x0056f9c0    e90b000000
                         nop                                                              // 0x0056f9c5    90
                         nop                                                              // 0x0056f9c6    90
                         nop                                                              // 0x0056f9c7    90
                         nop                                                              // 0x0056f9c8    90
                         nop                                                              // 0x0056f9c9    90
                         nop                                                              // 0x0056f9ca    90
                         nop                                                              // 0x0056f9cb    90
                         nop                                                              // 0x0056f9cc    90
                         nop                                                              // 0x0056f9cd    90
                         nop                                                              // 0x0056f9ce    90
                         nop                                                              // 0x0056f9cf    90
_jmp_addr_0x0056f9d0:    {disp32} mov       dword ptr [data_bytes + 0x340074], 0xffffffff // 0x0056f9d0    c7057460d000ffffffff
                         ret                                                              // 0x0056f9da    c3
                         call               ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                          // 0x0056f9db    e8191ee9ff
_globl_ct_0x0056f9e0:    {disp32} jmp       _jmp_addr_0x0056f9f0                          // 0x0056f9e0    e90b000000
                         nop                                                              // 0x0056f9e5    90
                         nop                                                              // 0x0056f9e6    90
                         nop                                                              // 0x0056f9e7    90
                         nop                                                              // 0x0056f9e8    90
                         nop                                                              // 0x0056f9e9    90
                         nop                                                              // 0x0056f9ea    90
                         nop                                                              // 0x0056f9eb    90
                         nop                                                              // 0x0056f9ec    90
                         nop                                                              // 0x0056f9ed    90
                         nop                                                              // 0x0056f9ee    90
                         nop                                                              // 0x0056f9ef    90
_jmp_addr_0x0056f9f0:    {disp32} fld       dword ptr [rdata_bytes + 0x56f48]             // 0x0056f9f0    d90548ff8f00
                         {disp32} fmul      dword ptr [_abode_info_float_0x008a99f0]      // 0x0056f9f6    d80df0998a00
                         {disp32} fstp      dword ptr [data_bytes + 0x340070]             // 0x0056f9fc    d91d7060d000
                         ret                                                              // 0x0056fa02    c3
                         nop                                                              // 0x0056fa03    90
                         nop                                                              // 0x0056fa04    90
                         nop                                                              // 0x0056fa05    90
                         nop                                                              // 0x0056fa06    90
                         nop                                                              // 0x0056fa07    90
                         nop                                                              // 0x0056fa08    90
                         nop                                                              // 0x0056fa09    90
                         nop                                                              // 0x0056fa0a    90
                         nop                                                              // 0x0056fa0b    90
                         nop                                                              // 0x0056fa0c    90
                         nop                                                              // 0x0056fa0d    90
                         nop                                                              // 0x0056fa0e    90
                         nop                                                              // 0x0056fa0f    90
??0GameThing@@QAE@XZ:
                         mov.s              eax, ecx                                      // 0x0056fa10    8bc1
                         xor.s              ecx, ecx                                      // 0x0056fa12    33c9
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x0056fa14    894804
                         {disp8} mov        dword ptr [eax + 0x10], ecx                   // 0x0056fa17    894810
                         mov                dword ptr [eax], 0x008fff50                   // 0x0056fa1a    c70050ff8f00
                         {disp32} inc       word ptr [data_bytes + 0x340080]              // 0x0056fa20    66ff058060d000
                         {disp8} mov        byte ptr [eax + 0x0a], cl                     // 0x0056fa27    88480a
                         {disp32} mov       dx, word ptr [data_bytes + 0x340082]          // 0x0056fa2a    668b158260d000
                         {disp8} mov        word ptr [eax + 0x08], dx                     // 0x0056fa31    66895008
                         {disp32} inc       word ptr [data_bytes + 0x340082]              // 0x0056fa35    66ff058260d000
                         {disp8} mov        word ptr [eax + 0x0c], cx                     // 0x0056fa3c    6689480c
                         ret                                                              // 0x0056fa40    c3
                         nop                                                              // 0x0056fa41    90
                         nop                                                              // 0x0056fa42    90
                         nop                                                              // 0x0056fa43    90
                         nop                                                              // 0x0056fa44    90
                         nop                                                              // 0x0056fa45    90
                         nop                                                              // 0x0056fa46    90
                         nop                                                              // 0x0056fa47    90
                         nop                                                              // 0x0056fa48    90
                         nop                                                              // 0x0056fa49    90
                         nop                                                              // 0x0056fa4a    90
                         nop                                                              // 0x0056fa4b    90
                         nop                                                              // 0x0056fa4c    90
                         nop                                                              // 0x0056fa4d    90
                         nop                                                              // 0x0056fa4e    90
                         nop                                                              // 0x0056fa4f    90
??1GameThing@@UAE@XZ:    push               esi                                           // 0x0056fa50    56
                         mov.s              esi, ecx                                      // 0x0056fa51    8bf1
                         call               _jmp_addr_0x0056fa80                          // 0x0056fa53    e828000000
                         test               byte ptr [esp + 0x08], 0x01                   // 0x0056fa58    f644240801
                         {disp8} je         _jmp_addr_0x0056fa6a                          // 0x0056fa5d    740b
                         push               0x14                                          // 0x0056fa5f    6a14
                         push               esi                                           // 0x0056fa61    56
                         call               ??3Base@@SAXPAXK@Z                          // 0x0056fa62    e8096fecff
                         add                esp, 0x08                                     // 0x0056fa67    83c408
_jmp_addr_0x0056fa6a:    mov.s              eax, esi                                      // 0x0056fa6a    8bc6
                         pop                esi                                           // 0x0056fa6c    5e
                         ret                0x0004                                        // 0x0056fa6d    c20400
_jmp_addr_0x0056fa70:    ret                0x0004                                        // 0x0056fa70    c20400
                         nop                                                              // 0x0056fa73    90
                         nop                                                              // 0x0056fa74    90
                         nop                                                              // 0x0056fa75    90
                         nop                                                              // 0x0056fa76    90
                         nop                                                              // 0x0056fa77    90
                         nop                                                              // 0x0056fa78    90
                         nop                                                              // 0x0056fa79    90
                         nop                                                              // 0x0056fa7a    90
                         nop                                                              // 0x0056fa7b    90
                         nop                                                              // 0x0056fa7c    90
                         nop                                                              // 0x0056fa7d    90
                         nop                                                              // 0x0056fa7e    90
                         nop                                                              // 0x0056fa7f    90
_jmp_addr_0x0056fa80:    mov                dword ptr [ecx], 0x008fff50                   // 0x0056fa80    c70150ff8f00
                         dec                word ptr [data_bytes + 0x340080]              // 0x0056fa86    66ff0d8060d000
                         {disp32} jmp       _jmp_addr_0x00436960                          // 0x0056fa8d    e9ce6eecff
                         nop                                                              // 0x0056fa92    90
                         nop                                                              // 0x0056fa93    90
                         nop                                                              // 0x0056fa94    90
                         nop                                                              // 0x0056fa95    90
                         nop                                                              // 0x0056fa96    90
                         nop                                                              // 0x0056fa97    90
                         nop                                                              // 0x0056fa98    90
                         nop                                                              // 0x0056fa99    90
                         nop                                                              // 0x0056fa9a    90
                         nop                                                              // 0x0056fa9b    90
                         nop                                                              // 0x0056fa9c    90
                         nop                                                              // 0x0056fa9d    90
                         nop                                                              // 0x0056fa9e    90
                         nop                                                              // 0x0056fa9f    90
@ProcessDead__9GameThingFi@12:    {disp8} mov        al, byte ptr [ecx + 0x0a]                     // 0x0056faa0    8a410a
                         test               al, 0x02                                      // 0x0056faa3    a802
                         {disp8} jne        _jmp_addr_0x0056fab7                          // 0x0056faa5    7510
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x0056faa7    8b542404
                         test               edx, edx                                      // 0x0056faab    85d2
                         {disp8} jne        _jmp_addr_0x0056fab7                          // 0x0056faad    7508
                         or                 al, 2                                         // 0x0056faaf    0c02
                         {disp8} mov        byte ptr [ecx + 0x0a], al                     // 0x0056fab1    88410a
                         ret                0x0004                                        // 0x0056fab4    c20400
_jmp_addr_0x0056fab7:    {disp32} mov       eax, dword ptr [_game]                        // 0x0056fab7    a15c19d000
                         push               esi                                           // 0x0056fabc    56
                         {disp32} lea       esi, dword ptr [eax + 0x00205d1c]             // 0x0056fabd    8db01c5d2000
                         mov                eax, dword ptr [esi]                          // 0x0056fac3    8b06
                         cmp.s              eax, ecx                                      // 0x0056fac5    3bc1
                         {disp8} jne        _jmp_addr_0x0056fad0                          // 0x0056fac7    7507
                         {disp8} mov        edx, dword ptr [ecx + 0x10]                   // 0x0056fac9    8b5110
                         mov                dword ptr [esi], edx                          // 0x0056facc    8916
                         {disp8} jmp        _jmp_addr_0x0056faf4                          // 0x0056face    eb24
_jmp_addr_0x0056fad0:    test               eax, eax                                      // 0x0056fad0    85c0
                         {disp8} je         _jmp_addr_0x0056fafe                          // 0x0056fad2    742a
_jmp_addr_0x0056fad4:    {disp8} mov        edx, dword ptr [eax + 0x10]                   // 0x0056fad4    8b5010
                         cmp.s              edx, ecx                                      // 0x0056fad7    3bd1
                         {disp8} je         _jmp_addr_0x0056faee                          // 0x0056fad9    7413
                         mov.s              eax, edx                                      // 0x0056fadb    8bc2
                         test               eax, eax                                      // 0x0056fadd    85c0
                         {disp8} jne        _jmp_addr_0x0056fad4                          // 0x0056fadf    75f3
                         or                 byte ptr [ecx + 0xa], 2                       // 0x0056fae1    80490a02
                         mov                eax, dword ptr [ecx]                          // 0x0056fae5    8b01
                         call               dword ptr [eax + 8]                           // 0x0056fae7    ff5008
                         pop                esi                                           // 0x0056faea    5e
                         ret                0x0004                                        // 0x0056faeb    c20400
_jmp_addr_0x0056faee:    {disp8} mov        edx, dword ptr [ecx + 0x10]                   // 0x0056faee    8b5110
                         {disp8} mov        dword ptr [eax + 0x10], edx                   // 0x0056faf1    895010
_jmp_addr_0x0056faf4:    dec                dword ptr [esi + 0x04]                        // 0x0056faf4    ff4e04
                         {disp8} mov        dword ptr [ecx + 0x10], 0x00000000            // 0x0056faf7    c7411000000000
_jmp_addr_0x0056fafe:    or                 byte ptr [ecx + 0xa], 2                       // 0x0056fafe    80490a02
                         mov                eax, dword ptr [ecx]                          // 0x0056fb02    8b01
                         call               dword ptr [eax + 8]                           // 0x0056fb04    ff5008
                         pop                esi                                           // 0x0056fb07    5e
                         ret                0x0004                                        // 0x0056fb08    c20400
                         call               ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                          // 0x0056fb0b    e8e91ce9ff
_ProcessDeadList__9GameThingFi@4:    {disp32} mov       eax, dword ptr [_game]                        // 0x0056fb10    a15c19d000
                         push               ebx                                           // 0x0056fb15    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]                   // 0x0056fb16    8b5c2408
                         push               esi                                           // 0x0056fb1a    56
                         push               edi                                           // 0x0056fb1b    57
_jmp_addr_0x0056fb1c:    {disp32} mov       esi, dword ptr [eax + 0x00205d1c]             // 0x0056fb1c    8bb01c5d2000
                         test               esi, esi                                      // 0x0056fb22    85f6
                         {disp8} je         _jmp_addr_0x0056fb57                          // 0x0056fb24    7431
_jmp_addr_0x0056fb26:    {disp8} mov        edi, dword ptr [esi + 0x10]                   // 0x0056fb26    8b7e10
                         push               0x0                                           // 0x0056fb29    6a00
                         push               0x009c7f18                                    // 0x0056fb2b    68187f9c00
                         push               0x009c7f18                                    // 0x0056fb30    68187f9c00
                         push               0x0                                           // 0x0056fb35    6a00
                         push               esi                                           // 0x0056fb37    56
                         call               ___RTDynamicCast                              // 0x0056fb38    e8dc5e2500
                         add                esp, 0x14                                     // 0x0056fb3d    83c414
                         test               eax, eax                                      // 0x0056fb40    85c0
                         {disp8} je         _jmp_addr_0x0056fb4c                          // 0x0056fb42    7408
                         push               ebx                                           // 0x0056fb44    53
                         mov.s              ecx, esi                                      // 0x0056fb45    8bce
                         call               @ProcessDead__9GameThingFi@12                 // 0x0056fb47    e854ffffff
_jmp_addr_0x0056fb4c:    test               edi, edi                                      // 0x0056fb4c    85ff
                         mov.s              esi, edi                                      // 0x0056fb4e    8bf7
                         {disp8} jne        _jmp_addr_0x0056fb26                          // 0x0056fb50    75d4
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0056fb52    a15c19d000
_jmp_addr_0x0056fb57:    test               ebx, ebx                                      // 0x0056fb57    85db
                         {disp8} je         _jmp_addr_0x0056fb65                          // 0x0056fb59    740a
                         {disp32} mov       ecx, dword ptr [eax + 0x00205d20]             // 0x0056fb5b    8b88205d2000
                         test               ecx, ecx                                      // 0x0056fb61    85c9
                         {disp8} jne        _jmp_addr_0x0056fb1c                          // 0x0056fb63    75b7
_jmp_addr_0x0056fb65:    pop                edi                                           // 0x0056fb65    5f
                         pop                esi                                           // 0x0056fb66    5e
                         pop                ebx                                           // 0x0056fb67    5b
                         ret                                                              // 0x0056fb68    c3
                         nop                                                              // 0x0056fb69    90
                         nop                                                              // 0x0056fb6a    90
                         nop                                                              // 0x0056fb6b    90
                         nop                                                              // 0x0056fb6c    90
                         nop                                                              // 0x0056fb6d    90
                         nop                                                              // 0x0056fb6e    90
                         nop                                                              // 0x0056fb6f    90
?ToBeDeleted@GameThing@@UAEXH@Z:    {disp8} mov        al, byte ptr [ecx + 0x0a]                     // 0x0056fb70    8a410a
                         test               al, 0x01                                      // 0x0056fb73    a801
                         {disp8} jne        _jmp_addr_0x0056fbdc                          // 0x0056fb75    7565
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x0056fb77    8b542404
                         or                 al, 1                                         // 0x0056fb7b    0c01
                         test               edx, edx                                      // 0x0056fb7d    85d2
                         {disp8} mov        byte ptr [ecx + 0x0a], al                     // 0x0056fb7f    88410a
                         {disp8} je         _jmp_addr_0x0056fb8c                          // 0x0056fb82    7408
                         mov                eax, dword ptr [ecx]                          // 0x0056fb84    8b01
                         call               dword ptr [eax + 8]                           // 0x0056fb86    ff5008
                         ret                0x0004                                        // 0x0056fb89    c20400
_jmp_addr_0x0056fb8c:    and                al, -0x03                                     // 0x0056fb8c    24fd
                         {disp8} mov        byte ptr [ecx + 0x0a], al                     // 0x0056fb8e    88410a
                         {disp8} mov        dword ptr [ecx + 0x10], 0x00000000            // 0x0056fb91    c7411000000000
                         {disp32} mov       edx, dword ptr [_game]                        // 0x0056fb98    8b155c19d000
                         {disp32} mov       eax, dword ptr [edx + 0x00205d1c]             // 0x0056fb9e    8b821c5d2000
                         add                edx, 0x00205d1c                               // 0x0056fba4    81c21c5d2000
                         test               eax, eax                                      // 0x0056fbaa    85c0
                         {disp8} je         _jmp_addr_0x0056fbce                          // 0x0056fbac    7420
_jmp_addr_0x0056fbae:    cmp.s              eax, ecx                                      // 0x0056fbae    3bc1
                         {disp8} je         _jmp_addr_0x0056fbca                          // 0x0056fbb0    7418
                         {disp8} mov        eax, dword ptr [eax + 0x10]                   // 0x0056fbb2    8b4010
                         test               eax, eax                                      // 0x0056fbb5    85c0
                         {disp8} jne        _jmp_addr_0x0056fbae                          // 0x0056fbb7    75f5
                         mov                eax, dword ptr [edx]                          // 0x0056fbb9    8b02
                         {disp8} mov        dword ptr [ecx + 0x10], eax                   // 0x0056fbbb    894110
                         {disp8} mov        eax, dword ptr [edx + 0x04]                   // 0x0056fbbe    8b4204
                         inc                eax                                           // 0x0056fbc1    40
                         mov                dword ptr [edx], ecx                          // 0x0056fbc2    890a
                         {disp8} mov        dword ptr [edx + 0x04], eax                   // 0x0056fbc4    894204
                         ret                0x0004                                        // 0x0056fbc7    c20400
_jmp_addr_0x0056fbca:    test               eax, eax                                      // 0x0056fbca    85c0
                         {disp8} jne        _jmp_addr_0x0056fbdc                          // 0x0056fbcc    750e
_jmp_addr_0x0056fbce:    mov                eax, dword ptr [edx]                          // 0x0056fbce    8b02
                         {disp8} mov        dword ptr [ecx + 0x10], eax                   // 0x0056fbd0    894110
                         {disp8} mov        eax, dword ptr [edx + 0x04]                   // 0x0056fbd3    8b4204
                         inc                eax                                           // 0x0056fbd6    40
                         mov                dword ptr [edx], ecx                          // 0x0056fbd7    890a
                         {disp8} mov        dword ptr [edx + 0x04], eax                   // 0x0056fbd9    894204
_jmp_addr_0x0056fbdc:    ret                0x0004                                        // 0x0056fbdc    c20400
                         nop                                                              // 0x0056fbdf    90
?Save@GameThing@@QAEIAAVGGameOSFile@@@Z:
                         push               ecx                                           // 0x0056fbe0    51
                         push               esi                                           // 0x0056fbe1    56
                         push               edi                                           // 0x0056fbe2    57
                         mov.s              edi, ecx                                      // 0x0056fbe3    8bf9
                         mov                eax, dword ptr [edi]                          // 0x0056fbe5    8b07
                         call               dword ptr [eax + 0xf0]                        // 0x0056fbe7    ff90f0000000
                         {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x0056fbed    8b742410
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x0056fbf1    89442408
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x0056fbf5    a190c9be00
                         test               eax, eax                                      // 0x0056fbfa    85c0
                         {disp8} je         _jmp_addr_0x0056fc38                          // 0x0056fbfc    743a
                         push               0x0                                           // 0x0056fbfe    6a00
                         push               0x4                                           // 0x0056fc00    6a04
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0056fc02    8d4c2410
                         push               ecx                                           // 0x0056fc06    51
                         mov.s              ecx, esi                                      // 0x0056fc07    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0056fc09    e812cd2400
                         cmp                eax, 0x03                                     // 0x0056fc0e    83f803
                         {disp8} jne        _jmp_addr_0x0056fc1d                          // 0x0056fc11    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226990], 0x00000000 // 0x0056fc13    c70590c9be0000000000
_jmp_addr_0x0056fc1d:    {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x0056fc1d    8b542408
                         {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0056fc21    8b8614020000
                         and                edx, 0x000000ff                               // 0x0056fc27    81e2ff000000
                         add                edx, 0x04                                     // 0x0056fc2d    83c204
                         add.s              eax, edx                                      // 0x0056fc30    03c2
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0056fc32    898614020000
_jmp_addr_0x0056fc38:    mov                eax, dword ptr [edi]                          // 0x0056fc38    8b07
                         push               esi                                           // 0x0056fc3a    56
                         mov.s              ecx, edi                                      // 0x0056fc3b    8bcf
                         call               dword ptr [eax + 0xf4]                        // 0x0056fc3d    ff90f4000000
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0056fc43    8b442408
                         test               eax, eax                                      // 0x0056fc47    85c0
                         {disp32} je        _jmp_addr_0x0056fcda                          // 0x0056fc49    0f848b000000
                         push               edi                                           // 0x0056fc4f    57
                         mov.s              ecx, esi                                      // 0x0056fc50    8bce
                         call               _jmp_addr_0x00563f60                          // 0x0056fc52    e80943ffff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x0056fc57    a190c9be00
                         test               eax, eax                                      // 0x0056fc5c    85c0
                         {disp8} je         _jmp_addr_0x0056fccf                          // 0x0056fc5e    746f
                         push               ebx                                           // 0x0056fc60    53
                         push               0x0                                           // 0x0056fc61    6a00
                         push               0x4                                           // 0x0056fc63    6a04
                         {disp8} lea        ebx, dword ptr [edi + 0x04]                   // 0x0056fc65    8d5f04
                         push               ebx                                           // 0x0056fc68    53
                         mov.s              ecx, esi                                      // 0x0056fc69    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0056fc6b    e8b0cc2400
                         cmp                eax, 0x03                                     // 0x0056fc70    83f803
                         {disp8} jne        _jmp_addr_0x0056fc7f                          // 0x0056fc73    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226990], 0x00000000 // 0x0056fc75    c70590c9be0000000000
_jmp_addr_0x0056fc7f:    {disp32} mov       edx, dword ptr [esi + 0x00000214]             // 0x0056fc7f    8b9614020000
                         xor.s              ecx, ecx                                      // 0x0056fc85    33c9
                         mov                cl, byte ptr [ebx]                            // 0x0056fc87    8a0b
                         pop                ebx                                           // 0x0056fc89    5b
                         add                ecx, 0x4                                      // 0x0056fc8a    83c104
                         add.s              edx, ecx                                      // 0x0056fc8d    03d1
                         {disp32} mov       dword ptr [esi + 0x00000214], edx             // 0x0056fc8f    899614020000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x0056fc95    a190c9be00
                         test               eax, eax                                      // 0x0056fc9a    85c0
                         {disp8} je         _jmp_addr_0x0056fccf                          // 0x0056fc9c    7431
                         push               0x0                                           // 0x0056fc9e    6a00
                         push               0x1                                           // 0x0056fca0    6a01
                         add                edi, 0x0a                                     // 0x0056fca2    83c70a
                         push               edi                                           // 0x0056fca5    57
                         mov.s              ecx, esi                                      // 0x0056fca6    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0056fca8    e873cc2400
                         cmp                eax, 0x03                                     // 0x0056fcad    83f803
                         {disp8} jne        _jmp_addr_0x0056fcbc                          // 0x0056fcb0    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226990], 0x00000000 // 0x0056fcb2    c70590c9be0000000000
_jmp_addr_0x0056fcbc:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0056fcbc    8b8614020000
                         xor.s              edx, edx                                      // 0x0056fcc2    33d2
                         mov                dl, byte ptr [edi]                            // 0x0056fcc4    8a17
                         inc                edx                                           // 0x0056fcc6    42
                         add.s              eax, edx                                      // 0x0056fcc7    03c2
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0056fcc9    898614020000
_jmp_addr_0x0056fccf:    pop                edi                                           // 0x0056fccf    5f
                         mov                eax, 0x00000001                               // 0x0056fcd0    b801000000
                         pop                esi                                           // 0x0056fcd5    5e
                         pop                ecx                                           // 0x0056fcd6    59
                         ret                0x0004                                        // 0x0056fcd7    c20400
_jmp_addr_0x0056fcda:    pop                edi                                           // 0x0056fcda    5f
                         xor.s              eax, eax                                      // 0x0056fcdb    33c0
                         pop                esi                                           // 0x0056fcdd    5e
                         pop                ecx                                           // 0x0056fcde    59
                         ret                0x0004                                        // 0x0056fcdf    c20400
                         nop                                                              // 0x0056fce2    90
                         nop                                                              // 0x0056fce3    90
                         nop                                                              // 0x0056fce4    90
                         nop                                                              // 0x0056fce5    90
                         nop                                                              // 0x0056fce6    90
                         nop                                                              // 0x0056fce7    90
                         nop                                                              // 0x0056fce8    90
                         nop                                                              // 0x0056fce9    90
                         nop                                                              // 0x0056fcea    90
                         nop                                                              // 0x0056fceb    90
                         nop                                                              // 0x0056fcec    90
                         nop                                                              // 0x0056fced    90
                         nop                                                              // 0x0056fcee    90
                         nop                                                              // 0x0056fcef    90

?Load@GameThing@@QAEIAAVGGameOSFile@@@Z:
                         push               ebx                                           // 0x0056fcf0    53
                         push               esi                                           // 0x0056fcf1    56
                         push               edi                                           // 0x0056fcf2    57
                         push               0x1                                           // 0x0056fcf3    6a01
                         mov.s              edi, ecx                                      // 0x0056fcf5    8bf9
                         call               _RenderLoadingFrame__Fb                       // 0x0056fcf7    e844510800
                         {disp8} mov        esi, dword ptr [esp + 0x14]                   // 0x0056fcfc    8b742414
                         add                esp, 0x04                                     // 0x0056fd00    83c404
                         push               edi                                           // 0x0056fd03    57
                         mov.s              ecx, esi                                      // 0x0056fd04    8bce
                         call               @ReadCheckSum__10GameOSFileFP9GameThing@12    // 0x0056fd06    e89542ffff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x0056fd0b    a194c9be00
                         test               eax, eax                                      // 0x0056fd10    85c0
                         {disp8} lea        ebx, dword ptr [edi + 0x04]                   // 0x0056fd12    8d5f04
                         {disp8} je         _jmp_addr_0x0056fd47                          // 0x0056fd15    7430
                         push               0x0                                           // 0x0056fd17    6a00
                         push               0x4                                           // 0x0056fd19    6a04
                         push               ebx                                           // 0x0056fd1b    53
                         mov.s              ecx, esi                                      // 0x0056fd1c    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0056fd1e    e8bdcb2400
                         cmp                eax, 0x03                                     // 0x0056fd23    83f803
                         {disp8} jne        _jmp_addr_0x0056fd32                          // 0x0056fd26    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226994], 0x00000000 // 0x0056fd28    c70594c9be0000000000
_jmp_addr_0x0056fd32:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0056fd32    8b8e14020000
                         xor.s              eax, eax                                      // 0x0056fd38    33c0
                         mov                al, byte ptr [ebx]                            // 0x0056fd3a    8a03
                         add                eax, 0x04                                     // 0x0056fd3c    83c004
                         add.s              ecx, eax                                      // 0x0056fd3f    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0056fd41    898e14020000
_jmp_addr_0x0056fd47:    {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x0056fd47    a194c9be00
                         add                edi, 0x0a                                     // 0x0056fd4c    83c70a
                         test               eax, eax                                      // 0x0056fd4f    85c0
                         {disp8} je         _jmp_addr_0x0056fd81                          // 0x0056fd51    742e
                         push               0x0                                           // 0x0056fd53    6a00
                         push               0x1                                           // 0x0056fd55    6a01
                         push               edi                                           // 0x0056fd57    57
                         mov.s              ecx, esi                                      // 0x0056fd58    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0056fd5a    e881cb2400
                         cmp                eax, 0x03                                     // 0x0056fd5f    83f803
                         {disp8} jne        _jmp_addr_0x0056fd6e                          // 0x0056fd62    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226994], 0x00000000 // 0x0056fd64    c70594c9be0000000000
_jmp_addr_0x0056fd6e:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0056fd6e    8b8614020000
                         xor.s              ecx, ecx                                      // 0x0056fd74    33c9
                         mov                cl, byte ptr [edi]                            // 0x0056fd76    8a0f
                         inc                ecx                                           // 0x0056fd78    41
                         add.s              eax, ecx                                      // 0x0056fd79    03c1
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0056fd7b    898614020000
_jmp_addr_0x0056fd81:    pop                edi                                           // 0x0056fd81    5f
                         pop                esi                                           // 0x0056fd82    5e
                         mov                eax, 0x00000001                               // 0x0056fd83    b801000000
                         pop                ebx                                           // 0x0056fd88    5b
                         ret                0x0004                                        // 0x0056fd89    c20400
                         nop                                                              // 0x0056fd8c    90
                         nop                                                              // 0x0056fd8d    90
                         nop                                                              // 0x0056fd8e    90
                         nop                                                              // 0x0056fd8f    90
?GetSaveType@GameThing@@UAEIXZ:
@GetSaveType__9GameThingFv@4:    xor.s              eax, eax                                      // 0x0056fd90    33c0
                         ret                                                              // 0x0056fd92    c3
                         nop                                                              // 0x0056fd93    90
                         nop                                                              // 0x0056fd94    90
                         nop                                                              // 0x0056fd95    90
                         nop                                                              // 0x0056fd96    90
                         nop                                                              // 0x0056fd97    90
                         nop                                                              // 0x0056fd98    90
                         nop                                                              // 0x0056fd99    90
                         nop                                                              // 0x0056fd9a    90
                         nop                                                              // 0x0056fd9b    90
                         nop                                                              // 0x0056fd9c    90
                         nop                                                              // 0x0056fd9d    90
                         nop                                                              // 0x0056fd9e    90
                         nop                                                              // 0x0056fd9f    90
?SaveExtraData@GameThing@@QAEXAAVGameOSFile@@@Z:
                         push               ecx                                           // 0x0056fda0    51
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x0056fda1    a190c9be00
                         test               eax, eax                                      // 0x0056fda6    85c0
                         {disp8} mov        dword ptr [esp + 0x00], 0x00000000            // 0x0056fda8    c744240000000000
                         {disp8} je         _jmp_addr_0x0056fdf2                          // 0x0056fdb0    7440
                         push               esi                                           // 0x0056fdb2    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x0056fdb3    8b74240c
                         push               0x0                                           // 0x0056fdb7    6a00
                         push               0x4                                           // 0x0056fdb9    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x0056fdbb    8d44240c
                         push               eax                                           // 0x0056fdbf    50
                         mov.s              ecx, esi                                      // 0x0056fdc0    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0056fdc2    e859cb2400
                         cmp                eax, 0x03                                     // 0x0056fdc7    83f803
                         {disp8} jne        _jmp_addr_0x0056fdd6                          // 0x0056fdca    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226990], 0x00000000 // 0x0056fdcc    c70590c9be0000000000
_jmp_addr_0x0056fdd6:    {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x0056fdd6    8b4c2404
                         {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0056fdda    8b8614020000
                         and                ecx, 0x000000ff                               // 0x0056fde0    81e1ff000000
                         add                ecx, 0x4                                      // 0x0056fde6    83c104
                         add.s              eax, ecx                                      // 0x0056fde9    03c1
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0056fdeb    898614020000
                         pop                esi                                           // 0x0056fdf1    5e
_jmp_addr_0x0056fdf2:    pop                ecx                                           // 0x0056fdf2    59
                         ret                0x0004                                        // 0x0056fdf3    c20400
                         nop                                                              // 0x0056fdf6    90
                         nop                                                              // 0x0056fdf7    90
                         nop                                                              // 0x0056fdf8    90
                         nop                                                              // 0x0056fdf9    90
                         nop                                                              // 0x0056fdfa    90
                         nop                                                              // 0x0056fdfb    90
                         nop                                                              // 0x0056fdfc    90
                         nop                                                              // 0x0056fdfd    90
                         nop                                                              // 0x0056fdfe    90
                         nop                                                              // 0x0056fdff    90
?ToBeDeleted@GameThingWithPos@@UAEXH@Z:    push               esi                                           // 0x0056fe00    56
                         push               edi                                           // 0x0056fe01    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x0056fe02    8b7c240c
                         mov.s              esi, ecx                                      // 0x0056fe06    8bf1
                         mov                eax, dword ptr [esi]                          // 0x0056fe08    8b06
                         push               edi                                           // 0x0056fe0a    57
                         call               dword ptr [eax + 0x1a4]                       // 0x0056fe0b    ff90a4010000
                         push               edi                                           // 0x0056fe11    57
                         mov.s              ecx, esi                                      // 0x0056fe12    8bce
                         call                ?ToBeDeleted@GameThing@@UAEXH@Z              // 0x0056fe14    e857fdffff
                         pop                edi                                           // 0x0056fe19    5f
                         pop                esi                                           // 0x0056fe1a    5e
                         ret                0x0004                                        // 0x0056fe1b    c20400
                         nop                                                              // 0x0056fe1e    90
                         nop                                                              // 0x0056fe1f    90
?Get3DSoundPos@GameThingWithPos@@UAEHPAULHPoint@@@Z: push               ecx                                           // 0x0056fe20    51
                         {disp8} mov        eax, dword ptr [ecx + 0x1c]                   // 0x0056fe21    8b411c
                         push               esi                                           // 0x0056fe24    56
                         {disp8} lea        esi, dword ptr [ecx + 0x14]                   // 0x0056fe25    8d7114
                         mov.s              ecx, esi                                      // 0x0056fe28    8bce
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x0056fe2a    89442404
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x0056fe2e    e85d322900
                         {disp8} fadd       dword ptr [esp + 0x04]                        // 0x0056fe33    d8442404
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x0056fe37    8b44240c
                         {disp8} fstp       dword ptr [eax + 0x04]                        // 0x0056fe3b    d95804
                         fild               dword ptr [esi]                               // 0x0056fe3e    db06
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x0056fe40    d80da4a38a00
                         fstp               dword ptr [eax]                               // 0x0056fe46    d918
                         {disp8} fild       dword ptr [esi + 0x04]                        // 0x0056fe48    db4604
                         pop                esi                                           // 0x0056fe4b    5e
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x0056fe4c    d80da4a38a00
                         {disp8} fstp       dword ptr [eax + 0x08]                        // 0x0056fe52    d95808
                         mov                eax, 0x00000001                               // 0x0056fe55    b801000000
                         pop                ecx                                           // 0x0056fe5a    59
                         ret                0x0004                                        // 0x0056fe5b    c20400
                         nop                                                              // 0x0056fe5e    90
                         nop                                                              // 0x0056fe5f    90
?GetPower@GameThingWithPos@@UBEMXZ:
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0056fe60    d90590a38a00
                         ret                                                              // 0x0056fe66    c3
                         nop                                                              // 0x0056fe67    90
                         nop                                                              // 0x0056fe68    90
                         nop                                                              // 0x0056fe69    90
                         nop                                                              // 0x0056fe6a    90
                         nop                                                              // 0x0056fe6b    90
                         nop                                                              // 0x0056fe6c    90
                         nop                                                              // 0x0056fe6d    90
                         nop                                                              // 0x0056fe6e    90
                         nop                                                              // 0x0056fe6f    90
?GetBoredomMultiplier@GameThingWithPos@@QAEHPAVReaction@@@Z:
                         push               esi                                           // 0x0056fe70    56
                         mov.s              esi, ecx                                      // 0x0056fe71    8bf1
                         mov                eax, dword ptr [esi]                          // 0x0056fe73    8b06
                         call               dword ptr [eax + 0x48]                        // 0x0056fe75    ff5048
                         test               eax, eax                                      // 0x0056fe78    85c0
                         {disp8} je         _jmp_addr_0x0056fe9c                          // 0x0056fe7a    7420
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x0056fe7c    8b4c2408
                         mov                edx, dword ptr [esi]                          // 0x0056fe80    8b16
                         push               edi                                           // 0x0056fe82    57
                         {disp8} mov        edi, dword ptr [ecx + 0x24]                   // 0x0056fe83    8b7924
                         mov.s              ecx, esi                                      // 0x0056fe86    8bce
                         call               dword ptr [edx + 0x48]                        // 0x0056fe88    ff5248
                         {disp32} fld       dword ptr [eax + edi * 0x4 + 0x00000880]      // 0x0056fe8b    d984b880080000
                         add                eax, 0x00000798                               // 0x0056fe92    0598070000
                         pop                edi                                           // 0x0056fe97    5f
                         pop                esi                                           // 0x0056fe98    5e
                         ret                0x0004                                        // 0x0056fe99    c20400
_jmp_addr_0x0056fe9c:    {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0056fe9c    d90590a38a00
                         pop                esi                                           // 0x0056fea2    5e
                         ret                0x0004                                        // 0x0056fea3    c20400
                         nop                                                              // 0x0056fea6    90
                         nop                                                              // 0x0056fea7    90
                         nop                                                              // 0x0056fea8    90
                         nop                                                              // 0x0056fea9    90
                         nop                                                              // 0x0056feaa    90
                         nop                                                              // 0x0056feab    90
                         nop                                                              // 0x0056feac    90
                         nop                                                              // 0x0056fead    90
                         nop                                                              // 0x0056feae    90
                         nop                                                              // 0x0056feaf    90
?GetUpdateOfBoredomValue@GameThingWithPos@@UAEMPAUReaction@@PAV1@@Z:
                         {disp32} fld       dword ptr [data_bytes + 0x292660]             // 0x0056feb0    d9056086c500
                         ret                0x0008                                        // 0x0056feb6    c20800
                         nop                                                              // 0x0056feb9    90
                         nop                                                              // 0x0056feba    90
                         nop                                                              // 0x0056febb    90
                         nop                                                              // 0x0056febc    90
                         nop                                                              // 0x0056febd    90
                         nop                                                              // 0x0056febe    90
                         nop                                                              // 0x0056febf    90
?GetPSysPower@GameThingWithPos@@UBEMXZ:
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0056fec0    d90590a38a00
                         ret                                                              // 0x0056fec6    c3
                         nop                                                              // 0x0056fec7    90
                         nop                                                              // 0x0056fec8    90
                         nop                                                              // 0x0056fec9    90
                         nop                                                              // 0x0056feca    90
                         nop                                                              // 0x0056fecb    90
                         nop                                                              // 0x0056fecc    90
                         nop                                                              // 0x0056fecd    90
                         nop                                                              // 0x0056fece    90
                         nop                                                              // 0x0056fecf    90
?MaintainSpell@GameThing@@UAEXIM@Z:
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x0056fed0    d9442408
                         ret                0x0008                                        // 0x0056fed4    c20800
                         nop                                                              // 0x0056fed7    90
                         nop                                                              // 0x0056fed8    90
                         nop                                                              // 0x0056fed9    90
                         nop                                                              // 0x0056feda    90
                         nop                                                              // 0x0056fedb    90
                         nop                                                              // 0x0056fedc    90
                         nop                                                              // 0x0056fedd    90
                         nop                                                              // 0x0056fede    90
                         nop                                                              // 0x0056fedf    90
?UpdateSpellInfo@GameThing@@QAEXPAVSpell@@PAVPSysProcessInfo@@@Z:
                         ret                0x0008                                        // 0x0056fee0    c20800
                         nop                                                              // 0x0056fee3    90
                         nop                                                              // 0x0056fee4    90
                         nop                                                              // 0x0056fee5    90
                         nop                                                              // 0x0056fee6    90
                         nop                                                              // 0x0056fee7    90
                         nop                                                              // 0x0056fee8    90
                         nop                                                              // 0x0056fee9    90
                         nop                                                              // 0x0056feea    90
                         nop                                                              // 0x0056feeb    90
                         nop                                                              // 0x0056feec    90
                         nop                                                              // 0x0056feed    90
                         nop                                                              // 0x0056feee    90
                         nop                                                              // 0x0056feef    90
?CheckAndSetSaved@GameThing@@QAE_NXZ:
                         {disp32} mov       ax, word ptr [data_bytes + 0x3d3710]          // 0x0056fef0    66a11097d900
                         cmp                ax, word ptr [ecx + 0x0c]                     // 0x0056fef6    663b410c
                         {disp8} je         _jmp_addr_0x0056ff06                          // 0x0056fefa    740a
                         {disp8} mov        word ptr [ecx + 0x0c], ax                     // 0x0056fefc    6689410c
                         mov                eax, 0x00000001                               // 0x0056ff00    b801000000
                         ret                                                              // 0x0056ff05    c3
_jmp_addr_0x0056ff06:    xor.s              eax, eax                                      // 0x0056ff06    33c0
                         ret                                                              // 0x0056ff08    c3
                         nop                                                              // 0x0056ff09    90
                         nop                                                              // 0x0056ff0a    90
                         nop                                                              // 0x0056ff0b    90
                         nop                                                              // 0x0056ff0c    90
                         nop                                                              // 0x0056ff0d    90
                         nop                                                              // 0x0056ff0e    90
                         nop                                                              // 0x0056ff0f    90
?GetTown@GameThing@@QAEPAVTown@@XZ:
                         xor.s              eax, eax                                      // 0x0056ff10    33c0
                         ret                                                              // 0x0056ff12    c3
                         nop                                                              // 0x0056ff13    90
                         nop                                                              // 0x0056ff14    90
                         nop                                                              // 0x0056ff15    90
                         nop                                                              // 0x0056ff16    90
                         nop                                                              // 0x0056ff17    90
                         nop                                                              // 0x0056ff18    90
                         nop                                                              // 0x0056ff19    90
                         nop                                                              // 0x0056ff1a    90
                         nop                                                              // 0x0056ff1b    90
                         nop                                                              // 0x0056ff1c    90
                         nop                                                              // 0x0056ff1d    90
                         nop                                                              // 0x0056ff1e    90
                         nop                                                              // 0x0056ff1f    90
?GetMovementDirection@GameThingWithPos@@UAEXPAULHPoint@@@Z:
                         test               byte ptr [ecx + 0x24], 0x40                   // 0x0056ff20    f6412440
                         {disp8} je         _jmp_addr_0x0056ff36                          // 0x0056ff24    7410
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x0056ff26    8b542404
                         mov                eax, dword ptr [ecx]                          // 0x0056ff2a    8b01
                         push               edx                                           // 0x0056ff2c    52
                         call               dword ptr [eax + 0x16c]                       // 0x0056ff2d    ff906c010000
                         ret                0x0004                                        // 0x0056ff33    c20400
_jmp_addr_0x0056ff36:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0056ff36    8b442404
                         xor.s              ecx, ecx                                      // 0x0056ff3a    33c9
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x0056ff3c    894808
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x0056ff3f    894804
                         mov                dword ptr [eax], ecx                          // 0x0056ff42    8908
                         ret                0x0004                                        // 0x0056ff44    c20400
                         nop                                                              // 0x0056ff47    90
                         nop                                                              // 0x0056ff48    90
                         nop                                                              // 0x0056ff49    90
                         nop                                                              // 0x0056ff4a    90
                         nop                                                              // 0x0056ff4b    90
                         nop                                                              // 0x0056ff4c    90
                         nop                                                              // 0x0056ff4d    90
                         nop                                                              // 0x0056ff4e    90
                         nop                                                              // 0x0056ff4f    90
?GetPhysicsMovementDirection@GameThingWithPos@@UAEXPAULHPoint@@@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0056ff50    8b442404
                         xor.s              ecx, ecx                                      // 0x0056ff54    33c9
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x0056ff56    894808
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x0056ff59    894804
                         mov                dword ptr [eax], ecx                          // 0x0056ff5c    8908
                         ret                0x0004                                        // 0x0056ff5e    c20400
                         nop                                                              // 0x0056ff61    90
                         nop                                                              // 0x0056ff62    90
                         nop                                                              // 0x0056ff63    90
                         nop                                                              // 0x0056ff64    90
                         nop                                                              // 0x0056ff65    90
                         nop                                                              // 0x0056ff66    90
                         nop                                                              // 0x0056ff67    90
                         nop                                                              // 0x0056ff68    90
                         nop                                                              // 0x0056ff69    90
                         nop                                                              // 0x0056ff6a    90
                         nop                                                              // 0x0056ff6b    90
                         nop                                                              // 0x0056ff6c    90
                         nop                                                              // 0x0056ff6d    90
                         nop                                                              // 0x0056ff6e    90
                         nop                                                              // 0x0056ff6f    90
?GetImpressiveType@GameThingWithPos@@UAE?AW4IMPRESSIVE_TYPE@@XZ:
                         mov                eax, 0x0000001b                               // 0x0056ff70    b81b000000
                         ret                                                              // 0x0056ff75    c3
                         nop                                                              // 0x0056ff76    90
                         nop                                                              // 0x0056ff77    90
                         nop                                                              // 0x0056ff78    90
                         nop                                                              // 0x0056ff79    90
                         nop                                                              // 0x0056ff7a    90
                         nop                                                              // 0x0056ff7b    90
                         nop                                                              // 0x0056ff7c    90
                         nop                                                              // 0x0056ff7d    90
                         nop                                                              // 0x0056ff7e    90
                         nop                                                              // 0x0056ff7f    90
                         sub                esp, 0x30                                     // 0x0056ff80    83ec30
                         {disp8} mov        eax, dword ptr [esp + 0x34]                   // 0x0056ff83    8b442434
                         {disp8} mov        ecx, dword ptr [eax + 0x1c]                   // 0x0056ff87    8b481c
                         push               esi                                           // 0x0056ff8a    56
                         {disp8} lea        esi, dword ptr [eax + 0x14]                   // 0x0056ff8b    8d7014
                         {disp8} mov        dword ptr [esp + 0x38], ecx                   // 0x0056ff8e    894c2438
                         push               edi                                           // 0x0056ff92    57
                         mov.s              ecx, esi                                      // 0x0056ff93    8bce
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x0056ff95    e8f6302900
                         {disp8} fadd       dword ptr [esp + 0x3c]                        // 0x0056ff9a    d844243c
                         {disp8} mov        edi, dword ptr [esp + 0x40]                   // 0x0056ff9e    8b7c2440
                         {disp8} mov        edx, dword ptr [edi + 0x1c]                   // 0x0056ffa2    8b571c
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0056ffa5    d95c2418
                         {disp8} mov        dword ptr [esp + 0x3c], edx                   // 0x0056ffa9    8954243c
                         fild               dword ptr [esi]                               // 0x0056ffad    db06
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x0056ffaf    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0056ffb5    d95c2414
                         {disp8} fild       dword ptr [esi + 0x04]                        // 0x0056ffb9    db4604
                         {disp8} lea        esi, dword ptr [edi + 0x14]                   // 0x0056ffbc    8d7714
                         mov.s              ecx, esi                                      // 0x0056ffbf    8bce
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x0056ffc1    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0056ffc7    d95c241c
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x0056ffcb    e8c0302900
                         {disp8} fadd       dword ptr [esp + 0x3c]                        // 0x0056ffd0    d844243c
                         fild               dword ptr [esi]                               // 0x0056ffd4    db06
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x0056ffd6    d80da4a38a00
                         {disp8} fild       dword ptr [esi + 0x04]                        // 0x0056ffdc    db4604
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x0056ffdf    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x0056ffe5    d95c2434
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x0056ffe9    d9442414
                         fsub               st, st(1)                                     // 0x0056ffed    d8e1
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x0056ffef    d95c2408
                         fstp               st(0)                                         // 0x0056fff3    ddd8
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x0056fff5    d9442418
                         fsub               st, st(1)                                     // 0x0056fff9    d8e1
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x0056fffb    d95c240c
                         fstp               st(0)                                         // 0x0056ffff    ddd8
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x00570001    d944241c
                         {disp8} fsub       dword ptr [esp + 0x34]                        // 0x00570005    d8642434
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00570009    d95c2410
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x0057000d    d9442408
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00570011    d81d98a38a00
                         fnstsw             ax                                            // 0x00570017    dfe0
                         test               ah, 0x40                                      // 0x00570019    f6c440
                         {disp8} je         _jmp_addr_0x00570040                          // 0x0057001c    7422
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x0057001e    d944240c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00570022    d81d98a38a00
                         fnstsw             ax                                            // 0x00570028    dfe0
                         test               ah, 0x40                                      // 0x0057002a    f6c440
                         {disp8} je         _jmp_addr_0x00570040                          // 0x0057002d    7411
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0057002f    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00570033    d81d98a38a00
                         fnstsw             ax                                            // 0x00570039    dfe0
                         test               ah, 0x40                                      // 0x0057003b    f6c440
                         {disp8} jne        _jmp_addr_0x00570084                          // 0x0057003e    7544
_jmp_addr_0x00570040:    {disp8} fld        dword ptr [esp + 0x10]                        // 0x00570040    d9442410
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x00570044    d84c2410
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x00570048    d944240c
                         {disp8} fmul       dword ptr [esp + 0x0c]                        // 0x0057004c    d84c240c
                         faddp              st(1), st                                     // 0x00570050    dec1
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x00570052    d9442408
                         {disp8} fmul       dword ptr [esp + 0x08]                        // 0x00570056    d84c2408
                         faddp              st(1), st                                     // 0x0057005a    dec1
                         fsqrt                                                            // 0x0057005c    d9fa
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                   // 0x0057005e    d83d90a38a00
                         fld                st(0)                                         // 0x00570064    d9c0
                         {disp8} fmul       dword ptr [esp + 0x08]                        // 0x00570066    d84c2408
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x0057006a    d95c2408
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x0057006e    d944240c
                         fmul               st, st(1)                                     // 0x00570072    d8c9
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x00570074    d95c240c
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00570078    d9442410
                         fmul               st, st(1)                                     // 0x0057007c    d8c9
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0057007e    d95c2410
                         fstp               st(0)                                         // 0x00570082    ddd8
_jmp_addr_0x00570084:    mov                eax, dword ptr [edi]                          // 0x00570084    8b07
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x00570086    8d4c2420
                         push               ecx                                           // 0x0057008a    51
                         mov.s              ecx, edi                                      // 0x0057008b    8bcf
                         call               dword ptr [eax + 0x168]                       // 0x0057008d    ff9068010000
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x00570093    d9442420
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x00570097    d81598a38a00
                         pop                edi                                           // 0x0057009d    5f
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0057009e    d9442420
                         pop                esi                                           // 0x005700a2    5e
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x005700a3    d9442420
                         fnstsw             ax                                            // 0x005700a7    dfe0
                         test               ah, 0x40                                      // 0x005700a9    f6c440
                         {disp8} je         _jmp_addr_0x005700ca                          // 0x005700ac    741c
                         fld                st(1)                                         // 0x005700ae    d9c1
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005700b0    d81d98a38a00
                         fnstsw             ax                                            // 0x005700b6    dfe0
                         test               ah, 0x40                                      // 0x005700b8    f6c440
                         {disp8} je         _jmp_addr_0x005700ca                          // 0x005700bb    740d
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x005700bd    d81598a38a00
                         fnstsw             ax                                            // 0x005700c3    dfe0
                         test               ah, 0x40                                      // 0x005700c5    f6c440
                         {disp8} jne        _jmp_addr_0x005700f6                          // 0x005700c8    752c
_jmp_addr_0x005700ca:    fld                st(1)                                         // 0x005700ca    d9c1
                         fmul               st, st(2)                                     // 0x005700cc    d8ca
                         fld                st(1)                                         // 0x005700ce    d9c1
                         fmul               st, st(2)                                     // 0x005700d0    d8ca
                         faddp              st(1), st                                     // 0x005700d2    dec1
                         fld                st(3)                                         // 0x005700d4    d9c3
                         fmul               st, st(4)                                     // 0x005700d6    d8cc
                         faddp              st(1), st                                     // 0x005700d8    dec1
                         fsqrt                                                            // 0x005700da    d9fa
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                   // 0x005700dc    d83d90a38a00
                         fxch               st(3)                                         // 0x005700e2    d9cb
                         fmul               st, st(3)                                     // 0x005700e4    d8cb
                         fxch               st(3)                                         // 0x005700e6    d9cb
                         fxch               st(2)                                         // 0x005700e8    d9ca
                         fmul               st, st(2)                                     // 0x005700ea    d8ca
                         fxch               st(2)                                         // 0x005700ec    d9ca
                         fxch               st(1)                                         // 0x005700ee    d9c9
                         fmul               st, st(1)                                     // 0x005700f0    d8c9
                         fxch               st(1)                                         // 0x005700f2    d9c9
                         fstp               st(0)                                         // 0x005700f4    ddd8
_jmp_addr_0x005700f6:    {disp8} fmul       dword ptr [esp + 0x08]                        // 0x005700f6    d84c2408
                         fxch               st(1)                                         // 0x005700fa    d9c9
                         {disp8} fmul       dword ptr [esp + 0x04]                        // 0x005700fc    d84c2404
                         faddp              st(1), st                                     // 0x00570100    dec1
                         fxch               st(1)                                         // 0x00570102    d9c9
                         {disp8} fmul       dword ptr [esp + 0x00]                        // 0x00570104    d84c2400
                         faddp              st(1), st                                     // 0x00570108    dec1
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0057010a    d81d98a38a00
                         fnstsw             ax                                            // 0x00570110    dfe0
                         test               ah, 0x01                                      // 0x00570112    f6c401
                         {disp8} jne        _jmp_addr_0x00570120                          // 0x00570115    7509
                         mov                eax, 0x00000001                               // 0x00570117    b801000000
                         add                esp, 0x30                                     // 0x0057011c    83c430
                         ret                                                              // 0x0057011f    c3
_jmp_addr_0x00570120:    xor.s              eax, eax                                      // 0x00570120    33c0
                         add                esp, 0x30                                     // 0x00570122    83c430
                         ret                                                              // 0x00570125    c3
                         nop                                                              // 0x00570126    90
                         nop                                                              // 0x00570127    90
                         nop                                                              // 0x00570128    90
                         nop                                                              // 0x00570129    90
                         nop                                                              // 0x0057012a    90
                         nop                                                              // 0x0057012b    90
                         nop                                                              // 0x0057012c    90
                         nop                                                              // 0x0057012d    90
                         nop                                                              // 0x0057012e    90
                         nop                                                              // 0x0057012f    90

?GetPlayer@GameThing@@QAEPAVGPlayer@@XZ:
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00570130    8b0d5c19d000
                         xor.s              eax, eax                                      // 0x00570136    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a5b]               // 0x00570138    8a815b5a2000
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x0057013e    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x00570141    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x00570144    8d0450
                         shl                eax, 5                                        // 0x00570147    c1e005
                         {disp8} lea        eax, dword ptr [eax + ecx * 0x1 + 0x18]       // 0x0057014a    8d440818
                         ret                                                              // 0x0057014e    c3
                         nop                                                              // 0x0057014f    90

?SetPlayer@GameThing@@QAEXPAVGPlayer@@@Z:
                         ret                0x0004                                        // 0x00570150    c20400
                         nop                                                              // 0x00570153    90
                         nop                                                              // 0x00570154    90
                         nop                                                              // 0x00570155    90
                         nop                                                              // 0x00570156    90
                         nop                                                              // 0x00570157    90
                         nop                                                              // 0x00570158    90
                         nop                                                              // 0x00570159    90
                         nop                                                              // 0x0057015a    90
                         nop                                                              // 0x0057015b    90
                         nop                                                              // 0x0057015c    90
                         nop                                                              // 0x0057015d    90
                         nop                                                              // 0x0057015e    90
                         nop                                                              // 0x0057015f    90
                         sub                esp, 0x0c                                     // 0x00570160    83ec0c
                         push               esi                                           // 0x00570163    56
                         push               edi                                           // 0x00570164    57
                         {disp8} mov        edi, dword ptr [esp + 0x18]                   // 0x00570165    8b7c2418
                         fld                dword ptr [edi]                               // 0x00570169    d907
                         mov.s              esi, ecx                                      // 0x0057016b    8bf1
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]              // 0x0057016d    d80d00c48a00
                         call               _jmp_addr_0x007a1400                          // 0x00570173    e888122300
                         {disp8} fld        dword ptr [edi + 0x08]                        // 0x00570178    d94708
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]              // 0x0057017b    d80d00c48a00
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x00570181    89442408
                         call               _jmp_addr_0x007a1400                          // 0x00570185    e876122300
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x0057018a    8d4c2408
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x0057018e    8944240c
                         mov                eax, dword ptr [esi]                          // 0x00570192    8b06
                         push               ecx                                           // 0x00570194    51
                         mov.s              ecx, esi                                      // 0x00570195    8bce
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x00570197    c744241400000000
                         call               dword ptr [eax + 0xfc]                        // 0x0057019f    ff90fc000000
                         pop                edi                                           // 0x005701a5    5f
                         pop                esi                                           // 0x005701a6    5e
                         add                esp, 0x0c                                     // 0x005701a7    83c40c
                         ret                0x0004                                        // 0x005701aa    c20400
                         nop                                                              // 0x005701ad    90
                         nop                                                              // 0x005701ae    90
                         nop                                                              // 0x005701af    90
?IsInteractable@GameThingWithPos@@UAE_NXZ:
                         mov                eax, dword ptr [ecx]                          // 0x005701b0    8b01
                         call               dword ptr [eax + 0x2c]                        // 0x005701b2    ff502c
                         neg                eax                                           // 0x005701b5    f7d8
                         sbb.s              eax, eax                                      // 0x005701b7    1bc0
                         neg                eax                                           // 0x005701b9    f7d8
                         ret                                                              // 0x005701bb    c3
                         nop                                                              // 0x005701bc    90
                         nop                                                              // 0x005701bd    90
                         nop                                                              // 0x005701be    90
                         nop                                                              // 0x005701bf    90
?CanBeThrownByPlayer@GameThingWithPos@@UBE_NXZ:
                         push               esi                                           // 0x005701c0    56
                         mov.s              esi, ecx                                      // 0x005701c1    8bf1
                         mov                eax, dword ptr [esi]                          // 0x005701c3    8b06
                         call               dword ptr [eax + 0x470]                       // 0x005701c5    ff9070040000
                         test               eax, eax                                      // 0x005701cb    85c0
                         {disp8} jne        _jmp_addr_0x005701ed                          // 0x005701cd    751e
                         mov                edx, dword ptr [esi]                          // 0x005701cf    8b16
                         mov.s              ecx, esi                                      // 0x005701d1    8bce
                         call               dword ptr [edx + 0x474]                       // 0x005701d3    ff9274040000
                         test               eax, eax                                      // 0x005701d9    85c0
                         {disp8} jne        _jmp_addr_0x005701ed                          // 0x005701db    7510
                         mov                eax, dword ptr [esi]                          // 0x005701dd    8b06
                         mov.s              ecx, esi                                      // 0x005701df    8bce
                         call               dword ptr [eax + 0x478]                       // 0x005701e1    ff9078040000
                         test               eax, eax                                      // 0x005701e7    85c0
                         {disp8} jne        _jmp_addr_0x005701ed                          // 0x005701e9    7502
                         pop                esi                                           // 0x005701eb    5e
                         ret                                                              // 0x005701ec    c3
_jmp_addr_0x005701ed:    mov                eax, 0x00000001                               // 0x005701ed    b801000000
                         pop                esi                                           // 0x005701f2    5e
                         ret                                                              // 0x005701f3    c3
                         nop                                                              // 0x005701f4    90
                         nop                                                              // 0x005701f5    90
                         nop                                                              // 0x005701f6    90
                         nop                                                              // 0x005701f7    90
                         nop                                                              // 0x005701f8    90
                         nop                                                              // 0x005701f9    90
                         nop                                                              // 0x005701fa    90
                         nop                                                              // 0x005701fb    90
                         nop                                                              // 0x005701fc    90
                         nop                                                              // 0x005701fd    90
                         nop                                                              // 0x005701fe    90
                         nop                                                              // 0x005701ff    90
?GetScriptObjectType@GameThingWithPos@@UAEIXZ:
                         xor.s              eax, eax                                      // 0x00570200    33c0
                         ret                                                              // 0x00570202    c3
                         nop                                                              // 0x00570203    90
                         nop                                                              // 0x00570204    90
                         nop                                                              // 0x00570205    90
                         nop                                                              // 0x00570206    90
                         nop                                                              // 0x00570207    90
                         nop                                                              // 0x00570208    90
                         nop                                                              // 0x00570209    90
                         nop                                                              // 0x0057020a    90
                         nop                                                              // 0x0057020b    90
                         nop                                                              // 0x0057020c    90
                         nop                                                              // 0x0057020d    90
                         nop                                                              // 0x0057020e    90
                         nop                                                              // 0x0057020f    90
?SetSpeedInMetres@GameThingWithPos@@UAEXMH@Z:
                         ret                0x0008                                        // 0x00570210    c20800
                         nop                                                              // 0x00570213    90
                         nop                                                              // 0x00570214    90
                         nop                                                              // 0x00570215    90
                         nop                                                              // 0x00570216    90
                         nop                                                              // 0x00570217    90
                         nop                                                              // 0x00570218    90
                         nop                                                              // 0x00570219    90
                         nop                                                              // 0x0057021a    90
                         nop                                                              // 0x0057021b    90
                         nop                                                              // 0x0057021c    90
                         nop                                                              // 0x0057021d    90
                         nop                                                              // 0x0057021e    90
                         nop                                                              // 0x0057021f    90
?GetSpeedInMetres@GameThingWithPos@@UBEMXZ:
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x00570220    d90598a38a00
                         ret                                                              // 0x00570226    c3
                         nop                                                              // 0x00570227    90
                         nop                                                              // 0x00570228    90
                         nop                                                              // 0x00570229    90
                         nop                                                              // 0x0057022a    90
                         nop                                                              // 0x0057022b    90
                         nop                                                              // 0x0057022c    90
                         nop                                                              // 0x0057022d    90
                         nop                                                              // 0x0057022e    90
                         nop                                                              // 0x0057022f    90
?GetRunningSpeedInMetres@GameThingWithPos@@UBEMXZ:
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x00570230    d90598a38a00
                         ret                                                              // 0x00570236    c3
                         nop                                                              // 0x00570237    90
                         nop                                                              // 0x00570238    90
                         nop                                                              // 0x00570239    90
                         nop                                                              // 0x0057023a    90
                         nop                                                              // 0x0057023b    90
                         nop                                                              // 0x0057023c    90
                         nop                                                              // 0x0057023d    90
                         nop                                                              // 0x0057023e    90
                         nop                                                              // 0x0057023f    90
?GetDefaultSpeedInMetres@GameThingWithPos@@UAEMXZ:
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x00570240    d90598a38a00
                         ret                                                              // 0x00570246    c3
                         nop                                                              // 0x00570247    90
                         nop                                                              // 0x00570248    90
                         nop                                                              // 0x00570249    90
                         nop                                                              // 0x0057024a    90
                         nop                                                              // 0x0057024b    90
                         nop                                                              // 0x0057024c    90
                         nop                                                              // 0x0057024d    90
                         nop                                                              // 0x0057024e    90
                         nop                                                              // 0x0057024f    90
?SetSpeedInMetresPerSecond@GameThingWithPos@@UAEXMH@Z:
                         ret                0x0008                                        // 0x00570250    c20800
                         nop                                                              // 0x00570253    90
                         nop                                                              // 0x00570254    90
                         nop                                                              // 0x00570255    90
                         nop                                                              // 0x00570256    90
                         nop                                                              // 0x00570257    90
                         nop                                                              // 0x00570258    90
                         nop                                                              // 0x00570259    90
                         nop                                                              // 0x0057025a    90
                         nop                                                              // 0x0057025b    90
                         nop                                                              // 0x0057025c    90
                         nop                                                              // 0x0057025d    90
                         nop                                                              // 0x0057025e    90
                         nop                                                              // 0x0057025f    90
?GetSpeedInMetresPerSecond@GameThingWithPos@@UBEMXZ:
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x00570260    d90598a38a00
                         ret                                                              // 0x00570266    c3
                         nop                                                              // 0x00570267    90
                         nop                                                              // 0x00570268    90
                         nop                                                              // 0x00570269    90
                         nop                                                              // 0x0057026a    90
                         nop                                                              // 0x0057026b    90
                         nop                                                              // 0x0057026c    90
                         nop                                                              // 0x0057026d    90
                         nop                                                              // 0x0057026e    90
                         nop                                                              // 0x0057026f    90
?GetRunningSpeedInMetresPerSecond@GameThingWithPos@@UAEMXZ:
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x00570270    d90598a38a00
                         ret                                                              // 0x00570276    c3
                         nop                                                              // 0x00570277    90
                         nop                                                              // 0x00570278    90
                         nop                                                              // 0x00570279    90
                         nop                                                              // 0x0057027a    90
                         nop                                                              // 0x0057027b    90
                         nop                                                              // 0x0057027c    90
                         nop                                                              // 0x0057027d    90
                         nop                                                              // 0x0057027e    90
                         nop                                                              // 0x0057027f    90
?GetDefaultSpeedInMetresPerSecond@GameThingWithPos@@UAEMXZ:
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x00570280    d90598a38a00
                         ret                                                              // 0x00570286    c3
                         nop                                                              // 0x00570287    90
                         nop                                                              // 0x00570288    90
                         nop                                                              // 0x00570289    90
                         nop                                                              // 0x0057028a    90
                         nop                                                              // 0x0057028b    90
                         nop                                                              // 0x0057028c    90
                         nop                                                              // 0x0057028d    90
                         nop                                                              // 0x0057028e    90
                         nop                                                              // 0x0057028f    90
?ForDrawFXGetNumVertices@GameThingWithPos@@UAEHXZ:
                         xor.s              eax, eax                                      // 0x00570290    33c0
                         ret                                                              // 0x00570292    c3
                         nop                                                              // 0x00570293    90
                         nop                                                              // 0x00570294    90
                         nop                                                              // 0x00570295    90
                         nop                                                              // 0x00570296    90
                         nop                                                              // 0x00570297    90
                         nop                                                              // 0x00570298    90
                         nop                                                              // 0x00570299    90
                         nop                                                              // 0x0057029a    90
                         nop                                                              // 0x0057029b    90
                         nop                                                              // 0x0057029c    90
                         nop                                                              // 0x0057029d    90
                         nop                                                              // 0x0057029e    90
                         nop                                                              // 0x0057029f    90
?ForDrawFXGetVertexPos@GameThingWithPos@@UAEXHPAULHPoint@@@Z:
                         xor.s              al, al                                        // 0x005702a0    32c0
                         ret                0x0008                                        // 0x005702a2    c20800
                         nop                                                              // 0x005702a5    90
                         nop                                                              // 0x005702a6    90
                         nop                                                              // 0x005702a7    90
                         nop                                                              // 0x005702a8    90
                         nop                                                              // 0x005702a9    90
                         nop                                                              // 0x005702aa    90
                         nop                                                              // 0x005702ab    90
                         nop                                                              // 0x005702ac    90
                         nop                                                              // 0x005702ad    90
                         nop                                                              // 0x005702ae    90
                         nop                                                              // 0x005702af    90
?GetDistanceFromObject@GameThingWithPos@@UBEMPAUMapCoords@@@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x005702b0    8b442404
                         push               esi                                           // 0x005702b4    56
                         mov.s              esi, ecx                                      // 0x005702b5    8bf1
                         push               eax                                           // 0x005702b7    50
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                   // 0x005702b8    8d4e14
                         push               ecx                                           // 0x005702bb    51
                         call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z                               // 0x005702bc    e8afca1d00
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x005702c1    d95c2410
                         mov                edx, dword ptr [esi]                          // 0x005702c5    8b16
                         add                esp, 0x08                                     // 0x005702c7    83c408
                         mov.s              ecx, esi                                      // 0x005702ca    8bce
                         call               dword ptr [edx + 0x60]                        // 0x005702cc    ff5260
                         {disp8} fsubr      dword ptr [esp + 0x08]                        // 0x005702cf    d86c2408
                         pop                esi                                           // 0x005702d3    5e
                         ret                0x0004                                        // 0x005702d4    c20400
                         nop                                                              // 0x005702d7    90
                         nop                                                              // 0x005702d8    90
                         nop                                                              // 0x005702d9    90
                         nop                                                              // 0x005702da    90
                         nop                                                              // 0x005702db    90
                         nop                                                              // 0x005702dc    90
                         nop                                                              // 0x005702dd    90
                         nop                                                              // 0x005702de    90
                         nop                                                              // 0x005702df    90
?GetPSysBeamTargetPos@GameThingWithPos@@UAEXPAULHPoint@@@Z:
                         sub                esp, 0x0c                                     // 0x005702e0    83ec0c
                         push               esi                                           // 0x005702e3    56
                         push               edi                                           // 0x005702e4    57
                         mov.s              esi, ecx                                      // 0x005702e5    8bf1
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x005702e7    8d442408
                         push               eax                                           // 0x005702eb    50
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                   // 0x005702ec    8d4e14
                         call               @GetLHPoint__9MapCoordsCFv@12                 // 0x005702ef    e84c590900
                         mov                edx, dword ptr [eax]                          // 0x005702f4    8b10
                         {disp8} mov        edi, dword ptr [esp + 0x18]                   // 0x005702f6    8b7c2418
                         mov.s              ecx, edi                                      // 0x005702fa    8bcf
                         mov                dword ptr [ecx], edx                          // 0x005702fc    8911
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x005702fe    8b5004
                         {disp8} mov        dword ptr [ecx + 0x04], edx                   // 0x00570301    895104
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00570304    8b4008
                         {disp8} mov        dword ptr [ecx + 0x08], eax                   // 0x00570307    894108
                         mov                edx, dword ptr [esi]                          // 0x0057030a    8b16
                         mov.s              ecx, esi                                      // 0x0057030c    8bce
                         call               dword ptr [edx + 0x42c]                       // 0x0057030e    ff922c040000
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x00570314    d80db4a38a00
                         {disp8} fadd       dword ptr [edi + 0x04]                        // 0x0057031a    d84704
                         {disp8} fstp       dword ptr [edi + 0x04]                        // 0x0057031d    d95f04
                         pop                edi                                           // 0x00570320    5f
                         pop                esi                                           // 0x00570321    5e
                         add                esp, 0x0c                                     // 0x00570322    83c40c
                         ret                0x0004                                        // 0x00570325    c20400
                         nop                                                              // 0x00570328    90
                         nop                                                              // 0x00570329    90
                         nop                                                              // 0x0057032a    90
                         nop                                                              // 0x0057032b    90
                         nop                                                              // 0x0057032c    90
                         nop                                                              // 0x0057032d    90
                         nop                                                              // 0x0057032e    90
                         nop                                                              // 0x0057032f    90
?UseFootpathIfNecessary@GameThing@@QAEXPAVLiving@@ABUMapCoords@@E@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00570330    8b44240c
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x00570334    8b4c2408
                         push               eax                                           // 0x00570338    50
                         push               ecx                                           // 0x00570339    51
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x0057033a    8b4c240c
                         call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13// 0x0057033e    e84d250800
                         ret                0x000c                                        // 0x00570343    c20c00
                         nop                                                              // 0x00570346    90
                         nop                                                              // 0x00570347    90
                         nop                                                              // 0x00570348    90
                         nop                                                              // 0x00570349    90
                         nop                                                              // 0x0057034a    90
                         nop                                                              // 0x0057034b    90
                         nop                                                              // 0x0057034c    90
                         nop                                                              // 0x0057034d    90
                         nop                                                              // 0x0057034e    90
                         nop                                                              // 0x0057034f    90
?UseFootpathIfNecessary@GameThingWithPos@@QAEXPAVLiving@@ABUMapCoords@@E@Z:
                         push               esi                                           // 0x00570350    56
                         mov.s              esi, ecx                                      // 0x00570351    8bf1
                         mov                eax, dword ptr [esi]                          // 0x00570353    8b06
                         call               dword ptr [eax + 0x74]                        // 0x00570355    ff5074
                         test               eax, eax                                      // 0x00570358    85c0
                         {disp8} je         _jmp_addr_0x0057037e                          // 0x0057035a    7422
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0057035c    8b4c2410
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x00570360    8b54240c
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x00570364    8b442408
                         push               esi                                           // 0x00570368    56
                         push               ecx                                           // 0x00570369    51
                         push               edx                                           // 0x0057036a    52
                         mov                edx, dword ptr [esi]                          // 0x0057036b    8b16
                         push               eax                                           // 0x0057036d    50
                         mov.s              ecx, esi                                      // 0x0057036e    8bce
                         call               dword ptr [edx + 0x74]                        // 0x00570370    ff5274
                         mov.s              ecx, eax                                      // 0x00570373    8bc8
                         call               @UseFootpathIfNecessary__13GFootpathLinkFP6LivingRC9MapCoordsUcP16GameThingWithPos@24                          // 0x00570375    e8665ffcff
                         pop                esi                                           // 0x0057037a    5e
                         ret                0x000c                                        // 0x0057037b    c20c00
_jmp_addr_0x0057037e:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0057037e    8b442410
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x00570382    8b4c240c
                         push               eax                                           // 0x00570386    50
                         push               ecx                                           // 0x00570387    51
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x00570388    8b4c2410
                         call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13// 0x0057038c    e8ff240800
                         pop                esi                                           // 0x00570391    5e
                         ret                0x000c                                        // 0x00570392    c20c00
                         nop                                                              // 0x00570395    90
                         nop                                                              // 0x00570396    90
                         nop                                                              // 0x00570397    90
                         nop                                                              // 0x00570398    90
                         nop                                                              // 0x00570399    90
                         nop                                                              // 0x0057039a    90
                         nop                                                              // 0x0057039b    90
                         nop                                                              // 0x0057039c    90
                         nop                                                              // 0x0057039d    90
                         nop                                                              // 0x0057039e    90
                         nop                                                              // 0x0057039f    90
?CalculateWhereIWillBeAfterNSeconds@GameThingWithPos@@UAEXMPAULHPoint@@@Z:
                         sub                esp, 0x0c                                     // 0x005703a0    83ec0c
                         {disp8} lea        eax, dword ptr [esp + 0x00]                   // 0x005703a3    8d442400
                         push               eax                                           // 0x005703a7    50
                         add                ecx, 0x14                                     // 0x005703a8    83c114
                         call               _jmp_addr_0x006041c0                          // 0x005703ab    e8103e0900
                         mov                edx, dword ptr [eax]                          // 0x005703b0    8b10
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x005703b2    8b4c2414
                         mov                dword ptr [ecx], edx                          // 0x005703b6    8911
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x005703b8    8b5004
                         {disp8} mov        dword ptr [ecx + 0x04], edx                   // 0x005703bb    895104
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x005703be    8b4008
                         {disp8} mov        dword ptr [ecx + 0x08], eax                   // 0x005703c1    894108
                         add                esp, 0x0c                                     // 0x005703c4    83c40c
                         ret                0x0008                                        // 0x005703c7    c20800
                         call               dword ptr [rdata_bytes + 0x6e4]               // 0x005703ca    ff15e4968a00
?GetFOVHelpMessageSet@GameThingWithPos@@UAEIXZ:
                         xor.s              eax, eax                                      // 0x005703d0    33c0
                         ret                                                              // 0x005703d2    c3
                         nop                                                              // 0x005703d3    90
                         nop                                                              // 0x005703d4    90
                         nop                                                              // 0x005703d5    90
                         nop                                                              // 0x005703d6    90
                         nop                                                              // 0x005703d7    90
                         nop                                                              // 0x005703d8    90
                         nop                                                              // 0x005703d9    90
                         nop                                                              // 0x005703da    90
                         nop                                                              // 0x005703db    90
                         nop                                                              // 0x005703dc    90
                         nop                                                              // 0x005703dd    90
                         nop                                                              // 0x005703de    90
                         nop                                                              // 0x005703df    90
?GetFOVHelpCondition@GameThingWithPos@@UAEIXZ:
                         xor.s              eax, eax                                      // 0x005703e0    33c0
                         ret                                                              // 0x005703e2    c3
                         nop                                                              // 0x005703e3    90
                         nop                                                              // 0x005703e4    90
                         nop                                                              // 0x005703e5    90
                         nop                                                              // 0x005703e6    90
                         nop                                                              // 0x005703e7    90
                         nop                                                              // 0x005703e8    90
                         nop                                                              // 0x005703e9    90
                         nop                                                              // 0x005703ea    90
                         nop                                                              // 0x005703eb    90
                         nop                                                              // 0x005703ec    90
                         nop                                                              // 0x005703ed    90
                         nop                                                              // 0x005703ee    90
                         nop                                                              // 0x005703ef    90
?Save@GameThingWithPos@@UAEXPAUGameOSFile@@@Z:    push               ebx                                           // 0x005703f0    53
                         push               esi                                           // 0x005703f1    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x005703f2    8b74240c
                         mov.s              ebx, ecx                                      // 0x005703f6    8bd9
                         push               esi                                           // 0x005703f8    56
                         call               ?Save@GameThing@@QAEIAAVGGameOSFile@@@Z       // 0x005703f9    e8e2f7ffff
                         test               eax, eax                                      // 0x005703fe    85c0
                         {disp32} je        _jmp_addr_0x0057048a                          // 0x00570400    0f8484000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x00570406    a190c9be00
                         test               eax, eax                                      // 0x0057040b    85c0
                         push               edi                                           // 0x0057040d    57
                         {disp8} je         _jmp_addr_0x0057047f                          // 0x0057040e    746f
                         push               0x0                                           // 0x00570410    6a00
                         push               0xc                                           // 0x00570412    6a0c
                         {disp8} lea        edi, dword ptr [ebx + 0x14]                   // 0x00570414    8d7b14
                         push               edi                                           // 0x00570417    57
                         mov.s              ecx, esi                                      // 0x00570418    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0057041a    e801c52400
                         cmp                eax, 0x03                                     // 0x0057041f    83f803
                         {disp8} jne        _jmp_addr_0x0057042e                          // 0x00570422    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226990], 0x00000000 // 0x00570424    c70590c9be0000000000
_jmp_addr_0x0057042e:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0057042e    8b8e14020000
                         xor.s              eax, eax                                      // 0x00570434    33c0
                         mov                al, byte ptr [edi]                            // 0x00570436    8a07
                         add                eax, 0x0c                                     // 0x00570438    83c00c
                         add.s              ecx, eax                                      // 0x0057043b    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0057043d    898e14020000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x00570443    a190c9be00
                         test               eax, eax                                      // 0x00570448    85c0
                         {disp8} je         _jmp_addr_0x0057047f                          // 0x0057044a    7433
                         push               0x0                                           // 0x0057044c    6a00
                         push               0x2                                           // 0x0057044e    6a02
                         {disp8} lea        edi, dword ptr [ebx + 0x24]                   // 0x00570450    8d7b24
                         push               edi                                           // 0x00570453    57
                         mov.s              ecx, esi                                      // 0x00570454    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x00570456    e8c5c42400
                         cmp                eax, 0x03                                     // 0x0057045b    83f803
                         {disp8} jne        _jmp_addr_0x0057046a                          // 0x0057045e    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226990], 0x00000000 // 0x00570460    c70590c9be0000000000
_jmp_addr_0x0057046a:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0057046a    8b8614020000
                         xor.s              ecx, ecx                                      // 0x00570470    33c9
                         mov                cl, byte ptr [edi]                            // 0x00570472    8a0f
                         add                ecx, 0x2                                      // 0x00570474    83c102
                         add.s              eax, ecx                                      // 0x00570477    03c1
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x00570479    898614020000
_jmp_addr_0x0057047f:    pop                edi                                           // 0x0057047f    5f
                         pop                esi                                           // 0x00570480    5e
                         mov                eax, 0x00000001                               // 0x00570481    b801000000
                         pop                ebx                                           // 0x00570486    5b
                         ret                0x0004                                        // 0x00570487    c20400
_jmp_addr_0x0057048a:    pop                esi                                           // 0x0057048a    5e
                         xor.s              eax, eax                                      // 0x0057048b    33c0
                         pop                ebx                                           // 0x0057048d    5b
                         ret                0x0004                                        // 0x0057048e    c20400
                         nop                                                              // 0x00570491    90
                         nop                                                              // 0x00570492    90
                         nop                                                              // 0x00570493    90
                         nop                                                              // 0x00570494    90
                         nop                                                              // 0x00570495    90
                         nop                                                              // 0x00570496    90
                         nop                                                              // 0x00570497    90
                         nop                                                              // 0x00570498    90
                         nop                                                              // 0x00570499    90
                         nop                                                              // 0x0057049a    90
                         nop                                                              // 0x0057049b    90
                         nop                                                              // 0x0057049c    90
                         nop                                                              // 0x0057049d    90
                         nop                                                              // 0x0057049e    90
                         nop                                                              // 0x0057049f    90
?Load@GameThingWithPos@@QAEIAAVGameOSFile@@@Z:
                         push               ebx                                           // 0x005704a0    53
                         push               edi                                           // 0x005704a1    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x005704a2    8b7c240c
                         mov.s              ebx, ecx                                      // 0x005704a6    8bd9
                         push               edi                                           // 0x005704a8    57
                         call               ?Load@GameThing@@QAEIAAVGGameOSFile@@@Z       // 0x005704a9    e842f8ffff
                         test               eax, eax                                      // 0x005704ae    85c0
                         {disp32} je        _jmp_addr_0x00570550                          // 0x005704b0    0f849a000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x005704b6    a194c9be00
                         test               eax, eax                                      // 0x005704bb    85c0
                         push               esi                                           // 0x005704bd    56
                         {disp8} lea        esi, dword ptr [ebx + 0x14]                   // 0x005704be    8d7314
                         {disp8} je         _jmp_addr_0x005704f3                          // 0x005704c1    7430
                         push               0x0                                           // 0x005704c3    6a00
                         push               0xc                                           // 0x005704c5    6a0c
                         push               esi                                           // 0x005704c7    56
                         mov.s              ecx, edi                                      // 0x005704c8    8bcf
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x005704ca    e811c42400
                         cmp                eax, 0x03                                     // 0x005704cf    83f803
                         {disp8} jne        _jmp_addr_0x005704de                          // 0x005704d2    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226994], 0x00000000 // 0x005704d4    c70594c9be0000000000
_jmp_addr_0x005704de:    {disp32} mov       ecx, dword ptr [edi + 0x00000214]             // 0x005704de    8b8f14020000
                         xor.s              eax, eax                                      // 0x005704e4    33c0
                         mov                al, byte ptr [esi]                            // 0x005704e6    8a06
                         add                eax, 0x0c                                     // 0x005704e8    83c00c
                         add.s              ecx, eax                                      // 0x005704eb    03c8
                         {disp32} mov       dword ptr [edi + 0x00000214], ecx             // 0x005704ed    898f14020000
_jmp_addr_0x005704f3:    {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x005704f3    a194c9be00
                         test               eax, eax                                      // 0x005704f8    85c0
                         {disp8} lea        esi, dword ptr [ebx + 0x24]                   // 0x005704fa    8d7324
                         {disp8} je         _jmp_addr_0x0057052f                          // 0x005704fd    7430
                         push               0x0                                           // 0x005704ff    6a00
                         push               0x2                                           // 0x00570501    6a02
                         push               esi                                           // 0x00570503    56
                         mov.s              ecx, edi                                      // 0x00570504    8bcf
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x00570506    e8d5c32400
                         cmp                eax, 0x03                                     // 0x0057050b    83f803
                         {disp8} jne        _jmp_addr_0x0057051a                          // 0x0057050e    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226994], 0x00000000 // 0x00570510    c70594c9be0000000000
_jmp_addr_0x0057051a:    {disp32} mov       eax, dword ptr [edi + 0x00000214]             // 0x0057051a    8b8714020000
                         xor.s              ecx, ecx                                      // 0x00570520    33c9
                         mov                cl, byte ptr [esi]                            // 0x00570522    8a0e
                         add                ecx, 0x2                                      // 0x00570524    83c102
                         add.s              eax, ecx                                      // 0x00570527    03c1
                         {disp32} mov       dword ptr [edi + 0x00000214], eax             // 0x00570529    898714020000
_jmp_addr_0x0057052f:    and                word ptr [esi], -0x0101                       // 0x0057052f    668126fffe
                         xor.s              eax, eax                                      // 0x00570534    33c0
                         mov                ax, word ptr [esi]                            // 0x00570536    668b06
                         test               al, 0x01                                      // 0x00570539    a801
                         {disp8} je         _jmp_addr_0x00570545                          // 0x0057053b    7408
                         and                eax, 0x0000fffe                               // 0x0057053d    25feff0000
                         mov                word ptr [esi], ax                            // 0x00570542    668906
_jmp_addr_0x00570545:    pop                esi                                           // 0x00570545    5e
                         pop                edi                                           // 0x00570546    5f
                         mov                eax, 0x00000001                               // 0x00570547    b801000000
                         pop                ebx                                           // 0x0057054c    5b
                         ret                0x0004                                        // 0x0057054d    c20400
_jmp_addr_0x00570550:    pop                edi                                           // 0x00570550    5f
                         xor.s              eax, eax                                      // 0x00570551    33c0
                         pop                ebx                                           // 0x00570553    5b
                         ret                0x0004                                        // 0x00570554    c20400
                         nop                                                              // 0x00570557    90
                         nop                                                              // 0x00570558    90
                         nop                                                              // 0x00570559    90
                         nop                                                              // 0x0057055a    90
                         nop                                                              // 0x0057055b    90
                         nop                                                              // 0x0057055c    90
                         nop                                                              // 0x0057055d    90
                         nop                                                              // 0x0057055e    90
                         nop                                                              // 0x0057055f    90
?GetSaveType@GameThingWithPos@@QAEKXZ:  {disp32} jmp       @GetSaveType__9GameThingFv@4                  // 0x00570560    e92bf8ffff
                         nop                                                              // 0x00570565    90
                         nop                                                              // 0x00570566    90
                         nop                                                              // 0x00570567    90
                         nop                                                              // 0x00570568    90
                         nop                                                              // 0x00570569    90
                         nop                                                              // 0x0057056a    90
                         nop                                                              // 0x0057056b    90
                         nop                                                              // 0x0057056c    90
                         nop                                                              // 0x0057056d    90
                         nop                                                              // 0x0057056e    90
                         nop                                                              // 0x0057056f    90
?GetSpellCastPos@GameThingWithPos@@UAEXPAUMapCoords@@@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00570570    8b442404
                         add                ecx, 0x14                                     // 0x00570574    83c114
                         push               esi                                           // 0x00570577    56
                         mov                esi, dword ptr [ecx]                          // 0x00570578    8b31
                         mov.s              edx, eax                                      // 0x0057057a    8bd0
                         mov                dword ptr [edx], esi                          // 0x0057057c    8932
                         {disp8} mov        esi, dword ptr [ecx + 0x04]                   // 0x0057057e    8b7104
                         {disp8} mov        dword ptr [edx + 0x04], esi                   // 0x00570581    897204
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x00570584    8b4908
                         {disp8} mov        dword ptr [edx + 0x08], ecx                   // 0x00570587    894a08
                         pop                esi                                           // 0x0057058a    5e
                         ret                0x0004                                        // 0x0057058b    c20400
                         nop                                                              // 0x0057058e    90
                         nop                                                              // 0x0057058f    90
?GetOverwritePickUpToolTip@GameThingWithPos@@UAEIXZ:
                         xor.s              eax, eax                                      // 0x00570590    33c0
                         ret                                                              // 0x00570592    c3
                         nop                                                              // 0x00570593    90
                         nop                                                              // 0x00570594    90
                         nop                                                              // 0x00570595    90
                         nop                                                              // 0x00570596    90
                         nop                                                              // 0x00570597    90
                         nop                                                              // 0x00570598    90
                         nop                                                              // 0x00570599    90
                         nop                                                              // 0x0057059a    90
                         nop                                                              // 0x0057059b    90
                         nop                                                              // 0x0057059c    90
                         nop                                                              // 0x0057059d    90
                         nop                                                              // 0x0057059e    90
                         nop                                                              // 0x0057059f    90
?GetOverwriteInteractableToolTip@GameThingWithPos@@UAEIXZ:
                         xor.s              eax, eax                                      // 0x005705a0    33c0
                         ret                                                              // 0x005705a2    c3
                         nop                                                              // 0x005705a3    90
                         nop                                                              // 0x005705a4    90
                         nop                                                              // 0x005705a5    90
                         nop                                                              // 0x005705a6    90
                         nop                                                              // 0x005705a7    90
                         nop                                                              // 0x005705a8    90
                         nop                                                              // 0x005705a9    90
                         nop                                                              // 0x005705aa    90
                         nop                                                              // 0x005705ab    90
                         nop                                                              // 0x005705ac    90
                         nop                                                              // 0x005705ad    90
                         nop                                                              // 0x005705ae    90
                         nop                                                              // 0x005705af    90
?GetOverwriteDropToolTip@GameThingWithPos@@UAEIXZ:
                         xor.s              eax, eax                                      // 0x005705b0    33c0
                         ret                                                              // 0x005705b2    c3
                         nop                                                              // 0x005705b3    90
                         nop                                                              // 0x005705b4    90
                         nop                                                              // 0x005705b5    90
                         nop                                                              // 0x005705b6    90
                         nop                                                              // 0x005705b7    90
                         nop                                                              // 0x005705b8    90
                         nop                                                              // 0x005705b9    90
                         nop                                                              // 0x005705ba    90
                         nop                                                              // 0x005705bb    90
                         nop                                                              // 0x005705bc    90
                         nop                                                              // 0x005705bd    90
                         nop                                                              // 0x005705be    90
                         nop                                                              // 0x005705bf    90
?GetOverwriteTapToolTip@GameThingWithPos@@UAEIXZ:
                         xor.s              eax, eax                                      // 0x005705c0    33c0
                         ret                                                              // 0x005705c2    c3
                         nop                                                              // 0x005705c3    90
                         nop                                                              // 0x005705c4    90
                         nop                                                              // 0x005705c5    90
                         nop                                                              // 0x005705c6    90
                         nop                                                              // 0x005705c7    90
                         nop                                                              // 0x005705c8    90
                         nop                                                              // 0x005705c9    90
                         nop                                                              // 0x005705ca    90
                         nop                                                              // 0x005705cb    90
                         nop                                                              // 0x005705cc    90
                         nop                                                              // 0x005705cd    90
                         nop                                                              // 0x005705ce    90
                         nop                                                              // 0x005705cf    90
?SetToZero@GameThingWithPos@@QAEXXZ:
                                       xor.s              eax, eax                                      // 0x005705d0    33c0
                         {disp8} mov        word ptr [ecx + 0x24], ax                     // 0x005705d2    66894124
                         {disp8} mov        dword ptr [ecx + 0x20], eax                   // 0x005705d6    894120
                         {disp8} mov        dword ptr [ecx + 0x14], eax                   // 0x005705d9    894114
                         {disp8} mov        dword ptr [ecx + 0x18], eax                   // 0x005705dc    894118
                         {disp8} mov        dword ptr [ecx + 0x1c], eax                   // 0x005705df    89411c
                         ret                                                              // 0x005705e2    c3
                         nop                                                              // 0x005705e3    90
                         nop                                                              // 0x005705e4    90
                         nop                                                              // 0x005705e5    90
                         nop                                                              // 0x005705e6    90
                         nop                                                              // 0x005705e7    90
                         nop                                                              // 0x005705e8    90
                         nop                                                              // 0x005705e9    90
                         nop                                                              // 0x005705ea    90
                         nop                                                              // 0x005705eb    90
                         nop                                                              // 0x005705ec    90
                         nop                                                              // 0x005705ed    90
                         nop                                                              // 0x005705ee    90
                         nop                                                              // 0x005705ef    90
?JustAddResource@GameThing@@QAEIW4RESOURCE_TYPE@@K_N@Z:
                         xor.s              eax, eax                                      // 0x005705f0    33c0
                         ret                0x000c                                        // 0x005705f2    c20c00
                         nop                                                              // 0x005705f5    90
                         nop                                                              // 0x005705f6    90
                         nop                                                              // 0x005705f7    90
                         nop                                                              // 0x005705f8    90
                         nop                                                              // 0x005705f9    90
                         nop                                                              // 0x005705fa    90
                         nop                                                              // 0x005705fb    90
                         nop                                                              // 0x005705fc    90
                         nop                                                              // 0x005705fd    90
                         nop                                                              // 0x005705fe    90
                         nop                                                              // 0x005705ff    90
?JustRemoveResource@GameThing@@QAEIW4RESOURCE_TYPE@@KPA_N@Z:
                         xor.s              eax, eax                                      // 0x00570600    33c0
                         ret                0x000c                                        // 0x00570602    c20c00
                         nop                                                              // 0x00570605    90
                         nop                                                              // 0x00570606    90
                         nop                                                              // 0x00570607    90
                         nop                                                              // 0x00570608    90
                         nop                                                              // 0x00570609    90
                         nop                                                              // 0x0057060a    90
                         nop                                                              // 0x0057060b    90
                         nop                                                              // 0x0057060c    90
                         nop                                                              // 0x0057060d    90
                         nop                                                              // 0x0057060e    90
                         nop                                                              // 0x0057060f    90
?JustGetResource@GameThing@@QAEIW4RESOURCE_TYPE@@KPA_N@Z:
                         xor.s              eax, eax                                      // 0x00570610    33c0
                         ret                0x000c                                        // 0x00570612    c20c00
                         nop                                                              // 0x00570615    90
                         nop                                                              // 0x00570616    90
                         nop                                                              // 0x00570617    90
                         nop                                                              // 0x00570618    90
                         nop                                                              // 0x00570619    90
                         nop                                                              // 0x0057061a    90
                         nop                                                              // 0x0057061b    90
                         nop                                                              // 0x0057061c    90
                         nop                                                              // 0x0057061d    90
                         nop                                                              // 0x0057061e    90
                         nop                                                              // 0x0057061f    90
_globl_ct_0x00570620:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x00570620    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x00570626    b001
                         test               al, cl                                        // 0x00570628    84c8
                         {disp8} jne        _jmp_addr_0x00570634                          // 0x0057062a    7508
                         or.s               cl, al                                        // 0x0057062c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x0057062e    880d34c9fa00
_jmp_addr_0x00570634:    {disp32} jmp       _jmp_addr_0x00570640                          // 0x00570634    e907000000
                         nop                                                              // 0x00570639    90
                         nop                                                              // 0x0057063a    90
                         nop                                                              // 0x0057063b    90
                         nop                                                              // 0x0057063c    90
                         nop                                                              // 0x0057063d    90
                         nop                                                              // 0x0057063e    90
                         nop                                                              // 0x0057063f    90
_jmp_addr_0x00570640:    push               0x00407870                                    // 0x00570640    6870784000
                         call               _atexit                                       // 0x00570645    e847512500
                         pop                ecx                                           // 0x0057064a    59
                         ret                                                              // 0x0057064b    c3
                         nop                                                              // 0x0057064c    90
                         nop                                                              // 0x0057064d    90
                         nop                                                              // 0x0057064e    90
                         nop                                                              // 0x0057064f    90
_globl_ct_0x00570650:    {disp32} jmp       _jmp_addr_0x00570660                          // 0x00570650    e90b000000
                         nop                                                              // 0x00570655    90
                         nop                                                              // 0x00570656    90
                         nop                                                              // 0x00570657    90
                         nop                                                              // 0x00570658    90
                         nop                                                              // 0x00570659    90
                         nop                                                              // 0x0057065a    90
                         nop                                                              // 0x0057065b    90
                         nop                                                              // 0x0057065c    90
                         nop                                                              // 0x0057065d    90
                         nop                                                              // 0x0057065e    90
                         nop                                                              // 0x0057065f    90
_jmp_addr_0x00570660:    {disp32} mov       dword ptr [data_bytes + 0x340430], 0xffffffff // 0x00570660    c7053064d000ffffffff
                         ret                                                              // 0x0057066a    c3
                         call               ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                          // 0x0057066b    e88911e9ff
_globl_ct_0x00570670:    {disp32} jmp       _jmp_addr_0x00570680                          // 0x00570670    e90b000000
                         nop                                                              // 0x00570675    90
                         nop                                                              // 0x00570676    90
                         nop                                                              // 0x00570677    90
                         nop                                                              // 0x00570678    90
                         nop                                                              // 0x00570679    90
                         nop                                                              // 0x0057067a    90
                         nop                                                              // 0x0057067b    90
                         nop                                                              // 0x0057067c    90
                         nop                                                              // 0x0057067d    90
                         nop                                                              // 0x0057067e    90
                         nop                                                              // 0x0057067f    90
_jmp_addr_0x00570680:    {disp32} fld       dword ptr [rdata_bytes + 0x57050]             // 0x00570680    d90550009000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x5704c]             // 0x00570686    d80d4c009000
                         {disp32} fstp      dword ptr [data_bytes + 0x34031c]             // 0x0057068c    d91d1c63d000
                         ret                                                              // 0x00570692    c3
                         nop                                                              // 0x00570693    90
                         nop                                                              // 0x00570694    90
                         nop                                                              // 0x00570695    90
                         nop                                                              // 0x00570696    90
                         nop                                                              // 0x00570697    90
                         nop                                                              // 0x00570698    90
                         nop                                                              // 0x00570699    90
                         nop                                                              // 0x0057069a    90
                         nop                                                              // 0x0057069b    90
                         nop                                                              // 0x0057069c    90
                         nop                                                              // 0x0057069d    90
                         nop                                                              // 0x0057069e    90
                         nop                                                              // 0x0057069f    90
                         push               0x14                                          // 0x005706a0    6a14
                         call               _jmp_addr_0x00411fc0                          // 0x005706a2    e81919eaff
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x005706a7    8b4c240c
                         add                esp, 0x04                                     // 0x005706ab    83c404
                         test               ecx, ecx                                      // 0x005706ae    85c9
                         {disp8} jl         _jmp_addr_0x005706c9                          // 0x005706b0    7c17
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x005706b2    8b542404
                         cmp                ecx, dword ptr [edx + 0x00000250]             // 0x005706b6    3b8a50020000
                         {disp8} jge        _jmp_addr_0x005706c9                          // 0x005706bc    7d0b
                         {disp32} mov       edx, dword ptr [edx + 0x00000264]             // 0x005706be    8b9264020000
                         mov                ecx, dword ptr [edx + ecx * 0x4]              // 0x005706c4    8b0c8a
                         {disp8} jmp        _jmp_addr_0x005706cb                          // 0x005706c7    eb02
_jmp_addr_0x005706c9:    xor.s              ecx, ecx                                      // 0x005706c9    33c9
_jmp_addr_0x005706cb:    {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x005706cb    8b542418
                         mov                cl, byte ptr [ecx]                            // 0x005706cf    8a09
                         add                edx, -0x02                                    // 0x005706d1    83c2fe
                         push               edx                                           // 0x005706d4    52
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x005706d5    8b542414
                         add                edx, 0x02                                     // 0x005706d9    83c202
                         neg                cl                                            // 0x005706dc    f6d9
                         push               edx                                           // 0x005706de    52
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x005706df    8b542424
                         push               0x0                                           // 0x005706e3    6a00
                         sbb.s              ecx, ecx                                      // 0x005706e5    1bc9
                         add                ecx, 0x6                                      // 0x005706e7    83c106
                         push               ecx                                           // 0x005706ea    51
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x005706eb    8b4c2424
                         push               eax                                           // 0x005706ef    50
                         push               0x0                                           // 0x005706f0    6a00
                         push               0x1                                           // 0x005706f2    6a01
                         sub.s              ecx, eax                                      // 0x005706f4    2bc8
                         push               edx                                           // 0x005706f6    52
                         sub                ecx, 0x02                                     // 0x005706f7    83e902
                         push               ecx                                           // 0x005706fa    51
                         call               ?DrawBigButton@SetupThing@@SAXHH_N0HW4BBSTYLE@@0HH@Z // 0x005706fb    e8501aeaff
                         add                esp, 0x24                                     // 0x00570700    83c424
                         mov                eax, 0x00000001                               // 0x00570703    b801000000
                         ret                0x0020                                        // 0x00570708    c22000
                         call               ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                          // 0x0057070b    e8e910e9ff
                         push               ebx                                           // 0x00570710    53
                         push               esi                                           // 0x00570711    56
                         push               edi                                           // 0x00570712    57
                         push               0x14                                          // 0x00570713    6a14
                         call               _jmp_addr_0x00411fc0                          // 0x00570715    e8a618eaff
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x0057071a    8b4c2418
                         add                esp, 0x04                                     // 0x0057071e    83c404
                         test               ecx, ecx                                      // 0x00570721    85c9
                         {disp8} jl         _jmp_addr_0x0057073c                          // 0x00570723    7c17
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x00570725    8b542410
                         cmp                ecx, dword ptr [edx + 0x00000250]             // 0x00570729    3b8a50020000
                         {disp8} jge        _jmp_addr_0x0057073c                          // 0x0057072f    7d0b
                         {disp32} mov       edx, dword ptr [edx + 0x00000264]             // 0x00570731    8b9264020000
                         mov                ebx, dword ptr [edx + ecx * 0x4]              // 0x00570737    8b1c8a
                         {disp8} jmp        _jmp_addr_0x0057073e                          // 0x0057073a    eb02
_jmp_addr_0x0057073c:    xor.s              ebx, ebx                                      // 0x0057073c    33db
_jmp_addr_0x0057073e:    {disp8} mov        esi, dword ptr [esp + 0x28]                   // 0x0057073e    8b742428
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x00570742    8b54241c
                         cmp.s              esi, edx                                      // 0x00570746    3bf2
                         {disp8} mov        edi, dword ptr [esp + 0x24]                   // 0x00570748    8b7c2424
                         {disp8} jle        _jmp_addr_0x00570756                          // 0x0057074c    7e08
                         cmp.s              esi, edi                                      // 0x0057074e    3bf7
                         {disp8} jl         _jmp_addr_0x00570758                          // 0x00570750    7c06
                         mov.s              esi, edi                                      // 0x00570752    8bf7
                         {disp8} jmp        _jmp_addr_0x00570758                          // 0x00570754    eb02
_jmp_addr_0x00570756:    mov.s              esi, edx                                      // 0x00570756    8bf2
_jmp_addr_0x00570758:    {disp8} mov        ecx, dword ptr [esp + 0x2c]                   // 0x00570758    8b4c242c
                         cmp.s              ecx, edx                                      // 0x0057075c    3bca
                         {disp8} jle        _jmp_addr_0x00570768                          // 0x0057075e    7e08
                         cmp.s              ecx, edi                                      // 0x00570760    3bcf
                         {disp8} jl         _jmp_addr_0x0057076a                          // 0x00570762    7c06
                         mov.s              ecx, edi                                      // 0x00570764    8bcf
                         {disp8} jmp        _jmp_addr_0x0057076a                          // 0x00570766    eb02
_jmp_addr_0x00570768:    mov.s              ecx, edx                                      // 0x00570768    8bca
_jmp_addr_0x0057076a:    {disp8} lea        edx, dword ptr [ecx + -0x04]                  // 0x0057076a    8d51fc
                         cmp.s              edx, esi                                      // 0x0057076d    3bd6
                         {disp8} jle        _jmp_addr_0x005707dc                          // 0x0057076f    7e6b
                         {disp32} mov       dl, byte ptr [ebx + 0x0000008c]               // 0x00570771    8a938c000000
                         test               dl, dl                                        // 0x00570777    84d2
                         {disp8} je         _jmp_addr_0x005707dc                          // 0x00570779    7461
                         {disp32} mov       edi, dword ptr [data_bytes + 0x516368]        // 0x0057077b    8b3d68c3ed00
                         test               edi, edi                                      // 0x00570781    85ff
                         {disp8} je         _jmp_addr_0x005707dc                          // 0x00570783    7457
                         push               0x42c80000                                    // 0x00570785    680000c842
                         push               0x0                                           // 0x0057078a    6a00
                         push               0x0000a000                                    // 0x0057078c    6800a00000
                         push               0xffff6000                                    // 0x00570791    680060ffff
                         push               0x1                                           // 0x00570796    6a01
                         mov                dl, -0x01                                     // 0x00570798    b2ff
                         {disp8} mov        byte ptr [esp + 0x28], dl                     // 0x0057079a    88542428
                         {disp8} mov        byte ptr [esp + 0x29], dl                     // 0x0057079e    88542429
                         {disp8} mov        byte ptr [esp + 0x2a], dl                     // 0x005707a2    8854242a
                         {disp8} mov        byte ptr [esp + 0x2b], dl                     // 0x005707a6    8854242b
                         {disp8} lea        edx, dword ptr [esp + 0x28]                   // 0x005707aa    8d542428
                         push               edx                                           // 0x005707ae    52
                         push               edi                                           // 0x005707af    57
                         push               0x3f000000                                    // 0x005707b0    680000003f
                         push               0x3f800000                                    // 0x005707b5    680000803f
                         push               0x3ec00000                                    // 0x005707ba    680000c03e
                         push               0x3f600000                                    // 0x005707bf    680000603f
                         push               ecx                                           // 0x005707c4    51
                         {disp8} mov        ecx, dword ptr [esp + 0x50]                   // 0x005707c5    8b4c2450
                         {disp8} lea        edx, dword ptr [ecx + -0x02]                  // 0x005707c9    8d51fe
                         push               edx                                           // 0x005707cc    52
                         sub.s              ecx, eax                                      // 0x005707cd    2bc8
                         sub                ecx, 0x02                                     // 0x005707cf    83e902
                         push               esi                                           // 0x005707d2    56
                         push               ecx                                           // 0x005707d3    51
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x005707d4    e8a721eaff
                         add                esp, 0x3c                                     // 0x005707d9    83c43c
_jmp_addr_0x005707dc:    pop                edi                                           // 0x005707dc    5f
                         pop                esi                                           // 0x005707dd    5e
                         mov                eax, 0x00000001                               // 0x005707de    b801000000
                         pop                ebx                                           // 0x005707e3    5b
                         ret                0x0020                                        // 0x005707e4    c22000
                         nop                                                              // 0x005707e7    90
                         nop                                                              // 0x005707e8    90
                         nop                                                              // 0x005707e9    90
                         nop                                                              // 0x005707ea    90
                         nop                                                              // 0x005707eb    90
                         nop                                                              // 0x005707ec    90
                         nop                                                              // 0x005707ed    90
                         nop                                                              // 0x005707ee    90
                         nop                                                              // 0x005707ef    90
_jmp_addr_0x005707f0:    sub                esp, 0x00000404                               // 0x005707f0    81ec04040000
                         push               esi                                           // 0x005707f6    56
                         mov.s              esi, ecx                                      // 0x005707f7    8bf1
                         call               dword ptr [esi + 0x4c]                        // 0x005707f9    ff564c
                         cmp                eax, 0x01                                     // 0x005707fc    83f801
                         {disp8} je         _jmp_addr_0x0057080b                          // 0x005707ff    740a
                         xor.s              eax, eax                                      // 0x00570801    33c0
                         pop                esi                                           // 0x00570803    5e
                         add                esp, 0x00000404                               // 0x00570804    81c404040000
                         ret                                                              // 0x0057080a    c3
_jmp_addr_0x0057080b:    push               edi                                           // 0x0057080b    57
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x0057080c    8d44240c
                         push               0x000003ff                                    // 0x00570810    68ff030000
                         push               eax                                           // 0x00570815    50
                         call               dword ptr [esi + 0x50]                        // 0x00570816    ff5650
                         xor.s              edx, edx                                      // 0x00570819    33d2
                         or                 ecx, 0xffffffff                               // 0x0057081b    83c9ff
                         xor.s              eax, eax                                      // 0x0057081e    33c0
                         add                esp, 0x08                                     // 0x00570820    83c408
                         xor.s              esi, esi                                      // 0x00570823    33f6
                         {disp8} lea        edi, dword ptr [esp + 0x0c]                   // 0x00570825    8d7c240c
                         {disp32} mov       byte ptr [esp + 0x0000040b], dl               // 0x00570829    8894240b040000
                         repne scasb                                                      // 0x00570830    f2ae
                         not                ecx                                           // 0x00570832    f7d1
                         dec                ecx                                           // 0x00570834    49
                         {disp8} mov        byte ptr [esp + 0x08], 0x01                   // 0x00570835    c644240801
                         {disp8} je         _jmp_addr_0x0057087b                          // 0x0057083a    743f
_jmp_addr_0x0057083c:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0057083c    8b442408
                         movsx              ecx, byte ptr [esp + esi * 0x1 + 0x0c]        // 0x00570840    0fbe4c340c
                         and                eax, 0x000000ff                               // 0x00570845    25ff000000
                         or                 eax, 0x10                                     // 0x0057084a    83c810
                         imul               ecx, eax                                      // 0x0057084d    0fafc8
                         mov.s              eax, edx                                      // 0x00570850    8bc2
                         shr                eax, 0x1d                                     // 0x00570852    c1e81d
                         shl                edx, 3                                        // 0x00570855    c1e203
                         or.s               eax, edx                                      // 0x00570858    0bc2
                         xor.s              ecx, eax                                      // 0x0057085a    33c8
                         {disp8} mov        al, byte ptr [esp + 0x08]                     // 0x0057085c    8a442408
                         inc                al                                            // 0x00570860    fec0
                         mov.s              edx, ecx                                      // 0x00570862    8bd1
                         or                 ecx, 0xffffffff                               // 0x00570864    83c9ff
                         {disp8} mov        byte ptr [esp + 0x08], al                     // 0x00570867    88442408
                         xor.s              eax, eax                                      // 0x0057086b    33c0
                         inc                esi                                           // 0x0057086d    46
                         {disp8} lea        edi, dword ptr [esp + 0x0c]                   // 0x0057086e    8d7c240c
                         repne scasb                                                      // 0x00570872    f2ae
                         not                ecx                                           // 0x00570874    f7d1
                         dec                ecx                                           // 0x00570876    49
                         cmp.s              esi, ecx                                      // 0x00570877    3bf1
                         .byte              0x72, 0xc1// {disp8} jb _jmp_addr_0x0057083c  // 0x00570879    72c1
_jmp_addr_0x0057087b:    mov.s              eax, edx                                      // 0x0057087b    8bc2
                         pop                edi                                           // 0x0057087d    5f
                         or                 eax, 0x1                                      // 0x0057087e    83c801
                         pop                esi                                           // 0x00570881    5e
                         add                esp, 0x00000404                               // 0x00570882    81c404040000
                         ret                                                              // 0x00570888    c3
                         nop                                                              // 0x00570889    90
                         nop                                                              // 0x0057088a    90
                         nop                                                              // 0x0057088b    90
                         nop                                                              // 0x0057088c    90
                         nop                                                              // 0x0057088d    90
                         nop                                                              // 0x0057088e    90
                         nop                                                              // 0x0057088f    90
_jmp_addr_0x00570890:    push               esi                                           // 0x00570890    56
                         mov.s              esi, ecx                                      // 0x00570891    8bf1
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00570893    8b0d5c19d000
                         call               ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x00570899    e8e226feff
                         test               eax, eax                                      // 0x0057089e    85c0
                         {disp8} je         _jmp_addr_0x005708a6                          // 0x005708a0    7404
                         xor.s              eax, eax                                      // 0x005708a2    33c0
                         pop                esi                                           // 0x005708a4    5e
                         ret                                                              // 0x005708a5    c3
_jmp_addr_0x005708a6:    {disp8} mov        eax, dword ptr [esi + 0x2c]                   // 0x005708a6    8b462c
                         test               eax, eax                                      // 0x005708a9    85c0
                         {disp8} jne        _jmp_addr_0x005708b1                          // 0x005708ab    7504
                         xor.s              eax, eax                                      // 0x005708ad    33c0
                         pop                esi                                           // 0x005708af    5e
                         ret                                                              // 0x005708b0    c3
_jmp_addr_0x005708b1:    {disp32} mov       eax, dword ptr [data_bytes + 0x340438]        // 0x005708b1    a13864d000
                         test               eax, eax                                      // 0x005708b6    85c0
                         {disp8} jne        _jmp_addr_0x005708be                          // 0x005708b8    7504
                         xor.s              eax, eax                                      // 0x005708ba    33c0
                         pop                esi                                           // 0x005708bc    5e
                         ret                                                              // 0x005708bd    c3
_jmp_addr_0x005708be:    call               dword ptr [esi + 0x48]                        // 0x005708be    ff5648
                         neg                eax                                           // 0x005708c1    f7d8
                         sbb.s              eax, eax                                      // 0x005708c3    1bc0
                         neg                eax                                           // 0x005708c5    f7d8
                         pop                esi                                           // 0x005708c7    5e
                         ret                                                              // 0x005708c8    c3
                         nop                                                              // 0x005708c9    90
                         nop                                                              // 0x005708ca    90
                         nop                                                              // 0x005708cb    90
                         nop                                                              // 0x005708cc    90
                         nop                                                              // 0x005708cd    90
                         nop                                                              // 0x005708ce    90
                         nop                                                              // 0x005708cf    90
_jmp_addr_0x005708d0:    push               ebx                                           // 0x005708d0    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]                   // 0x005708d1    8b5c2408
                         push               ebp                                           // 0x005708d5    55
                         push               esi                                           // 0x005708d6    56
                         push               edi                                           // 0x005708d7    57
                         mov.s              edi, ecx                                      // 0x005708d8    8bf9
                         {disp8} mov        eax, dword ptr [edi + 0x10]                   // 0x005708da    8b4710
                         xor.s              ecx, ecx                                      // 0x005708dd    33c9
                         {disp32} mov       cl, byte ptr [eax + 0x00000229]               // 0x005708df    8a8829020000
                         mov                esi, 0x00010429                               // 0x005708e5    be29040100
                         mov.s              ebp, ecx                                      // 0x005708ea    8be9
_jmp_addr_0x005708ec:    {disp8} mov        ecx, dword ptr [edi + 0x04]                   // 0x005708ec    8b4f04
                         push               esi                                           // 0x005708ef    56
                         call               @FindControl__8SetupBoxFi@12                  // 0x005708f0    e86b78e9ff
                         test               eax, eax                                      // 0x005708f5    85c0
                         {disp8} je         _jmp_addr_0x00570906                          // 0x005708f7    740d
                         mov                edx, dword ptr [eax]                          // 0x005708f9    8b10
                         test               ebx, ebx                                      // 0x005708fb    85db
                         setne              cl                                            // 0x005708fd    0f95c1
                         push               ecx                                           // 0x00570900    51
                         mov.s              ecx, eax                                      // 0x00570901    8bc8
                         call               dword ptr [edx + 8]                           // 0x00570903    ff5208
_jmp_addr_0x00570906:    inc                esi                                           // 0x00570906    46
                         cmp                esi, 0x0001043c                               // 0x00570907    81fe3c040100
                         {disp8} jl         _jmp_addr_0x005708ec                          // 0x0057090d    7cdd
                         test               ebx, ebx                                      // 0x0057090f    85db
                         {disp8} jne        _jmp_addr_0x00570921                          // 0x00570911    750e
                         {disp8} mov        ecx, dword ptr [edi + 0x10]                   // 0x00570913    8b4f10
                         mov                edx, dword ptr [ecx]                          // 0x00570916    8b11
                         test               ebp, ebp                                      // 0x00570918    85ed
                         setne              al                                            // 0x0057091a    0f95c0
                         push               eax                                           // 0x0057091d    50
                         call               dword ptr [edx + 8]                           // 0x0057091e    ff5208
_jmp_addr_0x00570921:    pop                edi                                           // 0x00570921    5f
                         pop                esi                                           // 0x00570922    5e
                         pop                ebp                                           // 0x00570923    5d
                         pop                ebx                                           // 0x00570924    5b
                         ret                0x0004                                        // 0x00570925    c20400
                         nop                                                              // 0x00570928    90
                         nop                                                              // 0x00570929    90
                         nop                                                              // 0x0057092a    90
                         nop                                                              // 0x0057092b    90
                         nop                                                              // 0x0057092c    90
                         nop                                                              // 0x0057092d    90
                         nop                                                              // 0x0057092e    90
                         nop                                                              // 0x0057092f    90
_jmp_addr_0x00570930:    mov                eax, 0x00001100                               // 0x00570930    b800110000
                         call               __chkstk                                      // 0x00570935    e876652500
                         push               ebx                                           // 0x0057093a    53
                         mov.s              ebx, ecx                                      // 0x0057093b    8bd9
                         {disp8} mov        eax, dword ptr [ebx + 0x2c]                   // 0x0057093d    8b432c
                         test               eax, eax                                      // 0x00570940    85c0
                         push               esi                                           // 0x00570942    56
                         {disp32} je        _jmp_addr_0x00570ad7                          // 0x00570943    0f848e010000
                         call               dword ptr [ebx + 0x48]                        // 0x00570949    ff5348
                         test               eax, eax                                      // 0x0057094c    85c0
                         {disp32} je        _jmp_addr_0x00570ad7                          // 0x0057094e    0f8483010000
                         call               dword ptr [__imp__GetTickCount@4]             // 0x00570954    ff15c4918a00
                         {disp32} mov       dword ptr [ebx + 0x000000a4], eax             // 0x0057095a    8983a4000000
                         {disp8} mov        eax, dword ptr [ebx + 0x2c]                   // 0x00570960    8b432c
                         test               eax, eax                                      // 0x00570963    85c0
                         {disp32} je        _jmp_addr_0x00570ad7                          // 0x00570965    0f846c010000
                         test               byte ptr [ebx + 0x00000088], 0x01             // 0x0057096b    f6838800000001
                         {disp32} je        _jmp_addr_0x00570ad7                          // 0x00570972    0f845f010000
                         call               dword ptr [ebx + 0x38]                        // 0x00570978    ff5338
                         {disp8} mov        esi, dword ptr [ebx + 0x10]                   // 0x0057097b    8b7310
                         {disp32} mov       dword ptr [ebx + 0x0000008c], eax             // 0x0057097e    89838c000000
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]             // 0x00570984    8b8650020000
                         test               eax, eax                                      // 0x0057098a    85c0
                         {disp8} jle        _jmp_addr_0x005709a1                          // 0x0057098c    7e13
_jmp_addr_0x0057098e:    dec                eax                                           // 0x0057098e    48
                         push               eax                                           // 0x0057098f    50
                         mov.s              ecx, esi                                      // 0x00570990    8bce
                         call               @DeleteString__9SetupListFi@12                // 0x00570992    e8c9a3e9ff
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]             // 0x00570997    8b8650020000
                         test               eax, eax                                      // 0x0057099d    85c0
                         {disp8} jg         _jmp_addr_0x0057098e                          // 0x0057099f    7fed
_jmp_addr_0x005709a1:    {disp32} mov       eax, dword ptr [ebx + 0x0000008c]             // 0x005709a1    8b838c000000
                         push               ebp                                           // 0x005709a7    55
                         xor.s              ebp, ebp                                      // 0x005709a8    33ed
                         test               eax, eax                                      // 0x005709aa    85c0
                         {disp32} jle       _jmp_addr_0x00570a6e                          // 0x005709ac    0f8ebc000000
                         push               edi                                           // 0x005709b2    57
_jmp_addr_0x005709b3:    push               0x00000400                                    // 0x005709b3    6800040000
                         {disp32} lea       eax, dword ptr [esp + 0x00000514]             // 0x005709b8    8d842414050000
                         push               eax                                           // 0x005709bf    50
                         push               ebp                                           // 0x005709c0    55
                         call               dword ptr [ebx + 0x3c]                        // 0x005709c1    ff533c
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x005709c4    8d4c241c
                         push               ecx                                           // 0x005709c8    51
                         {disp32} lea       edx, dword ptr [esp + 0x00000120]             // 0x005709c9    8d942420010000
                         push               edx                                           // 0x005709d0    52
                         {disp32} lea       eax, dword ptr [esp + 0x00000924]             // 0x005709d1    8d842424090000
                         push               eax                                           // 0x005709d8    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00000d28]             // 0x005709d9    8d8c24280d0000
                         push               ecx                                           // 0x005709e0    51
                         {disp32} lea       edx, dword ptr [esp + 0x0000052c]             // 0x005709e1    8d94242c050000
                         push               edx                                           // 0x005709e8    52
                         call               __splitpath                                   // 0x005709e9    e87a7c2500
                         or                 ecx, 0xffffffff                               // 0x005709ee    83c9ff
                         xor.s              eax, eax                                      // 0x005709f1    33c0
                         {disp8} lea        edi, dword ptr [esp + 0x30]                   // 0x005709f3    8d7c2430
                         repne scasb                                                      // 0x005709f7    f2ae
                         not                ecx                                           // 0x005709f9    f7d1
                         sub.s              edi, ecx                                      // 0x005709fb    2bf9
                         mov.s              esi, edi                                      // 0x005709fd    8bf7
                         {disp32} lea       edx, dword ptr [esp + 0x00000130]             // 0x005709ff    8d942430010000
                         mov.s              edi, edx                                      // 0x00570a06    8bfa
                         mov.s              edx, ecx                                      // 0x00570a08    8bd1
                         or                 ecx, 0xffffffff                               // 0x00570a0a    83c9ff
                         repne scasb                                                      // 0x00570a0d    f2ae
                         mov.s              ecx, edx                                      // 0x00570a0f    8bca
                         shr                ecx, 2                                        // 0x00570a11    c1e902
                         dec                edi                                           // 0x00570a14    4f
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00570a15    f3a5
                         mov.s              ecx, edx                                      // 0x00570a17    8bca
                         {disp32} lea       eax, dword ptr [esp + 0x00000130]             // 0x00570a19    8d842430010000
                         and                ecx, 0x03                                     // 0x00570a20    83e103
                         push               eax                                           // 0x00570a23    50
                         rep movsb                                                        // 0x00570a24    f3a4
                         call               _CHAR2WCHAR__FPc                              // 0x00570a26    e875f62b00
                         {disp8} mov        esi, dword ptr [ebx + 0x10]                   // 0x00570a2b    8b7310
                         {disp32} mov       ecx, dword ptr [esi + 0x00000250]             // 0x00570a2e    8b8e50020000
                         add                esp, 0x24                                     // 0x00570a34    83c424
                         push               eax                                           // 0x00570a37    50
                         push               ecx                                           // 0x00570a38    51
                         mov.s              ecx, esi                                      // 0x00570a39    8bce
                         call               @InsertString__9SetupListFiPw@16              // 0x00570a3b    e830a4e9ff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000250]             // 0x00570a40    8b8e50020000
                         {disp8} lea        eax, dword ptr [ecx + -0x01]                  // 0x00570a46    8d41ff
                         test               eax, eax                                      // 0x00570a49    85c0
                         {disp8} jl         _jmp_addr_0x00570a5e                          // 0x00570a4b    7c11
                         cmp.s              eax, ecx                                      // 0x00570a4d    3bc1
                         {disp8} jge        _jmp_addr_0x00570a5e                          // 0x00570a4f    7d0d
                         {disp32} mov       edx, dword ptr [esi + 0x00000268]             // 0x00570a51    8b9668020000
                         mov                dword ptr [edx + eax * 0x4], 0x00000000       // 0x00570a57    c7048200000000
_jmp_addr_0x00570a5e:    {disp32} mov       eax, dword ptr [ebx + 0x0000008c]             // 0x00570a5e    8b838c000000
                         inc                ebp                                           // 0x00570a64    45
                         cmp.s              ebp, eax                                      // 0x00570a65    3be8
                         {disp32} jl        _jmp_addr_0x005709b3                          // 0x00570a67    0f8c46ffffff
                         pop                edi                                           // 0x00570a6d    5f
_jmp_addr_0x00570a6e:    call               dword ptr [ebx + 0x40]                        // 0x00570a6e    ff5340
                         {disp8} mov        ebx, dword ptr [ebx + 0x10]                   // 0x00570a71    8b5b10
                         mov.s              esi, eax                                      // 0x00570a74    8bf0
                         test               esi, esi                                      // 0x00570a76    85f6
                         pop                ebp                                           // 0x00570a78    5d
                         {disp8} jl         _jmp_addr_0x00570a8b                          // 0x00570a79    7c10
                         cmp                esi, dword ptr [ebx + 0x00000250]             // 0x00570a7b    3bb350020000
                         {disp8} jge        _jmp_addr_0x00570a8b                          // 0x00570a81    7d08
                         {disp32} mov       dword ptr [ebx + 0x00000248], esi             // 0x00570a83    89b348020000
                         {disp8} jmp        _jmp_addr_0x00570a95                          // 0x00570a89    eb0a
_jmp_addr_0x00570a8b:    {disp32} mov       dword ptr [ebx + 0x00000248], 0xffffffff      // 0x00570a8b    c78348020000ffffffff
_jmp_addr_0x00570a95:    {disp8} mov        eax, dword ptr [ebx + 0x04]                   // 0x00570a95    8b4304
                         test               eax, eax                                      // 0x00570a98    85c0
                         {disp8} je         _jmp_addr_0x00570ad7                          // 0x00570a9a    743b
                         {disp32} mov       eax, dword ptr [data_bytes + 0x286d00]        // 0x00570a9c    a100cdc400
                         test               eax, eax                                      // 0x00570aa1    85c0
                         {disp8} je         _jmp_addr_0x00570ad7                          // 0x00570aa3    7432
                         test               esi, esi                                      // 0x00570aa5    85f6
                         {disp8} jl         _jmp_addr_0x00570ad7                          // 0x00570aa7    7c2e
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4c6104]        // 0x00570aa9    8b0d04c1e800
                         call               @CandidateList_GetSelectIdx__Q24slim5TbIMEFv@4// 0x00570aaf    e80c332800
                         cmp.s              eax, esi                                      // 0x00570ab4    3bc6
                         {disp8} je         _jmp_addr_0x00570ad7                          // 0x00570ab6    741f
                         {disp32} mov       eax, dword ptr [ebx + 0x00000250]             // 0x00570ab8    8b8350020000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4c6104]        // 0x00570abe    8b0d04c1e800
                         push               esi                                           // 0x00570ac4    56
                         dec                eax                                           // 0x00570ac5    48
                         push               eax                                           // 0x00570ac6    50
                         push               0x0                                           // 0x00570ac7    6a00
                         call               @CandidateList_SetViewWindow__Q24slim5TbIMEFUiUiUi@20                          // 0x00570ac9    e812332800
                         push               0x0                                           // 0x00570ace    6a00
                         mov.s              ecx, ebx                                      // 0x00570ad0    8bcb
                         call               @AutoScroll__9SetupListFb@9                   // 0x00570ad2    e8f992e9ff
_jmp_addr_0x00570ad7:    pop                esi                                           // 0x00570ad7    5e
                         pop                ebx                                           // 0x00570ad8    5b
                         add                esp, 0x00001100                               // 0x00570ad9    81c400110000
                         ret                                                              // 0x00570adf    c3
_jmp_addr_0x00570ae0:    {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x00570ae0    8b4c2404
                         mov                eax, 0x10624dd3                               // 0x00570ae4    b8d34d6210
                         imul               ecx                                           // 0x00570ae9    f7e9
                         sar                edx, 6                                        // 0x00570aeb    c1fa06
                         mov.s              eax, edx                                      // 0x00570aee    8bc2
                         shr                eax, 0x1f                                     // 0x00570af0    c1e81f
                         add.s              edx, eax                                      // 0x00570af3    03d0
                         mov.s              ecx, edx                                      // 0x00570af5    8bca
                         {disp8} jns        _jmp_addr_0x00570afb                          // 0x00570af7    7902
                         xor.s              ecx, ecx                                      // 0x00570af9    33c9
_jmp_addr_0x00570afb:    mov.s              eax, ecx                                      // 0x00570afb    8bc1
                         push               esi                                           // 0x00570afd    56
                         cdq                                                              // 0x00570afe    99
                         mov                esi, 0x0000003c                               // 0x00570aff    be3c000000
                         idiv               esi                                           // 0x00570b04    f7fe
                         mov                eax, 0x88888889                               // 0x00570b06    b889888888
                         push               edx                                           // 0x00570b0b    52
                         imul               ecx                                           // 0x00570b0c    f7e9
                         add.s              edx, ecx                                      // 0x00570b0e    03d1
                         sar                edx, 5                                        // 0x00570b10    c1fa05
                         mov.s              ecx, edx                                      // 0x00570b13    8bca
                         shr                ecx, 0x1f                                     // 0x00570b15    c1e91f
                         add.s              edx, ecx                                      // 0x00570b18    03d1
                         push               edx                                           // 0x00570b1a    52
                         push               0x00bef104                                    // 0x00570b1b    6804f1be00
                         push               0x00d06108                                    // 0x00570b20    680861d000
                         call               _swprintf                                     // 0x00570b25    e855592500
                         add                esp, 0x10                                     // 0x00570b2a    83c410
                         mov                eax, 0x00d06108                               // 0x00570b2d    b80861d000
                         pop                esi                                           // 0x00570b32    5e
                         ret                0x0004                                        // 0x00570b33    c20400
                         nop                                                              // 0x00570b36    90
                         nop                                                              // 0x00570b37    90
                         nop                                                              // 0x00570b38    90
                         nop                                                              // 0x00570b39    90
                         nop                                                              // 0x00570b3a    90
                         nop                                                              // 0x00570b3b    90
                         nop                                                              // 0x00570b3c    90
                         nop                                                              // 0x00570b3d    90
                         nop                                                              // 0x00570b3e    90
                         nop                                                              // 0x00570b3f    90
_jmp_addr_0x00570b40:    sub                esp, 0x00000400                               // 0x00570b40    81ec00040000
                         push               ebx                                           // 0x00570b46    53
                         push               ebp                                           // 0x00570b47    55
                         push               esi                                           // 0x00570b48    56
                         mov.s              esi, ecx                                      // 0x00570b49    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x2c]                   // 0x00570b4b    8b462c
                         xor.s              ebx, ebx                                      // 0x00570b4e    33db
                         cmp.s              eax, ebx                                      // 0x00570b50    3bc3
                         push               edi                                           // 0x00570b52    57
                         {disp32} je        _jmp_addr_0x00570e84                          // 0x00570b53    0f842b030000
                         call               dword ptr [esi + 0x48]                        // 0x00570b59    ff5648
                         test               eax, eax                                      // 0x00570b5c    85c0
                         {disp8} jne        _jmp_addr_0x00570b74                          // 0x00570b5e    7514
                         push               0x1                                           // 0x00570b60    6a01
                         mov.s              ecx, esi                                      // 0x00570b62    8bce
                         call               _jmp_addr_0x005708d0                          // 0x00570b64    e867fdffff
                         pop                edi                                           // 0x00570b69    5f
                         pop                esi                                           // 0x00570b6a    5e
                         pop                ebp                                           // 0x00570b6b    5d
                         pop                ebx                                           // 0x00570b6c    5b
                         add                esp, 0x00000400                               // 0x00570b6d    81c400040000
                         ret                                                              // 0x00570b73    c3
_jmp_addr_0x00570b74:    call               dword ptr [__imp__GetTickCount@4]             // 0x00570b74    ff15c4918a00
                         {disp32} mov       dword ptr [esi + 0x000000a4], eax             // 0x00570b7a    8986a4000000
                         cmp                dword ptr [esi + 0x2c], ebx                   // 0x00570b80    395e2c
                         {disp32} je        _jmp_addr_0x00570e84                          // 0x00570b83    0f84fb020000
                         {disp8} mov        eax, dword ptr [esi + 0x18]                   // 0x00570b89    8b4618
                         add                eax, 0x24                                     // 0x00570b8c    83c024
                         push               0x00c4cd30                                    // 0x00570b8f    6830cdc400
                         push               eax                                           // 0x00570b94    50
                         {disp32} mov       dword ptr [esi + 0x00000094], ebx             // 0x00570b95    899e94000000
                         {disp32} mov       dword ptr [esi + 0x00000090], ebx             // 0x00570b9b    899e90000000
                         call               _wcscpy                                       // 0x00570ba1    e810542500
                         {disp8} mov        ecx, dword ptr [esi + 0x18]                   // 0x00570ba6    8b4e18
                         {disp8} mov        dword ptr [ecx + 0x1c], 0x40000000            // 0x00570ba9    c7411c00000040
                         {disp32} mov       eax, dword ptr [esi + 0x00000088]             // 0x00570bb0    8b8688000000
                         mov                edi, 0x00000100                               // 0x00570bb6    bf00010000
                         add                esp, 0x08                                     // 0x00570bbb    83c408
                         test               edi, eax                                      // 0x00570bbe    85c7
                         {disp8} je         _jmp_addr_0x00570be3                          // 0x00570bc0    7421
                         call               dword ptr [esi + 0x54]                        // 0x00570bc2    ff5654
                         push               eax                                           // 0x00570bc5    50
                         mov.s              ecx, esi                                      // 0x00570bc6    8bce
                         {disp32} mov       dword ptr [esi + 0x00000094], eax             // 0x00570bc8    898694000000
                         call               _jmp_addr_0x00570ae0                          // 0x00570bce    e80dffffff
                         {disp8} mov        edx, dword ptr [esi + 0x18]                   // 0x00570bd3    8b5618
                         push               eax                                           // 0x00570bd6    50
                         add                edx, 0x24                                     // 0x00570bd7    83c224
                         push               edx                                           // 0x00570bda    52
                         call               _wcscat                                       // 0x00570bdb    e8ac532500
                         add                esp, 0x08                                     // 0x00570be0    83c408
_jmp_addr_0x00570be3:    test               byte ptr [esi + 0x00000088], -0x80            // 0x00570be3    f6868800000080
                         {disp8} je         _jmp_addr_0x00570c2f                          // 0x00570bea    7443
                         call               dword ptr [esi + 0x58]                        // 0x00570bec    ff5658
                         {disp32} mov       dword ptr [esi + 0x00000090], eax             // 0x00570bef    898690000000
                         test               dword ptr [esi + 0x00000088], edi             // 0x00570bf5    85be88000000
                         {disp8} je         _jmp_addr_0x00570c11                          // 0x00570bfb    7414
                         {disp8} mov        eax, dword ptr [esi + 0x18]                   // 0x00570bfd    8b4618
                         add                eax, 0x24                                     // 0x00570c00    83c024
                         push               0x00bef114                                    // 0x00570c03    6814f1be00
                         push               eax                                           // 0x00570c08    50
                         call               _wcscat                                       // 0x00570c09    e87e532500
                         add                esp, 0x08                                     // 0x00570c0e    83c408
_jmp_addr_0x00570c11:    {disp32} mov       ecx, dword ptr [esi + 0x00000090]             // 0x00570c11    8b8e90000000
                         push               ecx                                           // 0x00570c17    51
                         mov.s              ecx, esi                                      // 0x00570c18    8bce
                         call               _jmp_addr_0x00570ae0                          // 0x00570c1a    e8c1feffff
                         {disp8} mov        edx, dword ptr [esi + 0x18]                   // 0x00570c1f    8b5618
                         push               eax                                           // 0x00570c22    50
                         add                edx, 0x24                                     // 0x00570c23    83c224
                         push               edx                                           // 0x00570c26    52
                         call               _wcscat                                       // 0x00570c27    e860532500
                         add                esp, 0x08                                     // 0x00570c2c    83c408
_jmp_addr_0x00570c2f:    test               byte ptr [esi + 0x00000088], 0x01             // 0x00570c2f    f6868800000001
                         {disp32} je        _jmp_addr_0x00570cc4                          // 0x00570c36    0f8488000000
                         {disp8} mov        eax, dword ptr [esi + 0x10]                   // 0x00570c3c    8b4610
                         cmp                byte ptr [eax + 0x00000228], bl               // 0x00570c3f    389828020000
                         {disp8} je         _jmp_addr_0x00570c4f                          // 0x00570c45    7408
                         cmp                dword ptr [data_bytes + 0x286d0c], ebx        // 0x00570c47    391d0ccdc400
                         {disp8} jne        _jmp_addr_0x00570cc4                          // 0x00570c4d    7575
_jmp_addr_0x00570c4f:    call               dword ptr [esi + 0x40]                        // 0x00570c4f    ff5640
                         {disp8} mov        ebp, dword ptr [esi + 0x10]                   // 0x00570c52    8b6e10
                         mov.s              edi, eax                                      // 0x00570c55    8bf8
                         cmp.s              edi, ebx                                      // 0x00570c57    3bfb
                         {disp8} jl         _jmp_addr_0x00570c6b                          // 0x00570c59    7c10
                         cmp                edi, dword ptr [ebp + 0x00000250]             // 0x00570c5b    3bbd50020000
                         {disp8} jge        _jmp_addr_0x00570c6b                          // 0x00570c61    7d08
                         {disp32} mov       dword ptr [ebp + 0x00000248], edi             // 0x00570c63    89bd48020000
                         {disp8} jmp        _jmp_addr_0x00570c75                          // 0x00570c69    eb0a
_jmp_addr_0x00570c6b:    {disp32} mov       dword ptr [ebp + 0x00000248], 0xffffffff      // 0x00570c6b    c78548020000ffffffff
_jmp_addr_0x00570c75:    cmp                dword ptr [ebp + 0x04], ebx                   // 0x00570c75    395d04
                         {disp8} je         _jmp_addr_0x00570cb2                          // 0x00570c78    7438
                         cmp                dword ptr [data_bytes + 0x286d00], ebx        // 0x00570c7a    391d00cdc400
                         {disp8} je         _jmp_addr_0x00570cb2                          // 0x00570c80    7430
                         cmp.s              edi, ebx                                      // 0x00570c82    3bfb
                         {disp8} jl         _jmp_addr_0x00570cb2                          // 0x00570c84    7c2c
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4c6104]        // 0x00570c86    8b0d04c1e800
                         call               @CandidateList_GetSelectIdx__Q24slim5TbIMEFv@4// 0x00570c8c    e82f312800
                         cmp.s              eax, edi                                      // 0x00570c91    3bc7
                         {disp8} je         _jmp_addr_0x00570cb2                          // 0x00570c93    741d
                         {disp32} mov       ecx, dword ptr [ebp + 0x00000250]             // 0x00570c95    8b8d50020000
                         push               edi                                           // 0x00570c9b    57
                         dec                ecx                                           // 0x00570c9c    49
                         push               ecx                                           // 0x00570c9d    51
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4c6104]        // 0x00570c9e    8b0d04c1e800
                         push               ebx                                           // 0x00570ca4    53
                         call               @CandidateList_SetViewWindow__Q24slim5TbIMEFUiUiUi@20                          // 0x00570ca5    e836312800
                         push               ebx                                           // 0x00570caa    53
                         mov.s              ecx, ebp                                      // 0x00570cab    8bcd
                         call               @AutoScroll__9SetupListFb@9                   // 0x00570cad    e81e91e9ff
_jmp_addr_0x00570cb2:    call               dword ptr [esi + 0x38]                        // 0x00570cb2    ff5638
                         cmp                eax, dword ptr [esi + 0x0000008c]             // 0x00570cb5    3b868c000000
                         {disp8} je         _jmp_addr_0x00570cc4                          // 0x00570cbb    7407
                         mov.s              ecx, esi                                      // 0x00570cbd    8bce
                         call               _jmp_addr_0x00570930                          // 0x00570cbf    e86cfcffff
_jmp_addr_0x00570cc4:    {disp32} fild      dword ptr [esi + 0x00000098]                  // 0x00570cc4    db8698000000
                         {disp8} mov        ecx, dword ptr [esi + 0x14]                   // 0x00570cca    8b4e14
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x00570ccd    d81598a38a00
                         fnstsw             ax                                            // 0x00570cd3    dfe0
                         test               ah, 0x41                                      // 0x00570cd5    f6c441
                         {disp8} jne        _jmp_addr_0x00570cf1                          // 0x00570cd8    7517
                         {disp32} fcom      dword ptr [__real@437f0000]                   // 0x00570cda    d81570b28a00
                         fnstsw             ax                                            // 0x00570ce0    dfe0
                         test               ah, 0x01                                      // 0x00570ce2    f6c401
                         {disp8} jne        _jmp_addr_0x00570cf9                          // 0x00570ce5    7512
                         fstp               st(0)                                         // 0x00570ce7    ddd8
                         {disp32} fld       dword ptr [__real@437f0000]                   // 0x00570ce9    d90570b28a00
                         {disp8} jmp        _jmp_addr_0x00570cf9                          // 0x00570cef    eb08
_jmp_addr_0x00570cf1:    fstp               st(0)                                         // 0x00570cf1    ddd8
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x00570cf3    d90598a38a00
_jmp_addr_0x00570cf9:    {disp32} fmul      dword ptr [rdata_bytes + 0x57058]             // 0x00570cf9    d80d58009000
                         {disp32} fstp      dword ptr [ecx + 0x0000023c]                  // 0x00570cff    d9993c020000
                         {disp8} mov        ecx, dword ptr [esi + 0x18]                   // 0x00570d05    8b4e18
                         {disp32} fild      dword ptr [esi + 0x00000090]                  // 0x00570d08    db8690000000
                         {disp32} fild      dword ptr [esi + 0x00000094]                  // 0x00570d0e    db8694000000
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x00570d14    d81598a38a00
                         fnstsw             ax                                            // 0x00570d1a    dfe0
                         test               ah, 0x41                                      // 0x00570d1c    f6c441
                         {disp8} jne        _jmp_addr_0x00570d30                          // 0x00570d1f    750f
                         fcom               st(1)                                         // 0x00570d21    d8d1
                         fnstsw             ax                                            // 0x00570d23    dfe0
                         test               ah, 0x01                                      // 0x00570d25    f6c401
                         {disp8} jne        _jmp_addr_0x00570d38                          // 0x00570d28    750e
                         fstp               st(0)                                         // 0x00570d2a    ddd8
                         fld                st(0)                                         // 0x00570d2c    d9c0
                         {disp8} jmp        _jmp_addr_0x00570d38                          // 0x00570d2e    eb08
_jmp_addr_0x00570d30:    fstp               st(0)                                         // 0x00570d30    ddd8
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x00570d32    d90598a38a00
_jmp_addr_0x00570d38:    fld                st(1)                                         // 0x00570d38    d9c1
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00570d3a    d81d98a38a00
                         fnstsw             ax                                            // 0x00570d40    dfe0
                         test               ah, 0x41                                      // 0x00570d42    f6c441
                         {disp8} jne        _jmp_addr_0x00570d53                          // 0x00570d45    750c
                         fxch               st(1)                                         // 0x00570d47    d9c9
                         fdivp              st(1), st                                     // 0x00570d49    def9
                         {disp32} fstp      dword ptr [ecx + 0x0000023c]                  // 0x00570d4b    d9993c020000
                         {disp8} jmp        _jmp_addr_0x00570d5d                          // 0x00570d51    eb0a
_jmp_addr_0x00570d53:    fstp               st(0)                                         // 0x00570d53    ddd8
                         {disp32} mov       dword ptr [ecx + 0x0000023c], ebx             // 0x00570d55    89993c020000
                         fstp               st(0)                                         // 0x00570d5b    ddd8
_jmp_addr_0x00570d5d:    {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x00570d5d    8d542410
                         xor.s              eax, eax                                      // 0x00570d61    33c0
                         push               0x00000400                                    // 0x00570d63    6800040000
                         mov                ecx, 0x00000100                               // 0x00570d68    b900010000
                         {disp8} lea        edi, dword ptr [esp + 0x14]                   // 0x00570d6d    8d7c2414
                         push               edx                                           // 0x00570d71    52
                         rep stosd                                                        // 0x00570d72    f3ab
                         call               dword ptr [esi + 0x50]                        // 0x00570d74    ff5650
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x00570d77    8d442418
                         push               eax                                           // 0x00570d7b    50
                         call               _CHAR2WCHAR__FPc                              // 0x00570d7c    e81ff32b00
                         {disp8} mov        ecx, dword ptr [esi + 0x1c]                   // 0x00570d81    8b4e1c
                         push               eax                                           // 0x00570d84    50
                         add                ecx, 0x24                                     // 0x00570d85    83c124
                         push               ecx                                           // 0x00570d88    51
                         call               _wcscpy                                       // 0x00570d89    e828522500
                         add                esp, 0x14                                     // 0x00570d8e    83c414
                         call               _jmp_addr_0x00634370                          // 0x00570d91    e8da350c00
                         mov.s              ecx, eax                                      // 0x00570d96    8bc8
                         cmp.s              ecx, ebx                                      // 0x00570d98    3bcb
                         {disp32} je        _jmp_addr_0x00570e75                          // 0x00570d9a    0f84d5000000
                         fld                dword ptr [ecx]                               // 0x00570da0    d901
                         {disp32} mov       ebp, dword ptr [data_bytes + 0x286cf8]        // 0x00570da2    8b2df8ccc400
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00570da8    d81d98a38a00
                         mov                edi, 0xffff0000                               // 0x00570dae    bf0000ffff
                         fnstsw             ax                                            // 0x00570db3    dfe0
                         test               ah, 0x01                                      // 0x00570db5    f6c401
                         {disp8} jne        _jmp_addr_0x00570dbf                          // 0x00570db8    7505
                         mov                edi, 0xff00ff00                               // 0x00570dba    bf00ff00ff
_jmp_addr_0x00570dbf:    fld                dword ptr [ecx]                               // 0x00570dbf    d901
                         {disp32} fmul      dword ptr [rdata_bytes + 0x57054]             // 0x00570dc1    d80d54009000
                         call               _jmp_addr_0x007a1400                          // 0x00570dc7    e834062300
                         cdq                                                              // 0x00570dcc    99
                         xor.s              eax, edx                                      // 0x00570dcd    33c2
                         sub.s              eax, edx                                      // 0x00570dcf    2bc2
                         cmp.s              eax, ebx                                      // 0x00570dd1    3bc3
                         {disp8} jle        _jmp_addr_0x00570de3                          // 0x00570dd3    7e0e
                         cmp                eax, 0x000000ff                               // 0x00570dd5    3dff000000
                         {disp8} jl         _jmp_addr_0x00570de5                          // 0x00570dda    7c09
                         mov                eax, 0x000000ff                               // 0x00570ddc    b8ff000000
                         {disp8} jmp        _jmp_addr_0x00570de5                          // 0x00570de1    eb02
_jmp_addr_0x00570de3:    xor.s              eax, eax                                      // 0x00570de3    33c0
_jmp_addr_0x00570de5:    mov.s              edx, edi                                      // 0x00570de5    8bd7
                         and                edx, 0x00ff0000                               // 0x00570de7    81e20000ff00
                         mov.s              ecx, ebp                                      // 0x00570ded    8bcd
                         and                ecx, 0x00ff0000                               // 0x00570def    81e10000ff00
                         sub.s              edx, ecx                                      // 0x00570df5    2bd1
                         imul               edx, eax                                      // 0x00570df7    0fafd0
                         shr                edx, 8                                        // 0x00570dfa    c1ea08
                         mov.s              ecx, ebp                                      // 0x00570dfd    8bcd
                         and                ecx, 0xffff0000                               // 0x00570dff    81e10000ffff
                         add.s              edx, ecx                                      // 0x00570e05    03d1
                         mov.s              ecx, edi                                      // 0x00570e07    8bcf
                         and                ecx, 0x0000ff00                               // 0x00570e09    81e100ff0000
                         mov.s              ebx, ebp                                      // 0x00570e0f    8bdd
                         and                ebx, 0x0000ff00                               // 0x00570e11    81e300ff0000
                         sub.s              ecx, ebx                                      // 0x00570e17    2bcb
                         imul               ecx, eax                                      // 0x00570e19    0fafc8
                         shr                ecx, 8                                        // 0x00570e1c    c1e908
                         mov.s              ebx, ebp                                      // 0x00570e1f    8bdd
                         and                ebx, 0xffffff00                               // 0x00570e21    81e300ffffff
                         add.s              ecx, ebx                                      // 0x00570e27    03cb
                         and                ecx, 0x0000ff00                               // 0x00570e29    81e100ff0000
                         and                edx, 0x00ff0000                               // 0x00570e2f    81e20000ff00
                         or.s               edx, ecx                                      // 0x00570e35    0bd1
                         mov.s              ecx, edi                                      // 0x00570e37    8bcf
                         and                ecx, 0x000000ff                               // 0x00570e39    81e1ff000000
                         mov.s              ebx, ebp                                      // 0x00570e3f    8bdd
                         and                ebx, 0x000000ff                               // 0x00570e41    81e3ff000000
                         sub.s              ecx, ebx                                      // 0x00570e47    2bcb
                         imul               ecx, eax                                      // 0x00570e49    0fafc8
                         {disp8} mov        eax, dword ptr [esi + 0x28]                   // 0x00570e4c    8b4628
                         shr                ecx, 8                                        // 0x00570e4f    c1e908
                         add.s              ecx, ebp                                      // 0x00570e52    03cd
                         and                ecx, 0x000000ff                               // 0x00570e54    81e1ff000000
                         and                edi, 0xff000000                               // 0x00570e5a    81e7000000ff
                         or.s               edx, ecx                                      // 0x00570e60    0bd1
                         or.s               edx, edi                                      // 0x00570e62    0bd7
                         pop                edi                                           // 0x00570e64    5f
                         pop                esi                                           // 0x00570e65    5e
                         pop                ebp                                           // 0x00570e66    5d
                         {disp32} mov       dword ptr [eax + 0x0000024c], edx             // 0x00570e67    89904c020000
                         pop                ebx                                           // 0x00570e6d    5b
                         add                esp, 0x00000400                               // 0x00570e6e    81c400040000
                         ret                                                              // 0x00570e74    c3
_jmp_addr_0x00570e75:    {disp8} mov        ecx, dword ptr [esi + 0x28]                   // 0x00570e75    8b4e28
                         {disp32} mov       edx, dword ptr [data_bytes + 0x286cf8]        // 0x00570e78    8b15f8ccc400
                         {disp32} mov       dword ptr [ecx + 0x0000024c], edx             // 0x00570e7e    89914c020000
_jmp_addr_0x00570e84:    pop                edi                                           // 0x00570e84    5f
                         pop                esi                                           // 0x00570e85    5e
                         pop                ebp                                           // 0x00570e86    5d
                         pop                ebx                                           // 0x00570e87    5b
                         add                esp, 0x00000400                               // 0x00570e88    81c400040000
                         ret                                                              // 0x00570e8e    c3
                         nop                                                              // 0x00570e8f    90
?Init@GatheringBox@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z:
                         sub                esp, 0x00000458                               // 0x00570e90    81ec58040000
                         push               ebx                                           // 0x00570e96    53
                         push               ebp                                           // 0x00570e97    55
                         mov.s              ebp, ecx                                      // 0x00570e98    8be9
                         xor.s              ebx, ebx                                      // 0x00570e9a    33db
                         {disp32} mov       byte ptr [ebp + 0x000000dd], bl               // 0x00570e9c    889ddd000000
                         {disp32} mov       dword ptr [ebp + 0x000000e0], ebx             // 0x00570ea2    899de0000000
                         {disp32} mov       byte ptr [ebp + 0x000000e4], 0x01             // 0x00570ea8    c685e400000001
                         {disp32} mov       edx, dword ptr [data_bytes + 0x351cac]        // 0x00570eaf    8b15ac7cd100
                         cmp                edx, 0x000019da                               // 0x00570eb5    81fada190000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00570ebb    a1a87cd100
                         push               esi                                           // 0x00570ec0    56
                         push               edi                                           // 0x00570ec1    57
                         mov.s              ecx, eax                                      // 0x00570ec2    8bc8
                         {disp8} jbe        _jmp_addr_0x00570ecc                          // 0x00570ec4    7606
                         {disp32} lea       ecx, dword ptr [eax + 0x00013638]             // 0x00570ec6    8d8838360100
_jmp_addr_0x00570ecc:    cmp                edx, 0x000019dc                               // 0x00570ecc    81fadc190000
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x00570ed2    8b4908
                         {disp32} mov       dword ptr [data_bytes + 0x340318], ecx        // 0x00570ed5    890d1863d000
                         mov.s              ecx, eax                                      // 0x00570edb    8bc8
                         {disp8} jbe        _jmp_addr_0x00570ee5                          // 0x00570edd    7606
                         {disp32} lea       ecx, dword ptr [eax + 0x00013650]             // 0x00570edf    8d8850360100
_jmp_addr_0x00570ee5:    cmp                edx, 0x00000dd7                               // 0x00570ee5    81fad70d0000
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x00570eeb    8b4908
                         {disp32} mov       dword ptr [data_bytes + 0x340314], ecx        // 0x00570eee    890d1463d000
                         mov.s              ecx, eax                                      // 0x00570ef4    8bc8
                         {disp8} jbe        _jmp_addr_0x00570efe                          // 0x00570ef6    7606
                         {disp32} lea       ecx, dword ptr [eax + 0x0000a614]             // 0x00570ef8    8d8814a60000
_jmp_addr_0x00570efe:    cmp                edx, 0x00001a7c                               // 0x00570efe    81fa7c1a0000
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x00570f04    8b4908
                         {disp32} mov       dword ptr [data_bytes + 0x340310], ecx        // 0x00570f07    890d1063d000
                         mov.s              ecx, eax                                      // 0x00570f0d    8bc8
                         {disp8} jbe        _jmp_addr_0x00570f17                          // 0x00570f0f    7606
                         {disp32} lea       ecx, dword ptr [eax + 0x00013dd0]             // 0x00570f11    8d88d03d0100
_jmp_addr_0x00570f17:    cmp                edx, 0x00001a7b                               // 0x00570f17    81fa7b1a0000
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x00570f1d    8b4908
                         {disp32} mov       dword ptr [data_bytes + 0x34030c], ecx        // 0x00570f20    890d0c63d000
                         {disp8} jbe        _jmp_addr_0x00570f2d                          // 0x00570f26    7605
                         add                eax, 0x00013dc4                               // 0x00570f28    05c43d0100
_jmp_addr_0x00570f2d:    {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x00570f2d    8b5008
                         {disp32} mov       eax, dword ptr [esp + 0x00000474]             // 0x00570f30    8b842474040000
                         {disp32} mov       ecx, dword ptr [esp + 0x00000470]             // 0x00570f37    8b8c2470040000
                         push               eax                                           // 0x00570f3e    50
                         {disp32} mov       dword ptr [data_bytes + 0x340308], edx        // 0x00570f3f    89150863d000
                         {disp32} mov       edx, dword ptr [esp + 0x00000470]             // 0x00570f45    8b942470040000
                         push               ecx                                           // 0x00570f4c    51
                         push               edx                                           // 0x00570f4d    52
                         mov.s              ecx, ebp                                      // 0x00570f4e    8bcd
                         call               @Init__13DialogBoxBaseFUlUlPFiP8SetupBoxP12SetupControlii_v@20                          // 0x00570f50    e8ab24faff
                         xor.s              eax, eax                                      // 0x00570f55    33c0
                         {disp32} mov       dword ptr [data_bytes + 0x34043c], ebp        // 0x00570f57    892d3c64d000
                         {disp32} mov       byte ptr [ebp + 0x000000a8], bl               // 0x00570f5d    889da8000000
                         {disp32} mov       ax, word ptr [data_bytes + 0x4bf05a]          // 0x00570f63    66a15a50e800
                         {disp32} mov       esi, dword ptr [data_bytes + 0x4bf058]        // 0x00570f69    8b355850e800
                         push               0x14                                          // 0x00570f6f    6a14
                         and                esi, 0x0000ffff                               // 0x00570f71    81e6ffff0000
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x00570f77    89442424
                         call               _jmp_addr_0x00411fc0                          // 0x00570f7b    e84010eaff
                         push               0x30                                          // 0x00570f80    6a30
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x00570f82    89442424
                         call               _jmp_addr_0x00411fc0                          // 0x00570f86    e83510eaff
                         push               0x000000df                                    // 0x00570f8b    68df000000
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x00570f90    8944241c
                         {disp8} mov        eax, dword ptr [ebp + 0x04]                   // 0x00570f94    8b4504
                         push               0x00bef1b8                                    // 0x00570f97    68b8f1be00
                         push               0x0000025c                                    // 0x00570f9c    685c020000
                         {disp32} mov       dword ptr [eax + 0x00000094], ebx             // 0x00570fa1    899894000000
                         call               ___nw__FUl                                    // 0x00570fa7    e8e4a72600
                         mov.s              edi, eax                                      // 0x00570fac    8bf8
                         add                esp, 0x14                                     // 0x00570fae    83c414
                         cmp.s              edi, ebx                                      // 0x00570fb1    3bfb
                         {disp8} je         _jmp_addr_0x00570fe4                          // 0x00570fb3    742f
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x00570fb5    8b4c241c
                         push               0x6                                           // 0x00570fb9    6a06
                         push               ebx                                           // 0x00570fbb    53
                         push               ecx                                           // 0x00570fbc    51
                         push               0x00c4cd30                                    // 0x00570fbd    6830cdc400
                         push               ebx                                           // 0x00570fc2    53
                         call               _jmp_addr_0x00411f10                          // 0x00570fc3    e8480feaff
                         add                esp, 0x04                                     // 0x00570fc8    83c404
                         push               eax                                           // 0x00570fcb    50
                         {disp8} lea        edx, dword ptr [esi + -0x14]                  // 0x00570fcc    8d56ec
                         push               edx                                           // 0x00570fcf    52
                         call               _jmp_addr_0x00411dd0                          // 0x00570fd0    e8fb0deaff
                         add                esp, 0x04                                     // 0x00570fd5    83c404
                         push               eax                                           // 0x00570fd8    50
                         push               0x1                                           // 0x00570fd9    6a01
                         mov.s              ecx, edi                                      // 0x00570fdb    8bcf
                         call               @__ct__14SetupBigButtonFiiiPwiii@36           // 0x00570fdd    e87ec2e9ff
                         {disp8} jmp        _jmp_addr_0x00570fe6                          // 0x00570fe2    eb02
_jmp_addr_0x00570fe4:    xor.s              eax, eax                                      // 0x00570fe4    33c0
_jmp_addr_0x00570fe6:    push               0x000000e0                                    // 0x00570fe6    68e0000000
                         push               0x00bef1b8                                    // 0x00570feb    68b8f1be00
                         push               0x0000025c                                    // 0x00570ff0    685c020000
                         {disp32} mov       dword ptr [ebp + 0x000000bc], eax             // 0x00570ff5    8985bc000000
                         call               ___nw__FUl                                    // 0x00570ffb    e890a72600
                         mov.s              edi, eax                                      // 0x00571000    8bf8
                         add                esp, 0x0c                                     // 0x00571002    83c40c
                         cmp.s              edi, ebx                                      // 0x00571005    3bfb
                         {disp8} je         _jmp_addr_0x0057103c                          // 0x00571007    7433
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x00571009    8b44241c
                         push               0x8                                           // 0x0057100d    6a08
                         push               ebx                                           // 0x0057100f    53
                         push               eax                                           // 0x00571010    50
                         push               0x00c4cd30                                    // 0x00571011    6830cdc400
                         push               ebx                                           // 0x00571016    53
                         call               _jmp_addr_0x00411f10                          // 0x00571017    e8f40eeaff
                         add                esp, 0x04                                     // 0x0057101c    83c404
                         push               eax                                           // 0x0057101f    50
                         mov.s              eax, esi                                      // 0x00571020    8bc6
                         cdq                                                              // 0x00571022    99
                         sub.s              eax, edx                                      // 0x00571023    2bc2
                         sar                eax, 1                                        // 0x00571025    d1f8
                         push               eax                                           // 0x00571027    50
                         call               _jmp_addr_0x00411dd0                          // 0x00571028    e8a30deaff
                         add                esp, 0x04                                     // 0x0057102d    83c404
                         push               eax                                           // 0x00571030    50
                         push               0x2                                           // 0x00571031    6a02
                         mov.s              ecx, edi                                      // 0x00571033    8bcf
                         call               @__ct__14SetupBigButtonFiiiPwiii@36           // 0x00571035    e826c2e9ff
                         {disp8} jmp        _jmp_addr_0x0057103e                          // 0x0057103a    eb02
_jmp_addr_0x0057103c:    xor.s              eax, eax                                      // 0x0057103c    33c0
_jmp_addr_0x0057103e:    push               0x000000e2                                    // 0x0057103e    68e2000000
                         push               0x00bef1b8                                    // 0x00571043    68b8f1be00
                         push               0x00000244                                    // 0x00571048    6844020000
                         {disp32} mov       dword ptr [ebp + 0x000000c0], eax             // 0x0057104d    8985c0000000
                         call               ___nw__FUl                                    // 0x00571053    e838a72600
                         mov.s              edi, eax                                      // 0x00571058    8bf8
                         add                esp, 0x0c                                     // 0x0057105a    83c40c
                         cmp.s              edi, ebx                                      // 0x0057105d    3bfb
                         {disp8} je         _jmp_addr_0x005710cf                          // 0x0057105f    746e
                         push               0x14                                          // 0x00571061    6a14
                         call               _jmp_addr_0x00411fc0                          // 0x00571063    e8580feaff
                         {disp8} lea        ecx, dword ptr [esi + -0x35]                  // 0x00571068    8d4ecb
                         push               ecx                                           // 0x0057106b    51
                         {disp8} mov        dword ptr [esp + 0x2c], eax                   // 0x0057106c    8944242c
                         call               _jmp_addr_0x00411fc0                          // 0x00571070    e84b0feaff
                         {disp8} mov        edx, dword ptr [esp + 0x28]                   // 0x00571075    8b542428
                         add                edx, -0x22                                    // 0x00571079    83c2de
                         push               edx                                           // 0x0057107c    52
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x0057107d    89442424
                         call               _jmp_addr_0x00411f10                          // 0x00571081    e88a0eeaff
                         push               0x30                                          // 0x00571086    6a30
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x00571088    89442424
                         call               _jmp_addr_0x00411dd0                          // 0x0057108c    e83f0deaff
                         {disp8} mov        ecx, dword ptr [esp + 0x34]                   // 0x00571091    8b4c2434
                         {disp8} mov        edx, dword ptr [esp + 0x28]                   // 0x00571095    8b542428
                         add                esp, 0x10                                     // 0x00571099    83c410
                         push               0x00c4cd30                                    // 0x0057109c    6830cdc400
                         push               ecx                                           // 0x005710a1    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x005710a2    8b4c241c
                         push               edx                                           // 0x005710a6    52
                         push               ecx                                           // 0x005710a7    51
                         push               eax                                           // 0x005710a8    50
                         push               0x000003e8                                    // 0x005710a9    68e8030000
                         mov.s              ecx, edi                                      // 0x005710ae    8bcf
                         call               ??0SetupControl@@QAE@HHHHHPA_W@Z              // 0x005710b0    e89b81e9ff
                         {disp32} mov       dword ptr [edi + 0x0000023c], ebx             // 0x005710b5    899f3c020000
                         {disp32} mov       byte ptr [edi + 0x0000022a], bl               // 0x005710bb    889f2a020000
                         {disp32} mov       dword ptr [edi + 0x00000240], ebx             // 0x005710c1    899f40020000
                         mov                dword ptr [edi], 0x00900098                   // 0x005710c7    c70798009000
                         {disp8} jmp        _jmp_addr_0x005710d1                          // 0x005710cd    eb02
_jmp_addr_0x005710cf:    xor.s              edi, edi                                      // 0x005710cf    33ff
_jmp_addr_0x005710d1:    push               0x000000e4                                    // 0x005710d1    68e4000000
                         push               0x00bef1b8                                    // 0x005710d6    68b8f1be00
                         {disp32} mov       dword ptr [ebp + 0x000000b8], edi             // 0x005710db    89bdb8000000
                         push               0x0000025c                                    // 0x005710e1    685c020000
                         {disp8} mov        dword ptr [edi + 0x20], 0x00000012            // 0x005710e6    c7472012000000
                         call               ___nw__FUl                                    // 0x005710ed    e89ea62600
                         mov.s              edi, eax                                      // 0x005710f2    8bf8
                         add                esp, 0x0c                                     // 0x005710f4    83c40c
                         cmp.s              edi, ebx                                      // 0x005710f7    3bfb
                         {disp8} je         _jmp_addr_0x0057112e                          // 0x005710f9    7433
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x005710fb    8b542410
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x005710ff    8b442420
                         push               0x5                                           // 0x00571103    6a05
                         push               ebx                                           // 0x00571105    53
                         push               edx                                           // 0x00571106    52
                         add                eax, -0x30                                    // 0x00571107    83c0d0
                         push               0x00c4cd30                                    // 0x0057110a    6830cdc400
                         push               eax                                           // 0x0057110f    50
                         call               _jmp_addr_0x00411f10                          // 0x00571110    e8fb0deaff
                         add                esp, 0x04                                     // 0x00571115    83c404
                         push               eax                                           // 0x00571118    50
                         push               ebx                                           // 0x00571119    53
                         call               _jmp_addr_0x00411dd0                          // 0x0057111a    e8b10ceaff
                         add                esp, 0x04                                     // 0x0057111f    83c404
                         push               eax                                           // 0x00571122    50
                         push               0xb                                           // 0x00571123    6a0b
                         mov.s              ecx, edi                                      // 0x00571125    8bcf
                         call               @__ct__14SetupBigButtonFiiiPwiii@36           // 0x00571127    e834c1e9ff
                         {disp8} jmp        _jmp_addr_0x00571130                          // 0x0057112c    eb02
_jmp_addr_0x0057112e:    xor.s              eax, eax                                      // 0x0057112e    33c0
_jmp_addr_0x00571130:    push               0x000000e5                                    // 0x00571130    68e5000000
                         push               0x00bef1b8                                    // 0x00571135    68b8f1be00
                         push               0x0000025c                                    // 0x0057113a    685c020000
                         {disp32} mov       dword ptr [ebp + 0x000000c4], eax             // 0x0057113f    8985c4000000
                         call               ___nw__FUl                                    // 0x00571145    e846a62600
                         mov.s              edi, eax                                      // 0x0057114a    8bf8
                         add                esp, 0x0c                                     // 0x0057114c    83c40c
                         cmp.s              edi, ebx                                      // 0x0057114f    3bfb
                         {disp8} je         _jmp_addr_0x00571182                          // 0x00571151    742f
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x00571153    8b4c241c
                         push               0x5                                           // 0x00571157    6a05
                         push               ebx                                           // 0x00571159    53
                         push               ecx                                           // 0x0057115a    51
                         push               0x00c4cd30                                    // 0x0057115b    6830cdc400
                         push               ebx                                           // 0x00571160    53
                         call               _jmp_addr_0x00411f10                          // 0x00571161    e8aa0deaff
                         add                esp, 0x04                                     // 0x00571166    83c404
                         push               eax                                           // 0x00571169    50
                         {disp8} lea        edx, dword ptr [esi + -0x14]                  // 0x0057116a    8d56ec
                         push               edx                                           // 0x0057116d    52
                         call               _jmp_addr_0x00411dd0                          // 0x0057116e    e85d0ceaff
                         add                esp, 0x04                                     // 0x00571173    83c404
                         push               eax                                           // 0x00571176    50
                         push               0xc                                           // 0x00571177    6a0c
                         mov.s              ecx, edi                                      // 0x00571179    8bcf
                         call               @__ct__14SetupBigButtonFiiiPwiii@36           // 0x0057117b    e8e0c0e9ff
                         {disp8} jmp        _jmp_addr_0x00571184                          // 0x00571180    eb02
_jmp_addr_0x00571182:    xor.s              eax, eax                                      // 0x00571182    33c0
_jmp_addr_0x00571184:    push               0x000000e7                                    // 0x00571184    68e7000000
                         push               0x00bef1b8                                    // 0x00571189    68b8f1be00
                         push               0x00000244                                    // 0x0057118e    6844020000
                         {disp32} mov       dword ptr [ebp + 0x000000c8], eax             // 0x00571193    8985c8000000
                         call               ___nw__FUl                                    // 0x00571199    e8f2a52600
                         mov.s              edi, eax                                      // 0x0057119e    8bf8
                         add                esp, 0x0c                                     // 0x005711a0    83c40c
                         cmp.s              edi, ebx                                      // 0x005711a3    3bfb
                         {disp8} je         _jmp_addr_0x005711eb                          // 0x005711a5    7444
                         push               ebx                                           // 0x005711a7    53
                         push               0x00c4cd30                                    // 0x005711a8    6830cdc400
                         push               0x14                                          // 0x005711ad    6a14
                         call               _jmp_addr_0x00411fc0                          // 0x005711af    e80c0eeaff
                         add                esp, 0x04                                     // 0x005711b4    83c404
                         push               eax                                           // 0x005711b7    50
                         push               0x00000082                                    // 0x005711b8    6882000000
                         call               _jmp_addr_0x00411fc0                          // 0x005711bd    e8fe0deaff
                         add                esp, 0x04                                     // 0x005711c2    83c404
                         push               eax                                           // 0x005711c5    50
                         push               ebx                                           // 0x005711c6    53
                         call               _jmp_addr_0x00411f10                          // 0x005711c7    e8440deaff
                         add                esp, 0x04                                     // 0x005711cc    83c404
                         push               eax                                           // 0x005711cf    50
                         {disp32} lea       eax, dword ptr [esi + -0x00000082]            // 0x005711d0    8d867effffff
                         push               eax                                           // 0x005711d6    50
                         call               _jmp_addr_0x00411dd0                          // 0x005711d7    e8f40beaff
                         add                esp, 0x04                                     // 0x005711dc    83c404
                         push               eax                                           // 0x005711df    50
                         push               0x6                                           // 0x005711e0    6a06
                         mov.s              ecx, edi                                      // 0x005711e2    8bcf
                         call               @__ct__10SetupButtonFiiiiiPwi@36              // 0x005711e4    e8c786e9ff
                         {disp8} jmp        _jmp_addr_0x005711ed                          // 0x005711e9    eb02
_jmp_addr_0x005711eb:    xor.s              eax, eax                                      // 0x005711eb    33c0
_jmp_addr_0x005711ed:    push               0x000000ea                                    // 0x005711ed    68ea000000
                         push               0x00bef1b8                                    // 0x005711f2    68b8f1be00
                         push               0x00000468                                    // 0x005711f7    6868040000
                         {disp32} mov       dword ptr [ebp + 0x000000cc], eax             // 0x005711fc    8985cc000000
                         call               ___nw__FUl                                    // 0x00571202    e889a52600
                         add                esp, 0x0c                                     // 0x00571207    83c40c
                         cmp.s              eax, ebx                                      // 0x0057120a    3bc3
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0057120c    89442410
                         {disp8} je         _jmp_addr_0x0057125e                          // 0x00571210    744c
                         mov.s              eax, esi                                      // 0x00571212    8bc6
                         cdq                                                              // 0x00571214    99
                         push               0x1                                           // 0x00571215    6a01
                         sub.s              eax, edx                                      // 0x00571217    2bc2
                         mov.s              edi, eax                                      // 0x00571219    8bf8
                         push               0x00c4cd30                                    // 0x0057121b    6830cdc400
                         push               0x14                                          // 0x00571220    6a14
                         sar                edi, 1                                        // 0x00571222    d1ff
                         call               _jmp_addr_0x00411fc0                          // 0x00571224    e8970deaff
                         add                esp, 0x04                                     // 0x00571229    83c404
                         push               eax                                           // 0x0057122c    50
                         {disp8} lea        ecx, dword ptr [edi + -0x28]                  // 0x0057122d    8d4fd8
                         push               ecx                                           // 0x00571230    51
                         call               _jmp_addr_0x00411fc0                          // 0x00571231    e88a0deaff
                         add                esp, 0x04                                     // 0x00571236    83c404
                         push               eax                                           // 0x00571239    50
                         push               ebx                                           // 0x0057123a    53
                         call               _jmp_addr_0x00411f10                          // 0x0057123b    e8d00ceaff
                         add                esp, 0x04                                     // 0x00571240    83c404
                         push               eax                                           // 0x00571243    50
                         add                edi, 0x14                                     // 0x00571244    83c714
                         push               edi                                           // 0x00571247    57
                         call               _jmp_addr_0x00411dd0                          // 0x00571248    e8830beaff
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                   // 0x0057124d    8b4c2428
                         add                esp, 0x04                                     // 0x00571251    83c404
                         push               eax                                           // 0x00571254    50
                         push               0x4                                           // 0x00571255    6a04
                         call               @__ct__9SetupEditFiiiiiPwi@33                 // 0x00571257    e8c4afe9ff
                         {disp8} jmp        _jmp_addr_0x00571260                          // 0x0057125c    eb02
_jmp_addr_0x0057125e:    xor.s              eax, eax                                      // 0x0057125e    33c0
_jmp_addr_0x00571260:    push               0x12                                          // 0x00571260    6a12
                         {disp32} mov       dword ptr [ebp + 0x000000ac], eax             // 0x00571262    8985ac000000
                         call               _jmp_addr_0x00411fc0                          // 0x00571268    e8530deaff
                         {disp32} mov       edx, dword ptr [ebp + 0x000000ac]             // 0x0057126d    8b95ac000000
                         {disp8} mov        dword ptr [edx + 0x20], eax                   // 0x00571273    894220
                         {disp32} mov       eax, dword ptr [ebp + 0x000000ac]             // 0x00571276    8b85ac000000
                         {disp32} mov       ecx, dword ptr [ebp + 0x000000cc]             // 0x0057127c    8b8dcc000000
                         {disp8} mov        edx, dword ptr [eax + 0x20]                   // 0x00571282    8b5020
                         push               0x000000ee                                    // 0x00571285    68ee000000
                         push               0x00bef1b8                                    // 0x0057128a    68b8f1be00
                         push               0x000002b0                                    // 0x0057128f    68b0020000
                         {disp8} mov        dword ptr [ecx + 0x20], edx                   // 0x00571294    895120
                         call               ___nw__FUl                                    // 0x00571297    e8f4a42600
                         mov.s              edi, eax                                      // 0x0057129c    8bf8
                         add                esp, 0x10                                     // 0x0057129e    83c410
                         cmp.s              edi, ebx                                      // 0x005712a1    3bfb
                         {disp8} je         _jmp_addr_0x005712e4                          // 0x005712a3    743f
                         push               0x64                                          // 0x005712a5    6a64
                         call               _jmp_addr_0x00411fc0                          // 0x005712a7    e8140deaff
                         add                esp, 0x04                                     // 0x005712ac    83c404
                         push               eax                                           // 0x005712af    50
                         push               0x00000082                                    // 0x005712b0    6882000000
                         call               _jmp_addr_0x00411fc0                          // 0x005712b5    e8060deaff
                         add                esp, 0x04                                     // 0x005712ba    83c404
                         push               eax                                           // 0x005712bd    50
                         push               0x14                                          // 0x005712be    6a14
                         call               _jmp_addr_0x00411f10                          // 0x005712c0    e84b0ceaff
                         add                esp, 0x04                                     // 0x005712c5    83c404
                         push               eax                                           // 0x005712c8    50
                         {disp32} lea       eax, dword ptr [esi + -0x00000082]            // 0x005712c9    8d867effffff
                         push               eax                                           // 0x005712cf    50
                         call               _jmp_addr_0x00411dd0                          // 0x005712d0    e8fb0aeaff
                         add                esp, 0x04                                     // 0x005712d5    83c404
                         push               eax                                           // 0x005712d8    50
                         push               0x5                                           // 0x005712d9    6a05
                         mov.s              ecx, edi                                      // 0x005712db    8bcf
                         call               @__ct__9SetupListFiiiii@28                    // 0x005712dd    e86e91e9ff
                         {disp8} jmp        _jmp_addr_0x005712e6                          // 0x005712e2    eb02
_jmp_addr_0x005712e4:    xor.s              eax, eax                                      // 0x005712e4    33c0
_jmp_addr_0x005712e6:    {disp32} mov       ecx, dword ptr [ebp + 0x000000ac]             // 0x005712e6    8b8dac000000
                         {disp32} mov       dword ptr [ebp + 0x000000b0], eax             // 0x005712ec    8985b0000000
                         {disp8} mov        edx, dword ptr [ecx + 0x20]                   // 0x005712f2    8b5120
                         {disp8} mov        dword ptr [eax + 0x20], edx                   // 0x005712f5    895020
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x005712f8    8b44241c
                         {disp32} mov       ecx, dword ptr [ebp + 0x000000b0]             // 0x005712fc    8b8db0000000
                         add                eax, -0x02                                    // 0x00571302    83c0fe
                         {disp32} mov       dword ptr [ecx + 0x00000240], eax             // 0x00571305    898140020000
                         {disp32} mov       edx, dword ptr [ebp + 0x000000b0]             // 0x0057130b    8b95b0000000
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x00571311    89442418
                         {disp32} mov       byte ptr [edx + 0x00000291], bl               // 0x00571315    889a91020000
                         {disp32} mov       dword ptr [ebp + 0x000000d0], 0x00d06100      // 0x0057131b    c785d00000000061d000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf058]        // 0x00571325    a15850e800
                         and                eax, 0x0000ffff                               // 0x0057132a    25ffff0000
                         add                eax, -0x32                                    // 0x0057132f    83c0ce
                         cmp                eax, 0x00000208                               // 0x00571332    3d08020000
                         mov                edi, 0x00000208                               // 0x00571337    bf08020000
                         {disp8} jg         _jmp_addr_0x00571340                          // 0x0057133c    7f02
                         mov.s              edi, eax                                      // 0x0057133e    8bf8
_jmp_addr_0x00571340:    push               0x000000f5                                    // 0x00571340    68f5000000
                         push               0x00bef1b8                                    // 0x00571345    68b8f1be00
                         push               0x000002b0                                    // 0x0057134a    68b0020000
                         call               ___nw__FUl                                    // 0x0057134f    e83ca42600
                         add                esp, 0x0c                                     // 0x00571354    83c40c
                         cmp.s              eax, ebx                                      // 0x00571357    3bc3
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x00571359    89442414
                         {disp8} je         _jmp_addr_0x005713b1                          // 0x0057135d    7452
                         {disp32} mov       cx, word ptr [data_bytes + 0x4bf05a]          // 0x0057135f    668b0d5a50e800
                         {disp8} mov        word ptr [esp + 0x10], cx                     // 0x00571366    66894c2410
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x0057136b    8b542410
                         and                edx, 0x0000ffff                               // 0x0057136f    81e2ffff0000
                         shr                edx, 1                                        // 0x00571375    d1ea
                         push               edx                                           // 0x00571377    52
                         call               _jmp_addr_0x00411fc0                          // 0x00571378    e8430ceaff
                         add                esp, 0x04                                     // 0x0057137d    83c404
                         push               eax                                           // 0x00571380    50
                         push               edi                                           // 0x00571381    57
                         call               _jmp_addr_0x00411fc0                          // 0x00571382    e8390ceaff
                         add                esp, 0x04                                     // 0x00571387    83c404
                         push               eax                                           // 0x0057138a    50
                         push               0x14                                          // 0x0057138b    6a14
                         call               _jmp_addr_0x00411f10                          // 0x0057138d    e87e0beaff
                         add                esp, 0x04                                     // 0x00571392    83c404
                         push               eax                                           // 0x00571395    50
                         mov.s              eax, esi                                      // 0x00571396    8bc6
                         sub.s              eax, edi                                      // 0x00571398    2bc7
                         push               eax                                           // 0x0057139a    50
                         call               _jmp_addr_0x00411dd0                          // 0x0057139b    e8300aeaff
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x005713a0    8b4c2424
                         add                esp, 0x04                                     // 0x005713a4    83c404
                         push               eax                                           // 0x005713a7    50
                         push               0x5                                           // 0x005713a8    6a05
                         call               @__ct__9SetupListFiiiii@28                    // 0x005713aa    e8a190e9ff
                         {disp8} jmp        _jmp_addr_0x005713b3                          // 0x005713af    eb02
_jmp_addr_0x005713b1:    xor.s              eax, eax                                      // 0x005713b1    33c0
_jmp_addr_0x005713b3:    {disp32} mov       ecx, dword ptr [ebp + 0x000000ac]             // 0x005713b3    8b8dac000000
                         {disp32} mov       dword ptr [ebp + 0x000000b4], eax             // 0x005713b9    8985b4000000
                         {disp8} mov        edx, dword ptr [ecx + 0x20]                   // 0x005713bf    8b5120
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x005713c2    8b4c2418
                         {disp8} mov        dword ptr [eax + 0x20], edx                   // 0x005713c6    895020
                         {disp32} mov       eax, dword ptr [ebp + 0x000000b4]             // 0x005713c9    8b85b4000000
                         {disp32} mov       dword ptr [eax + 0x00000240], ecx             // 0x005713cf    898840020000
                         {disp32} mov       edx, dword ptr [ebp + 0x000000b4]             // 0x005713d5    8b95b4000000
                         mov                eax, 0x00000859                               // 0x005713db    b859080000
                         {disp32} mov       byte ptr [edx + 0x00000290], bl               // 0x005713e0    889a90020000
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x005713e6    89442420
                         {disp8} mov        dword ptr [esp + 0x1c], 0x0000642c            // 0x005713ea    c744241c2c640000
                         {disp8} jmp        _jmp_addr_0x005713f8                          // 0x005713f2    eb04
_jmp_addr_0x005713f4:    {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x005713f4    8b442420
_jmp_addr_0x005713f8:    cmp                eax, dword ptr [data_bytes + 0x351cac]        // 0x005713f8    3b05ac7cd100
                         {disp8} jae        _jmp_addr_0x00571404                          // 0x005713fe    7304
                         cmp.s              eax, ebx                                      // 0x00571400    3bc3
                         {disp8} ja         _jmp_addr_0x0057140b                          // 0x00571402    7707
_jmp_addr_0x00571404:    {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00571404    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x00571416                          // 0x00571409    eb0b
_jmp_addr_0x0057140b:    {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0057140b    a1a87cd100
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x00571410    8b4c241c
                         add.s              eax, ecx                                      // 0x00571414    03c1
_jmp_addr_0x00571416:    {disp32} mov       edi, dword ptr [ebp + 0x000000b4]             // 0x00571416    8bbdb4000000
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0057141c    8b5008
                         {disp32} mov       eax, dword ptr [edi + 0x00000250]             // 0x0057141f    8b8750020000
                         push               edx                                           // 0x00571425    52
                         push               eax                                           // 0x00571426    50
                         mov.s              ecx, edi                                      // 0x00571427    8bcf
                         call               @InsertString__9SetupListFiPw@16              // 0x00571429    e8429ae9ff
                         {disp32} mov       ecx, dword ptr [edi + 0x00000250]             // 0x0057142e    8b8f50020000
                         {disp8} lea        eax, dword ptr [ecx + -0x01]                  // 0x00571434    8d41ff
                         cmp.s              eax, ebx                                      // 0x00571437    3bc3
                         {disp8} jl         _jmp_addr_0x00571448                          // 0x00571439    7c0d
                         cmp.s              eax, ecx                                      // 0x0057143b    3bc1
                         {disp8} jge        _jmp_addr_0x00571448                          // 0x0057143d    7d09
                         {disp32} mov       ecx, dword ptr [edi + 0x00000268]             // 0x0057143f    8b8f68020000
                         mov                dword ptr [ecx + eax * 0x4], ebx              // 0x00571445    891c81
_jmp_addr_0x00571448:    {disp8} mov        edi, dword ptr [esp + 0x1c]                   // 0x00571448    8b7c241c
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x0057144c    8b442420
                         add                edi, 0x0c                                     // 0x00571450    83c70c
                         inc                eax                                           // 0x00571453    40
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x00571454    89442420
                         add                eax, 0xfffff7a7                               // 0x00571458    05a7f7ffff
                         cmp                eax, 0x1f                                     // 0x0057145d    83f81f
                         {disp8} mov        dword ptr [esp + 0x1c], edi                   // 0x00571460    897c241c
                         {disp8} jl         _jmp_addr_0x005713f4                          // 0x00571464    7c8e
                         {disp32} mov       ecx, dword ptr [ebp + 0x000000b4]             // 0x00571466    8b8db4000000
                         mov                edx, dword ptr [ecx]                          // 0x0057146c    8b11
                         push               0x1                                           // 0x0057146e    6a01
                         call               dword ptr [edx + 8]                           // 0x00571470    ff5208
                         call               _GetSmallTextSize__Fv                         // 0x00571473    e89865e9ff
                         {disp8} mov        ecx, dword ptr [ebp + 0x04]                   // 0x00571478    8b4d04
                         push               0x00000102                                    // 0x0057147b    6802010000
                         push               0x00bef1b8                                    // 0x00571480    68b8f1be00
                         push               0x00000250                                    // 0x00571485    6850020000
                         {disp32} mov       dword ptr [ecx + 0x000000ac], eax             // 0x0057148a    8981ac000000
                         call               ___nw__FUl                                    // 0x00571490    e8fba22600
                         mov.s              edi, eax                                      // 0x00571495    8bf8
                         add                esp, 0x0c                                     // 0x00571497    83c40c
                         cmp.s              edi, ebx                                      // 0x0057149a    3bfb
                         {disp8} je         _jmp_addr_0x00571518                          // 0x0057149c    747a
                         push               0x14                                          // 0x0057149e    6a14
                         call               _jmp_addr_0x00411fc0                          // 0x005714a0    e81b0beaff
                         push               0x14                                          // 0x005714a5    6a14
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x005714a7    89442418
                         call               _jmp_addr_0x00411fc0                          // 0x005714ab    e8100beaff
                         push               ebx                                           // 0x005714b0    53
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x005714b1    89442420
                         call               _jmp_addr_0x00411f10                          // 0x005714b5    e8560aeaff
                         {disp8} lea        edx, dword ptr [esi + -0x14]                  // 0x005714ba    8d56ec
                         push               edx                                           // 0x005714bd    52
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x005714be    89442428
                         call               _jmp_addr_0x00411dd0                          // 0x005714c2    e80909eaff
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x005714c7    8b4c2420
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x005714cb    8b542424
                         add                esp, 0x10                                     // 0x005714cf    83c410
                         push               0x1                                           // 0x005714d2    6a01
                         push               0x00c4cd30                                    // 0x005714d4    6830cdc400
                         push               ecx                                           // 0x005714d9    51
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x005714da    8b4c2424
                         push               edx                                           // 0x005714de    52
                         push               ecx                                           // 0x005714df    51
                         push               eax                                           // 0x005714e0    50
                         push               0x00010428                                    // 0x005714e1    6828040100
                         mov.s              ecx, edi                                      // 0x005714e6    8bcf
                         call               @__ct__10SetupButtonFiiiiiPwi@36              // 0x005714e8    e8c383e9ff
                         mov                dword ptr [edi], 0x00900060                   // 0x005714ed    c70760009000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x286cf8]        // 0x005714f3    8b15f8ccc400
                         {disp32} mov       dword ptr [edi + 0x0000024c], edx             // 0x005714f9    89974c020000
                         {disp32} mov       dword ptr [edi + 0x00000248], 0x00000001      // 0x005714ff    c7874802000001000000
                         {disp8} mov        dword ptr [edi + 0x1c], ebx                   // 0x00571509    895f1c
                         {disp32} mov       dword ptr [edi + 0x00000244], 0x0000000a      // 0x0057150c    c787440200000a000000
                         {disp8} jmp        _jmp_addr_0x0057151a                          // 0x00571516    eb02
_jmp_addr_0x00571518:    xor.s              edi, edi                                      // 0x00571518    33ff
_jmp_addr_0x0057151a:    push               0x00000105                                    // 0x0057151a    6805010000
                         push               0x00bef1b8                                    // 0x0057151f    68b8f1be00
                         {disp8} mov        dword ptr [ebp + 0x28], edi                   // 0x00571524    897d28
                         push               0x00000250                                    // 0x00571527    6850020000
                         {disp32} mov       dword ptr [edi + 0x00000248], ebx             // 0x0057152c    899f48020000
                         call               ___nw__FUl                                    // 0x00571532    e859a22600
                         mov.s              edi, eax                                      // 0x00571537    8bf8
                         add                esp, 0x0c                                     // 0x00571539    83c40c
                         cmp.s              edi, ebx                                      // 0x0057153c    3bfb
                         {disp8} je         _jmp_addr_0x005715b8                          // 0x0057153e    7478
                         push               0x14                                          // 0x00571540    6a14
                         call               _jmp_addr_0x00411fc0                          // 0x00571542    e8790aeaff
                         push               0x28                                          // 0x00571547    6a28
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x00571549    89442418
                         call               _jmp_addr_0x00411fc0                          // 0x0057154d    e86e0aeaff
                         push               0x14                                          // 0x00571552    6a14
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x00571554    89442420
                         call               _jmp_addr_0x00411f10                          // 0x00571558    e8b309eaff
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x0057155d    89442424
                         {disp32} lea       eax, dword ptr [esi + -0x000000a0]            // 0x00571561    8d8660ffffff
                         push               eax                                           // 0x00571567    50
                         call               _jmp_addr_0x00411dd0                          // 0x00571568    e86308eaff
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x0057156d    8b4c2420
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x00571571    8b542424
                         add                esp, 0x10                                     // 0x00571575    83c410
                         push               0x1                                           // 0x00571578    6a01
                         push               0x00c4cd30                                    // 0x0057157a    6830cdc400
                         push               ecx                                           // 0x0057157f    51
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x00571580    8b4c2424
                         push               edx                                           // 0x00571584    52
                         push               ecx                                           // 0x00571585    51
                         push               eax                                           // 0x00571586    50
                         push               0x00010429                                    // 0x00571587    6829040100
                         mov.s              ecx, edi                                      // 0x0057158c    8bcf
                         call               @__ct__10SetupButtonFiiiiiPwi@36              // 0x0057158e    e81d83e9ff
                         mov                dword ptr [edi], 0x00900060                   // 0x00571593    c70760009000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x286cf8]        // 0x00571599    8b15f8ccc400
                         {disp32} mov       dword ptr [edi + 0x0000024c], edx             // 0x0057159f    89974c020000
                         {disp32} mov       dword ptr [edi + 0x00000248], 0x00000001      // 0x005715a5    c7874802000001000000
                         {disp8} mov        dword ptr [edi + 0x1c], ebx                   // 0x005715af    895f1c
                         {disp32} mov       dword ptr [edi + 0x00000244], ebx             // 0x005715b2    899f44020000
_jmp_addr_0x005715b8:    push               0x00000106                                    // 0x005715b8    6806010000
                         push               0x00bef1b8                                    // 0x005715bd    68b8f1be00
                         push               0x00000250                                    // 0x005715c2    6850020000
                         call               ___nw__FUl                                    // 0x005715c7    e8c4a12600
                         mov.s              edi, eax                                      // 0x005715cc    8bf8
                         add                esp, 0x0c                                     // 0x005715ce    83c40c
                         cmp.s              edi, ebx                                      // 0x005715d1    3bfb
                         {disp8} je         _jmp_addr_0x0057164b                          // 0x005715d3    7476
                         push               0x14                                          // 0x005715d5    6a14
                         call               _jmp_addr_0x00411fc0                          // 0x005715d7    e8e409eaff
                         push               0x14                                          // 0x005715dc    6a14
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x005715de    89442418
                         call               _jmp_addr_0x00411fc0                          // 0x005715e2    e8d909eaff
                         push               0x14                                          // 0x005715e7    6a14
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x005715e9    89442420
                         call               _jmp_addr_0x00411f10                          // 0x005715ed    e81e09eaff
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x005715f2    89442424
                         {disp8} lea        eax, dword ptr [esi + -0x78]                  // 0x005715f6    8d4688
                         push               eax                                           // 0x005715f9    50
                         call               _jmp_addr_0x00411dd0                          // 0x005715fa    e8d107eaff
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x005715ff    8b4c2420
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x00571603    8b542424
                         add                esp, 0x10                                     // 0x00571607    83c410
                         push               0x1                                           // 0x0057160a    6a01
                         push               0x00c4cd30                                    // 0x0057160c    6830cdc400
                         push               ecx                                           // 0x00571611    51
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x00571612    8b4c2424
                         push               edx                                           // 0x00571616    52
                         push               ecx                                           // 0x00571617    51
                         push               eax                                           // 0x00571618    50
                         push               0x0001042a                                    // 0x00571619    682a040100
                         mov.s              ecx, edi                                      // 0x0057161e    8bcf
                         call               @__ct__10SetupButtonFiiiiiPwi@36              // 0x00571620    e88b82e9ff
                         mov                dword ptr [edi], 0x00900060                   // 0x00571625    c70760009000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x286cf8]        // 0x0057162b    8b15f8ccc400
                         mov                eax, 0x00000001                               // 0x00571631    b801000000
                         {disp32} mov       dword ptr [edi + 0x0000024c], edx             // 0x00571636    89974c020000
                         {disp32} mov       dword ptr [edi + 0x00000248], eax             // 0x0057163c    898748020000
                         {disp8} mov        dword ptr [edi + 0x1c], ebx                   // 0x00571642    895f1c
                         {disp32} mov       dword ptr [edi + 0x00000244], eax             // 0x00571645    898744020000
_jmp_addr_0x0057164b:    push               0x00000107                                    // 0x0057164b    6807010000
                         push               0x00bef1b8                                    // 0x00571650    68b8f1be00
                         push               0x00000250                                    // 0x00571655    6850020000
                         call               ___nw__FUl                                    // 0x0057165a    e831a12600
                         mov.s              edi, eax                                      // 0x0057165f    8bf8
                         add                esp, 0x0c                                     // 0x00571661    83c40c
                         cmp.s              edi, ebx                                      // 0x00571664    3bfb
                         {disp8} je         _jmp_addr_0x005716e1                          // 0x00571666    7479
                         push               0x14                                          // 0x00571668    6a14
                         call               _jmp_addr_0x00411fc0                          // 0x0057166a    e85109eaff
                         push               0x14                                          // 0x0057166f    6a14
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x00571671    89442418
                         call               _jmp_addr_0x00411fc0                          // 0x00571675    e84609eaff
                         push               0x14                                          // 0x0057167a    6a14
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x0057167c    89442420
                         call               _jmp_addr_0x00411f10                          // 0x00571680    e88b08eaff
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x00571685    89442424
                         {disp8} lea        eax, dword ptr [esi + -0x64]                  // 0x00571689    8d469c
                         push               eax                                           // 0x0057168c    50
                         call               _jmp_addr_0x00411dd0                          // 0x0057168d    e83e07eaff
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x00571692    8b4c2420
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x00571696    8b542424
                         add                esp, 0x10                                     // 0x0057169a    83c410
                         push               0x1                                           // 0x0057169d    6a01
                         push               0x00c4cd30                                    // 0x0057169f    6830cdc400
                         push               ecx                                           // 0x005716a4    51
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x005716a5    8b4c2424
                         push               edx                                           // 0x005716a9    52
                         push               ecx                                           // 0x005716aa    51
                         push               eax                                           // 0x005716ab    50
                         push               0x0001042b                                    // 0x005716ac    682b040100
                         mov.s              ecx, edi                                      // 0x005716b1    8bcf
                         call               @__ct__10SetupButtonFiiiiiPwi@36              // 0x005716b3    e8f881e9ff
                         mov                dword ptr [edi], 0x00900060                   // 0x005716b8    c70760009000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x286cf8]        // 0x005716be    8b15f8ccc400
                         {disp32} mov       dword ptr [edi + 0x0000024c], edx             // 0x005716c4    89974c020000
                         {disp32} mov       dword ptr [edi + 0x00000248], 0x00000001      // 0x005716ca    c7874802000001000000
                         {disp8} mov        dword ptr [edi + 0x1c], ebx                   // 0x005716d4    895f1c
                         {disp32} mov       dword ptr [edi + 0x00000244], 0x00000002      // 0x005716d7    c7874402000002000000
_jmp_addr_0x005716e1:    push               0x00000108                                    // 0x005716e1    6808010000
                         push               0x00bef1b8                                    // 0x005716e6    68b8f1be00
                         push               0x00000250                                    // 0x005716eb    6850020000
                         call               ___nw__FUl                                    // 0x005716f0    e89ba02600
                         mov.s              edi, eax                                      // 0x005716f5    8bf8
                         add                esp, 0x0c                                     // 0x005716f7    83c40c
                         cmp.s              edi, ebx                                      // 0x005716fa    3bfb
                         {disp8} je         _jmp_addr_0x00571777                          // 0x005716fc    7479
                         push               0x14                                          // 0x005716fe    6a14
                         call               _jmp_addr_0x00411fc0                          // 0x00571700    e8bb08eaff
                         push               0x14                                          // 0x00571705    6a14
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x00571707    89442418
                         call               _jmp_addr_0x00411fc0                          // 0x0057170b    e8b008eaff
                         push               0x14                                          // 0x00571710    6a14
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x00571712    89442420
                         call               _jmp_addr_0x00411f10                          // 0x00571716    e8f507eaff
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x0057171b    89442424
                         {disp8} lea        eax, dword ptr [esi + -0x50]                  // 0x0057171f    8d46b0
                         push               eax                                           // 0x00571722    50
                         call               _jmp_addr_0x00411dd0                          // 0x00571723    e8a806eaff
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x00571728    8b4c2420
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x0057172c    8b542424
                         add                esp, 0x10                                     // 0x00571730    83c410
                         push               0x1                                           // 0x00571733    6a01
                         push               0x00c4cd30                                    // 0x00571735    6830cdc400
                         push               ecx                                           // 0x0057173a    51
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x0057173b    8b4c2424
                         push               edx                                           // 0x0057173f    52
                         push               ecx                                           // 0x00571740    51
                         push               eax                                           // 0x00571741    50
                         push               0x0001042c                                    // 0x00571742    682c040100
                         mov.s              ecx, edi                                      // 0x00571747    8bcf
                         call               @__ct__10SetupButtonFiiiiiPwi@36              // 0x00571749    e86281e9ff
                         mov                dword ptr [edi], 0x00900060                   // 0x0057174e    c70760009000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x286cf8]        // 0x00571754    8b15f8ccc400
                         {disp32} mov       dword ptr [edi + 0x0000024c], edx             // 0x0057175a    89974c020000
                         {disp32} mov       dword ptr [edi + 0x00000248], 0x00000001      // 0x00571760    c7874802000001000000
                         {disp8} mov        dword ptr [edi + 0x1c], ebx                   // 0x0057176a    895f1c
                         {disp32} mov       dword ptr [edi + 0x00000244], 0x00000004      // 0x0057176d    c7874402000004000000
_jmp_addr_0x00571777:    push               0x00000109                                    // 0x00571777    6809010000
                         push               0x00bef1b8                                    // 0x0057177c    68b8f1be00
                         push               0x00000250                                    // 0x00571781    6850020000
                         call               ___nw__FUl                                    // 0x00571786    e805a02600
                         mov.s              edi, eax                                      // 0x0057178b    8bf8
                         add                esp, 0x0c                                     // 0x0057178d    83c40c
                         cmp.s              edi, ebx                                      // 0x00571790    3bfb
                         {disp8} je         _jmp_addr_0x0057180d                          // 0x00571792    7479
                         push               0x14                                          // 0x00571794    6a14
                         call               _jmp_addr_0x00411fc0                          // 0x00571796    e82508eaff
                         push               0x14                                          // 0x0057179b    6a14
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x0057179d    89442418
                         call               _jmp_addr_0x00411fc0                          // 0x005717a1    e81a08eaff
                         push               0x14                                          // 0x005717a6    6a14
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x005717a8    89442420
                         call               _jmp_addr_0x00411f10                          // 0x005717ac    e85f07eaff
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x005717b1    89442424
                         {disp8} lea        eax, dword ptr [esi + -0x3c]                  // 0x005717b5    8d46c4
                         push               eax                                           // 0x005717b8    50
                         call               _jmp_addr_0x00411dd0                          // 0x005717b9    e81206eaff
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x005717be    8b4c2420
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x005717c2    8b542424
                         add                esp, 0x10                                     // 0x005717c6    83c410
                         push               0x1                                           // 0x005717c9    6a01
                         push               0x00c4cd30                                    // 0x005717cb    6830cdc400
                         push               ecx                                           // 0x005717d0    51
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x005717d1    8b4c2424
                         push               edx                                           // 0x005717d5    52
                         push               ecx                                           // 0x005717d6    51
                         push               eax                                           // 0x005717d7    50
                         push               0x0001042d                                    // 0x005717d8    682d040100
                         mov.s              ecx, edi                                      // 0x005717dd    8bcf
                         call               @__ct__10SetupButtonFiiiiiPwi@36              // 0x005717df    e8cc80e9ff
                         mov                dword ptr [edi], 0x00900060                   // 0x005717e4    c70760009000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x286cf8]        // 0x005717ea    8b15f8ccc400
                         {disp32} mov       dword ptr [edi + 0x0000024c], edx             // 0x005717f0    89974c020000
                         {disp32} mov       dword ptr [edi + 0x00000248], 0x00000001      // 0x005717f6    c7874802000001000000
                         {disp8} mov        dword ptr [edi + 0x1c], ebx                   // 0x00571800    895f1c
                         {disp32} mov       dword ptr [edi + 0x00000244], 0x00000007      // 0x00571803    c7874402000007000000
_jmp_addr_0x0057180d:    push               0x0000010a                                    // 0x0057180d    680a010000
                         push               0x00bef1b8                                    // 0x00571812    68b8f1be00
                         push               0x00000250                                    // 0x00571817    6850020000
                         call               ___nw__FUl                                    // 0x0057181c    e86f9f2600
                         mov.s              edi, eax                                      // 0x00571821    8bf8
                         add                esp, 0x0c                                     // 0x00571823    83c40c
                         cmp.s              edi, ebx                                      // 0x00571826    3bfb
                         {disp8} je         _jmp_addr_0x005718a3                          // 0x00571828    7479
                         push               0x14                                          // 0x0057182a    6a14
                         call               _jmp_addr_0x00411fc0                          // 0x0057182c    e88f07eaff
                         push               0x14                                          // 0x00571831    6a14
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x00571833    89442418
                         call               _jmp_addr_0x00411fc0                          // 0x00571837    e88407eaff
                         push               0x14                                          // 0x0057183c    6a14
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x0057183e    89442420
                         call               _jmp_addr_0x00411f10                          // 0x00571842    e8c906eaff
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x00571847    89442424
                         {disp8} lea        eax, dword ptr [esi + -0x28]                  // 0x0057184b    8d46d8
                         push               eax                                           // 0x0057184e    50
                         call               _jmp_addr_0x00411dd0                          // 0x0057184f    e87c05eaff
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x00571854    8b4c2420
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x00571858    8b542424
                         add                esp, 0x10                                     // 0x0057185c    83c410
                         push               0x1                                           // 0x0057185f    6a01
                         push               0x00c4cd30                                    // 0x00571861    6830cdc400
                         push               ecx                                           // 0x00571866    51
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x00571867    8b4c2424
                         push               edx                                           // 0x0057186b    52
                         push               ecx                                           // 0x0057186c    51
                         push               eax                                           // 0x0057186d    50
                         push               0x0001042e                                    // 0x0057186e    682e040100
                         mov.s              ecx, edi                                      // 0x00571873    8bcf
                         call               @__ct__10SetupButtonFiiiiiPwi@36              // 0x00571875    e83680e9ff
                         mov                dword ptr [edi], 0x00900060                   // 0x0057187a    c70760009000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x286cf8]        // 0x00571880    8b15f8ccc400
                         {disp32} mov       dword ptr [edi + 0x0000024c], edx             // 0x00571886    89974c020000
                         {disp32} mov       dword ptr [edi + 0x00000248], 0x00000001      // 0x0057188c    c7874802000001000000
                         {disp8} mov        dword ptr [edi + 0x1c], ebx                   // 0x00571896    895f1c
                         {disp32} mov       dword ptr [edi + 0x00000244], 0x00000005      // 0x00571899    c7874402000005000000
_jmp_addr_0x005718a3:    push               0x0000010b                                    // 0x005718a3    680b010000
                         push               0x00bef1b8                                    // 0x005718a8    68b8f1be00
                         push               0x00000250                                    // 0x005718ad    6850020000
                         call               ___nw__FUl                                    // 0x005718b2    e8d99e2600
                         mov.s              edi, eax                                      // 0x005718b7    8bf8
                         add                esp, 0x0c                                     // 0x005718b9    83c40c
                         cmp.s              edi, ebx                                      // 0x005718bc    3bfb
                         {disp8} je         _jmp_addr_0x00571939                          // 0x005718be    7479
                         push               0x14                                          // 0x005718c0    6a14
                         call               _jmp_addr_0x00411fc0                          // 0x005718c2    e8f906eaff
                         push               0x14                                          // 0x005718c7    6a14
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x005718c9    89442418
                         call               _jmp_addr_0x00411fc0                          // 0x005718cd    e8ee06eaff
                         push               0x14                                          // 0x005718d2    6a14
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x005718d4    89442420
                         call               _jmp_addr_0x00411f10                          // 0x005718d8    e83306eaff
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x005718dd    89442424
                         {disp8} lea        eax, dword ptr [esi + -0x14]                  // 0x005718e1    8d46ec
                         push               eax                                           // 0x005718e4    50
                         call               _jmp_addr_0x00411dd0                          // 0x005718e5    e8e604eaff
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x005718ea    8b4c2420
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x005718ee    8b542424
                         add                esp, 0x10                                     // 0x005718f2    83c410
                         push               0x1                                           // 0x005718f5    6a01
                         push               0x00c4cd30                                    // 0x005718f7    6830cdc400
                         push               ecx                                           // 0x005718fc    51
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x005718fd    8b4c2424
                         push               edx                                           // 0x00571901    52
                         push               ecx                                           // 0x00571902    51
                         push               eax                                           // 0x00571903    50
                         push               0x0001042f                                    // 0x00571904    682f040100
                         mov.s              ecx, edi                                      // 0x00571909    8bcf
                         call               @__ct__10SetupButtonFiiiiiPwi@36              // 0x0057190b    e8a07fe9ff
                         mov                dword ptr [edi], 0x00900060                   // 0x00571910    c70760009000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x286cf8]        // 0x00571916    8b15f8ccc400
                         {disp32} mov       dword ptr [edi + 0x0000024c], edx             // 0x0057191c    89974c020000
                         {disp32} mov       dword ptr [edi + 0x00000248], 0x00000001      // 0x00571922    c7874802000001000000
                         {disp8} mov        dword ptr [edi + 0x1c], ebx                   // 0x0057192c    895f1c
                         {disp32} mov       dword ptr [edi + 0x00000244], 0x00000006      // 0x0057192f    c7874402000006000000
_jmp_addr_0x00571939:    push               0x0000010d                                    // 0x00571939    680d010000
                         push               0x00bef1b8                                    // 0x0057193e    68b8f1be00
                         push               0x00000250                                    // 0x00571943    6850020000
                         call               ___nw__FUl                                    // 0x00571948    e8439e2600
                         mov.s              edi, eax                                      // 0x0057194d    8bf8
                         add                esp, 0x0c                                     // 0x0057194f    83c40c
                         cmp.s              edi, ebx                                      // 0x00571952    3bfb
                         {disp8} je         _jmp_addr_0x005719d1                          // 0x00571954    747b
                         push               0x14                                          // 0x00571956    6a14
                         call               _jmp_addr_0x00411fc0                          // 0x00571958    e86306eaff
                         push               0x14                                          // 0x0057195d    6a14
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x0057195f    89442418
                         call               _jmp_addr_0x00411fc0                          // 0x00571963    e85806eaff
                         push               0x28                                          // 0x00571968    6a28
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x0057196a    89442420
                         call               _jmp_addr_0x00411f10                          // 0x0057196e    e89d05eaff
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x00571973    89442424
                         {disp8} lea        eax, dword ptr [esi + -0x28]                  // 0x00571977    8d46d8
                         push               eax                                           // 0x0057197a    50
                         call               _jmp_addr_0x00411dd0                          // 0x0057197b    e85004eaff
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x00571980    8b4c2420
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x00571984    8b542424
                         add                esp, 0x10                                     // 0x00571988    83c410
                         push               0x1                                           // 0x0057198b    6a01
                         push               0x00c4cd30                                    // 0x0057198d    6830cdc400
                         push               ecx                                           // 0x00571992    51
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x00571993    8b4c2424
                         push               edx                                           // 0x00571997    52
                         push               ecx                                           // 0x00571998    51
                         push               eax                                           // 0x00571999    50
                         push               0x00010430                                    // 0x0057199a    6830040100
                         mov.s              ecx, edi                                      // 0x0057199f    8bcf
                         call               @__ct__10SetupButtonFiiiiiPwi@36              // 0x005719a1    e80a7fe9ff
                         mov                dword ptr [edi], 0x00900060                   // 0x005719a6    c70760009000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x286cf8]        // 0x005719ac    8b15f8ccc400
                         {disp32} mov       dword ptr [edi + 0x0000024c], edx             // 0x005719b2    89974c020000
                         {disp32} mov       dword ptr [edi + 0x00000248], 0x00000001      // 0x005719b8    c7874802000001000000
                         {disp8} mov        dword ptr [edi + 0x1c], ebx                   // 0x005719c2    895f1c
                         {disp32} mov       dword ptr [edi + 0x00000244], 0x00000008      // 0x005719c5    c7874402000008000000
                         {disp8} jmp        _jmp_addr_0x005719d3                          // 0x005719cf    eb02
_jmp_addr_0x005719d1:    xor.s              edi, edi                                      // 0x005719d1    33ff
_jmp_addr_0x005719d3:    push               0x0000010e                                    // 0x005719d3    680e010000
                         push               0x00bef1b8                                    // 0x005719d8    68b8f1be00
                         push               0x00000250                                    // 0x005719dd    6850020000
                         {disp8} mov        dword ptr [ebp + 0x20], edi                   // 0x005719e2    897d20
                         call               ___nw__FUl                                    // 0x005719e5    e8a69d2600
                         mov.s              edi, eax                                      // 0x005719ea    8bf8
                         add                esp, 0x0c                                     // 0x005719ec    83c40c
                         cmp.s              edi, ebx                                      // 0x005719ef    3bfb
                         {disp8} je         _jmp_addr_0x00571a6e                          // 0x005719f1    747b
                         push               0x14                                          // 0x005719f3    6a14
                         call               _jmp_addr_0x00411fc0                          // 0x005719f5    e8c605eaff
                         push               0x14                                          // 0x005719fa    6a14
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x005719fc    89442418
                         call               _jmp_addr_0x00411fc0                          // 0x00571a00    e8bb05eaff
                         push               0x28                                          // 0x00571a05    6a28
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x00571a07    89442420
                         call               _jmp_addr_0x00411f10                          // 0x00571a0b    e80005eaff
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x00571a10    89442424
                         {disp8} lea        eax, dword ptr [esi + -0x14]                  // 0x00571a14    8d46ec
                         push               eax                                           // 0x00571a17    50
                         call               _jmp_addr_0x00411dd0                          // 0x00571a18    e8b303eaff
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x00571a1d    8b4c2420
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x00571a21    8b542424
                         add                esp, 0x10                                     // 0x00571a25    83c410
                         push               0x1                                           // 0x00571a28    6a01
                         push               0x00c4cd30                                    // 0x00571a2a    6830cdc400
                         push               ecx                                           // 0x00571a2f    51
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x00571a30    8b4c2424
                         push               edx                                           // 0x00571a34    52
                         push               ecx                                           // 0x00571a35    51
                         push               eax                                           // 0x00571a36    50
                         push               0x00010431                                    // 0x00571a37    6831040100
                         mov.s              ecx, edi                                      // 0x00571a3c    8bcf
                         call               @__ct__10SetupButtonFiiiiiPwi@36              // 0x00571a3e    e86d7ee9ff
                         mov                dword ptr [edi], 0x00900060                   // 0x00571a43    c70760009000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x286cf8]        // 0x00571a49    8b15f8ccc400
                         {disp32} mov       dword ptr [edi + 0x0000024c], edx             // 0x00571a4f    89974c020000
                         {disp32} mov       dword ptr [edi + 0x00000248], 0x00000001      // 0x00571a55    c7874802000001000000
                         {disp8} mov        dword ptr [edi + 0x1c], ebx                   // 0x00571a5f    895f1c
                         {disp32} mov       dword ptr [edi + 0x00000244], 0x00000009      // 0x00571a62    c7874402000009000000
                         {disp8} jmp        _jmp_addr_0x00571a70                          // 0x00571a6c    eb02
_jmp_addr_0x00571a6e:    xor.s              edi, edi                                      // 0x00571a6e    33ff
_jmp_addr_0x00571a70:    push               0x0000010f                                    // 0x00571a70    680f010000
                         push               0x00bef1b8                                    // 0x00571a75    68b8f1be00
                         push               0x00000250                                    // 0x00571a7a    6850020000
                         {disp8} mov        dword ptr [ebp + 0x24], edi                   // 0x00571a7f    897d24
                         call               ___nw__FUl                                    // 0x00571a82    e8099d2600
                         mov.s              edi, eax                                      // 0x00571a87    8bf8
                         add                esp, 0x0c                                     // 0x00571a89    83c40c
                         cmp.s              edi, ebx                                      // 0x00571a8c    3bfb
                         {disp8} je         _jmp_addr_0x00571b09                          // 0x00571a8e    7479
                         push               0x14                                          // 0x00571a90    6a14
                         call               _jmp_addr_0x00411fc0                          // 0x00571a92    e82905eaff
                         push               0x14                                          // 0x00571a97    6a14
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x00571a99    89442418
                         call               _jmp_addr_0x00411fc0                          // 0x00571a9d    e81e05eaff
                         push               0x3c                                          // 0x00571aa2    6a3c
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x00571aa4    89442420
                         call               _jmp_addr_0x00411f10                          // 0x00571aa8    e86304eaff
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x00571aad    89442424
                         {disp8} lea        eax, dword ptr [esi + -0x14]                  // 0x00571ab1    8d46ec
                         push               eax                                           // 0x00571ab4    50
                         call               _jmp_addr_0x00411dd0                          // 0x00571ab5    e81603eaff
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x00571aba    8b4c2420
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x00571abe    8b542424
                         add                esp, 0x10                                     // 0x00571ac2    83c410
                         push               0x1                                           // 0x00571ac5    6a01
                         push               0x00c4cd30                                    // 0x00571ac7    6830cdc400
                         push               ecx                                           // 0x00571acc    51
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x00571acd    8b4c2424
                         push               edx                                           // 0x00571ad1    52
                         push               ecx                                           // 0x00571ad2    51
                         push               eax                                           // 0x00571ad3    50
                         push               0x00010432                                    // 0x00571ad4    6832040100
                         mov.s              ecx, edi                                      // 0x00571ad9    8bcf
                         call               @__ct__10SetupButtonFiiiiiPwi@36              // 0x00571adb    e8d07de9ff
                         mov                dword ptr [edi], 0x00900060                   // 0x00571ae0    c70760009000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x286cf8]        // 0x00571ae6    8b15f8ccc400
                         {disp32} mov       dword ptr [edi + 0x0000024c], edx             // 0x00571aec    89974c020000
                         {disp32} mov       dword ptr [edi + 0x00000248], 0x00000001      // 0x00571af2    c7874802000001000000
                         {disp8} mov        dword ptr [edi + 0x1c], ebx                   // 0x00571afc    895f1c
                         {disp32} mov       dword ptr [edi + 0x00000244], 0x00000003      // 0x00571aff    c7874402000003000000
_jmp_addr_0x00571b09:    push               0x00000112                                    // 0x00571b09    6812010000
                         push               0x00bef1b8                                    // 0x00571b0e    68b8f1be00
                         push               0x00000250                                    // 0x00571b13    6850020000
                         call               ___nw__FUl                                    // 0x00571b18    e8739c2600
                         mov.s              edi, eax                                      // 0x00571b1d    8bf8
                         add                esp, 0x0c                                     // 0x00571b1f    83c40c
                         cmp.s              edi, ebx                                      // 0x00571b22    3bfb
                         {disp8} je         _jmp_addr_0x00571b6b                          // 0x00571b24    7445
                         push               0x00bef1a8                                    // 0x00571b26    68a8f1be00
                         push               ebx                                           // 0x00571b2b    53
                         push               0x14                                          // 0x00571b2c    6a14
                         call               _jmp_addr_0x00411fc0                          // 0x00571b2e    e88d04eaff
                         add                esp, 0x04                                     // 0x00571b33    83c404
                         push               eax                                           // 0x00571b36    50
                         push               0x78                                          // 0x00571b37    6a78
                         call               _jmp_addr_0x00411fc0                          // 0x00571b39    e88204eaff
                         add                esp, 0x04                                     // 0x00571b3e    83c404
                         push               eax                                           // 0x00571b41    50
                         push               0x28                                          // 0x00571b42    6a28
                         call               _jmp_addr_0x00411f10                          // 0x00571b44    e8c703eaff
                         add                esp, 0x04                                     // 0x00571b49    83c404
                         push               eax                                           // 0x00571b4c    50
                         {disp32} lea       eax, dword ptr [esi + -0x000000a0]            // 0x00571b4d    8d8660ffffff
                         push               eax                                           // 0x00571b53    50
                         call               _jmp_addr_0x00411dd0                          // 0x00571b54    e87702eaff
                         add                esp, 0x04                                     // 0x00571b59    83c404
                         push               eax                                           // 0x00571b5c    50
                         push               0x00010433                                    // 0x00571b5d    6833040100
                         mov.s              ecx, edi                                      // 0x00571b62    8bcf
                         call               @__ct__11SetupSliderFiiiiifPw@36              // 0x00571b64    e88780e9ff
                         {disp8} jmp        _jmp_addr_0x00571b6d                          // 0x00571b69    eb02
_jmp_addr_0x00571b6b:    xor.s              eax, eax                                      // 0x00571b6b    33c0
_jmp_addr_0x00571b6d:    push               0x00000113                                    // 0x00571b6d    6813010000
                         push               0x00bef1b8                                    // 0x00571b72    68b8f1be00
                         push               0x00000250                                    // 0x00571b77    6850020000
                         {disp8} mov        dword ptr [ebp + 0x14], eax                   // 0x00571b7c    894514
                         call               ___nw__FUl                                    // 0x00571b7f    e80c9c2600
                         mov.s              edi, eax                                      // 0x00571b84    8bf8
                         add                esp, 0x0c                                     // 0x00571b86    83c40c
                         cmp.s              edi, ebx                                      // 0x00571b89    3bfb
                         {disp8} je         _jmp_addr_0x00571bd5                          // 0x00571b8b    7448
                         push               0x00c4cd30                                    // 0x00571b8d    6830cdc400
                         push               ebx                                           // 0x00571b92    53
                         push               0x14                                          // 0x00571b93    6a14
                         call               _jmp_addr_0x00411fc0                          // 0x00571b95    e82604eaff
                         add                esp, 0x04                                     // 0x00571b9a    83c404
                         push               eax                                           // 0x00571b9d    50
                         push               0x0000008c                                    // 0x00571b9e    688c000000
                         call               _jmp_addr_0x00411fc0                          // 0x00571ba3    e81804eaff
                         add                esp, 0x04                                     // 0x00571ba8    83c404
                         push               eax                                           // 0x00571bab    50
                         push               0x3c                                          // 0x00571bac    6a3c
                         call               _jmp_addr_0x00411f10                          // 0x00571bae    e85d03eaff
                         add                esp, 0x04                                     // 0x00571bb3    83c404
                         push               eax                                           // 0x00571bb6    50
                         {disp32} lea       ecx, dword ptr [esi + -0x000000a0]            // 0x00571bb7    8d8e60ffffff
                         push               ecx                                           // 0x00571bbd    51
                         call               _jmp_addr_0x00411dd0                          // 0x00571bbe    e80d02eaff
                         add                esp, 0x04                                     // 0x00571bc3    83c404
                         push               eax                                           // 0x00571bc6    50
                         push               0x00010434                                    // 0x00571bc7    6834040100
                         mov.s              ecx, edi                                      // 0x00571bcc    8bcf
                         call               @__ct__11SetupSliderFiiiiifPw@36              // 0x00571bce    e81d80e9ff
                         {disp8} jmp        _jmp_addr_0x00571bd7                          // 0x00571bd3    eb02
_jmp_addr_0x00571bd5:    xor.s              eax, eax                                      // 0x00571bd5    33c0
_jmp_addr_0x00571bd7:    push               0x00000115                                    // 0x00571bd7    6815010000
                         push               0x00bef1b8                                    // 0x00571bdc    68b8f1be00
                         push               0x00000244                                    // 0x00571be1    6844020000
                         {disp8} mov        dword ptr [ebp + 0x18], eax                   // 0x00571be6    894518
                         call               ___nw__FUl                                    // 0x00571be9    e8a29b2600
                         mov.s              edi, eax                                      // 0x00571bee    8bf8
                         add                esp, 0x0c                                     // 0x00571bf0    83c40c
                         cmp.s              edi, ebx                                      // 0x00571bf3    3bfb
                         {disp8} je         _jmp_addr_0x00571c68                          // 0x00571bf5    7471
                         push               0x14                                          // 0x00571bf7    6a14
                         call               _jmp_addr_0x00411fc0                          // 0x00571bf9    e8c203eaff
                         push               0x00000166                                    // 0x00571bfe    6866010000
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x00571c03    89442418
                         call               _jmp_addr_0x00411fc0                          // 0x00571c07    e8b403eaff
                         push               ebx                                           // 0x00571c0c    53
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x00571c0d    89442420
                         call               _jmp_addr_0x00411f10                          // 0x00571c11    e8fa02eaff
                         {disp32} lea       edx, dword ptr [esi + -0x00000190]            // 0x00571c16    8d9670feffff
                         push               edx                                           // 0x00571c1c    52
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x00571c1d    89442428
                         call               _jmp_addr_0x00411dd0                          // 0x00571c21    e8aa01eaff
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x00571c26    8b4c2420
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x00571c2a    8b542424
                         add                esp, 0x10                                     // 0x00571c2e    83c410
                         push               0x00bef194                                    // 0x00571c31    6894f1be00
                         push               ecx                                           // 0x00571c36    51
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x00571c37    8b4c2420
                         push               edx                                           // 0x00571c3b    52
                         push               ecx                                           // 0x00571c3c    51
                         push               eax                                           // 0x00571c3d    50
                         push               0x00010435                                    // 0x00571c3e    6835040100
                         mov.s              ecx, edi                                      // 0x00571c43    8bcf
                         call               ??0SetupControl@@QAE@HHHHHPA_W@Z              // 0x00571c45    e80676e9ff
                         {disp32} mov       dword ptr [edi + 0x0000023c], 0x00000002      // 0x00571c4a    c7873c02000002000000
                         {disp32} mov       byte ptr [edi + 0x0000022a], bl               // 0x00571c54    889f2a020000
                         {disp32} mov       dword ptr [edi + 0x00000240], ebx             // 0x00571c5a    899f40020000
                         mov                dword ptr [edi], 0x00900098                   // 0x00571c60    c70798009000
                         {disp8} jmp        _jmp_addr_0x00571c6a                          // 0x00571c66    eb02
_jmp_addr_0x00571c68:    xor.s              edi, edi                                      // 0x00571c68    33ff
_jmp_addr_0x00571c6a:    push               0x00000117                                    // 0x00571c6a    6817010000
                         push               0x00bef1b8                                    // 0x00571c6f    68b8f1be00
                         push               0x000002b0                                    // 0x00571c74    68b0020000
                         {disp8} mov        dword ptr [ebp + 0x1c], edi                   // 0x00571c79    897d1c
                         call               ___nw__FUl                                    // 0x00571c7c    e80f9b2600
                         mov.s              edi, eax                                      // 0x00571c81    8bf8
                         add                esp, 0x0c                                     // 0x00571c83    83c40c
                         cmp.s              edi, ebx                                      // 0x00571c86    3bfb
                         {disp8} je         _jmp_addr_0x00571ccf                          // 0x00571c88    7445
                         push               0x00000140                                    // 0x00571c8a    6840010000
                         call               _jmp_addr_0x00411fc0                          // 0x00571c8f    e82c03eaff
                         add                esp, 0x04                                     // 0x00571c94    83c404
                         push               eax                                           // 0x00571c97    50
                         push               0x000000a0                                    // 0x00571c98    68a0000000
                         call               _jmp_addr_0x00411fc0                          // 0x00571c9d    e81e03eaff
                         add                esp, 0x04                                     // 0x00571ca2    83c404
                         push               eax                                           // 0x00571ca5    50
                         push               0x50                                          // 0x00571ca6    6a50
                         call               _jmp_addr_0x00411f10                          // 0x00571ca8    e86302eaff
                         add                esp, 0x04                                     // 0x00571cad    83c404
                         push               eax                                           // 0x00571cb0    50
                         add                esi, 0xffffff60                               // 0x00571cb1    81c660ffffff
                         push               esi                                           // 0x00571cb7    56
                         call               _jmp_addr_0x00411dd0                          // 0x00571cb8    e81301eaff
                         add                esp, 0x04                                     // 0x00571cbd    83c404
                         push               eax                                           // 0x00571cc0    50
                         push               0x00010436                                    // 0x00571cc1    6836040100
                         mov.s              ecx, edi                                      // 0x00571cc6    8bcf
                         call               @__ct__9SetupListFiiiii@28                    // 0x00571cc8    e88387e9ff
                         {disp8} jmp        _jmp_addr_0x00571cd1                          // 0x00571ccd    eb02
_jmp_addr_0x00571ccf:    xor.s              eax, eax                                      // 0x00571ccf    33c0
_jmp_addr_0x00571cd1:    {disp8} mov        dword ptr [ebp + 0x10], eax                   // 0x00571cd1    894510
                         mov                edx, dword ptr [eax]                          // 0x00571cd4    8b10
                         push               0x1                                           // 0x00571cd6    6a01
                         mov.s              ecx, eax                                      // 0x00571cd8    8bc8
                         call               dword ptr [edx + 8]                           // 0x00571cda    ff5208
                         push               0x00bef188                                    // 0x00571cdd    6888f1be00
                         call               _jmp_addr_0x005259d0                          // 0x00571ce2    e8e93cfbff
                         add                esp, 0x04                                     // 0x00571ce7    83c404
                         and                eax, 0x000000ff                               // 0x00571cea    25ff000000
                         {disp32} mov       dword ptr [data_bytes + 0x340434], eax        // 0x00571cef    a33464d000
                         {disp32} je        _jmp_addr_0x00571ee1                          // 0x00571cf4    0f84e7010000
                         push               0x00bef178                                    // 0x00571cfa    6878f1be00
                         {disp32} lea       eax, dword ptr [esp + 0x0000026c]             // 0x00571cff    8d84246c020000
                         push               0x00bef16c                                    // 0x00571d06    686cf1be00
                         push               eax                                           // 0x00571d0b    50
                         call               _sprintf                                      // 0x00571d0c    e8c13a2500
                         xor.s              eax, eax                                      // 0x00571d11    33c0
                         {disp8} lea        edi, dword ptr [ebp + 0x30]                   // 0x00571d13    8d7d30
                         mov                ecx, 0x0000001d                               // 0x00571d16    b91d000000
                         add                esp, 0x0c                                     // 0x00571d1b    83c40c
                         rep stosd                                                        // 0x00571d1e    f3ab
                         {disp32} lea       ecx, dword ptr [esp + 0x00000128]             // 0x00571d20    8d8c2428010000
                         push               ecx                                           // 0x00571d27    51
                         {disp32} lea       edx, dword ptr [esp + 0x0000026c]             // 0x00571d28    8d94246c020000
                         push               edx                                           // 0x00571d2f    52
                         call               dword ptr [__imp__FindFirstFileA@4]           // 0x00571d30    ff1594918a00
                         mov.s              edx, eax                                      // 0x00571d36    8bd0
                         {disp32} mov       al, byte ptr [data_bytes + 0x292370]          // 0x00571d38    a07083c500
                         {disp8} mov        byte ptr [esp + 0x28], al                     // 0x00571d3d    88442428
                         xor.s              eax, eax                                      // 0x00571d41    33c0
                         cmp                edx, -0x01                                    // 0x00571d43    83faff
                         mov                ecx, 0x0000003f                               // 0x00571d46    b93f000000
                         {disp8} lea        edi, dword ptr [esp + 0x29]                   // 0x00571d4b    8d7c2429
                         rep stosd                                                        // 0x00571d4f    f3ab
                         stosw                                                            // 0x00571d51    66ab
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x00571d53    89542410
                         stosb                                                            // 0x00571d57    aa
                         {disp32} je        _jmp_addr_0x00571ee1                          // 0x00571d58    0f8483010000
_jmp_addr_0x00571d5e:    cmp                dword ptr [ebp + 0x2c], ebx                   // 0x00571d5e    395d2c
                         {disp8} je         _jmp_addr_0x00571d80                          // 0x00571d61    741d
                         {disp8} lea        ecx, dword ptr [esp + 0x28]                   // 0x00571d63    8d4c2428
                         push               ecx                                           // 0x00571d67    51
                         {disp32} lea       edx, dword ptr [esp + 0x00000158]             // 0x00571d68    8d942458010000
                         push               edx                                           // 0x00571d6f    52
                         call               __strcmpi                                     // 0x00571d70    e86b4f2500
                         add                esp, 0x08                                     // 0x00571d75    83c408
                         test               eax, eax                                      // 0x00571d78    85c0
                         {disp32} jle       _jmp_addr_0x00571e42                          // 0x00571d7a    0f8ec2000000
_jmp_addr_0x00571d80:    {disp32} lea       eax, dword ptr [esp + 0x00000154]             // 0x00571d80    8d842454010000
                         push               eax                                           // 0x00571d87    50
                         push               0x00bef178                                    // 0x00571d88    6878f1be00
                         {disp32} lea       ecx, dword ptr [esp + 0x00000370]             // 0x00571d8d    8d8c2470030000
                         push               0x00bef164                                    // 0x00571d94    6864f1be00
                         push               ecx                                           // 0x00571d99    51
                         call               _sprintf                                      // 0x00571d9a    e8333a2500
                         add                esp, 0x10                                     // 0x00571d9f    83c410
                         {disp32} lea       edx, dword ptr [esp + 0x00000368]             // 0x00571da2    8d942468030000
                         push               edx                                           // 0x00571da9    52
                         call               dword ptr [__imp__LoadLibraryA@4]             // 0x00571daa    ff156c918a00
                         cmp.s              eax, ebx                                      // 0x00571db0    3bc3
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x00571db2    8944241c
                         {disp32} je        _jmp_addr_0x00571e42                          // 0x00571db6    0f8486000000
                         {disp8} lea        eax, dword ptr [ebp + 0x30]                   // 0x00571dbc    8d4530
                         xor.s              esi, esi                                      // 0x00571dbf    33f6
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x00571dc1    89442420
_jmp_addr_0x00571dc5:    {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x00571dc5    8b44241c
                         {disp8} lea        edi, dword ptr [esi + 0x01]                   // 0x00571dc9    8d7e01
                         push               edi                                           // 0x00571dcc    57
                         push               eax                                           // 0x00571dcd    50
                         call               dword ptr [__imp__GetProcAddress@8]           // 0x00571dce    ff1570918a00
                         cmp.s              eax, ebx                                      // 0x00571dd4    3bc3
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x00571dd6    8b4c2420
                         mov                dword ptr [ecx], eax                          // 0x00571dda    8901
                         {disp8} je         _jmp_addr_0x00571dec                          // 0x00571ddc    740e
                         mov.s              esi, edi                                      // 0x00571dde    8bf7
                         add                ecx, 0x4                                      // 0x00571de0    83c104
                         cmp                esi, 0x16                                     // 0x00571de3    83fe16
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x00571de6    894c2420
                         {disp8} jl         _jmp_addr_0x00571dc5                          // 0x00571dea    7cd9
_jmp_addr_0x00571dec:    cmp                esi, 0x16                                     // 0x00571dec    83fe16
                         {disp8} jne        _jmp_addr_0x00571e37                          // 0x00571def    7546
                         call               dword ptr [ebp + 0x30]                        // 0x00571df1    ff5530
                         test               eax, eax                                      // 0x00571df4    85c0
                         {disp8} je         _jmp_addr_0x00571e37                          // 0x00571df6    743f
                         {disp8} mov        eax, dword ptr [ebp + 0x2c]                   // 0x00571df8    8b452c
                         cmp.s              eax, ebx                                      // 0x00571dfb    3bc3
                         {disp8} je         _jmp_addr_0x00571e06                          // 0x00571dfd    7407
                         push               eax                                           // 0x00571dff    50
                         call               dword ptr [__imp__FreeLibrary@4]              // 0x00571e00    ff1574918a00
_jmp_addr_0x00571e06:    {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x00571e06    8b54241c
                         or                 ecx, 0xffffffff                               // 0x00571e0a    83c9ff
                         xor.s              eax, eax                                      // 0x00571e0d    33c0
                         {disp32} lea       edi, dword ptr [esp + 0x00000154]             // 0x00571e0f    8dbc2454010000
                         repne scasb                                                      // 0x00571e16    f2ae
                         not                ecx                                           // 0x00571e18    f7d1
                         sub.s              edi, ecx                                      // 0x00571e1a    2bf9
                         mov.s              eax, ecx                                      // 0x00571e1c    8bc1
                         {disp8} mov        dword ptr [ebp + 0x2c], edx                   // 0x00571e1e    89552c
                         mov.s              esi, edi                                      // 0x00571e21    8bf7
                         shr                ecx, 2                                        // 0x00571e23    c1e902
                         {disp8} lea        edx, dword ptr [esp + 0x28]                   // 0x00571e26    8d542428
                         mov.s              edi, edx                                      // 0x00571e2a    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00571e2c    f3a5
                         mov.s              ecx, eax                                      // 0x00571e2e    8bc8
                         and                ecx, 0x03                                     // 0x00571e30    83e103
                         rep movsb                                                        // 0x00571e33    f3a4
                         {disp8} jmp        _jmp_addr_0x00571e42                          // 0x00571e35    eb0b
_jmp_addr_0x00571e37:    {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x00571e37    8b4c241c
                         push               ecx                                           // 0x00571e3b    51
                         call               dword ptr [__imp__FreeLibrary@4]              // 0x00571e3c    ff1574918a00
_jmp_addr_0x00571e42:    {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x00571e42    8b742410
                         {disp32} lea       edx, dword ptr [esp + 0x00000128]             // 0x00571e46    8d942428010000
                         push               edx                                           // 0x00571e4d    52
                         push               esi                                           // 0x00571e4e    56
                         call               dword ptr [__imp__FindNextFileA@4]            // 0x00571e4f    ff1598918a00
                         test               eax, eax                                      // 0x00571e55    85c0
                         {disp32} jne       _jmp_addr_0x00571d5e                          // 0x00571e57    0f8501ffffff
                         push               esi                                           // 0x00571e5d    56
                         call               dword ptr [__imp__FindClose@4]                // 0x00571e5e    ff1524928a00
                         cmp                dword ptr [ebp + 0x2c], ebx                   // 0x00571e64    395d2c
                         {disp8} je         _jmp_addr_0x00571ee1                          // 0x00571e67    7478
                         call               dword ptr [ebp + 0x48]                        // 0x00571e69    ff5548
                         test               eax, eax                                      // 0x00571e6c    85c0
                         {disp8} je         _jmp_addr_0x00571edb                          // 0x00571e6e    746b
                         call               dword ptr [ebp + 0x34]                        // 0x00571e70    ff5534
                         mov.s              ecx, ebp                                      // 0x00571e73    8bcd
                         {disp32} mov       dword ptr [ebp + 0x00000088], eax             // 0x00571e75    898588000000
                         {disp32} mov       dword ptr [ebp + 0x00000098], 0x000000ff      // 0x00571e7b    c78598000000ff000000
                         call               _jmp_addr_0x00570930                          // 0x00571e85    e8a6eaffff
                         test               byte ptr [ebp + 0x00000088], 0x10             // 0x00571e8a    f6858800000010
                         {disp8} je         _jmp_addr_0x00571ea0                          // 0x00571e91    740d
                         {disp32} mov       eax, dword ptr [ebp + 0x00000098]             // 0x00571e93    8b8598000000
                         push               eax                                           // 0x00571e99    50
                         call               dword ptr [ebp + 0x7c]                        // 0x00571e9a    ff557c
                         add                esp, 0x04                                     // 0x00571e9d    83c404
_jmp_addr_0x00571ea0:    test               byte ptr [ebp + 0x00000088], 0x20             // 0x00571ea0    f6858800000020
                         {disp8} je         _jmp_addr_0x00571eb9                          // 0x00571ea7    7410
                         {disp32} mov       ecx, dword ptr [ebp + 0x0000009c]             // 0x00571ea9    8b8d9c000000
                         push               ecx                                           // 0x00571eaf    51
                         call               dword ptr [ebp + 0x80]                        // 0x00571eb0    ff9580000000
                         add                esp, 0x04                                     // 0x00571eb6    83c404
_jmp_addr_0x00571eb9:    test               byte ptr [ebp + 0x00000088], 0x40             // 0x00571eb9    f6858800000040
                         {disp8} je         _jmp_addr_0x00571ed2                          // 0x00571ec0    7410
                         {disp32} mov       edx, dword ptr [ebp + 0x000000a0]             // 0x00571ec2    8b95a0000000
                         push               edx                                           // 0x00571ec8    52
                         call               dword ptr [ebp + 0x84]                        // 0x00571ec9    ff9584000000
                         add                esp, 0x04                                     // 0x00571ecf    83c404
_jmp_addr_0x00571ed2:    mov.s              ecx, ebp                                      // 0x00571ed2    8bcd
                         call               _jmp_addr_0x00570b40                          // 0x00571ed4    e867ecffff
                         {disp8} jmp        _jmp_addr_0x00571ee1                          // 0x00571ed9    eb06
_jmp_addr_0x00571edb:    {disp32} mov       dword ptr [ebp + 0x00000088], ebx             // 0x00571edb    899d88000000
_jmp_addr_0x00571ee1:    push               0x1                                           // 0x00571ee1    6a01
                         mov.s              ecx, ebp                                      // 0x00571ee3    8bcd
                         call               _jmp_addr_0x005708d0                          // 0x00571ee5    e8e6e9ffff
                         pop                edi                                           // 0x00571eea    5f
                         pop                esi                                           // 0x00571eeb    5e
                         pop                ebp                                           // 0x00571eec    5d
                         pop                ebx                                           // 0x00571eed    5b
                         add                esp, 0x00000458                               // 0x00571eee    81c458040000
                         ret                0x000c                                        // 0x00571ef4    c20c00
                         nop                                                              // 0x00571ef7    90
                         nop                                                              // 0x00571ef8    90
                         nop                                                              // 0x00571ef9    90
                         nop                                                              // 0x00571efa    90
                         nop                                                              // 0x00571efb    90
                         nop                                                              // 0x00571efc    90
                         nop                                                              // 0x00571efd    90
                         nop                                                              // 0x00571efe    90
                         nop                                                              // 0x00571eff    90
_HitTest__20SetupStaticTextNoHitFii:
                         xor.s              al, al                                        // 0x00571f00    32c0
                         ret                0x0008                                        // 0x00571f02    c20800
                         nop                                                              // 0x00571f05    90
                         nop                                                              // 0x00571f06    90
                         nop                                                              // 0x00571f07    90
                         nop                                                              // 0x00571f08    90
                         nop                                                              // 0x00571f09    90
                         nop                                                              // 0x00571f0a    90
                         nop                                                              // 0x00571f0b    90
                         nop                                                              // 0x00571f0c    90
                         nop                                                              // 0x00571f0d    90
                         nop                                                              // 0x00571f0e    90
                         nop                                                              // 0x00571f0f    90
??_GSetupStaticTextNoHit@@UAEPAXI@Z:
                         push               esi                                           // 0x00571f10    56
                         mov.s              esi, ecx                                      // 0x00571f11    8bf1
                         call               ??1SetupControl@@UAE@XZ                       // 0x00571f13    e8a874e9ff
                         test               byte ptr [esp + 0x08], 0x01                   // 0x00571f18    f644240801
                         {disp8} je         _jmp_addr_0x00571f28                          // 0x00571f1d    7409
                         push               esi                                           // 0x00571f1f    56
                         call               ??3@YAXPAX@Z                                  // 0x00571f20    e873cf2300
                         add                esp, 0x04                                     // 0x00571f25    83c404
_jmp_addr_0x00571f28:    mov.s              eax, esi                                      // 0x00571f28    8bc6
                         pop                esi                                           // 0x00571f2a    5e
                         ret                0x0004                                        // 0x00571f2b    c20400
                         nop                                                              // 0x00571f2e    90
                         nop                                                              // 0x00571f2f    90
??_GSetupMP3Button@@UAEPAXI@Z:
                         push               esi                                           // 0x00571f30    56
                         mov.s              esi, ecx                                      // 0x00571f31    8bf1
                         call               ??1SetupControl@@UAE@XZ                       // 0x00571f33    e88874e9ff
                         test               byte ptr [esp + 0x08], 0x01                   // 0x00571f38    f644240801
                         {disp8} je         _jmp_addr_0x00571f48                          // 0x00571f3d    7409
                         push               esi                                           // 0x00571f3f    56
                         call               ??3@YAXPAX@Z                                  // 0x00571f40    e853cf2300
                         add                esp, 0x04                                     // 0x00571f45    83c404
_jmp_addr_0x00571f48:    mov.s              eax, esi                                      // 0x00571f48    8bc6
                         pop                esi                                           // 0x00571f4a    5e
                         ret                0x0004                                        // 0x00571f4b    c20400
                         nop                                                              // 0x00571f4e    90
                         nop                                                              // 0x00571f4f    90
_jmp_addr_0x00571f50:    push               ebx                                           // 0x00571f50    53
                         push               esi                                           // 0x00571f51    56
                         mov.s              esi, ecx                                      // 0x00571f52    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x000000d0]             // 0x00571f54    8b86d0000000
                         mov                eax, dword ptr [eax]                          // 0x00571f5a    8b00
                         xor.s              ebx, ebx                                      // 0x00571f5c    33db
                         cmp.s              eax, ebx                                      // 0x00571f5e    3bc3
                         {disp8} je         _jmp_addr_0x00571fc6                          // 0x00571f60    7464
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x00571f62    8b5004
                         cmp.s              edx, ebx                                      // 0x00571f65    3bd3
                         {disp8} je         _jmp_addr_0x00571fc6                          // 0x00571f67    745d
_jmp_addr_0x00571f69:    {disp32} mov       eax, dword ptr [edx + 0x00000088]             // 0x00571f69    8b8288000000
                         cmp.s              eax, ebx                                      // 0x00571f6f    3bc3
                         {disp8} je         _jmp_addr_0x00571fa2                          // 0x00571f71    742f
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x00571f73    8b4804
                         cmp.s              ecx, ebx                                      // 0x00571f76    3bcb
                         {disp8} je         _jmp_addr_0x00571fa2                          // 0x00571f78    7428
_jmp_addr_0x00571f7a:    {disp32} mov       byte ptr [ecx + 0x0000008d], bl               // 0x00571f7a    88998d000000
                         {disp32} mov       eax, dword ptr [edx + 0x00000088]             // 0x00571f80    8b8288000000
                         cmp.s              eax, ebx                                      // 0x00571f86    3bc3
                         {disp8} je         _jmp_addr_0x00571fa2                          // 0x00571f88    7418
_jmp_addr_0x00571f8a:    cmp                dword ptr [eax + 0x04], ecx                   // 0x00571f8a    394804
                         mov                eax, dword ptr [eax]                          // 0x00571f8d    8b00
                         {disp8} je         _jmp_addr_0x00571f97                          // 0x00571f8f    7406
                         cmp.s              eax, ebx                                      // 0x00571f91    3bc3
                         {disp8} je         _jmp_addr_0x00571fa2                          // 0x00571f93    740d
                         {disp8} jmp        _jmp_addr_0x00571f8a                          // 0x00571f95    ebf3
_jmp_addr_0x00571f97:    cmp.s              eax, ebx                                      // 0x00571f97    3bc3
                         {disp8} je         _jmp_addr_0x00571fa2                          // 0x00571f99    7407
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x00571f9b    8b4804
                         cmp.s              ecx, ebx                                      // 0x00571f9e    3bcb
                         {disp8} jne        _jmp_addr_0x00571f7a                          // 0x00571fa0    75d8
_jmp_addr_0x00571fa2:    {disp32} mov       eax, dword ptr [esi + 0x000000d0]             // 0x00571fa2    8b86d0000000
                         mov                eax, dword ptr [eax]                          // 0x00571fa8    8b00
                         cmp.s              eax, ebx                                      // 0x00571faa    3bc3
                         {disp8} je         _jmp_addr_0x00571fc6                          // 0x00571fac    7418
_jmp_addr_0x00571fae:    cmp                dword ptr [eax + 0x04], edx                   // 0x00571fae    395004
                         mov                eax, dword ptr [eax]                          // 0x00571fb1    8b00
                         {disp8} je         _jmp_addr_0x00571fbb                          // 0x00571fb3    7406
                         cmp.s              eax, ebx                                      // 0x00571fb5    3bc3
                         {disp8} je         _jmp_addr_0x00571fc6                          // 0x00571fb7    740d
                         {disp8} jmp        _jmp_addr_0x00571fae                          // 0x00571fb9    ebf3
_jmp_addr_0x00571fbb:    cmp.s              eax, ebx                                      // 0x00571fbb    3bc3
                         {disp8} je         _jmp_addr_0x00571fc6                          // 0x00571fbd    7407
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x00571fbf    8b5004
                         cmp.s              edx, ebx                                      // 0x00571fc2    3bd3
                         {disp8} jne        _jmp_addr_0x00571f69                          // 0x00571fc4    75a3
_jmp_addr_0x00571fc6:    cmp                byte ptr [esp + 0x0c], bl                     // 0x00571fc6    385c240c
                         {disp32} mov       dword ptr [esi + 0x000000d8], 0xffffffff      // 0x00571fca    c786d8000000ffffffff
                         {disp8} je         _jmp_addr_0x00571fdd                          // 0x00571fd4    7407
                         mov.s              ecx, esi                                      // 0x00571fd6    8bce
                         call               _jmp_addr_0x00572090                          // 0x00571fd8    e8b3000000
_jmp_addr_0x00571fdd:    mov.s              ecx, esi                                      // 0x00571fdd    8bce
                         call               _jmp_addr_0x00572460                          // 0x00571fdf    e87c040000
                         pop                esi                                           // 0x00571fe4    5e
                         pop                ebx                                           // 0x00571fe5    5b
                         ret                0x0004                                        // 0x00571fe6    c20400
                         nop                                                              // 0x00571fe9    90
                         nop                                                              // 0x00571fea    90
                         nop                                                              // 0x00571feb    90
                         nop                                                              // 0x00571fec    90
                         nop                                                              // 0x00571fed    90
                         nop                                                              // 0x00571fee    90
                         nop                                                              // 0x00571fef    90
_jmp_addr_0x00571ff0:    push               ebx                                           // 0x00571ff0    53
                         push               esi                                           // 0x00571ff1    56
                         push               edi                                           // 0x00571ff2    57
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x00571ff3    8b7c2414
                         test               edi, edi                                      // 0x00571ff7    85ff
                         {disp32} jl        _jmp_addr_0x00572088                          // 0x00571ff9    0f8c89000000
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00571fff    8b442410
                         test               eax, eax                                      // 0x00572003    85c0
                         {disp8} jge        _jmp_addr_0x00572009                          // 0x00572005    7d02
                         mov.s              eax, edi                                      // 0x00572007    8bc7
_jmp_addr_0x00572009:    {disp32} mov       edx, dword ptr [ecx + 0x000000b0]             // 0x00572009    8b91b0000000
                         cmp                edi, dword ptr [edx + 0x00000250]             // 0x0057200f    3bba50020000
                         {disp8} jge        _jmp_addr_0x00572022                          // 0x00572015    7d0b
                         {disp32} mov       edx, dword ptr [edx + 0x00000264]             // 0x00572017    8b9264020000
                         mov                edx, dword ptr [edx + edi * 0x4]              // 0x0057201d    8b14ba
                         {disp8} jmp        _jmp_addr_0x00572024                          // 0x00572020    eb02
_jmp_addr_0x00572022:    xor.s              edx, edx                                      // 0x00572022    33d2
_jmp_addr_0x00572024:    {disp32} mov       bl, byte ptr [edx + 0x0000008d]               // 0x00572024    8a9a8d000000
                         test               bl, bl                                        // 0x0057202a    84db
                         sete               bl                                            // 0x0057202c    0f94c3
                         cmp.s              eax, edi                                      // 0x0057202f    3bc7
                         {disp8} jle        _jmp_addr_0x0057203d                          // 0x00572031    7e0a
                         mov.s              edx, eax                                      // 0x00572033    8bd0
                         mov.s              eax, edi                                      // 0x00572035    8bc7
                         mov.s              edi, edx                                      // 0x00572037    8bfa
                         cmp.s              eax, edi                                      // 0x00572039    3bc7
                         {disp8} jg         _jmp_addr_0x00572088                          // 0x0057203b    7f4b
_jmp_addr_0x0057203d:    test               eax, eax                                      // 0x0057203d    85c0
                         {disp32} mov       edx, dword ptr [ecx + 0x000000b0]             // 0x0057203f    8b91b0000000
                         {disp8} jl         _jmp_addr_0x0057205a                          // 0x00572045    7c13
                         cmp                eax, dword ptr [edx + 0x00000250]             // 0x00572047    3b8250020000
                         {disp8} jge        _jmp_addr_0x0057205a                          // 0x0057204d    7d0b
                         {disp32} mov       esi, dword ptr [edx + 0x0000026c]             // 0x0057204f    8bb26c020000
                         mov                esi, dword ptr [esi + eax * 0x4]              // 0x00572055    8b3486
                         {disp8} jmp        _jmp_addr_0x0057205c                          // 0x00572058    eb02
_jmp_addr_0x0057205a:    xor.s              esi, esi                                      // 0x0057205a    33f6
_jmp_addr_0x0057205c:    cmp                esi, 0x00570710                               // 0x0057205c    81fe10075700
                         {disp8} jne        _jmp_addr_0x00572083                          // 0x00572062    751f
                         test               eax, eax                                      // 0x00572064    85c0
                         {disp8} jl         _jmp_addr_0x0057207b                          // 0x00572066    7c13
                         cmp                eax, dword ptr [edx + 0x00000250]             // 0x00572068    3b8250020000
                         {disp8} jge        _jmp_addr_0x0057207b                          // 0x0057206e    7d0b
                         {disp32} mov       edx, dword ptr [edx + 0x00000264]             // 0x00572070    8b9264020000
                         mov                edx, dword ptr [edx + eax * 0x4]              // 0x00572076    8b1482
                         {disp8} jmp        _jmp_addr_0x0057207d                          // 0x00572079    eb02
_jmp_addr_0x0057207b:    xor.s              edx, edx                                      // 0x0057207b    33d2
_jmp_addr_0x0057207d:    {disp32} mov       byte ptr [edx + 0x0000008d], bl               // 0x0057207d    889a8d000000
_jmp_addr_0x00572083:    inc                eax                                           // 0x00572083    40
                         cmp.s              eax, edi                                      // 0x00572084    3bc7
                         {disp8} jle        _jmp_addr_0x0057203d                          // 0x00572086    7eb5
_jmp_addr_0x00572088:    pop                edi                                           // 0x00572088    5f
                         pop                esi                                           // 0x00572089    5e
                         pop                ebx                                           // 0x0057208a    5b
                         ret                0x0008                                        // 0x0057208b    c20800
                         nop                                                              // 0x0057208e    90
                         nop                                                              // 0x0057208f    90
_jmp_addr_0x00572090:    sub                esp, 0x0000011c                               // 0x00572090    81ec1c010000
                         push               ebp                                           // 0x00572096    55
                         mov.s              ebp, ecx                                      // 0x00572097    8be9
                         push               esi                                           // 0x00572099    56
                         {disp32} mov       esi, dword ptr [ebp + 0x000000b0]             // 0x0057209a    8bb5b0000000
                         {disp32} fild      dword ptr [esi + 0x0000027c]                  // 0x005720a0    db867c020000
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]             // 0x005720a6    8b8650020000
                         test               eax, eax                                      // 0x005720ac    85c0
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x005720ae    d95c240c
                         {disp8} jle        _jmp_addr_0x005720c7                          // 0x005720b2    7e13
_jmp_addr_0x005720b4:    dec                eax                                           // 0x005720b4    48
                         push               eax                                           // 0x005720b5    50
                         mov.s              ecx, esi                                      // 0x005720b6    8bce
                         call               @DeleteString__9SetupListFi@12                // 0x005720b8    e8a38ce9ff
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]             // 0x005720bd    8b8650020000
                         test               eax, eax                                      // 0x005720c3    85c0
                         {disp8} jg         _jmp_addr_0x005720b4                          // 0x005720c5    7fed
_jmp_addr_0x005720c7:    {disp32} mov       eax, dword ptr [ebp + 0x000000b0]             // 0x005720c7    8b85b0000000
                         {disp32} mov       dword ptr [eax + 0x00000248], 0xffffffff      // 0x005720cd    c78048020000ffffffff
                         {disp32} mov       eax, dword ptr [ebp + 0x000000d0]             // 0x005720d7    8b85d0000000
                         test               eax, eax                                      // 0x005720dd    85c0
                         {disp32} je        _jmp_addr_0x00572455                          // 0x005720df    0f8470030000
                         mov                eax, dword ptr [eax]                          // 0x005720e5    8b00
                         test               eax, eax                                      // 0x005720e7    85c0
                         push               ebx                                           // 0x005720e9    53
                         push               edi                                           // 0x005720ea    57
                         {disp32} je        _jmp_addr_0x00572383                          // 0x005720eb    0f8492020000
                         {disp8} mov        ebx, dword ptr [eax + 0x04]                   // 0x005720f1    8b5804
                         test               ebx, ebx                                      // 0x005720f4    85db
                         {disp32} je        _jmp_addr_0x00572383                          // 0x005720f6    0f8487020000
_jmp_addr_0x005720fc:    {disp8} mov        al, byte ptr [ebx + 0x01]                     // 0x005720fc    8a4301
                         test               al, al                                        // 0x005720ff    84c0
                         {disp8} je         _jmp_addr_0x00572116                          // 0x00572101    7413
                         {disp8} lea        eax, dword ptr [ebx + 0x02]                   // 0x00572103    8d4302
                         push               eax                                           // 0x00572106    50
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x00572107    8d4c2430
                         push               ecx                                           // 0x0057210b    51
                         call               _wcscpy                                       // 0x0057210c    e8a53e2500
                         add                esp, 0x08                                     // 0x00572111    83c408
                         {disp8} jmp        _jmp_addr_0x0057212d                          // 0x00572114    eb17
_jmp_addr_0x00572116:    {disp8} lea        edx, dword ptr [ebx + 0x02]                   // 0x00572116    8d5302
                         push               edx                                           // 0x00572119    52
                         {disp8} lea        eax, dword ptr [esp + 0x30]                   // 0x0057211a    8d442430
                         push               0x00bef1ec                                    // 0x0057211e    68ecf1be00
                         push               eax                                           // 0x00572123    50
                         call               dword ptr [rdata_bytes + 0x360]               // 0x00572124    ff1560938a00
                         add                esp, 0x0c                                     // 0x0057212a    83c40c
_jmp_addr_0x0057212d:    {disp32} mov       eax, dword ptr [ebx + 0x00000084]             // 0x0057212d    8b8384000000
                         {disp32} mov       cl, byte ptr [ebx + 0x00000084]               // 0x00572133    8a8b84000000
                         {disp32} mov       esi, dword ptr [ebp + 0x000000b0]             // 0x00572139    8bb5b0000000
                         mov.s              edx, eax                                      // 0x0057213f    8bd0
                         shr                eax, 0x10                                     // 0x00572141    c1e810
                         {disp8} mov        byte ptr [esp + 0x20], al                     // 0x00572144    88442420
                         {disp8} mov        byte ptr [esp + 0x18], cl                     // 0x00572148    884c2418
                         {disp32} mov       ecx, dword ptr [esi + 0x00000250]             // 0x0057214c    8b8e50020000
                         {disp8} lea        eax, dword ptr [esp + 0x2c]                   // 0x00572152    8d44242c
                         push               eax                                           // 0x00572156    50
                         shr                edx, 8                                        // 0x00572157    c1ea08
                         push               ecx                                           // 0x0057215a    51
                         mov.s              ecx, esi                                      // 0x0057215b    8bce
                         {disp8} mov        byte ptr [esp + 0x2c], dl                     // 0x0057215d    8854242c
                         call               @InsertString__9SetupListFiPw@16              // 0x00572161    e80a8de9ff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000250]             // 0x00572166    8b8e50020000
                         {disp8} lea        eax, dword ptr [ecx + -0x01]                  // 0x0057216c    8d41ff
                         test               eax, eax                                      // 0x0057216f    85c0
                         {disp8} jl         _jmp_addr_0x005721a8                          // 0x00572171    7c35
                         cmp.s              eax, ecx                                      // 0x00572173    3bc1
                         {disp8} jge        _jmp_addr_0x005721a8                          // 0x00572175    7d31
                         {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x00572177    8b542420
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x0057217b    8b4c2424
                         and                edx, 0x000000ff                               // 0x0057217f    81e2ff000000
                         and                ecx, 0x000000ff                               // 0x00572185    81e1ff000000
                         shl                edx, 8                                        // 0x0057218b    c1e208
                         add.s              edx, ecx                                      // 0x0057218e    03d1
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x00572190    8b4c2418
                         and                ecx, 0x000000ff                               // 0x00572194    81e1ff000000
                         shl                edx, 8                                        // 0x0057219a    c1e208
                         add.s              edx, ecx                                      // 0x0057219d    03d1
                         {disp32} mov       ecx, dword ptr [esi + 0x00000268]             // 0x0057219f    8b8e68020000
                         mov                dword ptr [ecx + eax * 0x4], edx              // 0x005721a5    891481
_jmp_addr_0x005721a8:    {disp32} mov       ecx, dword ptr [ebp + 0x000000b0]             // 0x005721a8    8b8db0000000
                         {disp32} mov       eax, dword ptr [ecx + 0x00000250]             // 0x005721ae    8b8150020000
                         dec                eax                                           // 0x005721b4    48
                         {disp8} js         _jmp_addr_0x005721c8                          // 0x005721b5    7811
                         cmp                eax, dword ptr [ecx + 0x00000250]             // 0x005721b7    3b8150020000
                         {disp8} jge        _jmp_addr_0x005721c8                          // 0x005721bd    7d09
                         {disp32} mov       edx, dword ptr [ecx + 0x00000264]             // 0x005721bf    8b9164020000
                         mov                dword ptr [edx + eax * 0x4], ebx              // 0x005721c5    891c82
_jmp_addr_0x005721c8:    {disp32} mov       ecx, dword ptr [ebp + 0x000000b0]             // 0x005721c8    8b8db0000000
                         {disp32} mov       eax, dword ptr [ecx + 0x00000250]             // 0x005721ce    8b8150020000
                         dec                eax                                           // 0x005721d4    48
                         {disp8} js         _jmp_addr_0x005721ec                          // 0x005721d5    7815
                         cmp                eax, dword ptr [ecx + 0x00000250]             // 0x005721d7    3b8150020000
                         {disp8} jge        _jmp_addr_0x005721ec                          // 0x005721dd    7d0d
                         {disp32} mov       ecx, dword ptr [ecx + 0x0000026c]             // 0x005721df    8b896c020000
                         mov                dword ptr [ecx + eax * 0x4], 0x005706a0       // 0x005721e5    c70481a0065700
_jmp_addr_0x005721ec:    {disp8} mov        al, byte ptr [ebx + 0x01]                     // 0x005721ec    8a4301
                         test               al, al                                        // 0x005721ef    84c0
                         {disp32} je        _jmp_addr_0x00572351                          // 0x005721f1    0f845a010000
                         {disp32} mov       eax, dword ptr [ebx + 0x00000088]             // 0x005721f7    8b8388000000
                         test               eax, eax                                      // 0x005721fd    85c0
                         {disp32} je        _jmp_addr_0x00572351                          // 0x005721ff    0f844c010000
                         {disp8} mov        esi, dword ptr [eax + 0x04]                   // 0x00572205    8b7004
                         test               esi, esi                                      // 0x00572208    85f6
                         {disp32} je        _jmp_addr_0x00572351                          // 0x0057220a    0f8441010000
_jmp_addr_0x00572210:    {disp32} lea       edx, dword ptr [esi + 0x0000008e]             // 0x00572210    8d968e000000
                         push               edx                                           // 0x00572216    52
                         {disp8} lea        eax, dword ptr [esp + 0x30]                   // 0x00572217    8d442430
                         push               0x00bef1e0                                    // 0x0057221b    68e0f1be00
                         push               eax                                           // 0x00572220    50
                         call               dword ptr [rdata_bytes + 0x360]               // 0x00572221    ff1560938a00
                         {disp32} mov       eax, dword ptr [esi + 0x000000ec]             // 0x00572227    8b86ec000000
                         {disp32} mov       cl, byte ptr [esi + 0x000000ec]               // 0x0057222d    8a8eec000000
                         {disp32} mov       edi, dword ptr [ebp + 0x000000b0]             // 0x00572233    8bbdb0000000
                         mov.s              edx, eax                                      // 0x00572239    8bd0
                         shr                eax, 0x10                                     // 0x0057223b    c1e810
                         add                esp, 0x0c                                     // 0x0057223e    83c40c
                         {disp8} mov        byte ptr [esp + 0x28], al                     // 0x00572241    88442428
                         {disp8} mov        byte ptr [esp + 0x10], cl                     // 0x00572245    884c2410
                         {disp32} mov       ecx, dword ptr [edi + 0x00000250]             // 0x00572249    8b8f50020000
                         {disp8} lea        eax, dword ptr [esp + 0x2c]                   // 0x0057224f    8d44242c
                         push               eax                                           // 0x00572253    50
                         shr                edx, 8                                        // 0x00572254    c1ea08
                         push               ecx                                           // 0x00572257    51
                         mov.s              ecx, edi                                      // 0x00572258    8bcf
                         {disp8} mov        byte ptr [esp + 0x24], dl                     // 0x0057225a    88542424
                         call               @InsertString__9SetupListFiPw@16              // 0x0057225e    e80d8ce9ff
                         {disp32} mov       ecx, dword ptr [edi + 0x00000250]             // 0x00572263    8b8f50020000
                         {disp8} lea        eax, dword ptr [ecx + -0x01]                  // 0x00572269    8d41ff
                         test               eax, eax                                      // 0x0057226c    85c0
                         {disp8} jl         _jmp_addr_0x005722a5                          // 0x0057226e    7c35
                         cmp.s              eax, ecx                                      // 0x00572270    3bc1
                         {disp8} jge        _jmp_addr_0x005722a5                          // 0x00572272    7d31
                         {disp8} mov        edx, dword ptr [esp + 0x28]                   // 0x00572274    8b542428
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x00572278    8b4c241c
                         and                edx, 0x000000ff                               // 0x0057227c    81e2ff000000
                         and                ecx, 0x000000ff                               // 0x00572282    81e1ff000000
                         shl                edx, 8                                        // 0x00572288    c1e208
                         add.s              edx, ecx                                      // 0x0057228b    03d1
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0057228d    8b4c2410
                         and                ecx, 0x000000ff                               // 0x00572291    81e1ff000000
                         shl                edx, 8                                        // 0x00572297    c1e208
                         add.s              edx, ecx                                      // 0x0057229a    03d1
                         {disp32} mov       ecx, dword ptr [edi + 0x00000268]             // 0x0057229c    8b8f68020000
                         mov                dword ptr [ecx + eax * 0x4], edx              // 0x005722a2    891481
_jmp_addr_0x005722a5:    {disp32} mov       ecx, dword ptr [ebp + 0x000000b0]             // 0x005722a5    8b8db0000000
                         {disp32} mov       eax, dword ptr [ecx + 0x00000250]             // 0x005722ab    8b8150020000
                         dec                eax                                           // 0x005722b1    48
                         {disp8} js         _jmp_addr_0x005722dd                          // 0x005722b2    7829
                         cmp                eax, dword ptr [ecx + 0x00000250]             // 0x005722b4    3b8150020000
                         {disp8} jge        _jmp_addr_0x005722dd                          // 0x005722ba    7d21
                         {disp32} mov       dl, byte ptr [esi + 0x0000008d]               // 0x005722bc    8a968d000000
                         {disp32} mov       edi, dword ptr [esi + 0x000000ec]             // 0x005722c2    8bbeec000000
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000268]             // 0x005722c8    8b8968020000
                         neg                dl                                            // 0x005722ce    f6da
                         sbb.s              edx, edx                                      // 0x005722d0    1bd2
                         and                edx, 0xff000000                               // 0x005722d2    81e2000000ff
                         or.s               edx, edi                                      // 0x005722d8    0bd7
                         mov                dword ptr [ecx + eax * 0x4], edx              // 0x005722da    891481
_jmp_addr_0x005722dd:    {disp32} mov       ecx, dword ptr [ebp + 0x000000b0]             // 0x005722dd    8b8db0000000
                         {disp32} mov       eax, dword ptr [ecx + 0x00000250]             // 0x005722e3    8b8150020000
                         dec                eax                                           // 0x005722e9    48
                         {disp8} js         _jmp_addr_0x005722fd                          // 0x005722ea    7811
                         cmp                eax, dword ptr [ecx + 0x00000250]             // 0x005722ec    3b8150020000
                         {disp8} jge        _jmp_addr_0x005722fd                          // 0x005722f2    7d09
                         {disp32} mov       edx, dword ptr [ecx + 0x00000264]             // 0x005722f4    8b9164020000
                         mov                dword ptr [edx + eax * 0x4], esi              // 0x005722fa    893482
_jmp_addr_0x005722fd:    {disp32} mov       ecx, dword ptr [ebp + 0x000000b0]             // 0x005722fd    8b8db0000000
                         {disp32} mov       eax, dword ptr [ecx + 0x00000250]             // 0x00572303    8b8150020000
                         dec                eax                                           // 0x00572309    48
                         {disp8} js         _jmp_addr_0x00572321                          // 0x0057230a    7815
                         cmp                eax, dword ptr [ecx + 0x00000250]             // 0x0057230c    3b8150020000
                         {disp8} jge        _jmp_addr_0x00572321                          // 0x00572312    7d0d
                         {disp32} mov       ecx, dword ptr [ecx + 0x0000026c]             // 0x00572314    8b896c020000
                         mov                dword ptr [ecx + eax * 0x4], 0x00570710       // 0x0057231a    c7048110075700
_jmp_addr_0x00572321:    test               esi, esi                                      // 0x00572321    85f6
                         {disp32} mov       eax, dword ptr [ebx + 0x00000088]             // 0x00572323    8b8388000000
                         {disp8} jne        _jmp_addr_0x00572331                          // 0x00572329    7506
                         test               eax, eax                                      // 0x0057232b    85c0
                         {disp8} je         _jmp_addr_0x00572351                          // 0x0057232d    7422
                         {disp8} jmp        _jmp_addr_0x00572346                          // 0x0057232f    eb15
_jmp_addr_0x00572331:    test               eax, eax                                      // 0x00572331    85c0
                         {disp8} je         _jmp_addr_0x00572351                          // 0x00572333    741c
_jmp_addr_0x00572335:    cmp                dword ptr [eax + 0x04], esi                   // 0x00572335    397004
                         mov                eax, dword ptr [eax]                          // 0x00572338    8b00
                         {disp8} je         _jmp_addr_0x00572342                          // 0x0057233a    7406
                         test               eax, eax                                      // 0x0057233c    85c0
                         {disp8} je         _jmp_addr_0x00572351                          // 0x0057233e    7411
                         {disp8} jmp        _jmp_addr_0x00572335                          // 0x00572340    ebf3
_jmp_addr_0x00572342:    test               eax, eax                                      // 0x00572342    85c0
                         {disp8} je         _jmp_addr_0x00572351                          // 0x00572344    740b
_jmp_addr_0x00572346:    {disp8} mov        esi, dword ptr [eax + 0x04]                   // 0x00572346    8b7004
                         test               esi, esi                                      // 0x00572349    85f6
                         {disp32} jne       _jmp_addr_0x00572210                          // 0x0057234b    0f85bffeffff
_jmp_addr_0x00572351:    test               ebx, ebx                                      // 0x00572351    85db
                         {disp32} mov       eax, dword ptr [ebp + 0x000000d0]             // 0x00572353    8b85d0000000
                         mov                eax, dword ptr [eax]                          // 0x00572359    8b00
                         {disp8} jne        _jmp_addr_0x00572363                          // 0x0057235b    7506
                         test               eax, eax                                      // 0x0057235d    85c0
                         {disp8} je         _jmp_addr_0x00572383                          // 0x0057235f    7422
                         {disp8} jmp        _jmp_addr_0x00572378                          // 0x00572361    eb15
_jmp_addr_0x00572363:    test               eax, eax                                      // 0x00572363    85c0
                         {disp8} je         _jmp_addr_0x00572383                          // 0x00572365    741c
_jmp_addr_0x00572367:    cmp                dword ptr [eax + 0x04], ebx                   // 0x00572367    395804
                         mov                eax, dword ptr [eax]                          // 0x0057236a    8b00
                         {disp8} je         _jmp_addr_0x00572374                          // 0x0057236c    7406
                         test               eax, eax                                      // 0x0057236e    85c0
                         {disp8} je         _jmp_addr_0x00572383                          // 0x00572370    7411
                         {disp8} jmp        _jmp_addr_0x00572367                          // 0x00572372    ebf3
_jmp_addr_0x00572374:    test               eax, eax                                      // 0x00572374    85c0
                         {disp8} je         _jmp_addr_0x00572383                          // 0x00572376    740b
_jmp_addr_0x00572378:    {disp8} mov        ebx, dword ptr [eax + 0x04]                   // 0x00572378    8b5804
                         test               ebx, ebx                                      // 0x0057237b    85db
                         {disp32} jne       _jmp_addr_0x005720fc                          // 0x0057237d    0f8579fdffff
_jmp_addr_0x00572383:    {disp32} mov       dx, word ptr [data_bytes + 0x4bf05a]          // 0x00572383    668b155a50e800
                         {disp8} mov        word ptr [esp + 0x10], dx                     // 0x0057238a    6689542410
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0057238f    8b442410
                         and                eax, 0x0000ffff                               // 0x00572393    25ffff0000
                         shr                eax, 1                                        // 0x00572398    d1e8
                         push               eax                                           // 0x0057239a    50
                         call               _jmp_addr_0x00411fc0                          // 0x0057239b    e820fce9ff
                         mov.s              esi, eax                                      // 0x005723a0    8bf0
                         {disp32} mov       eax, dword ptr [ebp + 0x000000b0]             // 0x005723a2    8b85b0000000
                         {disp8} mov        ecx, dword ptr [eax + 0x0c]                   // 0x005723a8    8b480c
                         add.s              ecx, esi                                      // 0x005723ab    03ce
                         {disp8} mov        dword ptr [eax + 0x14], ecx                   // 0x005723ad    894814
                         {disp32} mov       ecx, dword ptr [ebp + 0x000000b0]             // 0x005723b0    8b8db0000000
                         add                esp, 0x04                                     // 0x005723b6    83c404
                         call               ?UpdateHeights@SetupList@@QAEXXZ              // 0x005723b9    e83287e9ff
                         {disp32} mov       ecx, dword ptr [ebp + 0x000000b0]             // 0x005723be    8b8db0000000
                         {disp32} mov       eax, dword ptr [ecx + 0x00000270]             // 0x005723c4    8b8170020000
                         add                eax, 0x08                                     // 0x005723ca    83c008
                         cmp                eax, 0x0a                                     // 0x005723cd    83f80a
                         pop                edi                                           // 0x005723d0    5f
                         pop                ebx                                           // 0x005723d1    5b
                         {disp8} jle        _jmp_addr_0x005723dc                          // 0x005723d2    7e08
                         cmp.s              eax, esi                                      // 0x005723d4    3bc6
                         {disp8} jl         _jmp_addr_0x005723e1                          // 0x005723d6    7c09
                         mov.s              eax, esi                                      // 0x005723d8    8bc6
                         {disp8} jmp        _jmp_addr_0x005723e1                          // 0x005723da    eb05
_jmp_addr_0x005723dc:    mov                eax, 0x0000000a                               // 0x005723dc    b80a000000
_jmp_addr_0x005723e1:    {disp8} mov        edx, dword ptr [ecx + 0x0c]                   // 0x005723e1    8b510c
                         add.s              edx, eax                                      // 0x005723e4    03d0
                         {disp8} mov        dword ptr [ecx + 0x14], edx                   // 0x005723e6    895114
                         {disp32} mov       ecx, dword ptr [ebp + 0x000000b0]             // 0x005723e9    8b8db0000000
                         call               ?UpdateHeights@SetupList@@QAEXXZ              // 0x005723ef    e8fc86e9ff
                         {disp32} mov       esi, dword ptr [ebp + 0x000000b0]             // 0x005723f4    8bb5b0000000
                         {disp32} fild      dword ptr [esi + 0x00000278]                  // 0x005723fa    db8678020000
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x00572400    d944240c
                         fcomp              st(1)                                         // 0x00572404    d8d9
                         fnstsw             ax                                            // 0x00572406    dfe0
                         test               ah, 0x41                                      // 0x00572408    f6c441
                         {disp8} jne        _jmp_addr_0x00572413                          // 0x0057240b    7506
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x0057240d    d95c240c
                         {disp8} jmp        _jmp_addr_0x00572415                          // 0x00572411    eb02
_jmp_addr_0x00572413:    fstp               st(0)                                         // 0x00572413    ddd8
_jmp_addr_0x00572415:    {disp8} fld        dword ptr [esp + 0x0c]                        // 0x00572415    d944240c
                         call               _jmp_addr_0x007a1400                          // 0x00572419    e8e2ef2200
                         {disp32} mov       dword ptr [esi + 0x0000027c], eax             // 0x0057241e    89867c020000
                         {disp32} mov       eax, dword ptr [ebp + 0x000000cc]             // 0x00572424    8b85cc000000
                         {disp8} mov        ecx, dword ptr [eax + 0x0c]                   // 0x0057242a    8b480c
                         sub                dword ptr [eax + 0x14], ecx                   // 0x0057242d    294814
                         {disp32} mov       edx, dword ptr [ebp + 0x000000b0]             // 0x00572430    8b95b0000000
                         {disp8} mov        ecx, dword ptr [edx + 0x14]                   // 0x00572436    8b4a14
                         {disp32} mov       eax, dword ptr [ebp + 0x000000cc]             // 0x00572439    8b85cc000000
                         {disp8} mov        dword ptr [eax + 0x0c], ecx                   // 0x0057243f    89480c
                         {disp32} mov       eax, dword ptr [ebp + 0x000000cc]             // 0x00572442    8b85cc000000
                         {disp8} mov        edx, dword ptr [eax + 0x0c]                   // 0x00572448    8b500c
                         add                dword ptr [eax + 0x14], edx                   // 0x0057244b    015014
                         mov.s              ecx, ebp                                      // 0x0057244e    8bcd
                         call               _jmp_addr_0x00572460                          // 0x00572450    e80b000000
_jmp_addr_0x00572455:    pop                esi                                           // 0x00572455    5e
                         pop                ebp                                           // 0x00572456    5d
                         add                esp, 0x0000011c                               // 0x00572457    81c41c010000
                         ret                                                              // 0x0057245d    c3
                         nop                                                              // 0x0057245e    90
                         nop                                                              // 0x0057245f    90
_jmp_addr_0x00572460:    push               ecx                                           // 0x00572460    51
                         push               ebx                                           // 0x00572461    53
                         push               ebp                                           // 0x00572462    55
                         push               esi                                           // 0x00572463    56
                         mov.s              ebp, ecx                                      // 0x00572464    8be9
                         push               edi                                           // 0x00572466    57
                         {disp32} mov       edi, dword ptr [ebp + 0x000000d0]             // 0x00572467    8bbdd0000000
                         mov                eax, dword ptr [edi]                          // 0x0057246d    8b07
                         xor.s              cl, cl                                        // 0x0057246f    32c9
                         xor.s              bl, bl                                        // 0x00572471    32db
                         test               eax, eax                                      // 0x00572473    85c0
                         {disp8} mov        byte ptr [esp + 0x13], 0x00                   // 0x00572475    c644241300
                         {disp8} je         _jmp_addr_0x005724f7                          // 0x0057247a    747b
                         {disp8} mov        esi, dword ptr [eax + 0x04]                   // 0x0057247c    8b7004
                         test               esi, esi                                      // 0x0057247f    85f6
                         {disp8} je         _jmp_addr_0x005724f7                          // 0x00572481    7474
_jmp_addr_0x00572483:    {disp32} mov       eax, dword ptr [esi + 0x00000088]             // 0x00572483    8b8688000000
                         test               eax, eax                                      // 0x00572489    85c0
                         {disp8} je         _jmp_addr_0x005724d9                          // 0x0057248b    744c
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x0057248d    8b5004
                         test               edx, edx                                      // 0x00572490    85d2
                         {disp8} je         _jmp_addr_0x005724d9                          // 0x00572492    7445
_jmp_addr_0x00572494:    {disp32} mov       al, byte ptr [edx + 0x0000008d]               // 0x00572494    8a828d000000
                         test               al, al                                        // 0x0057249a    84c0
                         {disp8} je         _jmp_addr_0x005724b7                          // 0x0057249c    7419
                         {disp8} mov        al, byte ptr [esp + 0x13]                     // 0x0057249e    8a442413
                         test               al, al                                        // 0x005724a2    84c0
                         {disp8} je         _jmp_addr_0x005724ae                          // 0x005724a4    7408
                         cmp                cl, byte ptr [edx]                            // 0x005724a6    3a0a
                         {disp8} je         _jmp_addr_0x005724b7                          // 0x005724a8    740d
                         xor.s              bl, bl                                        // 0x005724aa    32db
                         {disp8} jmp        _jmp_addr_0x005724b7                          // 0x005724ac    eb09
_jmp_addr_0x005724ae:    mov                cl, byte ptr [edx]                            // 0x005724ae    8a0a
                         {disp8} mov        byte ptr [esp + 0x13], 0x01                   // 0x005724b0    c644241301
                         mov                bl, 0x01                                      // 0x005724b5    b301
_jmp_addr_0x005724b7:    {disp32} mov       eax, dword ptr [esi + 0x00000088]             // 0x005724b7    8b8688000000
                         test               eax, eax                                      // 0x005724bd    85c0
                         {disp8} je         _jmp_addr_0x005724d9                          // 0x005724bf    7418
_jmp_addr_0x005724c1:    cmp                dword ptr [eax + 0x04], edx                   // 0x005724c1    395004
                         mov                eax, dword ptr [eax]                          // 0x005724c4    8b00
                         {disp8} je         _jmp_addr_0x005724ce                          // 0x005724c6    7406
                         test               eax, eax                                      // 0x005724c8    85c0
                         {disp8} je         _jmp_addr_0x005724d9                          // 0x005724ca    740d
                         {disp8} jmp        _jmp_addr_0x005724c1                          // 0x005724cc    ebf3
_jmp_addr_0x005724ce:    test               eax, eax                                      // 0x005724ce    85c0
                         {disp8} je         _jmp_addr_0x005724d9                          // 0x005724d0    7407
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x005724d2    8b5004
                         test               edx, edx                                      // 0x005724d5    85d2
                         {disp8} jne        _jmp_addr_0x00572494                          // 0x005724d7    75bb
_jmp_addr_0x005724d9:    mov                eax, dword ptr [edi]                          // 0x005724d9    8b07
                         test               eax, eax                                      // 0x005724db    85c0
                         {disp8} je         _jmp_addr_0x005724f7                          // 0x005724dd    7418
_jmp_addr_0x005724df:    cmp                dword ptr [eax + 0x04], esi                   // 0x005724df    397004
                         mov                eax, dword ptr [eax]                          // 0x005724e2    8b00
                         {disp8} je         _jmp_addr_0x005724ec                          // 0x005724e4    7406
                         test               eax, eax                                      // 0x005724e6    85c0
                         {disp8} je         _jmp_addr_0x005724f7                          // 0x005724e8    740d
                         {disp8} jmp        _jmp_addr_0x005724df                          // 0x005724ea    ebf3
_jmp_addr_0x005724ec:    test               eax, eax                                      // 0x005724ec    85c0
                         {disp8} je         _jmp_addr_0x005724f7                          // 0x005724ee    7407
                         {disp8} mov        esi, dword ptr [eax + 0x04]                   // 0x005724f0    8b7004
                         test               esi, esi                                      // 0x005724f3    85f6
                         {disp8} jne        _jmp_addr_0x00572483                          // 0x005724f5    758c
_jmp_addr_0x005724f7:    test               cl, cl                                        // 0x005724f7    84c9
                         {disp32} mov       byte ptr [ebp + 0x000000dc], bl               // 0x005724f9    889ddc000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x34030c]        // 0x005724ff    a10c63d000
                         {disp8} jne        _jmp_addr_0x0057250b                          // 0x00572504    7505
                         {disp32} mov       eax, dword ptr [data_bytes + 0x340308]        // 0x00572506    a10863d000
_jmp_addr_0x0057250b:    push               eax                                           // 0x0057250b    50
                         {disp32} mov       eax, dword ptr [ebp + 0x000000cc]             // 0x0057250c    8b85cc000000
                         add                eax, 0x24                                     // 0x00572512    83c024
                         push               eax                                           // 0x00572515    50
                         call               _wcscpy                                       // 0x00572516    e89b3a2500
                         add                esp, 0x08                                     // 0x0057251b    83c408
                         pop                edi                                           // 0x0057251e    5f
                         pop                esi                                           // 0x0057251f    5e
                         pop                ebp                                           // 0x00572520    5d
                         pop                ebx                                           // 0x00572521    5b
                         pop                ecx                                           // 0x00572522    59
                         ret                                                              // 0x00572523    c3
                         nop                                                              // 0x00572524    90
                         nop                                                              // 0x00572525    90
                         nop                                                              // 0x00572526    90
                         nop                                                              // 0x00572527    90
                         nop                                                              // 0x00572528    90
                         nop                                                              // 0x00572529    90
                         nop                                                              // 0x0057252a    90
                         nop                                                              // 0x0057252b    90
                         nop                                                              // 0x0057252c    90
                         nop                                                              // 0x0057252d    90
                         nop                                                              // 0x0057252e    90
                         nop                                                              // 0x0057252f    90
?Destroy@GatheringBox@@UAEXXZ:
                         call               ?Destroy@DialogBoxBase@@UAEXXZ                // 0x00572530    e85b10faff
                         {disp32} mov       dword ptr [data_bytes + 0x34043c], 0x00000000 // 0x00572535    c7053c64d00000000000
                         ret                                                              // 0x0057253f    c3
                         push               ebx                                           // 0x00572540    53
                         push               esi                                           // 0x00572541    56
                         push               edi                                           // 0x00572542    57
                         mov.s              edi, ecx                                      // 0x00572543    8bf9
                         call               _jmp_addr_0x00572090                          // 0x00572545    e846fbffff
                         {disp32} mov       esi, dword ptr [edi + 0x000000ac]             // 0x0057254a    8bb7ac000000
                         push               0x000000ff                                    // 0x00572550    68ff000000
                         {disp8} lea        ebx, dword ptr [esi + 0x24]                   // 0x00572555    8d5e24
                         push               0x00c4cd30                                    // 0x00572558    6830cdc400
                         push               ebx                                           // 0x0057255d    53
                         call               _wcsncpy                                      // 0x0057255e    e8c23e2500
                         push               ebx                                           // 0x00572563    53
                         {disp32} mov       word ptr [esi + 0x00000222], 0x0000           // 0x00572564    66c786220200000000
                         call               _wcslen                                       // 0x0057256d    e8f03e2500
                         {disp32} mov       dword ptr [esi + 0x0000024c], eax             // 0x00572572    89864c020000
                         {disp32} mov       dword ptr [esi + 0x00000254], eax             // 0x00572578    898654020000
                         {disp32} mov       dword ptr [esi + 0x00000250], eax             // 0x0057257e    898650020000
                         {disp32} mov       dword ptr [esi + 0x00000258], 0x00000000      // 0x00572584    c7865802000000000000
                         {disp32} mov       eax, dword ptr [edi + 0x000000ac]             // 0x0057258e    8b87ac000000
                         {disp8} mov        ecx, dword ptr [edi + 0x04]                   // 0x00572594    8b4f04
                         add                esp, 0x10                                     // 0x00572597    83c410
                         push               eax                                           // 0x0057259a    50
                         call               @SetFocusControl__8SetupBoxFP12SetupControl@12// 0x0057259b    e8a06be9ff
                         pop                edi                                           // 0x005725a0    5f
                         pop                esi                                           // 0x005725a1    5e
                         pop                ebx                                           // 0x005725a2    5b
                         ret                                                              // 0x005725a3    c3
                         nop                                                              // 0x005725a4    90
                         nop                                                              // 0x005725a5    90
                         nop                                                              // 0x005725a6    90
                         nop                                                              // 0x005725a7    90
                         nop                                                              // 0x005725a8    90
                         nop                                                              // 0x005725a9    90
                         nop                                                              // 0x005725aa    90
                         nop                                                              // 0x005725ab    90
                         nop                                                              // 0x005725ac    90
                         nop                                                              // 0x005725ad    90
                         nop                                                              // 0x005725ae    90
                         nop                                                              // 0x005725af    90
_jmp_addr_0x005725b0:    push               ebx                                           // 0x005725b0    53
                         push               ebp                                           // 0x005725b1    55
                         push               esi                                           // 0x005725b2    56
                         mov.s              esi, ecx                                      // 0x005725b3    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x000000ec]             // 0x005725b5    8b86ec000000
                         push               edi                                           // 0x005725bb    57
                         xor.s              edi, edi                                      // 0x005725bc    33ff
                         xor.s              ebx, ebx                                      // 0x005725be    33db
                         cmp.s              eax, edi                                      // 0x005725c0    3bc7
                         {disp32} mov       dword ptr [esi + 0x000000e0], eax             // 0x005725c2    8986e0000000
                         {disp8} jle        _jmp_addr_0x0057260c                          // 0x005725c8    7e42
                         {disp32} mov       eax, dword ptr [esi + 0x000000e8]             // 0x005725ca    8b86e8000000
                         cmp.s              eax, edi                                      // 0x005725d0    3bc7
                         {disp8} je         _jmp_addr_0x0057260c                          // 0x005725d2    7438
                         cmp                dword ptr [eax + 0x04], edi                   // 0x005725d4    397804
                         {disp8} je         _jmp_addr_0x0057260c                          // 0x005725d7    7433
                         cmp.s              eax, edi                                      // 0x005725d9    3bc7
                         {disp8} je         _jmp_addr_0x005725e2                          // 0x005725db    7405
                         {disp8} mov        eax, dword ptr [eax + 0x04]                   // 0x005725dd    8b4004
                         {disp8} jmp        _jmp_addr_0x005725e4                          // 0x005725e0    eb02
_jmp_addr_0x005725e2:    xor.s              eax, eax                                      // 0x005725e2    33c0
_jmp_addr_0x005725e4:    add                eax, 0x04                                     // 0x005725e4    83c004
                         push               0x000000ff                                    // 0x005725e7    68ff000000
                         push               eax                                           // 0x005725ec    50
                         {disp32} mov       eax, dword ptr [esi + 0x000000b8]             // 0x005725ed    8b86b8000000
                         add                eax, 0x24                                     // 0x005725f3    83c024
                         push               eax                                           // 0x005725f6    50
                         call               _wcsncpy                                      // 0x005725f7    e8293e2500
                         {disp32} mov       ecx, dword ptr [esi + 0x000000b8]             // 0x005725fc    8b8eb8000000
                         add                esp, 0x0c                                     // 0x00572602    83c40c
                         {disp32} mov       word ptr [ecx + 0x00000222], di               // 0x00572605    6689b922020000
_jmp_addr_0x0057260c:    cmp                dword ptr [esi + 0x000000e0], edi             // 0x0057260c    39bee0000000
                         {disp8} je         _jmp_addr_0x00572676                          // 0x00572612    7462
                         {disp32} mov       eax, dword ptr [esi + 0x000000e8]             // 0x00572614    8b86e8000000
                         cmp.s              eax, edi                                      // 0x0057261a    3bc7
                         {disp8} je         _jmp_addr_0x00572629                          // 0x0057261c    740b
                         {disp8} mov        eax, dword ptr [eax + 0x04]                   // 0x0057261e    8b4004
                         cmp.s              eax, edi                                      // 0x00572621    3bc7
                         {disp8} je         _jmp_addr_0x00572629                          // 0x00572623    7404
                         mov                eax, dword ptr [eax]                          // 0x00572625    8b00
                         {disp8} jmp        _jmp_addr_0x0057262b                          // 0x00572627    eb02
_jmp_addr_0x00572629:    xor.s              eax, eax                                      // 0x00572629    33c0
_jmp_addr_0x0057262b:    sub.s              eax, edi                                      // 0x0057262b    2bc7
                         {disp8} je         _jmp_addr_0x00572676                          // 0x0057262d    7447
                         sub                eax, 0x02                                     // 0x0057262f    83e802
                         {disp8} je         _jmp_addr_0x0057266c                          // 0x00572632    7438
                         dec                eax                                           // 0x00572634    48
                         {disp8} je         _jmp_addr_0x00572643                          // 0x00572635    740c
                         mov                ebx, 0x00000007                               // 0x00572637    bb07000000
                         mov                edi, 0x00000005                               // 0x0057263c    bf05000000
                         {disp8} jmp        _jmp_addr_0x00572676                          // 0x00572641    eb33
_jmp_addr_0x00572643:    {disp32} mov       eax, dword ptr [esi + 0x000000e8]             // 0x00572643    8b86e8000000
                         cmp.s              eax, edi                                      // 0x00572649    3bc7
                         {disp8} je         _jmp_addr_0x0057265d                          // 0x0057264b    7410
                         {disp8} mov        eax, dword ptr [eax + 0x04]                   // 0x0057264d    8b4004
                         {disp32} mov       edi, dword ptr [eax + 0x00001004]             // 0x00572650    8bb804100000
                         add                edi, 0x0b                                     // 0x00572656    83c70b
                         mov.s              ebx, edi                                      // 0x00572659    8bdf
                         {disp8} jmp        _jmp_addr_0x00572676                          // 0x0057265b    eb19
_jmp_addr_0x0057265d:    xor.s              eax, eax                                      // 0x0057265d    33c0
                         {disp32} mov       edi, dword ptr [eax + 0x00001004]             // 0x0057265f    8bb804100000
                         add                edi, 0x0b                                     // 0x00572665    83c70b
                         mov.s              ebx, edi                                      // 0x00572668    8bdf
                         {disp8} jmp        _jmp_addr_0x00572676                          // 0x0057266a    eb0a
_jmp_addr_0x0057266c:    mov                edi, 0x0000000a                               // 0x0057266c    bf0a000000
                         mov                ebx, 0x00000009                               // 0x00572671    bb09000000
_jmp_addr_0x00572676:    {disp32} mov       ebp, dword ptr [__imp__GetTickCount@4]        // 0x00572676    8b2dc4918a00
                         call               ebp                                           // 0x0057267c    ffd5
                         mov.s              edx, eax                                      // 0x0057267e    8bd0
                         mov                eax, 0x51eb851f                               // 0x00572680    b81f85eb51
                         mul                edx                                           // 0x00572685    f7e2
                         shr                edx, 5                                        // 0x00572687    c1ea05
                         test               dl, 0x03                                      // 0x0057268a    f6c203
                         {disp8} jne        _jmp_addr_0x00572691                          // 0x0057268d    7502
                         mov.s              ebx, edi                                      // 0x0057268f    8bdf
_jmp_addr_0x00572691:    {disp32} mov       dl, byte ptr [esi + 0x000000a8]               // 0x00572691    8a96a8000000
                         {disp32} mov       ecx, dword ptr [esi + 0x000000b4]             // 0x00572697    8b8eb4000000
                         mov                eax, dword ptr [ecx]                          // 0x0057269d    8b01
                         test               dl, dl                                        // 0x0057269f    84d2
                         sete               dl                                            // 0x005726a1    0f94c2
                         push               edx                                           // 0x005726a4    52
                         call               dword ptr [eax + 8]                           // 0x005726a5    ff5008
                         {disp32} mov       dl, byte ptr [esi + 0x000000dd]               // 0x005726a8    8a96dd000000
                         {disp32} mov       ecx, dword ptr [esi + 0x000000ac]             // 0x005726ae    8b8eac000000
                         mov                eax, dword ptr [ecx]                          // 0x005726b4    8b01
                         test               dl, dl                                        // 0x005726b6    84d2
                         sete               dl                                            // 0x005726b8    0f94c2
                         push               edx                                           // 0x005726bb    52
                         call               dword ptr [eax + 8]                           // 0x005726bc    ff5008
                         {disp32} mov       al, byte ptr [esi + 0x000000dd]               // 0x005726bf    8a86dd000000
                         test               al, al                                        // 0x005726c5    84c0
                         {disp8} je         _jmp_addr_0x005726e7                          // 0x005726c7    741e
                         {disp32} mov       eax, dword ptr [esi + 0x000000b0]             // 0x005726c9    8b86b0000000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000250]             // 0x005726cf    8b8850020000
                         test               ecx, ecx                                      // 0x005726d5    85c9
                         {disp8} jle        _jmp_addr_0x005726e7                          // 0x005726d7    7e0e
                         {disp32} mov       al, byte ptr [esi + 0x000000a8]               // 0x005726d9    8a86a8000000
                         test               al, al                                        // 0x005726df    84c0
                         {disp8} jne        _jmp_addr_0x005726e7                          // 0x005726e1    7504
                         xor.s              eax, eax                                      // 0x005726e3    33c0
                         {disp8} jmp        _jmp_addr_0x005726ec                          // 0x005726e5    eb05
_jmp_addr_0x005726e7:    mov                eax, 0x00000001                               // 0x005726e7    b801000000
_jmp_addr_0x005726ec:    {disp32} mov       ecx, dword ptr [esi + 0x000000b0]             // 0x005726ec    8b8eb0000000
                         mov                edx, dword ptr [ecx]                          // 0x005726f2    8b11
                         push               eax                                           // 0x005726f4    50
                         call               dword ptr [edx + 8]                           // 0x005726f5    ff5208
                         {disp32} mov       dl, byte ptr [esi + 0x000000dd]               // 0x005726f8    8a96dd000000
                         {disp32} mov       ecx, dword ptr [esi + 0x000000bc]             // 0x005726fe    8b8ebc000000
                         mov                eax, dword ptr [ecx]                          // 0x00572704    8b01
                         test               dl, dl                                        // 0x00572706    84d2
                         sete               dl                                            // 0x00572708    0f94c2
                         push               edx                                           // 0x0057270b    52
                         call               dword ptr [eax + 8]                           // 0x0057270c    ff5008
                         {disp32} mov       dl, byte ptr [esi + 0x000000dd]               // 0x0057270f    8a96dd000000
                         {disp32} mov       ecx, dword ptr [esi + 0x000000c0]             // 0x00572715    8b8ec0000000
                         mov                eax, dword ptr [ecx]                          // 0x0057271b    8b01
                         test               dl, dl                                        // 0x0057271d    84d2
                         sete               dl                                            // 0x0057271f    0f94c2
                         push               edx                                           // 0x00572722    52
                         call               dword ptr [eax + 8]                           // 0x00572723    ff5008
                         {disp32} mov       dl, byte ptr [esi + 0x000000dd]               // 0x00572726    8a96dd000000
                         {disp32} mov       ecx, dword ptr [esi + 0x000000ac]             // 0x0057272c    8b8eac000000
                         mov                eax, dword ptr [ecx]                          // 0x00572732    8b01
                         test               dl, dl                                        // 0x00572734    84d2
                         sete               dl                                            // 0x00572736    0f94c2
                         push               edx                                           // 0x00572739    52
                         call               dword ptr [eax + 8]                           // 0x0057273a    ff5008
                         {disp32} mov       al, byte ptr [esi + 0x000000dd]               // 0x0057273d    8a86dd000000
                         test               al, al                                        // 0x00572743    84c0
                         {disp8} je         _jmp_addr_0x0057275f                          // 0x00572745    7418
                         {disp32} mov       al, byte ptr [esi + 0x000000dc]               // 0x00572747    8a86dc000000
                         test               al, al                                        // 0x0057274d    84c0
                         {disp8} je         _jmp_addr_0x0057275f                          // 0x0057274f    740e
                         {disp32} mov       al, byte ptr [esi + 0x000000a8]               // 0x00572751    8a86a8000000
                         test               al, al                                        // 0x00572757    84c0
                         {disp8} jne        _jmp_addr_0x0057275f                          // 0x00572759    7504
                         xor.s              eax, eax                                      // 0x0057275b    33c0
                         {disp8} jmp        _jmp_addr_0x00572764                          // 0x0057275d    eb05
_jmp_addr_0x0057275f:    mov                eax, 0x00000001                               // 0x0057275f    b801000000
_jmp_addr_0x00572764:    {disp32} mov       ecx, dword ptr [esi + 0x000000cc]             // 0x00572764    8b8ecc000000
                         mov                edx, dword ptr [ecx]                          // 0x0057276a    8b11
                         push               eax                                           // 0x0057276c    50
                         call               dword ptr [edx + 8]                           // 0x0057276d    ff5208
                         {disp32} mov       eax, dword ptr [esi + 0x000000e0]             // 0x00572770    8b86e0000000
                         test               eax, eax                                      // 0x00572776    85c0
                         {disp8} je         _jmp_addr_0x0057279b                          // 0x00572778    7421
                         test               ebx, ebx                                      // 0x0057277a    85db
                         {disp8} je         _jmp_addr_0x0057279b                          // 0x0057277c    741d
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0057277e    a15c19d000
                         {disp32} mov       eax, dword ptr [eax + 0x0025005c]             // 0x00572783    8b805c002500
                         test               eax, eax                                      // 0x00572789    85c0
                         {disp8} je         _jmp_addr_0x00572797                          // 0x0057278b    740a
                         {disp32} mov       ecx, dword ptr [eax + 0x000045e8]             // 0x0057278d    8b88e8450000
                         test               ecx, ecx                                      // 0x00572793    85c9
                         {disp8} jne        _jmp_addr_0x0057279b                          // 0x00572795    7504
_jmp_addr_0x00572797:    xor.s              eax, eax                                      // 0x00572797    33c0
                         {disp8} jmp        _jmp_addr_0x005727a0                          // 0x00572799    eb05
_jmp_addr_0x0057279b:    mov                eax, 0x00000001                               // 0x0057279b    b801000000
_jmp_addr_0x005727a0:    {disp32} mov       ecx, dword ptr [esi + 0x000000c4]             // 0x005727a0    8b8ec4000000
                         mov                edx, dword ptr [ecx]                          // 0x005727a6    8b11
                         push               eax                                           // 0x005727a8    50
                         call               dword ptr [edx + 8]                           // 0x005727a9    ff5208
                         {disp32} mov       eax, dword ptr [esi + 0x000000e0]             // 0x005727ac    8b86e0000000
                         test               eax, eax                                      // 0x005727b2    85c0
                         {disp8} je         _jmp_addr_0x005727d3                          // 0x005727b4    741d
                         {disp32} mov       eax, dword ptr [_game]                        // 0x005727b6    a15c19d000
                         {disp32} mov       eax, dword ptr [eax + 0x0025005c]             // 0x005727bb    8b805c002500
                         test               eax, eax                                      // 0x005727c1    85c0
                         {disp8} je         _jmp_addr_0x005727cf                          // 0x005727c3    740a
                         {disp32} mov       ecx, dword ptr [eax + 0x000045e8]             // 0x005727c5    8b88e8450000
                         test               ecx, ecx                                      // 0x005727cb    85c9
                         {disp8} jne        _jmp_addr_0x005727d3                          // 0x005727cd    7504
_jmp_addr_0x005727cf:    xor.s              eax, eax                                      // 0x005727cf    33c0
                         {disp8} jmp        _jmp_addr_0x005727d8                          // 0x005727d1    eb05
_jmp_addr_0x005727d3:    mov                eax, 0x00000001                               // 0x005727d3    b801000000
_jmp_addr_0x005727d8:    {disp32} mov       ecx, dword ptr [esi + 0x000000b8]             // 0x005727d8    8b8eb8000000
                         mov                edx, dword ptr [ecx]                          // 0x005727de    8b11
                         push               eax                                           // 0x005727e0    50
                         call               dword ptr [edx + 8]                           // 0x005727e1    ff5208
                         {disp32} mov       al, byte ptr [esi + 0x000000e4]               // 0x005727e4    8a86e4000000
                         test               al, al                                        // 0x005727ea    84c0
                         {disp8} je         _jmp_addr_0x005727fc                          // 0x005727ec    740e
                         {disp32} mov       al, byte ptr [esi + 0x000000dd]               // 0x005727ee    8a86dd000000
                         test               al, al                                        // 0x005727f4    84c0
                         {disp8} jne        _jmp_addr_0x005727fc                          // 0x005727f6    7504
                         xor.s              eax, eax                                      // 0x005727f8    33c0
                         {disp8} jmp        _jmp_addr_0x00572801                          // 0x005727fa    eb05
_jmp_addr_0x005727fc:    mov                eax, 0x00000001                               // 0x005727fc    b801000000
_jmp_addr_0x00572801:    {disp32} mov       ecx, dword ptr [esi + 0x000000c8]             // 0x00572801    8b8ec8000000
                         mov                edx, dword ptr [ecx]                          // 0x00572807    8b11
                         push               eax                                           // 0x00572809    50
                         call               dword ptr [edx + 8]                           // 0x0057280a    ff5208
                         {disp32} mov       eax, dword ptr [data_bytes + 0x340434]        // 0x0057280d    a13464d000
                         test               eax, eax                                      // 0x00572812    85c0
                         {disp8} je         _jmp_addr_0x0057282b                          // 0x00572814    7415
                         {disp32} mov       al, byte ptr [esi + 0x000000dd]               // 0x00572816    8a86dd000000
                         test               al, al                                        // 0x0057281c    84c0
                         {disp8} jne        _jmp_addr_0x0057282b                          // 0x0057281e    750b
                         {disp8} mov        eax, dword ptr [esi + 0x2c]                   // 0x00572820    8b462c
                         test               eax, eax                                      // 0x00572823    85c0
                         {disp8} je         _jmp_addr_0x0057282b                          // 0x00572825    7404
                         xor.s              eax, eax                                      // 0x00572827    33c0
                         {disp8} jmp        _jmp_addr_0x00572830                          // 0x00572829    eb05
_jmp_addr_0x0057282b:    mov                eax, 0x00000001                               // 0x0057282b    b801000000
_jmp_addr_0x00572830:    {disp8} mov        ecx, dword ptr [esi + 0x28]                   // 0x00572830    8b4e28
                         mov                edx, dword ptr [ecx]                          // 0x00572833    8b11
                         push               eax                                           // 0x00572835    50
                         call               dword ptr [edx + 8]                           // 0x00572836    ff5208
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf058]        // 0x00572839    a15850e800
                         and                eax, 0x0000ffff                               // 0x0057283e    25ffff0000
                         sub                eax, 0x28                                     // 0x00572843    83e828
                         push               eax                                           // 0x00572846    50
                         call               _jmp_addr_0x00411dd0                          // 0x00572847    e884f5e9ff
                         {disp8} mov        ecx, dword ptr [esi + 0x28]                   // 0x0057284c    8b4e28
                         {disp8} mov        dword ptr [ecx + 0x08], eax                   // 0x0057284f    894108
                         {disp8} mov        edi, dword ptr [esi + 0x28]                   // 0x00572852    8b7e28
                         push               0x14                                          // 0x00572855    6a14
                         call               _jmp_addr_0x00411fc0                          // 0x00572857    e864f7e9ff
                         add                eax, dword ptr [edi + 0x08]                   // 0x0057285c    034708
                         {disp8} mov        dword ptr [edi + 0x10], eax                   // 0x0057285f    894710
                         {disp8} mov        edx, dword ptr [esi + 0x28]                   // 0x00572862    8b5628
                         {disp32} mov       al, byte ptr [edx + 0x00000229]               // 0x00572865    8a8229020000
                         add                esp, 0x08                                     // 0x0057286b    83c408
                         test               al, al                                        // 0x0057286e    84c0
                         {disp8} je         _jmp_addr_0x00572888                          // 0x00572870    7416
                         {disp8} mov        eax, dword ptr [esi + 0x1c]                   // 0x00572872    8b461c
                         {disp32} mov       cl, byte ptr [eax + 0x00000229]               // 0x00572875    8a8829020000
                         test               cl, cl                                        // 0x0057287b    84c9
                         {disp8} jne        _jmp_addr_0x00572888                          // 0x0057287d    7509
                         push               0x1                                           // 0x0057287f    6a01
                         mov.s              ecx, esi                                      // 0x00572881    8bce
                         call               _jmp_addr_0x005708d0                          // 0x00572883    e848e0ffff
_jmp_addr_0x00572888:    {disp32} mov       ecx, dword ptr [esi + 0x000000c4]             // 0x00572888    8b8ec4000000
                         {disp32} mov       dword ptr [ecx + 0x00000248], ebx             // 0x0057288e    899948020000
                         {disp32} mov       edx, dword ptr [esi + 0x000000ac]             // 0x00572894    8b96ac000000
                         {disp8} mov        ax, word ptr [edx + 0x24]                     // 0x0057289a    668b4224
                         {disp32} mov       ecx, dword ptr [esi + 0x000000bc]             // 0x0057289e    8b8ebc000000
                         neg                ax                                            // 0x005728a4    66f7d8
                         sbb.s              eax, eax                                      // 0x005728a7    1bc0
                         and                eax, 0xfffffffd                               // 0x005728a9    83e0fd
                         add                eax, 0x06                                     // 0x005728ac    83c006
                         {disp32} mov       dword ptr [ecx + 0x00000248], eax             // 0x005728af    898148020000
                         {disp32} mov       edx, dword ptr [esi + 0x000000c4]             // 0x005728b5    8b96c4000000
                         {disp32} mov       al, byte ptr [edx + 0x00000229]               // 0x005728bb    8a8229020000
                         test               al, al                                        // 0x005728c1    84c0
                         {disp32} jne       _jmp_addr_0x005729d2                          // 0x005728c3    0f8509010000
                         {disp32} mov       eax, dword ptr [esi + 0x000000e8]             // 0x005728c9    8b86e8000000
                         test               eax, eax                                      // 0x005728cf    85c0
                         {disp32} je        _jmp_addr_0x005729d2                          // 0x005728d1    0f84fb000000
                         {disp8} mov        edi, dword ptr [eax + 0x04]                   // 0x005728d7    8b7804
                         test               edi, edi                                      // 0x005728da    85ff
                         {disp32} je        _jmp_addr_0x005729d2                          // 0x005728dc    0f84f0000000
                         call               ebp                                           // 0x005728e2    ffd5
                         sub                eax, dword ptr [edi + 0x00001008]             // 0x005728e4    2b8708100000
                         cmp                eax, 0x00002710                               // 0x005728ea    3d10270000
                         {disp32} jbe       _jmp_addr_0x005729d2                          // 0x005728ef    0f86dd000000
                         {disp32} mov       eax, dword ptr [esi + 0x000000e0]             // 0x005728f5    8b86e0000000
                         test               eax, eax                                      // 0x005728fb    85c0
                         {disp8} jle        _jmp_addr_0x0057297c                          // 0x005728fd    7e7d
                         dec                eax                                           // 0x005728ff    48
                         {disp32} mov       dword ptr [esi + 0x000000e0], eax             // 0x00572900    8986e0000000
                         {disp32} mov       eax, dword ptr [esi + 0x000000e8]             // 0x00572906    8b86e8000000
                         test               eax, eax                                      // 0x0057290c    85c0
                         {disp8} je         _jmp_addr_0x0057297c                          // 0x0057290e    746c
                         {disp8} mov        ebp, dword ptr [eax + 0x04]                   // 0x00572910    8b6804
                         test               ebp, ebp                                      // 0x00572913    85ed
                         {disp8} je         _jmp_addr_0x0057297c                          // 0x00572915    7465
                         xor.s              ebx, ebx                                      // 0x00572917    33db
                         test               eax, eax                                      // 0x00572919    85c0
                         {disp8} je         _jmp_addr_0x00572956                          // 0x0057291b    7439
_jmp_addr_0x0057291d:    cmp                dword ptr [eax + 0x04], ebp                   // 0x0057291d    396804
                         mov                edi, dword ptr [eax]                          // 0x00572920    8b38
                         {disp8} jne        _jmp_addr_0x0057294e                          // 0x00572922    752a
                         cmp                eax, dword ptr [esi + 0x000000e8]             // 0x00572924    3b86e8000000
                         {disp8} jne        _jmp_addr_0x00572934                          // 0x0057292a    7508
                         {disp32} mov       dword ptr [esi + 0x000000e8], edi             // 0x0057292c    89bee8000000
                         {disp8} jmp        _jmp_addr_0x00572936                          // 0x00572932    eb02
_jmp_addr_0x00572934:    mov                dword ptr [ebx], edi                          // 0x00572934    893b
_jmp_addr_0x00572936:    {disp32} mov       edx, dword ptr [esi + 0x000000ec]             // 0x00572936    8b96ec000000
                         dec                edx                                           // 0x0057293c    4a
                         push               eax                                           // 0x0057293d    50
                         {disp32} mov       dword ptr [esi + 0x000000ec], edx             // 0x0057293e    8996ec000000
                         call               ??3@YAXPAX@Z                                  // 0x00572944    e84fc52300
                         add                esp, 0x04                                     // 0x00572949    83c404
                         {disp8} jmp        _jmp_addr_0x00572950                          // 0x0057294c    eb02
_jmp_addr_0x0057294e:    mov.s              ebx, eax                                      // 0x0057294e    8bd8
_jmp_addr_0x00572950:    test               edi, edi                                      // 0x00572950    85ff
                         mov.s              eax, edi                                      // 0x00572952    8bc7
                         {disp8} jne        _jmp_addr_0x0057291d                          // 0x00572954    75c7
_jmp_addr_0x00572956:    push               ebp                                           // 0x00572956    55
                         call               ??3@YAXPAX@Z                                  // 0x00572957    e83cc52300
                         {disp32} mov       eax, dword ptr [esi + 0x000000e8]             // 0x0057295c    8b86e8000000
                         add                esp, 0x04                                     // 0x00572962    83c404
                         test               eax, eax                                      // 0x00572965    85c0
                         {disp8} je         _jmp_addr_0x0057297c                          // 0x00572967    7413
                         {disp8} mov        edi, dword ptr [eax + 0x04]                   // 0x00572969    8b7804
                         test               edi, edi                                      // 0x0057296c    85ff
                         {disp8} je         _jmp_addr_0x0057297c                          // 0x0057296e    740c
                         call               dword ptr [__imp__GetTickCount@4]             // 0x00572970    ff15c4918a00
                         {disp32} mov       dword ptr [edi + 0x00001008], eax             // 0x00572976    898708100000
_jmp_addr_0x0057297c:    {disp32} mov       eax, dword ptr [esi + 0x000000ec]             // 0x0057297c    8b86ec000000
                         test               eax, eax                                      // 0x00572982    85c0
                         {disp32} mov       dword ptr [esi + 0x000000e0], eax             // 0x00572984    8986e0000000
                         {disp8} jle        _jmp_addr_0x005729d2                          // 0x0057298a    7e46
                         {disp32} mov       eax, dword ptr [esi + 0x000000e8]             // 0x0057298c    8b86e8000000
                         test               eax, eax                                      // 0x00572992    85c0
                         {disp8} je         _jmp_addr_0x005729d2                          // 0x00572994    743c
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x00572996    8b4804
                         test               ecx, ecx                                      // 0x00572999    85c9
                         {disp8} je         _jmp_addr_0x005729d2                          // 0x0057299b    7435
                         test               eax, eax                                      // 0x0057299d    85c0
                         {disp8} je         _jmp_addr_0x005729a6                          // 0x0057299f    7405
                         {disp8} mov        eax, dword ptr [eax + 0x04]                   // 0x005729a1    8b4004
                         {disp8} jmp        _jmp_addr_0x005729a8                          // 0x005729a4    eb02
_jmp_addr_0x005729a6:    xor.s              eax, eax                                      // 0x005729a6    33c0
_jmp_addr_0x005729a8:    add                eax, 0x04                                     // 0x005729a8    83c004
                         push               0x000000ff                                    // 0x005729ab    68ff000000
                         push               eax                                           // 0x005729b0    50
                         {disp32} mov       eax, dword ptr [esi + 0x000000b8]             // 0x005729b1    8b86b8000000
                         add                eax, 0x24                                     // 0x005729b7    83c024
                         push               eax                                           // 0x005729ba    50
                         call               _wcsncpy                                      // 0x005729bb    e8653a2500
                         {disp32} mov       ecx, dword ptr [esi + 0x000000b8]             // 0x005729c0    8b8eb8000000
                         add                esp, 0x0c                                     // 0x005729c6    83c40c
                         {disp32} mov       word ptr [ecx + 0x00000222], 0x0000           // 0x005729c9    66c781220200000000
_jmp_addr_0x005729d2:    pop                edi                                           // 0x005729d2    5f
                         pop                esi                                           // 0x005729d3    5e
                         pop                ebp                                           // 0x005729d4    5d
                         pop                ebx                                           // 0x005729d5    5b
                         ret                                                              // 0x005729d6    c3
                         nop                                                              // 0x005729d7    90
                         nop                                                              // 0x005729d8    90
                         nop                                                              // 0x005729d9    90
                         nop                                                              // 0x005729da    90
                         nop                                                              // 0x005729db    90
                         nop                                                              // 0x005729dc    90
                         nop                                                              // 0x005729dd    90
                         nop                                                              // 0x005729de    90
                         nop                                                              // 0x005729df    90
_jmp_addr_0x005729e0:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x005729e0    8b442404
                         sub                eax, 0x00                                     // 0x005729e4    83e800
                         push               esi                                           // 0x005729e7    56
                         push               edi                                           // 0x005729e8    57
                         mov.s              esi, ecx                                      // 0x005729e9    8bf1
                         {disp32} je        _jmp_addr_0x00572c99                          // 0x005729eb    0f84a8020000
                         dec                eax                                           // 0x005729f1    48
                         {disp32} je        _jmp_addr_0x00572ab5                          // 0x005729f2    0f84bd000000
                         sub                eax, 0x03                                     // 0x005729f8    83e803
                         {disp32} jne       _jmp_addr_0x00572cb6                          // 0x005729fb    0f85b5020000
                         {disp8} mov        eax, dword ptr [esi + 0x2c]                   // 0x00572a01    8b462c
                         test               eax, eax                                      // 0x00572a04    85c0
                         {disp32} je        _jmp_addr_0x00572cb6                          // 0x00572a06    0f84aa020000
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x00572a0c    8b7c2414
                         test               edi, edi                                      // 0x00572a10    85ff
                         {disp32} je        _jmp_addr_0x00572cb6                          // 0x00572a12    0f849e020000
                         {disp8} mov        eax, dword ptr [edi + 0x18]                   // 0x00572a18    8b4718
                         cmp                eax, 0x00010428                               // 0x00572a1b    3d28040100
                         {disp32} jl        _jmp_addr_0x00572cb6                          // 0x00572a20    0f8c90020000
                         cmp                eax, 0x0001046a                               // 0x00572a26    3d6a040100
                         {disp32} jg        _jmp_addr_0x00572cb6                          // 0x00572a2b    0f8f85020000
                         call               dword ptr [esi + 0x48]                        // 0x00572a31    ff5648
                         test               eax, eax                                      // 0x00572a34    85c0
                         {disp32} je        _jmp_addr_0x00572cb6                          // 0x00572a36    0f847a020000
                         {disp8} mov        eax, dword ptr [edi + 0x18]                   // 0x00572a3c    8b4718
                         sub                eax, 0x00010433                               // 0x00572a3f    2d33040100
                         {disp8} je         _jmp_addr_0x00572a82                          // 0x00572a44    743c
                         dec                eax                                           // 0x00572a46    48
                         {disp32} jne       _jmp_addr_0x00572cb6                          // 0x00572a47    0f8569020000
                         {disp32} mov       eax, dword ptr [esi + 0x00000088]             // 0x00572a4d    8b8688000000
                         test               ah, 0x02                                      // 0x00572a53    f6c402
                         {disp32} je        _jmp_addr_0x00572cb6                          // 0x00572a56    0f845a020000
                         {disp32} fild      dword ptr [esi + 0x00000090]                  // 0x00572a5c    db8690000000
                         {disp8} mov        eax, dword ptr [esi + 0x18]                   // 0x00572a62    8b4618
                         {disp32} fmul      dword ptr [eax + 0x0000023c]                  // 0x00572a65    d8883c020000
                         call               _jmp_addr_0x007a1400                          // 0x00572a6b    e890e92200
                         push               eax                                           // 0x00572a70    50
                         {disp32} mov       dword ptr [esi + 0x00000094], eax             // 0x00572a71    898694000000
                         call               dword ptr [esi + 0x5c]                        // 0x00572a77    ff565c
                         add                esp, 0x04                                     // 0x00572a7a    83c404
                         pop                edi                                           // 0x00572a7d    5f
                         pop                esi                                           // 0x00572a7e    5e
                         ret                0x0014                                        // 0x00572a7f    c21400
_jmp_addr_0x00572a82:    test               byte ptr [esi + 0x00000088], 0x10             // 0x00572a82    f6868800000010
                         {disp32} je        _jmp_addr_0x00572cb6                          // 0x00572a89    0f8427020000
                         {disp8} mov        ecx, dword ptr [esi + 0x14]                   // 0x00572a8f    8b4e14
                         {disp32} fld       dword ptr [ecx + 0x0000023c]                  // 0x00572a92    d9813c020000
                         {disp32} fmul      dword ptr [__real@437f0000]                   // 0x00572a98    d80d70b28a00
                         call               _jmp_addr_0x007a1400                          // 0x00572a9e    e85de92200
                         push               eax                                           // 0x00572aa3    50
                         {disp32} mov       dword ptr [esi + 0x00000098], eax             // 0x00572aa4    898698000000
                         call               dword ptr [esi + 0x7c]                        // 0x00572aaa    ff567c
                         add                esp, 0x04                                     // 0x00572aad    83c404
                         pop                edi                                           // 0x00572ab0    5f
                         pop                esi                                           // 0x00572ab1    5e
                         ret                0x0014                                        // 0x00572ab2    c21400
_jmp_addr_0x00572ab5:    {disp8} mov        eax, dword ptr [esi + 0x2c]                   // 0x00572ab5    8b462c
                         test               eax, eax                                      // 0x00572ab8    85c0
                         {disp32} je        _jmp_addr_0x00572cb6                          // 0x00572aba    0f84f6010000
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x00572ac0    8b7c2414
                         test               edi, edi                                      // 0x00572ac4    85ff
                         {disp32} je        _jmp_addr_0x00572cb6                          // 0x00572ac6    0f84ea010000
                         {disp8} mov        eax, dword ptr [edi + 0x18]                   // 0x00572acc    8b4718
                         cmp                eax, 0x00010428                               // 0x00572acf    3d28040100
                         {disp32} jl        _jmp_addr_0x00572cb6                          // 0x00572ad4    0f8cdc010000
                         cmp                eax, 0x0001046a                               // 0x00572ada    3d6a040100
                         {disp32} jg        _jmp_addr_0x00572cb6                          // 0x00572adf    0f8fd1010000
                         call               dword ptr [esi + 0x48]                        // 0x00572ae5    ff5648
                         test               eax, eax                                      // 0x00572ae8    85c0
                         {disp32} je        _jmp_addr_0x00572cb6                          // 0x00572aea    0f84c6010000
                         {disp8} mov        eax, dword ptr [edi + 0x18]                   // 0x00572af0    8b4718
                         add                eax, 0xfffefbd8                               // 0x00572af3    05d8fbfeff
                         cmp                eax, 0x0e                                     // 0x00572af8    83f80e
                         {disp32} ja        _jmp_addr_0x00572caf                          // 0x00572afb    0f87ae010000
                         jmp                dword ptr [eax*4 + 0x572cbc]                  // 0x00572b01    ff2485bc2c5700
                         {disp8} mov        edx, dword ptr [esi + 0x1c]                   // 0x00572b08    8b561c
                         {disp32} mov       cl, byte ptr [edx + 0x00000229]               // 0x00572b0b    8a8a29020000
                         xor.s              eax, eax                                      // 0x00572b11    33c0
                         test               cl, cl                                        // 0x00572b13    84c9
                         sete               al                                            // 0x00572b15    0f94c0
                         mov.s              ecx, esi                                      // 0x00572b18    8bce
                         push               eax                                           // 0x00572b1a    50
                         call               _jmp_addr_0x005708d0                          // 0x00572b1b    e8b0ddffff
                         mov.s              ecx, esi                                      // 0x00572b20    8bce
                         call               _jmp_addr_0x00570b40                          // 0x00572b22    e819e0ffff
                         pop                edi                                           // 0x00572b27    5f
                         pop                esi                                           // 0x00572b28    5e
                         ret                0x0014                                        // 0x00572b29    c21400
                         test               byte ptr [esi + 0x00000088], 0x02             // 0x00572b2c    f6868800000002
                         {disp32} je        _jmp_addr_0x00572caf                          // 0x00572b33    0f8476010000
                         call               dword ptr [esi + 0x6c]                        // 0x00572b39    ff566c
                         mov.s              ecx, esi                                      // 0x00572b3c    8bce
                         call               _jmp_addr_0x00570b40                          // 0x00572b3e    e8fddfffff
                         pop                edi                                           // 0x00572b43    5f
                         pop                esi                                           // 0x00572b44    5e
                         ret                0x0014                                        // 0x00572b45    c21400
                         call               dword ptr [esi + 0x70]                        // 0x00572b48    ff5670
                         mov.s              ecx, esi                                      // 0x00572b4b    8bce
                         call               _jmp_addr_0x00570b40                          // 0x00572b4d    e8eedfffff
                         pop                edi                                           // 0x00572b52    5f
                         pop                esi                                           // 0x00572b53    5e
                         ret                0x0014                                        // 0x00572b54    c21400
                         call               dword ptr [esi + 0x64]                        // 0x00572b57    ff5664
                         mov.s              ecx, esi                                      // 0x00572b5a    8bce
                         call               _jmp_addr_0x00570b40                          // 0x00572b5c    e8dfdfffff
                         pop                edi                                           // 0x00572b61    5f
                         pop                esi                                           // 0x00572b62    5e
                         ret                0x0014                                        // 0x00572b63    c21400
                         call               dword ptr [esi + 0x60]                        // 0x00572b66    ff5660
                         mov.s              ecx, esi                                      // 0x00572b69    8bce
                         call               _jmp_addr_0x00570b40                          // 0x00572b6b    e8d0dfffff
                         pop                edi                                           // 0x00572b70    5f
                         pop                esi                                           // 0x00572b71    5e
                         ret                0x0014                                        // 0x00572b72    c21400
                         test               byte ptr [esi + 0x00000088], 0x08             // 0x00572b75    f6868800000008
                         {disp32} je        _jmp_addr_0x00572caf                          // 0x00572b7c    0f842d010000
                         call               dword ptr [esi + 0x78]                        // 0x00572b82    ff5678
                         mov.s              ecx, esi                                      // 0x00572b85    8bce
                         call               _jmp_addr_0x00570b40                          // 0x00572b87    e8b4dfffff
                         pop                edi                                           // 0x00572b8c    5f
                         pop                esi                                           // 0x00572b8d    5e
                         ret                0x0014                                        // 0x00572b8e    c21400
                         test               byte ptr [esi + 0x00000088], 0x04             // 0x00572b91    f6868800000004
                         {disp32} je        _jmp_addr_0x00572caf                          // 0x00572b98    0f8411010000
                         call               dword ptr [esi + 0x74]                        // 0x00572b9e    ff5674
                         mov.s              ecx, esi                                      // 0x00572ba1    8bce
                         call               _jmp_addr_0x00570b40                          // 0x00572ba3    e898dfffff
                         pop                edi                                           // 0x00572ba8    5f
                         pop                esi                                           // 0x00572ba9    5e
                         ret                0x0014                                        // 0x00572baa    c21400
                         test               byte ptr [esi + 0x00000088], 0x20             // 0x00572bad    f6868800000020
                         {disp8} je         _jmp_addr_0x00572bd3                          // 0x00572bb4    741d
                         {disp32} mov       edx, dword ptr [esi + 0x0000009c]             // 0x00572bb6    8b969c000000
                         xor.s              eax, eax                                      // 0x00572bbc    33c0
                         test               edx, edx                                      // 0x00572bbe    85d2
                         sete               al                                            // 0x00572bc0    0f94c0
                         push               eax                                           // 0x00572bc3    50
                         {disp32} mov       dword ptr [esi + 0x0000009c], eax             // 0x00572bc4    89869c000000
                         call               dword ptr [esi + 0x80]                        // 0x00572bca    ff9680000000
                         add                esp, 0x04                                     // 0x00572bd0    83c404
_jmp_addr_0x00572bd3:    {disp8} mov        ecx, dword ptr [esi + 0x20]                   // 0x00572bd3    8b4e20
                         {disp32} mov       edx, dword ptr [esi + 0x0000009c]             // 0x00572bd6    8b969c000000
                         {disp8} mov        dword ptr [ecx + 0x1c], edx                   // 0x00572bdc    89511c
                         mov.s              ecx, esi                                      // 0x00572bdf    8bce
                         call               _jmp_addr_0x00570b40                          // 0x00572be1    e85adfffff
                         pop                edi                                           // 0x00572be6    5f
                         pop                esi                                           // 0x00572be7    5e
                         ret                0x0014                                        // 0x00572be8    c21400
                         test               byte ptr [esi + 0x00000088], 0x40             // 0x00572beb    f6868800000040
                         {disp8} je         _jmp_addr_0x00572c11                          // 0x00572bf2    741d
                         {disp32} mov       edx, dword ptr [esi + 0x000000a0]             // 0x00572bf4    8b96a0000000
                         xor.s              eax, eax                                      // 0x00572bfa    33c0
                         test               edx, edx                                      // 0x00572bfc    85d2
                         sete               al                                            // 0x00572bfe    0f94c0
                         push               eax                                           // 0x00572c01    50
                         {disp32} mov       dword ptr [esi + 0x000000a0], eax             // 0x00572c02    8986a0000000
                         call               dword ptr [esi + 0x84]                        // 0x00572c08    ff9684000000
                         add                esp, 0x04                                     // 0x00572c0e    83c404
_jmp_addr_0x00572c11:    {disp32} mov       ecx, dword ptr [esi + 0x000000a0]             // 0x00572c11    8b8ea0000000
                         {disp8} mov        eax, dword ptr [esi + 0x24]                   // 0x00572c17    8b4624
                         {disp8} mov        dword ptr [eax + 0x1c], ecx                   // 0x00572c1a    89481c
                         mov.s              ecx, esi                                      // 0x00572c1d    8bce
                         call               _jmp_addr_0x00570b40                          // 0x00572c1f    e81cdfffff
                         pop                edi                                           // 0x00572c24    5f
                         pop                esi                                           // 0x00572c25    5e
                         ret                0x0014                                        // 0x00572c26    c21400
                         test               byte ptr [esi + 0x00000088], 0x01             // 0x00572c29    f6868800000001
                         {disp8} je         _jmp_addr_0x00572caf                          // 0x00572c30    747d
                         {disp8} mov        ecx, dword ptr [esi + 0x10]                   // 0x00572c32    8b4e10
                         {disp32} mov       al, byte ptr [ecx + 0x00000229]               // 0x00572c35    8a8129020000
                         mov                edx, dword ptr [ecx]                          // 0x00572c3b    8b11
                         test               al, al                                        // 0x00572c3d    84c0
                         sete               al                                            // 0x00572c3f    0f94c0
                         push               eax                                           // 0x00572c42    50
                         call               dword ptr [edx + 8]                           // 0x00572c43    ff5208
                         {disp8} mov        ecx, dword ptr [esi + 0x10]                   // 0x00572c46    8b4e10
                         {disp32} mov       al, byte ptr [ecx + 0x00000229]               // 0x00572c49    8a8129020000
                         test               al, al                                        // 0x00572c4f    84c0
                         {disp8} jne        _jmp_addr_0x00572caf                          // 0x00572c51    755c
                         push               0x0                                           // 0x00572c53    6a00
                         call               @AutoScroll__9SetupListFb@9                   // 0x00572c55    e87671e9ff
                         mov.s              ecx, esi                                      // 0x00572c5a    8bce
                         call               _jmp_addr_0x00570b40                          // 0x00572c5c    e8dfdeffff
                         pop                edi                                           // 0x00572c61    5f
                         pop                esi                                           // 0x00572c62    5e
                         ret                0x0014                                        // 0x00572c63    c21400
                         test               byte ptr [esi + 0x00000088], 0x01             // 0x00572c66    f6868800000001
                         {disp8} je         _jmp_addr_0x00572caf                          // 0x00572c6d    7440
                         {disp8} mov        ecx, dword ptr [esi + 0x10]                   // 0x00572c6f    8b4e10
                         {disp32} mov       edi, dword ptr [ecx + 0x00000248]             // 0x00572c72    8bb948020000
                         test               edi, edi                                      // 0x00572c78    85ff
                         {disp8} jl         _jmp_addr_0x00572caf                          // 0x00572c7a    7c33
                         call               dword ptr [esi + 0x40]                        // 0x00572c7c    ff5640
                         cmp.s              edi, eax                                      // 0x00572c7f    3bf8
                         {disp8} je         _jmp_addr_0x00572caf                          // 0x00572c81    742c
                         push               edi                                           // 0x00572c83    57
                         call               dword ptr [esi + 0x44]                        // 0x00572c84    ff5644
                         add                esp, 0x04                                     // 0x00572c87    83c404
                         call               dword ptr [esi + 0x68]                        // 0x00572c8a    ff5668
                         mov.s              ecx, esi                                      // 0x00572c8d    8bce
                         call               _jmp_addr_0x00570b40                          // 0x00572c8f    e8acdeffff
                         pop                edi                                           // 0x00572c94    5f
                         pop                esi                                           // 0x00572c95    5e
                         ret                0x0014                                        // 0x00572c96    c21400
_jmp_addr_0x00572c99:    call               dword ptr [__imp__GetTickCount@4]             // 0x00572c99    ff15c4918a00
                         {disp32} mov       edx, dword ptr [esi + 0x000000a4]             // 0x00572c9f    8b96a4000000
                         add                edx, 0x000003e8                               // 0x00572ca5    81c2e8030000
                         cmp.s              eax, edx                                      // 0x00572cab    3bc2
                         {disp8} jle        _jmp_addr_0x00572cb6                          // 0x00572cad    7e07
_jmp_addr_0x00572caf:    mov.s              ecx, esi                                      // 0x00572caf    8bce
                         call               _jmp_addr_0x00570b40                          // 0x00572cb1    e88adeffff
_jmp_addr_0x00572cb6:    pop                edi                                           // 0x00572cb6    5f
                         pop                esi                                           // 0x00572cb7    5e
                         ret                0x0014                                        // 0x00572cb8    c21400

// Snippet: db, [0x00572cbb, 0x00572cbc)
.byte 0x90                        // 0x00572cbb

// Snippet: jmptbl, [0x00572cbc, 0x00572cf8)
.byte 0x08, 0x2b, 0x57, 0x00      // 0x00572cbc
.byte 0x8a, 0x2c, 0x57, 0x00      // 0x00572cc0
.byte 0x2c, 0x2b, 0x57, 0x00      // 0x00572cc4
.byte 0x48, 0x2b, 0x57, 0x00      // 0x00572cc8
.byte 0x57, 0x2b, 0x57, 0x00      // 0x00572ccc
.byte 0x66, 0x2b, 0x57, 0x00      // 0x00572cd0
.byte 0x75, 0x2b, 0x57, 0x00      // 0x00572cd4
.byte 0x91, 0x2b, 0x57, 0x00      // 0x00572cd8
.byte 0xad, 0x2b, 0x57, 0x00      // 0x00572cdc
.byte 0xeb, 0x2b, 0x57, 0x00      // 0x00572ce0
.byte 0x29, 0x2c, 0x57, 0x00      // 0x00572ce4
.byte 0xaf, 0x2c, 0x57, 0x00      // 0x00572ce8
.byte 0xaf, 0x2c, 0x57, 0x00      // 0x00572cec
.byte 0xaf, 0x2c, 0x57, 0x00      // 0x00572cf0
.byte 0x66, 0x2c, 0x57, 0x00      // 0x00572cf4

// Snippet: db, [0x00572cf8, 0x00572d00)
.byte 0x90, 0x90, 0x90, 0x90      // 0x00572cf8
.byte 0x90, 0x90, 0x90, 0x90      // 0x00572cfc

