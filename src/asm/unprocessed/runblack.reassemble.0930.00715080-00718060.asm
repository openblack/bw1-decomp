.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?Create@Abode@@SAPAV1@PBUMapCoords@@PBVGAbodeInfo@@PAVTown@@MMIIMHH@Z
.extern ?AddVillagerToAbode@Abode@@QAEXPAVVillager@@@Z
.extern ?IsOkToCreateAtPos@GAbodeInfo@@QBE_NPBUMapCoords@@MMPAVTown@@@Z
.extern ?Create@PlannedAbode@@SAPAV1@PAUMapCoords@@PAVGMultiMapFixedInfo@@PAVTown@@MM@Z
.extern ?GetInfoFromText@GAbodeInfo@@SAHPAD@Z
.extern @DeleteString__9SetupListFi@12
.extern @InsertString__9SetupListFiPw@16
.extern _jmp_addr_0x00419d10
.extern _jmp_addr_0x00421f50
.extern _jmp_addr_0x00422600
.extern _jmp_addr_0x00424820
.extern _jmp_addr_0x00425d00
.extern _jmp_addr_0x00426820
.extern ?__nw@Base@@SAPAXK@Z
.extern @SetBeliefInPlayerCap__7GBeliefFP7GPlayerf@16
.extern ?Create@BigForest@@SAPAV1@ABUMapCoords@@PBVGBigForestInfo@@KMM@Z
.extern _jmp_addr_0x00439850
.extern ?CreateCitadel@Citadel@@SAPAV1@ABUMapCoords@@PBVGCitadelHeartInfo@@EMM@Z
.extern @CreateBuiltWorshipSite__12CitadelHeartFRC9MapCoordsPC16GWorshipSiteInfoP7CitadelPC10GTribeInfo@24
.extern _jmp_addr_0x00467dd0
.extern _jmp_addr_0x00469610
.extern ?CreateCreature@Creature@@SAPAV1@ABUMapCoords@@PBVCreatureInfo@@PAVGPlayer@@@Z
.extern _jmp_addr_0x004eef60
.extern _jmp_addr_0x00510bb0
.extern _HideAll__13DialogBoxBaseFv@0
.extern _jmp_addr_0x00527350
.extern _jmp_addr_0x00527440
.extern _jmp_addr_0x00527740
.extern _jmp_addr_0x005279e0
.extern ?Create@Field@@SAPAV1@ABUMapCoords@@PBVGFieldTypeInfo@@PAVTown@@MMH@Z
.extern ?Create@FireFly@@SAPAV1@ABUMapCoords@@@Z
.extern _jmp_addr_0x0052b630
.extern _jmp_addr_0x0052c7b0
.extern @__ct__5FlockFRC9MapCoordsPC10GFlockInfoP7GPlayerUl@24
.extern ?SetDomainCentrePos@Flock@@QAEXABUMapCoords@@@Z
.extern @__ct__9GFootpathFP16GameThingWithPosP16GameThingWithPos@16
.extern _jmp_addr_0x00534f90
.extern @AddPos__9GFootpathFRC9MapCoords@12
.extern @__ct__6ForestFRC9MapCoordsUl@16
.extern ?GetNextPlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z
.extern ?GetNextPlayerAndNeutral@GGame@@QAEPAVGPlayer@@PAV2@@Z
.extern ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z
.extern ?IsMultiplayerGame@GGame@@QBE_NXZ
.extern ?FindTownWithID@GGame@@QAEPAVTown@@K@Z
.extern _jmp_addr_0x00552ff0
.extern ?SetLandBalance@GGame@@QAEXKMPAVGPlayer@@@Z
.extern _jmp_addr_0x005571c0
.extern @SetVisualTimeCycleFromMapEditor__9GGameInfoFfff@20
.extern _jmp_addr_0x005cd9d0
.extern @Open__10GLandscapeFPc@12
.extern _RenderLoadingFrame__Fb
.extern ?GetInfoFromText@GMagicInfo@@SAHPAD@Z
.extern _jmp_addr_0x006063d0
.extern _jmp_addr_0x00607000
.extern _jmp_addr_0x00608770
.extern _jmp_addr_0x00608840
.extern _jmp_addr_0x00609340
.extern _jmp_addr_0x00638c40
.extern ?GetPlayerNumber@GPlayer@@QBEEXZ
.extern ?IsNeutral@GPlayer@@QAE_NXZ
.extern ?GetPlayerFromText@GPlayer@@SAPAV1@PAD@Z
.extern _jmp_addr_0x0064c400
.extern _jmp_addr_0x0065ba40
.extern _jmp_addr_0x00664000
.extern _jmp_addr_0x006642b0
.extern _jmp_addr_0x0066cf10
.extern _jmp_addr_0x006e8460
.extern ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z
.extern _jmp_addr_0x007228d0
.extern _jmp_addr_0x00723030
.extern _jmp_addr_0x0072a2f0
.extern @GetPowerUpFromMagicType__14GSpellSeedInfoCF10MAGIC_TYPE@12
.extern @GetMagicTypeFromPULevel__14GSpellSeedInfoCF13POWER_UP_TYPE@12
.extern ?GetFirstSpellSeedForMagicType@GSpellSeedInfo@@SA?AW4SPELL_SEED_TYPE@@W4MAGIC_TYPE@@@Z
.extern _jmp_addr_0x0072b170
.extern _jmp_addr_0x00733ac0
.extern _jmp_addr_0x00733b90
.extern _jmp_addr_0x00734180
.extern _jmp_addr_0x007346e0
.extern _jmp_addr_0x00734e60
.extern ?GetWorshipSpeed@TotemStatue@@QAEMXZ
.extern @SetWorshipPercentage__11TotemStatueFf@12
.extern @__ct__4TownFRC9MapCoordsPC9GTownInfoP7GPlayer10TRIBE_TYPEPcUli@36
.extern ?AddVillagerToTown@Town@@QAE_NPAVVillager@@@Z
.extern ?FindAbodeWithSpaceInTown@Town@@QAEPAVAbode@@PAVVillager@@M@Z
.extern ?SetBeliefInPlayer@Town@@QAEXPAVGPlayer@@M@Z
.extern ?SetWorshipPercentage@Town@@QAEXM@Z
.extern ?AddMagicTypesHeld@Town@@QAE_NW4MAGIC_TYPE@@@Z
.extern ?IsMagicTypeHeld@Town@@QAE_NW4MAGIC_TYPE@@@Z
.extern ?GetTemporaryResourceStorePotOrPos@Town@@QAEPAXABUMapCoords@@AAU2@W4RESOURCE_TYPE@@@Z
.extern _jmp_addr_0x0073fda0
.extern @AddSpell__10TownCentreF15SPELL_SEED_TYPE@12
.extern ?Create@PlannedTownCentre@@SAPAV1@ABUMapCoords@@PBVGAbodeInfo@@PAVTown@@MM@Z
.extern _jmp_addr_0x00747270
.extern ?Create@Tree@@SAPAV1@ABUMapCoords@@PBVGTreeInfo@@PAVForest@@MMM@Z
.extern ?GetTribeFromText@GTribeInfo@@SAPAV1@PBD@Z
.extern ?Create@Villager@@SAPAV1@ABUMapCoords@@PBVGVillagerInfo@@KH@Z
.extern ?GetInfoFromText@GVillagerInfo@@SAHPAD@Z
.extern ?Find@GVillagerInfo@@SAPAV1@W4TRIBE_TYPE@@W4VILLAGER_NUMBER@@@Z
.extern _jmp_addr_0x00770bc0
.extern _jmp_addr_0x00771300
.extern _jmp_addr_0x007731b0
.extern _jmp_addr_0x00773200
.extern _jmp_addr_0x00773290
.extern _jmp_addr_0x007732d0
.extern _jmp_addr_0x00773d10
.extern _jmp_addr_0x00773ec0
.extern _jmp_addr_0x00774a80
.extern _jmp_addr_0x007a1400
.extern @Write__8LHOSFileFPvUlPUl@20
.extern _sprintf
.extern ___RTDynamicCast
.extern _wcscpy
.extern ??2@YAPAXI@Z
.extern _sscanf
.extern __strnicmp
.extern @Load__12LHScriptX_c_FPcP19LHScriptCommandX_c_PFlP16LHScriptPramX_c__9LH_RETURNPl@24
.extern _jmp_addr_0x007e73d0
.extern @ScanLine__12LHScriptX_c_FPc@12
.extern _jmp_addr_0x007e7fb0
.extern ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z
.extern _CHAR2WCHAR__FPc
.extern _jmp_addr_0x0083f4a0
.extern _jmp_addr_0x0083f6f0

.globl ?LoadMapScript@GSetup@@QAEHXZ
.globl _jmp_addr_0x007150e0
.globl ?GetCommandAsText@GSetup@@SAPADW4SCRIPT_FEATURE_COMMANDS@@@Z
.globl _jmp_addr_0x00715150

start_0x00715080_0x00718060:
// Snippet: asm, [0x00715080, 0x00717e97)
?LoadMapScript@GSetup@@QAEHXZ:
                         push               0x0                                           // 0x00715080    6a00
                         push               0x00714d10                                    // 0x00715082    68104d7100
                         push               0x00c20d60                                    // 0x00715087    68600dc200
                         push               0x00c22004                                    // 0x0071508c    680420c200
                         mov                ecx, 0x00e85904                               // 0x00715091    b90459e800
                         call               @Load__12LHScriptX_c_FPcP19LHScriptCommandX_c_PFlP16LHScriptPramX_c__9LH_RETURNPl@24                          // 0x00715096    e825220d00
                         neg                eax                                           // 0x0071509b    f7d8
                         sbb.s              eax, eax                                      // 0x0071509d    1bc0
                         inc                eax                                           // 0x0071509f    40
                         ret                                                              // 0x007150a0    c3
                         nop                                                              // 0x007150a1    90
                         nop                                                              // 0x007150a2    90
                         nop                                                              // 0x007150a3    90
                         nop                                                              // 0x007150a4    90
                         nop                                                              // 0x007150a5    90
                         nop                                                              // 0x007150a6    90
                         nop                                                              // 0x007150a7    90
                         nop                                                              // 0x007150a8    90
                         nop                                                              // 0x007150a9    90
                         nop                                                              // 0x007150aa    90
                         nop                                                              // 0x007150ab    90
                         nop                                                              // 0x007150ac    90
                         nop                                                              // 0x007150ad    90
                         nop                                                              // 0x007150ae    90
                         nop                                                              // 0x007150af    90
                         push               0x0                                           // 0x007150b0    6a00
                         push               0x00714d10                                    // 0x007150b2    68104d7100
                         push               0x00c20d60                                    // 0x007150b7    68600dc200
                         push               0x00c22018                                    // 0x007150bc    681820c200
                         mov                ecx, 0x00e85904                               // 0x007150c1    b90459e800
                         call               @Load__12LHScriptX_c_FPcP19LHScriptCommandX_c_PFlP16LHScriptPramX_c__9LH_RETURNPl@24                          // 0x007150c6    e8f5210d00
                         neg                eax                                           // 0x007150cb    f7d8
                         sbb.s              eax, eax                                      // 0x007150cd    1bc0
                         inc                eax                                           // 0x007150cf    40
                         ret                                                              // 0x007150d0    c3
                         nop                                                              // 0x007150d1    90
                         nop                                                              // 0x007150d2    90
                         nop                                                              // 0x007150d3    90
                         nop                                                              // 0x007150d4    90
                         nop                                                              // 0x007150d5    90
                         nop                                                              // 0x007150d6    90
                         nop                                                              // 0x007150d7    90
                         nop                                                              // 0x007150d8    90
                         nop                                                              // 0x007150d9    90
                         nop                                                              // 0x007150da    90
                         nop                                                              // 0x007150db    90
                         nop                                                              // 0x007150dc    90
                         nop                                                              // 0x007150dd    90
                         nop                                                              // 0x007150de    90
                         nop                                                              // 0x007150df    90
_jmp_addr_0x007150e0:    {disp32} fld       dword ptr [data_bytes + 0x25ad50]             // 0x007150e0    d905500dc200
                         sub                esp, 0x64                                     // 0x007150e6    83ec64
                         push               edi                                           // 0x007150e9    57
                         sub                esp, 0x08                                     // 0x007150ea    83ec08
                         fstp               qword ptr [esp]                               // 0x007150ed    dd1c24
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x007150f0    8d44240c
                         push               0x00c22030                                    // 0x007150f4    683020c200
                         push               eax                                           // 0x007150f9    50
                         call               _sprintf                                      // 0x007150fa    e8d3060b00
                         or                 ecx, 0xffffffff                               // 0x007150ff    83c9ff
                         add                esp, 0x10                                     // 0x00715102    83c410
                         xor.s              eax, eax                                      // 0x00715105    33c0
                         {disp8} lea        edi, dword ptr [esp + 0x04]                   // 0x00715107    8d7c2404
                         repne scasb                                                      // 0x0071510b    f2ae
                         not                ecx                                           // 0x0071510d    f7d1
                         dec                ecx                                           // 0x0071510f    49
                         push               0x0                                           // 0x00715110    6a00
                         push               ecx                                           // 0x00715112    51
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x00715113    8d4c240c
                         push               ecx                                           // 0x00715117    51
                         {disp8} mov        ecx, dword ptr [esp + 0x78]                   // 0x00715118    8b4c2478
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0071511c    e8ff770a00
                         pop                edi                                           // 0x00715121    5f
                         add                esp, 0x64                                     // 0x00715122    83c464
                         ret                                                              // 0x00715125    c3
                         nop                                                              // 0x00715126    90
                         nop                                                              // 0x00715127    90
                         nop                                                              // 0x00715128    90
                         nop                                                              // 0x00715129    90
                         nop                                                              // 0x0071512a    90
                         nop                                                              // 0x0071512b    90
                         nop                                                              // 0x0071512c    90
                         nop                                                              // 0x0071512d    90
                         nop                                                              // 0x0071512e    90
                         nop                                                              // 0x0071512f    90
?GetCommandAsText@GSetup@@SAPADW4SCRIPT_FEATURE_COMMANDS@@@Z:
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x00715130    8b4c2404
                         shl                ecx, 4                                        // 0x00715134    c1e104
                         push               0x00d99388                                    // 0x00715137    688893d900
                         add                ecx, 0x00c20f00                               // 0x0071513c    81c1000fc200
                         call               _jmp_addr_0x007e7fb0                          // 0x00715142    e8692e0d00
                         ret                                                              // 0x00715147    c3
                         nop                                                              // 0x00715148    90
                         nop                                                              // 0x00715149    90
                         nop                                                              // 0x0071514a    90
                         nop                                                              // 0x0071514b    90
                         nop                                                              // 0x0071514c    90
                         nop                                                              // 0x0071514d    90
                         nop                                                              // 0x0071514e    90
                         nop                                                              // 0x0071514f    90
_jmp_addr_0x00715150:    push               0x0                                           // 0x00715150    6a00
                         push               0x00715180                                    // 0x00715152    6880517100
                         push               0x00c20f00                                    // 0x00715157    68000fc200
                         mov                ecx, 0x00e85904                               // 0x0071515c    b90459e800
                         call               _jmp_addr_0x007e73d0                          // 0x00715161    e86a220d00
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00715166    8b442404
                         push               eax                                           // 0x0071516a    50
                         mov                ecx, 0x00e85904                               // 0x0071516b    b90459e800
                         call               @ScanLine__12LHScriptX_c_FPc@12               // 0x00715170    e8cb230d00
                         ret                                                              // 0x00715175    c3
                         nop                                                              // 0x00715176    90
                         nop                                                              // 0x00715177    90
                         nop                                                              // 0x00715178    90
                         nop                                                              // 0x00715179    90
                         nop                                                              // 0x0071517a    90
                         nop                                                              // 0x0071517b    90
                         nop                                                              // 0x0071517c    90
                         nop                                                              // 0x0071517d    90
                         nop                                                              // 0x0071517e    90
                         nop                                                              // 0x0071517f    90
                         sub                esp, 0x00000654                               // 0x00715180    81ec54060000
                         push               ebx                                           // 0x00715186    53
                         push               ebp                                           // 0x00715187    55
                         push               esi                                           // 0x00715188    56
                         xor.s              esi, esi                                      // 0x00715189    33f6
                         push               edi                                           // 0x0071518b    57
                         push               0x1                                           // 0x0071518c    6a01
                         {disp8} mov        dword ptr [esp + 0x18], esi                   // 0x0071518e    89742418
                         {disp8} mov        dword ptr [esp + 0x1c], esi                   // 0x00715192    8974241c
                         {disp8} mov        dword ptr [esp + 0x20], esi                   // 0x00715196    89742420
                         call               _RenderLoadingFrame__Fb                       // 0x0071519a    e8a1fcedff
                         {disp32} mov       ebx, dword ptr [esp + 0x0000066c]             // 0x0071519f    8b9c246c060000
                         add                esp, 0x04                                     // 0x007151a6    83c404
                         shl                ebx, 4                                        // 0x007151a9    c1e304
                         {disp32} mov       eax, dword ptr [ebx + 0x00c20f00]             // 0x007151ac    8b83000fc200
                         push               eax                                           // 0x007151b2    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00000398]             // 0x007151b3    8d8c2498030000
                         push               0x00c009fc                                    // 0x007151ba    68fc09c000
                         push               ecx                                           // 0x007151bf    51
                         call               _sprintf                                      // 0x007151c0    e80d060b00
                         {disp32} mov       ebp, dword ptr [esp + 0x00000678]             // 0x007151c5    8bac2478060000
                         {disp32} lea       eax, dword ptr [ebp + 0x00006030]             // 0x007151cc    8d8530600000
                         add                esp, 0x0c                                     // 0x007151d2    83c40c
                         {disp8} mov        dword ptr [esp + 0x10], ebp                   // 0x007151d5    896c2410
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x007151d9    89442424
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x007151dd    89442420
_jmp_addr_0x007151e1:    movsx              eax, byte ptr [ebx + esi * 0x1 + 0x00c20f04]  // 0x007151e1    0fbe8433040fc200
                         add                eax, -0x41                                    // 0x007151e9    83c0bf
                         cmp                eax, 0x0d                                     // 0x007151ec    83f80d
                         {disp32} ja        _jmp_addr_0x0071529f                          // 0x007151ef    0f87aa000000
                         xor.s              edx, edx                                      // 0x007151f5    33d2
                         {disp32} mov       dl, byte ptr [eax + 0x00717eac]               // 0x007151f7    8a90ac7e7100
                         jmp                dword ptr [edx*4 + 0x717e98]                  // 0x007151fd    ff2495987e7100
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00715204    8b442410
                         push               eax                                           // 0x00715208    50
                         or                 ecx, 0xffffffff                               // 0x00715209    83c9ff
                         xor.s              eax, eax                                      // 0x0071520c    33c0
                         {disp32} lea       edi, dword ptr [esp + 0x00000398]             // 0x0071520e    8dbc2498030000
                         repne scasb                                                      // 0x00715215    f2ae
                         not                ecx                                           // 0x00715217    f7d1
                         dec                ecx                                           // 0x00715219    49
                         {disp32} lea       ecx, dword ptr [esp + ecx * 0x1 + 0x00000398] // 0x0071521a    8d8c0c98030000
                         push               0x00c220b8                                    // 0x00715221    68b820c200
                         push               ecx                                           // 0x00715226    51
                         call               _sprintf                                      // 0x00715227    e8a6050b00
                         add                esp, 0x0c                                     // 0x0071522c    83c40c
                         {disp8} jmp        _jmp_addr_0x0071529f                          // 0x0071522f    eb6e
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x00715231    8b542410
                         push               edx                                           // 0x00715235    52
                         push               0x00c220b0                                    // 0x00715236    68b020c200
                         {disp8} jmp        _jmp_addr_0x0071524a                          // 0x0071523b    eb0d
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x0071523d    8b4c2420
                         {disp8} mov        edx, dword ptr [ecx + -0x30]                  // 0x00715241    8b51d0
                         push               edx                                           // 0x00715244    52
                         push               0x00c220ac                                    // 0x00715245    68ac20c200
_jmp_addr_0x0071524a:    or                 ecx, 0xffffffff                               // 0x0071524a    83c9ff
                         xor.s              eax, eax                                      // 0x0071524d    33c0
                         {disp32} lea       edi, dword ptr [esp + 0x0000039c]             // 0x0071524f    8dbc249c030000
                         repne scasb                                                      // 0x00715256    f2ae
                         not                ecx                                           // 0x00715258    f7d1
                         dec                ecx                                           // 0x0071525a    49
                         {disp32} lea       eax, dword ptr [esp + ecx * 0x1 + 0x0000039c] // 0x0071525b    8d840c9c030000
                         push               eax                                           // 0x00715262    50
                         call               _sprintf                                      // 0x00715263    e86a050b00
                         add                esp, 0x0c                                     // 0x00715268    83c40c
                         {disp8} jmp        _jmp_addr_0x0071529f                          // 0x0071526b    eb32
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x0071526d    8b4c2420
                         fld                dword ptr [ecx]                               // 0x00715271    d901
                         sub                esp, 0x08                                     // 0x00715273    83ec08
                         or                 ecx, 0xffffffff                               // 0x00715276    83c9ff
                         fstp               qword ptr [esp]                               // 0x00715279    dd1c24
                         xor.s              eax, eax                                      // 0x0071527c    33c0
                         {disp32} lea       edi, dword ptr [esp + 0x0000039c]             // 0x0071527e    8dbc249c030000
                         repne scasb                                                      // 0x00715285    f2ae
                         not                ecx                                           // 0x00715287    f7d1
                         dec                ecx                                           // 0x00715289    49
                         {disp32} lea       edx, dword ptr [esp + ecx * 0x1 + 0x0000039c] // 0x0071528a    8d940c9c030000
                         push               0x00c220a4                                    // 0x00715291    68a420c200
                         push               edx                                           // 0x00715296    52
                         call               _sprintf                                      // 0x00715297    e836050b00
                         add                esp, 0x10                                     // 0x0071529c    83c410
_jmp_addr_0x0071529f:    {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x0071529f    8b542420
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x007152a3    8b4c2410
                         inc                esi                                           // 0x007152a7    46
                         add                edx, 0x04                                     // 0x007152a8    83c204
                         add                ecx, 0x00000800                               // 0x007152ab    81c100080000
                         cmp                esi, 0x0c                                     // 0x007152b1    83fe0c
                         {disp8} mov        dword ptr [esp + 0x20], edx                   // 0x007152b4    89542420
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x007152b8    894c2410
                         {disp32} jb        _jmp_addr_0x007151e1                          // 0x007152bc    0f821fffffff
                         or                 ecx, 0xffffffff                               // 0x007152c2    83c9ff
                         xor.s              eax, eax                                      // 0x007152c5    33c0
                         {disp32} lea       edi, dword ptr [esp + 0x00000394]             // 0x007152c7    8dbc2494030000
                         repne scasb                                                      // 0x007152ce    f2ae
                         not                ecx                                           // 0x007152d0    f7d1
                         {disp32} mov       al, byte ptr [esp + ecx * 0x1 + 0x00000392]   // 0x007152d2    8a840c92030000
                         dec                ecx                                           // 0x007152d9    49
                         cmp                al, 0x2c                                      // 0x007152da    3c2c
                         {disp8} jne        _jmp_addr_0x007152f6                          // 0x007152dc    7518
                         or                 ecx, 0xffffffff                               // 0x007152de    83c9ff
                         xor.s              eax, eax                                      // 0x007152e1    33c0
                         {disp32} lea       edi, dword ptr [esp + 0x00000394]             // 0x007152e3    8dbc2494030000
                         repne scasb                                                      // 0x007152ea    f2ae
                         not                ecx                                           // 0x007152ec    f7d1
                         dec                ecx                                           // 0x007152ee    49
                         {disp32} mov       byte ptr [esp + ecx * 0x1 + 0x00000393], al   // 0x007152ef    88840c93030000
_jmp_addr_0x007152f6:    {disp32} mov       eax, dword ptr [_DAT_00d99380]                // 0x007152f6    a18093d900
                         xor.s              ebx, ebx                                      // 0x007152fb    33db
                         cmp.s              eax, ebx                                      // 0x007152fd    3bc3
                         {disp8} je         _jmp_addr_0x0071532d                          // 0x007152ff    742c
                         {disp8} mov        eax, dword ptr [eax + 0x3c]                   // 0x00715301    8b403c
                         push               eax                                           // 0x00715304    50
                         or                 ecx, 0xffffffff                               // 0x00715305    83c9ff
                         xor.s              eax, eax                                      // 0x00715308    33c0
                         {disp32} lea       edi, dword ptr [esp + 0x00000398]             // 0x0071530a    8dbc2498030000
                         repne scasb                                                      // 0x00715311    f2ae
                         not                ecx                                           // 0x00715313    f7d1
                         dec                ecx                                           // 0x00715315    49
                         {disp32} lea       ecx, dword ptr [esp + ecx * 0x1 + 0x00000398] // 0x00715316    8d8c0c98030000
                         push               0x00c2209c                                    // 0x0071531d    689c20c200
                         push               ecx                                           // 0x00715322    51
                         call               _sprintf                                      // 0x00715323    e8aa040b00
                         add                esp, 0x0c                                     // 0x00715328    83c40c
                         {disp8} jmp        _jmp_addr_0x0071535e                          // 0x0071532b    eb31
_jmp_addr_0x0071532d:    or                 ecx, 0xffffffff                               // 0x0071532d    83c9ff
                         xor.s              eax, eax                                      // 0x00715330    33c0
                         mov                edi, 0x00c22098                               // 0x00715332    bf9820c200
                         repne scasb                                                      // 0x00715337    f2ae
                         not                ecx                                           // 0x00715339    f7d1
                         sub.s              edi, ecx                                      // 0x0071533b    2bf9
                         mov.s              esi, edi                                      // 0x0071533d    8bf7
                         {disp32} lea       edx, dword ptr [esp + 0x00000394]             // 0x0071533f    8d942494030000
                         mov.s              edi, edx                                      // 0x00715346    8bfa
                         mov.s              edx, ecx                                      // 0x00715348    8bd1
                         or                 ecx, 0xffffffff                               // 0x0071534a    83c9ff
                         repne scasb                                                      // 0x0071534d    f2ae
                         mov.s              ecx, edx                                      // 0x0071534f    8bca
                         shr                ecx, 2                                        // 0x00715351    c1e902
                         dec                edi                                           // 0x00715354    4f
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00715355    f3a5
                         mov.s              ecx, edx                                      // 0x00715357    8bca
                         and                ecx, 0x03                                     // 0x00715359    83e103
                         rep movsb                                                        // 0x0071535c    f3a4
_jmp_addr_0x0071535e:    {disp32} mov       eax, dword ptr [esp + 0x00000668]             // 0x0071535e    8b842468060000
                         cmp                eax, 0x68                                     // 0x00715365    83f868
                         {disp32} ja        _jmp_addr_0x00717e8a                          // 0x00715368    0f871c2b0000
                         jmp                dword ptr [eax*4 + 0x717ebc]                  // 0x0071536e    ff2485bc7e7100
                         {disp32} lea       eax, dword ptr [ebp + 0x00001000]             // 0x00715375    8d8500100000
                         push               eax                                           // 0x0071537b    50
                         call               ?GetPlayerFromText@GPlayer@@SAPAV1@PAD@Z      // 0x0071537c    e85f62f3ff
                         mov.s              esi, eax                                      // 0x00715381    8bf0
                         {disp32} mov       eax, dword ptr [_DAT_00d4f594]                // 0x00715383    a194f5d400
                         add                esp, 0x04                                     // 0x00715388    83c404
                         cmp.s              eax, ebx                                      // 0x0071538b    3bc3
                         {disp8} je         _jmp_addr_0x00715391                          // 0x0071538d    7402
                         mov.s              esi, eax                                      // 0x0071538f    8bf0
_jmp_addr_0x00715391:    push               0x000001ba                                    // 0x00715391    68ba010000
                         push               0x00c21fe8                                    // 0x00715396    68e81fc200
                         push               0x00000f28                                    // 0x0071539b    68280f0000
                         call               ?__nw@Base@@SAPAXK@Z                          // 0x007153a0    e84b13d2ff
                         mov.s              edi, eax                                      // 0x007153a5    8bf8
                         add                esp, 0x0c                                     // 0x007153a7    83c40c
                         cmp.s              edi, ebx                                      // 0x007153aa    3bfb
                         {disp8} je         _jmp_addr_0x00715419                          // 0x007153ac    746b
                         {disp32} lea       ecx, dword ptr [ebp + 0x00002000]             // 0x007153ae    8d8d00200000
                         push               ecx                                           // 0x007153b4    51
                         call               ?GetTribeFromText@GTribeInfo@@SAPAV1@PBD@Z    // 0x007153b5    e886750300
                         mov.s              ecx, eax                                      // 0x007153ba    8bc8
                         sub                ecx, OFFSET _GTribeInfo_ARRAY_00da57a8        // 0x007153bc    81e9a857da00
                         mov                eax, 0x92492493                               // 0x007153c2    b893244992
                         imul               ecx                                           // 0x007153c7    f7e9
                         add                esp, 0x04                                     // 0x007153c9    83c404
                         add.s              edx, ecx                                      // 0x007153cc    03d1
                         {disp32} mov       ecx, dword ptr [ebp + 0x00006000]             // 0x007153ce    8b8d00600000
                         push               ebx                                           // 0x007153d4    53
                         sar                edx, 4                                        // 0x007153d5    c1fa04
                         push               ecx                                           // 0x007153d8    51
                         mov.s              eax, edx                                      // 0x007153d9    8bc2
                         push               ebx                                           // 0x007153db    53
                         shr                eax, 0x1f                                     // 0x007153dc    c1e81f
                         add.s              edx, eax                                      // 0x007153df    03d0
                         push               edx                                           // 0x007153e1    52
                         push               esi                                           // 0x007153e2    56
                         push               0x00da2780 /* _GTownInfo_00da2780 */          // 0x007153e3    688027da00
                         add                ebp, 0x00000800                               // 0x007153e8    81c500080000
                         {disp32} lea       edx, dword ptr [esp + 0x00000214]             // 0x007153ee    8d942414020000
                         push               ebp                                           // 0x007153f5    55
                         push               edx                                           // 0x007153f6    52
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x007153f7    e8542e0000
                         add                esp, 0x08                                     // 0x007153fc    83c408
                         push               eax                                           // 0x007153ff    50
                         mov.s              ecx, edi                                      // 0x00715400    8bcf
                         call               @__ct__4TownFRC9MapCoordsPC9GTownInfoP7GPlayer10TRIBE_TYPEPcUli@36                          // 0x00715402    e8493f0200
                         {disp32} mov       dword ptr [_PTR_00d99384], eax                // 0x00715407    a38493d900
                         xor.s              eax, eax                                      // 0x0071540c    33c0
                         pop                edi                                           // 0x0071540e    5f
                         pop                esi                                           // 0x0071540f    5e
                         pop                ebp                                           // 0x00715410    5d
                         pop                ebx                                           // 0x00715411    5b
                         add                esp, 0x00000654                               // 0x00715412    81c454060000
                         ret                                                              // 0x00715418    c3
_jmp_addr_0x00715419:    xor.s              eax, eax                                      // 0x00715419    33c0
                         {disp32} mov       dword ptr [_PTR_00d99384], eax                // 0x0071541b    a38493d900
                         pop                edi                                           // 0x00715420    5f
                         pop                esi                                           // 0x00715421    5e
                         pop                ebp                                           // 0x00715422    5d
                         pop                ebx                                           // 0x00715423    5b
                         add                esp, 0x00000654                               // 0x00715424    81c454060000
                         ret                                                              // 0x0071542a    c3
                         {disp32} lea       eax, dword ptr [ebp + 0x00000800]             // 0x0071542b    8d8500080000
                         push               eax                                           // 0x00715431    50
                         call               ?GetPlayerFromText@GPlayer@@SAPAV1@PAD@Z      // 0x00715432    e8a961f3ff
                         {disp32} mov       ecx, dword ptr [ebp + 0x00006000]             // 0x00715437    8b8d00600000
                         add                esp, 0x04                                     // 0x0071543d    83c404
                         push               ecx                                           // 0x00715440    51
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00715441    8b0d5c19d000
                         mov.s              esi, eax                                      // 0x00715447    8bf0
                         call               ?FindTownWithID@GGame@@QAEPAVTown@@K@Z        // 0x00715449    e852dbe3ff
                         cmp.s              eax, ebx                                      // 0x0071544e    3bc3
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x00715450    0f84342a0000
                         {disp32} mov       edx, dword ptr [ebp + 0x00006038]             // 0x00715456    8b9538600000
                         push               edx                                           // 0x0071545c    52
                         push               esi                                           // 0x0071545d    56
                         mov.s              ecx, eax                                      // 0x0071545e    8bc8
                         call               ?SetBeliefInPlayer@Town@@QAEXPAVGPlayer@@M@Z  // 0x00715460    e80b660200
                         xor.s              eax, eax                                      // 0x00715465    33c0
                         pop                edi                                           // 0x00715467    5f
                         pop                esi                                           // 0x00715468    5e
                         pop                ebp                                           // 0x00715469    5d
                         pop                ebx                                           // 0x0071546a    5b
                         add                esp, 0x00000654                               // 0x0071546b    81c454060000
                         ret                                                              // 0x00715471    c3
                         {disp32} lea       eax, dword ptr [ebp + 0x00000800]             // 0x00715472    8d8500080000
                         push               eax                                           // 0x00715478    50
                         call               ?GetPlayerFromText@GPlayer@@SAPAV1@PAD@Z      // 0x00715479    e86261f3ff
                         {disp32} mov       ecx, dword ptr [ebp + 0x00006000]             // 0x0071547e    8b8d00600000
                         add                esp, 0x04                                     // 0x00715484    83c404
                         push               ecx                                           // 0x00715487    51
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00715488    8b0d5c19d000
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x0071548e    89442428
                         call               ?FindTownWithID@GGame@@QAEPAVTown@@K@Z        // 0x00715492    e809dbe3ff
                         mov.s              edi, eax                                      // 0x00715497    8bf8
                         cmp.s              edi, ebx                                      // 0x00715499    3bfb
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x0071549b    0f84e9290000
                         {disp32} mov       edx, dword ptr [ebp + 0x00006038]             // 0x007154a1    8b9538600000
                         {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x007154a7    8b442424
                         push               edx                                           // 0x007154ab    52
                         {disp32} lea       ebx, dword ptr [edi + 0x00000798]             // 0x007154ac    8d9f98070000
                         push               eax                                           // 0x007154b2    50
                         mov.s              ecx, ebx                                      // 0x007154b3    8bcb
                         call               @SetBeliefInPlayerCap__7GBeliefFP7GPlayerf@16 // 0x007154b5    e84635d2ff
                         mov                esi, 0x00c22088                               // 0x007154ba    be8820c200
                         mov                eax, OFFSET _CHAR_ARRAY_00d99648              // 0x007154bf    b84896d900
_jmp_addr_0x007154c4:    mov                dl, byte ptr [eax]                            // 0x007154c4    8a10
                         mov.s              cl, dl                                        // 0x007154c6    8aca
                         cmp                dl, byte ptr [esi]                            // 0x007154c8    3a16
                         {disp8} jne        _jmp_addr_0x007154e8                          // 0x007154ca    751c
                         test               cl, cl                                        // 0x007154cc    84c9
                         {disp8} je         _jmp_addr_0x007154e4                          // 0x007154ce    7414
                         {disp8} mov        dl, byte ptr [eax + 0x01]                     // 0x007154d0    8a5001
                         mov.s              cl, dl                                        // 0x007154d3    8aca
                         cmp                dl, byte ptr [esi + 0x01]                     // 0x007154d5    3a5601
                         {disp8} jne        _jmp_addr_0x007154e8                          // 0x007154d8    750e
                         add                eax, 0x02                                     // 0x007154da    83c002
                         add                esi, 0x02                                     // 0x007154dd    83c602
                         test               cl, cl                                        // 0x007154e0    84c9
                         {disp8} jne        _jmp_addr_0x007154c4                          // 0x007154e2    75e0
_jmp_addr_0x007154e4:    xor.s              eax, eax                                      // 0x007154e4    33c0
                         {disp8} jmp        _jmp_addr_0x007154ed                          // 0x007154e6    eb05
_jmp_addr_0x007154e8:    sbb.s              eax, eax                                      // 0x007154e8    1bc0
                         sbb                eax, -0x01                                    // 0x007154ea    83d8ff
_jmp_addr_0x007154ed:    test               eax, eax                                      // 0x007154ed    85c0
                         {disp32} jne       _jmp_addr_0x00717e8a                          // 0x007154ef    0f8595290000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x007154f5    8b0d5c19d000
                         call               ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x007154fb    e880dae3ff
                         test               eax, eax                                      // 0x00715500    85c0
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x00715502    0f8482290000
                         cmp                dword ptr [edi + 0x000005b4], 0x03            // 0x00715508    83bfb405000003
                         {disp32} jne       _jmp_addr_0x00717e8a                          // 0x0071550f    0f8575290000
                         {disp8} mov        esi, dword ptr [esp + 0x24]                   // 0x00715515    8b742424
                         mov.s              ecx, esi                                      // 0x00715519    8bce
                         call               ?IsNeutral@GPlayer@@QAE_NXZ                   // 0x0071551b    e8e056f3ff
                         test               eax, eax                                      // 0x00715520    85c0
                         {disp32} jne       _jmp_addr_0x00717e8a                          // 0x00715522    0f8562290000
                         push               0x40000000                                    // 0x00715528    6800000040
                         push               esi                                           // 0x0071552d    56
                         mov.s              ecx, ebx                                      // 0x0071552e    8bcb
                         call               @SetBeliefInPlayerCap__7GBeliefFP7GPlayerf@16 // 0x00715530    e8cb34d2ff
                         xor.s              eax, eax                                      // 0x00715535    33c0
                         pop                edi                                           // 0x00715537    5f
                         pop                esi                                           // 0x00715538    5e
                         pop                ebp                                           // 0x00715539    5d
                         pop                ebx                                           // 0x0071553a    5b
                         add                esp, 0x00000654                               // 0x0071553b    81c454060000
                         ret                                                              // 0x00715541    c3
                         {disp32} mov       eax, dword ptr [ebp + 0x00006000]             // 0x00715542    8b8500600000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00715548    8b0d5c19d000
                         push               eax                                           // 0x0071554e    50
                         call               ?FindTownWithID@GGame@@QAEPAVTown@@K@Z        // 0x0071554f    e84cdae3ff
                         cmp.s              eax, ebx                                      // 0x00715554    3bc3
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x00715556    0f842e290000
                         {disp32} mov       dword ptr [eax + 0x000005f4], 0x00000001      // 0x0071555c    c780f405000001000000
                         xor.s              eax, eax                                      // 0x00715566    33c0
                         pop                edi                                           // 0x00715568    5f
                         pop                esi                                           // 0x00715569    5e
                         pop                ebp                                           // 0x0071556a    5d
                         pop                ebx                                           // 0x0071556b    5b
                         add                esp, 0x00000654                               // 0x0071556c    81c454060000
                         ret                                                              // 0x00715572    c3
                         {disp32} mov       ecx, dword ptr [ebp + 0x00006000]             // 0x00715573    8b8d00600000
                         push               ecx                                           // 0x00715579    51
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0071557a    8b0d5c19d000
                         call               ?FindTownWithID@GGame@@QAEPAVTown@@K@Z        // 0x00715580    e81bdae3ff
                         mov.s              esi, eax                                      // 0x00715585    8bf0
                         cmp.s              esi, ebx                                      // 0x00715587    3bf3
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x00715589    0f84fb280000
                         add                ebp, 0x00000800                               // 0x0071558f    81c500080000
                         {disp32} lea       edx, dword ptr [esp + 0x00000370]             // 0x00715595    8d942470030000
                         push               ebp                                           // 0x0071559c    55
                         push               edx                                           // 0x0071559d    52
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x0071559e    e8ad2c0000
                         mov                ecx, dword ptr [eax]                          // 0x007155a3    8b08
                         add                esi, 0x00000f10                               // 0x007155a5    81c6100f0000
                         mov                dword ptr [esi], ecx                          // 0x007155ab    890e
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x007155ad    8b5004
                         {disp8} mov        dword ptr [esi + 0x04], edx                   // 0x007155b0    895604
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x007155b3    8b4008
                         add                esp, 0x08                                     // 0x007155b6    83c408
                         {disp8} mov        dword ptr [esi + 0x08], eax                   // 0x007155b9    894608
                         xor.s              eax, eax                                      // 0x007155bc    33c0
                         pop                edi                                           // 0x007155be    5f
                         pop                esi                                           // 0x007155bf    5e
                         pop                ebp                                           // 0x007155c0    5d
                         pop                ebx                                           // 0x007155c1    5b
                         add                esp, 0x00000654                               // 0x007155c2    81c454060000
                         ret                                                              // 0x007155c8    c3
                         {disp32} lea       ecx, dword ptr [esp + 0x0000022c]             // 0x007155c9    8d8c242c020000
                         push               ebp                                           // 0x007155d0    55
                         push               ecx                                           // 0x007155d1    51
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x007155d2    e8792c0000
                         {disp32} fld       dword ptr [ebp + 0x00006034]                  // 0x007155d7    d98534600000
                         mov                edx, dword ptr [eax]                          // 0x007155dd    8b10
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x007155df    8954241c
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x007155e3    8b4804
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x007155e6    894c2420
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x007155ea    8b5008
                         {disp32} mov       eax, dword ptr [ebp + 0x00006040]             // 0x007155ed    8b8540600000
                         {disp32} mov       ecx, dword ptr [ebp + 0x00006008]             // 0x007155f3    8b8d08600000
                         push               eax                                           // 0x007155f9    50
                         {disp8} mov        dword ptr [esp + 0x28], edx                   // 0x007155fa    89542428
                         {disp32} mov       edx, dword ptr [ebp + 0x0000603c]             // 0x007155fe    8b953c600000
                         push               ecx                                           // 0x00715604    51
                         push               edx                                           // 0x00715605    52
                         {disp8} lea        eax, dword ptr [esp + 0x28]                   // 0x00715606    8d442428
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x0071560a    d95c2430
                         push               eax                                           // 0x0071560e    50
                         call               _jmp_addr_0x006063d0                          // 0x0071560f    e8bc0defff
                         add                esp, 0x18                                     // 0x00715614    83c418
                         {disp32} mov       dword ptr [_PTR_00d99384], eax                // 0x00715617    a38493d900
                         xor.s              eax, eax                                      // 0x0071561c    33c0
                         pop                edi                                           // 0x0071561e    5f
                         pop                esi                                           // 0x0071561f    5e
                         pop                ebp                                           // 0x00715620    5d
                         pop                ebx                                           // 0x00715621    5b
                         add                esp, 0x00000654                               // 0x00715622    81c454060000
                         ret                                                              // 0x00715628    c3
                         {disp32} lea       ecx, dword ptr [ebp + 0x00001000]             // 0x00715629    8d8d00100000
                         push               ecx                                           // 0x0071562f    51
                         call               ?GetInfoFromText@GAbodeInfo@@SAHPAD@Z         // 0x00715630    e83b04cfff
                         lea                edx, dword ptr [eax + eax * 0x8]              // 0x00715635    8d14c0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x00715638    8d0450
                         {disp32} lea       ecx, dword ptr [ebp + 0x00000800]             // 0x0071563b    8d8d00080000
                         push               ecx                                           // 0x00715641    51
                         {disp8} lea        edx, dword ptr [esp + 0x3c]                   // 0x00715642    8d54243c
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x00715646    8d0440
                         push               edx                                           // 0x00715649    52
                         {disp32} lea       esi, dword ptr [eax * 0x8 + _AbodeInfos]      // 0x0071564a    8d34c590c6c300
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x00715651    e8fa2b0000
                         {disp32} fild      dword ptr [ebp + 0x0000600c]                  // 0x00715656    db850c600000
                         {disp32} mov       eax, dword ptr [ebp + 0x00006000]             // 0x0071565c    8b8500600000
                         {disp32} mov       ecx, dword ptr [_game]                  // 0x00715662    8b0d5c19d000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3418]              // 0x00715668    d80d18c48a00
                         {disp32} mov       edi, dword ptr [ebp + 0x00006014]             // 0x0071566e    8bbd14600000
                         {disp32} mov       ebx, dword ptr [ebp + 0x00006018]             // 0x00715674    8b9d18600000
                         add                esp, 0x0c                                     // 0x0071567a    83c40c
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0071567d    d95c2420
                         push               eax                                           // 0x00715681    50
                         {disp32} fild      dword ptr [ebp + 0x00006010]                  // 0x00715682    db8510600000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3418]              // 0x00715688    d80d18c48a00
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0071568e    d95c2414
                         call               ?FindTownWithID@GGame@@QAEPAVTown@@K@Z        // 0x00715692    e809d9e3ff
                         test               eax, eax                                      // 0x00715697    85c0
                         {disp8} jne        _jmp_addr_0x007156b3                          // 0x00715699    7518
                         {disp8} lea        ecx, dword ptr [esp + 0x34]                   // 0x0071569b    8d4c2434
                         push               ecx                                           // 0x0071569f    51
                         {disp32} mov       ecx, dword ptr [_game]                  // 0x007156a0    8b0d5c19d000
                         call               _jmp_addr_0x00552ff0                          // 0x007156a6    e845d9e3ff
                         test               eax, eax                                      // 0x007156ab    85c0
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x007156ad    0f84d7270000
_jmp_addr_0x007156b3:    test               esi, esi                                      // 0x007156b3    85f6
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x007156b5    0f84cf270000
                         cmp                dword ptr [esp + 0x00000668], 0x08            // 0x007156bb    83bc246806000008
                         {disp8} jne        _jmp_addr_0x00715727                          // 0x007156c3    7562
                         cmp                dword ptr [esi + 0x00000120], 0x00000404      // 0x007156c5    81be2001000004040000
                         {disp8} jne        _jmp_addr_0x007156fc                          // 0x007156cf    752b
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x007156d1    8b542410
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x007156d5    8b4c2420
                         push               edx                                           // 0x007156d9    52
                         push               ecx                                           // 0x007156da    51
                         push               eax                                           // 0x007156db    50
                         {disp8} lea        edx, dword ptr [esp + 0x40]                   // 0x007156dc    8d542440
                         push               esi                                           // 0x007156e0    56
                         push               edx                                           // 0x007156e1    52
                         call               ?Create@PlannedTownCentre@@SAPAV1@ABUMapCoords@@PBVGAbodeInfo@@PAVTown@@MM@Z             // 0x007156e2    e8e9ed0200
                         add                esp, 0x14                                     // 0x007156e7    83c414
                         {disp32} mov       dword ptr [_PTR_00d99384], eax                // 0x007156ea    a38493d900
                         xor.s              eax, eax                                      // 0x007156ef    33c0
                         pop                edi                                           // 0x007156f1    5f
                         pop                esi                                           // 0x007156f2    5e
                         pop                ebp                                           // 0x007156f3    5d
                         pop                ebx                                           // 0x007156f4    5b
                         add                esp, 0x00000654                               // 0x007156f5    81c454060000
                         ret                                                              // 0x007156fb    c3
_jmp_addr_0x007156fc:    {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x007156fc    8b4c2410
                         {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x00715700    8b542420
                         push               ecx                                           // 0x00715704    51
                         push               edx                                           // 0x00715705    52
                         push               eax                                           // 0x00715706    50
                         {disp8} lea        eax, dword ptr [esp + 0x40]                   // 0x00715707    8d442440
                         push               esi                                           // 0x0071570b    56
                         push               eax                                           // 0x0071570c    50
                         call               ?Create@PlannedAbode@@SAPAV1@PAUMapCoords@@PAVGMultiMapFixedInfo@@PAVTown@@MM@Z                          // 0x0071570d    e8eefeceff
                         add                esp, 0x14                                     // 0x00715712    83c414
                         {disp32} mov       dword ptr [_PTR_00d99384], eax                // 0x00715715    a38493d900
                         xor.s              eax, eax                                      // 0x0071571a    33c0
                         pop                edi                                           // 0x0071571c    5f
                         pop                esi                                           // 0x0071571d    5e
                         pop                ebp                                           // 0x0071571e    5d
                         pop                ebx                                           // 0x0071571f    5b
                         add                esp, 0x00000654                               // 0x00715720    81c454060000
                         ret                                                              // 0x00715726    c3
_jmp_addr_0x00715727:    {disp32} mov       edx, dword ptr [esi + 0x00000120]             // 0x00715727    8b9620010000
                         xor.s              ecx, ecx                                      // 0x0071572d    33c9
                         cmp                edx, 0x24                                     // 0x0071572f    83fa24
                         {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x00715732    8b542420
                         sete               cl                                            // 0x00715736    0f94c1
                         push               ecx                                           // 0x00715739    51
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x0071573a    8b4c2414
                         push               0x0                                           // 0x0071573e    6a00
                         push               0x3f800000                                    // 0x00715740    680000803f
                         push               ebx                                           // 0x00715745    53
                         push               edi                                           // 0x00715746    57
                         push               ecx                                           // 0x00715747    51
                         push               edx                                           // 0x00715748    52
                         push               eax                                           // 0x00715749    50
                         {disp8} lea        eax, dword ptr [esp + 0x54]                   // 0x0071574a    8d442454
                         push               esi                                           // 0x0071574e    56
                         push               eax                                           // 0x0071574f    50
                         call               ?Create@Abode@@SAPAV1@PBUMapCoords@@PBVGAbodeInfo@@PAVTown@@MMIIMHH@Z  // 0x00715750    e8cbd6ceff
                         add                esp, 0x28                                     // 0x00715755    83c428
                         test               eax, eax                                      // 0x00715758    85c0
                         {disp32} mov       dword ptr [_PTR_00d99384], eax                // 0x0071575a    a38493d900
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x0071575f    0f8425270000
                         {disp32} mov       dword ptr [_DAT_00d99380], eax                // 0x00715765    a38093d900
                         {disp32} mov       dword ptr [_PTR_00d99384], eax                // 0x0071576a    a38493d900
                         xor.s              eax, eax                                      // 0x0071576f    33c0
                         pop                edi                                           // 0x00715771    5f
                         pop                esi                                           // 0x00715772    5e
                         pop                ebp                                           // 0x00715773    5d
                         pop                ebx                                           // 0x00715774    5b
                         add                esp, 0x00000654                               // 0x00715775    81c454060000
                         ret                                                              // 0x0071577b    c3
                         {disp32} lea       ecx, dword ptr [ebp + 0x00001000]             // 0x0071577c    8d8d00100000
                         push               ecx                                           // 0x00715782    51
                         call               ?GetInfoFromText@GAbodeInfo@@SAHPAD@Z         // 0x00715783    e8e802cfff
                         lea                edx, dword ptr [eax + eax * 0x8]              // 0x00715788    8d14c0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x0071578b    8d0450
                         {disp32} lea       ecx, dword ptr [ebp + 0x00000800]             // 0x0071578e    8d8d00080000
                         push               ecx                                           // 0x00715794    51
                         {disp8} lea        edx, dword ptr [esp + 0x3c]                   // 0x00715795    8d54243c
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x00715799    8d0440
                         push               edx                                           // 0x0071579c    52
                         {disp32} lea       edi, dword ptr [eax * 0x8 + _AbodeInfos]      // 0x0071579d    8d3cc590c6c300
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x007157a4    e8a72a0000
                         {disp32} fild      dword ptr [ebp + 0x0000600c]                  // 0x007157a9    db850c600000
                         {disp32} mov       eax, dword ptr [ebp + 0x00006000]             // 0x007157af    8b8500600000
                         {disp32} mov       ecx, dword ptr [_game]                  // 0x007157b5    8b0d5c19d000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3418]              // 0x007157bb    d80d18c48a00
                         add                esp, 0x0c                                     // 0x007157c1    83c40c
                         push               eax                                           // 0x007157c4    50
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x007157c5    d95c2424
                         {disp32} fild      dword ptr [ebp + 0x00006010]                  // 0x007157c9    db8510600000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3418]              // 0x007157cf    d80d18c48a00
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x007157d5    d95c242c
                         {disp32} fild      dword ptr [ebp + 0x00006014]                  // 0x007157d9    db8514600000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3418]              // 0x007157df    d80d18c48a00
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x007157e5    d95c2414
                         call               ?FindTownWithID@GGame@@QAEPAVTown@@K@Z        // 0x007157e9    e8b2d7e3ff
                         mov.s              esi, eax                                      // 0x007157ee    8bf0
                         cmp.s              esi, ebx                                      // 0x007157f0    3bf3
                         {disp8} jne        _jmp_addr_0x0071580e                          // 0x007157f2    751a
                         {disp8} lea        ecx, dword ptr [esp + 0x34]                   // 0x007157f4    8d4c2434
                         push               ecx                                           // 0x007157f8    51
                         {disp32} mov       ecx, dword ptr [_game]                  // 0x007157f9    8b0d5c19d000
                         call               _jmp_addr_0x00552ff0                          // 0x007157ff    e8ecd7e3ff
                         mov.s              esi, eax                                      // 0x00715804    8bf0
                         cmp.s              esi, ebx                                      // 0x00715806    3bf3
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x00715808    0f847c260000
_jmp_addr_0x0071580e:    cmp.s              edi, ebx                                      // 0x0071580e    3bfb
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x00715810    0f8474260000
                         {disp8} mov        ebp, dword ptr [esp + 0x28]                   // 0x00715816    8b6c2428
                         {disp8} mov        ebx, dword ptr [esp + 0x20]                   // 0x0071581a    8b5c2420
                         push               esi                                           // 0x0071581e    56
                         push               ebp                                           // 0x0071581f    55
                         push               ebx                                           // 0x00715820    53
                         {disp8} lea        edx, dword ptr [esp + 0x40]                   // 0x00715821    8d542440
                         push               edx                                           // 0x00715825    52
                         mov.s              ecx, edi                                      // 0x00715826    8bcf
                         call               ?IsOkToCreateAtPos@GAbodeInfo@@QBE_NPBUMapCoords@@MMPAVTown@@@Z  // 0x00715828    e8e3f2ceff
                         cmp                eax, 0x01                                     // 0x0071582d    83f801
                         {disp32} jne       _jmp_addr_0x00717e8a                          // 0x00715830    0f8554260000
                         push               0x0                                           // 0x00715836    6a00
                         push               0x0                                           // 0x00715838    6a00
                         push               0x3f800000                                    // 0x0071583a    680000803f
                         push               0x0                                           // 0x0071583f    6a00
                         push               0x0                                           // 0x00715841    6a00
                         push               ebp                                           // 0x00715843    55
                         push               ebx                                           // 0x00715844    53
                         push               esi                                           // 0x00715845    56
                         {disp8} lea        eax, dword ptr [esp + 0x54]                   // 0x00715846    8d442454
                         push               edi                                           // 0x0071584a    57
                         push               eax                                           // 0x0071584b    50
                         call               ?Create@Abode@@SAPAV1@PBUMapCoords@@PBVGAbodeInfo@@PAVTown@@MMIIMHH@Z  // 0x0071584c    e8cfd5ceff
                         mov.s              edi, eax                                      // 0x00715851    8bf8
                         add                esp, 0x28                                     // 0x00715853    83c428
                         test               edi, edi                                      // 0x00715856    85ff
                         {disp32} mov       dword ptr [_PTR_00d99384], edi                // 0x00715858    893d8493d900
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x0071585e    0f8426260000
                         push               0x0                                           // 0x00715864    6a00
                         push               0x009d10b8                                    // 0x00715866    68b8109d00
                         push               0x009c7fa0                                    // 0x0071586b    68a07f9c00
                         push               0x0                                           // 0x00715870    6a00
                         push               edi                                           // 0x00715872    57
                         call               ___RTDynamicCast                              // 0x00715873    e8a1010b00
                         mov.s              ebp, eax                                      // 0x00715878    8be8
                         add                esp, 0x14                                     // 0x0071587a    83c414
                         test               ebp, ebp                                      // 0x0071587d    85ed
                         {disp8} je         _jmp_addr_0x007158e8                          // 0x0071587f    7467
                         {disp32} mov       dword ptr [_PTR_00d99384], edi                // 0x00715881    893d8493d900
                         {disp32} mov       eax, dword ptr [esi + 0x000009a4]             // 0x00715887    8b86a4090000
                         test               eax, eax                                      // 0x0071588d    85c0
                         {disp8} jne        _jmp_addr_0x00715897                          // 0x0071588f    7506
                         {disp32} mov       dword ptr [esi + 0x000009a4], edi             // 0x00715891    89bea4090000
_jmp_addr_0x00715897:    {disp8} mov        edx, dword ptr [ebp + 0x00]                   // 0x00715897    8b5500
                         mov.s              ecx, ebp                                      // 0x0071589a    8bcd
                         call               dword ptr [edx + 0x48]                        // 0x0071589c    ff5248
                         test               eax, eax                                      // 0x0071589f    85c0
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x007158a1    8b442410
                         push               eax                                           // 0x007158a5    50
                         {disp8} je         _jmp_addr_0x007158ca                          // 0x007158a6    7422
                         {disp8} mov        edx, dword ptr [ebp + 0x00]                   // 0x007158a8    8b5500
                         mov.s              ecx, ebp                                      // 0x007158ab    8bcd
                         call               dword ptr [edx + 0x48]                        // 0x007158ad    ff5248
                         mov.s              ecx, eax                                      // 0x007158b0    8bc8
                         call               ?SetWorshipPercentage@Town@@QAEXM@Z           // 0x007158b2    e8a9670200
                         {disp32} mov       dword ptr [_DAT_00d99380], edi                // 0x007158b7    893d8093d900
                         xor.s              eax, eax                                      // 0x007158bd    33c0
                         pop                edi                                           // 0x007158bf    5f
                         pop                esi                                           // 0x007158c0    5e
                         pop                ebp                                           // 0x007158c1    5d
                         pop                ebx                                           // 0x007158c2    5b
                         add                esp, 0x00000654                               // 0x007158c3    81c454060000
                         ret                                                              // 0x007158c9    c3
_jmp_addr_0x007158ca:    {disp32} mov       ecx, dword ptr [ebp + 0x000000cc]             // 0x007158ca    8b8dcc000000
                         call               @SetWorshipPercentage__11TotemStatueFf@12     // 0x007158d0    e89b290200
                         {disp32} mov       ebp, dword ptr [ebp + 0x000000cc]             // 0x007158d5    8badcc000000
                         mov.s              ecx, ebp                                      // 0x007158db    8bcd
                         call               ?GetWorshipSpeed@TotemStatue@@QAEMXZ          // 0x007158dd    e87e290200
                         {disp32} fstp      dword ptr [ebp + 0x00000088]                  // 0x007158e2    d99d88000000
_jmp_addr_0x007158e8:    {disp32} mov       dword ptr [_DAT_00d99380], edi                // 0x007158e8    893d8093d900
                         xor.s              eax, eax                                      // 0x007158ee    33c0
                         pop                edi                                           // 0x007158f0    5f
                         pop                esi                                           // 0x007158f1    5e
                         pop                ebp                                           // 0x007158f2    5d
                         pop                ebx                                           // 0x007158f3    5b
                         add                esp, 0x00000654                               // 0x007158f4    81c454060000
                         ret                                                              // 0x007158fa    c3
                         {disp32} lea       ecx, dword ptr [ebp + 0x00001000]             // 0x007158fb    8d8d00100000
                         push               ecx                                           // 0x00715901    51
                         call               _jmp_addr_0x0072b170                          // 0x00715902    e869580100
                         {disp32} mov       edx, dword ptr [ebp + 0x00006000]             // 0x00715907    8b9500600000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0071590d    8b0d5c19d000
                         add                esp, 0x04                                     // 0x00715913    83c404
                         push               edx                                           // 0x00715916    52
                         mov.s              esi, eax                                      // 0x00715917    8bf0
                         call               ?FindTownWithID@GGame@@QAEPAVTown@@K@Z        // 0x00715919    e882d6e3ff
                         cmp.s              eax, ebx                                      // 0x0071591e    3bc3
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x00715920    0f8464250000
                         lea                ecx, dword ptr [esi + esi * 0x4]              // 0x00715926    8d0cb6
                         lea                ecx, dword ptr [ecx + ecx * 0x4]              // 0x00715929    8d0c89
                         shl                ecx, 4                                        // 0x0071592c    c1e104
                         {disp32} mov       edx, dword ptr [ecx + 0x00d9d79c]             // 0x0071592f    8b919cd7d900
                         push               edx                                           // 0x00715935    52
                         mov.s              ecx, eax                                      // 0x00715936    8bc8
                         call               ?AddMagicTypesHeld@Town@@QAE_NW4MAGIC_TYPE@@@Z     // 0x00715938    e8437a0200
                         xor.s              eax, eax                                      // 0x0071593d    33c0
                         pop                edi                                           // 0x0071593f    5f
                         pop                esi                                           // 0x00715940    5e
                         pop                ebp                                           // 0x00715941    5d
                         pop                ebx                                           // 0x00715942    5b
                         add                esp, 0x00000654                               // 0x00715943    81c454060000
                         ret                                                              // 0x00715949    c3
                         {disp32} lea       eax, dword ptr [ebp + 0x00000800]             // 0x0071594a    8d8500080000
                         push               eax                                           // 0x00715950    50
                         call               _jmp_addr_0x0072b170                          // 0x00715951    e81a580100
                         {disp32} mov       ecx, dword ptr [ebp + 0x00006000]             // 0x00715956    8b8d00600000
                         add                esp, 0x04                                     // 0x0071595c    83c404
                         push               ecx                                           // 0x0071595f    51
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00715960    8b0d5c19d000
                         mov.s              esi, eax                                      // 0x00715966    8bf0
                         call               ?FindTownWithID@GGame@@QAEPAVTown@@K@Z        // 0x00715968    e833d6e3ff
                         mov.s              edi, eax                                      // 0x0071596d    8bf8
                         cmp.s              edi, ebx                                      // 0x0071596f    3bfb
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x00715971    0f8413250000
                         lea                esi, dword ptr [esi + esi * 0x4]              // 0x00715977    8d34b6
                         lea                esi, dword ptr [esi + esi * 0x4]              // 0x0071597a    8d34b6
                         shl                esi, 4                                        // 0x0071597d    c1e604
                         {disp32} mov       edx, dword ptr [esi + 0x00d9d79c]             // 0x00715980    8b969cd7d900
                         push               edx                                           // 0x00715986    52
                         mov.s              ecx, edi                                      // 0x00715987    8bcf
                         call               ?AddMagicTypesHeld@Town@@QAE_NW4MAGIC_TYPE@@@Z     // 0x00715989    e8f2790200
                         {disp32} mov       ecx, dword ptr [edi + 0x000009a4]             // 0x0071598e    8b8fa4090000
                         cmp.s              ecx, ebx                                      // 0x00715994    3bcb
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x00715996    0f84ee240000
                         mov                eax, 0x51eb851f                               // 0x0071599c    b81f85eb51
                         imul               esi                                           // 0x007159a1    f7ee
                         sar                edx, 7                                        // 0x007159a3    c1fa07
                         mov.s              eax, edx                                      // 0x007159a6    8bc2
                         shr                eax, 0x1f                                     // 0x007159a8    c1e81f
                         add.s              edx, eax                                      // 0x007159ab    03d0
                         push               edx                                           // 0x007159ad    52
                         call               @AddSpell__10TownCentreF15SPELL_SEED_TYPE@12  // 0x007159ae    e89de60200
                         xor.s              eax, eax                                      // 0x007159b3    33c0
                         pop                edi                                           // 0x007159b5    5f
                         pop                esi                                           // 0x007159b6    5e
                         pop                ebp                                           // 0x007159b7    5d
                         pop                ebx                                           // 0x007159b8    5b
                         add                esp, 0x00000654                               // 0x007159b9    81c454060000
                         ret                                                              // 0x007159bf    c3
                         {disp32} mov       ecx, dword ptr [ebp + 0x00006000]             // 0x007159c0    8b8d00600000
                         push               ecx                                           // 0x007159c6    51
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x007159c7    8b0d5c19d000
                         call               ?FindTownWithID@GGame@@QAEPAVTown@@K@Z        // 0x007159cd    e8ced5e3ff
                         mov.s              edi, eax                                      // 0x007159d2    8bf8
                         cmp.s              edi, ebx                                      // 0x007159d4    3bfb
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x007159d6    0f84ae240000
                         add                ebp, 0x00000800                               // 0x007159dc    81c500080000
                         push               ebp                                           // 0x007159e2    55
                         call               ?GetInfoFromText@GMagicInfo@@SAHPAD@Z         // 0x007159e3    e8c859eeff
                         mov.s              esi, eax                                      // 0x007159e8    8bf0
                         add                esp, 0x04                                     // 0x007159ea    83c404
                         cmp                esi, 0x2a                                     // 0x007159ed    83fe2a
                         {disp32} jge       _jmp_addr_0x00717e8a                          // 0x007159f0    0f8d94240000
                         cmp.s              esi, ebx                                      // 0x007159f6    3bf3
                         {disp32} jle       _jmp_addr_0x00717e8a                          // 0x007159f8    0f8e8c240000
                         push               -0x1                                          // 0x007159fe    6aff
                         push               esi                                           // 0x00715a00    56
                         call               ?GetFirstSpellSeedForMagicType@GSpellSeedInfo@@SA?AW4SPELL_SEED_TYPE@@W4MAGIC_TYPE@@@Z // 0x00715a01    e88a560100
                         lea                eax, dword ptr [eax + eax * 0x4]              // 0x00715a06    8d0480
                         lea                ecx, dword ptr [eax + eax * 0x4]              // 0x00715a09    8d0c80
                         shl                ecx, 4                                        // 0x00715a0c    c1e104
                         add                esp, 0x04                                     // 0x00715a0f    83c404
                         add                ecx, OFFSET _GSpellSeedInfo_ARRAY_00d9d678    // 0x00715a12    81c178d6d900
                         call               @GetMagicTypeFromPULevel__14GSpellSeedInfoCF13POWER_UP_TYPE@12                          // 0x00715a18    e8a3550100
                         push               esi                                           // 0x00715a1d    56
                         mov.s              ecx, edi                                      // 0x00715a1e    8bcf
                         mov.s              ebx, eax                                      // 0x00715a20    8bd8
                         call               ?AddMagicTypesHeld@Town@@QAE_NW4MAGIC_TYPE@@@Z     // 0x00715a22    e859790200
                         push               ebx                                           // 0x00715a27    53
                         mov.s              ecx, edi                                      // 0x00715a28    8bcf
                         call               ?IsMagicTypeHeld@Town@@QAE_NW4MAGIC_TYPE@@@Z       // 0x00715a2a    e8017c0200
                         test               eax, eax                                      // 0x00715a2f    85c0
                         {disp32} jne       _jmp_addr_0x00717e8a                          // 0x00715a31    0f8553240000
                         push               ebx                                           // 0x00715a37    53
                         mov.s              ecx, edi                                      // 0x00715a38    8bcf
                         call               ?AddMagicTypesHeld@Town@@QAE_NW4MAGIC_TYPE@@@Z     // 0x00715a3a    e841790200
                         xor.s              eax, eax                                      // 0x00715a3f    33c0
                         pop                edi                                           // 0x00715a41    5f
                         pop                esi                                           // 0x00715a42    5e
                         pop                ebp                                           // 0x00715a43    5d
                         pop                ebx                                           // 0x00715a44    5b
                         add                esp, 0x00000654                               // 0x00715a45    81c454060000
                         ret                                                              // 0x00715a4b    c3
                         {disp32} mov       edx, dword ptr [ebp + 0x0000600c]             // 0x00715a4c    8b950c600000
                         push               ebx                                           // 0x00715a52    53
                         push               edx                                           // 0x00715a53    52
                         {disp32} lea       eax, dword ptr [ebp + 0x00001000]             // 0x00715a54    8d8500100000
                         push               eax                                           // 0x00715a5a    50
                         {disp32} lea       edi, dword ptr [ebp + 0x00000800]             // 0x00715a5b    8dbd00080000
                         call               ?GetInfoFromText@GVillagerInfo@@SAHPAD@Z      // 0x00715a61    e87abf0300
                         lea                ecx, dword ptr [eax + eax * 0x2]              // 0x00715a66    8d0c40
                         lea                ecx, dword ptr [eax + ecx * 0x4]              // 0x00715a69    8d0c88
                         lea                edx, dword ptr [ecx + ecx * 0x8]              // 0x00715a6c    8d14c9
                         shl                edx, 1                                        // 0x00715a6f    d1e2
                         sub.s              edx, eax                                      // 0x00715a71    2bd0
                         add                esp, 0x04                                     // 0x00715a73    83c404
                         {disp32} lea       eax, dword ptr [edx * 0x4 + _VillagerInfos               ]       // 0x00715a76    8d0495e86bda00
                         push               eax                                           // 0x00715a7d    50
                         {disp32} lea       ecx, dword ptr [esp + 0x000000d0]             // 0x00715a7e    8d8c24d0000000
                         push               edi                                           // 0x00715a85    57
                         push               ecx                                           // 0x00715a86    51
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x00715a87    e8c4270000
                         add                esp, 0x08                                     // 0x00715a8c    83c408
                         push               eax                                           // 0x00715a8f    50
                         call               ?Create@Villager@@SAPAV1@ABUMapCoords@@PBVGVillagerInfo@@KH@Z                // 0x00715a90    e84ba10300
                         mov.s              esi, eax                                      // 0x00715a95    8bf0
                         add                esp, 0x10                                     // 0x00715a97    83c410
                         cmp.s              esi, ebx                                      // 0x00715a9a    3bf3
                         {disp32} mov       dword ptr [_PTR_00d99384], esi                // 0x00715a9c    89358493d900
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x00715aa2    0f84e2230000
                         {disp32} mov       edx, dword ptr [ebp + 0x00006000]             // 0x00715aa8    8b9500600000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00715aae    8b0d5c19d000
                         push               edx                                           // 0x00715ab4    52
                         call               ?FindTownWithID@GGame@@QAEPAVTown@@K@Z        // 0x00715ab5    e8e6d4e3ff
                         cmp.s              eax, ebx                                      // 0x00715aba    3bc3
                         {disp8} jne        _jmp_addr_0x00715ae3                          // 0x00715abc    7525
                         {disp32} lea       eax, dword ptr [esp + 0x000002ec]             // 0x00715abe    8d8424ec020000
                         push               edi                                           // 0x00715ac5    57
                         push               eax                                           // 0x00715ac6    50
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x00715ac7    e884270000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00715acc    8b0d5c19d000
                         add                esp, 0x08                                     // 0x00715ad2    83c408
                         push               eax                                           // 0x00715ad5    50
                         call               _jmp_addr_0x00552ff0                          // 0x00715ad6    e815d5e3ff
                         cmp.s              eax, ebx                                      // 0x00715adb    3bc3
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x00715add    0f84a7230000
_jmp_addr_0x00715ae3:    push               esi                                           // 0x00715ae3    56
                         mov.s              ecx, eax                                      // 0x00715ae4    8bc8
                         call               ?AddVillagerToTown@Town@@QAE_NPAVVillager@@@Z // 0x00715ae6    e8a5450200
                         xor.s              eax, eax                                      // 0x00715aeb    33c0
                         pop                edi                                           // 0x00715aed    5f
                         pop                esi                                           // 0x00715aee    5e
                         pop                ebp                                           // 0x00715aef    5d
                         pop                ebx                                           // 0x00715af0    5b
                         add                esp, 0x00000654                               // 0x00715af1    81c454060000
                         ret                                                              // 0x00715af7    c3
                         {disp32} mov       eax, dword ptr [ebp + 0x00006008]             // 0x00715af8    8b8508600000
                         lea                ecx, dword ptr [eax + eax * 0x2]              // 0x00715afe    8d0c40
                         lea                ecx, dword ptr [eax + ecx * 0x4]              // 0x00715b01    8d0c88
                         lea                edx, dword ptr [ecx + ecx * 0x8]              // 0x00715b04    8d14c9
                         {disp32} mov       ecx, dword ptr [ebp + 0x0000600c]             // 0x00715b07    8b8d0c600000
                         shl                edx, 1                                        // 0x00715b0d    d1e2
                         push               ebx                                           // 0x00715b0f    53
                         sub.s              edx, eax                                      // 0x00715b10    2bd0
                         push               ecx                                           // 0x00715b12    51
                         {disp32} lea       eax, dword ptr [edx * 0x4 + _VillagerInfos               ]       // 0x00715b13    8d0495e86bda00
                         push               eax                                           // 0x00715b1a    50
                         {disp32} lea       edi, dword ptr [ebp + 0x00000800]             // 0x00715b1b    8dbd00080000
                         {disp32} lea       edx, dword ptr [esp + 0x000000e8]             // 0x00715b21    8d9424e8000000
                         push               edi                                           // 0x00715b28    57
                         push               edx                                           // 0x00715b29    52
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x00715b2a    e821270000
                         add                esp, 0x08                                     // 0x00715b2f    83c408
                         push               eax                                           // 0x00715b32    50
                         call               ?Create@Villager@@SAPAV1@ABUMapCoords@@PBVGVillagerInfo@@KH@Z                // 0x00715b33    e8a8a00300
                         mov.s              esi, eax                                      // 0x00715b38    8bf0
                         add                esp, 0x10                                     // 0x00715b3a    83c410
                         cmp.s              esi, ebx                                      // 0x00715b3d    3bf3
                         {disp32} mov       dword ptr [_PTR_00d99384], esi                // 0x00715b3f    89358493d900
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x00715b45    0f843f230000
                         {disp32} mov       eax, dword ptr [ebp + 0x00006000]             // 0x00715b4b    8b8500600000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00715b51    8b0d5c19d000
                         push               eax                                           // 0x00715b57    50
                         call               ?FindTownWithID@GGame@@QAEPAVTown@@K@Z        // 0x00715b58    e843d4e3ff
                         cmp.s              eax, ebx                                      // 0x00715b5d    3bc3
                         {disp8} jne        _jmp_addr_0x00715b86                          // 0x00715b5f    7525
                         {disp32} lea       ecx, dword ptr [esp + 0x00000244]             // 0x00715b61    8d8c2444020000
                         push               edi                                           // 0x00715b68    57
                         push               ecx                                           // 0x00715b69    51
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x00715b6a    e8e1260000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00715b6f    8b0d5c19d000
                         add                esp, 0x08                                     // 0x00715b75    83c408
                         push               eax                                           // 0x00715b78    50
                         call               _jmp_addr_0x00552ff0                          // 0x00715b79    e872d4e3ff
                         cmp.s              eax, ebx                                      // 0x00715b7e    3bc3
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x00715b80    0f8404230000
_jmp_addr_0x00715b86:    push               esi                                           // 0x00715b86    56
                         mov.s              ecx, eax                                      // 0x00715b87    8bc8
                         call               ?AddVillagerToTown@Town@@QAE_NPAVVillager@@@Z // 0x00715b89    e802450200
                         xor.s              eax, eax                                      // 0x00715b8e    33c0
                         pop                edi                                           // 0x00715b90    5f
                         pop                esi                                           // 0x00715b91    5e
                         pop                ebp                                           // 0x00715b92    5d
                         pop                ebx                                           // 0x00715b93    5b
                         add                esp, 0x00000654                               // 0x00715b94    81c454060000
                         ret                                                              // 0x00715b9a    c3
                         cmp                eax, 0x0f                                     // 0x00715b9b    83f80f
                         {disp8} mov        dword ptr [esp + 0x34], ebx                   // 0x00715b9e    895c2434
                         {disp8} mov        dword ptr [esp + 0x38], ebx                   // 0x00715ba2    895c2438
                         {disp8} mov        dword ptr [esp + 0x28], ebx                   // 0x00715ba6    895c2428
                         {disp8} jne        _jmp_addr_0x00715bf3                          // 0x00715baa    7547
                         {disp32} lea       edx, dword ptr [ebp + 0x00000800]             // 0x00715bac    8d9500080000
                         push               edx                                           // 0x00715bb2    52
                         call               ?GetInfoFromText@GVillagerInfo@@SAHPAD@Z      // 0x00715bb3    e828be0300
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x00715bb8    89442414
                         {disp32} mov       eax, dword ptr [ebp + 0x00006008]             // 0x00715bbc    8b8508600000
                         {disp32} lea       ecx, dword ptr [esp + 0x000000f8]             // 0x00715bc2    8d8c24f8000000
                         push               ebp                                           // 0x00715bc9    55
                         push               ecx                                           // 0x00715bca    51
                         {disp8} mov        dword ptr [esp + 0x2c], eax                   // 0x00715bcb    8944242c
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x00715bcf    e87c260000
                         mov.s              edx, eax                                      // 0x00715bd4    8bd0
                         mov                eax, dword ptr [edx]                          // 0x00715bd6    8b02
                         {disp8} mov        ecx, dword ptr [edx + 0x04]                   // 0x00715bd8    8b4a04
                         {disp8} mov        edx, dword ptr [edx + 0x08]                   // 0x00715bdb    8b5208
                         add                esp, 0x0c                                     // 0x00715bde    83c40c
                         {disp8} mov        dword ptr [esp + 0x34], eax                   // 0x00715be1    89442434
                         {disp8} mov        dword ptr [esp + 0x38], ecx                   // 0x00715be5    894c2438
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x00715be9    89442414
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x00715bed    894c2418
                         {disp8} jmp        _jmp_addr_0x00715c5b                          // 0x00715bf1    eb68
_jmp_addr_0x00715bf3:    cmp                eax, 0x12                                     // 0x00715bf3    83f812
                         {disp8} jne        _jmp_addr_0x00715c5f                          // 0x00715bf6    7567
                         {disp32} lea       eax, dword ptr [ebp + 0x00001000]             // 0x00715bf8    8d8500100000
                         push               eax                                           // 0x00715bfe    50
                         call               ?GetInfoFromText@GVillagerInfo@@SAHPAD@Z      // 0x00715bff    e8dcbd0300
                         {disp32} mov       ecx, dword ptr [ebp + 0x0000600c]             // 0x00715c04    8b8d0c600000
                         {disp32} lea       edx, dword ptr [esp + 0x00000350]             // 0x00715c0a    8d942450030000
                         push               ebp                                           // 0x00715c11    55
                         push               edx                                           // 0x00715c12    52
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x00715c13    8944241c
                         {disp8} mov        dword ptr [esp + 0x2c], ecx                   // 0x00715c17    894c242c
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x00715c1b    e830260000
                         mov                ecx, dword ptr [eax]                          // 0x00715c20    8b08
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x00715c22    8b5004
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00715c25    8b4008
                         {disp8} mov        dword ptr [esp + 0x40], ecx                   // 0x00715c28    894c2440
                         add                ebp, 0x00000800                               // 0x00715c2c    81c500080000
                         {disp32} lea       ecx, dword ptr [esp + 0x00000118]             // 0x00715c32    8d8c2418010000
                         push               ebp                                           // 0x00715c39    55
                         push               ecx                                           // 0x00715c3a    51
                         {disp8} mov        dword ptr [esp + 0x4c], edx                   // 0x00715c3b    8954244c
                         {disp8} mov        dword ptr [esp + 0x50], eax                   // 0x00715c3f    89442450
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x00715c43    e808260000
                         mov                edx, dword ptr [eax]                          // 0x00715c48    8b10
                         {disp8} mov        dword ptr [esp + 0x28], edx                   // 0x00715c4a    89542428
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x00715c4e    8b4804
                         {disp8} mov        dword ptr [esp + 0x2c], ecx                   // 0x00715c51    894c242c
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x00715c55    8b5008
                         add                esp, 0x14                                     // 0x00715c58    83c414
_jmp_addr_0x00715c5b:    {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x00715c5b    8954241c
_jmp_addr_0x00715c5f:    {disp32} mov       ecx, dword ptr [_game]                        // 0x00715c5f    8b0d5c19d000
                         push               ebx                                           // 0x00715c65    53
                         call               ?GetNextPlayerAndNeutral@GGame@@QAEPAVGPlayer@@PAV2@@Z // 0x00715c66    e815ade3ff
                         cmp.s              eax, ebx                                      // 0x00715c6b    3bc3
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x00715c6d    89442424
                         {disp32} je        _jmp_addr_0x00715d1b                          // 0x00715c71    0f84a4000000
                         {disp8} mov        bp, word ptr [esp + 0x3a]                     // 0x00715c77    668b6c243a
                         {disp8} mov        bx, word ptr [esp + 0x36]                     // 0x00715c7c    668b5c2436
                         {disp8} mov        esi, dword ptr [esp + 0x28]                   // 0x00715c81    8b742428
_jmp_addr_0x00715c85:    {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x00715c85    8b442424
                         {disp32} mov       edi, dword ptr [eax + 0x00000a50]             // 0x00715c89    8bb8500a0000
                         test               edi, edi                                      // 0x00715c8f    85ff
                         {disp8} je         _jmp_addr_0x00715ce1                          // 0x00715c91    744e
_jmp_addr_0x00715c93:    {disp32} mov       esi, dword ptr [edi + 0x00000754]             // 0x00715c93    8bb754070000
                         test               esi, esi                                      // 0x00715c99    85f6
                         {disp8} je         _jmp_addr_0x00715cd7                          // 0x00715c9b    743a
_jmp_addr_0x00715c9d:    mov                edx, dword ptr [esi]                          // 0x00715c9d    8b16
                         {disp32} lea       eax, dword ptr [esp + 0x0000025c]             // 0x00715c9f    8d84245c020000
                         push               eax                                           // 0x00715ca6    50
                         mov.s              ecx, esi                                      // 0x00715ca7    8bce
                         call               dword ptr [edx + 0x864]                       // 0x00715ca9    ff9264080000
                         cmp                word ptr [eax + 0x02], bx                     // 0x00715caf    66395802
                         {disp8} jne        _jmp_addr_0x00715ccd                          // 0x00715cb3    7518
                         mov                edx, dword ptr [esi]                          // 0x00715cb5    8b16
                         {disp32} lea       eax, dword ptr [esp + 0x00000124]             // 0x00715cb7    8d842424010000
                         push               eax                                           // 0x00715cbe    50
                         mov.s              ecx, esi                                      // 0x00715cbf    8bce
                         call               dword ptr [edx + 0x864]                       // 0x00715cc1    ff9264080000
                         cmp                word ptr [eax + 0x06], bp                     // 0x00715cc7    66396806
                         {disp8} je         _jmp_addr_0x00715cfb                          // 0x00715ccb    742e
_jmp_addr_0x00715ccd:    {disp32} mov       esi, dword ptr [esi + 0x0000009c]             // 0x00715ccd    8bb69c000000
                         test               esi, esi                                      // 0x00715cd3    85f6
                         {disp8} jne        _jmp_addr_0x00715c9d                          // 0x00715cd5    75c6
_jmp_addr_0x00715cd7:    {disp32} mov       edi, dword ptr [edi + 0x0000075c]             // 0x00715cd7    8bbf5c070000
                         test               edi, edi                                      // 0x00715cdd    85ff
                         {disp8} jne        _jmp_addr_0x00715c93                          // 0x00715cdf    75b2
_jmp_addr_0x00715ce1:    {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x00715ce1    8b4c2424
                         push               ecx                                           // 0x00715ce5    51
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00715ce6    8b0d5c19d000
                         call               ?GetNextPlayerAndNeutral@GGame@@QAEPAVGPlayer@@PAV2@@Z // 0x00715cec    e88face3ff
                         test               eax, eax                                      // 0x00715cf1    85c0
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x00715cf3    89442424
                         {disp8} jne        _jmp_addr_0x00715c85                          // 0x00715cf7    758c
                         {disp8} jmp        _jmp_addr_0x00715d1f                          // 0x00715cf9    eb24
_jmp_addr_0x00715cfb:    mov                edx, dword ptr [esi]                          // 0x00715cfb    8b16
                         mov.s              ecx, esi                                      // 0x00715cfd    8bce
                         call               dword ptr [edx + 0x48]                        // 0x00715cff    ff5248
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x00715d02    89442428
                         {disp8} mov        eax, dword ptr [esi + 0x28]                   // 0x00715d06    8b4628
                         {disp32} mov       ecx, dword ptr [eax + 0x00000174]             // 0x00715d09    8b8874010000
                         sub                ecx, dword ptr [esi + 0x000000a4]             // 0x00715d0f    2b8ea4000000
                         {disp8} jne        _jmp_addr_0x00715d1f                          // 0x00715d15    7508
                         xor.s              esi, esi                                      // 0x00715d17    33f6
                         {disp8} jmp        _jmp_addr_0x00715d1f                          // 0x00715d19    eb04
_jmp_addr_0x00715d1b:    {disp8} mov        esi, dword ptr [esp + 0x28]                   // 0x00715d1b    8b742428
_jmp_addr_0x00715d1f:    {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x00715d1f    8b4c2410
                         lea                edx, dword ptr [ecx + ecx * 0x2]              // 0x00715d23    8d1449
                         lea                eax, dword ptr [ecx + edx * 0x4]              // 0x00715d26    8d0491
                         lea                eax, dword ptr [eax + eax * 0x8]              // 0x00715d29    8d04c0
                         shl                eax, 1                                        // 0x00715d2c    d1e0
                         sub.s              eax, ecx                                      // 0x00715d2e    2bc1
                         {disp32} lea       edi, dword ptr [eax * 0x4 + _VillagerInfos               ]       // 0x00715d30    8d3c85e86bda00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x25ad58]        // 0x00715d37    a1580dc200
                         cmp                eax, -0x01                                    // 0x00715d3c    83f8ff
                         {disp8} mov        dword ptr [esp + 0x1c], 0x00000000            // 0x00715d3f    c744241c00000000
                         {disp8} je         _jmp_addr_0x00715d5f                          // 0x00715d47    7416
                         {disp32} mov       ecx, dword ptr [edi + 0x000001fc]             // 0x00715d49    8b8ffc010000
                         push               ecx                                           // 0x00715d4f    51
                         push               eax                                           // 0x00715d50    50
                         call               ?Find@GVillagerInfo@@SAPAV1@W4TRIBE_TYPE@@W4VILLAGER_NUMBER@@@Z               // 0x00715d51    e8fac80300
                         add                esp, 0x08                                     // 0x00715d56    83c408
                         test               eax, eax                                      // 0x00715d59    85c0
                         {disp8} je         _jmp_addr_0x00715d5f                          // 0x00715d5b    7402
                         mov.s              edi, eax                                      // 0x00715d5d    8bf8
_jmp_addr_0x00715d5f:    {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x00715d5f    8b542420
                         push               0x0                                           // 0x00715d63    6a00
                         push               edx                                           // 0x00715d65    52
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                   // 0x00715d66    8d44241c
                         push               edi                                           // 0x00715d6a    57
                         push               eax                                           // 0x00715d6b    50
                         call               ?Create@Villager@@SAPAV1@ABUMapCoords@@PBVGVillagerInfo@@KH@Z                // 0x00715d6c    e86f9e0300
                         mov.s              edi, eax                                      // 0x00715d71    8bf8
                         add                esp, 0x10                                     // 0x00715d73    83c410
                         test               edi, edi                                      // 0x00715d76    85ff
                         {disp32} mov       dword ptr [_PTR_00d99384], edi                // 0x00715d78    893d8493d900
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x00715d7e    0f8406210000
                         test               esi, esi                                      // 0x00715d84    85f6
                         {disp32} mov       dword ptr [_DAT_00d99380], edi                // 0x00715d86    893d8093d900
                         {disp32} mov       dword ptr [_PTR_00d99384], edi                // 0x00715d8c    893d8493d900
                         {disp8} jne        _jmp_addr_0x00715dee                          // 0x00715d92    755a
                         {disp8} mov        ebx, dword ptr [esp + 0x28]                   // 0x00715d94    8b5c2428
                         test               ebx, ebx                                      // 0x00715d98    85db
                         {disp8} je         _jmp_addr_0x00715dc0                          // 0x00715d9a    7424
                         push               esi                                           // 0x00715d9c    56
                         push               edi                                           // 0x00715d9d    57
                         mov.s              ecx, ebx                                      // 0x00715d9e    8bcb
                         call               ?FindAbodeWithSpaceInTown@Town@@QAEPAVAbode@@PAVVillager@@M@Z                          // 0x00715da0    e8cb550200
                         mov.s              esi, eax                                      // 0x00715da5    8bf0
                         test               esi, esi                                      // 0x00715da7    85f6
                         {disp8} jne        _jmp_addr_0x00715dee                          // 0x00715da9    7543
                         push               edi                                           // 0x00715dab    57
                         mov.s              ecx, ebx                                      // 0x00715dac    8bcb
                         call               ?AddVillagerToTown@Town@@QAE_NPAVVillager@@@Z // 0x00715dae    e8dd420200
                         xor.s              eax, eax                                      // 0x00715db3    33c0
                         pop                edi                                           // 0x00715db5    5f
                         pop                esi                                           // 0x00715db6    5e
                         pop                ebp                                           // 0x00715db7    5d
                         pop                ebx                                           // 0x00715db8    5b
                         add                esp, 0x00000654                               // 0x00715db9    81c454060000
                         ret                                                              // 0x00715dbf    c3
_jmp_addr_0x00715dc0:    {disp32} mov       ecx, dword ptr [_game]                        // 0x00715dc0    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x00205bfc]             // 0x00715dc6    8b91fc5b2000
                         {disp32} lea       eax, dword ptr [ecx + 0x00205bfc]             // 0x00715dcc    8d81fc5b2000
                         {disp32} mov       dword ptr [edi + 0x000000e4], edx             // 0x00715dd2    8997e4000000
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x00715dd8    8b4804
                         inc                ecx                                           // 0x00715ddb    41
                         mov                dword ptr [eax], edi                          // 0x00715ddc    8938
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x00715dde    894804
                         xor.s              eax, eax                                      // 0x00715de1    33c0
                         pop                edi                                           // 0x00715de3    5f
                         pop                esi                                           // 0x00715de4    5e
                         pop                ebp                                           // 0x00715de5    5d
                         pop                ebx                                           // 0x00715de6    5b
                         add                esp, 0x00000654                               // 0x00715de7    81c454060000
                         ret                                                              // 0x00715ded    c3
_jmp_addr_0x00715dee:    push               edi                                           // 0x00715dee    57
                         mov.s              ecx, esi                                      // 0x00715def    8bce
                         call               ?AddVillagerToAbode@Abode@@QAEXPAVVillager@@@Z     // 0x00715df1    e86ae2ceff
                         xor.s              eax, eax                                      // 0x00715df6    33c0
                         pop                edi                                           // 0x00715df8    5f
                         pop                esi                                           // 0x00715df9    5e
                         pop                ebp                                           // 0x00715dfa    5d
                         pop                ebx                                           // 0x00715dfb    5b
                         add                esp, 0x00000654                               // 0x00715dfc    81c454060000
                         ret                                                              // 0x00715e02    c3
                         {disp32} lea       eax, dword ptr [ebp + 0x00001000]             // 0x00715e03    8d8500100000
                         push               eax                                           // 0x00715e09    50
                         call               ?GetPlayerFromText@GPlayer@@SAPAV1@PAD@Z      // 0x00715e0a    e8d157f3ff
                         mov.s              esi, eax                                      // 0x00715e0f    8bf0
                         add                esp, 0x04                                     // 0x00715e11    83c404
                         cmp.s              esi, ebx                                      // 0x00715e14    3bf3
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x00715e16    0f846e200000
                         {disp32} fild      dword ptr [ebp + 0x00006010]                  // 0x00715e1c    db8510600000
                         push               ecx                                           // 0x00715e22    51
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3418]              // 0x00715e23    d80d18c48a00
                         fstp               dword ptr [esp]                               // 0x00715e29    d91c24
                         push               ecx                                           // 0x00715e2c    51
                         {disp32} fild      dword ptr [ebp + 0x0000600c]                  // 0x00715e2d    db850c600000
                         mov.s              ecx, esi                                      // 0x00715e33    8bce
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3418]              // 0x00715e35    d80d18c48a00
                         fstp               dword ptr [esp]                               // 0x00715e3b    d91c24
                         call               ?GetPlayerNumber@GPlayer@@QBEEXZ              // 0x00715e3e    e84d49f3ff
                         push               eax                                           // 0x00715e43    50
                         {disp32} mov       eax, dword ptr [ebp + 0x00006004]             // 0x00715e44    8b8504600000
                         lea                ecx, dword ptr [eax + eax * 0x4]              // 0x00715e4a    8d0c80
                         lea                edx, dword ptr [eax + ecx * 0x4]              // 0x00715e4d    8d1488
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x00715e50    8d0450
                         {disp32} lea       ecx, dword ptr [eax * 0x8 + _GCitadelHeartInfo_ARRAY_00c5e270]       // 0x00715e53    8d0cc570e2c500
                         push               ecx                                           // 0x00715e5a    51
                         {disp32} lea       edx, dword ptr [esp + 0x00000314]             // 0x00715e5b    8d942414030000
                         push               ebp                                           // 0x00715e62    55
                         push               edx                                           // 0x00715e63    52
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x00715e64    e8e7230000
                         add                esp, 0x08                                     // 0x00715e69    83c408
                         push               eax                                           // 0x00715e6c    50
                         call               ?CreateCitadel@Citadel@@SAPAV1@ABUMapCoords@@PBVGCitadelHeartInfo@@EMM@Z                // 0x00715e6d    e8ced3d4ff
                         {disp32} mov       eax, dword ptr [esi + 0x00000a48]             // 0x00715e72    8b86480a0000
                         {disp8} mov        ecx, dword ptr [eax + 0x30]                   // 0x00715e78    8b4830
                         add                esp, 0x14                                     // 0x00715e7b    83c414
                         {disp32} mov       dword ptr [_PTR_00d99384], ecx                // 0x00715e7e    890d8493d900
                         xor.s              eax, eax                                      // 0x00715e84    33c0
                         pop                edi                                           // 0x00715e86    5f
                         pop                esi                                           // 0x00715e87    5e
                         pop                ebp                                           // 0x00715e88    5d
                         pop                ebx                                           // 0x00715e89    5b
                         add                esp, 0x00000654                               // 0x00715e8a    81c454060000
                         ret                                                              // 0x00715e90    c3
                         {disp32} mov       edx, dword ptr [ebp + 0x00006000]             // 0x00715e91    8b9500600000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00715e97    8b0d5c19d000
                         push               edx                                           // 0x00715e9d    52
                         call               ?FindTownWithID@GGame@@QAEPAVTown@@K@Z        // 0x00715e9e    e8fdd0e3ff
                         mov.s              esi, eax                                      // 0x00715ea3    8bf0
                         cmp.s              esi, ebx                                      // 0x00715ea5    3bf3
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x00715ea7    0f84dd1f0000
                         {disp32} lea       eax, dword ptr [ebp + 0x00001800]             // 0x00715ead    8d8500180000
                         push               eax                                           // 0x00715eb3    50
                         call               ?GetPlayerFromText@GPlayer@@SAPAV1@PAD@Z      // 0x00715eb4    e82757f3ff
                         add                esp, 0x04                                     // 0x00715eb9    83c404
                         test               eax, eax                                      // 0x00715ebc    85c0
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x00715ebe    0f84c61f0000
                         push               0x0000030c                                    // 0x00715ec4    680c030000
                         push               0x00c21fe8                                    // 0x00715ec9    68e81fc200
                         push               0x4c                                          // 0x00715ece    6a4c
                         call               ?__nw@Base@@SAPAXK@Z                          // 0x00715ed0    e81b08d2ff
                         mov.s              edi, eax                                      // 0x00715ed5    8bf8
                         add                esp, 0x0c                                     // 0x00715ed7    83c40c
                         cmp.s              edi, ebx                                      // 0x00715eda    3bfb
                         {disp8} je         _jmp_addr_0x00715f37                          // 0x00715edc    7459
                         {disp32} fild      dword ptr [ebp + 0x00006014]                  // 0x00715ede    db8514600000
                         {disp32} mov       eax, dword ptr [ebp + 0x00006008]             // 0x00715ee4    8b8508600000
                         push               ecx                                           // 0x00715eea    51
                         add                ebp, 0x00000800                               // 0x00715eeb    81c500080000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3418]              // 0x00715ef1    d80d18c48a00
                         fstp               dword ptr [esp]                               // 0x00715ef7    d91c24
                         push               ecx                                           // 0x00715efa    51
                         {disp32} fild      dword ptr [ebp + 0x00005810]                  // 0x00715efb    db8510580000
                         lea                ecx, dword ptr [eax + eax * 0x4]              // 0x00715f01    8d0c80
                         lea                edx, dword ptr [eax + ecx * 0x4]              // 0x00715f04    8d1488
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x00715f07    8d0450
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3418]              // 0x00715f0a    d80d18c48a00
                         {disp32} lea       ecx, dword ptr [eax * 0x8 + _GCitadelHeartInfo_ARRAY_00c5e270]       // 0x00715f10    8d0cc570e2c500
                         {disp32} lea       edx, dword ptr [esp + 0x00000144]             // 0x00715f17    8d942444010000
                         fstp               dword ptr [esp]                               // 0x00715f1e    d91c24
                         push               esi                                           // 0x00715f21    56
                         push               ecx                                           // 0x00715f22    51
                         push               ebp                                           // 0x00715f23    55
                         push               edx                                           // 0x00715f24    52
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x00715f25    e826230000
                         add                esp, 0x08                                     // 0x00715f2a    83c408
                         push               eax                                           // 0x00715f2d    50
                         mov.s              ecx, edi                                      // 0x00715f2e    8bcf
                         call               _jmp_addr_0x00467dd0                          // 0x00715f30    e89b1ed5ff
                         {disp8} jmp        _jmp_addr_0x00715f39                          // 0x00715f35    eb02
_jmp_addr_0x00715f37:    xor.s              eax, eax                                      // 0x00715f37    33c0
_jmp_addr_0x00715f39:    cmp.s              eax, ebx                                      // 0x00715f39    3bc3
                         {disp32} mov       dword ptr [_PTR_00d99384], eax                // 0x00715f3b    a38493d900
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x00715f40    0f84441f0000
                         add                eax, 0x14                                     // 0x00715f46    83c014
                         mov                ecx, dword ptr [eax]                          // 0x00715f49    8b08
                         {disp32} mov       dword ptr [data_bytes + 0x298258], ecx        // 0x00715f4b    890d58e2c500
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x00715f51    8b5004
                         {disp32} mov       dword ptr [data_bytes + 0x29825c], edx        // 0x00715f54    89155ce2c500
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00715f5a    8b4008
                         {disp32} mov       dword ptr [data_bytes + 0x298260], eax        // 0x00715f5d    a360e2c500
                         xor.s              eax, eax                                      // 0x00715f62    33c0
                         pop                edi                                           // 0x00715f64    5f
                         pop                esi                                           // 0x00715f65    5e
                         pop                ebp                                           // 0x00715f66    5d
                         pop                ebx                                           // 0x00715f67    5b
                         add                esp, 0x00000654                               // 0x00715f68    81c454060000
                         ret                                                              // 0x00715f6e    c3
                         {disp32} lea       ecx, dword ptr [ebp + 0x00001000]             // 0x00715f6f    8d8d00100000
                         push               ecx                                           // 0x00715f75    51
                         call               ?GetPlayerFromText@GPlayer@@SAPAV1@PAD@Z      // 0x00715f76    e86556f3ff
                         {disp32} mov       ebx, dword ptr [ebp + 0x00006014]             // 0x00715f7b    8b9d14600000
                         add                esp, 0x04                                     // 0x00715f81    83c404
                         test               eax, eax                                      // 0x00715f84    85c0
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x00715f86    0f84fe1e0000
                         mov.s              ecx, eax                                      // 0x00715f8c    8bc8
                         call               ?GetPlayerNumber@GPlayer@@QBEEXZ              // 0x00715f8e    e8fd47f3ff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00715f93    8b0d5c19d000
                         push               eax                                           // 0x00715f99    50
                         call               ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z          // 0x00715f9a    e811aae3ff
                         {disp32} mov       edi, dword ptr [eax + 0x00000a48]             // 0x00715f9f    8bb8480a0000
                         add                eax, 0x00000a48                               // 0x00715fa5    05480a0000
                         test               edi, edi                                      // 0x00715faa    85ff
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x00715fac    0f84d81e0000
                         test               bl, 0x01                                      // 0x00715fb2    f6c301
                         {disp32} je        _jmp_addr_0x0071605b                          // 0x00715fb5    0f84a0000000
                         push               0x00000321                                    // 0x00715fbb    6821030000
                         push               0x00c21fe8                                    // 0x00715fc0    68e81fc200
                         push               0x4c                                          // 0x00715fc5    6a4c
                         call               ?__nw@Base@@SAPAXK@Z                          // 0x00715fc7    e82407d2ff
                         mov.s              esi, eax                                      // 0x00715fcc    8bf0
                         add                esp, 0x0c                                     // 0x00715fce    83c40c
                         test               esi, esi                                      // 0x00715fd1    85f6
                         {disp8} je         _jmp_addr_0x00716046                          // 0x00715fd3    7471
                         {disp32} fild      dword ptr [ebp + 0x00006010]                  // 0x00715fd5    db8510600000
                         {disp32} mov       eax, dword ptr [ebp + 0x00006004]             // 0x00715fdb    8b8504600000
                         lea                eax, dword ptr [eax + eax * 0x8]              // 0x00715fe1    8d04c0
                         lea                edx, dword ptr [eax + eax * 0x8]              // 0x00715fe4    8d14c0
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3418]              // 0x00715fe7    d80d18c48a00
                         {disp32} lea       eax, dword ptr [esp + 0x00000274]             // 0x00715fed    8d842474020000
                         push               ebp                                           // 0x00715ff4    55
                         push               eax                                           // 0x00715ff5    50
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x00715ff6    d95c2430
                         {disp32} lea       ebx, dword ptr [edx * 0x4 + 0x00cad428]       // 0x00715ffa    8d1c9528d4ca00
                         {disp32} fild      dword ptr [ebp + 0x0000600c]                  // 0x00716001    db850c600000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3418]              // 0x00716007    d80d18c48a00
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0071600d    d95c2418
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x00716011    e83a220000
                         {disp8} mov        ecx, dword ptr [esp + 0x30]                   // 0x00716016    8b4c2430
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x0071601a    8b542418
                         add                esp, 0x08                                     // 0x0071601e    83c408
                         push               ecx                                           // 0x00716021    51
                         push               edx                                           // 0x00716022    52
                         push               edi                                           // 0x00716023    57
                         push               ebx                                           // 0x00716024    53
                         push               eax                                           // 0x00716025    50
                         mov.s              ecx, esi                                      // 0x00716026    8bce
                         call               _jmp_addr_0x00469610                          // 0x00716028    e8e335d5ff
                         mov                dword ptr [esi], 0x008d0f9c                   // 0x0071602d    c7069c0f8d00
                         {disp32} mov       dword ptr [_PTR_00d99384], esi                // 0x00716033    89358493d900
                         xor.s              eax, eax                                      // 0x00716039    33c0
                         pop                edi                                           // 0x0071603b    5f
                         pop                esi                                           // 0x0071603c    5e
                         pop                ebp                                           // 0x0071603d    5d
                         pop                ebx                                           // 0x0071603e    5b
                         add                esp, 0x00000654                               // 0x0071603f    81c454060000
                         ret                                                              // 0x00716045    c3
_jmp_addr_0x00716046:    xor.s              esi, esi                                      // 0x00716046    33f6
                         {disp32} mov       dword ptr [_PTR_00d99384], esi                // 0x00716048    89358493d900
                         xor.s              eax, eax                                      // 0x0071604e    33c0
                         pop                edi                                           // 0x00716050    5f
                         pop                esi                                           // 0x00716051    5e
                         pop                ebp                                           // 0x00716052    5d
                         pop                ebx                                           // 0x00716053    5b
                         add                esp, 0x00000654                               // 0x00716054    81c454060000
                         ret                                                              // 0x0071605a    c3
_jmp_addr_0x0071605b:    {disp32} fild      dword ptr [ebp + 0x00006010]                  // 0x0071605b    db8510600000
                         {disp32} mov       eax, dword ptr [ebp + 0x00006004]             // 0x00716061    8b8504600000
                         push               0x0                                           // 0x00716067    6a00
                         push               0x3f800000                                    // 0x00716069    680000803f
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3418]              // 0x0071606e    d80d18c48a00
                         push               ecx                                           // 0x00716074    51
                         lea                eax, dword ptr [eax + eax * 0x8]              // 0x00716075    8d04c0
                         lea                eax, dword ptr [eax + eax * 0x8]              // 0x00716078    8d04c0
                         fstp               dword ptr [esp]                               // 0x0071607b    d91c24
                         push               ecx                                           // 0x0071607e    51
                         {disp32} fild      dword ptr [ebp + 0x0000600c]                  // 0x0071607f    db850c600000
                         {disp32} lea       ecx, dword ptr [eax * 0x4 + 0x00cad428]       // 0x00716085    8d0c8528d4ca00
                         {disp32} lea       edx, dword ptr [esp + 0x00000164]             // 0x0071608c    8d942464010000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3418]              // 0x00716093    d80d18c48a00
                         fstp               dword ptr [esp]                               // 0x00716099    d91c24
                         push               edi                                           // 0x0071609c    57
                         push               ecx                                           // 0x0071609d    51
                         push               ebp                                           // 0x0071609e    55
                         push               edx                                           // 0x0071609f    52
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x007160a0    e8ab210000
                         add                esp, 0x08                                     // 0x007160a5    83c408
                         push               eax                                           // 0x007160a8    50
                         call               _jmp_addr_0x004eef60                          // 0x007160a9    e8b28eddff
                         add                esp, 0x1c                                     // 0x007160ae    83c41c
                         {disp32} mov       dword ptr [_DAT_00d99380], eax                // 0x007160b1    a38093d900
                         {disp32} mov       dword ptr [_PTR_00d99384], eax                // 0x007160b6    a38493d900
                         xor.s              eax, eax                                      // 0x007160bb    33c0
                         pop                edi                                           // 0x007160bd    5f
                         pop                esi                                           // 0x007160be    5e
                         pop                ebp                                           // 0x007160bf    5d
                         pop                ebx                                           // 0x007160c0    5b
                         add                esp, 0x00000654                               // 0x007160c1    81c454060000
                         ret                                                              // 0x007160c7    c3
                         {disp32} lea       eax, dword ptr [ebp + 0x00001000]             // 0x007160c8    8d8500100000
                         push               eax                                           // 0x007160ce    50
                         call               ?GetPlayerFromText@GPlayer@@SAPAV1@PAD@Z      // 0x007160cf    e80c55f3ff
                         add                esp, 0x04                                     // 0x007160d4    83c404
                         cmp.s              eax, ebx                                      // 0x007160d7    3bc3
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x007160d9    0f84ab1d0000
                         {disp32} mov       esi, dword ptr [eax + 0x00000a48]             // 0x007160df    8bb0480a0000
                         cmp.s              esi, ebx                                      // 0x007160e5    3bf3
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x007160e7    0f849d1d0000
                         cmp                dword ptr [esi + 0x30], ebx                   // 0x007160ed    395e30
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x007160f0    0f84941d0000
                         {disp32} lea       ecx, dword ptr [ebp + 0x00001800]             // 0x007160f6    8d8d00180000
                         push               ecx                                           // 0x007160fc    51
                         call               ?GetTribeFromText@GTribeInfo@@SAPAV1@PBD@Z    // 0x007160fd    e83e680300
                         {disp8} mov        edi, dword ptr [esi + 0x30]                   // 0x00716102    8b7e30
                         add                esp, 0x04                                     // 0x00716105    83c404
                         push               eax                                           // 0x00716108    50
                         {disp32} mov       eax, dword ptr [ebp + 0x00006004]             // 0x00716109    8b8504600000
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x0071610f    8d1480
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x00716112    8d0450
                         shl                eax, 5                                        // 0x00716115    c1e005
                         push               esi                                           // 0x00716118    56
                         add                eax, 0x00dcbd30 /* _GWorshipSiteInfo_ARRAY_00dcbd30 */ // 0x00716119    0530bddc00
                         push               eax                                           // 0x0071611e    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00000388]             // 0x0071611f    8d8c2488030000
                         push               ebp                                           // 0x00716126    55
                         push               ecx                                           // 0x00716127    51
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x00716128    e823210000
                         add                esp, 0x08                                     // 0x0071612d    83c408
                         push               eax                                           // 0x00716130    50
                         mov.s              ecx, edi                                      // 0x00716131    8bcf
                         call               @CreateBuiltWorshipSite__12CitadelHeartFRC9MapCoordsPC16GWorshipSiteInfoP7CitadelPC10GTribeInfo@24                          // 0x00716133    e8d8efd4ff
                         {disp32} mov       dword ptr [_DAT_00d99380], eax                // 0x00716138    a38093d900
                         {disp32} mov       dword ptr [_PTR_00d99384], eax                // 0x0071613d    a38493d900
                         xor.s              eax, eax                                      // 0x00716142    33c0
                         pop                edi                                           // 0x00716144    5f
                         pop                esi                                           // 0x00716145    5e
                         pop                ebp                                           // 0x00716146    5d
                         pop                ebx                                           // 0x00716147    5b
                         add                esp, 0x00000654                               // 0x00716148    81c454060000
                         ret                                                              // 0x0071614e    c3
                         push               0x0000034a                                    // 0x0071614f    684a030000
                         push               0x00c21fe8                                    // 0x00716154    68e81fc200
                         push               0x58                                          // 0x00716159    6a58
                         call               ?__nw@Base@@SAPAXK@Z                          // 0x0071615b    e89005d2ff
                         mov.s              esi, eax                                      // 0x00716160    8bf0
                         add                esp, 0x0c                                     // 0x00716162    83c40c
                         cmp.s              esi, ebx                                      // 0x00716165    3bf3
                         {disp32} je        _jmp_addr_0x00715419                          // 0x00716167    0f84acf2ffff
                         {disp32} mov       edx, dword ptr [ebp + 0x00006000]             // 0x0071616d    8b9500600000
                         push               edx                                           // 0x00716173    52
                         add                ebp, 0x00000800                               // 0x00716174    81c500080000
                         {disp32} lea       eax, dword ptr [esp + 0x00000170]             // 0x0071617a    8d842470010000
                         push               ebp                                           // 0x00716181    55
                         push               eax                                           // 0x00716182    50
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x00716183    e8c8200000
                         add                esp, 0x08                                     // 0x00716188    83c408
                         push               eax                                           // 0x0071618b    50
                         mov.s              ecx, esi                                      // 0x0071618c    8bce
                         call               @__ct__6ForestFRC9MapCoordsUl@16              // 0x0071618e    e83d3ae2ff
                         {disp32} mov       dword ptr [_PTR_00d99384], eax                // 0x00716193    a38493d900
                         xor.s              eax, eax                                      // 0x00716198    33c0
                         pop                edi                                           // 0x0071619a    5f
                         pop                esi                                           // 0x0071619b    5e
                         pop                ebp                                           // 0x0071619c    5d
                         pop                ebx                                           // 0x0071619d    5b
                         add                esp, 0x00000654                               // 0x0071619e    81c454060000
                         ret                                                              // 0x007161a4    c3
                         {disp32} fild      dword ptr [ebp + 0x0000600c]                  // 0x007161a5    db850c600000
                         {disp32} mov       edi, dword ptr [ebp + 0x00006008]             // 0x007161ab    8bbd08600000
                         {disp32} lea       ecx, dword ptr [ebp + 0x00000800]             // 0x007161b1    8d8d00080000
                         lea                edi, dword ptr [edi + edi * 0x4]              // 0x007161b7    8d3cbf
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3418]              // 0x007161ba    d80d18c48a00
                         push               ecx                                           // 0x007161c0    51
                         {disp32} lea       edx, dword ptr [esp + 0x00000290]             // 0x007161c1    8d942490020000
                         shl                edi, 6                                        // 0x007161c8    c1e706
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x007161cb    d95c2414
                         push               edx                                           // 0x007161cf    52
                         {disp32} fild      dword ptr [ebp + 0x00006010]                  // 0x007161d0    db8510600000
                         add                edi, 0x00da3ad8                               // 0x007161d6    81c7d83ada00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3418]              // 0x007161dc    d80d18c48a00
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x007161e2    d95c2430
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x007161e6    e865200000
                         mov                ecx, dword ptr [eax]                          // 0x007161eb    8b08
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                   // 0x007161ed    894c241c
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x007161f1    8b5004
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x007161f4    8b0d5c19d000
                         {disp8} mov        dword ptr [esp + 0x20], edx                   // 0x007161fa    89542420
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x007161fe    8b4008
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x00716201    89442424
                         {disp32} mov       esi, dword ptr [ecx + 0x00205bb4]             // 0x00716205    8bb1b45b2000
                         add                esp, 0x08                                     // 0x0071620b    83c408
                         cmp.s              esi, ebx                                      // 0x0071620e    3bf3
                         {disp8} je         _jmp_addr_0x00716224                          // 0x00716210    7412
                         {disp32} mov       ebp, dword ptr [ebp + 0x00006000]             // 0x00716212    8bad00600000
_jmp_addr_0x00716218:    cmp                dword ptr [esi + 0x40], ebp                   // 0x00716218    396e40
                         {disp8} je         _jmp_addr_0x00716224                          // 0x0071621b    7407
                         {disp8} mov        esi, dword ptr [esi + 0x44]                   // 0x0071621d    8b7644
                         cmp.s              esi, ebx                                      // 0x00716220    3bf3
                         {disp8} jne        _jmp_addr_0x00716218                          // 0x00716222    75f4
_jmp_addr_0x00716224:    {disp8} mov        ebx, dword ptr [esp + 0x28]                   // 0x00716224    8b5c2428
                         {disp8} mov        ebp, dword ptr [esp + 0x10]                   // 0x00716228    8b6c2410
                         push               ebx                                           // 0x0071622c    53
                         push               ebp                                           // 0x0071622d    55
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                   // 0x0071622e    8d54241c
                         push               edx                                           // 0x00716232    52
                         mov.s              ecx, edi                                      // 0x00716233    8bcf
                         call               _jmp_addr_0x00638c40                          // 0x00716235    e8062af2ff
                         test               eax, eax                                      // 0x0071623a    85c0
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x0071623c    0f84481c0000
                         push               ebx                                           // 0x00716242    53
                         push               ebp                                           // 0x00716243    55
                         push               ebx                                           // 0x00716244    53
                         push               esi                                           // 0x00716245    56
                         {disp8} lea        eax, dword ptr [esp + 0x24]                   // 0x00716246    8d442424
                         push               edi                                           // 0x0071624a    57
                         push               eax                                           // 0x0071624b    50
                         call               ?Create@Tree@@SAPAV1@ABUMapCoords@@PBVGTreeInfo@@PAVForest@@MMM@Z           // 0x0071624c    e88f3c0300
                         add                esp, 0x18                                     // 0x00716251    83c418
                         {disp32} mov       dword ptr [_DAT_00d99380], eax                // 0x00716254    a38093d900
                         {disp32} mov       dword ptr [_PTR_00d99384], eax                // 0x00716259    a38493d900
                         xor.s              eax, eax                                      // 0x0071625e    33c0
                         pop                edi                                           // 0x00716260    5f
                         pop                esi                                           // 0x00716261    5e
                         pop                ebp                                           // 0x00716262    5d
                         pop                ebx                                           // 0x00716263    5b
                         add                esp, 0x00000654                               // 0x00716264    81c454060000
                         ret                                                              // 0x0071626a    c3
                         {disp32} mov       ecx, dword ptr [ebp + 0x00006040]             // 0x0071626b    8b8d40600000
                         {disp32} mov       edi, dword ptr [ebp + 0x00006008]             // 0x00716271    8bbd08600000
                         {disp32} mov       edx, dword ptr [ebp + 0x00006044]             // 0x00716277    8b9544600000
                         {disp32} lea       eax, dword ptr [ebp + 0x00000800]             // 0x0071627d    8d8500080000
                         lea                edi, dword ptr [edi + edi * 0x4]              // 0x00716283    8d3cbf
                         {disp8} mov        dword ptr [esp + 0x28], ecx                   // 0x00716286    894c2428
                         push               eax                                           // 0x0071628a    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00000188]             // 0x0071628b    8d8c2488010000
                         shl                edi, 6                                        // 0x00716292    c1e706
                         push               ecx                                           // 0x00716295    51
                         add                edi, 0x00da3ad8                               // 0x00716296    81c7d83ada00
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x0071629c    89542418
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x007162a0    e8ab1f0000
                         mov                edx, dword ptr [eax]                          // 0x007162a5    8b10
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x007162a7    8954241c
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x007162ab    8b4804
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x007162ae    894c2420
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x007162b2    8b5008
                         {disp32} mov       eax, dword ptr [_game]                        // 0x007162b5    a15c19d000
                         {disp8} mov        dword ptr [esp + 0x24], edx                   // 0x007162ba    89542424
                         {disp32} mov       esi, dword ptr [eax + 0x00205bb4]             // 0x007162be    8bb0b45b2000
                         add                esp, 0x08                                     // 0x007162c4    83c408
                         cmp.s              esi, ebx                                      // 0x007162c7    3bf3
                         {disp8} je         _jmp_addr_0x007162dd                          // 0x007162c9    7412
                         {disp32} mov       eax, dword ptr [ebp + 0x00006000]             // 0x007162cb    8b8500600000
_jmp_addr_0x007162d1:    cmp                dword ptr [esi + 0x40], eax                   // 0x007162d1    394640
                         {disp8} je         _jmp_addr_0x007162dd                          // 0x007162d4    7407
                         {disp8} mov        esi, dword ptr [esi + 0x44]                   // 0x007162d6    8b7644
                         cmp.s              esi, ebx                                      // 0x007162d9    3bf3
                         {disp8} jne        _jmp_addr_0x007162d1                          // 0x007162db    75f4
_jmp_addr_0x007162dd:    {disp8} mov        ebx, dword ptr [esp + 0x10]                   // 0x007162dd    8b5c2410
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                   // 0x007162e1    8b4c2428
                         push               ebx                                           // 0x007162e5    53
                         push               ecx                                           // 0x007162e6    51
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                   // 0x007162e7    8d54241c
                         push               edx                                           // 0x007162eb    52
                         mov.s              ecx, edi                                      // 0x007162ec    8bcf
                         call               _jmp_addr_0x00638c40                          // 0x007162ee    e84d29f2ff
                         test               eax, eax                                      // 0x007162f3    85c0
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x007162f5    0f848f1b0000
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x007162fb    8b442428
                         {disp32} mov       ecx, dword ptr [ebp + 0x00006048]             // 0x007162ff    8b8d48600000
                         push               ebx                                           // 0x00716305    53
                         push               eax                                           // 0x00716306    50
                         push               ecx                                           // 0x00716307    51
                         push               esi                                           // 0x00716308    56
                         {disp8} lea        edx, dword ptr [esp + 0x24]                   // 0x00716309    8d542424
                         push               edi                                           // 0x0071630d    57
                         push               edx                                           // 0x0071630e    52
                         call               ?Create@Tree@@SAPAV1@ABUMapCoords@@PBVGTreeInfo@@PAVForest@@MMM@Z           // 0x0071630f    e8cc3b0300
                         {disp32} mov       dword ptr [_DAT_00d99380], eax                // 0x00716314    a38093d900
                         {disp32} mov       dword ptr [_PTR_00d99384], eax                // 0x00716319    a38493d900
                         {disp32} mov       ecx, dword ptr [ebp + 0x0000600c]             // 0x0071631e    8b8d0c600000
                         {disp8} mov        dl, byte ptr [eax + 0x5e]                     // 0x00716324    8a505e
                         add                esp, 0x18                                     // 0x00716327    83c418
                         cmp                ecx, 0x01                                     // 0x0071632a    83f901
                         sete               cl                                            // 0x0071632d    0f94c1
                         and                cl, 0x01                                      // 0x00716330    80e101
                         shl                cl, 1                                         // 0x00716333    d0e1
                         and                dl, -0x03                                     // 0x00716335    80e2fd
                         or.s               cl, dl                                        // 0x00716338    0aca
                         {disp8} mov        byte ptr [eax + 0x5e], cl                     // 0x0071633a    88485e
                         xor.s              eax, eax                                      // 0x0071633d    33c0
                         pop                edi                                           // 0x0071633f    5f
                         pop                esi                                           // 0x00716340    5e
                         pop                ebp                                           // 0x00716341    5d
                         pop                ebx                                           // 0x00716342    5b
                         add                esp, 0x00000654                               // 0x00716343    81c454060000
                         ret                                                              // 0x00716349    c3
                         push               0x0000037d                                    // 0x0071634a    687d030000
                         push               0x00c21fe8                                    // 0x0071634f    68e81fc200
                         push               0x00000090                                    // 0x00716354    6890000000
                         mov                ebx, 0x00000004                               // 0x00716359    bb04000000
                         {disp8} mov        dword ptr [esp + 0x34], 0x00000000            // 0x0071635e    c744243400000000
                         call               ?__nw@Base@@SAPAXK@Z                          // 0x00716366    e88503d2ff
                         mov.s              esi, eax                                      // 0x0071636b    8bf0
                         add                esp, 0x0c                                     // 0x0071636d    83c40c
                         test               esi, esi                                      // 0x00716370    85f6
                         {disp8} je         _jmp_addr_0x007163c2                          // 0x00716372    744e
                         {disp32} mov       eax, dword ptr [ebp + 0x00006000]             // 0x00716374    8b8500600000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0071637a    8b0d5c19d000
                         push               eax                                           // 0x00716380    50
                         xor.s              eax, eax                                      // 0x00716381    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a5b]               // 0x00716383    8a815b5a2000
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x00716389    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x0071638c    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x0071638f    8d0450
                         shl                eax, 5                                        // 0x00716392    c1e005
                         {disp8} lea        ecx, dword ptr [eax + ecx * 0x1 + 0x18]       // 0x00716395    8d4c0818
                         push               ecx                                           // 0x00716399    51
                         push               0x00c5e624                                    // 0x0071639a    6824e6c500
                         {disp32} lea       edx, dword ptr [ebp + 0x00000800]             // 0x0071639f    8d9500080000
                         push               edx                                           // 0x007163a5    52
                         {disp32} lea       eax, dword ptr [esp + 0x0000032c]             // 0x007163a6    8d84242c030000
                         push               eax                                           // 0x007163ad    50
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x007163ae    e89d1e0000
                         add                esp, 0x08                                     // 0x007163b3    83c408
                         push               eax                                           // 0x007163b6    50
                         mov.s              ecx, esi                                      // 0x007163b7    8bce
                         call               @__ct__5FlockFRC9MapCoordsPC10GFlockInfoP7GPlayerUl@24                          // 0x007163b9    e8c293e1ff
                         mov.s              edi, eax                                      // 0x007163be    8bf8
                         {disp8} jmp        _jmp_addr_0x007163c4                          // 0x007163c0    eb02
_jmp_addr_0x007163c2:    xor.s              edi, edi                                      // 0x007163c2    33ff
_jmp_addr_0x007163c4:    test               edi, edi                                      // 0x007163c4    85ff
                         {disp32} mov       dword ptr [_PTR_00d99384], edi                // 0x007163c6    893d8493d900
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x007163cc    0f84b81a0000
                         {disp32} fld       dword ptr [_script_version]                   // 0x007163d2    d9057c95d900
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x262e8]             // 0x007163d8    d81de8f28c00
                         fnstsw             ax                                            // 0x007163de    dfe0
                         test               ah, 0x01                                      // 0x007163e0    f6c401
                         {disp8} jne        _jmp_addr_0x007163f2                          // 0x007163e3    750d
                         mov                ebx, 0x00000005                               // 0x007163e5    bb05000000
                         {disp8} mov        dword ptr [esp + 0x28], 0x00000004            // 0x007163ea    c744242804000000
_jmp_addr_0x007163f2:    {disp32} mov       ecx, dword ptr [ebp + ebx * 0x4 + 0x00006000] // 0x007163f2    8b8c9d00600000
                         push               ecx                                           // 0x007163f9    51
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x007163fa    8b0d5c19d000
                         call               ?FindTownWithID@GGame@@QAEPAVTown@@K@Z        // 0x00716400    e89bcbe3ff
                         mov.s              esi, eax                                      // 0x00716405    8bf0
                         test               esi, esi                                      // 0x00716407    85f6
                         {disp8} je         _jmp_addr_0x00716433                          // 0x00716409    7428
                         push               0x8                                           // 0x0071640b    6a08
                         {disp8} mov        dword ptr [edi + 0x34], esi                   // 0x0071640d    897734
                         call               ??2@YAPAXI@Z                                  // 0x00716410    e8d9000b00
                         add                esp, 0x04                                     // 0x00716415    83c404
                         test               eax, eax                                      // 0x00716418    85c0
                         {disp8} je         _jmp_addr_0x00716433                          // 0x0071641a    7417
                         {disp32} mov       ecx, dword ptr [esi + 0x00000f08]             // 0x0071641c    8b8e080f0000
                         {disp8} mov        dword ptr [eax + 0x04], edi                   // 0x00716422    897804
                         mov                dword ptr [eax], ecx                          // 0x00716425    8908
                         {disp32} mov       dword ptr [esi + 0x00000f08], eax             // 0x00716427    8986080f0000
                         {disp32} inc       dword ptr [esi + 0x00000f0c]                  // 0x0071642d    ff860c0f0000
_jmp_addr_0x00716433:    {disp32} lea       edx, dword ptr [ebp + 0x00001000]             // 0x00716433    8d9500100000
                         push               edx                                           // 0x00716439    52
                         {disp32} lea       eax, dword ptr [esp + 0x000001a0]             // 0x0071643a    8d8424a0010000
                         push               eax                                           // 0x00716441    50
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x00716442    e8091e0000
                         add                esp, 0x08                                     // 0x00716447    83c408
                         push               eax                                           // 0x0071644a    50
                         mov.s              ecx, edi                                      // 0x0071644b    8bcf
                         call               ?SetDomainCentrePos@Flock@@QAEXABUMapCoords@@@Z                          // 0x0071644d    e8ce97e1ff
                         {disp32} mov       eax, dword ptr [ebp + 0x0000600c]             // 0x00716452    8b850c600000
                         test               eax, eax                                      // 0x00716458    85c0
                         {disp8} je         _jmp_addr_0x00716465                          // 0x0071645a    7409
                         mov.s              cx, ax                                        // 0x0071645c    668bc8
                         {disp8} mov        word ptr [edi + 0x50], cx                     // 0x0071645f    66894f50
                         {disp8} jmp        _jmp_addr_0x0071646b                          // 0x00716463    eb06
_jmp_addr_0x00716465:    {disp8} mov        word ptr [edi + 0x50], 0x0050                 // 0x00716465    66c747505000
_jmp_addr_0x0071646b:    {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x0071646b    8b442428
                         test               eax, eax                                      // 0x0071646f    85c0
                         {disp8} je         _jmp_addr_0x0071648c                          // 0x00716471    7419
                         {disp32} mov       dx, word ptr [ebp + eax * 0x4 + 0x00006000]   // 0x00716473    668b948500600000
                         {disp8} mov        word ptr [edi + 0x52], dx                     // 0x0071647b    66895752
                         xor.s              eax, eax                                      // 0x0071647f    33c0
                         pop                edi                                           // 0x00716481    5f
                         pop                esi                                           // 0x00716482    5e
                         pop                ebp                                           // 0x00716483    5d
                         pop                ebx                                           // 0x00716484    5b
                         add                esp, 0x00000654                               // 0x00716485    81c454060000
                         ret                                                              // 0x0071648b    c3
_jmp_addr_0x0071648c:    {disp8} mov        word ptr [edi + 0x52], 0x001e                 // 0x0071648c    66c747521e00
                         xor.s              eax, eax                                      // 0x00716492    33c0
                         pop                edi                                           // 0x00716494    5f
                         pop                esi                                           // 0x00716495    5e
                         pop                ebp                                           // 0x00716496    5d
                         pop                ebx                                           // 0x00716497    5b
                         add                esp, 0x00000654                               // 0x00716498    81c454060000
                         ret                                                              // 0x0071649e    c3
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0071649f    8b0d5c19d000
                         {disp32} mov       eax, dword ptr [ecx + 0x00205c44]             // 0x007164a5    8b81445c2000
                         cmp.s              eax, ebx                                      // 0x007164ab    3bc3
                         {disp8} je         _jmp_addr_0x007164e8                          // 0x007164ad    7439
                         {disp8} mov        esi, dword ptr [eax + 0x04]                   // 0x007164af    8b7004
                         cmp.s              esi, ebx                                      // 0x007164b2    3bf3
                         {disp8} je         _jmp_addr_0x007164ea                          // 0x007164b4    7434
                         {disp32} mov       edx, dword ptr [ebp + 0x00006008]             // 0x007164b6    8b9508600000
_jmp_addr_0x007164bc:    cmp                dword ptr [esi + 0x0000008c], edx             // 0x007164bc    39968c000000
                         {disp8} je         _jmp_addr_0x007164ea                          // 0x007164c2    7426
                         {disp32} mov       eax, dword ptr [ecx + 0x00205c44]             // 0x007164c4    8b81445c2000
                         cmp.s              eax, ebx                                      // 0x007164ca    3bc3
                         {disp8} je         _jmp_addr_0x007164e8                          // 0x007164cc    741a
_jmp_addr_0x007164ce:    cmp                dword ptr [eax + 0x04], esi                   // 0x007164ce    397004
                         mov                eax, dword ptr [eax]                          // 0x007164d1    8b00
                         {disp8} je         _jmp_addr_0x007164db                          // 0x007164d3    7406
                         cmp.s              eax, ebx                                      // 0x007164d5    3bc3
                         {disp8} je         _jmp_addr_0x007164e8                          // 0x007164d7    740f
                         {disp8} jmp        _jmp_addr_0x007164ce                          // 0x007164d9    ebf3
_jmp_addr_0x007164db:    cmp.s              eax, ebx                                      // 0x007164db    3bc3
                         {disp8} je         _jmp_addr_0x007164e8                          // 0x007164dd    7409
                         {disp8} mov        esi, dword ptr [eax + 0x04]                   // 0x007164df    8b7004
                         cmp.s              esi, ebx                                      // 0x007164e2    3bf3
                         {disp8} je         _jmp_addr_0x007164ea                          // 0x007164e4    7404
                         {disp8} jmp        _jmp_addr_0x007164bc                          // 0x007164e6    ebd4
_jmp_addr_0x007164e8:    xor.s              esi, esi                                      // 0x007164e8    33f6
_jmp_addr_0x007164ea:    {disp32} mov       eax, dword ptr [ebp + 0x0000600c]             // 0x007164ea    8b850c600000
                         push               eax                                           // 0x007164f0    50
                         call               ?FindTownWithID@GGame@@QAEPAVTown@@K@Z        // 0x007164f1    e8aacae3ff
                         push               ebx                                           // 0x007164f6    53
                         push               esi                                           // 0x007164f7    56
                         push               eax                                           // 0x007164f8    50
                         {disp32} mov       eax, dword ptr [ebp + 0x00006004]             // 0x007164f9    8b8504600000
                         lea                ecx, dword ptr [eax + eax * 0x4]              // 0x007164ff    8d0c80
                         lea                ecx, dword ptr [ecx + ecx * 0x8]              // 0x00716502    8d0cc9
                         shl                ecx, 2                                        // 0x00716505    c1e102
                         sub.s              ecx, eax                                      // 0x00716508    2bc8
                         {disp32} lea       edx, dword ptr [ecx * 0x4 + 0x00c4d030]       // 0x0071650a    8d148d30d0c400
                         push               edx                                           // 0x00716511    52
                         push               ebp                                           // 0x00716512    55
                         {disp32} lea       eax, dword ptr [esp + 0x000002b8]             // 0x00716513    8d8424b8020000
                         push               eax                                           // 0x0071651a    50
_jmp_addr_0x0071651b:    call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x0071651b    e8301d0000
                         add                esp, 0x08                                     // 0x00716520    83c408
                         push               eax                                           // 0x00716523    50
                         call               _jmp_addr_0x00419d10                          // 0x00716524    e8e737d0ff
                         add                esp, 0x14                                     // 0x00716529    83c414
                         {disp32} mov       dword ptr [_DAT_00d99380], eax                // 0x0071652c    a38093d900
                         {disp32} mov       dword ptr [_PTR_00d99384], eax                // 0x00716531    a38493d900
                         xor.s              eax, eax                                      // 0x00716536    33c0
                         pop                edi                                           // 0x00716538    5f
                         pop                esi                                           // 0x00716539    5e
                         pop                ebp                                           // 0x0071653a    5d
                         pop                ebx                                           // 0x0071653b    5b
                         add                esp, 0x00000654                               // 0x0071653c    81c454060000
                         ret                                                              // 0x00716542    c3
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00716543    8b0d5c19d000
                         {disp32} mov       eax, dword ptr [ecx + 0x00205c44]             // 0x00716549    8b81445c2000
                         cmp.s              eax, ebx                                      // 0x0071654f    3bc3
                         {disp8} je         _jmp_addr_0x0071658c                          // 0x00716551    7439
                         {disp8} mov        esi, dword ptr [eax + 0x04]                   // 0x00716553    8b7004
                         cmp.s              esi, ebx                                      // 0x00716556    3bf3
                         {disp8} je         _jmp_addr_0x0071658e                          // 0x00716558    7434
                         {disp32} mov       edx, dword ptr [ebp + 0x00006008]             // 0x0071655a    8b9508600000
_jmp_addr_0x00716560:    cmp                dword ptr [esi + 0x0000008c], edx             // 0x00716560    39968c000000
                         {disp8} je         _jmp_addr_0x0071658e                          // 0x00716566    7426
                         {disp32} mov       eax, dword ptr [ecx + 0x00205c44]             // 0x00716568    8b81445c2000
                         cmp.s              eax, ebx                                      // 0x0071656e    3bc3
                         {disp8} je         _jmp_addr_0x0071658c                          // 0x00716570    741a
_jmp_addr_0x00716572:    cmp                dword ptr [eax + 0x04], esi                   // 0x00716572    397004
                         mov                eax, dword ptr [eax]                          // 0x00716575    8b00
                         {disp8} je         _jmp_addr_0x0071657f                          // 0x00716577    7406
                         cmp.s              eax, ebx                                      // 0x00716579    3bc3
                         {disp8} je         _jmp_addr_0x0071658c                          // 0x0071657b    740f
                         {disp8} jmp        _jmp_addr_0x00716572                          // 0x0071657d    ebf3
_jmp_addr_0x0071657f:    cmp.s              eax, ebx                                      // 0x0071657f    3bc3
                         {disp8} je         _jmp_addr_0x0071658c                          // 0x00716581    7409
                         {disp8} mov        esi, dword ptr [eax + 0x04]                   // 0x00716583    8b7004
                         cmp.s              esi, ebx                                      // 0x00716586    3bf3
                         {disp8} je         _jmp_addr_0x0071658e                          // 0x00716588    7404
                         {disp8} jmp        _jmp_addr_0x00716560                          // 0x0071658a    ebd4
_jmp_addr_0x0071658c:    xor.s              esi, esi                                      // 0x0071658c    33f6
_jmp_addr_0x0071658e:    {disp32} mov       edx, dword ptr [ebp + 0x0000600c]             // 0x0071658e    8b950c600000
                         push               edx                                           // 0x00716594    52
                         call               ?FindTownWithID@GGame@@QAEPAVTown@@K@Z        // 0x00716595    e806cae3ff
                         {disp32} mov       ecx, dword ptr [ebp + 0x00006010]             // 0x0071659a    8b8d10600000
                         push               ecx                                           // 0x007165a0    51
                         push               esi                                           // 0x007165a1    56
                         push               eax                                           // 0x007165a2    50
                         {disp32} mov       eax, dword ptr [ebp + 0x00006004]             // 0x007165a3    8b8504600000
                         lea                ecx, dword ptr [eax + eax * 0x4]              // 0x007165a9    8d0c80
                         lea                edx, dword ptr [ecx + ecx * 0x8]              // 0x007165ac    8d14c9
                         shl                edx, 2                                        // 0x007165af    c1e202
                         sub.s              edx, eax                                      // 0x007165b2    2bd0
                         {disp32} lea       eax, dword ptr [edx * 0x4 + 0x00c4d030]       // 0x007165b4    8d049530d0c400
                         push               eax                                           // 0x007165bb    50
                         push               ebp                                           // 0x007165bc    55
                         {disp32} lea       ecx, dword ptr [esp + 0x000001c8]             // 0x007165bd    8d8c24c8010000
                         push               ecx                                           // 0x007165c4    51
                         {disp32} jmp       _jmp_addr_0x0071651b                          // 0x007165c5    e951ffffff
                         {disp32} mov       ecx, dword ptr [ebp + 0x00006004]             // 0x007165ca    8b8d04600000
                         push               ebx                                           // 0x007165d0    53
                         mov.s              eax, ecx                                      // 0x007165d1    8bc1
                         push               0x3f800000                                    // 0x007165d3    680000803f
                         shl                eax, 4                                        // 0x007165d8    c1e004
                         add.s              eax, ecx                                      // 0x007165db    03c1
                         push               ebx                                           // 0x007165dd    53
                         push               ebx                                           // 0x007165de    53
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x007165df    8d1480
                         {disp32} lea       eax, dword ptr [edx * 0x4 + _GFieldTypeInfo_00ccf070]       // 0x007165e2    8d049570f0cc00
                         push               eax                                           // 0x007165e9    50
                         push               ebp                                           // 0x007165ea    55
                         {disp32} lea       ecx, dword ptr [esp + 0x0000037c]             // 0x007165eb    8d8c247c030000
                         push               ecx                                           // 0x007165f2    51
_jmp_addr_0x007165f3:    call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x007165f3    e8581c0000
                         add                esp, 0x08                                     // 0x007165f8    83c408
                         push               eax                                           // 0x007165fb    50
                         call               ?Create@Field@@SAPAV1@ABUMapCoords@@PBVGFieldTypeInfo@@PAVTown@@MMH@Z            // 0x007165fc    e87f1ce1ff
                         add                esp, 0x18                                     // 0x00716601    83c418
                         {disp32} mov       dword ptr [_PTR_00d99384], eax                // 0x00716604    a38493d900
                         xor.s              eax, eax                                      // 0x00716609    33c0
                         pop                edi                                           // 0x0071660b    5f
                         pop                esi                                           // 0x0071660c    5e
                         pop                ebp                                           // 0x0071660d    5d
                         pop                ebx                                           // 0x0071660e    5b
                         add                esp, 0x00000654                               // 0x0071660f    81c454060000
                         ret                                                              // 0x00716615    c3
                         {disp32} lea       edx, dword ptr [esp + 0x000001cc]             // 0x00716616    8d9424cc010000
                         push               ebp                                           // 0x0071661d    55
                         push               edx                                           // 0x0071661e    52
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x0071661f    e82c1c0000
                         push               eax                                           // 0x00716624    50
                         call               _jmp_addr_0x00770bc0                          // 0x00716625    e896a50500
                         add                esp, 0x0c                                     // 0x0071662a    83c40c
                         {disp32} mov       dword ptr [_PTR_00d99384], eax                // 0x0071662d    a38493d900
                         xor.s              eax, eax                                      // 0x00716632    33c0
                         pop                edi                                           // 0x00716634    5f
                         pop                esi                                           // 0x00716635    5e
                         pop                ebp                                           // 0x00716636    5d
                         pop                ebx                                           // 0x00716637    5b
                         add                esp, 0x00000654                               // 0x00716638    81c454060000
                         ret                                                              // 0x0071663e    c3
                         {disp32} mov       eax, dword ptr [ebp + 0x00006000]             // 0x0071663f    8b8500600000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00716645    8b0d5c19d000
                         push               eax                                           // 0x0071664b    50
                         call               ?FindTownWithID@GGame@@QAEPAVTown@@K@Z        // 0x0071664c    e84fc9e3ff
                         cmp.s              eax, ebx                                      // 0x00716651    3bc3
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x00716653    0f8431180000
                         {disp32} mov       ecx, dword ptr [ebp + 0x00006008]             // 0x00716659    8b8d08600000
                         push               ebx                                           // 0x0071665f    53
                         push               0x3f800000                                    // 0x00716660    680000803f
                         push               ebx                                           // 0x00716665    53
                         push               eax                                           // 0x00716666    50
                         mov.s              eax, ecx                                      // 0x00716667    8bc1
                         shl                eax, 4                                        // 0x00716669    c1e004
                         add.s              eax, ecx                                      // 0x0071666c    03c1
                         lea                ecx, dword ptr [eax + eax * 0x4]              // 0x0071666e    8d0c80
                         {disp32} lea       edx, dword ptr [ecx * 0x4 + _GFieldTypeInfo_00ccf070]       // 0x00716671    8d148d70f0cc00
                         push               edx                                           // 0x00716678    52
                         add                ebp, 0x00000800                               // 0x00716679    81c500080000
                         push               ebp                                           // 0x0071667f    55
                         {disp32} lea       eax, dword ptr [esp + 0x000002d4]             // 0x00716680    8d8424d4020000
                         push               eax                                           // 0x00716687    50
                         {disp32} jmp       _jmp_addr_0x007165f3                          // 0x00716688    e966ffffff
                         {disp32} mov       ecx, dword ptr [ebp + 0x00006000]             // 0x0071668d    8b8d00600000
                         push               ecx                                           // 0x00716693    51
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00716694    8b0d5c19d000
                         call               ?FindTownWithID@GGame@@QAEPAVTown@@K@Z        // 0x0071669a    e801c9e3ff
                         cmp.s              eax, ebx                                      // 0x0071669f    3bc3
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x007166a1    0f84e3170000
                         {disp32} mov       edx, dword ptr [ebp + 0x0000603c]             // 0x007166a7    8b953c600000
                         {disp32} mov       ecx, dword ptr [ebp + 0x00006008]             // 0x007166ad    8b8d08600000
                         push               ebx                                           // 0x007166b3    53
                         push               0x3f800000                                    // 0x007166b4    680000803f
                         push               edx                                           // 0x007166b9    52
                         push               eax                                           // 0x007166ba    50
                         mov.s              eax, ecx                                      // 0x007166bb    8bc1
                         shl                eax, 4                                        // 0x007166bd    c1e004
                         add.s              eax, ecx                                      // 0x007166c0    03c1
                         lea                eax, dword ptr [eax + eax * 0x4]              // 0x007166c2    8d0480
                         {disp32} lea       ecx, dword ptr [eax * 0x4 + _GFieldTypeInfo_00ccf070]       // 0x007166c5    8d0c8570f0cc00
                         push               ecx                                           // 0x007166cc    51
                         add                ebp, 0x00000800                               // 0x007166cd    81c500080000
                         push               ebp                                           // 0x007166d3    55
                         {disp32} lea       edx, dword ptr [esp + 0x000001fc]             // 0x007166d4    8d9424fc010000
                         push               edx                                           // 0x007166db    52
                         {disp32} jmp       _jmp_addr_0x007165f3                          // 0x007166dc    e912ffffff
                         {disp32} mov       eax, dword ptr [ebp + 0x00006004]             // 0x007166e1    8b8504600000
                         lea                ecx, dword ptr [eax + eax * 0x8]              // 0x007166e7    8d0cc0
                         lea                edx, dword ptr [eax + ecx * 0x4]              // 0x007166ea    8d1488
                         push               ebx                                           // 0x007166ed    53
                         {disp32} lea       eax, dword ptr [edx * 0x8 + 0x00ccfc78]       // 0x007166ee    8d04d578fccc00
                         push               eax                                           // 0x007166f5    50
                         push               ebp                                           // 0x007166f6    55
                         {disp32} lea       ecx, dword ptr [esp + 0x00000340]             // 0x007166f7    8d8c2440030000
_jmp_addr_0x007166fe:    push               ecx                                           // 0x007166fe    51
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x007166ff    e84c1b0000
                         add                esp, 0x08                                     // 0x00716704    83c408
                         push               eax                                           // 0x00716707    50
                         call               _jmp_addr_0x0052c7b0                          // 0x00716708    e8a360e1ff
                         add                esp, 0x0c                                     // 0x0071670d    83c40c
                         {disp32} mov       dword ptr [_PTR_00d99384], eax                // 0x00716710    a38493d900
                         xor.s              eax, eax                                      // 0x00716715    33c0
                         pop                edi                                           // 0x00716717    5f
                         pop                esi                                           // 0x00716718    5e
                         pop                ebp                                           // 0x00716719    5d
                         pop                ebx                                           // 0x0071671a    5b
                         add                esp, 0x00000654                               // 0x0071671b    81c454060000
                         ret                                                              // 0x00716721    c3
                         {disp32} mov       edx, dword ptr [ebp + 0x00006000]             // 0x00716722    8b9500600000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00716728    8b0d5c19d000
                         push               edx                                           // 0x0071672e    52
                         call               ?FindTownWithID@GGame@@QAEPAVTown@@K@Z        // 0x0071672f    e86cc8e3ff
                         cmp.s              eax, ebx                                      // 0x00716734    3bc3
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x00716736    0f844e170000
                         push               eax                                           // 0x0071673c    50
                         {disp32} mov       eax, dword ptr [ebp + 0x00006008]             // 0x0071673d    8b8508600000
                         lea                ecx, dword ptr [eax + eax * 0x8]              // 0x00716743    8d0cc0
                         lea                edx, dword ptr [eax + ecx * 0x4]              // 0x00716746    8d1488
                         {disp32} lea       eax, dword ptr [edx * 0x8 + 0x00ccfc78]       // 0x00716749    8d04d578fccc00
                         push               eax                                           // 0x00716750    50
                         add                ebp, 0x00000800                               // 0x00716751    81c500080000
                         push               ebp                                           // 0x00716757    55
                         {disp32} lea       ecx, dword ptr [esp + 0x000000ac]             // 0x00716758    8d8c24ac000000
                         {disp8} jmp        _jmp_addr_0x007166fe                          // 0x0071675f    eb9d
                         cmp                dword ptr [ebp + 0x00006010], ebx             // 0x00716761    399d10600000
                         {disp8} je         _jmp_addr_0x007167e7                          // 0x00716767    747e
                         push               0x000003ce                                    // 0x00716769    68ce030000
                         push               0x00c21fe8                                    // 0x0071676e    68e81fc200
                         push               0x4c                                          // 0x00716773    6a4c
                         call               ?__nw@Base@@SAPAXK@Z                          // 0x00716775    e876ffd1ff
                         mov.s              esi, eax                                      // 0x0071677a    8bf0
                         add                esp, 0x0c                                     // 0x0071677c    83c40c
                         cmp.s              esi, ebx                                      // 0x0071677f    3bf3
                         {disp32} je        _jmp_addr_0x00715419                          // 0x00716781    0f8492ecffff
                         {disp32} fild      dword ptr [ebp + 0x0000600c]                  // 0x00716787    db850c600000
                         {disp32} mov       eax, dword ptr [ebp + 0x00006004]             // 0x0071678d    8b8504600000
                         push               ecx                                           // 0x00716793    51
                         lea                edx, dword ptr [eax + eax * 0x8]              // 0x00716794    8d14c0
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3418]              // 0x00716797    d80d18c48a00
                         lea                eax, dword ptr [eax + edx * 0x8]              // 0x0071679d    8d04d0
                         {disp32} lea       edx, dword ptr [esp + 0x000002d8]             // 0x007167a0    8d9424d8020000
                         fstp               dword ptr [esp]                               // 0x007167a7    d91c24
                         push               ecx                                           // 0x007167aa    51
                         {disp32} fild      dword ptr [ebp + 0x00006008]                  // 0x007167ab    db8508600000
                         {disp32} lea       ecx, dword ptr [eax * 0x4 + 0x00cc99a0]       // 0x007167b1    8d0c85a099cc00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3418]              // 0x007167b8    d80d18c48a00
                         fstp               dword ptr [esp]                               // 0x007167be    d91c24
                         push               ebx                                           // 0x007167c1    53
                         push               ecx                                           // 0x007167c2    51
                         push               ebp                                           // 0x007167c3    55
                         push               edx                                           // 0x007167c4    52
_jmp_addr_0x007167c5:    call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x007167c5    e8861a0000
                         add                esp, 0x08                                     // 0x007167ca    83c408
                         push               eax                                           // 0x007167cd    50
                         mov.s              ecx, esi                                      // 0x007167ce    8bce
                         call               _jmp_addr_0x00527440                          // 0x007167d0    e86b0ce1ff
                         {disp32} mov       dword ptr [_PTR_00d99384], eax                // 0x007167d5    a38493d900
                         xor.s              eax, eax                                      // 0x007167da    33c0
                         pop                edi                                           // 0x007167dc    5f
                         pop                esi                                           // 0x007167dd    5e
                         pop                ebp                                           // 0x007167de    5d
                         pop                ebx                                           // 0x007167df    5b
                         add                esp, 0x00000654                               // 0x007167e0    81c454060000
                         ret                                                              // 0x007167e6    c3
_jmp_addr_0x007167e7:    {disp32} fild      dword ptr [ebp + 0x0000600c]                  // 0x007167e7    db850c600000
                         {disp32} mov       eax, dword ptr [ebp + 0x00006004]             // 0x007167ed    8b8504600000
                         push               ebx                                           // 0x007167f3    53
                         push               0x3f800000                                    // 0x007167f4    680000803f
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3418]              // 0x007167f9    d80d18c48a00
                         push               ecx                                           // 0x007167ff    51
                         fstp               dword ptr [esp]                               // 0x00716800    d91c24
                         push               ecx                                           // 0x00716803    51
                         {disp32} fild      dword ptr [ebp + 0x00006008]                  // 0x00716804    db8508600000
                         lea                ecx, dword ptr [eax + eax * 0x8]              // 0x0071680a    8d0cc0
                         lea                edx, dword ptr [eax + ecx * 0x8]              // 0x0071680d    8d14c8
                         {disp32} lea       eax, dword ptr [edx * 0x4 + 0x00cc99a0]       // 0x00716810    8d0495a099cc00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3418]              // 0x00716817    d80d18c48a00
                         {disp32} lea       ecx, dword ptr [esp + 0x00000224]             // 0x0071681d    8d8c2424020000
                         fstp               dword ptr [esp]                               // 0x00716824    d91c24
                         push               eax                                           // 0x00716827    50
                         push               ebp                                           // 0x00716828    55
                         {disp32} jmp       _jmp_addr_0x00716a27                          // 0x00716829    e9f9010000
                         {disp32} mov       edx, dword ptr [ebp + 0x0000603c]             // 0x0071682e    8b953c600000
                         {disp32} mov       eax, dword ptr [ebp + 0x00006038]             // 0x00716834    8b8538600000
                         push               edx                                           // 0x0071683a    52
                         push               eax                                           // 0x0071683b    50
                         {disp32} mov       eax, dword ptr [ebp + 0x00006004]             // 0x0071683c    8b8504600000
                         lea                ecx, dword ptr [eax + eax * 0x8]              // 0x00716842    8d0cc0
                         lea                edx, dword ptr [eax + ecx * 0x4]              // 0x00716845    8d1488
                         {disp32} lea       eax, dword ptr [edx * 0x8 + 0x00cc9748]       // 0x00716848    8d04d54897cc00
                         push               eax                                           // 0x0071684f    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00000394]             // 0x00716850    8d8c2494030000
                         push               ebp                                           // 0x00716857    55
                         push               ecx                                           // 0x00716858    51
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x00716859    e8f2190000
                         add                esp, 0x08                                     // 0x0071685e    83c408
                         push               eax                                           // 0x00716861    50
                         call               _jmp_addr_0x005279e0                          // 0x00716862    e87911e1ff
                         add                esp, 0x10                                     // 0x00716867    83c410
                         {disp32} mov       dword ptr [_DAT_00d99380], eax                // 0x0071686a    a38093d900
                         {disp32} mov       dword ptr [_PTR_00d99384], eax                // 0x0071686f    a38493d900
                         xor.s              eax, eax                                      // 0x00716874    33c0
                         pop                edi                                           // 0x00716876    5f
                         pop                esi                                           // 0x00716877    5e
                         pop                ebp                                           // 0x00716878    5d
                         pop                ebx                                           // 0x00716879    5b
                         add                esp, 0x00000654                               // 0x0071687a    81c454060000
                         ret                                                              // 0x00716880    c3
                         {disp32} lea       edx, dword ptr [ebp + 0x00001000]             // 0x00716881    8d9500100000
                         push               edx                                           // 0x00716887    52
                         call               ?GetInfoFromText@GAbodeInfo@@SAHPAD@Z         // 0x00716888    e8e3f1ceff
                         lea                ecx, dword ptr [eax + eax * 0x8]              // 0x0071688d    8d0cc0
                         lea                eax, dword ptr [eax + ecx * 0x2]              // 0x00716890    8d0448
                         lea                edx, dword ptr [eax + eax * 0x2]              // 0x00716893    8d1440
                         {disp32} lea       eax, dword ptr [ebp + 0x00000800]             // 0x00716896    8d8500080000
                         push               eax                                           // 0x0071689c    50
                         {disp8} lea        ecx, dword ptr [esp + 0x48]                   // 0x0071689d    8d4c2448
                         push               ecx                                           // 0x007168a1    51
                         {disp32} lea       esi, dword ptr [edx * 0x8 + _AbodeInfos]      // 0x007168a2    8d34d590c6c300
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x007168a9    e8a2190000
                         {disp32} mov       edx, dword ptr [ebp + 0x00006040]             // 0x007168ae    8b9540600000
                         {disp32} mov       eax, dword ptr [ebp + 0x00006044]             // 0x007168b4    8b8544600000
                         {disp32} lea       ecx, dword ptr [ebp + 0x00001800]             // 0x007168ba    8d8d00180000
                         push               ecx                                           // 0x007168c0    51
                         {disp8} mov        dword ptr [esp + 0x20], edx                   // 0x007168c1    89542420
                         {disp8} mov        dword ptr [esp + 0x38], eax                   // 0x007168c5    89442438
                         call               ?GetInfoFromText@GMagicInfo@@SAHPAD@Z         // 0x007168c9    e8e24aeeff
                         {disp32} mov       edx, dword ptr [ebp + 0x00006000]             // 0x007168ce    8b9500600000
                         {disp32} mov       ecx, dword ptr [_game]                  // 0x007168d4    8b0d5c19d000
                         add                esp, 0x10                                     // 0x007168da    83c410
                         push               edx                                           // 0x007168dd    52
                         mov.s              edi, eax                                      // 0x007168de    8bf8
                         call               ?FindTownWithID@GGame@@QAEPAVTown@@K@Z        // 0x007168e0    e8bbc6e3ff
                         cmp.s              eax, ebx                                      // 0x007168e5    3bc3
                         {disp32} mov       ecx, dword ptr [ebp + 0x00006048]             // 0x007168e7    8b8d48600000
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x007168ed    894c2420
                         {disp8} jne        _jmp_addr_0x00716903                          // 0x007168f1    7510
                         {disp32} mov       ecx, dword ptr [_game]                  // 0x007168f3    8b0d5c19d000
                         {disp8} lea        edx, dword ptr [esp + 0x40]                   // 0x007168f9    8d542440
                         push               edx                                           // 0x007168fd    52
                         call               _jmp_addr_0x00552ff0                          // 0x007168fe    e8edc6e3ff
_jmp_addr_0x00716903:    {disp8} mov        ecx, dword ptr [esp + 0x28]                   // 0x00716903    8b4c2428
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x00716907    8b542410
                         push               ebx                                           // 0x0071690b    53
                         push               0x3f800000                                    // 0x0071690c    680000803f
                         push               ecx                                           // 0x00716911    51
                         push               edx                                           // 0x00716912    52
                         push               eax                                           // 0x00716913    50
                         {disp8} lea        eax, dword ptr [esp + 0x54]                   // 0x00716914    8d442454
                         push               esi                                           // 0x00716918    56
                         push               eax                                           // 0x00716919    50
                         call               _jmp_addr_0x007228d0                          // 0x0071691a    e8b1bf0000
                         mov.s              esi, eax                                      // 0x0071691f    8bf0
                         add                esp, 0x1c                                     // 0x00716921    83c41c
                         cmp.s              esi, ebx                                      // 0x00716924    3bf3
                         {disp32} mov       dword ptr [_DAT_00d99380], esi                // 0x00716926    89358093d900
                         {disp32} mov       dword ptr [_PTR_00d99384], esi                // 0x0071692c    89358493d900
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x00716932    0f8452150000
                         push               0x1                                           // 0x00716938    6a01
                         mov.s              ecx, esi                                      // 0x0071693a    8bce
                         {disp32} mov       dword ptr [esi + 0x000000d4], edi             // 0x0071693c    89bed4000000
                         call               _jmp_addr_0x00723030                          // 0x00716942    e8e9c60000
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x00716947    d9442420
                         call               _jmp_addr_0x007a1400                          // 0x0071694b    e8b0aa0800
                         cmp.s              eax, ebx                                      // 0x00716950    3bc3
                         {disp32} mov       dword ptr [esi + 0x000000c8], eax             // 0x00716952    8986c8000000
                         {disp32} jne       _jmp_addr_0x00717e8a                          // 0x00716958    0f852c150000
                         push               ebx                                           // 0x0071695e    53
                         mov.s              ecx, esi                                      // 0x0071695f    8bce
                         call               _jmp_addr_0x00723030                          // 0x00716961    e8cac60000
                         xor.s              eax, eax                                      // 0x00716966    33c0
                         pop                edi                                           // 0x00716968    5f
                         pop                esi                                           // 0x00716969    5e
                         pop                ebp                                           // 0x0071696a    5d
                         pop                ebx                                           // 0x0071696b    5b
                         add                esp, 0x00000654                               // 0x0071696c    81c454060000
                         ret                                                              // 0x00716972    c3
                         cmp                dword ptr [ebp + 0x00006010], ebx             // 0x00716973    399d10600000
                         {disp8} je         _jmp_addr_0x007169dc                          // 0x00716979    7461
                         push               0x000003f3                                    // 0x0071697b    68f3030000
                         push               0x00c21fe8                                    // 0x00716980    68e81fc200
                         push               0x4c                                          // 0x00716985    6a4c
                         call               ?__nw@Base@@SAPAXK@Z                          // 0x00716987    e864fdd1ff
                         mov.s              esi, eax                                      // 0x0071698c    8bf0
                         add                esp, 0x0c                                     // 0x0071698e    83c40c
                         cmp.s              esi, ebx                                      // 0x00716991    3bf3
                         {disp32} je        _jmp_addr_0x00715419                          // 0x00716993    0f8480eaffff
                         {disp32} fild      dword ptr [ebp + 0x0000600c]                  // 0x00716999    db850c600000
                         {disp32} mov       eax, dword ptr [ebp + 0x00006004]             // 0x0071699f    8b8504600000
                         push               ecx                                           // 0x007169a5    51
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3418]              // 0x007169a6    d80d18c48a00
                         fstp               dword ptr [esp]                               // 0x007169ac    d91c24
                         push               ecx                                           // 0x007169af    51
                         {disp32} fild      dword ptr [ebp + 0x00006008]                  // 0x007169b0    db8508600000
                         lea                ecx, dword ptr [eax + eax * 0x8]              // 0x007169b6    8d0cc0
                         lea                edx, dword ptr [eax + ecx * 0x8]              // 0x007169b9    8d14c8
                         {disp32} lea       eax, dword ptr [edx * 0x4 + 0x00cc99a0]       // 0x007169bc    8d0495a099cc00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3418]              // 0x007169c3    d80d18c48a00
                         {disp32} lea       ecx, dword ptr [esp + 0x000000b4]             // 0x007169c9    8d8c24b4000000
                         fstp               dword ptr [esp]                               // 0x007169d0    d91c24
                         push               ebx                                           // 0x007169d3    53
                         push               eax                                           // 0x007169d4    50
                         push               ebp                                           // 0x007169d5    55
                         push               ecx                                           // 0x007169d6    51
                         {disp32} jmp       _jmp_addr_0x007167c5                          // 0x007169d7    e9e9fdffff
_jmp_addr_0x007169dc:    {disp32} fild      dword ptr [ebp + 0x0000600c]                  // 0x007169dc    db850c600000
                         push               ebx                                           // 0x007169e2    53
                         push               0x3f800000                                    // 0x007169e3    680000803f
                         push               ecx                                           // 0x007169e8    51
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3418]              // 0x007169e9    d80d18c48a00
                         {disp32} lea       edx, dword ptr [ebp + 0x00000800]             // 0x007169ef    8d9500080000
                         fstp               dword ptr [esp]                               // 0x007169f5    d91c24
                         push               ecx                                           // 0x007169f8    51
                         {disp32} fild      dword ptr [ebp + 0x00006008]                  // 0x007169f9    db8508600000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3418]              // 0x007169ff    d80d18c48a00
                         fstp               dword ptr [esp]                               // 0x00716a05    d91c24
                         push               edx                                           // 0x00716a08    52
                         call               _jmp_addr_0x00527740                          // 0x00716a09    e8320de1ff
                         lea                ecx, dword ptr [eax + eax * 0x8]              // 0x00716a0e    8d0cc0
                         lea                edx, dword ptr [eax + ecx * 0x8]              // 0x00716a11    8d14c8
                         add                esp, 0x04                                     // 0x00716a14    83c404
                         {disp32} lea       eax, dword ptr [edx * 0x4 + 0x00cc99a0]       // 0x00716a17    8d0495a099cc00
                         push               eax                                           // 0x00716a1e    50
                         push               ebp                                           // 0x00716a1f    55
                         {disp32} lea       ecx, dword ptr [esp + 0x000000d0]             // 0x00716a20    8d8c24d0000000
_jmp_addr_0x00716a27:    push               ecx                                           // 0x00716a27    51
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x00716a28    e823180000
                         add                esp, 0x08                                     // 0x00716a2d    83c408
                         push               eax                                           // 0x00716a30    50
                         call               _jmp_addr_0x00527350                          // 0x00716a31    e81a09e1ff
                         add                esp, 0x18                                     // 0x00716a36    83c418
_jmp_addr_0x00716a39:    {disp32} mov       dword ptr [_DAT_00d99380], eax                // 0x00716a39    a38093d900
                         {disp32} mov       dword ptr [_PTR_00d99384], eax                // 0x00716a3e    a38493d900
                         xor.s              eax, eax                                      // 0x00716a43    33c0
                         pop                edi                                           // 0x00716a45    5f
                         pop                esi                                           // 0x00716a46    5e
                         pop                ebp                                           // 0x00716a47    5d
                         pop                ebx                                           // 0x00716a48    5b
                         add                esp, 0x00000654                               // 0x00716a49    81c454060000
                         ret                                                              // 0x00716a4f    c3
                         {disp32} fild      dword ptr [ebp + 0x0000600c]                  // 0x00716a50    db850c600000
                         push               ebx                                           // 0x00716a56    53
                         push               0x3f800000                                    // 0x00716a57    680000803f
                         push               ecx                                           // 0x00716a5c    51
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3418]              // 0x00716a5d    d80d18c48a00
                         {disp32} lea       edx, dword ptr [ebp + 0x00000800]             // 0x00716a63    8d9500080000
                         fstp               dword ptr [esp]                               // 0x00716a69    d91c24
                         push               ecx                                           // 0x00716a6c    51
                         {disp32} fild      dword ptr [ebp + 0x00006008]                  // 0x00716a6d    db8508600000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3418]              // 0x00716a73    d80d18c48a00
                         fstp               dword ptr [esp]                               // 0x00716a79    d91c24
                         push               edx                                           // 0x00716a7c    52
                         call               _jmp_addr_0x00422600                          // 0x00716a7d    e87ebbd0ff
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x00716a82    8d0440
                         lea                eax, dword ptr [eax + eax * 0x4]              // 0x00716a85    8d0480
                         lea                eax, dword ptr [eax + eax * 0x4]              // 0x00716a88    8d0480
                         add                esp, 0x04                                     // 0x00716a8b    83c404
                         {disp32} lea       ecx, dword ptr [eax * 0x4 + 0x00c54d30]       // 0x00716a8e    8d0c85304dc500
                         push               ecx                                           // 0x00716a95    51
                         {disp32} lea       edx, dword ptr [esp + 0x000000e4]             // 0x00716a96    8d9424e4000000
                         push               ebp                                           // 0x00716a9d    55
                         push               edx                                           // 0x00716a9e    52
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x00716a9f    e8ac170000
                         add                esp, 0x08                                     // 0x00716aa4    83c408
                         push               eax                                           // 0x00716aa7    50
                         call               _jmp_addr_0x00421f50                          // 0x00716aa8    e8a3b4d0ff
                         add                esp, 0x18                                     // 0x00716aad    83c418
                         {disp32} mov       dword ptr [_DAT_00d99380], eax                // 0x00716ab0    a38093d900
                         {disp32} mov       dword ptr [_PTR_00d99384], eax                // 0x00716ab5    a38493d900
                         xor.s              eax, eax                                      // 0x00716aba    33c0
                         pop                edi                                           // 0x00716abc    5f
                         pop                esi                                           // 0x00716abd    5e
                         pop                ebp                                           // 0x00716abe    5d
                         pop                ebx                                           // 0x00716abf    5b
                         add                esp, 0x00000654                               // 0x00716ac0    81c454060000
                         ret                                                              // 0x00716ac6    c3
                         {disp32} lea       eax, dword ptr [esp + 0x000000e8]             // 0x00716ac7    8d8424e8000000
                         push               ebp                                           // 0x00716ace    55
                         push               eax                                           // 0x00716acf    50
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x00716ad0    e87b170000
                         mov                ecx, dword ptr [eax]                          // 0x00716ad5    8b08
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                   // 0x00716ad7    894c241c
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x00716adb    8b5004
                         {disp8} mov        dword ptr [esp + 0x20], edx                   // 0x00716ade    89542420
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00716ae2    8b4008
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x00716ae5    89442424
                         {disp32} mov       eax, dword ptr [ebp + 0x00006004]             // 0x00716ae9    8b8504600000
                         add                esp, 0x08                                     // 0x00716aef    83c408
                         lea                eax, dword ptr [eax + eax * 0x8]              // 0x00716af2    8d04c0
                         lea                ecx, dword ptr [eax + eax * 0x8]              // 0x00716af5    8d0cc0
                         push               0x3f800000                                    // 0x00716af8    680000803f
                         {disp32} lea       esi, dword ptr [ecx * 0x4 + 0x00d4c660]       // 0x00716afd    8d348d60c6d400
                         push               ebx                                           // 0x00716b04    53
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                   // 0x00716b05    8d54241c
                         push               edx                                           // 0x00716b09    52
                         mov.s              ecx, esi                                      // 0x00716b0a    8bce
                         call               _jmp_addr_0x00638c40                          // 0x00716b0c    e82f21f2ff
                         test               eax, eax                                      // 0x00716b11    85c0
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x00716b13    0f8471130000
                         {disp32} mov       ebp, dword ptr [ebp + 0x0000600c]             // 0x00716b19    8bad0c600000
                         cmp.s              ebp, ebx                                      // 0x00716b1f    3beb
                         {disp32} jle       _jmp_addr_0x00717e8a                          // 0x00716b21    0f8e63130000
                         push               ebx                                           // 0x00716b27    53
                         push               0x3f800000                                    // 0x00716b28    680000803f
                         push               ebx                                           // 0x00716b2d    53
                         push               0x1                                           // 0x00716b2e    6a01
                         push               ebx                                           // 0x00716b30    53
                         push               ebx                                           // 0x00716b31    53
                         push               ebp                                           // 0x00716b32    55
                         {disp8} lea        eax, dword ptr [esp + 0x30]                   // 0x00716b33    8d442430
                         push               esi                                           // 0x00716b37    56
                         push               eax                                           // 0x00716b38    50
                         call               _jmp_addr_0x0066cf10                          // 0x00716b39    e8d263f5ff
                         add                esp, 0x24                                     // 0x00716b3e    83c424
                         {disp32} mov       dword ptr [_DAT_00d99380], eax                // 0x00716b41    a38093d900
                         {disp32} mov       dword ptr [_PTR_00d99384], eax                // 0x00716b46    a38493d900
                         xor.s              eax, eax                                      // 0x00716b4b    33c0
                         pop                edi                                           // 0x00716b4d    5f
                         pop                esi                                           // 0x00716b4e    5e
                         pop                ebp                                           // 0x00716b4f    5d
                         pop                ebx                                           // 0x00716b50    5b
                         add                esp, 0x00000654                               // 0x00716b51    81c454060000
                         ret                                                              // 0x00716b57    c3
                         {disp32} mov       ecx, dword ptr [ebp + 0x00006000]             // 0x00716b58    8b8d00600000
                         push               ecx                                           // 0x00716b5e    51
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00716b5f    8b0d5c19d000
                         call               ?FindTownWithID@GGame@@QAEPAVTown@@K@Z        // 0x00716b65    e836c4e3ff
                         mov.s              edi, eax                                      // 0x00716b6a    8bf8
                         cmp.s              edi, ebx                                      // 0x00716b6c    3bfb
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x00716b6e    0f8416130000
                         push               ebx                                           // 0x00716b74    53
                         {disp8} lea        edx, dword ptr [esp + 0x38]                   // 0x00716b75    8d542438
                         push               edx                                           // 0x00716b79    52
                         {disp8} lea        eax, dword ptr [esp + 0x30]                   // 0x00716b7a    8d442430
                         push               eax                                           // 0x00716b7e    50
                         mov.s              ecx, edi                                      // 0x00716b7f    8bcf
                         {disp8} mov        dword ptr [esp + 0x34], ebx                   // 0x00716b81    895c2434
                         {disp8} mov        dword ptr [esp + 0x38], ebx                   // 0x00716b85    895c2438
                         {disp8} mov        dword ptr [esp + 0x3c], 0x00000000            // 0x00716b89    c744243c00000000
                         {disp8} mov        dword ptr [esp + 0x40], ebx                   // 0x00716b91    895c2440
                         {disp8} mov        dword ptr [esp + 0x44], ebx                   // 0x00716b95    895c2444
                         {disp8} mov        dword ptr [esp + 0x48], 0x00000000            // 0x00716b99    c744244800000000
                         call               ?GetTemporaryResourceStorePotOrPos@Town@@QAEPAXABUMapCoords@@AAU2@W4RESOURCE_TYPE@@@Z                          // 0x00716ba1    e85a7d0200
                         push               0x1                                           // 0x00716ba6    6a01
                         {disp8} lea        ecx, dword ptr [esp + 0x38]                   // 0x00716ba8    8d4c2438
                         push               ecx                                           // 0x00716bac    51
                         {disp8} lea        edx, dword ptr [esp + 0x30]                   // 0x00716bad    8d542430
                         push               edx                                           // 0x00716bb1    52
                         mov.s              ecx, edi                                      // 0x00716bb2    8bcf
                         mov.s              esi, eax                                      // 0x00716bb4    8bf0
                         call               ?GetTemporaryResourceStorePotOrPos@Town@@QAEPAXABUMapCoords@@AAU2@W4RESOURCE_TYPE@@@Z                          // 0x00716bb6    e8457d0200
                         cmp.s              esi, ebx                                      // 0x00716bbb    3bf3
                         mov.s              edi, eax                                      // 0x00716bbd    8bf8
                         {disp8} je         _jmp_addr_0x00716bd7                          // 0x00716bbf    7416
                         {disp32} mov       ecx, dword ptr [ebp + 0x00006004]             // 0x00716bc1    8b8d04600000
                         mov                eax, dword ptr [esi]                          // 0x00716bc7    8b06
                         push               ebx                                           // 0x00716bc9    53
                         push               ebx                                           // 0x00716bca    53
                         push               ebx                                           // 0x00716bcb    53
                         push               ebx                                           // 0x00716bcc    53
                         push               ecx                                           // 0x00716bcd    51
                         push               ebx                                           // 0x00716bce    53
                         mov.s              ecx, esi                                      // 0x00716bcf    8bce
                         call               dword ptr [eax + 0x9c]                        // 0x00716bd1    ff909c000000
_jmp_addr_0x00716bd7:    cmp.s              edi, ebx                                      // 0x00716bd7    3bfb
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x00716bd9    0f84ab120000
                         {disp32} mov       eax, dword ptr [ebp + 0x00006008]             // 0x00716bdf    8b8508600000
                         mov                edx, dword ptr [edi]                          // 0x00716be5    8b17
                         push               ebx                                           // 0x00716be7    53
                         push               ebx                                           // 0x00716be8    53
                         push               ebx                                           // 0x00716be9    53
                         push               ebx                                           // 0x00716bea    53
                         push               eax                                           // 0x00716beb    50
                         push               0x1                                           // 0x00716bec    6a01
                         mov.s              ecx, edi                                      // 0x00716bee    8bcf
                         call               dword ptr [edx + 0x9c]                        // 0x00716bf0    ff929c000000
                         xor.s              eax, eax                                      // 0x00716bf6    33c0
                         pop                edi                                           // 0x00716bf8    5f
                         pop                esi                                           // 0x00716bf9    5e
                         pop                ebp                                           // 0x00716bfa    5d
                         pop                ebx                                           // 0x00716bfb    5b
                         add                esp, 0x00000654                               // 0x00716bfc    81c454060000
                         ret                                                              // 0x00716c02    c3
                         {disp32} lea       ecx, dword ptr [esp + 0x00000100]             // 0x00716c03    8d8c2400010000
                         push               ebp                                           // 0x00716c0a    55
                         push               ecx                                           // 0x00716c0b    51
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x00716c0c    e83f160000
                         {disp32} fild      dword ptr [ebp + 0x00006008]                  // 0x00716c11    db8508600000
                         mov                edx, dword ptr [eax]                          // 0x00716c17    8b10
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x00716c19    8954241c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3418]              // 0x00716c1d    d80d18c48a00
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x00716c23    8b4804
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x00716c26    894c2420
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x00716c2a    8b5008
                         {disp32} mov       ecx, dword ptr [ebp + 0x00006004]             // 0x00716c2d    8b8d04600000
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x00716c33    d95c2418
                         {disp32} fild      dword ptr [ebp + 0x0000600c]                  // 0x00716c37    db850c600000
                         {disp8} mov        ebp, dword ptr [esp + 0x18]                   // 0x00716c3d    8b6c2418
                         lea                eax, dword ptr [ecx + ecx * 0x2]              // 0x00716c41    8d0449
                         add                esp, 0x08                                     // 0x00716c44    83c408
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3418]              // 0x00716c47    d80d18c48a00
                         shl                eax, 3                                        // 0x00716c4d    c1e003
                         sub.s              eax, ecx                                      // 0x00716c50    2bc1
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x00716c52    8d0440
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x00716c55    d95c2428
                         {disp8} mov        edi, dword ptr [esp + 0x28]                   // 0x00716c59    8b7c2428
                         push               edi                                           // 0x00716c5d    57
                         push               ebp                                           // 0x00716c5e    55
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x00716c5f    8d4c241c
                         {disp32} lea       esi, dword ptr [eax * 0x4 + 0x00d38448]       // 0x00716c63    8d34854884d300
                         push               ecx                                           // 0x00716c6a    51
                         mov.s              ecx, esi                                      // 0x00716c6b    8bce
                         {disp8} mov        dword ptr [esp + 0x28], edx                   // 0x00716c6d    89542428
                         call               _jmp_addr_0x00638c40                          // 0x00716c71    e8ca1ff2ff
                         test               eax, eax                                      // 0x00716c76    85c0
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x00716c78    0f840c120000
                         push               edi                                           // 0x00716c7e    57
                         push               ebp                                           // 0x00716c7f    55
                         push               ebx                                           // 0x00716c80    53
                         {disp8} lea        edx, dword ptr [esp + 0x20]                   // 0x00716c81    8d542420
                         push               esi                                           // 0x00716c85    56
                         push               edx                                           // 0x00716c86    52
                         call               _jmp_addr_0x00607000                          // 0x00716c87    e87403efff
                         add                esp, 0x14                                     // 0x00716c8c    83c414
                         {disp32} mov       dword ptr [_DAT_00d99380], eax                // 0x00716c8f    a38093d900
                         {disp32} mov       dword ptr [_PTR_00d99384], eax                // 0x00716c94    a38493d900
                         xor.s              eax, eax                                      // 0x00716c99    33c0
                         pop                edi                                           // 0x00716c9b    5f
                         pop                esi                                           // 0x00716c9c    5e
                         pop                ebp                                           // 0x00716c9d    5d
                         pop                ebx                                           // 0x00716c9e    5b
                         add                esp, 0x00000654                               // 0x00716c9f    81c454060000
                         ret                                                              // 0x00716ca5    c3
                         {disp32} mov       eax, dword ptr [ebp + 0x00006000]             // 0x00716ca6    8b8500600000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00716cac    8b0d5c19d000
                         push               eax                                           // 0x00716cb2    50
                         call               ?FindTownWithID@GGame@@QAEPAVTown@@K@Z        // 0x00716cb3    e8e8c2e3ff
                         {disp32} lea       ecx, dword ptr [ebp + 0x00000800]             // 0x00716cb8    8d8d00080000
                         push               ecx                                           // 0x00716cbe    51
                         {disp32} lea       edx, dword ptr [esp + 0x0000011c]             // 0x00716cbf    8d94241c010000
                         push               edx                                           // 0x00716cc6    52
                         mov.s              esi, eax                                      // 0x00716cc7    8bf0
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x00716cc9    e882150000
                         {disp32} fild      dword ptr [ebp + 0x0000600c]                  // 0x00716cce    db850c600000
                         mov                ecx, dword ptr [eax]                          // 0x00716cd4    8b08
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                   // 0x00716cd6    894c241c
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x00716cda    8b5004
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3418]              // 0x00716cdd    d80d18c48a00
                         {disp8} mov        dword ptr [esp + 0x20], edx                   // 0x00716ce3    89542420
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00716ce7    8b4008
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x00716cea    d95c2418
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x00716cee    89442424
                         {disp32} fild      dword ptr [ebp + 0x00006010]                  // 0x00716cf2    db8510600000
                         {disp32} mov       eax, dword ptr [ebp + 0x00006008]             // 0x00716cf8    8b8508600000
                         lea                ecx, dword ptr [eax + eax * 0x8]              // 0x00716cfe    8d0cc0
                         lea                edx, dword ptr [eax + ecx * 0x4]              // 0x00716d01    8d1488
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3418]              // 0x00716d04    d80d18c48a00
                         {disp32} lea       eax, dword ptr [edx * 0x8 + 0x00d959d0]       // 0x00716d0a    8d04d5d059d900
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x00716d11    8b542418
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x00716d15    d95c2430
                         {disp8} mov        ecx, dword ptr [esp + 0x30]                   // 0x00716d19    8b4c2430
                         push               ecx                                           // 0x00716d1d    51
                         push               edx                                           // 0x00716d1e    52
                         push               ebx                                           // 0x00716d1f    53
                         push               esi                                           // 0x00716d20    56
                         push               eax                                           // 0x00716d21    50
                         {disp8} lea        eax, dword ptr [esp + 0x30]                   // 0x00716d22    8d442430
                         push               eax                                           // 0x00716d26    50
                         call               _jmp_addr_0x006e8460                          // 0x00716d27    e83417fdff
                         add                esp, 0x20                                     // 0x00716d2c    83c420
                         {disp32} mov       dword ptr [_DAT_00d99380], eax                // 0x00716d2f    a38093d900
                         {disp32} mov       dword ptr [_PTR_00d99384], eax                // 0x00716d34    a38493d900
                         xor.s              eax, eax                                      // 0x00716d39    33c0
                         pop                edi                                           // 0x00716d3b    5f
                         pop                esi                                           // 0x00716d3c    5e
                         pop                ebp                                           // 0x00716d3d    5d
                         pop                ebx                                           // 0x00716d3e    5b
                         add                esp, 0x00000654                               // 0x00716d3f    81c454060000
                         ret                                                              // 0x00716d45    c3
                         {disp32} lea       ecx, dword ptr [esp + 0x00000130]             // 0x00716d46    8d8c2430010000
                         push               ebp                                           // 0x00716d4d    55
                         push               ecx                                           // 0x00716d4e    51
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x00716d4f    e8fc140000
                         mov                edx, dword ptr [eax]                          // 0x00716d54    8b10
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x00716d56    8954241c
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x00716d5a    8b4804
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x00716d5d    894c2420
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x00716d61    8b5008
                         {disp32} mov       ecx, dword ptr [ebp + 0x00006038]             // 0x00716d64    8b8d38600000
                         {disp32} mov       eax, dword ptr [ebp + 0x00006004]             // 0x00716d6a    8b8504600000
                         {disp8} mov        dword ptr [esp + 0x24], edx                   // 0x00716d70    89542424
                         {disp32} mov       edx, dword ptr [ebp + 0x0000603c]             // 0x00716d74    8b953c600000
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x00716d7a    894c2418
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x00716d7e    8d0440
                         mov.s              ecx, edx                                      // 0x00716d81    8bca
                         push               ecx                                           // 0x00716d83    51
                         {disp8} mov        dword ptr [esp + 0x34], edx                   // 0x00716d84    89542434
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x00716d88    8b54241c
                         push               edx                                           // 0x00716d8c    52
                         lea                eax, dword ptr [eax + eax * 0x4]              // 0x00716d8d    8d0480
                         lea                eax, dword ptr [eax + eax * 0x4]              // 0x00716d90    8d0480
                         push               ebx                                           // 0x00716d93    53
                         {disp32} lea       eax, dword ptr [eax * 0x4 + 0x00d3a6d8]       // 0x00716d94    8d0485d8a6d300
                         push               ebx                                           // 0x00716d9b    53
                         push               eax                                           // 0x00716d9c    50
                         {disp8} lea        eax, dword ptr [esp + 0x30]                   // 0x00716d9d    8d442430
                         push               eax                                           // 0x00716da1    50
                         call               _jmp_addr_0x00608770                          // 0x00716da2    e8c919efff
                         add                esp, 0x20                                     // 0x00716da7    83c420
                         {disp32} mov       dword ptr [_DAT_00d99380], eax                // 0x00716daa    a38093d900
                         {disp32} mov       dword ptr [_PTR_00d99384], eax                // 0x00716daf    a38493d900
                         xor.s              eax, eax                                      // 0x00716db4    33c0
                         pop                edi                                           // 0x00716db6    5f
                         pop                esi                                           // 0x00716db7    5e
                         pop                ebp                                           // 0x00716db8    5d
                         pop                ebx                                           // 0x00716db9    5b
                         add                esp, 0x00000654                               // 0x00716dba    81c454060000
                         ret                                                              // 0x00716dc0    c3
                         {disp32} lea       ecx, dword ptr [esp + 0x00000148]             // 0x00716dc1    8d8c2448010000
                         push               ebp                                           // 0x00716dc8    55
                         push               ecx                                           // 0x00716dc9    51
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x00716dca    e881140000
                         {disp32} fld       dword ptr [ebp + 0x00006038]                  // 0x00716dcf    d98538600000
                         mov                edx, dword ptr [eax]                          // 0x00716dd5    8b10
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x00716dd7    8954241c
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x00716ddb    8b4804
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x00716dde    894c2420
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x00716de2    8b5008
                         {disp32} mov       ecx, dword ptr [ebp + 0x0000603c]             // 0x00716de5    8b8d3c600000
                         {disp32} mov       eax, dword ptr [ebp + 0x00006004]             // 0x00716deb    8b8504600000
                         {disp8} mov        dword ptr [esp + 0x24], edx                   // 0x00716df1    89542424
                         {disp32} mov       edx, dword ptr [ebp + 0x00006040]             // 0x00716df5    8b9540600000
                         {disp8} mov        dword ptr [esp + 0x2c], ecx                   // 0x00716dfb    894c242c
                         {disp32} mov       ecx, dword ptr [ebp + 0x00006044]             // 0x00716dff    8b8d44600000
                         {disp8} mov        dword ptr [esp + 0x28], edx                   // 0x00716e05    89542428
                         {disp32} mov       edx, dword ptr [ebp + 0x00006048]             // 0x00716e09    8b9548600000
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x00716e0f    894c2418
                         mov.s              ecx, edx                                      // 0x00716e13    8bca
                         push               ecx                                           // 0x00716e15    51
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                   // 0x00716e16    8b4c242c
                         {disp8} mov        dword ptr [esp + 0x34], edx                   // 0x00716e1a    89542434
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x00716e1e    8b54241c
                         push               edx                                           // 0x00716e22    52
                         {disp8} mov        edx, dword ptr [esp + 0x34]                   // 0x00716e23    8b542434
                         push               ecx                                           // 0x00716e27    51
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x00716e28    8d0440
                         push               edx                                           // 0x00716e2b    52
                         lea                eax, dword ptr [eax + eax * 0x4]              // 0x00716e2c    8d0480
                         lea                eax, dword ptr [eax + eax * 0x4]              // 0x00716e2f    8d0480
                         push               ebx                                           // 0x00716e32    53
                         {disp32} lea       eax, dword ptr [eax * 0x4 + 0x00d3a6d8]       // 0x00716e33    8d0485d8a6d300
                         push               ebx                                           // 0x00716e3a    53
                         push               eax                                           // 0x00716e3b    50
                         {disp8} lea        eax, dword ptr [esp + 0x38]                   // 0x00716e3c    8d442438
                         {disp8} fstp       dword ptr [esp + 0x40]                        // 0x00716e40    d95c2440
                         push               eax                                           // 0x00716e44    50
                         call               _jmp_addr_0x00608840                          // 0x00716e45    e8f619efff
                         add                esp, 0x28                                     // 0x00716e4a    83c428
                         {disp32} mov       dword ptr [_DAT_00d99380], eax                // 0x00716e4d    a38093d900
                         {disp32} mov       dword ptr [_PTR_00d99384], eax                // 0x00716e52    a38493d900
                         xor.s              eax, eax                                      // 0x00716e57    33c0
                         pop                edi                                           // 0x00716e59    5f
                         pop                esi                                           // 0x00716e5a    5e
                         pop                ebp                                           // 0x00716e5b    5d
                         pop                ebx                                           // 0x00716e5c    5b
                         add                esp, 0x00000654                               // 0x00716e5d    81c454060000
                         ret                                                              // 0x00716e63    c3
                         {disp32} lea       ecx, dword ptr [esp + 0x00000160]             // 0x00716e64    8d8c2460010000
                         push               ebp                                           // 0x00716e6b    55
                         push               ecx                                           // 0x00716e6c    51
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x00716e6d    e8de130000
                         mov                edx, dword ptr [eax]                          // 0x00716e72    8b10
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x00716e74    8954241c
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x00716e78    8b4804
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x00716e7b    894c2420
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x00716e7f    8b5008
                         {disp32} lea       eax, dword ptr [ebp + 0x00000800]             // 0x00716e82    8d8500080000
                         push               eax                                           // 0x00716e88    50
                         {disp8} mov        dword ptr [esp + 0x28], edx                   // 0x00716e89    89542428
                         call               ?GetPlayerFromText@GPlayer@@SAPAV1@PAD@Z      // 0x00716e8d    e84e47f3ff
                         {disp32} mov       edx, dword ptr [ebp + 0x0000603c]             // 0x00716e92    8b953c600000
                         {disp32} mov       ecx, dword ptr [ebp + 0x00006008]             // 0x00716e98    8b8d08600000
                         {disp8} mov        dword ptr [esp + 0x30], edx                   // 0x00716e9e    89542430
                         {disp32} mov       edx, dword ptr [ebp + 0x00006040]             // 0x00716ea2    8b9540600000
                         {disp8} mov        dword ptr [esp + 0x2c], edx                   // 0x00716ea8    8954242c
                         {disp32} mov       edx, dword ptr [ebp + 0x00006044]             // 0x00716eac    8b9544600000
                         push               ebx                                           // 0x00716eb2    53
                         {disp8} mov        dword ptr [esp + 0x20], edx                   // 0x00716eb3    89542420
                         {disp32} mov       edx, dword ptr [ebp + 0x00006048]             // 0x00716eb7    8b9548600000
                         push               edx                                           // 0x00716ebd    52
                         {disp8} mov        dword ptr [esp + 0x3c], edx                   // 0x00716ebe    8954243c
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x00716ec2    8b542424
                         push               edx                                           // 0x00716ec6    52
                         {disp8} mov        edx, dword ptr [esp + 0x38]                   // 0x00716ec7    8b542438
                         push               edx                                           // 0x00716ecb    52
                         {disp8} mov        edx, dword ptr [esp + 0x40]                   // 0x00716ecc    8b542440
                         lea                ecx, dword ptr [ecx + ecx * 0x4]              // 0x00716ed0    8d0c89
                         push               edx                                           // 0x00716ed3    52
                         shl                ecx, 6                                        // 0x00716ed4    c1e106
                         push               eax                                           // 0x00716ed7    50
                         add                ecx, 0x00da3ad8                               // 0x00716ed8    81c1d83ada00
                         push               ecx                                           // 0x00716ede    51
                         {disp8} lea        eax, dword ptr [esp + 0x3c]                   // 0x00716edf    8d44243c
                         push               eax                                           // 0x00716ee3    50
                         call               _jmp_addr_0x00510bb0                          // 0x00716ee4    e8c79cdfff
                         add                esp, 0x2c                                     // 0x00716ee9    83c42c
                         {disp32} mov       dword ptr [_DAT_00d99380], eax                // 0x00716eec    a38093d900
                         {disp32} mov       dword ptr [_PTR_00d99384], eax                // 0x00716ef1    a38493d900
                         xor.s              eax, eax                                      // 0x00716ef6    33c0
                         pop                edi                                           // 0x00716ef8    5f
                         pop                esi                                           // 0x00716ef9    5e
                         pop                ebp                                           // 0x00716efa    5d
                         pop                ebx                                           // 0x00716efb    5b
                         add                esp, 0x00000654                               // 0x00716efc    81c454060000
                         ret                                                              // 0x00716f02    c3
                         {disp32} mov       ecx, dword ptr [ebp + 0x00006008]             // 0x00716f03    8b8d08600000
                         push               ecx                                           // 0x00716f09    51
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00716f0a    8b0d5c19d000
                         call               ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z          // 0x00716f10    e89b9ae3ff
                         push               eax                                           // 0x00716f15    50
                         {disp32} mov       eax, dword ptr [ebp + 0x00006004]             // 0x00716f16    8b8504600000
                         lea                edx, dword ptr [eax + eax * 0x8]              // 0x00716f1c    8d14c0
                         lea                ecx, dword ptr [eax + edx * 0x2]              // 0x00716f1f    8d0c50
                         lea                ecx, dword ptr [ecx + ecx * 0x2]              // 0x00716f22    8d0c49
                         lea                edx, dword ptr [eax + ecx * 0x4]              // 0x00716f25    8d1488
                         {disp32} lea       eax, dword ptr [edx * 0x4 + 0x00c60460]       // 0x00716f28    8d04956004c600
                         push               eax                                           // 0x00716f2f    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00000180]             // 0x00716f30    8d8c2480010000
                         push               ebp                                           // 0x00716f37    55
                         push               ecx                                           // 0x00716f38    51
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x00716f39    e812130000
                         add                esp, 0x08                                     // 0x00716f3e    83c408
                         push               eax                                           // 0x00716f41    50
                         call               ?CreateCreature@Creature@@SAPAV1@ABUMapCoords@@PBVCreatureInfo@@PAVGPlayer@@@Z            // 0x00716f42    e809dcd5ff
                         add                esp, 0x0c                                     // 0x00716f47    83c40c
                         {disp32} mov       dword ptr [_PTR_00d99384], eax                // 0x00716f4a    a38493d900
                         xor.s              eax, eax                                      // 0x00716f4f    33c0
                         pop                edi                                           // 0x00716f51    5f
                         pop                esi                                           // 0x00716f52    5e
                         pop                ebp                                           // 0x00716f53    5d
                         pop                ebx                                           // 0x00716f54    5b
                         add                esp, 0x00000654                               // 0x00716f55    81c454060000
                         ret                                                              // 0x00716f5b    c3
                         push               ebp                                           // 0x00716f5c    55
                         call               ?GetPlayerFromText@GPlayer@@SAPAV1@PAD@Z      // 0x00716f5d    e87e46f3ff
                         mov.s              esi, eax                                      // 0x00716f62    8bf0
                         add                esp, 0x04                                     // 0x00716f64    83c404
                         cmp.s              esi, ebx                                      // 0x00716f67    3bf3
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x00716f69    0f841b0f0000
                         cmp                dword ptr [esi + 0x00000944], ebx             // 0x00716f6f    399e44090000
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x00716f75    0f840f0f0000
                         {disp32} mov       edi, dword ptr [ebp + 0x00006004]             // 0x00716f7b    8bbd04600000
                         {disp32} lea       edx, dword ptr [ebp + 0x00001000]             // 0x00716f81    8d9500100000
                         push               edx                                           // 0x00716f87    52
                         add                ebp, 0x00001800                               // 0x00716f88    81c500180000
                         {disp32} lea       eax, dword ptr [esp + 0x00000194]             // 0x00716f8e    8d842494010000
                         push               ebp                                           // 0x00716f95    55
                         push               eax                                           // 0x00716f96    50
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x00716f97    e8b4120000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000944]             // 0x00716f9c    8b8e44090000
                         add                esp, 0x08                                     // 0x00716fa2    83c408
                         push               eax                                           // 0x00716fa5    50
                         push               edi                                           // 0x00716fa6    57
                         call               _jmp_addr_0x0065ba40                          // 0x00716fa7    e8944af4ff
                         xor.s              eax, eax                                      // 0x00716fac    33c0
                         pop                edi                                           // 0x00716fae    5f
                         pop                esi                                           // 0x00716faf    5e
                         pop                ebp                                           // 0x00716fb0    5d
                         pop                ebx                                           // 0x00716fb1    5b
                         add                esp, 0x00000654                               // 0x00716fb2    81c454060000
                         ret                                                              // 0x00716fb8    c3
                         or                 ecx, 0xffffffff                               // 0x00716fb9    83c9ff
                         xor.s              eax, eax                                      // 0x00716fbc    33c0
                         mov.s              edi, ebp                                      // 0x00716fbe    8bfd
                         repne scasb                                                      // 0x00716fc0    f2ae
                         {disp32} mov       eax, dword ptr [_game]                        // 0x00716fc2    a15c19d000
                         not                ecx                                           // 0x00716fc7    f7d1
                         sub.s              edi, ecx                                      // 0x00716fc9    2bf9
                         mov.s              edx, ecx                                      // 0x00716fcb    8bd1
                         shr                ecx, 2                                        // 0x00716fcd    c1e902
                         mov.s              esi, edi                                      // 0x00716fd0    8bf7
                         mov                edi, OFFSET _CHAR_ARRAY_00d99580              // 0x00716fd2    bf8095d900
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00716fd7    f3a5
                         mov.s              ecx, edx                                      // 0x00716fd9    8bca
                         and                ecx, 0x03                                     // 0x00716fdb    83e103
                         rep movsb                                                        // 0x00716fde    f3a4
                         push               ebp                                           // 0x00716fe0    55
                         {disp32} lea       ecx, dword ptr [eax + 0x00205a20]             // 0x00716fe1    8d88205a2000
                         call               @Open__10GLandscapeFPc@12                     // 0x00716fe7    e8f4e2ecff
                         xor.s              eax, eax                                      // 0x00716fec    33c0
                         pop                edi                                           // 0x00716fee    5f
                         pop                esi                                           // 0x00716fef    5e
                         pop                ebp                                           // 0x00716ff0    5d
                         pop                ebx                                           // 0x00716ff1    5b
                         add                esp, 0x00000654                               // 0x00716ff2    81c454060000
                         ret                                                              // 0x00716ff8    c3
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x00716ff9    8b4c2424
                         mov                edx, dword ptr [ecx]                          // 0x00716ffd    8b11
                         {disp32} mov       dword ptr [_script_version], edx              // 0x00716fff    89157c95d900
                         xor.s              eax, eax                                      // 0x00717005    33c0
                         pop                edi                                           // 0x00717007    5f
                         pop                esi                                           // 0x00717008    5e
                         pop                ebp                                           // 0x00717009    5d
                         pop                ebx                                           // 0x0071700a    5b
                         add                esp, 0x00000654                               // 0x0071700b    81c454060000
                         ret                                                              // 0x00717011    c3
                         {disp32} mov       eax, dword ptr [ebp + 0x00006034]             // 0x00717012    8b8534600000
                         {disp32} lea       ecx, dword ptr [esp + 0x000001a8]             // 0x00717018    8d8c24a8010000
                         push               ebp                                           // 0x0071701f    55
                         push               ecx                                           // 0x00717020    51
                         {disp8} mov        dword ptr [esp + 0x30], eax                   // 0x00717021    89442430
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x00717025    e826120000
                         push               0xe                                           // 0x0071702a    6a0e
                         push               0x00c2206c                                    // 0x0071702c    686c20c200
                         push               0x1c                                          // 0x00717031    6a1c
                         mov.s              esi, eax                                      // 0x00717033    8bf0
                         call               ?__nw@Base@@SAPAXK@Z                          // 0x00717035    e8b6f6d1ff
                         add                esp, 0x14                                     // 0x0071703a    83c414
                         cmp.s              eax, ebx                                      // 0x0071703d    3bc3
                         {disp8} je         _jmp_addr_0x0071704e                          // 0x0071703f    740d
                         {disp8} mov        edx, dword ptr [esp + 0x28]                   // 0x00717041    8b542428
                         push               edx                                           // 0x00717045    52
                         push               esi                                           // 0x00717046    56
                         mov.s              ecx, eax                                      // 0x00717047    8bc8
                         call               _jmp_addr_0x005571c0                          // 0x00717049    e87201e4ff
_jmp_addr_0x0071704e:    {disp32} mov       dword ptr [_PTR_00d99384], ebx                // 0x0071704e    891d8493d900
                         xor.s              eax, eax                                      // 0x00717054    33c0
                         pop                edi                                           // 0x00717056    5f
                         pop                esi                                           // 0x00717057    5e
                         pop                ebp                                           // 0x00717058    5d
                         pop                ebx                                           // 0x00717059    5b
                         add                esp, 0x00000654                               // 0x0071705a    81c454060000
                         ret                                                              // 0x00717060    c3
                         {disp32} lea       eax, dword ptr [esp + 0x000001c0]             // 0x00717061    8d8424c0010000
                         push               ebp                                           // 0x00717068    55
                         push               eax                                           // 0x00717069    50
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x0071706a    e8e1110000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0071706f    8b0d5c19d000
                         mov                edx, dword ptr [eax]                          // 0x00717075    8b10
                         add                ecx, 0x0025009c                               // 0x00717077    81c19c002500
                         mov                dword ptr [ecx], edx                          // 0x0071707d    8911
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x0071707f    8b5004
                         {disp8} mov        dword ptr [ecx + 0x04], edx                   // 0x00717082    895104
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00717085    8b4008
                         add                esp, 0x08                                     // 0x00717088    83c408
                         {disp8} mov        dword ptr [ecx + 0x08], eax                   // 0x0071708b    894108
                         xor.s              eax, eax                                      // 0x0071708e    33c0
                         pop                edi                                           // 0x00717090    5f
                         pop                esi                                           // 0x00717091    5e
                         pop                ebp                                           // 0x00717092    5d
                         pop                ebx                                           // 0x00717093    5b
                         add                esp, 0x00000654                               // 0x00717094    81c454060000
                         ret                                                              // 0x0071709a    c3
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0071709b    8b0d5c19d000
                         {disp32} lea       edx, dword ptr [ecx + 0x002500a8]             // 0x007170a1    8d91a8002500
                         or                 ecx, 0xffffffff                               // 0x007170a7    83c9ff
                         xor.s              eax, eax                                      // 0x007170aa    33c0
                         mov.s              edi, ebp                                      // 0x007170ac    8bfd
                         repne scasb                                                      // 0x007170ae    f2ae
                         not                ecx                                           // 0x007170b0    f7d1
                         sub.s              edi, ecx                                      // 0x007170b2    2bf9
                         mov.s              eax, ecx                                      // 0x007170b4    8bc1
                         shr                ecx, 2                                        // 0x007170b6    c1e902
                         mov.s              esi, edi                                      // 0x007170b9    8bf7
                         mov.s              edi, edx                                      // 0x007170bb    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x007170bd    f3a5
                         mov.s              ecx, eax                                      // 0x007170bf    8bc8
                         and                ecx, 0x03                                     // 0x007170c1    83e103
                         rep movsb                                                        // 0x007170c4    f3a4
                         xor.s              eax, eax                                      // 0x007170c6    33c0
                         pop                edi                                           // 0x007170c8    5f
                         pop                esi                                           // 0x007170c9    5e
                         pop                ebp                                           // 0x007170ca    5d
                         pop                ebx                                           // 0x007170cb    5b
                         add                esp, 0x00000654                               // 0x007170cc    81c454060000
                         ret                                                              // 0x007170d2    c3
                         {disp32} lea       ecx, dword ptr [esp + 0x000001d8]             // 0x007170d3    8d8c24d8010000
                         push               ebp                                           // 0x007170da    55
                         push               ecx                                           // 0x007170db    51
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x007170dc    e86f110000
                         mov                edx, dword ptr [eax]                          // 0x007170e1    8b10
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x007170e3    8954241c
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x007170e7    8b4804
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x007170ea    894c2420
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x007170ee    8b5008
                         {disp32} mov       eax, dword ptr [ebp + 0x00006004]             // 0x007170f1    8b8504600000
                         lea                ecx, dword ptr [eax + eax * 0x8]              // 0x007170f7    8d0cc0
                         {disp8} mov        dword ptr [esp + 0x24], edx                   // 0x007170fa    89542424
                         lea                edx, dword ptr [eax + ecx * 0x4]              // 0x007170fe    8d1488
                         {disp32} mov       ecx, dword ptr [ebp + 0x00006038]             // 0x00717101    8b8d38600000
                         {disp32} lea       eax, dword ptr [edx * 0x8 + 0x00c58678]       // 0x00717107    8d04d57886c500
                         {disp32} mov       edx, dword ptr [ebp + 0x0000603c]             // 0x0071710e    8b953c600000
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x00717114    894c2418
                         mov.s              ecx, edx                                      // 0x00717118    8bca
                         push               ecx                                           // 0x0071711a    51
                         {disp8} mov        dword ptr [esp + 0x34], edx                   // 0x0071711b    89542434
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x0071711f    8b54241c
                         push               edx                                           // 0x00717123    52
                         push               ebx                                           // 0x00717124    53
                         push               eax                                           // 0x00717125    50
                         {disp8} lea        eax, dword ptr [esp + 0x2c]                   // 0x00717126    8d44242c
                         push               eax                                           // 0x0071712a    50
                         call               ?Create@BigForest@@SAPAV1@ABUMapCoords@@PBVGBigForestInfo@@KMM@Z                // 0x0071712b    e8901dd2ff
                         add                esp, 0x1c                                     // 0x00717130    83c41c
                         {disp32} jmp       _jmp_addr_0x00716a39                          // 0x00717133    e901f9ffff
                         {disp32} lea       ecx, dword ptr [esp + 0x000001f0]             // 0x00717138    8d8c24f0010000
                         push               ebp                                           // 0x0071713f    55
                         push               ecx                                           // 0x00717140    51
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x00717141    e80a110000
                         mov                edx, dword ptr [eax]                          // 0x00717146    8b10
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x00717148    8954241c
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x0071714c    8b4804
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x0071714f    894c2420
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x00717153    8b5008
                         {disp32} mov       eax, dword ptr [ebp + 0x00006004]             // 0x00717156    8b8504600000
                         {disp8} mov        dword ptr [esp + 0x24], edx                   // 0x0071715c    89542424
                         lea                ecx, dword ptr [eax + eax * 0x8]              // 0x00717160    8d0cc0
                         lea                edx, dword ptr [eax + ecx * 0x4]              // 0x00717163    8d1488
                         {disp32} mov       ecx, dword ptr [ebp + 0x0000603c]             // 0x00717166    8b8d3c600000
                         {disp32} lea       eax, dword ptr [edx * 0x8 + 0x00c58678]       // 0x0071716c    8d04d57886c500
                         {disp32} mov       edx, dword ptr [ebp + 0x00006040]             // 0x00717173    8b9540600000
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x00717179    894c2418
                         mov.s              ecx, edx                                      // 0x0071717d    8bca
                         push               ecx                                           // 0x0071717f    51
                         {disp32} mov       ecx, dword ptr [ebp + 0x00006008]             // 0x00717180    8b8d08600000
                         {disp8} mov        dword ptr [esp + 0x34], edx                   // 0x00717186    89542434
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x0071718a    8b54241c
                         push               edx                                           // 0x0071718e    52
                         push               ecx                                           // 0x0071718f    51
                         push               eax                                           // 0x00717190    50
                         {disp8} lea        edx, dword ptr [esp + 0x2c]                   // 0x00717191    8d54242c
                         push               edx                                           // 0x00717195    52
                         call               ?Create@BigForest@@SAPAV1@ABUMapCoords@@PBVGBigForestInfo@@KMM@Z                // 0x00717196    e8251dd2ff
                         add                esp, 0x1c                                     // 0x0071719b    83c41c
                         {disp32} jmp       _jmp_addr_0x00716a39                          // 0x0071719e    e996f8ffff
                         {disp32} fld       dword ptr [ebp + 0x0000603c]                  // 0x007171a3    d9853c600000
                         call               _jmp_addr_0x007a1400                          // 0x007171a9    e852a20800
                         {disp32} mov       ecx, dword ptr [ebp + 0x00006004]             // 0x007171ae    8b8d04600000
                         push               eax                                           // 0x007171b4    50
                         {disp32} mov       eax, dword ptr [ebp + 0x00006038]             // 0x007171b5    8b8538600000
                         push               eax                                           // 0x007171bb    50
                         push               ecx                                           // 0x007171bc    51
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x007171bd    8b0d5c19d000
                         call               ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z          // 0x007171c3    e8e897e3ff
                         push               eax                                           // 0x007171c8    50
                         {disp32} lea       edx, dword ptr [esp + 0x00000214]             // 0x007171c9    8d942414020000
                         push               ebp                                           // 0x007171d0    55
                         push               edx                                           // 0x007171d1    52
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x007171d2    e879100000
                         add                esp, 0x08                                     // 0x007171d7    83c408
                         push               eax                                           // 0x007171da    50
                         call               _jmp_addr_0x005cd9d0                          // 0x007171db    e8f067ebff
                         add                esp, 0x10                                     // 0x007171e0    83c410
                         {disp32} mov       dword ptr [_PTR_00d99384], eax                // 0x007171e3    a38493d900
                         xor.s              eax, eax                                      // 0x007171e8    33c0
                         pop                edi                                           // 0x007171ea    5f
                         pop                esi                                           // 0x007171eb    5e
                         pop                ebp                                           // 0x007171ec    5d
                         pop                ebx                                           // 0x007171ed    5b
                         add                esp, 0x00000654                               // 0x007171ee    81c454060000
                         ret                                                              // 0x007171f4    c3
                         {disp32} mov       eax, dword ptr [ebp + 0x00006000]             // 0x007171f5    8b8500600000
                         {disp32} mov       ecx, dword ptr [ebp + 0x00006040]             // 0x007171fb    8b8d40600000
                         {disp32} mov       edx, dword ptr [ebp + 0x0000603c]             // 0x00717201    8b953c600000
                         push               eax                                           // 0x00717207    50
                         {disp32} mov       eax, dword ptr [ebp + 0x00006004]             // 0x00717208    8b8504600000
                         push               ebx                                           // 0x0071720e    53
                         push               ecx                                           // 0x0071720f    51
                         lea                eax, dword ptr [eax + eax * 0x4]              // 0x00717210    8d0480
                         push               edx                                           // 0x00717213    52
                         shl                eax, 5                                        // 0x00717214    c1e005
                         add                eax, 0x00dcb198                               // 0x00717217    0598b1dc00
                         push               eax                                           // 0x0071721c    50
                         add                ebp, 0x00001000                               // 0x0071721d    81c500100000
                         {disp32} lea       ecx, dword ptr [esp + 0x00000234]             // 0x00717223    8d8c2434020000
                         push               ebp                                           // 0x0071722a    55
                         push               ecx                                           // 0x0071722b    51
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x0071722c    e81f100000
                         add                esp, 0x08                                     // 0x00717231    83c408
                         push               eax                                           // 0x00717234    50
                         call               _jmp_addr_0x00771300                          // 0x00717235    e8c6a00500
                         add                esp, 0x18                                     // 0x0071723a    83c418
                         {disp32} mov       dword ptr [_PTR_00d99384], ebx                // 0x0071723d    891d8493d900
                         xor.s              eax, eax                                      // 0x00717243    33c0
                         pop                edi                                           // 0x00717245    5f
                         pop                esi                                           // 0x00717246    5e
                         pop                ebp                                           // 0x00717247    5d
                         pop                ebx                                           // 0x00717248    5b
                         add                esp, 0x00000654                               // 0x00717249    81c454060000
                         ret                                                              // 0x0071724f    c3
                         {disp8} lea        ecx, dword ptr [esp + 0x40]                   // 0x00717250    8d4c2440
                         call               _jmp_addr_0x00773d10                          // 0x00717254    e8b7ca0500
                         {disp32} fld       dword ptr [ebp + 0x00006034]                  // 0x00717259    d98534600000
                         {disp32} mov       edx, dword ptr [ebp + 0x00006008]             // 0x0071725f    8b9508600000
                         {disp32} mov       eax, dword ptr [ebp + 0x0000600c]             // 0x00717265    8b850c600000
                         {disp32} mov       cl, byte ptr [ebp + 0x00006010]               // 0x0071726b    8a8d10600000
                         {disp8} mov        dword ptr [esp + 0x44], edx                   // 0x00717271    89542444
                         {disp32} mov       edx, dword ptr [ebp + 0x00006000]             // 0x00717275    8b9500600000
                         {disp8} mov        dword ptr [esp + 0x48], eax                   // 0x0071727b    89442448
                         push               edx                                           // 0x0071727f    52
                         {disp8} lea        eax, dword ptr [esp + 0x44]                   // 0x00717280    8d442444
                         {disp8} fstp       dword ptr [esp + 0x44]                        // 0x00717284    d95c2444
                         push               eax                                           // 0x00717288    50
                         {disp8} mov        byte ptr [esp + 0x54], cl                     // 0x00717289    884c2454
                         call               _jmp_addr_0x00773200                          // 0x0071728d    e86ebf0500
                         add                esp, 0x08                                     // 0x00717292    83c408
                         xor.s              eax, eax                                      // 0x00717295    33c0
                         pop                edi                                           // 0x00717297    5f
                         pop                esi                                           // 0x00717298    5e
                         pop                ebp                                           // 0x00717299    5d
                         pop                ebx                                           // 0x0071729a    5b
                         add                esp, 0x00000654                               // 0x0071729b    81c454060000
                         ret                                                              // 0x007172a1    c3
                         {disp8} lea        ecx, dword ptr [esp + 0x28]                   // 0x007172a2    8d4c2428
                         call               _jmp_addr_0x00773ec0                          // 0x007172a6    e815cc0500
                         {disp32} fld       dword ptr [ebp + 0x00006034]                  // 0x007172ab    d98534600000
                         {disp32} mov       ecx, dword ptr [ebp + 0x00006000]             // 0x007172b1    8b8d00600000
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x007172b7    d95c2428
                         {disp32} fld       dword ptr [ebp + 0x00006038]                  // 0x007172bb    d98538600000
                         push               ecx                                           // 0x007172c1    51
                         {disp8} lea        edx, dword ptr [esp + 0x2c]                   // 0x007172c2    8d54242c
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x007172c6    d95c2430
                         push               edx                                           // 0x007172ca    52
                         call               _jmp_addr_0x00773290                          // 0x007172cb    e8c0bf0500
                         add                esp, 0x08                                     // 0x007172d0    83c408
                         xor.s              eax, eax                                      // 0x007172d3    33c0
                         pop                edi                                           // 0x007172d5    5f
                         pop                esi                                           // 0x007172d6    5e
                         pop                ebp                                           // 0x007172d7    5d
                         pop                ebx                                           // 0x007172d8    5b
                         add                esp, 0x00000654                               // 0x007172d9    81c454060000
                         ret                                                              // 0x007172df    c3
                         {disp8} lea        ecx, dword ptr [esp + 0x34]                   // 0x007172e0    8d4c2434
                         call               _jmp_addr_0x00774a80                          // 0x007172e4    e897d70500
                         {disp32} fld       dword ptr [ebp + 0x00006034]                  // 0x007172e9    d98534600000
                         {disp32} mov       eax, dword ptr [ebp + 0x00006000]             // 0x007172ef    8b8500600000
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x007172f5    d95c2434
                         {disp32} fld       dword ptr [ebp + 0x00006038]                  // 0x007172f9    d98538600000
                         push               eax                                           // 0x007172ff    50
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x00717300    d95c243c
                         {disp32} fld       dword ptr [ebp + 0x0000603c]                  // 0x00717304    d9853c600000
                         {disp8} lea        ecx, dword ptr [esp + 0x38]                   // 0x0071730a    8d4c2438
                         {disp8} fstp       dword ptr [esp + 0x40]                        // 0x0071730e    d95c2440
                         push               ecx                                           // 0x00717312    51
                         call               _jmp_addr_0x007732d0                          // 0x00717313    e8b8bf0500
                         add                esp, 0x08                                     // 0x00717318    83c408
                         xor.s              eax, eax                                      // 0x0071731b    33c0
                         pop                edi                                           // 0x0071731d    5f
                         pop                esi                                           // 0x0071731e    5e
                         pop                ebp                                           // 0x0071731f    5d
                         pop                ebx                                           // 0x00717320    5b
                         add                esp, 0x00000654                               // 0x00717321    81c454060000
                         ret                                                              // 0x00717327    c3
                         {disp32} lea       edx, dword ptr [ebp + 0x00000800]             // 0x00717328    8d9500080000
                         push               edx                                           // 0x0071732e    52
                         {disp32} lea       eax, dword ptr [esp + 0x0000023c]             // 0x0071732f    8d84243c020000
                         push               eax                                           // 0x00717336    50
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x00717337    e8140f0000
                         mov.s              esi, eax                                      // 0x0071733c    8bf0
                         {disp8} mov        ecx, dword ptr [esi + 0x08]                   // 0x0071733e    8b4e08
                         {disp8} mov        dword ptr [esp + 0x30], ecx                   // 0x00717341    894c2430
                         add                esp, 0x08                                     // 0x00717345    83c408
                         mov.s              ecx, esi                                      // 0x00717348    8bce
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x0071734a    e841bd0e00
                         {disp8} fadd       dword ptr [esp + 0x28]                        // 0x0071734f    d8442428
                         push               ebx                                           // 0x00717353    53
                         push               ebx                                           // 0x00717354    53
                         {disp8} fstp       dword ptr [esp + 0x4c]                        // 0x00717355    d95c244c
                         {disp8} lea        edx, dword ptr [esp + 0x48]                   // 0x00717359    8d542448
                         fild               dword ptr [esi]                               // 0x0071735d    db06
                         push               edx                                           // 0x0071735f    52
                         {disp8} lea        ecx, dword ptr [esp + 0x5c]                   // 0x00717360    8d4c245c
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00717364    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x4c]                        // 0x0071736a    d95c244c
                         {disp8} fild       dword ptr [esi + 0x04]                        // 0x0071736e    db4604
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00717371    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x54]                        // 0x00717377    d95c2454
                         call               _jmp_addr_0x0083f4a0                          // 0x0071737b    e820811200
                         {disp32} mov       eax, dword ptr [ebp + 0x0000600c]             // 0x00717380    8b850c600000
                         {disp8} lea        ecx, dword ptr [esp + 0x7c]                   // 0x00717386    8d4c247c
                         push               ecx                                           // 0x0071738a    51
                         {disp8} mov        dword ptr [esp + 0x74], eax                   // 0x0071738b    89442474
                         {disp8} lea        edx, dword ptr [esp + 0x70]                   // 0x0071738f    8d542470
                         push               edx                                           // 0x00717393    52
                         {disp8} lea        eax, dword ptr [esp + 0x70]                   // 0x00717394    8d442470
                         push               eax                                           // 0x00717398    50
                         {disp8} lea        ecx, dword ptr [esp + 0x70]                   // 0x00717399    8d4c2470
                         push               ecx                                           // 0x0071739d    51
                         {disp8} lea        edx, dword ptr [esp + 0x70]                   // 0x0071739e    8d542470
                         push               edx                                           // 0x007173a2    52
                         {disp8} lea        eax, dword ptr [esp + 0x70]                   // 0x007173a3    8d442470
                         push               eax                                           // 0x007173a7    50
                         {disp32} lea       ecx, dword ptr [ebp + 0x00002000]             // 0x007173a8    8d8d00200000
                         push               0x00c22058                                    // 0x007173ae    685820c200
                         push               ecx                                           // 0x007173b3    51
                         call               _sscanf                                       // 0x007173b4    e81af70a00
                         add                esp, 0x20                                     // 0x007173b9    83c420
                         {disp32} lea       edx, dword ptr [esp + 0x00000084]             // 0x007173bc    8d942484000000
                         push               edx                                           // 0x007173c3    52
                         {disp32} lea       eax, dword ptr [esp + 0x00000084]             // 0x007173c4    8d842484000000
                         push               eax                                           // 0x007173cb    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00000094]             // 0x007173cc    8d8c2494000000
                         push               ecx                                           // 0x007173d3    51
                         {disp32} lea       edx, dword ptr [esp + 0x00000094]             // 0x007173d4    8d942494000000
                         push               edx                                           // 0x007173db    52
                         {disp32} lea       eax, dword ptr [esp + 0x00000088]             // 0x007173dc    8d842488000000
                         push               eax                                           // 0x007173e3    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00000088]             // 0x007173e4    8d8c2488000000
                         push               ecx                                           // 0x007173eb    51
                         {disp32} lea       edx, dword ptr [ebp + 0x00002800]             // 0x007173ec    8d9500280000
                         push               0x00c22058                                    // 0x007173f2    685820c200
                         push               edx                                           // 0x007173f7    52
                         call               _sscanf                                       // 0x007173f8    e8d6f60a00
                         add                esp, 0x20                                     // 0x007173fd    83c420
                         {disp32} lea       eax, dword ptr [esp + 0x0000009d]             // 0x00717400    8d84249d000000
                         push               eax                                           // 0x00717407    50
                         {disp32} lea       ecx, dword ptr [esp + 0x000000a0]             // 0x00717408    8d8c24a0000000
                         push               ecx                                           // 0x0071740f    51
                         {disp32} lea       edx, dword ptr [esp + 0x000000a1]             // 0x00717410    8d9424a1000000
                         push               edx                                           // 0x00717417    52
                         {disp32} lea       eax, dword ptr [esp + 0x000000a4]             // 0x00717418    8d8424a4000000
                         push               eax                                           // 0x0071741f    50
                         {disp32} lea       ecx, dword ptr [esp + 0x000000aa]             // 0x00717420    8d8c24aa000000
                         push               ecx                                           // 0x00717427    51
                         {disp32} lea       edx, dword ptr [esp + 0x000000af]             // 0x00717428    8d9424af000000
                         push               edx                                           // 0x0071742f    52
                         {disp32} lea       eax, dword ptr [ebp + 0x00003000]             // 0x00717430    8d8500300000
                         push               0x00c22044                                    // 0x00717436    684420c200
                         push               eax                                           // 0x0071743b    50
                         call               _sscanf                                       // 0x0071743c    e892f60a00
                         {disp32} mov       ecx, dword ptr [ebp + 0x00006000]             // 0x00717441    8b8d00600000
                         push               ecx                                           // 0x00717447    51
                         call               _jmp_addr_0x007731b0                          // 0x00717448    e863bd0500
                         add                esp, 0x24                                     // 0x0071744d    83c424
                         mov.s              edi, eax                                      // 0x00717450    8bf8
                         cmp.s              edi, ebx                                      // 0x00717452    3bfb
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x00717454    0f84300a0000
                         {disp8} lea        edx, dword ptr [esp + 0x50]                   // 0x0071745a    8d542450
                         push               edx                                           // 0x0071745e    52
                         call               _jmp_addr_0x0083f6f0                          // 0x0071745f    e88c821200
                         mov.s              esi, eax                                      // 0x00717464    8bf0
                         {disp32} mov       eax, dword ptr [ebp + 0x00006038]             // 0x00717466    8b8538600000
                         {disp8} mov        dword ptr [esi + 0x58], eax                   // 0x0071746c    894658
                         {disp32} mov       dword ptr [_PTR_00d99384], ebx                // 0x0071746f    891d8493d900
                         {disp32} mov       ecx, dword ptr [ebp + 0x0000604c]             // 0x00717475    8b8d4c600000
                         add                ebp, 0x00004000                               // 0x0071747b    81c500400000
                         {disp32} lea       edx, dword ptr [esp + 0x00000254]             // 0x00717481    8d942454020000
                         push               ebp                                           // 0x00717488    55
                         push               edx                                           // 0x00717489    52
                         {disp8} mov        dword ptr [esi + 0x68], ecx                   // 0x0071748a    894e68
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x0071748d    e8be0d0000
                         mov.s              ebp, eax                                      // 0x00717492    8be8
                         {disp8} mov        eax, dword ptr [ebp + 0x08]                   // 0x00717494    8b4508
                         add                esp, 0x0c                                     // 0x00717497    83c40c
                         mov.s              ecx, ebp                                      // 0x0071749a    8bcd
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x0071749c    89442428
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x007174a0    e8ebbb0e00
                         {disp8} fadd       dword ptr [esp + 0x28]                        // 0x007174a5    d8442428
                         cmp.s              esi, ebx                                      // 0x007174a9    3bf3
                         {disp8} lea        ecx, dword ptr [esi + 0x5c]                   // 0x007174ab    8d4e5c
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x007174ae    d95c2438
                         {disp8} mov        eax, dword ptr [esp + 0x38]                   // 0x007174b2    8b442438
                         {disp8} fild       dword ptr [ebp + 0x00]                        // 0x007174b6    db4500
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x007174b9    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x007174bf    d95c2434
                         {disp8} mov        edx, dword ptr [esp + 0x34]                   // 0x007174c3    8b542434
                         {disp8} fild       dword ptr [ebp + 0x04]                        // 0x007174c7    db4504
                         mov                dword ptr [ecx], edx                          // 0x007174ca    8911
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x007174cc    894104
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x007174cf    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x007174d5    d95c243c
                         {disp8} mov        edx, dword ptr [esp + 0x3c]                   // 0x007174d9    8b54243c
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x007174dd    895108
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x007174e0    0f84a4090000
                         push               0x8                                           // 0x007174e6    6a08
                         call               ??2@YAPAXI@Z                                  // 0x007174e8    e801f00a00
                         add                esp, 0x04                                     // 0x007174ed    83c404
                         cmp.s              eax, ebx                                      // 0x007174f0    3bc3
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x007174f2    0f8492090000
                         {disp8} mov        ecx, dword ptr [edi + 0x5c]                   // 0x007174f8    8b4f5c
                         {disp8} mov        dword ptr [eax + 0x04], esi                   // 0x007174fb    897004
                         mov                dword ptr [eax], ecx                          // 0x007174fe    8908
                         {disp8} mov        dword ptr [edi + 0x5c], eax                   // 0x00717500    89475c
                         {disp8} inc        dword ptr [edi + 0x60]                        // 0x00717503    ff4760
                         xor.s              eax, eax                                      // 0x00717506    33c0
                         pop                edi                                           // 0x00717508    5f
                         pop                esi                                           // 0x00717509    5e
                         pop                ebp                                           // 0x0071750a    5d
                         pop                ebx                                           // 0x0071750b    5b
                         add                esp, 0x00000654                               // 0x0071750c    81c454060000
                         ret                                                              // 0x00717512    c3
                         push               0x00000545                                    // 0x00717513    6845050000
                         push               0x00c21fe8                                    // 0x00717518    68e81fc200
                         push               0x28                                          // 0x0071751d    6a28
                         call               ?__nw@Base@@SAPAXK@Z                          // 0x0071751f    e8ccf1d1ff
                         add                esp, 0x0c                                     // 0x00717524    83c40c
                         cmp.s              eax, ebx                                      // 0x00717527    3bc3
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x00717529    0f845b090000
                         {disp32} mov       ecx, dword ptr [ebp + 0x00006000]             // 0x0071752f    8b8d00600000
                         push               ecx                                           // 0x00717535    51
                         mov.s              ecx, eax                                      // 0x00717536    8bc8
                         call               _jmp_addr_0x00733ac0                          // 0x00717538    e883c50100
                         xor.s              eax, eax                                      // 0x0071753d    33c0
                         pop                edi                                           // 0x0071753f    5f
                         pop                esi                                           // 0x00717540    5e
                         pop                ebp                                           // 0x00717541    5d
                         pop                ebx                                           // 0x00717542    5b
                         add                esp, 0x00000654                               // 0x00717543    81c454060000
                         ret                                                              // 0x00717549    c3
                         xor.s              edi, edi                                      // 0x0071754a    33ff
_jmp_addr_0x0071754c:    cmp.s              edi, ebx                                      // 0x0071754c    3bfb
                         {disp8} jne        _jmp_addr_0x0071755e                          // 0x0071754e    750e
                         {disp32} mov       edx, dword ptr [_game]                        // 0x00717550    8b155c19d000
                         {disp32} mov       edi, dword ptr [edx + 0x00205c5c]             // 0x00717556    8bba5c5c2000
                         {disp8} jmp        _jmp_addr_0x00717561                          // 0x0071755c    eb03
_jmp_addr_0x0071755e:    {disp8} mov        edi, dword ptr [edi + 0x24]                   // 0x0071755e    8b7f24
_jmp_addr_0x00717561:    cmp.s              edi, ebx                                      // 0x00717561    3bfb
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x00717563    0f8421090000
                         {disp8} mov        eax, dword ptr [edi + 0x1c]                   // 0x00717569    8b471c
                         cmp                eax, dword ptr [ebp + 0x00006000]             // 0x0071756c    3b8500600000
                         {disp8} jne        _jmp_addr_0x0071754c                          // 0x00717572    75d8
                         {disp32} lea       ecx, dword ptr [ebp + 0x00000800]             // 0x00717574    8d8d00080000
                         push               ecx                                           // 0x0071757a    51
                         {disp32} lea       edx, dword ptr [esp + 0x0000026c]             // 0x0071757b    8d94246c020000
                         push               edx                                           // 0x00717582    52
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x00717583    e8c80c0000
                         mov.s              esi, eax                                      // 0x00717588    8bf0
                         {disp8} mov        eax, dword ptr [esi + 0x08]                   // 0x0071758a    8b4608
                         add                esp, 0x08                                     // 0x0071758d    83c408
                         mov.s              ecx, esi                                      // 0x00717590    8bce
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x00717592    89442428
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x00717596    e8f5ba0e00
                         {disp8} fadd       dword ptr [esp + 0x28]                        // 0x0071759b    d8442428
                         fild               dword ptr [esi]                               // 0x0071759f    db06
                         sub                esp, 0x0c                                     // 0x007175a1    83ec0c
                         mov.s              eax, esp                                      // 0x007175a4    8bc4
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x007175a6    d80da4a38a00
                         {disp8} fild       dword ptr [esi + 0x04]                        // 0x007175ac    db4604
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x007175af    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x54]                        // 0x007175b5    d95c2454
                         {disp8} mov        ecx, dword ptr [esp + 0x54]                   // 0x007175b9    8b4c2454
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x007175bd    894808
                         fstp               dword ptr [eax]                               // 0x007175c0    d918
                         mov.s              ecx, edi                                      // 0x007175c2    8bcf
                         {disp8} fstp       dword ptr [eax + 0x04]                        // 0x007175c4    d95804
                         call               _jmp_addr_0x00733b90                          // 0x007175c7    e8c4c50100
                         {disp32} jmp       _jmp_addr_0x0071754c                          // 0x007175cc    e97bffffff
                         {disp32} lea       edx, dword ptr [esp + 0x00000280]             // 0x007175d1    8d942480020000
                         push               ebp                                           // 0x007175d8    55
                         push               edx                                           // 0x007175d9    52
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x007175da    e8710c0000
                         push               eax                                           // 0x007175df    50
                         call               _jmp_addr_0x00734180                          // 0x007175e0    e89bcb0100
                         add                esp, 0x0c                                     // 0x007175e5    83c40c
                         {disp32} mov       dword ptr [_PTR_00d99384], eax                // 0x007175e8    a38493d900
                         xor.s              eax, eax                                      // 0x007175ed    33c0
                         pop                edi                                           // 0x007175ef    5f
                         pop                esi                                           // 0x007175f0    5e
                         pop                ebp                                           // 0x007175f1    5d
                         pop                ebx                                           // 0x007175f2    5b
                         add                esp, 0x00000654                               // 0x007175f3    81c454060000
                         ret                                                              // 0x007175f9    c3
                         {disp32} mov       eax, dword ptr [ebp + 0x00006034]             // 0x007175fa    8b8534600000
                         push               eax                                           // 0x00717600    50
                         {disp32} lea       ecx, dword ptr [esp + 0x0000029c]             // 0x00717601    8d8c249c020000
                         push               ebp                                           // 0x00717608    55
                         push               ecx                                           // 0x00717609    51
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x0071760a    e8410c0000
                         add                esp, 0x08                                     // 0x0071760f    83c408
                         push               eax                                           // 0x00717612    50
                         call               _jmp_addr_0x00424820                          // 0x00717613    e808d2d0ff
                         add                esp, 0x08                                     // 0x00717618    83c408
                         {disp32} mov       dword ptr [_PTR_00d99384], eax                // 0x0071761b    a38493d900
                         xor.s              eax, eax                                      // 0x00717620    33c0
                         pop                edi                                           // 0x00717622    5f
                         pop                esi                                           // 0x00717623    5e
                         pop                ebp                                           // 0x00717624    5d
                         pop                ebx                                           // 0x00717625    5b
                         add                esp, 0x00000654                               // 0x00717626    81c454060000
                         ret                                                              // 0x0071762c    c3
                         push               0x0000055e                                    // 0x0071762d    685e050000
                         push               0x00c21fe8                                    // 0x00717632    68e81fc200
                         push               0x24                                          // 0x00717637    6a24
                         call               ?__nw@Base@@SAPAXK@Z                          // 0x00717639    e8b2f0d1ff
                         add                esp, 0x0c                                     // 0x0071763e    83c40c
                         cmp.s              eax, ebx                                      // 0x00717641    3bc3
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x00717643    0f8441080000
                         push               ebx                                           // 0x00717649    53
                         push               ebx                                           // 0x0071764a    53
                         mov.s              ecx, eax                                      // 0x0071764b    8bc8
                         call               @__ct__9GFootpathFP16GameThingWithPosP16GameThingWithPos@16                          // 0x0071764d    e85ed8e1ff
                         xor.s              eax, eax                                      // 0x00717652    33c0
                         pop                edi                                           // 0x00717654    5f
                         pop                esi                                           // 0x00717655    5e
                         pop                ebp                                           // 0x00717656    5d
                         pop                ebx                                           // 0x00717657    5b
                         add                esp, 0x00000654                               // 0x00717658    81c454060000
                         ret                                                              // 0x0071765e    c3
                         xor.s              esi, esi                                      // 0x0071765f    33f6
_jmp_addr_0x00717661:    cmp.s              esi, ebx                                      // 0x00717661    3bf3
                         {disp8} jne        _jmp_addr_0x00717673                          // 0x00717663    750e
                         {disp32} mov       edx, dword ptr [_game]                        // 0x00717665    8b155c19d000
                         {disp32} mov       esi, dword ptr [edx + 0x00205c64]             // 0x0071766b    8bb2645c2000
                         {disp8} jmp        _jmp_addr_0x00717676                          // 0x00717671    eb03
_jmp_addr_0x00717673:    {disp8} mov        esi, dword ptr [esi + 0x1c]                   // 0x00717673    8b761c
_jmp_addr_0x00717676:    cmp.s              esi, ebx                                      // 0x00717676    3bf3
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x00717678    0f840c080000
                         mov.s              ecx, esi                                      // 0x0071767e    8bce
                         call               _jmp_addr_0x00534f90                          // 0x00717680    e80bd9e1ff
                         cmp                eax, dword ptr [ebp + 0x00006000]             // 0x00717685    3b8500600000
                         {disp8} jne        _jmp_addr_0x00717661                          // 0x0071768b    75d4
                         {disp32} lea       eax, dword ptr [ebp + 0x00000800]             // 0x0071768d    8d8500080000
                         push               eax                                           // 0x00717693    50
                         {disp32} lea       ecx, dword ptr [esp + 0x000002b4]             // 0x00717694    8d8c24b4020000
                         push               ecx                                           // 0x0071769b    51
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x0071769c    e8af0b0000
                         add                esp, 0x08                                     // 0x007176a1    83c408
                         push               eax                                           // 0x007176a4    50
                         mov.s              ecx, esi                                      // 0x007176a5    8bce
                         call               @AddPos__9GFootpathFRC9MapCoords@12           // 0x007176a7    e814d9e1ff
                         {disp8} jmp        _jmp_addr_0x00717661                          // 0x007176ac    ebb3
                         {disp32} mov       edx, dword ptr [ebp + 0x0000603c]             // 0x007176ae    8b953c600000
                         {disp32} mov       eax, dword ptr [ebp + 0x00006038]             // 0x007176b4    8b8538600000
                         {disp32} mov       ecx, dword ptr [ebp + 0x00006034]             // 0x007176ba    8b8d34600000
                         push               edx                                           // 0x007176c0    52
                         push               eax                                           // 0x007176c1    50
                         push               ecx                                           // 0x007176c2    51
                         {disp32} lea       edx, dword ptr [esp + 0x000002d4]             // 0x007176c3    8d9424d4020000
                         push               ebp                                           // 0x007176ca    55
                         push               edx                                           // 0x007176cb    52
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x007176cc    e87f0b0000
                         add                esp, 0x08                                     // 0x007176d1    83c408
                         push               eax                                           // 0x007176d4    50
                         call               _jmp_addr_0x00439850                          // 0x007176d5    e87621d2ff
                         add                esp, 0x10                                     // 0x007176da    83c410
                         {disp32} mov       dword ptr [_PTR_00d99384], eax                // 0x007176dd    a38493d900
                         xor.s              eax, eax                                      // 0x007176e2    33c0
                         pop                edi                                           // 0x007176e4    5f
                         pop                esi                                           // 0x007176e5    5e
                         pop                ebp                                           // 0x007176e6    5d
                         pop                ebx                                           // 0x007176e7    5b
                         add                esp, 0x00000654                               // 0x007176e8    81c454060000
                         ret                                                              // 0x007176ee    c3
                         push               0x00d38ac0                                    // 0x007176ef    68c08ad300
                         {disp32} lea       eax, dword ptr [esp + 0x000002e4]             // 0x007176f4    8d8424e4020000
                         push               ebp                                           // 0x007176fb    55
                         push               eax                                           // 0x007176fc    50
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x007176fd    e84e0b0000
                         add                esp, 0x08                                     // 0x00717702    83c408
                         push               eax                                           // 0x00717705    50
                         call               _jmp_addr_0x00609340                          // 0x00717706    e8351cefff
                         add                esp, 0x08                                     // 0x0071770b    83c408
                         {disp32} mov       dword ptr [_PTR_00d99384], eax                // 0x0071770e    a38493d900
                         xor.s              eax, eax                                      // 0x00717713    33c0
                         pop                edi                                           // 0x00717715    5f
                         pop                esi                                           // 0x00717716    5e
                         pop                ebp                                           // 0x00717717    5d
                         pop                ebx                                           // 0x00717718    5b
                         add                esp, 0x00000654                               // 0x00717719    81c454060000
                         ret                                                              // 0x0071771f    c3
                         {disp32} mov       eax, dword ptr [ebp + 0x00006004]             // 0x00717720    8b8504600000
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x00717726    8d0440
                         lea                eax, dword ptr [eax + eax * 0x4]              // 0x00717729    8d0480
                         lea                ecx, dword ptr [eax + eax * 0x4]              // 0x0071772c    8d0c80
                         {disp32} lea       edx, dword ptr [ecx * 0x4 + 0x00d3a6d8]       // 0x0071772f    8d148dd8a6d300
                         push               edx                                           // 0x00717736    52
                         {disp32} lea       eax, dword ptr [esp + 0x000002fc]             // 0x00717737    8d8424fc020000
                         push               ebp                                           // 0x0071773e    55
                         push               eax                                           // 0x0071773f    50
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x00717740    e80b0b0000
                         add                esp, 0x08                                     // 0x00717745    83c408
                         push               eax                                           // 0x00717748    50
                         call               _jmp_addr_0x007346e0                          // 0x00717749    e892cf0100
                         add                esp, 0x08                                     // 0x0071774e    83c408
                         {disp32} mov       dword ptr [_PTR_00d99384], eax                // 0x00717751    a38493d900
                         xor.s              eax, eax                                      // 0x00717756    33c0
                         pop                edi                                           // 0x00717758    5f
                         pop                esi                                           // 0x00717759    5e
                         pop                ebp                                           // 0x0071775a    5d
                         pop                ebx                                           // 0x0071775b    5b
                         add                esp, 0x00000654                               // 0x0071775c    81c454060000
                         ret                                                              // 0x00717762    c3
                         {disp32} lea       ecx, dword ptr [esp + 0x00000310]             // 0x00717763    8d8c2410030000
                         push               ebp                                           // 0x0071776a    55
                         push               ecx                                           // 0x0071776b    51
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x0071776c    e8df0a0000
                         mov                edx, dword ptr [eax]                          // 0x00717771    8b10
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x00717773    8954241c
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x00717777    8b4804
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x0071777a    894c2420
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0071777e    8b5008
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                   // 0x00717781    8d44241c
                         push               eax                                           // 0x00717785    50
                         {disp8} mov        dword ptr [esp + 0x28], edx                   // 0x00717786    89542428
                         call               _jmp_addr_0x00734e60                          // 0x0071778a    e8d1d60100
                         add                esp, 0x0c                                     // 0x0071778f    83c40c
                         {disp32} mov       dword ptr [_PTR_00d99384], eax                // 0x00717792    a38493d900
                         xor.s              eax, eax                                      // 0x00717797    33c0
                         pop                edi                                           // 0x00717799    5f
                         pop                esi                                           // 0x0071779a    5e
                         pop                ebp                                           // 0x0071779b    5d
                         pop                ebx                                           // 0x0071779c    5b
                         add                esp, 0x00000654                               // 0x0071779d    81c454060000
                         ret                                                              // 0x007177a3    c3
                         {disp32} mov       ecx, dword ptr [ebp + 0x00006000]             // 0x007177a4    8b8d00600000
                         {disp32} mov       edx, dword ptr [_game]                        // 0x007177aa    8b155c19d000
                         {disp32} mov       dword ptr [edx + 0x00205a08], ecx             // 0x007177b0    898a085a2000
                         xor.s              eax, eax                                      // 0x007177b6    33c0
                         pop                edi                                           // 0x007177b8    5f
                         pop                esi                                           // 0x007177b9    5e
                         pop                ebp                                           // 0x007177ba    5d
                         pop                ebx                                           // 0x007177bb    5b
                         add                esp, 0x00000654                               // 0x007177bc    81c454060000
                         ret                                                              // 0x007177c2    c3
                         {disp32} mov       ecx, dword ptr [_PTR_00d99384]                // 0x007177c3    8b0d8493d900
                         cmp.s              ecx, ebx                                      // 0x007177c9    3bcb
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x007177cb    0f84b9060000
                         {disp32} mov       eax, dword ptr [_game]                        // 0x007177d1    a15c19d000
                         {disp32} mov       eax, dword ptr [eax + 0x00205c64]             // 0x007177d6    8b80645c2000
                         xor.s              edx, edx                                      // 0x007177dc    33d2
                         cmp.s              eax, ebx                                      // 0x007177de    3bc3
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x007177e0    0f84a4060000
                         {disp32} mov       ebp, dword ptr [ebp + 0x00006000]             // 0x007177e6    8bad00600000
_jmp_addr_0x007177ec:    cmp.s              ebp, edx                                      // 0x007177ec    3bea
                         {disp8} je         _jmp_addr_0x00717805                          // 0x007177ee    7415
                         {disp8} mov        eax, dword ptr [eax + 0x1c]                   // 0x007177f0    8b401c
                         inc                edx                                           // 0x007177f3    42
                         cmp.s              eax, ebx                                      // 0x007177f4    3bc3
                         {disp8} jne        _jmp_addr_0x007177ec                          // 0x007177f6    75f4
                         xor.s              eax, eax                                      // 0x007177f8    33c0
                         pop                edi                                           // 0x007177fa    5f
                         pop                esi                                           // 0x007177fb    5e
                         pop                ebp                                           // 0x007177fc    5d
                         pop                ebx                                           // 0x007177fd    5b
                         add                esp, 0x00000654                               // 0x007177fe    81c454060000
                         ret                                                              // 0x00717804    c3
_jmp_addr_0x00717805:    cmp.s              eax, ebx                                      // 0x00717805    3bc3
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x00717807    0f847d060000
                         mov                edx, dword ptr [ecx]                          // 0x0071780d    8b11
                         push               eax                                           // 0x0071780f    50
                         call               dword ptr [edx + 0x84]                        // 0x00717810    ff9284000000
                         xor.s              eax, eax                                      // 0x00717816    33c0
                         pop                edi                                           // 0x00717818    5f
                         pop                esi                                           // 0x00717819    5e
                         pop                ebp                                           // 0x0071781a    5d
                         pop                ebx                                           // 0x0071781b    5b
                         add                esp, 0x00000654                               // 0x0071781c    81c454060000
                         ret                                                              // 0x00717822    c3
                         {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x00717823    8b442424
                         mov                ecx, dword ptr [eax]                          // 0x00717827    8b08
                         {disp32} mov       edx, dword ptr [_game]                        // 0x00717829    8b155c19d000
                         {disp32} mov       dword ptr [edx + 0x00205a50], ecx             // 0x0071782f    898a505a2000
                         xor.s              eax, eax                                      // 0x00717835    33c0
                         pop                edi                                           // 0x00717837    5f
                         pop                esi                                           // 0x00717838    5e
                         pop                ebp                                           // 0x00717839    5d
                         pop                ebx                                           // 0x0071783a    5b
                         add                esp, 0x00000654                               // 0x0071783b    81c454060000
                         ret                                                              // 0x00717841    c3
                         cmp                dword ptr [data_bytes + 0x25ad5c], ebx        // 0x00717842    391d5c0dc200
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x00717848    0f843c060000
                         push               ebp                                           // 0x0071784e    55
                         call               ?GetPlayerFromText@GPlayer@@SAPAV1@PAD@Z      // 0x0071784f    e88c3df3ff
                         {disp32} mov       ecx, dword ptr [ebp + 0x00006004]             // 0x00717854    8b8d04600000
                         add                esp, 0x04                                     // 0x0071785a    83c404
                         push               ecx                                           // 0x0071785d    51
                         mov.s              ecx, eax                                      // 0x0071785e    8bc8
                         call               _jmp_addr_0x0064c400                          // 0x00717860    e89b4bf3ff
                         xor.s              eax, eax                                      // 0x00717865    33c0
                         pop                edi                                           // 0x00717867    5f
                         pop                esi                                           // 0x00717868    5e
                         pop                ebp                                           // 0x00717869    5d
                         pop                ebx                                           // 0x0071786a    5b
                         add                esp, 0x00000654                               // 0x0071786b    81c454060000
                         ret                                                              // 0x00717871    c3
                         push               ebp                                           // 0x00717872    55
                         call               ?GetPlayerFromText@GPlayer@@SAPAV1@PAD@Z      // 0x00717873    e8683df3ff
                         add                ebp, 0x00000800                               // 0x00717878    81c500080000
                         push               ebp                                           // 0x0071787e    55
                         mov.s              esi, eax                                      // 0x0071787f    8bf0
                         call               ?GetPlayerFromText@GPlayer@@SAPAV1@PAD@Z      // 0x00717881    e85a3df3ff
                         add                esp, 0x08                                     // 0x00717886    83c408
                         cmp.s              esi, ebx                                      // 0x00717889    3bf3
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x0071788b    0f84f9050000
                         cmp.s              eax, ebx                                      // 0x00717891    3bc3
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x00717893    0f84f1050000
                         {disp32} mov       esi, dword ptr [esi + 0x00000944]             // 0x00717899    8bb644090000
                         cmp.s              esi, ebx                                      // 0x0071789f    3bf3
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x007178a1    0f84e3050000
                         mov.s              ecx, eax                                      // 0x007178a7    8bc8
                         call               ?GetPlayerNumber@GPlayer@@QBEEXZ              // 0x007178a9    e8e22ef3ff
                         {disp32} mov       byte ptr [esi + 0x000001d0], al               // 0x007178ae    8886d0010000
                         xor.s              eax, eax                                      // 0x007178b4    33c0
                         pop                edi                                           // 0x007178b6    5f
                         pop                esi                                           // 0x007178b7    5e
                         pop                ebp                                           // 0x007178b8    5d
                         pop                ebx                                           // 0x007178b9    5b
                         add                esp, 0x00000654                               // 0x007178ba    81c454060000
                         ret                                                              // 0x007178c0    c3
                         {disp32} lea       edx, dword ptr [esp + 0x00000328]             // 0x007178c1    8d942428030000
                         push               ebp                                           // 0x007178c8    55
                         push               edx                                           // 0x007178c9    52
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x007178ca    e881090000
                         mov                ecx, dword ptr [eax]                          // 0x007178cf    8b08
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                   // 0x007178d1    894c241c
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x007178d5    8b5004
                         {disp8} mov        dword ptr [esp + 0x20], edx                   // 0x007178d8    89542420
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x007178dc    8b4008
                         add                ebp, 0x00000800                               // 0x007178df    81c500080000
                         push               ebp                                           // 0x007178e5    55
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x007178e6    89442428
                         call               _jmp_addr_0x0072b170                          // 0x007178ea    e881380100
                         push               0x3f800000                                    // 0x007178ef    680000803f
                         push               -0x1                                          // 0x007178f4    6aff
                         push               eax                                           // 0x007178f6    50
                         {disp8} lea        ecx, dword ptr [esp + 0x2c]                   // 0x007178f7    8d4c242c
                         push               ecx                                           // 0x007178fb    51
                         call               _jmp_addr_0x0072a2f0                          // 0x007178fc    e8ef290100
                         add                esp, 0x1c                                     // 0x00717901    83c41c
                         {disp32} jmp       _jmp_addr_0x00716a39                          // 0x00717904    e930f1ffff
                         {disp32} lea       edx, dword ptr [esp + 0x00000340]             // 0x00717909    8d942440030000
                         push               ebp                                           // 0x00717910    55
                         push               edx                                           // 0x00717911    52
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x00717912    e839090000
                         mov                ecx, dword ptr [eax]                          // 0x00717917    8b08
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                   // 0x00717919    894c241c
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x0071791d    8b5004
                         {disp8} mov        dword ptr [esp + 0x20], edx                   // 0x00717920    89542420
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00717924    8b4008
                         add                ebp, 0x00000800                               // 0x00717927    81c500080000
                         push               ebp                                           // 0x0071792d    55
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x0071792e    89442428
                         call               ?GetInfoFromText@GMagicInfo@@SAHPAD@Z         // 0x00717932    e8793aeeff
                         mov.s              edi, eax                                      // 0x00717937    8bf8
                         add                esp, 0x0c                                     // 0x00717939    83c40c
                         cmp.s              edi, ebx                                      // 0x0071793c    3bfb
                         {disp32} jle       _jmp_addr_0x00717e8a                          // 0x0071793e    0f8e46050000
                         cmp                edi, 0x2a                                     // 0x00717944    83ff2a
                         {disp32} jge       _jmp_addr_0x00717e8a                          // 0x00717947    0f8d3d050000
                         push               edi                                           // 0x0071794d    57
                         call               ?GetFirstSpellSeedForMagicType@GSpellSeedInfo@@SA?AW4SPELL_SEED_TYPE@@W4MAGIC_TYPE@@@Z // 0x0071794e    e83d370100
                         mov.s              esi, eax                                      // 0x00717953    8bf0
                         add                esp, 0x04                                     // 0x00717955    83c404
                         cmp                esi, -0x01                                    // 0x00717958    83feff
                         {disp32} jle       _jmp_addr_0x00717e8a                          // 0x0071795b    0f8e29050000
                         cmp                esi, 0x1e                                     // 0x00717961    83fe1e
                         {disp32} jge       _jmp_addr_0x00717e8a                          // 0x00717964    0f8d20050000
                         lea                eax, dword ptr [esi + esi * 0x4]              // 0x0071796a    8d04b6
                         lea                ecx, dword ptr [eax + eax * 0x4]              // 0x0071796d    8d0c80
                         shl                ecx, 4                                        // 0x00717970    c1e104
                         push               edi                                           // 0x00717973    57
                         add                ecx, OFFSET _GSpellSeedInfo_ARRAY_00d9d678    // 0x00717974    81c178d6d900
                         call               @GetPowerUpFromMagicType__14GSpellSeedInfoCF10MAGIC_TYPE@12                          // 0x0071797a    e8f1350100
                         push               0x3f800000                                    // 0x0071797f    680000803f
                         push               eax                                           // 0x00717984    50
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x00717985    8d4c241c
                         push               esi                                           // 0x00717989    56
                         push               ecx                                           // 0x0071798a    51
                         call               _jmp_addr_0x0072a2f0                          // 0x0071798b    e860290100
                         add                esp, 0x10                                     // 0x00717990    83c410
                         {disp32} jmp       _jmp_addr_0x00716a39                          // 0x00717993    e9a1f0ffff
                         push               ebp                                           // 0x00717998    55
                         call               ?GetInfoFromText@GMagicInfo@@SAHPAD@Z         // 0x00717999    e8123aeeff
                         {disp32} fld       dword ptr [ebp + 0x00006034]                  // 0x0071799e    d98534600000
                         fstp               dword ptr [esp]                               // 0x007179a4    d91c24
                         push               eax                                           // 0x007179a7    50
                         call               _jmp_addr_0x0052b630                          // 0x007179a8    e8833ce1ff
                         add                esp, 0x08                                     // 0x007179ad    83c408
                         xor.s              eax, eax                                      // 0x007179b0    33c0
                         pop                edi                                           // 0x007179b2    5f
                         pop                esi                                           // 0x007179b3    5e
                         pop                ebp                                           // 0x007179b4    5d
                         pop                ebx                                           // 0x007179b5    5b
                         add                esp, 0x00000654                               // 0x007179b6    81c454060000
                         ret                                                              // 0x007179bc    c3
                         {disp32} lea       edx, dword ptr [esp + 0x00000358]             // 0x007179bd    8d942458030000
                         push               ebp                                           // 0x007179c4    55
                         push               edx                                           // 0x007179c5    52
                         call               ?GetScriptPos@GSetup@@SAPAUMapCoords@@PAD@Z   // 0x007179c6    e885080000
                         mov                ecx, dword ptr [eax]                          // 0x007179cb    8b08
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                   // 0x007179cd    894c241c
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x007179d1    8b5004
                         {disp8} mov        dword ptr [esp + 0x20], edx                   // 0x007179d4    89542420
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x007179d8    8b4008
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x007179db    8d4c241c
                         push               ecx                                           // 0x007179df    51
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x007179e0    89442428
                         call               ?Create@FireFly@@SAPAV1@ABUMapCoords@@@Z      // 0x007179e4    e81728e1ff
                         add                esp, 0x0c                                     // 0x007179e9    83c40c
                         {disp32} mov       edx, dword ptr [ebp + 0x00006000]             // 0x007179ec    8b9500600000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x007179f2    8b0d5c19d000
                         push               edx                                           // 0x007179f8    52
                         call               ?FindTownWithID@GGame@@QAEPAVTown@@K@Z        // 0x007179f9    e8a2b5e3ff
                         mov.s              esi, eax                                      // 0x007179fe    8bf0
                         {disp32} lea       eax, dword ptr [ebp + 0x00000800]             // 0x00717a00    8d8500080000
                         push               eax                                           // 0x00717a06    50
                         call               _jmp_addr_0x00747270                          // 0x00717a07    e864f80200
                         add                esp, 0x04                                     // 0x00717a0c    83c404
                         cmp.s              esi, ebx                                      // 0x00717a0f    3bf3
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x00717a11    0f8473040000
                         cmp                eax, -0x01                                    // 0x00717a17    83f8ff
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x00717a1a    0f846a040000
                         {disp32} mov       ecx, dword ptr [ebp + 0x00006038]             // 0x00717a20    8b8d38600000
                         {disp32} mov       dword ptr [esi + eax * 0x4 + 0x00000108], ecx // 0x00717a26    898c8608010000
                         xor.s              eax, eax                                      // 0x00717a2d    33c0
                         pop                edi                                           // 0x00717a2f    5f
                         pop                esi                                           // 0x00717a30    5e
                         pop                ebp                                           // 0x00717a31    5d
                         pop                ebx                                           // 0x00717a32    5b
                         add                esp, 0x00000654                               // 0x00717a33    81c454060000
                         ret                                                              // 0x00717a39    c3
                         {disp32} mov       eax, dword ptr [ebp + 0x00006000]             // 0x00717a3a    8b8500600000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00717a40    8b0d5c19d000
                         {disp32} lea       edx, dword ptr [ebp + 0x00000800]             // 0x00717a46    8d9500080000
                         push               edx                                           // 0x00717a4c    52
                         push               eax                                           // 0x00717a4d    50
                         call               ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z          // 0x00717a4e    e85d8fe3ff
                         {disp32} mov       ecx, dword ptr [eax + 0x00000944]             // 0x00717a53    8b8844090000
                         call               _jmp_addr_0x006642b0                          // 0x00717a59    e852c8f4ff
                         xor.s              eax, eax                                      // 0x00717a5e    33c0
                         pop                edi                                           // 0x00717a60    5f
                         pop                esi                                           // 0x00717a61    5e
                         pop                ebp                                           // 0x00717a62    5d
                         pop                ebx                                           // 0x00717a63    5b
                         add                esp, 0x00000654                               // 0x00717a64    81c454060000
                         ret                                                              // 0x00717a6a    c3
                         push               ebp                                           // 0x00717a6b    55
                         call               ?GetPlayerFromText@GPlayer@@SAPAV1@PAD@Z      // 0x00717a6c    e86f3bf3ff
                         {disp32} mov       ecx, dword ptr [ebp + 0x00006038]             // 0x00717a71    8b8d38600000
                         add                esp, 0x04                                     // 0x00717a77    83c404
                         push               ecx                                           // 0x00717a7a    51
                         {disp32} mov       ecx, dword ptr [eax + 0x00000944]             // 0x00717a7b    8b8844090000
                         add                ebp, 0x00000800                               // 0x00717a81    81c500080000
                         push               ebp                                           // 0x00717a87    55
                         call               _jmp_addr_0x00664000                          // 0x00717a88    e873c5f4ff
                         xor.s              eax, eax                                      // 0x00717a8d    33c0
                         pop                edi                                           // 0x00717a8f    5f
                         pop                esi                                           // 0x00717a90    5e
                         pop                ebp                                           // 0x00717a91    5d
                         pop                ebx                                           // 0x00717a92    5b
                         add                esp, 0x00000654                               // 0x00717a93    81c454060000
                         ret                                                              // 0x00717a99    c3
                         {disp32} mov       edx, dword ptr [ebp + 0x00006034]             // 0x00717a9a    8b9534600000
                         {disp32} mov       eax, dword ptr [ebp + 0x00006000]             // 0x00717aa0    8b8500600000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00717aa6    8b0d5c19d000
                         push               ebx                                           // 0x00717aac    53
                         push               edx                                           // 0x00717aad    52
                         push               eax                                           // 0x00717aae    50
                         call               ?SetLandBalance@GGame@@QAEXKMPAVGPlayer@@@Z   // 0x00717aaf    e8dcdde3ff
                         xor.s              eax, eax                                      // 0x00717ab4    33c0
                         pop                edi                                           // 0x00717ab6    5f
                         pop                esi                                           // 0x00717ab7    5e
                         pop                ebp                                           // 0x00717ab8    5d
                         pop                ebx                                           // 0x00717ab9    5b
                         add                esp, 0x00000654                               // 0x00717aba    81c454060000
                         ret                                                              // 0x00717ac0    c3
                         {disp32} mov       ecx, dword ptr [ebp + 0x00006038]             // 0x00717ac1    8b8d38600000
                         {disp32} mov       edi, dword ptr [ebp + 0x00006004]             // 0x00717ac7    8bbd04600000
                         push               0x3                                           // 0x00717acd    6a03
                         push               0x00c22040                                    // 0x00717acf    684020c200
                         push               ebp                                           // 0x00717ad4    55
                         {disp8} mov        dword ptr [esp + 0x34], ecx                   // 0x00717ad5    894c2434
                         call               __strnicmp                                    // 0x00717ad9    e8322c0c00
                         add                esp, 0x0c                                     // 0x00717ade    83c40c
                         test               eax, eax                                      // 0x00717ae1    85c0
                         {disp8} jne        _jmp_addr_0x00717b2c                          // 0x00717ae3    7547
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00717ae5    8b0d5c19d000
                         push               ebx                                           // 0x00717aeb    53
                         call               ?GetNextPlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z  // 0x00717aec    e8af8de3ff
                         mov.s              esi, eax                                      // 0x00717af1    8bf0
                         cmp.s              esi, ebx                                      // 0x00717af3    3bf3
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x00717af5    0f848f030000
                         {disp8} mov        ebp, dword ptr [esp + 0x28]                   // 0x00717afb    8b6c2428
_jmp_addr_0x00717aff:    {disp32} mov       ecx, dword ptr [_game]                        // 0x00717aff    8b0d5c19d000
                         push               esi                                           // 0x00717b05    56
                         push               ebp                                           // 0x00717b06    55
                         push               edi                                           // 0x00717b07    57
                         call               ?SetLandBalance@GGame@@QAEXKMPAVGPlayer@@@Z   // 0x00717b08    e883dde3ff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00717b0d    8b0d5c19d000
                         push               esi                                           // 0x00717b13    56
                         call               ?GetNextPlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z  // 0x00717b14    e8878de3ff
                         mov.s              esi, eax                                      // 0x00717b19    8bf0
                         cmp.s              esi, ebx                                      // 0x00717b1b    3bf3
                         {disp8} jne        _jmp_addr_0x00717aff                          // 0x00717b1d    75e0
                         xor.s              eax, eax                                      // 0x00717b1f    33c0
                         pop                edi                                           // 0x00717b21    5f
                         pop                esi                                           // 0x00717b22    5e
                         pop                ebp                                           // 0x00717b23    5d
                         pop                ebx                                           // 0x00717b24    5b
                         add                esp, 0x00000654                               // 0x00717b25    81c454060000
                         ret                                                              // 0x00717b2b    c3
_jmp_addr_0x00717b2c:    push               ebp                                           // 0x00717b2c    55
                         call               ?GetPlayerFromText@GPlayer@@SAPAV1@PAD@Z      // 0x00717b2d    e8ae3af3ff
                         add                esp, 0x04                                     // 0x00717b32    83c404
                         cmp.s              eax, ebx                                      // 0x00717b35    3bc3
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x00717b37    0f844d030000
                         {disp8} mov        edx, dword ptr [esp + 0x28]                   // 0x00717b3d    8b542428
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00717b41    8b0d5c19d000
                         push               eax                                           // 0x00717b47    50
                         push               edx                                           // 0x00717b48    52
                         push               edi                                           // 0x00717b49    57
                         call               ?SetLandBalance@GGame@@QAEXKMPAVGPlayer@@@Z   // 0x00717b4a    e841dde3ff
                         xor.s              eax, eax                                      // 0x00717b4f    33c0
                         pop                edi                                           // 0x00717b51    5f
                         pop                esi                                           // 0x00717b52    5e
                         pop                ebp                                           // 0x00717b53    5d
                         pop                ebx                                           // 0x00717b54    5b
                         add                esp, 0x00000654                               // 0x00717b55    81c454060000
                         ret                                                              // 0x00717b5b    c3
                         {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x00717b5c    8b442424
                         mov                ecx, dword ptr [eax]                          // 0x00717b60    8b08
                         {disp32} mov       edx, dword ptr [_game]                        // 0x00717b62    8b155c19d000
                         {disp32} mov       dword ptr [edx + 0x00250078], ecx             // 0x00717b68    898a78002500
                         xor.s              eax, eax                                      // 0x00717b6e    33c0
                         pop                edi                                           // 0x00717b70    5f
                         pop                esi                                           // 0x00717b71    5e
                         pop                ebp                                           // 0x00717b72    5d
                         pop                ebx                                           // 0x00717b73    5b
                         add                esp, 0x00000654                               // 0x00717b74    81c454060000
                         ret                                                              // 0x00717b7a    c3
                         {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x00717b7b    8b442424
                         mov                ecx, dword ptr [eax]                          // 0x00717b7f    8b08
                         {disp32} mov       edx, dword ptr [_game]                        // 0x00717b81    8b155c19d000
                         {disp32} mov       dword ptr [edx + 0x0025007c], ecx             // 0x00717b87    898a7c002500
                         xor.s              eax, eax                                      // 0x00717b8d    33c0
                         pop                edi                                           // 0x00717b8f    5f
                         pop                esi                                           // 0x00717b90    5e
                         pop                ebp                                           // 0x00717b91    5d
                         pop                ebx                                           // 0x00717b92    5b
                         add                esp, 0x00000654                               // 0x00717b93    81c454060000
                         ret                                                              // 0x00717b99    c3
                         {disp32} mov       eax, dword ptr [ebp + 0x00006000]             // 0x00717b9a    8b8500600000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00717ba0    8b0d5c19d000
                         push               eax                                           // 0x00717ba6    50
                         call               ?FindTownWithID@GGame@@QAEPAVTown@@K@Z        // 0x00717ba7    e8f4b3e3ff
                         cmp.s              eax, ebx                                      // 0x00717bac    3bc3
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x00717bae    0f84d6020000
                         {disp32} mov       ecx, dword ptr [ebp + 0x00006034]             // 0x00717bb4    8b8d34600000
                         {disp32} mov       dword ptr [eax + 0x000005dc], ecx             // 0x00717bba    8988dc050000
                         xor.s              eax, eax                                      // 0x00717bc0    33c0
                         pop                edi                                           // 0x00717bc2    5f
                         pop                esi                                           // 0x00717bc3    5e
                         pop                ebp                                           // 0x00717bc4    5d
                         pop                ebx                                           // 0x00717bc5    5b
                         add                esp, 0x00000654                               // 0x00717bc6    81c454060000
                         ret                                                              // 0x00717bcc    c3
                         {disp32} mov       ecx, dword ptr [ebp + 0x00006004]             // 0x00717bcd    8b8d04600000
                         cmp.s              ecx, ebx                                      // 0x00717bd3    3bcb
                         {disp8} jne        _jmp_addr_0x00717bf0                          // 0x00717bd5    7519
                         push               ebp                                           // 0x00717bd7    55
                         call               _CHAR2WCHAR__FPc                              // 0x00717bd8    e8c3841100
                         push               eax                                           // 0x00717bdd    50
                         {disp32} lea       edx, dword ptr [esp + 0x00000464]             // 0x00717bde    8d942464040000
                         push               edx                                           // 0x00717be5    52
                         call               _wcscpy                                       // 0x00717be6    e8cbe30a00
                         add                esp, 0x0c                                     // 0x00717beb    83c40c
                         {disp8} jmp        _jmp_addr_0x00717c46                          // 0x00717bee    eb56
_jmp_addr_0x00717bf0:    sub                ecx, 0x02                                     // 0x00717bf0    83e902
                         mov                eax, 0x00001b36                               // 0x00717bf3    b8361b0000
                         {disp8} je         _jmp_addr_0x00717c0e                          // 0x00717bf8    7414
                         dec                ecx                                           // 0x00717bfa    49
                         {disp8} je         _jmp_addr_0x00717c07                          // 0x00717bfb    740a
                         dec                ecx                                           // 0x00717bfd    49
                         {disp8} jne        _jmp_addr_0x00717c13                          // 0x00717bfe    7513
                         mov                eax, 0x00001b38                               // 0x00717c00    b8381b0000
                         {disp8} jmp        _jmp_addr_0x00717c13                          // 0x00717c05    eb0c
_jmp_addr_0x00717c07:    mov                eax, 0x00001b37                               // 0x00717c07    b8371b0000
                         {disp8} jmp        _jmp_addr_0x00717c13                          // 0x00717c0c    eb05
_jmp_addr_0x00717c0e:    mov                eax, 0x00001b36                               // 0x00717c0e    b8361b0000
_jmp_addr_0x00717c13:    cmp                eax, dword ptr [data_bytes + 0x351cac]        // 0x00717c13    3b05ac7cd100
                         {disp8} jae        _jmp_addr_0x00717c1f                          // 0x00717c19    7304
                         cmp.s              eax, ebx                                      // 0x00717c1b    3bc3
                         {disp8} ja         _jmp_addr_0x00717c26                          // 0x00717c1d    7707
_jmp_addr_0x00717c1f:    {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00717c1f    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x00717c32                          // 0x00717c24    eb0c
_jmp_addr_0x00717c26:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00717c26    8b0da87cd100
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x00717c2c    8d0440
                         lea                eax, dword ptr [ecx + eax * 0x4]              // 0x00717c2f    8d0481
_jmp_addr_0x00717c32:    {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x00717c32    8b5008
                         push               edx                                           // 0x00717c35    52
                         {disp32} lea       eax, dword ptr [esp + 0x00000460]             // 0x00717c36    8d842460040000
                         push               eax                                           // 0x00717c3d    50
                         call               _wcscpy                                       // 0x00717c3e    e873e30a00
                         add                esp, 0x08                                     // 0x00717c43    83c408
_jmp_addr_0x00717c46:    {disp32} mov       edi, dword ptr [data_bytes + 0x30ab14]        // 0x00717c46    8b3d140bcd00
                         call               _HideAll__13DialogBoxBaseFv@0                 // 0x00717c4c    e88fbadfff
                         {disp8} mov        edx, dword ptr [edi + 0x10]                   // 0x00717c51    8b5710
                         {disp32} lea       ecx, dword ptr [esp + 0x0000045c]             // 0x00717c54    8d8c245c040000
                         push               ecx                                           // 0x00717c5b    51
                         add                edx, 0x24                                     // 0x00717c5c    83c224
                         push               edx                                           // 0x00717c5f    52
                         call               _wcscpy                                       // 0x00717c60    e851e30a00
                         {disp8} mov        esi, dword ptr [edi + 0x14]                   // 0x00717c65    8b7714
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]             // 0x00717c68    8b8650020000
                         add                esp, 0x08                                     // 0x00717c6e    83c408
                         cmp.s              eax, ebx                                      // 0x00717c71    3bc3
                         {disp8} jle        _jmp_addr_0x00717c88                          // 0x00717c73    7e13
_jmp_addr_0x00717c75:    dec                eax                                           // 0x00717c75    48
                         push               eax                                           // 0x00717c76    50
                         mov.s              ecx, esi                                      // 0x00717c77    8bce
                         call               @DeleteString__9SetupListFi@12                // 0x00717c79    e8e230cfff
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]             // 0x00717c7e    8b8650020000
                         cmp.s              eax, ebx                                      // 0x00717c84    3bc3
                         {disp8} jg         _jmp_addr_0x00717c75                          // 0x00717c86    7fed
_jmp_addr_0x00717c88:    mov                eax, dword ptr [edi]                          // 0x00717c88    8b07
                         mov.s              ecx, edi                                      // 0x00717c8a    8bcf
                         call               dword ptr [eax + 0xc]                         // 0x00717c8c    ff500c
                         xor.s              eax, eax                                      // 0x00717c8f    33c0
                         pop                edi                                           // 0x00717c91    5f
                         pop                esi                                           // 0x00717c92    5e
                         pop                ebp                                           // 0x00717c93    5d
                         pop                ebx                                           // 0x00717c94    5b
                         add                esp, 0x00000654                               // 0x00717c95    81c454060000
                         ret                                                              // 0x00717c9b    c3
                         {disp32} mov       ecx, dword ptr [ebp + 0x00006004]             // 0x00717c9c    8b8d04600000
                         cmp.s              ecx, ebx                                      // 0x00717ca2    3bcb
                         {disp8} jne        _jmp_addr_0x00717cbf                          // 0x00717ca4    7519
                         push               ebp                                           // 0x00717ca6    55
                         call               _CHAR2WCHAR__FPc                              // 0x00717ca7    e8f4831100
                         push               eax                                           // 0x00717cac    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00000464]             // 0x00717cad    8d8c2464040000
                         push               ecx                                           // 0x00717cb4    51
                         call               _wcscpy                                       // 0x00717cb5    e8fce20a00
                         add                esp, 0x0c                                     // 0x00717cba    83c40c
                         {disp8} jmp        _jmp_addr_0x00717d14                          // 0x00717cbd    eb55
_jmp_addr_0x00717cbf:    sub                ecx, 0x02                                     // 0x00717cbf    83e902
                         mov                eax, 0x00001b36                               // 0x00717cc2    b8361b0000
                         {disp8} je         _jmp_addr_0x00717cdd                          // 0x00717cc7    7414
                         dec                ecx                                           // 0x00717cc9    49
                         {disp8} je         _jmp_addr_0x00717cd6                          // 0x00717cca    740a
                         dec                ecx                                           // 0x00717ccc    49
                         {disp8} jne        _jmp_addr_0x00717ce2                          // 0x00717ccd    7513
                         mov                eax, 0x00001b38                               // 0x00717ccf    b8381b0000
                         {disp8} jmp        _jmp_addr_0x00717ce2                          // 0x00717cd4    eb0c
_jmp_addr_0x00717cd6:    mov                eax, 0x00001b37                               // 0x00717cd6    b8371b0000
                         {disp8} jmp        _jmp_addr_0x00717ce2                          // 0x00717cdb    eb05
_jmp_addr_0x00717cdd:    mov                eax, 0x00001b36                               // 0x00717cdd    b8361b0000
_jmp_addr_0x00717ce2:    cmp                eax, dword ptr [data_bytes + 0x351cac]        // 0x00717ce2    3b05ac7cd100
                         {disp8} jae        _jmp_addr_0x00717cee                          // 0x00717ce8    7304
                         cmp.s              eax, ebx                                      // 0x00717cea    3bc3
                         {disp8} ja         _jmp_addr_0x00717cf5                          // 0x00717cec    7707
_jmp_addr_0x00717cee:    {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00717cee    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x00717d00                          // 0x00717cf3    eb0b
_jmp_addr_0x00717cf5:    lea                edx, dword ptr [eax + eax * 0x2]              // 0x00717cf5    8d1440
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00717cf8    a1a87cd100
                         lea                eax, dword ptr [eax + edx * 0x4]              // 0x00717cfd    8d0490
_jmp_addr_0x00717d00:    {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x00717d00    8b4808
                         push               ecx                                           // 0x00717d03    51
                         {disp32} lea       edx, dword ptr [esp + 0x00000460]             // 0x00717d04    8d942460040000
                         push               edx                                           // 0x00717d0b    52
                         call               _wcscpy                                       // 0x00717d0c    e8a5e20a00
                         add                esp, 0x08                                     // 0x00717d11    83c408
_jmp_addr_0x00717d14:    {disp32} mov       eax, dword ptr [data_bytes + 0x30ab14]        // 0x00717d14    a1140bcd00
                         {disp8} mov        esi, dword ptr [eax + 0x14]                   // 0x00717d19    8b7014
                         {disp32} mov       edx, dword ptr [esi + 0x00000250]             // 0x00717d1c    8b9650020000
                         {disp32} lea       ecx, dword ptr [esp + 0x0000045c]             // 0x00717d22    8d8c245c040000
                         push               ecx                                           // 0x00717d29    51
                         push               edx                                           // 0x00717d2a    52
                         mov.s              ecx, esi                                      // 0x00717d2b    8bce
                         call               @InsertString__9SetupListFiPw@16              // 0x00717d2d    e83e31cfff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000250]             // 0x00717d32    8b8e50020000
                         {disp8} lea        eax, dword ptr [ecx + -0x01]                  // 0x00717d38    8d41ff
                         cmp.s              eax, ebx                                      // 0x00717d3b    3bc3
                         {disp32} jl        _jmp_addr_0x00717e8a                          // 0x00717d3d    0f8c47010000
                         cmp.s              eax, ecx                                      // 0x00717d43    3bc1
                         {disp32} jge       _jmp_addr_0x00717e8a                          // 0x00717d45    0f8d3f010000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000268]             // 0x00717d4b    8b8e68020000
                         mov                dword ptr [ecx + eax * 0x4], ebx              // 0x00717d51    891c81
                         xor.s              eax, eax                                      // 0x00717d54    33c0
                         pop                edi                                           // 0x00717d56    5f
                         pop                esi                                           // 0x00717d57    5e
                         pop                ebp                                           // 0x00717d58    5d
                         pop                ebx                                           // 0x00717d59    5b
                         add                esp, 0x00000654                               // 0x00717d5a    81c454060000
                         ret                                                              // 0x00717d60    c3
                         {disp32} mov       edx, dword ptr [ebp + 0x00006038]             // 0x00717d61    8b9538600000
                         {disp32} mov       eax, dword ptr [ebp + 0x00006034]             // 0x00717d67    8b8534600000
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x00717d6d    8b4c2424
                         push               edx                                           // 0x00717d71    52
                         mov                edx, dword ptr [ecx]                          // 0x00717d72    8b11
                         push               eax                                           // 0x00717d74    50
                         push               edx                                           // 0x00717d75    52
                         mov                ecx, OFFSET _GGameInfo_00d019f8               // 0x00717d76    b9f819d000
                         call               @SetVisualTimeCycleFromMapEditor__9GGameInfoFfff@20                          // 0x00717d7b    e830fee3ff
                         xor.s              eax, eax                                      // 0x00717d80    33c0
                         pop                edi                                           // 0x00717d82    5f
                         pop                esi                                           // 0x00717d83    5e
                         pop                ebp                                           // 0x00717d84    5d
                         pop                ebx                                           // 0x00717d85    5b
                         add                esp, 0x00000654                               // 0x00717d86    81c454060000
                         ret                                                              // 0x00717d8c    c3
                         {disp32} mov       ecx, dword ptr [_PTR_00d99384]                // 0x00717d8d    8b0d8493d900
                         cmp.s              ecx, ebx                                      // 0x00717d93    3bcb
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x00717d95    0f84ef000000
                         mov                eax, dword ptr [ecx]                          // 0x00717d9b    8b01
                         call               dword ptr [eax + 0x2c]                        // 0x00717d9d    ff502c
                         test               eax, eax                                      // 0x00717da0    85c0
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x00717da2    0f84e2000000
                         {disp32} mov       ecx, dword ptr [_PTR_00d99384]                // 0x00717da8    8b0d8493d900
                         mov                edx, dword ptr [ecx]                          // 0x00717dae    8b11
                         call               dword ptr [edx + 0xcc]                        // 0x00717db0    ff92cc000000
                         test               al, al                                        // 0x00717db6    84c0
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x00717db8    0f84cc000000
                         {disp32} mov       eax, dword ptr [_PTR_00d99384]                // 0x00717dbe    a18493d900
                         push               ebx                                           // 0x00717dc3    53
                         push               0x009c7f68                                    // 0x00717dc4    68687f9c00
                         push               0x009c7f18                                    // 0x00717dc9    68187f9c00
                         push               ebx                                           // 0x00717dce    53
                         push               eax                                           // 0x00717dcf    50
                         call               ___RTDynamicCast                              // 0x00717dd0    e844dc0a00
                         mov.s              edi, eax                                      // 0x00717dd5    8bf8
                         add                esp, 0x14                                     // 0x00717dd7    83c414
                         cmp.s              edi, ebx                                      // 0x00717dda    3bfb
                         {disp32} je        _jmp_addr_0x00717e8a                          // 0x00717ddc    0f84a8000000
                         {disp32} mov       ecx, dword ptr [ebp + 0x00006000]             // 0x00717de2    8b8d00600000
                         push               ecx                                           // 0x00717de8    51
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00717de9    8b0d5c19d000
                         call               ?FindTownWithID@GGame@@QAEPAVTown@@K@Z        // 0x00717def    e8acb1e3ff
                         {disp32} lea       edx, dword ptr [ebp + 0x00000800]             // 0x00717df4    8d9500080000
                         push               edx                                           // 0x00717dfa    52
                         mov.s              esi, eax                                      // 0x00717dfb    8bf0
                         call               ?GetPlayerFromText@GPlayer@@SAPAV1@PAD@Z      // 0x00717dfd    e8de37f3ff
                         add                esp, 0x04                                     // 0x00717e02    83c404
                         test               esi, esi                                      // 0x00717e05    85f6
                         mov.s              ebx, eax                                      // 0x00717e07    8bd8
                         {disp8} jne        _jmp_addr_0x00717e2b                          // 0x00717e09    7520
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00717e0b    8b0d5c19d000
                         {disp8} lea        eax, dword ptr [edi + 0x14]                   // 0x00717e11    8d4714
                         push               eax                                           // 0x00717e14    50
                         call               _jmp_addr_0x00552ff0                          // 0x00717e15    e8d6b1e3ff
                         mov.s              esi, eax                                      // 0x00717e1a    8bf0
                         test               esi, esi                                      // 0x00717e1c    85f6
                         {disp8} je         _jmp_addr_0x00717e36                          // 0x00717e1e    7416
                         mov                edx, dword ptr [esi]                          // 0x00717e20    8b16
                         mov.s              ecx, esi                                      // 0x00717e22    8bce
                         call               dword ptr [edx + 0x1c]                        // 0x00717e24    ff521c
                         cmp.s              eax, ebx                                      // 0x00717e27    3bc3
                         {disp8} jne        _jmp_addr_0x00717e36                          // 0x00717e29    750b
_jmp_addr_0x00717e2b:    push               ebx                                           // 0x00717e2b    53
                         push               edi                                           // 0x00717e2c    57
                         mov.s              ecx, esi                                      // 0x00717e2d    8bce
                         call               _jmp_addr_0x0073fda0                          // 0x00717e2f    e86c7f0200
                         {disp8} jmp        _jmp_addr_0x00717e60                          // 0x00717e34    eb2a
_jmp_addr_0x00717e36:    push               0x00000679                                    // 0x00717e36    6879060000
                         push               0x00c21fe8                                    // 0x00717e3b    68e81fc200
                         push               0x40                                          // 0x00717e40    6a40
                         call               ?__nw@Base@@SAPAXK@Z                          // 0x00717e42    e8a9e8d1ff
                         add                esp, 0x0c                                     // 0x00717e47    83c40c
                         test               eax, eax                                      // 0x00717e4a    85c0
                         {disp8} je         _jmp_addr_0x00717e5b                          // 0x00717e4c    740d
                         push               ebx                                           // 0x00717e4e    53
                         push               0x0                                           // 0x00717e4f    6a00
                         push               edi                                           // 0x00717e51    57
                         mov.s              ecx, eax                                      // 0x00717e52    8bc8
                         call               _jmp_addr_0x00425d00                          // 0x00717e54    e8a7ded0ff
                         {disp8} jmp        _jmp_addr_0x00717e5d                          // 0x00717e59    eb02
_jmp_addr_0x00717e5b:    xor.s              eax, eax                                      // 0x00717e5b    33c0
_jmp_addr_0x00717e5d:    {disp8} mov        dword ptr [edi + 0x54], eax                   // 0x00717e5d    894754
_jmp_addr_0x00717e60:    test               eax, eax                                      // 0x00717e60    85c0
                         {disp8} je         _jmp_addr_0x00717e8a                          // 0x00717e62    7426
                         {disp32} mov       ecx, dword ptr [ebp + 0x00006038]             // 0x00717e64    8b8d38600000
                         push               ecx                                           // 0x00717e6a    51
                         mov.s              ecx, eax                                      // 0x00717e6b    8bc8
                         call               _jmp_addr_0x00426820                          // 0x00717e6d    e8aee9d0ff
                         xor.s              eax, eax                                      // 0x00717e72    33c0
                         pop                edi                                           // 0x00717e74    5f
                         pop                esi                                           // 0x00717e75    5e
                         pop                ebp                                           // 0x00717e76    5d
                         pop                ebx                                           // 0x00717e77    5b
                         add                esp, 0x00000654                               // 0x00717e78    81c454060000
                         ret                                                              // 0x00717e7e    c3
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x00717e7f    8b542424
                         mov                eax, dword ptr [edx]                          // 0x00717e83    8b02
                         {disp32} mov       dword ptr [data_bytes + 0x22d3f0], eax        // 0x00717e85    a3f033bf00
_jmp_addr_0x00717e8a:    pop                edi                                           // 0x00717e8a    5f
                         pop                esi                                           // 0x00717e8b    5e
                         pop                ebp                                           // 0x00717e8c    5d
                         xor.s              eax, eax                                      // 0x00717e8d    33c0
                         pop                ebx                                           // 0x00717e8f    5b
                         add                esp, 0x00000654                               // 0x00717e90    81c454060000
                         ret                                                              // 0x00717e96    c3

// Snippet: db, [0x00717e97, 0x00717e98)
.byte 0x90                        // 0x00717e97

// Snippet: jmptbl, [0x00717e98, 0x00717eac)
.byte 0x04, 0x52, 0x71, 0x00      // 0x00717e98
.byte 0x6d, 0x52, 0x71, 0x00      // 0x00717e9c
.byte 0x31, 0x52, 0x71, 0x00      // 0x00717ea0
.byte 0x3d, 0x52, 0x71, 0x00      // 0x00717ea4
.byte 0x9f, 0x52, 0x71, 0x00      // 0x00717ea8

// Snippet: ijmptbl, [0x00717eac, 0x00717eba)
.byte 0x00, 0x04, 0x04, 0x04      // 0x00717eac
.byte 0x04, 0x01, 0x04, 0x04      // 0x00717eb0
.byte 0x04, 0x04, 0x04, 0x02      // 0x00717eb4
.byte 0x04, 0x03                  // 0x00717eb8

// Snippet: db, [0x00717eba, 0x00717ebc)
.byte 0x8b, 0xff                  // 0x00717eba

// Snippet: jmptbl, [0x00717ebc, 0x00718060)
.byte 0xc9, 0x55, 0x71, 0x00      // 0x00717ebc
.byte 0x8a, 0x7e, 0x71, 0x00      // 0x00717ec0
.byte 0x75, 0x53, 0x71, 0x00      // 0x00717ec4
.byte 0x2b, 0x54, 0x71, 0x00      // 0x00717ec8
.byte 0x72, 0x54, 0x71, 0x00      // 0x00717ecc
.byte 0x42, 0x55, 0x71, 0x00      // 0x00717ed0
.byte 0x73, 0x55, 0x71, 0x00      // 0x00717ed4
.byte 0x29, 0x56, 0x71, 0x00      // 0x00717ed8
.byte 0x29, 0x56, 0x71, 0x00      // 0x00717edc
.byte 0x7c, 0x57, 0x71, 0x00      // 0x00717ee0
.byte 0x4a, 0x59, 0x71, 0x00      // 0x00717ee4
.byte 0xc0, 0x59, 0x71, 0x00      // 0x00717ee8
.byte 0x4a, 0x59, 0x71, 0x00      // 0x00717eec
.byte 0x8a, 0x7e, 0x71, 0x00      // 0x00717ef0
.byte 0xfb, 0x58, 0x71, 0x00      // 0x00717ef4
.byte 0x9b, 0x5b, 0x71, 0x00      // 0x00717ef8
.byte 0x4c, 0x5a, 0x71, 0x00      // 0x00717efc
.byte 0xf8, 0x5a, 0x71, 0x00      // 0x00717f00
.byte 0x9b, 0x5b, 0x71, 0x00      // 0x00717f04
.byte 0x03, 0x5e, 0x71, 0x00      // 0x00717f08
.byte 0x91, 0x5e, 0x71, 0x00      // 0x00717f0c
.byte 0x6f, 0x5f, 0x71, 0x00      // 0x00717f10
.byte 0xc8, 0x60, 0x71, 0x00      // 0x00717f14
.byte 0x8a, 0x7e, 0x71, 0x00      // 0x00717f18
.byte 0x9f, 0x64, 0x71, 0x00      // 0x00717f1c
.byte 0x43, 0x65, 0x71, 0x00      // 0x00717f20
.byte 0x4f, 0x61, 0x71, 0x00      // 0x00717f24
.byte 0xa5, 0x61, 0x71, 0x00      // 0x00717f28
.byte 0x6b, 0x62, 0x71, 0x00      // 0x00717f2c
.byte 0xca, 0x65, 0x71, 0x00      // 0x00717f30
.byte 0x3f, 0x66, 0x71, 0x00      // 0x00717f34
.byte 0xe1, 0x66, 0x71, 0x00      // 0x00717f38
.byte 0x22, 0x67, 0x71, 0x00      // 0x00717f3c
.byte 0x61, 0x67, 0x71, 0x00      // 0x00717f40
.byte 0x2e, 0x68, 0x71, 0x00      // 0x00717f44
.byte 0x8a, 0x7e, 0x71, 0x00      // 0x00717f48
.byte 0x8a, 0x7e, 0x71, 0x00      // 0x00717f4c
.byte 0x8a, 0x7e, 0x71, 0x00      // 0x00717f50
.byte 0xc7, 0x6a, 0x71, 0x00      // 0x00717f54
.byte 0x58, 0x6b, 0x71, 0x00      // 0x00717f58
.byte 0x03, 0x6c, 0x71, 0x00      // 0x00717f5c
.byte 0x46, 0x6d, 0x71, 0x00      // 0x00717f60
.byte 0xc1, 0x6d, 0x71, 0x00      // 0x00717f64
.byte 0x64, 0x6e, 0x71, 0x00      // 0x00717f68
.byte 0xa6, 0x6c, 0x71, 0x00      // 0x00717f6c
.byte 0x8a, 0x7e, 0x71, 0x00      // 0x00717f70
.byte 0x8a, 0x7e, 0x71, 0x00      // 0x00717f74
.byte 0x03, 0x6f, 0x71, 0x00      // 0x00717f78
.byte 0x5c, 0x6f, 0x71, 0x00      // 0x00717f7c
.byte 0x4a, 0x63, 0x71, 0x00      // 0x00717f80
.byte 0xb9, 0x6f, 0x71, 0x00      // 0x00717f84
.byte 0xf9, 0x6f, 0x71, 0x00      // 0x00717f88
.byte 0x12, 0x70, 0x71, 0x00      // 0x00717f8c
.byte 0x61, 0x70, 0x71, 0x00      // 0x00717f90
.byte 0x9b, 0x70, 0x71, 0x00      // 0x00717f94
.byte 0x8a, 0x7e, 0x71, 0x00      // 0x00717f98
.byte 0x8a, 0x7e, 0x71, 0x00      // 0x00717f9c
.byte 0xd3, 0x70, 0x71, 0x00      // 0x00717fa0
.byte 0x38, 0x71, 0x71, 0x00      // 0x00717fa4
.byte 0xa3, 0x71, 0x71, 0x00      // 0x00717fa8
.byte 0xf5, 0x71, 0x71, 0x00      // 0x00717fac
.byte 0x50, 0x72, 0x71, 0x00      // 0x00717fb0
.byte 0xa2, 0x72, 0x71, 0x00      // 0x00717fb4
.byte 0xe0, 0x72, 0x71, 0x00      // 0x00717fb8
.byte 0x28, 0x73, 0x71, 0x00      // 0x00717fbc
.byte 0x8a, 0x7e, 0x71, 0x00      // 0x00717fc0
.byte 0x13, 0x75, 0x71, 0x00      // 0x00717fc4
.byte 0x4a, 0x75, 0x71, 0x00      // 0x00717fc8
.byte 0xd1, 0x75, 0x71, 0x00      // 0x00717fcc
.byte 0xfa, 0x75, 0x71, 0x00      // 0x00717fd0
.byte 0x2d, 0x76, 0x71, 0x00      // 0x00717fd4
.byte 0x5f, 0x76, 0x71, 0x00      // 0x00717fd8
.byte 0xc3, 0x77, 0x71, 0x00      // 0x00717fdc
.byte 0xae, 0x76, 0x71, 0x00      // 0x00717fe0
.byte 0xef, 0x76, 0x71, 0x00      // 0x00717fe4
.byte 0x73, 0x69, 0x71, 0x00      // 0x00717fe8
.byte 0x23, 0x78, 0x71, 0x00      // 0x00717fec
.byte 0x42, 0x78, 0x71, 0x00      // 0x00717ff0
.byte 0x72, 0x78, 0x71, 0x00      // 0x00717ff4
.byte 0x8a, 0x7e, 0x71, 0x00      // 0x00717ff8
.byte 0x20, 0x77, 0x71, 0x00      // 0x00717ffc
.byte 0x63, 0x77, 0x71, 0x00      // 0x00718000
.byte 0xa4, 0x77, 0x71, 0x00      // 0x00718004
.byte 0xc1, 0x78, 0x71, 0x00      // 0x00718008
.byte 0x09, 0x79, 0x71, 0x00      // 0x0071800c
.byte 0xbd, 0x79, 0x71, 0x00      // 0x00718010
.byte 0xec, 0x79, 0x71, 0x00      // 0x00718014
.byte 0x50, 0x6a, 0x71, 0x00      // 0x00718018
.byte 0x98, 0x79, 0x71, 0x00      // 0x0071801c
.byte 0x8d, 0x66, 0x71, 0x00      // 0x00718020
.byte 0x81, 0x68, 0x71, 0x00      // 0x00718024
.byte 0x3a, 0x7a, 0x71, 0x00      // 0x00718028
.byte 0x6b, 0x7a, 0x71, 0x00      // 0x0071802c
.byte 0x9a, 0x7a, 0x71, 0x00      // 0x00718030
.byte 0xc1, 0x7a, 0x71, 0x00      // 0x00718034
.byte 0x16, 0x66, 0x71, 0x00      // 0x00718038
.byte 0x5c, 0x7b, 0x71, 0x00      // 0x0071803c
.byte 0x7b, 0x7b, 0x71, 0x00      // 0x00718040
.byte 0x9a, 0x7b, 0x71, 0x00      // 0x00718044
.byte 0xcd, 0x7b, 0x71, 0x00      // 0x00718048
.byte 0x9c, 0x7c, 0x71, 0x00      // 0x0071804c
.byte 0x8a, 0x7e, 0x71, 0x00      // 0x00718050
.byte 0x61, 0x7d, 0x71, 0x00      // 0x00718054
.byte 0x8d, 0x7d, 0x71, 0x00      // 0x00718058
.byte 0x7f, 0x7e, 0x71, 0x00      // 0x0071805c

