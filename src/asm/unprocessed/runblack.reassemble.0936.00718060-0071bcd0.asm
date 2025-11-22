.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern @SetDestinationWithSpeedAndTime__6ZoomerFfff@20
.extern ?SetPosition@LH3DObject@@SAXABULHPoint@@MM@Z
.extern _jmp_addr_0x00424b80
.extern @PlaySoundEffect__6GAudioFP20LH_SamplePlayOptions@12
.extern ?__nw@Base@@SAPAXK@Z
.extern _jmp_addr_0x00436960
.extern ??3Base@@SAXPAXK@Z
.extern _jmp_addr_0x00439430
.extern ??0MapCoords@@QAE@XZ
.extern _jmp_addr_0x0052b670
.extern _jmp_addr_0x00530310
.extern _jmp_addr_0x00535550
.extern _jmp_addr_0x00536c80
.extern _jmp_addr_0x0053a600
.extern _jmp_addr_0x0053a7c0
.extern ?GetCamera@GGame@@QAEPAVGCamera@@XZ
.extern ?Birthday@GGame@@QAEXXZ
.extern ?GetNextPlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z
.extern ?GetNextPlayerAndNeutral@GGame@@QAEPAVGPlayer@@PAV2@@Z
.extern ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z
.extern ?IsMultiplayerGame@GGame@@QBE_NXZ
.extern _jmp_addr_0x005530c0
.extern _jmp_addr_0x00555880
.extern _jmp_addr_0x00557400
.extern ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z
.extern @ReadPtr__10GameOSFileFPP9GameThing@12
.extern _jmp_addr_0x00562240
.extern _jmp_addr_0x005622b0
.extern ??0GameThing@@QAE@XZ
.extern ?ToBeDeleted@GameThing@@UAEXH@Z
.extern ?Save@GameThing@@QAEIAAVGGameOSFile@@@Z
.extern ?Load@GameThing@@QAEIAAVGGameOSFile@@@Z
.extern ?ToBeDeleted@GameThingWithPos@@UAEXH@Z
.extern _jmp_addr_0x005ccf80
.extern _jmp_addr_0x005cda90
.extern _jmp_addr_0x005e2890
.extern @FindTypeOnMap__7MapCellCF11OBJECT_TYPEP6Object@16
.extern ?GetX@MapCell@@QBEIXZ
.extern ?GetZ@MapCell@@QBEIXZ
.extern @GetNearestTown__9MapCoordsCFf@12
.extern _jmp_addr_0x00602fc0
.extern @__ct__9MapCoordsFRC7LHPoint@12
.extern @__ct__9MapCoordsFPc@12
.extern @FindType__9MapCoordsCF11OBJECT_TYPEP6Object@16
.extern _jmp_addr_0x00604f40
.extern @__apl__9MapCoordsFRC9MapCoords@12
.extern _jmp_addr_0x006065d0
.extern ?ConvertMapCoordToLandscapePoint@GLandscape@@SAPAULHPoint@@ABUMapCoords@@AAU2@@Z
.extern ?Get3DType@Object@@SA?AW4LH3DObject__ObjectType@@W4MESH_LIST@@@Z
.extern @__ct__6ObjectFRC9MapCoordsPC11GObjectInfo@16
.extern ?Save@Object@@UAEIPAVGameOSFile@@@Z
.extern @Load__6ObjectFR10GameOSFile@12
.extern ?Create@Game3DObject@@SAPAV1@W4ObjectType@LH3DObject@@@Z
.extern _jmp_addr_0x0063b5d0
.extern ?GetPlayerNumber@GPlayer@@QBEEXZ
.extern ?PostLoadCleanup@GPlayer@@SAXXZ
.extern ?IsMemberOfThisPlayer@GPlayer@@QAE_NPAVGInterfaceStatus@@@Z
.extern _jmp_addr_0x0064d840
.extern ?GameRand@GRand@@SAHJ@Z
.extern ?LocalRand@GRand@@SAIJ@Z
.extern _jmp_addr_0x006de590
.extern _jmp_addr_0x007150e0
.extern ?GetCommandAsText@GSetup@@SAPADW4SCRIPT_FEATURE_COMMANDS@@@Z
.extern _jmp_addr_0x0071be40
.extern _jmp_addr_0x0071c6f0
.extern _jmp_addr_0x0071c870
.extern _jmp_addr_0x0071d3b0
.extern _jmp_addr_0x0071d3f0
.extern _jmp_addr_0x0071d440
.extern _jmp_addr_0x0071d470
.extern _jmp_addr_0x0072b200
.extern _jmp_addr_0x00733fb0
.extern ?CreateAll@GStream@@SAXXZ
.extern _jmp_addr_0x007341c0
.extern _jmp_addr_0x00734f70
.extern _jmp_addr_0x0073ae10
.extern ?GetStoragePit@Town@@QAEPAVStoragePit@@XZ
.extern _jmp_addr_0x0073bca0
.extern ?GetRawDesire@Town@@QAEMW4TOWN_DESIRE_INFO@@@Z
.extern ?AsssignTownFeature@Town@@SAXXZ
.extern _jmp_addr_0x00741f30
.extern _jmp_addr_0x0074cd50
.extern _jmp_addr_0x00770c60
.extern _jmp_addr_0x00772b80
.extern _jmp_addr_0x0077b960
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern ??0LHOSFile@@QAE@XZ
.extern ??_DLHOSFile@@QAEXXZ
.extern @Open__16LHReleasedOSFileFPc12LH_FILE_MODE@16
.extern ?Close@LHOSFile@@QAEIXZ
.extern @Read__8LHOSFileFPvUlPUl@20
.extern @Write__8LHOSFileFPvUlPUl@20
.extern _atexit
.extern _sprintf
.extern ___RTDynamicCast
.extern ??2@YAPAXI@Z
.extern __chkstk
.extern _strrchr
.extern ___nw__FUl
.extern @Load__12LHScriptX_c_FPcP19LHScriptCommandX_c_PFlP16LHScriptPramX_c__9LH_RETURNPl@24
.extern _jmp_addr_0x007e7960
.extern _jmp_addr_0x007feb30
.extern _jmp_addr_0x00801c90
.extern ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z

.globl ?LoadMapFeatures@GSetup@@SAXPAD@Z
.globl ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z
.globl ?SaveAllMap@GSetup@@QAEHPAD@Z
.globl ?SaveMapCell@GSetup@@QAEXAAVLHOSFile@@PAUMapCell@@AAK2222ABUMapCoords@@@Z
.globl _jmp_addr_0x00718c10
.globl _jmp_addr_0x007190b0
.globl ?LoadTextScripts@GSetup@@QAEHXZ
.globl ?WriteToFile@GSetup@@SAIPAXAAVLHOSFile@@0K@Z
.globl _jmp_addr_0x00719680
.globl _jmp_addr_0x00719750
.globl _jmp_addr_0x007197f0
.globl _jmp_addr_0x00719840
.globl _jmp_addr_0x007198d0
.globl _jmp_addr_0x007198f0
.globl _jmp_addr_0x00719910
.globl @__ct__9ShowNeedsFP16GameThingWithPos@12
.globl ?Create@ShowNeeds@@SAPAV1@PAVGameThingWithPos@@@Z
.globl _jmp_addr_0x00719b90
.globl _jmp_addr_0x00719c10
.globl @__ct__16ShowNeedsVisualsFRC9MapCoordsP9GameThingPC14GShowNeedsInfo@20
.globl ?CallVirtualFunctionsForCreation@ShowNeedsVisuals@@UAEXABUMapCoords@@@Z
.globl _jmp_addr_0x00719e80
.globl _jmp_addr_0x00719e90
.globl _jmp_addr_0x0071a200
.globl _jmp_addr_0x0071a560
.globl _jmp_addr_0x0071a5f0
.globl _jmp_addr_0x0071a610
.globl _jmp_addr_0x0071a640
.globl _jmp_addr_0x0071a650
.globl ??0GGuidance@@QAE@XZ 
.globl _jmp_addr_0x0071ab70
.globl _jmp_addr_0x0071abf0
.globl @Init__9GGuidanceFR16GInterfaceStatus@12
.globl _jmp_addr_0x0071adf0
.globl @__ct__Q29GGuidance10LastThingsFP16GameThingWithPos@12
.globl _jmp_addr_0x0071af50
.globl _jmp_addr_0x0071aff0
.globl ?ProcessTownDesireSFX@GGuidance@@SAXAAVGInterfaceStatus@@@Z
.globl _jmp_addr_0x0071b570
.globl _jmp_addr_0x0071b7c0

.globl _globl_ct_0x007196d0
.globl _globl_ct_0x00719700
.globl _globl_ct_0x00719720
.globl _globl_ct_0x00719990
.globl _globl_ct_0x007199c0
.globl _globl_ct_0x0071a420
.globl _globl_ct_0x0071a450
.globl _globl_ct_0x0071a470
.globl _globl_ct_0x0071a4a0
.globl _globl_ct_0x0071a510
.globl _globl_ct_0x0071a930
.globl _globl_ct_0x0071a960
.globl _globl_ct_0x0071a990
.globl _globl_ct_0x0071a9b0
.globl ?GetSampleForAttack@GameThing@@UAEIXZ
.globl ?GetMesh@GShowNeedsInfo@@UBEIXZ
.globl ?GetBaseInfo@GShowNeedsInfo@@UAEPAVGBaseInfo@@AAI@Z
.globl ??_GGShowNeedsInfo@@UAEPAXI@Z
.globl ?ToBeDeleted@ShowNeeds@@UAEXH@Z
.globl ?GetPlayer@ShowNeeds@@UAEPAVGPlayer@@XZ
.globl ?Save@ShowNeeds@@UAEIAAVGameOSFile@@@Z
.globl ?Load@ShowNeeds@@UAEIAAVGameOSFile@@@Z
.globl ?GetShowNeedsPos@ShowNeeds@@UAEIIPAUMapCoords@@@Z
.globl ?ToBeDeleted@ShowNeedsVisuals@@UAEXH@Z
.globl ?GetPlayer@ShowNeedsVisuals@@UAEPAVGPlayer@@XZ
.globl ?Save@ShowNeedsVisuals@@UAEIAAVGameOSFile@@@Z
.globl ?Load@ShowNeedsVisuals@@UAEIAAVGameOSFile@@@Z
.globl ?ResolveLoad@ShowNeedsVisuals@@UAEXXZ
.globl ??_GGConfirmation@@UAEPAXI@Z
.globl ?GetBaseInfo@GHelpSpritesGuidance@@UAEPAVGBaseInfo@@AAI@Z
.globl ??_GGHelpSpritesGuidance@@UAEPAXI@Z
.globl ??_GGGuidance@@UAEPAXI@Z
.globl ?GetSampleForAttack@Spell@@UAEIXZ

start_0x00718060_0x0071bcd0:
// Snippet: asm, [0x00718060, 0x0071bc9c)
_jmp_addr_0x00718060:    {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x00718060    8b4c2404
                         sub                esp, 0x00000140                               // 0x00718064    81ec40010000
                         {disp8} lea        eax, dword ptr [esp + 0x00]                   // 0x0071806a    8d442400
                         push               eax                                           // 0x0071806e    50
                         push               ecx                                           // 0x0071806f    51
                         call               dword ptr [__imp__FindFirstFileA@4]           // 0x00718070    ff1594918a00
                         cmp                eax, -0x01                                    // 0x00718076    83f8ff
                         {disp8} jne        _jmp_addr_0x00718084                          // 0x00718079    7509
                         xor.s              eax, eax                                      // 0x0071807b    33c0
                         add                esp, 0x00000140                               // 0x0071807d    81c440010000
                         ret                                                              // 0x00718083    c3
_jmp_addr_0x00718084:    push               eax                                           // 0x00718084    50
                         call               dword ptr [__imp__FindClose@4]                // 0x00718085    ff1524928a00
                         {disp32} mov       eax, dword ptr [esp + 0x00000148]             // 0x0071808b    8b842448010000
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x00718092    8b542414
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x00718096    8b4c2418
                         mov                dword ptr [eax], edx                          // 0x0071809a    8910
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x0071809c    894804
                         mov                eax, 0x00000001                               // 0x0071809f    b801000000
                         add                esp, 0x00000140                               // 0x007180a4    81c440010000
                         ret                                                              // 0x007180aa    c3
                         nop                                                              // 0x007180ab    90
                         nop                                                              // 0x007180ac    90
                         nop                                                              // 0x007180ad    90
                         nop                                                              // 0x007180ae    90
                         nop                                                              // 0x007180af    90
?LoadMapFeatures@GSetup@@SAXPAD@Z:
                                 {disp32} mov       eax, dword ptr [_game]                        // 0x007180b0    a15c19d000
                         sub                esp, 0x08                                     // 0x007180b5    83ec08
                         push               ebx                                           // 0x007180b8    53
                         push               ebp                                           // 0x007180b9    55
                         xor.s              ebp, ebp                                      // 0x007180ba    33ed
                         {disp32} mov       dword ptr [data_bytes + 0x33b968], ebp        // 0x007180bc    892d6819d000
                         {disp32} mov       ebx, dword ptr [eax + 0x00250170]             // 0x007180c2    8b9870012500
                         cmp.s              ebx, ebp                                      // 0x007180c8    3bdd
                         push               esi                                           // 0x007180ca    56
                         push               edi                                           // 0x007180cb    57
                         {disp8} je         _jmp_addr_0x007180d6                          // 0x007180cc    7408
                         {disp32} mov       dword ptr [eax + 0x00250170], ebp             // 0x007180ce    89a870012500
                         {disp8} jmp        _jmp_addr_0x007180da                          // 0x007180d4    eb04
_jmp_addr_0x007180d6:    {disp8} mov        ebx, dword ptr [esp + 0x1c]                   // 0x007180d6    8b5c241c
_jmp_addr_0x007180da:    or                 edx, 0xffffffff                               // 0x007180da    83caff
                         xor.s              eax, eax                                      // 0x007180dd    33c0
                         mov.s              ecx, edx                                      // 0x007180df    8bca
                         mov.s              edi, ebx                                      // 0x007180e1    8bfb
                         repne scasb                                                      // 0x007180e3    f2ae
                         not                ecx                                           // 0x007180e5    f7d1
                         sub.s              edi, ecx                                      // 0x007180e7    2bf9
                         mov.s              eax, ecx                                      // 0x007180e9    8bc1
                         shr                ecx, 2                                        // 0x007180eb    c1e902
                         mov.s              esi, edi                                      // 0x007180ee    8bf7
                         mov                edi, OFFSET _CHAR_ARRAY_00d99648              // 0x007180f0    bf4896d900
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x007180f5    f3a5
                         mov.s              ecx, eax                                      // 0x007180f7    8bc8
                         and                ecx, 0x03                                     // 0x007180f9    83e103
                         rep movsb                                                        // 0x007180fc    f3a4
                         {disp32} mov       dword ptr [_PTR_00d99724], ebp                // 0x007180fe    892d2497d900
                         {disp32} mov       dword ptr [data_bytes + 0x25ad54], edx        // 0x00718104    8915540dc200
                         {disp32} mov       dword ptr [data_bytes + 0x25ad58], edx        // 0x0071810a    8915580dc200
                         {disp32} mov       dword ptr [_script_version], 0x00000000       // 0x00718110    c7057c95d90000000000
                         {disp32} mov       dword ptr [_PTR_00d99384], ebp                // 0x0071811a    892d8493d900
                         call               _jmp_addr_0x005e2890                          // 0x00718120    e86ba7ecff
                         push               ebp                                           // 0x00718125    55
                         push               0x00715180                                    // 0x00718126    6880517100
                         push               0x00c20f00                                    // 0x0071812b    68000fc200
                         push               ebx                                           // 0x00718130    53
                         mov                ecx, 0x00e85904                               // 0x00718131    b90459e800
                         call               @Load__12LHScriptX_c_FPcP19LHScriptCommandX_c_PFlP16LHScriptPramX_c__9LH_RETURNPl@24                          // 0x00718136    e885f10c00
                         mov.s              ebx, eax                                      // 0x0071813b    8bd8
                         call               ?AsssignTownFeature@Town@@SAXXZ               // 0x0071813d    e87e690200
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00718142    8b0d5c19d000
                         call               ?Birthday@GGame@@QAEXXZ                       // 0x00718148    e8a386e3ff
                         call               ?PostLoadCleanup@GPlayer@@SAXXZ               // 0x0071814d    e83e2af3ff
                         call               ?CreateAll@GStream@@SAXXZ                     // 0x00718152    e899be0100
                         push               0x5c                                          // 0x00718157    6a5c
                         push               0x00d99648 /* _CHAR_ARRAY_00d99648 */         // 0x00718159    684896d900
                         call               _strrchr                                      // 0x0071815e    e88d1a0b00
                         add                esp, 0x08                                     // 0x00718163    83c408
                         cmp.s              eax, ebp                                      // 0x00718166    3bc5
                         {disp8} jne        _jmp_addr_0x00718181                          // 0x00718168    7517
                         push               0x2f                                          // 0x0071816a    6a2f
                         push               0x00d99648 /* _CHAR_ARRAY_00d99648 */         // 0x0071816c    684896d900
                         call               _strrchr                                      // 0x00718171    e87a1a0b00
                         add                esp, 0x08                                     // 0x00718176    83c408
                         cmp.s              eax, ebp                                      // 0x00718179    3bc5
                         {disp32} je        _jmp_addr_0x00718243                          // 0x0071817b    0f84c2000000
_jmp_addr_0x00718181:    sub                eax, 0x00d99648 /* _CHAR_ARRAY_00d99648 */    // 0x00718181    2d4896d900
                         mov.s              edx, eax                                      // 0x00718186    8bd0
                         {disp32} js        _jmp_addr_0x00718243                          // 0x00718188    0f88b5000000
                         or                 ecx, 0xffffffff                               // 0x0071818e    83c9ff
                         xor.s              eax, eax                                      // 0x00718191    33c0
                         mov                edi, 0x00c220bc                               // 0x00718193    bfbc20c200
                         repne scasb                                                      // 0x00718198    f2ae
                         not                ecx                                           // 0x0071819a    f7d1
                         sub.s              edi, ecx                                      // 0x0071819c    2bf9
                         mov.s              eax, ecx                                      // 0x0071819e    8bc1
                         shr                ecx, 2                                        // 0x007181a0    c1e902
                         mov.s              esi, edi                                      // 0x007181a3    8bf7
                         mov                edi, OFFSET _CHAR_ARRAY_00cd035c              // 0x007181a5    bf5c03cd00
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x007181aa    f3a5
                         mov.s              ecx, eax                                      // 0x007181ac    8bc8
                         and                ecx, 0x03                                     // 0x007181ae    83e103
                         rep movsb                                                        // 0x007181b1    f3a4
                         or                 ecx, 0xffffffff                               // 0x007181b3    83c9ff
                         xor.s              eax, eax                                      // 0x007181b6    33c0
                         {disp32} lea       edi, dword ptr [edx + 0x00d99649]             // 0x007181b8    8dba4996d900
                         repne scasb                                                      // 0x007181be    f2ae
                         not                ecx                                           // 0x007181c0    f7d1
                         sub.s              edi, ecx                                      // 0x007181c2    2bf9
                         mov.s              edx, ecx                                      // 0x007181c4    8bd1
                         or                 ecx, 0xffffffff                               // 0x007181c6    83c9ff
                         mov.s              esi, edi                                      // 0x007181c9    8bf7
                         mov                edi, OFFSET _CHAR_ARRAY_00cd035c              // 0x007181cb    bf5c03cd00
                         repne scasb                                                      // 0x007181d0    f2ae
                         dec                edi                                           // 0x007181d2    4f
                         mov.s              ecx, edx                                      // 0x007181d3    8bca
                         shr                ecx, 2                                        // 0x007181d5    c1e902
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x007181d8    f3a5
                         mov.s              ecx, edx                                      // 0x007181da    8bca
                         and                ecx, 0x03                                     // 0x007181dc    83e103
                         rep movsb                                                        // 0x007181df    f3a4
                         or                 ecx, 0xffffffff                               // 0x007181e1    83c9ff
                         mov                edi, OFFSET _CHAR_ARRAY_00cd035c              // 0x007181e4    bf5c03cd00
                         repne scasb                                                      // 0x007181e9    f2ae
                         not                ecx                                           // 0x007181eb    f7d1
                         dec                ecx                                           // 0x007181ed    49
                         cmp                ecx, 0x04                                     // 0x007181ee    83f904
                         {disp8} jle        _jmp_addr_0x0071820f                          // 0x007181f1    7e1c
                         {disp32} mov       byte ptr [ecx + 0x00cd0358], 0x2e             // 0x007181f3    c6815803cd002e
                         {disp32} mov       byte ptr [ecx + 0x00cd0359], 0x66             // 0x007181fa    c6815903cd0066
                         {disp32} mov       byte ptr [ecx + 0x00cd035a], 0x6f             // 0x00718201    c6815a03cd006f
                         {disp32} mov       byte ptr [ecx + 0x00cd035b], 0x74             // 0x00718208    c6815b03cd0074
_jmp_addr_0x0071820f:    {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x0071820f    8d442410
                         push               eax                                           // 0x00718213    50
                         push               0x00cd035c /* _CHAR_ARRAY_00cd035c */         // 0x00718214    685c03cd00
                         {disp32} mov       dword ptr [_DAT_00cd0488], ebp                // 0x00718219    892d8804cd00
                         call               _jmp_addr_0x00718060                          // 0x0071821f    e83cfeffff
                         add                esp, 0x08                                     // 0x00718224    83c408
                         cmp                eax, 0x01                                     // 0x00718227    83f801
                         {disp8} jne        _jmp_addr_0x00718243                          // 0x0071822a    7517
                         push               0x00cd035c /* _CHAR_ARRAY_00cd035c */         // 0x0071822c    685c03cd00
                         call               _jmp_addr_0x00536c80                          // 0x00718231    e84aeae1ff
                         add                esp, 0x04                                     // 0x00718236    83c404
                         {disp32} mov       dword ptr [_DAT_00cd0488], 0x00000001         // 0x00718239    c7058804cd0001000000
_jmp_addr_0x00718243:    pop                edi                                           // 0x00718243    5f
                         pop                esi                                           // 0x00718244    5e
                         pop                ebp                                           // 0x00718245    5d
                         mov.s              eax, ebx                                      // 0x00718246    8bc3
                         pop                ebx                                           // 0x00718248    5b
                         add                esp, 0x08                                     // 0x00718249    83c408
                         ret                                                              // 0x0071824c    c3
                         nop                                                              // 0x0071824d    90
                         nop                                                              // 0x0071824e    90
                         nop                                                              // 0x0071824f    90
?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z:
                              {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x00718250    8b442408
                         sub                esp, 0x0c                                     // 0x00718254    83ec0c
                         push               eax                                           // 0x00718257    50
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                   // 0x00718258    8d4c2404
                         call               @__ct__9MapCoordsFPc@12                       // 0x0071825c    e86fafeeff
                         {disp32} mov       eax, dword ptr [_PTR_00d99724]                // 0x00718261    a12497d900
                         test               eax, eax                                      // 0x00718266    85c0
                         {disp8} je         _jmp_addr_0x00718274                          // 0x00718268    740a
                         push               eax                                           // 0x0071826a    50
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                   // 0x0071826b    8d4c2404
                         call               @__apl__9MapCoordsFRC9MapCoords@12            // 0x0071826f    e89cd1eeff
_jmp_addr_0x00718274:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00718274    8b442410
                         {disp8} mov        edx, dword ptr [esp + 0x00]                   // 0x00718278    8b542400
                         mov.s              ecx, eax                                      // 0x0071827c    8bc8
                         mov                dword ptr [ecx], edx                          // 0x0071827e    8911
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x00718280    8b542404
                         {disp8} mov        dword ptr [ecx + 0x04], edx                   // 0x00718284    895104
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x00718287    8b542408
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x0071828b    895108
                         add                esp, 0x0c                                     // 0x0071828e    83c40c
                         ret                                                              // 0x00718291    c3
                         nop                                                              // 0x00718292    90
                         nop                                                              // 0x00718293    90
                         nop                                                              // 0x00718294    90
                         nop                                                              // 0x00718295    90
                         nop                                                              // 0x00718296    90
                         nop                                                              // 0x00718297    90
                         nop                                                              // 0x00718298    90
                         nop                                                              // 0x00718299    90
                         nop                                                              // 0x0071829a    90
                         nop                                                              // 0x0071829b    90
                         nop                                                              // 0x0071829c    90
                         nop                                                              // 0x0071829d    90
                         nop                                                              // 0x0071829e    90
                         nop                                                              // 0x0071829f    90
                         {disp32} mov       eax, dword ptr [data_bytes + 0x25ad58]        // 0x007182a0    a1580dc200
                         cmp                eax, -0x01                                    // 0x007182a5    83f8ff
                         {disp8} jne        _jmp_addr_0x007182ae                          // 0x007182a8    7504
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x007182aa    8b442404
_jmp_addr_0x007182ae:    ret                                                              // 0x007182ae    c3
                         nop                                                              // 0x007182af    90
                         {disp32} mov       eax, dword ptr [data_bytes + 0x25ad54]        // 0x007182b0    a1540dc200
                         cmp                eax, -0x01                                    // 0x007182b5    83f8ff
                         {disp8} je         _jmp_addr_0x007182c7                          // 0x007182b8    740d
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x007182ba    8b0d5c19d000
                         push               eax                                           // 0x007182c0    50
                         call               ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z          // 0x007182c1    e8ea86e3ff
                         ret                                                              // 0x007182c6    c3
_jmp_addr_0x007182c7:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x007182c7    8b442404
                         test               eax, eax                                      // 0x007182cb    85c0
                         {disp8} jl         _jmp_addr_0x007182dc                          // 0x007182cd    7c0d
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x007182cf    8b0d5c19d000
                         push               eax                                           // 0x007182d5    50
                         call               ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z          // 0x007182d6    e8d586e3ff
                         ret                                                              // 0x007182db    c3
_jmp_addr_0x007182dc:    xor.s              eax, eax                                      // 0x007182dc    33c0
                         ret                                                              // 0x007182de    c3
                         nop                                                              // 0x007182df    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x007182e0    8b442404
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x007182e4    8b4c2408
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x007182e8    8b54240c
                         push               0x0                                           // 0x007182ec    6a00
                         push               0x00715180                                    // 0x007182ee    6880517100
                         {disp32} mov       dword ptr [_PTR_00d99724], eax                // 0x007182f3    a32497d900
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x007182f8    8b442418
                         push               0x00c20f00                                    // 0x007182fc    68000fc200
                         {disp32} mov       dword ptr [data_bytes + 0x25ad54], ecx        // 0x00718301    890d540dc200
                         push               eax                                           // 0x00718307    50
                         mov                ecx, 0x00e85904                               // 0x00718308    b90459e800
                         {disp32} mov       dword ptr [data_bytes + 0x25ad58], edx        // 0x0071830d    8915580dc200
                         {disp32} mov       dword ptr [_PTR_00d99384], 0x00000000         // 0x00718313    c7058493d90000000000
                         call               @Load__12LHScriptX_c_FPcP19LHScriptCommandX_c_PFlP16LHScriptPramX_c__9LH_RETURNPl@24                          // 0x0071831d    e89eef0c00
                         ret                                                              // 0x00718322    c3
                         nop                                                              // 0x00718323    90
                         nop                                                              // 0x00718324    90
                         nop                                                              // 0x00718325    90
                         nop                                                              // 0x00718326    90
                         nop                                                              // 0x00718327    90
                         nop                                                              // 0x00718328    90
                         nop                                                              // 0x00718329    90
                         nop                                                              // 0x0071832a    90
                         nop                                                              // 0x0071832b    90
                         nop                                                              // 0x0071832c    90
                         nop                                                              // 0x0071832d    90
                         nop                                                              // 0x0071832e    90
                         nop                                                              // 0x0071832f    90
?SaveAllMap@GSetup@@QAEHPAD@Z:
                         sub                esp, 0x00000120                               // 0x00718330    81ec20010000
                         push               ebx                                           // 0x00718336    53
                         push               ebp                                           // 0x00718337    55
                         push               edi                                           // 0x00718338    57
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x00718339    8d4c2420
                         call               ??0LHOSFile@@QAE@XZ                           // 0x0071833d    e80e430a00
                         {disp32} mov       edi, dword ptr [esp + 0x00000130]             // 0x00718342    8bbc2430010000
                         xor.s              ebp, ebp                                      // 0x00718349    33ed
                         push               ebp                                           // 0x0071834b    55
                         push               edi                                           // 0x0071834c    57
                         {disp8} lea        ecx, dword ptr [esp + 0x28]                   // 0x0071834d    8d4c2428
                         {disp8} mov        dword ptr [esp + 0x28], 0x008c4d00            // 0x00718351    c7442428004d8c00
                         {disp8} mov        dword ptr [esp + 0x14], ebp                   // 0x00718359    896c2414
                         xor.s              ebx, ebx                                      // 0x0071835d    33db
                         {disp8} mov        dword ptr [esp + 0x20], ebp                   // 0x0071835f    896c2420
                         {disp8} mov        dword ptr [esp + 0x1c], ebp                   // 0x00718363    896c241c
                         {disp8} mov        dword ptr [esp + 0x18], ebp                   // 0x00718367    896c2418
                         {disp8} mov        dword ptr [esp + 0x24], ebp                   // 0x0071836b    896c2424
                         call               @Open__16LHReleasedOSFileFPc12LH_FILE_MODE@16 // 0x0071836f    e86c440a00
                         test               eax, eax                                      // 0x00718374    85c0
                         {disp8} je         _jmp_addr_0x0071838d                          // 0x00718376    7415
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x00718378    8d4c2420
                         call               ??_DLHOSFile@@QAEXXZ                          // 0x0071837c    e8ff420a00
                         pop                edi                                           // 0x00718381    5f
                         pop                ebp                                           // 0x00718382    5d
                         xor.s              eax, eax                                      // 0x00718383    33c0
                         pop                ebx                                           // 0x00718385    5b
                         add                esp, 0x00000120                               // 0x00718386    81c420010000
                         ret                                                              // 0x0071838c    c3
_jmp_addr_0x0071838d:    or                 ecx, 0xffffffff                               // 0x0071838d    83c9ff
                         xor.s              eax, eax                                      // 0x00718390    33c0
                         repne scasb                                                      // 0x00718392    f2ae
                         not                ecx                                           // 0x00718394    f7d1
                         sub.s              edi, ecx                                      // 0x00718396    2bf9
                         mov.s              eax, ecx                                      // 0x00718398    8bc1
                         shr                ecx, 2                                        // 0x0071839a    c1e902
                         push               esi                                           // 0x0071839d    56
                         mov.s              esi, edi                                      // 0x0071839e    8bf7
                         mov                edi, OFFSET _CHAR_ARRAY_00d99648              // 0x007183a0    bf4896d900
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x007183a5    f3a5
                         mov.s              ecx, eax                                      // 0x007183a7    8bc8
                         and                ecx, 0x03                                     // 0x007183a9    83e103
                         rep movsb                                                        // 0x007183ac    f3a4
                         {disp32} inc       word ptr [data_bytes + 0x3d3710]              // 0x007183ae    66ff051097d900
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x007183b5    8d4c2424
                         push               ecx                                           // 0x007183b9    51
                         call               _jmp_addr_0x007150e0                          // 0x007183ba    e821cdffff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x007183bf    8b0d5c19d000
                         add                esp, 0x04                                     // 0x007183c5    83c404
                         push               ebp                                           // 0x007183c8    55
                         {disp8} lea        edx, dword ptr [esp + 0x28]                   // 0x007183c9    8d542428
                         push               edx                                           // 0x007183cd    52
                         call               _jmp_addr_0x005530c0                          // 0x007183ce    e8edace3ff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x007183d3    8b0d5c19d000
                         push               ebp                                           // 0x007183d9    55
                         call               ?GetNextPlayerAndNeutral@GGame@@QAEPAVGPlayer@@PAV2@@Z // 0x007183da    e8a185e3ff
                         mov.s              esi, eax                                      // 0x007183df    8bf0
                         cmp.s              esi, ebp                                      // 0x007183e1    3bf5
                         {disp8} je         _jmp_addr_0x00718404                          // 0x007183e3    741f
_jmp_addr_0x007183e5:    push               ebp                                           // 0x007183e5    55
                         {disp8} lea        eax, dword ptr [esp + 0x28]                   // 0x007183e6    8d442428
                         push               eax                                           // 0x007183ea    50
                         mov.s              ecx, esi                                      // 0x007183eb    8bce
                         call               _jmp_addr_0x0064d840                          // 0x007183ed    e84e54f3ff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x007183f2    8b0d5c19d000
                         push               esi                                           // 0x007183f8    56
                         call               ?GetNextPlayerAndNeutral@GGame@@QAEPAVGPlayer@@PAV2@@Z // 0x007183f9    e88285e3ff
                         mov.s              esi, eax                                      // 0x007183fe    8bf0
                         cmp.s              esi, ebp                                      // 0x00718400    3bf5
                         {disp8} jne        _jmp_addr_0x007183e5                          // 0x00718402    75e1
_jmp_addr_0x00718404:    {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x00718404    8d4c2424
                         push               ebp                                           // 0x00718408    55
                         push               ecx                                           // 0x00718409    51
                         call               _jmp_addr_0x00535550                          // 0x0071840a    e841d1e1ff
                         add                esp, 0x08                                     // 0x0071840f    83c408
                         xor.s              edi, edi                                      // 0x00718412    33ff
                         xor.s              esi, esi                                      // 0x00718414    33f6
_jmp_addr_0x00718416:    cmp.s              esi, ebp                                      // 0x00718416    3bf5
                         {disp32} mov       edx, dword ptr [_game]                        // 0x00718418    8b155c19d000
                         {disp32} mov       eax, dword ptr [edx + 0x00205c44]             // 0x0071841e    8b82445c2000
                         {disp8} jne        _jmp_addr_0x0071842c                          // 0x00718424    7506
                         cmp.s              eax, ebp                                      // 0x00718426    3bc5
                         {disp8} je         _jmp_addr_0x0071849a                          // 0x00718428    7470
                         {disp8} jmp        _jmp_addr_0x00718441                          // 0x0071842a    eb15
_jmp_addr_0x0071842c:    cmp.s              eax, ebp                                      // 0x0071842c    3bc5
                         {disp8} je         _jmp_addr_0x0071849a                          // 0x0071842e    746a
_jmp_addr_0x00718430:    cmp                dword ptr [eax + 0x04], esi                   // 0x00718430    397004
                         mov                eax, dword ptr [eax]                          // 0x00718433    8b00
                         {disp8} je         _jmp_addr_0x0071843d                          // 0x00718435    7406
                         cmp.s              eax, ebp                                      // 0x00718437    3bc5
                         {disp8} je         _jmp_addr_0x0071849a                          // 0x00718439    745f
                         {disp8} jmp        _jmp_addr_0x00718430                          // 0x0071843b    ebf3
_jmp_addr_0x0071843d:    cmp.s              eax, ebp                                      // 0x0071843d    3bc5
                         {disp8} je         _jmp_addr_0x0071849a                          // 0x0071843f    7459
_jmp_addr_0x00718441:    {disp8} mov        esi, dword ptr [eax + 0x04]                   // 0x00718441    8b7004
                         cmp.s              esi, ebp                                      // 0x00718444    3bf5
                         {disp8} je         _jmp_addr_0x0071849a                          // 0x00718446    7452
                         push               ebp                                           // 0x00718448    55
                         {disp8} lea        edx, dword ptr [esp + 0x28]                   // 0x00718449    8d542428
                         {disp32} mov       dword ptr [esi + 0x0000008c], edi             // 0x0071844d    89be8c000000
                         push               edx                                           // 0x00718453    52
                         mov.s              ecx, esi                                      // 0x00718454    8bce
                         inc                edi                                           // 0x00718456    47
                         call               _jmp_addr_0x00530310                          // 0x00718457    e8b47ee1ff
                         test               eax, eax                                      // 0x0071845c    85c0
                         {disp8} je         _jmp_addr_0x00718416                          // 0x0071845e    74b6
                         cmp                dword ptr [esi + 0x48], ebp                   // 0x00718460    396e48
                         {disp8} je         _jmp_addr_0x00718416                          // 0x00718463    74b1
                         {disp8} mov        eax, dword ptr [esi + 0x3c]                   // 0x00718465    8b463c
                         {disp8} mov        dword ptr [esi + 0x44], eax                   // 0x00718468    894644
_jmp_addr_0x0071846b:    {disp8} mov        eax, dword ptr [esi + 0x44]                   // 0x0071846b    8b4644
                         cmp.s              eax, ebp                                      // 0x0071846e    3bc5
                         {disp8} je         _jmp_addr_0x00718416                          // 0x00718470    74a4
                         {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x00718472    8b4808
                         cmp.s              ecx, ebp                                      // 0x00718475    3bcd
                         {disp8} je         _jmp_addr_0x00718416                          // 0x00718477    749d
                         mov                edx, dword ptr [ecx]                          // 0x00718479    8b11
                         push               ebp                                           // 0x0071847b    55
                         {disp8} lea        eax, dword ptr [esp + 0x28]                   // 0x0071847c    8d442428
                         push               eax                                           // 0x00718480    50
                         call               dword ptr [edx + 0x82c]                       // 0x00718481    ff922c080000
                         test               eax, eax                                      // 0x00718487    85c0
                         {disp8} je         _jmp_addr_0x0071848c                          // 0x00718489    7401
                         inc                ebx                                           // 0x0071848b    43
_jmp_addr_0x0071848c:    {disp8} mov        eax, dword ptr [esi + 0x44]                   // 0x0071848c    8b4644
                         cmp.s              eax, ebp                                      // 0x0071848f    3bc5
                         {disp8} je         _jmp_addr_0x0071846b                          // 0x00718491    74d8
                         mov                ecx, dword ptr [eax]                          // 0x00718493    8b08
                         {disp8} mov        dword ptr [esi + 0x44], ecx                   // 0x00718495    894e44
                         {disp8} jmp        _jmp_addr_0x0071846b                          // 0x00718498    ebd1
_jmp_addr_0x0071849a:    {disp32} mov       esi, dword ptr [data_bytes + 0x378e54]        // 0x0071849a    8b3554eed300
                         cmp.s              esi, ebp                                      // 0x007184a0    3bf5
                         {disp8} je         _jmp_addr_0x007184c1                          // 0x007184a2    741d
_jmp_addr_0x007184a4:    mov                edx, dword ptr [esi]                          // 0x007184a4    8b16
                         push               ebp                                           // 0x007184a6    55
                         {disp8} lea        eax, dword ptr [esp + 0x28]                   // 0x007184a7    8d442428
                         push               eax                                           // 0x007184ab    50
                         mov.s              ecx, esi                                      // 0x007184ac    8bce
                         call               dword ptr [edx + 0x82c]                       // 0x007184ae    ff922c080000
                         {disp8} mov        esi, dword ptr [esi + 0x54]                   // 0x007184b4    8b7654
                         cmp.s              esi, ebp                                      // 0x007184b7    3bf5
                         {disp8} jne        _jmp_addr_0x007184a4                          // 0x007184b9    75e9
                         {disp32} mov       edx, dword ptr [_game]                        // 0x007184bb    8b155c19d000
_jmp_addr_0x007184c1:    {disp32} mov       edi, dword ptr [edx + 0x00205bb4]             // 0x007184c1    8bbab45b2000
                         cmp.s              edi, ebp                                      // 0x007184c7    3bfd
                         {disp32} je        _jmp_addr_0x00718554                          // 0x007184c9    0f8485000000
_jmp_addr_0x007184cf:    {disp8} mov        eax, dword ptr [edi + 0x44]                   // 0x007184cf    8b4744
                         cmp.s              eax, ebp                                      // 0x007184d2    3bc5
                         {disp8} je         _jmp_addr_0x007184dc                          // 0x007184d4    7406
                         mov.s              edi, eax                                      // 0x007184d6    8bf8
                         cmp.s              edi, ebp                                      // 0x007184d8    3bfd
                         {disp8} jne        _jmp_addr_0x007184cf                          // 0x007184da    75f3
_jmp_addr_0x007184dc:    cmp.s              edi, ebp                                      // 0x007184dc    3bfd
                         {disp8} je         _jmp_addr_0x00718554                          // 0x007184de    7474
_jmp_addr_0x007184e0:    {disp8} mov        ecx, dword ptr [edi + 0x54]                   // 0x007184e0    8b4f54
                         add                ecx, dword ptr [edi + 0x4c]                   // 0x007184e3    034f4c
                         {disp8} je         _jmp_addr_0x00718533                          // 0x007184e6    744b
                         push               ebp                                           // 0x007184e8    55
                         {disp8} lea        edx, dword ptr [esp + 0x28]                   // 0x007184e9    8d542428
                         push               edx                                           // 0x007184ed    52
                         mov.s              ecx, edi                                      // 0x007184ee    8bcf
                         call               _jmp_addr_0x0053a7c0                          // 0x007184f0    e8cb22e2ff
                         test               eax, eax                                      // 0x007184f5    85c0
                         {disp8} je         _jmp_addr_0x0071852d                          // 0x007184f7    7434
                         push               ebp                                           // 0x007184f9    55
                         mov.s              ecx, edi                                      // 0x007184fa    8bcf
                         call               _jmp_addr_0x0053a600                          // 0x007184fc    e8ff20e2ff
                         mov.s              esi, eax                                      // 0x00718501    8bf0
                         cmp.s              esi, ebp                                      // 0x00718503    3bf5
                         {disp8} je         _jmp_addr_0x0071852d                          // 0x00718505    7426
_jmp_addr_0x00718507:    mov                eax, dword ptr [esi]                          // 0x00718507    8b06
                         push               ebp                                           // 0x00718509    55
                         {disp8} lea        ecx, dword ptr [esp + 0x28]                   // 0x0071850a    8d4c2428
                         push               ecx                                           // 0x0071850e    51
                         mov.s              ecx, esi                                      // 0x0071850f    8bce
                         call               dword ptr [eax + 0x82c]                       // 0x00718511    ff902c080000
                         test               eax, eax                                      // 0x00718517    85c0
                         {disp8} je         _jmp_addr_0x0071851f                          // 0x00718519    7404
                         {disp8} inc        dword ptr [esp + 0x10]                        // 0x0071851b    ff442410
_jmp_addr_0x0071851f:    push               esi                                           // 0x0071851f    56
                         mov.s              ecx, edi                                      // 0x00718520    8bcf
                         call               _jmp_addr_0x0053a600                          // 0x00718522    e8d920e2ff
                         mov.s              esi, eax                                      // 0x00718527    8bf0
                         cmp.s              esi, ebp                                      // 0x00718529    3bf5
                         {disp8} jne        _jmp_addr_0x00718507                          // 0x0071852b    75da
_jmp_addr_0x0071852d:    {disp32} mov       edx, dword ptr [_game]                        // 0x0071852d    8b155c19d000
_jmp_addr_0x00718533:    {disp32} mov       eax, dword ptr [edx + 0x00205bb4]             // 0x00718533    8b82b45b2000
                         cmp.s              eax, edi                                      // 0x00718539    3bc7
                         {disp8} je         _jmp_addr_0x00718554                          // 0x0071853b    7417
                         cmp.s              eax, ebp                                      // 0x0071853d    3bc5
                         {disp8} je         _jmp_addr_0x0071854e                          // 0x0071853f    740d
_jmp_addr_0x00718541:    {disp8} mov        ecx, dword ptr [eax + 0x44]                   // 0x00718541    8b4844
                         cmp.s              ecx, edi                                      // 0x00718544    3bcf
                         {disp8} je         _jmp_addr_0x0071854e                          // 0x00718546    7406
                         mov.s              eax, ecx                                      // 0x00718548    8bc1
                         cmp.s              eax, ebp                                      // 0x0071854a    3bc5
                         {disp8} jne        _jmp_addr_0x00718541                          // 0x0071854c    75f3
_jmp_addr_0x0071854e:    cmp.s              eax, ebp                                      // 0x0071854e    3bc5
                         mov.s              edi, eax                                      // 0x00718550    8bf8
                         {disp8} jne        _jmp_addr_0x007184e0                          // 0x00718552    758c
_jmp_addr_0x00718554:    {disp32} mov       esi, dword ptr [edx + 0x00205c04]             // 0x00718554    8bb2045c2000
                         cmp.s              esi, ebp                                      // 0x0071855a    3bf5
                         {disp8} je         _jmp_addr_0x007185ac                          // 0x0071855c    744e
_jmp_addr_0x0071855e:    {disp32} mov       eax, dword ptr [esi + 0x000000c4]             // 0x0071855e    8b86c4000000
                         cmp.s              eax, ebp                                      // 0x00718564    3bc5
                         {disp8} je         _jmp_addr_0x0071856e                          // 0x00718566    7406
                         mov.s              esi, eax                                      // 0x00718568    8bf0
                         cmp.s              esi, ebp                                      // 0x0071856a    3bf5
                         {disp8} jne        _jmp_addr_0x0071855e                          // 0x0071856c    75f0
_jmp_addr_0x0071856e:    cmp.s              esi, ebp                                      // 0x0071856e    3bf5
                         {disp8} je         _jmp_addr_0x007185ac                          // 0x00718570    743a
_jmp_addr_0x00718572:    mov                edx, dword ptr [esi]                          // 0x00718572    8b16
                         push               ebp                                           // 0x00718574    55
                         {disp8} lea        eax, dword ptr [esp + 0x28]                   // 0x00718575    8d442428
                         push               eax                                           // 0x00718579    50
                         mov.s              ecx, esi                                      // 0x0071857a    8bce
                         call               dword ptr [edx + 0x82c]                       // 0x0071857c    ff922c080000
                         {disp32} mov       edx, dword ptr [_game]                        // 0x00718582    8b155c19d000
                         {disp32} mov       eax, dword ptr [edx + 0x00205c04]             // 0x00718588    8b82045c2000
                         cmp.s              eax, esi                                      // 0x0071858e    3bc6
                         {disp8} je         _jmp_addr_0x007185ac                          // 0x00718590    741a
                         cmp.s              eax, ebp                                      // 0x00718592    3bc5
                         {disp8} je         _jmp_addr_0x007185a6                          // 0x00718594    7410
_jmp_addr_0x00718596:    {disp32} mov       ecx, dword ptr [eax + 0x000000c4]             // 0x00718596    8b88c4000000
                         cmp.s              ecx, esi                                      // 0x0071859c    3bce
                         {disp8} je         _jmp_addr_0x007185a6                          // 0x0071859e    7406
                         mov.s              eax, ecx                                      // 0x007185a0    8bc1
                         cmp.s              eax, ebp                                      // 0x007185a2    3bc5
                         {disp8} jne        _jmp_addr_0x00718596                          // 0x007185a4    75f0
_jmp_addr_0x007185a6:    cmp.s              eax, ebp                                      // 0x007185a6    3bc5
                         mov.s              esi, eax                                      // 0x007185a8    8bf0
                         {disp8} jne        _jmp_addr_0x00718572                          // 0x007185aa    75c6
_jmp_addr_0x007185ac:    {disp32} mov       esi, dword ptr [edx + 0x00205c0c]             // 0x007185ac    8bb20c5c2000
                         cmp.s              esi, ebp                                      // 0x007185b2    3bf5
                         {disp8} je         _jmp_addr_0x007185ed                          // 0x007185b4    7437
_jmp_addr_0x007185b6:    mov                edx, dword ptr [esi]                          // 0x007185b6    8b16
                         push               ebp                                           // 0x007185b8    55
                         {disp8} lea        eax, dword ptr [esp + 0x28]                   // 0x007185b9    8d442428
                         push               eax                                           // 0x007185bd    50
                         mov.s              ecx, esi                                      // 0x007185be    8bce
                         call               dword ptr [edx + 0x82c]                       // 0x007185c0    ff922c080000
                         {disp32} mov       edx, dword ptr [_game]                        // 0x007185c6    8b155c19d000
                         {disp32} mov       eax, dword ptr [edx + 0x00205c0c]             // 0x007185cc    8b820c5c2000
                         cmp.s              eax, esi                                      // 0x007185d2    3bc6
                         {disp8} je         _jmp_addr_0x007185ed                          // 0x007185d4    7417
                         cmp.s              eax, ebp                                      // 0x007185d6    3bc5
                         {disp8} je         _jmp_addr_0x007185e7                          // 0x007185d8    740d
_jmp_addr_0x007185da:    {disp8} mov        ecx, dword ptr [eax + 0x7c]                   // 0x007185da    8b487c
                         cmp.s              ecx, esi                                      // 0x007185dd    3bce
                         {disp8} je         _jmp_addr_0x007185e7                          // 0x007185df    7406
                         mov.s              eax, ecx                                      // 0x007185e1    8bc1
                         cmp.s              eax, ebp                                      // 0x007185e3    3bc5
                         {disp8} jne        _jmp_addr_0x007185da                          // 0x007185e5    75f3
_jmp_addr_0x007185e7:    cmp.s              eax, ebp                                      // 0x007185e7    3bc5
                         mov.s              esi, eax                                      // 0x007185e9    8bf0
                         {disp8} jne        _jmp_addr_0x007185b6                          // 0x007185eb    75c9
_jmp_addr_0x007185ed:    xor.s              esi, esi                                      // 0x007185ed    33f6
_jmp_addr_0x007185ef:    cmp.s              esi, ebp                                      // 0x007185ef    3bf5
                         {disp32} mov       eax, dword ptr [edx + 0x00205cbc]             // 0x007185f1    8b82bc5c2000
                         {disp8} jne        _jmp_addr_0x007185ff                          // 0x007185f7    7506
                         cmp.s              eax, ebp                                      // 0x007185f9    3bc5
                         {disp8} je         _jmp_addr_0x00718633                          // 0x007185fb    7436
                         {disp8} jmp        _jmp_addr_0x00718614                          // 0x007185fd    eb15
_jmp_addr_0x007185ff:    cmp.s              eax, ebp                                      // 0x007185ff    3bc5
                         {disp8} je         _jmp_addr_0x00718633                          // 0x00718601    7430
_jmp_addr_0x00718603:    cmp                dword ptr [eax + 0x04], esi                   // 0x00718603    397004
                         mov                eax, dword ptr [eax]                          // 0x00718606    8b00
                         {disp8} je         _jmp_addr_0x00718610                          // 0x00718608    7406
                         cmp.s              eax, ebp                                      // 0x0071860a    3bc5
                         {disp8} je         _jmp_addr_0x00718633                          // 0x0071860c    7425
                         {disp8} jmp        _jmp_addr_0x00718603                          // 0x0071860e    ebf3
_jmp_addr_0x00718610:    cmp.s              eax, ebp                                      // 0x00718610    3bc5
                         {disp8} je         _jmp_addr_0x00718633                          // 0x00718612    741f
_jmp_addr_0x00718614:    {disp8} mov        esi, dword ptr [eax + 0x04]                   // 0x00718614    8b7004
                         cmp.s              esi, ebp                                      // 0x00718617    3bf5
                         {disp8} je         _jmp_addr_0x00718633                          // 0x00718619    7418
                         mov                edx, dword ptr [esi]                          // 0x0071861b    8b16
                         push               ebp                                           // 0x0071861d    55
                         {disp8} lea        eax, dword ptr [esp + 0x28]                   // 0x0071861e    8d442428
                         push               eax                                           // 0x00718622    50
                         mov.s              ecx, esi                                      // 0x00718623    8bce
                         call               dword ptr [edx + 0x82c]                       // 0x00718625    ff922c080000
                         {disp32} mov       edx, dword ptr [_game]                        // 0x0071862b    8b155c19d000
                         {disp8} jmp        _jmp_addr_0x007185ef                          // 0x00718631    ebbc
_jmp_addr_0x00718633:    {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x00718633    8d4c2424
                         push               ecx                                           // 0x00718637    51
                         call               _jmp_addr_0x00733fb0                          // 0x00718638    e873b90100
                         {disp8} lea        edx, dword ptr [esp + 0x28]                   // 0x0071863d    8d542428
                         push               edx                                           // 0x00718641    52
                         call               _jmp_addr_0x007341c0                          // 0x00718642    e879bb0100
                         {disp8} lea        eax, dword ptr [esp + 0x2c]                   // 0x00718647    8d44242c
                         push               eax                                           // 0x0071864b    50
                         call               _jmp_addr_0x00424b80                          // 0x0071864c    e82fc5d0ff
                         {disp32} mov       edx, dword ptr [_game]                        // 0x00718651    8b155c19d000
                         {disp32} mov       eax, dword ptr [edx + 0x00205c4c]             // 0x00718657    8b824c5c2000
                         add                esp, 0x0c                                     // 0x0071865d    83c40c
                         cmp.s              eax, ebp                                      // 0x00718660    3bc5
                         {disp8} je         _jmp_addr_0x00718671                          // 0x00718662    740d
_jmp_addr_0x00718664:    {disp8} mov        ecx, dword ptr [eax + 0x40]                   // 0x00718664    8b4840
                         cmp.s              ecx, ebp                                      // 0x00718667    3bcd
                         {disp8} je         _jmp_addr_0x00718671                          // 0x00718669    7406
                         mov.s              eax, ecx                                      // 0x0071866b    8bc1
                         cmp.s              eax, ebp                                      // 0x0071866d    3bc5
                         {disp8} jne        _jmp_addr_0x00718664                          // 0x0071866f    75f3
_jmp_addr_0x00718671:    cmp.s              eax, ebp                                      // 0x00718671    3bc5
                         mov.s              esi, eax                                      // 0x00718673    8bf0
                         {disp8} je         _jmp_addr_0x007186ab                          // 0x00718675    7434
_jmp_addr_0x00718677:    push               ebp                                           // 0x00718677    55
                         {disp8} lea        ecx, dword ptr [esp + 0x28]                   // 0x00718678    8d4c2428
                         push               ecx                                           // 0x0071867c    51
                         mov.s              ecx, esi                                      // 0x0071867d    8bce
                         call               _jmp_addr_0x005cda90                          // 0x0071867f    e80c54ebff
                         {disp32} mov       edx, dword ptr [_game]                        // 0x00718684    8b155c19d000
                         {disp32} mov       eax, dword ptr [edx + 0x00205c4c]             // 0x0071868a    8b824c5c2000
                         cmp.s              eax, esi                                      // 0x00718690    3bc6
                         {disp8} je         _jmp_addr_0x007186ab                          // 0x00718692    7417
                         cmp.s              eax, ebp                                      // 0x00718694    3bc5
                         {disp8} je         _jmp_addr_0x007186a5                          // 0x00718696    740d
_jmp_addr_0x00718698:    {disp8} mov        ecx, dword ptr [eax + 0x40]                   // 0x00718698    8b4840
                         cmp.s              ecx, esi                                      // 0x0071869b    3bce
                         {disp8} je         _jmp_addr_0x007186a5                          // 0x0071869d    7406
                         mov.s              eax, ecx                                      // 0x0071869f    8bc1
                         cmp.s              eax, ebp                                      // 0x007186a1    3bc5
                         {disp8} jne        _jmp_addr_0x00718698                          // 0x007186a3    75f3
_jmp_addr_0x007186a5:    cmp.s              eax, ebp                                      // 0x007186a5    3bc5
                         mov.s              esi, eax                                      // 0x007186a7    8bf0
                         {disp8} jne        _jmp_addr_0x00718677                          // 0x007186a9    75cc
_jmp_addr_0x007186ab:    {disp32} mov       esi, dword ptr [edx + 0x00205d0c]             // 0x007186ab    8bb20c5d2000
                         cmp.s              esi, ebp                                      // 0x007186b1    3bf5
                         {disp8} je         _jmp_addr_0x007186fd                          // 0x007186b3    7448
_jmp_addr_0x007186b5:    {disp8} mov        eax, dword ptr [esi + 0x54]                   // 0x007186b5    8b4654
                         cmp.s              eax, ebp                                      // 0x007186b8    3bc5
                         {disp8} je         _jmp_addr_0x007186c2                          // 0x007186ba    7406
                         mov.s              esi, eax                                      // 0x007186bc    8bf0
                         cmp.s              esi, ebp                                      // 0x007186be    3bf5
                         {disp8} jne        _jmp_addr_0x007186b5                          // 0x007186c0    75f3
_jmp_addr_0x007186c2:    cmp.s              esi, ebp                                      // 0x007186c2    3bf5
                         {disp8} je         _jmp_addr_0x007186fd                          // 0x007186c4    7437
_jmp_addr_0x007186c6:    mov                edx, dword ptr [esi]                          // 0x007186c6    8b16
                         push               ebp                                           // 0x007186c8    55
                         {disp8} lea        eax, dword ptr [esp + 0x28]                   // 0x007186c9    8d442428
                         push               eax                                           // 0x007186cd    50
                         mov.s              ecx, esi                                      // 0x007186ce    8bce
                         call               dword ptr [edx + 0x82c]                       // 0x007186d0    ff922c080000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x007186d6    8b0d5c19d000
                         {disp32} mov       eax, dword ptr [ecx + 0x00205d0c]             // 0x007186dc    8b810c5d2000
                         cmp.s              eax, esi                                      // 0x007186e2    3bc6
                         {disp8} je         _jmp_addr_0x007186fd                          // 0x007186e4    7417
                         cmp.s              eax, ebp                                      // 0x007186e6    3bc5
                         {disp8} je         _jmp_addr_0x007186f7                          // 0x007186e8    740d
_jmp_addr_0x007186ea:    {disp8} mov        ecx, dword ptr [eax + 0x54]                   // 0x007186ea    8b4854
                         cmp.s              ecx, esi                                      // 0x007186ed    3bce
                         {disp8} je         _jmp_addr_0x007186f7                          // 0x007186ef    7406
                         mov.s              eax, ecx                                      // 0x007186f1    8bc1
                         cmp.s              eax, ebp                                      // 0x007186f3    3bc5
                         {disp8} jne        _jmp_addr_0x007186ea                          // 0x007186f5    75f3
_jmp_addr_0x007186f7:    cmp.s              eax, ebp                                      // 0x007186f7    3bc5
                         mov.s              esi, eax                                      // 0x007186f9    8bf0
                         {disp8} jne        _jmp_addr_0x007186c6                          // 0x007186fb    75c9
_jmp_addr_0x007186fd:    {disp8} lea        edx, dword ptr [esp + 0x24]                   // 0x007186fd    8d542424
                         push               edx                                           // 0x00718701    52
                         call               _jmp_addr_0x0052b670                          // 0x00718702    e8692fe1ff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00718707    8b0d5c19d000
                         {disp32} mov       eax, dword ptr [ecx + 0x000059c8]             // 0x0071870d    8b81c8590000
                         add                esp, 0x04                                     // 0x00718713    83c404
                         cmp.s              eax, ebp                                      // 0x00718716    3bc5
                         {disp8} jbe        _jmp_addr_0x00718722                          // 0x00718718    7608
                         cmp                dword ptr [ecx + 0x000059c4], ebp             // 0x0071871a    39a9c4590000
                         {disp8} ja         _jmp_addr_0x00718726                          // 0x00718720    7704
_jmp_addr_0x00718722:    xor.s              edi, edi                                      // 0x00718722    33ff
                         {disp8} jmp        _jmp_addr_0x0071872c                          // 0x00718724    eb06
_jmp_addr_0x00718726:    {disp32} lea       edi, dword ptr [ecx + 0x000059fc]             // 0x00718726    8db9fc590000
_jmp_addr_0x0071872c:    {disp32} mov       edx, dword ptr [ecx + 0x000059c8]             // 0x0071872c    8b91c8590000
                         {disp32} mov       esi, dword ptr [ecx + 0x000059c4]             // 0x00718732    8bb1c4590000
                         {disp32} mov       eax, dword ptr [ecx + 0x000059c8]             // 0x00718738    8b81c8590000
                         dec                edx                                           // 0x0071873e    4a
                         dec                esi                                           // 0x0071873f    4e
                         cmp.s              esi, eax                                      // 0x00718740    3bf0
                         {disp8} jae        _jmp_addr_0x0071874e                          // 0x00718742    730a
                         {disp32} mov       eax, dword ptr [ecx + 0x000059c4]             // 0x00718744    8b81c4590000
                         cmp.s              edx, eax                                      // 0x0071874a    3bd0
                         .byte              0x72, 0x4// {disp8} jb _jmp_addr_0x00718752   // 0x0071874c    7204
_jmp_addr_0x0071874e:    xor.s              eax, eax                                      // 0x0071874e    33c0
                         {disp8} jmp        _jmp_addr_0x0071875e                          // 0x00718750    eb0c
_jmp_addr_0x00718752:    imul               eax, esi                                      // 0x00718752    0fafc6
                         add.s              eax, edx                                      // 0x00718755    03c2
                         {disp32} lea       eax, dword ptr [ecx + eax * 0x8 + 0x000059fc] // 0x00718757    8d84c1fc590000
_jmp_addr_0x0071875e:    cmp.s              edi, eax                                      // 0x0071875e    3bf8
                         push               ebp                                           // 0x00718760    55
                         {disp8} ja         _jmp_addr_0x00718795                          // 0x00718761    7732
                         {disp8} lea        eax, dword ptr [esp + 0x24]                   // 0x00718763    8d442424
                         push               eax                                           // 0x00718767    50
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x00718768    8d4c2418
                         push               ecx                                           // 0x0071876c    51
                         {disp8} lea        edx, dword ptr [esp + 0x20]                   // 0x0071876d    8d542420
                         push               edx                                           // 0x00718771    52
                         {disp8} lea        eax, dword ptr [esp + 0x28]                   // 0x00718772    8d442428
                         push               eax                                           // 0x00718776    50
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x00718777    8d4c2430
                         push               ecx                                           // 0x0071877b    51
                         {disp8} lea        edx, dword ptr [esp + 0x3c]                   // 0x0071877c    8d54243c
                         push               edi                                           // 0x00718780    57
                         push               edx                                           // 0x00718781    52
                         call               ?SaveMapCell@GSetup@@QAEXAAVLHOSFile@@PAUMapCell@@AAK2222ABUMapCoords@@@Z                          // 0x00718782    e8e9000000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00718787    8b0d5c19d000
                         add                esp, 0x20                                     // 0x0071878d    83c420
                         add                edi, 0x08                                     // 0x00718790    83c708
                         {disp8} jmp        _jmp_addr_0x0071872c                          // 0x00718793    eb97
_jmp_addr_0x00718795:    {disp8} lea        eax, dword ptr [esp + 0x28]                   // 0x00718795    8d442428
                         push               eax                                           // 0x00718799    50
                         call               _jmp_addr_0x006065d0                          // 0x0071879a    e831deeeff
                         {disp8} lea        ecx, dword ptr [esp + 0x2c]                   // 0x0071879f    8d4c242c
                         push               ebp                                           // 0x007187a3    55
                         push               ecx                                           // 0x007187a4    51
                         call               _jmp_addr_0x00557400                          // 0x007187a5    e856ece3ff
                         {disp8} lea        edx, dword ptr [esp + 0x34]                   // 0x007187aa    8d542434
                         push               ebp                                           // 0x007187ae    55
                         push               edx                                           // 0x007187af    52
                         call               _jmp_addr_0x00772b80                          // 0x007187b0    e8cba30500
                         {disp8} lea        eax, dword ptr [esp + 0x3c]                   // 0x007187b5    8d44243c
                         push               ebp                                           // 0x007187b9    55
                         push               eax                                           // 0x007187ba    50
                         call               _jmp_addr_0x00439430                          // 0x007187bb    e8700cd2ff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x007187c0    8b0d5c19d000
                         {disp32} mov       esi, dword ptr [ecx + 0x00205c34]             // 0x007187c6    8bb1345c2000
                         add                esp, 0x20                                     // 0x007187cc    83c420
                         cmp.s              esi, ebp                                      // 0x007187cf    3bf5
                         {disp8} je         _jmp_addr_0x0071881b                          // 0x007187d1    7448
_jmp_addr_0x007187d3:    {disp8} mov        eax, dword ptr [esi + 0x54]                   // 0x007187d3    8b4654
                         cmp.s              eax, ebp                                      // 0x007187d6    3bc5
                         {disp8} je         _jmp_addr_0x007187e0                          // 0x007187d8    7406
                         mov.s              esi, eax                                      // 0x007187da    8bf0
                         cmp.s              esi, ebp                                      // 0x007187dc    3bf5
                         {disp8} jne        _jmp_addr_0x007187d3                          // 0x007187de    75f3
_jmp_addr_0x007187e0:    cmp.s              esi, ebp                                      // 0x007187e0    3bf5
                         {disp8} je         _jmp_addr_0x0071881b                          // 0x007187e2    7437
_jmp_addr_0x007187e4:    mov                edx, dword ptr [esi]                          // 0x007187e4    8b16
                         push               ebp                                           // 0x007187e6    55
                         {disp8} lea        eax, dword ptr [esp + 0x28]                   // 0x007187e7    8d442428
                         push               eax                                           // 0x007187eb    50
                         mov.s              ecx, esi                                      // 0x007187ec    8bce
                         call               dword ptr [edx + 0x82c]                       // 0x007187ee    ff922c080000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x007187f4    8b0d5c19d000
                         {disp32} mov       eax, dword ptr [ecx + 0x00205c34]             // 0x007187fa    8b81345c2000
                         cmp.s              eax, esi                                      // 0x00718800    3bc6
                         {disp8} je         _jmp_addr_0x0071881b                          // 0x00718802    7417
                         cmp.s              eax, ebp                                      // 0x00718804    3bc5
                         {disp8} je         _jmp_addr_0x00718815                          // 0x00718806    740d
_jmp_addr_0x00718808:    {disp8} mov        ecx, dword ptr [eax + 0x54]                   // 0x00718808    8b4854
                         cmp.s              ecx, esi                                      // 0x0071880b    3bce
                         {disp8} je         _jmp_addr_0x00718815                          // 0x0071880d    7406
                         mov.s              eax, ecx                                      // 0x0071880f    8bc1
                         cmp.s              eax, ebp                                      // 0x00718811    3bc5
                         {disp8} jne        _jmp_addr_0x00718808                          // 0x00718813    75f3
_jmp_addr_0x00718815:    cmp.s              eax, ebp                                      // 0x00718815    3bc5
                         mov.s              esi, eax                                      // 0x00718817    8bf0
                         {disp8} jne        _jmp_addr_0x007187e4                          // 0x00718819    75c9
_jmp_addr_0x0071881b:    {disp8} lea        edx, dword ptr [esp + 0x24]                   // 0x0071881b    8d542424
                         push               ebp                                           // 0x0071881f    55
                         push               edx                                           // 0x00718820    52
                         call               _jmp_addr_0x00734f70                          // 0x00718821    e84ac70100
                         {disp32} mov       eax, dword ptr [_game]                        // 0x00718826    a15c19d000
                         {disp32} mov       esi, dword ptr [eax + 0x00205c74]             // 0x0071882b    8bb0745c2000
                         add                esp, 0x08                                     // 0x00718831    83c408
                         cmp.s              esi, ebp                                      // 0x00718834    3bf5
                         {disp8} je         _jmp_addr_0x0071884c                          // 0x00718836    7414
_jmp_addr_0x00718838:    push               ebp                                           // 0x00718838    55
                         {disp8} lea        ecx, dword ptr [esp + 0x28]                   // 0x00718839    8d4c2428
                         push               ecx                                           // 0x0071883d    51
                         mov.s              ecx, esi                                      // 0x0071883e    8bce
                         call               _jmp_addr_0x00770c60                          // 0x00718840    e81b840500
                         {disp8} mov        esi, dword ptr [esi + 0x28]                   // 0x00718845    8b7628
                         cmp.s              esi, ebp                                      // 0x00718848    3bf5
                         {disp8} jne        _jmp_addr_0x00718838                          // 0x0071884a    75ec
_jmp_addr_0x0071884c:    {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x0071884c    8d4c2424
                         call               ?Close@LHOSFile@@QAEIXZ                       // 0x00718850    e80b400a00
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x00718855    8d4c2424
                         call               ??_DLHOSFile@@QAEXXZ                          // 0x00718859    e8223e0a00
                         pop                esi                                           // 0x0071885e    5e
                         pop                edi                                           // 0x0071885f    5f
                         pop                ebp                                           // 0x00718860    5d
                         mov                eax, 0x00000001                               // 0x00718861    b801000000
                         pop                ebx                                           // 0x00718866    5b
                         add                esp, 0x00000120                               // 0x00718867    81c420010000
                         ret                                                              // 0x0071886d    c3
                         nop                                                              // 0x0071886e    90
                         nop                                                              // 0x0071886f    90
?SaveMapCell@GSetup@@QAEXAAVLHOSFile@@PAUMapCell@@AAK2222ABUMapCoords@@@Z:
                         push               ebx                                           // 0x00718870    53
                         push               ebp                                           // 0x00718871    55
                         push               esi                                           // 0x00718872    56
                         {disp8} mov        esi, dword ptr [esp + 0x14]                   // 0x00718873    8b742414
                         push               edi                                           // 0x00718877    57
                         push               0x0                                           // 0x00718878    6a00
                         push               0x009c9548                                    // 0x0071887a    6848959c00
                         push               0x009c7f50                                    // 0x0071887f    68507f9c00
                         push               0x0                                           // 0x00718884    6a00
                         push               0x0                                           // 0x00718886    6a00
                         push               0x13                                          // 0x00718888    6a13
                         mov.s              ecx, esi                                      // 0x0071888a    8bce
                         call               @FindTypeOnMap__7MapCellCF11OBJECT_TYPEP6Object@16                          // 0x0071888c    e84f8deeff
                         push               eax                                           // 0x00718891    50
                         call               ___RTDynamicCast                              // 0x00718892    e882d10a00
                         {disp8} mov        ebp, dword ptr [esp + 0x44]                   // 0x00718897    8b6c2444
                         mov.s              edi, eax                                      // 0x0071889b    8bf8
                         add                esp, 0x14                                     // 0x0071889d    83c414
                         test               edi, edi                                      // 0x007188a0    85ff
                         {disp8} je         _jmp_addr_0x00718909                          // 0x007188a2    7465
                         {disp8} mov        ebx, dword ptr [esp + 0x1c]                   // 0x007188a4    8b5c241c
_jmp_addr_0x007188a8:    mov.s              ecx, esi                                      // 0x007188a8    8bce
                         call               ?GetX@MapCell@@QBEIXZ                         // 0x007188aa    e8d192eeff
                         {disp8} mov        ecx, dword ptr [edi + 0x68]                   // 0x007188af    8b4f68
                         movsx              edx, word ptr [ecx + 0x04]                    // 0x007188b2    0fbf5104
                         cmp.s              edx, eax                                      // 0x007188b6    3bd0
                         {disp8} jne        _jmp_addr_0x007188e2                          // 0x007188b8    7528
                         mov.s              ecx, esi                                      // 0x007188ba    8bce
                         call               ?GetZ@MapCell@@QBEIXZ                         // 0x007188bc    e8df92eeff
                         {disp8} mov        ecx, dword ptr [edi + 0x68]                   // 0x007188c1    8b4f68
                         movsx              edx, word ptr [ecx + 0x06]                    // 0x007188c4    0fbf5106
                         cmp.s              edx, eax                                      // 0x007188c8    3bd0
                         {disp8} jne        _jmp_addr_0x007188e2                          // 0x007188ca    7516
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x007188cc    8b4c2414
                         mov                eax, dword ptr [edi]                          // 0x007188d0    8b07
                         push               ebp                                           // 0x007188d2    55
                         push               ecx                                           // 0x007188d3    51
                         mov.s              ecx, edi                                      // 0x007188d4    8bcf
                         call               dword ptr [eax + 0x82c]                       // 0x007188d6    ff902c080000
                         test               eax, eax                                      // 0x007188dc    85c0
                         {disp8} je         _jmp_addr_0x007188e2                          // 0x007188de    7402
                         inc                dword ptr [ebx]                               // 0x007188e0    ff03
_jmp_addr_0x007188e2:    push               0x0                                           // 0x007188e2    6a00
                         push               0x009c9548                                    // 0x007188e4    6848959c00
                         push               0x009c7f50                                    // 0x007188e9    68507f9c00
                         push               0x0                                           // 0x007188ee    6a00
                         push               edi                                           // 0x007188f0    57
                         push               0x13                                          // 0x007188f1    6a13
                         mov.s              ecx, esi                                      // 0x007188f3    8bce
                         call               @FindTypeOnMap__7MapCellCF11OBJECT_TYPEP6Object@16                          // 0x007188f5    e8e68ceeff
                         push               eax                                           // 0x007188fa    50
                         call               ___RTDynamicCast                              // 0x007188fb    e819d10a00
                         mov.s              edi, eax                                      // 0x00718900    8bf8
                         add                esp, 0x14                                     // 0x00718902    83c414
                         test               edi, edi                                      // 0x00718905    85ff
                         {disp8} jne        _jmp_addr_0x007188a8                          // 0x00718907    759f
_jmp_addr_0x00718909:    push               0x0                                           // 0x00718909    6a00
                         push               0x009c8eb0                                    // 0x0071890b    68b08e9c00
                         push               0x009c7f50                                    // 0x00718910    68507f9c00
                         push               0x0                                           // 0x00718915    6a00
                         push               0x0                                           // 0x00718917    6a00
                         push               0x15                                          // 0x00718919    6a15
                         mov.s              ecx, esi                                      // 0x0071891b    8bce
                         call               @FindTypeOnMap__7MapCellCF11OBJECT_TYPEP6Object@16                          // 0x0071891d    e8be8ceeff
                         push               eax                                           // 0x00718922    50
                         call               ___RTDynamicCast                              // 0x00718923    e8f1d00a00
                         mov.s              edi, eax                                      // 0x00718928    8bf8
                         add                esp, 0x14                                     // 0x0071892a    83c414
                         test               edi, edi                                      // 0x0071892d    85ff
                         {disp8} je         _jmp_addr_0x00718972                          // 0x0071892f    7441
                         {disp8} mov        ebx, dword ptr [esp + 0x20]                   // 0x00718931    8b5c2420
_jmp_addr_0x00718935:    {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00718935    8b442414
                         mov                edx, dword ptr [edi]                          // 0x00718939    8b17
                         push               ebp                                           // 0x0071893b    55
                         push               eax                                           // 0x0071893c    50
                         mov.s              ecx, edi                                      // 0x0071893d    8bcf
                         call               dword ptr [edx + 0x82c]                       // 0x0071893f    ff922c080000
                         test               eax, eax                                      // 0x00718945    85c0
                         {disp8} je         _jmp_addr_0x0071894b                          // 0x00718947    7402
                         inc                dword ptr [ebx]                               // 0x00718949    ff03
_jmp_addr_0x0071894b:    push               0x0                                           // 0x0071894b    6a00
                         push               0x009c8eb0                                    // 0x0071894d    68b08e9c00
                         push               0x009c7f50                                    // 0x00718952    68507f9c00
                         push               0x0                                           // 0x00718957    6a00
                         push               edi                                           // 0x00718959    57
                         push               0x15                                          // 0x0071895a    6a15
                         mov.s              ecx, esi                                      // 0x0071895c    8bce
                         call               @FindTypeOnMap__7MapCellCF11OBJECT_TYPEP6Object@16                          // 0x0071895e    e87d8ceeff
                         push               eax                                           // 0x00718963    50
                         call               ___RTDynamicCast                              // 0x00718964    e8b0d00a00
                         mov.s              edi, eax                                      // 0x00718969    8bf8
                         add                esp, 0x14                                     // 0x0071896b    83c414
                         test               edi, edi                                      // 0x0071896e    85ff
                         {disp8} jne        _jmp_addr_0x00718935                          // 0x00718970    75c3
_jmp_addr_0x00718972:    push               0x0                                           // 0x00718972    6a00
                         push               0x009c9698                                    // 0x00718974    6898969c00
                         push               0x009c7f50                                    // 0x00718979    68507f9c00
                         push               0x0                                           // 0x0071897e    6a00
                         push               0x0                                           // 0x00718980    6a00
                         push               0x14                                          // 0x00718982    6a14
                         mov.s              ecx, esi                                      // 0x00718984    8bce
                         call               @FindTypeOnMap__7MapCellCF11OBJECT_TYPEP6Object@16                          // 0x00718986    e8558ceeff
                         push               eax                                           // 0x0071898b    50
                         call               ___RTDynamicCast                              // 0x0071898c    e888d00a00
                         mov.s              edi, eax                                      // 0x00718991    8bf8
                         add                esp, 0x14                                     // 0x00718993    83c414
                         test               edi, edi                                      // 0x00718996    85ff
                         {disp8} je         _jmp_addr_0x007189db                          // 0x00718998    7441
                         {disp8} mov        ebx, dword ptr [esp + 0x24]                   // 0x0071899a    8b5c2424
_jmp_addr_0x0071899e:    {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0071899e    8b442414
                         mov                edx, dword ptr [edi]                          // 0x007189a2    8b17
                         push               ebp                                           // 0x007189a4    55
                         push               eax                                           // 0x007189a5    50
                         mov.s              ecx, edi                                      // 0x007189a6    8bcf
                         call               dword ptr [edx + 0x82c]                       // 0x007189a8    ff922c080000
                         test               eax, eax                                      // 0x007189ae    85c0
                         {disp8} je         _jmp_addr_0x007189b4                          // 0x007189b0    7402
                         inc                dword ptr [ebx]                               // 0x007189b2    ff03
_jmp_addr_0x007189b4:    push               0x0                                           // 0x007189b4    6a00
                         push               0x009c9698                                    // 0x007189b6    6898969c00
                         push               0x009c7f50                                    // 0x007189bb    68507f9c00
                         push               0x0                                           // 0x007189c0    6a00
                         push               edi                                           // 0x007189c2    57
                         push               0x14                                          // 0x007189c3    6a14
                         mov.s              ecx, esi                                      // 0x007189c5    8bce
                         call               @FindTypeOnMap__7MapCellCF11OBJECT_TYPEP6Object@16                          // 0x007189c7    e8148ceeff
                         push               eax                                           // 0x007189cc    50
                         call               ___RTDynamicCast                              // 0x007189cd    e847d00a00
                         mov.s              edi, eax                                      // 0x007189d2    8bf8
                         add                esp, 0x14                                     // 0x007189d4    83c414
                         test               edi, edi                                      // 0x007189d7    85ff
                         {disp8} jne        _jmp_addr_0x0071899e                          // 0x007189d9    75c3
_jmp_addr_0x007189db:    push               0x0                                           // 0x007189db    6a00
                         push               0x009cd308                                    // 0x007189dd    6808d39c00
                         push               0x009c7f50                                    // 0x007189e2    68507f9c00
                         push               0x0                                           // 0x007189e7    6a00
                         push               0x0                                           // 0x007189e9    6a00
                         push               0x1c                                          // 0x007189eb    6a1c
                         mov.s              ecx, esi                                      // 0x007189ed    8bce
                         call               @FindTypeOnMap__7MapCellCF11OBJECT_TYPEP6Object@16                          // 0x007189ef    e8ec8beeff
                         push               eax                                           // 0x007189f4    50
                         call               ___RTDynamicCast                              // 0x007189f5    e81fd00a00
                         mov.s              edi, eax                                      // 0x007189fa    8bf8
                         add                esp, 0x14                                     // 0x007189fc    83c414
                         test               edi, edi                                      // 0x007189ff    85ff
                         {disp8} je         _jmp_addr_0x00718a41                          // 0x00718a01    743e
_jmp_addr_0x00718a03:    {disp8} mov        eax, dword ptr [edi + 0x7c]                   // 0x00718a03    8b477c
                         test               eax, eax                                      // 0x00718a06    85c0
                         {disp8} jne        _jmp_addr_0x00718a1a                          // 0x00718a08    7510
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00718a0a    8b442414
                         mov                edx, dword ptr [edi]                          // 0x00718a0e    8b17
                         push               ebp                                           // 0x00718a10    55
                         push               eax                                           // 0x00718a11    50
                         mov.s              ecx, edi                                      // 0x00718a12    8bcf
                         call               dword ptr [edx + 0x82c]                       // 0x00718a14    ff922c080000
_jmp_addr_0x00718a1a:    push               0x0                                           // 0x00718a1a    6a00
                         push               0x009cd308                                    // 0x00718a1c    6808d39c00
                         push               0x009c7f50                                    // 0x00718a21    68507f9c00
                         push               0x0                                           // 0x00718a26    6a00
                         push               edi                                           // 0x00718a28    57
                         push               0x1c                                          // 0x00718a29    6a1c
                         mov.s              ecx, esi                                      // 0x00718a2b    8bce
                         call               @FindTypeOnMap__7MapCellCF11OBJECT_TYPEP6Object@16                          // 0x00718a2d    e8ae8beeff
                         push               eax                                           // 0x00718a32    50
                         call               ___RTDynamicCast                              // 0x00718a33    e8e1cf0a00
                         mov.s              edi, eax                                      // 0x00718a38    8bf8
                         add                esp, 0x14                                     // 0x00718a3a    83c414
                         test               edi, edi                                      // 0x00718a3d    85ff
                         {disp8} jne        _jmp_addr_0x00718a03                          // 0x00718a3f    75c2
_jmp_addr_0x00718a41:    push               0x0                                           // 0x00718a41    6a00
                         push               0x00beca20                                    // 0x00718a43    6820cabe00
                         push               0x009c7f50                                    // 0x00718a48    68507f9c00
                         push               0x0                                           // 0x00718a4d    6a00
                         push               0x0                                           // 0x00718a4f    6a00
                         push               0x27                                          // 0x00718a51    6a27
                         mov.s              ecx, esi                                      // 0x00718a53    8bce
                         call               @FindTypeOnMap__7MapCellCF11OBJECT_TYPEP6Object@16                          // 0x00718a55    e8868beeff
                         push               eax                                           // 0x00718a5a    50
                         call               ___RTDynamicCast                              // 0x00718a5b    e8b9cf0a00
                         mov.s              edi, eax                                      // 0x00718a60    8bf8
                         add                esp, 0x14                                     // 0x00718a62    83c414
                         test               edi, edi                                      // 0x00718a65    85ff
                         {disp8} je         _jmp_addr_0x00718aa0                          // 0x00718a67    7437
_jmp_addr_0x00718a69:    {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00718a69    8b442414
                         mov                edx, dword ptr [edi]                          // 0x00718a6d    8b17
                         push               ebp                                           // 0x00718a6f    55
                         push               eax                                           // 0x00718a70    50
                         mov.s              ecx, edi                                      // 0x00718a71    8bcf
                         call               dword ptr [edx + 0x82c]                       // 0x00718a73    ff922c080000
                         push               0x0                                           // 0x00718a79    6a00
                         push               0x00beca20                                    // 0x00718a7b    6820cabe00
                         push               0x009c7f50                                    // 0x00718a80    68507f9c00
                         push               0x0                                           // 0x00718a85    6a00
                         push               edi                                           // 0x00718a87    57
                         push               0x27                                          // 0x00718a88    6a27
                         mov.s              ecx, esi                                      // 0x00718a8a    8bce
                         call               @FindTypeOnMap__7MapCellCF11OBJECT_TYPEP6Object@16                          // 0x00718a8c    e84f8beeff
                         push               eax                                           // 0x00718a91    50
                         call               ___RTDynamicCast                              // 0x00718a92    e882cf0a00
                         mov.s              edi, eax                                      // 0x00718a97    8bf8
                         add                esp, 0x14                                     // 0x00718a99    83c414
                         test               edi, edi                                      // 0x00718a9c    85ff
                         {disp8} jne        _jmp_addr_0x00718a69                          // 0x00718a9e    75c9
_jmp_addr_0x00718aa0:    push               0x0                                           // 0x00718aa0    6a00
                         push               0x009d96e0                                    // 0x00718aa2    68e0969d00
                         push               0x009c7f50                                    // 0x00718aa7    68507f9c00
                         push               0x0                                           // 0x00718aac    6a00
                         push               0x0                                           // 0x00718aae    6a00
                         push               0x6                                           // 0x00718ab0    6a06
                         mov.s              ecx, esi                                      // 0x00718ab2    8bce
                         call               @FindTypeOnMap__7MapCellCF11OBJECT_TYPEP6Object@16                          // 0x00718ab4    e8278beeff
                         push               eax                                           // 0x00718ab9    50
                         call               ___RTDynamicCast                              // 0x00718aba    e85acf0a00
                         mov.s              edi, eax                                      // 0x00718abf    8bf8
                         add                esp, 0x14                                     // 0x00718ac1    83c414
                         test               edi, edi                                      // 0x00718ac4    85ff
                         {disp8} je         _jmp_addr_0x00718b24                          // 0x00718ac6    745c
                         {disp8} mov        ebx, dword ptr [esp + 0x28]                   // 0x00718ac8    8b5c2428
_jmp_addr_0x00718acc:    mov                edx, dword ptr [edi]                          // 0x00718acc    8b17
                         mov.s              ecx, edi                                      // 0x00718ace    8bcf
                         call               dword ptr [edx + 0x86c]                       // 0x00718ad0    ff926c080000
                         test               eax, eax                                      // 0x00718ad6    85c0
                         {disp8} jne        _jmp_addr_0x00718afd                          // 0x00718ad8    7523
                         push               esi                                           // 0x00718ada    56
                         {disp8} lea        ecx, dword ptr [edi + 0x14]                   // 0x00718adb    8d4f14
                         call               _jmp_addr_0x00604f40                          // 0x00718ade    e85dc4eeff
                         test               eax, eax                                      // 0x00718ae3    85c0
                         {disp8} je         _jmp_addr_0x00718afd                          // 0x00718ae5    7416
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x00718ae7    8b4c2414
                         mov                eax, dword ptr [edi]                          // 0x00718aeb    8b07
                         push               ebp                                           // 0x00718aed    55
                         push               ecx                                           // 0x00718aee    51
                         mov.s              ecx, edi                                      // 0x00718aef    8bcf
                         call               dword ptr [eax + 0x82c]                       // 0x00718af1    ff902c080000
                         test               eax, eax                                      // 0x00718af7    85c0
                         {disp8} je         _jmp_addr_0x00718afd                          // 0x00718af9    7402
                         inc                dword ptr [ebx]                               // 0x00718afb    ff03
_jmp_addr_0x00718afd:    push               0x0                                           // 0x00718afd    6a00
                         push               0x009d96e0                                    // 0x00718aff    68e0969d00
                         push               0x009c7f50                                    // 0x00718b04    68507f9c00
                         push               0x0                                           // 0x00718b09    6a00
                         push               edi                                           // 0x00718b0b    57
                         push               0x6                                           // 0x00718b0c    6a06
                         mov.s              ecx, esi                                      // 0x00718b0e    8bce
                         call               @FindTypeOnMap__7MapCellCF11OBJECT_TYPEP6Object@16                          // 0x00718b10    e8cb8aeeff
                         push               eax                                           // 0x00718b15    50
                         call               ___RTDynamicCast                              // 0x00718b16    e8fece0a00
                         mov.s              edi, eax                                      // 0x00718b1b    8bf8
                         add                esp, 0x14                                     // 0x00718b1d    83c414
                         test               edi, edi                                      // 0x00718b20    85ff
                         {disp8} jne        _jmp_addr_0x00718acc                          // 0x00718b22    75a8
_jmp_addr_0x00718b24:    push               0x0                                           // 0x00718b24    6a00
                         push               0x009cd2c0                                    // 0x00718b26    68c0d29c00
                         push               0x009c7f50                                    // 0x00718b2b    68507f9c00
                         push               0x0                                           // 0x00718b30    6a00
                         push               0x0                                           // 0x00718b32    6a00
                         push               0x20                                          // 0x00718b34    6a20
                         mov.s              ecx, esi                                      // 0x00718b36    8bce
                         call               @FindTypeOnMap__7MapCellCF11OBJECT_TYPEP6Object@16                          // 0x00718b38    e8a38aeeff
                         push               eax                                           // 0x00718b3d    50
                         call               ___RTDynamicCast                              // 0x00718b3e    e8d6ce0a00
                         mov.s              edi, eax                                      // 0x00718b43    8bf8
                         add                esp, 0x14                                     // 0x00718b45    83c414
                         test               edi, edi                                      // 0x00718b48    85ff
                         {disp8} je         _jmp_addr_0x00718b8d                          // 0x00718b4a    7441
                         {disp8} mov        ebx, dword ptr [esp + 0x2c]                   // 0x00718b4c    8b5c242c
_jmp_addr_0x00718b50:    {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00718b50    8b442414
                         mov                edx, dword ptr [edi]                          // 0x00718b54    8b17
                         push               ebp                                           // 0x00718b56    55
                         push               eax                                           // 0x00718b57    50
                         mov.s              ecx, edi                                      // 0x00718b58    8bcf
                         call               dword ptr [edx + 0x82c]                       // 0x00718b5a    ff922c080000
                         test               eax, eax                                      // 0x00718b60    85c0
                         {disp8} je         _jmp_addr_0x00718b66                          // 0x00718b62    7402
                         inc                dword ptr [ebx]                               // 0x00718b64    ff03
_jmp_addr_0x00718b66:    push               0x0                                           // 0x00718b66    6a00
                         push               0x009cd2c0                                    // 0x00718b68    68c0d29c00
                         push               0x009c7f50                                    // 0x00718b6d    68507f9c00
                         push               0x0                                           // 0x00718b72    6a00
                         push               edi                                           // 0x00718b74    57
                         push               0x20                                          // 0x00718b75    6a20
                         mov.s              ecx, esi                                      // 0x00718b77    8bce
                         call               @FindTypeOnMap__7MapCellCF11OBJECT_TYPEP6Object@16                          // 0x00718b79    e8628aeeff
                         push               eax                                           // 0x00718b7e    50
                         call               ___RTDynamicCast                              // 0x00718b7f    e895ce0a00
                         mov.s              edi, eax                                      // 0x00718b84    8bf8
                         add                esp, 0x14                                     // 0x00718b86    83c414
                         test               edi, edi                                      // 0x00718b89    85ff
                         {disp8} jne        _jmp_addr_0x00718b50                          // 0x00718b8b    75c3
_jmp_addr_0x00718b8d:    pop                edi                                           // 0x00718b8d    5f
                         pop                esi                                           // 0x00718b8e    5e
                         pop                ebp                                           // 0x00718b8f    5d
                         pop                ebx                                           // 0x00718b90    5b
                         ret                                                              // 0x00718b91    c3
                         nop                                                              // 0x00718b92    90
                         nop                                                              // 0x00718b93    90
                         nop                                                              // 0x00718b94    90
                         nop                                                              // 0x00718b95    90
                         nop                                                              // 0x00718b96    90
                         nop                                                              // 0x00718b97    90
                         nop                                                              // 0x00718b98    90
                         nop                                                              // 0x00718b99    90
                         nop                                                              // 0x00718b9a    90
                         nop                                                              // 0x00718b9b    90
                         nop                                                              // 0x00718b9c    90
                         nop                                                              // 0x00718b9d    90
                         nop                                                              // 0x00718b9e    90
                         nop                                                              // 0x00718b9f    90
                         cmp                dword ptr [esp + 0x04], 0x41                  // 0x00718ba0    837c240441
                         {disp8} je         _jmp_addr_0x00718baa                          // 0x00718ba5    7403
                         xor.s              eax, eax                                      // 0x00718ba7    33c0
                         ret                                                              // 0x00718ba9    c3
_jmp_addr_0x00718baa:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x00718baa    8b442408
                         {disp32} mov       ecx, dword ptr [eax + 0x00006030]             // 0x00718bae    8b8830600000
                         {disp32} mov       dword ptr [data_bytes + 0x389564], ecx        // 0x00718bb4    890d64f5d400
                         {disp32} fld       dword ptr [data_bytes + 0x389564]             // 0x00718bba    d90564f5d400
                         {disp32} mov       edx, dword ptr [eax + 0x00006034]             // 0x00718bc0    8b9034600000
                         {disp32} mov       dword ptr [data_bytes + 0x389560], edx        // 0x00718bc6    891560f5d400
                         {disp32} fcomp     dword ptr [data_bytes + 0x389560]             // 0x00718bcc    d81d60f5d400
                         fnstsw             ax                                            // 0x00718bd2    dfe0
                         test               ah, 0x01                                      // 0x00718bd4    f6c401
                         {disp8} je         _jmp_addr_0x00718bf1                          // 0x00718bd7    7418
                         {disp32} fld       dword ptr [data_bytes + 0x389564]             // 0x00718bd9    d90564f5d400
                         mov                eax, 0x00000002                               // 0x00718bdf    b802000000
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x00718be4    d80db4a38a00
                         {disp32} fstp      dword ptr [data_bytes + 0x38955c]             // 0x00718bea    d91d5cf5d400
                         ret                                                              // 0x00718bf0    c3
_jmp_addr_0x00718bf1:    {disp32} fld       dword ptr [data_bytes + 0x389560]             // 0x00718bf1    d90560f5d400
                         mov                eax, 0x00000002                               // 0x00718bf7    b802000000
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x00718bfc    d80db4a38a00
                         {disp32} fstp      dword ptr [data_bytes + 0x38955c]             // 0x00718c02    d91d5cf5d400
                         ret                                                              // 0x00718c08    c3
                         nop                                                              // 0x00718c09    90
                         nop                                                              // 0x00718c0a    90
                         nop                                                              // 0x00718c0b    90
                         nop                                                              // 0x00718c0c    90
                         nop                                                              // 0x00718c0d    90
                         nop                                                              // 0x00718c0e    90
                         nop                                                              // 0x00718c0f    90
_jmp_addr_0x00718c10:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00718c10    8b442404
                         push               0x0                                           // 0x00718c14    6a00
                         push               0x00718ba0                                    // 0x00718c16    68a08b7100
                         push               0x00c20f00                                    // 0x00718c1b    68000fc200
                         push               eax                                           // 0x00718c20    50
                         mov                ecx, 0x00e85904                               // 0x00718c21    b90459e800
                         call               @Load__12LHScriptX_c_FPcP19LHScriptCommandX_c_PFlP16LHScriptPramX_c__9LH_RETURNPl@24                          // 0x00718c26    e895e60c00
                         neg                eax                                           // 0x00718c2b    f7d8
                         sbb.s              eax, eax                                      // 0x00718c2d    1bc0
                         inc                eax                                           // 0x00718c2f    40
                         ret                                                              // 0x00718c30    c3
                         nop                                                              // 0x00718c31    90
                         nop                                                              // 0x00718c32    90
                         nop                                                              // 0x00718c33    90
                         nop                                                              // 0x00718c34    90
                         nop                                                              // 0x00718c35    90
                         nop                                                              // 0x00718c36    90
                         nop                                                              // 0x00718c37    90
                         nop                                                              // 0x00718c38    90
                         nop                                                              // 0x00718c39    90
                         nop                                                              // 0x00718c3a    90
                         nop                                                              // 0x00718c3b    90
                         nop                                                              // 0x00718c3c    90
                         nop                                                              // 0x00718c3d    90
                         nop                                                              // 0x00718c3e    90
                         nop                                                              // 0x00718c3f    90
                         sub                esp, 0x000001b8                               // 0x00718c40    81ecb8010000
                         push               ebx                                           // 0x00718c46    53
                         {disp8} lea        ecx, dword ptr [esp + 0x4c]                   // 0x00718c47    8d4c244c
                         call               ??0LHOSFile@@QAE@XZ                           // 0x00718c4b    e8003a0a00
                         {disp32} mov       eax, dword ptr [esp + 0x000001c0]             // 0x00718c50    8b8424c0010000
                         xor.s              ebx, ebx                                      // 0x00718c57    33db
                         push               ebx                                           // 0x00718c59    53
                         push               eax                                           // 0x00718c5a    50
                         {disp8} lea        ecx, dword ptr [esp + 0x54]                   // 0x00718c5b    8d4c2454
                         {disp8} mov        dword ptr [esp + 0x54], 0x008c4d00            // 0x00718c5f    c7442454004d8c00
                         {disp8} mov        dword ptr [esp + 0x1c], ebx                   // 0x00718c67    895c241c
                         {disp8} mov        dword ptr [esp + 0x18], ebx                   // 0x00718c6b    895c2418
                         {disp8} mov        dword ptr [esp + 0x14], ebx                   // 0x00718c6f    895c2414
                         {disp8} mov        dword ptr [esp + 0x10], ebx                   // 0x00718c73    895c2410
                         call               @Open__16LHReleasedOSFileFPc12LH_FILE_MODE@16 // 0x00718c77    e8643b0a00
                         test               eax, eax                                      // 0x00718c7c    85c0
                         {disp8} je         _jmp_addr_0x00718c93                          // 0x00718c7e    7413
                         {disp8} lea        ecx, dword ptr [esp + 0x4c]                   // 0x00718c80    8d4c244c
                         call               ??_DLHOSFile@@QAEXXZ                          // 0x00718c84    e8f7390a00
                         xor.s              eax, eax                                      // 0x00718c89    33c0
                         pop                ebx                                           // 0x00718c8b    5b
                         add                esp, 0x000001b8                               // 0x00718c8c    81c4b8010000
                         ret                                                              // 0x00718c92    c3
_jmp_addr_0x00718c93:    {disp32} inc       word ptr [data_bytes + 0x3d3710]              // 0x00718c93    66ff051097d900
                         push               ebp                                           // 0x00718c9a    55
                         {disp32} mov       ebp, dword ptr [esp + 0x000001c8]             // 0x00718c9b    8bac24c8010000
                         xor.s              eax, eax                                      // 0x00718ca2    33c0
                         {disp8} mov        ax, word ptr [ebp + 0x02]                     // 0x00718ca4    668b4502
                         push               esi                                           // 0x00718ca8    56
                         push               edi                                           // 0x00718ca9    57
                         {disp32} mov       edi, dword ptr [esp + 0x000001d4]             // 0x00718caa    8bbc24d4010000
                         xor.s              ecx, ecx                                      // 0x00718cb1    33c9
                         {disp8} mov        cx, word ptr [edi + 0x02]                     // 0x00718cb3    668b4f02
                         cmp.s              ax, cx                                        // 0x00718cb7    663bc1
                         mov.s              esi, eax                                      // 0x00718cba    8bf0
                         .byte              0x72, 0x2// {disp8} jb _jmp_addr_0x00718cc0   // 0x00718cbc    7202
                         mov.s              esi, ecx                                      // 0x00718cbe    8bf1
_jmp_addr_0x00718cc0:    and                esi, 0x0000ffff                               // 0x00718cc0    81e6ffff0000
                         cmp.s              ax, cx                                        // 0x00718cc6    663bc1
                         {disp8} ja         _jmp_addr_0x00718ccd                          // 0x00718cc9    7702
                         mov.s              eax, ecx                                      // 0x00718ccb    8bc1
_jmp_addr_0x00718ccd:    and                eax, 0x0000ffff                               // 0x00718ccd    25ffff0000
                         {disp8} mov        dword ptr [esp + 0x34], eax                   // 0x00718cd2    89442434
                         xor.s              eax, eax                                      // 0x00718cd6    33c0
                         {disp8} mov        ax, word ptr [ebp + 0x06]                     // 0x00718cd8    668b4506
                         xor.s              ecx, ecx                                      // 0x00718cdc    33c9
                         {disp8} mov        cx, word ptr [edi + 0x06]                     // 0x00718cde    668b4f06
                         cmp.s              ax, cx                                        // 0x00718ce2    663bc1
                         mov.s              edx, eax                                      // 0x00718ce5    8bd0
                         .byte              0x72, 0x2// {disp8} jb _jmp_addr_0x00718ceb   // 0x00718ce7    7202
                         mov.s              edx, ecx                                      // 0x00718ce9    8bd1
_jmp_addr_0x00718ceb:    and                edx, 0x0000ffff                               // 0x00718ceb    81e2ffff0000
                         cmp.s              ax, cx                                        // 0x00718cf1    663bc1
                         {disp8} mov        dword ptr [esp + 0x30], edx                   // 0x00718cf4    89542430
                         {disp8} ja         _jmp_addr_0x00718cfc                          // 0x00718cf8    7702
                         mov.s              eax, ecx                                      // 0x00718cfa    8bc1
_jmp_addr_0x00718cfc:    {disp8} fild       dword ptr [ebp + 0x00]                        // 0x00718cfc    db4500
                         and                eax, 0x0000ffff                               // 0x00718cff    25ffff0000
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x00718d04    89442428
                         {disp32} fmul      dword ptr [rdata_bytes + 0xae2a8]             // 0x00718d08    d80da8729500
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]              // 0x00718d0e    d80d1cc48a00
                         fild               dword ptr [edi]                               // 0x00718d14    db07
                         {disp32} fmul      dword ptr [rdata_bytes + 0xae2a8]             // 0x00718d16    d80da8729500
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]              // 0x00718d1c    d80d1cc48a00
                         fld                st(1)                                         // 0x00718d22    d9c1
                         fcomp              st(1)                                         // 0x00718d24    d8d9
                         fnstsw             ax                                            // 0x00718d26    dfe0
                         test               ah, 0x01                                      // 0x00718d28    f6c401
                         {disp8} je         _jmp_addr_0x00718d35                          // 0x00718d2b    7408
                         fld                st(1)                                         // 0x00718d2d    d9c1
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x00718d2f    d95c242c
                         {disp8} jmp        _jmp_addr_0x00718d39                          // 0x00718d33    eb04
_jmp_addr_0x00718d35:    {disp8} fst        dword ptr [esp + 0x2c]                        // 0x00718d35    d954242c
_jmp_addr_0x00718d39:    {disp8} mov        ecx, dword ptr [ebp + 0x04]                   // 0x00718d39    8b4d04
                         {disp8} mov        edx, dword ptr [edi + 0x04]                   // 0x00718d3c    8b5704
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x00718d3f    894c2410
                         {disp8} fild       dword ptr [esp + 0x10]                        // 0x00718d43    db442410
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x00718d47    89542410
                         {disp32} fmul      dword ptr [rdata_bytes + 0xae2a8]             // 0x00718d4b    d80da8729500
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]              // 0x00718d51    d80d1cc48a00
                         {disp8} fild       dword ptr [esp + 0x10]                        // 0x00718d57    db442410
                         {disp32} fmul      dword ptr [rdata_bytes + 0xae2a8]             // 0x00718d5b    d80da8729500
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]              // 0x00718d61    d80d1cc48a00
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00718d67    d95c2410
                         {disp8} fcom       dword ptr [esp + 0x10]                        // 0x00718d6b    d8542410
                         fnstsw             ax                                            // 0x00718d6f    dfe0
                         test               ah, 0x01                                      // 0x00718d71    f6c401
                         {disp8} je         _jmp_addr_0x00718d7c                          // 0x00718d74    7406
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00718d76    d95c2410
                         {disp8} jmp        _jmp_addr_0x00718d86                          // 0x00718d7a    eb0a
_jmp_addr_0x00718d7c:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00718d7c    8b442410
                         fstp               st(0)                                         // 0x00718d80    ddd8
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00718d82    89442410
_jmp_addr_0x00718d86:    {disp8} fstp       dword ptr [esp + 0x24]                        // 0x00718d86    d95c2424
                         {disp8} mov        dword ptr [esp + 0x3c], edx                   // 0x00718d8a    8954243c
                         {disp8} fild       dword ptr [esp + 0x3c]                        // 0x00718d8e    db44243c
                         {disp8} mov        dword ptr [esp + 0x38], ecx                   // 0x00718d92    894c2438
                         sub                esp, 0x08                                     // 0x00718d96    83ec08
                         sub                esp, 0x08                                     // 0x00718d99    83ec08
                         {disp32} fmul      dword ptr [rdata_bytes + 0xae2a8]             // 0x00718d9c    d80da8729500
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]              // 0x00718da2    d80d1cc48a00
                         {disp8} fild       dword ptr [esp + 0x48]                        // 0x00718da8    db442448
                         {disp32} fmul      dword ptr [rdata_bytes + 0xae2a8]             // 0x00718dac    d80da8729500
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]              // 0x00718db2    d80d1cc48a00
                         fsubp              st(1), st                                     // 0x00718db8    dee9
                         fabs                                                             // 0x00718dba    d9e1
                         {disp8} fstp       qword ptr [esp + 0x08]                        // 0x00718dbc    dd5c2408
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x00718dc0    d9442434
                         fsub               st, st(1)                                     // 0x00718dc4    d8e1
                         fabs                                                             // 0x00718dc6    d9e1
                         fstp               qword ptr [esp]                               // 0x00718dc8    dd1c24
                         push               0x41                                          // 0x00718dcb    6a41
                         fstp               st(0)                                         // 0x00718dcd    ddd8
                         call               ?GetCommandAsText@GSetup@@SAPADW4SCRIPT_FEATURE_COMMANDS@@@Z                          // 0x00718dcf    e85cc3ffff
                         add                esp, 0x04                                     // 0x00718dd4    83c404
                         push               eax                                           // 0x00718dd7    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00000178]             // 0x00718dd8    8d8c2478010000
                         push               ecx                                           // 0x00718ddf    51
                         call               _sprintf                                      // 0x00718de0    e8edc90a00
                         add                esp, 0x18                                     // 0x00718de5    83c418
                         or                 ecx, 0xffffffff                               // 0x00718de8    83c9ff
                         xor.s              eax, eax                                      // 0x00718deb    33c0
                         {disp32} lea       edi, dword ptr [esp + 0x00000164]             // 0x00718ded    8dbc2464010000
                         repne scasb                                                      // 0x00718df4    f2ae
                         not                ecx                                           // 0x00718df6    f7d1
                         push               ebx                                           // 0x00718df8    53
                         dec                ecx                                           // 0x00718df9    49
                         push               ecx                                           // 0x00718dfa    51
                         {disp32} lea       edx, dword ptr [esp + 0x0000016c]             // 0x00718dfb    8d94246c010000
                         push               edx                                           // 0x00718e02    52
                         {disp8} lea        ecx, dword ptr [esp + 0x64]                   // 0x00718e03    8d4c2464
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x00718e07    e8143b0a00
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x00718e0c    d944242c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]              // 0x00718e10    d80d08c48a00
                         {disp32} fdiv      dword ptr [rdata_bytes + 0xae2a8]             // 0x00718e16    d835a8729500
                         call               _jmp_addr_0x007a1400                          // 0x00718e1c    e8df850800
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00718e21    d9442410
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]              // 0x00718e25    d80d08c48a00
                         {disp8} mov        dword ptr [esp + 0x40], eax                   // 0x00718e2b    89442440
                         {disp32} fdiv      dword ptr [rdata_bytes + 0xae2a8]             // 0x00718e2f    d835a8729500
                         call               _jmp_addr_0x007a1400                          // 0x00718e35    e8c6850800
                         {disp8} mov        dword ptr [esp + 0x44], eax                   // 0x00718e3a    89442444
                         {disp8} mov        eax, dword ptr [esp + 0x34]                   // 0x00718e3e    8b442434
                         mov.s              ebx, esi                                      // 0x00718e42    8bde
                         and                esi, 0x0000ffff                               // 0x00718e44    81e6ffff0000
                         cmp.s              esi, eax                                      // 0x00718e4a    3bf0
                         {disp8} mov        dword ptr [esp + 0x48], 0x00000000            // 0x00718e4c    c744244800000000
                         {disp32} ja        _jmp_addr_0x00718f20                          // 0x00718e54    0f87c6000000
                         {disp8} mov        eax, dword ptr [esp + 0x30]                   // 0x00718e5a    8b442430
                         and                eax, 0x0000ffff                               // 0x00718e5e    25ffff0000
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x00718e63    89442424
_jmp_addr_0x00718e67:    cmp                eax, dword ptr [esp + 0x28]                   // 0x00718e67    3b442428
                         {disp8} mov        edi, dword ptr [esp + 0x30]                   // 0x00718e6b    8b7c2430
                         {disp32} ja        _jmp_addr_0x00718f0b                          // 0x00718e6f    0f8796000000
_jmp_addr_0x00718e75:    push               edi                                           // 0x00718e75    57
                         push               ebx                                           // 0x00718e76    53
                         {disp8} lea        ecx, dword ptr [esp + 0x54]                   // 0x00718e77    8d4c2454
                         call               _jmp_addr_0x00602fc0                          // 0x00718e7b    e840a1eeff
                         push               0x0                                           // 0x00718e80    6a00
                         push               -0x1                                          // 0x00718e82    6aff
                         {disp8} lea        ecx, dword ptr [esp + 0x54]                   // 0x00718e84    8d4c2454
                         call               @FindType__9MapCoordsCF11OBJECT_TYPEP6Object@16                          // 0x00718e88    e833b7eeff
                         mov.s              esi, eax                                      // 0x00718e8d    8bf0
                         test               esi, esi                                      // 0x00718e8f    85f6
                         {disp8} je         _jmp_addr_0x00718ef2                          // 0x00718e91    745f
_jmp_addr_0x00718e93:    {disp32} mov       ecx, dword ptr [esp + 0x000001d4]             // 0x00718e93    8b8c24d4010000
                         mov                eax, dword ptr [esi]                          // 0x00718e9a    8b06
                         push               ecx                                           // 0x00718e9c    51
                         push               ebp                                           // 0x00718e9d    55
                         mov.s              ecx, esi                                      // 0x00718e9e    8bce
                         call               dword ptr [eax + 0x6b0]                       // 0x00718ea0    ff90b0060000
                         test               eax, eax                                      // 0x00718ea6    85c0
                         {disp8} je         _jmp_addr_0x00718ee0                          // 0x00718ea8    7436
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00718eaa    8b442414
                         test               eax, eax                                      // 0x00718eae    85c0
                         {disp8} je         _jmp_addr_0x00718ebd                          // 0x00718eb0    740b
_jmp_addr_0x00718eb2:    cmp                dword ptr [eax + 0x04], esi                   // 0x00718eb2    397004
                         {disp8} je         _jmp_addr_0x00718ee0                          // 0x00718eb5    7429
                         mov                eax, dword ptr [eax]                          // 0x00718eb7    8b00
                         test               eax, eax                                      // 0x00718eb9    85c0
                         {disp8} jne        _jmp_addr_0x00718eb2                          // 0x00718ebb    75f5
_jmp_addr_0x00718ebd:    test               esi, esi                                      // 0x00718ebd    85f6
                         {disp8} je         _jmp_addr_0x00718ee0                          // 0x00718ebf    741f
                         push               0x8                                           // 0x00718ec1    6a08
                         call               ??2@YAPAXI@Z                                  // 0x00718ec3    e826d60a00
                         add                esp, 0x04                                     // 0x00718ec8    83c404
                         test               eax, eax                                      // 0x00718ecb    85c0
                         {disp8} je         _jmp_addr_0x00718ee0                          // 0x00718ecd    7411
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x00718ecf    8b4c2414
                         {disp8} mov        dword ptr [eax + 0x04], esi                   // 0x00718ed3    897004
                         mov                dword ptr [eax], ecx                          // 0x00718ed6    8908
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x00718ed8    89442414
                         {disp8} inc        dword ptr [esp + 0x18]                        // 0x00718edc    ff442418
_jmp_addr_0x00718ee0:    push               esi                                           // 0x00718ee0    56
                         push               -0x1                                          // 0x00718ee1    6aff
                         {disp8} lea        ecx, dword ptr [esp + 0x54]                   // 0x00718ee3    8d4c2454
                         call               @FindType__9MapCoordsCF11OBJECT_TYPEP6Object@16                          // 0x00718ee7    e8d4b6eeff
                         mov.s              esi, eax                                      // 0x00718eec    8bf0
                         test               esi, esi                                      // 0x00718eee    85f6
                         {disp8} jne        _jmp_addr_0x00718e93                          // 0x00718ef0    75a1
_jmp_addr_0x00718ef2:    {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x00718ef2    8b442428
                         inc                edi                                           // 0x00718ef6    47
                         mov.s              edx, edi                                      // 0x00718ef7    8bd7
                         and                edx, 0x0000ffff                               // 0x00718ef9    81e2ffff0000
                         cmp.s              edx, eax                                      // 0x00718eff    3bd0
                         {disp32} jbe       _jmp_addr_0x00718e75                          // 0x00718f01    0f866effffff
                         {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x00718f07    8b442424
_jmp_addr_0x00718f0b:    {disp8} mov        edx, dword ptr [esp + 0x34]                   // 0x00718f0b    8b542434
                         inc                ebx                                           // 0x00718f0f    43
                         mov.s              ecx, ebx                                      // 0x00718f10    8bcb
                         and                ecx, 0x0000ffff                               // 0x00718f12    81e1ffff0000
                         cmp.s              ecx, edx                                      // 0x00718f18    3bca
                         {disp32} jbe       _jmp_addr_0x00718e67                          // 0x00718f1a    0f8647ffffff
_jmp_addr_0x00718f20:    {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x00718f20    8b4c2414
                         test               ecx, ecx                                      // 0x00718f24    85c9
                         {disp32} je        _jmp_addr_0x00718fbf                          // 0x00718f26    0f8493000000
                         {disp8} mov        esi, dword ptr [ecx + 0x04]                   // 0x00718f2c    8b7104
                         test               esi, esi                                      // 0x00718f2f    85f6
                         {disp32} je        _jmp_addr_0x00718fbf                          // 0x00718f31    0f8488000000
_jmp_addr_0x00718f37:    mov                edx, dword ptr [esi]                          // 0x00718f37    8b16
                         mov.s              ecx, esi                                      // 0x00718f39    8bce
                         call               dword ptr [edx + 0x48]                        // 0x00718f3b    ff5248
                         test               eax, eax                                      // 0x00718f3e    85c0
                         {disp8} je         _jmp_addr_0x00718f93                          // 0x00718f40    7451
                         mov                eax, dword ptr [esi]                          // 0x00718f42    8b06
                         mov.s              ecx, esi                                      // 0x00718f44    8bce
                         call               dword ptr [eax + 0x48]                        // 0x00718f46    ff5048
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x00718f49    8b54241c
                         test               edx, edx                                      // 0x00718f4d    85d2
                         mov.s              ecx, edx                                      // 0x00718f4f    8bca
                         {disp8} je         _jmp_addr_0x00718f5e                          // 0x00718f51    740b
_jmp_addr_0x00718f53:    cmp                dword ptr [ecx + 0x04], eax                   // 0x00718f53    394104
                         {disp8} je         _jmp_addr_0x00718f97                          // 0x00718f56    743f
                         mov                ecx, dword ptr [ecx]                          // 0x00718f58    8b09
                         test               ecx, ecx                                      // 0x00718f5a    85c9
                         {disp8} jne        _jmp_addr_0x00718f53                          // 0x00718f5c    75f5
_jmp_addr_0x00718f5e:    mov                edx, dword ptr [esi]                          // 0x00718f5e    8b16
                         mov.s              ecx, esi                                      // 0x00718f60    8bce
                         call               dword ptr [edx + 0x48]                        // 0x00718f62    ff5248
                         mov.s              edi, eax                                      // 0x00718f65    8bf8
                         test               edi, edi                                      // 0x00718f67    85ff
                         {disp8} je         _jmp_addr_0x00718f93                          // 0x00718f69    7428
                         push               0x8                                           // 0x00718f6b    6a08
                         call               ??2@YAPAXI@Z                                  // 0x00718f6d    e87cd50a00
                         add                esp, 0x04                                     // 0x00718f72    83c404
                         test               eax, eax                                      // 0x00718f75    85c0
                         {disp8} je         _jmp_addr_0x00718f93                          // 0x00718f77    741a
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x00718f79    8b4c241c
                         {disp8} mov        dword ptr [eax + 0x04], edi                   // 0x00718f7d    897804
                         mov                dword ptr [eax], ecx                          // 0x00718f80    8908
                         mov.s              edx, eax                                      // 0x00718f82    8bd0
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x00718f84    8b442420
                         inc                eax                                           // 0x00718f88    40
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x00718f89    8954241c
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x00718f8d    89442420
                         {disp8} jmp        _jmp_addr_0x00718f97                          // 0x00718f91    eb04
_jmp_addr_0x00718f93:    {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x00718f93    8b54241c
_jmp_addr_0x00718f97:    {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x00718f97    8b4c2414
                         test               ecx, ecx                                      // 0x00718f9b    85c9
                         mov.s              eax, ecx                                      // 0x00718f9d    8bc1
                         {disp8} je         _jmp_addr_0x00718fc3                          // 0x00718f9f    7422
_jmp_addr_0x00718fa1:    cmp                dword ptr [eax + 0x04], esi                   // 0x00718fa1    397004
                         mov                eax, dword ptr [eax]                          // 0x00718fa4    8b00
                         {disp8} je         _jmp_addr_0x00718fae                          // 0x00718fa6    7406
                         test               eax, eax                                      // 0x00718fa8    85c0
                         {disp8} je         _jmp_addr_0x00718fc3                          // 0x00718faa    7417
                         {disp8} jmp        _jmp_addr_0x00718fa1                          // 0x00718fac    ebf3
_jmp_addr_0x00718fae:    test               eax, eax                                      // 0x00718fae    85c0
                         {disp8} je         _jmp_addr_0x00718fc3                          // 0x00718fb0    7411
                         {disp8} mov        esi, dword ptr [eax + 0x04]                   // 0x00718fb2    8b7004
                         test               esi, esi                                      // 0x00718fb5    85f6
                         {disp32} jne       _jmp_addr_0x00718f37                          // 0x00718fb7    0f857affffff
                         {disp8} jmp        _jmp_addr_0x00718fc3                          // 0x00718fbd    eb04
_jmp_addr_0x00718fbf:    {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x00718fbf    8b54241c
_jmp_addr_0x00718fc3:    test               edx, edx                                      // 0x00718fc3    85d2
                         {disp8} je         _jmp_addr_0x00719024                          // 0x00718fc5    745d
                         {disp8} mov        esi, dword ptr [edx + 0x04]                   // 0x00718fc7    8b7204
                         test               esi, esi                                      // 0x00718fca    85f6
                         {disp8} je         _jmp_addr_0x00719005                          // 0x00718fcc    7437
_jmp_addr_0x00718fce:    {disp8} lea        eax, dword ptr [esp + 0x40]                   // 0x00718fce    8d442440
                         push               eax                                           // 0x00718fd2    50
                         {disp8} lea        ecx, dword ptr [esp + 0x5c]                   // 0x00718fd3    8d4c245c
                         push               ecx                                           // 0x00718fd7    51
                         mov.s              ecx, esi                                      // 0x00718fd8    8bce
                         call               _jmp_addr_0x0073bca0                          // 0x00718fda    e8c12c0200
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x00718fdf    8b54241c
                         test               edx, edx                                      // 0x00718fe3    85d2
                         mov.s              eax, edx                                      // 0x00718fe5    8bc2
                         {disp8} je         _jmp_addr_0x00719001                          // 0x00718fe7    7418
_jmp_addr_0x00718fe9:    cmp                dword ptr [eax + 0x04], esi                   // 0x00718fe9    397004
                         mov                eax, dword ptr [eax]                          // 0x00718fec    8b00
                         {disp8} je         _jmp_addr_0x00718ff6                          // 0x00718fee    7406
                         test               eax, eax                                      // 0x00718ff0    85c0
                         {disp8} je         _jmp_addr_0x00719001                          // 0x00718ff2    740d
                         {disp8} jmp        _jmp_addr_0x00718fe9                          // 0x00718ff4    ebf3
_jmp_addr_0x00718ff6:    test               eax, eax                                      // 0x00718ff6    85c0
                         {disp8} je         _jmp_addr_0x00719001                          // 0x00718ff8    7407
                         {disp8} mov        esi, dword ptr [eax + 0x04]                   // 0x00718ffa    8b7004
                         test               esi, esi                                      // 0x00718ffd    85f6
                         {disp8} jne        _jmp_addr_0x00718fce                          // 0x00718fff    75cd
_jmp_addr_0x00719001:    {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x00719001    8b4c2414
_jmp_addr_0x00719005:    test               edx, edx                                      // 0x00719005    85d2
                         {disp8} je         _jmp_addr_0x00719024                          // 0x00719007    741b
_jmp_addr_0x00719009:    {disp8} mov        edx, dword ptr [edx + 0x04]                   // 0x00719009    8b5204
                         push               0x0                                           // 0x0071900c    6a00
                         push               edx                                           // 0x0071900e    52
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x0071900f    8d4c2424
                         call               _jmp_addr_0x00719680                          // 0x00719013    e868060000
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x00719018    8b54241c
                         test               edx, edx                                      // 0x0071901c    85d2
                         {disp8} jne        _jmp_addr_0x00719009                          // 0x0071901e    75e9
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x00719020    8b4c2414
_jmp_addr_0x00719024:    test               ecx, ecx                                      // 0x00719024    85c9
                         {disp8} je         _jmp_addr_0x00719065                          // 0x00719026    743d
                         {disp8} mov        esi, dword ptr [ecx + 0x04]                   // 0x00719028    8b7104
                         test               esi, esi                                      // 0x0071902b    85f6
                         {disp8} je         _jmp_addr_0x00719065                          // 0x0071902d    7436
_jmp_addr_0x0071902f:    mov                eax, dword ptr [esi]                          // 0x0071902f    8b06
                         {disp8} lea        ecx, dword ptr [esp + 0x40]                   // 0x00719031    8d4c2440
                         push               ecx                                           // 0x00719035    51
                         {disp8} lea        edx, dword ptr [esp + 0x5c]                   // 0x00719036    8d54245c
                         push               edx                                           // 0x0071903a    52
                         mov.s              ecx, esi                                      // 0x0071903b    8bce
                         call               dword ptr [eax + 0x82c]                       // 0x0071903d    ff902c080000
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x00719043    8b4c2414
                         test               ecx, ecx                                      // 0x00719047    85c9
                         mov.s              eax, ecx                                      // 0x00719049    8bc1
                         {disp8} je         _jmp_addr_0x00719065                          // 0x0071904b    7418
_jmp_addr_0x0071904d:    cmp                dword ptr [eax + 0x04], esi                   // 0x0071904d    397004
                         mov                eax, dword ptr [eax]                          // 0x00719050    8b00
                         {disp8} je         _jmp_addr_0x0071905a                          // 0x00719052    7406
                         test               eax, eax                                      // 0x00719054    85c0
                         {disp8} je         _jmp_addr_0x00719065                          // 0x00719056    740d
                         {disp8} jmp        _jmp_addr_0x0071904d                          // 0x00719058    ebf3
_jmp_addr_0x0071905a:    test               eax, eax                                      // 0x0071905a    85c0
                         {disp8} je         _jmp_addr_0x00719065                          // 0x0071905c    7407
                         {disp8} mov        esi, dword ptr [eax + 0x04]                   // 0x0071905e    8b7004
                         test               esi, esi                                      // 0x00719061    85f6
                         {disp8} jne        _jmp_addr_0x0071902f                          // 0x00719063    75ca
_jmp_addr_0x00719065:    test               ecx, ecx                                      // 0x00719065    85c9
                         pop                edi                                           // 0x00719067    5f
                         pop                esi                                           // 0x00719068    5e
                         pop                ebp                                           // 0x00719069    5d
                         {disp8} je         _jmp_addr_0x00719083                          // 0x0071906a    7417
_jmp_addr_0x0071906c:    {disp8} mov        eax, dword ptr [ecx + 0x04]                   // 0x0071906c    8b4104
                         push               0x0                                           // 0x0071906f    6a00
                         push               eax                                           // 0x00719071    50
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x00719072    8d4c2410
                         call               _jmp_addr_0x00719630                          // 0x00719076    e8b5050000
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x0071907b    8b4c2408
                         test               ecx, ecx                                      // 0x0071907f    85c9
                         {disp8} jne        _jmp_addr_0x0071906c                          // 0x00719081    75e9
_jmp_addr_0x00719083:    {disp8} lea        ecx, dword ptr [esp + 0x4c]                   // 0x00719083    8d4c244c
                         call               ?Close@LHOSFile@@QAEIXZ                       // 0x00719087    e8d4370a00
                         {disp8} lea        ecx, dword ptr [esp + 0x4c]                   // 0x0071908c    8d4c244c
                         call               ??_DLHOSFile@@QAEXXZ                          // 0x00719090    e8eb350a00
                         mov                eax, 0x00000001                               // 0x00719095    b801000000
                         pop                ebx                                           // 0x0071909a    5b
                         add                esp, 0x000001b8                               // 0x0071909b    81c4b8010000
                         ret                                                              // 0x007190a1    c3
                         nop                                                              // 0x007190a2    90
                         nop                                                              // 0x007190a3    90
                         nop                                                              // 0x007190a4    90
                         nop                                                              // 0x007190a5    90
                         nop                                                              // 0x007190a6    90
                         nop                                                              // 0x007190a7    90
                         nop                                                              // 0x007190a8    90
                         nop                                                              // 0x007190a9    90
                         nop                                                              // 0x007190aa    90
                         nop                                                              // 0x007190ab    90
                         nop                                                              // 0x007190ac    90
                         nop                                                              // 0x007190ad    90
                         nop                                                              // 0x007190ae    90
                         nop                                                              // 0x007190af    90
_jmp_addr_0x007190b0:    {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x007190b0    8b4c240c
                         test               ecx, ecx                                      // 0x007190b4    85c9
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x007190b6    8b442408
                         {disp32} mov       dword ptr [_PTR_00d99724], eax                // 0x007190ba    a32497d900
                         {disp8} je         _jmp_addr_0x007190cd                          // 0x007190bf    740c
                         call               ?GetPlayerNumber@GPlayer@@QBEEXZ              // 0x007190c1    e8ca16f3ff
                         {disp32} mov       dword ptr [data_bytes + 0x25ad54], eax        // 0x007190c6    a3540dc200
                         {disp8} jmp        _jmp_addr_0x007190d7                          // 0x007190cb    eb0a
_jmp_addr_0x007190cd:    {disp32} mov       dword ptr [data_bytes + 0x25ad54], 0x00000007 // 0x007190cd    c705540dc20007000000
_jmp_addr_0x007190d7:    {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x007190d7    8b4c2404
                         push               0x0                                           // 0x007190db    6a00
                         push               0x00715180                                    // 0x007190dd    6880517100
                         push               0x00c20f00                                    // 0x007190e2    68000fc200
                         push               ecx                                           // 0x007190e7    51
                         mov                ecx, 0x00e85904                               // 0x007190e8    b90459e800
                         {disp32} mov       dword ptr [data_bytes + 0x25ad58], 0xffffffff // 0x007190ed    c705580dc200ffffffff
                         {disp32} mov       dword ptr [_PTR_00d99384], 0x00000000         // 0x007190f7    c7058493d90000000000
                         call               @Load__12LHScriptX_c_FPcP19LHScriptCommandX_c_PFlP16LHScriptPramX_c__9LH_RETURNPl@24                          // 0x00719101    e8bae10c00
                         neg                eax                                           // 0x00719106    f7d8
                         sbb.s              eax, eax                                      // 0x00719108    1bc0
                         inc                eax                                           // 0x0071910a    40
                         ret                                                              // 0x0071910b    c3
                         nop                                                              // 0x0071910c    90
                         nop                                                              // 0x0071910d    90
                         nop                                                              // 0x0071910e    90
                         nop                                                              // 0x0071910f    90
                         sub                esp, 0x00000118                               // 0x00719110    81ec18010000
                         push               esi                                           // 0x00719116    56
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x00719117    8d4c2410
                         call               ??0LHOSFile@@QAE@XZ                           // 0x0071911b    e830350a00
                         {disp32} mov       esi, dword ptr [esp + 0x00000124]             // 0x00719120    8bb42424010000
                         test               esi, esi                                      // 0x00719127    85f6
                         {disp8} mov        dword ptr [esp + 0x10], 0x008c4d00            // 0x00719129    c7442410004d8c00
                         {disp32} je        _jmp_addr_0x007191d3                          // 0x00719131    0f849c000000
                         {disp32} mov       eax, dword ptr [esp + 0x00000120]             // 0x00719137    8b842420010000
                         push               0x0                                           // 0x0071913e    6a00
                         push               eax                                           // 0x00719140    50
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x00719141    8d4c2418
                         call               @Open__16LHReleasedOSFileFPc12LH_FILE_MODE@16 // 0x00719145    e896360a00
                         test               eax, eax                                      // 0x0071914a    85c0
                         {disp32} jne       _jmp_addr_0x007191d3                          // 0x0071914c    0f8581000000
                         {disp32} inc       word ptr [data_bytes + 0x3d3710]              // 0x00719152    66ff051097d900
                         push               ebx                                           // 0x00719159    53
                         {disp8} mov        ebx, dword ptr [esi + 0x14]                   // 0x0071915a    8b5e14
                         push               edi                                           // 0x0071915d    57
                         {disp32} mov       edi, dword ptr [esi + 0x000005b4]             // 0x0071915e    8bbeb4050000
                         push               0x0000087e                                    // 0x00719164    687e080000
                         push               0x00c21fe8                                    // 0x00719169    68e81fc200
                         push               0x00002710                                    // 0x0071916e    6810270000
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x00719173    e89853fcff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00719178    8b0d5c19d000
                         add                eax, dword ptr [ecx + 0x00205a40]             // 0x0071917e    0381405a2000
                         add                esp, 0x0c                                     // 0x00719184    83c40c
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x00719187    8d54240c
                         add.s              eax, ebx                                      // 0x0071918b    03c3
                         push               edx                                           // 0x0071918d    52
                         mov.s              ecx, esi                                      // 0x0071918e    8bce
                         {disp32} mov       dword ptr [esi + 0x000005b4], eax             // 0x00719190    8986b4050000
                         call               _jmp_addr_0x0073ae10                          // 0x00719196    e8751c0200
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x0071919b    8d44240c
                         push               eax                                           // 0x0071919f    50
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x007191a0    8d4c241c
                         push               ecx                                           // 0x007191a4    51
                         mov.s              ecx, esi                                      // 0x007191a5    8bce
                         call               _jmp_addr_0x00741f30                          // 0x007191a7    e8848d0200
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x007191ac    8d4c2418
                         {disp32} mov       dword ptr [esi + 0x000005b4], edi             // 0x007191b0    89beb4050000
                         call               ?Close@LHOSFile@@QAEIXZ                       // 0x007191b6    e8a5360a00
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x007191bb    8d4c2418
                         call               ??_DLHOSFile@@QAEXXZ                          // 0x007191bf    e8bc340a00
                         pop                edi                                           // 0x007191c4    5f
                         pop                ebx                                           // 0x007191c5    5b
                         mov                eax, 0x00000001                               // 0x007191c6    b801000000
                         pop                esi                                           // 0x007191cb    5e
                         add                esp, 0x00000118                               // 0x007191cc    81c418010000
                         ret                                                              // 0x007191d2    c3
_jmp_addr_0x007191d3:    {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x007191d3    8d4c2410
                         call               ??_DLHOSFile@@QAEXXZ                          // 0x007191d7    e8a4340a00
                         xor.s              eax, eax                                      // 0x007191dc    33c0
                         pop                esi                                           // 0x007191de    5e
                         add                esp, 0x00000118                               // 0x007191df    81c418010000
                         ret                                                              // 0x007191e5    c3
                         nop                                                              // 0x007191e6    90
                         nop                                                              // 0x007191e7    90
                         nop                                                              // 0x007191e8    90
                         nop                                                              // 0x007191e9    90
                         nop                                                              // 0x007191ea    90
                         nop                                                              // 0x007191eb    90
                         nop                                                              // 0x007191ec    90
                         nop                                                              // 0x007191ed    90
                         nop                                                              // 0x007191ee    90
                         nop                                                              // 0x007191ef    90
_jmp_addr_0x007191f0:    {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x007191f0    8b4c2408
                         mov                dx, word ptr [ecx]                            // 0x007191f4    668b11
                         test               dx, dx                                        // 0x007191f7    6685d2
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x007191fa    8b442404
                         {disp8} je         _jmp_addr_0x0071926c                          // 0x007191fe    746c
_jmp_addr_0x00719200:    cmp                dx, 0x20                                      // 0x00719200    6683fa20
                         {disp8} jne        _jmp_addr_0x0071921a                          // 0x00719204    7514
                         cmp                word ptr [ecx + 0x02], 0x7e                   // 0x00719206    668379027e
                         {disp8} jne        _jmp_addr_0x0071921a                          // 0x0071920b    750d
                         mov                word ptr [eax], -0x0702                       // 0x0071920d    66c700fef8
                         add                eax, 0x02                                     // 0x00719212    83c002
                         add                ecx, 0x4                                      // 0x00719215    83c104
                         {disp8} jmp        _jmp_addr_0x00719264                          // 0x00719218    eb4a
_jmp_addr_0x0071921a:    cmp                dx, 0x7e                                      // 0x0071921a    6683fa7e
                         {disp8} jne        _jmp_addr_0x00719234                          // 0x0071921e    7514
                         cmp                word ptr [ecx + 0x02], 0x20                   // 0x00719220    6683790220
                         {disp8} jne        _jmp_addr_0x00719234                          // 0x00719225    750d
                         mov                word ptr [eax], -0x0702                       // 0x00719227    66c700fef8
                         add                eax, 0x02                                     // 0x0071922c    83c002
                         add                ecx, 0x4                                      // 0x0071922f    83c104
                         {disp8} jmp        _jmp_addr_0x00719264                          // 0x00719232    eb30
_jmp_addr_0x00719234:    cmp                dx, 0x5c                                      // 0x00719234    6683fa5c
                         {disp8} jne        _jmp_addr_0x0071924e                          // 0x00719238    7514
                         cmp                word ptr [ecx + 0x02], 0x6e                   // 0x0071923a    668379026e
                         {disp8} jne        _jmp_addr_0x0071924e                          // 0x0071923f    750d
                         mov                word ptr [eax], 0x000a                        // 0x00719241    66c7000a00
                         add                eax, 0x02                                     // 0x00719246    83c002
                         add                ecx, 0x4                                      // 0x00719249    83c104
                         {disp8} jmp        _jmp_addr_0x00719264                          // 0x0071924c    eb16
_jmp_addr_0x0071924e:    cmp                dx, 0x7e                                      // 0x0071924e    6683fa7e
                         {disp8} jne        _jmp_addr_0x0071925b                          // 0x00719252    7507
                         mov                word ptr [eax], -0x0702                       // 0x00719254    66c700fef8
                         {disp8} jmp        _jmp_addr_0x0071925e                          // 0x00719259    eb03
_jmp_addr_0x0071925b:    mov                word ptr [eax], dx                            // 0x0071925b    668910
_jmp_addr_0x0071925e:    add                eax, 0x02                                     // 0x0071925e    83c002
                         add                ecx, 0x2                                      // 0x00719261    83c102
_jmp_addr_0x00719264:    mov                dx, word ptr [ecx]                            // 0x00719264    668b11
                         test               dx, dx                                        // 0x00719267    6685d2
                         {disp8} jne        _jmp_addr_0x00719200                          // 0x0071926a    7594
_jmp_addr_0x0071926c:    mov                word ptr [eax], 0x0000                        // 0x0071926c    66c7000000
                         ret                                                              // 0x00719271    c3
                         nop                                                              // 0x00719272    90
                         nop                                                              // 0x00719273    90
                         nop                                                              // 0x00719274    90
                         nop                                                              // 0x00719275    90
                         nop                                                              // 0x00719276    90
                         nop                                                              // 0x00719277    90
                         nop                                                              // 0x00719278    90
                         nop                                                              // 0x00719279    90
                         nop                                                              // 0x0071927a    90
                         nop                                                              // 0x0071927b    90
                         nop                                                              // 0x0071927c    90
                         nop                                                              // 0x0071927d    90
                         nop                                                              // 0x0071927e    90
                         nop                                                              // 0x0071927f    90
?LoadTextScripts@GSetup@@QAEHXZ:
                         push               0x0                                           // 0x00719280    6a00
                         push               0x007192e0                                    // 0x00719282    68e0927100
                         push               0x00c215a0                                    // 0x00719287    68a015c200
                         push               0x00c22110                                    // 0x0071928c    681021c200
                         mov                ecx, 0x00e85934                               // 0x00719291    b93459e800
                         call               _jmp_addr_0x007e7960                          // 0x00719296    e8c5e60c00
                         test               eax, eax                                      // 0x0071929b    85c0
                         {disp8} jne        _jmp_addr_0x007192da                          // 0x0071929d    753b
                         push               eax                                           // 0x0071929f    50
                         push               0x007193f0                                    // 0x007192a0    68f0937100
                         push               0x00c215a0                                    // 0x007192a5    68a015c200
                         push               0x00c220f0                                    // 0x007192aa    68f020c200
                         mov                ecx, 0x00e85934                               // 0x007192af    b93459e800
                         call               _jmp_addr_0x007e7960                          // 0x007192b4    e8a7e60c00
                         push               0x0                                           // 0x007192b9    6a00
                         push               0x00719500                                    // 0x007192bb    6800957100
                         push               0x00c215a0                                    // 0x007192c0    68a015c200
                         push               0x00c220cc                                    // 0x007192c5    68cc20c200
                         mov                ecx, 0x00e85934                               // 0x007192ca    b93459e800
                         call               _jmp_addr_0x007e7960                          // 0x007192cf    e88ce60c00
                         mov                eax, 0x00000001                               // 0x007192d4    b801000000
                         ret                                                              // 0x007192d9    c3
_jmp_addr_0x007192da:    xor.s              eax, eax                                      // 0x007192da    33c0
                         ret                                                              // 0x007192dc    c3
                         nop                                                              // 0x007192dd    90
                         nop                                                              // 0x007192de    90
                         nop                                                              // 0x007192df    90
                         mov                eax, 0x00001f40                               // 0x007192e0    b8401f0000
                         call               __chkstk                                      // 0x007192e5    e8c6db0a00
                         {disp32} mov       eax, dword ptr [esp + 0x00001f44]             // 0x007192ea    8b8424441f0000
                         sub                eax, 0x00                                     // 0x007192f1    83e800
                         push               esi                                           // 0x007192f4    56
                         {disp8} je         _jmp_addr_0x0071936a                          // 0x007192f5    7473
                         dec                eax                                           // 0x007192f7    48
                         {disp32} jne       _jmp_addr_0x007193e5                          // 0x007192f8    0f85e7000000
                         {disp32} mov       esi, dword ptr [esp + 0x00001f4c]             // 0x007192fe    8bb4244c1f0000
                         {disp32} lea       eax, dword ptr [esi + 0x00002000]             // 0x00719305    8d8600200000
                         push               eax                                           // 0x0071930b    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00000fa8]             // 0x0071930c    8d8c24a80f0000
                         push               ecx                                           // 0x00719313    51
                         call               _jmp_addr_0x007191f0                          // 0x00719314    e8d7feffff
                         {disp32} lea       edx, dword ptr [esi + 0x00003000]             // 0x00719319    8d9600300000
                         push               edx                                           // 0x0071931f    52
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x00719320    8d442410
                         push               eax                                           // 0x00719324    50
                         call               _jmp_addr_0x007191f0                          // 0x00719325    e8c6feffff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351c88]        // 0x0071932a    a1887cd100
                         add                esp, 0x10                                     // 0x0071932f    83c410
                         mov.s              ecx, eax                                      // 0x00719332    8bc8
                         inc                eax                                           // 0x00719334    40
                         {disp32} mov       dword ptr [data_bytes + 0x351c88], eax        // 0x00719335    a3887cd100
                         {disp8} lea        edx, dword ptr [esp + 0x04]                   // 0x0071933a    8d542404
                         push               edx                                           // 0x0071933e    52
                         {disp32} mov       edx, dword ptr [esi + 0x0000c004]             // 0x0071933f    8b9604c00000
                         {disp32} lea       eax, dword ptr [esp + 0x00000fa8]             // 0x00719345    8d8424a80f0000
                         push               eax                                           // 0x0071934c    50
                         {disp32} mov       eax, dword ptr [esi + 0x0000c000]             // 0x0071934d    8b8600c00000
                         push               edx                                           // 0x00719353    52
                         push               ecx                                           // 0x00719354    51
                         push               eax                                           // 0x00719355    50
                         mov                ecx, 0x00d17ca8                               // 0x00719356    b9a87cd100
                         call               _jmp_addr_0x005ccf80                          // 0x0071935b    e8203cebff
                         xor.s              eax, eax                                      // 0x00719360    33c0
                         pop                esi                                           // 0x00719362    5e
                         add                esp, 0x00001f40                               // 0x00719363    81c4401f0000
                         ret                                                              // 0x00719369    c3
_jmp_addr_0x0071936a:    {disp32} mov       ecx, dword ptr [esp + 0x00001f4c]             // 0x0071936a    8b8c244c1f0000
                         {disp32} mov       esi, dword ptr [ecx + 0x0000c000]             // 0x00719371    8bb100c00000
                         push               0x5d                                          // 0x00719377    6a5d
                         lea                edx, dword ptr [esi + esi * 0x2]              // 0x00719379    8d1476
                         {disp32} lea       eax, dword ptr [edx * 0x4 + 0x00000004]       // 0x0071937c    8d049504000000
                         push               0x00c22128                                    // 0x00719383    682821c200
                         push               eax                                           // 0x00719388    50
                         {disp32} mov       dword ptr [data_bytes + 0x351cac], esi        // 0x00719389    8935ac7cd100
                         call               ___nw__FUl                                    // 0x0071938f    e8fc230c00
                         add                esp, 0x0c                                     // 0x00719394    83c40c
                         test               eax, eax                                      // 0x00719397    85c0
                         {disp8} je         _jmp_addr_0x007193d1                          // 0x00719399    7436
                         {disp8} lea        ecx, dword ptr [esi + -0x01]                  // 0x0071939b    8d4eff
                         test               ecx, ecx                                      // 0x0071939e    85c9
                         mov                dword ptr [eax], esi                          // 0x007193a0    8930
                         {disp8} lea        edx, dword ptr [eax + 0x04]                   // 0x007193a2    8d5004
                         {disp8} jl         _jmp_addr_0x007193b7                          // 0x007193a5    7c10
                         {disp8} lea        eax, dword ptr [edx + 0x08]                   // 0x007193a7    8d4208
                         inc                ecx                                           // 0x007193aa    41
_jmp_addr_0x007193ab:    mov                dword ptr [eax], 0x00000000                   // 0x007193ab    c70000000000
                         add                eax, 0x0c                                     // 0x007193b1    83c00c
                         dec                ecx                                           // 0x007193b4    49
                         {disp8} jne        _jmp_addr_0x007193ab                          // 0x007193b5    75f4
_jmp_addr_0x007193b7:    {disp32} mov       dword ptr [data_bytes + 0x351ca8], edx        // 0x007193b7    8915a87cd100
                         {disp32} mov       dword ptr [data_bytes + 0x351c88], 0x00000000 // 0x007193bd    c705887cd10000000000
                         xor.s              eax, eax                                      // 0x007193c7    33c0
                         pop                esi                                           // 0x007193c9    5e
                         add                esp, 0x00001f40                               // 0x007193ca    81c4401f0000
                         ret                                                              // 0x007193d0    c3
_jmp_addr_0x007193d1:    {disp32} mov       dword ptr [data_bytes + 0x351ca8], 0x00000000 // 0x007193d1    c705a87cd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x351c88], 0x00000000 // 0x007193db    c705887cd10000000000
_jmp_addr_0x007193e5:    xor.s              eax, eax                                      // 0x007193e5    33c0
                         pop                esi                                           // 0x007193e7    5e
                         add                esp, 0x00001f40                               // 0x007193e8    81c4401f0000
                         ret                                                              // 0x007193ee    c3
                         nop                                                              // 0x007193ef    90
                         mov                eax, 0x00001f40                               // 0x007193f0    b8401f0000
                         call               __chkstk                                      // 0x007193f5    e8b6da0a00
                         {disp32} mov       eax, dword ptr [esp + 0x00001f44]             // 0x007193fa    8b8424441f0000
                         sub                eax, 0x00                                     // 0x00719401    83e800
                         push               esi                                           // 0x00719404    56
                         {disp8} je         _jmp_addr_0x0071947a                          // 0x00719405    7473
                         dec                eax                                           // 0x00719407    48
                         {disp32} jne       _jmp_addr_0x007194f5                          // 0x00719408    0f85e7000000
                         {disp32} mov       esi, dword ptr [esp + 0x00001f4c]             // 0x0071940e    8bb4244c1f0000
                         {disp32} lea       eax, dword ptr [esi + 0x00002000]             // 0x00719415    8d8600200000
                         push               eax                                           // 0x0071941b    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00000fa8]             // 0x0071941c    8d8c24a80f0000
                         push               ecx                                           // 0x00719423    51
                         call               _jmp_addr_0x007191f0                          // 0x00719424    e8c7fdffff
                         {disp32} lea       edx, dword ptr [esi + 0x00003000]             // 0x00719429    8d9600300000
                         push               edx                                           // 0x0071942f    52
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x00719430    8d442410
                         push               eax                                           // 0x00719434    50
                         call               _jmp_addr_0x007191f0                          // 0x00719435    e8b6fdffff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351c80]        // 0x0071943a    a1807cd100
                         add                esp, 0x10                                     // 0x0071943f    83c410
                         mov.s              ecx, eax                                      // 0x00719442    8bc8
                         inc                eax                                           // 0x00719444    40
                         {disp32} mov       dword ptr [data_bytes + 0x351c80], eax        // 0x00719445    a3807cd100
                         {disp8} lea        edx, dword ptr [esp + 0x04]                   // 0x0071944a    8d542404
                         push               edx                                           // 0x0071944e    52
                         {disp32} mov       edx, dword ptr [esi + 0x0000c004]             // 0x0071944f    8b9604c00000
                         {disp32} lea       eax, dword ptr [esp + 0x00000fa8]             // 0x00719455    8d8424a80f0000
                         push               eax                                           // 0x0071945c    50
                         {disp32} mov       eax, dword ptr [esi + 0x0000c000]             // 0x0071945d    8b8600c00000
                         push               edx                                           // 0x00719463    52
                         push               ecx                                           // 0x00719464    51
                         push               eax                                           // 0x00719465    50
                         mov                ecx, 0x00d17ca0                               // 0x00719466    b9a07cd100
                         call               _jmp_addr_0x005ccf80                          // 0x0071946b    e8103bebff
                         xor.s              eax, eax                                      // 0x00719470    33c0
                         pop                esi                                           // 0x00719472    5e
                         add                esp, 0x00001f40                               // 0x00719473    81c4401f0000
                         ret                                                              // 0x00719479    c3
_jmp_addr_0x0071947a:    {disp32} mov       ecx, dword ptr [esp + 0x00001f4c]             // 0x0071947a    8b8c244c1f0000
                         {disp32} mov       esi, dword ptr [ecx + 0x0000c000]             // 0x00719481    8bb100c00000
                         push               0x5d                                          // 0x00719487    6a5d
                         lea                edx, dword ptr [esi + esi * 0x2]              // 0x00719489    8d1476
                         {disp32} lea       eax, dword ptr [edx * 0x4 + 0x00000004]       // 0x0071948c    8d049504000000
                         push               0x00c22128                                    // 0x00719493    682821c200
                         push               eax                                           // 0x00719498    50
                         {disp32} mov       dword ptr [data_bytes + 0x351ca4], esi        // 0x00719499    8935a47cd100
                         call               ___nw__FUl                                    // 0x0071949f    e8ec220c00
                         add                esp, 0x0c                                     // 0x007194a4    83c40c
                         test               eax, eax                                      // 0x007194a7    85c0
                         {disp8} je         _jmp_addr_0x007194e1                          // 0x007194a9    7436
                         {disp8} lea        ecx, dword ptr [esi + -0x01]                  // 0x007194ab    8d4eff
                         test               ecx, ecx                                      // 0x007194ae    85c9
                         mov                dword ptr [eax], esi                          // 0x007194b0    8930
                         {disp8} lea        edx, dword ptr [eax + 0x04]                   // 0x007194b2    8d5004
                         {disp8} jl         _jmp_addr_0x007194c7                          // 0x007194b5    7c10
                         {disp8} lea        eax, dword ptr [edx + 0x08]                   // 0x007194b7    8d4208
                         inc                ecx                                           // 0x007194ba    41
_jmp_addr_0x007194bb:    mov                dword ptr [eax], 0x00000000                   // 0x007194bb    c70000000000
                         add                eax, 0x0c                                     // 0x007194c1    83c00c
                         dec                ecx                                           // 0x007194c4    49
                         {disp8} jne        _jmp_addr_0x007194bb                          // 0x007194c5    75f4
_jmp_addr_0x007194c7:    {disp32} mov       dword ptr [data_bytes + 0x351ca0], edx        // 0x007194c7    8915a07cd100
                         {disp32} mov       dword ptr [data_bytes + 0x351c80], 0x00000000 // 0x007194cd    c705807cd10000000000
                         xor.s              eax, eax                                      // 0x007194d7    33c0
                         pop                esi                                           // 0x007194d9    5e
                         add                esp, 0x00001f40                               // 0x007194da    81c4401f0000
                         ret                                                              // 0x007194e0    c3
_jmp_addr_0x007194e1:    {disp32} mov       dword ptr [data_bytes + 0x351ca0], 0x00000000 // 0x007194e1    c705a07cd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x351c80], 0x00000000 // 0x007194eb    c705807cd10000000000
_jmp_addr_0x007194f5:    xor.s              eax, eax                                      // 0x007194f5    33c0
                         pop                esi                                           // 0x007194f7    5e
                         add                esp, 0x00001f40                               // 0x007194f8    81c4401f0000
                         ret                                                              // 0x007194fe    c3
                         nop                                                              // 0x007194ff    90
                         mov                eax, 0x00001f40                               // 0x00719500    b8401f0000
                         call               __chkstk                                      // 0x00719505    e8a6d90a00
                         {disp32} mov       eax, dword ptr [esp + 0x00001f44]             // 0x0071950a    8b8424441f0000
                         sub                eax, 0x00                                     // 0x00719511    83e800
                         push               esi                                           // 0x00719514    56
                         {disp8} je         _jmp_addr_0x0071958a                          // 0x00719515    7473
                         dec                eax                                           // 0x00719517    48
                         {disp32} jne       _jmp_addr_0x00719605                          // 0x00719518    0f85e7000000
                         {disp32} mov       esi, dword ptr [esp + 0x00001f4c]             // 0x0071951e    8bb4244c1f0000
                         {disp32} lea       eax, dword ptr [esi + 0x00002000]             // 0x00719525    8d8600200000
                         push               eax                                           // 0x0071952b    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00000fa8]             // 0x0071952c    8d8c24a80f0000
                         push               ecx                                           // 0x00719533    51
                         call               _jmp_addr_0x007191f0                          // 0x00719534    e8b7fcffff
                         {disp32} lea       edx, dword ptr [esi + 0x00003000]             // 0x00719539    8d9600300000
                         push               edx                                           // 0x0071953f    52
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x00719540    8d442410
                         push               eax                                           // 0x00719544    50
                         call               _jmp_addr_0x007191f0                          // 0x00719545    e8a6fcffff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351c78]        // 0x0071954a    a1787cd100
                         add                esp, 0x10                                     // 0x0071954f    83c410
                         mov.s              ecx, eax                                      // 0x00719552    8bc8
                         inc                eax                                           // 0x00719554    40
                         {disp32} mov       dword ptr [data_bytes + 0x351c78], eax        // 0x00719555    a3787cd100
                         {disp8} lea        edx, dword ptr [esp + 0x04]                   // 0x0071955a    8d542404
                         push               edx                                           // 0x0071955e    52
                         {disp32} mov       edx, dword ptr [esi + 0x0000c004]             // 0x0071955f    8b9604c00000
                         {disp32} lea       eax, dword ptr [esp + 0x00000fa8]             // 0x00719565    8d8424a80f0000
                         push               eax                                           // 0x0071956c    50
                         {disp32} mov       eax, dword ptr [esi + 0x0000c000]             // 0x0071956d    8b8600c00000
                         push               edx                                           // 0x00719573    52
                         push               ecx                                           // 0x00719574    51
                         push               eax                                           // 0x00719575    50
                         mov                ecx, 0x00d17c98                               // 0x00719576    b9987cd100
                         call               _jmp_addr_0x005ccf80                          // 0x0071957b    e8003aebff
                         xor.s              eax, eax                                      // 0x00719580    33c0
                         pop                esi                                           // 0x00719582    5e
                         add                esp, 0x00001f40                               // 0x00719583    81c4401f0000
                         ret                                                              // 0x00719589    c3
_jmp_addr_0x0071958a:    {disp32} mov       ecx, dword ptr [esp + 0x00001f4c]             // 0x0071958a    8b8c244c1f0000
                         {disp32} mov       esi, dword ptr [ecx + 0x0000c000]             // 0x00719591    8bb100c00000
                         push               0x5d                                          // 0x00719597    6a5d
                         lea                edx, dword ptr [esi + esi * 0x2]              // 0x00719599    8d1476
                         {disp32} lea       eax, dword ptr [edx * 0x4 + 0x00000004]       // 0x0071959c    8d049504000000
                         push               0x00c22128                                    // 0x007195a3    682821c200
                         push               eax                                           // 0x007195a8    50
                         {disp32} mov       dword ptr [data_bytes + 0x351c9c], esi        // 0x007195a9    89359c7cd100
                         call               ___nw__FUl                                    // 0x007195af    e8dc210c00
                         add                esp, 0x0c                                     // 0x007195b4    83c40c
                         test               eax, eax                                      // 0x007195b7    85c0
                         {disp8} je         _jmp_addr_0x007195f1                          // 0x007195b9    7436
                         {disp8} lea        ecx, dword ptr [esi + -0x01]                  // 0x007195bb    8d4eff
                         test               ecx, ecx                                      // 0x007195be    85c9
                         mov                dword ptr [eax], esi                          // 0x007195c0    8930
                         {disp8} lea        edx, dword ptr [eax + 0x04]                   // 0x007195c2    8d5004
                         {disp8} jl         _jmp_addr_0x007195d7                          // 0x007195c5    7c10
                         {disp8} lea        eax, dword ptr [edx + 0x08]                   // 0x007195c7    8d4208
                         inc                ecx                                           // 0x007195ca    41
_jmp_addr_0x007195cb:    mov                dword ptr [eax], 0x00000000                   // 0x007195cb    c70000000000
                         add                eax, 0x0c                                     // 0x007195d1    83c00c
                         dec                ecx                                           // 0x007195d4    49
                         {disp8} jne        _jmp_addr_0x007195cb                          // 0x007195d5    75f4
_jmp_addr_0x007195d7:    {disp32} mov       dword ptr [data_bytes + 0x351c98], edx        // 0x007195d7    8915987cd100
                         {disp32} mov       dword ptr [data_bytes + 0x351c78], 0x00000000 // 0x007195dd    c705787cd10000000000
                         xor.s              eax, eax                                      // 0x007195e7    33c0
                         pop                esi                                           // 0x007195e9    5e
                         add                esp, 0x00001f40                               // 0x007195ea    81c4401f0000
                         ret                                                              // 0x007195f0    c3
_jmp_addr_0x007195f1:    {disp32} mov       dword ptr [data_bytes + 0x351c98], 0x00000000 // 0x007195f1    c705987cd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x351c78], 0x00000000 // 0x007195fb    c705787cd10000000000
_jmp_addr_0x00719605:    xor.s              eax, eax                                      // 0x00719605    33c0
                         pop                esi                                           // 0x00719607    5e
                         add                esp, 0x00001f40                               // 0x00719608    81c4401f0000
                         ret                                                              // 0x0071960e    c3
                         nop                                                              // 0x0071960f    90
?WriteToFile@GSetup@@SAIPAXAAVLHOSFile@@0K@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00719610    8b442410
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x00719614    8b4c240c
                         push               0x0                                           // 0x00719618    6a00
                         push               eax                                           // 0x0071961a    50
                         push               ecx                                           // 0x0071961b    51
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x0071961c    8b4c2414
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x00719620    e8fb320a00
                         ret                                                              // 0x00719625    c3
                         nop                                                              // 0x00719626    90
                         nop                                                              // 0x00719627    90
                         nop                                                              // 0x00719628    90
                         nop                                                              // 0x00719629    90
                         nop                                                              // 0x0071962a    90
                         nop                                                              // 0x0071962b    90
                         nop                                                              // 0x0071962c    90
                         nop                                                              // 0x0071962d    90
                         nop                                                              // 0x0071962e    90
                         nop                                                              // 0x0071962f    90
_jmp_addr_0x00719630:    push               ebx                                           // 0x00719630    53
                         push               ebp                                           // 0x00719631    55
                         push               esi                                           // 0x00719632    56
                         mov.s              esi, ecx                                      // 0x00719633    8bf1
                         mov                eax, dword ptr [esi]                          // 0x00719635    8b06
                         xor.s              ebp, ebp                                      // 0x00719637    33ed
                         test               eax, eax                                      // 0x00719639    85c0
                         push               edi                                           // 0x0071963b    57
                         {disp8} je         _jmp_addr_0x00719676                          // 0x0071963c    7438
                         {disp8} mov        bl, byte ptr [esp + 0x18]                     // 0x0071963e    8a5c2418
_jmp_addr_0x00719642:    {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x00719642    8b4c2414
                         cmp                dword ptr [eax + 0x04], ecx                   // 0x00719646    394804
                         mov                edi, dword ptr [eax]                          // 0x00719649    8b38
                         {disp8} jne        _jmp_addr_0x0071966e                          // 0x0071964b    7521
                         cmp                eax, dword ptr [esi]                          // 0x0071964d    3b06
                         {disp8} jne        _jmp_addr_0x00719655                          // 0x0071964f    7504
                         mov                dword ptr [esi], edi                          // 0x00719651    893e
                         {disp8} jmp        _jmp_addr_0x00719658                          // 0x00719653    eb03
_jmp_addr_0x00719655:    {disp8} mov        dword ptr [ebp + 0x00], edi                   // 0x00719655    897d00
_jmp_addr_0x00719658:    {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x00719658    8b4e04
                         dec                ecx                                           // 0x0071965b    49
                         push               eax                                           // 0x0071965c    50
                         {disp8} mov        dword ptr [esi + 0x04], ecx                   // 0x0071965d    894e04
                         call               ??3@YAXPAX@Z                                  // 0x00719660    e833580900
                         add                esp, 0x04                                     // 0x00719665    83c404
                         test               bl, bl                                        // 0x00719668    84db
                         {disp8} jne        _jmp_addr_0x00719676                          // 0x0071966a    750a
                         {disp8} jmp        _jmp_addr_0x00719670                          // 0x0071966c    eb02
_jmp_addr_0x0071966e:    mov.s              ebp, eax                                      // 0x0071966e    8be8
_jmp_addr_0x00719670:    test               edi, edi                                      // 0x00719670    85ff
                         mov.s              eax, edi                                      // 0x00719672    8bc7
                         {disp8} jne        _jmp_addr_0x00719642                          // 0x00719674    75cc
_jmp_addr_0x00719676:    pop                edi                                           // 0x00719676    5f
                         pop                esi                                           // 0x00719677    5e
                         pop                ebp                                           // 0x00719678    5d
                         pop                ebx                                           // 0x00719679    5b
                         ret                0x0008                                        // 0x0071967a    c20800
                         nop                                                              // 0x0071967d    90
                         nop                                                              // 0x0071967e    90
                         nop                                                              // 0x0071967f    90
_jmp_addr_0x00719680:    push               ebx                                           // 0x00719680    53
                         push               ebp                                           // 0x00719681    55
                         push               esi                                           // 0x00719682    56
                         mov.s              esi, ecx                                      // 0x00719683    8bf1
                         mov                eax, dword ptr [esi]                          // 0x00719685    8b06
                         xor.s              ebp, ebp                                      // 0x00719687    33ed
                         test               eax, eax                                      // 0x00719689    85c0
                         push               edi                                           // 0x0071968b    57
                         {disp8} je         _jmp_addr_0x007196c6                          // 0x0071968c    7438
                         {disp8} mov        bl, byte ptr [esp + 0x18]                     // 0x0071968e    8a5c2418
_jmp_addr_0x00719692:    {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x00719692    8b4c2414
                         cmp                dword ptr [eax + 0x04], ecx                   // 0x00719696    394804
                         mov                edi, dword ptr [eax]                          // 0x00719699    8b38
                         {disp8} jne        _jmp_addr_0x007196be                          // 0x0071969b    7521
                         cmp                eax, dword ptr [esi]                          // 0x0071969d    3b06
                         {disp8} jne        _jmp_addr_0x007196a5                          // 0x0071969f    7504
                         mov                dword ptr [esi], edi                          // 0x007196a1    893e
                         {disp8} jmp        _jmp_addr_0x007196a8                          // 0x007196a3    eb03
_jmp_addr_0x007196a5:    {disp8} mov        dword ptr [ebp + 0x00], edi                   // 0x007196a5    897d00
_jmp_addr_0x007196a8:    {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x007196a8    8b4e04
                         dec                ecx                                           // 0x007196ab    49
                         push               eax                                           // 0x007196ac    50
                         {disp8} mov        dword ptr [esi + 0x04], ecx                   // 0x007196ad    894e04
                         call               ??3@YAXPAX@Z                                  // 0x007196b0    e8e3570900
                         add                esp, 0x04                                     // 0x007196b5    83c404
                         test               bl, bl                                        // 0x007196b8    84db
                         {disp8} jne        _jmp_addr_0x007196c6                          // 0x007196ba    750a
                         {disp8} jmp        _jmp_addr_0x007196c0                          // 0x007196bc    eb02
_jmp_addr_0x007196be:    mov.s              ebp, eax                                      // 0x007196be    8be8
_jmp_addr_0x007196c0:    test               edi, edi                                      // 0x007196c0    85ff
                         mov.s              eax, edi                                      // 0x007196c2    8bc7
                         {disp8} jne        _jmp_addr_0x00719692                          // 0x007196c4    75cc
_jmp_addr_0x007196c6:    pop                edi                                           // 0x007196c6    5f
                         pop                esi                                           // 0x007196c7    5e
                         pop                ebp                                           // 0x007196c8    5d
                         pop                ebx                                           // 0x007196c9    5b
                         ret                0x0008                                        // 0x007196ca    c20800
                         nop                                                              // 0x007196cd    90
                         nop                                                              // 0x007196ce    90
                         nop                                                              // 0x007196cf    90
_globl_ct_0x007196d0:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x007196d0    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x007196d6    b001
                         test               al, cl                                        // 0x007196d8    84c8
                         {disp8} jne        _jmp_addr_0x007196e4                          // 0x007196da    7508
                         or.s               cl, al                                        // 0x007196dc    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x007196de    880d34c9fa00
_jmp_addr_0x007196e4:    {disp32} jmp       _jmp_addr_0x007196f0                          // 0x007196e4    e907000000
                         nop                                                              // 0x007196e9    90
                         nop                                                              // 0x007196ea    90
                         nop                                                              // 0x007196eb    90
                         nop                                                              // 0x007196ec    90
                         nop                                                              // 0x007196ed    90
                         nop                                                              // 0x007196ee    90
                         nop                                                              // 0x007196ef    90
_jmp_addr_0x007196f0:    push               0x00407870                                    // 0x007196f0    6870784000
                         call               _atexit                                       // 0x007196f5    e897c00a00
                         pop                ecx                                           // 0x007196fa    59
                         ret                                                              // 0x007196fb    c3
                         nop                                                              // 0x007196fc    90
                         nop                                                              // 0x007196fd    90
                         nop                                                              // 0x007196fe    90
                         nop                                                              // 0x007196ff    90
_globl_ct_0x00719700:    {disp32} jmp       _jmp_addr_0x00719710                          // 0x00719700    e90b000000
                         nop                                                              // 0x00719705    90
                         nop                                                              // 0x00719706    90
                         nop                                                              // 0x00719707    90
                         nop                                                              // 0x00719708    90
                         nop                                                              // 0x00719709    90
                         nop                                                              // 0x0071970a    90
                         nop                                                              // 0x0071970b    90
                         nop                                                              // 0x0071970c    90
                         nop                                                              // 0x0071970d    90
                         nop                                                              // 0x0071970e    90
                         nop                                                              // 0x0071970f    90
_jmp_addr_0x00719710:    {disp32} mov       dword ptr [data_bytes + 0x3d372c], 0xffffffff // 0x00719710    c7052c97d900ffffffff
                         ret                                                              // 0x0071971a    c3
                         nop                                                              // 0x0071971b    90
                         nop                                                              // 0x0071971c    90
                         nop                                                              // 0x0071971d    90
                         nop                                                              // 0x0071971e    90
                         nop                                                              // 0x0071971f    90
_globl_ct_0x00719720:    {disp32} jmp       _jmp_addr_0x00719730                          // 0x00719720    e90b000000
                         nop                                                              // 0x00719725    90
                         nop                                                              // 0x00719726    90
                         nop                                                              // 0x00719727    90
                         nop                                                              // 0x00719728    90
                         nop                                                              // 0x00719729    90
                         nop                                                              // 0x0071972a    90
                         nop                                                              // 0x0071972b    90
                         nop                                                              // 0x0071972c    90
                         nop                                                              // 0x0071972d    90
                         nop                                                              // 0x0071972e    90
                         nop                                                              // 0x0071972f    90
_jmp_addr_0x00719730:    {disp32} fld       dword ptr [rdata_bytes + 0xae2c0]             // 0x00719730    d905c0729500
                         {disp32} fmul      dword ptr [rdata_bytes + 0xae2bc]             // 0x00719736    d80dbc729500
                         {disp32} fstp      dword ptr [data_bytes + 0x3d3728]             // 0x0071973c    d91d2897d900
                         ret                                                              // 0x00719742    c3
                         nop                                                              // 0x00719743    90
                         nop                                                              // 0x00719744    90
                         nop                                                              // 0x00719745    90
                         nop                                                              // 0x00719746    90
                         nop                                                              // 0x00719747    90
                         nop                                                              // 0x00719748    90
                         nop                                                              // 0x00719749    90
                         nop                                                              // 0x0071974a    90
                         nop                                                              // 0x0071974b    90
                         nop                                                              // 0x0071974c    90
                         nop                                                              // 0x0071974d    90
                         nop                                                              // 0x0071974e    90
                         nop                                                              // 0x0071974f    90
_jmp_addr_0x00719750:    mov.s              edx, ecx                                      // 0x00719750    8bd1
                         xor.s              ecx, ecx                                      // 0x00719752    33c9
                         mov                eax, 0x3f400000                               // 0x00719754    b80000403f
                         push               ebx                                           // 0x00719759    53
                         mov                bl, 0x01                                      // 0x0071975a    b301
                         mov                byte ptr [edx], cl                            // 0x0071975c    880a
                         {disp32} mov       dword ptr [edx + 0x00000424], ecx             // 0x0071975e    898a24040000
                         {disp32} mov       dword ptr [edx + 0x00000428], ecx             // 0x00719764    898a28040000
                         {disp32} mov       byte ptr [edx + 0x000003f4], cl               // 0x0071976a    888af4030000
                         {disp32} mov       dword ptr [edx + 0x00000418], eax             // 0x00719770    898218040000
                         {disp32} mov       dword ptr [edx + 0x0000041c], eax             // 0x00719776    89821c040000
                         {disp32} mov       dword ptr [edx + 0x00000420], eax             // 0x0071977c    898220040000
                         push               edi                                           // 0x00719782    57
                         xor.s              eax, eax                                      // 0x00719783    33c0
                         mov                ecx, 0x000000cb                               // 0x00719785    b9cb000000
                         {disp32} lea       edi, dword ptr [edx + 0x000000c8]             // 0x0071978a    8dbac8000000
                         {disp32} mov       byte ptr [edx + 0x000003f5], bl               // 0x00719790    889af5030000
                         {disp32} mov       byte ptr [edx + 0x000003f6], bl               // 0x00719796    889af6030000
                         {disp32} mov       byte ptr [edx + 0x0000040d], bl               // 0x0071979c    889a0d040000
                         {disp32} mov       byte ptr [edx + 0x0000040e], bl               // 0x007197a2    889a0e040000
                         {disp32} mov       byte ptr [edx + 0x0000040f], bl               // 0x007197a8    889a0f040000
                         {disp32} mov       byte ptr [edx + 0x00000410], bl               // 0x007197ae    889a10040000
                         {disp32} mov       byte ptr [edx + 0x00000411], bl               // 0x007197b4    889a11040000
                         {disp32} mov       byte ptr [edx + 0x00000412], bl               // 0x007197ba    889a12040000
                         {disp32} mov       dword ptr [edx + 0x00000414], 0x00000002      // 0x007197c0    c7821404000002000000
                         rep stosd                                                        // 0x007197ca    f3ab
                         mov                ecx, 0xfffffc09                               // 0x007197cc    b909fcffff
                         {disp32} lea       eax, dword ptr [edx + 0x000003f7]             // 0x007197d1    8d82f7030000
                         sub.s              ecx, edx                                      // 0x007197d7    2bca
_jmp_addr_0x007197d9:    {disp8} mov        byte ptr [eax + 0x0b], bl                     // 0x007197d9    88580b
                         mov                byte ptr [eax], bl                            // 0x007197dc    8818
                         inc                eax                                           // 0x007197de    40
                         lea                edx, dword ptr [ecx + eax * 0x1]              // 0x007197df    8d1401
                         cmp                edx, 0x0b                                     // 0x007197e2    83fa0b
                         {disp8} jl         _jmp_addr_0x007197d9                          // 0x007197e5    7cf2
                         pop                edi                                           // 0x007197e7    5f
                         pop                ebx                                           // 0x007197e8    5b
                         ret                                                              // 0x007197e9    c3
                         nop                                                              // 0x007197ea    90
                         nop                                                              // 0x007197eb    90
                         nop                                                              // 0x007197ec    90
                         nop                                                              // 0x007197ed    90
                         nop                                                              // 0x007197ee    90
                         nop                                                              // 0x007197ef    90
_jmp_addr_0x007197f0:    {disp8} mov        al, byte ptr [esp + 0x0c]                     // 0x007197f0    8a44240c
                         test               al, al                                        // 0x007197f4    84c0
                         {disp8} je         _jmp_addr_0x0071981d                          // 0x007197f6    7425
                         {disp32} lea       eax, dword ptr [ecx + 0x000003f7]             // 0x007197f8    8d81f7030000
                         {disp8} mov        cl, byte ptr [esp + 0x08]                     // 0x007197fe    8a4c2408
                         mov.s              dl, cl                                        // 0x00719802    8ad1
                         mov.s              dh, dl                                        // 0x00719804    8af2
                         mov.s              ecx, edx                                      // 0x00719806    8bca
                         shl                ecx, 0x10                                     // 0x00719808    c1e110
                         mov.s              cx, dx                                        // 0x0071980b    668bca
                         mov                dword ptr [eax], ecx                          // 0x0071980e    8908
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x00719810    894804
                         {disp8} mov        word ptr [eax + 0x08], cx                     // 0x00719813    66894808
                         {disp8} mov        byte ptr [eax + 0x0a], cl                     // 0x00719817    88480a
                         ret                0x000c                                        // 0x0071981a    c20c00
_jmp_addr_0x0071981d:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0071981d    8b442404
                         cmp                eax, 0x1d                                     // 0x00719821    83f81d
                         {disp8} jne        _jmp_addr_0x0071982b                          // 0x00719824    7505
                         mov                eax, 0x0000000a                               // 0x00719826    b80a000000
_jmp_addr_0x0071982b:    {disp8} mov        dl, byte ptr [esp + 0x08]                     // 0x0071982b    8a542408
                         {disp32} mov       byte ptr [eax + ecx * 0x1 + 0x000003f7], dl   // 0x0071982f    889408f7030000
                         ret                0x000c                                        // 0x00719836    c20c00
                         nop                                                              // 0x00719839    90
                         nop                                                              // 0x0071983a    90
                         nop                                                              // 0x0071983b    90
                         nop                                                              // 0x0071983c    90
                         nop                                                              // 0x0071983d    90
                         nop                                                              // 0x0071983e    90
                         nop                                                              // 0x0071983f    90
_jmp_addr_0x00719840:    {disp8} mov        al, byte ptr [esp + 0x0c]                     // 0x00719840    8a44240c
                         test               al, al                                        // 0x00719844    84c0
                         {disp8} je         _jmp_addr_0x0071986d                          // 0x00719846    7425
                         {disp32} lea       eax, dword ptr [ecx + 0x00000402]             // 0x00719848    8d8102040000
                         {disp8} mov        cl, byte ptr [esp + 0x08]                     // 0x0071984e    8a4c2408
                         mov.s              dl, cl                                        // 0x00719852    8ad1
                         mov.s              dh, dl                                        // 0x00719854    8af2
                         mov.s              ecx, edx                                      // 0x00719856    8bca
                         shl                ecx, 0x10                                     // 0x00719858    c1e110
                         mov.s              cx, dx                                        // 0x0071985b    668bca
                         mov                dword ptr [eax], ecx                          // 0x0071985e    8908
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x00719860    894804
                         {disp8} mov        word ptr [eax + 0x08], cx                     // 0x00719863    66894808
                         {disp8} mov        byte ptr [eax + 0x0a], cl                     // 0x00719867    88480a
                         ret                0x000c                                        // 0x0071986a    c20c00
_jmp_addr_0x0071986d:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0071986d    8b442404
                         cmp                eax, 0x1d                                     // 0x00719871    83f81d
                         {disp8} jne        _jmp_addr_0x0071987b                          // 0x00719874    7505
                         mov                eax, 0x0000000a                               // 0x00719876    b80a000000
_jmp_addr_0x0071987b:    {disp8} mov        dl, byte ptr [esp + 0x08]                     // 0x0071987b    8a542408
                         {disp32} mov       byte ptr [eax + ecx * 0x1 + 0x00000402], dl   // 0x0071987f    88940802040000
                         ret                0x000c                                        // 0x00719886    c20c00
                         nop                                                              // 0x00719889    90
                         nop                                                              // 0x0071988a    90
                         nop                                                              // 0x0071988b    90
                         nop                                                              // 0x0071988c    90
                         nop                                                              // 0x0071988d    90
                         nop                                                              // 0x0071988e    90
                         nop                                                              // 0x0071988f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00719890    8b442404
                         cmp                eax, 0x1d                                     // 0x00719894    83f81d
                         {disp8} jne        _jmp_addr_0x0071989e                          // 0x00719897    7505
                         mov                eax, 0x0000000a                               // 0x00719899    b80a000000
_jmp_addr_0x0071989e:    {disp32} mov       al, byte ptr [eax + ecx * 0x1 + 0x000003f7]   // 0x0071989e    8a8408f7030000
                         ret                0x0004                                        // 0x007198a5    c20400
                         nop                                                              // 0x007198a8    90
                         nop                                                              // 0x007198a9    90
                         nop                                                              // 0x007198aa    90
                         nop                                                              // 0x007198ab    90
                         nop                                                              // 0x007198ac    90
                         nop                                                              // 0x007198ad    90
                         nop                                                              // 0x007198ae    90
                         nop                                                              // 0x007198af    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x007198b0    8b442404
                         cmp                eax, 0x1d                                     // 0x007198b4    83f81d
                         {disp8} jne        _jmp_addr_0x007198be                          // 0x007198b7    7505
                         mov                eax, 0x0000000a                               // 0x007198b9    b80a000000
_jmp_addr_0x007198be:    {disp32} mov       al, byte ptr [eax + ecx * 0x1 + 0x00000402]   // 0x007198be    8a840802040000
                         ret                0x0008                                        // 0x007198c5    c20800
                         nop                                                              // 0x007198c8    90
                         nop                                                              // 0x007198c9    90
                         nop                                                              // 0x007198ca    90
                         nop                                                              // 0x007198cb    90
                         nop                                                              // 0x007198cc    90
                         nop                                                              // 0x007198cd    90
                         nop                                                              // 0x007198ce    90
                         nop                                                              // 0x007198cf    90
_jmp_addr_0x007198d0:    xor.s              eax, eax                                      // 0x007198d0    33c0
_jmp_addr_0x007198d2:    {disp32} mov       dl, byte ptr [ecx + eax * 0x1 + 0x00000402]   // 0x007198d2    8a940102040000
                         test               dl, dl                                        // 0x007198d9    84d2
                         {disp8} jne        _jmp_addr_0x007198e6                          // 0x007198db    7509
                         inc                eax                                           // 0x007198dd    40
                         cmp                eax, 0x0b                                     // 0x007198de    83f80b
                         {disp8} jl         _jmp_addr_0x007198d2                          // 0x007198e1    7cef
                         xor.s              al, al                                        // 0x007198e3    32c0
                         ret                                                              // 0x007198e5    c3
_jmp_addr_0x007198e6:    mov                al, 0x01                                      // 0x007198e6    b001
                         ret                                                              // 0x007198e8    c3
                         nop                                                              // 0x007198e9    90
                         nop                                                              // 0x007198ea    90
                         nop                                                              // 0x007198eb    90
                         nop                                                              // 0x007198ec    90
                         nop                                                              // 0x007198ed    90
                         nop                                                              // 0x007198ee    90
                         nop                                                              // 0x007198ef    90
_jmp_addr_0x007198f0:    xor.s              eax, eax                                      // 0x007198f0    33c0
_jmp_addr_0x007198f2:    {disp32} mov       dl, byte ptr [ecx + eax * 0x1 + 0x000003f7]   // 0x007198f2    8a9401f7030000
                         test               dl, dl                                        // 0x007198f9    84d2
                         {disp8} jne        _jmp_addr_0x00719906                          // 0x007198fb    7509
                         inc                eax                                           // 0x007198fd    40
                         cmp                eax, 0x0b                                     // 0x007198fe    83f80b
                         {disp8} jl         _jmp_addr_0x007198f2                          // 0x00719901    7cef
                         xor.s              al, al                                        // 0x00719903    32c0
                         ret                                                              // 0x00719905    c3
_jmp_addr_0x00719906:    mov                al, 0x01                                      // 0x00719906    b001
                         ret                                                              // 0x00719908    c3
                         nop                                                              // 0x00719909    90
                         nop                                                              // 0x0071990a    90
                         nop                                                              // 0x0071990b    90
                         nop                                                              // 0x0071990c    90
                         nop                                                              // 0x0071990d    90
                         nop                                                              // 0x0071990e    90
                         nop                                                              // 0x0071990f    90
_jmp_addr_0x00719910:    push               ebx                                           // 0x00719910    53
                         push               esi                                           // 0x00719911    56
                         {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x00719912    8b742410
                         xor.s              eax, eax                                      // 0x00719916    33c0
                         test               esi, esi                                      // 0x00719918    85f6
                         push               edi                                           // 0x0071991a    57
                         {disp8} jle        _jmp_addr_0x00719936                          // 0x0071991b    7e19
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x0071991d    8b542410
_jmp_addr_0x00719921:    mov                edi, dword ptr [edx]                          // 0x00719921    8b3a
                         {disp32} mov       bl, byte ptr [ecx + edi * 0x1 + 0x00000402]   // 0x00719923    8a9c3902040000
                         test               bl, bl                                        // 0x0071992a    84db
                         {disp8} jne        _jmp_addr_0x0071993e                          // 0x0071992c    7510
                         inc                eax                                           // 0x0071992e    40
                         add                edx, 0x04                                     // 0x0071992f    83c204
                         cmp.s              eax, esi                                      // 0x00719932    3bc6
                         {disp8} jl         _jmp_addr_0x00719921                          // 0x00719934    7ceb
_jmp_addr_0x00719936:    pop                edi                                           // 0x00719936    5f
                         pop                esi                                           // 0x00719937    5e
                         xor.s              al, al                                        // 0x00719938    32c0
                         pop                ebx                                           // 0x0071993a    5b
                         ret                0x0008                                        // 0x0071993b    c20800
_jmp_addr_0x0071993e:    pop                edi                                           // 0x0071993e    5f
                         pop                esi                                           // 0x0071993f    5e
                         mov                al, 0x01                                      // 0x00719940    b001
                         pop                ebx                                           // 0x00719942    5b
                         ret                0x0008                                        // 0x00719943    c20800
                         nop                                                              // 0x00719946    90
                         nop                                                              // 0x00719947    90
                         nop                                                              // 0x00719948    90
                         nop                                                              // 0x00719949    90
                         nop                                                              // 0x0071994a    90
                         nop                                                              // 0x0071994b    90
                         nop                                                              // 0x0071994c    90
                         nop                                                              // 0x0071994d    90
                         nop                                                              // 0x0071994e    90
                         nop                                                              // 0x0071994f    90
                         push               ebx                                           // 0x00719950    53
                         push               esi                                           // 0x00719951    56
                         {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x00719952    8b742410
                         xor.s              eax, eax                                      // 0x00719956    33c0
                         test               esi, esi                                      // 0x00719958    85f6
                         push               edi                                           // 0x0071995a    57
                         {disp8} jle        _jmp_addr_0x00719976                          // 0x0071995b    7e19
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x0071995d    8b542410
_jmp_addr_0x00719961:    mov                edi, dword ptr [edx]                          // 0x00719961    8b3a
                         {disp32} mov       bl, byte ptr [ecx + edi * 0x1 + 0x000003f7]   // 0x00719963    8a9c39f7030000
                         test               bl, bl                                        // 0x0071996a    84db
                         {disp8} jne        _jmp_addr_0x0071997e                          // 0x0071996c    7510
                         inc                eax                                           // 0x0071996e    40
                         add                edx, 0x04                                     // 0x0071996f    83c204
                         cmp.s              eax, esi                                      // 0x00719972    3bc6
                         {disp8} jl         _jmp_addr_0x00719961                          // 0x00719974    7ceb
_jmp_addr_0x00719976:    pop                edi                                           // 0x00719976    5f
                         pop                esi                                           // 0x00719977    5e
                         xor.s              al, al                                        // 0x00719978    32c0
                         pop                ebx                                           // 0x0071997a    5b
                         ret                0x0008                                        // 0x0071997b    c20800
_jmp_addr_0x0071997e:    pop                edi                                           // 0x0071997e    5f
                         pop                esi                                           // 0x0071997f    5e
                         mov                al, 0x01                                      // 0x00719980    b001
                         pop                ebx                                           // 0x00719982    5b
                         ret                0x0008                                        // 0x00719983    c20800
                         nop                                                              // 0x00719986    90
                         nop                                                              // 0x00719987    90
                         nop                                                              // 0x00719988    90
                         nop                                                              // 0x00719989    90
                         nop                                                              // 0x0071998a    90
                         nop                                                              // 0x0071998b    90
                         nop                                                              // 0x0071998c    90
                         nop                                                              // 0x0071998d    90
                         nop                                                              // 0x0071998e    90
                         nop                                                              // 0x0071998f    90
_globl_ct_0x00719990:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x00719990    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x00719996    b001
                         test               al, cl                                        // 0x00719998    84c8
                         {disp8} jne        _jmp_addr_0x007199a4                          // 0x0071999a    7508
                         or.s               cl, al                                        // 0x0071999c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x0071999e    880d34c9fa00
_jmp_addr_0x007199a4:    {disp32} jmp       _jmp_addr_0x007199b0                          // 0x007199a4    e907000000
                         nop                                                              // 0x007199a9    90
                         nop                                                              // 0x007199aa    90
                         nop                                                              // 0x007199ab    90
                         nop                                                              // 0x007199ac    90
                         nop                                                              // 0x007199ad    90
                         nop                                                              // 0x007199ae    90
                         nop                                                              // 0x007199af    90
_jmp_addr_0x007199b0:    push               0x00407870                                    // 0x007199b0    6870784000
                         call               _atexit                                       // 0x007199b5    e8d7bd0a00
                         pop                ecx                                           // 0x007199ba    59
                         ret                                                              // 0x007199bb    c3
                         nop                                                              // 0x007199bc    90
                         nop                                                              // 0x007199bd    90
                         nop                                                              // 0x007199be    90
                         nop                                                              // 0x007199bf    90
_globl_ct_0x007199c0:    call               _jmp_addr_0x007199d0                          // 0x007199c0    e80b000000
                         {disp32} jmp       _jmp_addr_0x00719a30                          // 0x007199c5    e966000000
                         nop                                                              // 0x007199ca    90
                         nop                                                              // 0x007199cb    90
                         nop                                                              // 0x007199cc    90
                         nop                                                              // 0x007199cd    90
                         nop                                                              // 0x007199ce    90
                         nop                                                              // 0x007199cf    90
_jmp_addr_0x007199d0:    mov                eax, OFFSET _GShowNeedsInfo_ARRAY_00d99738    // 0x007199d0    b83897d900
                         mov                ecx, 0x00000004                               // 0x007199d5    b904000000
                         xor.s              edx, edx                                      // 0x007199da    33d2
.att_syntax
_jmp_addr_0x007199dc:    movl               $??_7Base@@6B@, (%eax)                        // 0x007199dc    c700449a8a00
.intel_syntax noprefix
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x007199e2    895004
                         {disp8} mov        dword ptr [eax + 0x08], edx                   // 0x007199e5    895008
                         mov                dword ptr [eax], 0x009572c8                   // 0x007199e8    c700c8729500
                         add                eax, 0x00000114                               // 0x007199ee    0514010000
                         dec                ecx                                           // 0x007199f3    49
                         {disp8} jne        _jmp_addr_0x007199dc                          // 0x007199f4    75e6
                         ret                                                              // 0x007199f6    c3
                         nop                                                              // 0x007199f7    90
                         nop                                                              // 0x007199f8    90
                         nop                                                              // 0x007199f9    90
                         nop                                                              // 0x007199fa    90
                         nop                                                              // 0x007199fb    90
                         nop                                                              // 0x007199fc    90
                         nop                                                              // 0x007199fd    90
                         nop                                                              // 0x007199fe    90
                         nop                                                              // 0x007199ff    90
?GetMesh@GShowNeedsInfo@@UBEIXZ:
                         {disp32} mov       eax, dword ptr [ecx + 0x00000100]             // 0x00719a00    8b8100010000
                         ret                                                              // 0x00719a06    c3
                         nop                                                              // 0x00719a07    90
                         nop                                                              // 0x00719a08    90
                         nop                                                              // 0x00719a09    90
                         nop                                                              // 0x00719a0a    90
                         nop                                                              // 0x00719a0b    90
                         nop                                                              // 0x00719a0c    90
                         nop                                                              // 0x00719a0d    90
                         nop                                                              // 0x00719a0e    90
                         nop                                                              // 0x00719a0f    90
?GetBaseInfo@GShowNeedsInfo@@UAEPAVGBaseInfo@@AAI@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00719a10    8b442404
                         mov                dword ptr [eax], 0x00000004                   // 0x00719a14    c70004000000
                         mov                eax, OFFSET _GShowNeedsInfo_ARRAY_00d99738    // 0x00719a1a    b83897d900
                         ret                0x0004                                        // 0x00719a1f    c20400
                         nop                                                              // 0x00719a22    90
                         nop                                                              // 0x00719a23    90
                         nop                                                              // 0x00719a24    90
                         nop                                                              // 0x00719a25    90
                         nop                                                              // 0x00719a26    90
                         nop                                                              // 0x00719a27    90
                         nop                                                              // 0x00719a28    90
                         nop                                                              // 0x00719a29    90
                         nop                                                              // 0x00719a2a    90
                         nop                                                              // 0x00719a2b    90
                         nop                                                              // 0x00719a2c    90
                         nop                                                              // 0x00719a2d    90
                         nop                                                              // 0x00719a2e    90
                         nop                                                              // 0x00719a2f    90
_jmp_addr_0x00719a30:    push               0x00719a40                                    // 0x00719a30    68409a7100
                         call               _atexit                                       // 0x00719a35    e857bd0a00
                         pop                ecx                                           // 0x00719a3a    59
                         ret                                                              // 0x00719a3b    c3
                         nop                                                              // 0x00719a3c    90
                         nop                                                              // 0x00719a3d    90
                         nop                                                              // 0x00719a3e    90
                         nop                                                              // 0x00719a3f    90
                         {disp32} mov       cl, byte ptr [data_bytes + 0x3d3730]          // 0x00719a40    8a0d3097d900
                         mov                al, 0x01                                      // 0x00719a46    b001
                         test               al, cl                                        // 0x00719a48    84c8
                         {disp8} jne        _jmp_addr_0x00719a72                          // 0x00719a4a    7526
                         push               esi                                           // 0x00719a4c    56
                         or.s               cl, al                                        // 0x00719a4d    0ac8
                         push               edi                                           // 0x00719a4f    57
                         {disp32} mov       byte ptr [data_bytes + 0x3d3730], cl          // 0x00719a50    880d3097d900
                         mov                esi, 0x00d99b88                               // 0x00719a56    be889bd900
                         mov                edi, 0x00000004                               // 0x00719a5b    bf04000000
_jmp_addr_0x00719a60:    sub                esi, 0x00000114                               // 0x00719a60    81ee14010000
                         mov.s              ecx, esi                                      // 0x00719a66    8bce
                         call               _jmp_addr_0x00436960                          // 0x00719a68    e8f3ced1ff
                         dec                edi                                           // 0x00719a6d    4f
                         {disp8} jne        _jmp_addr_0x00719a60                          // 0x00719a6e    75f0
                         pop                edi                                           // 0x00719a70    5f
                         pop                esi                                           // 0x00719a71    5e
_jmp_addr_0x00719a72:    ret                                                              // 0x00719a72    c3
                         nop                                                              // 0x00719a73    90
                         nop                                                              // 0x00719a74    90
                         nop                                                              // 0x00719a75    90
                         nop                                                              // 0x00719a76    90
                         nop                                                              // 0x00719a77    90
                         nop                                                              // 0x00719a78    90
                         nop                                                              // 0x00719a79    90
                         nop                                                              // 0x00719a7a    90
                         nop                                                              // 0x00719a7b    90
                         nop                                                              // 0x00719a7c    90
                         nop                                                              // 0x00719a7d    90
                         nop                                                              // 0x00719a7e    90
                         nop                                                              // 0x00719a7f    90
??_GGShowNeedsInfo@@UAEPAXI@Z:
                         push               esi                                           // 0x00719a80    56
                         mov.s              esi, ecx                                      // 0x00719a81    8bf1
                         call               _jmp_addr_0x00436960                          // 0x00719a83    e8d8ced1ff
                         test               byte ptr [esp + 0x08], 0x01                   // 0x00719a88    f644240801
                         {disp8} je         _jmp_addr_0x00719a9d                          // 0x00719a8d    740e
                         push               0x00000114                                    // 0x00719a8f    6814010000
                         push               esi                                           // 0x00719a94    56
                         call               ??3Base@@SAXPAXK@Z                          // 0x00719a95    e8d6ced1ff
                         add                esp, 0x08                                     // 0x00719a9a    83c408
_jmp_addr_0x00719a9d:    mov.s              eax, esi                                      // 0x00719a9d    8bc6
                         pop                esi                                           // 0x00719a9f    5e
                         ret                0x0004                                        // 0x00719aa0    c20400
                         nop                                                              // 0x00719aa3    90
                         nop                                                              // 0x00719aa4    90
                         nop                                                              // 0x00719aa5    90
                         nop                                                              // 0x00719aa6    90
                         nop                                                              // 0x00719aa7    90
                         nop                                                              // 0x00719aa8    90
                         nop                                                              // 0x00719aa9    90
                         nop                                                              // 0x00719aaa    90
                         nop                                                              // 0x00719aab    90
                         nop                                                              // 0x00719aac    90
                         nop                                                              // 0x00719aad    90
                         nop                                                              // 0x00719aae    90
                         nop                                                              // 0x00719aaf    90
@__ct__9ShowNeedsFP16GameThingWithPos@12:    push               ebx                                           // 0x00719ab0    53
                         push               ebp                                           // 0x00719ab1    55
                         push               esi                                           // 0x00719ab2    56
                         push               edi                                           // 0x00719ab3    57
                         mov.s              esi, ecx                                      // 0x00719ab4    8bf1
                         call               ??0GameThing@@QAE@XZ                          // 0x00719ab6    e8555fe5ff
                         {disp8} mov        ebp, dword ptr [esp + 0x14]                   // 0x00719abb    8b6c2414
                         {disp8} mov        dword ptr [esi + 0x14], 0x00000000            // 0x00719abf    c7461400000000
                         mov                dword ptr [esi], 0x008ec9ac                   // 0x00719ac6    c706acc98e00
                         {disp8} mov        dword ptr [esi + 0x14], ebp                   // 0x00719acc    896e14
                         mov                edi, OFFSET _GShowNeedsInfo_ARRAY_00d99738    // 0x00719acf    bf3897d900
                         {disp8} lea        ebx, dword ptr [esi + 0x18]                   // 0x00719ad4    8d5e18
_jmp_addr_0x00719ad7:    push               0x17                                          // 0x00719ad7    6a17
                         push               0x00c22168                                    // 0x00719ad9    686821c200
                         push               0x00000094                                    // 0x00719ade    6894000000
                         call               ?__nw@Base@@SAPAXK@Z                          // 0x00719ae3    e808ccd1ff
                         add                esp, 0x0c                                     // 0x00719ae8    83c40c
                         test               eax, eax                                      // 0x00719aeb    85c0
                         {disp8} je         _jmp_addr_0x00719afe                          // 0x00719aed    740f
                         push               edi                                           // 0x00719aef    57
                         push               esi                                           // 0x00719af0    56
                         {disp8} lea        ecx, dword ptr [ebp + 0x14]                   // 0x00719af1    8d4d14
                         push               ecx                                           // 0x00719af4    51
                         mov.s              ecx, eax                                      // 0x00719af5    8bc8
                         call               @__ct__16ShowNeedsVisualsFRC9MapCoordsP9GameThingPC14GShowNeedsInfo@20                          // 0x00719af7    e864020000
                         {disp8} jmp        _jmp_addr_0x00719b00                          // 0x00719afc    eb02
_jmp_addr_0x00719afe:    xor.s              eax, eax                                      // 0x00719afe    33c0
_jmp_addr_0x00719b00:    test               eax, eax                                      // 0x00719b00    85c0
                         mov                dword ptr [ebx], eax                          // 0x00719b02    8903
                         {disp8} je         _jmp_addr_0x00719b17                          // 0x00719b04    7411
                         add                edi, 0x00000114                               // 0x00719b06    81c714010000
                         add                ebx, 0x04                                     // 0x00719b0c    83c304
                         cmp                edi, 0x00d99a74                               // 0x00719b0f    81ff749ad900
                         .byte              0x72, 0xc0// {disp8} jb _jmp_addr_0x00719ad7  // 0x00719b15    72c0
_jmp_addr_0x00719b17:    pop                edi                                           // 0x00719b17    5f
                         mov.s              eax, esi                                      // 0x00719b18    8bc6
                         pop                esi                                           // 0x00719b1a    5e
                         pop                ebp                                           // 0x00719b1b    5d
                         pop                ebx                                           // 0x00719b1c    5b
                         ret                0x0004                                        // 0x00719b1d    c20400
?ToBeDeleted@ShowNeeds@@UAEXH@Z:
                         push               ebx                                           // 0x00719b20    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]                   // 0x00719b21    8b5c2408
                         push               ebp                                           // 0x00719b25    55
                         push               esi                                           // 0x00719b26    56
                         mov.s              ebp, ecx                                      // 0x00719b27    8be9
                         push               edi                                           // 0x00719b29    57
                         {disp8} lea        esi, dword ptr [ebp + 0x18]                   // 0x00719b2a    8d7518
                         mov                edi, 0x00000003                               // 0x00719b2d    bf03000000
_jmp_addr_0x00719b32:    mov                ecx, dword ptr [esi]                          // 0x00719b32    8b0e
                         test               ecx, ecx                                      // 0x00719b34    85c9
                         {disp8} je         _jmp_addr_0x00719b3e                          // 0x00719b36    7406
                         mov                eax, dword ptr [ecx]                          // 0x00719b38    8b01
                         push               ebx                                           // 0x00719b3a    53
                         call               dword ptr [eax + 0xc]                         // 0x00719b3b    ff500c
_jmp_addr_0x00719b3e:    add                esi, 0x04                                     // 0x00719b3e    83c604
                         dec                edi                                           // 0x00719b41    4f
                         {disp8} jne        _jmp_addr_0x00719b32                          // 0x00719b42    75ee
                         push               ebx                                           // 0x00719b44    53
                         mov.s              ecx, ebp                                      // 0x00719b45    8bcd
                         call                ?ToBeDeleted@GameThing@@UAEXH@Z              // 0x00719b47    e82460e5ff
                         pop                edi                                           // 0x00719b4c    5f
                         pop                esi                                           // 0x00719b4d    5e
                         pop                ebp                                           // 0x00719b4e    5d
                         pop                ebx                                           // 0x00719b4f    5b
                         ret                0x0004                                        // 0x00719b50    c20400
                         nop                                                              // 0x00719b53    90
                         nop                                                              // 0x00719b54    90
                         nop                                                              // 0x00719b55    90
                         nop                                                              // 0x00719b56    90
                         nop                                                              // 0x00719b57    90
                         nop                                                              // 0x00719b58    90
                         nop                                                              // 0x00719b59    90
                         nop                                                              // 0x00719b5a    90
                         nop                                                              // 0x00719b5b    90
                         nop                                                              // 0x00719b5c    90
                         nop                                                              // 0x00719b5d    90
                         nop                                                              // 0x00719b5e    90
                         nop                                                              // 0x00719b5f    90
?Create@ShowNeeds@@SAPAV1@PAVGameThingWithPos@@@Z:
                                            push               0x31                                          // 0x00719b60    6a31
                         push               0x00c22168                                    // 0x00719b62    686821c200
                         push               0x24                                          // 0x00719b67    6a24
                         call               ?__nw@Base@@SAPAXK@Z                          // 0x00719b69    e882cbd1ff
                         add                esp, 0x0c                                     // 0x00719b6e    83c40c
                         test               eax, eax                                      // 0x00719b71    85c0
                         {disp8} je         _jmp_addr_0x00719b85                          // 0x00719b73    7410
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x00719b75    8b4c2404
                         push               ecx                                           // 0x00719b79    51
                         mov.s              ecx, eax                                      // 0x00719b7a    8bc8
                         call               @__ct__9ShowNeedsFP16GameThingWithPos@12      // 0x00719b7c    e82fffffff
                         test               eax, eax                                      // 0x00719b81    85c0
                         {disp8} jne        _jmp_addr_0x00719b87                          // 0x00719b83    7502
_jmp_addr_0x00719b85:    xor.s              eax, eax                                      // 0x00719b85    33c0
_jmp_addr_0x00719b87:    ret                                                              // 0x00719b87    c3
                         nop                                                              // 0x00719b88    90
                         nop                                                              // 0x00719b89    90
                         nop                                                              // 0x00719b8a    90
                         nop                                                              // 0x00719b8b    90
                         nop                                                              // 0x00719b8c    90
                         nop                                                              // 0x00719b8d    90
                         nop                                                              // 0x00719b8e    90
                         nop                                                              // 0x00719b8f    90
_jmp_addr_0x00719b90:    push               ecx                                           // 0x00719b90    51
                         push               esi                                           // 0x00719b91    56
                         mov.s              esi, ecx                                      // 0x00719b92    8bf1
                         {disp8} mov        ecx, dword ptr [esi + 0x14]                   // 0x00719b94    8b4e14
                         test               ecx, ecx                                      // 0x00719b97    85c9
                         {disp8} je         _jmp_addr_0x00719bfb                          // 0x00719b99    7460
                         mov                eax, dword ptr [ecx]                          // 0x00719b9b    8b01
                         call               dword ptr [eax + 0x2c]                        // 0x00719b9d    ff502c
                         cmp                eax, 0x01                                     // 0x00719ba0    83f801
                         {disp8} jne        _jmp_addr_0x00719bfb                          // 0x00719ba3    7556
                         push               edi                                           // 0x00719ba5    57
                         xor.s              edi, edi                                      // 0x00719ba6    33ff
_jmp_addr_0x00719ba8:    mov.s              eax, edi                                      // 0x00719ba8    8bc7
                         sub                eax, 0x00                                     // 0x00719baa    83e800
                         {disp8} je         _jmp_addr_0x00719bcf                          // 0x00719bad    7420
                         dec                eax                                           // 0x00719baf    48
                         {disp8} je         _jmp_addr_0x00719bc2                          // 0x00719bb0    7410
                         dec                eax                                           // 0x00719bb2    48
                         {disp8} jne        _jmp_addr_0x00719bde                          // 0x00719bb3    7529
                         {disp8} mov        ecx, dword ptr [esi + 0x14]                   // 0x00719bb5    8b4e14
                         mov                edx, dword ptr [ecx]                          // 0x00719bb8    8b11
                         call               dword ptr [edx + 0x428]                       // 0x00719bba    ff9228040000
                         {disp8} jmp        _jmp_addr_0x00719bda                          // 0x00719bc0    eb18
_jmp_addr_0x00719bc2:    {disp8} mov        ecx, dword ptr [esi + 0x14]                   // 0x00719bc2    8b4e14
                         mov                eax, dword ptr [ecx]                          // 0x00719bc5    8b01
                         call               dword ptr [eax + 0x424]                       // 0x00719bc7    ff9024040000
                         {disp8} jmp        _jmp_addr_0x00719bda                          // 0x00719bcd    eb0b
_jmp_addr_0x00719bcf:    {disp8} mov        ecx, dword ptr [esi + 0x14]                   // 0x00719bcf    8b4e14
                         mov                edx, dword ptr [ecx]                          // 0x00719bd2    8b11
                         call               dword ptr [edx + 0x420]                       // 0x00719bd4    ff9220040000
_jmp_addr_0x00719bda:    {disp8} fstp       dword ptr [esp + 0x08]                        // 0x00719bda    d95c2408
_jmp_addr_0x00719bde:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x00719bde    8b442408
                         {disp8} mov        ecx, dword ptr [esi + edi * 0x4 + 0x18]       // 0x00719be2    8b4cbe18
                         push               eax                                           // 0x00719be6    50
                         call               _jmp_addr_0x00719e80                          // 0x00719be7    e894020000
                         inc                edi                                           // 0x00719bec    47
                         cmp                edi, 0x03                                     // 0x00719bed    83ff03
                         .byte              0x72, 0xb6// {disp8} jb _jmp_addr_0x00719ba8  // 0x00719bf0    72b6
                         pop                edi                                           // 0x00719bf2    5f
                         mov                eax, 0x00000001                               // 0x00719bf3    b801000000
                         pop                esi                                           // 0x00719bf8    5e
                         pop                ecx                                           // 0x00719bf9    59
                         ret                                                              // 0x00719bfa    c3
_jmp_addr_0x00719bfb:    mov                edx, dword ptr [esi]                          // 0x00719bfb    8b16
                         push               0x0                                           // 0x00719bfd    6a00
                         mov.s              ecx, esi                                      // 0x00719bff    8bce
                         call               dword ptr [edx + 0xc]                         // 0x00719c01    ff520c
                         mov                eax, 0x00000003                               // 0x00719c04    b803000000
                         pop                esi                                           // 0x00719c09    5e
                         pop                ecx                                           // 0x00719c0a    59
                         ret                                                              // 0x00719c0b    c3
                         nop                                                              // 0x00719c0c    90
                         nop                                                              // 0x00719c0d    90
                         nop                                                              // 0x00719c0e    90
                         nop                                                              // 0x00719c0f    90
_jmp_addr_0x00719c10:    push               esi                                           // 0x00719c10    56
                         push               edi                                           // 0x00719c11    57
                         xor.s              esi, esi                                      // 0x00719c12    33f6
                         {disp8} lea        edi, dword ptr [ecx + 0x18]                   // 0x00719c14    8d7918
_jmp_addr_0x00719c17:    mov                ecx, dword ptr [edi]                          // 0x00719c17    8b0f
                         push               esi                                           // 0x00719c19    56
                         call               _jmp_addr_0x00719e90                          // 0x00719c1a    e871020000
                         inc                esi                                           // 0x00719c1f    46
                         add                edi, 0x04                                     // 0x00719c20    83c704
                         cmp                esi, 0x03                                     // 0x00719c23    83fe03
                         .byte              0x72, 0xef// {disp8} jb _jmp_addr_0x00719c17  // 0x00719c26    72ef
                         pop                edi                                           // 0x00719c28    5f
                         pop                esi                                           // 0x00719c29    5e
                         ret                                                              // 0x00719c2a    c3
                         nop                                                              // 0x00719c2b    90
                         nop                                                              // 0x00719c2c    90
                         nop                                                              // 0x00719c2d    90
                         nop                                                              // 0x00719c2e    90
                         nop                                                              // 0x00719c2f    90
?GetPlayer@ShowNeeds@@UAEPAVGPlayer@@XZ:
                         {disp8} mov        ecx, dword ptr [ecx + 0x14]                   // 0x00719c30    8b4914
                         test               ecx, ecx                                      // 0x00719c33    85c9
                         {disp8} je         _jmp_addr_0x00719c3c                          // 0x00719c35    7405
                         mov                eax, dword ptr [ecx]                          // 0x00719c37    8b01
                         {disp8} jmp        dword ptr [eax + 0x1c]                        // 0x00719c39    ff601c
_jmp_addr_0x00719c3c:    xor.s              eax, eax                                      // 0x00719c3c    33c0
                         ret                                                              // 0x00719c3e    c3
                         nop                                                              // 0x00719c3f    90
                         sub                esp, 0x10                                     // 0x00719c40    83ec10
                         push               esi                                           // 0x00719c43    56
                         push               edi                                           // 0x00719c44    57
                         mov.s              edi, ecx                                      // 0x00719c45    8bf9
                         {disp8} mov        esi, dword ptr [edi + 0x14]                   // 0x00719c47    8b7714
                         {disp8} mov        eax, dword ptr [esi + 0x1c]                   // 0x00719c4a    8b461c
                         add                esi, 0x14                                     // 0x00719c4d    83c614
                         mov.s              ecx, esi                                      // 0x00719c50    8bce
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x00719c52    89442408
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x00719c56    e835940e00
                         {disp8} fadd       dword ptr [esp + 0x08]                        // 0x00719c5b    d8442408
                         {disp8} mov        ecx, dword ptr [edi + 0x14]                   // 0x00719c5f    8b4f14
                         mov                edx, dword ptr [ecx]                          // 0x00719c62    8b11
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00719c64    d95c2410
                         fild               dword ptr [esi]                               // 0x00719c68    db06
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00719c6a    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x00719c70    d95c240c
                         {disp8} fild       dword ptr [esi + 0x04]                        // 0x00719c74    db4604
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00719c77    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00719c7d    d95c2414
                         call               dword ptr [edx + 0x42c]                       // 0x00719c81    ff922c040000
                         {disp8} fadd       dword ptr [esp + 0x10]                        // 0x00719c87    d8442410
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x00719c8b    8b44241c
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x00719c8f    d944240c
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x00719c93    8b4c2414
                         fstp               dword ptr [eax]                               // 0x00719c97    d918
                         pop                edi                                           // 0x00719c99    5f
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x00719c9a    894808
                         {disp8} fstp       dword ptr [eax + 0x04]                        // 0x00719c9d    d95804
                         pop                esi                                           // 0x00719ca0    5e
                         add                esp, 0x10                                     // 0x00719ca1    83c410
                         ret                0x0004                                        // 0x00719ca4    c20400
                         nop                                                              // 0x00719ca7    90
                         nop                                                              // 0x00719ca8    90
                         nop                                                              // 0x00719ca9    90
                         nop                                                              // 0x00719caa    90
                         nop                                                              // 0x00719cab    90
                         nop                                                              // 0x00719cac    90
                         nop                                                              // 0x00719cad    90
                         nop                                                              // 0x00719cae    90
                         nop                                                              // 0x00719caf    90
?Save@ShowNeeds@@UAEIAAVGameOSFile@@@Z:
                         push               esi                                           // 0x00719cb0    56
                         push               edi                                           // 0x00719cb1    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x00719cb2    8b7c240c
                         mov.s              esi, ecx                                      // 0x00719cb6    8bf1
                         push               edi                                           // 0x00719cb8    57
                         call               ?Save@GameThing@@QAEIAAVGGameOSFile@@@Z       // 0x00719cb9    e8225fe5ff
                         test               eax, eax                                      // 0x00719cbe    85c0
                         {disp8} je         _jmp_addr_0x00719ce4                          // 0x00719cc0    7422
                         {disp8} mov        eax, dword ptr [esi + 0x14]                   // 0x00719cc2    8b4614
                         push               eax                                           // 0x00719cc5    50
                         mov.s              ecx, edi                                      // 0x00719cc6    8bcf
                         call               ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x00719cc8    e84381e4ff
                         push               0x3                                           // 0x00719ccd    6a03
                         add                esi, 0x18                                     // 0x00719ccf    83c618
                         push               esi                                           // 0x00719cd2    56
                         mov.s              ecx, edi                                      // 0x00719cd3    8bcf
                         call               _jmp_addr_0x00562240                          // 0x00719cd5    e86685e4ff
                         pop                edi                                           // 0x00719cda    5f
                         mov                eax, 0x00000001                               // 0x00719cdb    b801000000
                         pop                esi                                           // 0x00719ce0    5e
                         ret                0x0004                                        // 0x00719ce1    c20400
_jmp_addr_0x00719ce4:    pop                edi                                           // 0x00719ce4    5f
                         xor.s              eax, eax                                      // 0x00719ce5    33c0
                         pop                esi                                           // 0x00719ce7    5e
                         ret                0x0004                                        // 0x00719ce8    c20400
                         nop                                                              // 0x00719ceb    90
                         nop                                                              // 0x00719cec    90
                         nop                                                              // 0x00719ced    90
                         nop                                                              // 0x00719cee    90
                         nop                                                              // 0x00719cef    90
?Load@ShowNeeds@@UAEIAAVGameOSFile@@@Z:
                         push               esi                                           // 0x00719cf0    56
                         push               edi                                           // 0x00719cf1    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x00719cf2    8b7c240c
                         mov.s              esi, ecx                                      // 0x00719cf6    8bf1
                         push               edi                                           // 0x00719cf8    57
                         call               ?Load@GameThing@@QAEIAAVGGameOSFile@@@Z       // 0x00719cf9    e8f25fe5ff
                         test               eax, eax                                      // 0x00719cfe    85c0
                         {disp8} je         _jmp_addr_0x00719d22                          // 0x00719d00    7420
                         {disp8} lea        eax, dword ptr [esi + 0x14]                   // 0x00719d02    8d4614
                         push               eax                                           // 0x00719d05    50
                         mov.s              ecx, edi                                      // 0x00719d06    8bcf
                         call               @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x00719d08    e87384e4ff
                         add                esi, 0x18                                     // 0x00719d0d    83c618
                         push               esi                                           // 0x00719d10    56
                         mov.s              ecx, edi                                      // 0x00719d11    8bcf
                         call               _jmp_addr_0x005622b0                          // 0x00719d13    e89885e4ff
                         pop                edi                                           // 0x00719d18    5f
                         mov                eax, 0x00000001                               // 0x00719d19    b801000000
                         pop                esi                                           // 0x00719d1e    5e
                         ret                0x0004                                        // 0x00719d1f    c20400
_jmp_addr_0x00719d22:    pop                edi                                           // 0x00719d22    5f
                         xor.s              eax, eax                                      // 0x00719d23    33c0
                         pop                esi                                           // 0x00719d25    5e
                         ret                0x0004                                        // 0x00719d26    c20400
                         nop                                                              // 0x00719d29    90
                         nop                                                              // 0x00719d2a    90
                         nop                                                              // 0x00719d2b    90
                         nop                                                              // 0x00719d2c    90
                         nop                                                              // 0x00719d2d    90
                         nop                                                              // 0x00719d2e    90
                         nop                                                              // 0x00719d2f    90
?GetShowNeedsPos@ShowNeeds@@UAEIIPAUMapCoords@@@Z:
                         {disp8} mov        eax, dword ptr [ecx + 0x14]                   // 0x00719d30    8b4114
                         {disp32} mov       ecx, dword ptr [eax + 0x00000100]             // 0x00719d33    8b8800010000
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x00719d39    8b442408
                         mov                edx, dword ptr [ecx]                          // 0x00719d3d    8b11
                         push               eax                                           // 0x00719d3f    50
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x00719d40    8b442408
                         push               eax                                           // 0x00719d44    50
                         call               dword ptr [edx + 0xe4]                        // 0x00719d45    ff92e4000000
                         mov                eax, 0x00000001                               // 0x00719d4b    b801000000
                         ret                0x0008                                        // 0x00719d50    c20800
                         nop                                                              // 0x00719d53    90
                         nop                                                              // 0x00719d54    90
                         nop                                                              // 0x00719d55    90
                         nop                                                              // 0x00719d56    90
                         nop                                                              // 0x00719d57    90
                         nop                                                              // 0x00719d58    90
                         nop                                                              // 0x00719d59    90
                         nop                                                              // 0x00719d5a    90
                         nop                                                              // 0x00719d5b    90
                         nop                                                              // 0x00719d5c    90
                         nop                                                              // 0x00719d5d    90
                         nop                                                              // 0x00719d5e    90
                         nop                                                              // 0x00719d5f    90
@__ct__16ShowNeedsVisualsFRC9MapCoordsP9GameThingPC14GShowNeedsInfo@20:    {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00719d60    8b44240c
                         push               esi                                           // 0x00719d64    56
                         mov.s              esi, ecx                                      // 0x00719d65    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x00719d67    8b4c2408
                         push               eax                                           // 0x00719d6b    50
                         push               ecx                                           // 0x00719d6c    51
                         mov.s              ecx, esi                                      // 0x00719d6d    8bce
                         call               @__ct__6ObjectFRC9MapCoordsPC11GObjectInfo@16 // 0x00719d6f    e8acc7f1ff
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x00719d74    8b54240c
                         xor.s              eax, eax                                      // 0x00719d78    33c0
                         {disp8} mov        dword ptr [esi + 0x60], eax                   // 0x00719d7a    894660
                         {disp8} mov        dword ptr [esi + 0x5c], eax                   // 0x00719d7d    89465c
                         mov                dword ptr [esi], 0x008ecaac                   // 0x00719d80    c706acca8e00
                         {disp8} mov        dword ptr [esi + 0x60], edx                   // 0x00719d86    895660
                         {disp8} mov        dword ptr [esi + 0x68], eax                   // 0x00719d89    894668
                         {disp8} mov        dword ptr [esi + 0x64], eax                   // 0x00719d8c    894664
                         {disp32} mov       dword ptr [esi + 0x00000080], eax             // 0x00719d8f    898680000000
                         {disp8} mov        dword ptr [esi + 0x7c], eax                   // 0x00719d95    89467c
                         {disp8} mov        dword ptr [esi + 0x78], eax                   // 0x00719d98    894678
                         {disp32} mov       dword ptr [esi + 0x00000090], eax             // 0x00719d9b    898690000000
                         {disp32} mov       dword ptr [esi + 0x0000008c], eax             // 0x00719da1    89868c000000
                         {disp8} mov        dword ptr [esi + 0x74], eax                   // 0x00719da7    894674
                         {disp32} mov       dword ptr [esi + 0x00000088], eax             // 0x00719daa    898688000000
                         {disp8} mov        dword ptr [esi + 0x70], eax                   // 0x00719db0    894670
                         {disp32} mov       dword ptr [esi + 0x00000084], eax             // 0x00719db3    898684000000
                         {disp8} mov        dword ptr [esi + 0x6c], eax                   // 0x00719db9    89466c
                         {disp8} lea        eax, dword ptr [esi + 0x14]                   // 0x00719dbc    8d4614
                         push               eax                                           // 0x00719dbf    50
                         mov.s              ecx, esi                                      // 0x00719dc0    8bce
                         call               ?CallVirtualFunctionsForCreation@ShowNeedsVisuals@@UAEXABUMapCoords@@@Z  // 0x00719dc2    e839000000
                         mov.s              eax, esi                                      // 0x00719dc7    8bc6
                         pop                esi                                           // 0x00719dc9    5e
                         ret                0x000c                                        // 0x00719dca    c20c00
                         nop                                                              // 0x00719dcd    90
                         nop                                                              // 0x00719dce    90
                         nop                                                              // 0x00719dcf    90
?ToBeDeleted@ShowNeedsVisuals@@UAEXH@Z:
                         push               esi                                           // 0x00719dd0    56
                         mov.s              esi, ecx                                      // 0x00719dd1    8bf1
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x00719dd3    8b4e40
                         test               ecx, ecx                                      // 0x00719dd6    85c9
                         {disp8} je         _jmp_addr_0x00719de6                          // 0x00719dd8    740c
                         mov                eax, dword ptr [ecx]                          // 0x00719dda    8b01
                         call               dword ptr [eax + 4]                           // 0x00719ddc    ff5004
                         {disp8} mov        dword ptr [esi + 0x40], 0x00000000            // 0x00719ddf    c7464000000000
_jmp_addr_0x00719de6:    {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x00719de6    8b4c2408
                         push               ecx                                           // 0x00719dea    51
                         mov.s              ecx, esi                                      // 0x00719deb    8bce
                         call               ?ToBeDeleted@GameThingWithPos@@UAEXH@Z        // 0x00719ded    e80e60e5ff
                         pop                esi                                           // 0x00719df2    5e
                         ret                0x0004                                        // 0x00719df3    c20400
                         nop                                                              // 0x00719df6    90
                         nop                                                              // 0x00719df7    90
                         nop                                                              // 0x00719df8    90
                         nop                                                              // 0x00719df9    90
                         nop                                                              // 0x00719dfa    90
                         nop                                                              // 0x00719dfb    90
                         nop                                                              // 0x00719dfc    90
                         nop                                                              // 0x00719dfd    90
                         nop                                                              // 0x00719dfe    90
                         nop                                                              // 0x00719dff    90
?CallVirtualFunctionsForCreation@ShowNeedsVisuals@@UAEXABUMapCoords@@@Z:
                         push               esi                                           // 0x00719e00    56
                         mov.s              esi, ecx                                      // 0x00719e01    8bf1
                         mov                eax, dword ptr [esi]                          // 0x00719e03    8b06
                         call               dword ptr [eax + 0x608]                       // 0x00719e05    ff9008060000
                         push               eax                                           // 0x00719e0b    50
                         call               ?Get3DType@Object@@SA?AW4LH3DObject__ObjectType@@W4MESH_LIST@@@Z                // 0x00719e0c    e8afc6f1ff
                         push               eax                                           // 0x00719e11    50
                         call               ?Create@Game3DObject@@SAPAV1@W4ObjectType@LH3DObject@@@Z                          // 0x00719e12    e8990df2ff
                         add                esp, 0x08                                     // 0x00719e17    83c408
                         test               eax, eax                                      // 0x00719e1a    85c0
                         {disp8} mov        dword ptr [esi + 0x40], eax                   // 0x00719e1c    894640
                         {disp8} je         _jmp_addr_0x00719e72                          // 0x00719e1f    7451
                         push               edi                                           // 0x00719e21    57
                         mov                edi, dword ptr [eax]                          // 0x00719e22    8b38
                         mov                edx, 0x00000001                               // 0x00719e24    ba01000000
                         mov.s              ecx, eax                                      // 0x00719e29    8bc8
                         call               dword ptr [edi + 0x58]                        // 0x00719e2b    ff5758
                         mov                edx, dword ptr [esi]                          // 0x00719e2e    8b16
                         mov.s              ecx, esi                                      // 0x00719e30    8bce
                         call               dword ptr [edx + 0x608]                       // 0x00719e32    ff9208060000
                         test               eax, eax                                      // 0x00719e38    85c0
                         {disp32} mov       edx, dword ptr [?g_current_pack@LH3DMesh@@2PAULH3DPack@@A]        // 0x00719e3a    8b1534fee900
                         {disp8} jl         _jmp_addr_0x00719e46                          // 0x00719e40    7c04
                         cmp                eax, dword ptr [edx]                          // 0x00719e42    3b02
                         {disp8} jl         _jmp_addr_0x00719e48                          // 0x00719e44    7c02
_jmp_addr_0x00719e46:    xor.s              eax, eax                                      // 0x00719e46    33c0
_jmp_addr_0x00719e48:    {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x00719e48    8b4e40
                         mov                edi, dword ptr [ecx]                          // 0x00719e4b    8b39
                         {disp8} mov        edx, dword ptr [edx + eax * 0x4 + 0x04]       // 0x00719e4d    8b548204
                         push               0x0                                           // 0x00719e51    6a00
                         push               0x0                                           // 0x00719e53    6a00
                         call               dword ptr [edi + 0xf4]                        // 0x00719e55    ff97f4000000
                         mov                eax, dword ptr [esi]                          // 0x00719e5b    8b06
                         push               0x3f800000                                    // 0x00719e5d    680000803f
                         mov.s              ecx, esi                                      // 0x00719e62    8bce
                         {disp8} mov        dword ptr [esi + 0x54], 0x00000000            // 0x00719e64    c7465400000000
                         call               dword ptr [eax + 0x124]                       // 0x00719e6b    ff9024010000
                         pop                edi                                           // 0x00719e71    5f
_jmp_addr_0x00719e72:    pop                esi                                           // 0x00719e72    5e
                         ret                0x0004                                        // 0x00719e73    c20400
                         nop                                                              // 0x00719e76    90
                         nop                                                              // 0x00719e77    90
                         nop                                                              // 0x00719e78    90
                         nop                                                              // 0x00719e79    90
                         nop                                                              // 0x00719e7a    90
                         nop                                                              // 0x00719e7b    90
                         nop                                                              // 0x00719e7c    90
                         nop                                                              // 0x00719e7d    90
                         nop                                                              // 0x00719e7e    90
                         nop                                                              // 0x00719e7f    90
_jmp_addr_0x00719e80:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00719e80    8b442404
                         {disp8} mov        dword ptr [ecx + 0x5c], eax                   // 0x00719e84    89415c
                         mov                eax, 0x00000001                               // 0x00719e87    b801000000
                         ret                0x0004                                        // 0x00719e8c    c20400
                         nop                                                              // 0x00719e8f    90
_jmp_addr_0x00719e90:    sub                esp, 0x5c                                     // 0x00719e90    83ec5c
                         push               ebx                                           // 0x00719e93    53
                         push               ebp                                           // 0x00719e94    55
                         push               esi                                           // 0x00719e95    56
                         mov.s              ebx, ecx                                      // 0x00719e96    8bd9
                         {disp8} mov        eax, dword ptr [ebx + 0x40]                   // 0x00719e98    8b4340
                         push               edi                                           // 0x00719e9b    57
                         xor.s              edi, edi                                      // 0x00719e9c    33ff
                         cmp.s              eax, edi                                      // 0x00719e9e    3bc7
                         {disp8} je         _jmp_addr_0x00719eb0                          // 0x00719ea0    740e
                         mov                ecx, 0x0000002d                               // 0x00719ea2    b92d000000
                         {disp8} mov        dword ptr [eax + 0x60], ecx                   // 0x00719ea7    894860
                         {disp8} mov        eax, dword ptr [ebx + 0x40]                   // 0x00719eaa    8b4340
                         {disp8} mov        dword ptr [eax + 0x5c], ecx                   // 0x00719ead    89485c
_jmp_addr_0x00719eb0:    {disp8} mov        ecx, dword ptr [ebx + 0x28]                   // 0x00719eb0    8b4b28
                         {disp8} fld        dword ptr [ebx + 0x5c]                        // 0x00719eb3    d9435c
                         {disp32} fcomp     dword ptr [ecx + 0x0000010c]                  // 0x00719eb6    d8990c010000
                         fnstsw             ax                                            // 0x00719ebc    dfe0
                         test               ah, 0x41                                      // 0x00719ebe    f6c441
                         {disp32} jne       _jmp_addr_0x0071a16c                          // 0x00719ec1    0f85a5020000
                         cmp                dword ptr [ebx + 0x40], edi                   // 0x00719ec7    397b40
                         {disp32} je        _jmp_addr_0x0071a1a2                          // 0x00719eca    0f84d2020000
                         mov.s              ecx, ebx                                      // 0x00719ed0    8bcb
                         call               _jmp_addr_0x0071a200                          // 0x00719ed2    e829030000
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00719ed7    d95c2410
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x00719edb    8b542410
                         push               0x3f800000                                    // 0x00719edf    680000803f
                         push               edi                                           // 0x00719ee4    57
                         {disp8} lea        esi, dword ptr [ebx + 0x64]                   // 0x00719ee5    8d7364
                         push               edx                                           // 0x00719ee8    52
                         mov.s              ecx, esi                                      // 0x00719ee9    8bce
                         call               @SetDestinationWithSpeedAndTime__6ZoomerFfff@20                          // 0x00719eeb    e870deceff
                         {disp32} fild      dword ptr [data_bytes + 0x4e3ec0]             // 0x00719ef0    db05c09eea00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3418]              // 0x00719ef6    d80d18c48a00
                         {disp8} fadd       dword ptr [esi + 0x14]                        // 0x00719efc    d84614
                         {disp8} fcom       dword ptr [esi + 0x18]                        // 0x00719eff    d85618
                         {disp8} fst        dword ptr [esi + 0x14]                        // 0x00719f02    d95614
                         fnstsw             ax                                            // 0x00719f05    dfe0
                         test               ah, 0x01                                      // 0x00719f07    f6c401
                         {disp8} jne        _jmp_addr_0x00719f24                          // 0x00719f0a    7518
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x00719f0c    8b4604
                         fstp               st(0)                                         // 0x00719f0f    ddd8
                         {disp8} mov        ecx, dword ptr [esi + 0x08]                   // 0x00719f11    8b4e08
                         {disp8} mov        edx, dword ptr [esi + 0x18]                   // 0x00719f14    8b5618
                         mov                dword ptr [esi], eax                          // 0x00719f17    8906
                         {disp8} mov        dword ptr [esi + 0x0c], ecx                   // 0x00719f19    894e0c
                         {disp8} mov        dword ptr [esi + 0x10], edi                   // 0x00719f1c    897e10
                         {disp8} mov        dword ptr [esi + 0x14], edx                   // 0x00719f1f    895614
                         {disp8} jmp        _jmp_addr_0x00719f79                          // 0x00719f22    eb55
_jmp_addr_0x00719f24:    fld                st(0)                                         // 0x00719f24    d9c0
                         fld                st(0)                                         // 0x00719f26    d9c0
                         fmulp              st(1), st                                     // 0x00719f28    dec9
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x00719f2a    d80db4a38a00
                         fld                st(1)                                         // 0x00719f30    d9c1
                         fmul               st, st(1)                                     // 0x00719f32    d8c9
                         {disp32} fmul      dword ptr [__real@3eaaaaab]                   // 0x00719f34    d80d6cb28a00
                         fxch               st(2)                                         // 0x00719f3a    d9ca
                         {disp8} fmul       dword ptr [esi + 0x24]                        // 0x00719f3c    d84e24
                         fld                st(1)                                         // 0x00719f3f    d9c1
                         {disp8} fmul       dword ptr [esi + 0x28]                        // 0x00719f41    d84e28
                         faddp              st(1), st                                     // 0x00719f44    dec1
                         fld                st(2)                                         // 0x00719f46    d9c2
                         {disp8} fmul       dword ptr [esi + 0x2c]                        // 0x00719f48    d84e2c
                         faddp              st(1), st                                     // 0x00719f4b    dec1
                         {disp8} fadd       dword ptr [esi + 0x20]                        // 0x00719f4d    d84620
                         {disp8} fstp       dword ptr [esi + 0x0c]                        // 0x00719f50    d95e0c
                         fld                st(0)                                         // 0x00719f53    d9c0
                         fmul               st, st(1)                                     // 0x00719f55    d8c9
                         {disp32} fmul      dword ptr [__real@3e2aaaab]                   // 0x00719f57    d80d68b28a00
                         {disp8} fmul       dword ptr [esi + 0x2c]                        // 0x00719f5d    d84e2c
                         {disp8} fld        dword ptr [esi + 0x20]                        // 0x00719f60    d94620
                         {disp8} fmul       dword ptr [esi + 0x14]                        // 0x00719f63    d84e14
                         faddp              st(1), st                                     // 0x00719f66    dec1
                         fxch               st(2)                                         // 0x00719f68    d9ca
                         {disp8} fmul       dword ptr [esi + 0x28]                        // 0x00719f6a    d84e28
                         faddp              st(2), st                                     // 0x00719f6d    dec2
                         {disp8} fmul       dword ptr [esi + 0x24]                        // 0x00719f6f    d84e24
                         faddp              st(1), st                                     // 0x00719f72    dec1
                         {disp8} fadd       dword ptr [esi + 0x1c]                        // 0x00719f74    d8461c
                         fstp               dword ptr [esi]                               // 0x00719f77    d91e
_jmp_addr_0x00719f79:    mov                eax, dword ptr [esi]                          // 0x00719f79    8b06
                         {disp8} mov        ecx, dword ptr [ebx + 0x28]                   // 0x00719f7b    8b4b28
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00719f7e    89442410
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00719f82    d9442410
                         {disp32} fmul      dword ptr [ecx + 0x00000110]                  // 0x00719f86    d88910010000
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x00719f8c    8d4c2424
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00719f90    d95c2414
                         call               ??0MapCoords@@QAE@XZ                          // 0x00719f94    e8c77bd2ff
                         {disp8} mov        ecx, dword ptr [ebx + 0x60]                   // 0x00719f99    8b4b60
                         mov                edx, dword ptr [ecx]                          // 0x00719f9c    8b11
                         {disp8} lea        eax, dword ptr [esp + 0x24]                   // 0x00719f9e    8d442424
                         push               eax                                           // 0x00719fa2    50
                         {disp8} mov        eax, dword ptr [esp + 0x74]                   // 0x00719fa3    8b442474
                         push               eax                                           // 0x00719fa7    50
                         call               dword ptr [edx + 0xe4]                        // 0x00719fa8    ff92e4000000
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x00719fae    8b4c2414
                         {disp8} mov        dword ptr [esp + 0x2c], ecx                   // 0x00719fb2    894c242c
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x00719fb6    8d4c2424
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x00719fba    e8d1900e00
                         fstp               st(0)                                         // 0x00719fbf    ddd8
                         {disp8} fild       dword ptr [esp + 0x24]                        // 0x00719fc1    db442424
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00719fc5    8b0d5c19d000
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00719fcb    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x00719fd1    d95c2430
                         {disp8} fild       dword ptr [esp + 0x28]                        // 0x00719fd5    db442428
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00719fd9    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x00719fdf    d95c2438
                         call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ           // 0x00719fe3    e89821e3ff
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4dbdb8]        // 0x00719fe8    8b15b81dea00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4dbdc0]        // 0x00719fee    8b0dc01dea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4dbdbc]        // 0x00719ff4    a1bc1dea00
                         {disp8} mov        esi, dword ptr [ebx + 0x40]                   // 0x00719ff9    8b7340
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x00719ffc    89542418
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x0071a000    d9442418
                         {disp8} fsub       dword ptr [esp + 0x30]                        // 0x0071a004    d8642430
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x0071a008    894c2420
                         {disp8} lea        edx, dword ptr [esp + 0x30]                   // 0x0071a00c    8d542430
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x0071a010    8944241c
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0071a014    d95c2418
                         push               edx                                           // 0x0071a018    52
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x0071a019    d9442424
                         {disp8} lea        eax, dword ptr [esp + 0x28]                   // 0x0071a01d    8d442428
                         {disp8} fsub       dword ptr [esp + 0x3c]                        // 0x0071a021    d864243c
                         push               eax                                           // 0x0071a025    50
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x0071a026    d95c2428
                         call               ?ConvertMapCoordToLandscapePoint@GLandscape@@SAPAULHPoint@@ABUMapCoords@@AAU2@@Z              // 0x0071a02a    e82197efff
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x0071a02f    d9442428
                         add                esp, 0x08                                     // 0x0071a033    83c408
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x0071a036    d9442418
                         fpatan                                                           // 0x0071a03a    d9f3
                         push               0x3f800000                                    // 0x0071a03c    680000803f
                         push               ecx                                           // 0x0071a041    51
                         {disp8} lea        edx, dword ptr [esp + 0x38]                   // 0x0071a042    8d542438
                         mov.s              ecx, esi                                      // 0x0071a046    8bce
                         {disp32} fadd      dword ptr [rdata_bytes + 0x1e8d8]             // 0x0071a048    d805d8788c00
                         fstp               dword ptr [esp]                               // 0x0071a04e    d91c24
                         call               ?SetPosition@LH3DObject@@SAXABULHPoint@@MM@Z  // 0x0071a051    e8ea90d0ff
                         {disp8} mov        ecx, dword ptr [ebx + 0x28]                   // 0x0071a056    8b4b28
                         {disp32} fld       dword ptr [ecx + 0x00000108]                  // 0x0071a059    d98108010000
                         {disp32} fsub      dword ptr [ecx + 0x0000010c]                  // 0x0071a05f    d8a10c010000
                         {disp32} fmul      dword ptr [_rdata_float0p2]                   // 0x0071a065    d80daca38a00
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0071a06b    d9442410
                         fcomp              st(1)                                         // 0x0071a06f    d8d9
                         fnstsw             ax                                            // 0x0071a071    dfe0
                         test               ah, 0x01                                      // 0x0071a073    f6c401
                         {disp32} je        _jmp_addr_0x0071a131                          // 0x0071a076    0f84b5000000
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0071a07c    d9442410
                         {disp8} mov        eax, dword ptr [ebx + 0x40]                   // 0x0071a080    8b4340
                         {disp32} fsub      dword ptr [ecx + 0x0000010c]                  // 0x0071a083    d8a10c010000
                         add                eax, 0x14                                     // 0x0071a089    83c014
                         fxch               st(1)                                         // 0x0071a08c    d9c9
                         mov.s              esi, eax                                      // 0x0071a08e    8bf0
                         {disp32} fsub      dword ptr [ecx + 0x0000010c]                  // 0x0071a090    d8a10c010000
                         mov                ecx, 0x0000000c                               // 0x0071a096    b90c000000
                         {disp8} lea        edi, dword ptr [esp + 0x3c]                   // 0x0071a09b    8d7c243c
                         fdivp              st(1), st                                     // 0x0071a09f    def9
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0071a0a1    f3a5
                         fld                st(0)                                         // 0x0071a0a3    d9c0
                         fmul               dword ptr [eax]                               // 0x0071a0a5    d808
                         fstp               dword ptr [eax]                               // 0x0071a0a7    d918
                         fld                st(0)                                         // 0x0071a0a9    d9c0
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x0071a0ab    d84804
                         {disp8} fstp       dword ptr [eax + 0x04]                        // 0x0071a0ae    d95804
                         fld                st(0)                                         // 0x0071a0b1    d9c0
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x0071a0b3    d84808
                         {disp8} fstp       dword ptr [eax + 0x08]                        // 0x0071a0b6    d95808
                         fld                st(0)                                         // 0x0071a0b9    d9c0
                         {disp8} fmul       dword ptr [eax + 0x0c]                        // 0x0071a0bb    d8480c
                         {disp8} fstp       dword ptr [eax + 0x0c]                        // 0x0071a0be    d9580c
                         fld                st(0)                                         // 0x0071a0c1    d9c0
                         {disp8} fmul       dword ptr [eax + 0x10]                        // 0x0071a0c3    d84810
                         {disp8} fstp       dword ptr [eax + 0x10]                        // 0x0071a0c6    d95810
                         fld                st(0)                                         // 0x0071a0c9    d9c0
                         {disp8} fmul       dword ptr [eax + 0x14]                        // 0x0071a0cb    d84814
                         {disp8} fstp       dword ptr [eax + 0x14]                        // 0x0071a0ce    d95814
                         fld                st(0)                                         // 0x0071a0d1    d9c0
                         {disp8} fmul       dword ptr [eax + 0x18]                        // 0x0071a0d3    d84818
                         {disp8} fstp       dword ptr [eax + 0x18]                        // 0x0071a0d6    d95818
                         fld                st(0)                                         // 0x0071a0d9    d9c0
                         {disp8} fmul       dword ptr [eax + 0x1c]                        // 0x0071a0db    d8481c
                         {disp8} fstp       dword ptr [eax + 0x1c]                        // 0x0071a0de    d9581c
                         {disp8} fmul       dword ptr [eax + 0x20]                        // 0x0071a0e1    d84820
                         {disp8} fstp       dword ptr [eax + 0x20]                        // 0x0071a0e4    d95820
                         {disp8} mov        esi, dword ptr [ebx + 0x40]                   // 0x0071a0e7    8b7340
                         {disp8} lea        edi, dword ptr [esi + 0x50]                   // 0x0071a0ea    8d7e50
                         push               edi                                           // 0x0071a0ed    57
                         {disp8} lea        ebp, dword ptr [esi + 0x4c]                   // 0x0071a0ee    8d6e4c
                         {disp8} lea        eax, dword ptr [esi + 0x38]                   // 0x0071a0f1    8d4638
                         push               ebp                                           // 0x0071a0f4    55
                         push               eax                                           // 0x0071a0f5    50
                         call               _jmp_addr_0x00801c90                          // 0x0071a0f6    e8957b0e00
                         mov                ecx, dword ptr [edi]                          // 0x0071a0fb    8b0f
                         push               ebp                                           // 0x0071a0fd    55
                         push               ecx                                           // 0x0071a0fe    51
                         {disp8} lea        eax, dword ptr [esi + 0x38]                   // 0x0071a0ff    8d4638
                         push               eax                                           // 0x0071a102    50
                         call               _jmp_addr_0x007feb30                          // 0x0071a103    e8284a0e00
                         add                esp, 0x18                                     // 0x0071a108    83c418
                         mov.s              edx, ebx                                      // 0x0071a10b    8bd3
                         mov.s              ecx, esi                                      // 0x0071a10d    8bce
                         mov                dword ptr [edi], eax                          // 0x0071a10f    8907
                         call               _jmp_addr_0x0063b5d0                          // 0x0071a111    e8ba14f2ff
                         {disp8} mov        edi, dword ptr [ebx + 0x40]                   // 0x0071a116    8b7b40
                         add                edi, 0x14                                     // 0x0071a119    83c714
                         mov                ecx, 0x0000000c                               // 0x0071a11c    b90c000000
                         {disp8} lea        esi, dword ptr [esp + 0x3c]                   // 0x0071a121    8d74243c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0071a125    f3a5
                         pop                edi                                           // 0x0071a127    5f
                         pop                esi                                           // 0x0071a128    5e
                         pop                ebp                                           // 0x0071a129    5d
                         pop                ebx                                           // 0x0071a12a    5b
                         add                esp, 0x5c                                     // 0x0071a12b    83c45c
                         ret                0x0004                                        // 0x0071a12e    c20400
_jmp_addr_0x0071a131:    {disp8} mov        esi, dword ptr [ebx + 0x40]                   // 0x0071a131    8b7340
                         fstp               st(0)                                         // 0x0071a134    ddd8
                         {disp8} lea        edi, dword ptr [esi + 0x50]                   // 0x0071a136    8d7e50
                         push               edi                                           // 0x0071a139    57
                         {disp8} lea        ebp, dword ptr [esi + 0x4c]                   // 0x0071a13a    8d6e4c
                         {disp8} lea        eax, dword ptr [esi + 0x38]                   // 0x0071a13d    8d4638
                         push               ebp                                           // 0x0071a140    55
                         push               eax                                           // 0x0071a141    50
                         call               _jmp_addr_0x00801c90                          // 0x0071a142    e8497b0e00
                         mov                edx, dword ptr [edi]                          // 0x0071a147    8b17
                         push               ebp                                           // 0x0071a149    55
                         push               edx                                           // 0x0071a14a    52
                         {disp8} lea        eax, dword ptr [esi + 0x38]                   // 0x0071a14b    8d4638
                         push               eax                                           // 0x0071a14e    50
                         call               _jmp_addr_0x007feb30                          // 0x0071a14f    e8dc490e00
                         add                esp, 0x18                                     // 0x0071a154    83c418
                         mov.s              edx, ebx                                      // 0x0071a157    8bd3
                         mov.s              ecx, esi                                      // 0x0071a159    8bce
                         mov                dword ptr [edi], eax                          // 0x0071a15b    8907
                         call               _jmp_addr_0x0063b5d0                          // 0x0071a15d    e86e14f2ff
                         pop                edi                                           // 0x0071a162    5f
                         pop                esi                                           // 0x0071a163    5e
                         pop                ebp                                           // 0x0071a164    5d
                         pop                ebx                                           // 0x0071a165    5b
                         add                esp, 0x5c                                     // 0x0071a166    83c45c
                         ret                0x0004                                        // 0x0071a169    c20400
_jmp_addr_0x0071a16c:    {disp8} fld        dword ptr [ebx + 0x5c]                        // 0x0071a16c    d9435c
                         {disp8} mov        dword ptr [ebx + 0x7c], edi                   // 0x0071a16f    897b7c
                         {disp8} fst        dword ptr [ebx + 0x68]                        // 0x0071a172    d95368
                         {disp8} mov        dword ptr [ebx + 0x78], edi                   // 0x0071a175    897b78
                         {disp8} fst        dword ptr [ebx + 0x64]                        // 0x0071a178    d95364
                         {disp32} mov       dword ptr [ebx + 0x00000090], edi             // 0x0071a17b    89bb90000000
                         {disp32} fstp      dword ptr [ebx + 0x00000080]                  // 0x0071a181    d99b80000000
                         {disp32} mov       dword ptr [ebx + 0x0000008c], edi             // 0x0071a187    89bb8c000000
                         {disp8} mov        dword ptr [ebx + 0x74], edi                   // 0x0071a18d    897b74
                         {disp32} mov       dword ptr [ebx + 0x00000088], edi             // 0x0071a190    89bb88000000
                         {disp8} mov        dword ptr [ebx + 0x70], edi                   // 0x0071a196    897b70
                         {disp32} mov       dword ptr [ebx + 0x00000084], edi             // 0x0071a199    89bb84000000
                         {disp8} mov        dword ptr [ebx + 0x6c], edi                   // 0x0071a19f    897b6c
_jmp_addr_0x0071a1a2:    pop                edi                                           // 0x0071a1a2    5f
                         pop                esi                                           // 0x0071a1a3    5e
                         pop                ebp                                           // 0x0071a1a4    5d
                         pop                ebx                                           // 0x0071a1a5    5b
                         add                esp, 0x5c                                     // 0x0071a1a6    83c45c
                         ret                0x0004                                        // 0x0071a1a9    c20400
                         nop                                                              // 0x0071a1ac    90
                         nop                                                              // 0x0071a1ad    90
                         nop                                                              // 0x0071a1ae    90
                         nop                                                              // 0x0071a1af    90
?GetPlayer@ShowNeedsVisuals@@UAEPAVGPlayer@@XZ:
                         {disp8} mov        ecx, dword ptr [ecx + 0x60]                   // 0x0071a1b0    8b4960
                         mov                eax, dword ptr [ecx]                          // 0x0071a1b3    8b01
                         {disp8} jmp        dword ptr [eax + 0x1c]                        // 0x0071a1b5    ff601c
                         nop                                                              // 0x0071a1b8    90
                         nop                                                              // 0x0071a1b9    90
                         nop                                                              // 0x0071a1ba    90
                         nop                                                              // 0x0071a1bb    90
                         nop                                                              // 0x0071a1bc    90
                         nop                                                              // 0x0071a1bd    90
                         nop                                                              // 0x0071a1be    90
                         nop                                                              // 0x0071a1bf    90
                         push               esi                                           // 0x0071a1c0    56
                         mov.s              esi, ecx                                      // 0x0071a1c1    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x28]                   // 0x0071a1c3    8b4628
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x517508]        // 0x0071a1c6    8b0d08d5ed00
                         {disp32} mov       eax, dword ptr [eax + 0x00000104]             // 0x0071a1cc    8b8004010000
                         cmp                eax, dword ptr [ecx]                          // 0x0071a1d2    3b01
                         push               edi                                           // 0x0071a1d4    57
                         {disp8} jge        _jmp_addr_0x0071a1e1                          // 0x0071a1d5    7d0a
                         test               eax, eax                                      // 0x0071a1d7    85c0
                         {disp8} jl         _jmp_addr_0x0071a1e1                          // 0x0071a1d9    7c06
                         {disp8} mov        eax, dword ptr [ecx + eax * 0x4 + 0x04]       // 0x0071a1db    8b448104
                         {disp8} jmp        _jmp_addr_0x0071a1e4                          // 0x0071a1df    eb03
_jmp_addr_0x0071a1e1:    {disp8} mov        eax, dword ptr [ecx + 0x04]                   // 0x0071a1e1    8b4104
_jmp_addr_0x0071a1e4:    {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x0071a1e4    8b4e40
                         mov                edi, dword ptr [ecx]                          // 0x0071a1e7    8b39
                         mov.s              edx, eax                                      // 0x0071a1e9    8bd0
                         call               dword ptr [edi + 0x180]                       // 0x0071a1eb    ff9780010000
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x0071a1f1    8b4e40
                         mov                eax, dword ptr [ecx]                          // 0x0071a1f4    8b01
                         pop                edi                                           // 0x0071a1f6    5f
                         xor.s              edx, edx                                      // 0x0071a1f7    33d2
                         pop                esi                                           // 0x0071a1f9    5e
                         jmp                dword ptr [eax + 0x188]                       // 0x0071a1fa    ffa088010000
_jmp_addr_0x0071a200:    {disp8} fld        dword ptr [ecx + 0x5c]                        // 0x0071a200    d9415c
                         {disp8} mov        edx, dword ptr [ecx + 0x28]                   // 0x0071a203    8b5128
                         {disp32} fld       dword ptr [edx + 0x00000108]                  // 0x0071a206    d98208010000
                         fcompp                                                           // 0x0071a20c    ded9
                         fnstsw             ax                                            // 0x0071a20e    dfe0
                         test               ah, 0x41                                      // 0x0071a210    f6c441
                         {disp8} jne        _jmp_addr_0x0071a21f                          // 0x0071a213    750a
                         {disp8} fld        dword ptr [ecx + 0x5c]                        // 0x0071a215    d9415c
                         {disp32} fdiv      dword ptr [edx + 0x00000108]                  // 0x0071a218    d8b208010000
                         ret                                                              // 0x0071a21e    c3
_jmp_addr_0x0071a21f:    {disp32} fld       dword ptr [edx + 0x00000108]                  // 0x0071a21f    d98208010000
                         {disp32} fdiv      dword ptr [edx + 0x00000108]                  // 0x0071a225    d8b208010000
                         ret                                                              // 0x0071a22b    c3
                         nop                                                              // 0x0071a22c    90
                         nop                                                              // 0x0071a22d    90
                         nop                                                              // 0x0071a22e    90
                         nop                                                              // 0x0071a22f    90
?Save@ShowNeedsVisuals@@UAEIAAVGameOSFile@@@Z:
                         push               esi                                           // 0x0071a230    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x0071a231    8b742408
                         push               edi                                           // 0x0071a235    57
                         mov.s              edi, ecx                                      // 0x0071a236    8bf9
                         push               esi                                           // 0x0071a238    56
                         call               ?Save@Object@@UAEIPAVGameOSFile@@@Z           // 0x0071a239    e852f9f1ff
                         test               eax, eax                                      // 0x0071a23e    85c0
                         {disp32} je        _jmp_addr_0x0071a311                          // 0x0071a240    0f84cb000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x0071a246    a190c9be00
                         test               eax, eax                                      // 0x0071a24b    85c0
                         push               ebx                                           // 0x0071a24d    53
                         {disp8} je         _jmp_addr_0x0071a2bf                          // 0x0071a24e    746f
                         push               0x0                                           // 0x0071a250    6a00
                         push               0x4                                           // 0x0071a252    6a04
                         {disp8} lea        ebx, dword ptr [edi + 0x54]                   // 0x0071a254    8d5f54
                         push               ebx                                           // 0x0071a257    53
                         mov.s              ecx, esi                                      // 0x0071a258    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0071a25a    e8c1260a00
                         cmp                eax, 0x03                                     // 0x0071a25f    83f803
                         {disp8} jne        _jmp_addr_0x0071a26e                          // 0x0071a262    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226990], 0x00000000 // 0x0071a264    c70590c9be0000000000
_jmp_addr_0x0071a26e:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0071a26e    8b8e14020000
                         xor.s              eax, eax                                      // 0x0071a274    33c0
                         mov                al, byte ptr [ebx]                            // 0x0071a276    8a03
                         add                eax, 0x04                                     // 0x0071a278    83c004
                         add.s              ecx, eax                                      // 0x0071a27b    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0071a27d    898e14020000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x0071a283    a190c9be00
                         test               eax, eax                                      // 0x0071a288    85c0
                         {disp8} je         _jmp_addr_0x0071a2bf                          // 0x0071a28a    7433
                         push               0x0                                           // 0x0071a28c    6a00
                         push               0x4                                           // 0x0071a28e    6a04
                         {disp8} lea        ebx, dword ptr [edi + 0x58]                   // 0x0071a290    8d5f58
                         push               ebx                                           // 0x0071a293    53
                         mov.s              ecx, esi                                      // 0x0071a294    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0071a296    e885260a00
                         cmp                eax, 0x03                                     // 0x0071a29b    83f803
                         {disp8} jne        _jmp_addr_0x0071a2aa                          // 0x0071a29e    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226990], 0x00000000 // 0x0071a2a0    c70590c9be0000000000
_jmp_addr_0x0071a2aa:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0071a2aa    8b8614020000
                         xor.s              ecx, ecx                                      // 0x0071a2b0    33c9
                         mov                cl, byte ptr [ebx]                            // 0x0071a2b2    8a0b
                         add                ecx, 0x4                                      // 0x0071a2b4    83c104
                         add.s              eax, ecx                                      // 0x0071a2b7    03c1
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0071a2b9    898614020000
_jmp_addr_0x0071a2bf:    {disp8} mov        edx, dword ptr [edi + 0x60]                   // 0x0071a2bf    8b5760
                         push               edx                                           // 0x0071a2c2    52
                         mov.s              ecx, esi                                      // 0x0071a2c3    8bce
                         call               ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x0071a2c5    e8467be4ff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x0071a2ca    a190c9be00
                         test               eax, eax                                      // 0x0071a2cf    85c0
                         pop                ebx                                           // 0x0071a2d1    5b
                         {disp8} je         _jmp_addr_0x0071a307                          // 0x0071a2d2    7433
                         push               0x0                                           // 0x0071a2d4    6a00
                         push               0x4                                           // 0x0071a2d6    6a04
                         add                edi, 0x5c                                     // 0x0071a2d8    83c75c
                         push               edi                                           // 0x0071a2db    57
                         mov.s              ecx, esi                                      // 0x0071a2dc    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0071a2de    e83d260a00
                         cmp                eax, 0x03                                     // 0x0071a2e3    83f803
                         {disp8} jne        _jmp_addr_0x0071a2f2                          // 0x0071a2e6    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226990], 0x00000000 // 0x0071a2e8    c70590c9be0000000000
_jmp_addr_0x0071a2f2:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0071a2f2    8b8e14020000
                         xor.s              eax, eax                                      // 0x0071a2f8    33c0
                         mov                al, byte ptr [edi]                            // 0x0071a2fa    8a07
                         add                eax, 0x04                                     // 0x0071a2fc    83c004
                         add.s              ecx, eax                                      // 0x0071a2ff    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0071a301    898e14020000
_jmp_addr_0x0071a307:    pop                edi                                           // 0x0071a307    5f
                         mov                eax, 0x00000001                               // 0x0071a308    b801000000
                         pop                esi                                           // 0x0071a30d    5e
                         ret                0x0004                                        // 0x0071a30e    c20400
_jmp_addr_0x0071a311:    pop                edi                                           // 0x0071a311    5f
                         xor.s              eax, eax                                      // 0x0071a312    33c0
                         pop                esi                                           // 0x0071a314    5e
                         ret                0x0004                                        // 0x0071a315    c20400
                         nop                                                              // 0x0071a318    90
                         nop                                                              // 0x0071a319    90
                         nop                                                              // 0x0071a31a    90
                         nop                                                              // 0x0071a31b    90
                         nop                                                              // 0x0071a31c    90
                         nop                                                              // 0x0071a31d    90
                         nop                                                              // 0x0071a31e    90
                         nop                                                              // 0x0071a31f    90
?Load@ShowNeedsVisuals@@UAEIAAVGameOSFile@@@Z:
                         push               ebx                                           // 0x0071a320    53
                         push               esi                                           // 0x0071a321    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x0071a322    8b74240c
                         mov.s              ebx, ecx                                      // 0x0071a326    8bd9
                         push               esi                                           // 0x0071a328    56
                         call               @Load__6ObjectFR10GameOSFile@12               // 0x0071a329    e882fbf1ff
                         test               eax, eax                                      // 0x0071a32e    85c0
                         {disp32} je        _jmp_addr_0x0071a401                          // 0x0071a330    0f84cb000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x0071a336    a194c9be00
                         test               eax, eax                                      // 0x0071a33b    85c0
                         push               edi                                           // 0x0071a33d    57
                         {disp8} lea        edi, dword ptr [ebx + 0x54]                   // 0x0071a33e    8d7b54
                         {disp8} je         _jmp_addr_0x0071a373                          // 0x0071a341    7430
                         push               0x0                                           // 0x0071a343    6a00
                         push               0x4                                           // 0x0071a345    6a04
                         push               edi                                           // 0x0071a347    57
                         mov.s              ecx, esi                                      // 0x0071a348    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0071a34a    e891250a00
                         cmp                eax, 0x03                                     // 0x0071a34f    83f803
                         {disp8} jne        _jmp_addr_0x0071a35e                          // 0x0071a352    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226994], 0x00000000 // 0x0071a354    c70594c9be0000000000
_jmp_addr_0x0071a35e:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0071a35e    8b8e14020000
                         xor.s              eax, eax                                      // 0x0071a364    33c0
                         mov                al, byte ptr [edi]                            // 0x0071a366    8a07
                         add                eax, 0x04                                     // 0x0071a368    83c004
                         add.s              ecx, eax                                      // 0x0071a36b    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0071a36d    898e14020000
_jmp_addr_0x0071a373:    {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x0071a373    a194c9be00
                         test               eax, eax                                      // 0x0071a378    85c0
                         {disp8} lea        edi, dword ptr [ebx + 0x58]                   // 0x0071a37a    8d7b58
                         {disp8} je         _jmp_addr_0x0071a3af                          // 0x0071a37d    7430
                         push               0x0                                           // 0x0071a37f    6a00
                         push               0x4                                           // 0x0071a381    6a04
                         push               edi                                           // 0x0071a383    57
                         mov.s              ecx, esi                                      // 0x0071a384    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0071a386    e855250a00
                         cmp                eax, 0x03                                     // 0x0071a38b    83f803
                         {disp8} jne        _jmp_addr_0x0071a39a                          // 0x0071a38e    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226994], 0x00000000 // 0x0071a390    c70594c9be0000000000
_jmp_addr_0x0071a39a:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0071a39a    8b8614020000
                         xor.s              ecx, ecx                                      // 0x0071a3a0    33c9
                         mov                cl, byte ptr [edi]                            // 0x0071a3a2    8a0f
                         add                ecx, 0x4                                      // 0x0071a3a4    83c104
                         add.s              eax, ecx                                      // 0x0071a3a7    03c1
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0071a3a9    898614020000
_jmp_addr_0x0071a3af:    {disp8} lea        edx, dword ptr [ebx + 0x60]                   // 0x0071a3af    8d5360
                         push               edx                                           // 0x0071a3b2    52
                         mov.s              ecx, esi                                      // 0x0071a3b3    8bce
                         call               @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x0071a3b5    e8c67de4ff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x0071a3ba    a194c9be00
                         test               eax, eax                                      // 0x0071a3bf    85c0
                         {disp8} lea        edi, dword ptr [ebx + 0x5c]                   // 0x0071a3c1    8d7b5c
                         {disp8} je         _jmp_addr_0x0071a3f6                          // 0x0071a3c4    7430
                         push               0x0                                           // 0x0071a3c6    6a00
                         push               0x4                                           // 0x0071a3c8    6a04
                         push               edi                                           // 0x0071a3ca    57
                         mov.s              ecx, esi                                      // 0x0071a3cb    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0071a3cd    e80e250a00
                         cmp                eax, 0x03                                     // 0x0071a3d2    83f803
                         {disp8} jne        _jmp_addr_0x0071a3e1                          // 0x0071a3d5    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226994], 0x00000000 // 0x0071a3d7    c70594c9be0000000000
_jmp_addr_0x0071a3e1:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0071a3e1    8b8e14020000
                         xor.s              eax, eax                                      // 0x0071a3e7    33c0
                         mov                al, byte ptr [edi]                            // 0x0071a3e9    8a07
                         add                eax, 0x04                                     // 0x0071a3eb    83c004
                         add.s              ecx, eax                                      // 0x0071a3ee    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0071a3f0    898e14020000
_jmp_addr_0x0071a3f6:    pop                edi                                           // 0x0071a3f6    5f
                         pop                esi                                           // 0x0071a3f7    5e
                         mov                eax, 0x00000001                               // 0x0071a3f8    b801000000
                         pop                ebx                                           // 0x0071a3fd    5b
                         ret                0x0004                                        // 0x0071a3fe    c20400
_jmp_addr_0x0071a401:    pop                esi                                           // 0x0071a401    5e
                         xor.s              eax, eax                                      // 0x0071a402    33c0
                         pop                ebx                                           // 0x0071a404    5b
                         ret                0x0004                                        // 0x0071a405    c20400
                         nop                                                              // 0x0071a408    90
                         nop                                                              // 0x0071a409    90
                         nop                                                              // 0x0071a40a    90
                         nop                                                              // 0x0071a40b    90
                         nop                                                              // 0x0071a40c    90
                         nop                                                              // 0x0071a40d    90
                         nop                                                              // 0x0071a40e    90
                         nop                                                              // 0x0071a40f    90
?ResolveLoad@ShowNeedsVisuals@@UAEXXZ:
                         mov                eax, dword ptr [ecx]                          // 0x0071a410    8b01
                         {disp8} lea        edx, dword ptr [ecx + 0x14]                   // 0x0071a412    8d5114
                         push               edx                                           // 0x0071a415    52
                         call               dword ptr [eax + 0x658]                       // 0x0071a416    ff9058060000
                         ret                                                              // 0x0071a41c    c3
                         nop                                                              // 0x0071a41d    90
                         nop                                                              // 0x0071a41e    90
                         nop                                                              // 0x0071a41f    90
_globl_ct_0x0071a420:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x0071a420    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x0071a426    b001
                         test               al, cl                                        // 0x0071a428    84c8
                         {disp8} jne        _jmp_addr_0x0071a434                          // 0x0071a42a    7508
                         or.s               cl, al                                        // 0x0071a42c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x0071a42e    880d34c9fa00
_jmp_addr_0x0071a434:    {disp32} jmp       _jmp_addr_0x0071a440                          // 0x0071a434    e907000000
                         nop                                                              // 0x0071a439    90
                         nop                                                              // 0x0071a43a    90
                         nop                                                              // 0x0071a43b    90
                         nop                                                              // 0x0071a43c    90
                         nop                                                              // 0x0071a43d    90
                         nop                                                              // 0x0071a43e    90
                         nop                                                              // 0x0071a43f    90
_jmp_addr_0x0071a440:    push               0x00407870                                    // 0x0071a440    6870784000
                         call               _atexit                                       // 0x0071a445    e847b30a00
                         pop                ecx                                           // 0x0071a44a    59
                         ret                                                              // 0x0071a44b    c3
                         nop                                                              // 0x0071a44c    90
                         nop                                                              // 0x0071a44d    90
                         nop                                                              // 0x0071a44e    90
                         nop                                                              // 0x0071a44f    90
_globl_ct_0x0071a450:    {disp32} jmp       _jmp_addr_0x0071a460                          // 0x0071a450    e90b000000
                         nop                                                              // 0x0071a455    90
                         nop                                                              // 0x0071a456    90
                         nop                                                              // 0x0071a457    90
                         nop                                                              // 0x0071a458    90
                         nop                                                              // 0x0071a459    90
                         nop                                                              // 0x0071a45a    90
                         nop                                                              // 0x0071a45b    90
                         nop                                                              // 0x0071a45c    90
                         nop                                                              // 0x0071a45d    90
                         nop                                                              // 0x0071a45e    90
                         nop                                                              // 0x0071a45f    90
_jmp_addr_0x0071a460:    {disp32} mov       dword ptr [data_bytes + 0x3d3b8c], 0x3e000000 // 0x0071a460    c7058c9bd9000000003e
                         ret                                                              // 0x0071a46a    c3
                         nop                                                              // 0x0071a46b    90
                         nop                                                              // 0x0071a46c    90
                         nop                                                              // 0x0071a46d    90
                         nop                                                              // 0x0071a46e    90
                         nop                                                              // 0x0071a46f    90
_globl_ct_0x0071a470:    {disp32} jmp       _jmp_addr_0x0071a480                          // 0x0071a470    e90b000000
                         nop                                                              // 0x0071a475    90
                         nop                                                              // 0x0071a476    90
                         nop                                                              // 0x0071a477    90
                         nop                                                              // 0x0071a478    90
                         nop                                                              // 0x0071a479    90
                         nop                                                              // 0x0071a47a    90
                         nop                                                              // 0x0071a47b    90
                         nop                                                              // 0x0071a47c    90
                         nop                                                              // 0x0071a47d    90
                         nop                                                              // 0x0071a47e    90
                         nop                                                              // 0x0071a47f    90
_jmp_addr_0x0071a480:    {disp32} fld       dword ptr [rdata_bytes + 0xae308]             // 0x0071a480    d90508739500
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x0071a486    d80db4a38a00
                         {disp32} fstp      dword ptr [data_bytes + 0x3d3b90]             // 0x0071a48c    d91d909bd900
                         ret                                                              // 0x0071a492    c3
                         nop                                                              // 0x0071a493    90
                         nop                                                              // 0x0071a494    90
                         nop                                                              // 0x0071a495    90
                         nop                                                              // 0x0071a496    90
                         nop                                                              // 0x0071a497    90
                         nop                                                              // 0x0071a498    90
                         nop                                                              // 0x0071a499    90
                         nop                                                              // 0x0071a49a    90
                         nop                                                              // 0x0071a49b    90
                         nop                                                              // 0x0071a49c    90
                         nop                                                              // 0x0071a49d    90
                         nop                                                              // 0x0071a49e    90
                         nop                                                              // 0x0071a49f    90
_globl_ct_0x0071a4a0:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x0071a4a0    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x0071a4a6    b001
                         test               al, cl                                        // 0x0071a4a8    84c8
                         {disp8} jne        _jmp_addr_0x0071a4b4                          // 0x0071a4aa    7508
                         or.s               cl, al                                        // 0x0071a4ac    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x0071a4ae    880d34c9fa00
_jmp_addr_0x0071a4b4:    {disp32} jmp       _jmp_addr_0x0071a4c0                          // 0x0071a4b4    e907000000
                         nop                                                              // 0x0071a4b9    90
                         nop                                                              // 0x0071a4ba    90
                         nop                                                              // 0x0071a4bb    90
                         nop                                                              // 0x0071a4bc    90
                         nop                                                              // 0x0071a4bd    90
                         nop                                                              // 0x0071a4be    90
                         nop                                                              // 0x0071a4bf    90
_jmp_addr_0x0071a4c0:    push               0x00407870                                    // 0x0071a4c0    6870784000
                         call               _atexit                                       // 0x0071a4c5    e8c7b20a00
                         pop                ecx                                           // 0x0071a4ca    59
                         ret                                                              // 0x0071a4cb    c3
                         nop                                                              // 0x0071a4cc    90
                         nop                                                              // 0x0071a4cd    90
                         nop                                                              // 0x0071a4ce    90
                         nop                                                              // 0x0071a4cf    90
_jmp_addr_0x0071a4d0:    mov.s              eax, ecx                                      // 0x0071a4d0    8bc1
                         {disp8} mov        dword ptr [eax + 0x04], 0x00000000            // 0x0071a4d2    c7400400000000
                         mov                dword ptr [eax], 0x0096ba0c                   // 0x0071a4d9    c7000cba9600
                         ret                                                              // 0x0071a4df    c3
??_GGConfirmation@@UAEPAXI@Z:
                         push               esi                                           // 0x0071a4e0    56
                         mov.s              esi, ecx                                      // 0x0071a4e1    8bf1
                         call               _jmp_addr_0x0071a500                          // 0x0071a4e3    e818000000
                         test               byte ptr [esp + 0x08], 0x01                   // 0x0071a4e8    f644240801
                         {disp8} je         _jmp_addr_0x0071a4fa                          // 0x0071a4ed    740b
                         push               0x24                                          // 0x0071a4ef    6a24
                         push               esi                                           // 0x0071a4f1    56
                         call               ??3Base@@SAXPAXK@Z                          // 0x0071a4f2    e879c4d1ff
                         add                esp, 0x08                                     // 0x0071a4f7    83c408
_jmp_addr_0x0071a4fa:    mov.s              eax, esi                                      // 0x0071a4fa    8bc6
                         pop                esi                                           // 0x0071a4fc    5e
                         ret                0x0004                                        // 0x0071a4fd    c20400
_jmp_addr_0x0071a500:    mov                dword ptr [ecx], 0x0096ba0c                   // 0x0071a500    c7010cba9600
                         {disp32} jmp       _jmp_addr_0x00436960                          // 0x0071a506    e955c4d1ff
                         nop                                                              // 0x0071a50b    90
                         nop                                                              // 0x0071a50c    90
                         nop                                                              // 0x0071a50d    90
                         nop                                                              // 0x0071a50e    90
                         nop                                                              // 0x0071a50f    90
_globl_ct_0x0071a510:    call               _jmp_addr_0x0071a520                          // 0x0071a510    e80b000000
                         {disp32} jmp       _jmp_addr_0x0071a530                          // 0x0071a515    e916000000
                         nop                                                              // 0x0071a51a    90
                         nop                                                              // 0x0071a51b    90
                         nop                                                              // 0x0071a51c    90
                         nop                                                              // 0x0071a51d    90
                         nop                                                              // 0x0071a51e    90
                         nop                                                              // 0x0071a51f    90
_jmp_addr_0x0071a520:    mov                ecx, 0x00d99ba0                               // 0x0071a520    b9a09bd900
                         {disp32} jmp       _jmp_addr_0x0071a4d0                          // 0x0071a525    e9a6ffffff
                         nop                                                              // 0x0071a52a    90
                         nop                                                              // 0x0071a52b    90
                         nop                                                              // 0x0071a52c    90
                         nop                                                              // 0x0071a52d    90
                         nop                                                              // 0x0071a52e    90
                         nop                                                              // 0x0071a52f    90
_jmp_addr_0x0071a530:    push               0x0071a540                                    // 0x0071a530    6840a57100
                         call               _atexit                                       // 0x0071a535    e857b20a00
                         pop                ecx                                           // 0x0071a53a    59
                         ret                                                              // 0x0071a53b    c3
                         nop                                                              // 0x0071a53c    90
                         nop                                                              // 0x0071a53d    90
                         nop                                                              // 0x0071a53e    90
                         nop                                                              // 0x0071a53f    90
                         {disp32} mov       cl, byte ptr [data_bytes + 0x3d3b98]          // 0x0071a540    8a0d989bd900
                         mov                al, 0x01                                      // 0x0071a546    b001
                         test               al, cl                                        // 0x0071a548    84c8
                         {disp8} jne        _jmp_addr_0x0071a55e                          // 0x0071a54a    7512
                         or.s               cl, al                                        // 0x0071a54c    0ac8
                         {disp32} mov       byte ptr [data_bytes + 0x3d3b98], cl          // 0x0071a54e    880d989bd900
                         mov                ecx, 0x00d99ba0                               // 0x0071a554    b9a09bd900
                         {disp32} jmp       _jmp_addr_0x0071a500                          // 0x0071a559    e9a2ffffff
_jmp_addr_0x0071a55e:    ret                                                              // 0x0071a55e    c3
                         nop                                                              // 0x0071a55f    90
_jmp_addr_0x0071a560:    push               esi                                           // 0x0071a560    56
                         push               0x1f                                          // 0x0071a561    6a1f
                         push               0x00c221a4                                    // 0x0071a563    68a421c200
                         push               0x00000168                                    // 0x0071a568    6868010000
                         call               ___nw__FUl                                    // 0x0071a56d    e81e120c00
                         xor.s              esi, esi                                      // 0x0071a572    33f6
                         add                esp, 0x0c                                     // 0x0071a574    83c40c
                         cmp.s              eax, esi                                      // 0x0071a577    3bc6
                         {disp8} je         _jmp_addr_0x0071a585                          // 0x0071a579    740a
                         mov.s              ecx, eax                                      // 0x0071a57b    8bc8
                         call               dword ptr [rdata_bytes + 0x75c]               // 0x0071a57d    ff155c978a00
                         {disp8} jmp        _jmp_addr_0x0071a587                          // 0x0071a583    eb02
_jmp_addr_0x0071a585:    xor.s              eax, eax                                      // 0x0071a585    33c0
_jmp_addr_0x0071a587:    {disp32} mov       dword ptr [data_bytes + 0x3d3bc0], eax        // 0x0071a587    a3c09bd900
                         {disp8} mov        dword ptr [eax + 0x28], 0x00000064            // 0x0071a58c    c7402864000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x3d3bc0]        // 0x0071a593    a1c09bd900
                         {disp8} mov        dword ptr [eax + 0x2c], 0x0000005a            // 0x0071a598    c7402c5a000000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x3d3bc0]        // 0x0071a59f    8b0dc09bd900
                         {disp8} mov        dword ptr [ecx + 0x20], esi                   // 0x0071a5a5    897120
                         {disp32} mov       edx, dword ptr [_global]                      // 0x0071a5a8    8b15203bcd00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x3d3bc0]        // 0x0071a5ae    8b0dc09bd900
                         {disp32} mov       dword ptr [data_bytes + 0x3d3bb8], esi        // 0x0071a5b4    8935b89bd900
                         {disp32} mov       eax, dword ptr [edx + 0x000003c0]             // 0x0071a5ba    8b82c0030000
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x0071a5c0    894104
                         {disp32} mov       edx, dword ptr [data_bytes + 0x3d3bc0]        // 0x0071a5c3    8b15c09bd900
                         {disp8} mov        dword ptr [edx + 0x08], esi                   // 0x0071a5c9    897208
                         {disp32} mov       eax, dword ptr [data_bytes + 0x3d3bc0]        // 0x0071a5cc    a1c09bd900
                         {disp8} mov        dword ptr [eax + 0x0c], esi                   // 0x0071a5d1    89700c
                         {disp32} mov       dword ptr [data_bytes + 0x3d3bbc], esi        // 0x0071a5d4    8935bc9bd900
                         {disp32} mov       dword ptr [data_bytes + 0x3d3ba8], esi        // 0x0071a5da    8935a89bd900
                         {disp32} mov       dword ptr [data_bytes + 0x3d3bb4], esi        // 0x0071a5e0    8935b49bd900
                         pop                esi                                           // 0x0071a5e6    5e
                         ret                                                              // 0x0071a5e7    c3
                         nop                                                              // 0x0071a5e8    90
                         nop                                                              // 0x0071a5e9    90
                         nop                                                              // 0x0071a5ea    90
                         nop                                                              // 0x0071a5eb    90
                         nop                                                              // 0x0071a5ec    90
                         nop                                                              // 0x0071a5ed    90
                         nop                                                              // 0x0071a5ee    90
                         nop                                                              // 0x0071a5ef    90
_jmp_addr_0x0071a5f0:    push               esi                                           // 0x0071a5f0    56
                         {disp32} mov       esi, dword ptr [data_bytes + 0x3d3bc0]        // 0x0071a5f1    8b35c09bd900
                         test               esi, esi                                      // 0x0071a5f7    85f6
                         {disp8} je         _jmp_addr_0x0071a60c                          // 0x0071a5f9    7411
                         mov.s              ecx, esi                                      // 0x0071a5fb    8bce
                         call               dword ptr [rdata_bytes + 0x758]               // 0x0071a5fd    ff1558978a00
                         push               esi                                           // 0x0071a603    56
                         call               ??3@YAXPAX@Z                                  // 0x0071a604    e88f480900
                         add                esp, 0x04                                     // 0x0071a609    83c404
_jmp_addr_0x0071a60c:    pop                esi                                           // 0x0071a60c    5e
                         ret                                                              // 0x0071a60d    c3
                         nop                                                              // 0x0071a60e    90
                         nop                                                              // 0x0071a60f    90
_jmp_addr_0x0071a610:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0071a610    8b442404
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x0071a614    8b4c2408
                         {disp32} mov       dword ptr [data_bytes + 0x3d3ba8], eax        // 0x0071a618    a3a89bd900
                         xor.s              eax, eax                                      // 0x0071a61d    33c0
                         {disp32} mov       dword ptr [data_bytes + 0x3d3bac], ecx        // 0x0071a61f    890dac9bd900
                         {disp32} mov       dword ptr [data_bytes + 0x3d3bb8], 0x00000001 // 0x0071a625    c705b89bd90001000000
                         {disp32} mov       dword ptr [data_bytes + 0x3d3bbc], eax        // 0x0071a62f    a3bc9bd900
                         {disp32} mov       dword ptr [data_bytes + 0x3d3bb4], eax        // 0x0071a634    a3b49bd900
                         ret                                                              // 0x0071a639    c3
                         nop                                                              // 0x0071a63a    90
                         nop                                                              // 0x0071a63b    90
                         nop                                                              // 0x0071a63c    90
                         nop                                                              // 0x0071a63d    90
                         nop                                                              // 0x0071a63e    90
                         nop                                                              // 0x0071a63f    90
_jmp_addr_0x0071a640:    {disp32} mov       dword ptr [data_bytes + 0x3d3bb8], 0x00000000 // 0x0071a640    c705b89bd90000000000
                         ret                                                              // 0x0071a64a    c3
                         nop                                                              // 0x0071a64b    90
                         nop                                                              // 0x0071a64c    90
                         nop                                                              // 0x0071a64d    90
                         nop                                                              // 0x0071a64e    90
                         nop                                                              // 0x0071a64f    90
_jmp_addr_0x0071a650:    push               ecx                                           // 0x0071a650    51
                         {disp32} mov       eax, dword ptr [data_bytes + 0x3d3bb8]        // 0x0071a651    a1b89bd900
                         test               eax, eax                                      // 0x0071a656    85c0
                         {disp32} je        _jmp_addr_0x0071a720                          // 0x0071a658    0f84c2000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x3d3ba8]        // 0x0071a65e    a1a89bd900
                         fld                dword ptr [eax]                               // 0x0071a663    d900
                         {disp32} fdiv      dword ptr [data_bytes + 0x3d3bac]             // 0x0071a665    d835ac9bd900
                         {disp32} fcom      dword ptr [rdata_bytes + 0x2678]              // 0x0071a66b    d81578b68a00
                         fnstsw             ax                                            // 0x0071a671    dfe0
                         test               ah, 0x01                                      // 0x0071a673    f6c401
                         {disp8} je         _jmp_addr_0x0071a682                          // 0x0071a676    740a
                         fstp               st(0)                                         // 0x0071a678    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x2678]              // 0x0071a67a    d90578b68a00
                         {disp8} jmp        _jmp_addr_0x0071a697                          // 0x0071a680    eb15
_jmp_addr_0x0071a682:    {disp32} fcom      dword ptr [_rdata_float1p0]                   // 0x0071a682    d81590a38a00
                         fnstsw             ax                                            // 0x0071a688    dfe0
                         test               ah, 0x41                                      // 0x0071a68a    f6c441
                         {disp8} jne        _jmp_addr_0x0071a697                          // 0x0071a68d    7508
                         fstp               st(0)                                         // 0x0071a68f    ddd8
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0071a691    d90590a38a00
_jmp_addr_0x0071a697:    fabs                                                             // 0x0071a697    d9e1
                         {disp8} fst        dword ptr [esp + 0x00]                        // 0x0071a699    d9542400
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x0071a69d    d81d90a38a00
                         fnstsw             ax                                            // 0x0071a6a3    dfe0
                         test               ah, 0x40                                      // 0x0071a6a5    f6c440
                         {disp8} je         _jmp_addr_0x0071a6de                          // 0x0071a6a8    7434
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0071a6aa    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x00205a40]             // 0x0071a6b0    8b91405a2000
                         sub                edx, dword ptr [data_bytes + 0x3d3bb4]        // 0x0071a6b6    2b15b49bd900
                         cmp                edx, 0x64                                     // 0x0071a6bc    83fa64
                         {disp8} jbe        _jmp_addr_0x0071a720                          // 0x0071a6bf    765f
                         mov                ecx, 0x00d99ba0                               // 0x0071a6c1    b9a09bd900
                         call               _jmp_addr_0x0071a850                          // 0x0071a6c6    e885010000
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0071a6cb    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00205a40]             // 0x0071a6d0    8b88405a2000
                         {disp32} mov       dword ptr [data_bytes + 0x3d3bb4], ecx        // 0x0071a6d6    890db49bd900
                         pop                ecx                                           // 0x0071a6dc    59
                         ret                                                              // 0x0071a6dd    c3
_jmp_addr_0x0071a6de:    {disp8} fld        dword ptr [esp + 0x00]                        // 0x0071a6de    d9442400
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0071a6e2    d81d98a38a00
                         fnstsw             ax                                            // 0x0071a6e8    dfe0
                         test               ah, 0x41                                      // 0x0071a6ea    f6c441
                         {disp8} jne        _jmp_addr_0x0071a700                          // 0x0071a6ed    7511
                         {disp8} mov        edx, dword ptr [esp + 0x00]                   // 0x0071a6ef    8b542400
                         push               edx                                           // 0x0071a6f3    52
                         mov                ecx, 0x00d99ba0                               // 0x0071a6f4    b9a09bd900
                         call               _jmp_addr_0x0071a730                          // 0x0071a6f9    e832000000
                         pop                ecx                                           // 0x0071a6fe    59
                         ret                                                              // 0x0071a6ff    c3
_jmp_addr_0x0071a700:    {disp8} fld        dword ptr [esp + 0x00]                        // 0x0071a700    d9442400
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0071a704    d81d98a38a00
                         fnstsw             ax                                            // 0x0071a70a    dfe0
                         test               ah, 0x01                                      // 0x0071a70c    f6c401
                         {disp8} je         _jmp_addr_0x0071a720                          // 0x0071a70f    740f
                         {disp8} mov        eax, dword ptr [esp + 0x00]                   // 0x0071a711    8b442400
                         push               eax                                           // 0x0071a715    50
                         mov                ecx, 0x00d99ba0                               // 0x0071a716    b9a09bd900
                         call               _jmp_addr_0x0071a7f0                          // 0x0071a71b    e8d0000000
_jmp_addr_0x0071a720:    pop                ecx                                           // 0x0071a720    59
                         ret                                                              // 0x0071a721    c3
                         nop                                                              // 0x0071a722    90
                         nop                                                              // 0x0071a723    90
                         nop                                                              // 0x0071a724    90
                         nop                                                              // 0x0071a725    90
                         nop                                                              // 0x0071a726    90
                         nop                                                              // 0x0071a727    90
                         nop                                                              // 0x0071a728    90
                         nop                                                              // 0x0071a729    90
                         nop                                                              // 0x0071a72a    90
                         nop                                                              // 0x0071a72b    90
                         nop                                                              // 0x0071a72c    90
                         nop                                                              // 0x0071a72d    90
                         nop                                                              // 0x0071a72e    90
                         nop                                                              // 0x0071a72f    90
_jmp_addr_0x0071a730:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0071a730    8b442404
                         push               esi                                           // 0x0071a734    56
                         mov.s              esi, ecx                                      // 0x0071a735    8bf1
                         push               eax                                           // 0x0071a737    50
                         call               _jmp_addr_0x0071a8f0                          // 0x0071a738    e8b3010000
                         test               eax, eax                                      // 0x0071a73d    85c0
                         {disp8} je         _jmp_addr_0x0071a787                          // 0x0071a73f    7446
                         {disp32} mov       eax, dword ptr [rdata_bytes + 0xbac48]        // 0x0071a741    a1483c9600
                         sub                eax, dword ptr [rdata_bytes + 0xbaba0]        // 0x0071a746    2b05a03b9600
                         push               eax                                           // 0x0071a74c    50
                         call               ?LocalRand@GRand@@SAIJ@Z                      // 0x0071a74d    e81e3efcff
                         add                eax, dword ptr [rdata_bytes + 0xbaba0]        // 0x0071a752    0305a03b9600
                         {disp8} mov        ecx, dword ptr [esi + 0x20]                   // 0x0071a758    8b4e20
                         {disp8} mov        dword ptr [ecx + 0x24], eax                   // 0x0071a75b    894124
                         {disp8} mov        edx, dword ptr [esi + 0x20]                   // 0x0071a75e    8b5620
                         {disp32} mov       ecx, dword ptr [_global]                      // 0x0071a761    8b0d203bcd00
                         add                esp, 0x04                                     // 0x0071a767    83c404
                         push               edx                                           // 0x0071a76a    52
                         call               @PlaySoundEffect__6GAudioFP20LH_SamplePlayOptions@12                          // 0x0071a76b    e8c0f6d0ff
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0071a770    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00205a40]             // 0x0071a775    8b88405a2000
                         {disp8} mov        dword ptr [esi + 0x1c], ecx                   // 0x0071a77b    894e1c
                         mov                eax, 0x00000001                               // 0x0071a77e    b801000000
                         pop                esi                                           // 0x0071a783    5e
                         ret                0x0004                                        // 0x0071a784    c20400
_jmp_addr_0x0071a787:    xor.s              eax, eax                                      // 0x0071a787    33c0
                         pop                esi                                           // 0x0071a789    5e
                         ret                0x0004                                        // 0x0071a78a    c20400
                         nop                                                              // 0x0071a78d    90
                         nop                                                              // 0x0071a78e    90
                         nop                                                              // 0x0071a78f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0071a790    8b442404
                         push               esi                                           // 0x0071a794    56
                         mov.s              esi, ecx                                      // 0x0071a795    8bf1
                         push               eax                                           // 0x0071a797    50
                         call               _jmp_addr_0x0071a8f0                          // 0x0071a798    e853010000
                         test               eax, eax                                      // 0x0071a79d    85c0
                         {disp8} je         _jmp_addr_0x0071a7e7                          // 0x0071a79f    7446
                         {disp32} mov       eax, dword ptr [rdata_bytes + 0xbada4]        // 0x0071a7a1    a1a43d9600
                         sub                eax, dword ptr [rdata_bytes + 0xbad08]        // 0x0071a7a6    2b05083d9600
                         push               eax                                           // 0x0071a7ac    50
                         call               ?LocalRand@GRand@@SAIJ@Z                      // 0x0071a7ad    e8be3dfcff
                         add                eax, dword ptr [rdata_bytes + 0xbad08]        // 0x0071a7b2    0305083d9600
                         {disp8} mov        ecx, dword ptr [esi + 0x20]                   // 0x0071a7b8    8b4e20
                         {disp8} mov        dword ptr [ecx + 0x24], eax                   // 0x0071a7bb    894124
                         {disp8} mov        edx, dword ptr [esi + 0x20]                   // 0x0071a7be    8b5620
                         {disp32} mov       ecx, dword ptr [_global]                      // 0x0071a7c1    8b0d203bcd00
                         add                esp, 0x04                                     // 0x0071a7c7    83c404
                         push               edx                                           // 0x0071a7ca    52
                         call               @PlaySoundEffect__6GAudioFP20LH_SamplePlayOptions@12                          // 0x0071a7cb    e860f6d0ff
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0071a7d0    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00205a40]             // 0x0071a7d5    8b88405a2000
                         {disp8} mov        dword ptr [esi + 0x1c], ecx                   // 0x0071a7db    894e1c
                         mov                eax, 0x00000001                               // 0x0071a7de    b801000000
                         pop                esi                                           // 0x0071a7e3    5e
                         ret                0x0004                                        // 0x0071a7e4    c20400
_jmp_addr_0x0071a7e7:    xor.s              eax, eax                                      // 0x0071a7e7    33c0
                         pop                esi                                           // 0x0071a7e9    5e
                         ret                0x0004                                        // 0x0071a7ea    c20400
                         nop                                                              // 0x0071a7ed    90
                         nop                                                              // 0x0071a7ee    90
                         nop                                                              // 0x0071a7ef    90
_jmp_addr_0x0071a7f0:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0071a7f0    8b442404
                         push               esi                                           // 0x0071a7f4    56
                         mov.s              esi, ecx                                      // 0x0071a7f5    8bf1
                         push               eax                                           // 0x0071a7f7    50
                         call               _jmp_addr_0x0071a8f0                          // 0x0071a7f8    e8f3000000
                         test               eax, eax                                      // 0x0071a7fd    85c0
                         {disp8} je         _jmp_addr_0x0071a847                          // 0x0071a7ff    7446
                         {disp32} mov       eax, dword ptr [rdata_bytes + 0xbacfc]        // 0x0071a801    a1fc3c9600
                         sub                eax, dword ptr [rdata_bytes + 0xbac54]        // 0x0071a806    2b05543c9600
                         push               eax                                           // 0x0071a80c    50
                         call               ?LocalRand@GRand@@SAIJ@Z                      // 0x0071a80d    e85e3dfcff
                         add                eax, dword ptr [rdata_bytes + 0xbac54]        // 0x0071a812    0305543c9600
                         {disp8} mov        ecx, dword ptr [esi + 0x20]                   // 0x0071a818    8b4e20
                         {disp8} mov        dword ptr [ecx + 0x24], eax                   // 0x0071a81b    894124
                         {disp8} mov        edx, dword ptr [esi + 0x20]                   // 0x0071a81e    8b5620
                         {disp32} mov       ecx, dword ptr [_global]                      // 0x0071a821    8b0d203bcd00
                         add                esp, 0x04                                     // 0x0071a827    83c404
                         push               edx                                           // 0x0071a82a    52
                         call               @PlaySoundEffect__6GAudioFP20LH_SamplePlayOptions@12                          // 0x0071a82b    e800f6d0ff
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0071a830    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00205a40]             // 0x0071a835    8b88405a2000
                         {disp8} mov        dword ptr [esi + 0x1c], ecx                   // 0x0071a83b    894e1c
                         mov                eax, 0x00000001                               // 0x0071a83e    b801000000
                         pop                esi                                           // 0x0071a843    5e
                         ret                0x0004                                        // 0x0071a844    c20400
_jmp_addr_0x0071a847:    xor.s              eax, eax                                      // 0x0071a847    33c0
                         pop                esi                                           // 0x0071a849    5e
                         ret                0x0004                                        // 0x0071a84a    c20400
                         nop                                                              // 0x0071a84d    90
                         nop                                                              // 0x0071a84e    90
                         nop                                                              // 0x0071a84f    90
_jmp_addr_0x0071a850:    push               esi                                           // 0x0071a850    56
                         mov.s              esi, ecx                                      // 0x0071a851    8bf1
                         {disp32} mov       ecx, dword ptr [rdata_bytes + 0xbada4]        // 0x0071a853    8b0da43d9600
                         {disp8} mov        eax, dword ptr [esi + 0x20]                   // 0x0071a859    8b4620
                         {disp8} mov        dword ptr [eax + 0x24], ecx                   // 0x0071a85c    894824
                         {disp8} mov        edx, dword ptr [esi + 0x20]                   // 0x0071a85f    8b5620
                         {disp32} mov       ecx, dword ptr [_global]                      // 0x0071a862    8b0d203bcd00
                         push               edx                                           // 0x0071a868    52
                         call               @PlaySoundEffect__6GAudioFP20LH_SamplePlayOptions@12                          // 0x0071a869    e8c2f5d0ff
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0071a86e    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00205a40]             // 0x0071a873    8b88405a2000
                         {disp8} mov        dword ptr [esi + 0x1c], ecx                   // 0x0071a879    894e1c
                         mov                eax, 0x00000001                               // 0x0071a87c    b801000000
                         pop                esi                                           // 0x0071a881    5e
                         ret                                                              // 0x0071a882    c3
                         nop                                                              // 0x0071a883    90
                         nop                                                              // 0x0071a884    90
                         nop                                                              // 0x0071a885    90
                         nop                                                              // 0x0071a886    90
                         nop                                                              // 0x0071a887    90
                         nop                                                              // 0x0071a888    90
                         nop                                                              // 0x0071a889    90
                         nop                                                              // 0x0071a88a    90
                         nop                                                              // 0x0071a88b    90
                         nop                                                              // 0x0071a88c    90
                         nop                                                              // 0x0071a88d    90
                         nop                                                              // 0x0071a88e    90
                         nop                                                              // 0x0071a88f    90
                         push               esi                                           // 0x0071a890    56
                         mov.s              esi, ecx                                      // 0x0071a891    8bf1
                         push               0x3f800000                                    // 0x0071a893    680000803f
                         call               _jmp_addr_0x0071a8f0                          // 0x0071a898    e853000000
                         test               eax, eax                                      // 0x0071a89d    85c0
                         {disp8} je         _jmp_addr_0x0071a8e5                          // 0x0071a89f    7444
                         {disp32} mov       eax, dword ptr [rdata_bytes + 0xbadc8]        // 0x0071a8a1    a1c83d9600
                         sub                eax, dword ptr [rdata_bytes + 0xbadbc]        // 0x0071a8a6    2b05bc3d9600
                         push               eax                                           // 0x0071a8ac    50
                         call               ?LocalRand@GRand@@SAIJ@Z                      // 0x0071a8ad    e8be3cfcff
                         add                eax, dword ptr [rdata_bytes + 0xbadbc]        // 0x0071a8b2    0305bc3d9600
                         {disp8} mov        ecx, dword ptr [esi + 0x20]                   // 0x0071a8b8    8b4e20
                         {disp8} mov        dword ptr [ecx + 0x24], eax                   // 0x0071a8bb    894124
                         {disp8} mov        edx, dword ptr [esi + 0x20]                   // 0x0071a8be    8b5620
                         {disp32} mov       ecx, dword ptr [_global]                      // 0x0071a8c1    8b0d203bcd00
                         add                esp, 0x04                                     // 0x0071a8c7    83c404
                         push               edx                                           // 0x0071a8ca    52
                         call               @PlaySoundEffect__6GAudioFP20LH_SamplePlayOptions@12                          // 0x0071a8cb    e860f5d0ff
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0071a8d0    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00205a40]             // 0x0071a8d5    8b88405a2000
                         {disp8} mov        dword ptr [esi + 0x1c], ecx                   // 0x0071a8db    894e1c
                         mov                eax, 0x00000001                               // 0x0071a8de    b801000000
                         pop                esi                                           // 0x0071a8e3    5e
                         ret                                                              // 0x0071a8e4    c3
_jmp_addr_0x0071a8e5:    xor.s              eax, eax                                      // 0x0071a8e5    33c0
                         pop                esi                                           // 0x0071a8e7    5e
                         ret                                                              // 0x0071a8e8    c3
                         nop                                                              // 0x0071a8e9    90
                         nop                                                              // 0x0071a8ea    90
                         nop                                                              // 0x0071a8eb    90
                         nop                                                              // 0x0071a8ec    90
                         nop                                                              // 0x0071a8ed    90
                         nop                                                              // 0x0071a8ee    90
                         nop                                                              // 0x0071a8ef    90
_jmp_addr_0x0071a8f0:    {disp32} mov       eax, dword ptr [_game]                        // 0x0071a8f0    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00205a40]             // 0x0071a8f5    8b88405a2000
                         sub                ecx, dword ptr [data_bytes + 0x3d3bbc]        // 0x0071a8fb    2b0dbc9bd900
                         cmp                ecx, 0x14                                     // 0x0071a901    83f914
                         {disp8} jbe        _jmp_addr_0x0071a92a                          // 0x0071a904    7624
                         push               0x3f800000                                    // 0x0071a906    680000803f
                         call               _jmp_addr_0x006de590                          // 0x0071a90b    e8803cfcff
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x0071a910    d9442408
                         fabs                                                             // 0x0071a914    d9e1
                         fcompp                                                           // 0x0071a916    ded9
                         add                esp, 0x04                                     // 0x0071a918    83c404
                         fnstsw             ax                                            // 0x0071a91b    dfe0
                         test               ah, 0x41                                      // 0x0071a91d    f6c441
                         {disp8} jne        _jmp_addr_0x0071a92a                          // 0x0071a920    7508
                         mov                eax, 0x00000001                               // 0x0071a922    b801000000
                         ret                0x0004                                        // 0x0071a927    c20400
_jmp_addr_0x0071a92a:    xor.s              eax, eax                                      // 0x0071a92a    33c0
                         ret                0x0004                                        // 0x0071a92c    c20400
                         nop                                                              // 0x0071a92f    90
_globl_ct_0x0071a930:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x0071a930    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x0071a936    b001
                         test               al, cl                                        // 0x0071a938    84c8
                         {disp8} jne        _jmp_addr_0x0071a944                          // 0x0071a93a    7508
                         or.s               cl, al                                        // 0x0071a93c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x0071a93e    880d34c9fa00
_jmp_addr_0x0071a944:    {disp32} jmp       _jmp_addr_0x0071a950                          // 0x0071a944    e907000000
                         nop                                                              // 0x0071a949    90
                         nop                                                              // 0x0071a94a    90
                         nop                                                              // 0x0071a94b    90
                         nop                                                              // 0x0071a94c    90
                         nop                                                              // 0x0071a94d    90
                         nop                                                              // 0x0071a94e    90
                         nop                                                              // 0x0071a94f    90
_jmp_addr_0x0071a950:    push               0x00407870                                    // 0x0071a950    6870784000
                         call               _atexit                                       // 0x0071a955    e837ae0a00
                         pop                ecx                                           // 0x0071a95a    59
                         ret                                                              // 0x0071a95b    c3
                         nop                                                              // 0x0071a95c    90
                         nop                                                              // 0x0071a95d    90
                         nop                                                              // 0x0071a95e    90
                         nop                                                              // 0x0071a95f    90
_globl_ct_0x0071a960:    {disp32} jmp       _jmp_addr_0x0071a970                          // 0x0071a960    e90b000000
                         nop                                                              // 0x0071a965    90
                         nop                                                              // 0x0071a966    90
                         nop                                                              // 0x0071a967    90
                         nop                                                              // 0x0071a968    90
                         nop                                                              // 0x0071a969    90
                         nop                                                              // 0x0071a96a    90
                         nop                                                              // 0x0071a96b    90
                         nop                                                              // 0x0071a96c    90
                         nop                                                              // 0x0071a96d    90
                         nop                                                              // 0x0071a96e    90
                         nop                                                              // 0x0071a96f    90
_jmp_addr_0x0071a970:    {disp32} fld       dword ptr [rdata_bytes + 0xc2a2c]             // 0x0071a970    d9052cba9600
                         {disp32} fmul      dword ptr [rdata_bytes + 0xc2a28]             // 0x0071a976    d80d28ba9600
                         {disp32} fstp      dword ptr [data_bytes + 0x3d3bd0]             // 0x0071a97c    d91dd09bd900
                         ret                                                              // 0x0071a982    c3
                         nop                                                              // 0x0071a983    90
                         nop                                                              // 0x0071a984    90
                         nop                                                              // 0x0071a985    90
                         nop                                                              // 0x0071a986    90
                         nop                                                              // 0x0071a987    90
                         nop                                                              // 0x0071a988    90
                         nop                                                              // 0x0071a989    90
                         nop                                                              // 0x0071a98a    90
                         nop                                                              // 0x0071a98b    90
                         nop                                                              // 0x0071a98c    90
                         nop                                                              // 0x0071a98d    90
                         nop                                                              // 0x0071a98e    90
                         nop                                                              // 0x0071a98f    90
_globl_ct_0x0071a990:    {disp32} jmp       _jmp_addr_0x0071a9a0                          // 0x0071a990    e90b000000
                         nop                                                              // 0x0071a995    90
                         nop                                                              // 0x0071a996    90
                         nop                                                              // 0x0071a997    90
                         nop                                                              // 0x0071a998    90
                         nop                                                              // 0x0071a999    90
                         nop                                                              // 0x0071a99a    90
                         nop                                                              // 0x0071a99b    90
                         nop                                                              // 0x0071a99c    90
                         nop                                                              // 0x0071a99d    90
                         nop                                                              // 0x0071a99e    90
                         nop                                                              // 0x0071a99f    90
_jmp_addr_0x0071a9a0:    {disp32} mov       dword ptr [data_bytes + 0x3d3bcc], 0xffffffff // 0x0071a9a0    c705cc9bd900ffffffff
                         ret                                                              // 0x0071a9aa    c3
                         nop                                                              // 0x0071a9ab    90
                         nop                                                              // 0x0071a9ac    90
                         nop                                                              // 0x0071a9ad    90
                         nop                                                              // 0x0071a9ae    90
                         nop                                                              // 0x0071a9af    90
_globl_ct_0x0071a9b0:    call               _jmp_addr_0x0071a9c0                          // 0x0071a9b0    e80b000000
                         {disp32} jmp       _jmp_addr_0x0071aa10                          // 0x0071a9b5    e956000000
                         nop                                                              // 0x0071a9ba    90
                         nop                                                              // 0x0071a9bb    90
                         nop                                                              // 0x0071a9bc    90
                         nop                                                              // 0x0071a9bd    90
                         nop                                                              // 0x0071a9be    90
                         nop                                                              // 0x0071a9bf    90
_jmp_addr_0x0071a9c0:    mov                eax, 0x00d99bd8                               // 0x0071a9c0    b8d89bd900
                         mov                ecx, 0x00000016                               // 0x0071a9c5    b916000000
                         xor.s              edx, edx                                      // 0x0071a9ca    33d2
.att_syntax
_jmp_addr_0x0071a9cc:    movl               $??_7Base@@6B@, (%eax)                        // 0x0071a9cc    c700449a8a00
.intel_syntax noprefix
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x0071a9d2    895004
                         {disp8} mov        dword ptr [eax + 0x08], edx                   // 0x0071a9d5    895008
                         mov                dword ptr [eax], 0x0098047c                   // 0x0071a9d8    c7007c049800
                         add                eax, 0x00000098                               // 0x0071a9de    0598000000
                         dec                ecx                                           // 0x0071a9e3    49
                         {disp8} jne        _jmp_addr_0x0071a9cc                          // 0x0071a9e4    75e6
                         ret                                                              // 0x0071a9e6    c3
                         nop                                                              // 0x0071a9e7    90
                         nop                                                              // 0x0071a9e8    90
                         nop                                                              // 0x0071a9e9    90
                         nop                                                              // 0x0071a9ea    90
                         nop                                                              // 0x0071a9eb    90
                         nop                                                              // 0x0071a9ec    90
                         nop                                                              // 0x0071a9ed    90
                         nop                                                              // 0x0071a9ee    90
                         nop                                                              // 0x0071a9ef    90
?GetBaseInfo@GHelpSpritesGuidance@@UAEPAVGBaseInfo@@AAI@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0071a9f0    8b442404
                         mov                dword ptr [eax], 0x00000001                   // 0x0071a9f4    c70001000000
                         mov                eax, 0x00d99bd8                               // 0x0071a9fa    b8d89bd900
                         ret                0x0004                                        // 0x0071a9ff    c20400
                         nop                                                              // 0x0071aa02    90
                         nop                                                              // 0x0071aa03    90
                         nop                                                              // 0x0071aa04    90
                         nop                                                              // 0x0071aa05    90
                         nop                                                              // 0x0071aa06    90
                         nop                                                              // 0x0071aa07    90
                         nop                                                              // 0x0071aa08    90
                         nop                                                              // 0x0071aa09    90
                         nop                                                              // 0x0071aa0a    90
                         nop                                                              // 0x0071aa0b    90
                         nop                                                              // 0x0071aa0c    90
                         nop                                                              // 0x0071aa0d    90
                         nop                                                              // 0x0071aa0e    90
                         nop                                                              // 0x0071aa0f    90
_jmp_addr_0x0071aa10:    push               0x0071aa20                                    // 0x0071aa10    6820aa7100
                         call               _atexit                                       // 0x0071aa15    e877ad0a00
                         pop                ecx                                           // 0x0071aa1a    59
                         ret                                                              // 0x0071aa1b    c3
                         nop                                                              // 0x0071aa1c    90
                         nop                                                              // 0x0071aa1d    90
                         nop                                                              // 0x0071aa1e    90
                         nop                                                              // 0x0071aa1f    90
                         {disp32} mov       cl, byte ptr [data_bytes + 0x3d3bc8]          // 0x0071aa20    8a0dc89bd900
                         mov                al, 0x01                                      // 0x0071aa26    b001
                         test               al, cl                                        // 0x0071aa28    84c8
                         {disp8} jne        _jmp_addr_0x0071aa52                          // 0x0071aa2a    7526
                         push               esi                                           // 0x0071aa2c    56
                         or.s               cl, al                                        // 0x0071aa2d    0ac8
                         push               edi                                           // 0x0071aa2f    57
                         {disp32} mov       byte ptr [data_bytes + 0x3d3bc8], cl          // 0x0071aa30    880dc89bd900
                         mov                esi, 0x00d9a8e8                               // 0x0071aa36    bee8a8d900
                         mov                edi, 0x00000016                               // 0x0071aa3b    bf16000000
_jmp_addr_0x0071aa40:    sub                esi, 0x00000098                               // 0x0071aa40    81ee98000000
                         mov.s              ecx, esi                                      // 0x0071aa46    8bce
                         call               _jmp_addr_0x00436960                          // 0x0071aa48    e813bfd1ff
                         dec                edi                                           // 0x0071aa4d    4f
                         {disp8} jne        _jmp_addr_0x0071aa40                          // 0x0071aa4e    75f0
                         pop                edi                                           // 0x0071aa50    5f
                         pop                esi                                           // 0x0071aa51    5e
_jmp_addr_0x0071aa52:    ret                                                              // 0x0071aa52    c3
                         nop                                                              // 0x0071aa53    90
                         nop                                                              // 0x0071aa54    90
                         nop                                                              // 0x0071aa55    90
                         nop                                                              // 0x0071aa56    90
                         nop                                                              // 0x0071aa57    90
                         nop                                                              // 0x0071aa58    90
                         nop                                                              // 0x0071aa59    90
                         nop                                                              // 0x0071aa5a    90
                         nop                                                              // 0x0071aa5b    90
                         nop                                                              // 0x0071aa5c    90
                         nop                                                              // 0x0071aa5d    90
                         nop                                                              // 0x0071aa5e    90
                         nop                                                              // 0x0071aa5f    90
??_GGHelpSpritesGuidance@@UAEPAXI@Z:
                         push               esi                                           // 0x0071aa60    56
                         mov.s              esi, ecx                                      // 0x0071aa61    8bf1
                         call               _jmp_addr_0x00436960                          // 0x0071aa63    e8f8bed1ff
                         test               byte ptr [esp + 0x08], 0x01                   // 0x0071aa68    f644240801
                         {disp8} je         _jmp_addr_0x0071aa7d                          // 0x0071aa6d    740e
                         push               0x00000098                                    // 0x0071aa6f    6898000000
                         push               esi                                           // 0x0071aa74    56
                         call               ??3Base@@SAXPAXK@Z                          // 0x0071aa75    e8f6bed1ff
                         add                esp, 0x08                                     // 0x0071aa7a    83c408
_jmp_addr_0x0071aa7d:    mov.s              eax, esi                                      // 0x0071aa7d    8bc6
                         pop                esi                                           // 0x0071aa7f    5e
                         ret                0x0004                                        // 0x0071aa80    c20400
                         nop                                                              // 0x0071aa83    90
                         nop                                                              // 0x0071aa84    90
                         nop                                                              // 0x0071aa85    90
                         nop                                                              // 0x0071aa86    90
                         nop                                                              // 0x0071aa87    90
                         nop                                                              // 0x0071aa88    90
                         nop                                                              // 0x0071aa89    90
                         nop                                                              // 0x0071aa8a    90
                         nop                                                              // 0x0071aa8b    90
                         nop                                                              // 0x0071aa8c    90
                         nop                                                              // 0x0071aa8d    90
                         nop                                                              // 0x0071aa8e    90
                         nop                                                              // 0x0071aa8f    90
_jmp_addr_0x0071aa90:    {disp8} fld        dword ptr [esp + 0x08]                        // 0x0071aa90    d9442408
                         push               ecx                                           // 0x0071aa94    51
                         {disp32} fmul      dword ptr [__real@3eaaaaab]                   // 0x0071aa95    d80d6cb28a00
                         fstp               dword ptr [esp]                               // 0x0071aa9b    d91c24
                         call               _jmp_addr_0x006de590                          // 0x0071aa9e    e8ed3afcff
                         {disp8} fsubr      dword ptr [esp + 0x0c]                        // 0x0071aaa3    d86c240c
                         add                esp, 0x04                                     // 0x0071aaa7    83c404
                         {disp32} fcom      dword ptr [rdata_bytes + 0xd7324]             // 0x0071aaaa    d81524039800
                         fnstsw             ax                                            // 0x0071aab0    dfe0
                         test               ah, 0x01                                      // 0x0071aab2    f6c401
                         {disp8} jne        _jmp_addr_0x0071aaca                          // 0x0071aab5    7513
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0071aab7    8b442404
                         fstp               st(0)                                         // 0x0071aabb    ddd8
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x0071aabd    8d0440
                         {disp32} mov       eax, dword ptr [eax * 0x4 + 0x00980328]       // 0x0071aac0    8b048528039800
                         ret                0x0008                                        // 0x0071aac7    c20800
_jmp_addr_0x0071aaca:    {disp32} fcom      dword ptr [rdata_bytes + 0xd7320]             // 0x0071aaca    d81520039800
                         fnstsw             ax                                            // 0x0071aad0    dfe0
                         test               ah, 0x01                                      // 0x0071aad2    f6c401
                         {disp8} jne        _jmp_addr_0x0071aaea                          // 0x0071aad5    7513
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0071aad7    8b442404
                         fstp               st(0)                                         // 0x0071aadb    ddd8
                         lea                ecx, dword ptr [eax + eax * 0x2]              // 0x0071aadd    8d0c40
                         {disp32} mov       eax, dword ptr [ecx * 0x4 + 0x0098032c]       // 0x0071aae0    8b048d2c039800
                         ret                0x0008                                        // 0x0071aae7    c20800
_jmp_addr_0x0071aaea:    {disp32} fcomp     dword ptr [rdata_bytes + 0xd731c]             // 0x0071aaea    d81d1c039800
                         fnstsw             ax                                            // 0x0071aaf0    dfe0
                         test               ah, 0x01                                      // 0x0071aaf2    f6c401
                         {disp8} jne        _jmp_addr_0x0071ab08                          // 0x0071aaf5    7511
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0071aaf7    8b442404
                         lea                edx, dword ptr [eax + eax * 0x2]              // 0x0071aafb    8d1440
                         {disp32} mov       eax, dword ptr [edx * 0x4 + 0x00980330]       // 0x0071aafe    8b049530039800
                         ret                0x0008                                        // 0x0071ab05    c20800
_jmp_addr_0x0071ab08:    xor.s              eax, eax                                      // 0x0071ab08    33c0
                         ret                0x0008                                        // 0x0071ab0a    c20800
                         nop                                                              // 0x0071ab0d    90
                         nop                                                              // 0x0071ab0e    90
                         nop                                                              // 0x0071ab0f    90
??0GGuidance@@QAE@XZ:
                         mov.s              eax, ecx                                      // 0x0071ab10    8bc1
                         xor.s              ecx, ecx                                      // 0x0071ab12    33c9
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x0071ab14    894804
                         {disp32} mov       dword ptr [eax + 0x00000094], ecx             // 0x0071ab17    898894000000
                         {disp32} mov       dword ptr [eax + 0x00000090], ecx             // 0x0071ab1d    898890000000
                         mov                dword ptr [eax], 0x009804ac                   // 0x0071ab23    c700ac049800
                         ret                                                              // 0x0071ab29    c3
                         nop                                                              // 0x0071ab2a    90
                         nop                                                              // 0x0071ab2b    90
                         nop                                                              // 0x0071ab2c    90
                         nop                                                              // 0x0071ab2d    90
                         nop                                                              // 0x0071ab2e    90
                         nop                                                              // 0x0071ab2f    90
??_GGGuidance@@UAEPAXI@Z:
                         push               esi                                           // 0x0071ab30    56
                         mov.s              esi, ecx                                      // 0x0071ab31    8bf1
                         call               _jmp_addr_0x0071ab60                          // 0x0071ab33    e828000000
                         test               byte ptr [esp + 0x08], 0x01                   // 0x0071ab38    f644240801
                         {disp8} je         _jmp_addr_0x0071ab4d                          // 0x0071ab3d    740e
                         push               0x000000ec                                    // 0x0071ab3f    68ec000000
                         push               esi                                           // 0x0071ab44    56
                         call               ??3Base@@SAXPAXK@Z                          // 0x0071ab45    e826bed1ff
                         add                esp, 0x08                                     // 0x0071ab4a    83c408
_jmp_addr_0x0071ab4d:    mov.s              eax, esi                                      // 0x0071ab4d    8bc6
                         pop                esi                                           // 0x0071ab4f    5e
                         ret                0x0004                                        // 0x0071ab50    c20400
                         nop                                                              // 0x0071ab53    90
                         nop                                                              // 0x0071ab54    90
                         nop                                                              // 0x0071ab55    90
                         nop                                                              // 0x0071ab56    90
                         nop                                                              // 0x0071ab57    90
                         nop                                                              // 0x0071ab58    90
                         nop                                                              // 0x0071ab59    90
                         nop                                                              // 0x0071ab5a    90
                         nop                                                              // 0x0071ab5b    90
                         nop                                                              // 0x0071ab5c    90
                         nop                                                              // 0x0071ab5d    90
                         nop                                                              // 0x0071ab5e    90
                         nop                                                              // 0x0071ab5f    90
_jmp_addr_0x0071ab60:    mov                dword ptr [ecx], 0x009804ac                   // 0x0071ab60    c701ac049800
                         {disp32} jmp       _jmp_addr_0x00436960                          // 0x0071ab66    e9f5bdd1ff
                         nop                                                              // 0x0071ab6b    90
                         nop                                                              // 0x0071ab6c    90
                         nop                                                              // 0x0071ab6d    90
                         nop                                                              // 0x0071ab6e    90
                         nop                                                              // 0x0071ab6f    90
_jmp_addr_0x0071ab70:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0071ab70    8b442404
                         cmp                eax, 0x0a                                     // 0x0071ab74    83f80a
                         {disp8} jne        _jmp_addr_0x0071abde                          // 0x0071ab77    7565
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0071ab79    8b442408
                         test               eax, eax                                      // 0x0071ab7d    85c0
                         {disp8} jl         _jmp_addr_0x0071abd9                          // 0x0071ab7f    7c58
                         cmp                eax, 0x01                                     // 0x0071ab81    83f801
                         {disp8} jle        _jmp_addr_0x0071abb2                          // 0x0071ab84    7e2c
                         cmp                eax, 0x02                                     // 0x0071ab86    83f802
                         {disp8} jne        _jmp_addr_0x0071abd9                          // 0x0071ab89    754e
                         push               0x3f800000                                    // 0x0071ab8b    680000803f
                         call               _jmp_addr_0x006de590                          // 0x0071ab90    e8fb39fcff
                         {disp32} fcomp     dword ptr [_rdata_float0p5]                   // 0x0071ab95    d81db4a38a00
                         add                esp, 0x04                                     // 0x0071ab9b    83c404
                         fnstsw             ax                                            // 0x0071ab9e    dfe0
                         test               ah, 0x41                                      // 0x0071aba0    f6c441
                         mov                eax, 0x000012fd                               // 0x0071aba3    b8fd120000
                         {disp8} je         _jmp_addr_0x0071abe5                          // 0x0071aba8    743b
                         mov                eax, 0x000012fe                               // 0x0071abaa    b8fe120000
                         ret                0x0008                                        // 0x0071abaf    c20800
_jmp_addr_0x0071abb2:    push               0x3f800000                                    // 0x0071abb2    680000803f
                         call               _jmp_addr_0x006de590                          // 0x0071abb7    e8d439fcff
                         {disp32} fcomp     dword ptr [_rdata_float0p5]                   // 0x0071abbc    d81db4a38a00
                         add                esp, 0x04                                     // 0x0071abc2    83c404
                         fnstsw             ax                                            // 0x0071abc5    dfe0
                         test               ah, 0x41                                      // 0x0071abc7    f6c441
                         mov                eax, 0x000012fb                               // 0x0071abca    b8fb120000
                         {disp8} je         _jmp_addr_0x0071abe5                          // 0x0071abcf    7414
                         mov                eax, 0x000012fc                               // 0x0071abd1    b8fc120000
                         ret                0x0008                                        // 0x0071abd6    c20800
_jmp_addr_0x0071abd9:    xor.s              eax, eax                                      // 0x0071abd9    33c0
                         ret                0x0008                                        // 0x0071abdb    c20800
_jmp_addr_0x0071abde:    {disp32} mov       eax, dword ptr [eax * 0x4 + 0x0098040c]       // 0x0071abde    8b04850c049800
_jmp_addr_0x0071abe5:    ret                0x0008                                        // 0x0071abe5    c20800
                         nop                                                              // 0x0071abe8    90
                         nop                                                              // 0x0071abe9    90
                         nop                                                              // 0x0071abea    90
                         nop                                                              // 0x0071abeb    90
                         nop                                                              // 0x0071abec    90
                         nop                                                              // 0x0071abed    90
                         nop                                                              // 0x0071abee    90
                         nop                                                              // 0x0071abef    90
_jmp_addr_0x0071abf0:    push               ebx                                           // 0x0071abf0    53
                         push               ebp                                           // 0x0071abf1    55
                         push               esi                                           // 0x0071abf2    56
                         push               edi                                           // 0x0071abf3    57
                         mov.s              edi, ecx                                      // 0x0071abf4    8bf9
                         {disp8} mov        esi, dword ptr [edi + 0x08]                   // 0x0071abf6    8b7708
                         test               esi, esi                                      // 0x0071abf9    85f6
                         {disp8} je         _jmp_addr_0x0071ac0e                          // 0x0071abfb    7411
                         mov.s              ecx, esi                                      // 0x0071abfd    8bce
                         call               dword ptr [rdata_bytes + 0x758]               // 0x0071abff    ff1558978a00
                         push               esi                                           // 0x0071ac05    56
_jmp_addr_0x0071ac06:    call               ??3@YAXPAX@Z                                  // 0x0071ac06    e88d420900
                         add                esp, 0x04                                     // 0x0071ac0b    83c404
_jmp_addr_0x0071ac0e:    {disp32} mov       eax, dword ptr [edi + 0x00000090]             // 0x0071ac0e    8b8790000000
                         test               eax, eax                                      // 0x0071ac14    85c0
                         {disp8} je         _jmp_addr_0x0071ac5d                          // 0x0071ac16    7445
                         {disp8} mov        ebp, dword ptr [eax + 0x04]                   // 0x0071ac18    8b6804
                         xor.s              ebx, ebx                                      // 0x0071ac1b    33db
                         test               eax, eax                                      // 0x0071ac1d    85c0
                         {disp8} je         _jmp_addr_0x0071ac5a                          // 0x0071ac1f    7439
_jmp_addr_0x0071ac21:    cmp                dword ptr [eax + 0x04], ebp                   // 0x0071ac21    396804
                         mov                esi, dword ptr [eax]                          // 0x0071ac24    8b30
                         {disp8} jne        _jmp_addr_0x0071ac52                          // 0x0071ac26    752a
                         cmp                eax, dword ptr [edi + 0x00000090]             // 0x0071ac28    3b8790000000
                         {disp8} jne        _jmp_addr_0x0071ac38                          // 0x0071ac2e    7508
                         {disp32} mov       dword ptr [edi + 0x00000090], esi             // 0x0071ac30    89b790000000
                         {disp8} jmp        _jmp_addr_0x0071ac3a                          // 0x0071ac36    eb02
_jmp_addr_0x0071ac38:    mov                dword ptr [ebx], esi                          // 0x0071ac38    8933
_jmp_addr_0x0071ac3a:    {disp32} mov       edx, dword ptr [edi + 0x00000094]             // 0x0071ac3a    8b9794000000
                         dec                edx                                           // 0x0071ac40    4a
                         push               eax                                           // 0x0071ac41    50
                         {disp32} mov       dword ptr [edi + 0x00000094], edx             // 0x0071ac42    899794000000
                         call               ??3@YAXPAX@Z                                  // 0x0071ac48    e84b420900
                         add                esp, 0x04                                     // 0x0071ac4d    83c404
                         {disp8} jmp        _jmp_addr_0x0071ac54                          // 0x0071ac50    eb02
_jmp_addr_0x0071ac52:    mov.s              ebx, eax                                      // 0x0071ac52    8bd8
_jmp_addr_0x0071ac54:    test               esi, esi                                      // 0x0071ac54    85f6
                         mov.s              eax, esi                                      // 0x0071ac56    8bc6
                         {disp8} jne        _jmp_addr_0x0071ac21                          // 0x0071ac58    75c7
_jmp_addr_0x0071ac5a:    push               ebp                                           // 0x0071ac5a    55
                         {disp8} jmp        _jmp_addr_0x0071ac06                          // 0x0071ac5b    eba9
_jmp_addr_0x0071ac5d:    pop                edi                                           // 0x0071ac5d    5f
                         pop                esi                                           // 0x0071ac5e    5e
                         pop                ebp                                           // 0x0071ac5f    5d
                         pop                ebx                                           // 0x0071ac60    5b
                         ret                                                              // 0x0071ac61    c3
                         nop                                                              // 0x0071ac62    90
                         nop                                                              // 0x0071ac63    90
                         nop                                                              // 0x0071ac64    90
                         nop                                                              // 0x0071ac65    90
                         nop                                                              // 0x0071ac66    90
                         nop                                                              // 0x0071ac67    90
                         nop                                                              // 0x0071ac68    90
                         nop                                                              // 0x0071ac69    90
                         nop                                                              // 0x0071ac6a    90
                         nop                                                              // 0x0071ac6b    90
                         nop                                                              // 0x0071ac6c    90
                         nop                                                              // 0x0071ac6d    90
                         nop                                                              // 0x0071ac6e    90
                         nop                                                              // 0x0071ac6f    90
@Init__9GGuidanceFR16GInterfaceStatus@12:    push               ebx                                           // 0x0071ac70    53
                         push               ebp                                           // 0x0071ac71    55
                         push               esi                                           // 0x0071ac72    56
                         push               edi                                           // 0x0071ac73    57
                         push               0x000000fc                                    // 0x0071ac74    68fc000000
                         push               0x00c22218                                    // 0x0071ac79    681822c200
                         push               0x00000168                                    // 0x0071ac7e    6868010000
                         mov.s              esi, ecx                                      // 0x0071ac83    8bf1
                         call               ___nw__FUl                                    // 0x0071ac85    e8060b0c00
                         xor.s              edi, edi                                      // 0x0071ac8a    33ff
                         add                esp, 0x0c                                     // 0x0071ac8c    83c40c
                         cmp.s              eax, edi                                      // 0x0071ac8f    3bc7
                         {disp8} je         _jmp_addr_0x0071ac9d                          // 0x0071ac91    740a
                         mov.s              ecx, eax                                      // 0x0071ac93    8bc8
                         call               dword ptr [rdata_bytes + 0x75c]               // 0x0071ac95    ff155c978a00
                         {disp8} jmp        _jmp_addr_0x0071ac9f                          // 0x0071ac9b    eb02
_jmp_addr_0x0071ac9d:    xor.s              eax, eax                                      // 0x0071ac9d    33c0
_jmp_addr_0x0071ac9f:    {disp8} mov        dword ptr [esi + 0x08], eax                   // 0x0071ac9f    894608
                         {disp32} mov       ecx, dword ptr [_global]                      // 0x0071aca2    8b0d203bcd00
                         {disp32} mov       edx, dword ptr [ecx + 0x000003d0]             // 0x0071aca8    8b91d0030000
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x0071acae    895004
                         {disp8} mov        eax, dword ptr [esi + 0x08]                   // 0x0071acb1    8b4608
                         {disp8} mov        dword ptr [eax + 0x08], edi                   // 0x0071acb4    897808
                         {disp8} mov        ecx, dword ptr [esi + 0x08]                   // 0x0071acb7    8b4e08
                         {disp8} mov        dword ptr [ecx + 0x0c], edi                   // 0x0071acba    89790c
                         {disp8} mov        edx, dword ptr [esi + 0x08]                   // 0x0071acbd    8b5608
                         {disp8} mov        dword ptr [edx + 0x50], 0x00000002            // 0x0071acc0    c7425002000000
                         mov                edi, 0x00980190                               // 0x0071acc7    bf90019800
                         {disp8} lea        ebp, dword ptr [esi + 0x0c]                   // 0x0071accc    8d6e0c
_jmp_addr_0x0071accf:    mov                ecx, dword ptr [edi]                          // 0x0071accf    8b0f
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0071acd1    a15c19d000
                         {disp32} mov       ebx, dword ptr [eax + 0x00205a40]             // 0x0071acd6    8b98405a2000
                         push               ecx                                           // 0x0071acdc    51
                         call               ?LocalRand@GRand@@SAIJ@Z                      // 0x0071acdd    e88e38fcff
                         sub.s              ebx, eax                                      // 0x0071ace2    2bd8
                         add                esp, 0x04                                     // 0x0071ace4    83c404
                         test               ebx, ebx                                      // 0x0071ace7    85db
                         {disp8} jle        _jmp_addr_0x0071ad06                          // 0x0071ace9    7e1b
                         mov                eax, dword ptr [edi]                          // 0x0071aceb    8b07
                         {disp32} mov       edx, dword ptr [_game]                        // 0x0071aced    8b155c19d000
                         {disp32} mov       ebx, dword ptr [edx + 0x00205a40]             // 0x0071acf3    8b9a405a2000
                         push               eax                                           // 0x0071acf9    50
                         call               ?LocalRand@GRand@@SAIJ@Z                      // 0x0071acfa    e87138fcff
                         add                esp, 0x04                                     // 0x0071acff    83c404
                         sub.s              ebx, eax                                      // 0x0071ad02    2bd8
                         {disp8} jmp        _jmp_addr_0x0071ad08                          // 0x0071ad04    eb02
_jmp_addr_0x0071ad06:    xor.s              ebx, ebx                                      // 0x0071ad06    33db
_jmp_addr_0x0071ad08:    {disp8} mov        dword ptr [ebp + 0x00], ebx                   // 0x0071ad08    895d00
                         add                edi, 0x0c                                     // 0x0071ad0b    83c70c
                         add                ebp, 0x04                                     // 0x0071ad0e    83c504
                         cmp                edi, 0x0098031c                               // 0x0071ad11    81ff1c039800
                         .byte              0x72, 0xb6// {disp8} jb _jmp_addr_0x0071accf  // 0x0071ad17    72b6
_jmp_addr_0x0071ad19:    {disp32} mov       eax, dword ptr [esi + 0x00000090]             // 0x0071ad19    8b8690000000
                         xor.s              ecx, ecx                                      // 0x0071ad1f    33c9
                         cmp.s              eax, ecx                                      // 0x0071ad21    3bc1
                         {disp8} je         _jmp_addr_0x0071ad6b                          // 0x0071ad23    7446
                         {disp8} mov        ebp, dword ptr [eax + 0x04]                   // 0x0071ad25    8b6804
                         xor.s              ebx, ebx                                      // 0x0071ad28    33db
                         cmp.s              eax, ecx                                      // 0x0071ad2a    3bc1
                         {disp8} je         _jmp_addr_0x0071ad19                          // 0x0071ad2c    74eb
_jmp_addr_0x0071ad2e:    cmp                dword ptr [eax + 0x04], ebp                   // 0x0071ad2e    396804
                         mov                edi, dword ptr [eax]                          // 0x0071ad31    8b38
                         {disp8} jne        _jmp_addr_0x0071ad61                          // 0x0071ad33    752c
                         cmp                eax, dword ptr [esi + 0x00000090]             // 0x0071ad35    3b8690000000
                         {disp8} jne        _jmp_addr_0x0071ad45                          // 0x0071ad3b    7508
                         {disp32} mov       dword ptr [esi + 0x00000090], edi             // 0x0071ad3d    89be90000000
                         {disp8} jmp        _jmp_addr_0x0071ad47                          // 0x0071ad43    eb02
_jmp_addr_0x0071ad45:    mov                dword ptr [ebx], edi                          // 0x0071ad45    893b
_jmp_addr_0x0071ad47:    {disp32} mov       edx, dword ptr [esi + 0x00000094]             // 0x0071ad47    8b9694000000
                         dec                edx                                           // 0x0071ad4d    4a
                         push               eax                                           // 0x0071ad4e    50
                         {disp32} mov       dword ptr [esi + 0x00000094], edx             // 0x0071ad4f    899694000000
                         call               ??3@YAXPAX@Z                                  // 0x0071ad55    e83e410900
                         add                esp, 0x04                                     // 0x0071ad5a    83c404
                         xor.s              ecx, ecx                                      // 0x0071ad5d    33c9
                         {disp8} jmp        _jmp_addr_0x0071ad63                          // 0x0071ad5f    eb02
_jmp_addr_0x0071ad61:    mov.s              ebx, eax                                      // 0x0071ad61    8bd8
_jmp_addr_0x0071ad63:    cmp.s              edi, ecx                                      // 0x0071ad63    3bf9
                         mov.s              eax, edi                                      // 0x0071ad65    8bc7
                         {disp8} jne        _jmp_addr_0x0071ad2e                          // 0x0071ad67    75c5
                         {disp8} jmp        _jmp_addr_0x0071ad19                          // 0x0071ad69    ebae
_jmp_addr_0x0071ad6b:    {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x0071ad6b    8b542414
                         {disp32} mov       dword ptr [esi + 0x00000098], ecx             // 0x0071ad6f    898e98000000
                         {disp32} mov       dword ptr [esi + 0x0000009c], ecx             // 0x0071ad75    898e9c000000
                         {disp32} mov       dword ptr [esi + 0x000000a0], ecx             // 0x0071ad7b    898ea0000000
                         {disp32} mov       dword ptr [esi + 0x000000b8], ecx             // 0x0071ad81    898eb8000000
                         {disp32} mov       dword ptr [esi + 0x000000b4], ecx             // 0x0071ad87    898eb4000000
                         {disp32} mov       dword ptr [esi + 0x000000ac], ecx             // 0x0071ad8d    898eac000000
                         {disp32} mov       dword ptr [esi + 0x000000b0], ecx             // 0x0071ad93    898eb0000000
                         {disp32} mov       dword ptr [esi + 0x000000c4], ecx             // 0x0071ad99    898ec4000000
                         {disp32} mov       dword ptr [esi + 0x000000c8], ecx             // 0x0071ad9f    898ec8000000
                         {disp32} mov       dword ptr [esi + 0x000000bc], ecx             // 0x0071ada5    898ebc000000
                         {disp32} mov       dword ptr [esi + 0x000000c0], ecx             // 0x0071adab    898ec0000000
                         {disp32} mov       dword ptr [esi + 0x000000a8], 0x41f00000      // 0x0071adb1    c786a80000000000f041
                         {disp32} mov       dword ptr [esi + 0x000000cc], edx             // 0x0071adbb    8996cc000000
                         add                esi, 0x000000d0                               // 0x0071adc1    81c6d0000000
                         mov.s              edi, esi                                      // 0x0071adc7    8bfe
                         mov                ecx, 0x00000007                               // 0x0071adc9    b907000000
                         xor.s              eax, eax                                      // 0x0071adce    33c0
                         rep stosd                                                        // 0x0071add0    f3ab
                         pop                edi                                           // 0x0071add2    5f
                         pop                esi                                           // 0x0071add3    5e
                         pop                ebp                                           // 0x0071add4    5d
                         {disp32} mov       dword ptr [data_bytes + 0x25c1cc], 0x00000001 // 0x0071add5    c705cc21c20001000000
                         pop                ebx                                           // 0x0071addf    5b
                         ret                0x0004                                        // 0x0071ade0    c20400
                         nop                                                              // 0x0071ade3    90
                         nop                                                              // 0x0071ade4    90
                         nop                                                              // 0x0071ade5    90
                         nop                                                              // 0x0071ade6    90
                         nop                                                              // 0x0071ade7    90
                         nop                                                              // 0x0071ade8    90
                         nop                                                              // 0x0071ade9    90
                         nop                                                              // 0x0071adea    90
                         nop                                                              // 0x0071adeb    90
                         nop                                                              // 0x0071adec    90
                         nop                                                              // 0x0071aded    90
                         nop                                                              // 0x0071adee    90
                         nop                                                              // 0x0071adef    90
_jmp_addr_0x0071adf0:    {disp32} mov       eax, dword ptr [_game]                        // 0x0071adf0    a15c19d000
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x0071adf5    8b542404
                         {disp32} mov       eax, dword ptr [eax + 0x00205a40]             // 0x0071adf9    8b80405a2000
                         sub                eax, dword ptr [ecx + edx * 0x4 + 0x0c]       // 0x0071adff    2b44910c
                         ret                0x0004                                        // 0x0071ae03    c20400
                         nop                                                              // 0x0071ae06    90
                         nop                                                              // 0x0071ae07    90
                         nop                                                              // 0x0071ae08    90
                         nop                                                              // 0x0071ae09    90
                         nop                                                              // 0x0071ae0a    90
                         nop                                                              // 0x0071ae0b    90
                         nop                                                              // 0x0071ae0c    90
                         nop                                                              // 0x0071ae0d    90
                         nop                                                              // 0x0071ae0e    90
                         nop                                                              // 0x0071ae0f    90
_jmp_addr_0x0071ae10:    push               esi                                           // 0x0071ae10    56
                         mov.s              esi, ecx                                      // 0x0071ae11    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000090]             // 0x0071ae13    8b8690000000
                         test               eax, eax                                      // 0x0071ae19    85c0
                         push               edi                                           // 0x0071ae1b    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x0071ae1c    8b7c240c
                         {disp8} je         _jmp_addr_0x0071ae2f                          // 0x0071ae20    740d
_jmp_addr_0x0071ae22:    {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x0071ae22    8b4804
                         cmp                dword ptr [ecx], edi                          // 0x0071ae25    3939
                         {disp8} je         _jmp_addr_0x0071ae53                          // 0x0071ae27    742a
                         mov                eax, dword ptr [eax]                          // 0x0071ae29    8b00
                         test               eax, eax                                      // 0x0071ae2b    85c0
                         {disp8} jne        _jmp_addr_0x0071ae22                          // 0x0071ae2d    75f3
_jmp_addr_0x0071ae2f:    push               0x0000012f                                    // 0x0071ae2f    682f010000
                         push               0x00c22218                                    // 0x0071ae34    681822c200
                         push               0x8                                           // 0x0071ae39    6a08
                         call               ___nw__FUl                                    // 0x0071ae3b    e850090c00
                         add                esp, 0x0c                                     // 0x0071ae40    83c40c
                         test               eax, eax                                      // 0x0071ae43    85c0
                         {disp8} je         _jmp_addr_0x0071ae85                          // 0x0071ae45    743e
                         push               edi                                           // 0x0071ae47    57
                         mov.s              ecx, eax                                      // 0x0071ae48    8bc8
                         call               @__ct__Q29GGuidance10LastThingsFP16GameThingWithPos@12                          // 0x0071ae4a    e871000000
                         mov.s              edi, eax                                      // 0x0071ae4f    8bf8
                         {disp8} jmp        _jmp_addr_0x0071ae87                          // 0x0071ae51    eb34
_jmp_addr_0x0071ae53:    {disp32} mov       eax, dword ptr [_game]                        // 0x0071ae53    a15c19d000
                         {disp32} mov       eax, dword ptr [eax + 0x00205a40]             // 0x0071ae58    8b80405a2000
                         {disp8} mov        edi, dword ptr [ecx + 0x04]                   // 0x0071ae5e    8b7904
                         mov.s              edx, eax                                      // 0x0071ae61    8bd0
                         sub.s              edx, edi                                      // 0x0071ae63    2bd7
                         cmp                edx, 0x00000258                               // 0x0071ae65    81fa58020000
                         {disp8} jbe        _jmp_addr_0x0071ae70                          // 0x0071ae6b    7603
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x0071ae6d    894104
_jmp_addr_0x0071ae70:    {disp32} mov       eax, dword ptr [_game]                        // 0x0071ae70    a15c19d000
                         {disp32} mov       eax, dword ptr [eax + 0x00205a40]             // 0x0071ae75    8b80405a2000
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                   // 0x0071ae7b    8b5104
                         pop                edi                                           // 0x0071ae7e    5f
                         sub.s              eax, edx                                      // 0x0071ae7f    2bc2
                         pop                esi                                           // 0x0071ae81    5e
                         ret                0x0004                                        // 0x0071ae82    c20400
_jmp_addr_0x0071ae85:    xor.s              edi, edi                                      // 0x0071ae85    33ff
_jmp_addr_0x0071ae87:    test               edi, edi                                      // 0x0071ae87    85ff
                         {disp8} je         _jmp_addr_0x0071aeb0                          // 0x0071ae89    7425
                         push               0x8                                           // 0x0071ae8b    6a08
                         call               ??2@YAPAXI@Z                                  // 0x0071ae8d    e85cb60a00
                         add                esp, 0x04                                     // 0x0071ae92    83c404
                         test               eax, eax                                      // 0x0071ae95    85c0
                         {disp8} je         _jmp_addr_0x0071aeb0                          // 0x0071ae97    7417
                         {disp32} mov       ecx, dword ptr [esi + 0x00000090]             // 0x0071ae99    8b8e90000000
                         {disp8} mov        dword ptr [eax + 0x04], edi                   // 0x0071ae9f    897804
                         mov                dword ptr [eax], ecx                          // 0x0071aea2    8908
                         {disp32} mov       dword ptr [esi + 0x00000090], eax             // 0x0071aea4    898690000000
                         {disp32} inc       dword ptr [esi + 0x00000094]                  // 0x0071aeaa    ff8694000000
_jmp_addr_0x0071aeb0:    pop                edi                                           // 0x0071aeb0    5f
                         xor.s              eax, eax                                      // 0x0071aeb1    33c0
                         pop                esi                                           // 0x0071aeb3    5e
                         ret                0x0004                                        // 0x0071aeb4    c20400
                         nop                                                              // 0x0071aeb7    90
                         nop                                                              // 0x0071aeb8    90
                         nop                                                              // 0x0071aeb9    90
                         nop                                                              // 0x0071aeba    90
                         nop                                                              // 0x0071aebb    90
                         nop                                                              // 0x0071aebc    90
                         nop                                                              // 0x0071aebd    90
                         nop                                                              // 0x0071aebe    90
                         nop                                                              // 0x0071aebf    90
@__ct__Q29GGuidance10LastThingsFP16GameThingWithPos@12:    mov.s              eax, ecx                                      // 0x0071aec0    8bc1
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x0071aec2    8b4c2404
                         mov                dword ptr [eax], ecx                          // 0x0071aec6    8908
                         {disp32} mov       edx, dword ptr [_game]                        // 0x0071aec8    8b155c19d000
                         {disp32} mov       ecx, dword ptr [edx + 0x00205a40]             // 0x0071aece    8b8a405a2000
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x0071aed4    894804
                         ret                0x0004                                        // 0x0071aed7    c20400
                         nop                                                              // 0x0071aeda    90
                         nop                                                              // 0x0071aedb    90
                         nop                                                              // 0x0071aedc    90
                         nop                                                              // 0x0071aedd    90
                         nop                                                              // 0x0071aede    90
                         nop                                                              // 0x0071aedf    90
_jmp_addr_0x0071aee0:    sub                esp, 0x08                                     // 0x0071aee0    83ec08
                         push               0x3f800000                                    // 0x0071aee3    680000803f
                         call               _jmp_addr_0x006de590                          // 0x0071aee8    e8a336fcff
                         {disp8} fst        dword ptr [esp + 0x04]                        // 0x0071aeed    d9542404
                         add                esp, 0x04                                     // 0x0071aef1    83c404
                         mov                eax, 0x00000002                               // 0x0071aef4    b802000000
_jmp_addr_0x0071aef9:    dec                eax                                           // 0x0071aef9    48
                         {disp8} fmul       dword ptr [esp + 0x00]                        // 0x0071aefa    d84c2400
                         {disp8} jne        _jmp_addr_0x0071aef9                          // 0x0071aefe    75f9
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x0071af00    8b44240c
                         push               esi                                           // 0x0071af04    56
                         lea                esi, dword ptr [eax + eax * 0x2]              // 0x0071af05    8d3440
                         {disp32} mov       eax, dword ptr [esi * 0x4 + 0x00980190]       // 0x0071af08    8b04b590019800
                         lea                eax, dword ptr [eax + eax * 0x4]              // 0x0071af0f    8d0480
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x0071af12    89442404
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000            // 0x0071af16    c744240800000000
                         {disp8} fild       qword ptr [esp + 0x04]                        // 0x0071af1e    df6c2404
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0071af22    d90590a38a00
                         fsub               st, st(2)                                     // 0x0071af28    d8e2
                         fmulp              st(1), st                                     // 0x0071af2a    dec9
                         fstp               st(1)                                         // 0x0071af2c    ddd9
                         call               _jmp_addr_0x007a1400                          // 0x0071af2e    e8cd640800
                         push               eax                                           // 0x0071af33    50
                         call               ?LocalRand@GRand@@SAIJ@Z                      // 0x0071af34    e83736fcff
                         {disp32} mov       ecx, dword ptr [esi * 0x4 + 0x00980190]       // 0x0071af39    8b0cb590019800
                         add                esp, 0x04                                     // 0x0071af40    83c404
                         add.s              eax, ecx                                      // 0x0071af43    03c1
                         pop                esi                                           // 0x0071af45    5e
                         add                esp, 0x08                                     // 0x0071af46    83c408
                         ret                0x0004                                        // 0x0071af49    c20400
                         nop                                                              // 0x0071af4c    90
                         nop                                                              // 0x0071af4d    90
                         nop                                                              // 0x0071af4e    90
                         nop                                                              // 0x0071af4f    90
_jmp_addr_0x0071af50:    push               ebx                                           // 0x0071af50    53
                         push               esi                                           // 0x0071af51    56
                         push               edi                                           // 0x0071af52    57
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x0071af53    8b7c2410
                         lea                esi, dword ptr [edi + edi * 0x2]              // 0x0071af57    8d347f
                         shl                esi, 2                                        // 0x0071af5a    c1e602
                         {disp32} mov       eax, dword ptr [esi + 0x00980198]             // 0x0071af5d    8b8698019800
                         test               eax, eax                                      // 0x0071af63    85c0
                         mov.s              ebx, ecx                                      // 0x0071af65    8bd9
                         {disp8} jne        _jmp_addr_0x0071af93                          // 0x0071af67    752a
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0071af69    8b0d5c19d000
                         cmp                dword ptr [ecx + 0x00205a08], 0x01            // 0x0071af6f    83b9085a200001
                         {disp8} jne        _jmp_addr_0x0071af99                          // 0x0071af76    7521
                         call               ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x0071af78    e80380e3ff
                         test               eax, eax                                      // 0x0071af7d    85c0
                         {disp8} jne        _jmp_addr_0x0071af93                          // 0x0071af7f    7512
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0071af81    8b0d5c19d000
                         {disp32} mov       eax, dword ptr [ecx + 0x00205a0c]             // 0x0071af87    8b810c5a2000
                         test               eax, eax                                      // 0x0071af8d    85c0
                         {disp8} je         _jmp_addr_0x0071afdc                          // 0x0071af8f    744b
                         {disp8} jmp        _jmp_addr_0x0071af99                          // 0x0071af91    eb06
_jmp_addr_0x0071af93:    {disp32} mov       ecx, dword ptr [_game]                        // 0x0071af93    8b0d5c19d000
_jmp_addr_0x0071af99:    {disp32} mov       eax, dword ptr [ecx + 0x0025005c]             // 0x0071af99    8b815c002500
                         {disp32} mov       ecx, dword ptr [eax + 0x000045f8]             // 0x0071af9f    8b88f8450000
                         test               ecx, ecx                                      // 0x0071afa5    85c9
                         {disp8} je         _jmp_addr_0x0071afb1                          // 0x0071afa7    7408
                         {disp32} mov       eax, dword ptr [eax + 0x000045f4]             // 0x0071afa9    8b80f4450000
                         {disp8} jmp        _jmp_addr_0x0071afb3                          // 0x0071afaf    eb02
_jmp_addr_0x0071afb1:    xor.s              eax, eax                                      // 0x0071afb1    33c0
_jmp_addr_0x0071afb3:    cmp                eax, dword ptr [esi + 0x00980194]             // 0x0071afb3    3b8694019800
                         {disp8} jl         _jmp_addr_0x0071afdc                          // 0x0071afb9    7c21
                         push               edi                                           // 0x0071afbb    57
                         mov.s              ecx, ebx                                      // 0x0071afbc    8bcb
                         call               _jmp_addr_0x0071aee0                          // 0x0071afbe    e81dffffff
                         push               edi                                           // 0x0071afc3    57
                         mov.s              ecx, ebx                                      // 0x0071afc4    8bcb
                         mov.s              esi, eax                                      // 0x0071afc6    8bf0
                         call               _jmp_addr_0x0071adf0                          // 0x0071afc8    e823feffff
                         cmp.s              eax, esi                                      // 0x0071afcd    3bc6
                         {disp8} jbe        _jmp_addr_0x0071afdc                          // 0x0071afcf    760b
                         pop                edi                                           // 0x0071afd1    5f
                         pop                esi                                           // 0x0071afd2    5e
                         mov                eax, 0x00000001                               // 0x0071afd3    b801000000
                         pop                ebx                                           // 0x0071afd8    5b
                         ret                0x0004                                        // 0x0071afd9    c20400
_jmp_addr_0x0071afdc:    pop                edi                                           // 0x0071afdc    5f
                         pop                esi                                           // 0x0071afdd    5e
                         xor.s              eax, eax                                      // 0x0071afde    33c0
                         pop                ebx                                           // 0x0071afe0    5b
                         ret                0x0004                                        // 0x0071afe1    c20400
                         nop                                                              // 0x0071afe4    90
                         nop                                                              // 0x0071afe5    90
                         nop                                                              // 0x0071afe6    90
                         nop                                                              // 0x0071afe7    90
                         nop                                                              // 0x0071afe8    90
                         nop                                                              // 0x0071afe9    90
                         nop                                                              // 0x0071afea    90
                         nop                                                              // 0x0071afeb    90
                         nop                                                              // 0x0071afec    90
                         nop                                                              // 0x0071afed    90
                         nop                                                              // 0x0071afee    90
                         nop                                                              // 0x0071afef    90
_jmp_addr_0x0071aff0:    push               esi                                           // 0x0071aff0    56
                         mov.s              esi, ecx                                      // 0x0071aff1    8bf1
                         push               0x8                                           // 0x0071aff3    6a08
                         call               _jmp_addr_0x0071af50                          // 0x0071aff5    e856ffffff
                         test               eax, eax                                      // 0x0071affa    85c0
                         {disp8} je         _jmp_addr_0x0071b017                          // 0x0071affc    7419
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0071affe    8b442408
                         push               eax                                           // 0x0071b002    50
                         mov.s              ecx, esi                                      // 0x0071b003    8bce
                         call               _jmp_addr_0x0071af50                          // 0x0071b005    e846ffffff
                         test               eax, eax                                      // 0x0071b00a    85c0
                         {disp8} je         _jmp_addr_0x0071b017                          // 0x0071b00c    7409
                         mov                eax, 0x00000001                               // 0x0071b00e    b801000000
                         pop                esi                                           // 0x0071b013    5e
                         ret                0x0004                                        // 0x0071b014    c20400
_jmp_addr_0x0071b017:    xor.s              eax, eax                                      // 0x0071b017    33c0
                         pop                esi                                           // 0x0071b019    5e
                         ret                0x0004                                        // 0x0071b01a    c20400
                         nop                                                              // 0x0071b01d    90
                         nop                                                              // 0x0071b01e    90
                         nop                                                              // 0x0071b01f    90
?ProcessTownDesireSFX@GGuidance@@SAXAAVGInterfaceStatus@@@Z:
                                                          {disp32} mov       eax, dword ptr [_game]                        // 0x0071b020    a15c19d000
                         {disp32} mov       eax, dword ptr [eax + 0x00205a40]             // 0x0071b025    8b80405a2000
                         xor.s              edx, edx                                      // 0x0071b02b    33d2
                         mov                ecx, 0x0000000a                               // 0x0071b02d    b90a000000
                         div                ecx                                           // 0x0071b032    f7f1
                         sub                esp, 0x08                                     // 0x0071b034    83ec08
                         push               esi                                           // 0x0071b037    56
                         test               edx, edx                                      // 0x0071b038    85d2
                         {disp32} jne       _jmp_addr_0x0071b121                          // 0x0071b03a    0f85e1000000
                         {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x0071b040    8b742410
                         {disp8} mov        ecx, dword ptr [esi + 0x30]                   // 0x0071b044    8b4e30
                         push               edx                                           // 0x0071b047    52
                         call               _jmp_addr_0x0071af50                          // 0x0071b048    e803ffffff
                         test               eax, eax                                      // 0x0071b04d    85c0
                         {disp32} je        _jmp_addr_0x0071b121                          // 0x0071b04f    0f84cc000000
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x0071b055    8d542408
                         push               edx                                           // 0x0071b059    52
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x0071b05a    8d442414
                         push               eax                                           // 0x0071b05e    50
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0071b05f    8d4c240c
                         push               ecx                                           // 0x0071b063    51
                         {disp8} mov        ecx, dword ptr [esi + 0x30]                   // 0x0071b064    8b4e30
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x0071b067    c744241000000000
                         {disp8} mov        dword ptr [esp + 0x1c], 0x00000000            // 0x0071b06f    c744241c00000000
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x0071b077    c744241400000000
                         call               _jmp_addr_0x0071b130                          // 0x0071b07f    e8ac000000
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x0071b084    8d542408
                         push               edx                                           // 0x0071b088    52
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x0071b089    8d442414
                         push               eax                                           // 0x0071b08d    50
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0071b08e    8d4c240c
                         push               ecx                                           // 0x0071b092    51
                         {disp8} mov        ecx, dword ptr [esi + 0x30]                   // 0x0071b093    8b4e30
                         call               _jmp_addr_0x0071b270                          // 0x0071b096    e8d5010000
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0071b09b    d9442410
                         {disp32} fcomp     dword ptr [rdata_bytes + 0xd712c]             // 0x0071b09f    d81d2c019800
                         fnstsw             ax                                            // 0x0071b0a5    dfe0
                         test               ah, 0x41                                      // 0x0071b0a7    f6c441
                         {disp8} jne        _jmp_addr_0x0071b121                          // 0x0071b0aa    7575
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0071b0ac    d9442410
                         push               ecx                                           // 0x0071b0b0    51
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x0071b0b1    d80db4a38a00
                         fstp               dword ptr [esp]                               // 0x0071b0b7    d91c24
                         call               _jmp_addr_0x006de590                          // 0x0071b0ba    e8d134fcff
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x0071b0bf    8b44240c
                         add                esp, 0x04                                     // 0x0071b0c3    83c404
                         test               eax, eax                                      // 0x0071b0c6    85c0
                         {disp8} fsubr      dword ptr [esp + 0x10]                        // 0x0071b0c8    d86c2410
                         {disp8} je         _jmp_addr_0x0071b11f                          // 0x0071b0cc    7451
                         {disp32} fld       dword ptr [rdata_bytes + 0xd7130]             // 0x0071b0ce    d90530019800
                         mov                edx, dword ptr [esi]                          // 0x0071b0d4    8b16
                         push               edi                                           // 0x0071b0d6    57
                         fmul               st, st(1)                                     // 0x0071b0d7    d8c9
                         {disp8} mov        edi, dword ptr [esi + 0x30]                   // 0x0071b0d9    8b7e30
                         push               0x1                                           // 0x0071b0dc    6a01
                         push               ecx                                           // 0x0071b0de    51
                         fstp               dword ptr [esp]                               // 0x0071b0df    d91c24
                         add                eax, 0x14                                     // 0x0071b0e2    83c014
                         push               eax                                           // 0x0071b0e5    50
                         push               0x5a                                          // 0x0071b0e6    6a5a
                         fstp               st(0)                                         // 0x0071b0e8    ddd8
                         push               0x64                                          // 0x0071b0ea    6a64
                         push               0x7f                                          // 0x0071b0ec    6a7f
                         push               0x0                                           // 0x0071b0ee    6a00
                         mov.s              ecx, esi                                      // 0x0071b0f0    8bce
                         call               dword ptr [edx + 0x1c]                        // 0x0071b0f2    ff521c
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x0071b0f5    8b542424
                         xor.s              ecx, ecx                                      // 0x0071b0f9    33c9
                         {disp32} mov       cl, byte ptr [eax + 0x000000b5]               // 0x0071b0fb    8a88b5000000
                         push               ecx                                           // 0x0071b101    51
                         push               edx                                           // 0x0071b102    52
                         push               0x1                                           // 0x0071b103    6a01
                         mov.s              ecx, edi                                      // 0x0071b105    8bcf
                         call               _jmp_addr_0x0071c6f0                          // 0x0071b107    e8e4150000
                         {disp8} mov        eax, dword ptr [esi + 0x30]                   // 0x0071b10c    8b4630
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x0071b10f    8b4c2408
                         pop                edi                                           // 0x0071b113    5f
                         {disp32} mov       dword ptr [eax + 0x00000098], ecx             // 0x0071b114    898898000000
                         pop                esi                                           // 0x0071b11a    5e
                         add                esp, 0x08                                     // 0x0071b11b    83c408
                         ret                                                              // 0x0071b11e    c3
_jmp_addr_0x0071b11f:    fstp               st(0)                                         // 0x0071b11f    ddd8
_jmp_addr_0x0071b121:    pop                esi                                           // 0x0071b121    5e
                         add                esp, 0x08                                     // 0x0071b122    83c408
                         ret                                                              // 0x0071b125    c3
                         nop                                                              // 0x0071b126    90
                         nop                                                              // 0x0071b127    90
                         nop                                                              // 0x0071b128    90
                         nop                                                              // 0x0071b129    90
                         nop                                                              // 0x0071b12a    90
                         nop                                                              // 0x0071b12b    90
                         nop                                                              // 0x0071b12c    90
                         nop                                                              // 0x0071b12d    90
                         nop                                                              // 0x0071b12e    90
                         nop                                                              // 0x0071b12f    90
_jmp_addr_0x0071b130:    sub                esp, 0x14                                     // 0x0071b130    83ec14
                         {disp32} mov       eax, dword ptr [ecx + 0x000000cc]             // 0x0071b133    8b81cc000000
                         push               ebx                                           // 0x0071b139    53
                         push               esi                                           // 0x0071b13a    56
                         push               edi                                           // 0x0071b13b    57
                         add                eax, 0x000000b0                               // 0x0071b13c    05b0000000
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x0071b141    894c2410
                         push               eax                                           // 0x0071b145    50
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x0071b146    8d4c2418
                         call               @__ct__9MapCoordsFRC7LHPoint@12               // 0x0071b14a    e81180eeff
                         {disp32} mov       ecx, dword ptr [rdata_bytes + 0xd7130]        // 0x0071b14f    8b0d30019800
                         xor.s              ebx, ebx                                      // 0x0071b155    33db
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                   // 0x0071b157    894c240c
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0071b15b    8b0d5c19d000
                         push               ebx                                           // 0x0071b161    53
                         call               ?GetNextPlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z  // 0x0071b162    e83957e3ff
                         mov.s              edi, eax                                      // 0x0071b167    8bf8
                         test               edi, edi                                      // 0x0071b169    85ff
                         {disp32} je        _jmp_addr_0x0071b259                          // 0x0071b16b    0f84e8000000
_jmp_addr_0x0071b171:    {disp32} mov       esi, dword ptr [edi + 0x00000a50]             // 0x0071b171    8bb7500a0000
                         test               esi, esi                                      // 0x0071b177    85f6
                         {disp8} je         _jmp_addr_0x0071b1c4                          // 0x0071b179    7449
_jmp_addr_0x0071b17b:    mov.s              ecx, esi                                      // 0x0071b17b    8bce
                         call               ?GetStoragePit@Town@@QAEPAVStoragePit@@XZ     // 0x0071b17d    e82e040200
                         test               eax, eax                                      // 0x0071b182    85c0
                         {disp8} je         _jmp_addr_0x0071b1ba                          // 0x0071b184    7434
                         {disp32} mov       edx, dword ptr [esi + 0x0000061c]             // 0x0071b186    8b961c060000
                         add                edx, dword ptr [esi + 0x00000618]             // 0x0071b18c    039618060000
                         {disp8} je         _jmp_addr_0x0071b1ba                          // 0x0071b192    7426
                         add                eax, 0x14                                     // 0x0071b194    83c014
                         push               eax                                           // 0x0071b197    50
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x0071b198    8d442418
                         push               eax                                           // 0x0071b19c    50
                         call               _jmp_addr_0x0074cd50                          // 0x0071b19d    e8ae1b0300
                         {disp8} fcom       dword ptr [esp + 0x14]                        // 0x0071b1a2    d8542414
                         add                esp, 0x08                                     // 0x0071b1a6    83c408
                         fnstsw             ax                                            // 0x0071b1a9    dfe0
                         test               ah, 0x01                                      // 0x0071b1ab    f6c401
                         {disp8} je         _jmp_addr_0x0071b1b8                          // 0x0071b1ae    7408
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x0071b1b0    d95c240c
                         mov.s              ebx, esi                                      // 0x0071b1b4    8bde
                         {disp8} jmp        _jmp_addr_0x0071b1ba                          // 0x0071b1b6    eb02
_jmp_addr_0x0071b1b8:    fstp               st(0)                                         // 0x0071b1b8    ddd8
_jmp_addr_0x0071b1ba:    {disp32} mov       esi, dword ptr [esi + 0x0000075c]             // 0x0071b1ba    8bb65c070000
                         test               esi, esi                                      // 0x0071b1c0    85f6
                         {disp8} jne        _jmp_addr_0x0071b17b                          // 0x0071b1c2    75b7
_jmp_addr_0x0071b1c4:    {disp32} mov       ecx, dword ptr [_game]                        // 0x0071b1c4    8b0d5c19d000
                         push               edi                                           // 0x0071b1ca    57
                         call               ?GetNextPlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z  // 0x0071b1cb    e8d056e3ff
                         mov.s              edi, eax                                      // 0x0071b1d0    8bf8
                         test               edi, edi                                      // 0x0071b1d2    85ff
                         {disp8} jne        _jmp_addr_0x0071b171                          // 0x0071b1d4    759b
                         test               ebx, ebx                                      // 0x0071b1d6    85db
                         {disp8} je         _jmp_addr_0x0071b259                          // 0x0071b1d8    747f
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                   // 0x0071b1da    8b4c242c
                         mov                dword ptr [ecx], ebx                          // 0x0071b1de    8919
                         push               ebp                                           // 0x0071b1e0    55
                         mov.s              ecx, ebx                                      // 0x0071b1e1    8bcb
                         call               ?GetStoragePit@Town@@QAEPAVStoragePit@@XZ     // 0x0071b1e3    e8c8030200
                         {disp8} mov        ebp, dword ptr [esp + 0x2c]                   // 0x0071b1e8    8b6c242c
                         {disp32} lea       edi, dword ptr [ebx + 0x00000380]             // 0x0071b1ec    8dbb80030000
                         {disp8} mov        dword ptr [esp + 0x30], 0x00000011            // 0x0071b1f2    c744243011000000
_jmp_addr_0x0071b1fa:    mov                edx, dword ptr [edi]                          // 0x0071b1fa    8b17
                         push               edx                                           // 0x0071b1fc    52
                         mov.s              ecx, ebx                                      // 0x0071b1fd    8bcb
                         call               ?GetRawDesire@Town@@QAEMW4TOWN_DESIRE_INFO@@@Z// 0x0071b1ff    e81c320200
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x0071b204    d95c242c
                         {disp8} mov        eax, dword ptr [edi + -0x04]                  // 0x0071b208    8b47fc
                         mov                ecx, dword ptr [edi]                          // 0x0071b20b    8b0f
                         push               eax                                           // 0x0071b20d    50
                         push               ecx                                           // 0x0071b20e    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x0071b20f    8b4c241c
                         call               _jmp_addr_0x0071aa90                          // 0x0071b213    e878f8ffff
                         mov.s              esi, eax                                      // 0x0071b218    8bf0
                         test               esi, esi                                      // 0x0071b21a    85f6
                         {disp8} je         _jmp_addr_0x0071b24a                          // 0x0071b21c    742c
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                   // 0x0071b21e    8b54242c
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0071b222    8b442410
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x0071b226    8b4c2414
                         push               esi                                           // 0x0071b22a    56
                         push               edx                                           // 0x0071b22b    52
                         push               eax                                           // 0x0071b22c    50
                         push               ebx                                           // 0x0071b22d    53
                         call               _jmp_addr_0x0071b410                          // 0x0071b22e    e8dd010000
                         {disp8} fcom       dword ptr [ebp + 0x00]                        // 0x0071b233    d85500
                         fnstsw             ax                                            // 0x0071b236    dfe0
                         test               ah, 0x41                                      // 0x0071b238    f6c441
                         {disp8} jne        _jmp_addr_0x0071b248                          // 0x0071b23b    750b
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                   // 0x0071b23d    8b4c2428
                         {disp8} fstp       dword ptr [ebp + 0x00]                        // 0x0071b241    d95d00
                         mov                dword ptr [ecx], esi                          // 0x0071b244    8931
                         {disp8} jmp        _jmp_addr_0x0071b24a                          // 0x0071b246    eb02
_jmp_addr_0x0071b248:    fstp               st(0)                                         // 0x0071b248    ddd8
_jmp_addr_0x0071b24a:    {disp8} mov        eax, dword ptr [esp + 0x30]                   // 0x0071b24a    8b442430
                         add                edi, 0x0c                                     // 0x0071b24e    83c70c
                         dec                eax                                           // 0x0071b251    48
                         {disp8} mov        dword ptr [esp + 0x30], eax                   // 0x0071b252    89442430
                         {disp8} jne        _jmp_addr_0x0071b1fa                          // 0x0071b256    75a2
                         pop                ebp                                           // 0x0071b258    5d
_jmp_addr_0x0071b259:    pop                edi                                           // 0x0071b259    5f
                         pop                esi                                           // 0x0071b25a    5e
                         pop                ebx                                           // 0x0071b25b    5b
                         add                esp, 0x14                                     // 0x0071b25c    83c414
                         ret                0x000c                                        // 0x0071b25f    c20c00
                         nop                                                              // 0x0071b262    90
                         nop                                                              // 0x0071b263    90
                         nop                                                              // 0x0071b264    90
                         nop                                                              // 0x0071b265    90
                         nop                                                              // 0x0071b266    90
                         nop                                                              // 0x0071b267    90
                         nop                                                              // 0x0071b268    90
                         nop                                                              // 0x0071b269    90
                         nop                                                              // 0x0071b26a    90
                         nop                                                              // 0x0071b26b    90
                         nop                                                              // 0x0071b26c    90
                         nop                                                              // 0x0071b26d    90
                         nop                                                              // 0x0071b26e    90
                         nop                                                              // 0x0071b26f    90
_jmp_addr_0x0071b270:    sub                esp, 0x1c                                     // 0x0071b270    83ec1c
                         push               ebx                                           // 0x0071b273    53
                         push               ebp                                           // 0x0071b274    55
                         push               esi                                           // 0x0071b275    56
                         push               edi                                           // 0x0071b276    57
                         mov.s              edi, ecx                                      // 0x0071b277    8bf9
                         {disp32} mov       eax, dword ptr [edi + 0x000000cc]             // 0x0071b279    8b87cc000000
                         add                eax, 0x000000b0                               // 0x0071b27f    05b0000000
                         push               eax                                           // 0x0071b284    50
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x0071b285    8d4c2424
                         call               @__ct__9MapCoordsFRC7LHPoint@12               // 0x0071b289    e8d27eeeff
                         {disp32} mov       ecx, dword ptr [rdata_bytes + 0xd7130]        // 0x0071b28e    8b0d30019800
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x0071b294    894c2410
                         {disp32} mov       ecx, dword ptr [edi + 0x000000cc]             // 0x0071b298    8b8fcc000000
                         mov                edx, dword ptr [ecx]                          // 0x0071b29e    8b11
                         xor.s              esi, esi                                      // 0x0071b2a0    33f6
                         call               dword ptr [edx + 0x1c]                        // 0x0071b2a2    ff521c
                         {disp32} mov       ebp, dword ptr [eax + 0x00000a48]             // 0x0071b2a5    8ba8480a0000
                         test               ebp, ebp                                      // 0x0071b2ab    85ed
                         {disp32} je        _jmp_addr_0x0071b400                          // 0x0071b2ad    0f844d010000
                         {disp8} lea        ebx, dword ptr [ebp + 0x34]                   // 0x0071b2b3    8d5d34
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000006            // 0x0071b2b6    c744241406000000
_jmp_addr_0x0071b2be:    mov                ecx, dword ptr [ebx]                          // 0x0071b2be    8b0b
                         test               ecx, ecx                                      // 0x0071b2c0    85c9
                         {disp8} je         _jmp_addr_0x0071b2f5                          // 0x0071b2c2    7431
                         call               _jmp_addr_0x0077b960                          // 0x0071b2c4    e897060600
                         test               eax, eax                                      // 0x0071b2c9    85c0
                         {disp8} jbe        _jmp_addr_0x0071b2f5                          // 0x0071b2cb    7628
                         mov                ecx, dword ptr [ebx]                          // 0x0071b2cd    8b0b
                         {disp8} lea        eax, dword ptr [esp + 0x20]                   // 0x0071b2cf    8d442420
                         push               eax                                           // 0x0071b2d3    50
                         add                ecx, 0x14                                     // 0x0071b2d4    83c114
                         push               ecx                                           // 0x0071b2d7    51
                         call               _jmp_addr_0x0074cd50                          // 0x0071b2d8    e8731a0300
                         {disp8} fcom       dword ptr [esp + 0x18]                        // 0x0071b2dd    d8542418
                         add                esp, 0x08                                     // 0x0071b2e1    83c408
                         fnstsw             ax                                            // 0x0071b2e4    dfe0
                         test               ah, 0x01                                      // 0x0071b2e6    f6c401
                         {disp8} je         _jmp_addr_0x0071b2f3                          // 0x0071b2e9    7408
                         mov                esi, dword ptr [ebx]                          // 0x0071b2eb    8b33
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0071b2ed    d95c2410
                         {disp8} jmp        _jmp_addr_0x0071b2f5                          // 0x0071b2f1    eb02
_jmp_addr_0x0071b2f3:    fstp               st(0)                                         // 0x0071b2f3    ddd8
_jmp_addr_0x0071b2f5:    {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0071b2f5    8b442414
                         add                ebx, 0x04                                     // 0x0071b2f9    83c304
                         dec                eax                                           // 0x0071b2fc    48
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x0071b2fd    89442414
                         {disp8} jne        _jmp_addr_0x0071b2be                          // 0x0071b301    75bb
                         test               esi, esi                                      // 0x0071b303    85f6
                         {disp32} je        _jmp_addr_0x0071b400                          // 0x0071b305    0f84f5000000
                         mov                edx, dword ptr [esi]                          // 0x0071b30b    8b16
                         mov.s              ecx, esi                                      // 0x0071b30d    8bce
                         call               dword ptr [edx + 0x420]                       // 0x0071b30f    ff9220040000
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0071b315    d95c241c
                         {disp8} fld        dword ptr [ebp + 0x70]                        // 0x0071b319    d94570
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x0071b31c    d81d90a38a00
                         fnstsw             ax                                            // 0x0071b322    dfe0
                         test               ah, 0x01                                      // 0x0071b324    f6c401
                         {disp8} je         _jmp_addr_0x0071b332                          // 0x0071b327    7409
                         {disp8} fld        dword ptr [ebp + 0x70]                        // 0x0071b329    d94570
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0071b32c    d95c2418
                         {disp8} jmp        _jmp_addr_0x0071b33a                          // 0x0071b330    eb08
_jmp_addr_0x0071b332:    {disp8} mov        dword ptr [esp + 0x18], 0x3f800000            // 0x0071b332    c74424180000803f
_jmp_addr_0x0071b33a:    {disp8} mov        ebp, dword ptr [esp + 0x1c]                   // 0x0071b33a    8b6c241c
                         push               ebp                                           // 0x0071b33e    55
                         push               0x11                                          // 0x0071b33f    6a11
                         mov.s              ecx, edi                                      // 0x0071b341    8bcf
                         call               _jmp_addr_0x0071aa90                          // 0x0071b343    e848f7ffff
                         push               ebp                                           // 0x0071b348    55
                         push               0x12                                          // 0x0071b349    6a12
                         mov.s              ecx, edi                                      // 0x0071b34b    8bcf
                         mov.s              ebx, eax                                      // 0x0071b34d    8bd8
                         call               _jmp_addr_0x0071aa90                          // 0x0071b34f    e83cf7ffff
                         test               ebx, ebx                                      // 0x0071b354    85db
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x0071b356    8944241c
                         {disp8} je         _jmp_addr_0x0071b371                          // 0x0071b35a    7415
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0071b35c    8b442410
                         push               ebx                                           // 0x0071b360    53
                         push               ebp                                           // 0x0071b361    55
                         push               eax                                           // 0x0071b362    50
                         push               esi                                           // 0x0071b363    56
                         mov.s              ecx, edi                                      // 0x0071b364    8bcf
                         call               _jmp_addr_0x0071b410                          // 0x0071b366    e8a5000000
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0071b36b    d95c2414
                         {disp8} jmp        _jmp_addr_0x0071b379                          // 0x0071b36f    eb08
_jmp_addr_0x0071b371:    {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x0071b371    c744241400000000
_jmp_addr_0x0071b379:    {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x0071b379    8b44241c
                         test               eax, eax                                      // 0x0071b37d    85c0
                         {disp8} je         _jmp_addr_0x0071b39a                          // 0x0071b37f    7419
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x0071b381    8b4c2418
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x0071b385    8b542410
                         push               eax                                           // 0x0071b389    50
                         push               ecx                                           // 0x0071b38a    51
                         push               edx                                           // 0x0071b38b    52
                         push               esi                                           // 0x0071b38c    56
                         mov.s              ecx, edi                                      // 0x0071b38d    8bcf
                         call               _jmp_addr_0x0071b410                          // 0x0071b38f    e87c000000
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0071b394    d95c2410
                         {disp8} jmp        _jmp_addr_0x0071b3a2                          // 0x0071b398    eb08
_jmp_addr_0x0071b39a:    {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x0071b39a    c744241000000000
_jmp_addr_0x0071b3a2:    {disp8} fld        dword ptr [esp + 0x14]                        // 0x0071b3a2    d9442414
                         {disp8} mov        edi, dword ptr [esp + 0x38]                   // 0x0071b3a6    8b7c2438
                         {disp8} fcomp      dword ptr [esp + 0x10]                        // 0x0071b3aa    d85c2410
                         {disp8} mov        ebp, dword ptr [esp + 0x34]                   // 0x0071b3ae    8b6c2434
                         fnstsw             ax                                            // 0x0071b3b2    dfe0
                         test               ah, 0x41                                      // 0x0071b3b4    f6c441
                         {disp8} jne        _jmp_addr_0x0071b3d2                          // 0x0071b3b7    7519
                         {disp8} mov        eax, dword ptr [esp + 0x30]                   // 0x0071b3b9    8b442430
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x0071b3bd    8b4c2414
                         mov                dword ptr [eax], ebx                          // 0x0071b3c1    8918
                         {disp8} mov        dword ptr [ebp + 0x00], ecx                   // 0x0071b3c3    894d00
                         mov                edx, dword ptr [esi]                          // 0x0071b3c6    8b16
                         mov.s              ecx, esi                                      // 0x0071b3c8    8bce
                         call               dword ptr [edx + 0x114]                       // 0x0071b3ca    ff9214010000
                         mov                dword ptr [edi], eax                          // 0x0071b3d0    8907
_jmp_addr_0x0071b3d2:    {disp8} fld        dword ptr [esp + 0x10]                        // 0x0071b3d2    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0071b3d6    d81d98a38a00
                         fnstsw             ax                                            // 0x0071b3dc    dfe0
                         test               ah, 0x40                                      // 0x0071b3de    f6c440
                         {disp8} jne        _jmp_addr_0x0071b400                          // 0x0071b3e1    751d
                         {disp8} mov        eax, dword ptr [esp + 0x30]                   // 0x0071b3e3    8b442430
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x0071b3e7    8b4c241c
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x0071b3eb    8b542410
                         mov                dword ptr [eax], ecx                          // 0x0071b3ef    8908
                         {disp8} mov        dword ptr [ebp + 0x00], edx                   // 0x0071b3f1    895500
                         mov                eax, dword ptr [esi]                          // 0x0071b3f4    8b06
                         mov.s              ecx, esi                                      // 0x0071b3f6    8bce
                         call               dword ptr [eax + 0x114]                       // 0x0071b3f8    ff9014010000
                         mov                dword ptr [edi], eax                          // 0x0071b3fe    8907
_jmp_addr_0x0071b400:    pop                edi                                           // 0x0071b400    5f
                         pop                esi                                           // 0x0071b401    5e
                         pop                ebp                                           // 0x0071b402    5d
                         pop                ebx                                           // 0x0071b403    5b
                         add                esp, 0x1c                                     // 0x0071b404    83c41c
                         ret                0x000c                                        // 0x0071b407    c20c00
                         nop                                                              // 0x0071b40a    90
                         nop                                                              // 0x0071b40b    90
                         nop                                                              // 0x0071b40c    90
                         nop                                                              // 0x0071b40d    90
                         nop                                                              // 0x0071b40e    90
                         nop                                                              // 0x0071b40f    90
_jmp_addr_0x0071b410:    sub                esp, 0x10                                     // 0x0071b410    83ec10
                         push               ebx                                           // 0x0071b413    53
                         push               esi                                           // 0x0071b414    56
                         push               edi                                           // 0x0071b415    57
                         xor.s              ebx, ebx                                      // 0x0071b416    33db
                         mov.s              esi, ecx                                      // 0x0071b418    8bf1
                         push               ebx                                           // 0x0071b41a    53
                         call               _jmp_addr_0x0071adf0                          // 0x0071b41b    e8d0f9ffff
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x0071b420    8944240c
                         {disp8} mov        dword ptr [esp + 0x10], ebx                   // 0x0071b424    895c2410
                         {disp8} fild       qword ptr [esp + 0x0c]                        // 0x0071b428    df6c240c
                         {disp32} fdiv      dword ptr [rdata_bytes + 0xd7128]             // 0x0071b42c    d83528019800
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x0071b432    d81d90a38a00
                         fnstsw             ax                                            // 0x0071b438    dfe0
                         test               ah, 0x01                                      // 0x0071b43a    f6c401
                         {disp8} je         _jmp_addr_0x0071b45f                          // 0x0071b43d    7420
                         push               ebx                                           // 0x0071b43f    53
                         mov.s              ecx, esi                                      // 0x0071b440    8bce
                         call               _jmp_addr_0x0071adf0                          // 0x0071b442    e8a9f9ffff
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x0071b447    8944240c
                         {disp8} mov        dword ptr [esp + 0x10], ebx                   // 0x0071b44b    895c2410
                         {disp8} fild       qword ptr [esp + 0x0c]                        // 0x0071b44f    df6c240c
                         {disp32} fdiv      dword ptr [rdata_bytes + 0xd7128]             // 0x0071b453    d83528019800
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x0071b459    d95c240c
                         {disp8} jmp        _jmp_addr_0x0071b467                          // 0x0071b45d    eb08
_jmp_addr_0x0071b45f:    {disp8} mov        dword ptr [esp + 0x0c], 0x3f800000            // 0x0071b45f    c744240c0000803f
_jmp_addr_0x0071b467:    {disp8} mov        edi, dword ptr [esp + 0x20]                   // 0x0071b467    8b7c2420
                         push               edi                                           // 0x0071b46b    57
                         mov.s              ecx, esi                                      // 0x0071b46c    8bce
                         call               _jmp_addr_0x0071ae10                          // 0x0071b46e    e89df9ffff
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x0071b473    89442414
                         {disp8} mov        dword ptr [esp + 0x18], ebx                   // 0x0071b477    895c2418
                         {disp8} fild       qword ptr [esp + 0x14]                        // 0x0071b47b    df6c2414
                         {disp32} fdiv      dword ptr [rdata_bytes + 0xd7134]             // 0x0071b47f    d83534019800
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x0071b485    d81d90a38a00
                         fnstsw             ax                                            // 0x0071b48b    dfe0
                         test               ah, 0x01                                      // 0x0071b48d    f6c401
                         {disp8} je         _jmp_addr_0x0071b4ae                          // 0x0071b490    741c
                         push               edi                                           // 0x0071b492    57
                         mov.s              ecx, esi                                      // 0x0071b493    8bce
                         call               _jmp_addr_0x0071ae10                          // 0x0071b495    e876f9ffff
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x0071b49a    89442414
                         {disp8} mov        dword ptr [esp + 0x18], ebx                   // 0x0071b49e    895c2418
                         {disp8} fild       qword ptr [esp + 0x14]                        // 0x0071b4a2    df6c2414
                         {disp32} fdiv      dword ptr [rdata_bytes + 0xd7134]             // 0x0071b4a6    d83534019800
                         {disp8} jmp        _jmp_addr_0x0071b4b4                          // 0x0071b4ac    eb06
_jmp_addr_0x0071b4ae:    {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0071b4ae    d90590a38a00
_jmp_addr_0x0071b4b4:    {disp8} fst        dword ptr [esp + 0x20]                        // 0x0071b4b4    d9542420
                         mov                eax, 0x00000002                               // 0x0071b4b8    b802000000
_jmp_addr_0x0071b4bd:    dec                eax                                           // 0x0071b4bd    48
                         {disp8} fmul       dword ptr [esp + 0x20]                        // 0x0071b4be    d84c2420
                         {disp8} jne        _jmp_addr_0x0071b4bd                          // 0x0071b4c2    75f9
                         {disp32} fsubr     dword ptr [_rdata_float1p0]                   // 0x0071b4c4    d82d90a38a00
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x0071b4ca    d9442424
                         {disp32} fdiv      dword ptr [rdata_bytes + 0xd7130]             // 0x0071b4ce    d83530019800
                         {disp32} fcom      dword ptr [_rdata_float1p0]                   // 0x0071b4d4    d81590a38a00
                         fnstsw             ax                                            // 0x0071b4da    dfe0
                         test               ah, 0x01                                      // 0x0071b4dc    f6c401
                         {disp8} jne        _jmp_addr_0x0071b4e9                          // 0x0071b4df    7508
                         fstp               st(0)                                         // 0x0071b4e1    ddd8
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0071b4e3    d90590a38a00
_jmp_addr_0x0071b4e9:    fld                st(0)                                         // 0x0071b4e9    d9c0
                         fmulp              st(1), st                                     // 0x0071b4eb    dec9
                         {disp32} fsubr     dword ptr [_rdata_float1p0]                   // 0x0071b4ed    d82d90a38a00
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x0071b4f3    d9442428
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x0071b4f7    d81d90a38a00
                         fnstsw             ax                                            // 0x0071b4fd    dfe0
                         test               ah, 0x01                                      // 0x0071b4ff    f6c401
                         {disp8} je         _jmp_addr_0x0071b50a                          // 0x0071b502    7406
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x0071b504    d9442428
                         {disp8} jmp        _jmp_addr_0x0071b510                          // 0x0071b508    eb06
_jmp_addr_0x0071b50a:    {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0071b50a    d90590a38a00
_jmp_addr_0x0071b510:    {disp8} fst        dword ptr [esp + 0x28]                        // 0x0071b510    d9542428
                         mov                eax, 0x00000002                               // 0x0071b514    b802000000
_jmp_addr_0x0071b519:    dec                eax                                           // 0x0071b519    48
                         {disp8} fmul       dword ptr [esp + 0x28]                        // 0x0071b51a    d84c2428
                         {disp8} jne        _jmp_addr_0x0071b519                          // 0x0071b51e    75f9
                         {disp32} mov       ecx, dword ptr [esi + 0x00000098]             // 0x0071b520    8b8e98000000
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x0071b526    8b44242c
                         cmp.s              eax, ecx                                      // 0x0071b52a    3bc1
                         pop                edi                                           // 0x0071b52c    5f
                         pop                esi                                           // 0x0071b52d    5e
                         pop                ebx                                           // 0x0071b52e    5b
                         {disp8} jne        _jmp_addr_0x0071b543                          // 0x0071b52f    7512
                         {disp8} fld        dword ptr [esp + 0x00]                        // 0x0071b531    d9442400
                         mov                eax, 0x00000002                               // 0x0071b535    b802000000
_jmp_addr_0x0071b53a:    dec                eax                                           // 0x0071b53a    48
                         {disp8} fmul       dword ptr [esp + 0x00]                        // 0x0071b53b    d84c2400
                         {disp8} jne        _jmp_addr_0x0071b53a                          // 0x0071b53f    75f9
                         {disp8} jmp        _jmp_addr_0x0071b549                          // 0x0071b541    eb06
_jmp_addr_0x0071b543:    {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0071b543    d90590a38a00
_jmp_addr_0x0071b549:    fxch               st(1)                                         // 0x0071b549    d9c9
                         fmul               st, st(1)                                     // 0x0071b54b    d8c9
                         fmul               st, st(2)                                     // 0x0071b54d    d8ca
                         fmulp              st(3), st                                     // 0x0071b54f    decb
                         fxch               st(2)                                         // 0x0071b551    d9ca
                         {disp8} fmul       dword ptr [esp + 0x00]                        // 0x0071b553    d84c2400
                         fadd.s             st(0), st(0)                                  // 0x0071b557    dcc0
                         fxch               st(2)                                         // 0x0071b559    d9ca
                         fstp               st(0)                                         // 0x0071b55b    ddd8
                         fstp               st(0)                                         // 0x0071b55d    ddd8
                         add                esp, 0x10                                     // 0x0071b55f    83c410
                         ret                0x0010                                        // 0x0071b562    c21000
                         nop                                                              // 0x0071b565    90
                         nop                                                              // 0x0071b566    90
                         nop                                                              // 0x0071b567    90
                         nop                                                              // 0x0071b568    90
                         nop                                                              // 0x0071b569    90
                         nop                                                              // 0x0071b56a    90
                         nop                                                              // 0x0071b56b    90
                         nop                                                              // 0x0071b56c    90
                         nop                                                              // 0x0071b56d    90
                         nop                                                              // 0x0071b56e    90
                         nop                                                              // 0x0071b56f    90
_jmp_addr_0x0071b570:    push               ebp                                           // 0x0071b570    55
                         push               esi                                           // 0x0071b571    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x0071b572    8b74240c
                         {disp8} mov        ecx, dword ptr [esi + 0x30]                   // 0x0071b576    8b4e30
                         push               edi                                           // 0x0071b579    57
                         push               0x1                                           // 0x0071b57a    6a01
                         call               _jmp_addr_0x0071af50                          // 0x0071b57c    e8cff9ffff
                         test               eax, eax                                      // 0x0071b581    85c0
                         {disp8} je         _jmp_addr_0x0071b5de                          // 0x0071b583    7459
                         {disp32} mov       eax, dword ptr [rdata_bytes + 0xd713c]        // 0x0071b585    a13c019800
                         {disp8} mov        ebp, dword ptr [esp + 0x14]                   // 0x0071b58a    8b6c2414
                         push               eax                                           // 0x0071b58e    50
                         mov.s              ecx, ebp                                      // 0x0071b58f    8bcd
                         call               @GetNearestTown__9MapCoordsCFf@12             // 0x0071b591    e84a6beeff
                         test               eax, eax                                      // 0x0071b596    85c0
                         {disp8} je         _jmp_addr_0x0071b5de                          // 0x0071b598    7444
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x0071b59a    8b542418
                         {disp8} mov        ecx, dword ptr [esi + 0x30]                   // 0x0071b59e    8b4e30
                         push               edx                                           // 0x0071b5a1    52
                         push               eax                                           // 0x0071b5a2    50
                         call               _jmp_addr_0x0071b5f0                          // 0x0071b5a3    e848000000
                         mov.s              edi, eax                                      // 0x0071b5a8    8bf8
                         test               edi, edi                                      // 0x0071b5aa    85ff
                         {disp8} je         _jmp_addr_0x0071b5de                          // 0x0071b5ac    7430
                         {disp32} mov       eax, dword ptr [rdata_bytes + 0xd7148]        // 0x0071b5ae    a148019800
                         mov                edx, dword ptr [esi]                          // 0x0071b5b3    8b16
                         push               ebx                                           // 0x0071b5b5    53
                         {disp8} mov        ebx, dword ptr [esi + 0x30]                   // 0x0071b5b6    8b5e30
                         push               0x1                                           // 0x0071b5b9    6a01
                         push               eax                                           // 0x0071b5bb    50
                         push               ebp                                           // 0x0071b5bc    55
                         push               0x5a                                          // 0x0071b5bd    6a5a
                         push               0x64                                          // 0x0071b5bf    6a64
                         push               0x7f                                          // 0x0071b5c1    6a7f
                         push               0x1                                           // 0x0071b5c3    6a01
                         mov.s              ecx, esi                                      // 0x0071b5c5    8bce
                         call               dword ptr [edx + 0x1c]                        // 0x0071b5c7    ff521c
                         xor.s              ecx, ecx                                      // 0x0071b5ca    33c9
                         {disp32} mov       cl, byte ptr [eax + 0x000000b5]               // 0x0071b5cc    8a88b5000000
                         push               ecx                                           // 0x0071b5d2    51
                         push               edi                                           // 0x0071b5d3    57
                         push               0x1                                           // 0x0071b5d4    6a01
                         mov.s              ecx, ebx                                      // 0x0071b5d6    8bcb
                         call               _jmp_addr_0x0071c6f0                          // 0x0071b5d8    e813110000
                         pop                ebx                                           // 0x0071b5dd    5b
_jmp_addr_0x0071b5de:    pop                edi                                           // 0x0071b5de    5f
                         pop                esi                                           // 0x0071b5df    5e
                         pop                ebp                                           // 0x0071b5e0    5d
                         ret                                                              // 0x0071b5e1    c3
                         nop                                                              // 0x0071b5e2    90
                         nop                                                              // 0x0071b5e3    90
                         nop                                                              // 0x0071b5e4    90
                         nop                                                              // 0x0071b5e5    90
                         nop                                                              // 0x0071b5e6    90
                         nop                                                              // 0x0071b5e7    90
                         nop                                                              // 0x0071b5e8    90
                         nop                                                              // 0x0071b5e9    90
                         nop                                                              // 0x0071b5ea    90
                         nop                                                              // 0x0071b5eb    90
                         nop                                                              // 0x0071b5ec    90
                         nop                                                              // 0x0071b5ed    90
                         nop                                                              // 0x0071b5ee    90
                         nop                                                              // 0x0071b5ef    90
_jmp_addr_0x0071b5f0:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0071b5f0    8b442408
                         dec                eax                                           // 0x0071b5f4    48
                         {disp32} je        _jmp_addr_0x0071b719                          // 0x0071b5f5    0f841e010000
                         dec                eax                                           // 0x0071b5fb    48
                         {disp32} je        _jmp_addr_0x0071b691                          // 0x0071b5fc    0f848f000000
                         dec                eax                                           // 0x0071b602    48
                         {disp32} jne       _jmp_addr_0x0071b7b5                          // 0x0071b603    0f85ac010000
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x0071b609    8b4c2404
                         {disp32} fld       dword ptr [ecx + 0x000001c4]                  // 0x0071b60d    d981c4010000
                         {disp32} fadd      dword ptr [ecx + 0x00000130]                  // 0x0071b613    d88130010000
                         {disp32} fadd      dword ptr [ecx + 0x000000ec]                  // 0x0071b619    d881ec000000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0xd7140]             // 0x0071b61f    d81d40019800
                         fnstsw             ax                                            // 0x0071b625    dfe0
                         test               ah, 0x01                                      // 0x0071b627    f6c401
                         {disp8} jne        _jmp_addr_0x0071b63d                          // 0x0071b62a    7511
                         push               0x3                                           // 0x0071b62c    6a03
                         call               ?LocalRand@GRand@@SAIJ@Z                      // 0x0071b62e    e83d2ffcff
                         add                esp, 0x04                                     // 0x0071b633    83c404
                         sub                eax, 0x00                                     // 0x0071b636    83e800
                         {disp8} je         _jmp_addr_0x0071b689                          // 0x0071b639    744e
                         {disp8} jmp        _jmp_addr_0x0071b66f                          // 0x0071b63b    eb32
_jmp_addr_0x0071b63d:    {disp32} fld       dword ptr [ecx + 0x000001c4]                  // 0x0071b63d    d981c4010000
                         {disp32} fadd      dword ptr [ecx + 0x00000130]                  // 0x0071b643    d88130010000
                         {disp32} fadd      dword ptr [ecx + 0x000000ec]                  // 0x0071b649    d881ec000000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0xd7144]             // 0x0071b64f    d81d44019800
                         fnstsw             ax                                            // 0x0071b655    dfe0
                         test               ah, 0x01                                      // 0x0071b657    f6c401
                         {disp32} je        _jmp_addr_0x0071b7b5                          // 0x0071b65a    0f8455010000
                         push               0x3                                           // 0x0071b660    6a03
                         call               ?LocalRand@GRand@@SAIJ@Z                      // 0x0071b662    e8092ffcff
                         add                esp, 0x04                                     // 0x0071b667    83c404
                         sub                eax, 0x00                                     // 0x0071b66a    83e800
                         {disp8} je         _jmp_addr_0x0071b689                          // 0x0071b66d    741a
_jmp_addr_0x0071b66f:    dec                eax                                           // 0x0071b66f    48
                         {disp8} je         _jmp_addr_0x0071b681                          // 0x0071b670    740f
                         dec                eax                                           // 0x0071b672    48
                         {disp32} jne       _jmp_addr_0x0071b7b5                          // 0x0071b673    0f853c010000
                         mov                eax, 0x0000135a                               // 0x0071b679    b85a130000
                         ret                0x0008                                        // 0x0071b67e    c20800
_jmp_addr_0x0071b681:    mov                eax, 0x00001359                               // 0x0071b681    b859130000
                         ret                0x0008                                        // 0x0071b686    c20800
_jmp_addr_0x0071b689:    mov                eax, 0x00001358                               // 0x0071b689    b858130000
                         ret                0x0008                                        // 0x0071b68e    c20800
_jmp_addr_0x0071b691:    {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x0071b691    8b4c2404
                         {disp32} fld       dword ptr [ecx + 0x000001a0]                  // 0x0071b695    d981a0010000
                         {disp32} fadd      dword ptr [ecx + 0x0000010c]                  // 0x0071b69b    d8810c010000
                         {disp32} fadd      dword ptr [ecx + 0x000000c8]                  // 0x0071b6a1    d881c8000000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0xd7140]             // 0x0071b6a7    d81d40019800
                         fnstsw             ax                                            // 0x0071b6ad    dfe0
                         test               ah, 0x01                                      // 0x0071b6af    f6c401
                         {disp8} jne        _jmp_addr_0x0071b6c5                          // 0x0071b6b2    7511
                         push               0x3                                           // 0x0071b6b4    6a03
                         call               ?LocalRand@GRand@@SAIJ@Z                      // 0x0071b6b6    e8b52efcff
                         add                esp, 0x04                                     // 0x0071b6bb    83c404
                         sub                eax, 0x00                                     // 0x0071b6be    83e800
                         {disp8} je         _jmp_addr_0x0071b711                          // 0x0071b6c1    744e
                         {disp8} jmp        _jmp_addr_0x0071b6f7                          // 0x0071b6c3    eb32
_jmp_addr_0x0071b6c5:    {disp32} fld       dword ptr [ecx + 0x000001a0]                  // 0x0071b6c5    d981a0010000
                         {disp32} fadd      dword ptr [ecx + 0x0000010c]                  // 0x0071b6cb    d8810c010000
                         {disp32} fadd      dword ptr [ecx + 0x000000c8]                  // 0x0071b6d1    d881c8000000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0xd7144]             // 0x0071b6d7    d81d44019800
                         fnstsw             ax                                            // 0x0071b6dd    dfe0
                         test               ah, 0x01                                      // 0x0071b6df    f6c401
                         {disp32} je        _jmp_addr_0x0071b7b5                          // 0x0071b6e2    0f84cd000000
                         push               0x3                                           // 0x0071b6e8    6a03
                         call               ?LocalRand@GRand@@SAIJ@Z                      // 0x0071b6ea    e8812efcff
                         add                esp, 0x04                                     // 0x0071b6ef    83c404
                         sub                eax, 0x00                                     // 0x0071b6f2    83e800
                         {disp8} je         _jmp_addr_0x0071b711                          // 0x0071b6f5    741a
_jmp_addr_0x0071b6f7:    dec                eax                                           // 0x0071b6f7    48
                         {disp8} je         _jmp_addr_0x0071b709                          // 0x0071b6f8    740f
                         dec                eax                                           // 0x0071b6fa    48
                         {disp32} jne       _jmp_addr_0x0071b7b5                          // 0x0071b6fb    0f85b4000000
                         mov                eax, 0x00001357                               // 0x0071b701    b857130000
                         ret                0x0008                                        // 0x0071b706    c20800
_jmp_addr_0x0071b709:    mov                eax, 0x00001356                               // 0x0071b709    b856130000
                         ret                0x0008                                        // 0x0071b70e    c20800
_jmp_addr_0x0071b711:    mov                eax, 0x00001355                               // 0x0071b711    b855130000
                         ret                0x0008                                        // 0x0071b716    c20800
_jmp_addr_0x0071b719:    {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x0071b719    8b4c2404
                         {disp32} fld       dword ptr [ecx + 0x0000019c]                  // 0x0071b71d    d9819c010000
                         {disp32} fadd      dword ptr [ecx + 0x00000108]                  // 0x0071b723    d88108010000
                         {disp32} fadd      dword ptr [ecx + 0x000000c4]                  // 0x0071b729    d881c4000000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0xd7140]             // 0x0071b72f    d81d40019800
                         fnstsw             ax                                            // 0x0071b735    dfe0
                         test               ah, 0x01                                      // 0x0071b737    f6c401
                         {disp8} jne        _jmp_addr_0x0071b769                          // 0x0071b73a    752d
                         push               0x3                                           // 0x0071b73c    6a03
                         call               ?LocalRand@GRand@@SAIJ@Z                      // 0x0071b73e    e82d2efcff
                         add                esp, 0x04                                     // 0x0071b743    83c404
                         sub                eax, 0x00                                     // 0x0071b746    83e800
                         {disp8} je         _jmp_addr_0x0071b761                          // 0x0071b749    7416
                         dec                eax                                           // 0x0071b74b    48
                         {disp8} je         _jmp_addr_0x0071b759                          // 0x0071b74c    740b
                         dec                eax                                           // 0x0071b74e    48
                         {disp8} jne        _jmp_addr_0x0071b7b5                          // 0x0071b74f    7564
                         mov                eax, 0x00001354                               // 0x0071b751    b854130000
                         ret                0x0008                                        // 0x0071b756    c20800
_jmp_addr_0x0071b759:    mov                eax, 0x00001353                               // 0x0071b759    b853130000
                         ret                0x0008                                        // 0x0071b75e    c20800
_jmp_addr_0x0071b761:    mov                eax, 0x00001352                               // 0x0071b761    b852130000
                         ret                0x0008                                        // 0x0071b766    c20800
_jmp_addr_0x0071b769:    {disp32} fld       dword ptr [ecx + 0x0000019c]                  // 0x0071b769    d9819c010000
                         {disp32} fadd      dword ptr [ecx + 0x00000108]                  // 0x0071b76f    d88108010000
                         {disp32} fadd      dword ptr [ecx + 0x000000c4]                  // 0x0071b775    d881c4000000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0xd7144]             // 0x0071b77b    d81d44019800
                         fnstsw             ax                                            // 0x0071b781    dfe0
                         test               ah, 0x01                                      // 0x0071b783    f6c401
                         {disp8} je         _jmp_addr_0x0071b7b5                          // 0x0071b786    742d
                         push               0x3                                           // 0x0071b788    6a03
                         call               ?LocalRand@GRand@@SAIJ@Z                      // 0x0071b78a    e8e12dfcff
                         add                esp, 0x04                                     // 0x0071b78f    83c404
                         sub                eax, 0x00                                     // 0x0071b792    83e800
                         {disp8} je         _jmp_addr_0x0071b7ad                          // 0x0071b795    7416
                         dec                eax                                           // 0x0071b797    48
                         {disp8} je         _jmp_addr_0x0071b7a5                          // 0x0071b798    740b
                         dec                eax                                           // 0x0071b79a    48
                         {disp8} jne        _jmp_addr_0x0071b7b5                          // 0x0071b79b    7518
                         mov                eax, 0x0000135d                               // 0x0071b79d    b85d130000
                         ret                0x0008                                        // 0x0071b7a2    c20800
_jmp_addr_0x0071b7a5:    mov                eax, 0x0000135c                               // 0x0071b7a5    b85c130000
                         ret                0x0008                                        // 0x0071b7aa    c20800
_jmp_addr_0x0071b7ad:    mov                eax, 0x0000135b                               // 0x0071b7ad    b85b130000
                         ret                0x0008                                        // 0x0071b7b2    c20800
_jmp_addr_0x0071b7b5:    xor.s              eax, eax                                      // 0x0071b7b5    33c0
                         ret                0x0008                                        // 0x0071b7b7    c20800
                         nop                                                              // 0x0071b7ba    90
                         nop                                                              // 0x0071b7bb    90
                         nop                                                              // 0x0071b7bc    90
                         nop                                                              // 0x0071b7bd    90
                         nop                                                              // 0x0071b7be    90
                         nop                                                              // 0x0071b7bf    90
_jmp_addr_0x0071b7c0:    sub                esp, 0x08                                     // 0x0071b7c0    83ec08
                         push               ebx                                           // 0x0071b7c3    53
                         {disp8} mov        ebx, dword ptr [esp + 0x10]                   // 0x0071b7c4    8b5c2410
                         {disp8} mov        ecx, dword ptr [ebx + 0x30]                   // 0x0071b7c8    8b4b30
                         push               ebp                                           // 0x0071b7cb    55
                         push               esi                                           // 0x0071b7cc    56
                         push               0x2                                           // 0x0071b7cd    6a02
                         call               _jmp_addr_0x0071af50                          // 0x0071b7cf    e87cf7ffff
                         test               eax, eax                                      // 0x0071b7d4    85c0
                         {disp8} mov        ebp, dword ptr [esp + 0x1c]                   // 0x0071b7d6    8b6c241c
                         {disp32} je        _jmp_addr_0x0071bbd4                          // 0x0071b7da    0f84f4030000
                         {disp32} mov       eax, dword ptr [ebp + 0x0000061c]             // 0x0071b7e0    8b851c060000
                         add                eax, dword ptr [ebp + 0x00000618]             // 0x0071b7e6    038518060000
                         {disp32} je        _jmp_addr_0x0071bbd4                          // 0x0071b7ec    0f84e2030000
                         {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x0071b7f2    8b542420
                         {disp8} mov        ecx, dword ptr [ebx + 0x30]                   // 0x0071b7f6    8b4b30
                         push               edx                                           // 0x0071b7f9    52
                         call               _jmp_addr_0x0071be40                          // 0x0071b7fa    e841060000
                         mov.s              esi, eax                                      // 0x0071b7ff    8bf0
                         cmp                esi, 0x07                                     // 0x0071b801    83fe07
                         {disp32} je        _jmp_addr_0x0071bbd4                          // 0x0071b804    0f84ca030000
                         push               edi                                           // 0x0071b80a    57
                         xor.s              edi, edi                                      // 0x0071b80b    33ff
                         push               0x8                                           // 0x0071b80d    6a08
                         {disp8} mov        dword ptr [esp + 0x18], edi                   // 0x0071b80f    897c2418
                         {disp8} mov        dword ptr [esp + 0x14], edi                   // 0x0071b813    897c2414
                         call               ??2@YAPAXI@Z                                  // 0x0071b817    e8d2ac0a00
                         add                esp, 0x04                                     // 0x0071b81c    83c404
                         cmp.s              eax, edi                                      // 0x0071b81f    3bc7
                         {disp8} je         _jmp_addr_0x0071b840                          // 0x0071b821    741d
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0071b823    8b4c2410
                         push               ecx                                           // 0x0071b827    51
                         push               0x0000131a                                    // 0x0071b828    681a130000
                         mov.s              ecx, eax                                      // 0x0071b82d    8bc8
                         call               _jmp_addr_0x0071d470                          // 0x0071b82f    e83c1c0000
                         cmp.s              eax, edi                                      // 0x0071b834    3bc7
                         {disp8} je         _jmp_addr_0x0071b840                          // 0x0071b836    7408
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0071b838    89442410
                         {disp8} inc        dword ptr [esp + 0x14]                        // 0x0071b83c    ff442414
_jmp_addr_0x0071b840:    push               0x8                                           // 0x0071b840    6a08
                         call               ??2@YAPAXI@Z                                  // 0x0071b842    e8a7ac0a00
                         add                esp, 0x04                                     // 0x0071b847    83c404
                         cmp.s              eax, edi                                      // 0x0071b84a    3bc7
                         {disp8} je         _jmp_addr_0x0071b86b                          // 0x0071b84c    741d
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x0071b84e    8b542410
                         push               edx                                           // 0x0071b852    52
                         push               0x0000131b                                    // 0x0071b853    681b130000
                         mov.s              ecx, eax                                      // 0x0071b858    8bc8
                         call               _jmp_addr_0x0071d470                          // 0x0071b85a    e8111c0000
                         cmp.s              eax, edi                                      // 0x0071b85f    3bc7
                         {disp8} je         _jmp_addr_0x0071b86b                          // 0x0071b861    7408
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0071b863    89442410
                         {disp8} inc        dword ptr [esp + 0x14]                        // 0x0071b867    ff442414
_jmp_addr_0x0071b86b:    push               0x8                                           // 0x0071b86b    6a08
                         call               ??2@YAPAXI@Z                                  // 0x0071b86d    e87cac0a00
                         add                esp, 0x04                                     // 0x0071b872    83c404
                         cmp.s              eax, edi                                      // 0x0071b875    3bc7
                         {disp8} je         _jmp_addr_0x0071b896                          // 0x0071b877    741d
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0071b879    8b4c2410
                         push               ecx                                           // 0x0071b87d    51
                         push               0x0000131c                                    // 0x0071b87e    681c130000
                         mov.s              ecx, eax                                      // 0x0071b883    8bc8
                         call               _jmp_addr_0x0071d470                          // 0x0071b885    e8e61b0000
                         cmp.s              eax, edi                                      // 0x0071b88a    3bc7
                         {disp8} je         _jmp_addr_0x0071b896                          // 0x0071b88c    7408
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0071b88e    89442410
                         {disp8} inc        dword ptr [esp + 0x14]                        // 0x0071b892    ff442414
_jmp_addr_0x0071b896:    push               0x8                                           // 0x0071b896    6a08
                         call               ??2@YAPAXI@Z                                  // 0x0071b898    e851ac0a00
                         add                esp, 0x04                                     // 0x0071b89d    83c404
                         cmp.s              eax, edi                                      // 0x0071b8a0    3bc7
                         {disp8} je         _jmp_addr_0x0071b8c1                          // 0x0071b8a2    741d
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x0071b8a4    8b542410
                         push               edx                                           // 0x0071b8a8    52
                         push               0x0000131d                                    // 0x0071b8a9    681d130000
                         mov.s              ecx, eax                                      // 0x0071b8ae    8bc8
                         call               _jmp_addr_0x0071d470                          // 0x0071b8b0    e8bb1b0000
                         cmp.s              eax, edi                                      // 0x0071b8b5    3bc7
                         {disp8} je         _jmp_addr_0x0071b8c1                          // 0x0071b8b7    7408
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0071b8b9    89442410
                         {disp8} inc        dword ptr [esp + 0x14]                        // 0x0071b8bd    ff442414
_jmp_addr_0x0071b8c1:    push               0x8                                           // 0x0071b8c1    6a08
                         call               ??2@YAPAXI@Z                                  // 0x0071b8c3    e826ac0a00
                         add                esp, 0x04                                     // 0x0071b8c8    83c404
                         cmp.s              eax, edi                                      // 0x0071b8cb    3bc7
                         {disp8} je         _jmp_addr_0x0071b8ec                          // 0x0071b8cd    741d
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0071b8cf    8b4c2410
                         push               ecx                                           // 0x0071b8d3    51
                         push               0x0000131e                                    // 0x0071b8d4    681e130000
                         mov.s              ecx, eax                                      // 0x0071b8d9    8bc8
                         call               _jmp_addr_0x0071d470                          // 0x0071b8db    e8901b0000
                         cmp.s              eax, edi                                      // 0x0071b8e0    3bc7
                         {disp8} je         _jmp_addr_0x0071b8ec                          // 0x0071b8e2    7408
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0071b8e4    89442410
                         {disp8} inc        dword ptr [esp + 0x14]                        // 0x0071b8e8    ff442414
_jmp_addr_0x0071b8ec:    push               0x8                                           // 0x0071b8ec    6a08
                         call               ??2@YAPAXI@Z                                  // 0x0071b8ee    e8fbab0a00
                         add                esp, 0x04                                     // 0x0071b8f3    83c404
                         cmp.s              eax, edi                                      // 0x0071b8f6    3bc7
                         {disp8} je         _jmp_addr_0x0071b917                          // 0x0071b8f8    741d
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x0071b8fa    8b542410
                         push               edx                                           // 0x0071b8fe    52
                         push               0x0000131f                                    // 0x0071b8ff    681f130000
                         mov.s              ecx, eax                                      // 0x0071b904    8bc8
                         call               _jmp_addr_0x0071d470                          // 0x0071b906    e8651b0000
                         cmp.s              eax, edi                                      // 0x0071b90b    3bc7
                         {disp8} je         _jmp_addr_0x0071b917                          // 0x0071b90d    7408
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0071b90f    89442410
                         {disp8} inc        dword ptr [esp + 0x14]                        // 0x0071b913    ff442414
_jmp_addr_0x0071b917:    push               0x8                                           // 0x0071b917    6a08
                         call               ??2@YAPAXI@Z                                  // 0x0071b919    e8d0ab0a00
                         add                esp, 0x04                                     // 0x0071b91e    83c404
                         cmp.s              eax, edi                                      // 0x0071b921    3bc7
                         {disp8} je         _jmp_addr_0x0071b942                          // 0x0071b923    741d
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0071b925    8b4c2410
                         push               ecx                                           // 0x0071b929    51
                         push               0x00001320                                    // 0x0071b92a    6820130000
                         mov.s              ecx, eax                                      // 0x0071b92f    8bc8
                         call               _jmp_addr_0x0071d470                          // 0x0071b931    e83a1b0000
                         cmp.s              eax, edi                                      // 0x0071b936    3bc7
                         {disp8} je         _jmp_addr_0x0071b942                          // 0x0071b938    7408
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0071b93a    89442410
                         {disp8} inc        dword ptr [esp + 0x14]                        // 0x0071b93e    ff442414
_jmp_addr_0x0071b942:    push               0x8                                           // 0x0071b942    6a08
                         call               ??2@YAPAXI@Z                                  // 0x0071b944    e8a5ab0a00
                         add                esp, 0x04                                     // 0x0071b949    83c404
                         cmp.s              eax, edi                                      // 0x0071b94c    3bc7
                         {disp8} je         _jmp_addr_0x0071b96d                          // 0x0071b94e    741d
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x0071b950    8b542410
                         push               edx                                           // 0x0071b954    52
                         push               0x00001321                                    // 0x0071b955    6821130000
                         mov.s              ecx, eax                                      // 0x0071b95a    8bc8
                         call               _jmp_addr_0x0071d470                          // 0x0071b95c    e80f1b0000
                         cmp.s              eax, edi                                      // 0x0071b961    3bc7
                         {disp8} je         _jmp_addr_0x0071b96d                          // 0x0071b963    7408
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0071b965    89442410
                         {disp8} inc        dword ptr [esp + 0x14]                        // 0x0071b969    ff442414
_jmp_addr_0x0071b96d:    push               0x8                                           // 0x0071b96d    6a08
                         call               ??2@YAPAXI@Z                                  // 0x0071b96f    e87aab0a00
                         add                esp, 0x04                                     // 0x0071b974    83c404
                         cmp.s              eax, edi                                      // 0x0071b977    3bc7
                         {disp8} je         _jmp_addr_0x0071b998                          // 0x0071b979    741d
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0071b97b    8b4c2410
                         push               ecx                                           // 0x0071b97f    51
                         push               0x00001322                                    // 0x0071b980    6822130000
                         mov.s              ecx, eax                                      // 0x0071b985    8bc8
                         call               _jmp_addr_0x0071d470                          // 0x0071b987    e8e41a0000
                         cmp.s              eax, edi                                      // 0x0071b98c    3bc7
                         {disp8} je         _jmp_addr_0x0071b998                          // 0x0071b98e    7408
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0071b990    89442410
                         {disp8} inc        dword ptr [esp + 0x14]                        // 0x0071b994    ff442414
_jmp_addr_0x0071b998:    push               0x8                                           // 0x0071b998    6a08
                         call               ??2@YAPAXI@Z                                  // 0x0071b99a    e84fab0a00
                         add                esp, 0x04                                     // 0x0071b99f    83c404
                         cmp.s              eax, edi                                      // 0x0071b9a2    3bc7
                         {disp8} je         _jmp_addr_0x0071b9c3                          // 0x0071b9a4    741d
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x0071b9a6    8b542410
                         push               edx                                           // 0x0071b9aa    52
                         push               0x00001323                                    // 0x0071b9ab    6823130000
                         mov.s              ecx, eax                                      // 0x0071b9b0    8bc8
                         call               _jmp_addr_0x0071d470                          // 0x0071b9b2    e8b91a0000
                         cmp.s              eax, edi                                      // 0x0071b9b7    3bc7
                         {disp8} je         _jmp_addr_0x0071b9c3                          // 0x0071b9b9    7408
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0071b9bb    89442410
                         {disp8} inc        dword ptr [esp + 0x14]                        // 0x0071b9bf    ff442414
_jmp_addr_0x0071b9c3:    cmp.s              esi, edi                                      // 0x0071b9c3    3bf7
                         {disp32} jne       _jmp_addr_0x0071bacb                          // 0x0071b9c5    0f8500010000
                         push               0x8                                           // 0x0071b9cb    6a08
                         call               ??2@YAPAXI@Z                                  // 0x0071b9cd    e81cab0a00
                         add                esp, 0x04                                     // 0x0071b9d2    83c404
                         cmp.s              eax, edi                                      // 0x0071b9d5    3bc7
                         {disp8} je         _jmp_addr_0x0071b9f6                          // 0x0071b9d7    741d
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0071b9d9    8b4c2410
                         push               ecx                                           // 0x0071b9dd    51
                         push               0x00001324                                    // 0x0071b9de    6824130000
                         mov.s              ecx, eax                                      // 0x0071b9e3    8bc8
                         call               _jmp_addr_0x0071d470                          // 0x0071b9e5    e8861a0000
                         cmp.s              eax, edi                                      // 0x0071b9ea    3bc7
                         {disp8} je         _jmp_addr_0x0071b9f6                          // 0x0071b9ec    7408
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0071b9ee    89442410
                         {disp8} inc        dword ptr [esp + 0x14]                        // 0x0071b9f2    ff442414
_jmp_addr_0x0071b9f6:    push               0x8                                           // 0x0071b9f6    6a08
                         call               ??2@YAPAXI@Z                                  // 0x0071b9f8    e8f1aa0a00
                         add                esp, 0x04                                     // 0x0071b9fd    83c404
                         cmp.s              eax, edi                                      // 0x0071ba00    3bc7
                         {disp8} je         _jmp_addr_0x0071ba21                          // 0x0071ba02    741d
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x0071ba04    8b542410
                         push               edx                                           // 0x0071ba08    52
                         push               0x00001325                                    // 0x0071ba09    6825130000
                         mov.s              ecx, eax                                      // 0x0071ba0e    8bc8
                         call               _jmp_addr_0x0071d470                          // 0x0071ba10    e85b1a0000
                         cmp.s              eax, edi                                      // 0x0071ba15    3bc7
                         {disp8} je         _jmp_addr_0x0071ba21                          // 0x0071ba17    7408
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0071ba19    89442410
                         {disp8} inc        dword ptr [esp + 0x14]                        // 0x0071ba1d    ff442414
_jmp_addr_0x0071ba21:    push               0x8                                           // 0x0071ba21    6a08
                         call               ??2@YAPAXI@Z                                  // 0x0071ba23    e8c6aa0a00
                         add                esp, 0x04                                     // 0x0071ba28    83c404
                         cmp.s              eax, edi                                      // 0x0071ba2b    3bc7
                         {disp8} je         _jmp_addr_0x0071ba4c                          // 0x0071ba2d    741d
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0071ba2f    8b4c2410
                         push               ecx                                           // 0x0071ba33    51
                         push               0x00001326                                    // 0x0071ba34    6826130000
                         mov.s              ecx, eax                                      // 0x0071ba39    8bc8
                         call               _jmp_addr_0x0071d470                          // 0x0071ba3b    e8301a0000
                         cmp.s              eax, edi                                      // 0x0071ba40    3bc7
                         {disp8} je         _jmp_addr_0x0071ba4c                          // 0x0071ba42    7408
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0071ba44    89442410
                         {disp8} inc        dword ptr [esp + 0x14]                        // 0x0071ba48    ff442414
_jmp_addr_0x0071ba4c:    push               0x8                                           // 0x0071ba4c    6a08
                         call               ??2@YAPAXI@Z                                  // 0x0071ba4e    e89baa0a00
                         add                esp, 0x04                                     // 0x0071ba53    83c404
                         cmp.s              eax, edi                                      // 0x0071ba56    3bc7
                         {disp8} je         _jmp_addr_0x0071ba77                          // 0x0071ba58    741d
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x0071ba5a    8b542410
                         push               edx                                           // 0x0071ba5e    52
                         push               0x00001327                                    // 0x0071ba5f    6827130000
                         mov.s              ecx, eax                                      // 0x0071ba64    8bc8
                         call               _jmp_addr_0x0071d470                          // 0x0071ba66    e8051a0000
                         cmp.s              eax, edi                                      // 0x0071ba6b    3bc7
                         {disp8} je         _jmp_addr_0x0071ba77                          // 0x0071ba6d    7408
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0071ba6f    89442410
                         {disp8} inc        dword ptr [esp + 0x14]                        // 0x0071ba73    ff442414
_jmp_addr_0x0071ba77:    push               0x00001328                                    // 0x0071ba77    6828130000
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0071ba7c    8d4c2414
                         call               _jmp_addr_0x0071d3b0                          // 0x0071ba80    e82b190000
                         push               0x00001329                                    // 0x0071ba85    6829130000
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0071ba8a    8d4c2414
                         call               _jmp_addr_0x0071d3b0                          // 0x0071ba8e    e81d190000
                         push               0x0000132a                                    // 0x0071ba93    682a130000
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0071ba98    8d4c2414
                         call               _jmp_addr_0x0071d3b0                          // 0x0071ba9c    e80f190000
                         push               0x0000132b                                    // 0x0071baa1    682b130000
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0071baa6    8d4c2414
                         call               _jmp_addr_0x0071d3b0                          // 0x0071baaa    e801190000
                         push               0x0000132c                                    // 0x0071baaf    682c130000
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0071bab4    8d4c2414
                         call               _jmp_addr_0x0071d3b0                          // 0x0071bab8    e8f3180000
                         push               0x0000132d                                    // 0x0071babd    682d130000
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0071bac2    8d4c2414
                         call               _jmp_addr_0x0071d3b0                          // 0x0071bac6    e8e5180000
_jmp_addr_0x0071bacb:    {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x0071bacb    8b442424
                         {disp8} mov        ecx, dword ptr [eax + 0x28]                   // 0x0071bacf    8b4828
                         cmp.s              ecx, edi                                      // 0x0071bad2    3bcf
                         {disp8} je         _jmp_addr_0x0071bb48                          // 0x0071bad4    7472
                         mov                edx, dword ptr [ecx]                          // 0x0071bad6    8b11
                         call               dword ptr [edx + 0xdc]                        // 0x0071bad8    ff92dc000000
                         mov.s              esi, eax                                      // 0x0071bade    8bf0
                         cmp.s              esi, edi                                      // 0x0071bae0    3bf7
                         {disp8} je         _jmp_addr_0x0071bb48                          // 0x0071bae2    7464
                         push               esi                                           // 0x0071bae4    56
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0071bae5    8d4c2414
                         call               _jmp_addr_0x0071d3b0                          // 0x0071bae9    e8c2180000
                         push               esi                                           // 0x0071baee    56
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0071baef    8d4c2414
                         call               _jmp_addr_0x0071d3b0                          // 0x0071baf3    e8b8180000
                         push               esi                                           // 0x0071baf8    56
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0071baf9    8d4c2414
                         call               _jmp_addr_0x0071d3b0                          // 0x0071bafd    e8ae180000
                         push               esi                                           // 0x0071bb02    56
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0071bb03    8d4c2414
                         call               _jmp_addr_0x0071d3b0                          // 0x0071bb07    e8a4180000
                         push               esi                                           // 0x0071bb0c    56
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0071bb0d    8d4c2414
                         call               _jmp_addr_0x0071d3b0                          // 0x0071bb11    e89a180000
                         push               esi                                           // 0x0071bb16    56
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0071bb17    8d4c2414
                         call               _jmp_addr_0x0071d3b0                          // 0x0071bb1b    e890180000
                         push               esi                                           // 0x0071bb20    56
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0071bb21    8d4c2414
                         call               _jmp_addr_0x0071d3b0                          // 0x0071bb25    e886180000
                         push               esi                                           // 0x0071bb2a    56
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0071bb2b    8d4c2414
                         call               _jmp_addr_0x0071d3b0                          // 0x0071bb2f    e87c180000
                         push               esi                                           // 0x0071bb34    56
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0071bb35    8d4c2414
                         call               _jmp_addr_0x0071d3b0                          // 0x0071bb39    e872180000
                         push               esi                                           // 0x0071bb3e    56
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0071bb3f    8d4c2414
                         call               _jmp_addr_0x0071d3b0                          // 0x0071bb43    e868180000
_jmp_addr_0x0071bb48:    {disp32} fld       dword ptr [ebp + 0x00000ec0]                  // 0x0071bb48    d985c00e0000
                         {disp32} fmul      dword ptr [_rdata_float0p2]                   // 0x0071bb4e    d80daca38a00
                         {disp32} fcom      dword ptr [_rdata_float1p0]                   // 0x0071bb54    d81590a38a00
                         fnstsw             ax                                            // 0x0071bb5a    dfe0
                         test               ah, 0x01                                      // 0x0071bb5c    f6c401
                         {disp8} jne        _jmp_addr_0x0071bb69                          // 0x0071bb5f    7508
                         fstp               st(0)                                         // 0x0071bb61    ddd8
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0071bb63    d90590a38a00
_jmp_addr_0x0071bb69:    {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x0071bb69    d80590a38a00
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0071bb6f    8b442414
                         push               eax                                           // 0x0071bb73    50
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0071bb74    d95c2420
                         call               ?LocalRand@GRand@@SAIJ@Z                      // 0x0071bb78    e8f329fcff
                         add                esp, 0x04                                     // 0x0071bb7d    83c404
                         push               eax                                           // 0x0071bb80    50
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0071bb81    8d4c2414
                         call               _jmp_addr_0x0071d440                          // 0x0071bb85    e8b6180000
                         cmp.s              eax, edi                                      // 0x0071bb8a    3bc7
                         {disp8} je         _jmp_addr_0x0071bb91                          // 0x0071bb8c    7403
                         {disp8} mov        edi, dword ptr [eax + 0x04]                   // 0x0071bb8e    8b7804
_jmp_addr_0x0071bb91:    {disp32} fld       dword ptr [rdata_bytes + 0xd7158]             // 0x0071bb91    d90558019800
                         mov                edx, dword ptr [ebx]                          // 0x0071bb97    8b13
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x0071bb99    d84c241c
                         {disp8} mov        esi, dword ptr [ebx + 0x30]                   // 0x0071bb9d    8b7330
                         push               0x1                                           // 0x0071bba0    6a01
                         push               ecx                                           // 0x0071bba2    51
                         fstp               dword ptr [esp]                               // 0x0071bba3    d91c24
                         {disp8} lea        ecx, dword ptr [ebp + 0x14]                   // 0x0071bba6    8d4d14
                         push               ecx                                           // 0x0071bba9    51
                         push               0x5a                                          // 0x0071bbaa    6a5a
                         push               0x64                                          // 0x0071bbac    6a64
                         push               0x7f                                          // 0x0071bbae    6a7f
                         push               0x2                                           // 0x0071bbb0    6a02
                         mov.s              ecx, ebx                                      // 0x0071bbb2    8bcb
                         call               dword ptr [edx + 0x1c]                        // 0x0071bbb4    ff521c
                         xor.s              ecx, ecx                                      // 0x0071bbb7    33c9
                         {disp32} mov       cl, byte ptr [eax + 0x000000b5]               // 0x0071bbb9    8a88b5000000
                         push               ecx                                           // 0x0071bbbf    51
                         push               edi                                           // 0x0071bbc0    57
                         push               0x1                                           // 0x0071bbc1    6a01
                         mov.s              ecx, esi                                      // 0x0071bbc3    8bce
                         call               _jmp_addr_0x0071c6f0                          // 0x0071bbc5    e8260b0000
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0071bbca    8d4c2410
                         call               _jmp_addr_0x0071d3f0                          // 0x0071bbce    e81d180000
                         pop                edi                                           // 0x0071bbd3    5f
_jmp_addr_0x0071bbd4:    {disp32} mov       ecx, dword ptr [_game]                        // 0x0071bbd4    8b0d5c19d000
                         call               _jmp_addr_0x00555880                          // 0x0071bbda    e8a19ce3ff
                         {disp8} mov        edx, dword ptr [ebp + 0x00]                   // 0x0071bbdf    8b5500
                         mov.s              ecx, ebp                                      // 0x0071bbe2    8bcd
                         mov.s              esi, eax                                      // 0x0071bbe4    8bf0
                         call               dword ptr [edx + 0x1c]                        // 0x0071bbe6    ff521c
                         test               eax, eax                                      // 0x0071bbe9    85c0
                         {disp8} je         _jmp_addr_0x0071bc0f                          // 0x0071bbeb    7422
                         {disp8} mov        eax, dword ptr [ebp + 0x00]                   // 0x0071bbed    8b4500
                         push               esi                                           // 0x0071bbf0    56
                         mov.s              ecx, ebp                                      // 0x0071bbf1    8bcd
                         call               dword ptr [eax + 0x1c]                        // 0x0071bbf3    ff501c
                         mov.s              ecx, eax                                      // 0x0071bbf6    8bc8
                         call               ?IsMemberOfThisPlayer@GPlayer@@QAE_NPAVGInterfaceStatus@@@Z                          // 0x0071bbf8    e8531bf3ff
                         test               eax, eax                                      // 0x0071bbfd    85c0
                         {disp8} je         _jmp_addr_0x0071bc0f                          // 0x0071bbff    740e
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x0071bc01    8b4c2420
                         push               ecx                                           // 0x0071bc05    51
                         {disp8} mov        ecx, dword ptr [esi + 0x30]                   // 0x0071bc06    8b4e30
                         push               ebp                                           // 0x0071bc09    55
                         call               _jmp_addr_0x0071c870                          // 0x0071bc0a    e8610c0000
_jmp_addr_0x0071bc0f:    pop                esi                                           // 0x0071bc0f    5e
                         pop                ebp                                           // 0x0071bc10    5d
                         pop                ebx                                           // 0x0071bc11    5b
                         add                esp, 0x08                                     // 0x0071bc12    83c408
                         ret                                                              // 0x0071bc15    c3
                         nop                                                              // 0x0071bc16    90
                         nop                                                              // 0x0071bc17    90
                         nop                                                              // 0x0071bc18    90
                         nop                                                              // 0x0071bc19    90
                         nop                                                              // 0x0071bc1a    90
                         nop                                                              // 0x0071bc1b    90
                         nop                                                              // 0x0071bc1c    90
                         nop                                                              // 0x0071bc1d    90
                         nop                                                              // 0x0071bc1e    90
                         nop                                                              // 0x0071bc1f    90
?GetSampleForAttack@GameThing@@UAEIXZ:
                         xor.s              eax, eax                                      // 0x0071bc20    33c0
                         ret                                                              // 0x0071bc22    c3
                         nop                                                              // 0x0071bc23    90
                         nop                                                              // 0x0071bc24    90
                         nop                                                              // 0x0071bc25    90
                         nop                                                              // 0x0071bc26    90
                         nop                                                              // 0x0071bc27    90
                         nop                                                              // 0x0071bc28    90
                         nop                                                              // 0x0071bc29    90
                         nop                                                              // 0x0071bc2a    90
                         nop                                                              // 0x0071bc2b    90
                         nop                                                              // 0x0071bc2c    90
                         nop                                                              // 0x0071bc2d    90
                         nop                                                              // 0x0071bc2e    90
                         nop                                                              // 0x0071bc2f    90
?GetSampleForAttack@Spell@@UAEIXZ:
                         {disp32} mov       eax, dword ptr [ecx + 0x000000ac]             // 0x0071bc30    8b81ac000000
                         {disp8} mov        eax, dword ptr [eax + 0x28]                   // 0x0071bc36    8b4028
                         push               eax                                           // 0x0071bc39    50
                         call               _jmp_addr_0x0072b200                          // 0x0071bc3a    e8c1f50000
                         add                esp, 0x04                                     // 0x0071bc3f    83c404
                         cmp                eax, 0x06                                     // 0x0071bc42    83f806
                         {disp8} jne        _jmp_addr_0x0071bc99                          // 0x0071bc45    7552
                         push               0xa                                           // 0x0071bc47    6a0a
                         call               ?LocalRand@GRand@@SAIJ@Z                      // 0x0071bc49    e82229fcff
                         add                esp, 0x04                                     // 0x0071bc4e    83c404
                         cmp                eax, 0x09                                     // 0x0071bc51    83f809
                         {disp8} ja         _jmp_addr_0x0071bc99                          // 0x0071bc54    7743
                         jmp                dword ptr [eax*4 + 0x71bc9c]                  // 0x0071bc56    ff24859cbc7100
                         mov                eax, 0x0000132e                               // 0x0071bc5d    b82e130000
                         ret                                                              // 0x0071bc62    c3
                         mov                eax, 0x0000132f                               // 0x0071bc63    b82f130000
                         ret                                                              // 0x0071bc68    c3
                         mov                eax, 0x00001330                               // 0x0071bc69    b830130000
                         ret                                                              // 0x0071bc6e    c3
                         mov                eax, 0x00001331                               // 0x0071bc6f    b831130000
                         ret                                                              // 0x0071bc74    c3
                         mov                eax, 0x00001332                               // 0x0071bc75    b832130000
                         ret                                                              // 0x0071bc7a    c3
                         mov                eax, 0x00001333                               // 0x0071bc7b    b833130000
                         ret                                                              // 0x0071bc80    c3
                         mov                eax, 0x00001334                               // 0x0071bc81    b834130000
                         ret                                                              // 0x0071bc86    c3
                         mov                eax, 0x00001335                               // 0x0071bc87    b835130000
                         ret                                                              // 0x0071bc8c    c3
                         mov                eax, 0x00001336                               // 0x0071bc8d    b836130000
                         ret                                                              // 0x0071bc92    c3
                         mov                eax, 0x00001337                               // 0x0071bc93    b837130000
                         ret                                                              // 0x0071bc98    c3
_jmp_addr_0x0071bc99:    xor.s              eax, eax                                      // 0x0071bc99    33c0
                         ret                                                              // 0x0071bc9b    c3

// Snippet: jmptbl, [0x0071bc9c, 0x0071bcc4)
.byte 0x5d, 0xbc, 0x71, 0x00      // 0x0071bc9c
.byte 0x63, 0xbc, 0x71, 0x00      // 0x0071bca0
.byte 0x69, 0xbc, 0x71, 0x00      // 0x0071bca4
.byte 0x6f, 0xbc, 0x71, 0x00      // 0x0071bca8
.byte 0x75, 0xbc, 0x71, 0x00      // 0x0071bcac
.byte 0x7b, 0xbc, 0x71, 0x00      // 0x0071bcb0
.byte 0x81, 0xbc, 0x71, 0x00      // 0x0071bcb4
.byte 0x87, 0xbc, 0x71, 0x00      // 0x0071bcb8
.byte 0x8d, 0xbc, 0x71, 0x00      // 0x0071bcbc
.byte 0x93, 0xbc, 0x71, 0x00      // 0x0071bcc0

// Snippet: db, [0x0071bcc4, 0x0071bcd0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0071bcc4
.byte 0x90, 0x90, 0x90, 0x90      // 0x0071bcc8
.byte 0x90, 0x90, 0x90, 0x90      // 0x0071bccc

