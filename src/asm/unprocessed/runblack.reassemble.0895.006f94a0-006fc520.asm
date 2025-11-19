.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x004146b0
.extern ?__nw@Base@@SAPAXK@Z
.extern _jmp_addr_0x00441f40
.extern _jmp_addr_0x00484c60
.extern ?ForceActivityAndForceAction@Creature@@QAEXAAVCreaturePlan@@HH@Z
.extern _jmp_addr_0x004c59c0
.extern _jmp_addr_0x004ca580
.extern ?AddBeliefAboutObject@CreatureMental@@QAEPAXPAVCreature@@PAVGameThingWithPos@@@Z
.extern ??0CreaturePlan@@QAE@W4CREATURE_DESIRES@@W4CREATURE_ACTION@@PAVCreatureBelief@@22M@Z
.extern _jmp_addr_0x004f12d0
.extern _jmp_addr_0x004f12e0
.extern _jmp_addr_0x004ff5c0
.extern ?GetCamera@GGame@@QAEPAVGCamera@@XZ
.extern ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z
.extern _jmp_addr_0x00550dd0
.extern ?StartPlaygroundGame@GGame@@QAEXPAD@Z
.extern _jmp_addr_0x005537f0
.extern _jmp_addr_0x00553e10
.extern ?MyInterface@GGame@@QAEPAVGInterface@@XZ
.extern _jmp_addr_0x005c6c50
.extern _jmp_addr_0x005cd170
.extern _jmp_addr_0x005cd990
.extern _jmp_addr_0x005cd9d0
.extern _jmp_addr_0x005ee100
.extern _jmp_addr_0x005ee520
.extern ??0DataForScriptRemind@@QAE@XZ
.extern _jmp_addr_0x005ef1d0
.extern _RenderLoadingFrame__Fb
.extern @__ct__9MapCoordsFRC7LHPoint@12
.extern ?InBounds@MapCoords@@QBEIXZ
.extern @FindType__9MapCoordsCF11OBJECT_TYPEP6Object@16
.extern @__apl__9MapCoordsFRC9JustMapXZ@12
.extern _jmp_addr_0x00605cc0
.extern _jmp_addr_0x006076c0
.extern _jmp_addr_0x00639a40
.extern _jmp_addr_0x00639a60
.extern _jmp_addr_0x00646950
.extern _jmp_addr_0x0064d6a0
.extern _jmp_addr_0x0068f450
.extern _jmp_addr_0x0068f4f0
.extern _jmp_addr_0x0068f510
.extern _jmp_addr_0x006d66e0
.extern _jmp_addr_0x006dc070
.extern ?GameFloatRand@GRand@@SAMM@Z
.extern ?CreateReaction@Reaction@@SAPAV1@PAVGameThingWithPos@@EPAVGPlayer@@H@Z
.extern _jmp_addr_0x006e4750
.extern _jmp_addr_0x006e4780
.extern _jmp_addr_0x006eb9a0
.extern _jmp_addr_0x006ec7b0
.extern ?ScriptErrorMessage@GScript@@QAEXPAD@Z
.extern _jmp_addr_0x006f69f0
.extern ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z
.extern _jmp_addr_0x006f6bc0
.extern _jmp_addr_0x006f6bd0
.extern _jmp_addr_0x006f6fa0
.extern ?IsDidYouKnow@ScriptHighlight@@QAE_NXZ
.extern _jmp_addr_0x0070cf90
.extern _jmp_addr_0x0070cfd0
.extern _jmp_addr_0x0070d0f0
.extern _jmp_addr_0x0070d220
.extern _jmp_addr_0x0070d540
.extern _jmp_addr_0x0073e560
.extern ?Spiral@GUtils@@SAPBUJustMapXZ@@AAJ0@Z
.extern ?IsScriptAnimationComplete@Villager@@QAEIXZ
.extern _jmp_addr_0x00774400
.extern _jmp_addr_0x00774460
.extern _jmp_addr_0x00774480
.extern _jmp_addr_0x00774500
.extern _jmp_addr_0x00774520
.extern _jmp_addr_0x00794970
.extern _jmp_addr_0x007a1400
.extern ___RTDynamicCast
.extern ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z

.globl _jmp_addr_0x006faa40
.globl _jmp_addr_0x006faa60

start_0x006f94a0_0x006fc520:
// Snippet: asm, [0x006f94a0, 0x006fc4e3)
                         sub                esp, 0x34                                     // 0x006f94a0    83ec34
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f94a3    8b0d105cd900
                         push               esi                                           // 0x006f94a9    56
                         push               edi                                           // 0x006f94aa    57
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x006f94ab    8d442408
                         push               eax                                           // 0x006f94af    50
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x006f94b0    c744241400000000
                         {disp8} mov        dword ptr [esp + 0x20], 0x00000000            // 0x006f94b8    c744242000000000
                         {disp8} mov        dword ptr [esp + 0x1c], 0x00000000            // 0x006f94c0    c744241c00000000
                         call               _jmp_addr_0x006f6bc0                          // 0x006f94c8    e8f3d6ffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f94cd    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x006f94d3    8d542408
                         push               edx                                           // 0x006f94d7    52
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x006f94d8    89442410
                         call               _jmp_addr_0x006f6bc0                          // 0x006f94dc    e8dfd6ffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f94e1    8b0d105cd900
                         mov.s              edi, eax                                      // 0x006f94e7    8bf8
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x006f94e9    8d442408
                         push               eax                                           // 0x006f94ed    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f94ee    e8cdd6ffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f94f3    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x006f94f9    8d542408
                         push               edx                                           // 0x006f94fd    52
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x006f94fe    89442418
                         call               _jmp_addr_0x006f6bc0                          // 0x006f9502    e8b9d6ffff
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x006f9507    89442408
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x006f950b    d9442408
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2678]              // 0x006f950f    d81d78b68a00
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x006f9515    89442418
                         fnstsw             ax                                            // 0x006f9519    dfe0
                         test               ah, 0x01                                      // 0x006f951b    f6c401
                         {disp8} je         _jmp_addr_0x006f952a                          // 0x006f951e    740a
                         {disp8} mov        dword ptr [esp + 0x18], 0xbf800000            // 0x006f9520    c7442418000080bf
                         {disp8} jmp        _jmp_addr_0x006f9543                          // 0x006f9528    eb19
_jmp_addr_0x006f952a:    {disp8} fld        dword ptr [esp + 0x08]                        // 0x006f952a    d9442408
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x006f952e    d81d90a38a00
                         fnstsw             ax                                            // 0x006f9534    dfe0
                         test               ah, 0x41                                      // 0x006f9536    f6c441
                         {disp8} jne        _jmp_addr_0x006f9543                          // 0x006f9539    7508
                         {disp8} mov        dword ptr [esp + 0x18], 0x3f800000            // 0x006f953b    c74424180000803f
_jmp_addr_0x006f9543:    {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f9543    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x006f9549    8d542408
                         push               edx                                           // 0x006f954d    52
                         call               _jmp_addr_0x006f6bc0                          // 0x006f954e    e86dd6ffff
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x006f9553    89442408
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x006f9557    d9442408
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x006f955b    d81d98a38a00
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x006f9561    8944241c
                         fnstsw             ax                                            // 0x006f9565    dfe0
                         test               ah, 0x01                                      // 0x006f9567    f6c401
                         {disp8} je         _jmp_addr_0x006f9576                          // 0x006f956a    740a
                         {disp8} mov        dword ptr [esp + 0x1c], 0x00000000            // 0x006f956c    c744241c00000000
                         {disp8} jmp        _jmp_addr_0x006f958f                          // 0x006f9574    eb19
_jmp_addr_0x006f9576:    {disp8} fld        dword ptr [esp + 0x08]                        // 0x006f9576    d9442408
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x006f957a    d81d90a38a00
                         fnstsw             ax                                            // 0x006f9580    dfe0
                         test               ah, 0x41                                      // 0x006f9582    f6c441
                         {disp8} jne        _jmp_addr_0x006f958f                          // 0x006f9585    7508
                         {disp8} mov        dword ptr [esp + 0x1c], 0x3f800000            // 0x006f9587    c744241c0000803f
_jmp_addr_0x006f958f:    {disp32} mov       esi, dword ptr [_script_dll]                  // 0x006f958f    8b35105cd900
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x006f9595    8d4c2408
                         push               ecx                                           // 0x006f9599    51
                         mov.s              ecx, esi                                      // 0x006f959a    8bce
                         call               _jmp_addr_0x006f6bc0                          // 0x006f959c    e81fd6ffff
                         mov.s              edx, eax                                      // 0x006f95a1    8bd0
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x006f95a3    89442408
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x006f95a7    8d442408
                         push               eax                                           // 0x006f95ab    50
                         mov.s              ecx, esi                                      // 0x006f95ac    8bce
                         {disp8} mov        dword ptr [esp + 0x38], edx                   // 0x006f95ae    89542438
                         call               _jmp_addr_0x006f6bc0                          // 0x006f95b2    e809d6ffff
                         mov.s              ecx, eax                                      // 0x006f95b7    8bc8
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x006f95b9    8d542408
                         {disp8} mov        dword ptr [esp + 0x30], ecx                   // 0x006f95bd    894c2430
                         push               edx                                           // 0x006f95c1    52
                         mov.s              ecx, esi                                      // 0x006f95c2    8bce
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x006f95c4    8944240c
                         call               _jmp_addr_0x006f6bc0                          // 0x006f95c8    e8f3d5ffff
                         {disp32} mov       esi, dword ptr [_script_dll]                  // 0x006f95cd    8b35105cd900
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x006f95d3    8d4c2408
                         push               ecx                                           // 0x006f95d7    51
                         mov.s              ecx, esi                                      // 0x006f95d8    8bce
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x006f95da    8944240c
                         {disp8} mov        dword ptr [esp + 0x30], eax                   // 0x006f95de    89442430
                         call               _jmp_addr_0x006f6bc0                          // 0x006f95e2    e8d9d5ffff
                         mov.s              edx, eax                                      // 0x006f95e7    8bd0
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x006f95e9    89442408
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x006f95ed    8d442408
                         push               eax                                           // 0x006f95f1    50
                         mov.s              ecx, esi                                      // 0x006f95f2    8bce
                         {disp8} mov        dword ptr [esp + 0x2c], edx                   // 0x006f95f4    8954242c
                         call               _jmp_addr_0x006f6bc0                          // 0x006f95f8    e8c3d5ffff
                         mov.s              ecx, eax                                      // 0x006f95fd    8bc8
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x006f95ff    8d542408
                         {disp8} mov        dword ptr [esp + 0x24], ecx                   // 0x006f9603    894c2424
                         push               edx                                           // 0x006f9607    52
                         mov.s              ecx, esi                                      // 0x006f9608    8bce
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x006f960a    8944240c
                         call               _jmp_addr_0x006f6bc0                          // 0x006f960e    e8add5ffff
                         {disp32} mov       edx, dword ptr [_game]                        // 0x006f9613    8b155c19d000
                         push               edi                                           // 0x006f9619    57
                         push               0x0                                           // 0x006f961a    6a00
                         push               0x0                                           // 0x006f961c    6a00
                         push               0x0                                           // 0x006f961e    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x006f9620    8d4c241c
                         {disp8} mov        dword ptr [esp + 0x30], eax                   // 0x006f9624    89442430
                         push               ecx                                           // 0x006f9628    51
                         {disp32} mov       ecx, dword ptr [edx + 0x000059b4]             // 0x006f9629    8b8ab4590000
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x006f962f    8944241c
                         call               _jmp_addr_0x00794970                          // 0x006f9633    e838b30900
                         pop                edi                                           // 0x006f9638    5f
                         pop                esi                                           // 0x006f9639    5e
                         add                esp, 0x34                                     // 0x006f963a    83c434
                         ret                                                              // 0x006f963d    c3
                         nop                                                              // 0x006f963e    90
                         nop                                                              // 0x006f963f    90
                         sub                esp, 0x00000094                               // 0x006f9640    81ec94000000
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f9646    8b0d105cd900
                         push               edi                                           // 0x006f964c    57
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x006f964d    8d442404
                         push               eax                                           // 0x006f9651    50
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x006f9652    c744241000000000
                         {disp8} mov        dword ptr [esp + 0x1c], 0x00000000            // 0x006f965a    c744241c00000000
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000            // 0x006f9662    c744241800000000
                         call               _jmp_addr_0x006f6bc0                          // 0x006f966a    e851d5ffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f966f    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x04]                   // 0x006f9675    8d542404
                         push               edx                                           // 0x006f9679    52
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x006f967a    8944240c
                         call               _jmp_addr_0x006f6bc0                          // 0x006f967e    e83dd5ffff
                         mov.s              edi, eax                                      // 0x006f9683    8bf8
                         cmp                edi, 0x0c                                     // 0x006f9685    83ff0c
                         .byte              0x72, 0xd// {disp8} jb _jmp_addr_0x006f9697   // 0x006f9688    720d
                         push               0x00c0d5e0                                    // 0x006f968a    68e0d5c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f968f    e81cccffff
                         add                esp, 0x04                                     // 0x006f9694    83c404
_jmp_addr_0x006f9697:    push               esi                                           // 0x006f9697    56
                         xor.s              esi, esi                                      // 0x006f9698    33f6
                         test               edi, edi                                      // 0x006f969a    85ff
                         {disp8} jbe        _jmp_addr_0x006f96b7                          // 0x006f969c    7619
_jmp_addr_0x006f969e:    {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f969e    8b0d105cd900
                         {disp8} lea        eax, dword ptr [esp + esi * 0x4 + 0x3c]       // 0x006f96a4    8d44b43c
                         push               eax                                           // 0x006f96a8    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f96a9    e812d5ffff
                         {disp8} mov        dword ptr [esp + esi * 0x4 + 0x6c], eax       // 0x006f96ae    8944b46c
                         inc                esi                                           // 0x006f96b2    46
                         cmp.s              esi, edi                                      // 0x006f96b3    3bf7
                         .byte              0x72, 0xe7// {disp8} jb _jmp_addr_0x006f969e  // 0x006f96b5    72e7
_jmp_addr_0x006f96b7:    {disp32} mov       esi, dword ptr [_script_dll]                  // 0x006f96b7    8b35105cd900
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x006f96bd    8d4c2408
                         push               ecx                                           // 0x006f96c1    51
                         mov.s              ecx, esi                                      // 0x006f96c2    8bce
                         call               _jmp_addr_0x006f6bc0                          // 0x006f96c4    e8f7d4ffff
                         push               eax                                           // 0x006f96c9    50
                         mov.s              ecx, esi                                      // 0x006f96ca    8bce
                         call               _jmp_addr_0x006f6bd0                          // 0x006f96cc    e8ffd4ffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f96d1    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x006f96d7    8d542408
                         push               edx                                           // 0x006f96db    52
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x006f96dc    89442414
                         call               _jmp_addr_0x006f6bc0                          // 0x006f96e0    e8dbd4ffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f96e5    8b0d105cd900
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x006f96eb    89442414
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x006f96ef    8d442408
                         push               eax                                           // 0x006f96f3    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f96f4    e8c7d4ffff
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x006f96f9    89442408
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x006f96fd    d9442408
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2678]              // 0x006f9701    d81d78b68a00
                         mov.s              ecx, eax                                      // 0x006f9707    8bc8
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x006f9709    894c2418
                         pop                esi                                           // 0x006f970d    5e
                         fnstsw             ax                                            // 0x006f970e    dfe0
                         test               ah, 0x01                                      // 0x006f9710    f6c401
                         {disp8} je         _jmp_addr_0x006f971f                          // 0x006f9713    740a
                         {disp8} mov        dword ptr [esp + 0x14], 0xbf800000            // 0x006f9715    c7442414000080bf
                         {disp8} jmp        _jmp_addr_0x006f9738                          // 0x006f971d    eb19
_jmp_addr_0x006f971f:    {disp8} fld        dword ptr [esp + 0x04]                        // 0x006f971f    d9442404
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x006f9723    d81d90a38a00
                         fnstsw             ax                                            // 0x006f9729    dfe0
                         test               ah, 0x41                                      // 0x006f972b    f6c441
                         {disp8} jne        _jmp_addr_0x006f9738                          // 0x006f972e    7508
                         {disp8} mov        dword ptr [esp + 0x14], 0x3f800000            // 0x006f9730    c74424140000803f
_jmp_addr_0x006f9738:    {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f9738    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x04]                   // 0x006f973e    8d542404
                         push               edx                                           // 0x006f9742    52
                         call               _jmp_addr_0x006f6bc0                          // 0x006f9743    e878d4ffff
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x006f9748    89442404
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x006f974c    d9442404
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x006f9750    d81d98a38a00
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x006f9756    89442418
                         fnstsw             ax                                            // 0x006f975a    dfe0
                         test               ah, 0x01                                      // 0x006f975c    f6c401
                         {disp8} je         _jmp_addr_0x006f976b                          // 0x006f975f    740a
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000            // 0x006f9761    c744241800000000
                         {disp8} jmp        _jmp_addr_0x006f9784                          // 0x006f9769    eb19
_jmp_addr_0x006f976b:    {disp8} fld        dword ptr [esp + 0x04]                        // 0x006f976b    d9442404
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x006f976f    d81d90a38a00
                         fnstsw             ax                                            // 0x006f9775    dfe0
                         test               ah, 0x41                                      // 0x006f9777    f6c441
                         {disp8} jne        _jmp_addr_0x006f9784                          // 0x006f977a    7508
                         {disp8} mov        dword ptr [esp + 0x18], 0x3f800000            // 0x006f977c    c74424180000803f
_jmp_addr_0x006f9784:    push               0x0                                           // 0x006f9784    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x3c]                   // 0x006f9786    8d4c243c
                         push               ecx                                           // 0x006f978a    51
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006f978b    8b0d5c19d000
                         {disp32} mov       ecx, dword ptr [ecx + 0x000059b4]             // 0x006f9791    8b89b4590000
                         {disp8} lea        edx, dword ptr [esp + 0x70]                   // 0x006f9797    8d542470
                         push               edx                                           // 0x006f979b    52
                         push               edi                                           // 0x006f979c    57
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x006f979d    8d442418
                         push               eax                                           // 0x006f97a1    50
                         call               _jmp_addr_0x00794970                          // 0x006f97a2    e8c9b10900
                         pop                edi                                           // 0x006f97a7    5f
                         add                esp, 0x00000094                               // 0x006f97a8    81c494000000
                         ret                                                              // 0x006f97ae    c3
                         nop                                                              // 0x006f97af    90
                         sub                esp, 0x00000094                               // 0x006f97b0    81ec94000000
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f97b6    8b0d105cd900
                         push               esi                                           // 0x006f97bc    56
                         push               edi                                           // 0x006f97bd    57
                         xor.s              esi, esi                                      // 0x006f97be    33f6
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x006f97c0    8d442408
                         push               eax                                           // 0x006f97c4    50
                         {disp8} mov        dword ptr [esp + 0x14], esi                   // 0x006f97c5    89742414
                         {disp8} mov        dword ptr [esp + 0x20], esi                   // 0x006f97c9    89742420
                         {disp8} mov        dword ptr [esp + 0x1c], esi                   // 0x006f97cd    8974241c
                         call               _jmp_addr_0x006f6bc0                          // 0x006f97d1    e8ead3ffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f97d6    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x006f97dc    8d542408
                         push               edx                                           // 0x006f97e0    52
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x006f97e1    89442410
                         call               _jmp_addr_0x006f6bc0                          // 0x006f97e5    e8d6d3ffff
                         mov.s              edi, eax                                      // 0x006f97ea    8bf8
                         cmp                edi, 0x0c                                     // 0x006f97ec    83ff0c
                         {disp8} jbe        _jmp_addr_0x006f97fe                          // 0x006f97ef    760d
                         push               0x00c0d5e0                                    // 0x006f97f1    68e0d5c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f97f6    e8b5caffff
                         add                esp, 0x04                                     // 0x006f97fb    83c404
_jmp_addr_0x006f97fe:    cmp.s              edi, esi                                      // 0x006f97fe    3bfe
                         {disp8} jbe        _jmp_addr_0x006f981b                          // 0x006f9800    7619
_jmp_addr_0x006f9802:    {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f9802    8b0d105cd900
                         {disp8} lea        eax, dword ptr [esp + esi * 0x4 + 0x3c]       // 0x006f9808    8d44b43c
                         push               eax                                           // 0x006f980c    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f980d    e8aed3ffff
                         {disp8} mov        dword ptr [esp + esi * 0x4 + 0x6c], eax       // 0x006f9812    8944b46c
                         inc                esi                                           // 0x006f9816    46
                         cmp.s              esi, edi                                      // 0x006f9817    3bf7
                         .byte              0x72, 0xe7// {disp8} jb _jmp_addr_0x006f9802  // 0x006f9819    72e7
_jmp_addr_0x006f981b:    {disp32} mov       esi, dword ptr [_script_dll]                  // 0x006f981b    8b35105cd900
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x006f9821    8d4c2408
                         push               ecx                                           // 0x006f9825    51
                         mov.s              ecx, esi                                      // 0x006f9826    8bce
                         call               _jmp_addr_0x006f6bc0                          // 0x006f9828    e893d3ffff
                         push               eax                                           // 0x006f982d    50
                         mov.s              ecx, esi                                      // 0x006f982e    8bce
                         call               _jmp_addr_0x006f6bd0                          // 0x006f9830    e89bd3ffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f9835    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x006f983b    8d542408
                         push               edx                                           // 0x006f983f    52
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x006f9840    89442414
                         call               _jmp_addr_0x006f6bc0                          // 0x006f9844    e877d3ffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f9849    8b0d105cd900
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x006f984f    89442414
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x006f9853    8d442408
                         push               eax                                           // 0x006f9857    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f9858    e863d3ffff
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x006f985d    89442408
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x006f9861    d9442408
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2678]              // 0x006f9865    d81d78b68a00
                         mov.s              ecx, eax                                      // 0x006f986b    8bc8
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x006f986d    894c2418
                         fnstsw             ax                                            // 0x006f9871    dfe0
                         test               ah, 0x01                                      // 0x006f9873    f6c401
                         {disp8} je         _jmp_addr_0x006f9882                          // 0x006f9876    740a
                         {disp8} mov        dword ptr [esp + 0x18], 0xbf800000            // 0x006f9878    c7442418000080bf
                         {disp8} jmp        _jmp_addr_0x006f989b                          // 0x006f9880    eb19
_jmp_addr_0x006f9882:    {disp8} fld        dword ptr [esp + 0x08]                        // 0x006f9882    d9442408
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x006f9886    d81d90a38a00
                         fnstsw             ax                                            // 0x006f988c    dfe0
                         test               ah, 0x41                                      // 0x006f988e    f6c441
                         {disp8} jne        _jmp_addr_0x006f989b                          // 0x006f9891    7508
                         {disp8} mov        dword ptr [esp + 0x18], 0x3f800000            // 0x006f9893    c74424180000803f
_jmp_addr_0x006f989b:    {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f989b    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x006f98a1    8d542408
                         push               edx                                           // 0x006f98a5    52
                         call               _jmp_addr_0x006f6bc0                          // 0x006f98a6    e815d3ffff
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x006f98ab    89442408
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x006f98af    d9442408
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x006f98b3    d81d98a38a00
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x006f98b9    8944241c
                         fnstsw             ax                                            // 0x006f98bd    dfe0
                         test               ah, 0x01                                      // 0x006f98bf    f6c401
                         {disp8} je         _jmp_addr_0x006f98ce                          // 0x006f98c2    740a
                         {disp8} mov        dword ptr [esp + 0x1c], 0x00000000            // 0x006f98c4    c744241c00000000
                         {disp8} jmp        _jmp_addr_0x006f98e7                          // 0x006f98cc    eb19
_jmp_addr_0x006f98ce:    {disp8} fld        dword ptr [esp + 0x08]                        // 0x006f98ce    d9442408
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x006f98d2    d81d90a38a00
                         fnstsw             ax                                            // 0x006f98d8    dfe0
                         test               ah, 0x41                                      // 0x006f98da    f6c441
                         {disp8} jne        _jmp_addr_0x006f98e7                          // 0x006f98dd    7508
                         {disp8} mov        dword ptr [esp + 0x1c], 0x3f800000            // 0x006f98df    c744241c0000803f
_jmp_addr_0x006f98e7:    {disp32} mov       esi, dword ptr [_script_dll]                  // 0x006f98e7    8b35105cd900
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x006f98ed    8d4c2408
                         push               ecx                                           // 0x006f98f1    51
                         mov.s              ecx, esi                                      // 0x006f98f2    8bce
                         call               _jmp_addr_0x006f6bc0                          // 0x006f98f4    e8c7d2ffff
                         mov.s              edx, eax                                      // 0x006f98f9    8bd0
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x006f98fb    89442408
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x006f98ff    8d442408
                         push               eax                                           // 0x006f9903    50
                         mov.s              ecx, esi                                      // 0x006f9904    8bce
                         {disp8} mov        dword ptr [esp + 0x38], edx                   // 0x006f9906    89542438
                         call               _jmp_addr_0x006f6bc0                          // 0x006f990a    e8b1d2ffff
                         mov.s              ecx, eax                                      // 0x006f990f    8bc8
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x006f9911    8d542408
                         {disp8} mov        dword ptr [esp + 0x30], ecx                   // 0x006f9915    894c2430
                         push               edx                                           // 0x006f9919    52
                         mov.s              ecx, esi                                      // 0x006f991a    8bce
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x006f991c    8944240c
                         call               _jmp_addr_0x006f6bc0                          // 0x006f9920    e89bd2ffff
                         {disp32} mov       esi, dword ptr [_script_dll]                  // 0x006f9925    8b35105cd900
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x006f992b    8d4c2408
                         push               ecx                                           // 0x006f992f    51
                         mov.s              ecx, esi                                      // 0x006f9930    8bce
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x006f9932    8944240c
                         {disp8} mov        dword ptr [esp + 0x30], eax                   // 0x006f9936    89442430
                         call               _jmp_addr_0x006f6bc0                          // 0x006f993a    e881d2ffff
                         mov.s              edx, eax                                      // 0x006f993f    8bd0
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x006f9941    89442408
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x006f9945    8d442408
                         push               eax                                           // 0x006f9949    50
                         mov.s              ecx, esi                                      // 0x006f994a    8bce
                         {disp8} mov        dword ptr [esp + 0x2c], edx                   // 0x006f994c    8954242c
                         call               _jmp_addr_0x006f6bc0                          // 0x006f9950    e86bd2ffff
                         mov.s              ecx, eax                                      // 0x006f9955    8bc8
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x006f9957    8d542408
                         {disp8} mov        dword ptr [esp + 0x24], ecx                   // 0x006f995b    894c2424
                         push               edx                                           // 0x006f995f    52
                         mov.s              ecx, esi                                      // 0x006f9960    8bce
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x006f9962    8944240c
                         call               _jmp_addr_0x006f6bc0                          // 0x006f9966    e855d2ffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f996b    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x006f9971    8d542408
                         push               edx                                           // 0x006f9975    52
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x006f9976    8944240c
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x006f997a    89442424
                         call               _jmp_addr_0x006f6bc0                          // 0x006f997e    e83dd2ffff
                         {disp8} mov        dword ptr [esp + 0x38], eax                   // 0x006f9983    89442438
                         push               0x1                                           // 0x006f9987    6a01
                         {disp8} lea        eax, dword ptr [esp + 0x40]                   // 0x006f9989    8d442440
                         push               eax                                           // 0x006f998d    50
                         {disp32} mov       eax, dword ptr [_game]                        // 0x006f998e    a15c19d000
                         {disp8} lea        ecx, dword ptr [esp + 0x74]                   // 0x006f9993    8d4c2474
                         push               ecx                                           // 0x006f9997    51
                         {disp32} mov       ecx, dword ptr [eax + 0x000059b4]             // 0x006f9998    8b88b4590000
                         push               edi                                           // 0x006f999e    57
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                   // 0x006f999f    8d54241c
                         push               edx                                           // 0x006f99a3    52
                         call               _jmp_addr_0x00794970                          // 0x006f99a4    e8c7af0900
                         pop                edi                                           // 0x006f99a9    5f
                         pop                esi                                           // 0x006f99aa    5e
                         add                esp, 0x00000094                               // 0x006f99ab    81c494000000
                         ret                                                              // 0x006f99b1    c3
                         nop                                                              // 0x006f99b2    90
                         nop                                                              // 0x006f99b3    90
                         nop                                                              // 0x006f99b4    90
                         nop                                                              // 0x006f99b5    90
                         nop                                                              // 0x006f99b6    90
                         nop                                                              // 0x006f99b7    90
                         nop                                                              // 0x006f99b8    90
                         nop                                                              // 0x006f99b9    90
                         nop                                                              // 0x006f99ba    90
                         nop                                                              // 0x006f99bb    90
                         nop                                                              // 0x006f99bc    90
                         nop                                                              // 0x006f99bd    90
                         nop                                                              // 0x006f99be    90
                         nop                                                              // 0x006f99bf    90
                         sub                esp, 0x08                                     // 0x006f99c0    83ec08
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f99c3    8b0d105cd900
                         push               esi                                           // 0x006f99c9    56
                         push               edi                                           // 0x006f99ca    57
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x006f99cb    8d44240c
                         push               eax                                           // 0x006f99cf    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f99d0    e8ebd1ffff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006f99d5    8b0d5c19d000
                         push               eax                                           // 0x006f99db    50
                         call               ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z          // 0x006f99dc    e8cf6fe5ff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f99e1    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x006f99e7    8d542408
                         push               edx                                           // 0x006f99eb    52
                         mov.s              esi, eax                                      // 0x006f99ec    8bf0
                         call               _jmp_addr_0x006f6bc0                          // 0x006f99ee    e8cdd1ffff
                         mov.s              edi, eax                                      // 0x006f99f3    8bf8
                         {disp8} mov        dword ptr [esp + 0x08], edi                   // 0x006f99f5    897c2408
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x006f99f9    d9442408
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2678]              // 0x006f99fd    d81d78b68a00
                         fnstsw             ax                                            // 0x006f9a03    dfe0
                         test               ah, 0x01                                      // 0x006f9a05    f6c401
                         {disp8} jne        _jmp_addr_0x006f9a1b                          // 0x006f9a08    7511
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x006f9a0a    d9442408
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x006f9a0e    d81d90a38a00
                         fnstsw             ax                                            // 0x006f9a14    dfe0
                         test               ah, 0x41                                      // 0x006f9a16    f6c441
                         {disp8} jne        _jmp_addr_0x006f9a28                          // 0x006f9a19    750d
_jmp_addr_0x006f9a1b:    push               0x00c0d60c                                    // 0x006f9a1b    680cd6c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f9a20    e88bc8ffff
                         add                esp, 0x04                                     // 0x006f9a25    83c404
_jmp_addr_0x006f9a28:    {disp8} fld        dword ptr [esp + 0x08]                        // 0x006f9a28    d9442408
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2678]              // 0x006f9a2c    d81d78b68a00
                         fnstsw             ax                                            // 0x006f9a32    dfe0
                         test               ah, 0x01                                      // 0x006f9a34    f6c401
                         {disp8} jne        _jmp_addr_0x006f9a53                          // 0x006f9a37    751a
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x006f9a39    d9442408
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x006f9a3d    d81d90a38a00
                         fnstsw             ax                                            // 0x006f9a43    dfe0
                         test               ah, 0x41                                      // 0x006f9a45    f6c441
                         {disp8} je         _jmp_addr_0x006f9a53                          // 0x006f9a48    7409
                         {disp8} mov        ecx, dword ptr [esi + 0x60]                   // 0x006f9a4a    8b4e60
                         push               edi                                           // 0x006f9a4d    57
                         call               _jmp_addr_0x004146b0                          // 0x006f9a4e    e85dacd1ff
_jmp_addr_0x006f9a53:    pop                edi                                           // 0x006f9a53    5f
                         pop                esi                                           // 0x006f9a54    5e
                         add                esp, 0x08                                     // 0x006f9a55    83c408
                         ret                                                              // 0x006f9a58    c3
                         nop                                                              // 0x006f9a59    90
                         nop                                                              // 0x006f9a5a    90
                         nop                                                              // 0x006f9a5b    90
                         nop                                                              // 0x006f9a5c    90
                         nop                                                              // 0x006f9a5d    90
                         nop                                                              // 0x006f9a5e    90
                         nop                                                              // 0x006f9a5f    90
                         push               ecx                                           // 0x006f9a60    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f9a61    8b0d105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x00]                   // 0x006f9a67    8d442400
                         push               eax                                           // 0x006f9a6b    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f9a6c    e84fd1ffff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006f9a71    8b0d5c19d000
                         push               eax                                           // 0x006f9a77    50
                         call               ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z          // 0x006f9a78    e8336fe5ff
                         mov.s              ecx, eax                                      // 0x006f9a7d    8bc8
                         call               _jmp_addr_0x0064d6a0                          // 0x006f9a7f    e81c3cf5ff
                         {disp8} fstp       dword ptr [esp + 0x00]                        // 0x006f9a84    d95c2400
                         {disp8} mov        ecx, dword ptr [esp + 0x00]                   // 0x006f9a88    8b4c2400
                         push               0x2                                           // 0x006f9a8c    6a02
                         push               ecx                                           // 0x006f9a8e    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f9a8f    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006f9a95    e806d1ffff
                         pop                ecx                                           // 0x006f9a9a    59
                         ret                                                              // 0x006f9a9b    c3
                         nop                                                              // 0x006f9a9c    90
                         nop                                                              // 0x006f9a9d    90
                         nop                                                              // 0x006f9a9e    90
                         nop                                                              // 0x006f9a9f    90
                         push               ecx                                           // 0x006f9aa0    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f9aa1    8b0d105cd900
                         push               ebx                                           // 0x006f9aa7    53
                         push               esi                                           // 0x006f9aa8    56
                         push               edi                                           // 0x006f9aa9    57
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x006f9aaa    8d44240c
                         push               eax                                           // 0x006f9aae    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f9aaf    e80cd1ffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f9ab4    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x006f9aba    8d54240c
                         push               edx                                           // 0x006f9abe    52
                         mov.s              esi, eax                                      // 0x006f9abf    8bf0
                         call               _jmp_addr_0x006f6bc0                          // 0x006f9ac1    e8fad0ffff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006f9ac6    8b0d5c19d000
                         push               eax                                           // 0x006f9acc    50
                         call               ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z          // 0x006f9acd    e8de6ee5ff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f9ad2    8b0d105cd900
                         mov.s              edi, eax                                      // 0x006f9ad8    8bf8
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x006f9ada    8d44240c
                         push               eax                                           // 0x006f9ade    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f9adf    e8dcd0ffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f9ae4    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x006f9aea    8d54240c
                         push               edx                                           // 0x006f9aee    52
                         mov.s              ebx, eax                                      // 0x006f9aef    8bd8
                         call               _jmp_addr_0x006f6bc0                          // 0x006f9af1    e8cad0ffff
                         push               eax                                           // 0x006f9af6    50
                         call               _jmp_addr_0x0070d220                          // 0x006f9af7    e824370100
                         add                esp, 0x04                                     // 0x006f9afc    83c404
                         test               eax, eax                                      // 0x006f9aff    85c0
                         {disp8} jne        _jmp_addr_0x006f9b31                          // 0x006f9b01    752e
                         push               0x00c0d644                                    // 0x006f9b03    6844d6c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f9b08    e8a3c7ffff
                         add                esp, 0x04                                     // 0x006f9b0d    83c404
_jmp_addr_0x006f9b10:    push               0x00c0d624                                    // 0x006f9b10    6824d6c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f9b15    e896c7ffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f9b1a    8b0d105cd900
                         add                esp, 0x04                                     // 0x006f9b20    83c404
                         push               0x4                                           // 0x006f9b23    6a04
                         push               0x0                                           // 0x006f9b25    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006f9b27    e874d0ffff
                         pop                edi                                           // 0x006f9b2c    5f
                         pop                esi                                           // 0x006f9b2d    5e
                         pop                ebx                                           // 0x006f9b2e    5b
                         pop                ecx                                           // 0x006f9b2f    59
                         ret                                                              // 0x006f9b30    c3
_jmp_addr_0x006f9b31:    push               esi                                           // 0x006f9b31    56
                         push               ebx                                           // 0x006f9b32    53
                         push               edi                                           // 0x006f9b33    57
                         push               eax                                           // 0x006f9b34    50
                         call               _jmp_addr_0x005cd990                          // 0x006f9b35    e8563eedff
                         add                esp, 0x10                                     // 0x006f9b3a    83c410
                         test               eax, eax                                      // 0x006f9b3d    85c0
                         {disp8} je         _jmp_addr_0x006f9b10                          // 0x006f9b3f    74cf
                         push               0x1                                           // 0x006f9b41    6a01
                         push               eax                                           // 0x006f9b43    50
                         call               _jmp_addr_0x0070d0f0                          // 0x006f9b44    e8a7350100
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f9b49    8b0d105cd900
                         add                esp, 0x08                                     // 0x006f9b4f    83c408
                         push               0x4                                           // 0x006f9b52    6a04
                         push               eax                                           // 0x006f9b54    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006f9b55    e846d0ffff
                         pop                edi                                           // 0x006f9b5a    5f
                         pop                esi                                           // 0x006f9b5b    5e
                         pop                ebx                                           // 0x006f9b5c    5b
                         pop                ecx                                           // 0x006f9b5d    59
                         ret                                                              // 0x006f9b5e    c3
                         nop                                                              // 0x006f9b5f    90
                         sub                esp, 0x20                                     // 0x006f9b60    83ec20
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f9b63    8b0d105cd900
                         push               ebx                                           // 0x006f9b69    53
                         push               esi                                           // 0x006f9b6a    56
                         push               edi                                           // 0x006f9b6b    57
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x006f9b6c    8d442410
                         push               eax                                           // 0x006f9b70    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f9b71    e84ad0ffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f9b76    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x006f9b7c    8d542410
                         push               edx                                           // 0x006f9b80    52
                         mov.s              edi, eax                                      // 0x006f9b81    8bf8
                         call               _jmp_addr_0x006f6bc0                          // 0x006f9b83    e838d0ffff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006f9b88    8b0d5c19d000
                         push               eax                                           // 0x006f9b8e    50
                         call               ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z          // 0x006f9b8f    e81c6ee5ff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f9b94    8b0d105cd900
                         mov.s              ebx, eax                                      // 0x006f9b9a    8bd8
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x006f9b9c    8d442410
                         push               eax                                           // 0x006f9ba0    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f9ba1    e81ad0ffff
                         {disp32} mov       esi, dword ptr [_script_dll]                  // 0x006f9ba6    8b35105cd900
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x006f9bac    8d4c240c
                         push               ecx                                           // 0x006f9bb0    51
                         mov.s              ecx, esi                                      // 0x006f9bb1    8bce
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x006f9bb3    89442414
                         call               _jmp_addr_0x006f6bc0                          // 0x006f9bb7    e804d0ffff
                         mov.s              edx, eax                                      // 0x006f9bbc    8bd0
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x006f9bbe    8944240c
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x006f9bc2    8d44240c
                         push               eax                                           // 0x006f9bc6    50
                         mov.s              ecx, esi                                      // 0x006f9bc7    8bce
                         {disp8} mov        dword ptr [esp + 0x20], edx                   // 0x006f9bc9    89542420
                         call               _jmp_addr_0x006f6bc0                          // 0x006f9bcd    e8eecfffff
                         mov.s              ecx, eax                                      // 0x006f9bd2    8bc8
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x006f9bd4    8d54240c
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x006f9bd8    894c2418
                         push               edx                                           // 0x006f9bdc    52
                         mov.s              ecx, esi                                      // 0x006f9bdd    8bce
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x006f9bdf    89442410
                         call               _jmp_addr_0x006f6bc0                          // 0x006f9be3    e8d8cfffff
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x006f9be8    d9442410
                         push               edi                                           // 0x006f9bec    57
                         push               ecx                                           // 0x006f9bed    51
                         fstp               dword ptr [esp]                               // 0x006f9bee    d91c24
                         push               ebx                                           // 0x006f9bf1    53
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x006f9bf2    8d4c2420
                         push               ecx                                           // 0x006f9bf6    51
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x006f9bf7    8d4c2430
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x006f9bfb    8944241c
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x006f9bff    89442424
                         call               @__ct__9MapCoordsFRC7LHPoint@12               // 0x006f9c03    e85895f0ff
                         push               eax                                           // 0x006f9c08    50
                         call               _jmp_addr_0x005cd9d0                          // 0x006f9c09    e8c23dedff
                         add                esp, 0x10                                     // 0x006f9c0e    83c410
                         test               eax, eax                                      // 0x006f9c11    85c0
                         pop                edi                                           // 0x006f9c13    5f
                         pop                esi                                           // 0x006f9c14    5e
                         pop                ebx                                           // 0x006f9c15    5b
                         {disp8} je         _jmp_addr_0x006f9c35                          // 0x006f9c16    741d
                         push               0x1                                           // 0x006f9c18    6a01
                         push               eax                                           // 0x006f9c1a    50
                         call               _jmp_addr_0x0070d0f0                          // 0x006f9c1b    e8d0340100
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f9c20    8b0d105cd900
                         add                esp, 0x08                                     // 0x006f9c26    83c408
                         push               0x4                                           // 0x006f9c29    6a04
                         push               eax                                           // 0x006f9c2b    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006f9c2c    e86fcfffff
                         add                esp, 0x20                                     // 0x006f9c31    83c420
                         ret                                                              // 0x006f9c34    c3
_jmp_addr_0x006f9c35:    push               0x00c0d624                                    // 0x006f9c35    6824d6c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f9c3a    e871c6ffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f9c3f    8b0d105cd900
                         add                esp, 0x04                                     // 0x006f9c45    83c404
                         push               0x4                                           // 0x006f9c48    6a04
                         push               0x0                                           // 0x006f9c4a    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006f9c4c    e84fcfffff
                         add                esp, 0x20                                     // 0x006f9c51    83c420
                         ret                                                              // 0x006f9c54    c3
                         nop                                                              // 0x006f9c55    90
                         nop                                                              // 0x006f9c56    90
                         nop                                                              // 0x006f9c57    90
                         nop                                                              // 0x006f9c58    90
                         nop                                                              // 0x006f9c59    90
                         nop                                                              // 0x006f9c5a    90
                         nop                                                              // 0x006f9c5b    90
                         nop                                                              // 0x006f9c5c    90
                         nop                                                              // 0x006f9c5d    90
                         nop                                                              // 0x006f9c5e    90
                         nop                                                              // 0x006f9c5f    90
                         sub                esp, 0x20                                     // 0x006f9c60    83ec20
                         push               esi                                           // 0x006f9c63    56
                         {disp32} mov       esi, dword ptr [_script_dll]                  // 0x006f9c64    8b35105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x006f9c6a    8d442404
                         push               eax                                           // 0x006f9c6e    50
                         mov.s              ecx, esi                                      // 0x006f9c6f    8bce
                         call               _jmp_addr_0x006f6bc0                          // 0x006f9c71    e84acfffff
                         mov.s              ecx, eax                                      // 0x006f9c76    8bc8
                         {disp8} lea        edx, dword ptr [esp + 0x04]                   // 0x006f9c78    8d542404
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x006f9c7c    894c2414
                         push               edx                                           // 0x006f9c80    52
                         mov.s              ecx, esi                                      // 0x006f9c81    8bce
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x006f9c83    89442408
                         call               _jmp_addr_0x006f6bc0                          // 0x006f9c87    e834cfffff
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                   // 0x006f9c8c    8d4c2404
                         push               ecx                                           // 0x006f9c90    51
                         mov.s              ecx, esi                                      // 0x006f9c91    8bce
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x006f9c93    89442408
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x006f9c97    89442414
                         call               _jmp_addr_0x006f6bc0                          // 0x006f9c9b    e820cfffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f9ca0    8b0d105cd900
                         mov.s              edx, eax                                      // 0x006f9ca6    8bd0
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x006f9ca8    89442404
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x006f9cac    8d442404
                         push               eax                                           // 0x006f9cb0    50
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x006f9cb1    89542410
                         call               _jmp_addr_0x006f6bc0                          // 0x006f9cb5    e806cfffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f9cba    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x006f9cc0    8d542408
                         push               edx                                           // 0x006f9cc4    52
                         mov.s              esi, eax                                      // 0x006f9cc5    8bf0
                         call               _jmp_addr_0x006f6bc0                          // 0x006f9cc7    e8f4ceffff
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x006f9ccc    89442404
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x006f9cd0    d9442404
                         call               _jmp_addr_0x007a1400                          // 0x006f9cd4    e827770a00
                         push               eax                                           // 0x006f9cd9    50
                         call               _jmp_addr_0x006eb9a0                          // 0x006f9cda    e8c11cffff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006f9cdf    8b0d5c19d000
                         add                esp, 0x04                                     // 0x006f9ce5    83c404
                         push               eax                                           // 0x006f9ce8    50
                         call               ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z          // 0x006f9ce9    e8c26ce5ff
                         xor.s              ecx, ecx                                      // 0x006f9cee    33c9
                         test               esi, esi                                      // 0x006f9cf0    85f6
                         sete               cl                                            // 0x006f9cf2    0f94c1
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x006f9cf5    8d54240c
                         push               ecx                                           // 0x006f9cf9    51
                         push               0x0                                           // 0x006f9cfa    6a00
                         push               0x0                                           // 0x006f9cfc    6a00
                         push               eax                                           // 0x006f9cfe    50
                         push               edx                                           // 0x006f9cff    52
                         {disp8} lea        ecx, dword ptr [esp + 0x2c]                   // 0x006f9d00    8d4c242c
                         call               @__ct__9MapCoordsFRC7LHPoint@12               // 0x006f9d04    e85794f0ff
                         push               eax                                           // 0x006f9d09    50
                         call               _jmp_addr_0x005cd170                          // 0x006f9d0a    e86134edff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f9d0f    8b0d105cd900
                         add                esp, 0x14                                     // 0x006f9d15    83c414
                         {disp8} fstp       dword ptr [esp + 0x04]                        // 0x006f9d18    d95c2404
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x006f9d1c    8b442404
                         push               0x2                                           // 0x006f9d20    6a02
                         push               eax                                           // 0x006f9d22    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006f9d23    e878ceffff
                         pop                esi                                           // 0x006f9d28    5e
                         add                esp, 0x20                                     // 0x006f9d29    83c420
                         ret                                                              // 0x006f9d2c    c3
                         nop                                                              // 0x006f9d2d    90
                         nop                                                              // 0x006f9d2e    90
                         nop                                                              // 0x006f9d2f    90
                         push               ecx                                           // 0x006f9d30    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f9d31    8b0d105cd900
                         push               esi                                           // 0x006f9d37    56
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x006f9d38    8d442404
                         push               eax                                           // 0x006f9d3c    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f9d3d    e87eceffff
                         push               eax                                           // 0x006f9d42    50
                         call               _jmp_addr_0x0070d220                          // 0x006f9d43    e8d8340100
                         mov.s              esi, eax                                      // 0x006f9d48    8bf0
                         add                esp, 0x04                                     // 0x006f9d4a    83c404
                         test               esi, esi                                      // 0x006f9d4d    85f6
                         {disp8} jne        _jmp_addr_0x006f9d58                          // 0x006f9d4f    7507
                         push               0x00c0c258                                    // 0x006f9d51    6858c2c000
                         {disp8} jmp        _jmp_addr_0x006f9d8f                          // 0x006f9d56    eb37
_jmp_addr_0x006f9d58:    mov                edx, dword ptr [esi]                          // 0x006f9d58    8b16
                         mov.s              ecx, esi                                      // 0x006f9d5a    8bce
                         call               dword ptr [edx + 0x34]                        // 0x006f9d5c    ff5234
                         test               eax, eax                                      // 0x006f9d5f    85c0
                         {disp8} je         _jmp_addr_0x006f9d8a                          // 0x006f9d61    7427
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]             // 0x006f9d63    8b8660010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                   // 0x006f9d69    8b4858
                         call               _jmp_addr_0x00484c60                          // 0x006f9d6c    e8efaed8ff
                         {disp8} fstp       dword ptr [esp + 0x04]                        // 0x006f9d71    d95c2404
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x006f9d75    8b4c2404
                         push               0x2                                           // 0x006f9d79    6a02
                         push               ecx                                           // 0x006f9d7b    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f9d7c    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006f9d82    e819ceffff
                         pop                esi                                           // 0x006f9d87    5e
                         pop                ecx                                           // 0x006f9d88    59
                         ret                                                              // 0x006f9d89    c3
_jmp_addr_0x006f9d8a:    push               0x00c0d654                                    // 0x006f9d8a    6854d6c000
_jmp_addr_0x006f9d8f:    call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f9d8f    e81cc5ffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f9d94    8b0d105cd900
                         add                esp, 0x04                                     // 0x006f9d9a    83c404
                         {disp8} mov        dword ptr [esp + 0x04], 0x3f800000            // 0x006f9d9d    c74424040000803f
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x006f9da5    8b542404
                         push               0x2                                           // 0x006f9da9    6a02
                         push               edx                                           // 0x006f9dab    52
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006f9dac    e8efcdffff
                         pop                esi                                           // 0x006f9db1    5e
                         pop                ecx                                           // 0x006f9db2    59
                         ret                                                              // 0x006f9db3    c3
                         nop                                                              // 0x006f9db4    90
                         nop                                                              // 0x006f9db5    90
                         nop                                                              // 0x006f9db6    90
                         nop                                                              // 0x006f9db7    90
                         nop                                                              // 0x006f9db8    90
                         nop                                                              // 0x006f9db9    90
                         nop                                                              // 0x006f9dba    90
                         nop                                                              // 0x006f9dbb    90
                         nop                                                              // 0x006f9dbc    90
                         nop                                                              // 0x006f9dbd    90
                         nop                                                              // 0x006f9dbe    90
                         nop                                                              // 0x006f9dbf    90
                         push               ecx                                           // 0x006f9dc0    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f9dc1    8b0d105cd900
                         push               esi                                           // 0x006f9dc7    56
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x006f9dc8    8d442404
                         push               eax                                           // 0x006f9dcc    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f9dcd    e8eecdffff
                         push               eax                                           // 0x006f9dd2    50
                         call               _jmp_addr_0x0070d220                          // 0x006f9dd3    e848340100
                         mov.s              esi, eax                                      // 0x006f9dd8    8bf0
                         add                esp, 0x04                                     // 0x006f9dda    83c404
                         test               esi, esi                                      // 0x006f9ddd    85f6
                         {disp8} jne        _jmp_addr_0x006f9deb                          // 0x006f9ddf    750a
                         push               0x00c0c258                                    // 0x006f9de1    6858c2c000
                         {disp32} jmp       _jmp_addr_0x006f9f36                          // 0x006f9de6    e94b010000
_jmp_addr_0x006f9deb:    mov                edx, dword ptr [esi]                          // 0x006f9deb    8b16
                         mov.s              ecx, esi                                      // 0x006f9ded    8bce
                         call               dword ptr [edx + 0x34]                        // 0x006f9def    ff5234
                         test               eax, eax                                      // 0x006f9df2    85c0
                         {disp32} je        _jmp_addr_0x006f9e7f                          // 0x006f9df4    0f8485000000
                         push               edi                                           // 0x006f9dfa    57
                         {disp32} mov       edi, dword ptr [esi + 0x00000164]             // 0x006f9dfb    8bbe64010000
                         add                edi, 0x00000710                               // 0x006f9e01    81c710070000
                         {disp32} lea       ecx, dword ptr [edi + 0x00000838]             // 0x006f9e07    8d8f38080000
                         call               _jmp_addr_0x004f12e0                          // 0x006f9e0d    e8ce74dfff
                         test               eax, eax                                      // 0x006f9e12    85c0
                         {disp8} je         _jmp_addr_0x006f9e57                          // 0x006f9e14    7441
                         {disp32} mov       eax, dword ptr [edi + 0x000008ac]             // 0x006f9e16    8b87ac080000
                         test               eax, eax                                      // 0x006f9e1c    85c0
                         {disp8} jbe        _jmp_addr_0x006f9e57                          // 0x006f9e1e    7637
                         cmp                dword ptr [edi + 0x000008a4], eax             // 0x006f9e20    3987a4080000
                         {disp8} jae        _jmp_addr_0x006f9e57                          // 0x006f9e26    732f
                         cmp                dword ptr [edi + 0x000008a8], 0x03            // 0x006f9e28    83bfa808000003
                         {disp8} jge        _jmp_addr_0x006f9e57                          // 0x006f9e2f    7d26
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x006f9e31    8b8664010000
                         cmp                dword ptr [eax + 0x00000f60], 0x000000a1      // 0x006f9e37    81b8600f0000a1000000
                         {disp8} je         _jmp_addr_0x006f9e57                          // 0x006f9e41    7414
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f9e43    8b0d105cd900
                         xor.s              edi, edi                                      // 0x006f9e49    33ff
                         push               0x6                                           // 0x006f9e4b    6a06
                         push               edi                                           // 0x006f9e4d    57
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006f9e4e    e84dcdffff
                         pop                edi                                           // 0x006f9e53    5f
                         pop                esi                                           // 0x006f9e54    5e
                         pop                ecx                                           // 0x006f9e55    59
                         ret                                                              // 0x006f9e56    c3
_jmp_addr_0x006f9e57:    {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x006f9e57    8b8e64010000
                         add                ecx, 0x00000fa8                               // 0x006f9e5d    81c1a80f0000
                         mov                edi, 0x00000001                               // 0x006f9e63    bf01000000
                         call               _jmp_addr_0x004ff5c0                          // 0x006f9e68    e85357e0ff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f9e6d    8b0d105cd900
                         push               0x6                                           // 0x006f9e73    6a06
                         push               edi                                           // 0x006f9e75    57
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006f9e76    e825cdffff
                         pop                edi                                           // 0x006f9e7b    5f
                         pop                esi                                           // 0x006f9e7c    5e
                         pop                ecx                                           // 0x006f9e7d    59
                         ret                                                              // 0x006f9e7e    c3
_jmp_addr_0x006f9e7f:    mov                edx, dword ptr [esi]                          // 0x006f9e7f    8b16
                         mov.s              ecx, esi                                      // 0x006f9e81    8bce
                         call               dword ptr [edx + 0x3c4]                       // 0x006f9e83    ff92c4030000
                         test               eax, eax                                      // 0x006f9e89    85c0
                         {disp8} je         _jmp_addr_0x006f9ee2                          // 0x006f9e8b    7455
                         push               0x0                                           // 0x006f9e8d    6a00
                         push               0x009cafc8                                    // 0x006f9e8f    68c8af9c00
                         push               0x009c7f30                                    // 0x006f9e94    68307f9c00
                         push               0x0                                           // 0x006f9e99    6a00
                         push               esi                                           // 0x006f9e9b    56
                         call               ___RTDynamicCast                              // 0x006f9e9c    e878bb0c00
                         add                esp, 0x14                                     // 0x006f9ea1    83c414
                         test               eax, eax                                      // 0x006f9ea4    85c0
                         {disp8} je         _jmp_addr_0x006f9ec0                          // 0x006f9ea6    7418
                         mov.s              ecx, eax                                      // 0x006f9ea8    8bc8
                         call               ?IsScriptAnimationComplete@Villager@@QAEIXZ   // 0x006f9eaa    e821eb0600
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f9eaf    8b0d105cd900
                         push               0x6                                           // 0x006f9eb5    6a06
                         push               eax                                           // 0x006f9eb7    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006f9eb8    e8e3ccffff
                         pop                esi                                           // 0x006f9ebd    5e
                         pop                ecx                                           // 0x006f9ebe    59
                         ret                                                              // 0x006f9ebf    c3
_jmp_addr_0x006f9ec0:    mov                eax, dword ptr [esi]                          // 0x006f9ec0    8b06
                         mov.s              ecx, esi                                      // 0x006f9ec2    8bce
                         call               dword ptr [eax + 0xb04]                       // 0x006f9ec4    ff90040b0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f9eca    8b0d105cd900
                         sub                al, 0x04                                      // 0x006f9ed0    2c04
                         neg                al                                            // 0x006f9ed2    f6d8
                         push               0x6                                           // 0x006f9ed4    6a06
                         sbb.s              eax, eax                                      // 0x006f9ed6    1bc0
                         inc                eax                                           // 0x006f9ed8    40
                         push               eax                                           // 0x006f9ed9    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006f9eda    e8c1ccffff
                         pop                esi                                           // 0x006f9edf    5e
                         pop                ecx                                           // 0x006f9ee0    59
                         ret                                                              // 0x006f9ee1    c3
_jmp_addr_0x006f9ee2:    mov                edx, dword ptr [esi]                          // 0x006f9ee2    8b16
                         mov.s              ecx, esi                                      // 0x006f9ee4    8bce
                         call               dword ptr [edx + 0x3fc]                       // 0x006f9ee6    ff92fc030000
                         test               eax, eax                                      // 0x006f9eec    85c0
                         {disp8} je         _jmp_addr_0x006f9f0b                          // 0x006f9eee    741b
                         {disp8} mov        edx, dword ptr [esi + 0x78]                   // 0x006f9ef0    8b5678
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f9ef3    8b0d105cd900
                         xor.s              eax, eax                                      // 0x006f9ef9    33c0
                         test               edx, edx                                      // 0x006f9efb    85d2
                         sete               al                                            // 0x006f9efd    0f94c0
                         push               0x6                                           // 0x006f9f00    6a06
                         push               eax                                           // 0x006f9f02    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006f9f03    e898ccffff
                         pop                esi                                           // 0x006f9f08    5e
                         pop                ecx                                           // 0x006f9f09    59
                         ret                                                              // 0x006f9f0a    c3
_jmp_addr_0x006f9f0b:    mov                edx, dword ptr [esi]                          // 0x006f9f0b    8b16
                         mov.s              ecx, esi                                      // 0x006f9f0d    8bce
                         call               dword ptr [edx + 0x498]                       // 0x006f9f0f    ff9298040000
                         test               eax, eax                                      // 0x006f9f15    85c0
                         {disp8} je         _jmp_addr_0x006f9f31                          // 0x006f9f17    7418
                         mov.s              ecx, esi                                      // 0x006f9f19    8bce
                         call               _jmp_addr_0x006d66e0                          // 0x006f9f1b    e8c0c7fdff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f9f20    8b0d105cd900
                         push               0x6                                           // 0x006f9f26    6a06
                         push               eax                                           // 0x006f9f28    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006f9f29    e872ccffff
                         pop                esi                                           // 0x006f9f2e    5e
                         pop                ecx                                           // 0x006f9f2f    59
                         ret                                                              // 0x006f9f30    c3
_jmp_addr_0x006f9f31:    push               0x00c0d670                                    // 0x006f9f31    6870d6c000
_jmp_addr_0x006f9f36:    call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f9f36    e875c3ffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f9f3b    8b0d105cd900
                         add                esp, 0x04                                     // 0x006f9f41    83c404
                         push               0x6                                           // 0x006f9f44    6a06
                         push               0x1                                           // 0x006f9f46    6a01
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006f9f48    e853ccffff
                         pop                esi                                           // 0x006f9f4d    5e
                         pop                ecx                                           // 0x006f9f4e    59
                         ret                                                              // 0x006f9f4f    c3
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f9f50    8b0d105cd900
                         sub                esp, 0x08                                     // 0x006f9f56    83ec08
                         push               ebx                                           // 0x006f9f59    53
                         push               esi                                           // 0x006f9f5a    56
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x006f9f5b    8d442408
                         push               eax                                           // 0x006f9f5f    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f9f60    e85bccffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f9f65    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x006f9f6b    8d54240c
                         push               edx                                           // 0x006f9f6f    52
                         mov.s              ebx, eax                                      // 0x006f9f70    8bd8
                         call               _jmp_addr_0x006f6bc0                          // 0x006f9f72    e849ccffff
                         push               eax                                           // 0x006f9f77    50
                         call               _jmp_addr_0x0070d220                          // 0x006f9f78    e8a3320100
                         add                esp, 0x04                                     // 0x006f9f7d    83c404
                         test               ebx, ebx                                      // 0x006f9f80    85db
                         mov.s              esi, eax                                      // 0x006f9f82    8bf0
                         {disp8} jle        _jmp_addr_0x006f9f8e                          // 0x006f9f84    7e08
                         cmp                ebx, 0x000001b9                               // 0x006f9f86    81fbb9010000
                         {disp8} jl         _jmp_addr_0x006f9f9b                          // 0x006f9f8c    7c0d
_jmp_addr_0x006f9f8e:    push               0x00c0d69c                                    // 0x006f9f8e    689cd6c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f9f93    e818c3ffff
                         add                esp, 0x04                                     // 0x006f9f98    83c404
_jmp_addr_0x006f9f9b:    test               esi, esi                                      // 0x006f9f9b    85f6
                         {disp32} je        _jmp_addr_0x006fa069                          // 0x006f9f9d    0f84c6000000
                         push               0x0                                           // 0x006f9fa3    6a00
                         push               0x009c8de8                                    // 0x006f9fa5    68e88d9c00
                         push               0x009c7f30                                    // 0x006f9faa    68307f9c00
                         push               0x0                                           // 0x006f9faf    6a00
                         push               esi                                           // 0x006f9fb1    56
                         call               ___RTDynamicCast                              // 0x006f9fb2    e862ba0c00
                         mov.s              esi, eax                                      // 0x006f9fb7    8bf0
                         add                esp, 0x14                                     // 0x006f9fb9    83c414
                         test               esi, esi                                      // 0x006f9fbc    85f6
                         {disp8} jne        _jmp_addr_0x006f9fd3                          // 0x006f9fbe    7513
                         push               0x00c0d684                                    // 0x006f9fc0    6884d6c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f9fc5    e8e6c2ffff
                         add                esp, 0x04                                     // 0x006f9fca    83c404
                         pop                esi                                           // 0x006f9fcd    5e
                         pop                ebx                                           // 0x006f9fce    5b
                         add                esp, 0x08                                     // 0x006f9fcf    83c408
                         ret                                                              // 0x006f9fd2    c3
_jmp_addr_0x006f9fd3:    {disp32} mov       eax, dword ptr [data_bytes + 0x517508]        // 0x006f9fd3    a108d5ed00
                         cmp                ebx, dword ptr [eax]                          // 0x006f9fd8    3b18
                         push               edi                                           // 0x006f9fda    57
                         {disp8} jge        _jmp_addr_0x006f9fe7                          // 0x006f9fdb    7d0a
                         test               ebx, ebx                                      // 0x006f9fdd    85db
                         {disp8} jl         _jmp_addr_0x006f9fe7                          // 0x006f9fdf    7c06
                         {disp8} mov        edi, dword ptr [eax + ebx * 0x4 + 0x04]       // 0x006f9fe1    8b7c9804
                         {disp8} jmp        _jmp_addr_0x006f9fea                          // 0x006f9fe5    eb03
_jmp_addr_0x006f9fe7:    {disp8} mov        edi, dword ptr [eax + 0x04]                   // 0x006f9fe7    8b7804
_jmp_addr_0x006f9fea:    {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x006f9fea    8b4e40
                         mov                eax, dword ptr [ecx]                          // 0x006f9fed    8b01
                         call               dword ptr [eax + 0x184]                       // 0x006f9fef    ff9084010000
                         cmp.s              edi, eax                                      // 0x006f9ff5    3bf8
                         {disp8} je         _jmp_addr_0x006fa013                          // 0x006f9ff7    741a
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x006f9ff9    8b4e40
                         mov                eax, dword ptr [ecx]                          // 0x006f9ffc    8b01
                         mov.s              edx, edi                                      // 0x006f9ffe    8bd7
                         call               dword ptr [eax + 0x180]                       // 0x006fa000    ff9080010000
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x006fa006    8b4e40
                         mov                eax, dword ptr [ecx]                          // 0x006fa009    8b01
                         xor.s              edx, edx                                      // 0x006fa00b    33d2
                         call               dword ptr [eax + 0x188]                       // 0x006fa00d    ff9088010000
_jmp_addr_0x006fa013:    {disp32} mov       eax, dword ptr [esi + 0x000000b0]             // 0x006fa013    8b86b0000000
                         test               eax, eax                                      // 0x006fa019    85c0
                         pop                edi                                           // 0x006fa01b    5f
                         {disp8} jne        _jmp_addr_0x006fa047                          // 0x006fa01c    7529
                         push               0x000004c1                                    // 0x006fa01e    68c1040000
                         push               0x00c0d548                                    // 0x006fa023    6848d5c000
                         push               0x48                                          // 0x006fa028    6a48
                         call               ?__nw@Base@@SAPAXK@Z                          // 0x006fa02a    e8c1c6d3ff
                         add                esp, 0x0c                                     // 0x006fa02f    83c40c
                         test               eax, eax                                      // 0x006fa032    85c0
                         {disp8} je         _jmp_addr_0x006fa03f                          // 0x006fa034    7409
                         mov.s              ecx, eax                                      // 0x006fa036    8bc8
                         call               ??0DataForScriptRemind@@QAE@XZ                // 0x006fa038    e8d350efff
                         {disp8} jmp        _jmp_addr_0x006fa041                          // 0x006fa03d    eb02
_jmp_addr_0x006fa03f:    xor.s              eax, eax                                      // 0x006fa03f    33c0
_jmp_addr_0x006fa041:    {disp32} mov       dword ptr [esi + 0x000000b0], eax             // 0x006fa041    8986b0000000
_jmp_addr_0x006fa047:    {disp32} mov       ecx, dword ptr [esi + 0x000000b0]             // 0x006fa047    8b8eb0000000
                         push               esi                                           // 0x006fa04d    56
                         call               _jmp_addr_0x005ef1d0                          // 0x006fa04e    e87d51efff
                         {disp32} mov       ecx, dword ptr [esi + 0x000000b0]             // 0x006fa053    8b8eb0000000
                         {disp8} mov        dword ptr [ecx + 0x44], 0x00000000            // 0x006fa059    c7414400000000
                         {disp32} mov       edx, dword ptr [esi + 0x000000b0]             // 0x006fa060    8b96b0000000
                         {disp8} mov        dword ptr [edx + 0x3c], ebx                   // 0x006fa066    895a3c
_jmp_addr_0x006fa069:    pop                esi                                           // 0x006fa069    5e
                         pop                ebx                                           // 0x006fa06a    5b
                         add                esp, 0x08                                     // 0x006fa06b    83c408
                         ret                                                              // 0x006fa06e    c3
                         nop                                                              // 0x006fa06f    90
                         push               ecx                                           // 0x006fa070    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fa071    8b0d105cd900
                         push               esi                                           // 0x006fa077    56
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x006fa078    8d442404
                         push               eax                                           // 0x006fa07c    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006fa07d    e83ecbffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fa082    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x04]                   // 0x006fa088    8d542404
                         push               edx                                           // 0x006fa08c    52
                         mov.s              esi, eax                                      // 0x006fa08d    8bf0
                         call               _jmp_addr_0x006f6bc0                          // 0x006fa08f    e82ccbffff
                         push               eax                                           // 0x006fa094    50
                         call               _jmp_addr_0x0070d220                          // 0x006fa095    e886310100
                         add                esp, 0x04                                     // 0x006fa09a    83c404
                         test               eax, eax                                      // 0x006fa09d    85c0
                         {disp8} jne        _jmp_addr_0x006fa0b1                          // 0x006fa09f    7510
                         push               0x00c0d6b8                                    // 0x006fa0a1    68b8d6c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006fa0a6    e805c2ffff
                         add                esp, 0x04                                     // 0x006fa0ab    83c404
                         pop                esi                                           // 0x006fa0ae    5e
                         pop                ecx                                           // 0x006fa0af    59
                         ret                                                              // 0x006fa0b0    c3
_jmp_addr_0x006fa0b1:    push               0x0                                           // 0x006fa0b1    6a00
                         push               0x0                                           // 0x006fa0b3    6a00
                         push               esi                                           // 0x006fa0b5    56
                         push               eax                                           // 0x006fa0b6    50
                         call               ?CreateReaction@Reaction@@SAPAV1@PAVGameThingWithPos@@EPAVGPlayer@@H@Z              // 0x006fa0b7    e8b49cfeff
                         add                esp, 0x10                                     // 0x006fa0bc    83c410
                         pop                esi                                           // 0x006fa0bf    5e
                         pop                ecx                                           // 0x006fa0c0    59
                         ret                                                              // 0x006fa0c1    c3
                         nop                                                              // 0x006fa0c2    90
                         nop                                                              // 0x006fa0c3    90
                         nop                                                              // 0x006fa0c4    90
                         nop                                                              // 0x006fa0c5    90
                         nop                                                              // 0x006fa0c6    90
                         nop                                                              // 0x006fa0c7    90
                         nop                                                              // 0x006fa0c8    90
                         nop                                                              // 0x006fa0c9    90
                         nop                                                              // 0x006fa0ca    90
                         nop                                                              // 0x006fa0cb    90
                         nop                                                              // 0x006fa0cc    90
                         nop                                                              // 0x006fa0cd    90
                         nop                                                              // 0x006fa0ce    90
                         nop                                                              // 0x006fa0cf    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x006fa0d0    8b442404
                         push               eax                                           // 0x006fa0d4    50
                         call               _jmp_addr_0x006e4750                          // 0x006fa0d5    e876a6feff
                         add                esp, 0x04                                     // 0x006fa0da    83c404
                         xor.s              eax, eax                                      // 0x006fa0dd    33c0
                         ret                                                              // 0x006fa0df    c3
                         push               ecx                                           // 0x006fa0e0    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fa0e1    8b0d105cd900
                         push               esi                                           // 0x006fa0e7    56
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x006fa0e8    8d442404
                         push               eax                                           // 0x006fa0ec    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006fa0ed    e8cecaffff
                         push               eax                                           // 0x006fa0f2    50
                         call               _jmp_addr_0x0070d220                          // 0x006fa0f3    e828310100
                         mov.s              esi, eax                                      // 0x006fa0f8    8bf0
                         add                esp, 0x04                                     // 0x006fa0fa    83c404
                         test               esi, esi                                      // 0x006fa0fd    85f6
                         {disp8} jne        _jmp_addr_0x006fa111                          // 0x006fa0ff    7510
                         push               0x00c0d6b8                                    // 0x006fa101    68b8d6c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006fa106    e8a5c1ffff
                         add                esp, 0x04                                     // 0x006fa10b    83c404
                         pop                esi                                           // 0x006fa10e    5e
                         pop                ecx                                           // 0x006fa10f    59
                         ret                                                              // 0x006fa110    c3
_jmp_addr_0x006fa111:    mov                edx, dword ptr [esi]                          // 0x006fa111    8b16
                         mov.s              ecx, esi                                      // 0x006fa113    8bce
                         call               dword ptr [edx + 0x3f8]                       // 0x006fa115    ff92f8030000
                         test               eax, eax                                      // 0x006fa11b    85c0
                         {disp8} je         _jmp_addr_0x006fa149                          // 0x006fa11d    742a
                         mov                eax, dword ptr [esi]                          // 0x006fa11f    8b06
                         mov.s              ecx, esi                                      // 0x006fa121    8bce
                         call               dword ptr [eax + 0x4e8]                       // 0x006fa123    ff90e8040000
                         lea                ecx, dword ptr [eax + eax * 0x2]              // 0x006fa129    8d0c40
                         {disp32} mov       eax, dword ptr [ecx * 0x8 + 0x00c0c73c]       // 0x006fa12c    8b04cd3cc7c000
                         test               eax, eax                                      // 0x006fa133    85c0
                         {disp8} je         _jmp_addr_0x006fa152                          // 0x006fa135    741b
                         push               0x0                                           // 0x006fa137    6a00
                         push               0x0                                           // 0x006fa139    6a00
                         push               0x006fa0d0                                    // 0x006fa13b    68d0a06f00
                         push               esi                                           // 0x006fa140    56
                         call               eax                                           // 0x006fa141    ffd0
                         add                esp, 0x10                                     // 0x006fa143    83c410
                         pop                esi                                           // 0x006fa146    5e
                         pop                ecx                                           // 0x006fa147    59
                         ret                                                              // 0x006fa148    c3
_jmp_addr_0x006fa149:    push               esi                                           // 0x006fa149    56
                         call               _jmp_addr_0x006e4750                          // 0x006fa14a    e801a6feff
                         add                esp, 0x04                                     // 0x006fa14f    83c404
_jmp_addr_0x006fa152:    pop                esi                                           // 0x006fa152    5e
                         pop                ecx                                           // 0x006fa153    59
                         ret                                                              // 0x006fa154    c3
                         nop                                                              // 0x006fa155    90
                         nop                                                              // 0x006fa156    90
                         nop                                                              // 0x006fa157    90
                         nop                                                              // 0x006fa158    90
                         nop                                                              // 0x006fa159    90
                         nop                                                              // 0x006fa15a    90
                         nop                                                              // 0x006fa15b    90
                         nop                                                              // 0x006fa15c    90
                         nop                                                              // 0x006fa15d    90
                         nop                                                              // 0x006fa15e    90
                         nop                                                              // 0x006fa15f    90
                         {disp32} mov       eax, dword ptr [_game]                        // 0x006fa160    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x006fa165    8b8890002500
                         {disp8} mov        edx, dword ptr [ecx + 0x24]                   // 0x006fa16b    8b5124
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x006fa16e    8b442404
                         push               edx                                           // 0x006fa172    52
                         push               eax                                           // 0x006fa173    50
                         call               _jmp_addr_0x006e4780                          // 0x006fa174    e807a6feff
                         add                esp, 0x08                                     // 0x006fa179    83c408
                         xor.s              eax, eax                                      // 0x006fa17c    33c0
                         ret                                                              // 0x006fa17e    c3
                         nop                                                              // 0x006fa17f    90
                         push               ecx                                           // 0x006fa180    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fa181    8b0d105cd900
                         push               esi                                           // 0x006fa187    56
                         push               edi                                           // 0x006fa188    57
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x006fa189    8d442408
                         push               eax                                           // 0x006fa18d    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006fa18e    e82dcaffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fa193    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x006fa199    8d542408
                         push               edx                                           // 0x006fa19d    52
                         mov.s              edi, eax                                      // 0x006fa19e    8bf8
                         call               _jmp_addr_0x006f6bc0                          // 0x006fa1a0    e81bcaffff
                         push               eax                                           // 0x006fa1a5    50
                         call               _jmp_addr_0x0070d220                          // 0x006fa1a6    e875300100
                         mov.s              esi, eax                                      // 0x006fa1ab    8bf0
                         add                esp, 0x04                                     // 0x006fa1ad    83c404
                         test               esi, esi                                      // 0x006fa1b0    85f6
                         {disp8} jne        _jmp_addr_0x006fa1c5                          // 0x006fa1b2    7511
                         push               0x00c0d6b8                                    // 0x006fa1b4    68b8d6c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006fa1b9    e8f2c0ffff
                         add                esp, 0x04                                     // 0x006fa1be    83c404
                         pop                edi                                           // 0x006fa1c1    5f
                         pop                esi                                           // 0x006fa1c2    5e
                         pop                ecx                                           // 0x006fa1c3    59
                         ret                                                              // 0x006fa1c4    c3
_jmp_addr_0x006fa1c5:    mov                eax, dword ptr [esi]                          // 0x006fa1c5    8b06
                         mov.s              ecx, esi                                      // 0x006fa1c7    8bce
                         call               dword ptr [eax + 0x3f8]                       // 0x006fa1c9    ff90f8030000
                         test               eax, eax                                      // 0x006fa1cf    85c0
                         {disp8} je         _jmp_addr_0x006fa20d                          // 0x006fa1d1    743a
                         mov                edx, dword ptr [esi]                          // 0x006fa1d3    8b16
                         mov.s              ecx, esi                                      // 0x006fa1d5    8bce
                         call               dword ptr [edx + 0x4e8]                       // 0x006fa1d7    ff92e8040000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006fa1dd    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x00250090]             // 0x006fa1e3    8b9190002500
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x006fa1e9    8d0440
                         {disp8} mov        dword ptr [edx + 0x24], edi                   // 0x006fa1ec    897a24
                         {disp32} mov       eax, dword ptr [eax * 0x8 + 0x00c0c73c]       // 0x006fa1ef    8b04c53cc7c000
                         test               eax, eax                                      // 0x006fa1f6    85c0
                         {disp8} je         _jmp_addr_0x006fa217                          // 0x006fa1f8    741d
                         push               0x0                                           // 0x006fa1fa    6a00
                         push               0x0                                           // 0x006fa1fc    6a00
                         push               0x006fa160                                    // 0x006fa1fe    6860a16f00
                         push               esi                                           // 0x006fa203    56
                         call               eax                                           // 0x006fa204    ffd0
                         add                esp, 0x10                                     // 0x006fa206    83c410
                         pop                edi                                           // 0x006fa209    5f
                         pop                esi                                           // 0x006fa20a    5e
                         pop                ecx                                           // 0x006fa20b    59
                         ret                                                              // 0x006fa20c    c3
_jmp_addr_0x006fa20d:    push               edi                                           // 0x006fa20d    57
                         push               esi                                           // 0x006fa20e    56
                         call               _jmp_addr_0x006e4780                          // 0x006fa20f    e86ca5feff
                         add                esp, 0x08                                     // 0x006fa214    83c408
_jmp_addr_0x006fa217:    pop                edi                                           // 0x006fa217    5f
                         pop                esi                                           // 0x006fa218    5e
                         pop                ecx                                           // 0x006fa219    59
                         ret                                                              // 0x006fa21a    c3
                         nop                                                              // 0x006fa21b    90
                         nop                                                              // 0x006fa21c    90
                         nop                                                              // 0x006fa21d    90
                         nop                                                              // 0x006fa21e    90
                         nop                                                              // 0x006fa21f    90
                         push               ecx                                           // 0x006fa220    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fa221    8b0d105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x00]                   // 0x006fa227    8d442400
                         push               eax                                           // 0x006fa22b    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006fa22c    e88fc9ffff
                         push               eax                                           // 0x006fa231    50
                         call               _jmp_addr_0x0070d220                          // 0x006fa232    e8e92f0100
                         add                esp, 0x04                                     // 0x006fa237    83c404
                         test               eax, eax                                      // 0x006fa23a    85c0
                         {disp8} jne        _jmp_addr_0x006fa24d                          // 0x006fa23c    750f
                         push               0x00c0d6f8                                    // 0x006fa23e    68f8d6c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006fa243    e868c0ffff
                         add                esp, 0x04                                     // 0x006fa248    83c404
                         pop                ecx                                           // 0x006fa24b    59
                         ret                                                              // 0x006fa24c    c3
_jmp_addr_0x006fa24d:    push               0x0                                           // 0x006fa24d    6a00
                         push               0x009c8060                                    // 0x006fa24f    6860809c00
                         push               0x009c7f30                                    // 0x006fa254    68307f9c00
                         push               0x0                                           // 0x006fa259    6a00
                         push               eax                                           // 0x006fa25b    50
                         call               ___RTDynamicCast                              // 0x006fa25c    e8b8b70c00
                         add                esp, 0x14                                     // 0x006fa261    83c414
                         test               eax, eax                                      // 0x006fa264    85c0
                         {disp8} je         _jmp_addr_0x006fa2a1                          // 0x006fa266    7439
                         {disp32} mov       ecx, dword ptr [eax + 0x00000164]             // 0x006fa268    8b8864010000
                         {disp32} mov       eax, dword ptr [ecx + 0x00000f58]             // 0x006fa26e    8b81580f0000
                         test               eax, eax                                      // 0x006fa274    85c0
                         {disp8} je         _jmp_addr_0x006fa2ae                          // 0x006fa276    7436
                         {disp8} mov        eax, dword ptr [eax + 0x30]                   // 0x006fa278    8b4030
                         test               eax, eax                                      // 0x006fa27b    85c0
                         {disp8} jne        _jmp_addr_0x006fa286                          // 0x006fa27d    7507
                         push               0x00c0d6d0                                    // 0x006fa27f    68d0d6c000
                         {disp8} jmp        _jmp_addr_0x006fa2a6                          // 0x006fa284    eb20
_jmp_addr_0x006fa286:    push               0x0                                           // 0x006fa286    6a00
                         push               eax                                           // 0x006fa288    50
                         call               _jmp_addr_0x0070d0f0                          // 0x006fa289    e8622e0100
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fa28e    8b0d105cd900
                         add                esp, 0x08                                     // 0x006fa294    83c408
                         push               0x4                                           // 0x006fa297    6a04
                         push               eax                                           // 0x006fa299    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006fa29a    e801c9ffff
                         pop                ecx                                           // 0x006fa29f    59
                         ret                                                              // 0x006fa2a0    c3
_jmp_addr_0x006fa2a1:    push               0x00c0d074                                    // 0x006fa2a1    6874d0c000
_jmp_addr_0x006fa2a6:    call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006fa2a6    e805c0ffff
                         add                esp, 0x04                                     // 0x006fa2ab    83c404
_jmp_addr_0x006fa2ae:    {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fa2ae    8b0d105cd900
                         push               0x4                                           // 0x006fa2b4    6a04
                         push               0x0                                           // 0x006fa2b6    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006fa2b8    e8e3c8ffff
                         pop                ecx                                           // 0x006fa2bd    59
                         ret                                                              // 0x006fa2be    c3
                         nop                                                              // 0x006fa2bf    90
                         push               ecx                                           // 0x006fa2c0    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fa2c1    8b0d105cd900
                         push               esi                                           // 0x006fa2c7    56
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x006fa2c8    8d442404
                         push               eax                                           // 0x006fa2cc    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006fa2cd    e8eec8ffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fa2d2    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x04]                   // 0x006fa2d8    8d542404
                         push               edx                                           // 0x006fa2dc    52
                         mov.s              esi, eax                                      // 0x006fa2dd    8bf0
                         call               _jmp_addr_0x006f6bc0                          // 0x006fa2df    e8dcc8ffff
                         push               eax                                           // 0x006fa2e4    50
                         call               _jmp_addr_0x0070d220                          // 0x006fa2e5    e8362f0100
                         push               0x0                                           // 0x006fa2ea    6a00
                         push               0x009c8060                                    // 0x006fa2ec    6860809c00
                         push               0x009c7f30                                    // 0x006fa2f1    68307f9c00
                         push               0x0                                           // 0x006fa2f6    6a00
                         push               eax                                           // 0x006fa2f8    50
                         call               ___RTDynamicCast                              // 0x006fa2f9    e81bb70c00
                         add                esp, 0x18                                     // 0x006fa2fe    83c418
                         test               eax, eax                                      // 0x006fa301    85c0
                         push               0x6                                           // 0x006fa303    6a06
                         {disp8} je         _jmp_addr_0x006fa339                          // 0x006fa305    7432
                         {disp32} mov       eax, dword ptr [eax + 0x00000164]             // 0x006fa307    8b8064010000
                         {disp32} mov       eax, dword ptr [eax + 0x00000f60]             // 0x006fa30d    8b80600f0000
                         mov.s              ecx, eax                                      // 0x006fa313    8bc8
                         shl                ecx, 4                                        // 0x006fa315    c1e104
                         add.s              ecx, eax                                      // 0x006fa318    03c8
                         shl                ecx, 4                                        // 0x006fa31a    c1e104
                         {disp32} mov       eax, dword ptr [ecx + 0x00c6c554]             // 0x006fa31d    8b8154c5c600
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fa323    8b0d105cd900
                         xor.s              edx, edx                                      // 0x006fa329    33d2
                         cmp.s              esi, eax                                      // 0x006fa32b    3bf0
                         sete               dl                                            // 0x006fa32d    0f94c2
                         push               edx                                           // 0x006fa330    52
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006fa331    e86ac8ffff
                         pop                esi                                           // 0x006fa336    5e
                         pop                ecx                                           // 0x006fa337    59
                         ret                                                              // 0x006fa338    c3
_jmp_addr_0x006fa339:    {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fa339    8b0d105cd900
                         push               0x0                                           // 0x006fa33f    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006fa341    e85ac8ffff
                         pop                esi                                           // 0x006fa346    5e
                         pop                ecx                                           // 0x006fa347    59
                         ret                                                              // 0x006fa348    c3
                         nop                                                              // 0x006fa349    90
                         nop                                                              // 0x006fa34a    90
                         nop                                                              // 0x006fa34b    90
                         nop                                                              // 0x006fa34c    90
                         nop                                                              // 0x006fa34d    90
                         nop                                                              // 0x006fa34e    90
                         nop                                                              // 0x006fa34f    90
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fa350    8b0d105cd900
                         sub                esp, 0x1c                                     // 0x006fa356    83ec1c
                         {disp8} lea        eax, dword ptr [esp + 0x00]                   // 0x006fa359    8d442400
                         push               eax                                           // 0x006fa35d    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006fa35e    e85dc8ffff
                         push               eax                                           // 0x006fa363    50
                         call               _jmp_addr_0x0070d220                          // 0x006fa364    e8b72e0100
                         push               0x0                                           // 0x006fa369    6a00
                         push               0x009c8de8                                    // 0x006fa36b    68e88d9c00
                         push               0x009c7f30                                    // 0x006fa370    68307f9c00
                         push               0x0                                           // 0x006fa375    6a00
                         push               eax                                           // 0x006fa377    50
                         call               ___RTDynamicCast                              // 0x006fa378    e89cb60c00
                         add                esp, 0x18                                     // 0x006fa37d    83c418
                         test               eax, eax                                      // 0x006fa380    85c0
                         {disp8} je         _jmp_addr_0x006fa3d3                          // 0x006fa382    744f
                         mov                edx, dword ptr [eax]                          // 0x006fa384    8b10
                         mov.s              ecx, eax                                      // 0x006fa386    8bc8
                         call               dword ptr [edx + 0x860]                       // 0x006fa388    ff9260080000
                         mov                ecx, dword ptr [eax]                          // 0x006fa38e    8b08
                         {disp8} mov        dword ptr [esp + 0x04], ecx                   // 0x006fa390    894c2404
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x006fa394    8b5004
                         {disp8} mov        dword ptr [esp + 0x08], edx                   // 0x006fa397    89542408
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x006fa39b    8b4008
                         mov.s              ecx, eax                                      // 0x006fa39e    8bc8
                         {disp8} mov        dword ptr [esp + 0x00], ecx                   // 0x006fa3a0    894c2400
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                   // 0x006fa3a4    8d4c2404
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x006fa3a8    8944240c
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x006fa3ac    e8df8c1000
                         {disp8} fadd       dword ptr [esp + 0x00]                        // 0x006fa3b1    d8442400
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x006fa3b5    d95c2414
                         {disp8} fild       dword ptr [esp + 0x04]                        // 0x006fa3b9    db442404
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x006fa3bd    d80da4a38a00
                         {disp8} fild       dword ptr [esp + 0x08]                        // 0x006fa3c3    db442408
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x006fa3c7    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x006fa3cd    d95c2418
                         {disp8} jmp        _jmp_addr_0x006fa3e9                          // 0x006fa3d1    eb16
_jmp_addr_0x006fa3d3:    {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x006fa3d3    d90598a38a00
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x006fa3d9    c744241400000000
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000            // 0x006fa3e1    c744241800000000
_jmp_addr_0x006fa3e9:    push               esi                                           // 0x006fa3e9    56
                         {disp8} fstp       dword ptr [esp + 0x04]                        // 0x006fa3ea    d95c2404
                         {disp32} mov       esi, dword ptr [_script_dll]                  // 0x006fa3ee    8b35105cd900
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x006fa3f4    8b542404
                         push               0x3                                           // 0x006fa3f8    6a03
                         push               edx                                           // 0x006fa3fa    52
                         mov.s              ecx, esi                                      // 0x006fa3fb    8bce
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006fa3fd    e89ec7ffff
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x006fa402    8b442418
                         mov.s              ecx, eax                                      // 0x006fa406    8bc8
                         push               0x3                                           // 0x006fa408    6a03
                         push               ecx                                           // 0x006fa40a    51
                         mov.s              ecx, esi                                      // 0x006fa40b    8bce
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x006fa40d    8944240c
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006fa411    e88ac7ffff
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x006fa416    8b54241c
                         push               0x3                                           // 0x006fa41a    6a03
                         mov.s              eax, edx                                      // 0x006fa41c    8bc2
                         push               eax                                           // 0x006fa41e    50
                         mov.s              ecx, esi                                      // 0x006fa41f    8bce
                         {disp8} mov        dword ptr [esp + 0x0c], edx                   // 0x006fa421    8954240c
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006fa425    e876c7ffff
                         pop                esi                                           // 0x006fa42a    5e
                         add                esp, 0x1c                                     // 0x006fa42b    83c41c
                         ret                                                              // 0x006fa42e    c3
                         nop                                                              // 0x006fa42f    90
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fa430    8b0d105cd900
                         push               0x1                                           // 0x006fa436    6a01
                         push               0x0000033c                                    // 0x006fa438    683c030000
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006fa43d    e85ec7ffff
                         ret                                                              // 0x006fa442    c3
                         nop                                                              // 0x006fa443    90
                         nop                                                              // 0x006fa444    90
                         nop                                                              // 0x006fa445    90
                         nop                                                              // 0x006fa446    90
                         nop                                                              // 0x006fa447    90
                         nop                                                              // 0x006fa448    90
                         nop                                                              // 0x006fa449    90
                         nop                                                              // 0x006fa44a    90
                         nop                                                              // 0x006fa44b    90
                         nop                                                              // 0x006fa44c    90
                         nop                                                              // 0x006fa44d    90
                         nop                                                              // 0x006fa44e    90
                         nop                                                              // 0x006fa44f    90
                         push               ecx                                           // 0x006fa450    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fa451    8b0d105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x00]                   // 0x006fa457    8d442400
                         push               eax                                           // 0x006fa45b    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006fa45c    e85fc7ffff
                         push               eax                                           // 0x006fa461    50
                         call               _jmp_addr_0x0070cf90                          // 0x006fa462    e8292b0100
                         add                esp, 0x08                                     // 0x006fa467    83c408
                         ret                                                              // 0x006fa46a    c3
                         nop                                                              // 0x006fa46b    90
                         nop                                                              // 0x006fa46c    90
                         nop                                                              // 0x006fa46d    90
                         nop                                                              // 0x006fa46e    90
                         nop                                                              // 0x006fa46f    90
                         push               ecx                                           // 0x006fa470    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fa471    8b0d105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x00]                   // 0x006fa477    8d442400
                         push               eax                                           // 0x006fa47b    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006fa47c    e83fc7ffff
                         push               eax                                           // 0x006fa481    50
                         call               _jmp_addr_0x0070cfd0                          // 0x006fa482    e8492b0100
                         add                esp, 0x08                                     // 0x006fa487    83c408
                         ret                                                              // 0x006fa48a    c3
                         nop                                                              // 0x006fa48b    90
                         nop                                                              // 0x006fa48c    90
                         nop                                                              // 0x006fa48d    90
                         nop                                                              // 0x006fa48e    90
                         nop                                                              // 0x006fa48f    90
                         sub                esp, 0x0c                                     // 0x006fa490    83ec0c
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fa493    8b0d105cd900
                         push               ebx                                           // 0x006fa499    53
                         push               ebp                                           // 0x006fa49a    55
                         push               esi                                           // 0x006fa49b    56
                         push               edi                                           // 0x006fa49c    57
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x006fa49d    8d442414
                         push               eax                                           // 0x006fa4a1    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006fa4a2    e819c7ffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fa4a7    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x006fa4ad    8d542414
                         push               edx                                           // 0x006fa4b1    52
                         mov.s              edi, eax                                      // 0x006fa4b2    8bf8
                         call               _jmp_addr_0x006f6bc0                          // 0x006fa4b4    e807c7ffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fa4b9    8b0d105cd900
                         mov.s              ebx, eax                                      // 0x006fa4bf    8bd8
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x006fa4c1    8d442414
                         push               eax                                           // 0x006fa4c5    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006fa4c6    e8f5c6ffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fa4cb    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x006fa4d1    8d542414
                         push               edx                                           // 0x006fa4d5    52
                         mov.s              ebp, eax                                      // 0x006fa4d6    8be8
                         call               _jmp_addr_0x006f6bc0                          // 0x006fa4d8    e8e3c6ffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fa4dd    8b0d105cd900
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x006fa4e3    89442410
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x006fa4e7    8d442414
                         push               eax                                           // 0x006fa4eb    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006fa4ec    e8cfc6ffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fa4f1    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x006fa4f7    8d542418
                         push               edx                                           // 0x006fa4fb    52
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x006fa4fc    89442418
                         call               _jmp_addr_0x006f6bc0                          // 0x006fa500    e8bbc6ffff
                         push               eax                                           // 0x006fa505    50
                         call               _jmp_addr_0x0070d220                          // 0x006fa506    e8152d0100
                         mov.s              esi, eax                                      // 0x006fa50b    8bf0
                         add                esp, 0x04                                     // 0x006fa50d    83c404
                         test               esi, esi                                      // 0x006fa510    85f6
                         {disp8} je         _jmp_addr_0x006fa55b                          // 0x006fa512    7447
                         mov                eax, dword ptr [esi]                          // 0x006fa514    8b06
                         mov.s              ecx, esi                                      // 0x006fa516    8bce
                         call               dword ptr [eax + 0x3fc]                       // 0x006fa518    ff90fc030000
                         test               eax, eax                                      // 0x006fa51e    85c0
                         {disp8} jne        _jmp_addr_0x006fa52f                          // 0x006fa520    750d
                         push               0x00c0d704                                    // 0x006fa522    6804d7c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006fa527    e884bdffff
                         add                esp, 0x04                                     // 0x006fa52c    83c404
_jmp_addr_0x006fa52f:    mov                edx, dword ptr [esi]                          // 0x006fa52f    8b16
                         mov.s              ecx, esi                                      // 0x006fa531    8bce
                         call               dword ptr [edx + 0x3fc]                       // 0x006fa533    ff92fc030000
                         mov                eax, dword ptr [esi]                          // 0x006fa539    8b06
                         mov.s              ecx, esi                                      // 0x006fa53b    8bce
                         call               dword ptr [eax + 0x3fc]                       // 0x006fa53d    ff90fc030000
                         test               eax, eax                                      // 0x006fa543    85c0
                         {disp8} je         _jmp_addr_0x006fa55b                          // 0x006fa545    7414
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x006fa547    8b4c2410
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x006fa54b    8b542414
                         push               edi                                           // 0x006fa54f    57
                         push               ebx                                           // 0x006fa550    53
                         push               ebp                                           // 0x006fa551    55
                         push               ecx                                           // 0x006fa552    51
                         push               edx                                           // 0x006fa553    52
                         mov.s              ecx, esi                                      // 0x006fa554    8bce
                         call               _jmp_addr_0x00774400                          // 0x006fa556    e8a59e0700
_jmp_addr_0x006fa55b:    pop                edi                                           // 0x006fa55b    5f
                         pop                esi                                           // 0x006fa55c    5e
                         pop                ebp                                           // 0x006fa55d    5d
                         pop                ebx                                           // 0x006fa55e    5b
                         add                esp, 0x0c                                     // 0x006fa55f    83c40c
                         ret                                                              // 0x006fa562    c3
                         nop                                                              // 0x006fa563    90
                         nop                                                              // 0x006fa564    90
                         nop                                                              // 0x006fa565    90
                         nop                                                              // 0x006fa566    90
                         nop                                                              // 0x006fa567    90
                         nop                                                              // 0x006fa568    90
                         nop                                                              // 0x006fa569    90
                         nop                                                              // 0x006fa56a    90
                         nop                                                              // 0x006fa56b    90
                         nop                                                              // 0x006fa56c    90
                         nop                                                              // 0x006fa56d    90
                         nop                                                              // 0x006fa56e    90
                         nop                                                              // 0x006fa56f    90
                         push               ecx                                           // 0x006fa570    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fa571    8b0d105cd900
                         push               ebx                                           // 0x006fa577    53
                         push               esi                                           // 0x006fa578    56
                         push               edi                                           // 0x006fa579    57
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x006fa57a    8d44240c
                         push               eax                                           // 0x006fa57e    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006fa57f    e83cc6ffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fa584    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x006fa58a    8d54240c
                         push               edx                                           // 0x006fa58e    52
                         mov.s              edi, eax                                      // 0x006fa58f    8bf8
                         call               _jmp_addr_0x006f6bc0                          // 0x006fa591    e82ac6ffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fa596    8b0d105cd900
                         mov.s              ebx, eax                                      // 0x006fa59c    8bd8
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x006fa59e    8d44240c
                         push               eax                                           // 0x006fa5a2    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006fa5a3    e818c6ffff
                         push               eax                                           // 0x006fa5a8    50
                         call               _jmp_addr_0x0070d220                          // 0x006fa5a9    e8722c0100
                         mov.s              esi, eax                                      // 0x006fa5ae    8bf0
                         add                esp, 0x04                                     // 0x006fa5b0    83c404
                         test               esi, esi                                      // 0x006fa5b3    85f6
                         {disp8} je         _jmp_addr_0x006fa5f3                          // 0x006fa5b5    743c
                         mov                edx, dword ptr [esi]                          // 0x006fa5b7    8b16
                         mov.s              ecx, esi                                      // 0x006fa5b9    8bce
                         call               dword ptr [edx + 0x3fc]                       // 0x006fa5bb    ff92fc030000
                         test               eax, eax                                      // 0x006fa5c1    85c0
                         {disp8} jne        _jmp_addr_0x006fa5d2                          // 0x006fa5c3    750d
                         push               0x00c0d704                                    // 0x006fa5c5    6804d7c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006fa5ca    e8e1bcffff
                         add                esp, 0x04                                     // 0x006fa5cf    83c404
_jmp_addr_0x006fa5d2:    mov                eax, dword ptr [esi]                          // 0x006fa5d2    8b06
                         mov.s              ecx, esi                                      // 0x006fa5d4    8bce
                         call               dword ptr [eax + 0x3fc]                       // 0x006fa5d6    ff90fc030000
                         mov                edx, dword ptr [esi]                          // 0x006fa5dc    8b16
                         mov.s              ecx, esi                                      // 0x006fa5de    8bce
                         call               dword ptr [edx + 0x3fc]                       // 0x006fa5e0    ff92fc030000
                         test               eax, eax                                      // 0x006fa5e6    85c0
                         {disp8} je         _jmp_addr_0x006fa5f3                          // 0x006fa5e8    7409
                         push               edi                                           // 0x006fa5ea    57
                         push               ebx                                           // 0x006fa5eb    53
                         mov.s              ecx, esi                                      // 0x006fa5ec    8bce
                         call               _jmp_addr_0x00774460                          // 0x006fa5ee    e86d9e0700
_jmp_addr_0x006fa5f3:    pop                edi                                           // 0x006fa5f3    5f
                         pop                esi                                           // 0x006fa5f4    5e
                         pop                ebx                                           // 0x006fa5f5    5b
                         pop                ecx                                           // 0x006fa5f6    59
                         ret                                                              // 0x006fa5f7    c3
                         nop                                                              // 0x006fa5f8    90
                         nop                                                              // 0x006fa5f9    90
                         nop                                                              // 0x006fa5fa    90
                         nop                                                              // 0x006fa5fb    90
                         nop                                                              // 0x006fa5fc    90
                         nop                                                              // 0x006fa5fd    90
                         nop                                                              // 0x006fa5fe    90
                         nop                                                              // 0x006fa5ff    90
                         sub                esp, 0x08                                     // 0x006fa600    83ec08
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fa603    8b0d105cd900
                         push               ebx                                           // 0x006fa609    53
                         push               esi                                           // 0x006fa60a    56
                         push               edi                                           // 0x006fa60b    57
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x006fa60c    8d44240c
                         push               eax                                           // 0x006fa610    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006fa611    e8aac5ffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fa616    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x006fa61c    8d54240c
                         push               edx                                           // 0x006fa620    52
                         mov.s              edi, eax                                      // 0x006fa621    8bf8
                         call               _jmp_addr_0x006f6bc0                          // 0x006fa623    e898c5ffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fa628    8b0d105cd900
                         mov.s              ebx, eax                                      // 0x006fa62e    8bd8
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x006fa630    8d44240c
                         push               eax                                           // 0x006fa634    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006fa635    e886c5ffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fa63a    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x006fa640    8d542410
                         push               edx                                           // 0x006fa644    52
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x006fa645    89442410
                         call               _jmp_addr_0x006f6bc0                          // 0x006fa649    e872c5ffff
                         push               eax                                           // 0x006fa64e    50
                         call               _jmp_addr_0x0070d220                          // 0x006fa64f    e8cc2b0100
                         mov.s              esi, eax                                      // 0x006fa654    8bf0
                         add                esp, 0x04                                     // 0x006fa656    83c404
                         test               esi, esi                                      // 0x006fa659    85f6
                         {disp8} je         _jmp_addr_0x006fa6a3                          // 0x006fa65b    7446
                         mov                eax, dword ptr [esi]                          // 0x006fa65d    8b06
                         mov.s              ecx, esi                                      // 0x006fa65f    8bce
                         call               dword ptr [eax + 0x3fc]                       // 0x006fa661    ff90fc030000
                         test               eax, eax                                      // 0x006fa667    85c0
                         {disp8} jne        _jmp_addr_0x006fa678                          // 0x006fa669    750d
                         push               0x00c0d704                                    // 0x006fa66b    6804d7c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006fa670    e83bbcffff
                         add                esp, 0x04                                     // 0x006fa675    83c404
_jmp_addr_0x006fa678:    mov                edx, dword ptr [esi]                          // 0x006fa678    8b16
                         mov.s              ecx, esi                                      // 0x006fa67a    8bce
                         call               dword ptr [edx + 0x3fc]                       // 0x006fa67c    ff92fc030000
                         mov                eax, dword ptr [esi]                          // 0x006fa682    8b06
                         mov.s              ecx, esi                                      // 0x006fa684    8bce
                         call               dword ptr [eax + 0x3fc]                       // 0x006fa686    ff90fc030000
                         test               eax, eax                                      // 0x006fa68c    85c0
                         {disp8} je         _jmp_addr_0x006fa6a3                          // 0x006fa68e    7413
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x006fa690    d944240c
                         push               edi                                           // 0x006fa694    57
                         call               _jmp_addr_0x007a1400                          // 0x006fa695    e8666d0a00
                         push               eax                                           // 0x006fa69a    50
                         push               ebx                                           // 0x006fa69b    53
                         mov.s              ecx, esi                                      // 0x006fa69c    8bce
                         call               _jmp_addr_0x00774500                          // 0x006fa69e    e85d9e0700
_jmp_addr_0x006fa6a3:    pop                edi                                           // 0x006fa6a3    5f
                         pop                esi                                           // 0x006fa6a4    5e
                         pop                ebx                                           // 0x006fa6a5    5b
                         add                esp, 0x08                                     // 0x006fa6a6    83c408
                         ret                                                              // 0x006fa6a9    c3
                         nop                                                              // 0x006fa6aa    90
                         nop                                                              // 0x006fa6ab    90
                         nop                                                              // 0x006fa6ac    90
                         nop                                                              // 0x006fa6ad    90
                         nop                                                              // 0x006fa6ae    90
                         nop                                                              // 0x006fa6af    90
                         sub                esp, 0x08                                     // 0x006fa6b0    83ec08
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fa6b3    8b0d105cd900
                         push               ebx                                           // 0x006fa6b9    53
                         push               ebp                                           // 0x006fa6ba    55
                         push               esi                                           // 0x006fa6bb    56
                         push               edi                                           // 0x006fa6bc    57
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x006fa6bd    8d442410
                         push               eax                                           // 0x006fa6c1    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006fa6c2    e8f9c4ffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fa6c7    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x006fa6cd    8d542410
                         push               edx                                           // 0x006fa6d1    52
                         mov.s              edi, eax                                      // 0x006fa6d2    8bf8
                         call               _jmp_addr_0x006f6bc0                          // 0x006fa6d4    e8e7c4ffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fa6d9    8b0d105cd900
                         mov.s              ebx, eax                                      // 0x006fa6df    8bd8
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x006fa6e1    8d442410
                         push               eax                                           // 0x006fa6e5    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006fa6e6    e8d5c4ffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fa6eb    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x006fa6f1    8d542410
                         push               edx                                           // 0x006fa6f5    52
                         mov.s              ebp, eax                                      // 0x006fa6f6    8be8
                         call               _jmp_addr_0x006f6bc0                          // 0x006fa6f8    e8c3c4ffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fa6fd    8b0d105cd900
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x006fa703    89442410
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x006fa707    8d442414
                         push               eax                                           // 0x006fa70b    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006fa70c    e8afc4ffff
                         push               eax                                           // 0x006fa711    50
                         call               _jmp_addr_0x0070d220                          // 0x006fa712    e8092b0100
                         mov.s              esi, eax                                      // 0x006fa717    8bf0
                         add                esp, 0x04                                     // 0x006fa719    83c404
                         test               esi, esi                                      // 0x006fa71c    85f6
                         {disp8} je         _jmp_addr_0x006fa762                          // 0x006fa71e    7442
                         mov                edx, dword ptr [esi]                          // 0x006fa720    8b16
                         mov.s              ecx, esi                                      // 0x006fa722    8bce
                         call               dword ptr [edx + 0x3fc]                       // 0x006fa724    ff92fc030000
                         test               eax, eax                                      // 0x006fa72a    85c0
                         {disp8} jne        _jmp_addr_0x006fa73b                          // 0x006fa72c    750d
                         push               0x00c0d704                                    // 0x006fa72e    6804d7c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006fa733    e878bbffff
                         add                esp, 0x04                                     // 0x006fa738    83c404
_jmp_addr_0x006fa73b:    mov                eax, dword ptr [esi]                          // 0x006fa73b    8b06
                         mov.s              ecx, esi                                      // 0x006fa73d    8bce
                         call               dword ptr [eax + 0x3fc]                       // 0x006fa73f    ff90fc030000
                         mov                edx, dword ptr [esi]                          // 0x006fa745    8b16
                         mov.s              ecx, esi                                      // 0x006fa747    8bce
                         call               dword ptr [edx + 0x3fc]                       // 0x006fa749    ff92fc030000
                         test               eax, eax                                      // 0x006fa74f    85c0
                         {disp8} je         _jmp_addr_0x006fa762                          // 0x006fa751    740f
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x006fa753    8b442410
                         push               edi                                           // 0x006fa757    57
                         push               ebx                                           // 0x006fa758    53
                         push               ebp                                           // 0x006fa759    55
                         push               eax                                           // 0x006fa75a    50
                         mov.s              ecx, esi                                      // 0x006fa75b    8bce
                         call               _jmp_addr_0x00774520                          // 0x006fa75d    e8be9d0700
_jmp_addr_0x006fa762:    pop                edi                                           // 0x006fa762    5f
                         pop                esi                                           // 0x006fa763    5e
                         pop                ebp                                           // 0x006fa764    5d
                         pop                ebx                                           // 0x006fa765    5b
                         add                esp, 0x08                                     // 0x006fa766    83c408
                         ret                                                              // 0x006fa769    c3
                         nop                                                              // 0x006fa76a    90
                         nop                                                              // 0x006fa76b    90
                         nop                                                              // 0x006fa76c    90
                         nop                                                              // 0x006fa76d    90
                         nop                                                              // 0x006fa76e    90
                         nop                                                              // 0x006fa76f    90
                         sub                esp, 0x40                                     // 0x006fa770    83ec40
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fa773    8b0d105cd900
                         push               esi                                           // 0x006fa779    56
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x006fa77a    8d442414
                         push               eax                                           // 0x006fa77e    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006fa77f    e83cc4ffff
                         {disp32} mov       esi, dword ptr [_script_dll]                  // 0x006fa784    8b35105cd900
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x006fa78a    8d4c2410
                         push               ecx                                           // 0x006fa78e    51
                         mov.s              ecx, esi                                      // 0x006fa78f    8bce
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x006fa791    89442418
                         call               _jmp_addr_0x006f6bc0                          // 0x006fa795    e826c4ffff
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x006fa79a    8d54240c
                         push               edx                                           // 0x006fa79e    52
                         mov.s              ecx, esi                                      // 0x006fa79f    8bce
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x006fa7a1    89442414
                         call               _jmp_addr_0x006f6bc0                          // 0x006fa7a5    e816c4ffff
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x006fa7aa    8944240c
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x006fa7ae    8d442408
                         push               eax                                           // 0x006fa7b2    50
                         mov.s              ecx, esi                                      // 0x006fa7b3    8bce
                         call               _jmp_addr_0x006f6bc0                          // 0x006fa7b5    e806c4ffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fa7ba    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x006fa7c0    8d542418
                         push               edx                                           // 0x006fa7c4    52
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x006fa7c5    8944240c
                         call               _jmp_addr_0x006f6bc0                          // 0x006fa7c9    e8f2c3ffff
                         push               eax                                           // 0x006fa7ce    50
                         call               _jmp_addr_0x0070d220                          // 0x006fa7cf    e84c2a0100
                         mov.s              esi, eax                                      // 0x006fa7d4    8bf0
                         add                esp, 0x04                                     // 0x006fa7d6    83c404
                         test               esi, esi                                      // 0x006fa7d9    85f6
                         {disp32} je        _jmp_addr_0x006fa9d3                          // 0x006fa7db    0f84f2010000
                         {disp8} mov        eax, dword ptr [esi + 0x1c]                   // 0x006fa7e1    8b461c
                         push               edi                                           // 0x006fa7e4    57
                         {disp8} lea        edi, dword ptr [esi + 0x14]                   // 0x006fa7e5    8d7e14
                         mov.s              ecx, edi                                      // 0x006fa7e8    8bcf
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x006fa7ea    89442408
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x006fa7ee    e89d881000
                         {disp8} fadd       dword ptr [esp + 0x08]                        // 0x006fa7f3    d8442408
                         fild               dword ptr [edi]                               // 0x006fa7f7    db07
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x006fa7f9    d80da4a38a00
                         {disp8} fild       dword ptr [edi + 0x04]                        // 0x006fa7ff    db4704
                         pop                edi                                           // 0x006fa802    5f
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x006fa803    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x40]                        // 0x006fa809    d95c2440
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x006fa80d    d9442408
                         fsub               st, st(1)                                     // 0x006fa811    d8e1
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x006fa813    d95c2420
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x006fa817    8b4c2420
                         fstp               st(0)                                         // 0x006fa81b    ddd8
                         {disp8} mov        dword ptr [esp + 0x2c], ecx                   // 0x006fa81d    894c242c
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x006fa821    d944240c
                         fsub               st, st(1)                                     // 0x006fa825    d8e1
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x006fa827    d95c2424
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x006fa82b    8b542424
                         fstp               st(0)                                         // 0x006fa82f    ddd8
                         {disp8} mov        dword ptr [esp + 0x30], edx                   // 0x006fa831    89542430
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x006fa835    d9442410
                         {disp8} fsub       dword ptr [esp + 0x40]                        // 0x006fa839    d8642440
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x006fa83d    d95c2428
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x006fa841    d9442420
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x006fa845    8b442428
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x006fa849    d81d98a38a00
                         {disp8} mov        dword ptr [esp + 0x34], eax                   // 0x006fa84f    89442434
                         fnstsw             ax                                            // 0x006fa853    dfe0
                         test               ah, 0x40                                      // 0x006fa855    f6c440
                         {disp8} je         _jmp_addr_0x006fa87c                          // 0x006fa858    7422
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x006fa85a    d9442424
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x006fa85e    d81d98a38a00
                         fnstsw             ax                                            // 0x006fa864    dfe0
                         test               ah, 0x40                                      // 0x006fa866    f6c440
                         {disp8} je         _jmp_addr_0x006fa87c                          // 0x006fa869    7411
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x006fa86b    d9442428
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x006fa86f    d81d98a38a00
                         fnstsw             ax                                            // 0x006fa875    dfe0
                         test               ah, 0x40                                      // 0x006fa877    f6c440
                         {disp8} jne        _jmp_addr_0x006fa8be                          // 0x006fa87a    7542
_jmp_addr_0x006fa87c:    {disp8} fld        dword ptr [esp + 0x28]                        // 0x006fa87c    d9442428
                         {disp8} fmul       dword ptr [esp + 0x28]                        // 0x006fa880    d84c2428
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x006fa884    d9442424
                         {disp8} fmul       dword ptr [esp + 0x24]                        // 0x006fa888    d84c2424
                         faddp              st(1), st                                     // 0x006fa88c    dec1
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x006fa88e    d9442420
                         {disp8} fmul       dword ptr [esp + 0x20]                        // 0x006fa892    d84c2420
                         faddp              st(1), st                                     // 0x006fa896    dec1
                         fsqrt                                                            // 0x006fa898    d9fa
                         {disp8} fdivr      dword ptr [esp + 0x14]                        // 0x006fa89a    d87c2414
                         fld                st(0)                                         // 0x006fa89e    d9c0
                         {disp8} fmul       dword ptr [esp + 0x20]                        // 0x006fa8a0    d84c2420
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x006fa8a4    d95c242c
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x006fa8a8    d9442424
                         fmul               st, st(1)                                     // 0x006fa8ac    d8c9
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x006fa8ae    d95c2430
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x006fa8b2    d9442428
                         fmul               st, st(1)                                     // 0x006fa8b6    d8c9
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x006fa8b8    d95c2434
                         fstp               st(0)                                         // 0x006fa8bc    ddd8
_jmp_addr_0x006fa8be:    mov                edx, dword ptr [esi]                          // 0x006fa8be    8b16
                         mov.s              ecx, esi                                      // 0x006fa8c0    8bce
                         call               dword ptr [edx + 0x3fc]                       // 0x006fa8c2    ff92fc030000
                         test               eax, eax                                      // 0x006fa8c8    85c0
                         {disp8} je         _jmp_addr_0x006fa8dd                          // 0x006fa8ca    7411
                         {disp8} lea        eax, dword ptr [esp + 0x2c]                   // 0x006fa8cc    8d44242c
                         push               eax                                           // 0x006fa8d0    50
                         mov.s              ecx, esi                                      // 0x006fa8d1    8bce
                         call               _jmp_addr_0x00774480                          // 0x006fa8d3    e8a89b0700
                         pop                esi                                           // 0x006fa8d8    5e
                         add                esp, 0x40                                     // 0x006fa8d9    83c440
                         ret                                                              // 0x006fa8dc    c3
_jmp_addr_0x006fa8dd:    push               0x0                                           // 0x006fa8dd    6a00
                         push               0x009c7f50                                    // 0x006fa8df    68507f9c00
                         push               0x009c7f30                                    // 0x006fa8e4    68307f9c00
                         push               0x0                                           // 0x006fa8e9    6a00
                         push               esi                                           // 0x006fa8eb    56
                         call               ___RTDynamicCast                              // 0x006fa8ec    e828b10c00
                         mov.s              esi, eax                                      // 0x006fa8f1    8bf0
                         add                esp, 0x14                                     // 0x006fa8f3    83c414
                         test               esi, esi                                      // 0x006fa8f6    85f6
                         {disp32} je        _jmp_addr_0x006fa9c6                          // 0x006fa8f8    0f84c8000000
                         test               byte ptr [esi + 0x24], 0x40                   // 0x006fa8fe    f6462440
                         {disp8} je         _jmp_addr_0x006fa933                          // 0x006fa902    742f
                         push               esi                                           // 0x006fa904    56
                         call               _jmp_addr_0x00646950                          // 0x006fa905    e846c0f4ff
                         add                esp, 0x04                                     // 0x006fa90a    83c404
                         test               eax, eax                                      // 0x006fa90d    85c0
                         {disp32} je        _jmp_addr_0x006fa9d3                          // 0x006fa90f    0f84be000000
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                   // 0x006fa915    8b4c242c
                         add                eax, 0x00000104                               // 0x006fa919    0504010000
                         mov                dword ptr [eax], ecx                          // 0x006fa91e    8908
                         {disp8} mov        edx, dword ptr [esp + 0x30]                   // 0x006fa920    8b542430
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x006fa924    895004
                         {disp8} mov        ecx, dword ptr [esp + 0x34]                   // 0x006fa927    8b4c2434
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x006fa92b    894808
                         pop                esi                                           // 0x006fa92e    5e
                         add                esp, 0x40                                     // 0x006fa92f    83c440
                         ret                                                              // 0x006fa932    c3
_jmp_addr_0x006fa933:    push               0x000005ff                                    // 0x006fa933    68ff050000
                         push               0x00c0d548                                    // 0x006fa938    6848d5c000
                         push               0x43480000                                    // 0x006fa93d    6800004843
                         call               ?GameFloatRand@GRand@@SAMM@Z                  // 0x006fa942    e8e93bfeff
                         {disp32} fsub      dword ptr [rdata_bytes + 0x241c]              // 0x006fa947    d8251cb48a00
                         push               0x00000600                                    // 0x006fa94d    6800060000
                         push               0x00c0d548                                    // 0x006fa952    6848d5c000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1bb10]             // 0x006fa957    d80d104b8c00
                         push               0x43480000                                    // 0x006fa95d    6800004843
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x006fa962    d95c2438
                         call               ?GameFloatRand@GRand@@SAMM@Z                  // 0x006fa966    e8c53bfeff
                         {disp32} fsub      dword ptr [rdata_bytes + 0x241c]              // 0x006fa96b    d8251cb48a00
                         push               0x00000601                                    // 0x006fa971    6801060000
                         push               0x00c0d548                                    // 0x006fa976    6848d5c000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1bb10]             // 0x006fa97b    d80d104b8c00
                         push               0x43480000                                    // 0x006fa981    6800004843
                         {disp8} fstp       dword ptr [esp + 0x48]                        // 0x006fa986    d95c2448
                         call               ?GameFloatRand@GRand@@SAMM@Z                  // 0x006fa98a    e8a13bfeff
                         mov                edx, dword ptr [esi]                          // 0x006fa98f    8b16
                         add                esp, 0x24                                     // 0x006fa991    83c424
                         push               0x0                                           // 0x006fa994    6a00
                         push               0x1                                           // 0x006fa996    6a01
                         {disp32} fsub      dword ptr [rdata_bytes + 0x241c]              // 0x006fa998    d8251cb48a00
                         push               0x0                                           // 0x006fa99e    6a00
                         {disp8} lea        eax, dword ptr [esp + 0x2c]                   // 0x006fa9a0    8d44242c
                         push               eax                                           // 0x006fa9a4    50
                         {disp8} lea        ecx, dword ptr [esp + 0x3c]                   // 0x006fa9a5    8d4c243c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1bb10]             // 0x006fa9a9    d80d104b8c00
                         push               ecx                                           // 0x006fa9af    51
                         {disp8} lea        eax, dword ptr [esp + 0x2c]                   // 0x006fa9b0    8d44242c
                         push               eax                                           // 0x006fa9b4    50
                         {disp8} fstp       dword ptr [esp + 0x40]                        // 0x006fa9b5    d95c2440
                         mov.s              ecx, esi                                      // 0x006fa9b9    8bce
                         call               dword ptr [edx + 0x784]                       // 0x006fa9bb    ff9284070000
                         pop                esi                                           // 0x006fa9c1    5e
                         add                esp, 0x40                                     // 0x006fa9c2    83c440
                         ret                                                              // 0x006fa9c5    c3
_jmp_addr_0x006fa9c6:    push               0x00c0d734                                    // 0x006fa9c6    6834d7c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006fa9cb    e8e0b8ffff
                         add                esp, 0x04                                     // 0x006fa9d0    83c404
_jmp_addr_0x006fa9d3:    pop                esi                                           // 0x006fa9d3    5e
                         add                esp, 0x40                                     // 0x006fa9d4    83c440
                         ret                                                              // 0x006fa9d7    c3
                         nop                                                              // 0x006fa9d8    90
                         nop                                                              // 0x006fa9d9    90
                         nop                                                              // 0x006fa9da    90
                         nop                                                              // 0x006fa9db    90
                         nop                                                              // 0x006fa9dc    90
                         nop                                                              // 0x006fa9dd    90
                         nop                                                              // 0x006fa9de    90
                         nop                                                              // 0x006fa9df    90
                         {disp32} mov       eax, dword ptr [_game]                        // 0x006fa9e0    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x006fa9e5    8b8890002500
                         push               esi                                           // 0x006fa9eb    56
                         {disp32} mov       esi, dword ptr [ecx + 0x000000ac]             // 0x006fa9ec    8bb1ac000000
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fa9f2    8b0d105cd900
                         push               edi                                           // 0x006fa9f8    57
                         call               _jmp_addr_0x006f69f0                          // 0x006fa9f9    e8f2bfffff
                         test               esi, esi                                      // 0x006fa9fe    85f6
                         mov.s              edi, eax                                      // 0x006faa00    8bf8
                         {disp8} je         _jmp_addr_0x006faa08                          // 0x006faa02    7404
                         cmp.s              esi, edi                                      // 0x006faa04    3bf7
                         {disp8} jne        _jmp_addr_0x006faa2e                          // 0x006faa06    7526
_jmp_addr_0x006faa08:    {disp32} mov       ecx, dword ptr [_game]                        // 0x006faa08    8b0d5c19d000
                         push               0x1                                           // 0x006faa0e    6a01
                         call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ           // 0x006faa10    e86b17e5ff
                         mov.s              ecx, eax                                      // 0x006faa15    8bc8
                         call               _jmp_addr_0x00441f40                          // 0x006faa17    e82475d4ff
                         {disp32} mov       edx, dword ptr [_game]                        // 0x006faa1c    8b155c19d000
                         {disp32} mov       eax, dword ptr [edx + 0x00250090]             // 0x006faa22    8b8290002500
                         {disp32} mov       dword ptr [eax + 0x000000ac], edi             // 0x006faa28    89b8ac000000
_jmp_addr_0x006faa2e:    pop                edi                                           // 0x006faa2e    5f
                         pop                esi                                           // 0x006faa2f    5e
                         ret                                                              // 0x006faa30    c3
                         nop                                                              // 0x006faa31    90
                         nop                                                              // 0x006faa32    90
                         nop                                                              // 0x006faa33    90
                         nop                                                              // 0x006faa34    90
                         nop                                                              // 0x006faa35    90
                         nop                                                              // 0x006faa36    90
                         nop                                                              // 0x006faa37    90
                         nop                                                              // 0x006faa38    90
                         nop                                                              // 0x006faa39    90
                         nop                                                              // 0x006faa3a    90
                         nop                                                              // 0x006faa3b    90
                         nop                                                              // 0x006faa3c    90
                         nop                                                              // 0x006faa3d    90
                         nop                                                              // 0x006faa3e    90
                         nop                                                              // 0x006faa3f    90
_jmp_addr_0x006faa40:    {disp32} mov       eax, dword ptr [ecx + 0x000000ac]             // 0x006faa40    8b81ac000000
                         cmp                eax, dword ptr [esp + 0x04]                   // 0x006faa46    3b442404
                         {disp8} jne        _jmp_addr_0x006faa51                          // 0x006faa4a    7505
                         call               _jmp_addr_0x006faa60                          // 0x006faa4c    e80f000000
_jmp_addr_0x006faa51:    ret                0x0004                                        // 0x006faa51    c20400
                         nop                                                              // 0x006faa54    90
                         nop                                                              // 0x006faa55    90
                         nop                                                              // 0x006faa56    90
                         nop                                                              // 0x006faa57    90
                         nop                                                              // 0x006faa58    90
                         nop                                                              // 0x006faa59    90
                         nop                                                              // 0x006faa5a    90
                         nop                                                              // 0x006faa5b    90
                         nop                                                              // 0x006faa5c    90
                         nop                                                              // 0x006faa5d    90
                         nop                                                              // 0x006faa5e    90
                         nop                                                              // 0x006faa5f    90
_jmp_addr_0x006faa60:    {disp32} mov       ecx, dword ptr [_game]                        // 0x006faa60    8b0d5c19d000
                         call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ           // 0x006faa66    e81517e5ff
                         test               eax, eax                                      // 0x006faa6b    85c0
                         {disp8} je         _jmp_addr_0x006faa83                          // 0x006faa6d    7414
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006faa6f    8b0d5c19d000
                         push               0x0                                           // 0x006faa75    6a00
                         call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ           // 0x006faa77    e80417e5ff
                         mov.s              ecx, eax                                      // 0x006faa7c    8bc8
                         call               _jmp_addr_0x00441f40                          // 0x006faa7e    e8bd74d4ff
_jmp_addr_0x006faa83:    {disp32} mov       ecx, dword ptr [_game]                        // 0x006faa83    8b0d5c19d000
                         push               0x3f800000                                    // 0x006faa89    680000803f
                         call               _jmp_addr_0x005537f0                          // 0x006faa8e    e85d8de5ff
                         {disp32} mov       eax, dword ptr [_game]                        // 0x006faa93    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x006faa98    8b8890002500
                         {disp32} mov       dword ptr [ecx + 0x000000ac], 0x00000000      // 0x006faa9e    c781ac00000000000000
                         ret                                                              // 0x006faaa8    c3
                         nop                                                              // 0x006faaa9    90
                         nop                                                              // 0x006faaaa    90
                         nop                                                              // 0x006faaab    90
                         nop                                                              // 0x006faaac    90
                         nop                                                              // 0x006faaad    90
                         nop                                                              // 0x006faaae    90
                         nop                                                              // 0x006faaaf    90
                         {disp32} mov       eax, dword ptr [_game]                        // 0x006faab0    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x006faab5    8b8890002500
                         push               esi                                           // 0x006faabb    56
                         {disp32} mov       esi, dword ptr [ecx + 0x000000ac]             // 0x006faabc    8bb1ac000000
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006faac2    8b0d105cd900
                         call               _jmp_addr_0x006f69f0                          // 0x006faac8    e823bfffff
                         test               esi, esi                                      // 0x006faacd    85f6
                         {disp8} je         _jmp_addr_0x006faad5                          // 0x006faacf    7404
                         cmp.s              esi, eax                                      // 0x006faad1    3bf0
                         {disp8} jne        _jmp_addr_0x006faada                          // 0x006faad3    7505
_jmp_addr_0x006faad5:    call               _jmp_addr_0x006faa60                          // 0x006faad5    e886ffffff
_jmp_addr_0x006faada:    pop                esi                                           // 0x006faada    5e
                         ret                                                              // 0x006faadb    c3
                         nop                                                              // 0x006faadc    90
                         nop                                                              // 0x006faadd    90
                         nop                                                              // 0x006faade    90
                         nop                                                              // 0x006faadf    90
                         push               ecx                                           // 0x006faae0    51
                         {disp32} mov       eax, dword ptr [_game]                        // 0x006faae1    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x006faae6    8b8890002500
                         push               esi                                           // 0x006faaec    56
                         {disp32} mov       esi, dword ptr [ecx + 0x000000ac]             // 0x006faaed    8bb1ac000000
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006faaf3    8b0d105cd900
                         push               edi                                           // 0x006faaf9    57
                         call               _jmp_addr_0x006f69f0                          // 0x006faafa    e8f1beffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006faaff    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x006fab05    8d542408
                         push               edx                                           // 0x006fab09    52
                         mov.s              edi, eax                                      // 0x006fab0a    8bf8
                         call               _jmp_addr_0x006f6bc0                          // 0x006fab0c    e8afc0ffff
                         cmp.s              esi, edi                                      // 0x006fab11    3bf7
                         pop                edi                                           // 0x006fab13    5f
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x006fab14    89442404
                         pop                esi                                           // 0x006fab18    5e
                         {disp8} jne        _jmp_addr_0x006fab2e                          // 0x006fab19    7513
                         {disp8} fld        dword ptr [esp + 0x00]                        // 0x006fab1b    d9442400
                         push               ecx                                           // 0x006fab1f    51
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006fab20    8b0d5c19d000
                         fstp               dword ptr [esp]                               // 0x006fab26    d91c24
                         call               _jmp_addr_0x005537f0                          // 0x006fab29    e8c28ce5ff
_jmp_addr_0x006fab2e:    pop                ecx                                           // 0x006fab2e    59
                         ret                                                              // 0x006fab2f    c3
                         sub                esp, 0x20                                     // 0x006fab30    83ec20
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fab33    8b0d105cd900
                         push               esi                                           // 0x006fab39    56
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x006fab3a    8d442408
                         push               eax                                           // 0x006fab3e    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006fab3f    e87cc0ffff
                         {disp32} mov       esi, dword ptr [_script_dll]                  // 0x006fab44    8b35105cd900
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                   // 0x006fab4a    8d4c2404
                         push               ecx                                           // 0x006fab4e    51
                         mov.s              ecx, esi                                      // 0x006fab4f    8bce
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x006fab51    8944240c
                         call               _jmp_addr_0x006f6bc0                          // 0x006fab55    e866c0ffff
                         mov.s              edx, eax                                      // 0x006fab5a    8bd0
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x006fab5c    89442404
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x006fab60    8d442404
                         push               eax                                           // 0x006fab64    50
                         mov.s              ecx, esi                                      // 0x006fab65    8bce
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x006fab67    89542418
                         call               _jmp_addr_0x006f6bc0                          // 0x006fab6b    e850c0ffff
                         mov.s              ecx, eax                                      // 0x006fab70    8bc8
                         {disp8} lea        edx, dword ptr [esp + 0x04]                   // 0x006fab72    8d542404
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x006fab76    894c2410
                         push               edx                                           // 0x006fab7a    52
                         mov.s              ecx, esi                                      // 0x006fab7b    8bce
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x006fab7d    89442408
                         call               _jmp_addr_0x006f6bc0                          // 0x006fab81    e83ac0ffff
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x006fab86    d9442408
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26e4]              // 0x006fab8a    d80de4b68a00
                         push               ecx                                           // 0x006fab90    51
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x006fab91    8d4c2410
                         fstp               dword ptr [esp]                               // 0x006fab95    d91c24
                         push               ecx                                           // 0x006fab98    51
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x006fab99    8d4c2420
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x006fab9d    8944240c
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x006faba1    89442414
                         call               @__ct__9MapCoordsFRC7LHPoint@12               // 0x006faba5    e8b685f0ff
                         push               eax                                           // 0x006fabaa    50
                         call               _jmp_addr_0x0073e560                          // 0x006fabab    e8b0390400
                         add                esp, 0x08                                     // 0x006fabb0    83c408
                         pop                esi                                           // 0x006fabb3    5e
                         add                esp, 0x20                                     // 0x006fabb4    83c420
                         ret                                                              // 0x006fabb7    c3
                         nop                                                              // 0x006fabb8    90
                         nop                                                              // 0x006fabb9    90
                         nop                                                              // 0x006fabba    90
                         nop                                                              // 0x006fabbb    90
                         nop                                                              // 0x006fabbc    90
                         nop                                                              // 0x006fabbd    90
                         nop                                                              // 0x006fabbe    90
                         nop                                                              // 0x006fabbf    90
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fabc0    8b0d105cd900
                         sub                esp, 0x08                                     // 0x006fabc6    83ec08
                         push               esi                                           // 0x006fabc9    56
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x006fabca    8d442404
                         push               eax                                           // 0x006fabce    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006fabcf    e8ecbfffff
                         push               eax                                           // 0x006fabd4    50
                         call               _jmp_addr_0x0070d220                          // 0x006fabd5    e846260100
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fabda    8b0d105cd900
                         add                esp, 0x04                                     // 0x006fabe0    83c404
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x006fabe3    8d542408
                         push               edx                                           // 0x006fabe7    52
                         mov.s              esi, eax                                      // 0x006fabe8    8bf0
                         call               _jmp_addr_0x006f6bc0                          // 0x006fabea    e8d1bfffff
                         test               esi, esi                                      // 0x006fabef    85f6
                         {disp8} jne        _jmp_addr_0x006fac05                          // 0x006fabf1    7512
                         push               0x00c0c6ec                                    // 0x006fabf3    68ecc6c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006fabf8    e8b3b6ffff
                         add                esp, 0x04                                     // 0x006fabfd    83c404
                         pop                esi                                           // 0x006fac00    5e
                         add                esp, 0x08                                     // 0x006fac01    83c408
                         ret                                                              // 0x006fac04    c3
_jmp_addr_0x006fac05:    mov                edx, dword ptr [esi]                          // 0x006fac05    8b16
                         push               eax                                           // 0x006fac07    50
                         mov.s              ecx, esi                                      // 0x006fac08    8bce
                         call               dword ptr [edx + 0x4f0]                       // 0x006fac0a    ff92f0040000
                         pop                esi                                           // 0x006fac10    5e
                         add                esp, 0x08                                     // 0x006fac11    83c408
                         ret                                                              // 0x006fac14    c3
                         nop                                                              // 0x006fac15    90
                         nop                                                              // 0x006fac16    90
                         nop                                                              // 0x006fac17    90
                         nop                                                              // 0x006fac18    90
                         nop                                                              // 0x006fac19    90
                         nop                                                              // 0x006fac1a    90
                         nop                                                              // 0x006fac1b    90
                         nop                                                              // 0x006fac1c    90
                         nop                                                              // 0x006fac1d    90
                         nop                                                              // 0x006fac1e    90
                         nop                                                              // 0x006fac1f    90
                         {disp32} mov       eax, dword ptr [_game]                        // 0x006fac20    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x0025005c]             // 0x006fac25    8b885c002500
                         call               _jmp_addr_0x005c6c50                          // 0x006fac2b    e820c0ecff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fac30    8b0d105cd900
                         neg                eax                                           // 0x006fac36    f7d8
                         sbb.s              eax, eax                                      // 0x006fac38    1bc0
                         inc                eax                                           // 0x006fac3a    40
                         push               0x6                                           // 0x006fac3b    6a06
                         push               eax                                           // 0x006fac3d    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006fac3e    e85dbfffff
                         ret                                                              // 0x006fac43    c3
                         nop                                                              // 0x006fac44    90
                         nop                                                              // 0x006fac45    90
                         nop                                                              // 0x006fac46    90
                         nop                                                              // 0x006fac47    90
                         nop                                                              // 0x006fac48    90
                         nop                                                              // 0x006fac49    90
                         nop                                                              // 0x006fac4a    90
                         nop                                                              // 0x006fac4b    90
                         nop                                                              // 0x006fac4c    90
                         nop                                                              // 0x006fac4d    90
                         nop                                                              // 0x006fac4e    90
                         nop                                                              // 0x006fac4f    90
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fac50    8b0d105cd900
                         sub                esp, 0x08                                     // 0x006fac56    83ec08
                         push               esi                                           // 0x006fac59    56
                         push               edi                                           // 0x006fac5a    57
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x006fac5b    8d442408
                         push               eax                                           // 0x006fac5f    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006fac60    e85bbfffff
                         push               eax                                           // 0x006fac65    50
                         call               _jmp_addr_0x0070d220                          // 0x006fac66    e8b5250100
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fac6b    8b0d105cd900
                         add                esp, 0x04                                     // 0x006fac71    83c404
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x006fac74    8d542408
                         push               edx                                           // 0x006fac78    52
                         mov.s              esi, eax                                      // 0x006fac79    8bf0
                         call               _jmp_addr_0x006f6bc0                          // 0x006fac7b    e840bfffff
                         test               esi, esi                                      // 0x006fac80    85f6
                         mov.s              edi, eax                                      // 0x006fac82    8bf8
                         {disp8} je         _jmp_addr_0x006facdf                          // 0x006fac84    7459
                         push               0x0                                           // 0x006fac86    6a00
                         push               0x009c7f50                                    // 0x006fac88    68507f9c00
                         push               0x009c7f30                                    // 0x006fac8d    68307f9c00
                         push               0x0                                           // 0x006fac92    6a00
                         push               esi                                           // 0x006fac94    56
                         call               ___RTDynamicCast                              // 0x006fac95    e87fad0c00
                         add                esp, 0x14                                     // 0x006fac9a    83c414
                         test               eax, eax                                      // 0x006fac9d    85c0
                         {disp8} je         _jmp_addr_0x006facd8                          // 0x006fac9f    7437
                         mov                edx, dword ptr [eax]                          // 0x006faca1    8b10
                         push               edi                                           // 0x006faca3    57
                         mov.s              ecx, eax                                      // 0x006faca4    8bc8
                         call               dword ptr [edx + 0x98]                        // 0x006faca6    ff9298000000
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006facac    8b0d105cd900
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x006facb2    89442408
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000            // 0x006facb6    c744240c00000000
                         {disp8} fild       qword ptr [esp + 0x08]                        // 0x006facbe    df6c2408
                         push               0x2                                           // 0x006facc2    6a02
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x006facc4    d95c240c
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x006facc8    8b44240c
                         push               eax                                           // 0x006faccc    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006faccd    e8cebeffff
                         pop                edi                                           // 0x006facd2    5f
                         pop                esi                                           // 0x006facd3    5e
                         add                esp, 0x08                                     // 0x006facd4    83c408
                         ret                                                              // 0x006facd7    c3
_jmp_addr_0x006facd8:    push               0x00c0d778                                    // 0x006facd8    6878d7c000
                         {disp8} jmp        _jmp_addr_0x006face4                          // 0x006facdd    eb05
_jmp_addr_0x006facdf:    push               0x00c0d760                                    // 0x006facdf    6860d7c000
_jmp_addr_0x006face4:    call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006face4    e8c7b5ffff
                         add                esp, 0x04                                     // 0x006face9    83c404
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000            // 0x006facec    c744240800000000
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x006facf4    8b4c2408
                         push               0x2                                           // 0x006facf8    6a02
                         push               ecx                                           // 0x006facfa    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006facfb    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006fad01    e89abeffff
                         pop                edi                                           // 0x006fad06    5f
                         pop                esi                                           // 0x006fad07    5e
                         add                esp, 0x08                                     // 0x006fad08    83c408
                         ret                                                              // 0x006fad0b    c3
                         nop                                                              // 0x006fad0c    90
                         nop                                                              // 0x006fad0d    90
                         nop                                                              // 0x006fad0e    90
                         nop                                                              // 0x006fad0f    90
                         sub                esp, 0x08                                     // 0x006fad10    83ec08
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fad13    8b0d105cd900
                         push               ebx                                           // 0x006fad19    53
                         push               esi                                           // 0x006fad1a    56
                         push               edi                                           // 0x006fad1b    57
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x006fad1c    8d44240c
                         push               eax                                           // 0x006fad20    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006fad21    e89abeffff
                         push               eax                                           // 0x006fad26    50
                         call               _jmp_addr_0x0070d220                          // 0x006fad27    e8f4240100
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fad2c    8b0d105cd900
                         add                esp, 0x04                                     // 0x006fad32    83c404
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x006fad35    8d54240c
                         push               edx                                           // 0x006fad39    52
                         mov.s              esi, eax                                      // 0x006fad3a    8bf0
                         call               _jmp_addr_0x006f6bc0                          // 0x006fad3c    e87fbeffff
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x006fad41    8944240c
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x006fad45    d944240c
                         call               _jmp_addr_0x007a1400                          // 0x006fad49    e8b2660a00
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fad4e    8b0d105cd900
                         mov.s              edi, eax                                      // 0x006fad54    8bf8
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x006fad56    8d44240c
                         push               eax                                           // 0x006fad5a    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006fad5b    e860beffff
                         test               esi, esi                                      // 0x006fad60    85f6
                         mov.s              ebx, eax                                      // 0x006fad62    8bd8
                         {disp8} je         _jmp_addr_0x006fadc9                          // 0x006fad64    7463
                         push               0x0                                           // 0x006fad66    6a00
                         push               0x009c7f50                                    // 0x006fad68    68507f9c00
                         push               0x009c7f30                                    // 0x006fad6d    68307f9c00
                         push               0x0                                           // 0x006fad72    6a00
                         push               esi                                           // 0x006fad74    56
                         call               ___RTDynamicCast                              // 0x006fad75    e89fac0c00
                         add                esp, 0x14                                     // 0x006fad7a    83c414
                         test               eax, eax                                      // 0x006fad7d    85c0
                         {disp8} je         _jmp_addr_0x006fadc2                          // 0x006fad7f    7441
                         mov                edx, dword ptr [eax]                          // 0x006fad81    8b10
                         push               0x0                                           // 0x006fad83    6a00
                         push               0x0                                           // 0x006fad85    6a00
                         push               0x0                                           // 0x006fad87    6a00
                         push               0x0                                           // 0x006fad89    6a00
                         push               edi                                           // 0x006fad8b    57
                         push               ebx                                           // 0x006fad8c    53
                         mov.s              ecx, eax                                      // 0x006fad8d    8bc8
                         call               dword ptr [edx + 0x9c]                        // 0x006fad8f    ff929c000000
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fad95    8b0d105cd900
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x006fad9b    8944240c
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x006fad9f    c744241000000000
                         {disp8} fild       qword ptr [esp + 0x0c]                        // 0x006fada7    df6c240c
                         push               0x2                                           // 0x006fadab    6a02
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x006fadad    d95c2410
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x006fadb1    8b442410
                         push               eax                                           // 0x006fadb5    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006fadb6    e8e5bdffff
                         pop                edi                                           // 0x006fadbb    5f
                         pop                esi                                           // 0x006fadbc    5e
                         pop                ebx                                           // 0x006fadbd    5b
                         add                esp, 0x08                                     // 0x006fadbe    83c408
                         ret                                                              // 0x006fadc1    c3
_jmp_addr_0x006fadc2:    push               0x00c0d778                                    // 0x006fadc2    6878d7c000
                         {disp8} jmp        _jmp_addr_0x006fadce                          // 0x006fadc7    eb05
_jmp_addr_0x006fadc9:    push               0x00c0d760                                    // 0x006fadc9    6860d7c000
_jmp_addr_0x006fadce:    call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006fadce    e8ddb4ffff
                         add                esp, 0x04                                     // 0x006fadd3    83c404
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000            // 0x006fadd6    c744240c00000000
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x006fadde    8b4c240c
                         push               0x2                                           // 0x006fade2    6a02
                         push               ecx                                           // 0x006fade4    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fade5    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006fadeb    e8b0bdffff
                         pop                edi                                           // 0x006fadf0    5f
                         pop                esi                                           // 0x006fadf1    5e
                         pop                ebx                                           // 0x006fadf2    5b
                         add                esp, 0x08                                     // 0x006fadf3    83c408
                         ret                                                              // 0x006fadf6    c3
                         nop                                                              // 0x006fadf7    90
                         nop                                                              // 0x006fadf8    90
                         nop                                                              // 0x006fadf9    90
                         nop                                                              // 0x006fadfa    90
                         nop                                                              // 0x006fadfb    90
                         nop                                                              // 0x006fadfc    90
                         nop                                                              // 0x006fadfd    90
                         nop                                                              // 0x006fadfe    90
                         nop                                                              // 0x006fadff    90
                         sub                esp, 0x08                                     // 0x006fae00    83ec08
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fae03    8b0d105cd900
                         push               ebx                                           // 0x006fae09    53
                         push               esi                                           // 0x006fae0a    56
                         push               edi                                           // 0x006fae0b    57
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x006fae0c    8d44240c
                         push               eax                                           // 0x006fae10    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006fae11    e8aabdffff
                         push               eax                                           // 0x006fae16    50
                         call               _jmp_addr_0x0070d220                          // 0x006fae17    e804240100
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fae1c    8b0d105cd900
                         add                esp, 0x04                                     // 0x006fae22    83c404
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x006fae25    8d54240c
                         push               edx                                           // 0x006fae29    52
                         mov.s              esi, eax                                      // 0x006fae2a    8bf0
                         call               _jmp_addr_0x006f6bc0                          // 0x006fae2c    e88fbdffff
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x006fae31    8944240c
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x006fae35    d944240c
                         call               _jmp_addr_0x007a1400                          // 0x006fae39    e8c2650a00
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fae3e    8b0d105cd900
                         mov.s              edi, eax                                      // 0x006fae44    8bf8
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x006fae46    8d44240c
                         push               eax                                           // 0x006fae4a    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006fae4b    e870bdffff
                         test               esi, esi                                      // 0x006fae50    85f6
                         mov.s              ebx, eax                                      // 0x006fae52    8bd8
                         {disp8} je         _jmp_addr_0x006faeb5                          // 0x006fae54    745f
                         push               0x0                                           // 0x006fae56    6a00
                         push               0x009c7f50                                    // 0x006fae58    68507f9c00
                         push               0x009c7f30                                    // 0x006fae5d    68307f9c00
                         push               0x0                                           // 0x006fae62    6a00
                         push               esi                                           // 0x006fae64    56
                         call               ___RTDynamicCast                              // 0x006fae65    e8afab0c00
                         add                esp, 0x14                                     // 0x006fae6a    83c414
                         test               eax, eax                                      // 0x006fae6d    85c0
                         {disp8} je         _jmp_addr_0x006faeae                          // 0x006fae6f    743d
                         mov                edx, dword ptr [eax]                          // 0x006fae71    8b10
                         push               0x0                                           // 0x006fae73    6a00
                         push               0x0                                           // 0x006fae75    6a00
                         push               edi                                           // 0x006fae77    57
                         push               ebx                                           // 0x006fae78    53
                         mov.s              ecx, eax                                      // 0x006fae79    8bc8
                         call               dword ptr [edx + 0xa0]                        // 0x006fae7b    ff92a0000000
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fae81    8b0d105cd900
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x006fae87    8944240c
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x006fae8b    c744241000000000
                         {disp8} fild       qword ptr [esp + 0x0c]                        // 0x006fae93    df6c240c
                         push               0x2                                           // 0x006fae97    6a02
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x006fae99    d95c2410
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x006fae9d    8b442410
                         push               eax                                           // 0x006faea1    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006faea2    e8f9bcffff
                         pop                edi                                           // 0x006faea7    5f
                         pop                esi                                           // 0x006faea8    5e
                         pop                ebx                                           // 0x006faea9    5b
                         add                esp, 0x08                                     // 0x006faeaa    83c408
                         ret                                                              // 0x006faead    c3
_jmp_addr_0x006faeae:    push               0x00c0d778                                    // 0x006faeae    6878d7c000
                         {disp8} jmp        _jmp_addr_0x006faeba                          // 0x006faeb3    eb05
_jmp_addr_0x006faeb5:    push               0x00c0d760                                    // 0x006faeb5    6860d7c000
_jmp_addr_0x006faeba:    call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006faeba    e8f1b3ffff
                         add                esp, 0x04                                     // 0x006faebf    83c404
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000            // 0x006faec2    c744240c00000000
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x006faeca    8b4c240c
                         push               0x2                                           // 0x006faece    6a02
                         push               ecx                                           // 0x006faed0    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006faed1    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006faed7    e8c4bcffff
                         pop                edi                                           // 0x006faedc    5f
                         pop                esi                                           // 0x006faedd    5e
                         pop                ebx                                           // 0x006faede    5b
                         add                esp, 0x08                                     // 0x006faedf    83c408
                         ret                                                              // 0x006faee2    c3
                         nop                                                              // 0x006faee3    90
                         nop                                                              // 0x006faee4    90
                         nop                                                              // 0x006faee5    90
                         nop                                                              // 0x006faee6    90
                         nop                                                              // 0x006faee7    90
                         nop                                                              // 0x006faee8    90
                         nop                                                              // 0x006faee9    90
                         nop                                                              // 0x006faeea    90
                         nop                                                              // 0x006faeeb    90
                         nop                                                              // 0x006faeec    90
                         nop                                                              // 0x006faeed    90
                         nop                                                              // 0x006faeee    90
                         nop                                                              // 0x006faeef    90
                         sub                esp, 0x68                                     // 0x006faef0    83ec68
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006faef3    8b0d105cd900
                         push               esi                                           // 0x006faef9    56
                         {disp8} lea        eax, dword ptr [esp + 0x20]                   // 0x006faefa    8d442420
                         push               eax                                           // 0x006faefe    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006faeff    e8bcbcffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006faf04    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                   // 0x006faf0a    8d54241c
                         push               edx                                           // 0x006faf0e    52
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x006faf0f    89442424
                         call               _jmp_addr_0x006f6bc0                          // 0x006faf13    e8a8bcffff
                         {disp32} mov       esi, dword ptr [_script_dll]                  // 0x006faf18    8b35105cd900
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x006faf1e    89442408
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                   // 0x006faf22    8d44241c
                         push               eax                                           // 0x006faf26    50
                         mov.s              ecx, esi                                      // 0x006faf27    8bce
                         call               _jmp_addr_0x006f6bc0                          // 0x006faf29    e892bcffff
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x006faf2e    8d4c241c
                         push               ecx                                           // 0x006faf32    51
                         mov.s              ecx, esi                                      // 0x006faf33    8bce
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x006faf35    89442418
                         call               _jmp_addr_0x006f6bc0                          // 0x006faf39    e882bcffff
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                   // 0x006faf3e    8d54241c
                         push               edx                                           // 0x006faf42    52
                         mov.s              ecx, esi                                      // 0x006faf43    8bce
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x006faf45    89442414
                         call               _jmp_addr_0x006f6bc0                          // 0x006faf49    e872bcffff
                         {disp32} mov       esi, dword ptr [_script_dll]                  // 0x006faf4e    8b35105cd900
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x006faf54    8944240c
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                   // 0x006faf58    8d44241c
                         push               eax                                           // 0x006faf5c    50
                         mov.s              ecx, esi                                      // 0x006faf5d    8bce
                         call               _jmp_addr_0x006f6bc0                          // 0x006faf5f    e85cbcffff
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x006faf64    8d4c2418
                         push               ecx                                           // 0x006faf68    51
                         mov.s              ecx, esi                                      // 0x006faf69    8bce
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x006faf6b    89442420
                         call               _jmp_addr_0x006f6bc0                          // 0x006faf6f    e84cbcffff
                         {disp8} lea        edx, dword ptr [esp + 0x04]                   // 0x006faf74    8d542404
                         push               edx                                           // 0x006faf78    52
                         mov.s              ecx, esi                                      // 0x006faf79    8bce
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x006faf7b    8944241c
                         call               _jmp_addr_0x006f6bc0                          // 0x006faf7f    e83cbcffff
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x006faf84    d944240c
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x006faf88    89442404
                         {disp8} fsub       dword ptr [esp + 0x04]                        // 0x006faf8c    d8642404
                         pop                esi                                           // 0x006faf90    5e
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x006faf91    d95c2420
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x006faf95    d944240c
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x006faf99    8b442420
                         {disp8} fsub       dword ptr [esp + 0x14]                        // 0x006faf9d    d8642414
                         {disp8} mov        dword ptr [esp + 0x2c], eax                   // 0x006fafa1    8944242c
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x006fafa5    d95c2424
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x006fafa9    d9442410
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x006fafad    8b4c2424
                         {disp8} fsub       dword ptr [esp + 0x18]                        // 0x006fafb1    d8642418
                         {disp8} mov        dword ptr [esp + 0x30], ecx                   // 0x006fafb5    894c2430
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x006fafb9    d95c2428
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x006fafbd    d9442420
                         {disp8} mov        edx, dword ptr [esp + 0x28]                   // 0x006fafc1    8b542428
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x006fafc5    d81d98a38a00
                         {disp8} mov        dword ptr [esp + 0x34], edx                   // 0x006fafcb    89542434
                         fnstsw             ax                                            // 0x006fafcf    dfe0
                         test               ah, 0x40                                      // 0x006fafd1    f6c440
                         {disp8} je         _jmp_addr_0x006faff8                          // 0x006fafd4    7422
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x006fafd6    d9442424
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x006fafda    d81d98a38a00
                         fnstsw             ax                                            // 0x006fafe0    dfe0
                         test               ah, 0x40                                      // 0x006fafe2    f6c440
                         {disp8} je         _jmp_addr_0x006faff8                          // 0x006fafe5    7411
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x006fafe7    d9442428
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x006fafeb    d81d98a38a00
                         fnstsw             ax                                            // 0x006faff1    dfe0
                         test               ah, 0x40                                      // 0x006faff3    f6c440
                         {disp8} jne        _jmp_addr_0x006fb03e                          // 0x006faff6    7546
_jmp_addr_0x006faff8:    {disp8} fld        dword ptr [esp + 0x28]                        // 0x006faff8    d9442428
                         {disp8} fmul       dword ptr [esp + 0x28]                        // 0x006faffc    d84c2428
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x006fb000    d9442424
                         {disp8} fmul       dword ptr [esp + 0x24]                        // 0x006fb004    d84c2424
                         faddp              st(1), st                                     // 0x006fb008    dec1
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x006fb00a    d9442420
                         {disp8} fmul       dword ptr [esp + 0x20]                        // 0x006fb00e    d84c2420
                         faddp              st(1), st                                     // 0x006fb012    dec1
                         fsqrt                                                            // 0x006fb014    d9fa
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                   // 0x006fb016    d83d90a38a00
                         {disp8} fst        dword ptr [esp + 0x00]                        // 0x006fb01c    d9542400
                         {disp8} fmul       dword ptr [esp + 0x20]                        // 0x006fb020    d84c2420
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x006fb024    d95c242c
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x006fb028    d9442424
                         {disp8} fmul       dword ptr [esp + 0x00]                        // 0x006fb02c    d84c2400
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x006fb030    d9442428
                         {disp8} fmul       dword ptr [esp + 0x00]                        // 0x006fb034    d84c2400
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x006fb038    d95c2434
                         {disp8} jmp        _jmp_addr_0x006fb042                          // 0x006fb03c    eb04
_jmp_addr_0x006fb03e:    {disp8} fld        dword ptr [esp + 0x30]                        // 0x006fb03e    d9442430
_jmp_addr_0x006fb042:    {disp8} fld        dword ptr [esp + 0x1c]                        // 0x006fb042    d944241c
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x006fb046    8b44242c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x8220c]             // 0x006fb04a    d80d0cb29200
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x006fb050    8944241c
                         {disp8} lea        eax, dword ptr [esp + 0x20]                   // 0x006fb054    8d442420
                         push               eax                                           // 0x006fb058    50
                         fld                st(0)                                         // 0x006fb059    d9c0
                         fcos                                                             // 0x006fb05b    d9ff
                         {disp8} fstp       dword ptr [esp + 0x5c]                        // 0x006fb05d    d95c245c
                         fsin                                                             // 0x006fb061    d9fe
                         fld                st(0)                                         // 0x006fb063    d9c0
                         fchs                                                             // 0x006fb065    d9e0
                         fld                st(2)                                         // 0x006fb067    d9c2
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x006fb069    d95c241c
                         {disp8} fmul       dword ptr [esp + 0x38]                        // 0x006fb06d    d84c2438
                         {disp8} fld        dword ptr [esp + 0x5c]                        // 0x006fb071    d944245c
                         {disp8} fmul       dword ptr [esp + 0x30]                        // 0x006fb075    d84c2430
                         faddp              st(1), st                                     // 0x006fb079    dec1
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x006fb07b    d95c2430
                         fxch               st(1)                                         // 0x006fb07f    d9c9
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x006fb081    d95c2434
                         {disp8} fld        dword ptr [esp + 0x5c]                        // 0x006fb085    d944245c
                         {disp8} fmul       dword ptr [esp + 0x38]                        // 0x006fb089    d84c2438
                         fxch               st(1)                                         // 0x006fb08d    d9c9
                         {disp8} fmul       dword ptr [esp + 0x20]                        // 0x006fb08f    d84c2420
                         faddp              st(1), st                                     // 0x006fb093    dec1
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x006fb095    d9442430
                         {disp8} fmul       dword ptr [esp + 0x08]                        // 0x006fb099    d84c2408
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x006fb09d    d95c2424
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x006fb0a1    d9442434
                         {disp8} fmul       dword ptr [esp + 0x08]                        // 0x006fb0a5    d84c2408
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x006fb0a9    d95c2428
                         {disp8} fmul       dword ptr [esp + 0x08]                        // 0x006fb0ad    d84c2408
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x006fb0b1    d9442424
                         {disp8} fadd       dword ptr [esp + 0x0c]                        // 0x006fb0b5    d844240c
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x006fb0b9    d9442428
                         {disp8} fadd       dword ptr [esp + 0x10]                        // 0x006fb0bd    d8442410
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x006fb0c1    d95c2434
                         {disp8} mov        ecx, dword ptr [esp + 0x34]                   // 0x006fb0c5    8b4c2434
                         fxch               st(1)                                         // 0x006fb0c9    d9c9
                         {disp8} fadd       dword ptr [esp + 0x14]                        // 0x006fb0cb    d8442414
                         {disp8} mov        dword ptr [esp + 0x28], ecx                   // 0x006fb0cf    894c2428
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fb0d3    8b0d105cd900
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x006fb0d9    d95c2438
                         {disp8} mov        edx, dword ptr [esp + 0x38]                   // 0x006fb0dd    8b542438
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x006fb0e1    d95c2424
                         {disp8} mov        dword ptr [esp + 0x2c], edx                   // 0x006fb0e5    8954242c
                         call               _jmp_addr_0x006fb100                          // 0x006fb0e9    e812000000
                         add                esp, 0x68                                     // 0x006fb0ee    83c468
                         ret                                                              // 0x006fb0f1    c3
                         nop                                                              // 0x006fb0f2    90
                         nop                                                              // 0x006fb0f3    90
                         nop                                                              // 0x006fb0f4    90
                         nop                                                              // 0x006fb0f5    90
                         nop                                                              // 0x006fb0f6    90
                         nop                                                              // 0x006fb0f7    90
                         nop                                                              // 0x006fb0f8    90
                         nop                                                              // 0x006fb0f9    90
                         nop                                                              // 0x006fb0fa    90
                         nop                                                              // 0x006fb0fb    90
                         nop                                                              // 0x006fb0fc    90
                         nop                                                              // 0x006fb0fd    90
                         nop                                                              // 0x006fb0fe    90
                         nop                                                              // 0x006fb0ff    90
_jmp_addr_0x006fb100:    push               esi                                           // 0x006fb100    56
                         push               edi                                           // 0x006fb101    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x006fb102    8b7c240c
                         mov                eax, dword ptr [edi]                          // 0x006fb106    8b07
                         mov.s              esi, ecx                                      // 0x006fb108    8bf1
                         mov.s              ecx, eax                                      // 0x006fb10a    8bc8
                         push               0x3                                           // 0x006fb10c    6a03
                         push               ecx                                           // 0x006fb10e    51
                         mov.s              ecx, esi                                      // 0x006fb10f    8bce
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x006fb111    89442414
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006fb115    e886baffff
                         {disp8} mov        edx, dword ptr [edi + 0x04]                   // 0x006fb11a    8b5704
                         push               0x3                                           // 0x006fb11d    6a03
                         mov.s              eax, edx                                      // 0x006fb11f    8bc2
                         push               eax                                           // 0x006fb121    50
                         mov.s              ecx, esi                                      // 0x006fb122    8bce
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x006fb124    89542414
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006fb128    e873baffff
                         {disp8} mov        ecx, dword ptr [edi + 0x08]                   // 0x006fb12d    8b4f08
                         mov.s              edx, ecx                                      // 0x006fb130    8bd1
                         push               0x3                                           // 0x006fb132    6a03
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x006fb134    894c2410
                         push               edx                                           // 0x006fb138    52
                         mov.s              ecx, esi                                      // 0x006fb139    8bce
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006fb13b    e860baffff
                         pop                edi                                           // 0x006fb140    5f
                         pop                esi                                           // 0x006fb141    5e
                         ret                0x0004                                        // 0x006fb142    c20400
                         nop                                                              // 0x006fb145    90
                         nop                                                              // 0x006fb146    90
                         nop                                                              // 0x006fb147    90
                         nop                                                              // 0x006fb148    90
                         nop                                                              // 0x006fb149    90
                         nop                                                              // 0x006fb14a    90
                         nop                                                              // 0x006fb14b    90
                         nop                                                              // 0x006fb14c    90
                         nop                                                              // 0x006fb14d    90
                         nop                                                              // 0x006fb14e    90
                         nop                                                              // 0x006fb14f    90
                         push               ecx                                           // 0x006fb150    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fb151    8b0d105cd900
                         push               esi                                           // 0x006fb157    56
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x006fb158    8d442404
                         push               eax                                           // 0x006fb15c    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006fb15d    e85ebaffff
                         push               eax                                           // 0x006fb162    50
                         call               _jmp_addr_0x0070d220                          // 0x006fb163    e8b8200100
                         mov.s              esi, eax                                      // 0x006fb168    8bf0
                         add                esp, 0x04                                     // 0x006fb16a    83c404
                         test               esi, esi                                      // 0x006fb16d    85f6
                         {disp8} jne        _jmp_addr_0x006fb178                          // 0x006fb16f    7507
                         push               0x00c0d7b8                                    // 0x006fb171    68b8d7c000
                         {disp8} jmp        _jmp_addr_0x006fb1d1                          // 0x006fb176    eb59
_jmp_addr_0x006fb178:    mov                edx, dword ptr [esi]                          // 0x006fb178    8b16
                         mov.s              ecx, esi                                      // 0x006fb17a    8bce
                         call               dword ptr [edx + 0x3c4]                       // 0x006fb17c    ff92c4030000
                         test               eax, eax                                      // 0x006fb182    85c0
                         {disp8} je         _jmp_addr_0x006fb1a6                          // 0x006fb184    7420
                         mov                eax, dword ptr [esi]                          // 0x006fb186    8b06
                         mov.s              ecx, esi                                      // 0x006fb188    8bce
                         call               dword ptr [eax + 0xb04]                       // 0x006fb18a    ff90040b0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fb190    8b0d105cd900
                         push               0x1                                           // 0x006fb196    6a01
                         and                eax, 0x000000ff                               // 0x006fb198    25ff000000
                         push               eax                                           // 0x006fb19d    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006fb19e    e8fdb9ffff
                         pop                esi                                           // 0x006fb1a3    5e
                         pop                ecx                                           // 0x006fb1a4    59
                         ret                                                              // 0x006fb1a5    c3
_jmp_addr_0x006fb1a6:    mov                edx, dword ptr [esi]                          // 0x006fb1a6    8b16
                         mov.s              ecx, esi                                      // 0x006fb1a8    8bce
                         call               dword ptr [edx + 0x498]                       // 0x006fb1aa    ff9298040000
                         test               eax, eax                                      // 0x006fb1b0    85c0
                         {disp8} je         _jmp_addr_0x006fb1cc                          // 0x006fb1b2    7418
                         mov.s              ecx, esi                                      // 0x006fb1b4    8bce
                         call               _jmp_addr_0x006dc070                          // 0x006fb1b6    e8b50efeff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fb1bb    8b0d105cd900
                         push               0x1                                           // 0x006fb1c1    6a01
                         push               eax                                           // 0x006fb1c3    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006fb1c4    e8d7b9ffff
                         pop                esi                                           // 0x006fb1c9    5e
                         pop                ecx                                           // 0x006fb1ca    59
                         ret                                                              // 0x006fb1cb    c3
_jmp_addr_0x006fb1cc:    push               0x00c0d790                                    // 0x006fb1cc    6890d7c000
_jmp_addr_0x006fb1d1:    call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006fb1d1    e8dab0ffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fb1d6    8b0d105cd900
                         add                esp, 0x04                                     // 0x006fb1dc    83c404
                         push               0x1                                           // 0x006fb1df    6a01
                         push               0x0                                           // 0x006fb1e1    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006fb1e3    e8b8b9ffff
                         pop                esi                                           // 0x006fb1e8    5e
                         pop                ecx                                           // 0x006fb1e9    59
                         ret                                                              // 0x006fb1ea    c3
                         nop                                                              // 0x006fb1eb    90
                         nop                                                              // 0x006fb1ec    90
                         nop                                                              // 0x006fb1ed    90
                         nop                                                              // 0x006fb1ee    90
                         nop                                                              // 0x006fb1ef    90
                         sub                esp, 0x14                                     // 0x006fb1f0    83ec14
                         push               esi                                           // 0x006fb1f3    56
                         {disp32} mov       esi, dword ptr [_script_dll]                  // 0x006fb1f4    8b35105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x006fb1fa    8d442408
                         push               eax                                           // 0x006fb1fe    50
                         mov.s              ecx, esi                                      // 0x006fb1ff    8bce
                         call               _jmp_addr_0x006f6bc0                          // 0x006fb201    e8bab9ffff
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                   // 0x006fb206    8d4c2404
                         push               ecx                                           // 0x006fb20a    51
                         mov.s              ecx, esi                                      // 0x006fb20b    8bce
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x006fb20d    8944240c
                         call               _jmp_addr_0x006f6bc0                          // 0x006fb211    e8aab9ffff
                         {disp8} lea        edx, dword ptr [esp + 0x04]                   // 0x006fb216    8d542404
                         push               edx                                           // 0x006fb21a    52
                         mov.s              ecx, esi                                      // 0x006fb21b    8bce
                         call               _jmp_addr_0x006f6bc0                          // 0x006fb21d    e89eb9ffff
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x006fb222    d9442408
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x006fb226    d80d04c48a00
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x006fb22c    89442404
                         call               _jmp_addr_0x007a1400                          // 0x006fb230    e8cb610a00
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x006fb235    d9442404
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x006fb239    d80d04c48a00
                         mov.s              esi, eax                                      // 0x006fb23f    8bf0
                         call               _jmp_addr_0x007a1400                          // 0x006fb241    e8ba610a00
                         test               eax, eax                                      // 0x006fb246    85c0
                         {disp8} jl         _jmp_addr_0x006fb29f                          // 0x006fb248    7c55
                         cmp                eax, 0x000001ff                               // 0x006fb24a    3dff010000
                         {disp8} jg         _jmp_addr_0x006fb29f                          // 0x006fb24f    7f4e
                         test               esi, esi                                      // 0x006fb251    85f6
                         {disp8} jl         _jmp_addr_0x006fb29f                          // 0x006fb253    7c4a
                         cmp                esi, 0x000001ff                               // 0x006fb255    81feff010000
                         {disp8} jg         _jmp_addr_0x006fb29f                          // 0x006fb25b    7f42
                         mov.s              ecx, eax                                      // 0x006fb25d    8bc8
                         sar                ecx, 4                                        // 0x006fb25f    c1f904
                         push               ebx                                           // 0x006fb262    53
                         xor.s              ebx, ebx                                      // 0x006fb263    33db
                         shl                ecx, 5                                        // 0x006fb265    c1e105
                         mov.s              edx, esi                                      // 0x006fb268    8bd6
                         sar                edx, 4                                        // 0x006fb26a    c1fa04
                         {disp32} mov       bl, byte ptr [ecx + edx + ?g_index_block@LH3DIsland@@3PAY0CA@EA]   // 0x006fb26d    8a9c1164c9e900
                         mov.s              ecx, ebx                                      // 0x006fb274    8bcb
                         test               ecx, ecx                                      // 0x006fb276    85c9
                         pop                ebx                                           // 0x006fb278    5b
                         {disp8} je         _jmp_addr_0x006fb29f                          // 0x006fb279    7424
                         and                eax, 0x0f                                     // 0x006fb27b    83e00f
                         mov.s              edx, eax                                      // 0x006fb27e    8bd0
                         shl                edx, 4                                        // 0x006fb280    c1e204
                         add.s              edx, eax                                      // 0x006fb283    03d0
                         {disp32} mov       eax, dword ptr [ecx * 0x4 + ?g_ptr_blocks@LH3DIsland@@3PAPAULandBlock@@A]       // 0x006fb285    8b048d64c5e900
                         and                esi, 0x0f                                     // 0x006fb28c    83e60f
                         add.s              edx, esi                                      // 0x006fb28f    03d6
                         lea                eax, dword ptr [eax + edx * 0x8]              // 0x006fb291    8d04d0
                         test               eax, eax                                      // 0x006fb294    85c0
                         {disp8} je         _jmp_addr_0x006fb29f                          // 0x006fb296    7407
                         {disp8} mov        cl, byte ptr [eax + 0x04]                     // 0x006fb298    8a4804
                         test               cl, cl                                        // 0x006fb29b    84c9
                         {disp8} jne        _jmp_addr_0x006fb2be                          // 0x006fb29d    751f
_jmp_addr_0x006fb29f:    {disp8} mov        dword ptr [esp + 0x08], 0xc1200000            // 0x006fb29f    c7442408000020c1
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x006fb2a7    8b4c2408
                         push               0x2                                           // 0x006fb2ab    6a02
                         push               ecx                                           // 0x006fb2ad    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fb2ae    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006fb2b4    e8e7b8ffff
                         pop                esi                                           // 0x006fb2b9    5e
                         add                esp, 0x14                                     // 0x006fb2ba    83c414
                         ret                                                              // 0x006fb2bd    c3
_jmp_addr_0x006fb2be:    {disp8} fld        dword ptr [esp + 0x04]                        // 0x006fb2be    d9442404
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]              // 0x006fb2c2    d80d08c48a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x006fb2c8    d80d04c48a00
                         call               _jmp_addr_0x007a1400                          // 0x006fb2ce    e82d610a00
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x006fb2d3    d9442408
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]              // 0x006fb2d7    d80d08c48a00
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x006fb2dd    8944240c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x006fb2e1    d80d04c48a00
                         call               _jmp_addr_0x007a1400                          // 0x006fb2e7    e814610a00
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x006fb2ec    8d4c240c
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x006fb2f0    89442410
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x006fb2f4    c744241400000000
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x006fb2fc    e88f7d1000
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x006fb301    d95c2408
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x006fb305    8b542408
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fb309    8b0d105cd900
                         push               0x2                                           // 0x006fb30f    6a02
                         push               edx                                           // 0x006fb311    52
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006fb312    e889b8ffff
                         pop                esi                                           // 0x006fb317    5e
                         add                esp, 0x14                                     // 0x006fb318    83c414
                         ret                                                              // 0x006fb31b    c3
                         nop                                                              // 0x006fb31c    90
                         nop                                                              // 0x006fb31d    90
                         nop                                                              // 0x006fb31e    90
                         nop                                                              // 0x006fb31f    90
                         push               ecx                                           // 0x006fb320    51
                         push               esi                                           // 0x006fb321    56
                         {disp32} mov       esi, dword ptr [_script_dll]                  // 0x006fb322    8b35105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x006fb328    8d442404
                         push               eax                                           // 0x006fb32c    50
                         mov.s              ecx, esi                                      // 0x006fb32d    8bce
                         call               _jmp_addr_0x006f6bc0                          // 0x006fb32f    e88cb8ffff
                         push               eax                                           // 0x006fb334    50
                         mov.s              ecx, esi                                      // 0x006fb335    8bce
                         call               _jmp_addr_0x006f6bd0                          // 0x006fb337    e894b8ffff
                         push               0x1                                           // 0x006fb33c    6a01
                         mov.s              esi, eax                                      // 0x006fb33e    8bf0
                         {disp32} mov       byte ptr [data_bytes + 0x22dbac], 0x01        // 0x006fb340    c605ac3bbf0001
                         {disp32} mov       dword ptr [data_bytes + 0x36b8c8], 0x00000000 // 0x006fb347    c705c818d30000000000
                         {disp32} mov       dword ptr [data_bytes + 0x33b980], 0x00000002 // 0x006fb351    c7058019d00002000000
                         call               _RenderLoadingFrame__Fb                       // 0x006fb35b    e8e09aefff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006fb360    8b0d5c19d000
                         add                esp, 0x04                                     // 0x006fb366    83c404
                         push               esi                                           // 0x006fb369    56
                         call               ?StartPlaygroundGame@GGame@@QAEXPAD@Z         // 0x006fb36a    e8d17be5ff
                         {disp32} mov       dword ptr [data_bytes + 0x33b980], 0x00000000 // 0x006fb36f    c7058019d00000000000
                         pop                esi                                           // 0x006fb379    5e
                         pop                ecx                                           // 0x006fb37a    59
                         ret                                                              // 0x006fb37b    c3
                         nop                                                              // 0x006fb37c    90
                         nop                                                              // 0x006fb37d    90
                         nop                                                              // 0x006fb37e    90
                         nop                                                              // 0x006fb37f    90
                         push               ecx                                           // 0x006fb380    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fb381    8b0d105cd900
                         push               esi                                           // 0x006fb387    56
                         push               edi                                           // 0x006fb388    57
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x006fb389    8d442408
                         push               eax                                           // 0x006fb38d    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006fb38e    e82db8ffff
                         mov.s              edi, eax                                      // 0x006fb393    8bf8
                         push               edi                                           // 0x006fb395    57
                         call               _jmp_addr_0x0070d220                          // 0x006fb396    e8851e0100
                         mov.s              esi, eax                                      // 0x006fb39b    8bf0
                         add                esp, 0x04                                     // 0x006fb39d    83c404
                         test               esi, esi                                      // 0x006fb3a0    85f6
                         {disp8} jne        _jmp_addr_0x006fb3b5                          // 0x006fb3a2    7511
                         push               0x00c0cd88                                    // 0x006fb3a4    6888cdc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006fb3a9    e802afffff
                         add                esp, 0x04                                     // 0x006fb3ae    83c404
                         pop                edi                                           // 0x006fb3b1    5f
                         pop                esi                                           // 0x006fb3b2    5e
                         pop                ecx                                           // 0x006fb3b3    59
                         ret                                                              // 0x006fb3b4    c3
_jmp_addr_0x006fb3b5:    test               byte ptr [esi + 0x25], 0x04                   // 0x006fb3b5    f6462504
                         {disp8} je         _jmp_addr_0x006fb3da                          // 0x006fb3b9    741f
                         push               0x1                                           // 0x006fb3bb    6a01
                         push               edi                                           // 0x006fb3bd    57
                         push               esi                                           // 0x006fb3be    56
                         call               _jmp_addr_0x0070d540                          // 0x006fb3bf    e87c210100
                         add                esp, 0x0c                                     // 0x006fb3c4    83c40c
                         test               byte ptr [esi + 0x25], 0x04                   // 0x006fb3c7    f6462504
                         {disp8} je         _jmp_addr_0x006fb3da                          // 0x006fb3cb    740d
                         push               0x00c0d7c8                                    // 0x006fb3cd    68c8d7c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006fb3d2    e8d9aeffff
                         add                esp, 0x04                                     // 0x006fb3d7    83c404
_jmp_addr_0x006fb3da:    pop                edi                                           // 0x006fb3da    5f
                         pop                esi                                           // 0x006fb3db    5e
                         pop                ecx                                           // 0x006fb3dc    59
                         ret                                                              // 0x006fb3dd    c3
                         nop                                                              // 0x006fb3de    90
                         nop                                                              // 0x006fb3df    90
                         push               ecx                                           // 0x006fb3e0    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fb3e1    8b0d105cd900
                         push               esi                                           // 0x006fb3e7    56
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x006fb3e8    8d442404
                         push               eax                                           // 0x006fb3ec    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006fb3ed    e8ceb7ffff
                         push               eax                                           // 0x006fb3f2    50
                         call               _jmp_addr_0x0070d220                          // 0x006fb3f3    e8281e0100
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fb3f8    8b0d105cd900
                         add                esp, 0x04                                     // 0x006fb3fe    83c404
                         {disp8} lea        edx, dword ptr [esp + 0x04]                   // 0x006fb401    8d542404
                         push               edx                                           // 0x006fb405    52
                         mov.s              esi, eax                                      // 0x006fb406    8bf0
                         call               _jmp_addr_0x006f6bc0                          // 0x006fb408    e8b3b7ffff
                         test               esi, esi                                      // 0x006fb40d    85f6
                         {disp8} jne        _jmp_addr_0x006fb421                          // 0x006fb40f    7510
                         push               0x00c0cd88                                    // 0x006fb411    6888cdc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006fb416    e895aeffff
                         add                esp, 0x04                                     // 0x006fb41b    83c404
                         pop                esi                                           // 0x006fb41e    5e
                         pop                ecx                                           // 0x006fb41f    59
                         ret                                                              // 0x006fb420    c3
_jmp_addr_0x006fb421:    xor.s              ecx, ecx                                      // 0x006fb421    33c9
                         test               eax, eax                                      // 0x006fb423    85c0
                         sete               cl                                            // 0x006fb425    0f94c1
                         xor.s              edx, edx                                      // 0x006fb428    33d2
                         {disp8} mov        dx, word ptr [esi + 0x24]                     // 0x006fb42a    668b5624
                         and                ecx, 0x01                                     // 0x006fb42e    83e101
                         shl                ecx, 0xc                                      // 0x006fb431    c1e10c
                         and                edx, 0x0000efff                               // 0x006fb434    81e2ffef0000
                         or.s               ecx, edx                                      // 0x006fb43a    0bca
                         {disp8} mov        word ptr [esi + 0x24], cx                     // 0x006fb43c    66894e24
                         pop                esi                                           // 0x006fb440    5e
                         pop                ecx                                           // 0x006fb441    59
                         ret                                                              // 0x006fb442    c3
                         nop                                                              // 0x006fb443    90
                         nop                                                              // 0x006fb444    90
                         nop                                                              // 0x006fb445    90
                         nop                                                              // 0x006fb446    90
                         nop                                                              // 0x006fb447    90
                         nop                                                              // 0x006fb448    90
                         nop                                                              // 0x006fb449    90
                         nop                                                              // 0x006fb44a    90
                         nop                                                              // 0x006fb44b    90
                         nop                                                              // 0x006fb44c    90
                         nop                                                              // 0x006fb44d    90
                         nop                                                              // 0x006fb44e    90
                         nop                                                              // 0x006fb44f    90
                         push               ecx                                           // 0x006fb450    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fb451    8b0d105cd900
                         push               esi                                           // 0x006fb457    56
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x006fb458    8d442404
                         push               eax                                           // 0x006fb45c    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006fb45d    e85eb7ffff
                         push               eax                                           // 0x006fb462    50
                         call               _jmp_addr_0x0070d220                          // 0x006fb463    e8b81d0100
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fb468    8b0d105cd900
                         add                esp, 0x04                                     // 0x006fb46e    83c404
                         {disp8} lea        edx, dword ptr [esp + 0x04]                   // 0x006fb471    8d542404
                         push               edx                                           // 0x006fb475    52
                         mov.s              esi, eax                                      // 0x006fb476    8bf0
                         call               _jmp_addr_0x006f6bc0                          // 0x006fb478    e843b7ffff
                         test               esi, esi                                      // 0x006fb47d    85f6
                         {disp8} jne        _jmp_addr_0x006fb491                          // 0x006fb47f    7510
                         push               0x00c0cd88                                    // 0x006fb481    6888cdc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006fb486    e825aeffff
                         add                esp, 0x04                                     // 0x006fb48b    83c404
                         pop                esi                                           // 0x006fb48e    5e
                         pop                ecx                                           // 0x006fb48f    59
                         ret                                                              // 0x006fb490    c3
_jmp_addr_0x006fb491:    xor.s              ecx, ecx                                      // 0x006fb491    33c9
                         test               eax, eax                                      // 0x006fb493    85c0
                         sete               cl                                            // 0x006fb495    0f94c1
                         xor.s              edx, edx                                      // 0x006fb498    33d2
                         {disp8} mov        dx, word ptr [esi + 0x24]                     // 0x006fb49a    668b5624
                         and                ecx, 0x01                                     // 0x006fb49e    83e101
                         shl                ecx, 0xd                                      // 0x006fb4a1    c1e10d
                         and                edx, 0x0000dfff                               // 0x006fb4a4    81e2ffdf0000
                         or.s               ecx, edx                                      // 0x006fb4aa    0bca
                         {disp8} mov        word ptr [esi + 0x24], cx                     // 0x006fb4ac    66894e24
                         pop                esi                                           // 0x006fb4b0    5e
                         pop                ecx                                           // 0x006fb4b1    59
                         ret                                                              // 0x006fb4b2    c3
                         nop                                                              // 0x006fb4b3    90
                         nop                                                              // 0x006fb4b4    90
                         nop                                                              // 0x006fb4b5    90
                         nop                                                              // 0x006fb4b6    90
                         nop                                                              // 0x006fb4b7    90
                         nop                                                              // 0x006fb4b8    90
                         nop                                                              // 0x006fb4b9    90
                         nop                                                              // 0x006fb4ba    90
                         nop                                                              // 0x006fb4bb    90
                         nop                                                              // 0x006fb4bc    90
                         nop                                                              // 0x006fb4bd    90
                         nop                                                              // 0x006fb4be    90
                         nop                                                              // 0x006fb4bf    90
                         push               ecx                                           // 0x006fb4c0    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fb4c1    8b0d105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x00]                   // 0x006fb4c7    8d442400
                         push               eax                                           // 0x006fb4cb    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006fb4cc    e8efb6ffff
                         push               eax                                           // 0x006fb4d1    50
                         call               _jmp_addr_0x0070d220                          // 0x006fb4d2    e8491d0100
                         add                esp, 0x04                                     // 0x006fb4d7    83c404
                         test               eax, eax                                      // 0x006fb4da    85c0
                         {disp8} jne        _jmp_addr_0x006fb4fc                          // 0x006fb4dc    751e
                         push               0x00c0cd88                                    // 0x006fb4de    6888cdc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006fb4e3    e8c8adffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fb4e8    8b0d105cd900
                         add                esp, 0x04                                     // 0x006fb4ee    83c404
                         push               0x6                                           // 0x006fb4f1    6a06
                         push               0x0                                           // 0x006fb4f3    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006fb4f5    e8a6b6ffff
                         pop                ecx                                           // 0x006fb4fa    59
                         ret                                                              // 0x006fb4fb    c3
_jmp_addr_0x006fb4fc:    mov                edx, dword ptr [eax]                          // 0x006fb4fc    8b10
                         push               0x0                                           // 0x006fb4fe    6a00
                         mov.s              ecx, eax                                      // 0x006fb500    8bc8
                         call               dword ptr [edx + 0x298]                       // 0x006fb502    ff9298020000
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fb508    8b0d105cd900
                         push               0x6                                           // 0x006fb50e    6a06
                         push               eax                                           // 0x006fb510    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006fb511    e88ab6ffff
                         pop                ecx                                           // 0x006fb516    59
                         ret                                                              // 0x006fb517    c3
                         nop                                                              // 0x006fb518    90
                         nop                                                              // 0x006fb519    90
                         nop                                                              // 0x006fb51a    90
                         nop                                                              // 0x006fb51b    90
                         nop                                                              // 0x006fb51c    90
                         nop                                                              // 0x006fb51d    90
                         nop                                                              // 0x006fb51e    90
                         nop                                                              // 0x006fb51f    90
                         push               ecx                                           // 0x006fb520    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fb521    8b0d105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x00]                   // 0x006fb527    8d442400
                         push               eax                                           // 0x006fb52b    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006fb52c    e88fb6ffff
                         push               eax                                           // 0x006fb531    50
                         call               _jmp_addr_0x0070d220                          // 0x006fb532    e8e91c0100
                         add                esp, 0x04                                     // 0x006fb537    83c404
                         test               eax, eax                                      // 0x006fb53a    85c0
                         {disp8} jne        _jmp_addr_0x006fb55c                          // 0x006fb53c    751e
                         push               0x00c0cd88                                    // 0x006fb53e    6888cdc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006fb543    e868adffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fb548    8b0d105cd900
                         add                esp, 0x04                                     // 0x006fb54e    83c404
                         push               0x6                                           // 0x006fb551    6a06
                         push               0x0                                           // 0x006fb553    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006fb555    e846b6ffff
                         pop                ecx                                           // 0x006fb55a    59
                         ret                                                              // 0x006fb55b    c3
_jmp_addr_0x006fb55c:    mov                edx, dword ptr [eax]                          // 0x006fb55c    8b10
                         mov.s              ecx, eax                                      // 0x006fb55e    8bc8
                         call               dword ptr [edx + 0x4a4]                       // 0x006fb560    ff92a4040000
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fb566    8b0d105cd900
                         push               0x6                                           // 0x006fb56c    6a06
                         and                eax, 0x000000ff                               // 0x006fb56e    25ff000000
                         push               eax                                           // 0x006fb573    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006fb574    e827b6ffff
                         pop                ecx                                           // 0x006fb579    59
                         ret                                                              // 0x006fb57a    c3
                         nop                                                              // 0x006fb57b    90
                         nop                                                              // 0x006fb57c    90
                         nop                                                              // 0x006fb57d    90
                         nop                                                              // 0x006fb57e    90
                         nop                                                              // 0x006fb57f    90
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x006fb580    8b4c2404
                         mov                eax, dword ptr [ecx]                          // 0x006fb584    8b01
                         call               dword ptr [eax + 0x4a4]                       // 0x006fb586    ff90a4040000
                         test               al, al                                        // 0x006fb58c    84c0
                         {disp8} je         _jmp_addr_0x006fb59f                          // 0x006fb58e    740f
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006fb590    8b0d5c19d000
                         {disp32} mov       eax, dword ptr [ecx + 0x00250090]             // 0x006fb596    8b8190002500
                         {disp8} inc        dword ptr [eax + 0x34]                        // 0x006fb59c    ff4034
_jmp_addr_0x006fb59f:    xor.s              eax, eax                                      // 0x006fb59f    33c0
                         ret                                                              // 0x006fb5a1    c3
                         nop                                                              // 0x006fb5a2    90
                         nop                                                              // 0x006fb5a3    90
                         nop                                                              // 0x006fb5a4    90
                         nop                                                              // 0x006fb5a5    90
                         nop                                                              // 0x006fb5a6    90
                         nop                                                              // 0x006fb5a7    90
                         nop                                                              // 0x006fb5a8    90
                         nop                                                              // 0x006fb5a9    90
                         nop                                                              // 0x006fb5aa    90
                         nop                                                              // 0x006fb5ab    90
                         nop                                                              // 0x006fb5ac    90
                         nop                                                              // 0x006fb5ad    90
                         nop                                                              // 0x006fb5ae    90
                         nop                                                              // 0x006fb5af    90
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fb5b0    8b0d105cd900
                         sub                esp, 0x08                                     // 0x006fb5b6    83ec08
                         push               esi                                           // 0x006fb5b9    56
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x006fb5ba    8d442404
                         push               eax                                           // 0x006fb5be    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006fb5bf    e8fcb5ffff
                         push               eax                                           // 0x006fb5c4    50
                         call               _jmp_addr_0x0070d220                          // 0x006fb5c5    e8561c0100
                         mov.s              esi, eax                                      // 0x006fb5ca    8bf0
                         add                esp, 0x04                                     // 0x006fb5cc    83c404
                         test               esi, esi                                      // 0x006fb5cf    85f6
                         {disp8} jne        _jmp_addr_0x006fb5da                          // 0x006fb5d1    7507
                         push               0x00c0cd88                                    // 0x006fb5d3    6888cdc000
                         {disp8} jmp        _jmp_addr_0x006fb657                          // 0x006fb5d8    eb7d
_jmp_addr_0x006fb5da:    mov                edx, dword ptr [esi]                          // 0x006fb5da    8b16
                         mov.s              ecx, esi                                      // 0x006fb5dc    8bce
                         call               dword ptr [edx + 0x4e8]                       // 0x006fb5de    ff92e8040000
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x006fb5e4    8d0440
                         {disp32} mov       ecx, dword ptr [eax * 0x8 + 0x00c0c73c]       // 0x006fb5e7    8b0cc53cc7c000
                         test               ecx, ecx                                      // 0x006fb5ee    85c9
                         {disp8} je         _jmp_addr_0x006fb652                          // 0x006fb5f0    7460
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006fb5f2    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x00250090]             // 0x006fb5f8    8b9190002500
                         push               0x0                                           // 0x006fb5fe    6a00
                         push               0x0                                           // 0x006fb600    6a00
                         push               0x006fb580                                    // 0x006fb602    6880b56f00
                         push               esi                                           // 0x006fb607    56
                         {disp8} mov        dword ptr [edx + 0x34], 0x00000000            // 0x006fb608    c7423400000000
                         call               dword ptr [eax*8 + data_bytes + 0x24673c]     // 0x006fb60f    ff14c53cc7c000
                         {disp32} mov       eax, dword ptr [_game]                        // 0x006fb616    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x006fb61b    8b8890002500
                         {disp8} mov        edx, dword ptr [ecx + 0x34]                   // 0x006fb621    8b5134
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fb624    8b0d105cd900
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x006fb62a    89542414
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000            // 0x006fb62e    c744241800000000
                         {disp8} fild       qword ptr [esp + 0x14]                        // 0x006fb636    df6c2414
                         add                esp, 0x10                                     // 0x006fb63a    83c410
                         push               0x2                                           // 0x006fb63d    6a02
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x006fb63f    d95c2408
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x006fb643    8b442408
                         push               eax                                           // 0x006fb647    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006fb648    e853b5ffff
                         pop                esi                                           // 0x006fb64d    5e
                         add                esp, 0x08                                     // 0x006fb64e    83c408
                         ret                                                              // 0x006fb651    c3
_jmp_addr_0x006fb652:    push               0x00c0c688                                    // 0x006fb652    6888c6c000
_jmp_addr_0x006fb657:    call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006fb657    e854acffff
                         add                esp, 0x04                                     // 0x006fb65c    83c404
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x006fb65f    c744240400000000
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x006fb667    8b4c2404
                         push               0x2                                           // 0x006fb66b    6a02
                         push               ecx                                           // 0x006fb66d    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fb66e    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006fb674    e827b5ffff
                         pop                esi                                           // 0x006fb679    5e
                         add                esp, 0x08                                     // 0x006fb67a    83c408
                         ret                                                              // 0x006fb67d    c3
                         nop                                                              // 0x006fb67e    90
                         nop                                                              // 0x006fb67f    90
                         {disp32} mov       edx, dword ptr [_game]                        // 0x006fb680    8b155c19d000
                         {disp32} mov       edx, dword ptr [edx + 0x00250090]             // 0x006fb686    8b9290002500
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x006fb68c    8b4c2404
                         {disp8} mov        edx, dword ptr [edx + 0x38]                   // 0x006fb690    8b5238
                         mov                eax, dword ptr [ecx]                          // 0x006fb693    8b01
                         push               edx                                           // 0x006fb695    52
                         call               dword ptr [eax + 0x69c]                       // 0x006fb696    ff909c060000
                         xor.s              eax, eax                                      // 0x006fb69c    33c0
                         ret                                                              // 0x006fb69e    c3
                         nop                                                              // 0x006fb69f    90
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fb6a0    8b0d105cd900
                         sub                esp, 0x08                                     // 0x006fb6a6    83ec08
                         push               esi                                           // 0x006fb6a9    56
                         push               edi                                           // 0x006fb6aa    57
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x006fb6ab    8d442408
                         push               eax                                           // 0x006fb6af    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006fb6b0    e80bb5ffff
                         push               eax                                           // 0x006fb6b5    50
                         call               _jmp_addr_0x0070d220                          // 0x006fb6b6    e8651b0100
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fb6bb    8b0d105cd900
                         add                esp, 0x04                                     // 0x006fb6c1    83c404
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x006fb6c4    8d54240c
                         push               edx                                           // 0x006fb6c8    52
                         mov.s              esi, eax                                      // 0x006fb6c9    8bf0
                         call               _jmp_addr_0x006f6bc0                          // 0x006fb6cb    e8f0b4ffff
                         test               esi, esi                                      // 0x006fb6d0    85f6
                         mov.s              edi, eax                                      // 0x006fb6d2    8bf8
                         {disp8} jne        _jmp_addr_0x006fb6e9                          // 0x006fb6d4    7513
                         push               0x00c0cd88                                    // 0x006fb6d6    6888cdc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006fb6db    e8d0abffff
                         add                esp, 0x04                                     // 0x006fb6e0    83c404
                         pop                edi                                           // 0x006fb6e3    5f
                         pop                esi                                           // 0x006fb6e4    5e
                         add                esp, 0x08                                     // 0x006fb6e5    83c408
                         ret                                                              // 0x006fb6e8    c3
_jmp_addr_0x006fb6e9:    mov                eax, dword ptr [esi]                          // 0x006fb6e9    8b06
                         mov.s              ecx, esi                                      // 0x006fb6eb    8bce
                         call               dword ptr [eax + 0x3f8]                       // 0x006fb6ed    ff90f8030000
                         test               eax, eax                                      // 0x006fb6f3    85c0
                         {disp8} je         _jmp_addr_0x006fb733                          // 0x006fb6f5    743c
                         mov                edx, dword ptr [esi]                          // 0x006fb6f7    8b16
                         mov.s              ecx, esi                                      // 0x006fb6f9    8bce
                         call               dword ptr [edx + 0x4e8]                       // 0x006fb6fb    ff92e8040000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006fb701    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x00250090]             // 0x006fb707    8b9190002500
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x006fb70d    8d0440
                         {disp8} mov        dword ptr [edx + 0x38], edi                   // 0x006fb710    897a38
                         {disp32} mov       eax, dword ptr [eax * 0x8 + 0x00c0c73c]       // 0x006fb713    8b04c53cc7c000
                         test               eax, eax                                      // 0x006fb71a    85c0
                         {disp8} je         _jmp_addr_0x006fb76c                          // 0x006fb71c    744e
                         push               0x0                                           // 0x006fb71e    6a00
                         push               0x0                                           // 0x006fb720    6a00
                         push               0x006fb680                                    // 0x006fb722    6880b66f00
                         push               esi                                           // 0x006fb727    56
                         call               eax                                           // 0x006fb728    ffd0
                         add                esp, 0x10                                     // 0x006fb72a    83c410
                         pop                edi                                           // 0x006fb72d    5f
                         pop                esi                                           // 0x006fb72e    5e
                         add                esp, 0x08                                     // 0x006fb72f    83c408
                         ret                                                              // 0x006fb732    c3
_jmp_addr_0x006fb733:    push               0x0                                           // 0x006fb733    6a00
                         push               0x009c7f50                                    // 0x006fb735    68507f9c00
                         push               0x009c7f30                                    // 0x006fb73a    68307f9c00
                         push               0x0                                           // 0x006fb73f    6a00
                         push               esi                                           // 0x006fb741    56
                         call               ___RTDynamicCast                              // 0x006fb742    e8d2a20c00
                         add                esp, 0x14                                     // 0x006fb747    83c414
                         test               eax, eax                                      // 0x006fb74a    85c0
                         {disp8} jne        _jmp_addr_0x006fb761                          // 0x006fb74c    7513
                         push               0x00c0d7f0                                    // 0x006fb74e    68f0d7c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006fb753    e858abffff
                         add                esp, 0x04                                     // 0x006fb758    83c404
                         pop                edi                                           // 0x006fb75b    5f
                         pop                esi                                           // 0x006fb75c    5e
                         add                esp, 0x08                                     // 0x006fb75d    83c408
                         ret                                                              // 0x006fb760    c3
_jmp_addr_0x006fb761:    mov                edx, dword ptr [eax]                          // 0x006fb761    8b10
                         push               edi                                           // 0x006fb763    57
                         mov.s              ecx, eax                                      // 0x006fb764    8bc8
                         call               dword ptr [edx + 0x69c]                       // 0x006fb766    ff929c060000
_jmp_addr_0x006fb76c:    pop                edi                                           // 0x006fb76c    5f
                         pop                esi                                           // 0x006fb76d    5e
                         add                esp, 0x08                                     // 0x006fb76e    83c408
                         ret                                                              // 0x006fb771    c3
                         nop                                                              // 0x006fb772    90
                         nop                                                              // 0x006fb773    90
                         nop                                                              // 0x006fb774    90
                         nop                                                              // 0x006fb775    90
                         nop                                                              // 0x006fb776    90
                         nop                                                              // 0x006fb777    90
                         nop                                                              // 0x006fb778    90
                         nop                                                              // 0x006fb779    90
                         nop                                                              // 0x006fb77a    90
                         nop                                                              // 0x006fb77b    90
                         nop                                                              // 0x006fb77c    90
                         nop                                                              // 0x006fb77d    90
                         nop                                                              // 0x006fb77e    90
                         nop                                                              // 0x006fb77f    90
                         push               ecx                                           // 0x006fb780    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fb781    8b0d105cd900
                         push               ebx                                           // 0x006fb787    53
                         push               esi                                           // 0x006fb788    56
                         push               edi                                           // 0x006fb789    57
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x006fb78a    8d44240c
                         push               eax                                           // 0x006fb78e    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006fb78f    e82cb4ffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fb794    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x006fb79a    8d54240c
                         push               edx                                           // 0x006fb79e    52
                         mov.s              ebx, eax                                      // 0x006fb79f    8bd8
                         call               _jmp_addr_0x006f6bc0                          // 0x006fb7a1    e81ab4ffff
                         push               eax                                           // 0x006fb7a6    50
                         call               _jmp_addr_0x0070d220                          // 0x006fb7a7    e8741a0100
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fb7ac    8b0d105cd900
                         mov.s              esi, eax                                      // 0x006fb7b2    8bf0
                         add                esp, 0x04                                     // 0x006fb7b4    83c404
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x006fb7b7    8d44240c
                         push               eax                                           // 0x006fb7bb    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006fb7bc    e8ffb3ffff
                         test               esi, esi                                      // 0x006fb7c1    85f6
                         mov.s              edi, eax                                      // 0x006fb7c3    8bf8
                         {disp8} jne        _jmp_addr_0x006fb7d9                          // 0x006fb7c5    7512
                         push               0x00c0cd88                                    // 0x006fb7c7    6888cdc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006fb7cc    e8dfaaffff
                         add                esp, 0x04                                     // 0x006fb7d1    83c404
                         pop                edi                                           // 0x006fb7d4    5f
                         pop                esi                                           // 0x006fb7d5    5e
                         pop                ebx                                           // 0x006fb7d6    5b
                         pop                ecx                                           // 0x006fb7d7    59
                         ret                                                              // 0x006fb7d8    c3
_jmp_addr_0x006fb7d9:    push               0x0                                           // 0x006fb7d9    6a00
                         push               0x009c7f50                                    // 0x006fb7db    68507f9c00
                         push               0x009c7f30                                    // 0x006fb7e0    68307f9c00
                         push               0x0                                           // 0x006fb7e5    6a00
                         push               esi                                           // 0x006fb7e7    56
                         call               ___RTDynamicCast                              // 0x006fb7e8    e82ca20c00
                         mov.s              esi, eax                                      // 0x006fb7ed    8bf0
                         add                esp, 0x14                                     // 0x006fb7ef    83c414
                         test               esi, esi                                      // 0x006fb7f2    85f6
                         {disp8} jne        _jmp_addr_0x006fb808                          // 0x006fb7f4    7512
                         push               0x00c0d7f0                                    // 0x006fb7f6    68f0d7c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006fb7fb    e8b0aaffff
                         add                esp, 0x04                                     // 0x006fb800    83c404
                         pop                edi                                           // 0x006fb803    5f
                         pop                esi                                           // 0x006fb804    5e
                         pop                ebx                                           // 0x006fb805    5b
                         pop                ecx                                           // 0x006fb806    59
                         ret                                                              // 0x006fb807    c3
_jmp_addr_0x006fb808:    test               edi, edi                                      // 0x006fb808    85ff
                         {disp8} je         _jmp_addr_0x006fb819                          // 0x006fb80a    740d
                         push               ebx                                           // 0x006fb80c    53
                         mov.s              ecx, esi                                      // 0x006fb80d    8bce
                         call               _jmp_addr_0x00639a40                          // 0x006fb80f    e82ce2f3ff
                         pop                edi                                           // 0x006fb814    5f
                         pop                esi                                           // 0x006fb815    5e
                         pop                ebx                                           // 0x006fb816    5b
                         pop                ecx                                           // 0x006fb817    59
                         ret                                                              // 0x006fb818    c3
_jmp_addr_0x006fb819:    push               0x0                                           // 0x006fb819    6a00
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                   // 0x006fb81b    8d4e14
                         call               _jmp_addr_0x00605cc0                          // 0x006fb81e    e89da4f0ff
                         push               ecx                                           // 0x006fb823    51
                         mov.s              ecx, esi                                      // 0x006fb824    8bce
                         fstp               dword ptr [esp]                               // 0x006fb826    d91c24
                         call               _jmp_addr_0x00639a60                          // 0x006fb829    e832e2f3ff
                         pop                edi                                           // 0x006fb82e    5f
                         pop                esi                                           // 0x006fb82f    5e
                         pop                ebx                                           // 0x006fb830    5b
                         pop                ecx                                           // 0x006fb831    59
                         ret                                                              // 0x006fb832    c3
                         nop                                                              // 0x006fb833    90
                         nop                                                              // 0x006fb834    90
                         nop                                                              // 0x006fb835    90
                         nop                                                              // 0x006fb836    90
                         nop                                                              // 0x006fb837    90
                         nop                                                              // 0x006fb838    90
                         nop                                                              // 0x006fb839    90
                         nop                                                              // 0x006fb83a    90
                         nop                                                              // 0x006fb83b    90
                         nop                                                              // 0x006fb83c    90
                         nop                                                              // 0x006fb83d    90
                         nop                                                              // 0x006fb83e    90
                         nop                                                              // 0x006fb83f    90
                         push               ecx                                           // 0x006fb840    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fb841    8b0d105cd900
                         push               esi                                           // 0x006fb847    56
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x006fb848    8d442404
                         push               eax                                           // 0x006fb84c    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006fb84d    e86eb3ffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fb852    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x04]                   // 0x006fb858    8d542404
                         push               edx                                           // 0x006fb85c    52
                         mov.s              esi, eax                                      // 0x006fb85d    8bf0
                         call               _jmp_addr_0x006f6bc0                          // 0x006fb85f    e85cb3ffff
                         push               eax                                           // 0x006fb864    50
                         call               _jmp_addr_0x0070d220                          // 0x006fb865    e8b6190100
                         add                esp, 0x04                                     // 0x006fb86a    83c404
                         test               eax, eax                                      // 0x006fb86d    85c0
                         {disp8} jne        _jmp_addr_0x006fb881                          // 0x006fb86f    7510
                         push               0x00c0cd88                                    // 0x006fb871    6888cdc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006fb876    e835aaffff
                         add                esp, 0x04                                     // 0x006fb87b    83c404
                         pop                esi                                           // 0x006fb87e    5e
                         pop                ecx                                           // 0x006fb87f    59
                         ret                                                              // 0x006fb880    c3
_jmp_addr_0x006fb881:    push               0x0                                           // 0x006fb881    6a00
                         push               0x009c7f50                                    // 0x006fb883    68507f9c00
                         push               0x009c7f30                                    // 0x006fb888    68307f9c00
                         push               0x0                                           // 0x006fb88d    6a00
                         push               eax                                           // 0x006fb88f    50
                         call               ___RTDynamicCast                              // 0x006fb890    e884a10c00
                         add                esp, 0x14                                     // 0x006fb895    83c414
                         test               eax, eax                                      // 0x006fb898    85c0
                         {disp8} jne        _jmp_addr_0x006fb8ac                          // 0x006fb89a    7510
                         push               0x00c0d7f0                                    // 0x006fb89c    68f0d7c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006fb8a1    e80aaaffff
                         add                esp, 0x04                                     // 0x006fb8a6    83c404
                         pop                esi                                           // 0x006fb8a9    5e
                         pop                ecx                                           // 0x006fb8aa    59
                         ret                                                              // 0x006fb8ab    c3
_jmp_addr_0x006fb8ac:    push               0x0                                           // 0x006fb8ac    6a00
                         push               esi                                           // 0x006fb8ae    56
                         mov.s              ecx, eax                                      // 0x006fb8af    8bc8
                         call               _jmp_addr_0x00639a60                          // 0x006fb8b1    e8aae1f3ff
                         pop                esi                                           // 0x006fb8b6    5e
                         pop                ecx                                           // 0x006fb8b7    59
                         ret                                                              // 0x006fb8b8    c3
                         nop                                                              // 0x006fb8b9    90
                         nop                                                              // 0x006fb8ba    90
                         nop                                                              // 0x006fb8bb    90
                         nop                                                              // 0x006fb8bc    90
                         nop                                                              // 0x006fb8bd    90
                         nop                                                              // 0x006fb8be    90
                         nop                                                              // 0x006fb8bf    90
                         sub                esp, 0x50                                     // 0x006fb8c0    83ec50
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fb8c3    8b0d105cd900
                         push               esi                                           // 0x006fb8c9    56
                         push               edi                                           // 0x006fb8ca    57
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x006fb8cb    8d442418
                         push               eax                                           // 0x006fb8cf    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006fb8d0    e8ebb2ffff
                         {disp32} mov       esi, dword ptr [_script_dll]                  // 0x006fb8d5    8b35105cd900
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x006fb8db    8d4c2418
                         push               ecx                                           // 0x006fb8df    51
                         mov.s              ecx, esi                                      // 0x006fb8e0    8bce
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x006fb8e2    8944240c
                         call               _jmp_addr_0x006f6bc0                          // 0x006fb8e6    e8d5b2ffff
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x006fb8eb    8d542414
                         push               edx                                           // 0x006fb8ef    52
                         mov.s              ecx, esi                                      // 0x006fb8f0    8bce
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x006fb8f2    8944241c
                         call               _jmp_addr_0x006f6bc0                          // 0x006fb8f6    e8c5b2ffff
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x006fb8fb    89442414
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x006fb8ff    8d442410
                         push               eax                                           // 0x006fb903    50
                         mov.s              ecx, esi                                      // 0x006fb904    8bce
                         call               _jmp_addr_0x006f6bc0                          // 0x006fb906    e8b5b2ffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fb90b    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                   // 0x006fb911    8d54241c
                         push               edx                                           // 0x006fb915    52
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x006fb916    89442414
                         call               _jmp_addr_0x006f6bc0                          // 0x006fb91a    e8a1b2ffff
                         push               eax                                           // 0x006fb91f    50
                         call               _jmp_addr_0x0070d220                          // 0x006fb920    e8fb180100
                         mov.s              esi, eax                                      // 0x006fb925    8bf0
                         add                esp, 0x04                                     // 0x006fb927    83c404
                         test               esi, esi                                      // 0x006fb92a    85f6
                         {disp8} jne        _jmp_addr_0x006fb93b                          // 0x006fb92c    750d
                         push               0x00c0cd88                                    // 0x006fb92e    6888cdc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006fb933    e878a9ffff
                         add                esp, 0x04                                     // 0x006fb938    83c404
_jmp_addr_0x006fb93b:    {disp8} fld        dword ptr [esp + 0x08]                        // 0x006fb93b    d9442408
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x006fb93f    d81d98a38a00
                         fnstsw             ax                                            // 0x006fb945    dfe0
                         test               ah, 0x41                                      // 0x006fb947    f6c441
                         {disp8} je         _jmp_addr_0x006fb959                          // 0x006fb94a    740d
                         push               0x00c0d804                                    // 0x006fb94c    6804d8c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006fb951    e85aa9ffff
                         add                esp, 0x04                                     // 0x006fb956    83c404
_jmp_addr_0x006fb959:    test               esi, esi                                      // 0x006fb959    85f6
                         {disp32} je        _jmp_addr_0x006fbb49                          // 0x006fb95b    0f84e8010000
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x006fb961    d9442408
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x006fb965    d81d98a38a00
                         fnstsw             ax                                            // 0x006fb96b    dfe0
                         test               ah, 0x41                                      // 0x006fb96d    f6c441
                         {disp32} jne       _jmp_addr_0x006fbb49                          // 0x006fb970    0f85d3010000
                         push               0x0                                           // 0x006fb976    6a00
                         push               0x009c7f50                                    // 0x006fb978    68507f9c00
                         push               0x009c7f30                                    // 0x006fb97d    68307f9c00
                         push               0x0                                           // 0x006fb982    6a00
                         push               esi                                           // 0x006fb984    56
                         call               ___RTDynamicCast                              // 0x006fb985    e88fa00c00
                         mov.s              edi, eax                                      // 0x006fb98a    8bf8
                         add                esp, 0x14                                     // 0x006fb98c    83c414
                         test               edi, edi                                      // 0x006fb98f    85ff
                         {disp32} je        _jmp_addr_0x006fbb49                          // 0x006fb991    0f84b2010000
                         {disp8} mov        eax, dword ptr [esi + 0x1c]                   // 0x006fb997    8b461c
                         add                esi, 0x14                                     // 0x006fb99a    83c614
                         mov.s              ecx, esi                                      // 0x006fb99d    8bce
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x006fb99f    8944240c
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x006fb9a3    e8e8761000
                         {disp8} fadd       dword ptr [esp + 0x0c]                        // 0x006fb9a8    d844240c
                         fild               dword ptr [esi]                               // 0x006fb9ac    db06
                         push               0x00000801                                    // 0x006fb9ae    6801080000
                         push               0x00c0d548                                    // 0x006fb9b3    6848d5c000
                         push               0x43480000                                    // 0x006fb9b8    6800004843
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x006fb9bd    d80da4a38a00
                         {disp8} fild       dword ptr [esi + 0x04]                        // 0x006fb9c3    db4604
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x006fb9c6    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x54]                        // 0x006fb9cc    d95c2454
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x006fb9d0    d9442414
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x006fb9d4    d84c2414
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x006fb9d8    d80db4a38a00
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x006fb9de    d95c2418
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x006fb9e2    d90598a38a00
                         {disp8} fst        dword ptr [esp + 0x28]                        // 0x006fb9e8    d9542428
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x006fb9ec    d9442418
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1c7d0]             // 0x006fb9f0    d80dd0578c00
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x006fb9f6    d95c242c
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x006fb9fa    d95c2430
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x006fb9fe    d944241c
                         fsub               st, st(1)                                     // 0x006fba02    d8e1
                         {disp8} fstp       dword ptr [esp + 0x40]                        // 0x006fba04    d95c2440
                         fstp               st(0)                                         // 0x006fba08    ddd8
                         {disp8} fsubr      dword ptr [esp + 0x20]                        // 0x006fba0a    d86c2420
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x006fba0e    d9442424
                         {disp8} fsub       dword ptr [esp + 0x54]                        // 0x006fba12    d8642454
                         {disp8} fstp       dword ptr [esp + 0x48]                        // 0x006fba16    d95c2448
                         {disp8} fld        dword ptr [esp + 0x40]                        // 0x006fba1a    d9442440
                         {disp8} fsub       dword ptr [esp + 0x28]                        // 0x006fba1e    d8642428
                         {disp8} fstp       dword ptr [esp + 0x4c]                        // 0x006fba22    d95c244c
                         {disp8} fsub       dword ptr [esp + 0x2c]                        // 0x006fba26    d864242c
                         {disp8} fld        dword ptr [esp + 0x48]                        // 0x006fba2a    d9442448
                         {disp8} fsub       dword ptr [esp + 0x30]                        // 0x006fba2e    d8642430
                         {disp8} fstp       dword ptr [esp + 0x54]                        // 0x006fba32    d95c2454
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x006fba36    d90590a38a00
                         {disp8} fdiv       dword ptr [esp + 0x14]                        // 0x006fba3c    d8742414
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x006fba40    d95c2414
                         {disp8} fld        dword ptr [esp + 0x4c]                        // 0x006fba44    d944244c
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x006fba48    d84c2414
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x006fba4c    d95c2428
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                   // 0x006fba50    8b4c2428
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x006fba54    d84c2414
                         {disp8} mov        dword ptr [esp + 0x34], ecx                   // 0x006fba58    894c2434
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x006fba5c    d95c242c
                         {disp8} fld        dword ptr [esp + 0x54]                        // 0x006fba60    d9442454
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                   // 0x006fba64    8b54242c
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x006fba68    d84c2414
                         {disp8} mov        dword ptr [esp + 0x38], edx                   // 0x006fba6c    89542438
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x006fba70    d95c2430
                         {disp8} mov        eax, dword ptr [esp + 0x30]                   // 0x006fba74    8b442430
                         {disp8} mov        dword ptr [esp + 0x3c], eax                   // 0x006fba78    8944243c
                         call               ?GameFloatRand@GRand@@SAMM@Z                  // 0x006fba7c    e8af2afeff
                         {disp32} fsub      dword ptr [rdata_bytes + 0x241c]              // 0x006fba81    d8251cb48a00
                         push               0x00000802                                    // 0x006fba87    6802080000
                         push               0x00c0d548                                    // 0x006fba8c    6848d5c000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1bb10]             // 0x006fba91    d80d104b8c00
                         push               0x43480000                                    // 0x006fba97    6800004843
                         {disp8} fstp       dword ptr [esp + 0x64]                        // 0x006fba9c    d95c2464
                         call               ?GameFloatRand@GRand@@SAMM@Z                  // 0x006fbaa0    e88b2afeff
                         {disp32} fsub      dword ptr [rdata_bytes + 0x241c]              // 0x006fbaa5    d8251cb48a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1bb10]             // 0x006fbaab    d80d104b8c00
                         push               0x00000803                                    // 0x006fbab1    6803080000
                         push               0x00c0d548                                    // 0x006fbab6    6848d5c000
                         push               0x43480000                                    // 0x006fbabb    6800004843
                         {disp8} fstp       dword ptr [esp + 0x74]                        // 0x006fbac0    d95c2474
                         call               ?GameFloatRand@GRand@@SAMM@Z                  // 0x006fbac4    e8672afeff
                         {disp8} mov        al, byte ptr [edi + 0x24]                     // 0x006fbac9    8a4724
                         {disp32} fsub      dword ptr [rdata_bytes + 0x241c]              // 0x006fbacc    d8251cb48a00
                         add                esp, 0x24                                     // 0x006fbad2    83c424
                         test               al, 0x40                                      // 0x006fbad5    a840
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1bb10]             // 0x006fbad7    d80d104b8c00
                         {disp8} fstp       dword ptr [esp + 0x54]                        // 0x006fbadd    d95c2454
                         {disp8} je         _jmp_addr_0x006fbb1a                          // 0x006fbae1    7437
                         push               edi                                           // 0x006fbae3    57
                         call               _jmp_addr_0x00646950                          // 0x006fbae4    e867aef4ff
                         add                esp, 0x04                                     // 0x006fbae9    83c404
                         test               eax, eax                                      // 0x006fbaec    85c0
                         {disp8} je         _jmp_addr_0x006fbb49                          // 0x006fbaee    7459
                         {disp8} mov        edx, dword ptr [esp + 0x28]                   // 0x006fbaf0    8b542428
                         {disp32} lea       ecx, dword ptr [eax + 0x00000104]             // 0x006fbaf4    8d8804010000
                         mov                dword ptr [ecx], edx                          // 0x006fbafa    8911
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                   // 0x006fbafc    8b54242c
                         {disp8} mov        dword ptr [ecx + 0x04], edx                   // 0x006fbb00    895104
                         {disp8} mov        edx, dword ptr [esp + 0x30]                   // 0x006fbb03    8b542430
                         pop                edi                                           // 0x006fbb07    5f
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x006fbb08    895108
                         {disp32} mov       dword ptr [eax + 0x00000174], 0x00000000      // 0x006fbb0b    c7807401000000000000
                         pop                esi                                           // 0x006fbb15    5e
                         add                esp, 0x50                                     // 0x006fbb16    83c450
                         ret                                                              // 0x006fbb19    c3
_jmp_addr_0x006fbb1a:    mov                eax, dword ptr [edi]                          // 0x006fbb1a    8b07
                         push               0x0                                           // 0x006fbb1c    6a00
                         push               0x1                                           // 0x006fbb1e    6a01
                         push               0x0                                           // 0x006fbb20    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x58]                   // 0x006fbb22    8d4c2458
                         push               ecx                                           // 0x006fbb26    51
                         {disp8} lea        edx, dword ptr [esp + 0x38]                   // 0x006fbb27    8d542438
                         push               edx                                           // 0x006fbb2b    52
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x006fbb2c    8d4c2430
                         push               ecx                                           // 0x006fbb30    51
                         mov.s              ecx, edi                                      // 0x006fbb31    8bcf
                         call               dword ptr [eax + 0x784]                       // 0x006fbb33    ff9084070000
                         mov                eax, dword ptr [eax]                          // 0x006fbb39    8b00
                         test               eax, eax                                      // 0x006fbb3b    85c0
                         {disp8} je         _jmp_addr_0x006fbb49                          // 0x006fbb3d    740a
                         {disp32} mov       dword ptr [eax + 0x00000174], 0x00000000      // 0x006fbb3f    c7807401000000000000
_jmp_addr_0x006fbb49:    pop                edi                                           // 0x006fbb49    5f
                         pop                esi                                           // 0x006fbb4a    5e
                         add                esp, 0x50                                     // 0x006fbb4b    83c450
                         ret                                                              // 0x006fbb4e    c3
                         nop                                                              // 0x006fbb4f    90
                         sub                esp, 0x08                                     // 0x006fbb50    83ec08
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fbb53    8b0d105cd900
                         push               ebx                                           // 0x006fbb59    53
                         push               ebp                                           // 0x006fbb5a    55
                         push               esi                                           // 0x006fbb5b    56
                         push               edi                                           // 0x006fbb5c    57
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x006fbb5d    8d442410
                         push               eax                                           // 0x006fbb61    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006fbb62    e859b0ffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fbb67    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x006fbb6d    8d542410
                         push               edx                                           // 0x006fbb71    52
                         mov.s              edi, eax                                      // 0x006fbb72    8bf8
                         call               _jmp_addr_0x006f6bc0                          // 0x006fbb74    e847b0ffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fbb79    8b0d105cd900
                         mov.s              ebx, eax                                      // 0x006fbb7f    8bd8
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x006fbb81    8d442410
                         push               eax                                           // 0x006fbb85    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006fbb86    e835b0ffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fbb8b    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x006fbb91    8d542410
                         push               edx                                           // 0x006fbb95    52
                         mov.s              ebp, eax                                      // 0x006fbb96    8be8
                         call               _jmp_addr_0x006f6bc0                          // 0x006fbb98    e823b0ffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fbb9d    8b0d105cd900
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x006fbba3    89442410
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x006fbba7    8d442414
                         push               eax                                           // 0x006fbbab    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006fbbac    e80fb0ffff
                         push               eax                                           // 0x006fbbb1    50
                         call               _jmp_addr_0x0070d220                          // 0x006fbbb2    e869160100
                         mov.s              esi, eax                                      // 0x006fbbb7    8bf0
                         add                esp, 0x04                                     // 0x006fbbb9    83c404
                         test               esi, esi                                      // 0x006fbbbc    85f6
                         {disp8} jne        _jmp_addr_0x006fbbd5                          // 0x006fbbbe    7515
                         push               0x00c0cd88                                    // 0x006fbbc0    6888cdc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006fbbc5    e8e6a6ffff
                         add                esp, 0x04                                     // 0x006fbbca    83c404
                         pop                edi                                           // 0x006fbbcd    5f
                         pop                esi                                           // 0x006fbbce    5e
                         pop                ebp                                           // 0x006fbbcf    5d
                         pop                ebx                                           // 0x006fbbd0    5b
                         add                esp, 0x08                                     // 0x006fbbd1    83c408
                         ret                                                              // 0x006fbbd4    c3
_jmp_addr_0x006fbbd5:    mov                edx, dword ptr [esi]                          // 0x006fbbd5    8b16
                         mov.s              ecx, esi                                      // 0x006fbbd7    8bce
                         call               dword ptr [edx + 0x3c4]                       // 0x006fbbd9    ff92c4030000
                         test               eax, eax                                      // 0x006fbbdf    85c0
                         {disp8} je         _jmp_addr_0x006fbbfc                          // 0x006fbbe1    7419
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x006fbbe3    8b442410
                         push               eax                                           // 0x006fbbe7    50
                         push               edi                                           // 0x006fbbe8    57
                         push               ebx                                           // 0x006fbbe9    53
                         push               0x4                                           // 0x006fbbea    6a04
                         push               ebp                                           // 0x006fbbec    55
                         mov.s              ecx, esi                                      // 0x006fbbed    8bce
                         call               _jmp_addr_0x005ee100                          // 0x006fbbef    e80c25efff
                         pop                edi                                           // 0x006fbbf4    5f
                         pop                esi                                           // 0x006fbbf5    5e
                         pop                ebp                                           // 0x006fbbf6    5d
                         pop                ebx                                           // 0x006fbbf7    5b
                         add                esp, 0x08                                     // 0x006fbbf8    83c408
                         ret                                                              // 0x006fbbfb    c3
_jmp_addr_0x006fbbfc:    push               0x0                                           // 0x006fbbfc    6a00
                         push               0x009c9698                                    // 0x006fbbfe    6898969c00
                         push               0x009c7f30                                    // 0x006fbc03    68307f9c00
                         push               0x0                                           // 0x006fbc08    6a00
                         push               esi                                           // 0x006fbc0a    56
                         call               ___RTDynamicCast                              // 0x006fbc0b    e8099e0c00
                         add                esp, 0x14                                     // 0x006fbc10    83c414
                         test               eax, eax                                      // 0x006fbc13    85c0
                         {disp8} je         _jmp_addr_0x006fbc2e                          // 0x006fbc15    7417
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x006fbc17    8b4c2410
                         push               ecx                                           // 0x006fbc1b    51
                         push               edi                                           // 0x006fbc1c    57
                         push               ebx                                           // 0x006fbc1d    53
                         push               ebp                                           // 0x006fbc1e    55
                         mov.s              ecx, eax                                      // 0x006fbc1f    8bc8
                         call               _jmp_addr_0x006076c0                          // 0x006fbc21    e89abaf0ff
                         pop                edi                                           // 0x006fbc26    5f
                         pop                esi                                           // 0x006fbc27    5e
                         pop                ebp                                           // 0x006fbc28    5d
                         pop                ebx                                           // 0x006fbc29    5b
                         add                esp, 0x08                                     // 0x006fbc2a    83c408
                         ret                                                              // 0x006fbc2d    c3
_jmp_addr_0x006fbc2e:    push               0x00c0d814                                    // 0x006fbc2e    6814d8c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006fbc33    e878a6ffff
                         add                esp, 0x04                                     // 0x006fbc38    83c404
                         pop                edi                                           // 0x006fbc3b    5f
                         pop                esi                                           // 0x006fbc3c    5e
                         pop                ebp                                           // 0x006fbc3d    5d
                         pop                ebx                                           // 0x006fbc3e    5b
                         add                esp, 0x08                                     // 0x006fbc3f    83c408
                         ret                                                              // 0x006fbc42    c3
                         nop                                                              // 0x006fbc43    90
                         nop                                                              // 0x006fbc44    90
                         nop                                                              // 0x006fbc45    90
                         nop                                                              // 0x006fbc46    90
                         nop                                                              // 0x006fbc47    90
                         nop                                                              // 0x006fbc48    90
                         nop                                                              // 0x006fbc49    90
                         nop                                                              // 0x006fbc4a    90
                         nop                                                              // 0x006fbc4b    90
                         nop                                                              // 0x006fbc4c    90
                         nop                                                              // 0x006fbc4d    90
                         nop                                                              // 0x006fbc4e    90
                         nop                                                              // 0x006fbc4f    90
                         push               ecx                                           // 0x006fbc50    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fbc51    8b0d105cd900
                         push               esi                                           // 0x006fbc57    56
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x006fbc58    8d442404
                         push               eax                                           // 0x006fbc5c    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006fbc5d    e85eafffff
                         push               eax                                           // 0x006fbc62    50
                         call               _jmp_addr_0x0070d220                          // 0x006fbc63    e8b8150100
                         mov.s              esi, eax                                      // 0x006fbc68    8bf0
                         add                esp, 0x04                                     // 0x006fbc6a    83c404
                         test               esi, esi                                      // 0x006fbc6d    85f6
                         {disp8} jne        _jmp_addr_0x006fbc9b                          // 0x006fbc6f    752a
                         push               0x00c0cd88                                    // 0x006fbc71    6888cdc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006fbc76    e835a6ffff
                         add                esp, 0x04                                     // 0x006fbc7b    83c404
_jmp_addr_0x006fbc7e:    {disp8} mov        dword ptr [esp + 0x04], 0x3f800000            // 0x006fbc7e    c74424040000803f
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x006fbc86    8b4c2404
                         push               0x2                                           // 0x006fbc8a    6a02
                         push               ecx                                           // 0x006fbc8c    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fbc8d    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006fbc93    e808afffff
                         pop                esi                                           // 0x006fbc98    5e
                         pop                ecx                                           // 0x006fbc99    59
                         ret                                                              // 0x006fbc9a    c3
_jmp_addr_0x006fbc9b:    mov                edx, dword ptr [esi]                          // 0x006fbc9b    8b16
                         mov.s              ecx, esi                                      // 0x006fbc9d    8bce
                         call               dword ptr [edx + 0x3c4]                       // 0x006fbc9f    ff92c4030000
                         test               eax, eax                                      // 0x006fbca5    85c0
                         {disp8} je         _jmp_addr_0x006fbc7e                          // 0x006fbca7    74d5
                         mov.s              ecx, esi                                      // 0x006fbca9    8bce
                         call               _jmp_addr_0x005ee520                          // 0x006fbcab    e87028efff
                         {disp8} fstp       dword ptr [esp + 0x04]                        // 0x006fbcb0    d95c2404
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x006fbcb4    8b442404
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fbcb8    8b0d105cd900
                         push               0x2                                           // 0x006fbcbe    6a02
                         push               eax                                           // 0x006fbcc0    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006fbcc1    e8daaeffff
                         pop                esi                                           // 0x006fbcc6    5e
                         pop                ecx                                           // 0x006fbcc7    59
                         ret                                                              // 0x006fbcc8    c3
                         nop                                                              // 0x006fbcc9    90
                         nop                                                              // 0x006fbcca    90
                         nop                                                              // 0x006fbccb    90
                         nop                                                              // 0x006fbccc    90
                         nop                                                              // 0x006fbccd    90
                         nop                                                              // 0x006fbcce    90
                         nop                                                              // 0x006fbccf    90
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fbcd0    8b0d105cd900
                         sub                esp, 0x00000408                               // 0x006fbcd6    81ec08040000
                         push               ebx                                           // 0x006fbcdc    53
                         push               esi                                           // 0x006fbcdd    56
                         push               edi                                           // 0x006fbcde    57
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x006fbcdf    8d44240c
                         push               eax                                           // 0x006fbce3    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006fbce4    e8d7aeffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fbce9    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x006fbcef    8d54240c
                         push               edx                                           // 0x006fbcf3    52
                         mov.s              ebx, eax                                      // 0x006fbcf4    8bd8
                         call               _jmp_addr_0x006f6bc0                          // 0x006fbcf6    e8c5aeffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fbcfb    8b0d105cd900
                         mov.s              esi, eax                                      // 0x006fbd01    8bf0
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x006fbd03    8d44240c
                         push               eax                                           // 0x006fbd07    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006fbd08    e8b3aeffff
                         push               eax                                           // 0x006fbd0d    50
                         call               _jmp_addr_0x0070d220                          // 0x006fbd0e    e80d150100
                         add                esp, 0x04                                     // 0x006fbd13    83c404
                         test               esi, esi                                      // 0x006fbd16    85f6
                         mov.s              edi, eax                                      // 0x006fbd18    8bf8
                         {disp8} jle        _jmp_addr_0x006fbd21                          // 0x006fbd1a    7e05
                         cmp                esi, 0x2a                                     // 0x006fbd1c    83fe2a
                         {disp8} jl         _jmp_addr_0x006fbd3b                          // 0x006fbd1f    7c1a
_jmp_addr_0x006fbd21:    push               esi                                           // 0x006fbd21    56
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x006fbd22    8d4c2414
                         push               0x00c0cb48                                    // 0x006fbd26    6848cbc000
                         push               ecx                                           // 0x006fbd2b    51
                         call               dword ptr [__imp___0LHSPrintf__QAA_PADZZ@4]   // 0x006fbd2c    ff155c938a00
                         push               eax                                           // 0x006fbd32    50
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006fbd33    e878a5ffff
                         add                esp, 0x10                                     // 0x006fbd38    83c410
_jmp_addr_0x006fbd3b:    test               esi, esi                                      // 0x006fbd3b    85f6
                         {disp8} jle        _jmp_addr_0x006fbd55                          // 0x006fbd3d    7e16
                         cmp                esi, 0x2a                                     // 0x006fbd3f    83fe2a
                         {disp8} jge        _jmp_addr_0x006fbd55                          // 0x006fbd42    7d11
                         test               edi, edi                                      // 0x006fbd44    85ff
                         {disp8} jne        _jmp_addr_0x006fbd6e                          // 0x006fbd46    7526
                         push               0x00c0d428                                    // 0x006fbd48    6828d4c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006fbd4d    e85ea5ffff
                         add                esp, 0x04                                     // 0x006fbd52    83c404
_jmp_addr_0x006fbd55:    push               0x6                                           // 0x006fbd55    6a06
                         push               0x0                                           // 0x006fbd57    6a00
_jmp_addr_0x006fbd59:    {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fbd59    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006fbd5f    e83caeffff
                         pop                edi                                           // 0x006fbd64    5f
                         pop                esi                                           // 0x006fbd65    5e
                         pop                ebx                                           // 0x006fbd66    5b
                         add                esp, 0x00000408                               // 0x006fbd67    81c408040000
                         ret                                                              // 0x006fbd6d    c3
_jmp_addr_0x006fbd6e:    push               ebx                                           // 0x006fbd6e    53
                         push               esi                                           // 0x006fbd6f    56
                         push               edi                                           // 0x006fbd70    57
                         call               _jmp_addr_0x006f6fa0                          // 0x006fbd71    e82ab2ffff
                         add                esp, 0x0c                                     // 0x006fbd76    83c40c
                         push               0x6                                           // 0x006fbd79    6a06
                         push               eax                                           // 0x006fbd7b    50
                         {disp8} jmp        _jmp_addr_0x006fbd59                          // 0x006fbd7c    ebdb
                         nop                                                              // 0x006fbd7e    90
                         nop                                                              // 0x006fbd7f    90
                         {disp32} mov       eax, dword ptr [_game]                        // 0x006fbd80    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x006fbd85    8b8890002500
                         {disp8} mov        eax, dword ptr [ecx + 0x70]                   // 0x006fbd8b    8b4170
                         test               eax, eax                                      // 0x006fbd8e    85c0
                         {disp8} je         _jmp_addr_0x006fbdac                          // 0x006fbd90    741a
                         push               0x0                                           // 0x006fbd92    6a00
                         push               eax                                           // 0x006fbd94    50
                         call               _jmp_addr_0x0070d0f0                          // 0x006fbd95    e856130100
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fbd9a    8b0d105cd900
                         add                esp, 0x08                                     // 0x006fbda0    83c408
                         push               0x4                                           // 0x006fbda3    6a04
                         push               eax                                           // 0x006fbda5    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006fbda6    e8f5adffff
                         ret                                                              // 0x006fbdab    c3
_jmp_addr_0x006fbdac:    {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fbdac    8b0d105cd900
                         push               0x4                                           // 0x006fbdb2    6a04
                         push               0x0                                           // 0x006fbdb4    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006fbdb6    e8e5adffff
                         ret                                                              // 0x006fbdbb    c3
                         nop                                                              // 0x006fbdbc    90
                         nop                                                              // 0x006fbdbd    90
                         nop                                                              // 0x006fbdbe    90
                         nop                                                              // 0x006fbdbf    90
                         {disp32} mov       eax, dword ptr [_game]                        // 0x006fbdc0    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x006fbdc5    8b8890002500
                         {disp8} mov        eax, dword ptr [ecx + 0x74]                   // 0x006fbdcb    8b4174
                         test               eax, eax                                      // 0x006fbdce    85c0
                         {disp8} je         _jmp_addr_0x006fbdec                          // 0x006fbdd0    741a
                         push               0x0                                           // 0x006fbdd2    6a00
                         push               eax                                           // 0x006fbdd4    50
                         call               _jmp_addr_0x0070d0f0                          // 0x006fbdd5    e816130100
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fbdda    8b0d105cd900
                         add                esp, 0x08                                     // 0x006fbde0    83c408
                         push               0x4                                           // 0x006fbde3    6a04
                         push               eax                                           // 0x006fbde5    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006fbde6    e8b5adffff
                         ret                                                              // 0x006fbdeb    c3
_jmp_addr_0x006fbdec:    {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fbdec    8b0d105cd900
                         push               0x4                                           // 0x006fbdf2    6a04
                         push               0x0                                           // 0x006fbdf4    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006fbdf6    e8a5adffff
                         ret                                                              // 0x006fbdfb    c3
                         nop                                                              // 0x006fbdfc    90
                         nop                                                              // 0x006fbdfd    90
                         nop                                                              // 0x006fbdfe    90
                         nop                                                              // 0x006fbdff    90
                         {disp32} mov       eax, dword ptr [_game]                        // 0x006fbe00    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x006fbe05    8b8890002500
                         push               0x0                                           // 0x006fbe0b    6a00
                         push               0x0                                           // 0x006fbe0d    6a00
                         call               _jmp_addr_0x006ec7b0                          // 0x006fbe0f    e89c09ffff
                         ret                                                              // 0x006fbe14    c3
                         nop                                                              // 0x006fbe15    90
                         nop                                                              // 0x006fbe16    90
                         nop                                                              // 0x006fbe17    90
                         nop                                                              // 0x006fbe18    90
                         nop                                                              // 0x006fbe19    90
                         nop                                                              // 0x006fbe1a    90
                         nop                                                              // 0x006fbe1b    90
                         nop                                                              // 0x006fbe1c    90
                         nop                                                              // 0x006fbe1d    90
                         nop                                                              // 0x006fbe1e    90
                         nop                                                              // 0x006fbe1f    90
                         push               ecx                                           // 0x006fbe20    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fbe21    8b0d105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x00]                   // 0x006fbe27    8d442400
                         push               eax                                           // 0x006fbe2b    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006fbe2c    e88fadffff
                         push               eax                                           // 0x006fbe31    50
                         call               _jmp_addr_0x0070d220                          // 0x006fbe32    e8e9130100
                         add                esp, 0x04                                     // 0x006fbe37    83c404
                         test               eax, eax                                      // 0x006fbe3a    85c0
                         {disp8} jne        _jmp_addr_0x006fbe5c                          // 0x006fbe3c    751e
                         push               0x00c0d428                                    // 0x006fbe3e    6828d4c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006fbe43    e868a4ffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fbe48    8b0d105cd900
                         add                esp, 0x04                                     // 0x006fbe4e    83c404
                         push               0x6                                           // 0x006fbe51    6a06
                         push               0x0                                           // 0x006fbe53    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006fbe55    e846adffff
                         pop                ecx                                           // 0x006fbe5a    59
                         ret                                                              // 0x006fbe5b    c3
_jmp_addr_0x006fbe5c:    {disp32} mov       ecx, dword ptr [_game]                        // 0x006fbe5c    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x00250090]             // 0x006fbe62    8b9190002500
                         push               esi                                           // 0x006fbe68    56
                         {disp8} mov        esi, dword ptr [edx + 0x70]                   // 0x006fbe69    8b7270
                         xor.s              ecx, ecx                                      // 0x006fbe6c    33c9
                         cmp.s              esi, eax                                      // 0x006fbe6e    3bf0
                         sete               cl                                            // 0x006fbe70    0f94c1
                         push               0x6                                           // 0x006fbe73    6a06
                         push               ecx                                           // 0x006fbe75    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fbe76    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006fbe7c    e81fadffff
                         pop                esi                                           // 0x006fbe81    5e
                         pop                ecx                                           // 0x006fbe82    59
                         ret                                                              // 0x006fbe83    c3
                         nop                                                              // 0x006fbe84    90
                         nop                                                              // 0x006fbe85    90
                         nop                                                              // 0x006fbe86    90
                         nop                                                              // 0x006fbe87    90
                         nop                                                              // 0x006fbe88    90
                         nop                                                              // 0x006fbe89    90
                         nop                                                              // 0x006fbe8a    90
                         nop                                                              // 0x006fbe8b    90
                         nop                                                              // 0x006fbe8c    90
                         nop                                                              // 0x006fbe8d    90
                         nop                                                              // 0x006fbe8e    90
                         nop                                                              // 0x006fbe8f    90
                         {disp32} mov       eax, dword ptr [_game]                        // 0x006fbe90    a15c19d000
                         push               esi                                           // 0x006fbe95    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x006fbe96    8b742408
                         mov                edx, dword ptr [esi]                          // 0x006fbe9a    8b16
                         push               edi                                           // 0x006fbe9c    57
                         {disp32} mov       edi, dword ptr [eax + 0x00250090]             // 0x006fbe9d    8bb890002500
                         mov.s              ecx, esi                                      // 0x006fbea3    8bce
                         call               dword ptr [edx + 0x130]                       // 0x006fbea5    ff9230010000
                         {disp8} fcomp      dword ptr [edi + 0x20]                        // 0x006fbeab    d85f20
                         fnstsw             ax                                            // 0x006fbeae    dfe0
                         test               ah, 0x01                                      // 0x006fbeb0    f6c401
                         {disp8} je         _jmp_addr_0x006fbece                          // 0x006fbeb3    7419
                         mov                eax, dword ptr [esi]                          // 0x006fbeb5    8b06
                         mov.s              ecx, esi                                      // 0x006fbeb7    8bce
                         call               dword ptr [eax + 0x130]                       // 0x006fbeb9    ff9030010000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006fbebf    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x00250090]             // 0x006fbec5    8b9190002500
                         {disp8} fstp       dword ptr [edx + 0x20]                        // 0x006fbecb    d95a20
_jmp_addr_0x006fbece:    pop                edi                                           // 0x006fbece    5f
                         xor.s              eax, eax                                      // 0x006fbecf    33c0
                         pop                esi                                           // 0x006fbed1    5e
                         ret                                                              // 0x006fbed2    c3
                         nop                                                              // 0x006fbed3    90
                         nop                                                              // 0x006fbed4    90
                         nop                                                              // 0x006fbed5    90
                         nop                                                              // 0x006fbed6    90
                         nop                                                              // 0x006fbed7    90
                         nop                                                              // 0x006fbed8    90
                         nop                                                              // 0x006fbed9    90
                         nop                                                              // 0x006fbeda    90
                         nop                                                              // 0x006fbedb    90
                         nop                                                              // 0x006fbedc    90
                         nop                                                              // 0x006fbedd    90
                         nop                                                              // 0x006fbede    90
                         nop                                                              // 0x006fbedf    90
                         push               ecx                                           // 0x006fbee0    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fbee1    8b0d105cd900
                         push               esi                                           // 0x006fbee7    56
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x006fbee8    8d442404
                         push               eax                                           // 0x006fbeec    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006fbeed    e8ceacffff
                         push               eax                                           // 0x006fbef2    50
                         call               _jmp_addr_0x0070d220                          // 0x006fbef3    e828130100
                         mov.s              esi, eax                                      // 0x006fbef8    8bf0
                         add                esp, 0x04                                     // 0x006fbefa    83c404
                         test               esi, esi                                      // 0x006fbefd    85f6
                         {disp8} jne        _jmp_addr_0x006fbf0b                          // 0x006fbeff    750a
                         push               0x00c0d428                                    // 0x006fbf01    6828d4c000
                         {disp32} jmp       _jmp_addr_0x006fbfaa                          // 0x006fbf06    e99f000000
_jmp_addr_0x006fbf0b:    mov                edx, dword ptr [esi]                          // 0x006fbf0b    8b16
                         mov.s              ecx, esi                                      // 0x006fbf0d    8bce
                         call               dword ptr [edx + 0x3f8]                       // 0x006fbf0f    ff92f8030000
                         test               eax, eax                                      // 0x006fbf15    85c0
                         {disp8} jne        _jmp_addr_0x006fbf26                          // 0x006fbf17    750d
                         push               0x00c0d834                                    // 0x006fbf19    6834d8c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006fbf1e    e88da3ffff
                         add                esp, 0x04                                     // 0x006fbf23    83c404
_jmp_addr_0x006fbf26:    mov                eax, dword ptr [esi]                          // 0x006fbf26    8b06
                         mov.s              ecx, esi                                      // 0x006fbf28    8bce
                         call               dword ptr [eax + 0x3f8]                       // 0x006fbf2a    ff90f8030000
                         mov                edx, dword ptr [esi]                          // 0x006fbf30    8b16
                         mov.s              ecx, esi                                      // 0x006fbf32    8bce
                         call               dword ptr [edx + 0x3f8]                       // 0x006fbf34    ff92f8030000
                         test               eax, eax                                      // 0x006fbf3a    85c0
                         {disp8} je         _jmp_addr_0x006fbfb2                          // 0x006fbf3c    7474
                         mov                eax, dword ptr [esi]                          // 0x006fbf3e    8b06
                         mov.s              ecx, esi                                      // 0x006fbf40    8bce
                         call               dword ptr [eax + 0x4e8]                       // 0x006fbf42    ff90e8040000
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x006fbf48    8d0440
                         {disp32} mov       ecx, dword ptr [eax * 0x8 + 0x00c0c73c]       // 0x006fbf4b    8b0cc53cc7c000
                         test               ecx, ecx                                      // 0x006fbf52    85c9
                         {disp8} je         _jmp_addr_0x006fbfa5                          // 0x006fbf54    744f
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006fbf56    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x00250090]             // 0x006fbf5c    8b9190002500
                         {disp32} mov       ecx, dword ptr [rdata_bytes + 0x99210]        // 0x006fbf62    8b0d10229400
                         push               0x0                                           // 0x006fbf68    6a00
                         push               0x0                                           // 0x006fbf6a    6a00
                         push               0x006fbe90                                    // 0x006fbf6c    6890be6f00
                         push               esi                                           // 0x006fbf71    56
                         {disp8} mov        dword ptr [edx + 0x20], ecx                   // 0x006fbf72    894a20
                         call               dword ptr [eax*8 + data_bytes + 0x24673c]     // 0x006fbf75    ff14c53cc7c000
                         {disp32} mov       edx, dword ptr [_game]                        // 0x006fbf7c    8b155c19d000
                         {disp32} mov       eax, dword ptr [edx + 0x00250090]             // 0x006fbf82    8b8290002500
                         {disp8} mov        ecx, dword ptr [eax + 0x20]                   // 0x006fbf88    8b4820
                         add                esp, 0x10                                     // 0x006fbf8b    83c410
                         mov.s              edx, ecx                                      // 0x006fbf8e    8bd1
                         push               0x2                                           // 0x006fbf90    6a02
                         {disp8} mov        dword ptr [esp + 0x08], ecx                   // 0x006fbf92    894c2408
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fbf96    8b0d105cd900
                         push               edx                                           // 0x006fbf9c    52
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006fbf9d    e8feabffff
                         pop                esi                                           // 0x006fbfa2    5e
                         pop                ecx                                           // 0x006fbfa3    59
                         ret                                                              // 0x006fbfa4    c3
_jmp_addr_0x006fbfa5:    push               0x00c0c688                                    // 0x006fbfa5    6888c6c000
_jmp_addr_0x006fbfaa:    call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006fbfaa    e801a3ffff
                         add                esp, 0x04                                     // 0x006fbfaf    83c404
_jmp_addr_0x006fbfb2:    {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fbfb2    8b0d105cd900
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x006fbfb8    c744240400000000
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x006fbfc0    8b442404
                         push               0x2                                           // 0x006fbfc4    6a02
                         push               eax                                           // 0x006fbfc6    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006fbfc7    e8d4abffff
                         pop                esi                                           // 0x006fbfcc    5e
                         pop                ecx                                           // 0x006fbfcd    59
                         ret                                                              // 0x006fbfce    c3
                         nop                                                              // 0x006fbfcf    90
                         {disp32} mov       eax, dword ptr [_game]                        // 0x006fbfd0    a15c19d000
                         {disp32} mov       eax, dword ptr [eax + 0x0025005c]             // 0x006fbfd5    8b805c002500
                         {disp32} mov       ecx, dword ptr [eax + 0x000045f8]             // 0x006fbfdb    8b88f8450000
                         test               ecx, ecx                                      // 0x006fbfe1    85c9
                         {disp8} je         _jmp_addr_0x006fc003                          // 0x006fbfe3    741e
                         {disp32} mov       eax, dword ptr [eax + 0x000045f4]             // 0x006fbfe5    8b80f4450000
                         xor.s              ecx, ecx                                      // 0x006fbfeb    33c9
                         test               eax, eax                                      // 0x006fbfed    85c0
                         setne              cl                                            // 0x006fbfef    0f95c1
                         push               0x6                                           // 0x006fbff2    6a06
                         mov.s              eax, ecx                                      // 0x006fbff4    8bc1
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fbff6    8b0d105cd900
                         push               eax                                           // 0x006fbffc    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006fbffd    e89eabffff
                         ret                                                              // 0x006fc002    c3
_jmp_addr_0x006fc003:    {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fc003    8b0d105cd900
                         xor.s              eax, eax                                      // 0x006fc009    33c0
                         push               0x6                                           // 0x006fc00b    6a06
                         push               eax                                           // 0x006fc00d    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006fc00e    e88dabffff
                         ret                                                              // 0x006fc013    c3
                         nop                                                              // 0x006fc014    90
                         nop                                                              // 0x006fc015    90
                         nop                                                              // 0x006fc016    90
                         nop                                                              // 0x006fc017    90
                         nop                                                              // 0x006fc018    90
                         nop                                                              // 0x006fc019    90
                         nop                                                              // 0x006fc01a    90
                         nop                                                              // 0x006fc01b    90
                         nop                                                              // 0x006fc01c    90
                         nop                                                              // 0x006fc01d    90
                         nop                                                              // 0x006fc01e    90
                         nop                                                              // 0x006fc01f    90
                         push               ecx                                           // 0x006fc020    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fc021    8b0d105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x00]                   // 0x006fc027    8d442400
                         push               eax                                           // 0x006fc02b    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006fc02c    e88fabffff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006fc031    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x0025005c]             // 0x006fc037    8b915c002500
                         {disp32} mov       dword ptr [edx + 0x000045f8], eax             // 0x006fc03d    8982f8450000
                         pop                ecx                                           // 0x006fc043    59
                         ret                                                              // 0x006fc044    c3
                         nop                                                              // 0x006fc045    90
                         nop                                                              // 0x006fc046    90
                         nop                                                              // 0x006fc047    90
                         nop                                                              // 0x006fc048    90
                         nop                                                              // 0x006fc049    90
                         nop                                                              // 0x006fc04a    90
                         nop                                                              // 0x006fc04b    90
                         nop                                                              // 0x006fc04c    90
                         nop                                                              // 0x006fc04d    90
                         nop                                                              // 0x006fc04e    90
                         nop                                                              // 0x006fc04f    90
                         push               ecx                                           // 0x006fc050    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fc051    8b0d105cd900
                         push               esi                                           // 0x006fc057    56
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x006fc058    8d442404
                         push               eax                                           // 0x006fc05c    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006fc05d    e85eabffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fc062    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x04]                   // 0x006fc068    8d542404
                         push               edx                                           // 0x006fc06c    52
                         mov.s              esi, eax                                      // 0x006fc06d    8bf0
                         call               _jmp_addr_0x006f6bc0                          // 0x006fc06f    e84cabffff
                         test               eax, eax                                      // 0x006fc074    85c0
                         push               esi                                           // 0x006fc076    56
                         {disp8} je         _jmp_addr_0x006fc084                          // 0x006fc077    740b
                         call               _jmp_addr_0x0068f450                          // 0x006fc079    e8d233f9ff
                         add                esp, 0x04                                     // 0x006fc07e    83c404
                         pop                esi                                           // 0x006fc081    5e
                         pop                ecx                                           // 0x006fc082    59
                         ret                                                              // 0x006fc083    c3
_jmp_addr_0x006fc084:    call               _jmp_addr_0x0068f4f0                          // 0x006fc084    e86734f9ff
                         add                esp, 0x04                                     // 0x006fc089    83c404
                         pop                esi                                           // 0x006fc08c    5e
                         pop                ecx                                           // 0x006fc08d    59
                         ret                                                              // 0x006fc08e    c3
                         nop                                                              // 0x006fc08f    90
                         sub                esp, 0x14                                     // 0x006fc090    83ec14
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fc093    8b0d105cd900
                         push               esi                                           // 0x006fc099    56
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x006fc09a    8d442408
                         push               eax                                           // 0x006fc09e    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006fc09f    e81cabffff
                         {disp32} mov       esi, dword ptr [_script_dll]                  // 0x006fc0a4    8b35105cd900
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                   // 0x006fc0aa    8d4c2404
                         push               ecx                                           // 0x006fc0ae    51
                         mov.s              ecx, esi                                      // 0x006fc0af    8bce
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x006fc0b1    8944240c
                         call               _jmp_addr_0x006f6bc0                          // 0x006fc0b5    e806abffff
                         mov.s              edx, eax                                      // 0x006fc0ba    8bd0
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x006fc0bc    89442404
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x006fc0c0    8d442404
                         push               eax                                           // 0x006fc0c4    50
                         mov.s              ecx, esi                                      // 0x006fc0c5    8bce
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x006fc0c7    89542418
                         call               _jmp_addr_0x006f6bc0                          // 0x006fc0cb    e8f0aaffff
                         mov.s              ecx, eax                                      // 0x006fc0d0    8bc8
                         {disp8} lea        edx, dword ptr [esp + 0x04]                   // 0x006fc0d2    8d542404
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x006fc0d6    894c2410
                         push               edx                                           // 0x006fc0da    52
                         mov.s              ecx, esi                                      // 0x006fc0db    8bce
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x006fc0dd    89442408
                         call               _jmp_addr_0x006f6bc0                          // 0x006fc0e1    e8daaaffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fc0e6    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x04]                   // 0x006fc0ec    8d542404
                         push               edx                                           // 0x006fc0f0    52
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x006fc0f1    89442408
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x006fc0f5    89442410
                         call               _jmp_addr_0x006f6bc0                          // 0x006fc0f9    e8c2aaffff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006fc0fe    8b0d5c19d000
                         mov.s              esi, eax                                      // 0x006fc104    8bf0
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x006fc106    e84597e5ff
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x006fc10b    d9442408
                         {disp32} mov       eax, dword ptr [eax + 0x0000039c]             // 0x006fc10f    8b809c030000
                         push               eax                                           // 0x006fc115    50
                         push               ecx                                           // 0x006fc116    51
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x006fc117    8d4c2414
                         fstp               dword ptr [esp]                               // 0x006fc11b    d91c24
                         push               ecx                                           // 0x006fc11e    51
                         push               esi                                           // 0x006fc11f    56
                         call               _jmp_addr_0x0068f510                          // 0x006fc120    e8eb33f9ff
                         add                esp, 0x10                                     // 0x006fc125    83c410
                         pop                esi                                           // 0x006fc128    5e
                         add                esp, 0x14                                     // 0x006fc129    83c414
                         ret                                                              // 0x006fc12c    c3
                         nop                                                              // 0x006fc12d    90
                         nop                                                              // 0x006fc12e    90
                         nop                                                              // 0x006fc12f    90
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006fc130    8b0d105cd900
                         sub                esp, 0x48                                     // 0x006fc136    83ec48
                         push               ebx                                           // 0x006fc139    53
                         push               ebp                                           // 0x006fc13a    55
                         push               esi                                           // 0x006fc13b    56
                         push               edi                                           // 0x006fc13c    57
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x006fc13d    8d442418
                         push               eax                                           // 0x006fc141    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006fc142    e879aaffff
                         dec                eax                                           // 0x006fc147    48
                         cmp                eax, 0x0b                                     // 0x006fc148    83f80b
                         {disp32} ja        _jmp_addr_0x006fc4db                          // 0x006fc14b    0f878a030000
                         jmp                dword ptr [eax*4 + 0x6fc4e4]                  // 0x006fc151    ff2485e4c46f00
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006fc158    8b0d5c19d000
                         xor.s              eax, eax                                      // 0x006fc15e    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x006fc160    8a81595a2000
                         push               0x0                                           // 0x006fc166    6a00
                         push               0x0                                           // 0x006fc168    6a00
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x006fc16a    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x006fc16d    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x006fc170    8d0450
                         shl                eax, 5                                        // 0x006fc173    c1e005
                         {disp32} mov       esi, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x006fc176    8bb408640a0000
                         mov.s              ecx, esi                                      // 0x006fc17d    8bce
                         call               _jmp_addr_0x004c59c0                          // 0x006fc17f    e83c98dcff
                         {disp32} lea       ecx, dword ptr [esi + 0x00001200]             // 0x006fc184    8d8e00120000
                         mov                eax, dword ptr [ecx]                          // 0x006fc18a    8b01
                         {disp32} lea       edx, dword ptr [esi + 0x000011a8]             // 0x006fc18c    8d96a8110000
                         pop                edi                                           // 0x006fc192    5f
                         mov                dword ptr [edx], eax                          // 0x006fc193    8902
                         {disp8} mov        eax, dword ptr [ecx + 0x04]                   // 0x006fc195    8b4104
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x006fc198    8b4908
                         {disp32} mov       dword ptr [esi + 0x000011b4], 0x41400000      // 0x006fc19b    c786b411000000004041
                         pop                esi                                           // 0x006fc1a5    5e
                         {disp8} mov        dword ptr [edx + 0x04], eax                   // 0x006fc1a6    894204
                         pop                ebp                                           // 0x006fc1a9    5d
                         {disp8} mov        dword ptr [edx + 0x08], ecx                   // 0x006fc1aa    894a08
                         pop                ebx                                           // 0x006fc1ad    5b
                         add                esp, 0x48                                     // 0x006fc1ae    83c448
                         ret                                                              // 0x006fc1b1    c3
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006fc1b2    8b0d5c19d000
                         xor.s              eax, eax                                      // 0x006fc1b8    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x006fc1ba    8a81595a2000
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x006fc1c0    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x006fc1c3    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x006fc1c6    8d0450
                         shl                eax, 5                                        // 0x006fc1c9    c1e005
                         add.s              eax, ecx                                      // 0x006fc1cc    03c1
                         {disp8} lea        ecx, dword ptr [eax + 0x18]                   // 0x006fc1ce    8d4818
                         test               ecx, ecx                                      // 0x006fc1d1    85c9
                         {disp32} je        _jmp_addr_0x006fc4db                          // 0x006fc1d3    0f8402030000
                         {disp32} mov       eax, dword ptr [eax + 0x00000a64]             // 0x006fc1d9    8b80640a0000
                         test               eax, eax                                      // 0x006fc1df    85c0
                         {disp32} je        _jmp_addr_0x006fc4db                          // 0x006fc1e1    0f84f4020000
                         pop                edi                                           // 0x006fc1e7    5f
                         pop                esi                                           // 0x006fc1e8    5e
                         pop                ebp                                           // 0x006fc1e9    5d
                         {disp32} mov       dword ptr [eax + 0x00001110], 0x00000001      // 0x006fc1ea    c7801011000001000000
                         pop                ebx                                           // 0x006fc1f4    5b
                         add                esp, 0x48                                     // 0x006fc1f5    83c448
                         ret                                                              // 0x006fc1f8    c3
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006fc1f9    8b0d5c19d000
                         xor.s              eax, eax                                      // 0x006fc1ff    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x006fc201    8a81595a2000
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x006fc207    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x006fc20a    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x006fc20d    8d0450
                         shl                eax, 5                                        // 0x006fc210    c1e005
                         add.s              eax, ecx                                      // 0x006fc213    03c1
                         {disp8} lea        ecx, dword ptr [eax + 0x18]                   // 0x006fc215    8d4818
                         test               ecx, ecx                                      // 0x006fc218    85c9
                         {disp32} je        _jmp_addr_0x006fc4db                          // 0x006fc21a    0f84bb020000
                         {disp32} mov       eax, dword ptr [eax + 0x00000a64]             // 0x006fc220    8b80640a0000
                         test               eax, eax                                      // 0x006fc226    85c0
                         {disp32} je        _jmp_addr_0x006fc4db                          // 0x006fc228    0f84ad020000
                         mov                ebp, 0x00000001                               // 0x006fc22e    bd01000000
                         {disp32} mov       dword ptr [eax + 0x00001114], ebp             // 0x006fc233    89a814110000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006fc239    8b0d5c19d000
                         xor.s              eax, eax                                      // 0x006fc23f    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x006fc241    8a81595a2000
                         pop                edi                                           // 0x006fc247    5f
                         pop                esi                                           // 0x006fc248    5e
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x006fc249    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x006fc24c    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x006fc24f    8d0450
                         shl                eax, 5                                        // 0x006fc252    c1e005
                         {disp32} mov       ecx, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x006fc255    8b8c08640a0000
                         {disp32} mov       dword ptr [ecx + 0x0000110c], ebp             // 0x006fc25c    89a90c110000
                         pop                ebp                                           // 0x006fc262    5d
                         pop                ebx                                           // 0x006fc263    5b
                         add                esp, 0x48                                     // 0x006fc264    83c448
                         ret                                                              // 0x006fc267    c3
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006fc268    8b0d5c19d000
                         push               0x4e                                          // 0x006fc26e    6a4e
                         call               _jmp_addr_0x00550dd0                          // 0x006fc270    e85b4be5ff
                         pop                edi                                           // 0x006fc275    5f
                         pop                esi                                           // 0x006fc276    5e
                         pop                ebp                                           // 0x006fc277    5d
                         pop                ebx                                           // 0x006fc278    5b
                         add                esp, 0x48                                     // 0x006fc279    83c448
                         ret                                                              // 0x006fc27c    c3
                         pop                edi                                           // 0x006fc27d    5f
                         pop                esi                                           // 0x006fc27e    5e
                         pop                ebp                                           // 0x006fc27f    5d
                         {disp32} mov       dword ptr [data_bytes + 0x33b9a4], 0x00000001 // 0x006fc280    c705a419d00001000000
                         pop                ebx                                           // 0x006fc28a    5b
                         add                esp, 0x48                                     // 0x006fc28b    83c448
                         ret                                                              // 0x006fc28e    c3
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006fc28f    8b0d5c19d000
                         xor.s              eax, eax                                      // 0x006fc295    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x006fc297    8a81595a2000
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x006fc29d    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x006fc2a0    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x006fc2a3    8d0450
                         shl                eax, 5                                        // 0x006fc2a6    c1e005
                         add.s              eax, ecx                                      // 0x006fc2a9    03c1
                         {disp8} lea        ecx, dword ptr [eax + 0x18]                   // 0x006fc2ab    8d4818
                         test               ecx, ecx                                      // 0x006fc2ae    85c9
                         {disp32} je        _jmp_addr_0x006fc4db                          // 0x006fc2b0    0f8425020000
                         {disp32} mov       eax, dword ptr [eax + 0x00000a64]             // 0x006fc2b6    8b80640a0000
                         test               eax, eax                                      // 0x006fc2bc    85c0
                         {disp32} je        _jmp_addr_0x006fc4db                          // 0x006fc2be    0f8417020000
                         {disp32} mov       edx, dword ptr [eax + 0x00000164]             // 0x006fc2c4    8b9064010000
                         pop                edi                                           // 0x006fc2ca    5f
                         pop                esi                                           // 0x006fc2cb    5e
                         pop                ebp                                           // 0x006fc2cc    5d
                         {disp32} mov       dword ptr [edx + 0x00018c5c], 0x00000000      // 0x006fc2cd    c7825c8c010000000000
                         pop                ebx                                           // 0x006fc2d7    5b
                         add                esp, 0x48                                     // 0x006fc2d8    83c448
                         ret                                                              // 0x006fc2db    c3
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006fc2dc    8b0d5c19d000
                         xor.s              eax, eax                                      // 0x006fc2e2    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x006fc2e4    8a81595a2000
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x006fc2ea    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x006fc2ed    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x006fc2f0    8d0450
                         shl                eax, 5                                        // 0x006fc2f3    c1e005
                         {disp32} mov       ebx, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x006fc2f6    8b9c08640a0000
                         test               ebx, ebx                                      // 0x006fc2fd    85db
                         {disp32} je        _jmp_addr_0x006fc4db                          // 0x006fc2ff    0f84d6010000
                         {disp8} lea        ecx, dword ptr [ebx + 0x14]                   // 0x006fc305    8d4b14
                         mov                edx, dword ptr [ecx]                          // 0x006fc308    8b11
                         {disp8} mov        eax, dword ptr [ecx + 0x04]                   // 0x006fc30a    8b4104
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x006fc30d    8b4908
                         mov                ebp, 0x00000001                               // 0x006fc310    bd01000000
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x006fc315    8954241c
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x006fc319    89442420
                         {disp8} mov        dword ptr [esp + 0x24], ecx                   // 0x006fc31d    894c2424
                         {disp8} mov        dword ptr [esp + 0x18], ebp                   // 0x006fc321    896c2418
                         {disp8} mov        dword ptr [esp + 0x14], ebp                   // 0x006fc325    896c2414
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000051            // 0x006fc329    c744241051000000
_jmp_addr_0x006fc331:    {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x006fc331    8d4c241c
                         call               ?InBounds@MapCoords@@QBEIXZ                   // 0x006fc335    e8867ff0ff
                         test               eax, eax                                      // 0x006fc33a    85c0
                         {disp32} je        _jmp_addr_0x006fc3df                          // 0x006fc33c    0f849d000000
                         push               0x0                                           // 0x006fc342    6a00
                         push               -0x1                                          // 0x006fc344    6aff
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x006fc346    8d4c2424
                         call               @FindType__9MapCoordsCF11OBJECT_TYPEP6Object@16                          // 0x006fc34a    e87182f0ff
                         mov.s              esi, eax                                      // 0x006fc34f    8bf0
                         test               esi, esi                                      // 0x006fc351    85f6
                         {disp32} je        _jmp_addr_0x006fc3df                          // 0x006fc353    0f8486000000
_jmp_addr_0x006fc359:    push               0x0                                           // 0x006fc359    6a00
                         push               0x00c0d850                                    // 0x006fc35b    6850d8c000
                         push               0x009c7f50                                    // 0x006fc360    68507f9c00
                         push               0x0                                           // 0x006fc365    6a00
                         push               esi                                           // 0x006fc367    56
                         call               ___RTDynamicCast                              // 0x006fc368    e8ac960c00
                         mov.s              edi, eax                                      // 0x006fc36d    8bf8
                         add                esp, 0x14                                     // 0x006fc36f    83c414
                         test               edi, edi                                      // 0x006fc372    85ff
                         {disp8} je         _jmp_addr_0x006fc381                          // 0x006fc374    740b
                         mov.s              ecx, edi                                      // 0x006fc376    8bcf
                         call               ?IsDidYouKnow@ScriptHighlight@@QAE_NXZ        // 0x006fc378    e8a3e80000
                         test               eax, eax                                      // 0x006fc37d    85c0
                         {disp8} je         _jmp_addr_0x006fc395                          // 0x006fc37f    7414
_jmp_addr_0x006fc381:    push               esi                                           // 0x006fc381    56
                         push               -0x1                                          // 0x006fc382    6aff
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x006fc384    8d4c2424
                         call               @FindType__9MapCoordsCF11OBJECT_TYPEP6Object@16                          // 0x006fc388    e83382f0ff
                         mov.s              esi, eax                                      // 0x006fc38d    8bf0
                         test               esi, esi                                      // 0x006fc38f    85f6
                         {disp8} jne        _jmp_addr_0x006fc359                          // 0x006fc391    75c6
                         {disp8} jmp        _jmp_addr_0x006fc3df                          // 0x006fc393    eb4a
_jmp_addr_0x006fc395:    {disp32} mov       ecx, dword ptr [ebx + 0x00000164]             // 0x006fc395    8b8b64010000
                         push               edi                                           // 0x006fc39b    57
                         push               ebx                                           // 0x006fc39c    53
                         call               ?AddBeliefAboutObject@CreatureMental@@QAEPAXPAVCreature@@PAVGameThingWithPos@@@Z                          // 0x006fc39d    e82eb8ddff
                         push               0x3f800000                                    // 0x006fc3a2    680000803f
                         push               0x0                                           // 0x006fc3a7    6a00
                         push               eax                                           // 0x006fc3a9    50
                         push               0x0                                           // 0x006fc3aa    6a00
                         push               0x00000141                                    // 0x006fc3ac    6841010000
                         push               0x18                                          // 0x006fc3b1    6a18
                         {disp8} lea        ecx, dword ptr [esp + 0x40]                   // 0x006fc3b3    8d4c2440
                         call               ??0CreaturePlan@@QAE@W4CREATURE_DESIRES@@W4CREATURE_ACTION@@PAVCreatureBelief@@22M@Z                          // 0x006fc3b7    e8744edfff
                         push               ebp                                           // 0x006fc3bc    55
                         push               ebp                                           // 0x006fc3bd    55
                         {disp8} lea        edx, dword ptr [esp + 0x30]                   // 0x006fc3be    8d542430
                         push               edx                                           // 0x006fc3c2    52
                         mov.s              ecx, ebx                                      // 0x006fc3c3    8bcb
                         call               ?ForceActivityAndForceAction@Creature@@QAEXAAVCreaturePlan@@HH@Z                          // 0x006fc3c5    e8e680dcff
                         {disp32} mov       eax, dword ptr [ebx + 0x00000164]             // 0x006fc3ca    8b8364010000
                         {disp8} lea        ecx, dword ptr [esp + 0x28]                   // 0x006fc3d0    8d4c2428
                         {disp32} mov       dword ptr [eax + 0x00001c14], ebp             // 0x006fc3d4    89a8141c0000
                         call               _jmp_addr_0x004f12d0                          // 0x006fc3da    e8f14edfff
_jmp_addr_0x006fc3df:    {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x006fc3df    8d4c2414
                         push               ecx                                           // 0x006fc3e3    51
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                   // 0x006fc3e4    8d54241c
                         push               edx                                           // 0x006fc3e8    52
                         call               ?Spiral@GUtils@@SAPBUJustMapXZ@@AAJ0@Z        // 0x006fc3e9    e8f2130500
                         add                esp, 0x08                                     // 0x006fc3ee    83c408
                         push               eax                                           // 0x006fc3f1    50
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x006fc3f2    8d4c2420
                         call               @__apl__9MapCoordsFRC9JustMapXZ@12            // 0x006fc3f6    e87590f0ff
                         dec                dword ptr [esp + 0x10]                        // 0x006fc3fb    ff4c2410
                         {disp32} jne       _jmp_addr_0x006fc331                          // 0x006fc3ff    0f852cffffff
                         pop                edi                                           // 0x006fc405    5f
                         pop                esi                                           // 0x006fc406    5e
                         pop                ebp                                           // 0x006fc407    5d
                         pop                ebx                                           // 0x006fc408    5b
                         add                esp, 0x48                                     // 0x006fc409    83c448
                         ret                                                              // 0x006fc40c    c3
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006fc40d    8b0d5c19d000
                         xor.s              eax, eax                                      // 0x006fc413    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x006fc415    8a81595a2000
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x006fc41b    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x006fc41e    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x006fc421    8d0450
                         shl                eax, 5                                        // 0x006fc424    c1e005
                         {disp32} mov       eax, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x006fc427    8b8408640a0000
                         test               eax, eax                                      // 0x006fc42e    85c0
                         {disp32} je        _jmp_addr_0x006fc4db                          // 0x006fc430    0f84a5000000
                         pop                edi                                           // 0x006fc436    5f
                         pop                esi                                           // 0x006fc437    5e
                         pop                ebp                                           // 0x006fc438    5d
                         {disp32} mov       dword ptr [eax + 0x00001158], 0x00000001      // 0x006fc439    c7805811000001000000
                         pop                ebx                                           // 0x006fc443    5b
                         add                esp, 0x48                                     // 0x006fc444    83c448
                         ret                                                              // 0x006fc447    c3
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006fc448    8b0d5c19d000
                         xor.s              eax, eax                                      // 0x006fc44e    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x006fc450    8a81595a2000
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x006fc456    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x006fc459    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x006fc45c    8d0450
                         shl                eax, 5                                        // 0x006fc45f    c1e005
                         {disp32} mov       eax, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x006fc462    8b8408640a0000
                         test               eax, eax                                      // 0x006fc469    85c0
                         {disp8} je         _jmp_addr_0x006fc4db                          // 0x006fc46b    746e
                         pop                edi                                           // 0x006fc46d    5f
                         pop                esi                                           // 0x006fc46e    5e
                         pop                ebp                                           // 0x006fc46f    5d
                         {disp32} mov       dword ptr [eax + 0x00001158], 0x00000000      // 0x006fc470    c7805811000000000000
                         pop                ebx                                           // 0x006fc47a    5b
                         add                esp, 0x48                                     // 0x006fc47b    83c448
                         ret                                                              // 0x006fc47e    c3
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006fc47f    8b0d5c19d000
                         xor.s              eax, eax                                      // 0x006fc485    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x006fc487    8a81595a2000
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x006fc48d    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x006fc490    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x006fc493    8d0450
                         shl                eax, 5                                        // 0x006fc496    c1e005
                         {disp32} mov       edi, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x006fc499    8bbc08640a0000
                         test               edi, edi                                      // 0x006fc4a0    85ff
                         {disp8} je         _jmp_addr_0x006fc4db                          // 0x006fc4a2    7437
                         xor.s              esi, esi                                      // 0x006fc4a4    33f6
_jmp_addr_0x006fc4a6:    push               esi                                           // 0x006fc4a6    56
                         mov.s              ecx, edi                                      // 0x006fc4a7    8bcf
                         call               _jmp_addr_0x004ca580                          // 0x006fc4a9    e8d2e0dcff
                         inc                esi                                           // 0x006fc4ae    46
                         cmp                esi, 0x2a                                     // 0x006fc4af    83fe2a
                         .byte              0x72, 0xf2// {disp8} jb _jmp_addr_0x006fc4a6  // 0x006fc4b2    72f2
                         pop                edi                                           // 0x006fc4b4    5f
                         pop                esi                                           // 0x006fc4b5    5e
                         pop                ebp                                           // 0x006fc4b6    5d
                         pop                ebx                                           // 0x006fc4b7    5b
                         add                esp, 0x48                                     // 0x006fc4b8    83c448
                         ret                                                              // 0x006fc4bb    c3
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006fc4bc    8b0d5c19d000
                         mov                esi, 0x00000005                               // 0x006fc4c2    be05000000
                         push               0x0                                           // 0x006fc4c7    6a00
                         push               esi                                           // 0x006fc4c9    56
                         {disp32} mov       dword ptr [data_bytes + 0x226284], esi        // 0x006fc4ca    893584c2be00
                         call               _jmp_addr_0x00553e10                          // 0x006fc4d0    e83b79e5ff
                         {disp32} mov       dword ptr [data_bytes + 0x226284], esi        // 0x006fc4d5    893584c2be00
_jmp_addr_0x006fc4db:    pop                edi                                           // 0x006fc4db    5f
                         pop                esi                                           // 0x006fc4dc    5e
                         pop                ebp                                           // 0x006fc4dd    5d
                         pop                ebx                                           // 0x006fc4de    5b
                         add                esp, 0x48                                     // 0x006fc4df    83c448
                         ret                                                              // 0x006fc4e2    c3

// Snippet: db, [0x006fc4e3, 0x006fc4e4)
.byte 0x90                        // 0x006fc4e3

// Snippet: jmptbl, [0x006fc4e4, 0x006fc514)
.byte 0x58, 0xc1, 0x6f, 0x00      // 0x006fc4e4
.byte 0xb2, 0xc1, 0x6f, 0x00      // 0x006fc4e8
.byte 0xf9, 0xc1, 0x6f, 0x00      // 0x006fc4ec
.byte 0x68, 0xc2, 0x6f, 0x00      // 0x006fc4f0
.byte 0x7d, 0xc2, 0x6f, 0x00      // 0x006fc4f4
.byte 0xdc, 0xc2, 0x6f, 0x00      // 0x006fc4f8
.byte 0x8f, 0xc2, 0x6f, 0x00      // 0x006fc4fc
.byte 0x0d, 0xc4, 0x6f, 0x00      // 0x006fc500
.byte 0x48, 0xc4, 0x6f, 0x00      // 0x006fc504
.byte 0xdb, 0xc4, 0x6f, 0x00      // 0x006fc508
.byte 0x7f, 0xc4, 0x6f, 0x00      // 0x006fc50c
.byte 0xbc, 0xc4, 0x6f, 0x00      // 0x006fc510

// Snippet: db, [0x006fc514, 0x006fc520)
.byte 0x90, 0x90, 0x90, 0x90      // 0x006fc514
.byte 0x90, 0x90, 0x90, 0x90      // 0x006fc518
.byte 0x90, 0x90, 0x90, 0x90      // 0x006fc51c

