.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?__nw@Base@@SAPAXK@Z
.extern _jmp_addr_0x00436b80
.extern _jmp_addr_0x00436ba0
.extern @Set__8BaseInfoFP4Base@12
.extern _jmp_addr_0x00448f40
.extern _jmp_addr_0x00448fc0
.extern ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ
.extern _jmp_addr_0x0047db50
.extern _jmp_addr_0x0047dbd0
.extern ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z
.extern ?MyInterface@GGame@@QAEPAVGInterface@@XZ
.extern _jmp_addr_0x00555880
.extern ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z
.extern @ReadPtr__10GameOSFileFPP9GameThing@12
.extern ??0GameThing@@QAE@XZ
.extern ?ToBeDeleted@GameThingWithPos@@UAEXH@Z
.extern ?Save@GameThingWithPos@@UAEXPAUGameOSFile@@@Z
.extern ?Load@GameThingWithPos@@QAEIAAVGameOSFile@@@Z
.extern ?SetToZero@GameThingWithPos@@QAEXXZ
.extern _jmp_addr_0x005d8a10
.extern _jmp_addr_0x005d8a80
.extern _jmp_addr_0x005d8af0
.extern _jmp_addr_0x005fb490
.extern _jmp_addr_0x005fb520
.extern ?GetMagicEffectInfo@GMagicInfo@@QBEPAVGMagicEffectInfo@@XZ
.extern _jmp_addr_0x005fb800
.extern @__ct__9MapCoordsFRC7LHPoint@12
.extern @GetLHPoint__9MapCoordsCFv@12
.extern _jmp_addr_0x0063e580
.extern _jmp_addr_0x00646950
.extern ?GetPlayerNumber@GPlayer@@QBEEXZ
.extern _jmp_addr_0x0064bb90
.extern _jmp_addr_0x0064bbf0
.extern _jmp_addr_0x0064bc60
.extern _jmp_addr_0x0064c260
.extern _jmp_addr_0x0064c300
.extern _jmp_addr_0x0064d6a0
.extern _jmp_addr_0x006d6cc0
.extern _jmp_addr_0x006eb9a0
.extern _jmp_addr_0x006efcd0
.extern _jmp_addr_0x006efd60
.extern _jmp_addr_0x006efdc0
.extern ?ScriptErrorMessage@GScript@@QAEXPAD@Z
.extern ?ScriptWarningMessage@GScript@@QAEXPAD@Z
.extern ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z
.extern _jmp_addr_0x006f6bc0
.extern _jmp_addr_0x0070f600
.extern _jmp_addr_0x007202e0
.extern _jmp_addr_0x007217a0
.extern _jmp_addr_0x00723030
.extern _jmp_addr_0x0072ba00
.extern ?GetWorshipSpeed@TotemStatue@@QAEMXZ
.extern _jmp_addr_0x00740e10
.extern _jmp_addr_0x0074cde0
.extern ?Get3DAngleFromXZ@GUtils@@SAMABUMapCoords@@0@Z
.extern _jmp_addr_0x007745a0
.extern _jmp_addr_0x0077f840
.extern _jmp_addr_0x0077fe10
.extern _jmp_addr_0x0077fe40
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern @Read__8LHOSFileFPvUlPUl@20
.extern @Write__8LHOSFileFPvUlPUl@20
.extern _atexit
.extern ___RTDynamicCast
.extern ??2@YAPAXI@Z
.extern ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z

.globl _jmp_addr_0x0070bb20
.globl _jmp_addr_0x0070bd60
.globl _jmp_addr_0x0070ceb0
.globl _jmp_addr_0x0070ced0
.globl _jmp_addr_0x0070cf50
.globl _jmp_addr_0x0070cf90
.globl _jmp_addr_0x0070cfd0
.globl _jmp_addr_0x0070d020
.globl _jmp_addr_0x0070d050
.globl _jmp_addr_0x0070d080
.globl _jmp_addr_0x0070d0f0
.globl _jmp_addr_0x0070d1a0
.globl _jmp_addr_0x0070d220
.globl _jmp_addr_0x0070d2f0
.globl ?DeleteAllScriptCreatedGameThings@GScript@@SAXXZ
.globl _jmp_addr_0x0070d440
.globl _jmp_addr_0x0070d480
.globl _jmp_addr_0x0070d540
.globl _jmp_addr_0x0070d690
.globl _jmp_addr_0x0070d740
.globl _jmp_addr_0x0070d8d0

.globl _globl_ct_0x0070baa0
.globl _globl_ct_0x0070bad0
.globl _globl_ct_0x0070baf0
.globl _globl_ct_0x0070cdd0
.globl _globl_ct_0x0070ce00
.globl _globl_ct_0x0070ce20
.globl _globl_ct_0x0070ce50
.globl _globl_ct_0x0070d8a0
.globl _globl_ct_0x0070da10
.globl _globl_ct_0x0070da40
.globl _globl_ct_0x0070da60
.globl _globl_ct_0x0070da90
.globl _globl_ct_0x0070dab0
.globl ?GetScriptObjectType@ScriptMarker@@UAEIXZ
.globl ?ToBeDeleted@ScriptMarker@@UAEXH@Z
.globl ?Save@ScriptMarker@@UAEIAAVGameOSFile@@@Z
.globl ?Load@ScriptMarker@@UAEIAAVGameOSFile@@@Z

start_0x0070b7f0_0x0070e820:
// Snippet: asm, [0x0070b7f0, 0x0070e78b)
                         push               ecx                                           // 0x0070b7f0    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070b7f1    8b0d105cd900
                         push               esi                                           // 0x0070b7f7    56
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x0070b7f8    8d442404
                         push               eax                                           // 0x0070b7fc    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0070b7fd    e8beb3feff
                         mov.s              esi, eax                                      // 0x0070b802    8bf0
                         test               esi, esi                                      // 0x0070b804    85f6
                         {disp8} jle        _jmp_addr_0x0070b80d                          // 0x0070b806    7e05
                         cmp                esi, 0x31                                     // 0x0070b808    83fe31
                         {disp8} jl         _jmp_addr_0x0070b81a                          // 0x0070b80b    7c0d
_jmp_addr_0x0070b80d:    push               0x00c20664                                    // 0x0070b80d    686406c200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070b812    e899aafeff
                         add                esp, 0x04                                     // 0x0070b817    83c404
_jmp_addr_0x0070b81a:    test               esi, esi                                      // 0x0070b81a    85f6
                         {disp8} jle        _jmp_addr_0x0070b823                          // 0x0070b81c    7e05
                         cmp                esi, 0x31                                     // 0x0070b81e    83fe31
                         {disp8} jl         _jmp_addr_0x0070b840                          // 0x0070b821    7c1d
_jmp_addr_0x0070b823:    {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x0070b823    c744240400000000
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x0070b82b    8b4c2404
                         push               0x2                                           // 0x0070b82f    6a02
                         push               ecx                                           // 0x0070b831    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070b832    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070b838    e863b3feff
                         pop                esi                                           // 0x0070b83d    5e
                         pop                ecx                                           // 0x0070b83e    59
                         ret                                                              // 0x0070b83f    c3
_jmp_addr_0x0070b840:    {disp32} mov       edx, dword ptr [_game]                        // 0x0070b840    8b155c19d000
                         {disp32} mov       eax, dword ptr [edx + 0x00250060]             // 0x0070b846    8b8260002500
                         mov.s              ecx, esi                                      // 0x0070b84c    8bce
                         shl                ecx, 5                                        // 0x0070b84e    c1e105
                         add.s              ecx, esi                                      // 0x0070b851    03ce
                         lea                edx, dword ptr [esi + ecx * 0x2]              // 0x0070b853    8d144e
                         {disp8} lea        ecx, dword ptr [eax + edx * 0x4 + 0x08]       // 0x0070b856    8d4c9008
                         call               _jmp_addr_0x00448fc0                          // 0x0070b85a    e861d7d3ff
                         {disp8} fstp       dword ptr [esp + 0x04]                        // 0x0070b85f    d95c2404
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0070b863    8b442404
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070b867    8b0d105cd900
                         push               0x2                                           // 0x0070b86d    6a02
                         push               eax                                           // 0x0070b86f    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070b870    e82bb3feff
                         pop                esi                                           // 0x0070b875    5e
                         pop                ecx                                           // 0x0070b876    59
                         ret                                                              // 0x0070b877    c3
                         nop                                                              // 0x0070b878    90
                         nop                                                              // 0x0070b879    90
                         nop                                                              // 0x0070b87a    90
                         nop                                                              // 0x0070b87b    90
                         nop                                                              // 0x0070b87c    90
                         nop                                                              // 0x0070b87d    90
                         nop                                                              // 0x0070b87e    90
                         nop                                                              // 0x0070b87f    90
                         push               ecx                                           // 0x0070b880    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070b881    8b0d105cd900
                         push               esi                                           // 0x0070b887    56
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x0070b888    8d442404
                         push               eax                                           // 0x0070b88c    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0070b88d    e82eb3feff
                         mov.s              esi, eax                                      // 0x0070b892    8bf0
                         test               esi, esi                                      // 0x0070b894    85f6
                         {disp8} jle        _jmp_addr_0x0070b89d                          // 0x0070b896    7e05
                         cmp                esi, 0x31                                     // 0x0070b898    83fe31
                         {disp8} jl         _jmp_addr_0x0070b8aa                          // 0x0070b89b    7c0d
_jmp_addr_0x0070b89d:    push               0x00c20664                                    // 0x0070b89d    686406c200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070b8a2    e809aafeff
                         add                esp, 0x04                                     // 0x0070b8a7    83c404
_jmp_addr_0x0070b8aa:    test               esi, esi                                      // 0x0070b8aa    85f6
                         {disp8} jle        _jmp_addr_0x0070b8b3                          // 0x0070b8ac    7e05
                         cmp                esi, 0x31                                     // 0x0070b8ae    83fe31
                         {disp8} jl         _jmp_addr_0x0070b8d0                          // 0x0070b8b1    7c1d
_jmp_addr_0x0070b8b3:    {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x0070b8b3    c744240400000000
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x0070b8bb    8b4c2404
                         push               0x2                                           // 0x0070b8bf    6a02
                         push               ecx                                           // 0x0070b8c1    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070b8c2    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070b8c8    e8d3b2feff
                         pop                esi                                           // 0x0070b8cd    5e
                         pop                ecx                                           // 0x0070b8ce    59
                         ret                                                              // 0x0070b8cf    c3
_jmp_addr_0x0070b8d0:    {disp32} mov       edx, dword ptr [_game]                        // 0x0070b8d0    8b155c19d000
                         {disp32} mov       eax, dword ptr [edx + 0x00250060]             // 0x0070b8d6    8b8260002500
                         mov.s              ecx, esi                                      // 0x0070b8dc    8bce
                         shl                ecx, 5                                        // 0x0070b8de    c1e105
                         add.s              ecx, esi                                      // 0x0070b8e1    03ce
                         lea                edx, dword ptr [esi + ecx * 0x2]              // 0x0070b8e3    8d144e
                         {disp8} lea        ecx, dword ptr [eax + edx * 0x4 + 0x08]       // 0x0070b8e6    8d4c9008
                         call               _jmp_addr_0x00448f40                          // 0x0070b8ea    e851d6d3ff
                         {disp8} fstp       dword ptr [esp + 0x04]                        // 0x0070b8ef    d95c2404
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0070b8f3    8b442404
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070b8f7    8b0d105cd900
                         push               0x2                                           // 0x0070b8fd    6a02
                         push               eax                                           // 0x0070b8ff    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070b900    e89bb2feff
                         pop                esi                                           // 0x0070b905    5e
                         pop                ecx                                           // 0x0070b906    59
                         ret                                                              // 0x0070b907    c3
                         nop                                                              // 0x0070b908    90
                         nop                                                              // 0x0070b909    90
                         nop                                                              // 0x0070b90a    90
                         nop                                                              // 0x0070b90b    90
                         nop                                                              // 0x0070b90c    90
                         nop                                                              // 0x0070b90d    90
                         nop                                                              // 0x0070b90e    90
                         nop                                                              // 0x0070b90f    90
                         push               ecx                                           // 0x0070b910    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070b911    8b0d105cd900
                         push               esi                                           // 0x0070b917    56
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x0070b918    8d442404
                         push               eax                                           // 0x0070b91c    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0070b91d    e89eb2feff
                         mov.s              esi, eax                                      // 0x0070b922    8bf0
                         test               esi, esi                                      // 0x0070b924    85f6
                         {disp8} jle        _jmp_addr_0x0070b92d                          // 0x0070b926    7e05
                         cmp                esi, 0x31                                     // 0x0070b928    83fe31
                         {disp8} jl         _jmp_addr_0x0070b93a                          // 0x0070b92b    7c0d
_jmp_addr_0x0070b92d:    push               0x00c20664                                    // 0x0070b92d    686406c200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070b932    e879a9feff
                         add                esp, 0x04                                     // 0x0070b937    83c404
_jmp_addr_0x0070b93a:    test               esi, esi                                      // 0x0070b93a    85f6
                         {disp8} jle        _jmp_addr_0x0070b943                          // 0x0070b93c    7e05
                         cmp                esi, 0x31                                     // 0x0070b93e    83fe31
                         {disp8} jl         _jmp_addr_0x0070b960                          // 0x0070b941    7c1d
_jmp_addr_0x0070b943:    {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x0070b943    c744240400000000
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x0070b94b    8b4c2404
                         push               0x2                                           // 0x0070b94f    6a02
                         push               ecx                                           // 0x0070b951    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070b952    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070b958    e843b2feff
                         pop                esi                                           // 0x0070b95d    5e
                         pop                ecx                                           // 0x0070b95e    59
                         ret                                                              // 0x0070b95f    c3
_jmp_addr_0x0070b960:    {disp32} mov       ecx, dword ptr [_game]                        // 0x0070b960    8b0d5c19d000
                         mov.s              edx, esi                                      // 0x0070b966    8bd6
                         shl                edx, 5                                        // 0x0070b968    c1e205
                         add.s              edx, esi                                      // 0x0070b96b    03d6
                         lea                eax, dword ptr [esi + edx * 0x2]              // 0x0070b96d    8d0456
                         {disp32} mov       edx, dword ptr [ecx + 0x00250060]             // 0x0070b970    8b9160002500
                         {disp8} fild       dword ptr [edx + eax * 0x4 + 0x08]            // 0x0070b976    db448208
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070b97a    8b0d105cd900
                         push               0x2                                           // 0x0070b980    6a02
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x0070b982    d95c2408
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0070b986    8b442408
                         push               eax                                           // 0x0070b98a    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070b98b    e810b2feff
                         pop                esi                                           // 0x0070b990    5e
                         pop                ecx                                           // 0x0070b991    59
                         ret                                                              // 0x0070b992    c3
                         nop                                                              // 0x0070b993    90
                         nop                                                              // 0x0070b994    90
                         nop                                                              // 0x0070b995    90
                         nop                                                              // 0x0070b996    90
                         nop                                                              // 0x0070b997    90
                         nop                                                              // 0x0070b998    90
                         nop                                                              // 0x0070b999    90
                         nop                                                              // 0x0070b99a    90
                         nop                                                              // 0x0070b99b    90
                         nop                                                              // 0x0070b99c    90
                         nop                                                              // 0x0070b99d    90
                         nop                                                              // 0x0070b99e    90
                         nop                                                              // 0x0070b99f    90
                         push               ecx                                           // 0x0070b9a0    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070b9a1    8b0d105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x00]                   // 0x0070b9a7    8d442400
                         push               eax                                           // 0x0070b9ab    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0070b9ac    e80fb2feff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070b9b1    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x00250090]             // 0x0070b9b7    8b9190002500
                         {disp32} mov       dword ptr [edx + 0x000000a0], eax             // 0x0070b9bd    8982a0000000
                         pop                ecx                                           // 0x0070b9c3    59
                         ret                                                              // 0x0070b9c4    c3
                         nop                                                              // 0x0070b9c5    90
                         nop                                                              // 0x0070b9c6    90
                         nop                                                              // 0x0070b9c7    90
                         nop                                                              // 0x0070b9c8    90
                         nop                                                              // 0x0070b9c9    90
                         nop                                                              // 0x0070b9ca    90
                         nop                                                              // 0x0070b9cb    90
                         nop                                                              // 0x0070b9cc    90
                         nop                                                              // 0x0070b9cd    90
                         nop                                                              // 0x0070b9ce    90
                         nop                                                              // 0x0070b9cf    90
                         {disp32} mov       eax, dword ptr [data_bytes + 0x2950f4]        // 0x0070b9d0    a1f4b0c500
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070b9d5    8b0d105cd900
                         push               0x6                                           // 0x0070b9db    6a06
                         push               eax                                           // 0x0070b9dd    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070b9de    e8bdb1feff
                         ret                                                              // 0x0070b9e3    c3
                         nop                                                              // 0x0070b9e4    90
                         nop                                                              // 0x0070b9e5    90
                         nop                                                              // 0x0070b9e6    90
                         nop                                                              // 0x0070b9e7    90
                         nop                                                              // 0x0070b9e8    90
                         nop                                                              // 0x0070b9e9    90
                         nop                                                              // 0x0070b9ea    90
                         nop                                                              // 0x0070b9eb    90
                         nop                                                              // 0x0070b9ec    90
                         nop                                                              // 0x0070b9ed    90
                         nop                                                              // 0x0070b9ee    90
                         nop                                                              // 0x0070b9ef    90
                         push               ecx                                           // 0x0070b9f0    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070b9f1    8b0d105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x00]                   // 0x0070b9f7    8d442400
                         push               eax                                           // 0x0070b9fb    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0070b9fc    e8bfb1feff
                         xor.s              ecx, ecx                                      // 0x0070ba01    33c9
                         {disp32} mov       cl, byte ptr [eax + 0x00e85374]               // 0x0070ba03    8a887453e800
                         push               0x6                                           // 0x0070ba09    6a06
                         push               ecx                                           // 0x0070ba0b    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070ba0c    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070ba12    e889b1feff
                         pop                ecx                                           // 0x0070ba17    59
                         ret                                                              // 0x0070ba18    c3
                         nop                                                              // 0x0070ba19    90
                         nop                                                              // 0x0070ba1a    90
                         nop                                                              // 0x0070ba1b    90
                         nop                                                              // 0x0070ba1c    90
                         nop                                                              // 0x0070ba1d    90
                         nop                                                              // 0x0070ba1e    90
                         nop                                                              // 0x0070ba1f    90
                         push               ecx                                           // 0x0070ba20    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070ba21    8b0d105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x00]                   // 0x0070ba27    8d442400
                         push               eax                                           // 0x0070ba2b    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0070ba2c    e88fb1feff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070ba31    8b0d5c19d000
                         push               0x80000000                                    // 0x0070ba37    6800000080
                         push               eax                                           // 0x0070ba3c    50
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0070ba3d    e80e9ee4ff
                         mov.s              ecx, eax                                      // 0x0070ba42    8bc8
                         call               _jmp_addr_0x005d8a10                          // 0x0070ba44    e8c7cfecff
                         pop                ecx                                           // 0x0070ba49    59
                         ret                                                              // 0x0070ba4a    c3
                         nop                                                              // 0x0070ba4b    90
                         nop                                                              // 0x0070ba4c    90
                         nop                                                              // 0x0070ba4d    90
                         nop                                                              // 0x0070ba4e    90
                         nop                                                              // 0x0070ba4f    90
                         push               ecx                                           // 0x0070ba50    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070ba51    8b0d105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x00]                   // 0x0070ba57    8d442400
                         push               eax                                           // 0x0070ba5b    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0070ba5c    e85fb1feff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070ba61    8b0d5c19d000
                         push               eax                                           // 0x0070ba67    50
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0070ba68    e8e39de4ff
                         mov.s              ecx, eax                                      // 0x0070ba6d    8bc8
                         call               _jmp_addr_0x005d8a80                          // 0x0070ba6f    e80cd0ecff
                         pop                ecx                                           // 0x0070ba74    59
                         ret                                                              // 0x0070ba75    c3
                         nop                                                              // 0x0070ba76    90
                         nop                                                              // 0x0070ba77    90
                         nop                                                              // 0x0070ba78    90
                         nop                                                              // 0x0070ba79    90
                         nop                                                              // 0x0070ba7a    90
                         nop                                                              // 0x0070ba7b    90
                         nop                                                              // 0x0070ba7c    90
                         nop                                                              // 0x0070ba7d    90
                         nop                                                              // 0x0070ba7e    90
                         nop                                                              // 0x0070ba7f    90
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070ba80    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0070ba86    e8c59de4ff
                         mov.s              ecx, eax                                      // 0x0070ba8b    8bc8
                         {disp32} jmp       _jmp_addr_0x005d8af0                          // 0x0070ba8d    e95ed0ecff
                         nop                                                              // 0x0070ba92    90
                         nop                                                              // 0x0070ba93    90
                         nop                                                              // 0x0070ba94    90
                         nop                                                              // 0x0070ba95    90
                         nop                                                              // 0x0070ba96    90
                         nop                                                              // 0x0070ba97    90
                         nop                                                              // 0x0070ba98    90
                         nop                                                              // 0x0070ba99    90
                         nop                                                              // 0x0070ba9a    90
                         nop                                                              // 0x0070ba9b    90
                         nop                                                              // 0x0070ba9c    90
                         nop                                                              // 0x0070ba9d    90
                         nop                                                              // 0x0070ba9e    90
                         nop                                                              // 0x0070ba9f    90
_globl_ct_0x0070baa0:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x0070baa0    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x0070baa6    b001
                         test               al, cl                                        // 0x0070baa8    84c8
                         {disp8} jne        _jmp_addr_0x0070bab4                          // 0x0070baaa    7508
                         or.s               cl, al                                        // 0x0070baac    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x0070baae    880d34c9fa00
_jmp_addr_0x0070bab4:    {disp32} jmp       _jmp_addr_0x0070bac0                          // 0x0070bab4    e907000000
                         nop                                                              // 0x0070bab9    90
                         nop                                                              // 0x0070baba    90
                         nop                                                              // 0x0070babb    90
                         nop                                                              // 0x0070babc    90
                         nop                                                              // 0x0070babd    90
                         nop                                                              // 0x0070babe    90
                         nop                                                              // 0x0070babf    90
_jmp_addr_0x0070bac0:    push               0x00407870                                    // 0x0070bac0    6870784000
                         call               _atexit                                       // 0x0070bac5    e8c79c0b00
                         pop                ecx                                           // 0x0070baca    59
                         ret                                                              // 0x0070bacb    c3
                         nop                                                              // 0x0070bacc    90
                         nop                                                              // 0x0070bacd    90
                         nop                                                              // 0x0070bace    90
                         nop                                                              // 0x0070bacf    90
_globl_ct_0x0070bad0:    {disp32} jmp       _jmp_addr_0x0070bae0                          // 0x0070bad0    e90b000000
                         nop                                                              // 0x0070bad5    90
                         nop                                                              // 0x0070bad6    90
                         nop                                                              // 0x0070bad7    90
                         nop                                                              // 0x0070bad8    90
                         nop                                                              // 0x0070bad9    90
                         nop                                                              // 0x0070bada    90
                         nop                                                              // 0x0070badb    90
                         nop                                                              // 0x0070badc    90
                         nop                                                              // 0x0070badd    90
                         nop                                                              // 0x0070bade    90
                         nop                                                              // 0x0070badf    90
_jmp_addr_0x0070bae0:    {disp32} mov       dword ptr [data_bytes + 0x3d07ec], 0xffffffff // 0x0070bae0    c705ec67d900ffffffff
                         ret                                                              // 0x0070baea    c3
                         nop                                                              // 0x0070baeb    90
                         nop                                                              // 0x0070baec    90
                         nop                                                              // 0x0070baed    90
                         nop                                                              // 0x0070baee    90
                         nop                                                              // 0x0070baef    90
_globl_ct_0x0070baf0:    {disp32} jmp       _jmp_addr_0x0070bb00                          // 0x0070baf0    e90b000000
                         nop                                                              // 0x0070baf5    90
                         nop                                                              // 0x0070baf6    90
                         nop                                                              // 0x0070baf7    90
                         nop                                                              // 0x0070baf8    90
                         nop                                                              // 0x0070baf9    90
                         nop                                                              // 0x0070bafa    90
                         nop                                                              // 0x0070bafb    90
                         nop                                                              // 0x0070bafc    90
                         nop                                                              // 0x0070bafd    90
                         nop                                                              // 0x0070bafe    90
                         nop                                                              // 0x0070baff    90
_jmp_addr_0x0070bb00:    {disp32} fld       dword ptr [rdata_bytes + 0x99b04]             // 0x0070bb00    d905042b9400
                         {disp32} fmul      dword ptr [rdata_bytes + 0x99b00]             // 0x0070bb06    d80d002b9400
                         {disp32} fstp      dword ptr [data_bytes + 0x3d07e8]             // 0x0070bb0c    d91de867d900
                         ret                                                              // 0x0070bb12    c3
                         nop                                                              // 0x0070bb13    90
                         nop                                                              // 0x0070bb14    90
                         nop                                                              // 0x0070bb15    90
                         nop                                                              // 0x0070bb16    90
                         nop                                                              // 0x0070bb17    90
                         nop                                                              // 0x0070bb18    90
                         nop                                                              // 0x0070bb19    90
                         nop                                                              // 0x0070bb1a    90
                         nop                                                              // 0x0070bb1b    90
                         nop                                                              // 0x0070bb1c    90
                         nop                                                              // 0x0070bb1d    90
                         nop                                                              // 0x0070bb1e    90
                         nop                                                              // 0x0070bb1f    90
_jmp_addr_0x0070bb20:    sub                esp, 0x68                                     // 0x0070bb20    83ec68
                         push               ebp                                           // 0x0070bb23    55
                         {disp8} mov        ebp, dword ptr [esp + 0x7c]                   // 0x0070bb24    8b6c247c
                         test               ebp, ebp                                      // 0x0070bb28    85ed
                         {disp8} jne        _jmp_addr_0x0070bb4a                          // 0x0070bb2a    751e
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070bb2c    8b0d5c19d000
                         xor.s              eax, eax                                      // 0x0070bb32    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a5b]               // 0x0070bb34    8a815b5a2000
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x0070bb3a    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x0070bb3d    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x0070bb40    8d0450
                         shl                eax, 5                                        // 0x0070bb43    c1e005
                         {disp8} lea        ebp, dword ptr [eax + ecx * 0x1 + 0x18]       // 0x0070bb46    8d6c0818
_jmp_addr_0x0070bb4a:    push               0x0                                           // 0x0070bb4a    6a00
                         push               0x00bf4178                                    // 0x0070bb4c    687841bf00
                         push               0x009c7f18                                    // 0x0070bb51    68187f9c00
                         push               0x0                                           // 0x0070bb56    6a00
                         push               ebp                                           // 0x0070bb58    55
                         call               ___RTDynamicCast                              // 0x0070bb59    e8bb9e0b00
                         add                esp, 0x14                                     // 0x0070bb5e    83c414
                         test               eax, eax                                      // 0x0070bb61    85c0
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x0070bb63    89442404
                         {disp8} je         _jmp_addr_0x0070bb84                          // 0x0070bb67    741b
                         mov.s              ecx, eax                                      // 0x0070bb69    8bc8
                         call               _jmp_addr_0x0077fe40                          // 0x0070bb6b    e8d0420700
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0070bb70    d81d98a38a00
                         fnstsw             ax                                            // 0x0070bb76    dfe0
                         test               ah, 0x41                                      // 0x0070bb78    f6c441
                         {disp8} jne        _jmp_addr_0x0070bb84                          // 0x0070bb7b    7507
                         xor.s              eax, eax                                      // 0x0070bb7d    33c0
                         pop                ebp                                           // 0x0070bb7f    5d
                         add                esp, 0x68                                     // 0x0070bb80    83c468
                         ret                                                              // 0x0070bb83    c3
_jmp_addr_0x0070bb84:    {disp8} mov        ecx, dword ptr [esp + 0x78]                   // 0x0070bb84    8b4c2478
                         push               ebx                                           // 0x0070bb88    53
                         {disp8} mov        ebx, dword ptr [esp + 0x74]                   // 0x0070bb89    8b5c2474
                         push               esi                                           // 0x0070bb8d    56
                         push               edi                                           // 0x0070bb8e    57
                         {disp8} lea        edi, dword ptr [ebx + 0x14]                   // 0x0070bb8f    8d7b14
                         push               edi                                           // 0x0070bb92    57
                         push               ecx                                           // 0x0070bb93    51
                         call               ?Get3DAngleFromXZ@GUtils@@SAMABUMapCoords@@0@Z                               // 0x0070bb94    e8d7160400
                         fstp               st(0)                                         // 0x0070bb99    ddd8
                         {disp32} mov       edx, dword ptr [esp + 0x00000088]             // 0x0070bb9b    8b942488000000
                         {disp32} mov       esi, dword ptr [edx * 0x4 + _MagicInfoTable]  // 0x0070bba2    8b3495107dd300
                         add                esp, 0x08                                     // 0x0070bba9    83c408
                         mov.s              ecx, esi                                      // 0x0070bbac    8bce
                         call               ?GetMagicEffectInfo@GMagicInfo@@QBEPAVGMagicEffectInfo@@XZ        // 0x0070bbae    e8cdfaeeff
                         {disp8} fld        dword ptr [eax + 0x74]                        // 0x0070bbb3    d94074
                         {disp32} mov       eax, dword ptr [esp + 0x00000090]             // 0x0070bbb6    8b842490000000
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x0070bbbd    d95c2430
                         {disp32} mov       ecx, dword ptr [esp + 0x00000094]             // 0x0070bbc1    8b8c2494000000
                         {disp8} mov        dword ptr [esp + 0x2c], eax                   // 0x0070bbc8    8944242c
                         {disp32} mov       eax, dword ptr [esp + 0x0000008c]             // 0x0070bbcc    8b84248c000000
                         test               eax, eax                                      // 0x0070bbd3    85c0
                         {disp8} mov        dword ptr [esp + 0x34], ecx                   // 0x0070bbd5    894c2434
                         {disp8} mov        dword ptr [esp + 0x38], 0xffffffff            // 0x0070bbd9    c7442438ffffffff
                         {disp32} mov       dword ptr [esp + 0x00000088], 0x00000000      // 0x0070bbe1    c784248800000000000000
                         {disp8} je         _jmp_addr_0x0070bbff                          // 0x0070bbec    7411
                         mov                edx, dword ptr [esi]                          // 0x0070bbee    8b16
                         push               ebp                                           // 0x0070bbf0    55
                         push               ebx                                           // 0x0070bbf1    53
                         mov.s              ecx, esi                                      // 0x0070bbf2    8bce
                         call               dword ptr [edx + 0x2c]                        // 0x0070bbf4    ff522c
                         test               eax, eax                                      // 0x0070bbf7    85c0
                         {disp32} je        _jmp_addr_0x0070bd4b                          // 0x0070bbf9    0f844c010000
_jmp_addr_0x0070bbff:    {disp32} mov       ecx, dword ptr [esp + 0x00000084]             // 0x0070bbff    8b8c2484000000
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x0070bc06    8d442414
                         push               eax                                           // 0x0070bc0a    50
                         {disp8} mov        dword ptr [esp + 0x40], 0x00000000            // 0x0070bc0b    c744244000000000
                         {disp8} mov        dword ptr [esp + 0x44], 0x00000000            // 0x0070bc13    c744244400000000
                         {disp8} mov        dword ptr [esp + 0x48], 0x00000000            // 0x0070bc1b    c744244800000000
                         {disp8} mov        dword ptr [esp + 0x4c], 0x00000000            // 0x0070bc23    c744244c00000000
                         {disp8} mov        dword ptr [esp + 0x50], 0x00000000            // 0x0070bc2b    c744245000000000
                         {disp8} mov        dword ptr [esp + 0x54], 0x00000000            // 0x0070bc33    c744245400000000
                         {disp8} mov        dword ptr [esp + 0x58], 0x00000000            // 0x0070bc3b    c744245800000000
                         {disp8} mov        dword ptr [esp + 0x5c], 0x00000000            // 0x0070bc43    c744245c00000000
                         {disp8} mov        dword ptr [esp + 0x60], 0x00000000            // 0x0070bc4b    c744246000000000
                         {disp8} mov        dword ptr [esp + 0x64], 0x00000000            // 0x0070bc53    c744246400000000
                         {disp8} mov        dword ptr [esp + 0x68], 0x00000000            // 0x0070bc5b    c744246800000000
                         {disp8} mov        dword ptr [esp + 0x6c], 0x00000000            // 0x0070bc63    c744246c00000000
                         {disp8} mov        dword ptr [esp + 0x70], 0x3f800000            // 0x0070bc6b    c74424700000803f
                         {disp8} mov        dword ptr [esp + 0x74], 0x00000000            // 0x0070bc73    c744247400000000
                         {disp8} mov        byte ptr [esp + 0x78], 0x01                   // 0x0070bc7b    c644247801
                         call               @GetLHPoint__9MapCoordsCFv@12                 // 0x0070bc80    e8bb9fefff
                         mov                ecx, dword ptr [eax]                          // 0x0070bc85    8b08
                         {disp8} mov        dword ptr [esp + 0x48], ecx                   // 0x0070bc87    894c2448
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x0070bc8b    8b5004
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x0070bc8e    8d4c2420
                         {disp8} mov        dword ptr [esp + 0x4c], edx                   // 0x0070bc92    8954244c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0070bc96    8b4008
                         push               ecx                                           // 0x0070bc99    51
                         mov.s              ecx, edi                                      // 0x0070bc9a    8bcf
                         {disp8} mov        dword ptr [esp + 0x54], eax                   // 0x0070bc9c    89442454
                         call               @GetLHPoint__9MapCoordsCFv@12                 // 0x0070bca0    e89b9fefff
                         fld                dword ptr [eax]                               // 0x0070bca5    d900
                         {disp8} fsub       dword ptr [esp + 0x48]                        // 0x0070bca7    d8642448
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0070bcab    d95c2414
                         {disp8} fld        dword ptr [eax + 0x04]                        // 0x0070bcaf    d94004
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x0070bcb2    8b542414
                         {disp8} fsub       dword ptr [esp + 0x4c]                        // 0x0070bcb6    d864244c
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0070bcba    d95c2418
                         {disp8} fld        dword ptr [eax + 0x08]                        // 0x0070bcbe    d94008
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x0070bcc1    8b442418
                         {disp8} fsub       dword ptr [esp + 0x50]                        // 0x0070bcc5    d8642450
                         {disp8} mov        dword ptr [esp + 0x54], edx                   // 0x0070bcc9    89542454
                         {disp32} mov       edx, dword ptr [esp + 0x0000009c]             // 0x0070bccd    8b94249c000000
                         {disp8} mov        dword ptr [esp + 0x58], eax                   // 0x0070bcd4    89442458
                         mov                eax, dword ptr [edx]                          // 0x0070bcd8    8b02
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0070bcda    d95c241c
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x0070bcde    8b4c241c
                         {disp32} fld       dword ptr [rdata_bytes + 0x99b08]             // 0x0070bce2    d905082b9400
                         {disp32} fmul      dword ptr [esp + 0x00000098]                  // 0x0070bce8    d88c2498000000
                         {disp8} mov        dword ptr [esp + 0x5c], ecx                   // 0x0070bcef    894c245c
                         {disp8} mov        ecx, dword ptr [edx + 0x04]                   // 0x0070bcf3    8b4a04
                         {disp8} mov        edx, dword ptr [edx + 0x08]                   // 0x0070bcf6    8b5208
                         {disp8} mov        dword ptr [esp + 0x60], eax                   // 0x0070bcf9    89442460
                         {disp8} fstp       dword ptr [esp + 0x70]                        // 0x0070bcfd    d95c2470
                         {disp8} mov        dword ptr [esp + 0x64], ecx                   // 0x0070bd01    894c2464
                         {disp8} lea        eax, dword ptr [esp + 0x3c]                   // 0x0070bd05    8d44243c
                         push               eax                                           // 0x0070bd09    50
                         {disp32} lea       ecx, dword ptr [esp + 0x0000008c]             // 0x0070bd0a    8d8c248c000000
                         push               ecx                                           // 0x0070bd11    51
                         {disp8} mov        dword ptr [esp + 0x70], edx                   // 0x0070bd12    89542470
                         {disp8} lea        edx, dword ptr [esp + 0x34]                   // 0x0070bd16    8d542434
                         push               edx                                           // 0x0070bd1a    52
                         push               ebp                                           // 0x0070bd1b    55
                         push               ebx                                           // 0x0070bd1c    53
                         mov.s              ecx, esi                                      // 0x0070bd1d    8bce
                         call               _jmp_addr_0x005fb520                          // 0x0070bd1f    e8fcf7eeff
                         {disp32} mov       eax, dword ptr [esp + 0x00000088]             // 0x0070bd24    8b842488000000
                         test               eax, eax                                      // 0x0070bd2b    85c0
                         {disp8} je         _jmp_addr_0x0070bd4b                          // 0x0070bd2d    741c
                         {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x0070bd2f    8b742410
                         test               esi, esi                                      // 0x0070bd33    85f6
                         {disp8} je         _jmp_addr_0x0070bd4b                          // 0x0070bd35    7414
                         mov.s              ecx, esi                                      // 0x0070bd37    8bce
                         call               _jmp_addr_0x0077f840                          // 0x0070bd39    e8023b0700
                         push               ecx                                           // 0x0070bd3e    51
                         mov.s              ecx, esi                                      // 0x0070bd3f    8bce
                         fstp               dword ptr [esp]                               // 0x0070bd41    d91c24
                         call               _jmp_addr_0x0077fe10                          // 0x0070bd44    e8c7400700
                         fstp               st(0)                                         // 0x0070bd49    ddd8
_jmp_addr_0x0070bd4b:    {disp32} mov       eax, dword ptr [esp + 0x00000088]             // 0x0070bd4b    8b842488000000
                         pop                edi                                           // 0x0070bd52    5f
                         pop                esi                                           // 0x0070bd53    5e
                         pop                ebx                                           // 0x0070bd54    5b
                         pop                ebp                                           // 0x0070bd55    5d
                         add                esp, 0x68                                     // 0x0070bd56    83c468
                         ret                                                              // 0x0070bd59    c3
                         nop                                                              // 0x0070bd5a    90
                         nop                                                              // 0x0070bd5b    90
                         nop                                                              // 0x0070bd5c    90
                         nop                                                              // 0x0070bd5d    90
                         nop                                                              // 0x0070bd5e    90
                         nop                                                              // 0x0070bd5f    90
_jmp_addr_0x0070bd60:    sub                esp, 0x68                                     // 0x0070bd60    83ec68
                         push               ebx                                           // 0x0070bd63    53
                         {disp8} mov        ebx, dword ptr [esp + 0x7c]                   // 0x0070bd64    8b5c247c
                         test               ebx, ebx                                      // 0x0070bd68    85db
                         {disp8} jne        _jmp_addr_0x0070bd8a                          // 0x0070bd6a    751e
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070bd6c    8b0d5c19d000
                         xor.s              eax, eax                                      // 0x0070bd72    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a5b]               // 0x0070bd74    8a815b5a2000
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x0070bd7a    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x0070bd7d    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x0070bd80    8d0450
                         shl                eax, 5                                        // 0x0070bd83    c1e005
                         {disp8} lea        ebx, dword ptr [eax + ecx * 0x1 + 0x18]       // 0x0070bd86    8d5c0818
_jmp_addr_0x0070bd8a:    push               0x0                                           // 0x0070bd8a    6a00
                         push               0x00bf4178                                    // 0x0070bd8c    687841bf00
                         push               0x009c7f18                                    // 0x0070bd91    68187f9c00
                         push               0x0                                           // 0x0070bd96    6a00
                         push               ebx                                           // 0x0070bd98    53
                         call               ___RTDynamicCast                              // 0x0070bd99    e87b9c0b00
                         add                esp, 0x14                                     // 0x0070bd9e    83c414
                         test               eax, eax                                      // 0x0070bda1    85c0
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x0070bda3    89442404
                         {disp8} je         _jmp_addr_0x0070bdc4                          // 0x0070bda7    741b
                         mov.s              ecx, eax                                      // 0x0070bda9    8bc8
                         call               _jmp_addr_0x0077fe40                          // 0x0070bdab    e890400700
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0070bdb0    d81d98a38a00
                         fnstsw             ax                                            // 0x0070bdb6    dfe0
                         test               ah, 0x41                                      // 0x0070bdb8    f6c441
                         {disp8} jne        _jmp_addr_0x0070bdc4                          // 0x0070bdbb    7507
                         xor.s              eax, eax                                      // 0x0070bdbd    33c0
                         pop                ebx                                           // 0x0070bdbf    5b
                         add                esp, 0x68                                     // 0x0070bdc0    83c468
                         ret                                                              // 0x0070bdc3    c3
_jmp_addr_0x0070bdc4:    push               ebp                                           // 0x0070bdc4    55
                         {disp8} mov        ebp, dword ptr [esp + 0x7c]                   // 0x0070bdc5    8b6c247c
                         push               esi                                           // 0x0070bdc9    56
                         {disp8} mov        esi, dword ptr [esp + 0x78]                   // 0x0070bdca    8b742478
                         push               edi                                           // 0x0070bdce    57
                         push               esi                                           // 0x0070bdcf    56
                         push               ebp                                           // 0x0070bdd0    55
                         call               ?Get3DAngleFromXZ@GUtils@@SAMABUMapCoords@@0@Z                               // 0x0070bdd1    e89a140400
                         fstp               st(0)                                         // 0x0070bdd6    ddd8
                         {disp32} mov       ecx, dword ptr [esp + 0x00000088]             // 0x0070bdd8    8b8c2488000000
                         {disp32} mov       edi, dword ptr [ecx * 0x4 + _MagicInfoTable]  // 0x0070bddf    8b3c8d107dd300
                         add                esp, 0x08                                     // 0x0070bde6    83c408
                         mov.s              ecx, edi                                      // 0x0070bde9    8bcf
                         call               ?GetMagicEffectInfo@GMagicInfo@@QBEPAVGMagicEffectInfo@@XZ        // 0x0070bdeb    e890f8eeff
                         {disp8} fld        dword ptr [eax + 0x74]                        // 0x0070bdf0    d94074
                         {disp32} mov       eax, dword ptr [esp + 0x00000094]             // 0x0070bdf3    8b842494000000
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x0070bdfa    d95c2430
                         {disp32} mov       edx, dword ptr [esp + 0x00000090]             // 0x0070bdfe    8b942490000000
                         {disp8} mov        dword ptr [esp + 0x34], eax                   // 0x0070be05    89442434
                         {disp32} mov       eax, dword ptr [esp + 0x0000008c]             // 0x0070be09    8b84248c000000
                         test               eax, eax                                      // 0x0070be10    85c0
                         {disp8} mov        dword ptr [esp + 0x2c], edx                   // 0x0070be12    8954242c
                         {disp8} mov        dword ptr [esp + 0x38], 0xffffffff            // 0x0070be16    c7442438ffffffff
                         {disp32} mov       dword ptr [esp + 0x00000088], 0x00000000      // 0x0070be1e    c784248800000000000000
                         {disp8} je         _jmp_addr_0x0070be3c                          // 0x0070be29    7411
                         mov                edx, dword ptr [edi]                          // 0x0070be2b    8b17
                         push               ebx                                           // 0x0070be2d    53
                         push               esi                                           // 0x0070be2e    56
                         mov.s              ecx, edi                                      // 0x0070be2f    8bcf
                         call               dword ptr [edx + 0x30]                        // 0x0070be31    ff5230
                         test               eax, eax                                      // 0x0070be34    85c0
                         {disp32} je        _jmp_addr_0x0070bf83                          // 0x0070be36    0f8447010000
_jmp_addr_0x0070be3c:    {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x0070be3c    8d442414
                         push               eax                                           // 0x0070be40    50
                         mov.s              ecx, ebp                                      // 0x0070be41    8bcd
                         {disp8} mov        dword ptr [esp + 0x40], 0x00000000            // 0x0070be43    c744244000000000
                         {disp8} mov        dword ptr [esp + 0x44], 0x00000000            // 0x0070be4b    c744244400000000
                         {disp8} mov        dword ptr [esp + 0x48], 0x00000000            // 0x0070be53    c744244800000000
                         {disp8} mov        dword ptr [esp + 0x4c], 0x00000000            // 0x0070be5b    c744244c00000000
                         {disp8} mov        dword ptr [esp + 0x50], 0x00000000            // 0x0070be63    c744245000000000
                         {disp8} mov        dword ptr [esp + 0x54], 0x00000000            // 0x0070be6b    c744245400000000
                         {disp8} mov        dword ptr [esp + 0x58], 0x00000000            // 0x0070be73    c744245800000000
                         {disp8} mov        dword ptr [esp + 0x5c], 0x00000000            // 0x0070be7b    c744245c00000000
                         {disp8} mov        dword ptr [esp + 0x60], 0x00000000            // 0x0070be83    c744246000000000
                         {disp8} mov        dword ptr [esp + 0x64], 0x00000000            // 0x0070be8b    c744246400000000
                         {disp8} mov        dword ptr [esp + 0x68], 0x00000000            // 0x0070be93    c744246800000000
                         {disp8} mov        dword ptr [esp + 0x6c], 0x00000000            // 0x0070be9b    c744246c00000000
                         {disp8} mov        dword ptr [esp + 0x70], 0x3f800000            // 0x0070bea3    c74424700000803f
                         {disp8} mov        dword ptr [esp + 0x74], 0x00000000            // 0x0070beab    c744247400000000
                         {disp8} mov        byte ptr [esp + 0x78], 0x01                   // 0x0070beb3    c644247801
                         call               @GetLHPoint__9MapCoordsCFv@12                 // 0x0070beb8    e8839defff
                         mov                ecx, dword ptr [eax]                          // 0x0070bebd    8b08
                         {disp8} mov        dword ptr [esp + 0x48], ecx                   // 0x0070bebf    894c2448
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x0070bec3    8b5004
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x0070bec6    8d4c2420
                         {disp8} mov        dword ptr [esp + 0x4c], edx                   // 0x0070beca    8954244c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0070bece    8b4008
                         push               ecx                                           // 0x0070bed1    51
                         mov.s              ecx, esi                                      // 0x0070bed2    8bce
                         {disp8} mov        dword ptr [esp + 0x54], eax                   // 0x0070bed4    89442454
                         call               @GetLHPoint__9MapCoordsCFv@12                 // 0x0070bed8    e8639defff
                         fld                dword ptr [eax]                               // 0x0070bedd    d900
                         {disp8} fsub       dword ptr [esp + 0x48]                        // 0x0070bedf    d8642448
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0070bee3    d95c2414
                         {disp8} fld        dword ptr [eax + 0x04]                        // 0x0070bee7    d94004
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x0070beea    8b542414
                         {disp8} fsub       dword ptr [esp + 0x4c]                        // 0x0070beee    d864244c
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0070bef2    d95c2418
                         {disp8} fld        dword ptr [eax + 0x08]                        // 0x0070bef6    d94008
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x0070bef9    8b442418
                         {disp8} fsub       dword ptr [esp + 0x50]                        // 0x0070befd    d8642450
                         {disp8} mov        dword ptr [esp + 0x54], edx                   // 0x0070bf01    89542454
                         {disp32} mov       edx, dword ptr [esp + 0x0000009c]             // 0x0070bf05    8b94249c000000
                         {disp8} mov        dword ptr [esp + 0x58], eax                   // 0x0070bf0c    89442458
                         mov                eax, dword ptr [edx]                          // 0x0070bf10    8b02
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0070bf12    d95c241c
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x0070bf16    8b4c241c
                         {disp32} fld       dword ptr [rdata_bytes + 0x99b08]             // 0x0070bf1a    d905082b9400
                         {disp32} fmul      dword ptr [esp + 0x00000098]                  // 0x0070bf20    d88c2498000000
                         {disp8} mov        dword ptr [esp + 0x5c], ecx                   // 0x0070bf27    894c245c
                         {disp8} mov        ecx, dword ptr [edx + 0x04]                   // 0x0070bf2b    8b4a04
                         {disp8} mov        edx, dword ptr [edx + 0x08]                   // 0x0070bf2e    8b5208
                         {disp8} mov        dword ptr [esp + 0x60], eax                   // 0x0070bf31    89442460
                         {disp8} fstp       dword ptr [esp + 0x70]                        // 0x0070bf35    d95c2470
                         {disp8} mov        dword ptr [esp + 0x64], ecx                   // 0x0070bf39    894c2464
                         {disp8} lea        eax, dword ptr [esp + 0x3c]                   // 0x0070bf3d    8d44243c
                         push               eax                                           // 0x0070bf41    50
                         {disp32} lea       ecx, dword ptr [esp + 0x0000008c]             // 0x0070bf42    8d8c248c000000
                         push               ecx                                           // 0x0070bf49    51
                         {disp8} mov        dword ptr [esp + 0x70], edx                   // 0x0070bf4a    89542470
                         {disp8} lea        edx, dword ptr [esp + 0x34]                   // 0x0070bf4e    8d542434
                         push               edx                                           // 0x0070bf52    52
                         push               ebx                                           // 0x0070bf53    53
                         push               esi                                           // 0x0070bf54    56
                         mov.s              ecx, edi                                      // 0x0070bf55    8bcf
                         call               _jmp_addr_0x005fb490                          // 0x0070bf57    e834f5eeff
                         {disp32} mov       eax, dword ptr [esp + 0x00000088]             // 0x0070bf5c    8b842488000000
                         test               eax, eax                                      // 0x0070bf63    85c0
                         {disp8} je         _jmp_addr_0x0070bf83                          // 0x0070bf65    741c
                         {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x0070bf67    8b742410
                         test               esi, esi                                      // 0x0070bf6b    85f6
                         {disp8} je         _jmp_addr_0x0070bf83                          // 0x0070bf6d    7414
                         mov.s              ecx, esi                                      // 0x0070bf6f    8bce
                         call               _jmp_addr_0x0077f840                          // 0x0070bf71    e8ca380700
                         push               ecx                                           // 0x0070bf76    51
                         mov.s              ecx, esi                                      // 0x0070bf77    8bce
                         fstp               dword ptr [esp]                               // 0x0070bf79    d91c24
                         call               _jmp_addr_0x0077fe10                          // 0x0070bf7c    e88f3e0700
                         fstp               st(0)                                         // 0x0070bf81    ddd8
_jmp_addr_0x0070bf83:    {disp32} mov       eax, dword ptr [esp + 0x00000088]             // 0x0070bf83    8b842488000000
                         pop                edi                                           // 0x0070bf8a    5f
                         pop                esi                                           // 0x0070bf8b    5e
                         pop                ebp                                           // 0x0070bf8c    5d
                         pop                ebx                                           // 0x0070bf8d    5b
                         add                esp, 0x68                                     // 0x0070bf8e    83c468
                         ret                                                              // 0x0070bf91    c3
                         nop                                                              // 0x0070bf92    90
                         nop                                                              // 0x0070bf93    90
                         nop                                                              // 0x0070bf94    90
                         nop                                                              // 0x0070bf95    90
                         nop                                                              // 0x0070bf96    90
                         nop                                                              // 0x0070bf97    90
                         nop                                                              // 0x0070bf98    90
                         nop                                                              // 0x0070bf99    90
                         nop                                                              // 0x0070bf9a    90
                         nop                                                              // 0x0070bf9b    90
                         nop                                                              // 0x0070bf9c    90
                         nop                                                              // 0x0070bf9d    90
                         nop                                                              // 0x0070bf9e    90
                         nop                                                              // 0x0070bf9f    90
                         sub                esp, 0x2c                                     // 0x0070bfa0    83ec2c
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070bfa3    8b0d105cd900
                         push               ebx                                           // 0x0070bfa9    53
                         push               ebp                                           // 0x0070bfaa    55
                         push               esi                                           // 0x0070bfab    56
                         push               edi                                           // 0x0070bfac    57
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x0070bfad    8d442414
                         push               eax                                           // 0x0070bfb1    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0070bfb2    e809acfeff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070bfb7    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x0070bfbd    8d542414
                         push               edx                                           // 0x0070bfc1    52
                         mov.s              ebx, eax                                      // 0x0070bfc2    8bd8
                         call               _jmp_addr_0x006f6bc0                          // 0x0070bfc4    e8f7abfeff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070bfc9    8b0d105cd900
                         mov.s              ebp, eax                                      // 0x0070bfcf    8be8
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x0070bfd1    8d442414
                         push               eax                                           // 0x0070bfd5    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0070bfd6    e8e5abfeff
                         {disp32} mov       esi, dword ptr [_script_dll]                  // 0x0070bfdb    8b35105cd900
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0070bfe1    8d4c2414
                         push               ecx                                           // 0x0070bfe5    51
                         mov.s              ecx, esi                                      // 0x0070bfe6    8bce
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x0070bfe8    89442414
                         call               _jmp_addr_0x006f6bc0                          // 0x0070bfec    e8cfabfeff
                         mov.s              edx, eax                                      // 0x0070bff1    8bd0
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x0070bff3    89442414
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x0070bff7    8d442414
                         push               eax                                           // 0x0070bffb    50
                         mov.s              ecx, esi                                      // 0x0070bffc    8bce
                         {disp8} mov        dword ptr [esp + 0x24], edx                   // 0x0070bffe    89542424
                         call               _jmp_addr_0x006f6bc0                          // 0x0070c002    e8b9abfeff
                         mov.s              ecx, eax                                      // 0x0070c007    8bc8
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x0070c009    8d542414
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                   // 0x0070c00d    894c241c
                         push               edx                                           // 0x0070c011    52
                         mov.s              ecx, esi                                      // 0x0070c012    8bce
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x0070c014    89442418
                         call               _jmp_addr_0x006f6bc0                          // 0x0070c018    e8a3abfeff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070c01d    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x0070c023    8d542414
                         push               edx                                           // 0x0070c027    52
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x0070c028    89442418
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x0070c02c    8944241c
                         call               _jmp_addr_0x006f6bc0                          // 0x0070c030    e88babfeff
                         push               eax                                           // 0x0070c035    50
                         call               _jmp_addr_0x0070d220                          // 0x0070c036    e8e5110000
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070c03b    8b0d105cd900
                         mov.s              esi, eax                                      // 0x0070c041    8bf0
                         add                esp, 0x04                                     // 0x0070c043    83c404
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x0070c046    8d442414
                         push               eax                                           // 0x0070c04a    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0070c04b    e870abfeff
                         test               esi, esi                                      // 0x0070c050    85f6
                         mov.s              edi, eax                                      // 0x0070c052    8bf8
                         {disp8} jne        _jmp_addr_0x0070c063                          // 0x0070c054    750d
                         push               0x00c20698                                    // 0x0070c056    689806c200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070c05b    e850a2feff
                         add                esp, 0x04                                     // 0x0070c060    83c404
_jmp_addr_0x0070c063:    test               edi, edi                                      // 0x0070c063    85ff
                         {disp8} jle        _jmp_addr_0x0070c06c                          // 0x0070c065    7e05
                         cmp                edi, 0x2a                                     // 0x0070c067    83ff2a
                         {disp8} jl         _jmp_addr_0x0070c079                          // 0x0070c06a    7c0d
_jmp_addr_0x0070c06c:    push               0x00c20688                                    // 0x0070c06c    688806c200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070c071    e83aa2feff
                         add                esp, 0x04                                     // 0x0070c076    83c404
_jmp_addr_0x0070c079:    test               edi, edi                                      // 0x0070c079    85ff
                         {disp32} jle       _jmp_addr_0x0070c17a                          // 0x0070c07b    0f8ef9000000
                         cmp                edi, 0x2a                                     // 0x0070c081    83ff2a
                         {disp32} jge       _jmp_addr_0x0070c17a                          // 0x0070c084    0f8df0000000
                         test               esi, esi                                      // 0x0070c08a    85f6
                         {disp32} je        _jmp_addr_0x0070c15e                          // 0x0070c08c    0f84cc000000
                         push               0x0                                           // 0x0070c092    6a00
                         push               0x009c7f50                                    // 0x0070c094    68507f9c00
                         push               0x009c7f30                                    // 0x0070c099    68307f9c00
                         push               0x0                                           // 0x0070c09e    6a00
                         push               esi                                           // 0x0070c0a0    56
                         call               ___RTDynamicCast                              // 0x0070c0a1    e873990b00
                         add                esp, 0x14                                     // 0x0070c0a6    83c414
                         test               eax, eax                                      // 0x0070c0a9    85c0
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x0070c0ab    89442414
                         {disp8} je         _jmp_addr_0x0070c0f5                          // 0x0070c0af    7444
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x0070c0b1    8b542410
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x0070c0b5    8d4c2424
                         push               ecx                                           // 0x0070c0b9    51
                         push               ebx                                           // 0x0070c0ba    53
                         push               ebp                                           // 0x0070c0bb    55
                         push               edx                                           // 0x0070c0bc    52
                         push               0x0                                           // 0x0070c0bd    6a00
                         push               0x0                                           // 0x0070c0bf    6a00
                         {disp8} lea        eax, dword ptr [esp + 0x30]                   // 0x0070c0c1    8d442430
                         push               eax                                           // 0x0070c0c5    50
                         {disp8} lea        ecx, dword ptr [esp + 0x4c]                   // 0x0070c0c6    8d4c244c
                         {disp8} mov        dword ptr [esp + 0x40], 0x00000000            // 0x0070c0ca    c744244000000000
                         {disp8} mov        dword ptr [esp + 0x44], 0x00000000            // 0x0070c0d2    c744244400000000
                         {disp8} mov        dword ptr [esp + 0x48], 0x00000000            // 0x0070c0da    c744244800000000
                         call               @__ct__9MapCoordsFRC7LHPoint@12               // 0x0070c0e2    e87970efff
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                   // 0x0070c0e7    8b4c242c
                         push               eax                                           // 0x0070c0eb    50
                         push               edi                                           // 0x0070c0ec    57
                         push               ecx                                           // 0x0070c0ed    51
                         call               _jmp_addr_0x0070bb20                          // 0x0070c0ee    e82dfaffff
                         {disp8} jmp        _jmp_addr_0x0070c136                          // 0x0070c0f3    eb41
_jmp_addr_0x0070c0f5:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0070c0f5    8b442410
                         {disp8} lea        edx, dword ptr [esp + 0x24]                   // 0x0070c0f9    8d542424
                         push               edx                                           // 0x0070c0fd    52
                         push               ebx                                           // 0x0070c0fe    53
                         push               ebp                                           // 0x0070c0ff    55
                         push               eax                                           // 0x0070c100    50
                         push               0x0                                           // 0x0070c101    6a00
                         push               0x0                                           // 0x0070c103    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x0070c105    8d4c2430
                         push               ecx                                           // 0x0070c109    51
                         {disp8} lea        ecx, dword ptr [esp + 0x4c]                   // 0x0070c10a    8d4c244c
                         {disp8} mov        dword ptr [esp + 0x40], 0x00000000            // 0x0070c10e    c744244000000000
                         {disp8} mov        dword ptr [esp + 0x44], 0x00000000            // 0x0070c116    c744244400000000
                         {disp8} mov        dword ptr [esp + 0x48], 0x00000000            // 0x0070c11e    c744244800000000
                         call               @__ct__9MapCoordsFRC7LHPoint@12               // 0x0070c126    e83570efff
                         push               eax                                           // 0x0070c12b    50
                         add                esi, 0x14                                     // 0x0070c12c    83c614
                         push               edi                                           // 0x0070c12f    57
                         push               esi                                           // 0x0070c130    56
                         call               _jmp_addr_0x0070bd60                          // 0x0070c131    e82afcffff
_jmp_addr_0x0070c136:    add                esp, 0x24                                     // 0x0070c136    83c424
                         test               eax, eax                                      // 0x0070c139    85c0
                         {disp8} je         _jmp_addr_0x0070c15e                          // 0x0070c13b    7421
                         push               0x1                                           // 0x0070c13d    6a01
                         push               eax                                           // 0x0070c13f    50
                         call               _jmp_addr_0x0070d0f0                          // 0x0070c140    e8ab0f0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070c145    8b0d105cd900
                         add                esp, 0x08                                     // 0x0070c14b    83c408
                         push               0x4                                           // 0x0070c14e    6a04
                         push               eax                                           // 0x0070c150    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070c151    e84aaafeff
                         pop                edi                                           // 0x0070c156    5f
                         pop                esi                                           // 0x0070c157    5e
                         pop                ebp                                           // 0x0070c158    5d
                         pop                ebx                                           // 0x0070c159    5b
                         add                esp, 0x2c                                     // 0x0070c15a    83c42c
                         ret                                                              // 0x0070c15d    c3
_jmp_addr_0x0070c15e:    push               0x00c20674                                    // 0x0070c15e    687406c200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070c163    e848a1feff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070c168    8b0d105cd900
                         add                esp, 0x04                                     // 0x0070c16e    83c404
                         push               0x4                                           // 0x0070c171    6a04
                         push               0x0                                           // 0x0070c173    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070c175    e826aafeff
_jmp_addr_0x0070c17a:    pop                edi                                           // 0x0070c17a    5f
                         pop                esi                                           // 0x0070c17b    5e
                         pop                ebp                                           // 0x0070c17c    5d
                         pop                ebx                                           // 0x0070c17d    5b
                         add                esp, 0x2c                                     // 0x0070c17e    83c42c
                         ret                                                              // 0x0070c181    c3
                         nop                                                              // 0x0070c182    90
                         nop                                                              // 0x0070c183    90
                         nop                                                              // 0x0070c184    90
                         nop                                                              // 0x0070c185    90
                         nop                                                              // 0x0070c186    90
                         nop                                                              // 0x0070c187    90
                         nop                                                              // 0x0070c188    90
                         nop                                                              // 0x0070c189    90
                         nop                                                              // 0x0070c18a    90
                         nop                                                              // 0x0070c18b    90
                         nop                                                              // 0x0070c18c    90
                         nop                                                              // 0x0070c18d    90
                         nop                                                              // 0x0070c18e    90
                         nop                                                              // 0x0070c18f    90
                         sub                esp, 0x40                                     // 0x0070c190    83ec40
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070c193    8b0d105cd900
                         push               ebx                                           // 0x0070c199    53
                         push               ebp                                           // 0x0070c19a    55
                         push               esi                                           // 0x0070c19b    56
                         push               edi                                           // 0x0070c19c    57
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x0070c19d    8d442410
                         push               eax                                           // 0x0070c1a1    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0070c1a2    e819aafeff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070c1a7    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x0070c1ad    8d542410
                         push               edx                                           // 0x0070c1b1    52
                         mov.s              edi, eax                                      // 0x0070c1b2    8bf8
                         call               _jmp_addr_0x006f6bc0                          // 0x0070c1b4    e807aafeff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070c1b9    8b0d105cd900
                         mov.s              ebx, eax                                      // 0x0070c1bf    8bd8
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x0070c1c1    8d442410
                         push               eax                                           // 0x0070c1c5    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0070c1c6    e8f5a9feff
                         {disp32} mov       esi, dword ptr [_script_dll]                  // 0x0070c1cb    8b35105cd900
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0070c1d1    8d4c2410
                         push               ecx                                           // 0x0070c1d5    51
                         mov.s              ecx, esi                                      // 0x0070c1d6    8bce
                         mov.s              ebp, eax                                      // 0x0070c1d8    8be8
                         call               _jmp_addr_0x006f6bc0                          // 0x0070c1da    e8e1a9feff
                         mov.s              edx, eax                                      // 0x0070c1df    8bd0
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0070c1e1    89442410
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x0070c1e5    8d442410
                         push               eax                                           // 0x0070c1e9    50
                         mov.s              ecx, esi                                      // 0x0070c1ea    8bce
                         {disp8} mov        dword ptr [esp + 0x2c], edx                   // 0x0070c1ec    8954242c
                         call               _jmp_addr_0x006f6bc0                          // 0x0070c1f0    e8cba9feff
                         mov.s              ecx, eax                                      // 0x0070c1f5    8bc8
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x0070c1f7    8d542410
                         {disp8} mov        dword ptr [esp + 0x24], ecx                   // 0x0070c1fb    894c2424
                         push               edx                                           // 0x0070c1ff    52
                         mov.s              ecx, esi                                      // 0x0070c200    8bce
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x0070c202    89442414
                         call               _jmp_addr_0x006f6bc0                          // 0x0070c206    e8b5a9feff
                         {disp32} mov       esi, dword ptr [_script_dll]                  // 0x0070c20b    8b35105cd900
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0070c211    8d4c2410
                         push               ecx                                           // 0x0070c215    51
                         mov.s              ecx, esi                                      // 0x0070c216    8bce
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x0070c218    89442414
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x0070c21c    89442424
                         call               _jmp_addr_0x006f6bc0                          // 0x0070c220    e89ba9feff
                         mov.s              edx, eax                                      // 0x0070c225    8bd0
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0070c227    89442410
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x0070c22b    8d442410
                         push               eax                                           // 0x0070c22f    50
                         mov.s              ecx, esi                                      // 0x0070c230    8bce
                         {disp8} mov        dword ptr [esp + 0x38], edx                   // 0x0070c232    89542438
                         call               _jmp_addr_0x006f6bc0                          // 0x0070c236    e885a9feff
                         mov.s              ecx, eax                                      // 0x0070c23b    8bc8
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x0070c23d    8d542410
                         {disp8} mov        dword ptr [esp + 0x30], ecx                   // 0x0070c241    894c2430
                         push               edx                                           // 0x0070c245    52
                         mov.s              ecx, esi                                      // 0x0070c246    8bce
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x0070c248    89442414
                         call               _jmp_addr_0x006f6bc0                          // 0x0070c24c    e86fa9feff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070c251    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x0070c257    8d542410
                         push               edx                                           // 0x0070c25b    52
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x0070c25c    89442414
                         {disp8} mov        dword ptr [esp + 0x30], eax                   // 0x0070c260    89442430
                         call               _jmp_addr_0x006f6bc0                          // 0x0070c264    e857a9feff
                         mov.s              esi, eax                                      // 0x0070c269    8bf0
                         test               esi, esi                                      // 0x0070c26b    85f6
                         {disp8} jle        _jmp_addr_0x0070c274                          // 0x0070c26d    7e05
                         cmp                esi, 0x2a                                     // 0x0070c26f    83fe2a
                         {disp8} jl         _jmp_addr_0x0070c281                          // 0x0070c272    7c0d
_jmp_addr_0x0070c274:    push               0x00c20688                                    // 0x0070c274    688806c200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070c279    e832a0feff
                         add                esp, 0x04                                     // 0x0070c27e    83c404
_jmp_addr_0x0070c281:    test               esi, esi                                      // 0x0070c281    85f6
                         {disp32} jle       _jmp_addr_0x0070c31e                          // 0x0070c283    0f8e95000000
                         cmp                esi, 0x2a                                     // 0x0070c289    83fe2a
                         {disp32} jge       _jmp_addr_0x0070c31e                          // 0x0070c28c    0f8d8c000000
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x0070c292    8d442414
                         push               eax                                           // 0x0070c296    50
                         push               edi                                           // 0x0070c297    57
                         push               ebx                                           // 0x0070c298    53
                         push               ebp                                           // 0x0070c299    55
                         push               0x0                                           // 0x0070c29a    6a00
                         push               0x0                                           // 0x0070c29c    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x38]                   // 0x0070c29e    8d4c2438
                         push               ecx                                           // 0x0070c2a2    51
                         {disp8} lea        ecx, dword ptr [esp + 0x54]                   // 0x0070c2a3    8d4c2454
                         {disp8} mov        dword ptr [esp + 0x30], 0x00000000            // 0x0070c2a7    c744243000000000
                         {disp8} mov        dword ptr [esp + 0x34], 0x00000000            // 0x0070c2af    c744243400000000
                         {disp8} mov        dword ptr [esp + 0x38], 0x00000000            // 0x0070c2b7    c744243800000000
                         call               @__ct__9MapCoordsFRC7LHPoint@12               // 0x0070c2bf    e89c6eefff
                         push               eax                                           // 0x0070c2c4    50
                         push               esi                                           // 0x0070c2c5    56
                         {disp8} lea        edx, dword ptr [esp + 0x4c]                   // 0x0070c2c6    8d54244c
                         push               edx                                           // 0x0070c2ca    52
                         {disp8} lea        ecx, dword ptr [esp + 0x68]                   // 0x0070c2cb    8d4c2468
                         call               @__ct__9MapCoordsFRC7LHPoint@12               // 0x0070c2cf    e88c6eefff
                         push               eax                                           // 0x0070c2d4    50
                         call               _jmp_addr_0x0070bd60                          // 0x0070c2d5    e886faffff
                         add                esp, 0x24                                     // 0x0070c2da    83c424
                         test               eax, eax                                      // 0x0070c2dd    85c0
                         {disp8} je         _jmp_addr_0x0070c302                          // 0x0070c2df    7421
                         push               0x1                                           // 0x0070c2e1    6a01
                         push               eax                                           // 0x0070c2e3    50
                         call               _jmp_addr_0x0070d0f0                          // 0x0070c2e4    e8070e0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070c2e9    8b0d105cd900
                         add                esp, 0x08                                     // 0x0070c2ef    83c408
                         push               0x4                                           // 0x0070c2f2    6a04
                         push               eax                                           // 0x0070c2f4    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070c2f5    e8a6a8feff
                         pop                edi                                           // 0x0070c2fa    5f
                         pop                esi                                           // 0x0070c2fb    5e
                         pop                ebp                                           // 0x0070c2fc    5d
                         pop                ebx                                           // 0x0070c2fd    5b
                         add                esp, 0x40                                     // 0x0070c2fe    83c440
                         ret                                                              // 0x0070c301    c3
_jmp_addr_0x0070c302:    push               0x00c20674                                    // 0x0070c302    687406c200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070c307    e8a49ffeff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070c30c    8b0d105cd900
                         add                esp, 0x04                                     // 0x0070c312    83c404
                         push               0x4                                           // 0x0070c315    6a04
                         push               0x0                                           // 0x0070c317    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070c319    e882a8feff
_jmp_addr_0x0070c31e:    pop                edi                                           // 0x0070c31e    5f
                         pop                esi                                           // 0x0070c31f    5e
                         pop                ebp                                           // 0x0070c320    5d
                         pop                ebx                                           // 0x0070c321    5b
                         add                esp, 0x40                                     // 0x0070c322    83c440
                         ret                                                              // 0x0070c325    c3
                         nop                                                              // 0x0070c326    90
                         nop                                                              // 0x0070c327    90
                         nop                                                              // 0x0070c328    90
                         nop                                                              // 0x0070c329    90
                         nop                                                              // 0x0070c32a    90
                         nop                                                              // 0x0070c32b    90
                         nop                                                              // 0x0070c32c    90
                         nop                                                              // 0x0070c32d    90
                         nop                                                              // 0x0070c32e    90
                         nop                                                              // 0x0070c32f    90
                         sub                esp, 0x1c                                     // 0x0070c330    83ec1c
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070c333    8b0d105cd900
                         push               esi                                           // 0x0070c339    56
                         push               edi                                           // 0x0070c33a    57
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x0070c33b    8d442408
                         push               eax                                           // 0x0070c33f    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0070c340    e87ba8feff
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x0070c345    89442408
                         xor.s              edx, edx                                      // 0x0070c349    33d2
                         mov                eax, 0x000003e8                               // 0x0070c34b    b8e8030000
                         div                dword ptr [data_bytes + 0x33ba38]             // 0x0070c350    f735381ad000
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x0070c356    c744241000000000
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x0070c35e    8944240c
                         {disp8} fild       qword ptr [esp + 0x0c]                        // 0x0070c362    df6c240c
                         {disp8} fmul       dword ptr [esp + 0x08]                        // 0x0070c366    d84c2408
                         call               _jmp_addr_0x007a1400                          // 0x0070c36a    e891500900
                         {disp32} mov       esi, dword ptr [_script_dll]                  // 0x0070c36f    8b35105cd900
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x0070c375    8d4c2408
                         push               ecx                                           // 0x0070c379    51
                         mov.s              ecx, esi                                      // 0x0070c37a    8bce
                         mov.s              edi, eax                                      // 0x0070c37c    8bf8
                         call               _jmp_addr_0x006f6bc0                          // 0x0070c37e    e83da8feff
                         mov.s              edx, eax                                      // 0x0070c383    8bd0
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x0070c385    89442408
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x0070c389    8d442408
                         push               eax                                           // 0x0070c38d    50
                         mov.s              ecx, esi                                      // 0x0070c38e    8bce
                         {disp8} mov        dword ptr [esp + 0x24], edx                   // 0x0070c390    89542424
                         call               _jmp_addr_0x006f6bc0                          // 0x0070c394    e827a8feff
                         mov.s              ecx, eax                                      // 0x0070c399    8bc8
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x0070c39b    8d542408
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                   // 0x0070c39f    894c241c
                         push               edx                                           // 0x0070c3a3    52
                         mov.s              ecx, esi                                      // 0x0070c3a4    8bce
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x0070c3a6    8944240c
                         call               _jmp_addr_0x006f6bc0                          // 0x0070c3aa    e811a8feff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070c3af    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x0070c3b5    8d542408
                         push               edx                                           // 0x0070c3b9    52
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x0070c3ba    8944240c
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x0070c3be    8944241c
                         call               _jmp_addr_0x006f6bc0                          // 0x0070c3c2    e8f9a7feff
                         push               0x0                                           // 0x0070c3c7    6a00
                         push               edi                                           // 0x0070c3c9    57
                         push               0x3f800000                                    // 0x0070c3ca    680000803f
                         push               eax                                           // 0x0070c3cf    50
                         {disp8} lea        eax, dword ptr [esp + 0x28]                   // 0x0070c3d0    8d442428
                         push               eax                                           // 0x0070c3d4    50
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x0070c3d5    8d4c2420
                         call               @__ct__9MapCoordsFRC7LHPoint@12               // 0x0070c3d9    e8826defff
                         push               eax                                           // 0x0070c3de    50
                         call               _jmp_addr_0x0063e580                          // 0x0070c3df    e89c21f3ff
                         mov.s              esi, eax                                      // 0x0070c3e4    8bf0
                         add                esp, 0x14                                     // 0x0070c3e6    83c414
                         test               esi, esi                                      // 0x0070c3e9    85f6
                         {disp8} je         _jmp_addr_0x0070c432                          // 0x0070c3eb    7445
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070c3ed    8b0d5c19d000
                         mov                edx, dword ptr [esi]                          // 0x0070c3f3    8b16
                         xor.s              eax, eax                                      // 0x0070c3f5    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x0070c3f7    8a81595a2000
                         lea                edi, dword ptr [eax + eax * 0x4]              // 0x0070c3fd    8d3c80
                         lea                edi, dword ptr [eax + edi * 0x8]              // 0x0070c400    8d3cf8
                         lea                eax, dword ptr [eax + edi * 0x2]              // 0x0070c403    8d0478
                         shl                eax, 5                                        // 0x0070c406    c1e005
                         {disp8} lea        ecx, dword ptr [eax + ecx * 0x1 + 0x18]       // 0x0070c409    8d4c0818
                         push               ecx                                           // 0x0070c40d    51
                         mov.s              ecx, esi                                      // 0x0070c40e    8bce
                         call               dword ptr [edx + 0x20]                        // 0x0070c410    ff5220
                         push               0x1                                           // 0x0070c413    6a01
                         push               esi                                           // 0x0070c415    56
                         call               _jmp_addr_0x0070d0f0                          // 0x0070c416    e8d50c0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070c41b    8b0d105cd900
                         add                esp, 0x08                                     // 0x0070c421    83c408
                         push               0x4                                           // 0x0070c424    6a04
                         push               eax                                           // 0x0070c426    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070c427    e874a7feff
                         pop                edi                                           // 0x0070c42c    5f
                         pop                esi                                           // 0x0070c42d    5e
                         add                esp, 0x1c                                     // 0x0070c42e    83c41c
                         ret                                                              // 0x0070c431    c3
_jmp_addr_0x0070c432:    push               0x00c20674                                    // 0x0070c432    687406c200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070c437    e8749efeff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070c43c    8b0d105cd900
                         add                esp, 0x04                                     // 0x0070c442    83c404
                         push               0x4                                           // 0x0070c445    6a04
                         push               0x0                                           // 0x0070c447    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070c449    e852a7feff
                         pop                edi                                           // 0x0070c44e    5f
                         pop                esi                                           // 0x0070c44f    5e
                         add                esp, 0x1c                                     // 0x0070c450    83c41c
                         ret                                                              // 0x0070c453    c3
                         nop                                                              // 0x0070c454    90
                         nop                                                              // 0x0070c455    90
                         nop                                                              // 0x0070c456    90
                         nop                                                              // 0x0070c457    90
                         nop                                                              // 0x0070c458    90
                         nop                                                              // 0x0070c459    90
                         nop                                                              // 0x0070c45a    90
                         nop                                                              // 0x0070c45b    90
                         nop                                                              // 0x0070c45c    90
                         nop                                                              // 0x0070c45d    90
                         nop                                                              // 0x0070c45e    90
                         nop                                                              // 0x0070c45f    90
                         sub                esp, 0x0c                                     // 0x0070c460    83ec0c
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070c463    8b0d105cd900
                         push               esi                                           // 0x0070c469    56
                         push               edi                                           // 0x0070c46a    57
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x0070c46b    8d442408
                         push               eax                                           // 0x0070c46f    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0070c470    e84ba7feff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070c475    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x0070c47b    8d54240c
                         push               edx                                           // 0x0070c47f    52
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x0070c480    8944240c
                         call               _jmp_addr_0x006f6bc0                          // 0x0070c484    e837a7feff
                         push               eax                                           // 0x0070c489    50
                         call               _jmp_addr_0x0070d220                          // 0x0070c48a    e8910d0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070c48f    8b0d105cd900
                         mov.s              esi, eax                                      // 0x0070c495    8bf0
                         add                esp, 0x04                                     // 0x0070c497    83c404
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x0070c49a    8d44240c
                         push               eax                                           // 0x0070c49e    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0070c49f    e81ca7feff
                         mov.s              edi, eax                                      // 0x0070c4a4    8bf8
                         xor.s              edx, edx                                      // 0x0070c4a6    33d2
                         mov                eax, 0x000003e8                               // 0x0070c4a8    b8e8030000
                         div                dword ptr [data_bytes + 0x33ba38]             // 0x0070c4ad    f735381ad000
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x0070c4b3    c744241000000000
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x0070c4bb    8944240c
                         {disp8} fild       qword ptr [esp + 0x0c]                        // 0x0070c4bf    df6c240c
                         {disp8} fmul       dword ptr [esp + 0x08]                        // 0x0070c4c3    d84c2408
                         call               _jmp_addr_0x007a1400                          // 0x0070c4c7    e8344f0900
                         test               esi, esi                                      // 0x0070c4cc    85f6
                         {disp8} jne        _jmp_addr_0x0070c4ff                          // 0x0070c4ce    752f
                         push               0x00c0d7b8                                    // 0x0070c4d0    68b8d7c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070c4d5    e8d69dfeff
                         add                esp, 0x04                                     // 0x0070c4da    83c404
_jmp_addr_0x0070c4dd:    push               0x00c20674                                    // 0x0070c4dd    687406c200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070c4e2    e8c99dfeff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070c4e7    8b0d105cd900
                         add                esp, 0x04                                     // 0x0070c4ed    83c404
                         push               0x4                                           // 0x0070c4f0    6a04
                         push               0x0                                           // 0x0070c4f2    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070c4f4    e8a7a6feff
                         pop                edi                                           // 0x0070c4f9    5f
                         pop                esi                                           // 0x0070c4fa    5e
                         add                esp, 0x0c                                     // 0x0070c4fb    83c40c
                         ret                                                              // 0x0070c4fe    c3
_jmp_addr_0x0070c4ff:    push               esi                                           // 0x0070c4ff    56
                         push               eax                                           // 0x0070c500    50
                         push               0x3f800000                                    // 0x0070c501    680000803f
                         push               edi                                           // 0x0070c506    57
                         add                esi, 0x14                                     // 0x0070c507    83c614
                         push               esi                                           // 0x0070c50a    56
                         call               _jmp_addr_0x0063e580                          // 0x0070c50b    e87020f3ff
                         mov.s              esi, eax                                      // 0x0070c510    8bf0
                         add                esp, 0x14                                     // 0x0070c512    83c414
                         test               esi, esi                                      // 0x0070c515    85f6
                         {disp8} je         _jmp_addr_0x0070c4dd                          // 0x0070c517    74c4
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070c519    8b0d5c19d000
                         mov                edx, dword ptr [esi]                          // 0x0070c51f    8b16
                         xor.s              eax, eax                                      // 0x0070c521    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x0070c523    8a81595a2000
                         lea                edi, dword ptr [eax + eax * 0x4]              // 0x0070c529    8d3c80
                         lea                edi, dword ptr [eax + edi * 0x8]              // 0x0070c52c    8d3cf8
                         lea                eax, dword ptr [eax + edi * 0x2]              // 0x0070c52f    8d0478
                         shl                eax, 5                                        // 0x0070c532    c1e005
                         {disp8} lea        ecx, dword ptr [eax + ecx * 0x1 + 0x18]       // 0x0070c535    8d4c0818
                         push               ecx                                           // 0x0070c539    51
                         mov.s              ecx, esi                                      // 0x0070c53a    8bce
                         call               dword ptr [edx + 0x20]                        // 0x0070c53c    ff5220
                         push               0x1                                           // 0x0070c53f    6a01
                         push               esi                                           // 0x0070c541    56
                         call               _jmp_addr_0x0070d0f0                          // 0x0070c542    e8a90b0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070c547    8b0d105cd900
                         add                esp, 0x08                                     // 0x0070c54d    83c408
                         push               0x4                                           // 0x0070c550    6a04
                         push               eax                                           // 0x0070c552    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070c553    e848a6feff
                         pop                edi                                           // 0x0070c558    5f
                         pop                esi                                           // 0x0070c559    5e
                         add                esp, 0x0c                                     // 0x0070c55a    83c40c
                         ret                                                              // 0x0070c55d    c3
                         nop                                                              // 0x0070c55e    90
                         nop                                                              // 0x0070c55f    90
                         sub                esp, 0x38                                     // 0x0070c560    83ec38
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070c563    8b0d105cd900
                         push               esi                                           // 0x0070c569    56
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x0070c56a    8d442408
                         push               eax                                           // 0x0070c56e    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0070c56f    e84ca6feff
                         {disp32} mov       esi, dword ptr [_script_dll]                  // 0x0070c574    8b35105cd900
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                   // 0x0070c57a    8d4c2404
                         push               ecx                                           // 0x0070c57e    51
                         mov.s              ecx, esi                                      // 0x0070c57f    8bce
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x0070c581    8944240c
                         call               _jmp_addr_0x006f6bc0                          // 0x0070c585    e836a6feff
                         mov.s              edx, eax                                      // 0x0070c58a    8bd0
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x0070c58c    89442404
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x0070c590    8d442404
                         push               eax                                           // 0x0070c594    50
                         mov.s              ecx, esi                                      // 0x0070c595    8bce
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x0070c597    89542418
                         call               _jmp_addr_0x006f6bc0                          // 0x0070c59b    e820a6feff
                         mov.s              ecx, eax                                      // 0x0070c5a0    8bc8
                         {disp8} lea        edx, dword ptr [esp + 0x04]                   // 0x0070c5a2    8d542404
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x0070c5a6    894c2410
                         push               edx                                           // 0x0070c5aa    52
                         mov.s              ecx, esi                                      // 0x0070c5ab    8bce
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x0070c5ad    89442408
                         call               _jmp_addr_0x006f6bc0                          // 0x0070c5b1    e80aa6feff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070c5b6    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x04]                   // 0x0070c5bc    8d542404
                         push               edx                                           // 0x0070c5c0    52
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x0070c5c1    89442408
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0070c5c5    89442410
                         call               _jmp_addr_0x006f6bc0                          // 0x0070c5c9    e8f2a5feff
                         mov.s              esi, eax                                      // 0x0070c5ce    8bf0
                         sub                eax, 0x13                                     // 0x0070c5d0    83e813
                         {disp8} je         _jmp_addr_0x0070c607                          // 0x0070c5d3    7432
                         dec                eax                                           // 0x0070c5d5    48
                         {disp8} je         _jmp_addr_0x0070c5fa                          // 0x0070c5d6    7422
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x0070c5d8    d9442408
                         push               ecx                                           // 0x0070c5dc    51
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x0070c5dd    8d442410
                         fstp               dword ptr [esp]                               // 0x0070c5e1    d91c24
                         push               eax                                           // 0x0070c5e4    50
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x0070c5e5    8d4c2420
                         call               @__ct__9MapCoordsFRC7LHPoint@12               // 0x0070c5e9    e8726befff
                         push               eax                                           // 0x0070c5ee    50
                         push               esi                                           // 0x0070c5ef    56
                         call               _jmp_addr_0x007217a0                          // 0x0070c5f0    e8ab510100
                         add                esp, 0x0c                                     // 0x0070c5f5    83c40c
                         {disp8} jmp        _jmp_addr_0x0070c620                          // 0x0070c5f8    eb26
_jmp_addr_0x0070c5fa:    {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0070c5fa    8d4c240c
                         push               0x1                                           // 0x0070c5fe    6a01
                         push               ecx                                           // 0x0070c600    51
                         {disp8} lea        ecx, dword ptr [esp + 0x2c]                   // 0x0070c601    8d4c242c
                         {disp8} jmp        _jmp_addr_0x0070c612                          // 0x0070c605    eb0b
_jmp_addr_0x0070c607:    push               0x2                                           // 0x0070c607    6a02
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x0070c609    8d542410
                         push               edx                                           // 0x0070c60d    52
                         {disp8} lea        ecx, dword ptr [esp + 0x38]                   // 0x0070c60e    8d4c2438
_jmp_addr_0x0070c612:    call               @__ct__9MapCoordsFRC7LHPoint@12               // 0x0070c612    e8496befff
                         push               eax                                           // 0x0070c617    50
                         call               _jmp_addr_0x0072ba00                          // 0x0070c618    e8e3f30100
                         add                esp, 0x08                                     // 0x0070c61d    83c408
_jmp_addr_0x0070c620:    test               eax, eax                                      // 0x0070c620    85c0
                         pop                esi                                           // 0x0070c622    5e
                         {disp8} je         _jmp_addr_0x0070c642                          // 0x0070c623    741d
                         push               0x0                                           // 0x0070c625    6a00
                         push               eax                                           // 0x0070c627    50
                         call               _jmp_addr_0x0070d0f0                          // 0x0070c628    e8c30a0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070c62d    8b0d105cd900
                         add                esp, 0x08                                     // 0x0070c633    83c408
                         push               0x4                                           // 0x0070c636    6a04
                         push               eax                                           // 0x0070c638    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070c639    e862a5feff
                         add                esp, 0x38                                     // 0x0070c63e    83c438
                         ret                                                              // 0x0070c641    c3
_jmp_addr_0x0070c642:    {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070c642    8b0d105cd900
                         push               0x4                                           // 0x0070c648    6a04
                         push               0x0                                           // 0x0070c64a    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070c64c    e84fa5feff
                         add                esp, 0x38                                     // 0x0070c651    83c438
                         ret                                                              // 0x0070c654    c3
                         nop                                                              // 0x0070c655    90
                         nop                                                              // 0x0070c656    90
                         nop                                                              // 0x0070c657    90
                         nop                                                              // 0x0070c658    90
                         nop                                                              // 0x0070c659    90
                         nop                                                              // 0x0070c65a    90
                         nop                                                              // 0x0070c65b    90
                         nop                                                              // 0x0070c65c    90
                         nop                                                              // 0x0070c65d    90
                         nop                                                              // 0x0070c65e    90
                         nop                                                              // 0x0070c65f    90
                         push               ecx                                           // 0x0070c660    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070c661    8b0d105cd900
                         push               esi                                           // 0x0070c667    56
                         push               edi                                           // 0x0070c668    57
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x0070c669    8d442408
                         push               eax                                           // 0x0070c66d    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0070c66e    e84da5feff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070c673    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x0070c679    8d542408
                         push               edx                                           // 0x0070c67d    52
                         mov.s              edi, eax                                      // 0x0070c67e    8bf8
                         call               _jmp_addr_0x006f6bc0                          // 0x0070c680    e83ba5feff
                         push               eax                                           // 0x0070c685    50
                         call               _jmp_addr_0x0070d220                          // 0x0070c686    e8950b0000
                         mov.s              esi, eax                                      // 0x0070c68b    8bf0
                         add                esp, 0x04                                     // 0x0070c68d    83c404
                         test               esi, esi                                      // 0x0070c690    85f6
                         {disp8} jne        _jmp_addr_0x0070c6a5                          // 0x0070c692    7511
                         push               0x00c0cd88                                    // 0x0070c694    6888cdc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070c699    e8129cfeff
                         add                esp, 0x04                                     // 0x0070c69e    83c404
                         pop                edi                                           // 0x0070c6a1    5f
                         pop                esi                                           // 0x0070c6a2    5e
                         pop                ecx                                           // 0x0070c6a3    59
                         ret                                                              // 0x0070c6a4    c3
_jmp_addr_0x0070c6a5:    mov                eax, dword ptr [esi]                          // 0x0070c6a5    8b06
                         mov.s              ecx, esi                                      // 0x0070c6a7    8bce
                         call               dword ptr [eax + 0x400]                       // 0x0070c6a9    ff9000040000
                         test               eax, eax                                      // 0x0070c6af    85c0
                         {disp8} je         _jmp_addr_0x0070c6bb                          // 0x0070c6b1    7408
                         push               edi                                           // 0x0070c6b3    57
                         mov.s              ecx, esi                                      // 0x0070c6b4    8bce
                         call               _jmp_addr_0x007202e0                          // 0x0070c6b6    e8253c0100
_jmp_addr_0x0070c6bb:    pop                edi                                           // 0x0070c6bb    5f
                         pop                esi                                           // 0x0070c6bc    5e
                         pop                ecx                                           // 0x0070c6bd    59
                         ret                                                              // 0x0070c6be    c3
                         nop                                                              // 0x0070c6bf    90
                         sub                esp, 0x08                                     // 0x0070c6c0    83ec08
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070c6c3    8b0d105cd900
                         push               esi                                           // 0x0070c6c9    56
                         push               edi                                           // 0x0070c6ca    57
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x0070c6cb    8d442408
                         push               eax                                           // 0x0070c6cf    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0070c6d0    e8eba4feff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070c6d5    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x0070c6db    8d54240c
                         push               edx                                           // 0x0070c6df    52
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x0070c6e0    8944240c
                         call               _jmp_addr_0x006f6bc0                          // 0x0070c6e4    e8d7a4feff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070c6e9    8b0d105cd900
                         mov.s              esi, eax                                      // 0x0070c6ef    8bf0
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x0070c6f1    8d44240c
                         push               eax                                           // 0x0070c6f5    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0070c6f6    e8c5a4feff
                         test               esi, esi                                      // 0x0070c6fb    85f6
                         mov.s              edi, eax                                      // 0x0070c6fd    8bf8
                         {disp8} jle        _jmp_addr_0x0070c706                          // 0x0070c6ff    7e05
                         cmp                esi, 0x2a                                     // 0x0070c701    83fe2a
                         {disp8} jl         _jmp_addr_0x0070c713                          // 0x0070c704    7c0d
_jmp_addr_0x0070c706:    push               0x00c20688                                    // 0x0070c706    688806c200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070c70b    e8a09bfeff
                         add                esp, 0x04                                     // 0x0070c710    83c404
_jmp_addr_0x0070c713:    test               esi, esi                                      // 0x0070c713    85f6
                         {disp8} jle        _jmp_addr_0x0070c747                          // 0x0070c715    7e30
                         cmp                esi, 0x2a                                     // 0x0070c717    83fe2a
                         {disp8} jge        _jmp_addr_0x0070c747                          // 0x0070c71a    7d2b
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x0070c71c    d9442408
                         call               _jmp_addr_0x007a1400                          // 0x0070c720    e8db4c0900
                         push               eax                                           // 0x0070c725    50
                         call               _jmp_addr_0x006eb9a0                          // 0x0070c726    e875f2fdff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070c72b    8b0d5c19d000
                         add                esp, 0x04                                     // 0x0070c731    83c404
                         push               eax                                           // 0x0070c734    50
                         call               ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z          // 0x0070c735    e87642e4ff
                         test               eax, eax                                      // 0x0070c73a    85c0
                         {disp8} je         _jmp_addr_0x0070c747                          // 0x0070c73c    7409
                         push               edi                                           // 0x0070c73e    57
                         push               esi                                           // 0x0070c73f    56
                         mov.s              ecx, eax                                      // 0x0070c740    8bc8
                         call               _jmp_addr_0x0064c300                          // 0x0070c742    e8b9fbf3ff
_jmp_addr_0x0070c747:    pop                edi                                           // 0x0070c747    5f
                         pop                esi                                           // 0x0070c748    5e
                         add                esp, 0x08                                     // 0x0070c749    83c408
                         ret                                                              // 0x0070c74c    c3
                         nop                                                              // 0x0070c74d    90
                         nop                                                              // 0x0070c74e    90
                         nop                                                              // 0x0070c74f    90
                         sub                esp, 0x08                                     // 0x0070c750    83ec08
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070c753    8b0d105cd900
                         push               esi                                           // 0x0070c759    56
                         push               edi                                           // 0x0070c75a    57
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x0070c75b    8d442408
                         push               eax                                           // 0x0070c75f    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0070c760    e85ba4feff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070c765    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x0070c76b    8d54240c
                         push               edx                                           // 0x0070c76f    52
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x0070c770    8944240c
                         call               _jmp_addr_0x006f6bc0                          // 0x0070c774    e847a4feff
                         mov.s              esi, eax                                      // 0x0070c779    8bf0
                         test               esi, esi                                      // 0x0070c77b    85f6
                         mov                edi, 0x00000001                               // 0x0070c77d    bf01000000
                         {disp8} jle        _jmp_addr_0x0070c789                          // 0x0070c782    7e05
                         cmp                esi, 0x2a                                     // 0x0070c784    83fe2a
                         {disp8} jl         _jmp_addr_0x0070c796                          // 0x0070c787    7c0d
_jmp_addr_0x0070c789:    push               0x00c20688                                    // 0x0070c789    688806c200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070c78e    e81d9bfeff
                         add                esp, 0x04                                     // 0x0070c793    83c404
_jmp_addr_0x0070c796:    test               esi, esi                                      // 0x0070c796    85f6
                         {disp8} jle        _jmp_addr_0x0070c79f                          // 0x0070c798    7e05
                         cmp                esi, 0x2a                                     // 0x0070c79a    83fe2a
                         {disp8} jl         _jmp_addr_0x0070c7b4                          // 0x0070c79d    7c15
_jmp_addr_0x0070c79f:    {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070c79f    8b0d105cd900
                         push               0x6                                           // 0x0070c7a5    6a06
                         push               0x0                                           // 0x0070c7a7    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070c7a9    e8f2a3feff
                         pop                edi                                           // 0x0070c7ae    5f
                         pop                esi                                           // 0x0070c7af    5e
                         add                esp, 0x08                                     // 0x0070c7b0    83c408
                         ret                                                              // 0x0070c7b3    c3
_jmp_addr_0x0070c7b4:    {disp8} fld        dword ptr [esp + 0x08]                        // 0x0070c7b4    d9442408
                         call               _jmp_addr_0x007a1400                          // 0x0070c7b8    e8434c0900
                         push               eax                                           // 0x0070c7bd    50
                         call               _jmp_addr_0x006eb9a0                          // 0x0070c7be    e8ddf1fdff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070c7c3    8b0d5c19d000
                         add                esp, 0x04                                     // 0x0070c7c9    83c404
                         push               eax                                           // 0x0070c7cc    50
                         call               ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z          // 0x0070c7cd    e8de41e4ff
                         test               eax, eax                                      // 0x0070c7d2    85c0
                         {disp8} je         _jmp_addr_0x0070c7e0                          // 0x0070c7d4    740a
                         push               esi                                           // 0x0070c7d6    56
                         mov.s              ecx, eax                                      // 0x0070c7d7    8bc8
                         call               _jmp_addr_0x0064c260                          // 0x0070c7d9    e882faf3ff
                         mov.s              edi, eax                                      // 0x0070c7de    8bf8
_jmp_addr_0x0070c7e0:    {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070c7e0    8b0d105cd900
                         push               0x6                                           // 0x0070c7e6    6a06
                         push               edi                                           // 0x0070c7e8    57
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070c7e9    e8b2a3feff
                         pop                edi                                           // 0x0070c7ee    5f
                         pop                esi                                           // 0x0070c7ef    5e
                         add                esp, 0x08                                     // 0x0070c7f0    83c408
                         ret                                                              // 0x0070c7f3    c3
                         nop                                                              // 0x0070c7f4    90
                         nop                                                              // 0x0070c7f5    90
                         nop                                                              // 0x0070c7f6    90
                         nop                                                              // 0x0070c7f7    90
                         nop                                                              // 0x0070c7f8    90
                         nop                                                              // 0x0070c7f9    90
                         nop                                                              // 0x0070c7fa    90
                         nop                                                              // 0x0070c7fb    90
                         nop                                                              // 0x0070c7fc    90
                         nop                                                              // 0x0070c7fd    90
                         nop                                                              // 0x0070c7fe    90
                         nop                                                              // 0x0070c7ff    90
                         push               ecx                                           // 0x0070c800    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070c801    8b0d105cd900
                         push               esi                                           // 0x0070c807    56
                         push               edi                                           // 0x0070c808    57
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x0070c809    8d442408
                         push               eax                                           // 0x0070c80d    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0070c80e    e8ada3feff
                         push               eax                                           // 0x0070c813    50
                         call               _jmp_addr_0x0070d220                          // 0x0070c814    e8070a0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070c819    8b0d105cd900
                         add                esp, 0x04                                     // 0x0070c81f    83c404
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x0070c822    8d542408
                         push               edx                                           // 0x0070c826    52
                         mov.s              edi, eax                                      // 0x0070c827    8bf8
                         call               _jmp_addr_0x006f6bc0                          // 0x0070c829    e892a3feff
                         push               eax                                           // 0x0070c82e    50
                         call               _jmp_addr_0x0070d220                          // 0x0070c82f    e8ec090000
                         mov.s              esi, eax                                      // 0x0070c834    8bf0
                         add                esp, 0x04                                     // 0x0070c836    83c404
                         test               esi, esi                                      // 0x0070c839    85f6
                         {disp8} je         _jmp_addr_0x0070c8ad                          // 0x0070c83b    7470
                         mov                eax, dword ptr [esi]                          // 0x0070c83d    8b06
                         mov.s              ecx, esi                                      // 0x0070c83f    8bce
                         call               dword ptr [eax + 0x400]                       // 0x0070c841    ff9000040000
                         test               eax, eax                                      // 0x0070c847    85c0
                         {disp8} je         _jmp_addr_0x0070c875                          // 0x0070c849    742a
                         test               edi, edi                                      // 0x0070c84b    85ff
                         {disp8} je         _jmp_addr_0x0070c86e                          // 0x0070c84d    741f
                         {disp32} mov       edx, dword ptr [esi + 0x000000a0]             // 0x0070c84f    8b96a0000000
                         xor.s              ecx, ecx                                      // 0x0070c855    33c9
                         cmp.s              edx, edi                                      // 0x0070c857    3bd7
                         sete               cl                                            // 0x0070c859    0f94c1
                         push               0x6                                           // 0x0070c85c    6a06
                         push               ecx                                           // 0x0070c85e    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070c85f    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070c865    e836a3feff
                         pop                edi                                           // 0x0070c86a    5f
                         pop                esi                                           // 0x0070c86b    5e
                         pop                ecx                                           // 0x0070c86c    59
                         ret                                                              // 0x0070c86d    c3
_jmp_addr_0x0070c86e:    push               0x00c206d0                                    // 0x0070c86e    68d006c200
                         {disp8} jmp        _jmp_addr_0x0070c8b2                          // 0x0070c873    eb3d
_jmp_addr_0x0070c875:    mov                edx, dword ptr [esi]                          // 0x0070c875    8b16
                         mov.s              ecx, esi                                      // 0x0070c877    8bce
                         call               dword ptr [edx + 0x400]                       // 0x0070c879    ff9200040000
                         test               eax, eax                                      // 0x0070c87f    85c0
                         {disp8} jne        _jmp_addr_0x0070c890                          // 0x0070c881    750d
                         push               0x00c206d0                                    // 0x0070c883    68d006c200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070c888    e8239afeff
                         add                esp, 0x04                                     // 0x0070c88d    83c404
_jmp_addr_0x0070c890:    mov                eax, dword ptr [esi]                          // 0x0070c890    8b06
                         mov.s              ecx, esi                                      // 0x0070c892    8bce
                         call               dword ptr [eax + 0x400]                       // 0x0070c894    ff9000040000
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070c89a    8b0d105cd900
                         push               0x6                                           // 0x0070c8a0    6a06
                         push               0x0                                           // 0x0070c8a2    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070c8a4    e8f7a2feff
                         pop                edi                                           // 0x0070c8a9    5f
                         pop                esi                                           // 0x0070c8aa    5e
                         pop                ecx                                           // 0x0070c8ab    59
                         ret                                                              // 0x0070c8ac    c3
_jmp_addr_0x0070c8ad:    push               0x00c206b4                                    // 0x0070c8ad    68b406c200
_jmp_addr_0x0070c8b2:    call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070c8b2    e8f999feff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070c8b7    8b0d105cd900
                         add                esp, 0x04                                     // 0x0070c8bd    83c404
                         push               0x6                                           // 0x0070c8c0    6a06
                         push               0x0                                           // 0x0070c8c2    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070c8c4    e8d7a2feff
                         pop                edi                                           // 0x0070c8c9    5f
                         pop                esi                                           // 0x0070c8ca    5e
                         pop                ecx                                           // 0x0070c8cb    59
                         ret                                                              // 0x0070c8cc    c3
                         nop                                                              // 0x0070c8cd    90
                         nop                                                              // 0x0070c8ce    90
                         nop                                                              // 0x0070c8cf    90
                         sub                esp, 0x14                                     // 0x0070c8d0    83ec14
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070c8d3    8b0d105cd900
                         push               esi                                           // 0x0070c8d9    56
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x0070c8da    8d442408
                         push               eax                                           // 0x0070c8de    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0070c8df    e8dca2feff
                         {disp32} mov       esi, dword ptr [_script_dll]                  // 0x0070c8e4    8b35105cd900
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                   // 0x0070c8ea    8d4c2404
                         push               ecx                                           // 0x0070c8ee    51
                         mov.s              ecx, esi                                      // 0x0070c8ef    8bce
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x0070c8f1    8944240c
                         call               _jmp_addr_0x006f6bc0                          // 0x0070c8f5    e8c6a2feff
                         mov.s              edx, eax                                      // 0x0070c8fa    8bd0
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x0070c8fc    89442404
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x0070c900    8d442404
                         push               eax                                           // 0x0070c904    50
                         mov.s              ecx, esi                                      // 0x0070c905    8bce
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x0070c907    89542418
                         call               _jmp_addr_0x006f6bc0                          // 0x0070c90b    e8b0a2feff
                         mov.s              ecx, eax                                      // 0x0070c910    8bc8
                         {disp8} lea        edx, dword ptr [esp + 0x04]                   // 0x0070c912    8d542404
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x0070c916    894c2410
                         push               edx                                           // 0x0070c91a    52
                         mov.s              ecx, esi                                      // 0x0070c91b    8bce
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x0070c91d    89442408
                         call               _jmp_addr_0x006f6bc0                          // 0x0070c921    e89aa2feff
                         {disp32} mov       esi, dword ptr [data_bytes + 0x52437c]        // 0x0070c926    8b357ca3ee00
                         test               esi, esi                                      // 0x0070c92c    85f6
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x0070c92e    89442404
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x0070c932    8944240c
                         {disp8} je         _jmp_addr_0x0070c96a                          // 0x0070c936    7432
_jmp_addr_0x0070c938:    {disp8} mov        eax, dword ptr [esi + 0x28]                   // 0x0070c938    8b4628
                         test               eax, eax                                      // 0x0070c93b    85c0
                         {disp8} jne        _jmp_addr_0x0070c960                          // 0x0070c93d    7521
                         {disp8} lea        ecx, dword ptr [esi + 0x08]                   // 0x0070c93f    8d4e08
                         push               ecx                                           // 0x0070c942    51
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x0070c943    8d542410
                         push               edx                                           // 0x0070c947    52
                         call               _jmp_addr_0x0074cde0                          // 0x0070c948    e893040400
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0070c94d    d9442410
                         {disp8} fadd       dword ptr [esi + 0x18]                        // 0x0070c951    d84618
                         add                esp, 0x08                                     // 0x0070c954    83c408
                         fcompp                                                           // 0x0070c957    ded9
                         fnstsw             ax                                            // 0x0070c959    dfe0
                         test               ah, 0x41                                      // 0x0070c95b    f6c441
                         {disp8} je         _jmp_addr_0x0070c97e                          // 0x0070c95e    741e
_jmp_addr_0x0070c960:    {disp32} mov       esi, dword ptr [esi + 0x000003bc]             // 0x0070c960    8bb6bc030000
                         test               esi, esi                                      // 0x0070c966    85f6
                         {disp8} jne        _jmp_addr_0x0070c938                          // 0x0070c968    75ce
_jmp_addr_0x0070c96a:    {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070c96a    8b0d105cd900
                         push               0x6                                           // 0x0070c970    6a06
                         push               0x0                                           // 0x0070c972    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070c974    e827a2feff
                         pop                esi                                           // 0x0070c979    5e
                         add                esp, 0x14                                     // 0x0070c97a    83c414
                         ret                                                              // 0x0070c97d    c3
_jmp_addr_0x0070c97e:    {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070c97e    8b0d105cd900
                         push               0x6                                           // 0x0070c984    6a06
                         push               0x1                                           // 0x0070c986    6a01
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070c988    e813a2feff
                         pop                esi                                           // 0x0070c98d    5e
                         add                esp, 0x14                                     // 0x0070c98e    83c414
                         ret                                                              // 0x0070c991    c3
                         nop                                                              // 0x0070c992    90
                         nop                                                              // 0x0070c993    90
                         nop                                                              // 0x0070c994    90
                         nop                                                              // 0x0070c995    90
                         nop                                                              // 0x0070c996    90
                         nop                                                              // 0x0070c997    90
                         nop                                                              // 0x0070c998    90
                         nop                                                              // 0x0070c999    90
                         nop                                                              // 0x0070c99a    90
                         nop                                                              // 0x0070c99b    90
                         nop                                                              // 0x0070c99c    90
                         nop                                                              // 0x0070c99d    90
                         nop                                                              // 0x0070c99e    90
                         nop                                                              // 0x0070c99f    90
                         sub                esp, 0x08                                     // 0x0070c9a0    83ec08
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070c9a3    8b0d105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x00]                   // 0x0070c9a9    8d442400
                         push               eax                                           // 0x0070c9ad    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0070c9ae    e80da2feff
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x0070c9b3    89442400
                         {disp8} fld        dword ptr [esp + 0x00]                        // 0x0070c9b7    d9442400
                         call               _jmp_addr_0x007a1400                          // 0x0070c9bb    e8404a0900
                         push               eax                                           // 0x0070c9c0    50
                         call               _jmp_addr_0x006eb9a0                          // 0x0070c9c1    e8daeffdff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070c9c6    8b0d5c19d000
                         add                esp, 0x04                                     // 0x0070c9cc    83c404
                         push               eax                                           // 0x0070c9cf    50
                         call               ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z          // 0x0070c9d0    e8db3fe4ff
                         test               eax, eax                                      // 0x0070c9d5    85c0
                         {disp8} je         _jmp_addr_0x0070ca2a                          // 0x0070c9d7    7451
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070c9d9    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x00205a40]             // 0x0070c9df    8b91405a2000
                         {disp32} mov       ecx, dword ptr [eax + 0x000000ec]             // 0x0070c9e5    8b88ec000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x33ba38]        // 0x0070c9eb    a1381ad000
                         sub.s              edx, ecx                                      // 0x0070c9f0    2bd1
                         {disp8} mov        dword ptr [esp + 0x00], edx                   // 0x0070c9f2    89542400
                         {disp8} fild       dword ptr [esp + 0x00]                        // 0x0070c9f6    db442400
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x0070c9fa    89442400
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x0070c9fe    c744240400000000
                         {disp8} fimul      dword ptr [esp + 0x00]                        // 0x0070ca06    da4c2400
                         push               0x2                                           // 0x0070ca0a    6a02
                         {disp32} fmul      dword ptr [_rdata_float0p001]                 // 0x0070ca0c    d80db0a38a00
                         {disp8} fstp       dword ptr [esp + 0x04]                        // 0x0070ca12    d95c2404
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x0070ca16    8b4c2404
                         push               ecx                                           // 0x0070ca1a    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070ca1b    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070ca21    e87aa1feff
                         add                esp, 0x08                                     // 0x0070ca26    83c408
                         ret                                                              // 0x0070ca29    c3
_jmp_addr_0x0070ca2a:    {disp32} mov       edx, dword ptr [rdata_bytes + 0x99afc]        // 0x0070ca2a    8b15fc2a9400
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070ca30    8b0d105cd900
                         push               0x2                                           // 0x0070ca36    6a02
                         mov.s              eax, edx                                      // 0x0070ca38    8bc2
                         push               eax                                           // 0x0070ca3a    50
                         {disp8} mov        dword ptr [esp + 0x08], edx                   // 0x0070ca3b    89542408
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070ca3f    e85ca1feff
                         add                esp, 0x08                                     // 0x0070ca44    83c408
                         ret                                                              // 0x0070ca47    c3
                         nop                                                              // 0x0070ca48    90
                         nop                                                              // 0x0070ca49    90
                         nop                                                              // 0x0070ca4a    90
                         nop                                                              // 0x0070ca4b    90
                         nop                                                              // 0x0070ca4c    90
                         nop                                                              // 0x0070ca4d    90
                         nop                                                              // 0x0070ca4e    90
                         nop                                                              // 0x0070ca4f    90
                         push               ecx                                           // 0x0070ca50    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070ca51    8b0d105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x00]                   // 0x0070ca57    8d442400
                         push               eax                                           // 0x0070ca5b    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0070ca5c    e85fa1feff
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x0070ca61    89442400
                         {disp8} fld        dword ptr [esp + 0x00]                        // 0x0070ca65    d9442400
                         call               _jmp_addr_0x007a1400                          // 0x0070ca69    e892490900
                         push               eax                                           // 0x0070ca6e    50
                         call               _jmp_addr_0x006eb9a0                          // 0x0070ca6f    e82ceffdff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070ca74    8b0d5c19d000
                         add                esp, 0x04                                     // 0x0070ca7a    83c404
                         push               eax                                           // 0x0070ca7d    50
                         call               ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z          // 0x0070ca7e    e82d3fe4ff
                         test               eax, eax                                      // 0x0070ca83    85c0
                         push               0x1                                           // 0x0070ca85    6a01
                         {disp8} je         _jmp_addr_0x0070ca9d                          // 0x0070ca87    7414
                         {disp32} mov       ecx, dword ptr [eax + 0x000000e8]             // 0x0070ca89    8b88e8000000
                         push               ecx                                           // 0x0070ca8f    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070ca90    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070ca96    e805a1feff
                         pop                ecx                                           // 0x0070ca9b    59
                         ret                                                              // 0x0070ca9c    c3
_jmp_addr_0x0070ca9d:    {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070ca9d    8b0d105cd900
                         push               0x0                                           // 0x0070caa3    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070caa5    e8f6a0feff
                         pop                ecx                                           // 0x0070caaa    59
                         ret                                                              // 0x0070caab    c3
                         nop                                                              // 0x0070caac    90
                         nop                                                              // 0x0070caad    90
                         nop                                                              // 0x0070caae    90
                         nop                                                              // 0x0070caaf    90
                         sub                esp, 0x10                                     // 0x0070cab0    83ec10
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070cab3    8b0d105cd900
                         push               esi                                           // 0x0070cab9    56
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x0070caba    8d442404
                         push               eax                                           // 0x0070cabe    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0070cabf    e8fca0feff
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x0070cac4    89442404
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x0070cac8    d9442404
                         call               _jmp_addr_0x007a1400                          // 0x0070cacc    e82f490900
                         push               eax                                           // 0x0070cad1    50
                         call               _jmp_addr_0x006eb9a0                          // 0x0070cad2    e8c9eefdff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070cad7    8b0d5c19d000
                         add                esp, 0x04                                     // 0x0070cadd    83c404
                         push               eax                                           // 0x0070cae0    50
                         call               ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z          // 0x0070cae1    e8ca3ee4ff
                         test               eax, eax                                      // 0x0070cae6    85c0
                         {disp8} je         _jmp_addr_0x0070cb20                          // 0x0070cae8    7436
                         {disp32} mov       ecx, dword ptr [eax + 0x000000e4]             // 0x0070caea    8b88e4000000
                         {disp32} lea       esi, dword ptr [eax + 0x000000dc]             // 0x0070caf0    8db0dc000000
                         {disp8} mov        dword ptr [esp + 0x04], ecx                   // 0x0070caf6    894c2404
                         mov.s              ecx, esi                                      // 0x0070cafa    8bce
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x0070cafc    e88f650f00
                         {disp8} fadd       dword ptr [esp + 0x04]                        // 0x0070cb01    d8442404
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x0070cb05    d95c240c
                         fild               dword ptr [esi]                               // 0x0070cb09    db06
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x0070cb0b    d80da4a38a00
                         {disp8} fild       dword ptr [esi + 0x04]                        // 0x0070cb11    db4604
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x0070cb14    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0070cb1a    d95c2410
                         {disp8} jmp        _jmp_addr_0x0070cb36                          // 0x0070cb1e    eb16
_jmp_addr_0x0070cb20:    {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x0070cb20    d90598a38a00
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x0070cb26    c744241000000000
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000            // 0x0070cb2e    c744240c00000000
_jmp_addr_0x0070cb36:    {disp32} mov       esi, dword ptr [_script_dll]                  // 0x0070cb36    8b35105cd900
                         {disp8} fstp       dword ptr [esp + 0x04]                        // 0x0070cb3c    d95c2404
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x0070cb40    8b542404
                         push               0x3                                           // 0x0070cb44    6a03
                         push               edx                                           // 0x0070cb46    52
                         mov.s              ecx, esi                                      // 0x0070cb47    8bce
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070cb49    e852a0feff
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x0070cb4e    8b44240c
                         mov.s              ecx, eax                                      // 0x0070cb52    8bc8
                         push               0x3                                           // 0x0070cb54    6a03
                         push               ecx                                           // 0x0070cb56    51
                         mov.s              ecx, esi                                      // 0x0070cb57    8bce
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x0070cb59    8944240c
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070cb5d    e83ea0feff
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x0070cb62    8b542410
                         push               0x3                                           // 0x0070cb66    6a03
                         mov.s              eax, edx                                      // 0x0070cb68    8bc2
                         push               eax                                           // 0x0070cb6a    50
                         mov.s              ecx, esi                                      // 0x0070cb6b    8bce
                         {disp8} mov        dword ptr [esp + 0x0c], edx                   // 0x0070cb6d    8954240c
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070cb71    e82aa0feff
                         pop                esi                                           // 0x0070cb76    5e
                         add                esp, 0x10                                     // 0x0070cb77    83c410
                         ret                                                              // 0x0070cb7a    c3
                         nop                                                              // 0x0070cb7b    90
                         nop                                                              // 0x0070cb7c    90
                         nop                                                              // 0x0070cb7d    90
                         nop                                                              // 0x0070cb7e    90
                         nop                                                              // 0x0070cb7f    90
                         push               ecx                                           // 0x0070cb80    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070cb81    8b0d105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x00]                   // 0x0070cb87    8d442400
                         push               eax                                           // 0x0070cb8b    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0070cb8c    e82fa0feff
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x0070cb91    89442400
                         {disp8} fld        dword ptr [esp + 0x00]                        // 0x0070cb95    d9442400
                         call               _jmp_addr_0x007a1400                          // 0x0070cb99    e862480900
                         push               eax                                           // 0x0070cb9e    50
                         call               _jmp_addr_0x006eb9a0                          // 0x0070cb9f    e8fcedfdff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070cba4    8b0d5c19d000
                         add                esp, 0x04                                     // 0x0070cbaa    83c404
                         push               eax                                           // 0x0070cbad    50
                         call               ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z          // 0x0070cbae    e8fd3de4ff
                         mov.s              ecx, eax                                      // 0x0070cbb3    8bc8
                         call               _jmp_addr_0x0064bb90                          // 0x0070cbb5    e8d6eff3ff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070cbba    8b0d105cd900
                         push               0x6                                           // 0x0070cbc0    6a06
                         push               eax                                           // 0x0070cbc2    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070cbc3    e8d89ffeff
                         pop                ecx                                           // 0x0070cbc8    59
                         ret                                                              // 0x0070cbc9    c3
                         nop                                                              // 0x0070cbca    90
                         nop                                                              // 0x0070cbcb    90
                         nop                                                              // 0x0070cbcc    90
                         nop                                                              // 0x0070cbcd    90
                         nop                                                              // 0x0070cbce    90
                         nop                                                              // 0x0070cbcf    90
                         push               ecx                                           // 0x0070cbd0    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070cbd1    8b0d105cd900
                         push               esi                                           // 0x0070cbd7    56
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x0070cbd8    8d442404
                         push               eax                                           // 0x0070cbdc    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0070cbdd    e8de9ffeff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070cbe2    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x04]                   // 0x0070cbe8    8d542404
                         push               edx                                           // 0x0070cbec    52
                         mov.s              esi, eax                                      // 0x0070cbed    8bf0
                         call               _jmp_addr_0x006f6bc0                          // 0x0070cbef    e8cc9ffeff
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x0070cbf4    89442404
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x0070cbf8    d9442404
                         call               _jmp_addr_0x007a1400                          // 0x0070cbfc    e8ff470900
                         push               eax                                           // 0x0070cc01    50
                         call               _jmp_addr_0x006eb9a0                          // 0x0070cc02    e899edfdff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070cc07    8b0d5c19d000
                         add                esp, 0x04                                     // 0x0070cc0d    83c404
                         push               eax                                           // 0x0070cc10    50
                         call               ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z          // 0x0070cc11    e89a3de4ff
                         push               esi                                           // 0x0070cc16    56
                         mov.s              ecx, eax                                      // 0x0070cc17    8bc8
                         call               _jmp_addr_0x0064bbf0                          // 0x0070cc19    e8d2eff3ff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070cc1e    8b0d105cd900
                         push               0x6                                           // 0x0070cc24    6a06
                         push               eax                                           // 0x0070cc26    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070cc27    e8749ffeff
                         pop                esi                                           // 0x0070cc2c    5e
                         pop                ecx                                           // 0x0070cc2d    59
                         ret                                                              // 0x0070cc2e    c3
                         nop                                                              // 0x0070cc2f    90
                         sub                esp, 0x10                                     // 0x0070cc30    83ec10
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070cc33    8b0d105cd900
                         push               esi                                           // 0x0070cc39    56
                         push               edi                                           // 0x0070cc3a    57
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x0070cc3b    8d442408
                         push               eax                                           // 0x0070cc3f    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0070cc40    e87b9ffeff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070cc45    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x0070cc4b    8d54240c
                         push               edx                                           // 0x0070cc4f    52
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x0070cc50    8944240c
                         call               _jmp_addr_0x006f6bc0                          // 0x0070cc54    e8679ffeff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070cc59    8b0d105cd900
                         mov.s              edi, eax                                      // 0x0070cc5f    8bf8
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x0070cc61    8d44240c
                         push               eax                                           // 0x0070cc65    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0070cc66    e8559ffeff
                         push               eax                                           // 0x0070cc6b    50
                         call               _jmp_addr_0x0070d220                          // 0x0070cc6c    e8af050000
                         mov.s              esi, eax                                      // 0x0070cc71    8bf0
                         add                esp, 0x04                                     // 0x0070cc73    83c404
                         test               esi, esi                                      // 0x0070cc76    85f6
                         {disp8} jne        _jmp_addr_0x0070cc8d                          // 0x0070cc78    7513
                         push               0x00c0cd88                                    // 0x0070cc7a    6888cdc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070cc7f    e82c96feff
                         add                esp, 0x04                                     // 0x0070cc84    83c404
                         pop                edi                                           // 0x0070cc87    5f
                         pop                esi                                           // 0x0070cc88    5e
                         add                esp, 0x10                                     // 0x0070cc89    83c410
                         ret                                                              // 0x0070cc8c    c3
_jmp_addr_0x0070cc8d:    mov                edx, dword ptr [esi]                          // 0x0070cc8d    8b16
                         mov.s              ecx, esi                                      // 0x0070cc8f    8bce
                         call               dword ptr [edx + 0x1f4]                       // 0x0070cc91    ff92f4010000
                         test               eax, eax                                      // 0x0070cc97    85c0
                         {disp8} jne        _jmp_addr_0x0070cca8                          // 0x0070cc99    750d
                         push               0x00c206ec                                    // 0x0070cc9b    68ec06c200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070cca0    e80b96feff
                         add                esp, 0x04                                     // 0x0070cca5    83c404
_jmp_addr_0x0070cca8:    mov                eax, dword ptr [esi]                          // 0x0070cca8    8b06
                         mov.s              ecx, esi                                      // 0x0070ccaa    8bce
                         call               dword ptr [eax + 0x1f4]                       // 0x0070ccac    ff90f4010000
                         mov                edx, dword ptr [esi]                          // 0x0070ccb2    8b16
                         mov.s              ecx, esi                                      // 0x0070ccb4    8bce
                         call               dword ptr [edx + 0x1f4]                       // 0x0070ccb6    ff92f4010000
                         test               eax, eax                                      // 0x0070ccbc    85c0
                         {disp8} je         _jmp_addr_0x0070cd35                          // 0x0070ccbe    7475
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x0070ccc0    d9442408
                         {disp32} mov       dword ptr [esi + 0x000000d4], edi             // 0x0070ccc4    89bed4000000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0070ccca    d81d98a38a00
                         fnstsw             ax                                            // 0x0070ccd0    dfe0
                         test               ah, 0x41                                      // 0x0070ccd2    f6c441
                         {disp8} jne        _jmp_addr_0x0070cd15                          // 0x0070ccd5    753e
                         xor.s              edx, edx                                      // 0x0070ccd7    33d2
                         mov                eax, 0x000003e8                               // 0x0070ccd9    b8e8030000
                         div                dword ptr [data_bytes + 0x33ba38]             // 0x0070ccde    f735381ad000
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x0070cce4    c744241400000000
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0070ccec    89442410
                         {disp8} fild       qword ptr [esp + 0x10]                        // 0x0070ccf0    df6c2410
                         {disp8} fmul       dword ptr [esp + 0x08]                        // 0x0070ccf4    d84c2408
                         call               _jmp_addr_0x007a1400                          // 0x0070ccf8    e803470900
                         test               eax, eax                                      // 0x0070ccfd    85c0
                         {disp32} mov       dword ptr [esi + 0x000000c8], eax             // 0x0070ccff    8986c8000000
                         {disp8} jne        _jmp_addr_0x0070cd35                          // 0x0070cd05    752e
                         push               eax                                           // 0x0070cd07    50
                         mov.s              ecx, esi                                      // 0x0070cd08    8bce
                         call               _jmp_addr_0x00723030                          // 0x0070cd0a    e821630100
                         pop                edi                                           // 0x0070cd0f    5f
                         pop                esi                                           // 0x0070cd10    5e
                         add                esp, 0x10                                     // 0x0070cd11    83c410
                         ret                                                              // 0x0070cd14    c3
_jmp_addr_0x0070cd15:    {disp8} mov        eax, dword ptr [esi + 0x28]                   // 0x0070cd15    8b4628
                         {disp32} fld       dword ptr [eax + 0x000001ac]                  // 0x0070cd18    d980ac010000
                         call               _jmp_addr_0x007a1400                          // 0x0070cd1e    e8dd460900
                         test               eax, eax                                      // 0x0070cd23    85c0
                         {disp32} mov       dword ptr [esi + 0x000000c8], eax             // 0x0070cd25    8986c8000000
                         {disp8} jne        _jmp_addr_0x0070cd35                          // 0x0070cd2b    7508
                         push               eax                                           // 0x0070cd2d    50
                         mov.s              ecx, esi                                      // 0x0070cd2e    8bce
                         call               _jmp_addr_0x00723030                          // 0x0070cd30    e8fb620100
_jmp_addr_0x0070cd35:    pop                edi                                           // 0x0070cd35    5f
                         pop                esi                                           // 0x0070cd36    5e
                         add                esp, 0x10                                     // 0x0070cd37    83c410
                         ret                                                              // 0x0070cd3a    c3
                         nop                                                              // 0x0070cd3b    90
                         nop                                                              // 0x0070cd3c    90
                         nop                                                              // 0x0070cd3d    90
                         nop                                                              // 0x0070cd3e    90
                         nop                                                              // 0x0070cd3f    90
                         push               ecx                                           // 0x0070cd40    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070cd41    8b0d105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x00]                   // 0x0070cd47    8d442400
                         push               eax                                           // 0x0070cd4b    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0070cd4c    e86f9efeff
                         {disp32} mov       ecx, dword ptr [eax * 0x4 + _MagicInfoTable]  // 0x0070cd51    8b0c85107dd300
                         call               _jmp_addr_0x005fb800                          // 0x0070cd58    e8a3eaeeff
                         {disp8} fstp       dword ptr [esp + 0x00]                        // 0x0070cd5d    d95c2400
                         {disp8} mov        ecx, dword ptr [esp + 0x00]                   // 0x0070cd61    8b4c2400
                         push               0x2                                           // 0x0070cd65    6a02
                         push               ecx                                           // 0x0070cd67    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070cd68    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070cd6e    e82d9efeff
                         pop                ecx                                           // 0x0070cd73    59
                         ret                                                              // 0x0070cd74    c3
                         nop                                                              // 0x0070cd75    90
                         nop                                                              // 0x0070cd76    90
                         nop                                                              // 0x0070cd77    90
                         nop                                                              // 0x0070cd78    90
                         nop                                                              // 0x0070cd79    90
                         nop                                                              // 0x0070cd7a    90
                         nop                                                              // 0x0070cd7b    90
                         nop                                                              // 0x0070cd7c    90
                         nop                                                              // 0x0070cd7d    90
                         nop                                                              // 0x0070cd7e    90
                         nop                                                              // 0x0070cd7f    90
                         sub                esp, 0x08                                     // 0x0070cd80    83ec08
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070cd83    8b0d5c19d000
                         push               esi                                           // 0x0070cd89    56
                         call               _jmp_addr_0x00555880                          // 0x0070cd8a    e8f18ae4ff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070cd8f    8b0d105cd900
                         mov.s              esi, eax                                      // 0x0070cd95    8bf0
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x0070cd97    8d442408
                         push               eax                                           // 0x0070cd9b    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0070cd9c    e81f9efeff
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x0070cda1    89442404
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x0070cda5    d9442404
                         call               _jmp_addr_0x007a1400                          // 0x0070cda9    e852460900
                         push               eax                                           // 0x0070cdae    50
                         call               _jmp_addr_0x006eb9a0                          // 0x0070cdaf    e8ecebfdff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070cdb4    8b0d5c19d000
                         add                esp, 0x04                                     // 0x0070cdba    83c404
                         push               eax                                           // 0x0070cdbd    50
                         call               ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z          // 0x0070cdbe    e8ed3be4ff
                         push               esi                                           // 0x0070cdc3    56
                         mov.s              ecx, eax                                      // 0x0070cdc4    8bc8
                         call               _jmp_addr_0x0064bc60                          // 0x0070cdc6    e895eef3ff
                         pop                esi                                           // 0x0070cdcb    5e
                         add                esp, 0x08                                     // 0x0070cdcc    83c408
                         ret                                                              // 0x0070cdcf    c3
_globl_ct_0x0070cdd0:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x0070cdd0    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x0070cdd6    b001
                         test               al, cl                                        // 0x0070cdd8    84c8
                         {disp8} jne        _jmp_addr_0x0070cde4                          // 0x0070cdda    7508
                         or.s               cl, al                                        // 0x0070cddc    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x0070cdde    880d34c9fa00
_jmp_addr_0x0070cde4:    {disp32} jmp       _jmp_addr_0x0070cdf0                          // 0x0070cde4    e907000000
                         nop                                                              // 0x0070cde9    90
                         nop                                                              // 0x0070cdea    90
                         nop                                                              // 0x0070cdeb    90
                         nop                                                              // 0x0070cdec    90
                         nop                                                              // 0x0070cded    90
                         nop                                                              // 0x0070cdee    90
                         nop                                                              // 0x0070cdef    90
_jmp_addr_0x0070cdf0:    push               0x00407870                                    // 0x0070cdf0    6870784000
                         call               _atexit                                       // 0x0070cdf5    e897890b00
                         pop                ecx                                           // 0x0070cdfa    59
                         ret                                                              // 0x0070cdfb    c3
                         nop                                                              // 0x0070cdfc    90
                         nop                                                              // 0x0070cdfd    90
                         nop                                                              // 0x0070cdfe    90
                         nop                                                              // 0x0070cdff    90
_globl_ct_0x0070ce00:    {disp32} jmp       _jmp_addr_0x0070ce10                          // 0x0070ce00    e90b000000
                         nop                                                              // 0x0070ce05    90
                         nop                                                              // 0x0070ce06    90
                         nop                                                              // 0x0070ce07    90
                         nop                                                              // 0x0070ce08    90
                         nop                                                              // 0x0070ce09    90
                         nop                                                              // 0x0070ce0a    90
                         nop                                                              // 0x0070ce0b    90
                         nop                                                              // 0x0070ce0c    90
                         nop                                                              // 0x0070ce0d    90
                         nop                                                              // 0x0070ce0e    90
                         nop                                                              // 0x0070ce0f    90
_jmp_addr_0x0070ce10:    {disp32} mov       dword ptr [data_bytes + 0x3d2ffc], 0xffffffff // 0x0070ce10    c705fc8fd900ffffffff
                         ret                                                              // 0x0070ce1a    c3
                         nop                                                              // 0x0070ce1b    90
                         nop                                                              // 0x0070ce1c    90
                         nop                                                              // 0x0070ce1d    90
                         nop                                                              // 0x0070ce1e    90
                         nop                                                              // 0x0070ce1f    90
_globl_ct_0x0070ce20:    {disp32} jmp       _jmp_addr_0x0070ce30                          // 0x0070ce20    e90b000000
                         nop                                                              // 0x0070ce25    90
                         nop                                                              // 0x0070ce26    90
                         nop                                                              // 0x0070ce27    90
                         nop                                                              // 0x0070ce28    90
                         nop                                                              // 0x0070ce29    90
                         nop                                                              // 0x0070ce2a    90
                         nop                                                              // 0x0070ce2b    90
                         nop                                                              // 0x0070ce2c    90
                         nop                                                              // 0x0070ce2d    90
                         nop                                                              // 0x0070ce2e    90
                         nop                                                              // 0x0070ce2f    90
_jmp_addr_0x0070ce30:    {disp32} fld       dword ptr [rdata_bytes + 0x99b10]             // 0x0070ce30    d905102b9400
                         {disp32} fmul      dword ptr [rdata_bytes + 0x99b0c]             // 0x0070ce36    d80d0c2b9400
                         {disp32} fstp      dword ptr [data_bytes + 0x3d2ff8]             // 0x0070ce3c    d91df88fd900
                         ret                                                              // 0x0070ce42    c3
                         nop                                                              // 0x0070ce43    90
                         nop                                                              // 0x0070ce44    90
                         nop                                                              // 0x0070ce45    90
                         nop                                                              // 0x0070ce46    90
                         nop                                                              // 0x0070ce47    90
                         nop                                                              // 0x0070ce48    90
                         nop                                                              // 0x0070ce49    90
                         nop                                                              // 0x0070ce4a    90
                         nop                                                              // 0x0070ce4b    90
                         nop                                                              // 0x0070ce4c    90
                         nop                                                              // 0x0070ce4d    90
                         nop                                                              // 0x0070ce4e    90
                         nop                                                              // 0x0070ce4f    90
_globl_ct_0x0070ce50:    {disp32} jmp       _jmp_addr_0x0070ce60                          // 0x0070ce50    e90b000000
                         nop                                                              // 0x0070ce55    90
                         nop                                                              // 0x0070ce56    90
                         nop                                                              // 0x0070ce57    90
                         nop                                                              // 0x0070ce58    90
                         nop                                                              // 0x0070ce59    90
                         nop                                                              // 0x0070ce5a    90
                         nop                                                              // 0x0070ce5b    90
                         nop                                                              // 0x0070ce5c    90
                         nop                                                              // 0x0070ce5d    90
                         nop                                                              // 0x0070ce5e    90
                         nop                                                              // 0x0070ce5f    90
_jmp_addr_0x0070ce60:    mov                eax, 0x00d967f8                               // 0x0070ce60    b8f867d900
                         mov                ecx, 0x00000200                               // 0x0070ce65    b900020000
                         xor.s              edx, edx                                      // 0x0070ce6a    33d2
_jmp_addr_0x0070ce6c:    mov                dword ptr [eax], 0x008ea8d0                   // 0x0070ce6c    c700d0a88e00
                         {disp8} mov        dword ptr [eax + 0x08], edx                   // 0x0070ce72    895008
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x0070ce75    895004
                         mov                dword ptr [eax], 0x00942b18                   // 0x0070ce78    c700182b9400
                         add                eax, 0x14                                     // 0x0070ce7e    83c014
                         dec                ecx                                           // 0x0070ce81    49
                         {disp8} jne        _jmp_addr_0x0070ce6c                          // 0x0070ce82    75e8
                         ret                                                              // 0x0070ce84    c3
                         nop                                                              // 0x0070ce85    90
                         nop                                                              // 0x0070ce86    90
                         nop                                                              // 0x0070ce87    90
                         nop                                                              // 0x0070ce88    90
                         nop                                                              // 0x0070ce89    90
                         nop                                                              // 0x0070ce8a    90
                         nop                                                              // 0x0070ce8b    90
                         nop                                                              // 0x0070ce8c    90
                         nop                                                              // 0x0070ce8d    90
                         nop                                                              // 0x0070ce8e    90
                         nop                                                              // 0x0070ce8f    90
                         {disp8} mov        al, byte ptr [ecx + 0x10]                     // 0x0070ce90    8a4110
                         test               al, al                                        // 0x0070ce93    84c0
                         {disp8} jne        _jmp_addr_0x0070ceab                          // 0x0070ce95    7514
                         {disp8} mov        eax, dword ptr [ecx + 0x04]                   // 0x0070ce97    8b4104
                         test               eax, eax                                      // 0x0070ce9a    85c0
                         {disp8} jne        _jmp_addr_0x0070ceab                          // 0x0070ce9c    750d
                         {disp8} mov        eax, dword ptr [ecx + 0x08]                   // 0x0070ce9e    8b4108
                         test               eax, eax                                      // 0x0070cea1    85c0
                         {disp8} jne        _jmp_addr_0x0070ceab                          // 0x0070cea3    7506
                         mov                eax, 0x00000001                               // 0x0070cea5    b801000000
                         ret                                                              // 0x0070ceaa    c3
_jmp_addr_0x0070ceab:    xor.s              eax, eax                                      // 0x0070ceab    33c0
                         ret                                                              // 0x0070cead    c3
                         nop                                                              // 0x0070ceae    90
                         nop                                                              // 0x0070ceaf    90
_jmp_addr_0x0070ceb0:    push               esi                                           // 0x0070ceb0    56
                         mov                esi, 0x00d967f8                               // 0x0070ceb1    bef867d900
_jmp_addr_0x0070ceb6:    mov.s              ecx, esi                                      // 0x0070ceb6    8bce
                         call               _jmp_addr_0x0070d800                          // 0x0070ceb8    e843090000
                         add                esi, 0x14                                     // 0x0070cebd    83c614
                         cmp                esi, 0x00d98ff8                               // 0x0070cec0    81fef88fd900
                         .byte              0x72, 0xee// {disp8} jb _jmp_addr_0x0070ceb6  // 0x0070cec6    72ee
                         pop                esi                                           // 0x0070cec8    5e
                         ret                                                              // 0x0070cec9    c3
                         nop                                                              // 0x0070ceca    90
                         nop                                                              // 0x0070cecb    90
                         nop                                                              // 0x0070cecc    90
                         nop                                                              // 0x0070cecd    90
                         nop                                                              // 0x0070cece    90
                         nop                                                              // 0x0070cecf    90
_jmp_addr_0x0070ced0:    ret                                                              // 0x0070ced0    c3
                         nop                                                              // 0x0070ced1    90
                         nop                                                              // 0x0070ced2    90
                         nop                                                              // 0x0070ced3    90
                         nop                                                              // 0x0070ced4    90
                         nop                                                              // 0x0070ced5    90
                         nop                                                              // 0x0070ced6    90
                         nop                                                              // 0x0070ced7    90
                         nop                                                              // 0x0070ced8    90
                         nop                                                              // 0x0070ced9    90
                         nop                                                              // 0x0070ceda    90
                         nop                                                              // 0x0070cedb    90
                         nop                                                              // 0x0070cedc    90
                         nop                                                              // 0x0070cedd    90
                         nop                                                              // 0x0070cede    90
                         nop                                                              // 0x0070cedf    90
_jmp_addr_0x0070cee0:    {disp32} mov       eax, dword ptr [data_bytes + 0x3cfc04]        // 0x0070cee0    a1045cd900
                         push               ebx                                           // 0x0070cee5    53
                         xor.s              edx, edx                                      // 0x0070cee6    33d2
_jmp_addr_0x0070cee8:    and                eax, 0x000001ff                               // 0x0070cee8    25ff010000
                         {disp32} mov       dword ptr [data_bytes + 0x3cfc04], eax        // 0x0070ceed    a3045cd900
                         {disp8} jne        _jmp_addr_0x0070cefe                          // 0x0070cef2    750a
                         mov                eax, 0x00000001                               // 0x0070cef4    b801000000
                         {disp32} mov       dword ptr [data_bytes + 0x3cfc04], eax        // 0x0070cef9    a3045cd900
_jmp_addr_0x0070cefe:    lea                ecx, dword ptr [eax + eax * 0x4]              // 0x0070cefe    8d0c80
                         {disp32} mov       bl, byte ptr [ecx * 0x4 + 0x00d96808]         // 0x0070cf01    8a1c8d0868d900
                         test               bl, bl                                        // 0x0070cf08    84db
                         {disp32} lea       ecx, dword ptr [ecx * 0x4 + 0x00d967f8]       // 0x0070cf0a    8d0c8df867d900
                         {disp8} jne        _jmp_addr_0x0070cf21                          // 0x0070cf11    750e
                         {disp8} mov        ebx, dword ptr [ecx + 0x04]                   // 0x0070cf13    8b5904
                         test               ebx, ebx                                      // 0x0070cf16    85db
                         {disp8} jne        _jmp_addr_0x0070cf21                          // 0x0070cf18    7507
                         {disp8} mov        ebx, dword ptr [ecx + 0x08]                   // 0x0070cf1a    8b5908
                         test               ebx, ebx                                      // 0x0070cf1d    85db
                         {disp8} je         _jmp_addr_0x0070cf3f                          // 0x0070cf1f    741e
_jmp_addr_0x0070cf21:    inc                edx                                           // 0x0070cf21    42
                         inc                eax                                           // 0x0070cf22    40
                         cmp                edx, 0x000001ff                               // 0x0070cf23    81faff010000
                         {disp32} mov       dword ptr [data_bytes + 0x3cfc04], eax        // 0x0070cf29    a3045cd900
                         .byte              0x72, 0xb8// {disp8} jb _jmp_addr_0x0070cee8  // 0x0070cf2e    72b8
                         push               0x00c20724                                    // 0x0070cf30    682407c200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070cf35    e87693feff
                         add                esp, 0x04                                     // 0x0070cf3a    83c404
                         xor.s              eax, eax                                      // 0x0070cf3d    33c0
_jmp_addr_0x0070cf3f:    pop                ebx                                           // 0x0070cf3f    5b
                         ret                                                              // 0x0070cf40    c3
                         nop                                                              // 0x0070cf41    90
                         nop                                                              // 0x0070cf42    90
                         nop                                                              // 0x0070cf43    90
                         nop                                                              // 0x0070cf44    90
                         nop                                                              // 0x0070cf45    90
                         nop                                                              // 0x0070cf46    90
                         nop                                                              // 0x0070cf47    90
                         nop                                                              // 0x0070cf48    90
                         nop                                                              // 0x0070cf49    90
                         nop                                                              // 0x0070cf4a    90
                         nop                                                              // 0x0070cf4b    90
                         nop                                                              // 0x0070cf4c    90
                         nop                                                              // 0x0070cf4d    90
                         nop                                                              // 0x0070cf4e    90
                         nop                                                              // 0x0070cf4f    90
_jmp_addr_0x0070cf50:    push               ebx                                           // 0x0070cf50    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]                   // 0x0070cf51    8b5c2408
                         push               esi                                           // 0x0070cf55    56
                         push               edi                                           // 0x0070cf56    57
                         mov                edi, 0x00000001                               // 0x0070cf57    bf01000000
                         mov                esi, 0x00d9680c                               // 0x0070cf5c    be0c68d900
_jmp_addr_0x0070cf61:    mov.s              ecx, esi                                      // 0x0070cf61    8bce
                         call               _jmp_addr_0x00436b80                          // 0x0070cf63    e8189cd2ff
                         cmp.s              eax, ebx                                      // 0x0070cf68    3bc3
                         {disp8} je         _jmp_addr_0x0070cf7e                          // 0x0070cf6a    7412
                         add                esi, 0x14                                     // 0x0070cf6c    83c614
                         inc                edi                                           // 0x0070cf6f    47
                         cmp                esi, 0x00d98ff8                               // 0x0070cf70    81fef88fd900
                         .byte              0x72, 0xe9// {disp8} jb _jmp_addr_0x0070cf61  // 0x0070cf76    72e9
                         pop                edi                                           // 0x0070cf78    5f
                         pop                esi                                           // 0x0070cf79    5e
                         xor.s              eax, eax                                      // 0x0070cf7a    33c0
                         pop                ebx                                           // 0x0070cf7c    5b
                         ret                                                              // 0x0070cf7d    c3
_jmp_addr_0x0070cf7e:    mov.s              eax, edi                                      // 0x0070cf7e    8bc7
                         pop                edi                                           // 0x0070cf80    5f
                         pop                esi                                           // 0x0070cf81    5e
                         pop                ebx                                           // 0x0070cf82    5b
                         ret                                                              // 0x0070cf83    c3
                         nop                                                              // 0x0070cf84    90
                         nop                                                              // 0x0070cf85    90
                         nop                                                              // 0x0070cf86    90
                         nop                                                              // 0x0070cf87    90
                         nop                                                              // 0x0070cf88    90
                         nop                                                              // 0x0070cf89    90
                         nop                                                              // 0x0070cf8a    90
                         nop                                                              // 0x0070cf8b    90
                         nop                                                              // 0x0070cf8c    90
                         nop                                                              // 0x0070cf8d    90
                         nop                                                              // 0x0070cf8e    90
                         nop                                                              // 0x0070cf8f    90
_jmp_addr_0x0070cf90:    push               esi                                           // 0x0070cf90    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x0070cf91    8b742408
                         test               esi, esi                                      // 0x0070cf95    85f6
                         {disp8} je         _jmp_addr_0x0070cfcb                          // 0x0070cf97    7432
                         {disp8} jbe        _jmp_addr_0x0070cfa3                          // 0x0070cf99    7608
                         cmp                esi, 0x00000200                               // 0x0070cf9b    81fe00020000
                         .byte              0x72, 0xd// {disp8} jb _jmp_addr_0x0070cfb0   // 0x0070cfa1    720d
_jmp_addr_0x0070cfa3:    push               0x00c20748                                    // 0x0070cfa3    684807c200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070cfa8    e80393feff
                         add                esp, 0x04                                     // 0x0070cfad    83c404
_jmp_addr_0x0070cfb0:    test               esi, esi                                      // 0x0070cfb0    85f6
                         {disp8} jbe        _jmp_addr_0x0070cfcb                          // 0x0070cfb2    7617
                         cmp                esi, 0x00000200                               // 0x0070cfb4    81fe00020000
                         {disp8} jae        _jmp_addr_0x0070cfcb                          // 0x0070cfba    730f
                         lea                eax, dword ptr [esi + esi * 0x4]              // 0x0070cfbc    8d04b6
                         {disp32} lea       ecx, dword ptr [eax * 0x4 + 0x00d967f8]       // 0x0070cfbf    8d0c85f867d900
                         call               _jmp_addr_0x0070d5f0                          // 0x0070cfc6    e825060000
_jmp_addr_0x0070cfcb:    pop                esi                                           // 0x0070cfcb    5e
                         ret                                                              // 0x0070cfcc    c3
                         nop                                                              // 0x0070cfcd    90
                         nop                                                              // 0x0070cfce    90
                         nop                                                              // 0x0070cfcf    90
_jmp_addr_0x0070cfd0:    push               esi                                           // 0x0070cfd0    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x0070cfd1    8b742408
                         test               esi, esi                                      // 0x0070cfd5    85f6
                         {disp8} je         _jmp_addr_0x0070d00b                          // 0x0070cfd7    7432
                         {disp8} jbe        _jmp_addr_0x0070cfe3                          // 0x0070cfd9    7608
                         cmp                esi, 0x00000200                               // 0x0070cfdb    81fe00020000
                         .byte              0x72, 0xd// {disp8} jb _jmp_addr_0x0070cff0   // 0x0070cfe1    720d
_jmp_addr_0x0070cfe3:    push               0x00c20748                                    // 0x0070cfe3    684807c200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070cfe8    e8c392feff
                         add                esp, 0x04                                     // 0x0070cfed    83c404
_jmp_addr_0x0070cff0:    test               esi, esi                                      // 0x0070cff0    85f6
                         {disp8} jbe        _jmp_addr_0x0070d00b                          // 0x0070cff2    7617
                         cmp                esi, 0x00000200                               // 0x0070cff4    81fe00020000
                         {disp8} jae        _jmp_addr_0x0070d00b                          // 0x0070cffa    730f
                         lea                eax, dword ptr [esi + esi * 0x4]              // 0x0070cffc    8d04b6
                         {disp32} lea       ecx, dword ptr [eax * 0x4 + 0x00d967f8]       // 0x0070cfff    8d0c85f867d900
                         call               _jmp_addr_0x0070d670                          // 0x0070d006    e865060000
_jmp_addr_0x0070d00b:    pop                esi                                           // 0x0070d00b    5e
                         ret                                                              // 0x0070d00c    c3
                         nop                                                              // 0x0070d00d    90
                         nop                                                              // 0x0070d00e    90
                         nop                                                              // 0x0070d00f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0070d010    8b442404
                         lea                eax, dword ptr [eax + eax * 0x4]              // 0x0070d014    8d0480
                         {disp32} mov       al, byte ptr [eax * 0x4 + 0x00d96808]         // 0x0070d017    8a04850868d900
                         ret                                                              // 0x0070d01e    c3
                         nop                                                              // 0x0070d01f    90
_jmp_addr_0x0070d020:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0070d020    8b442404
                         push               eax                                           // 0x0070d024    50
                         call               _jmp_addr_0x0070cf50                          // 0x0070d025    e826ffffff
                         add                esp, 0x04                                     // 0x0070d02a    83c404
                         test               eax, eax                                      // 0x0070d02d    85c0
                         {disp8} jne        _jmp_addr_0x0070d03f                          // 0x0070d02f    750e
                         push               0x00c20764                                    // 0x0070d031    686407c200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070d036    e87592feff
                         add                esp, 0x04                                     // 0x0070d03b    83c404
                         ret                                                              // 0x0070d03e    c3
_jmp_addr_0x0070d03f:    push               eax                                           // 0x0070d03f    50
                         call               _jmp_addr_0x0070cf90                          // 0x0070d040    e84bffffff
                         pop                ecx                                           // 0x0070d045    59
                         ret                                                              // 0x0070d046    c3
                         nop                                                              // 0x0070d047    90
                         nop                                                              // 0x0070d048    90
                         nop                                                              // 0x0070d049    90
                         nop                                                              // 0x0070d04a    90
                         nop                                                              // 0x0070d04b    90
                         nop                                                              // 0x0070d04c    90
                         nop                                                              // 0x0070d04d    90
                         nop                                                              // 0x0070d04e    90
                         nop                                                              // 0x0070d04f    90
_jmp_addr_0x0070d050:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0070d050    8b442404
                         push               eax                                           // 0x0070d054    50
                         call               _jmp_addr_0x0070cf50                          // 0x0070d055    e8f6feffff
                         add                esp, 0x04                                     // 0x0070d05a    83c404
                         test               eax, eax                                      // 0x0070d05d    85c0
                         {disp8} jne        _jmp_addr_0x0070d06f                          // 0x0070d05f    750e
                         push               0x00c20764                                    // 0x0070d061    686407c200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070d066    e84592feff
                         add                esp, 0x04                                     // 0x0070d06b    83c404
                         ret                                                              // 0x0070d06e    c3
_jmp_addr_0x0070d06f:    push               eax                                           // 0x0070d06f    50
                         call               _jmp_addr_0x0070cfd0                          // 0x0070d070    e85bffffff
                         pop                ecx                                           // 0x0070d075    59
                         ret                                                              // 0x0070d076    c3
                         nop                                                              // 0x0070d077    90
                         nop                                                              // 0x0070d078    90
                         nop                                                              // 0x0070d079    90
                         nop                                                              // 0x0070d07a    90
                         nop                                                              // 0x0070d07b    90
                         nop                                                              // 0x0070d07c    90
                         nop                                                              // 0x0070d07d    90
                         nop                                                              // 0x0070d07e    90
                         nop                                                              // 0x0070d07f    90
_jmp_addr_0x0070d080:    push               esi                                           // 0x0070d080    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x0070d081    8b742408
                         test               esi, esi                                      // 0x0070d085    85f6
                         push               edi                                           // 0x0070d087    57
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x0070d088    8b7c2410
                         {disp8} je         _jmp_addr_0x0070d092                          // 0x0070d08c    7404
                         test               edi, edi                                      // 0x0070d08e    85ff
                         {disp8} jne        _jmp_addr_0x0070d09f                          // 0x0070d090    750d
_jmp_addr_0x0070d092:    push               0x00c207ac                                    // 0x0070d092    68ac07c200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070d097    e81492feff
                         add                esp, 0x04                                     // 0x0070d09c    83c404
_jmp_addr_0x0070d09f:    test               esi, esi                                      // 0x0070d09f    85f6
                         {disp8} je         _jmp_addr_0x0070d0a7                          // 0x0070d0a1    7404
                         test               edi, edi                                      // 0x0070d0a3    85ff
                         {disp8} jne        _jmp_addr_0x0070d0ac                          // 0x0070d0a5    7505
_jmp_addr_0x0070d0a7:    pop                edi                                           // 0x0070d0a7    5f
                         xor.s              eax, eax                                      // 0x0070d0a8    33c0
                         pop                esi                                           // 0x0070d0aa    5e
                         ret                                                              // 0x0070d0ab    c3
_jmp_addr_0x0070d0ac:    push               esi                                           // 0x0070d0ac    56
                         call               _jmp_addr_0x0070cf50                          // 0x0070d0ad    e89efeffff
                         mov.s              esi, eax                                      // 0x0070d0b2    8bf0
                         add                esp, 0x04                                     // 0x0070d0b4    83c404
                         test               esi, esi                                      // 0x0070d0b7    85f6
                         {disp8} jne        _jmp_addr_0x0070d0cd                          // 0x0070d0b9    7512
                         push               0x00c20784                                    // 0x0070d0bb    688407c200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070d0c0    e8eb91feff
                         add                esp, 0x04                                     // 0x0070d0c5    83c404
                         pop                edi                                           // 0x0070d0c8    5f
                         mov.s              eax, esi                                      // 0x0070d0c9    8bc6
                         pop                esi                                           // 0x0070d0cb    5e
                         ret                                                              // 0x0070d0cc    c3
_jmp_addr_0x0070d0cd:    lea                eax, dword ptr [esi + esi * 0x4]              // 0x0070d0cd    8d04b6
                         push               edi                                           // 0x0070d0d0    57
                         {disp32} lea       ecx, dword ptr [eax * 0x4 + 0x00d967f8]       // 0x0070d0d1    8d0c85f867d900
                         call               @Set__8BaseInfoFP4Base@12                     // 0x0070d0d8    e8d39ad2ff
                         pop                edi                                           // 0x0070d0dd    5f
                         mov.s              eax, esi                                      // 0x0070d0de    8bc6
                         pop                esi                                           // 0x0070d0e0    5e
                         ret                                                              // 0x0070d0e1    c3
                         nop                                                              // 0x0070d0e2    90
                         nop                                                              // 0x0070d0e3    90
                         nop                                                              // 0x0070d0e4    90
                         nop                                                              // 0x0070d0e5    90
                         nop                                                              // 0x0070d0e6    90
                         nop                                                              // 0x0070d0e7    90
                         nop                                                              // 0x0070d0e8    90
                         nop                                                              // 0x0070d0e9    90
                         nop                                                              // 0x0070d0ea    90
                         nop                                                              // 0x0070d0eb    90
                         nop                                                              // 0x0070d0ec    90
                         nop                                                              // 0x0070d0ed    90
                         nop                                                              // 0x0070d0ee    90
                         nop                                                              // 0x0070d0ef    90
_jmp_addr_0x0070d0f0:    push               ebx                                           // 0x0070d0f0    53
                         push               esi                                           // 0x0070d0f1    56
                         push               edi                                           // 0x0070d0f2    57
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x0070d0f3    8b7c2410
                         test               edi, edi                                      // 0x0070d0f7    85ff
                         {disp8} jne        _jmp_addr_0x0070d10e                          // 0x0070d0f9    7513
                         push               0x00c207ac                                    // 0x0070d0fb    68ac07c200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070d100    e8ab91feff
                         add                esp, 0x04                                     // 0x0070d105    83c404
                         pop                edi                                           // 0x0070d108    5f
                         pop                esi                                           // 0x0070d109    5e
                         xor.s              eax, eax                                      // 0x0070d10a    33c0
                         pop                ebx                                           // 0x0070d10c    5b
                         ret                                                              // 0x0070d10d    c3
_jmp_addr_0x0070d10e:    {disp8} mov        ebx, dword ptr [esp + 0x14]                   // 0x0070d10e    8b5c2414
                         test               ebx, ebx                                      // 0x0070d112    85db
                         {disp8} je         _jmp_addr_0x0070d148                          // 0x0070d114    7432
                         push               0x0                                           // 0x0070d116    6a00
                         push               0x009c7f50                                    // 0x0070d118    68507f9c00
                         push               0x009c7f30                                    // 0x0070d11d    68307f9c00
                         push               0x0                                           // 0x0070d122    6a00
                         push               edi                                           // 0x0070d124    57
                         call               ___RTDynamicCast                              // 0x0070d125    e8ef880b00
                         add                esp, 0x14                                     // 0x0070d12a    83c414
                         test               eax, eax                                      // 0x0070d12d    85c0
                         {disp8} je         _jmp_addr_0x0070d144                          // 0x0070d12f    7413
                         {disp8} mov        eax, dword ptr [eax + 0x40]                   // 0x0070d131    8b4040
                         test               eax, eax                                      // 0x0070d134    85c0
                         {disp8} je         _jmp_addr_0x0070d144                          // 0x0070d136    740c
                         mov                esi, dword ptr [eax]                          // 0x0070d138    8b30
                         xor.s              edx, edx                                      // 0x0070d13a    33d2
                         mov.s              ecx, eax                                      // 0x0070d13c    8bc8
                         call               dword ptr [esi + 0x98]                        // 0x0070d13e    ff9698000000
_jmp_addr_0x0070d144:    or                 byte ptr [edi + 0xa], 0x40                    // 0x0070d144    804f0a40
_jmp_addr_0x0070d148:    mov                eax, dword ptr [edi]                          // 0x0070d148    8b07
                         mov.s              ecx, edi                                      // 0x0070d14a    8bcf
                         call               dword ptr [eax + 0x448]                       // 0x0070d14c    ff9048040000
                         test               eax, eax                                      // 0x0070d152    85c0
                         {disp8} je         _jmp_addr_0x0070d170                          // 0x0070d154    741a
                         push               edi                                           // 0x0070d156    57
                         call               _jmp_addr_0x0070cf50                          // 0x0070d157    e8f4fdffff
                         add                esp, 0x04                                     // 0x0070d15c    83c404
                         test               eax, eax                                      // 0x0070d15f    85c0
                         {disp8} jne        _jmp_addr_0x0070d18e                          // 0x0070d161    752b
                         push               0x00c207c8                                    // 0x0070d163    68c807c200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070d168    e84391feff
                         add                esp, 0x04                                     // 0x0070d16d    83c404
_jmp_addr_0x0070d170:    call               _jmp_addr_0x0070cee0                          // 0x0070d170    e86bfdffff
                         mov.s              esi, eax                                      // 0x0070d175    8bf0
                         test               esi, esi                                      // 0x0070d177    85f6
                         {disp8} je         _jmp_addr_0x0070d18c                          // 0x0070d179    7411
                         push               ebx                                           // 0x0070d17b    53
                         lea                ecx, dword ptr [esi + esi * 0x4]              // 0x0070d17c    8d0cb6
                         push               edi                                           // 0x0070d17f    57
                         {disp32} lea       ecx, dword ptr [ecx * 0x4 + 0x00d967f8]       // 0x0070d180    8d0c8df867d900
                         call               _jmp_addr_0x0070d870                          // 0x0070d187    e8e4060000
_jmp_addr_0x0070d18c:    mov.s              eax, esi                                      // 0x0070d18c    8bc6
_jmp_addr_0x0070d18e:    pop                edi                                           // 0x0070d18e    5f
                         pop                esi                                           // 0x0070d18f    5e
                         pop                ebx                                           // 0x0070d190    5b
                         ret                                                              // 0x0070d191    c3
                         nop                                                              // 0x0070d192    90
                         nop                                                              // 0x0070d193    90
                         nop                                                              // 0x0070d194    90
                         nop                                                              // 0x0070d195    90
                         nop                                                              // 0x0070d196    90
                         nop                                                              // 0x0070d197    90
                         nop                                                              // 0x0070d198    90
                         nop                                                              // 0x0070d199    90
                         nop                                                              // 0x0070d19a    90
                         nop                                                              // 0x0070d19b    90
                         nop                                                              // 0x0070d19c    90
                         nop                                                              // 0x0070d19d    90
                         nop                                                              // 0x0070d19e    90
                         nop                                                              // 0x0070d19f    90
_jmp_addr_0x0070d1a0:    push               esi                                           // 0x0070d1a0    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x0070d1a1    8b742408
                         test               esi, esi                                      // 0x0070d1a5    85f6
                         push               edi                                           // 0x0070d1a7    57
                         {disp8} jbe        _jmp_addr_0x0070d1b2                          // 0x0070d1a8    7608
                         cmp                esi, 0x00000200                               // 0x0070d1aa    81fe00020000
                         .byte              0x72, 0xd// {disp8} jb _jmp_addr_0x0070d1bf   // 0x0070d1b0    720d
_jmp_addr_0x0070d1b2:    push               0x00c20748                                    // 0x0070d1b2    684807c200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070d1b7    e8f490feff
                         add                esp, 0x04                                     // 0x0070d1bc    83c404
_jmp_addr_0x0070d1bf:    test               esi, esi                                      // 0x0070d1bf    85f6
                         {disp8} jbe        _jmp_addr_0x0070d217                          // 0x0070d1c1    7654
                         cmp                esi, 0x00000200                               // 0x0070d1c3    81fe00020000
                         {disp8} jae        _jmp_addr_0x0070d217                          // 0x0070d1c9    734c
                         push               esi                                           // 0x0070d1cb    56
                         call               _jmp_addr_0x0070d220                          // 0x0070d1cc    e84f000000
                         mov.s              edi, eax                                      // 0x0070d1d1    8bf8
                         lea                eax, dword ptr [esi + esi * 0x4]              // 0x0070d1d3    8d04b6
                         {disp32} mov       cl, byte ptr [eax * 0x4 + 0x00d96808]         // 0x0070d1d6    8a0c850868d900
                         add                esp, 0x04                                     // 0x0070d1dd    83c404
                         cmp                cl, 0x01                                      // 0x0070d1e0    80f901
                         {disp8} jae        _jmp_addr_0x0070d1f2                          // 0x0070d1e3    730d
                         push               0x00c207ec                                    // 0x0070d1e5    68ec07c200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070d1ea    e8c190feff
                         add                esp, 0x04                                     // 0x0070d1ef    83c404
_jmp_addr_0x0070d1f2:    test               edi, edi                                      // 0x0070d1f2    85ff
                         {disp8} je         _jmp_addr_0x0070d217                          // 0x0070d1f4    7421
                         mov                edx, dword ptr [edi]                          // 0x0070d1f6    8b17
                         mov.s              ecx, edi                                      // 0x0070d1f8    8bcf
                         call               dword ptr [edx + 0x3f8]                       // 0x0070d1fa    ff92f8030000
                         test               eax, eax                                      // 0x0070d200    85c0
                         {disp8} je         _jmp_addr_0x0070d217                          // 0x0070d202    7413
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070d204    8b0d105cd900
                         push               0x4                                           // 0x0070d20a    6a04
                         push               esi                                           // 0x0070d20c    56
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070d20d    e88e99feff
                         call               _jmp_addr_0x006efdc0                          // 0x0070d212    e8a92bfeff
_jmp_addr_0x0070d217:    pop                edi                                           // 0x0070d217    5f
                         pop                esi                                           // 0x0070d218    5e
                         ret                                                              // 0x0070d219    c3
                         nop                                                              // 0x0070d21a    90
                         nop                                                              // 0x0070d21b    90
                         nop                                                              // 0x0070d21c    90
                         nop                                                              // 0x0070d21d    90
                         nop                                                              // 0x0070d21e    90
                         nop                                                              // 0x0070d21f    90
_jmp_addr_0x0070d220:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0070d220    8b442404
                         push               esi                                           // 0x0070d224    56
                         xor.s              esi, esi                                      // 0x0070d225    33f6
                         test               eax, eax                                      // 0x0070d227    85c0
                         {disp8} jne        _jmp_addr_0x0070d249                          // 0x0070d229    751e
                         push               0x00c2087c                                    // 0x0070d22b    687c08c200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070d230    e87b90feff
                         add                esp, 0x04                                     // 0x0070d235    83c404
                         push               0x00c20858                                    // 0x0070d238    685808c200
                         call               ?ScriptWarningMessage@GScript@@QAEXPAD@Z      // 0x0070d23d    e87e90feff
                         add                esp, 0x04                                     // 0x0070d242    83c404
                         mov.s              eax, esi                                      // 0x0070d245    8bc6
                         pop                esi                                           // 0x0070d247    5e
                         ret                                                              // 0x0070d248    c3
_jmp_addr_0x0070d249:    cmp                eax, 0x00000200                               // 0x0070d249    3d00020000
                         .byte              0x72, 0x11// {disp8} jb _jmp_addr_0x0070d261  // 0x0070d24e    7211
                         push               0x00c20748                                    // 0x0070d250    684807c200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070d255    e85690feff
                         add                esp, 0x04                                     // 0x0070d25a    83c404
                         xor.s              eax, eax                                      // 0x0070d25d    33c0
                         pop                esi                                           // 0x0070d25f    5e
                         ret                                                              // 0x0070d260    c3
_jmp_addr_0x0070d261:    lea                eax, dword ptr [eax + eax * 0x4]              // 0x0070d261    8d0480
                         {disp32} lea       ecx, dword ptr [eax * 0x4 + 0x00d967f8]       // 0x0070d264    8d0c85f867d900
                         call               _jmp_addr_0x00436b80                          // 0x0070d26b    e81099d2ff
                         mov.s              esi, eax                                      // 0x0070d270    8bf0
                         test               esi, esi                                      // 0x0070d272    85f6
                         {disp8} jne        _jmp_addr_0x0070d287                          // 0x0070d274    7511
                         push               0x00c20858                                    // 0x0070d276    685808c200
                         call               ?ScriptWarningMessage@GScript@@QAEXPAD@Z      // 0x0070d27b    e84090feff
                         add                esp, 0x04                                     // 0x0070d280    83c404
                         mov.s              eax, esi                                      // 0x0070d283    8bc6
                         pop                esi                                           // 0x0070d285    5e
                         ret                                                              // 0x0070d286    c3
_jmp_addr_0x0070d287:    mov                edx, dword ptr [esi]                          // 0x0070d287    8b16
                         mov.s              ecx, esi                                      // 0x0070d289    8bce
                         call               dword ptr [edx + 0x2c]                        // 0x0070d28b    ff522c
                         test               eax, eax                                      // 0x0070d28e    85c0
                         {disp8} je         _jmp_addr_0x0070d2db                          // 0x0070d290    7449
                         mov                eax, dword ptr [esi]                          // 0x0070d292    8b06
                         mov.s              ecx, esi                                      // 0x0070d294    8bce
                         call               dword ptr [eax + 0x448]                       // 0x0070d296    ff9048040000
                         test               eax, eax                                      // 0x0070d29c    85c0
                         {disp8} jne        _jmp_addr_0x0070d2ad                          // 0x0070d29e    750d
                         push               0x00c20828                                    // 0x0070d2a0    682808c200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070d2a5    e80690feff
                         add                esp, 0x04                                     // 0x0070d2aa    83c404
_jmp_addr_0x0070d2ad:    mov                edx, dword ptr [esi]                          // 0x0070d2ad    8b16
                         mov.s              ecx, esi                                      // 0x0070d2af    8bce
                         call               dword ptr [edx + 0x448]                       // 0x0070d2b1    ff9248040000
                         test               byte ptr [esi + 0x25], 0x04                   // 0x0070d2b7    f6462504
                         {disp8} jne        _jmp_addr_0x0070d2dd                          // 0x0070d2bb    7520
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070d2bd    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x00250090]             // 0x0070d2c3    8b9190002500
                         {disp8} mov        ecx, dword ptr [edx + 0x3c]                   // 0x0070d2c9    8b4a3c
                         mov                eax, dword ptr [esi]                          // 0x0070d2cc    8b06
                         push               ecx                                           // 0x0070d2ce    51
                         mov.s              ecx, esi                                      // 0x0070d2cf    8bce
                         call               dword ptr [eax + 0x440]                       // 0x0070d2d1    ff9040040000
                         mov.s              eax, esi                                      // 0x0070d2d7    8bc6
                         pop                esi                                           // 0x0070d2d9    5e
                         ret                                                              // 0x0070d2da    c3
_jmp_addr_0x0070d2db:    xor.s              esi, esi                                      // 0x0070d2db    33f6
_jmp_addr_0x0070d2dd:    mov.s              eax, esi                                      // 0x0070d2dd    8bc6
                         pop                esi                                           // 0x0070d2df    5e
                         ret                                                              // 0x0070d2e0    c3
                         nop                                                              // 0x0070d2e1    90
                         nop                                                              // 0x0070d2e2    90
                         nop                                                              // 0x0070d2e3    90
                         nop                                                              // 0x0070d2e4    90
                         nop                                                              // 0x0070d2e5    90
                         nop                                                              // 0x0070d2e6    90
                         nop                                                              // 0x0070d2e7    90
                         nop                                                              // 0x0070d2e8    90
                         nop                                                              // 0x0070d2e9    90
                         nop                                                              // 0x0070d2ea    90
                         nop                                                              // 0x0070d2eb    90
                         nop                                                              // 0x0070d2ec    90
                         nop                                                              // 0x0070d2ed    90
                         nop                                                              // 0x0070d2ee    90
                         nop                                                              // 0x0070d2ef    90
_jmp_addr_0x0070d2f0:    push               ebx                                           // 0x0070d2f0    53
                         push               ebp                                           // 0x0070d2f1    55
                         {disp8} mov        ebp, dword ptr [esp + 0x0c]                   // 0x0070d2f2    8b6c240c
                         push               esi                                           // 0x0070d2f6    56
                         push               edi                                           // 0x0070d2f7    57
                         xor.s              edi, edi                                      // 0x0070d2f8    33ff
                         mov                ebx, 0x00000001                               // 0x0070d2fa    bb01000000
                         mov                esi, 0x00d96810                               // 0x0070d2ff    be1068d900
_jmp_addr_0x0070d304:    {disp8} lea        ecx, dword ptr [esi + -0x04]                  // 0x0070d304    8d4efc
                         call               _jmp_addr_0x00436b80                          // 0x0070d307    e87498d2ff
                         cmp.s              eax, ebp                                      // 0x0070d30c    3bc5
                         {disp8} je         _jmp_addr_0x0070d352                          // 0x0070d30e    7442
                         test               edi, edi                                      // 0x0070d310    85ff
                         {disp8} jne        _jmp_addr_0x0070d329                          // 0x0070d312    7515
                         {disp8} mov        al, byte ptr [esi + 0x0c]                     // 0x0070d314    8a460c
                         test               al, al                                        // 0x0070d317    84c0
                         {disp8} jne        _jmp_addr_0x0070d329                          // 0x0070d319    750e
                         cmp                dword ptr [esi], 0x00                         // 0x0070d31b    833e00
                         {disp8} jne        _jmp_addr_0x0070d329                          // 0x0070d31e    7509
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x0070d320    8b4604
                         test               eax, eax                                      // 0x0070d323    85c0
                         {disp8} jne        _jmp_addr_0x0070d329                          // 0x0070d325    7502
                         mov.s              edi, ebx                                      // 0x0070d327    8bfb
_jmp_addr_0x0070d329:    add                esi, 0x14                                     // 0x0070d329    83c614
                         inc                ebx                                           // 0x0070d32c    43
                         cmp                esi, 0x00d98ffc                               // 0x0070d32d    81fefc8fd900
                         .byte              0x72, 0xcf// {disp8} jb _jmp_addr_0x0070d304  // 0x0070d333    72cf
                         test               edi, edi                                      // 0x0070d335    85ff
                         {disp8} je         _jmp_addr_0x0070d359                          // 0x0070d337    7420
                         push               0x0                                           // 0x0070d339    6a00
                         lea                eax, dword ptr [edi + edi * 0x4]              // 0x0070d33b    8d04bf
                         push               ebp                                           // 0x0070d33e    55
                         {disp32} lea       ecx, dword ptr [eax * 0x4 + 0x00d967f8]       // 0x0070d33f    8d0c85f867d900
                         call               _jmp_addr_0x0070d870                          // 0x0070d346    e825050000
                         mov.s              eax, edi                                      // 0x0070d34b    8bc7
                         pop                edi                                           // 0x0070d34d    5f
                         pop                esi                                           // 0x0070d34e    5e
                         pop                ebp                                           // 0x0070d34f    5d
                         pop                ebx                                           // 0x0070d350    5b
                         ret                                                              // 0x0070d351    c3
_jmp_addr_0x0070d352:    pop                edi                                           // 0x0070d352    5f
                         pop                esi                                           // 0x0070d353    5e
                         pop                ebp                                           // 0x0070d354    5d
                         mov.s              eax, ebx                                      // 0x0070d355    8bc3
                         pop                ebx                                           // 0x0070d357    5b
                         ret                                                              // 0x0070d358    c3
_jmp_addr_0x0070d359:    pop                edi                                           // 0x0070d359    5f
                         pop                esi                                           // 0x0070d35a    5e
                         pop                ebp                                           // 0x0070d35b    5d
                         xor.s              eax, eax                                      // 0x0070d35c    33c0
                         pop                ebx                                           // 0x0070d35e    5b
                         ret                                                              // 0x0070d35f    c3
?DeleteAllScriptCreatedGameThings@GScript@@SAXXZ:
                                                  push               ebx                                           // 0x0070d360    53
                         push               ebp                                           // 0x0070d361    55
                         push               esi                                           // 0x0070d362    56
                         push               edi                                           // 0x0070d363    57
                         mov                ebp, 0x00000001                               // 0x0070d364    bd01000000
                         mov                edi, 0x00d96810                               // 0x0070d369    bf1068d900
_jmp_addr_0x0070d36e:    {disp8} mov        al, byte ptr [edi + 0x0c]                     // 0x0070d36e    8a470c
                         test               al, al                                        // 0x0070d371    84c0
                         {disp8} jne        _jmp_addr_0x0070d385                          // 0x0070d373    7510
                         cmp                dword ptr [edi], 0x00                         // 0x0070d375    833f00
                         {disp8} jne        _jmp_addr_0x0070d385                          // 0x0070d378    750b
                         {disp8} mov        eax, dword ptr [edi + 0x04]                   // 0x0070d37a    8b4704
                         test               eax, eax                                      // 0x0070d37d    85c0
                         {disp32} je        _jmp_addr_0x0070d422                          // 0x0070d37f    0f849d000000
_jmp_addr_0x0070d385:    {disp8} lea        ebx, dword ptr [edi + -0x04]                  // 0x0070d385    8d5ffc
                         mov.s              ecx, ebx                                      // 0x0070d388    8bcb
                         call               _jmp_addr_0x00436b80                          // 0x0070d38a    e8f197d2ff
                         mov.s              esi, eax                                      // 0x0070d38f    8bf0
                         test               esi, esi                                      // 0x0070d391    85f6
                         {disp32} je        _jmp_addr_0x0070d41b                          // 0x0070d393    0f8482000000
                         mov                eax, dword ptr [esi]                          // 0x0070d399    8b06
                         mov.s              ecx, esi                                      // 0x0070d39b    8bce
                         call               dword ptr [eax + 0x2c]                        // 0x0070d39d    ff502c
                         test               eax, eax                                      // 0x0070d3a0    85c0
                         {disp8} je         _jmp_addr_0x0070d41b                          // 0x0070d3a2    7477
                         mov                edx, dword ptr [esi]                          // 0x0070d3a4    8b16
                         mov.s              ecx, esi                                      // 0x0070d3a6    8bce
                         call               dword ptr [edx + 0x448]                       // 0x0070d3a8    ff9248040000
                         test               eax, eax                                      // 0x0070d3ae    85c0
                         {disp8} jne        _jmp_addr_0x0070d3bf                          // 0x0070d3b0    750d
                         push               0x00c208a4                                    // 0x0070d3b2    68a408c200
                         call               ?ScriptWarningMessage@GScript@@QAEXPAD@Z      // 0x0070d3b7    e8048ffeff
                         add                esp, 0x04                                     // 0x0070d3bc    83c404
_jmp_addr_0x0070d3bf:    {disp8} mov        eax, dword ptr [edi + 0x08]                   // 0x0070d3bf    8b4708
                         test               eax, eax                                      // 0x0070d3c2    85c0
                         {disp8} je         _jmp_addr_0x0070d3ea                          // 0x0070d3c4    7424
                         mov                eax, dword ptr [esi]                          // 0x0070d3c6    8b06
                         mov.s              ecx, esi                                      // 0x0070d3c8    8bce
                         call               dword ptr [eax + 0x498]                       // 0x0070d3ca    ff9098040000
                         test               eax, eax                                      // 0x0070d3d0    85c0
                         {disp8} je         _jmp_addr_0x0070d3df                          // 0x0070d3d2    740b
                         push               0x0                                           // 0x0070d3d4    6a00
                         mov.s              ecx, esi                                      // 0x0070d3d6    8bce
                         call               _jmp_addr_0x006d6cc0                          // 0x0070d3d8    e8e398fcff
                         {disp8} jmp        _jmp_addr_0x0070d41b                          // 0x0070d3dd    eb3c
_jmp_addr_0x0070d3df:    mov                edx, dword ptr [esi]                          // 0x0070d3df    8b16
                         push               0x0                                           // 0x0070d3e1    6a00
                         mov.s              ecx, esi                                      // 0x0070d3e3    8bce
                         call               dword ptr [edx + 0xc]                         // 0x0070d3e5    ff520c
                         {disp8} jmp        _jmp_addr_0x0070d41b                          // 0x0070d3e8    eb31
_jmp_addr_0x0070d3ea:    test               byte ptr [esi + 0x25], 0x04                   // 0x0070d3ea    f6462504
                         {disp8} je         _jmp_addr_0x0070d3fc                          // 0x0070d3ee    740c
                         push               0x0                                           // 0x0070d3f0    6a00
                         push               ebp                                           // 0x0070d3f2    55
                         push               esi                                           // 0x0070d3f3    56
                         call               _jmp_addr_0x0070d540                          // 0x0070d3f4    e847010000
                         add                esp, 0x0c                                     // 0x0070d3f9    83c40c
_jmp_addr_0x0070d3fc:    mov                eax, dword ptr [esi]                          // 0x0070d3fc    8b06
                         push               0x0                                           // 0x0070d3fe    6a00
                         mov.s              ecx, esi                                      // 0x0070d400    8bce
                         call               dword ptr [eax + 0x43c]                       // 0x0070d402    ff903c040000
                         test               byte ptr [esi + 0x25], 0x04                   // 0x0070d408    f6462504
                         {disp8} je         _jmp_addr_0x0070d41b                          // 0x0070d40c    740d
                         push               0x00c0d7c8                                    // 0x0070d40e    68c8d7c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070d413    e8988efeff
                         add                esp, 0x04                                     // 0x0070d418    83c404
_jmp_addr_0x0070d41b:    mov.s              ecx, ebx                                      // 0x0070d41b    8bcb
                         call               _jmp_addr_0x0070d810                          // 0x0070d41d    e8ee030000
_jmp_addr_0x0070d422:    add                edi, 0x14                                     // 0x0070d422    83c714
                         inc                ebp                                           // 0x0070d425    45
                         cmp                edi, 0x00d98ffc                               // 0x0070d426    81fffc8fd900
                         {disp32} jb        _jmp_addr_0x0070d36e                          // 0x0070d42c    0f823cffffff
                         pop                edi                                           // 0x0070d432    5f
                         pop                esi                                           // 0x0070d433    5e
                         pop                ebp                                           // 0x0070d434    5d
                         pop                ebx                                           // 0x0070d435    5b
                         ret                                                              // 0x0070d436    c3
                         nop                                                              // 0x0070d437    90
                         nop                                                              // 0x0070d438    90
                         nop                                                              // 0x0070d439    90
                         nop                                                              // 0x0070d43a    90
                         nop                                                              // 0x0070d43b    90
                         nop                                                              // 0x0070d43c    90
                         nop                                                              // 0x0070d43d    90
                         nop                                                              // 0x0070d43e    90
                         nop                                                              // 0x0070d43f    90
_jmp_addr_0x0070d440:    push               esi                                           // 0x0070d440    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x0070d441    8b742408
                         test               esi, esi                                      // 0x0070d445    85f6
                         {disp8} jbe        _jmp_addr_0x0070d451                          // 0x0070d447    7608
                         cmp                esi, 0x00000200                               // 0x0070d449    81fe00020000
                         .byte              0x72, 0xd// {disp8} jb _jmp_addr_0x0070d45e   // 0x0070d44f    720d
_jmp_addr_0x0070d451:    push               0x00c20748                                    // 0x0070d451    684807c200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070d456    e8558efeff
                         add                esp, 0x04                                     // 0x0070d45b    83c404
_jmp_addr_0x0070d45e:    test               esi, esi                                      // 0x0070d45e    85f6
                         {disp8} jbe        _jmp_addr_0x0070d46a                          // 0x0070d460    7608
                         cmp                esi, 0x00000200                               // 0x0070d462    81fe00020000
                         .byte              0x72, 0x4// {disp8} jb _jmp_addr_0x0070d46e   // 0x0070d468    7204
_jmp_addr_0x0070d46a:    xor.s              eax, eax                                      // 0x0070d46a    33c0
                         pop                esi                                           // 0x0070d46c    5e
                         ret                                                              // 0x0070d46d    c3
_jmp_addr_0x0070d46e:    lea                eax, dword ptr [esi + esi * 0x4]              // 0x0070d46e    8d04b6
                         {disp32} mov       eax, dword ptr [eax * 0x4 + 0x00d96804]       // 0x0070d471    8b04850468d900
                         pop                esi                                           // 0x0070d478    5e
                         ret                                                              // 0x0070d479    c3
                         nop                                                              // 0x0070d47a    90
                         nop                                                              // 0x0070d47b    90
                         nop                                                              // 0x0070d47c    90
                         nop                                                              // 0x0070d47d    90
                         nop                                                              // 0x0070d47e    90
                         nop                                                              // 0x0070d47f    90
_jmp_addr_0x0070d480:    push               ebx                                           // 0x0070d480    53
                         push               ebp                                           // 0x0070d481    55
                         push               esi                                           // 0x0070d482    56
                         push               edi                                           // 0x0070d483    57
                         mov                ebp, 0x00000001                               // 0x0070d484    bd01000000
                         mov                edi, 0x00d96810                               // 0x0070d489    bf1068d900
_jmp_addr_0x0070d48e:    {disp8} mov        al, byte ptr [edi + 0x0c]                     // 0x0070d48e    8a470c
                         test               al, al                                        // 0x0070d491    84c0
                         {disp32} jne       _jmp_addr_0x0070d51e                          // 0x0070d493    0f8585000000
                         cmp                dword ptr [edi], 0x00                         // 0x0070d499    833f00
                         {disp8} jne        _jmp_addr_0x0070d4a5                          // 0x0070d49c    7507
                         {disp8} mov        eax, dword ptr [edi + 0x04]                   // 0x0070d49e    8b4704
                         test               eax, eax                                      // 0x0070d4a1    85c0
                         {disp8} je         _jmp_addr_0x0070d51e                          // 0x0070d4a3    7479
_jmp_addr_0x0070d4a5:    {disp8} mov        al, byte ptr [edi + 0x0c]                     // 0x0070d4a5    8a470c
                         test               al, al                                        // 0x0070d4a8    84c0
                         {disp8} jne        _jmp_addr_0x0070d51e                          // 0x0070d4aa    7572
                         {disp8} lea        ebx, dword ptr [edi + -0x04]                  // 0x0070d4ac    8d5ffc
                         mov.s              ecx, ebx                                      // 0x0070d4af    8bcb
                         call               _jmp_addr_0x00436b80                          // 0x0070d4b1    e8ca96d2ff
                         mov.s              esi, eax                                      // 0x0070d4b6    8bf0
                         test               esi, esi                                      // 0x0070d4b8    85f6
                         {disp8} je         _jmp_addr_0x0070d517                          // 0x0070d4ba    745b
                         mov                eax, dword ptr [esi]                          // 0x0070d4bc    8b06
                         mov.s              ecx, esi                                      // 0x0070d4be    8bce
                         call               dword ptr [eax + 0x2c]                        // 0x0070d4c0    ff502c
                         test               eax, eax                                      // 0x0070d4c3    85c0
                         {disp8} je         _jmp_addr_0x0070d517                          // 0x0070d4c5    7450
                         mov                edx, dword ptr [esi]                          // 0x0070d4c7    8b16
                         mov.s              ecx, esi                                      // 0x0070d4c9    8bce
                         call               dword ptr [edx + 0x448]                       // 0x0070d4cb    ff9248040000
                         test               eax, eax                                      // 0x0070d4d1    85c0
                         {disp8} jne        _jmp_addr_0x0070d4e2                          // 0x0070d4d3    750d
                         push               0x00c208e0                                    // 0x0070d4d5    68e008c200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070d4da    e8d18dfeff
                         add                esp, 0x04                                     // 0x0070d4df    83c404
_jmp_addr_0x0070d4e2:    mov                eax, dword ptr [esi]                          // 0x0070d4e2    8b06
                         mov.s              ecx, esi                                      // 0x0070d4e4    8bce
                         call               dword ptr [eax + 0x448]                       // 0x0070d4e6    ff9048040000
                         push               0x0                                           // 0x0070d4ec    6a00
                         push               ebp                                           // 0x0070d4ee    55
                         push               esi                                           // 0x0070d4ef    56
                         call               _jmp_addr_0x0070d540                          // 0x0070d4f0    e84b000000
                         mov                edx, dword ptr [esi]                          // 0x0070d4f5    8b16
                         add                esp, 0x0c                                     // 0x0070d4f7    83c40c
                         push               0x0                                           // 0x0070d4fa    6a00
                         mov.s              ecx, esi                                      // 0x0070d4fc    8bce
                         call               dword ptr [edx + 0x43c]                       // 0x0070d4fe    ff923c040000
                         test               byte ptr [esi + 0x25], 0x04                   // 0x0070d504    f6462504
                         {disp8} je         _jmp_addr_0x0070d517                          // 0x0070d508    740d
                         push               0x00c0d7c8                                    // 0x0070d50a    68c8d7c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070d50f    e89c8dfeff
                         add                esp, 0x04                                     // 0x0070d514    83c404
_jmp_addr_0x0070d517:    mov.s              ecx, ebx                                      // 0x0070d517    8bcb
                         call               _jmp_addr_0x0070d800                          // 0x0070d519    e8e2020000
_jmp_addr_0x0070d51e:    add                edi, 0x14                                     // 0x0070d51e    83c714
                         inc                ebp                                           // 0x0070d521    45
                         cmp                edi, 0x00d98ffc                               // 0x0070d522    81fffc8fd900
                         {disp32} jb        _jmp_addr_0x0070d48e                          // 0x0070d528    0f8260ffffff
                         pop                edi                                           // 0x0070d52e    5f
                         pop                esi                                           // 0x0070d52f    5e
                         pop                ebp                                           // 0x0070d530    5d
                         pop                ebx                                           // 0x0070d531    5b
                         ret                                                              // 0x0070d532    c3
                         nop                                                              // 0x0070d533    90
                         nop                                                              // 0x0070d534    90
                         nop                                                              // 0x0070d535    90
                         nop                                                              // 0x0070d536    90
                         nop                                                              // 0x0070d537    90
                         nop                                                              // 0x0070d538    90
                         nop                                                              // 0x0070d539    90
                         nop                                                              // 0x0070d53a    90
                         nop                                                              // 0x0070d53b    90
                         nop                                                              // 0x0070d53c    90
                         nop                                                              // 0x0070d53d    90
                         nop                                                              // 0x0070d53e    90
                         nop                                                              // 0x0070d53f    90
_jmp_addr_0x0070d540:    push               ebx                                           // 0x0070d540    53
                         push               esi                                           // 0x0070d541    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x0070d542    8b74240c
                         test               esi, esi                                      // 0x0070d546    85f6
                         push               edi                                           // 0x0070d548    57
                         {disp8} jne        _jmp_addr_0x0070d55c                          // 0x0070d549    7511
                         push               0x00c20914                                    // 0x0070d54b    681409c200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070d550    e85b8dfeff
                         add                esp, 0x04                                     // 0x0070d555    83c404
                         pop                edi                                           // 0x0070d558    5f
                         pop                esi                                           // 0x0070d559    5e
                         pop                ebx                                           // 0x0070d55a    5b
                         ret                                                              // 0x0070d55b    c3
_jmp_addr_0x0070d55c:    test               byte ptr [esi + 0x25], 0x04                   // 0x0070d55c    f6462504
                         mov                eax, dword ptr [esi]                          // 0x0070d560    8b06
                         mov.s              ecx, esi                                      // 0x0070d562    8bce
                         {disp8} je         _jmp_addr_0x0070d5d2                          // 0x0070d564    746c
                         call               dword ptr [eax + 0x3f8]                       // 0x0070d566    ff90f8030000
                         test               eax, eax                                      // 0x0070d56c    85c0
                         {disp8} mov        edi, dword ptr [esp + 0x18]                   // 0x0070d56e    8b7c2418
                         {disp8} mov        ebx, dword ptr [esp + 0x14]                   // 0x0070d572    8b5c2414
                         {disp8} je         _jmp_addr_0x0070d5bc                          // 0x0070d576    7444
                         test               edi, edi                                      // 0x0070d578    85ff
                         {disp8} jne        _jmp_addr_0x0070d5b3                          // 0x0070d57a    7537
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070d57c    8b0d105cd900
                         push               0x4                                           // 0x0070d582    6a04
                         push               ebx                                           // 0x0070d584    53
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070d585    e81696feff
                         call               _jmp_addr_0x006efdc0                          // 0x0070d58a    e83128feff
                         push               ebx                                           // 0x0070d58f    53
                         call               _jmp_addr_0x0070d440                          // 0x0070d590    e8abfeffff
                         add                esp, 0x04                                     // 0x0070d595    83c404
                         test               eax, eax                                      // 0x0070d598    85c0
                         {disp8} je         _jmp_addr_0x0070d5bc                          // 0x0070d59a    7420
                         mov                edx, dword ptr [esi]                          // 0x0070d59c    8b16
                         push               edi                                           // 0x0070d59e    57
                         mov.s              ecx, esi                                      // 0x0070d59f    8bce
                         call               dword ptr [edx + 0x440]                       // 0x0070d5a1    ff9240040000
                         mov                eax, dword ptr [esi]                          // 0x0070d5a7    8b06
                         push               edi                                           // 0x0070d5a9    57
                         mov.s              ecx, esi                                      // 0x0070d5aa    8bce
                         call               dword ptr [eax + 0xc]                         // 0x0070d5ac    ff500c
                         pop                edi                                           // 0x0070d5af    5f
                         pop                esi                                           // 0x0070d5b0    5e
                         pop                ebx                                           // 0x0070d5b1    5b
                         ret                                                              // 0x0070d5b2    c3
_jmp_addr_0x0070d5b3:    push               esi                                           // 0x0070d5b3    56
                         call               _jmp_addr_0x006efcd0                          // 0x0070d5b4    e81727feff
                         add                esp, 0x04                                     // 0x0070d5b9    83c404
_jmp_addr_0x0070d5bc:    mov                edx, dword ptr [esi]                          // 0x0070d5bc    8b16
                         mov.s              ecx, esi                                      // 0x0070d5be    8bce
                         call               dword ptr [edx + 0x34]                        // 0x0070d5c0    ff5234
                         push               edi                                           // 0x0070d5c3    57
                         push               ebx                                           // 0x0070d5c4    53
                         push               esi                                           // 0x0070d5c5    56
                         call               _jmp_addr_0x0070f600                          // 0x0070d5c6    e835200000
                         add                esp, 0x0c                                     // 0x0070d5cb    83c40c
                         pop                edi                                           // 0x0070d5ce    5f
                         pop                esi                                           // 0x0070d5cf    5e
                         pop                ebx                                           // 0x0070d5d0    5b
                         ret                                                              // 0x0070d5d1    c3
_jmp_addr_0x0070d5d2:    call               dword ptr [eax + 0x3f8]                       // 0x0070d5d2    ff90f8030000
                         test               eax, eax                                      // 0x0070d5d8    85c0
                         {disp8} je         _jmp_addr_0x0070d5e5                          // 0x0070d5da    7409
                         push               esi                                           // 0x0070d5dc    56
                         call               _jmp_addr_0x006efd60                          // 0x0070d5dd    e87e27feff
                         add                esp, 0x04                                     // 0x0070d5e2    83c404
_jmp_addr_0x0070d5e5:    pop                edi                                           // 0x0070d5e5    5f
                         pop                esi                                           // 0x0070d5e6    5e
                         pop                ebx                                           // 0x0070d5e7    5b
                         ret                                                              // 0x0070d5e8    c3
                         nop                                                              // 0x0070d5e9    90
                         nop                                                              // 0x0070d5ea    90
                         nop                                                              // 0x0070d5eb    90
                         nop                                                              // 0x0070d5ec    90
                         nop                                                              // 0x0070d5ed    90
                         nop                                                              // 0x0070d5ee    90
                         nop                                                              // 0x0070d5ef    90
_jmp_addr_0x0070d5f0:    push               edi                                           // 0x0070d5f0    57
                         mov.s              edi, ecx                                      // 0x0070d5f1    8bf9
                         {disp8} mov        al, byte ptr [edi + 0x10]                     // 0x0070d5f3    8a4710
                         cmp                al, -0x01                                     // 0x0070d5f6    3cff
                         {disp8} jae        _jmp_addr_0x0070d668                          // 0x0070d5f8    736e
                         test               al, al                                        // 0x0070d5fa    84c0
                         push               esi                                           // 0x0070d5fc    56
                         {disp8} jne        _jmp_addr_0x0070d637                          // 0x0070d5fd    7538
                         call               _jmp_addr_0x00436b80                          // 0x0070d5ff    e87c95d2ff
                         mov.s              esi, eax                                      // 0x0070d604    8bf0
                         test               esi, esi                                      // 0x0070d606    85f6
                         {disp8} je         _jmp_addr_0x0070d637                          // 0x0070d608    742d
                         mov                eax, dword ptr [esi]                          // 0x0070d60a    8b06
                         push               0x1                                           // 0x0070d60c    6a01
                         mov.s              ecx, esi                                      // 0x0070d60e    8bce
                         call               dword ptr [eax + 0x43c]                       // 0x0070d610    ff903c040000
                         test               byte ptr [esi + 0x25], 0x04                   // 0x0070d616    f6462504
                         {disp8} jne        _jmp_addr_0x0070d627                          // 0x0070d61a    750b
                         {disp8} mov        eax, dword ptr [edi + 0x0c]                   // 0x0070d61c    8b470c
                         test               eax, eax                                      // 0x0070d61f    85c0
                         {disp8} jne        _jmp_addr_0x0070d627                          // 0x0070d621    7504
                         xor.s              eax, eax                                      // 0x0070d623    33c0
                         {disp8} jmp        _jmp_addr_0x0070d62c                          // 0x0070d625    eb05
_jmp_addr_0x0070d627:    mov                eax, 0x00000001                               // 0x0070d627    b801000000
_jmp_addr_0x0070d62c:    mov                edx, dword ptr [esi]                          // 0x0070d62c    8b16
                         push               eax                                           // 0x0070d62e    50
                         mov.s              ecx, esi                                      // 0x0070d62f    8bce
                         call               dword ptr [edx + 0x440]                       // 0x0070d631    ff9240040000
_jmp_addr_0x0070d637:    mov.s              ecx, edi                                      // 0x0070d637    8bcf
                         call               _jmp_addr_0x00436b80                          // 0x0070d639    e84295d2ff
                         mov.s              esi, eax                                      // 0x0070d63e    8bf0
                         test               esi, esi                                      // 0x0070d640    85f6
                         {disp8} je         _jmp_addr_0x0070d65e                          // 0x0070d642    741a
                         mov                eax, dword ptr [esi]                          // 0x0070d644    8b06
                         mov.s              ecx, esi                                      // 0x0070d646    8bce
                         call               dword ptr [eax + 0x448]                       // 0x0070d648    ff9048040000
                         test               eax, eax                                      // 0x0070d64e    85c0
                         {disp8} jne        _jmp_addr_0x0070d65e                          // 0x0070d650    750c
                         mov                edx, dword ptr [esi]                          // 0x0070d652    8b16
                         push               0x1                                           // 0x0070d654    6a01
                         mov.s              ecx, esi                                      // 0x0070d656    8bce
                         call               dword ptr [edx + 0x43c]                       // 0x0070d658    ff923c040000
_jmp_addr_0x0070d65e:    {disp8} inc        byte ptr [edi + 0x10]                         // 0x0070d65e    fe4710
                         {disp32} inc       dword ptr [data_bytes + 0x3d3000]             // 0x0070d661    ff050090d900
                         pop                esi                                           // 0x0070d667    5e
_jmp_addr_0x0070d668:    pop                edi                                           // 0x0070d668    5f
                         ret                                                              // 0x0070d669    c3
                         nop                                                              // 0x0070d66a    90
                         nop                                                              // 0x0070d66b    90
                         nop                                                              // 0x0070d66c    90
                         nop                                                              // 0x0070d66d    90
                         nop                                                              // 0x0070d66e    90
                         nop                                                              // 0x0070d66f    90
_jmp_addr_0x0070d670:    {disp8} mov        al, byte ptr [ecx + 0x10]                     // 0x0070d670    8a4110
                         test               al, al                                        // 0x0070d673    84c0
                         {disp8} je         _jmp_addr_0x0070d68b                          // 0x0070d675    7414
                         dec                al                                            // 0x0070d677    fec8
                         {disp8} mov        byte ptr [ecx + 0x10], al                     // 0x0070d679    884110
                         {disp32} mov       eax, dword ptr [data_bytes + 0x3d3000]        // 0x0070d67c    a10090d900
                         test               eax, eax                                      // 0x0070d681    85c0
                         {disp8} je         _jmp_addr_0x0070d68b                          // 0x0070d683    7406
                         dec                eax                                           // 0x0070d685    48
                         {disp32} mov       dword ptr [data_bytes + 0x3d3000], eax        // 0x0070d686    a30090d900
_jmp_addr_0x0070d68b:    ret                                                              // 0x0070d68b    c3
                         nop                                                              // 0x0070d68c    90
                         nop                                                              // 0x0070d68d    90
                         nop                                                              // 0x0070d68e    90
                         nop                                                              // 0x0070d68f    90
_jmp_addr_0x0070d690:    push               ebx                                           // 0x0070d690    53
                         push               esi                                           // 0x0070d691    56
                         push               edi                                           // 0x0070d692    57
                         mov.s              ebx, ecx                                      // 0x0070d693    8bd9
                         call               _jmp_addr_0x00436b80                          // 0x0070d695    e8e694d2ff
                         mov.s              esi, eax                                      // 0x0070d69a    8bf0
                         test               esi, esi                                      // 0x0070d69c    85f6
                         {disp8} je         _jmp_addr_0x0070d6ad                          // 0x0070d69e    740d
                         mov                eax, dword ptr [esi]                          // 0x0070d6a0    8b06
                         mov.s              ecx, esi                                      // 0x0070d6a2    8bce
                         call               dword ptr [eax + 0x2c]                        // 0x0070d6a4    ff502c
                         test               eax, eax                                      // 0x0070d6a7    85c0
                         {disp8} jne        _jmp_addr_0x0070d6ad                          // 0x0070d6a9    7502
                         xor.s              esi, esi                                      // 0x0070d6ab    33f6
_jmp_addr_0x0070d6ad:    push               esi                                           // 0x0070d6ad    56
                         {disp8} mov        esi, dword ptr [esp + 0x14]                   // 0x0070d6ae    8b742414
                         mov.s              ecx, esi                                      // 0x0070d6b2    8bce
                         call               ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x0070d6b4    e85747e5ff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x0070d6b9    a190c9be00
                         test               eax, eax                                      // 0x0070d6be    85c0
                         {disp8} je         _jmp_addr_0x0070d72f                          // 0x0070d6c0    746d
                         push               0x0                                           // 0x0070d6c2    6a00
                         push               0x4                                           // 0x0070d6c4    6a04
                         {disp8} lea        edi, dword ptr [ebx + 0x0c]                   // 0x0070d6c6    8d7b0c
                         push               edi                                           // 0x0070d6c9    57
                         mov.s              ecx, esi                                      // 0x0070d6ca    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0070d6cc    e84ff20a00
                         cmp                eax, 0x03                                     // 0x0070d6d1    83f803
                         {disp8} jne        _jmp_addr_0x0070d6e0                          // 0x0070d6d4    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226990], 0x00000000 // 0x0070d6d6    c70590c9be0000000000
_jmp_addr_0x0070d6e0:    {disp32} mov       edx, dword ptr [esi + 0x00000214]             // 0x0070d6e0    8b9614020000
                         xor.s              ecx, ecx                                      // 0x0070d6e6    33c9
                         mov                cl, byte ptr [edi]                            // 0x0070d6e8    8a0f
                         add                ecx, 0x4                                      // 0x0070d6ea    83c104
                         add.s              edx, ecx                                      // 0x0070d6ed    03d1
                         {disp32} mov       dword ptr [esi + 0x00000214], edx             // 0x0070d6ef    899614020000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x0070d6f5    a190c9be00
                         test               eax, eax                                      // 0x0070d6fa    85c0
                         {disp8} je         _jmp_addr_0x0070d72f                          // 0x0070d6fc    7431
                         push               0x0                                           // 0x0070d6fe    6a00
                         push               0x1                                           // 0x0070d700    6a01
                         {disp8} lea        edi, dword ptr [ebx + 0x10]                   // 0x0070d702    8d7b10
                         push               edi                                           // 0x0070d705    57
                         mov.s              ecx, esi                                      // 0x0070d706    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0070d708    e813f20a00
                         cmp                eax, 0x03                                     // 0x0070d70d    83f803
                         {disp8} jne        _jmp_addr_0x0070d71c                          // 0x0070d710    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226990], 0x00000000 // 0x0070d712    c70590c9be0000000000
_jmp_addr_0x0070d71c:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0070d71c    8b8614020000
                         xor.s              edx, edx                                      // 0x0070d722    33d2
                         mov                dl, byte ptr [edi]                            // 0x0070d724    8a17
                         inc                edx                                           // 0x0070d726    42
                         add.s              eax, edx                                      // 0x0070d727    03c2
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0070d729    898614020000
_jmp_addr_0x0070d72f:    pop                edi                                           // 0x0070d72f    5f
                         pop                esi                                           // 0x0070d730    5e
                         mov                eax, 0x00000001                               // 0x0070d731    b801000000
                         pop                ebx                                           // 0x0070d736    5b
                         ret                0x0004                                        // 0x0070d737    c20400
                         nop                                                              // 0x0070d73a    90
                         nop                                                              // 0x0070d73b    90
                         nop                                                              // 0x0070d73c    90
                         nop                                                              // 0x0070d73d    90
                         nop                                                              // 0x0070d73e    90
                         nop                                                              // 0x0070d73f    90
_jmp_addr_0x0070d740:    push               ebp                                           // 0x0070d740    55
                         push               esi                                           // 0x0070d741    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x0070d742    8b74240c
                         push               edi                                           // 0x0070d746    57
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x0070d747    8d442410
                         mov.s              edi, ecx                                      // 0x0070d74b    8bf9
                         push               eax                                           // 0x0070d74d    50
                         mov.s              ecx, esi                                      // 0x0070d74e    8bce
                         call               @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x0070d750    e82b4ae5ff
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0070d755    8b4c2410
                         push               ecx                                           // 0x0070d759    51
                         mov.s              ecx, edi                                      // 0x0070d75a    8bcf
                         call               _jmp_addr_0x0070d840                          // 0x0070d75c    e8df000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x0070d761    a194c9be00
                         test               eax, eax                                      // 0x0070d766    85c0
                         {disp8} lea        ebp, dword ptr [edi + 0x0c]                   // 0x0070d768    8d6f0c
                         {disp8} je         _jmp_addr_0x0070d79e                          // 0x0070d76b    7431
                         push               0x0                                           // 0x0070d76d    6a00
                         push               0x4                                           // 0x0070d76f    6a04
                         push               ebp                                           // 0x0070d771    55
                         mov.s              ecx, esi                                      // 0x0070d772    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0070d774    e867f10a00
                         cmp                eax, 0x03                                     // 0x0070d779    83f803
                         {disp8} jne        _jmp_addr_0x0070d788                          // 0x0070d77c    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226994], 0x00000000 // 0x0070d77e    c70594c9be0000000000
_jmp_addr_0x0070d788:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0070d788    8b8614020000
                         xor.s              edx, edx                                      // 0x0070d78e    33d2
                         {disp8} mov        dl, byte ptr [ebp + 0x00]                     // 0x0070d790    8a5500
                         add                edx, 0x04                                     // 0x0070d793    83c204
                         add.s              eax, edx                                      // 0x0070d796    03c2
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0070d798    898614020000
_jmp_addr_0x0070d79e:    {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x0070d79e    a194c9be00
                         test               eax, eax                                      // 0x0070d7a3    85c0
                         {disp8} lea        ebp, dword ptr [edi + 0x10]                   // 0x0070d7a5    8d6f10
                         {disp8} je         _jmp_addr_0x0070d7d9                          // 0x0070d7a8    742f
                         push               0x0                                           // 0x0070d7aa    6a00
                         push               0x1                                           // 0x0070d7ac    6a01
                         push               ebp                                           // 0x0070d7ae    55
                         mov.s              ecx, esi                                      // 0x0070d7af    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0070d7b1    e82af10a00
                         cmp                eax, 0x03                                     // 0x0070d7b6    83f803
                         {disp8} jne        _jmp_addr_0x0070d7c5                          // 0x0070d7b9    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226994], 0x00000000 // 0x0070d7bb    c70594c9be0000000000
_jmp_addr_0x0070d7c5:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0070d7c5    8b8e14020000
                         xor.s              eax, eax                                      // 0x0070d7cb    33c0
                         {disp8} mov        al, byte ptr [ebp + 0x00]                     // 0x0070d7cd    8a4500
                         inc                eax                                           // 0x0070d7d0    40
                         add.s              ecx, eax                                      // 0x0070d7d1    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0070d7d3    898e14020000
_jmp_addr_0x0070d7d9:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0070d7d9    8b442410
                         test               eax, eax                                      // 0x0070d7dd    85c0
                         {disp8} jne        _jmp_addr_0x0070d7ee                          // 0x0070d7df    750d
                         cmp                byte ptr [ebp + 0x00], 0x00                   // 0x0070d7e1    807d0000
                         {disp8} je         _jmp_addr_0x0070d7ee                          // 0x0070d7e5    7407
                         mov.s              ecx, edi                                      // 0x0070d7e7    8bcf
                         call               _jmp_addr_0x00436ba0                          // 0x0070d7e9    e8b293d2ff
_jmp_addr_0x0070d7ee:    pop                edi                                           // 0x0070d7ee    5f
                         pop                esi                                           // 0x0070d7ef    5e
                         mov                eax, 0x00000001                               // 0x0070d7f0    b801000000
                         pop                ebp                                           // 0x0070d7f5    5d
                         ret                0x0004                                        // 0x0070d7f6    c20400
                         nop                                                              // 0x0070d7f9    90
                         nop                                                              // 0x0070d7fa    90
                         nop                                                              // 0x0070d7fb    90
                         nop                                                              // 0x0070d7fc    90
                         nop                                                              // 0x0070d7fd    90
                         nop                                                              // 0x0070d7fe    90
                         nop                                                              // 0x0070d7ff    90
_jmp_addr_0x0070d800:    push               esi                                           // 0x0070d800    56
                         mov.s              esi, ecx                                      // 0x0070d801    8bf1
                         call               _jmp_addr_0x0070d810                          // 0x0070d803    e808000000
                         {disp8} mov        byte ptr [esi + 0x10], 0x00                   // 0x0070d808    c6461000
                         pop                esi                                           // 0x0070d80c    5e
                         ret                                                              // 0x0070d80d    c3
                         nop                                                              // 0x0070d80e    90
                         nop                                                              // 0x0070d80f    90
_jmp_addr_0x0070d810:    xor.s              eax, eax                                      // 0x0070d810    33c0
                         {disp8} mov        dword ptr [ecx + 0x08], eax                   // 0x0070d812    894108
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x0070d815    894104
                         {disp8} mov        dword ptr [ecx + 0x0c], eax                   // 0x0070d818    89410c
                         ret                                                              // 0x0070d81b    c3
                         nop                                                              // 0x0070d81c    90
                         nop                                                              // 0x0070d81d    90
                         nop                                                              // 0x0070d81e    90
                         nop                                                              // 0x0070d81f    90
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x0070d820    8b542404
                         {disp8} mov        dword ptr [ecx + 0x04], edx                   // 0x0070d824    895104
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x0070d827    8b542408
                         xor.s              eax, eax                                      // 0x0070d82b    33c0
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x0070d82d    895108
                         cmp                byte ptr [ecx + 0x10], al                     // 0x0070d830    384110
                         {disp8} mov        dword ptr [ecx + 0x0c], eax                   // 0x0070d833    89410c
                         {disp8} je         _jmp_addr_0x0070d83b                          // 0x0070d836    7403
                         {disp8} mov        byte ptr [ecx + 0x10], al                     // 0x0070d838    884110
_jmp_addr_0x0070d83b:    ret                0x0008                                        // 0x0070d83b    c20800
                         nop                                                              // 0x0070d83e    90
                         nop                                                              // 0x0070d83f    90
_jmp_addr_0x0070d840:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0070d840    8b442404
                         push               esi                                           // 0x0070d844    56
                         mov.s              esi, ecx                                      // 0x0070d845    8bf1
                         push               eax                                           // 0x0070d847    50
                         {disp8} mov        dword ptr [esi + 0x0c], 0x00000000            // 0x0070d848    c7460c00000000
                         call               @Set__8BaseInfoFP4Base@12                     // 0x0070d84f    e85c93d2ff
                         {disp8} mov        al, byte ptr [esi + 0x10]                     // 0x0070d854    8a4610
                         test               al, al                                        // 0x0070d857    84c0
                         {disp8} je         _jmp_addr_0x0070d85f                          // 0x0070d859    7404
                         {disp8} mov        byte ptr [esi + 0x10], 0x00                   // 0x0070d85b    c6461000
_jmp_addr_0x0070d85f:    pop                esi                                           // 0x0070d85f    5e
                         ret                0x0004                                        // 0x0070d860    c20400
                         nop                                                              // 0x0070d863    90
                         nop                                                              // 0x0070d864    90
                         nop                                                              // 0x0070d865    90
                         nop                                                              // 0x0070d866    90
                         nop                                                              // 0x0070d867    90
                         nop                                                              // 0x0070d868    90
                         nop                                                              // 0x0070d869    90
                         nop                                                              // 0x0070d86a    90
                         nop                                                              // 0x0070d86b    90
                         nop                                                              // 0x0070d86c    90
                         nop                                                              // 0x0070d86d    90
                         nop                                                              // 0x0070d86e    90
                         nop                                                              // 0x0070d86f    90
_jmp_addr_0x0070d870:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0070d870    8b442408
                         push               esi                                           // 0x0070d874    56
                         mov.s              esi, ecx                                      // 0x0070d875    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x0070d877    8b4c2408
                         push               ecx                                           // 0x0070d87b    51
                         mov.s              ecx, esi                                      // 0x0070d87c    8bce
                         {disp8} mov        dword ptr [esi + 0x0c], eax                   // 0x0070d87e    89460c
                         call               @Set__8BaseInfoFP4Base@12                     // 0x0070d881    e82a93d2ff
                         {disp8} mov        al, byte ptr [esi + 0x10]                     // 0x0070d886    8a4610
                         test               al, al                                        // 0x0070d889    84c0
                         {disp8} je         _jmp_addr_0x0070d891                          // 0x0070d88b    7404
                         {disp8} mov        byte ptr [esi + 0x10], 0x00                   // 0x0070d88d    c6461000
_jmp_addr_0x0070d891:    pop                esi                                           // 0x0070d891    5e
                         ret                0x0008                                        // 0x0070d892    c20800
                         nop                                                              // 0x0070d895    90
                         nop                                                              // 0x0070d896    90
                         nop                                                              // 0x0070d897    90
                         nop                                                              // 0x0070d898    90
                         nop                                                              // 0x0070d899    90
                         nop                                                              // 0x0070d89a    90
                         nop                                                              // 0x0070d89b    90
                         nop                                                              // 0x0070d89c    90
                         nop                                                              // 0x0070d89d    90
                         nop                                                              // 0x0070d89e    90
                         nop                                                              // 0x0070d89f    90
_globl_ct_0x0070d8a0:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x0070d8a0    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x0070d8a6    b001
                         test               al, cl                                        // 0x0070d8a8    84c8
                         {disp8} jne        _jmp_addr_0x0070d8b4                          // 0x0070d8aa    7508
                         or.s               cl, al                                        // 0x0070d8ac    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x0070d8ae    880d34c9fa00
_jmp_addr_0x0070d8b4:    {disp32} jmp       _jmp_addr_0x0070d8c0                          // 0x0070d8b4    e907000000
                         nop                                                              // 0x0070d8b9    90
                         nop                                                              // 0x0070d8ba    90
                         nop                                                              // 0x0070d8bb    90
                         nop                                                              // 0x0070d8bc    90
                         nop                                                              // 0x0070d8bd    90
                         nop                                                              // 0x0070d8be    90
                         nop                                                              // 0x0070d8bf    90
_jmp_addr_0x0070d8c0:    push               0x00407870                                    // 0x0070d8c0    6870784000
                         call               _atexit                                       // 0x0070d8c5    e8c77e0b00
                         pop                ecx                                           // 0x0070d8ca    59
                         ret                                                              // 0x0070d8cb    c3
                         nop                                                              // 0x0070d8cc    90
                         nop                                                              // 0x0070d8cd    90
                         nop                                                              // 0x0070d8ce    90
                         nop                                                              // 0x0070d8cf    90
_jmp_addr_0x0070d8d0:    push               ebx                                           // 0x0070d8d0    53
                         push               esi                                           // 0x0070d8d1    56
                         push               edi                                           // 0x0070d8d2    57
                         push               0xb                                           // 0x0070d8d3    6a0b
                         push               0x00c20928                                    // 0x0070d8d5    682809c200
                         push               0x28                                          // 0x0070d8da    6a28
                         call               ?__nw@Base@@SAPAXK@Z                          // 0x0070d8dc    e80f8ed2ff
                         mov.s              esi, eax                                      // 0x0070d8e1    8bf0
                         xor.s              ebx, ebx                                      // 0x0070d8e3    33db
                         add                esp, 0x0c                                     // 0x0070d8e5    83c40c
                         cmp.s              esi, ebx                                      // 0x0070d8e8    3bf3
                         {disp8} je         _jmp_addr_0x0070d929                          // 0x0070d8ea    743d
                         mov.s              ecx, esi                                      // 0x0070d8ec    8bce
                         call               ??0GameThing@@QAE@XZ                          // 0x0070d8ee    e81d21e6ff
                         {disp8} mov        dword ptr [esi + 0x14], ebx                   // 0x0070d8f3    895e14
                         {disp8} mov        dword ptr [esi + 0x18], ebx                   // 0x0070d8f6    895e18
                         {disp8} mov        dword ptr [esi + 0x1c], ebx                   // 0x0070d8f9    895e1c
                         {disp8} mov        dword ptr [esi + 0x20], ebx                   // 0x0070d8fc    895e20
                         mov.s              ecx, esi                                      // 0x0070d8ff    8bce
                         mov                dword ptr [esi], 0x008c31a0                   // 0x0070d901    c706a0318c00
                         call               ?SetToZero@GameThingWithPos@@QAEXXZ           // 0x0070d907    e8c42ce6ff
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0070d90c    8b442410
                         mov                ecx, dword ptr [eax]                          // 0x0070d910    8b08
                         {disp8} mov        dword ptr [esi + 0x14], ecx                   // 0x0070d912    894e14
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x0070d915    8b5004
                         {disp8} mov        dword ptr [esi + 0x18], edx                   // 0x0070d918    895618
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0070d91b    8b4008
                         {disp8} mov        dword ptr [esi + 0x1c], eax                   // 0x0070d91e    89461c
                         mov                dword ptr [esi], 0x008e10b0                   // 0x0070d921    c706b0108e00
                         {disp8} jmp        _jmp_addr_0x0070d92b                          // 0x0070d927    eb02
_jmp_addr_0x0070d929:    xor.s              esi, esi                                      // 0x0070d929    33f6
_jmp_addr_0x0070d92b:    cmp.s              esi, ebx                                      // 0x0070d92b    3bf3
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070d92d    8b0d5c19d000
                         {disp32} lea       edi, dword ptr [ecx + 0x00205c8c]             // 0x0070d933    8db98c5c2000
                         {disp8} je         _jmp_addr_0x0070d955                          // 0x0070d939    741a
                         push               0x8                                           // 0x0070d93b    6a08
                         call               ??2@YAPAXI@Z                                  // 0x0070d93d    e8ac8b0b00
                         add                esp, 0x04                                     // 0x0070d942    83c404
                         cmp.s              eax, ebx                                      // 0x0070d945    3bc3
                         {disp8} je         _jmp_addr_0x0070d955                          // 0x0070d947    740c
                         mov                ecx, dword ptr [edi]                          // 0x0070d949    8b0f
                         {disp8} mov        dword ptr [eax + 0x04], esi                   // 0x0070d94b    897004
                         mov                dword ptr [eax], ecx                          // 0x0070d94e    8908
                         mov                dword ptr [edi], eax                          // 0x0070d950    8907
                         {disp8} inc        dword ptr [edi + 0x04]                        // 0x0070d952    ff4704
_jmp_addr_0x0070d955:    pop                edi                                           // 0x0070d955    5f
                         mov.s              eax, esi                                      // 0x0070d956    8bc6
                         pop                esi                                           // 0x0070d958    5e
                         pop                ebx                                           // 0x0070d959    5b
                         ret                                                              // 0x0070d95a    c3
                         nop                                                              // 0x0070d95b    90
                         nop                                                              // 0x0070d95c    90
                         nop                                                              // 0x0070d95d    90
                         nop                                                              // 0x0070d95e    90
                         nop                                                              // 0x0070d95f    90
?GetScriptObjectType@ScriptMarker@@UAEIXZ:
                         mov                eax, 0x00000001                               // 0x0070d960    b801000000
                         ret                                                              // 0x0070d965    c3
                         nop                                                              // 0x0070d966    90
                         nop                                                              // 0x0070d967    90
                         nop                                                              // 0x0070d968    90
                         nop                                                              // 0x0070d969    90
                         nop                                                              // 0x0070d96a    90
                         nop                                                              // 0x0070d96b    90
                         nop                                                              // 0x0070d96c    90
                         nop                                                              // 0x0070d96d    90
                         nop                                                              // 0x0070d96e    90
                         nop                                                              // 0x0070d96f    90
?ToBeDeleted@ScriptMarker@@UAEXH@Z:
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0070d970    a15c19d000
                         push               ebx                                           // 0x0070d975    53
                         push               ebp                                           // 0x0070d976    55
                         push               edi                                           // 0x0070d977    57
                         {disp32} lea       edi, dword ptr [eax + 0x00205c8c]             // 0x0070d978    8db88c5c2000
                         mov                eax, dword ptr [edi]                          // 0x0070d97e    8b07
                         xor.s              ebx, ebx                                      // 0x0070d980    33db
                         test               eax, eax                                      // 0x0070d982    85c0
                         mov.s              ebp, ecx                                      // 0x0070d984    8be9
                         {disp8} je         _jmp_addr_0x0070d9b5                          // 0x0070d986    742d
                         push               esi                                           // 0x0070d988    56
_jmp_addr_0x0070d989:    cmp                dword ptr [eax + 0x04], ebp                   // 0x0070d989    396804
                         mov                esi, dword ptr [eax]                          // 0x0070d98c    8b30
                         {disp8} jne        _jmp_addr_0x0070d9ac                          // 0x0070d98e    751c
                         cmp                eax, dword ptr [edi]                          // 0x0070d990    3b07
                         {disp8} jne        _jmp_addr_0x0070d998                          // 0x0070d992    7504
                         mov                dword ptr [edi], esi                          // 0x0070d994    8937
                         {disp8} jmp        _jmp_addr_0x0070d99a                          // 0x0070d996    eb02
_jmp_addr_0x0070d998:    mov                dword ptr [ebx], esi                          // 0x0070d998    8933
_jmp_addr_0x0070d99a:    {disp8} mov        edx, dword ptr [edi + 0x04]                   // 0x0070d99a    8b5704
                         dec                edx                                           // 0x0070d99d    4a
                         push               eax                                           // 0x0070d99e    50
                         {disp8} mov        dword ptr [edi + 0x04], edx                   // 0x0070d99f    895704
                         call               ??3@YAXPAX@Z                                  // 0x0070d9a2    e8f1140a00
                         add                esp, 0x04                                     // 0x0070d9a7    83c404
                         {disp8} jmp        _jmp_addr_0x0070d9ae                          // 0x0070d9aa    eb02
_jmp_addr_0x0070d9ac:    mov.s              ebx, eax                                      // 0x0070d9ac    8bd8
_jmp_addr_0x0070d9ae:    test               esi, esi                                      // 0x0070d9ae    85f6
                         mov.s              eax, esi                                      // 0x0070d9b0    8bc6
                         {disp8} jne        _jmp_addr_0x0070d989                          // 0x0070d9b2    75d5
                         pop                esi                                           // 0x0070d9b4    5e
_jmp_addr_0x0070d9b5:    {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0070d9b5    8b4c2410
                         push               ecx                                           // 0x0070d9b9    51
                         mov.s              ecx, ebp                                      // 0x0070d9ba    8bcd
                         call               ?ToBeDeleted@GameThingWithPos@@UAEXH@Z        // 0x0070d9bc    e83f24e6ff
                         pop                edi                                           // 0x0070d9c1    5f
                         pop                ebp                                           // 0x0070d9c2    5d
                         pop                ebx                                           // 0x0070d9c3    5b
                         ret                0x0004                                        // 0x0070d9c4    c20400
                         nop                                                              // 0x0070d9c7    90
                         nop                                                              // 0x0070d9c8    90
                         nop                                                              // 0x0070d9c9    90
                         nop                                                              // 0x0070d9ca    90
                         nop                                                              // 0x0070d9cb    90
                         nop                                                              // 0x0070d9cc    90
                         nop                                                              // 0x0070d9cd    90
                         nop                                                              // 0x0070d9ce    90
                         nop                                                              // 0x0070d9cf    90
?Save@ScriptMarker@@UAEIAAVGameOSFile@@@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0070d9d0    8b442404
                         push               eax                                           // 0x0070d9d4    50
                         call               ?Save@GameThingWithPos@@UAEXPAUGameOSFile@@@Z // 0x0070d9d5    e8162ae6ff
                         neg                eax                                           // 0x0070d9da    f7d8
                         sbb.s              eax, eax                                      // 0x0070d9dc    1bc0
                         neg                eax                                           // 0x0070d9de    f7d8
                         ret                0x0004                                        // 0x0070d9e0    c20400
                         nop                                                              // 0x0070d9e3    90
                         nop                                                              // 0x0070d9e4    90
                         nop                                                              // 0x0070d9e5    90
                         nop                                                              // 0x0070d9e6    90
                         nop                                                              // 0x0070d9e7    90
                         nop                                                              // 0x0070d9e8    90
                         nop                                                              // 0x0070d9e9    90
                         nop                                                              // 0x0070d9ea    90
                         nop                                                              // 0x0070d9eb    90
                         nop                                                              // 0x0070d9ec    90
                         nop                                                              // 0x0070d9ed    90
                         nop                                                              // 0x0070d9ee    90
                         nop                                                              // 0x0070d9ef    90
?Load@ScriptMarker@@UAEIAAVGameOSFile@@@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0070d9f0    8b442404
                         push               eax                                           // 0x0070d9f4    50
                         call               ?Load@GameThingWithPos@@QAEIAAVGameOSFile@@@Z // 0x0070d9f5    e8a62ae6ff
                         neg                eax                                           // 0x0070d9fa    f7d8
                         sbb.s              eax, eax                                      // 0x0070d9fc    1bc0
                         neg                eax                                           // 0x0070d9fe    f7d8
                         ret                0x0004                                        // 0x0070da00    c20400
                         nop                                                              // 0x0070da03    90
                         nop                                                              // 0x0070da04    90
                         nop                                                              // 0x0070da05    90
                         nop                                                              // 0x0070da06    90
                         nop                                                              // 0x0070da07    90
                         nop                                                              // 0x0070da08    90
                         nop                                                              // 0x0070da09    90
                         nop                                                              // 0x0070da0a    90
                         nop                                                              // 0x0070da0b    90
                         nop                                                              // 0x0070da0c    90
                         nop                                                              // 0x0070da0d    90
                         nop                                                              // 0x0070da0e    90
                         nop                                                              // 0x0070da0f    90
_globl_ct_0x0070da10:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x0070da10    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x0070da16    b001
                         test               al, cl                                        // 0x0070da18    84c8
                         {disp8} jne        _jmp_addr_0x0070da24                          // 0x0070da1a    7508
                         or.s               cl, al                                        // 0x0070da1c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x0070da1e    880d34c9fa00
_jmp_addr_0x0070da24:    {disp32} jmp       _jmp_addr_0x0070da30                          // 0x0070da24    e907000000
                         nop                                                              // 0x0070da29    90
                         nop                                                              // 0x0070da2a    90
                         nop                                                              // 0x0070da2b    90
                         nop                                                              // 0x0070da2c    90
                         nop                                                              // 0x0070da2d    90
                         nop                                                              // 0x0070da2e    90
                         nop                                                              // 0x0070da2f    90
_jmp_addr_0x0070da30:    push               0x00407870                                    // 0x0070da30    6870784000
                         call               _atexit                                       // 0x0070da35    e8577d0b00
                         pop                ecx                                           // 0x0070da3a    59
                         ret                                                              // 0x0070da3b    c3
                         nop                                                              // 0x0070da3c    90
                         nop                                                              // 0x0070da3d    90
                         nop                                                              // 0x0070da3e    90
                         nop                                                              // 0x0070da3f    90
_globl_ct_0x0070da40:    {disp32} jmp       _jmp_addr_0x0070da50                          // 0x0070da40    e90b000000
                         nop                                                              // 0x0070da45    90
                         nop                                                              // 0x0070da46    90
                         nop                                                              // 0x0070da47    90
                         nop                                                              // 0x0070da48    90
                         nop                                                              // 0x0070da49    90
                         nop                                                              // 0x0070da4a    90
                         nop                                                              // 0x0070da4b    90
                         nop                                                              // 0x0070da4c    90
                         nop                                                              // 0x0070da4d    90
                         nop                                                              // 0x0070da4e    90
                         nop                                                              // 0x0070da4f    90
_jmp_addr_0x0070da50:    {disp32} mov       dword ptr [data_bytes + 0x3d3004], 0xffffffff // 0x0070da50    c7050490d900ffffffff
                         ret                                                              // 0x0070da5a    c3
                         nop                                                              // 0x0070da5b    90
                         nop                                                              // 0x0070da5c    90
                         nop                                                              // 0x0070da5d    90
                         nop                                                              // 0x0070da5e    90
                         nop                                                              // 0x0070da5f    90
_globl_ct_0x0070da60:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x0070da60    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x0070da66    b001
                         test               al, cl                                        // 0x0070da68    84c8
                         {disp8} jne        _jmp_addr_0x0070da74                          // 0x0070da6a    7508
                         or.s               cl, al                                        // 0x0070da6c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x0070da6e    880d34c9fa00
_jmp_addr_0x0070da74:    {disp32} jmp       _jmp_addr_0x0070da80                          // 0x0070da74    e907000000
                         nop                                                              // 0x0070da79    90
                         nop                                                              // 0x0070da7a    90
                         nop                                                              // 0x0070da7b    90
                         nop                                                              // 0x0070da7c    90
                         nop                                                              // 0x0070da7d    90
                         nop                                                              // 0x0070da7e    90
                         nop                                                              // 0x0070da7f    90
_jmp_addr_0x0070da80:    push               0x00407870                                    // 0x0070da80    6870784000
                         call               _atexit                                       // 0x0070da85    e8077d0b00
                         pop                ecx                                           // 0x0070da8a    59
                         ret                                                              // 0x0070da8b    c3
                         nop                                                              // 0x0070da8c    90
                         nop                                                              // 0x0070da8d    90
                         nop                                                              // 0x0070da8e    90
                         nop                                                              // 0x0070da8f    90
_globl_ct_0x0070da90:    {disp32} jmp       _jmp_addr_0x0070daa0                          // 0x0070da90    e90b000000
                         nop                                                              // 0x0070da95    90
                         nop                                                              // 0x0070da96    90
                         nop                                                              // 0x0070da97    90
                         nop                                                              // 0x0070da98    90
                         nop                                                              // 0x0070da99    90
                         nop                                                              // 0x0070da9a    90
                         nop                                                              // 0x0070da9b    90
                         nop                                                              // 0x0070da9c    90
                         nop                                                              // 0x0070da9d    90
                         nop                                                              // 0x0070da9e    90
                         nop                                                              // 0x0070da9f    90
_jmp_addr_0x0070daa0:    {disp32} mov       dword ptr [data_bytes + 0x3d3010], 0xffffffff // 0x0070daa0    c7051090d900ffffffff
                         ret                                                              // 0x0070daaa    c3
                         nop                                                              // 0x0070daab    90
                         nop                                                              // 0x0070daac    90
                         nop                                                              // 0x0070daad    90
                         nop                                                              // 0x0070daae    90
                         nop                                                              // 0x0070daaf    90
_globl_ct_0x0070dab0:    {disp32} jmp       _jmp_addr_0x0070dac0                          // 0x0070dab0    e90b000000
                         nop                                                              // 0x0070dab5    90
                         nop                                                              // 0x0070dab6    90
                         nop                                                              // 0x0070dab7    90
                         nop                                                              // 0x0070dab8    90
                         nop                                                              // 0x0070dab9    90
                         nop                                                              // 0x0070daba    90
                         nop                                                              // 0x0070dabb    90
                         nop                                                              // 0x0070dabc    90
                         nop                                                              // 0x0070dabd    90
                         nop                                                              // 0x0070dabe    90
                         nop                                                              // 0x0070dabf    90
_jmp_addr_0x0070dac0:    {disp32} fld       dword ptr [rdata_bytes + 0x99b24]             // 0x0070dac0    d905242b9400
                         {disp32} fmul      dword ptr [rdata_bytes + 0x99b20]             // 0x0070dac6    d80d202b9400
                         {disp32} fstp      dword ptr [data_bytes + 0x3d300c]             // 0x0070dacc    d91d0c90d900
                         ret                                                              // 0x0070dad2    c3
                         nop                                                              // 0x0070dad3    90
                         nop                                                              // 0x0070dad4    90
                         nop                                                              // 0x0070dad5    90
                         nop                                                              // 0x0070dad6    90
                         nop                                                              // 0x0070dad7    90
                         nop                                                              // 0x0070dad8    90
                         nop                                                              // 0x0070dad9    90
                         nop                                                              // 0x0070dada    90
                         nop                                                              // 0x0070dadb    90
                         nop                                                              // 0x0070dadc    90
                         nop                                                              // 0x0070dadd    90
                         nop                                                              // 0x0070dade    90
                         nop                                                              // 0x0070dadf    90
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070dae0    8b0d105cd900
                         sub                esp, 0x0000040c                               // 0x0070dae6    81ec0c040000
                         push               esi                                           // 0x0070daec    56
                         push               edi                                           // 0x0070daed    57
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x0070daee    8d442408
                         push               eax                                           // 0x0070daf2    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0070daf3    e8c890feff
                         push               eax                                           // 0x0070daf8    50
                         call               _jmp_addr_0x0070d220                          // 0x0070daf9    e822f7ffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070dafe    8b0d105cd900
                         add                esp, 0x04                                     // 0x0070db04    83c404
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x0070db07    8d542408
                         push               edx                                           // 0x0070db0b    52
                         mov.s              esi, eax                                      // 0x0070db0c    8bf0
                         call               _jmp_addr_0x006f6bc0                          // 0x0070db0e    e8ad90feff
                         test               esi, esi                                      // 0x0070db13    85f6
                         mov.s              edi, eax                                      // 0x0070db15    8bf8
                         {disp8} jne        _jmp_addr_0x0070db23                          // 0x0070db17    750a
                         push               0x00c0c258                                    // 0x0070db19    6858c2c000
                         {disp32} jmp       _jmp_addr_0x0070e746                          // 0x0070db1e    e9230c0000
_jmp_addr_0x0070db23:    mov                eax, dword ptr [esi]                          // 0x0070db23    8b06
                         mov.s              ecx, esi                                      // 0x0070db25    8bce
                         call               dword ptr [eax + 0x3f8]                       // 0x0070db27    ff90f8030000
                         test               eax, eax                                      // 0x0070db2d    85c0
                         {disp8} je         _jmp_addr_0x0070db59                          // 0x0070db2f    7428
                         cmp                edi, 0x15                                     // 0x0070db31    83ff15
                         {disp8} je         _jmp_addr_0x0070db59                          // 0x0070db34    7423
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000            // 0x0070db36    c744240800000000
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x0070db3e    8b4c2408
                         push               0x2                                           // 0x0070db42    6a02
                         push               ecx                                           // 0x0070db44    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070db45    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070db4b    e85090feff
                         pop                edi                                           // 0x0070db50    5f
                         pop                esi                                           // 0x0070db51    5e
                         add                esp, 0x0000040c                               // 0x0070db52    81c40c040000
                         ret                                                              // 0x0070db58    c3
_jmp_addr_0x0070db59:    push               0x0                                           // 0x0070db59    6a00
                         push               0x009c8060                                    // 0x0070db5b    6860809c00
                         push               0x009c7f30                                    // 0x0070db60    68307f9c00
                         push               0x0                                           // 0x0070db65    6a00
                         push               esi                                           // 0x0070db67    56
                         call               ___RTDynamicCast                              // 0x0070db68    e8ac7e0b00
                         mov.s              ecx, eax                                      // 0x0070db6d    8bc8
                         {disp8} lea        eax, dword ptr [edi + -0x01]                  // 0x0070db6f    8d47ff
                         add                esp, 0x14                                     // 0x0070db72    83c414
                         cmp                eax, 0x23                                     // 0x0070db75    83f823
                         {disp32} ja        _jmp_addr_0x0070e74e                          // 0x0070db78    0f87d00b0000
                         jmp                dword ptr [eax*4 + 0x70e78c]                  // 0x0070db7e    ff24858ce77000
                         push               0x0                                           // 0x0070db85    6a00
                         push               0x009c7f50                                    // 0x0070db87    68507f9c00
                         push               0x009c7f30                                    // 0x0070db8c    68307f9c00
                         push               0x0                                           // 0x0070db91    6a00
                         push               esi                                           // 0x0070db93    56
                         call               ___RTDynamicCast                              // 0x0070db94    e8807e0b00
                         add                esp, 0x14                                     // 0x0070db99    83c414
                         test               eax, eax                                      // 0x0070db9c    85c0
                         {disp32} je        _jmp_addr_0x0070dcee                          // 0x0070db9e    0f844a010000
                         mov                edx, dword ptr [eax]                          // 0x0070dba4    8b10
                         mov.s              ecx, eax                                      // 0x0070dba6    8bc8
                         call               dword ptr [edx + 0x11c]                       // 0x0070dba8    ff921c010000
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x0070dbae    d95c2408
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0070dbb2    8b442408
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070dbb6    8b0d105cd900
                         push               0x2                                           // 0x0070dbbc    6a02
                         push               eax                                           // 0x0070dbbe    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070dbbf    e8dc8ffeff
                         pop                edi                                           // 0x0070dbc4    5f
                         pop                esi                                           // 0x0070dbc5    5e
                         add                esp, 0x0000040c                               // 0x0070dbc6    81c40c040000
                         ret                                                              // 0x0070dbcc    c3
                         push               0x0                                           // 0x0070dbcd    6a00
                         push               0x009c7f50                                    // 0x0070dbcf    68507f9c00
                         push               0x009c7f30                                    // 0x0070dbd4    68307f9c00
                         push               0x0                                           // 0x0070dbd9    6a00
                         push               esi                                           // 0x0070dbdb    56
                         call               ___RTDynamicCast                              // 0x0070dbdc    e8387e0b00
                         add                esp, 0x14                                     // 0x0070dbe1    83c414
                         test               eax, eax                                      // 0x0070dbe4    85c0
                         {disp32} je        _jmp_addr_0x0070dcee                          // 0x0070dbe6    0f8402010000
                         mov                edx, dword ptr [eax]                          // 0x0070dbec    8b10
                         mov.s              ecx, eax                                      // 0x0070dbee    8bc8
                         call               dword ptr [edx + 0x504]                       // 0x0070dbf0    ff9204050000
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070dbf6    8b0d105cd900
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1dcac]             // 0x0070dbfc    d80dac6c8c00
                         push               0x2                                           // 0x0070dc02    6a02
                         {disp32} fmul      dword ptr [rdata_bytes + 0x82380]             // 0x0070dc04    d80d80b39200
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x0070dc0a    d95c240c
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x0070dc0e    8b44240c
                         push               eax                                           // 0x0070dc12    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070dc13    e8888ffeff
                         pop                edi                                           // 0x0070dc18    5f
                         pop                esi                                           // 0x0070dc19    5e
                         add                esp, 0x0000040c                               // 0x0070dc1a    81c40c040000
                         ret                                                              // 0x0070dc20    c3
                         push               0x0                                           // 0x0070dc21    6a00
                         push               0x009c7f50                                    // 0x0070dc23    68507f9c00
                         push               0x009c7f30                                    // 0x0070dc28    68307f9c00
                         push               0x0                                           // 0x0070dc2d    6a00
                         push               esi                                           // 0x0070dc2f    56
                         call               ___RTDynamicCast                              // 0x0070dc30    e8e47d0b00
                         add                esp, 0x14                                     // 0x0070dc35    83c414
                         test               eax, eax                                      // 0x0070dc38    85c0
                         {disp32} je        _jmp_addr_0x0070dcee                          // 0x0070dc3a    0f84ae000000
                         mov                edx, dword ptr [eax]                          // 0x0070dc40    8b10
                         mov.s              ecx, eax                                      // 0x0070dc42    8bc8
                         call               dword ptr [edx + 0x50c]                       // 0x0070dc44    ff920c050000
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070dc4a    8b0d105cd900
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1dcac]             // 0x0070dc50    d80dac6c8c00
                         push               0x2                                           // 0x0070dc56    6a02
                         {disp32} fmul      dword ptr [rdata_bytes + 0x82380]             // 0x0070dc58    d80d80b39200
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x0070dc5e    d95c240c
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x0070dc62    8b44240c
                         push               eax                                           // 0x0070dc66    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070dc67    e8348ffeff
                         pop                edi                                           // 0x0070dc6c    5f
                         pop                esi                                           // 0x0070dc6d    5e
                         add                esp, 0x0000040c                               // 0x0070dc6e    81c40c040000
                         ret                                                              // 0x0070dc74    c3
                         push               0x0                                           // 0x0070dc75    6a00
                         push               0x009c7f50                                    // 0x0070dc77    68507f9c00
                         push               0x009c7f30                                    // 0x0070dc7c    68307f9c00
                         push               0x0                                           // 0x0070dc81    6a00
                         push               esi                                           // 0x0070dc83    56
                         call               ___RTDynamicCast                              // 0x0070dc84    e8907d0b00
                         mov.s              esi, eax                                      // 0x0070dc89    8bf0
                         add                esp, 0x14                                     // 0x0070dc8b    83c414
                         test               esi, esi                                      // 0x0070dc8e    85f6
                         {disp8} je         _jmp_addr_0x0070dcee                          // 0x0070dc90    745c
                         mov                edx, dword ptr [esi]                          // 0x0070dc92    8b16
                         mov.s              ecx, esi                                      // 0x0070dc94    8bce
                         call               dword ptr [edx + 0x49c]                       // 0x0070dc96    ff929c040000
                         test               eax, eax                                      // 0x0070dc9c    85c0
                         {disp8} je         _jmp_addr_0x0070dcb9                          // 0x0070dc9e    7419
                         test               byte ptr [esi + 0x00000089], 0x02             // 0x0070dca0    f6868900000002
                         {disp8} je         _jmp_addr_0x0070dcb1                          // 0x0070dca7    7408
                         {disp32} fld       dword ptr [esi + 0x00000080]                  // 0x0070dca9    d98680000000
                         {disp8} jmp        _jmp_addr_0x0070dcc3                          // 0x0070dcaf    eb12
_jmp_addr_0x0070dcb1:    {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x0070dcb1    d90598a38a00
                         {disp8} jmp        _jmp_addr_0x0070dcc3                          // 0x0070dcb7    eb0a
_jmp_addr_0x0070dcb9:    mov                eax, dword ptr [esi]                          // 0x0070dcb9    8b06
                         mov.s              ecx, esi                                      // 0x0070dcbb    8bce
                         call               dword ptr [eax + 0x508]                       // 0x0070dcbd    ff9008050000
_jmp_addr_0x0070dcc3:    {disp32} fmul      dword ptr [rdata_bytes + 0x1dcac]             // 0x0070dcc3    d80dac6c8c00
                         push               0x2                                           // 0x0070dcc9    6a02
                         {disp32} fmul      dword ptr [rdata_bytes + 0x82380]             // 0x0070dccb    d80d80b39200
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x0070dcd1    d95c240c
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x0070dcd5    8b4c240c
                         push               ecx                                           // 0x0070dcd9    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070dcda    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070dce0    e8bb8efeff
                         pop                edi                                           // 0x0070dce5    5f
                         pop                esi                                           // 0x0070dce6    5e
                         add                esp, 0x0000040c                               // 0x0070dce7    81c40c040000
                         ret                                                              // 0x0070dced    c3
_jmp_addr_0x0070dcee:    push               0x00c209dc                                    // 0x0070dcee    68dc09c200
                         {disp32} jmp       _jmp_addr_0x0070e746                          // 0x0070dcf3    e94e0a0000
                         xor.s              edx, edx                                      // 0x0070dcf8    33d2
                         {disp8} mov        dl, byte ptr [esi + 0x24]                     // 0x0070dcfa    8a5624
                         push               0x6                                           // 0x0070dcfd    6a06
                         shr                edx, 6                                        // 0x0070dcff    c1ea06
                         and                edx, 0x01                                     // 0x0070dd02    83e201
                         {disp32} jmp       _jmp_addr_0x0070e776                          // 0x0070dd05    e96c0a0000
                         mov                eax, dword ptr [esi]                          // 0x0070dd0a    8b06
                         mov.s              ecx, esi                                      // 0x0070dd0c    8bce
                         call               dword ptr [eax + 0x17c]                       // 0x0070dd0e    ff907c010000
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070dd14    8b0d105cd900
                         push               0x6                                           // 0x0070dd1a    6a06
                         push               eax                                           // 0x0070dd1c    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070dd1d    e87e8efeff
                         pop                edi                                           // 0x0070dd22    5f
                         pop                esi                                           // 0x0070dd23    5e
                         add                esp, 0x0000040c                               // 0x0070dd24    81c40c040000
                         ret                                                              // 0x0070dd2a    c3
                         mov                edx, dword ptr [esi]                          // 0x0070dd2b    8b16
                         mov.s              ecx, esi                                      // 0x0070dd2d    8bce
                         call               dword ptr [edx + 0x174]                       // 0x0070dd2f    ff9274010000
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070dd35    8b0d105cd900
                         push               0x6                                           // 0x0070dd3b    6a06
                         push               eax                                           // 0x0070dd3d    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070dd3e    e85d8efeff
                         pop                edi                                           // 0x0070dd43    5f
                         pop                esi                                           // 0x0070dd44    5e
                         add                esp, 0x0000040c                               // 0x0070dd45    81c40c040000
                         ret                                                              // 0x0070dd4b    c3
                         mov                eax, dword ptr [esi]                          // 0x0070dd4c    8b06
                         mov.s              ecx, esi                                      // 0x0070dd4e    8bce
                         call               dword ptr [eax + 0x120]                       // 0x0070dd50    ff9020010000
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x0070dd56    d95c2408
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x0070dd5a    8b4c2408
                         push               0x2                                           // 0x0070dd5e    6a02
                         push               ecx                                           // 0x0070dd60    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070dd61    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070dd67    e8348efeff
                         pop                edi                                           // 0x0070dd6c    5f
                         pop                esi                                           // 0x0070dd6d    5e
                         add                esp, 0x0000040c                               // 0x0070dd6e    81c40c040000
                         ret                                                              // 0x0070dd74    c3
                         test               ecx, ecx                                      // 0x0070dd75    85c9
                         {disp32} je        _jmp_addr_0x0070e741                          // 0x0070dd77    0f84c4090000
                         call               _jmp_addr_0x0047dbd0                          // 0x0070dd7d    e84efed6ff
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x0070dd82    d95c2408
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x0070dd86    8b542408
                         push               0x2                                           // 0x0070dd8a    6a02
                         {disp32} jmp       _jmp_addr_0x0070e776                          // 0x0070dd8c    e9e5090000
                         test               ecx, ecx                                      // 0x0070dd91    85c9
                         {disp32} je        _jmp_addr_0x0070e741                          // 0x0070dd93    0f84a8090000
                         call               _jmp_addr_0x0047db50                          // 0x0070dd99    e8b2fdd6ff
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x0070dd9e    d95c2408
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0070dda2    8b442408
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070dda6    8b0d105cd900
                         push               0x2                                           // 0x0070ddac    6a02
                         push               eax                                           // 0x0070ddae    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070ddaf    e8ec8dfeff
                         pop                edi                                           // 0x0070ddb4    5f
                         pop                esi                                           // 0x0070ddb5    5e
                         add                esp, 0x0000040c                               // 0x0070ddb6    81c40c040000
                         ret                                                              // 0x0070ddbc    c3
                         test               ecx, ecx                                      // 0x0070ddbd    85c9
                         {disp32} je        _jmp_addr_0x0070e741                          // 0x0070ddbf    0f847c090000
                         {disp32} mov       al, byte ptr [ecx + 0x0000037c]               // 0x0070ddc5    8a817c030000
                         test               al, al                                        // 0x0070ddcb    84c0
                         {disp8} mov        dword ptr [esp + 0x08], 0x3f800000            // 0x0070ddcd    c74424080000803f
                         {disp8} jne        _jmp_addr_0x0070dddf                          // 0x0070ddd5    7508
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000            // 0x0070ddd7    c744240800000000
_jmp_addr_0x0070dddf:    {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x0070dddf    8b4c2408
                         push               0x2                                           // 0x0070dde3    6a02
                         push               ecx                                           // 0x0070dde5    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070dde6    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070ddec    e8af8dfeff
                         pop                edi                                           // 0x0070ddf1    5f
                         pop                esi                                           // 0x0070ddf2    5e
                         add                esp, 0x0000040c                               // 0x0070ddf3    81c40c040000
                         ret                                                              // 0x0070ddf9    c3
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070ddfa    8b0d105cd900
                         xor.s              edx, edx                                      // 0x0070de00    33d2
                         {disp8} mov        dl, byte ptr [esi + 0x24]                     // 0x0070de02    8a5624
                         shr                dl, 2                                         // 0x0070de05    c0ea02
                         push               0x2                                           // 0x0070de08    6a02
                         and                edx, 0x01                                     // 0x0070de0a    83e201
                         {disp8} mov        dword ptr [esp + 0x0c], edx                   // 0x0070de0d    8954240c
                         {disp8} fild       dword ptr [esp + 0x0c]                        // 0x0070de11    db44240c
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x0070de15    d95c240c
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x0070de19    8b44240c
                         push               eax                                           // 0x0070de1d    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070de1e    e87d8dfeff
                         pop                edi                                           // 0x0070de23    5f
                         pop                esi                                           // 0x0070de24    5e
                         add                esp, 0x0000040c                               // 0x0070de25    81c40c040000
                         ret                                                              // 0x0070de2b    c3
                         xor.s              ecx, ecx                                      // 0x0070de2c    33c9
                         {disp8} mov        cl, byte ptr [esi + 0x24]                     // 0x0070de2e    8a4e24
                         shr                cl, 4                                         // 0x0070de31    c0e904
                         push               0x2                                           // 0x0070de34    6a02
                         and                ecx, 0x01                                     // 0x0070de36    83e101
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                   // 0x0070de39    894c240c
                         {disp8} fild       dword ptr [esp + 0x0c]                        // 0x0070de3d    db44240c
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x0070de41    d95c240c
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x0070de45    8b54240c
                         {disp32} jmp       _jmp_addr_0x0070e776                          // 0x0070de49    e928090000
                         test               byte ptr [esi + 0x24], 0x40                   // 0x0070de4e    f6462440
                         {disp32} je        _jmp_addr_0x0070deff                          // 0x0070de52    0f84a7000000
                         push               0x0                                           // 0x0070de58    6a00
                         push               0x009c7f50                                    // 0x0070de5a    68507f9c00
                         push               0x009c7f30                                    // 0x0070de5f    68307f9c00
                         push               0x0                                           // 0x0070de64    6a00
                         push               esi                                           // 0x0070de66    56
                         call               ___RTDynamicCast                              // 0x0070de67    e8ad7b0b00
                         add                esp, 0x14                                     // 0x0070de6c    83c414
                         test               eax, eax                                      // 0x0070de6f    85c0
                         {disp8} jne        _jmp_addr_0x0070dea9                          // 0x0070de71    7536
                         push               0x00c209c8                                    // 0x0070de73    68c809c200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070de78    e83384feff
                         add                esp, 0x04                                     // 0x0070de7d    83c404
_jmp_addr_0x0070de80:    mov                edx, dword ptr [esi]                          // 0x0070de80    8b16
                         mov.s              ecx, esi                                      // 0x0070de82    8bce
                         call               dword ptr [edx + 0x130]                       // 0x0070de84    ff9230010000
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x0070de8a    d95c2408
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0070de8e    8b442408
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070de92    8b0d105cd900
                         push               0x2                                           // 0x0070de98    6a02
                         push               eax                                           // 0x0070de9a    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070de9b    e8008dfeff
                         pop                edi                                           // 0x0070dea0    5f
                         pop                esi                                           // 0x0070dea1    5e
                         add                esp, 0x0000040c                               // 0x0070dea2    81c40c040000
                         ret                                                              // 0x0070dea8    c3
_jmp_addr_0x0070dea9:    push               eax                                           // 0x0070dea9    50
                         call               _jmp_addr_0x00646950                          // 0x0070deaa    e8a18af3ff
                         add                esp, 0x04                                     // 0x0070deaf    83c404
                         test               eax, eax                                      // 0x0070deb2    85c0
                         {disp8} je         _jmp_addr_0x0070de80                          // 0x0070deb4    74ca
                         {disp32} fld       dword ptr [eax + 0x00000104]                  // 0x0070deb6    d98004010000
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070debc    8b0d105cd900
                         {disp32} fld       dword ptr [eax + 0x00000108]                  // 0x0070dec2    d98008010000
                         push               0x2                                           // 0x0070dec8    6a02
                         {disp32} fld       dword ptr [eax + 0x0000010c]                  // 0x0070deca    d9800c010000
                         fld                st(0)                                         // 0x0070ded0    d9c0
                         fmul               st, st(1)                                     // 0x0070ded2    d8c9
                         fld                st(2)                                         // 0x0070ded4    d9c2
                         fmul               st, st(3)                                     // 0x0070ded6    d8cb
                         faddp              st(1), st                                     // 0x0070ded8    dec1
                         fld                st(3)                                         // 0x0070deda    d9c3
                         fmul               st, st(4)                                     // 0x0070dedc    d8cc
                         faddp              st(1), st                                     // 0x0070dede    dec1
                         fsqrt                                                            // 0x0070dee0    d9fa
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x0070dee2    d95c240c
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x0070dee6    8b44240c
                         push               eax                                           // 0x0070deea    50
                         fstp               st(0)                                         // 0x0070deeb    ddd8
                         fstp               st(0)                                         // 0x0070deed    ddd8
                         fstp               st(0)                                         // 0x0070deef    ddd8
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070def1    e8aa8cfeff
                         pop                edi                                           // 0x0070def6    5f
                         pop                esi                                           // 0x0070def7    5e
                         add                esp, 0x0000040c                               // 0x0070def8    81c40c040000
                         ret                                                              // 0x0070defe    c3
_jmp_addr_0x0070deff:    mov                edx, dword ptr [esi]                          // 0x0070deff    8b16
                         mov.s              ecx, esi                                      // 0x0070df01    8bce
                         call               dword ptr [edx + 0x3fc]                       // 0x0070df03    ff92fc030000
                         test               eax, eax                                      // 0x0070df09    85c0
                         {disp8} je         _jmp_addr_0x0070df33                          // 0x0070df0b    7426
                         mov.s              ecx, esi                                      // 0x0070df0d    8bce
                         call               _jmp_addr_0x007745a0                          // 0x0070df0f    e88c660600
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x0070df14    d95c2408
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0070df18    8b442408
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070df1c    8b0d105cd900
                         push               0x2                                           // 0x0070df22    6a02
                         push               eax                                           // 0x0070df24    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070df25    e8768cfeff
                         pop                edi                                           // 0x0070df2a    5f
                         pop                esi                                           // 0x0070df2b    5e
                         add                esp, 0x0000040c                               // 0x0070df2c    81c40c040000
                         ret                                                              // 0x0070df32    c3
_jmp_addr_0x0070df33:    mov                edx, dword ptr [esi]                          // 0x0070df33    8b16
                         mov.s              ecx, esi                                      // 0x0070df35    8bce
                         call               dword ptr [edx + 0x3c4]                       // 0x0070df37    ff92c4030000
                         test               eax, eax                                      // 0x0070df3d    85c0
                         {disp32} je        _jmp_addr_0x0070de80                          // 0x0070df3f    0f843bffffff
                         mov                eax, dword ptr [esi]                          // 0x0070df45    8b06
                         mov.s              ecx, esi                                      // 0x0070df47    8bce
                         call               dword ptr [eax + 0xaf4]                       // 0x0070df49    ff90f40a0000
                         test               eax, eax                                      // 0x0070df4f    85c0
                         {disp32} je        _jmp_addr_0x0070de80                          // 0x0070df51    0f8429ffffff
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000            // 0x0070df57    c744240800000000
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x0070df5f    8b4c2408
                         push               0x2                                           // 0x0070df63    6a02
                         push               ecx                                           // 0x0070df65    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070df66    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070df6c    e82f8cfeff
                         pop                edi                                           // 0x0070df71    5f
                         pop                esi                                           // 0x0070df72    5e
                         add                esp, 0x0000040c                               // 0x0070df73    81c40c040000
                         ret                                                              // 0x0070df79    c3
                         mov                edx, dword ptr [esi]                          // 0x0070df7a    8b16
                         mov.s              ecx, esi                                      // 0x0070df7c    8bce
                         call               dword ptr [edx + 0x138]                       // 0x0070df7e    ff9238010000
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x0070df84    d95c2408
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0070df88    8b442408
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070df8c    8b0d105cd900
                         push               0x2                                           // 0x0070df92    6a02
                         push               eax                                           // 0x0070df94    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070df95    e8068cfeff
                         pop                edi                                           // 0x0070df9a    5f
                         pop                esi                                           // 0x0070df9b    5e
                         add                esp, 0x0000040c                               // 0x0070df9c    81c40c040000
                         ret                                                              // 0x0070dfa2    c3
                         mov                edx, dword ptr [esi]                          // 0x0070dfa3    8b16
                         mov.s              ecx, esi                                      // 0x0070dfa5    8bce
                         call               dword ptr [edx + 0x140]                       // 0x0070dfa7    ff9240010000
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x0070dfad    d95c2408
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0070dfb1    8b442408
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070dfb5    8b0d105cd900
                         push               0x2                                           // 0x0070dfbb    6a02
                         push               eax                                           // 0x0070dfbd    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070dfbe    e8dd8bfeff
                         pop                edi                                           // 0x0070dfc3    5f
                         pop                esi                                           // 0x0070dfc4    5e
                         add                esp, 0x0000040c                               // 0x0070dfc5    81c40c040000
                         ret                                                              // 0x0070dfcb    c3
                         mov                edx, dword ptr [esi]                          // 0x0070dfcc    8b16
                         mov.s              ecx, esi                                      // 0x0070dfce    8bce
                         call               dword ptr [edx + 0x444]                       // 0x0070dfd0    ff9244040000
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070dfd6    8b0d105cd900
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x0070dfdc    89442408
                         {disp8} fild       dword ptr [esp + 0x08]                        // 0x0070dfe0    db442408
                         push               0x2                                           // 0x0070dfe4    6a02
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x0070dfe6    d95c240c
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x0070dfea    8b44240c
                         push               eax                                           // 0x0070dfee    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070dfef    e8ac8bfeff
                         pop                edi                                           // 0x0070dff4    5f
                         pop                esi                                           // 0x0070dff5    5e
                         add                esp, 0x0000040c                               // 0x0070dff6    81c40c040000
                         ret                                                              // 0x0070dffc    c3
                         push               0x0                                           // 0x0070dffd    6a00
                         push               0x009c8de8                                    // 0x0070dfff    68e88d9c00
                         push               0x009c7f30                                    // 0x0070e004    68307f9c00
                         push               0x0                                           // 0x0070e009    6a00
                         push               esi                                           // 0x0070e00b    56
                         call               ___RTDynamicCast                              // 0x0070e00c    e8087a0b00
                         add                esp, 0x14                                     // 0x0070e011    83c414
                         test               eax, eax                                      // 0x0070e014    85c0
                         {disp8} je         _jmp_addr_0x0070e051                          // 0x0070e016    7439
                         mov                edx, dword ptr [eax]                          // 0x0070e018    8b10
                         mov.s              ecx, eax                                      // 0x0070e01a    8bc8
                         call               dword ptr [edx + 0x8d0]                       // 0x0070e01c    ff92d0080000
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070e022    8b0d105cd900
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x0070e028    89442408
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000            // 0x0070e02c    c744240c00000000
                         {disp8} fild       qword ptr [esp + 0x08]                        // 0x0070e034    df6c2408
                         push               0x2                                           // 0x0070e038    6a02
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x0070e03a    d95c240c
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x0070e03e    8b44240c
                         push               eax                                           // 0x0070e042    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070e043    e8588bfeff
                         pop                edi                                           // 0x0070e048    5f
                         pop                esi                                           // 0x0070e049    5e
                         add                esp, 0x0000040c                               // 0x0070e04a    81c40c040000
                         ret                                                              // 0x0070e050    c3
_jmp_addr_0x0070e051:    push               0x00c209a8                                    // 0x0070e051    68a809c200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070e056    e85582feff
                         add                esp, 0x04                                     // 0x0070e05b    83c404
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000            // 0x0070e05e    c744240800000000
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x0070e066    8b4c2408
                         push               0x2                                           // 0x0070e06a    6a02
                         push               ecx                                           // 0x0070e06c    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070e06d    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070e073    e8288bfeff
                         pop                edi                                           // 0x0070e078    5f
                         pop                esi                                           // 0x0070e079    5e
                         add                esp, 0x0000040c                               // 0x0070e07a    81c40c040000
                         ret                                                              // 0x0070e080    c3
                         test               ecx, ecx                                      // 0x0070e081    85c9
                         {disp8} je         _jmp_addr_0x0070e0ad                          // 0x0070e083    7428
                         {disp32} mov       edx, dword ptr [ecx + 0x00000160]             // 0x0070e085    8b9160010000
                         {disp8} fld        dword ptr [edx + 0x0c]                        // 0x0070e08b    d9420c
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070e08e    8b0d105cd900
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x0070e094    d95c2408
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0070e098    8b442408
                         push               0x2                                           // 0x0070e09c    6a02
                         push               eax                                           // 0x0070e09e    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070e09f    e8fc8afeff
                         pop                edi                                           // 0x0070e0a4    5f
                         pop                esi                                           // 0x0070e0a5    5e
                         add                esp, 0x0000040c                               // 0x0070e0a6    81c40c040000
                         ret                                                              // 0x0070e0ac    c3
_jmp_addr_0x0070e0ad:    mov                edx, dword ptr [esi]                          // 0x0070e0ad    8b16
                         mov.s              ecx, esi                                      // 0x0070e0af    8bce
                         call               dword ptr [edx + 0xac]                        // 0x0070e0b1    ff92ac000000
                         test               eax, eax                                      // 0x0070e0b7    85c0
                         {disp8} je         _jmp_addr_0x0070e0dd                          // 0x0070e0b9    7422
                         {disp8} fld        dword ptr [eax + 0x6c]                        // 0x0070e0bb    d9406c
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070e0be    8b0d105cd900
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x0070e0c4    d95c2408
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0070e0c8    8b442408
                         push               0x2                                           // 0x0070e0cc    6a02
                         push               eax                                           // 0x0070e0ce    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070e0cf    e8cc8afeff
                         pop                edi                                           // 0x0070e0d4    5f
                         pop                esi                                           // 0x0070e0d5    5e
                         add                esp, 0x0000040c                               // 0x0070e0d6    81c40c040000
                         ret                                                              // 0x0070e0dc    c3
_jmp_addr_0x0070e0dd:    mov                edx, dword ptr [esi]                          // 0x0070e0dd    8b16
                         mov.s              ecx, esi                                      // 0x0070e0df    8bce
                         call               dword ptr [edx + 0x4c4]                       // 0x0070e0e1    ff92c4040000
                         test               eax, eax                                      // 0x0070e0e7    85c0
                         {disp8} je         _jmp_addr_0x0070e110                          // 0x0070e0e9    7425
                         {disp32} fld       dword ptr [eax + 0x00000088]                  // 0x0070e0eb    d98088000000
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070e0f1    8b0d105cd900
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x0070e0f7    d95c2408
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0070e0fb    8b442408
                         push               0x2                                           // 0x0070e0ff    6a02
                         push               eax                                           // 0x0070e101    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070e102    e8998afeff
                         pop                edi                                           // 0x0070e107    5f
                         pop                esi                                           // 0x0070e108    5e
                         add                esp, 0x0000040c                               // 0x0070e109    81c40c040000
                         ret                                                              // 0x0070e10f    c3
_jmp_addr_0x0070e110:    mov                edx, dword ptr [esi]                          // 0x0070e110    8b16
                         mov.s              ecx, esi                                      // 0x0070e112    8bce
                         call               dword ptr [edx + 0x4ac]                       // 0x0070e114    ff92ac040000
                         test               eax, eax                                      // 0x0070e11a    85c0
                         {disp8} je         _jmp_addr_0x0070e140                          // 0x0070e11c    7422
                         {disp8} fld        dword ptr [esi + 0x34]                        // 0x0070e11e    d94634
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070e121    8b0d105cd900
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x0070e127    d95c2408
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0070e12b    8b442408
                         push               0x2                                           // 0x0070e12f    6a02
                         push               eax                                           // 0x0070e131    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070e132    e8698afeff
                         pop                edi                                           // 0x0070e137    5f
                         pop                esi                                           // 0x0070e138    5e
                         add                esp, 0x0000040c                               // 0x0070e139    81c40c040000
                         ret                                                              // 0x0070e13f    c3
_jmp_addr_0x0070e140:    mov                edx, dword ptr [esi]                          // 0x0070e140    8b16
                         mov.s              ecx, esi                                      // 0x0070e142    8bce
                         call               dword ptr [edx + 0x400]                       // 0x0070e144    ff9200040000
                         test               eax, eax                                      // 0x0070e14a    85c0
                         {disp8} je         _jmp_addr_0x0070e173                          // 0x0070e14c    7425
                         {disp32} fld       dword ptr [esi + 0x000000e4]                  // 0x0070e14e    d986e4000000
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070e154    8b0d105cd900
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x0070e15a    d95c2408
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0070e15e    8b442408
                         push               0x2                                           // 0x0070e162    6a02
                         push               eax                                           // 0x0070e164    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070e165    e8368afeff
                         pop                edi                                           // 0x0070e16a    5f
                         pop                esi                                           // 0x0070e16b    5e
                         add                esp, 0x0000040c                               // 0x0070e16c    81c40c040000
                         ret                                                              // 0x0070e172    c3
_jmp_addr_0x0070e173:    push               0x00c2097c                                    // 0x0070e173    687c09c200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070e178    e83381feff
                         mov                edx, dword ptr [esi]                          // 0x0070e17d    8b16
                         add                esp, 0x04                                     // 0x0070e17f    83c404
                         mov.s              ecx, esi                                      // 0x0070e182    8bce
                         call               dword ptr [edx + 0x11c]                       // 0x0070e184    ff921c010000
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x0070e18a    d95c2408
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0070e18e    8b442408
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070e192    8b0d105cd900
                         push               0x2                                           // 0x0070e198    6a02
                         push               eax                                           // 0x0070e19a    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070e19b    e8008afeff
                         pop                edi                                           // 0x0070e1a0    5f
                         pop                esi                                           // 0x0070e1a1    5e
                         add                esp, 0x0000040c                               // 0x0070e1a2    81c40c040000
                         ret                                                              // 0x0070e1a8    c3
                         push               0x0                                           // 0x0070e1a9    6a00
                         push               0x009c7f80                                    // 0x0070e1ab    68807f9c00
                         push               0x009c7f30                                    // 0x0070e1b0    68307f9c00
                         push               0x0                                           // 0x0070e1b5    6a00
                         push               esi                                           // 0x0070e1b7    56
                         call               ___RTDynamicCast                              // 0x0070e1b8    e85c780b00
                         add                esp, 0x14                                     // 0x0070e1bd    83c414
                         test               eax, eax                                      // 0x0070e1c0    85c0
                         {disp8} je         _jmp_addr_0x0070e1ed                          // 0x0070e1c2    7429
                         mov                edx, dword ptr [eax]                          // 0x0070e1c4    8b10
                         mov.s              ecx, eax                                      // 0x0070e1c6    8bc8
                         call               dword ptr [edx + 0x880]                       // 0x0070e1c8    ff9280080000
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x0070e1ce    d95c2408
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0070e1d2    8b442408
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070e1d6    8b0d105cd900
                         push               0x2                                           // 0x0070e1dc    6a02
                         push               eax                                           // 0x0070e1de    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070e1df    e8bc89feff
                         pop                edi                                           // 0x0070e1e4    5f
                         pop                esi                                           // 0x0070e1e5    5e
                         add                esp, 0x0000040c                               // 0x0070e1e6    81c40c040000
                         ret                                                              // 0x0070e1ec    c3
_jmp_addr_0x0070e1ed:    {disp8} mov        dword ptr [esp + 0x08], 0x3f800000            // 0x0070e1ed    c74424080000803f
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x0070e1f5    8b4c2408
                         push               0x2                                           // 0x0070e1f9    6a02
                         push               ecx                                           // 0x0070e1fb    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070e1fc    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070e202    e89989feff
                         pop                edi                                           // 0x0070e207    5f
                         pop                esi                                           // 0x0070e208    5e
                         add                esp, 0x0000040c                               // 0x0070e209    81c40c040000
                         ret                                                              // 0x0070e20f    c3
                         test               ecx, ecx                                      // 0x0070e210    85c9
                         {disp8} je         _jmp_addr_0x0070e23c                          // 0x0070e212    7428
                         {disp32} mov       edx, dword ptr [ecx + 0x00000160]             // 0x0070e214    8b9160010000
                         {disp8} fld        dword ptr [edx + 0x10]                        // 0x0070e21a    d94210
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070e21d    8b0d105cd900
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x0070e223    d95c2408
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0070e227    8b442408
                         push               0x2                                           // 0x0070e22b    6a02
                         push               eax                                           // 0x0070e22d    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070e22e    e86d89feff
                         pop                edi                                           // 0x0070e233    5f
                         pop                esi                                           // 0x0070e234    5e
                         add                esp, 0x0000040c                               // 0x0070e235    81c40c040000
                         ret                                                              // 0x0070e23b    c3
_jmp_addr_0x0070e23c:    push               0x00c20964                                    // 0x0070e23c    686409c200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070e241    e86a80feff
                         add                esp, 0x04                                     // 0x0070e246    83c404
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000            // 0x0070e249    c744240800000000
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x0070e251    8b4c2408
                         push               0x2                                           // 0x0070e255    6a02
                         push               ecx                                           // 0x0070e257    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070e258    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070e25e    e83d89feff
                         pop                edi                                           // 0x0070e263    5f
                         pop                esi                                           // 0x0070e264    5e
                         add                esp, 0x0000040c                               // 0x0070e265    81c40c040000
                         ret                                                              // 0x0070e26b    c3
                         test               ecx, ecx                                      // 0x0070e26c    85c9
                         {disp8} je         _jmp_addr_0x0070e298                          // 0x0070e26e    7428
                         {disp32} mov       edx, dword ptr [ecx + 0x00000160]             // 0x0070e270    8b9160010000
                         {disp8} fld        dword ptr [edx + 0x14]                        // 0x0070e276    d94214
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070e279    8b0d105cd900
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x0070e27f    d95c2408
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0070e283    8b442408
                         push               0x2                                           // 0x0070e287    6a02
                         push               eax                                           // 0x0070e289    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070e28a    e81189feff
                         pop                edi                                           // 0x0070e28f    5f
                         pop                esi                                           // 0x0070e290    5e
                         add                esp, 0x0000040c                               // 0x0070e291    81c40c040000
                         ret                                                              // 0x0070e297    c3
_jmp_addr_0x0070e298:    push               0x00c20964                                    // 0x0070e298    686409c200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070e29d    e80e80feff
                         add                esp, 0x04                                     // 0x0070e2a2    83c404
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000            // 0x0070e2a5    c744240800000000
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x0070e2ad    8b4c2408
                         push               0x2                                           // 0x0070e2b1    6a02
                         push               ecx                                           // 0x0070e2b3    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070e2b4    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070e2ba    e8e188feff
                         pop                edi                                           // 0x0070e2bf    5f
                         pop                esi                                           // 0x0070e2c0    5e
                         add                esp, 0x0000040c                               // 0x0070e2c1    81c40c040000
                         ret                                                              // 0x0070e2c7    c3
                         test               ecx, ecx                                      // 0x0070e2c8    85c9
                         {disp8} je         _jmp_addr_0x0070e2f4                          // 0x0070e2ca    7428
                         {disp32} mov       edx, dword ptr [ecx + 0x00000160]             // 0x0070e2cc    8b9160010000
                         {disp8} fld        dword ptr [edx + 0x1c]                        // 0x0070e2d2    d9421c
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070e2d5    8b0d105cd900
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x0070e2db    d95c2408
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0070e2df    8b442408
                         push               0x2                                           // 0x0070e2e3    6a02
                         push               eax                                           // 0x0070e2e5    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070e2e6    e8b588feff
                         pop                edi                                           // 0x0070e2eb    5f
                         pop                esi                                           // 0x0070e2ec    5e
                         add                esp, 0x0000040c                               // 0x0070e2ed    81c40c040000
                         ret                                                              // 0x0070e2f3    c3
_jmp_addr_0x0070e2f4:    push               0x00c20964                                    // 0x0070e2f4    686409c200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070e2f9    e8b27ffeff
                         add                esp, 0x04                                     // 0x0070e2fe    83c404
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000            // 0x0070e301    c744240800000000
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x0070e309    8b4c2408
                         push               0x2                                           // 0x0070e30d    6a02
                         push               ecx                                           // 0x0070e30f    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070e310    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070e316    e88588feff
                         pop                edi                                           // 0x0070e31b    5f
                         pop                esi                                           // 0x0070e31c    5e
                         add                esp, 0x0000040c                               // 0x0070e31d    81c40c040000
                         ret                                                              // 0x0070e323    c3
                         test               ecx, ecx                                      // 0x0070e324    85c9
                         {disp8} je         _jmp_addr_0x0070e350                          // 0x0070e326    7428
                         {disp32} mov       edx, dword ptr [ecx + 0x00000160]             // 0x0070e328    8b9160010000
                         {disp8} fld        dword ptr [edx + 0x20]                        // 0x0070e32e    d94220
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070e331    8b0d105cd900
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x0070e337    d95c2408
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0070e33b    8b442408
                         push               0x2                                           // 0x0070e33f    6a02
                         push               eax                                           // 0x0070e341    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070e342    e85988feff
                         pop                edi                                           // 0x0070e347    5f
                         pop                esi                                           // 0x0070e348    5e
                         add                esp, 0x0000040c                               // 0x0070e349    81c40c040000
                         ret                                                              // 0x0070e34f    c3
_jmp_addr_0x0070e350:    push               0x00c20964                                    // 0x0070e350    686409c200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070e355    e8567ffeff
                         add                esp, 0x04                                     // 0x0070e35a    83c404
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000            // 0x0070e35d    c744240800000000
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x0070e365    8b4c2408
                         push               0x2                                           // 0x0070e369    6a02
                         push               ecx                                           // 0x0070e36b    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070e36c    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070e372    e82988feff
                         pop                edi                                           // 0x0070e377    5f
                         pop                esi                                           // 0x0070e378    5e
                         add                esp, 0x0000040c                               // 0x0070e379    81c40c040000
                         ret                                                              // 0x0070e37f    c3
                         test               ecx, ecx                                      // 0x0070e380    85c9
                         {disp8} je         _jmp_addr_0x0070e3ac                          // 0x0070e382    7428
                         {disp32} mov       edx, dword ptr [ecx + 0x00000160]             // 0x0070e384    8b9160010000
                         {disp8} fld        dword ptr [edx + 0x2c]                        // 0x0070e38a    d9422c
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070e38d    8b0d105cd900
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x0070e393    d95c2408
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0070e397    8b442408
                         push               0x2                                           // 0x0070e39b    6a02
                         push               eax                                           // 0x0070e39d    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070e39e    e8fd87feff
                         pop                edi                                           // 0x0070e3a3    5f
                         pop                esi                                           // 0x0070e3a4    5e
                         add                esp, 0x0000040c                               // 0x0070e3a5    81c40c040000
                         ret                                                              // 0x0070e3ab    c3
_jmp_addr_0x0070e3ac:    push               0x00c20964                                    // 0x0070e3ac    686409c200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070e3b1    e8fa7efeff
                         add                esp, 0x04                                     // 0x0070e3b6    83c404
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000            // 0x0070e3b9    c744240800000000
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x0070e3c1    8b4c2408
                         push               0x2                                           // 0x0070e3c5    6a02
                         push               ecx                                           // 0x0070e3c7    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070e3c8    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070e3ce    e8cd87feff
                         pop                edi                                           // 0x0070e3d3    5f
                         pop                esi                                           // 0x0070e3d4    5e
                         add                esp, 0x0000040c                               // 0x0070e3d5    81c40c040000
                         ret                                                              // 0x0070e3db    c3
                         test               ecx, ecx                                      // 0x0070e3dc    85c9
                         {disp8} je         _jmp_addr_0x0070e408                          // 0x0070e3de    7428
                         {disp32} mov       edx, dword ptr [ecx + 0x00000160]             // 0x0070e3e0    8b9160010000
                         {disp8} fld        dword ptr [edx + 0x30]                        // 0x0070e3e6    d94230
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070e3e9    8b0d105cd900
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x0070e3ef    d95c2408
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0070e3f3    8b442408
                         push               0x2                                           // 0x0070e3f7    6a02
                         push               eax                                           // 0x0070e3f9    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070e3fa    e8a187feff
                         pop                edi                                           // 0x0070e3ff    5f
                         pop                esi                                           // 0x0070e400    5e
                         add                esp, 0x0000040c                               // 0x0070e401    81c40c040000
                         ret                                                              // 0x0070e407    c3
_jmp_addr_0x0070e408:    push               0x00c20964                                    // 0x0070e408    686409c200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070e40d    e89e7efeff
                         add                esp, 0x04                                     // 0x0070e412    83c404
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000            // 0x0070e415    c744240800000000
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x0070e41d    8b4c2408
                         push               0x2                                           // 0x0070e421    6a02
                         push               ecx                                           // 0x0070e423    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070e424    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070e42a    e87187feff
                         pop                edi                                           // 0x0070e42f    5f
                         pop                esi                                           // 0x0070e430    5e
                         add                esp, 0x0000040c                               // 0x0070e431    81c40c040000
                         ret                                                              // 0x0070e437    c3
                         test               ecx, ecx                                      // 0x0070e438    85c9
                         {disp8} je         _jmp_addr_0x0070e464                          // 0x0070e43a    7428
                         {disp32} mov       edx, dword ptr [ecx + 0x00000160]             // 0x0070e43c    8b9160010000
                         {disp8} fld        dword ptr [edx + 0x34]                        // 0x0070e442    d94234
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070e445    8b0d105cd900
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x0070e44b    d95c2408
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0070e44f    8b442408
                         push               0x2                                           // 0x0070e453    6a02
                         push               eax                                           // 0x0070e455    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070e456    e84587feff
                         pop                edi                                           // 0x0070e45b    5f
                         pop                esi                                           // 0x0070e45c    5e
                         add                esp, 0x0000040c                               // 0x0070e45d    81c40c040000
                         ret                                                              // 0x0070e463    c3
_jmp_addr_0x0070e464:    push               0x00c20964                                    // 0x0070e464    686409c200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070e469    e8427efeff
                         add                esp, 0x04                                     // 0x0070e46e    83c404
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000            // 0x0070e471    c744240800000000
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x0070e479    8b4c2408
                         push               0x2                                           // 0x0070e47d    6a02
                         push               ecx                                           // 0x0070e47f    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070e480    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070e486    e81587feff
                         pop                edi                                           // 0x0070e48b    5f
                         pop                esi                                           // 0x0070e48c    5e
                         add                esp, 0x0000040c                               // 0x0070e48d    81c40c040000
                         ret                                                              // 0x0070e493    c3
                         test               ecx, ecx                                      // 0x0070e494    85c9
                         {disp8} je         _jmp_addr_0x0070e4c0                          // 0x0070e496    7428
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ                 // 0x0070e498    e8b393d6ff
                         {disp32} mov       edx, dword ptr [eax + 0x00004aa8]             // 0x0070e49d    8b90a84a0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070e4a3    8b0d105cd900
                         push               0x2                                           // 0x0070e4a9    6a02
                         mov.s              eax, edx                                      // 0x0070e4ab    8bc2
                         push               eax                                           // 0x0070e4ad    50
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x0070e4ae    89542410
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070e4b2    e8e986feff
                         pop                edi                                           // 0x0070e4b7    5f
                         pop                esi                                           // 0x0070e4b8    5e
                         add                esp, 0x0000040c                               // 0x0070e4b9    81c40c040000
                         ret                                                              // 0x0070e4bf    c3
_jmp_addr_0x0070e4c0:    push               0x00c20964                                    // 0x0070e4c0    686409c200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070e4c5    e8e67dfeff
                         add                esp, 0x04                                     // 0x0070e4ca    83c404
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000            // 0x0070e4cd    c744240800000000
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x0070e4d5    8b4c2408
                         push               0x2                                           // 0x0070e4d9    6a02
                         push               ecx                                           // 0x0070e4db    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070e4dc    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070e4e2    e8b986feff
                         pop                edi                                           // 0x0070e4e7    5f
                         pop                esi                                           // 0x0070e4e8    5e
                         add                esp, 0x0000040c                               // 0x0070e4e9    81c40c040000
                         ret                                                              // 0x0070e4ef    c3
                         test               ecx, ecx                                      // 0x0070e4f0    85c9
                         {disp8} je         _jmp_addr_0x0070e51c                          // 0x0070e4f2    7428
                         {disp32} mov       edx, dword ptr [ecx + 0x00000168]             // 0x0070e4f4    8b9168010000
                         {disp8} fld        dword ptr [edx + 0x08]                        // 0x0070e4fa    d94208
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070e4fd    8b0d105cd900
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x0070e503    d95c2408
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0070e507    8b442408
                         push               0x2                                           // 0x0070e50b    6a02
                         push               eax                                           // 0x0070e50d    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070e50e    e88d86feff
                         pop                edi                                           // 0x0070e513    5f
                         pop                esi                                           // 0x0070e514    5e
                         add                esp, 0x0000040c                               // 0x0070e515    81c40c040000
                         ret                                                              // 0x0070e51b    c3
_jmp_addr_0x0070e51c:    mov                edx, dword ptr [esi]                          // 0x0070e51c    8b16
                         mov.s              ecx, esi                                      // 0x0070e51e    8bce
                         call               dword ptr [edx + 0x1c]                        // 0x0070e520    ff521c
                         test               eax, eax                                      // 0x0070e523    85c0
                         {disp8} je         _jmp_addr_0x0070e554                          // 0x0070e525    742d
                         mov                eax, dword ptr [esi]                          // 0x0070e527    8b06
                         mov.s              ecx, esi                                      // 0x0070e529    8bce
                         call               dword ptr [eax + 0x1c]                        // 0x0070e52b    ff501c
                         mov.s              ecx, eax                                      // 0x0070e52e    8bc8
                         call               _jmp_addr_0x0064d6a0                          // 0x0070e530    e86bf1f3ff
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x0070e535    d95c2408
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x0070e539    8b4c2408
                         push               0x2                                           // 0x0070e53d    6a02
                         push               ecx                                           // 0x0070e53f    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070e540    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070e546    e85586feff
                         pop                edi                                           // 0x0070e54b    5f
                         pop                esi                                           // 0x0070e54c    5e
                         add                esp, 0x0000040c                               // 0x0070e54d    81c40c040000
                         ret                                                              // 0x0070e553    c3
_jmp_addr_0x0070e554:    {disp8} mov        dword ptr [esp + 0x08], 0x00000000            // 0x0070e554    c744240800000000
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x0070e55c    8b542408
                         push               0x2                                           // 0x0070e560    6a02
                         {disp32} jmp       _jmp_addr_0x0070e776                          // 0x0070e562    e90f020000
                         push               0x0                                           // 0x0070e567    6a00
                         push               0x00be6758                                    // 0x0070e569    685867be00
                         push               0x009c7f30                                    // 0x0070e56e    68307f9c00
                         push               0x0                                           // 0x0070e573    6a00
                         push               esi                                           // 0x0070e575    56
                         call               ___RTDynamicCast                              // 0x0070e576    e89e740b00
                         add                esp, 0x14                                     // 0x0070e57b    83c414
                         test               eax, eax                                      // 0x0070e57e    85c0
                         {disp8} je         _jmp_addr_0x0070e5a7                          // 0x0070e580    7425
                         {disp32} fild      dword ptr [eax + 0x000000e8]                  // 0x0070e582    db80e8000000
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070e588    8b0d105cd900
                         push               0x2                                           // 0x0070e58e    6a02
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x0070e590    d95c240c
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x0070e594    8b44240c
                         push               eax                                           // 0x0070e598    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070e599    e80286feff
                         pop                edi                                           // 0x0070e59e    5f
                         pop                esi                                           // 0x0070e59f    5e
                         add                esp, 0x0000040c                               // 0x0070e5a0    81c40c040000
                         ret                                                              // 0x0070e5a6    c3
_jmp_addr_0x0070e5a7:    mov                edx, dword ptr [esi]                          // 0x0070e5a7    8b16
                         mov.s              ecx, esi                                      // 0x0070e5a9    8bce
                         call               dword ptr [edx + 0x1e4]                       // 0x0070e5ab    ff92e4010000
                         test               eax, eax                                      // 0x0070e5b1    85c0
                         {disp8} je         _jmp_addr_0x0070e5db                          // 0x0070e5b3    7426
                         mov.s              ecx, esi                                      // 0x0070e5b5    8bce
                         call               ?GetWorshipSpeed@TotemStatue@@QAEMXZ          // 0x0070e5b7    e8a49c0200
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x0070e5bc    d95c2408
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0070e5c0    8b442408
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070e5c4    8b0d105cd900
                         push               0x2                                           // 0x0070e5ca    6a02
                         push               eax                                           // 0x0070e5cc    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070e5cd    e8ce85feff
                         pop                edi                                           // 0x0070e5d2    5f
                         pop                esi                                           // 0x0070e5d3    5e
                         add                esp, 0x0000040c                               // 0x0070e5d4    81c40c040000
                         ret                                                              // 0x0070e5da    c3
_jmp_addr_0x0070e5db:    mov                edx, dword ptr [esi]                          // 0x0070e5db    8b16
                         mov.s              ecx, esi                                      // 0x0070e5dd    8bce
                         call               dword ptr [edx + 0x42c]                       // 0x0070e5df    ff922c040000
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x0070e5e5    d95c2408
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0070e5e9    8b442408
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070e5ed    8b0d105cd900
                         push               0x2                                           // 0x0070e5f3    6a02
                         push               eax                                           // 0x0070e5f5    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070e5f6    e8a585feff
                         pop                edi                                           // 0x0070e5fb    5f
                         pop                esi                                           // 0x0070e5fc    5e
                         add                esp, 0x0000040c                               // 0x0070e5fd    81c40c040000
                         ret                                                              // 0x0070e603    c3
                         mov                edx, dword ptr [esi]                          // 0x0070e604    8b16
                         mov.s              ecx, esi                                      // 0x0070e606    8bce
                         call               dword ptr [edx + 0x14c]                       // 0x0070e608    ff924c010000
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x0070e60e    d95c2408
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0070e612    8b442408
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070e616    8b0d105cd900
                         push               0x2                                           // 0x0070e61c    6a02
                         push               eax                                           // 0x0070e61e    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070e61f    e87c85feff
                         pop                edi                                           // 0x0070e624    5f
                         pop                esi                                           // 0x0070e625    5e
                         add                esp, 0x0000040c                               // 0x0070e626    81c40c040000
                         ret                                                              // 0x0070e62c    c3
                         mov                edx, dword ptr [esi]                          // 0x0070e62d    8b16
                         mov.s              ecx, esi                                      // 0x0070e62f    8bce
                         call               dword ptr [edx + 0x1c]                        // 0x0070e631    ff521c
                         mov.s              edi, eax                                      // 0x0070e634    8bf8
                         mov                eax, dword ptr [esi]                          // 0x0070e636    8b06
                         mov.s              ecx, esi                                      // 0x0070e638    8bce
                         call               dword ptr [eax + 0x1b8]                       // 0x0070e63a    ff90b8010000
                         test               eax, eax                                      // 0x0070e640    85c0
                         {disp8} je         _jmp_addr_0x0070e672                          // 0x0070e642    742e
                         mov.s              ecx, esi                                      // 0x0070e644    8bce
                         call               _jmp_addr_0x00740e10                          // 0x0070e646    e8c5270300
                         test               eax, eax                                      // 0x0070e64b    85c0
                         {disp8} je         _jmp_addr_0x0070e672                          // 0x0070e64d    7423
                         {disp8} mov        dword ptr [esp + 0x08], 0x3f800000            // 0x0070e64f    c74424080000803f
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x0070e657    8b4c2408
                         push               0x2                                           // 0x0070e65b    6a02
                         push               ecx                                           // 0x0070e65d    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070e65e    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070e664    e83785feff
                         pop                edi                                           // 0x0070e669    5f
                         pop                esi                                           // 0x0070e66a    5e
                         add                esp, 0x0000040c                               // 0x0070e66b    81c40c040000
                         ret                                                              // 0x0070e671    c3
_jmp_addr_0x0070e672:    test               edi, edi                                      // 0x0070e672    85ff
                         {disp8} je         _jmp_addr_0x0070e6bf                          // 0x0070e674    7449
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070e676    8b0d5c19d000
                         xor.s              eax, eax                                      // 0x0070e67c    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a5b]               // 0x0070e67e    8a815b5a2000
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x0070e684    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x0070e687    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x0070e68a    8d0450
                         shl                eax, 5                                        // 0x0070e68d    c1e005
                         {disp8} lea        ecx, dword ptr [eax + ecx * 0x1 + 0x18]       // 0x0070e690    8d4c0818
                         cmp.s              edi, ecx                                      // 0x0070e694    3bf9
                         {disp8} je         _jmp_addr_0x0070e6bf                          // 0x0070e696    7427
                         mov.s              ecx, edi                                      // 0x0070e698    8bcf
                         call               ?GetPlayerNumber@GPlayer@@QBEEXZ              // 0x0070e69a    e8f1c0f3ff
                         inc                eax                                           // 0x0070e69f    40
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x0070e6a0    89442408
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000            // 0x0070e6a4    c744240c00000000
                         {disp8} fild       qword ptr [esp + 0x08]                        // 0x0070e6ac    df6c2408
                         push               0x2                                           // 0x0070e6b0    6a02
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x0070e6b2    d95c240c
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x0070e6b6    8b54240c
                         {disp32} jmp       _jmp_addr_0x0070e776                          // 0x0070e6ba    e9b7000000
_jmp_addr_0x0070e6bf:    {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070e6bf    8b0d105cd900
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000            // 0x0070e6c5    c744240800000000
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0070e6cd    8b442408
                         push               0x2                                           // 0x0070e6d1    6a02
                         push               eax                                           // 0x0070e6d3    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070e6d4    e8c784feff
                         pop                edi                                           // 0x0070e6d9    5f
                         pop                esi                                           // 0x0070e6da    5e
                         add                esp, 0x0000040c                               // 0x0070e6db    81c40c040000
                         ret                                                              // 0x0070e6e1    c3
                         {disp8} fild       dword ptr [esi + 0x14]                        // 0x0070e6e2    db4614
                         push               0x2                                           // 0x0070e6e5    6a02
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x0070e6e7    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x0070e6ed    d95c240c
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x0070e6f1    8b4c240c
                         push               ecx                                           // 0x0070e6f5    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070e6f6    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070e6fc    e89f84feff
                         pop                edi                                           // 0x0070e701    5f
                         pop                esi                                           // 0x0070e702    5e
                         add                esp, 0x0000040c                               // 0x0070e703    81c40c040000
                         ret                                                              // 0x0070e709    c3
                         {disp8} fld        dword ptr [esi + 0x1c]                        // 0x0070e70a    d9461c
                         push               0x2                                           // 0x0070e70d    6a02
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x0070e70f    d95c240c
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x0070e713    8b54240c
                         {disp8} jmp        _jmp_addr_0x0070e776                          // 0x0070e717    eb5d
                         {disp8} fild       dword ptr [esi + 0x18]                        // 0x0070e719    db4618
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070e71c    8b0d105cd900
                         push               0x2                                           // 0x0070e722    6a02
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x0070e724    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x0070e72a    d95c240c
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x0070e72e    8b44240c
                         push               eax                                           // 0x0070e732    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070e733    e86884feff
                         pop                edi                                           // 0x0070e738    5f
                         pop                esi                                           // 0x0070e739    5e
                         add                esp, 0x0000040c                               // 0x0070e73a    81c40c040000
                         ret                                                              // 0x0070e740    c3
_jmp_addr_0x0070e741:    push               0x00c20964                                    // 0x0070e741    686409c200
_jmp_addr_0x0070e746:    call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070e746    e8657bfeff
                         add                esp, 0x04                                     // 0x0070e74b    83c404
_jmp_addr_0x0070e74e:    push               edi                                           // 0x0070e74e    57
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0070e74f    8d4c2414
                         push               0x00c2094c                                    // 0x0070e753    684c09c200
                         push               ecx                                           // 0x0070e758    51
                         call               dword ptr [__imp___0LHSPrintf__QAA_PADZZ@4]   // 0x0070e759    ff155c938a00
                         push               eax                                           // 0x0070e75f    50
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070e760    e84b7bfeff
                         add                esp, 0x10                                     // 0x0070e765    83c410
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000            // 0x0070e768    c744240800000000
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x0070e770    8b542408
                         push               0x2                                           // 0x0070e774    6a02
_jmp_addr_0x0070e776:    {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070e776    8b0d105cd900
                         push               edx                                           // 0x0070e77c    52
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070e77d    e81e84feff
                         pop                edi                                           // 0x0070e782    5f
                         pop                esi                                           // 0x0070e783    5e
                         add                esp, 0x0000040c                               // 0x0070e784    81c40c040000
                         ret                                                              // 0x0070e78a    c3

// Snippet: db, [0x0070e78b, 0x0070e78c)
.byte 0x90                        // 0x0070e78b

// Snippet: jmptbl, [0x0070e78c, 0x0070e81c)
.byte 0x85, 0xdb, 0x70, 0x00      // 0x0070e78c
.byte 0x75, 0xdc, 0x70, 0x00      // 0x0070e790
.byte 0xcd, 0xdb, 0x70, 0x00      // 0x0070e794
.byte 0x21, 0xdc, 0x70, 0x00      // 0x0070e798
.byte 0xf8, 0xdc, 0x70, 0x00      // 0x0070e79c
.byte 0x0a, 0xdd, 0x70, 0x00      // 0x0070e7a0
.byte 0x2b, 0xdd, 0x70, 0x00      // 0x0070e7a4
.byte 0x4c, 0xdd, 0x70, 0x00      // 0x0070e7a8
.byte 0xfa, 0xdd, 0x70, 0x00      // 0x0070e7ac
.byte 0x2c, 0xde, 0x70, 0x00      // 0x0070e7b0
.byte 0x4e, 0xde, 0x70, 0x00      // 0x0070e7b4
.byte 0x7a, 0xdf, 0x70, 0x00      // 0x0070e7b8
.byte 0xa3, 0xdf, 0x70, 0x00      // 0x0070e7bc
.byte 0xcc, 0xdf, 0x70, 0x00      // 0x0070e7c0
.byte 0x4e, 0xe7, 0x70, 0x00      // 0x0070e7c4
.byte 0xfd, 0xdf, 0x70, 0x00      // 0x0070e7c8
.byte 0x81, 0xe0, 0x70, 0x00      // 0x0070e7cc
.byte 0xf0, 0xe4, 0x70, 0x00      // 0x0070e7d0
.byte 0x67, 0xe5, 0x70, 0x00      // 0x0070e7d4
.byte 0x04, 0xe6, 0x70, 0x00      // 0x0070e7d8
.byte 0x2d, 0xe6, 0x70, 0x00      // 0x0070e7dc
.byte 0xa9, 0xe1, 0x70, 0x00      // 0x0070e7e0
.byte 0xe2, 0xe6, 0x70, 0x00      // 0x0070e7e4
.byte 0x0a, 0xe7, 0x70, 0x00      // 0x0070e7e8
.byte 0x19, 0xe7, 0x70, 0x00      // 0x0070e7ec
.byte 0x10, 0xe2, 0x70, 0x00      // 0x0070e7f0
.byte 0x6c, 0xe2, 0x70, 0x00      // 0x0070e7f4
.byte 0xc8, 0xe2, 0x70, 0x00      // 0x0070e7f8
.byte 0x24, 0xe3, 0x70, 0x00      // 0x0070e7fc
.byte 0x80, 0xe3, 0x70, 0x00      // 0x0070e800
.byte 0xdc, 0xe3, 0x70, 0x00      // 0x0070e804
.byte 0x38, 0xe4, 0x70, 0x00      // 0x0070e808
.byte 0x94, 0xe4, 0x70, 0x00      // 0x0070e80c
.byte 0x75, 0xdd, 0x70, 0x00      // 0x0070e810
.byte 0x91, 0xdd, 0x70, 0x00      // 0x0070e814
.byte 0xbd, 0xdd, 0x70, 0x00      // 0x0070e818

// Snippet: db, [0x0070e81c, 0x0070e820)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0070e81c

