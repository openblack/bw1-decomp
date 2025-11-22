.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?__nw@Base@@SAPAXK@Z
.extern _jmp_addr_0x0046af20
.extern ?CreateCreature@Creature@@SAPAV1@ABUMapCoords@@PBVCreatureInfo@@PAVGPlayer@@@Z
.extern _jmp_addr_0x0054ae20
.extern ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z
.extern _jmp_addr_0x00550a80
.extern _jmp_addr_0x00550c20
.extern ?IsMultiplayerGame@GGame@@QBE_NXZ
.extern ?GetVisualTime@GGameInfo@@QAEMXZ
.extern _jmp_addr_0x005575b0
.extern _jmp_addr_0x005575d0
.extern _jmp_addr_0x00557610
.extern @SetVisualTimeCycle__9GGameInfoFfff@20
.extern @SetStartDate__9GGameInfoFlll@20
.extern @SetStartTime__9GGameInfoFlll@20
.extern ??0GameThing@@QAE@XZ
.extern ?Save@GameThingWithPos@@UAEXPAUGameOSFile@@@Z
.extern ?Load@GameThingWithPos@@QAEIAAVGameOSFile@@@Z
.extern ?SetToZero@GameThingWithPos@@QAEXXZ
.extern _jmp_addr_0x005c6570
.extern _jmp_addr_0x005c6590
.extern _jmp_addr_0x005c65b0
.extern _jmp_addr_0x005c65d0
.extern _jmp_addr_0x005c65f0
.extern _jmp_addr_0x005c6610
.extern _jmp_addr_0x005c6630
.extern _jmp_addr_0x005c6650
.extern _jmp_addr_0x005c6670
.extern _jmp_addr_0x005c6690
.extern _jmp_addr_0x005c66c0
.extern _jmp_addr_0x005c66e0
.extern _jmp_addr_0x005c6700
.extern _jmp_addr_0x005c6740
.extern _jmp_addr_0x005c6790
.extern _jmp_addr_0x005c6800
.extern _jmp_addr_0x005c6e20
.extern @Open__10GLandscapeFPc@12
.extern _jmp_addr_0x005e67c0
.extern _RenderLoadingFrame__Fb
.extern _jmp_addr_0x00602fc0
.extern _jmp_addr_0x0063ee10
.extern _jmp_addr_0x006eb220
.extern @LoadBinary__7GScriptFPc@12
.extern _jmp_addr_0x006eb8b0
.extern _jmp_addr_0x006eb950
.extern ?StopHelpScripts@GScript@@QAEXXZ
.extern ?ScriptErrorMessage@GScript@@QAEXPAD@Z
.extern _jmp_addr_0x006f69f0
.extern _jmp_addr_0x006f6a90
.extern ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z
.extern _jmp_addr_0x006f6bc0
.extern ?GetScriptType@ScriptDLL@@QAEPAXK@Z
.extern _jmp_addr_0x0070d220
.extern _jmp_addr_0x00710350
.extern ?LoadMapFeatures@GSetup@@SAXPAD@Z
.extern _jmp_addr_0x007a1400
.extern _jmp_addr_0x007aed24
.extern _jmp_addr_0x007aed2a
.extern  ??3@YAXPAX@Z
.extern ??0LHOSFile@@QAE@XZ
.extern ?Exists@LHOSFile@@SAIPAD@Z
.extern @Read__8LHOSFileFPvUlPUl@20
.extern @Write__8LHOSFileFPvUlPUl@20
.extern _jmp_addr_0x007be340
.extern _atexit
.extern _sprintf
.extern ??2@YAPAXI@Z
.extern _atoi
.extern _isdigit
.extern __unlink
.extern _fprintf
.extern _fopen
.extern _fclose
.extern __chkstk
.extern _fread
.extern _fwrite
.extern _localtime
.extern _time
.extern __alldiv
.extern _fgets
.extern __splitpath
.extern _strtok
.extern _atof
.extern __chmod
.extern __allmul
.extern __allshr
.extern __allshl
.extern __allrem
.extern __mkdir
.extern ___nw__FUl
.extern _jmp_addr_0x00801a70
.extern _jmp_addr_0x008207f0
.extern _jmp_addr_0x0086a110
.extern _jmp_addr_0x0086a160
.extern __filelength
.extern __fileno
.extern __chdir
.extern __strlwr

.globl _jmp_addr_0x007115a0
.globl _jmp_addr_0x00711610
.globl _jmp_addr_0x00711d90
.globl _jmp_addr_0x00711e10
.globl _jmp_addr_0x00711fe0
.globl _jmp_addr_0x00712060
.globl _jmp_addr_0x007120e0
.globl _jmp_addr_0x00712120
.globl _jmp_addr_0x00712160
.globl _jmp_addr_0x007121a0
.globl _jmp_addr_0x007121e0
.globl _jmp_addr_0x00712230
.globl _jmp_addr_0x007122b0
.globl _jmp_addr_0x00712330
.globl _jmp_addr_0x00712370
.globl _jmp_addr_0x007123b0
.globl _jmp_addr_0x007123f0
.globl _jmp_addr_0x00712430
.globl _jmp_addr_0x00712b10
.globl _jmp_addr_0x00712b20
.globl _jmp_addr_0x00712f20
.globl _jmp_addr_0x00712fe0
.globl _jmp_addr_0x00713140
.globl _jmp_addr_0x007132b0
.globl _jmp_addr_0x00713660
.globl _jmp_addr_0x00713710
.globl _jmp_addr_0x007139e0
.globl _jmp_addr_0x00713a30
.globl _jmp_addr_0x00713a80
.globl _jmp_addr_0x00713b30
.globl _jmp_addr_0x00713b70
.globl _jmp_addr_0x00713cc0
.globl _jmp_addr_0x00713e00
.globl _jmp_addr_0x00713fd0
.globl _jmp_addr_0x00714130
.globl _jmp_addr_0x00714270
.globl _jmp_addr_0x00714350
.globl _jmp_addr_0x007143a0
.globl _jmp_addr_0x00714420
.globl _jmp_addr_0x00714490
.globl @ParseConfigFile__8SettingsFPc@12
.globl ?InitialiseToDefaults@Settings@@QAEXXZ

.globl _globl_ct_0x00710da0
.globl _globl_ct_0x00710dd0
.globl _globl_ct_0x00710e00
.globl _globl_ct_0x00711540
.globl _globl_ct_0x00711570
.globl _globl_ct_0x00711860
.globl _globl_ct_0x00711890
.globl _globl_ct_0x00711dc0
.globl _globl_ct_0x00711df0
.globl _globl_ct_0x00712810
.globl _globl_ct_0x00712840
.globl _globl_ct_0x00712860
.globl _globl_ct_0x00712890
.globl _globl_ct_0x007128c0
.globl _globl_ct_0x00714ac0
.globl _globl_ct_0x00714c60
.globl _globl_ct_0x00714c90
.globl _globl_ct_0x00714cc0
.globl _globl_ct_0x00714ce0
.globl ?GetScriptObjectType@ScriptTimer@@UAEIXZ
.globl ?Save@ScriptTimer@@UAEIAAVGameOSFile@@@Z
.globl ?Load@ScriptTimer@@UAEIAAVGameOSFile@@@Z
.globl ??_GSecretCreature@@UAEPAXI@Z

start_0x00710410_0x00715080:
// Snippet: asm, [0x00710410, 0x00715018)
                         push               ecx                                           // 0x00710410    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00710411    8b0d105cd900
                         push               esi                                           // 0x00710417    56
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x00710418    8d442404
                         push               eax                                           // 0x0071041c    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0071041d    e89e67feff
                         push               eax                                           // 0x00710422    50
                         call               _jmp_addr_0x00710350                          // 0x00710423    e828ffffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00710428    8b0d105cd900
                         add                esp, 0x04                                     // 0x0071042e    83c404
                         mov.s              esi, eax                                      // 0x00710431    8bf0
                         call               _jmp_addr_0x006f6a90                          // 0x00710433    e85866feff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00710438    8b0d5c19d000
                         {disp32} mov       ecx, dword ptr [ecx + 0x0025005c]             // 0x0071043e    8b895c002500
                         sub                eax, 0x02                                     // 0x00710444    83e802
                         neg                eax                                           // 0x00710447    f7d8
                         sbb.s              eax, eax                                      // 0x00710449    1bc0
                         inc                eax                                           // 0x0071044b    40
                         push               eax                                           // 0x0071044c    50
                         push               esi                                           // 0x0071044d    56
                         call               _jmp_addr_0x005c6570                          // 0x0071044e    e81d61ebff
                         pop                esi                                           // 0x00710453    5e
                         pop                ecx                                           // 0x00710454    59
                         ret                                                              // 0x00710455    c3
                         nop                                                              // 0x00710456    90
                         nop                                                              // 0x00710457    90
                         nop                                                              // 0x00710458    90
                         nop                                                              // 0x00710459    90
                         nop                                                              // 0x0071045a    90
                         nop                                                              // 0x0071045b    90
                         nop                                                              // 0x0071045c    90
                         nop                                                              // 0x0071045d    90
                         nop                                                              // 0x0071045e    90
                         nop                                                              // 0x0071045f    90
                         push               ecx                                           // 0x00710460    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00710461    8b0d105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x00]                   // 0x00710467    8d442400
                         push               eax                                           // 0x0071046b    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0071046c    e84f67feff
                         push               eax                                           // 0x00710471    50
                         call               _jmp_addr_0x00710350                          // 0x00710472    e8d9feffff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00710477    8b0d5c19d000
                         {disp32} mov       ecx, dword ptr [ecx + 0x0025005c]             // 0x0071047d    8b895c002500
                         add                esp, 0x04                                     // 0x00710483    83c404
                         push               0x1                                           // 0x00710486    6a01
                         push               eax                                           // 0x00710488    50
                         call               _jmp_addr_0x005c6570                          // 0x00710489    e8e260ebff
                         pop                ecx                                           // 0x0071048e    59
                         ret                                                              // 0x0071048f    c3
                         push               ecx                                           // 0x00710490    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00710491    8b0d105cd900
                         push               esi                                           // 0x00710497    56
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x00710498    8d442404
                         push               eax                                           // 0x0071049c    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0071049d    e81e67feff
                         push               eax                                           // 0x007104a2    50
                         call               _jmp_addr_0x00710350                          // 0x007104a3    e8a8feffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x007104a8    8b0d105cd900
                         add                esp, 0x04                                     // 0x007104ae    83c404
                         mov.s              esi, eax                                      // 0x007104b1    8bf0
                         call               _jmp_addr_0x006f6a90                          // 0x007104b3    e8d865feff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x007104b8    8b0d5c19d000
                         {disp32} mov       ecx, dword ptr [ecx + 0x0025005c]             // 0x007104be    8b895c002500
                         sub                eax, 0x02                                     // 0x007104c4    83e802
                         neg                eax                                           // 0x007104c7    f7d8
                         sbb.s              eax, eax                                      // 0x007104c9    1bc0
                         inc                eax                                           // 0x007104cb    40
                         push               eax                                           // 0x007104cc    50
                         push               esi                                           // 0x007104cd    56
                         call               _jmp_addr_0x005c6670                          // 0x007104ce    e89d61ebff
                         pop                esi                                           // 0x007104d3    5e
                         pop                ecx                                           // 0x007104d4    59
                         ret                                                              // 0x007104d5    c3
                         nop                                                              // 0x007104d6    90
                         nop                                                              // 0x007104d7    90
                         nop                                                              // 0x007104d8    90
                         nop                                                              // 0x007104d9    90
                         nop                                                              // 0x007104da    90
                         nop                                                              // 0x007104db    90
                         nop                                                              // 0x007104dc    90
                         nop                                                              // 0x007104dd    90
                         nop                                                              // 0x007104de    90
                         nop                                                              // 0x007104df    90
                         push               ecx                                           // 0x007104e0    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x007104e1    8b0d105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x00]                   // 0x007104e7    8d442400
                         push               eax                                           // 0x007104eb    50
                         call               _jmp_addr_0x006f6bc0                          // 0x007104ec    e8cf66feff
                         push               eax                                           // 0x007104f1    50
                         call               _jmp_addr_0x00710350                          // 0x007104f2    e859feffff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x007104f7    8b0d5c19d000
                         {disp32} mov       ecx, dword ptr [ecx + 0x0025005c]             // 0x007104fd    8b895c002500
                         add                esp, 0x04                                     // 0x00710503    83c404
                         push               0x1                                           // 0x00710506    6a01
                         push               eax                                           // 0x00710508    50
                         call               _jmp_addr_0x005c6670                          // 0x00710509    e86261ebff
                         pop                ecx                                           // 0x0071050e    59
                         ret                                                              // 0x0071050f    c3
                         sub                esp, 0x10                                     // 0x00710510    83ec10
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00710513    8b0d105cd900
                         push               esi                                           // 0x00710519    56
                         push               edi                                           // 0x0071051a    57
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x0071051b    8d442408
                         push               eax                                           // 0x0071051f    50
                         call               _jmp_addr_0x006f6bc0                          // 0x00710520    e89b66feff
                         {disp32} mov       esi, dword ptr [_script_dll]                  // 0x00710525    8b35105cd900
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x0071052b    8d4c2408
                         push               ecx                                           // 0x0071052f    51
                         mov.s              ecx, esi                                      // 0x00710530    8bce
                         mov.s              edi, eax                                      // 0x00710532    8bf8
                         call               _jmp_addr_0x006f6bc0                          // 0x00710534    e88766feff
                         mov.s              edx, eax                                      // 0x00710539    8bd0
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x0071053b    89442408
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x0071053f    8d442408
                         push               eax                                           // 0x00710543    50
                         mov.s              ecx, esi                                      // 0x00710544    8bce
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x00710546    89542418
                         call               _jmp_addr_0x006f6bc0                          // 0x0071054a    e87166feff
                         mov.s              ecx, eax                                      // 0x0071054f    8bc8
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x00710551    8d542408
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x00710555    894c2410
                         push               edx                                           // 0x00710559    52
                         mov.s              ecx, esi                                      // 0x0071055a    8bce
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x0071055c    8944240c
                         call               _jmp_addr_0x006f6bc0                          // 0x00710560    e85b66feff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00710565    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x0071056b    8d542408
                         push               edx                                           // 0x0071056f    52
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x00710570    8944240c
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00710574    89442410
                         call               _jmp_addr_0x006f6bc0                          // 0x00710578    e84366feff
                         push               eax                                           // 0x0071057d    50
                         call               _jmp_addr_0x00710350                          // 0x0071057e    e8cdfdffff
                         {disp32} mov       edx, dword ptr [_game]                        // 0x00710583    8b155c19d000
                         add                esp, 0x04                                     // 0x00710589    83c404
                         push               edi                                           // 0x0071058c    57
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0071058d    8d4c2410
                         push               ecx                                           // 0x00710591    51
                         {disp32} mov       ecx, dword ptr [edx + 0x0025005c]             // 0x00710592    8b8a5c002500
                         push               eax                                           // 0x00710598    50
                         call               _jmp_addr_0x005c6590                          // 0x00710599    e8f25febff
                         pop                edi                                           // 0x0071059e    5f
                         pop                esi                                           // 0x0071059f    5e
                         add                esp, 0x10                                     // 0x007105a0    83c410
                         ret                                                              // 0x007105a3    c3
                         nop                                                              // 0x007105a4    90
                         nop                                                              // 0x007105a5    90
                         nop                                                              // 0x007105a6    90
                         nop                                                              // 0x007105a7    90
                         nop                                                              // 0x007105a8    90
                         nop                                                              // 0x007105a9    90
                         nop                                                              // 0x007105aa    90
                         nop                                                              // 0x007105ab    90
                         nop                                                              // 0x007105ac    90
                         nop                                                              // 0x007105ad    90
                         nop                                                              // 0x007105ae    90
                         nop                                                              // 0x007105af    90
                         push               ecx                                           // 0x007105b0    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x007105b1    8b0d105cd900
                         push               esi                                           // 0x007105b7    56
                         push               edi                                           // 0x007105b8    57
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x007105b9    8d442408
                         push               eax                                           // 0x007105bd    50
                         call               _jmp_addr_0x006f6bc0                          // 0x007105be    e8fd65feff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x007105c3    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x007105c9    8d542408
                         push               edx                                           // 0x007105cd    52
                         mov.s              edi, eax                                      // 0x007105ce    8bf8
                         call               _jmp_addr_0x006f6bc0                          // 0x007105d0    e8eb65feff
                         push               eax                                           // 0x007105d5    50
                         call               _jmp_addr_0x0070d220                          // 0x007105d6    e845ccffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x007105db    8b0d105cd900
                         mov.s              esi, eax                                      // 0x007105e1    8bf0
                         add                esp, 0x04                                     // 0x007105e3    83c404
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x007105e6    8d442408
                         push               eax                                           // 0x007105ea    50
                         call               _jmp_addr_0x006f6bc0                          // 0x007105eb    e8d065feff
                         push               eax                                           // 0x007105f0    50
                         call               _jmp_addr_0x00710350                          // 0x007105f1    e85afdffff
                         add                esp, 0x04                                     // 0x007105f6    83c404
                         test               esi, esi                                      // 0x007105f9    85f6
                         {disp8} jne        _jmp_addr_0x0071060e                          // 0x007105fb    7511
                         push               0x00c0d428                                    // 0x007105fd    6828d4c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x00710602    e8a95cfeff
                         add                esp, 0x04                                     // 0x00710607    83c404
                         pop                edi                                           // 0x0071060a    5f
                         pop                esi                                           // 0x0071060b    5e
                         pop                ecx                                           // 0x0071060c    59
                         ret                                                              // 0x0071060d    c3
_jmp_addr_0x0071060e:    {disp32} mov       ecx, dword ptr [_game]                        // 0x0071060e    8b0d5c19d000
                         {disp32} mov       ecx, dword ptr [ecx + 0x0025005c]             // 0x00710614    8b895c002500
                         push               edi                                           // 0x0071061a    57
                         push               esi                                           // 0x0071061b    56
                         push               eax                                           // 0x0071061c    50
                         call               _jmp_addr_0x005c6650                          // 0x0071061d    e82e60ebff
                         pop                edi                                           // 0x00710622    5f
                         pop                esi                                           // 0x00710623    5e
                         pop                ecx                                           // 0x00710624    59
                         ret                                                              // 0x00710625    c3
                         nop                                                              // 0x00710626    90
                         nop                                                              // 0x00710627    90
                         nop                                                              // 0x00710628    90
                         nop                                                              // 0x00710629    90
                         nop                                                              // 0x0071062a    90
                         nop                                                              // 0x0071062b    90
                         nop                                                              // 0x0071062c    90
                         nop                                                              // 0x0071062d    90
                         nop                                                              // 0x0071062e    90
                         nop                                                              // 0x0071062f    90
                         push               ecx                                           // 0x00710630    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00710631    8b0d105cd900
                         push               esi                                           // 0x00710637    56
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x00710638    8d442404
                         push               eax                                           // 0x0071063c    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0071063d    e87e65feff
                         push               eax                                           // 0x00710642    50
                         call               _jmp_addr_0x0070d220                          // 0x00710643    e8d8cbffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00710648    8b0d105cd900
                         add                esp, 0x04                                     // 0x0071064e    83c404
                         {disp8} lea        edx, dword ptr [esp + 0x04]                   // 0x00710651    8d542404
                         push               edx                                           // 0x00710655    52
                         mov.s              esi, eax                                      // 0x00710656    8bf0
                         call               _jmp_addr_0x006f6bc0                          // 0x00710658    e86365feff
                         push               eax                                           // 0x0071065d    50
                         call               _jmp_addr_0x00710350                          // 0x0071065e    e8edfcffff
                         add                esp, 0x04                                     // 0x00710663    83c404
                         test               esi, esi                                      // 0x00710666    85f6
                         {disp8} jne        _jmp_addr_0x0071067a                          // 0x00710668    7510
                         push               0x00c0d428                                    // 0x0071066a    6828d4c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0071066f    e83c5cfeff
                         add                esp, 0x04                                     // 0x00710674    83c404
                         pop                esi                                           // 0x00710677    5e
                         pop                ecx                                           // 0x00710678    59
                         ret                                                              // 0x00710679    c3
_jmp_addr_0x0071067a:    push               esi                                           // 0x0071067a    56
                         push               eax                                           // 0x0071067b    50
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0071067c    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x0025005c]             // 0x00710681    8b885c002500
                         call               _jmp_addr_0x005c65f0                          // 0x00710687    e8645febff
                         pop                esi                                           // 0x0071068c    5e
                         pop                ecx                                           // 0x0071068d    59
                         ret                                                              // 0x0071068e    c3
                         nop                                                              // 0x0071068f    90
                         {disp32} mov       eax, dword ptr [_game]                        // 0x00710690    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x0025005c]             // 0x00710695    8b885c002500
                         push               esi                                           // 0x0071069b    56
                         {disp32} mov       esi, dword ptr [ecx + 0x000045cc]             // 0x0071069c    8bb1cc450000
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x007106a2    8b0d105cd900
                         push               edi                                           // 0x007106a8    57
                         call               _jmp_addr_0x006f69f0                          // 0x007106a9    e84263feff
                         test               esi, esi                                      // 0x007106ae    85f6
                         mov.s              edi, eax                                      // 0x007106b0    8bf8
                         {disp32} je        _jmp_addr_0x0071073a                          // 0x007106b2    0f8482000000
                         cmp.s              esi, edi                                      // 0x007106b8    3bf7
                         {disp8} jne        _jmp_addr_0x007106db                          // 0x007106ba    751f
                         push               0x00c20b18                                    // 0x007106bc    68180bc200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x007106c1    e8ea5bfeff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x007106c6    8b0d105cd900
                         add                esp, 0x04                                     // 0x007106cc    83c404
                         push               0x6                                           // 0x007106cf    6a06
                         push               0x1                                           // 0x007106d1    6a01
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x007106d3    e8c864feff
                         pop                edi                                           // 0x007106d8    5f
                         pop                esi                                           // 0x007106d9    5e
                         ret                                                              // 0x007106da    c3
_jmp_addr_0x007106db:    {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x007106db    8b0d105cd900
                         push               esi                                           // 0x007106e1    56
                         call               ?GetScriptType@ScriptDLL@@QAEPAXK@Z           // 0x007106e2    e86965feff
                         cmp                eax, 0x02                                     // 0x007106e7    83f802
                         {disp8} jne        _jmp_addr_0x00710713                          // 0x007106ea    7527
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x007106ec    8b0d105cd900
                         call               _jmp_addr_0x006f6a90                          // 0x007106f2    e89963feff
                         cmp                eax, 0x01                                     // 0x007106f7    83f801
                         {disp8} jne        _jmp_addr_0x00710713                          // 0x007106fa    7517
                         call               ?StopHelpScripts@GScript@@QAEXXZ              // 0x007106fc    e87fc0fdff
                         {disp32} mov       edx, dword ptr [_game]                        // 0x00710701    8b155c19d000
                         {disp32} mov       eax, dword ptr [edx + 0x0025005c]             // 0x00710707    8b825c002500
                         {disp32} mov       esi, dword ptr [eax + 0x000045cc]             // 0x0071070d    8bb0cc450000
_jmp_addr_0x00710713:    test               esi, esi                                      // 0x00710713    85f6
                         {disp8} jne        _jmp_addr_0x00710766                          // 0x00710715    754f
_jmp_addr_0x00710717:    {disp32} mov       eax, dword ptr [_game]                        // 0x00710717    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x0025005c]             // 0x0071071c    8b885c002500
                         push               edi                                           // 0x00710722    57
                         call               _jmp_addr_0x005c6790                          // 0x00710723    e86860ebff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00710728    8b0d105cd900
                         push               0x6                                           // 0x0071072e    6a06
                         push               0x1                                           // 0x00710730    6a01
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x00710732    e86964feff
                         pop                edi                                           // 0x00710737    5f
                         pop                esi                                           // 0x00710738    5e
                         ret                                                              // 0x00710739    c3
_jmp_addr_0x0071073a:    {disp32} mov       ecx, dword ptr [_game]                        // 0x0071073a    8b0d5c19d000
                         {disp32} mov       ecx, dword ptr [ecx + 0x0025005c]             // 0x00710740    8b895c002500
                         push               0x0                                           // 0x00710746    6a00
                         push               0x1                                           // 0x00710748    6a01
                         call               _jmp_addr_0x005c6670                          // 0x0071074a    e8215febff
                         {disp32} mov       edx, dword ptr [_game]                        // 0x0071074f    8b155c19d000
                         {disp32} mov       ecx, dword ptr [edx + 0x0025005c]             // 0x00710755    8b8a5c002500
                         push               0x0                                           // 0x0071075b    6a00
                         push               0x2                                           // 0x0071075d    6a02
                         call               _jmp_addr_0x005c6670                          // 0x0071075f    e80c5febff
                         {disp8} jmp        _jmp_addr_0x00710717                          // 0x00710764    ebb1
_jmp_addr_0x00710766:    {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00710766    8b0d105cd900
                         push               0x6                                           // 0x0071076c    6a06
                         push               0x0                                           // 0x0071076e    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x00710770    e82b64feff
                         pop                edi                                           // 0x00710775    5f
                         pop                esi                                           // 0x00710776    5e
                         ret                                                              // 0x00710777    c3
                         nop                                                              // 0x00710778    90
                         nop                                                              // 0x00710779    90
                         nop                                                              // 0x0071077a    90
                         nop                                                              // 0x0071077b    90
                         nop                                                              // 0x0071077c    90
                         nop                                                              // 0x0071077d    90
                         nop                                                              // 0x0071077e    90
                         nop                                                              // 0x0071077f    90
                         {disp32} mov       eax, dword ptr [_game]                        // 0x00710780    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x0025005c]             // 0x00710785    8b885c002500
                         push               esi                                           // 0x0071078b    56
                         {disp32} mov       esi, dword ptr [ecx + 0x000045cc]             // 0x0071078c    8bb1cc450000
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00710792    8b0d105cd900
                         call               _jmp_addr_0x006f69f0                          // 0x00710798    e85362feff
                         cmp.s              esi, eax                                      // 0x0071079d    3bf0
                         {disp32} jne       _jmp_addr_0x0071082a                          // 0x0071079f    0f8585000000
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x007107a5    8b0d105cd900
                         call               _jmp_addr_0x006f6a90                          // 0x007107ab    e8e062feff
                         {disp32} mov       edx, dword ptr [_game]                        // 0x007107b0    8b155c19d000
                         {disp32} mov       ecx, dword ptr [edx + 0x0025005c]             // 0x007107b6    8b8a5c002500
                         mov.s              esi, eax                                      // 0x007107bc    8bf0
                         sub                esi, 0x02                                     // 0x007107be    83ee02
                         neg                esi                                           // 0x007107c1    f7de
                         sbb.s              esi, esi                                      // 0x007107c3    1bf6
                         inc                esi                                           // 0x007107c5    46
                         push               esi                                           // 0x007107c6    56
                         push               0x1                                           // 0x007107c7    6a01
                         call               _jmp_addr_0x005c6670                          // 0x007107c9    e8a25eebff
                         {disp32} mov       eax, dword ptr [_game]                        // 0x007107ce    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x0025005c]             // 0x007107d3    8b885c002500
                         push               esi                                           // 0x007107d9    56
                         push               0x2                                           // 0x007107da    6a02
                         call               _jmp_addr_0x005c6670                          // 0x007107dc    e88f5eebff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x007107e1    8b0d105cd900
                         call               _jmp_addr_0x006f69f0                          // 0x007107e7    e80462feff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x007107ec    8b0d5c19d000
                         {disp32} mov       ecx, dword ptr [ecx + 0x0025005c]             // 0x007107f2    8b895c002500
                         push               eax                                           // 0x007107f8    50
                         call               _jmp_addr_0x005c6800                          // 0x007107f9    e80260ebff
                         {disp32} mov       edx, dword ptr [_game]                        // 0x007107fe    8b155c19d000
                         {disp32} mov       eax, dword ptr [edx + 0x00250090]             // 0x00710804    8b8290002500
                         {disp32} mov       dword ptr [eax + 0x00000084], 0x00000001      // 0x0071080a    c7808400000001000000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00710814    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x00250090]             // 0x0071081a    8b9190002500
                         {disp32} mov       dword ptr [edx + 0x0000009c], 0x00000000      // 0x00710820    c7829c00000000000000
_jmp_addr_0x0071082a:    pop                esi                                           // 0x0071082a    5e
                         ret                                                              // 0x0071082b    c3
                         nop                                                              // 0x0071082c    90
                         nop                                                              // 0x0071082d    90
                         nop                                                              // 0x0071082e    90
                         nop                                                              // 0x0071082f    90
                         {disp32} mov       eax, dword ptr [_game]                        // 0x00710830    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x0025005c]             // 0x00710835    8b885c002500
                         call               _jmp_addr_0x005c6740                          // 0x0071083b    e8005febff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00710840    8b0d105cd900
                         neg                eax                                           // 0x00710846    f7d8
                         sbb.s              eax, eax                                      // 0x00710848    1bc0
                         inc                eax                                           // 0x0071084a    40
                         push               0x6                                           // 0x0071084b    6a06
                         push               eax                                           // 0x0071084d    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0071084e    e84d63feff
                         ret                                                              // 0x00710853    c3
                         nop                                                              // 0x00710854    90
                         nop                                                              // 0x00710855    90
                         nop                                                              // 0x00710856    90
                         nop                                                              // 0x00710857    90
                         nop                                                              // 0x00710858    90
                         nop                                                              // 0x00710859    90
                         nop                                                              // 0x0071085a    90
                         nop                                                              // 0x0071085b    90
                         nop                                                              // 0x0071085c    90
                         nop                                                              // 0x0071085d    90
                         nop                                                              // 0x0071085e    90
                         nop                                                              // 0x0071085f    90
                         push               ecx                                           // 0x00710860    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00710861    8b0d105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x00]                   // 0x00710867    8d442400
                         push               eax                                           // 0x0071086b    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0071086c    e84f63feff
                         push               eax                                           // 0x00710871    50
                         call               _jmp_addr_0x00710350                          // 0x00710872    e8d9faffff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00710877    8b0d5c19d000
                         {disp32} mov       ecx, dword ptr [ecx + 0x0025005c]             // 0x0071087d    8b895c002500
                         add                esp, 0x04                                     // 0x00710883    83c404
                         push               eax                                           // 0x00710886    50
                         call               _jmp_addr_0x005c6630                          // 0x00710887    e8a45debff
                         pop                ecx                                           // 0x0071088c    59
                         ret                                                              // 0x0071088d    c3
                         nop                                                              // 0x0071088e    90
                         nop                                                              // 0x0071088f    90
                         push               ecx                                           // 0x00710890    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00710891    8b0d105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x00]                   // 0x00710897    8d442400
                         push               eax                                           // 0x0071089b    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0071089c    e81f63feff
                         push               eax                                           // 0x007108a1    50
                         call               _jmp_addr_0x00710350                          // 0x007108a2    e8a9faffff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x007108a7    8b0d5c19d000
                         {disp32} mov       ecx, dword ptr [ecx + 0x0025005c]             // 0x007108ad    8b895c002500
                         add                esp, 0x04                                     // 0x007108b3    83c404
                         push               eax                                           // 0x007108b6    50
                         call               _jmp_addr_0x005c6610                          // 0x007108b7    e8545debff
                         pop                ecx                                           // 0x007108bc    59
                         ret                                                              // 0x007108bd    c3
                         nop                                                              // 0x007108be    90
                         nop                                                              // 0x007108bf    90
                         sub                esp, 0x10                                     // 0x007108c0    83ec10
                         push               esi                                           // 0x007108c3    56
                         {disp32} mov       esi, dword ptr [_script_dll]                  // 0x007108c4    8b35105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x007108ca    8d442404
                         push               eax                                           // 0x007108ce    50
                         mov.s              ecx, esi                                      // 0x007108cf    8bce
                         call               _jmp_addr_0x006f6bc0                          // 0x007108d1    e8ea62feff
                         mov.s              ecx, eax                                      // 0x007108d6    8bc8
                         {disp8} lea        edx, dword ptr [esp + 0x04]                   // 0x007108d8    8d542404
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x007108dc    894c2410
                         push               edx                                           // 0x007108e0    52
                         mov.s              ecx, esi                                      // 0x007108e1    8bce
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x007108e3    89442408
                         call               _jmp_addr_0x006f6bc0                          // 0x007108e7    e8d462feff
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                   // 0x007108ec    8d4c2404
                         push               ecx                                           // 0x007108f0    51
                         mov.s              ecx, esi                                      // 0x007108f1    8bce
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x007108f3    89442408
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x007108f7    89442410
                         call               _jmp_addr_0x006f6bc0                          // 0x007108fb    e8c062feff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00710900    8b0d105cd900
                         mov.s              edx, eax                                      // 0x00710906    8bd0
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x00710908    89442404
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x0071090c    8d442404
                         push               eax                                           // 0x00710910    50
                         {disp8} mov        dword ptr [esp + 0x0c], edx                   // 0x00710911    8954240c
                         call               _jmp_addr_0x006f6bc0                          // 0x00710915    e8a662feff
                         push               eax                                           // 0x0071091a    50
                         call               _jmp_addr_0x00710350                          // 0x0071091b    e830faffff
                         {disp32} mov       edx, dword ptr [_game]                        // 0x00710920    8b155c19d000
                         add                esp, 0x04                                     // 0x00710926    83c404
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x00710929    8d4c2408
                         push               ecx                                           // 0x0071092d    51
                         {disp32} mov       ecx, dword ptr [edx + 0x0025005c]             // 0x0071092e    8b8a5c002500
                         push               eax                                           // 0x00710934    50
                         call               _jmp_addr_0x005c65d0                          // 0x00710935    e8965cebff
                         pop                esi                                           // 0x0071093a    5e
                         add                esp, 0x10                                     // 0x0071093b    83c410
                         ret                                                              // 0x0071093e    c3
                         nop                                                              // 0x0071093f    90
                         sub                esp, 0x0c                                     // 0x00710940    83ec0c
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00710943    8b0d105cd900
                         push               ebx                                           // 0x00710949    53
                         push               ebp                                           // 0x0071094a    55
                         push               esi                                           // 0x0071094b    56
                         push               edi                                           // 0x0071094c    57
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x0071094d    8d442418
                         push               eax                                           // 0x00710951    50
                         call               _jmp_addr_0x006f6bc0                          // 0x00710952    e86962feff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00710957    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x0071095d    8d542418
                         push               edx                                           // 0x00710961    52
                         mov.s              edi, eax                                      // 0x00710962    8bf8
                         call               _jmp_addr_0x006f6bc0                          // 0x00710964    e85762feff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00710969    8b0d105cd900
                         mov.s              esi, eax                                      // 0x0071096f    8bf0
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x00710971    8d442418
                         push               eax                                           // 0x00710975    50
                         call               _jmp_addr_0x006f6bc0                          // 0x00710976    e84562feff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0071097b    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x00710981    8d542418
                         mov.s              ebx, eax                                      // 0x00710985    8bd8
                         push               edx                                           // 0x00710987    52
                         {disp8} mov        dword ptr [esp + 0x14], ebx                   // 0x00710988    895c2414
                         call               _jmp_addr_0x006f6bc0                          // 0x0071098c    e82f62feff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00710991    8b0d105cd900
                         mov.s              ebp, eax                                      // 0x00710997    8be8
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x00710999    8d442418
                         push               eax                                           // 0x0071099d    50
                         {disp8} mov        dword ptr [esp + 0x18], ebp                   // 0x0071099e    896c2418
                         call               _jmp_addr_0x006f6bc0                          // 0x007109a2    e81962feff
                         push               eax                                           // 0x007109a7    50
                         call               _jmp_addr_0x00710350                          // 0x007109a8    e8a3f9ffff
                         add                esp, 0x04                                     // 0x007109ad    83c404
                         test               esi, esi                                      // 0x007109b0    85f6
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x007109b2    89442418
                         {disp8} jl         _jmp_addr_0x007109bd                          // 0x007109b6    7c05
                         cmp                esi, 0x50                                     // 0x007109b8    83fe50
                         {disp8} jle        _jmp_addr_0x007109ca                          // 0x007109bb    7e0d
_jmp_addr_0x007109bd:    push               0x00c20b70                                    // 0x007109bd    68700bc200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x007109c2    e8e958feff
                         add                esp, 0x04                                     // 0x007109c7    83c404
_jmp_addr_0x007109ca:    {disp8} fld        dword ptr [esp + 0x10]                        // 0x007109ca    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x007109ce    d81d98a38a00
                         fnstsw             ax                                            // 0x007109d4    dfe0
                         test               ah, 0x01                                      // 0x007109d6    f6c401
                         {disp8} jne        _jmp_addr_0x007109ec                          // 0x007109d9    7511
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x007109db    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x007109df    d81d90a38a00
                         fnstsw             ax                                            // 0x007109e5    dfe0
                         test               ah, 0x41                                      // 0x007109e7    f6c441
                         {disp8} jne        _jmp_addr_0x007109f9                          // 0x007109ea    750d
_jmp_addr_0x007109ec:    push               0x00c20b64                                    // 0x007109ec    68640bc200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x007109f1    e8ba58feff
                         add                esp, 0x04                                     // 0x007109f6    83c404
_jmp_addr_0x007109f9:    {disp8} fld        dword ptr [esp + 0x14]                        // 0x007109f9    d9442414
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x007109fd    d81d98a38a00
                         fnstsw             ax                                            // 0x00710a03    dfe0
                         test               ah, 0x01                                      // 0x00710a05    f6c401
                         {disp8} jne        _jmp_addr_0x00710a1b                          // 0x00710a08    7511
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00710a0a    d9442414
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x00710a0e    d81d90a38a00
                         fnstsw             ax                                            // 0x00710a14    dfe0
                         test               ah, 0x41                                      // 0x00710a16    f6c441
                         {disp8} jne        _jmp_addr_0x00710a28                          // 0x00710a19    750d
_jmp_addr_0x00710a1b:    push               0x00c20b58                                    // 0x00710a1b    68580bc200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x00710a20    e88b58feff
                         add                esp, 0x04                                     // 0x00710a25    83c404
_jmp_addr_0x00710a28:    {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x00710a28    8b4c2418
                         {disp32} mov       edx, dword ptr [_game]                        // 0x00710a2c    8b155c19d000
                         push               edi                                           // 0x00710a32    57
                         push               esi                                           // 0x00710a33    56
                         push               ebx                                           // 0x00710a34    53
                         push               ebp                                           // 0x00710a35    55
                         push               ecx                                           // 0x00710a36    51
                         {disp32} mov       ecx, dword ptr [edx + 0x0025005c]             // 0x00710a37    8b8a5c002500
                         call               _jmp_addr_0x005c6690                          // 0x00710a3d    e84e5cebff
                         pop                edi                                           // 0x00710a42    5f
                         pop                esi                                           // 0x00710a43    5e
                         pop                ebp                                           // 0x00710a44    5d
                         pop                ebx                                           // 0x00710a45    5b
                         add                esp, 0x0c                                     // 0x00710a46    83c40c
                         ret                                                              // 0x00710a49    c3
                         nop                                                              // 0x00710a4a    90
                         nop                                                              // 0x00710a4b    90
                         nop                                                              // 0x00710a4c    90
                         nop                                                              // 0x00710a4d    90
                         nop                                                              // 0x00710a4e    90
                         nop                                                              // 0x00710a4f    90
                         push               ecx                                           // 0x00710a50    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00710a51    8b0d105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x00]                   // 0x00710a57    8d442400
                         push               eax                                           // 0x00710a5b    50
                         call               _jmp_addr_0x006f6bc0                          // 0x00710a5c    e85f61feff
                         push               eax                                           // 0x00710a61    50
                         call               _jmp_addr_0x00710350                          // 0x00710a62    e8e9f8ffff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00710a67    8b0d5c19d000
                         {disp32} mov       ecx, dword ptr [ecx + 0x0025005c]             // 0x00710a6d    8b895c002500
                         add                esp, 0x04                                     // 0x00710a73    83c404
                         push               eax                                           // 0x00710a76    50
                         call               _jmp_addr_0x005c66c0                          // 0x00710a77    e8445cebff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00710a7c    8b0d105cd900
                         neg                eax                                           // 0x00710a82    f7d8
                         sbb.s              eax, eax                                      // 0x00710a84    1bc0
                         inc                eax                                           // 0x00710a86    40
                         push               0x6                                           // 0x00710a87    6a06
                         push               eax                                           // 0x00710a89    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x00710a8a    e81161feff
                         pop                ecx                                           // 0x00710a8f    59
                         ret                                                              // 0x00710a90    c3
                         nop                                                              // 0x00710a91    90
                         nop                                                              // 0x00710a92    90
                         nop                                                              // 0x00710a93    90
                         nop                                                              // 0x00710a94    90
                         nop                                                              // 0x00710a95    90
                         nop                                                              // 0x00710a96    90
                         nop                                                              // 0x00710a97    90
                         nop                                                              // 0x00710a98    90
                         nop                                                              // 0x00710a99    90
                         nop                                                              // 0x00710a9a    90
                         nop                                                              // 0x00710a9b    90
                         nop                                                              // 0x00710a9c    90
                         nop                                                              // 0x00710a9d    90
                         nop                                                              // 0x00710a9e    90
                         nop                                                              // 0x00710a9f    90
                         sub                esp, 0x0c                                     // 0x00710aa0    83ec0c
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00710aa3    8b0d105cd900
                         push               ebx                                           // 0x00710aa9    53
                         push               esi                                           // 0x00710aaa    56
                         push               edi                                           // 0x00710aab    57
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x00710aac    8d442410
                         push               eax                                           // 0x00710ab0    50
                         call               _jmp_addr_0x006f6bc0                          // 0x00710ab1    e80a61feff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00710ab6    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x00710abc    8d542410
                         mov.s              esi, eax                                      // 0x00710ac0    8bf0
                         push               edx                                           // 0x00710ac2    52
                         {disp8} mov        dword ptr [esp + 0x10], esi                   // 0x00710ac3    89742410
                         call               _jmp_addr_0x006f6bc0                          // 0x00710ac7    e8f460feff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00710acc    8b0d105cd900
                         mov.s              edi, eax                                      // 0x00710ad2    8bf8
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x00710ad4    8d442414
                         push               eax                                           // 0x00710ad8    50
                         {disp8} mov        dword ptr [esp + 0x14], edi                   // 0x00710ad9    897c2414
                         call               _jmp_addr_0x006f6bc0                          // 0x00710add    e8de60feff
                         push               eax                                           // 0x00710ae2    50
                         call               _jmp_addr_0x00710350                          // 0x00710ae3    e868f8ffff
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00710ae8    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00710aec    d81d98a38a00
                         mov.s              ebx, eax                                      // 0x00710af2    8bd8
                         add                esp, 0x04                                     // 0x00710af4    83c404
                         fnstsw             ax                                            // 0x00710af7    dfe0
                         test               ah, 0x01                                      // 0x00710af9    f6c401
                         {disp8} jne        _jmp_addr_0x00710b0f                          // 0x00710afc    7511
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x00710afe    d944240c
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x00710b02    d81d90a38a00
                         fnstsw             ax                                            // 0x00710b08    dfe0
                         test               ah, 0x41                                      // 0x00710b0a    f6c441
                         {disp8} jne        _jmp_addr_0x00710b1c                          // 0x00710b0d    750d
_jmp_addr_0x00710b0f:    push               0x00c20b64                                    // 0x00710b0f    68640bc200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x00710b14    e89757feff
                         add                esp, 0x04                                     // 0x00710b19    83c404
_jmp_addr_0x00710b1c:    {disp8} fld        dword ptr [esp + 0x10]                        // 0x00710b1c    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00710b20    d81d98a38a00
                         fnstsw             ax                                            // 0x00710b26    dfe0
                         test               ah, 0x01                                      // 0x00710b28    f6c401
                         {disp8} jne        _jmp_addr_0x00710b3e                          // 0x00710b2b    7511
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00710b2d    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x00710b31    d81d90a38a00
                         fnstsw             ax                                            // 0x00710b37    dfe0
                         test               ah, 0x41                                      // 0x00710b39    f6c441
                         {disp8} jne        _jmp_addr_0x00710b4b                          // 0x00710b3c    750d
_jmp_addr_0x00710b3e:    push               0x00c20b58                                    // 0x00710b3e    68580bc200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x00710b43    e86857feff
                         add                esp, 0x04                                     // 0x00710b48    83c404
_jmp_addr_0x00710b4b:    {disp32} mov       ecx, dword ptr [_game]                        // 0x00710b4b    8b0d5c19d000
                         {disp32} mov       ecx, dword ptr [ecx + 0x0025005c]             // 0x00710b51    8b895c002500
                         push               esi                                           // 0x00710b57    56
                         push               edi                                           // 0x00710b58    57
                         push               ebx                                           // 0x00710b59    53
                         call               _jmp_addr_0x005c66e0                          // 0x00710b5a    e8815bebff
                         pop                edi                                           // 0x00710b5f    5f
                         pop                esi                                           // 0x00710b60    5e
                         pop                ebx                                           // 0x00710b61    5b
                         add                esp, 0x0c                                     // 0x00710b62    83c40c
                         ret                                                              // 0x00710b65    c3
                         nop                                                              // 0x00710b66    90
                         nop                                                              // 0x00710b67    90
                         nop                                                              // 0x00710b68    90
                         nop                                                              // 0x00710b69    90
                         nop                                                              // 0x00710b6a    90
                         nop                                                              // 0x00710b6b    90
                         nop                                                              // 0x00710b6c    90
                         nop                                                              // 0x00710b6d    90
                         nop                                                              // 0x00710b6e    90
                         nop                                                              // 0x00710b6f    90
                         sub                esp, 0x0c                                     // 0x00710b70    83ec0c
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00710b73    8b0d105cd900
                         push               ebx                                           // 0x00710b79    53
                         push               esi                                           // 0x00710b7a    56
                         push               edi                                           // 0x00710b7b    57
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x00710b7c    8d442410
                         push               eax                                           // 0x00710b80    50
                         call               _jmp_addr_0x006f6bc0                          // 0x00710b81    e83a60feff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00710b86    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x00710b8c    8d542410
                         mov.s              esi, eax                                      // 0x00710b90    8bf0
                         push               edx                                           // 0x00710b92    52
                         {disp8} mov        dword ptr [esp + 0x10], esi                   // 0x00710b93    89742410
                         call               _jmp_addr_0x006f6bc0                          // 0x00710b97    e82460feff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00710b9c    8b0d105cd900
                         mov.s              edi, eax                                      // 0x00710ba2    8bf8
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x00710ba4    8d442414
                         push               eax                                           // 0x00710ba8    50
                         {disp8} mov        dword ptr [esp + 0x14], edi                   // 0x00710ba9    897c2414
                         call               _jmp_addr_0x006f6bc0                          // 0x00710bad    e80e60feff
                         push               eax                                           // 0x00710bb2    50
                         call               _jmp_addr_0x00710350                          // 0x00710bb3    e898f7ffff
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00710bb8    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00710bbc    d81d98a38a00
                         mov.s              ebx, eax                                      // 0x00710bc2    8bd8
                         add                esp, 0x04                                     // 0x00710bc4    83c404
                         fnstsw             ax                                            // 0x00710bc7    dfe0
                         test               ah, 0x01                                      // 0x00710bc9    f6c401
                         {disp8} jne        _jmp_addr_0x00710bdf                          // 0x00710bcc    7511
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x00710bce    d944240c
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x00710bd2    d81d90a38a00
                         fnstsw             ax                                            // 0x00710bd8    dfe0
                         test               ah, 0x41                                      // 0x00710bda    f6c441
                         {disp8} jne        _jmp_addr_0x00710bec                          // 0x00710bdd    750d
_jmp_addr_0x00710bdf:    push               0x00c20b64                                    // 0x00710bdf    68640bc200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x00710be4    e8c756feff
                         add                esp, 0x04                                     // 0x00710be9    83c404
_jmp_addr_0x00710bec:    {disp8} fld        dword ptr [esp + 0x10]                        // 0x00710bec    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00710bf0    d81d98a38a00
                         fnstsw             ax                                            // 0x00710bf6    dfe0
                         test               ah, 0x01                                      // 0x00710bf8    f6c401
                         {disp8} jne        _jmp_addr_0x00710c0e                          // 0x00710bfb    7511
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00710bfd    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x00710c01    d81d90a38a00
                         fnstsw             ax                                            // 0x00710c07    dfe0
                         test               ah, 0x41                                      // 0x00710c09    f6c441
                         {disp8} jne        _jmp_addr_0x00710c1b                          // 0x00710c0c    750d
_jmp_addr_0x00710c0e:    push               0x00c20b58                                    // 0x00710c0e    68580bc200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x00710c13    e89856feff
                         add                esp, 0x04                                     // 0x00710c18    83c404
_jmp_addr_0x00710c1b:    {disp32} mov       ecx, dword ptr [_game]                        // 0x00710c1b    8b0d5c19d000
                         {disp32} mov       ecx, dword ptr [ecx + 0x0025005c]             // 0x00710c21    8b895c002500
                         push               esi                                           // 0x00710c27    56
                         push               edi                                           // 0x00710c28    57
                         push               ebx                                           // 0x00710c29    53
                         call               _jmp_addr_0x005c6700                          // 0x00710c2a    e8d15aebff
                         pop                edi                                           // 0x00710c2f    5f
                         pop                esi                                           // 0x00710c30    5e
                         pop                ebx                                           // 0x00710c31    5b
                         add                esp, 0x0c                                     // 0x00710c32    83c40c
                         ret                                                              // 0x00710c35    c3
                         nop                                                              // 0x00710c36    90
                         nop                                                              // 0x00710c37    90
                         nop                                                              // 0x00710c38    90
                         nop                                                              // 0x00710c39    90
                         nop                                                              // 0x00710c3a    90
                         nop                                                              // 0x00710c3b    90
                         nop                                                              // 0x00710c3c    90
                         nop                                                              // 0x00710c3d    90
                         nop                                                              // 0x00710c3e    90
                         nop                                                              // 0x00710c3f    90
                         push               ecx                                           // 0x00710c40    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00710c41    8b0d105cd900
                         push               esi                                           // 0x00710c47    56
                         push               edi                                           // 0x00710c48    57
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x00710c49    8d442408
                         push               eax                                           // 0x00710c4d    50
                         call               _jmp_addr_0x006f6bc0                          // 0x00710c4e    e86d5ffeff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00710c53    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x00710c59    8d542408
                         push               edx                                           // 0x00710c5d    52
                         mov.s              esi, eax                                      // 0x00710c5e    8bf0
                         call               _jmp_addr_0x006f6bc0                          // 0x00710c60    e85b5ffeff
                         push               eax                                           // 0x00710c65    50
                         call               _jmp_addr_0x00710350                          // 0x00710c66    e8e5f6ffff
                         add                esp, 0x04                                     // 0x00710c6b    83c404
                         cmp                esi, 0x00001b3e                               // 0x00710c6e    81fe3e1b0000
                         mov.s              edi, eax                                      // 0x00710c74    8bf8
                         .byte              0x72, 0x2// {disp8} jb _jmp_addr_0x00710c7a   // 0x00710c76    7202
                         xor.s              esi, esi                                      // 0x00710c78    33f6
_jmp_addr_0x00710c7a:    push               esi                                           // 0x00710c7a    56
                         call               _jmp_addr_0x005c6e20                          // 0x00710c7b    e8a061ebff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00710c80    8b0d105cd900
                         add                esp, 0x04                                     // 0x00710c86    83c404
                         sub.s              eax, edi                                      // 0x00710c89    2bc7
                         neg                eax                                           // 0x00710c8b    f7d8
                         sbb.s              eax, eax                                      // 0x00710c8d    1bc0
                         inc                eax                                           // 0x00710c8f    40
                         push               0x6                                           // 0x00710c90    6a06
                         push               eax                                           // 0x00710c92    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x00710c93    e8085ffeff
                         pop                edi                                           // 0x00710c98    5f
                         pop                esi                                           // 0x00710c99    5e
                         pop                ecx                                           // 0x00710c9a    59
                         ret                                                              // 0x00710c9b    c3
                         nop                                                              // 0x00710c9c    90
                         nop                                                              // 0x00710c9d    90
                         nop                                                              // 0x00710c9e    90
                         nop                                                              // 0x00710c9f    90
                         sub                esp, 0x14                                     // 0x00710ca0    83ec14
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00710ca3    8b0d105cd900
                         push               esi                                           // 0x00710ca9    56
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x00710caa    8d44240c
                         push               eax                                           // 0x00710cae    50
                         call               _jmp_addr_0x006f6bc0                          // 0x00710caf    e80c5ffeff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00710cb4    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x00710cba    8d54240c
                         push               edx                                           // 0x00710cbe    52
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x00710cbf    8944240c
                         call               _jmp_addr_0x006f6bc0                          // 0x00710cc3    e8f85efeff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00710cc8    8b0d105cd900
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x00710cce    89442404
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x00710cd2    8d44240c
                         push               eax                                           // 0x00710cd6    50
                         call               _jmp_addr_0x006f6bc0                          // 0x00710cd7    e8e45efeff
                         push               eax                                           // 0x00710cdc    50
                         call               _jmp_addr_0x00710350                          // 0x00710cdd    e86ef6ffff
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x00710ce2    d944240c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00710ce6    d81d98a38a00
                         mov.s              esi, eax                                      // 0x00710cec    8bf0
                         add                esp, 0x04                                     // 0x00710cee    83c404
                         fnstsw             ax                                            // 0x00710cf1    dfe0
                         test               ah, 0x01                                      // 0x00710cf3    f6c401
                         {disp8} jne        _jmp_addr_0x00710d09                          // 0x00710cf6    7511
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x00710cf8    d9442408
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x00710cfc    d81d90a38a00
                         fnstsw             ax                                            // 0x00710d02    dfe0
                         test               ah, 0x41                                      // 0x00710d04    f6c441
                         {disp8} jne        _jmp_addr_0x00710d16                          // 0x00710d07    750d
_jmp_addr_0x00710d09:    push               0x00c20b64                                    // 0x00710d09    68640bc200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x00710d0e    e89d55feff
                         add                esp, 0x04                                     // 0x00710d13    83c404
_jmp_addr_0x00710d16:    {disp8} fld        dword ptr [esp + 0x04]                        // 0x00710d16    d9442404
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00710d1a    d81d98a38a00
                         fnstsw             ax                                            // 0x00710d20    dfe0
                         test               ah, 0x01                                      // 0x00710d22    f6c401
                         {disp8} jne        _jmp_addr_0x00710d38                          // 0x00710d25    7511
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x00710d27    d9442404
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x00710d2b    d81d90a38a00
                         fnstsw             ax                                            // 0x00710d31    dfe0
                         test               ah, 0x41                                      // 0x00710d33    f6c441
                         {disp8} jne        _jmp_addr_0x00710d45                          // 0x00710d36    750d
_jmp_addr_0x00710d38:    push               0x00c20b58                                    // 0x00710d38    68580bc200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x00710d3d    e86e55feff
                         add                esp, 0x04                                     // 0x00710d42    83c404
_jmp_addr_0x00710d45:    {disp32} mov       ecx, dword ptr [data_bytes + 0x4bf058]        // 0x00710d45    8b0d5850e800
                         and                ecx, 0x0000ffff                               // 0x00710d4b    81e1ffff0000
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                   // 0x00710d51    894c240c
                         {disp8} fild       dword ptr [esp + 0x0c]                        // 0x00710d55    db44240c
                         {disp8} fmul       dword ptr [esp + 0x04]                        // 0x00710d59    d84c2404
                         call               _jmp_addr_0x007a1400                          // 0x00710d5d    e89e060900
                         xor.s              edx, edx                                      // 0x00710d62    33d2
                         {disp32} mov       dx, word ptr [data_bytes + 0x4bf05a]          // 0x00710d64    668b155a50e800
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00710d6b    89442410
                         {disp8} mov        dword ptr [esp + 0x0c], edx                   // 0x00710d6f    8954240c
                         {disp8} fild       dword ptr [esp + 0x0c]                        // 0x00710d73    db44240c
                         {disp8} fmul       dword ptr [esp + 0x08]                        // 0x00710d77    d84c2408
                         call               _jmp_addr_0x007a1400                          // 0x00710d7b    e880060900
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00710d80    8b0d5c19d000
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x00710d86    89442414
                         {disp32} mov       ecx, dword ptr [ecx + 0x0025005c]             // 0x00710d8a    8b895c002500
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x00710d90    8d442410
                         push               eax                                           // 0x00710d94    50
                         push               esi                                           // 0x00710d95    56
                         call               _jmp_addr_0x005c65b0                          // 0x00710d96    e81558ebff
                         pop                esi                                           // 0x00710d9b    5e
                         add                esp, 0x14                                     // 0x00710d9c    83c414
                         ret                                                              // 0x00710d9f    c3
_globl_ct_0x00710da0:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x00710da0    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x00710da6    b001
                         test               al, cl                                        // 0x00710da8    84c8
                         {disp8} jne        _jmp_addr_0x00710db4                          // 0x00710daa    7508
                         or.s               cl, al                                        // 0x00710dac    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x00710dae    880d34c9fa00
_jmp_addr_0x00710db4:    {disp32} jmp       _jmp_addr_0x00710dc0                          // 0x00710db4    e907000000
                         nop                                                              // 0x00710db9    90
                         nop                                                              // 0x00710dba    90
                         nop                                                              // 0x00710dbb    90
                         nop                                                              // 0x00710dbc    90
                         nop                                                              // 0x00710dbd    90
                         nop                                                              // 0x00710dbe    90
                         nop                                                              // 0x00710dbf    90
_jmp_addr_0x00710dc0:    push               0x00407870                                    // 0x00710dc0    6870784000
                         call               _atexit                                       // 0x00710dc5    e8c7490b00
                         pop                ecx                                           // 0x00710dca    59
                         ret                                                              // 0x00710dcb    c3
                         nop                                                              // 0x00710dcc    90
                         nop                                                              // 0x00710dcd    90
                         nop                                                              // 0x00710dce    90
                         nop                                                              // 0x00710dcf    90
_globl_ct_0x00710dd0:    {disp32} jmp       _jmp_addr_0x00710de0                          // 0x00710dd0    e90b000000
                         nop                                                              // 0x00710dd5    90
                         nop                                                              // 0x00710dd6    90
                         nop                                                              // 0x00710dd7    90
                         nop                                                              // 0x00710dd8    90
                         nop                                                              // 0x00710dd9    90
                         nop                                                              // 0x00710dda    90
                         nop                                                              // 0x00710ddb    90
                         nop                                                              // 0x00710ddc    90
                         nop                                                              // 0x00710ddd    90
                         nop                                                              // 0x00710dde    90
                         nop                                                              // 0x00710ddf    90
_jmp_addr_0x00710de0:    {disp32} fld       dword ptr [rdata_bytes + 0xae234]             // 0x00710de0    d90534729500
                         {disp32} fmul      dword ptr [rdata_bytes + 0xae230]             // 0x00710de6    d80d30729500
                         {disp32} fstp      dword ptr [data_bytes + 0x3d302c]             // 0x00710dec    d91d2c90d900
                         ret                                                              // 0x00710df2    c3
                         nop                                                              // 0x00710df3    90
                         nop                                                              // 0x00710df4    90
                         nop                                                              // 0x00710df5    90
                         nop                                                              // 0x00710df6    90
                         nop                                                              // 0x00710df7    90
                         nop                                                              // 0x00710df8    90
                         nop                                                              // 0x00710df9    90
                         nop                                                              // 0x00710dfa    90
                         nop                                                              // 0x00710dfb    90
                         nop                                                              // 0x00710dfc    90
                         nop                                                              // 0x00710dfd    90
                         nop                                                              // 0x00710dfe    90
                         nop                                                              // 0x00710dff    90
_globl_ct_0x00710e00:    {disp32} jmp       _jmp_addr_0x00710e10                          // 0x00710e00    e90b000000
                         nop                                                              // 0x00710e05    90
                         nop                                                              // 0x00710e06    90
                         nop                                                              // 0x00710e07    90
                         nop                                                              // 0x00710e08    90
                         nop                                                              // 0x00710e09    90
                         nop                                                              // 0x00710e0a    90
                         nop                                                              // 0x00710e0b    90
                         nop                                                              // 0x00710e0c    90
                         nop                                                              // 0x00710e0d    90
                         nop                                                              // 0x00710e0e    90
                         nop                                                              // 0x00710e0f    90
_jmp_addr_0x00710e10:    {disp32} mov       dword ptr [data_bytes + 0x3d3028], 0xffffffff // 0x00710e10    c7052890d900ffffffff
                         ret                                                              // 0x00710e1a    c3
                         nop                                                              // 0x00710e1b    90
                         nop                                                              // 0x00710e1c    90
                         nop                                                              // 0x00710e1d    90
                         nop                                                              // 0x00710e1e    90
                         nop                                                              // 0x00710e1f    90
                         push               ecx                                           // 0x00710e20    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00710e21    8b0d105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x00]                   // 0x00710e27    8d442400
                         push               eax                                           // 0x00710e2b    50
                         call               _jmp_addr_0x006f6bc0                          // 0x00710e2c    e88f5dfeff
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x00710e31    89442400
                         {disp8} fld        dword ptr [esp + 0x00]                        // 0x00710e35    d9442400
                         push               ecx                                           // 0x00710e39    51
                         fstp               dword ptr [esp]                               // 0x00710e3a    d91c24
                         call               _jmp_addr_0x0086a110                          // 0x00710e3d    e8ce921500
                         fstp               dword ptr [esp]                               // 0x00710e42    d91c24
                         mov                ecx, OFFSET _GGameInfo_00d019f8               // 0x00710e45    b9f819d000
                         call               _jmp_addr_0x005575d0                          // 0x00710e4a    e88167e4ff
                         pop                ecx                                           // 0x00710e4f    59
                         ret                                                              // 0x00710e50    c3
                         nop                                                              // 0x00710e51    90
                         nop                                                              // 0x00710e52    90
                         nop                                                              // 0x00710e53    90
                         nop                                                              // 0x00710e54    90
                         nop                                                              // 0x00710e55    90
                         nop                                                              // 0x00710e56    90
                         nop                                                              // 0x00710e57    90
                         nop                                                              // 0x00710e58    90
                         nop                                                              // 0x00710e59    90
                         nop                                                              // 0x00710e5a    90
                         nop                                                              // 0x00710e5b    90
                         nop                                                              // 0x00710e5c    90
                         nop                                                              // 0x00710e5d    90
                         nop                                                              // 0x00710e5e    90
                         nop                                                              // 0x00710e5f    90
                         push               ecx                                           // 0x00710e60    51
                         mov                ecx, OFFSET _GGameInfo_00d019f8               // 0x00710e61    b9f819d000
                         call               ?GetVisualTime@GGameInfo@@QAEMXZ              // 0x00710e66    e83567e4ff
                         push               ecx                                           // 0x00710e6b    51
                         fstp               dword ptr [esp]                               // 0x00710e6c    d91c24
                         call               _jmp_addr_0x0086a160                          // 0x00710e6f    e8ec921500
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00710e74    8b0d105cd900
                         {disp8} fstp       dword ptr [esp + 0x04]                        // 0x00710e7a    d95c2404
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00710e7e    8b442404
                         add                esp, 0x04                                     // 0x00710e82    83c404
                         push               0x2                                           // 0x00710e85    6a02
                         push               eax                                           // 0x00710e87    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x00710e88    e8135dfeff
                         pop                ecx                                           // 0x00710e8d    59
                         ret                                                              // 0x00710e8e    c3
                         nop                                                              // 0x00710e8f    90
                         push               ecx                                           // 0x00710e90    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00710e91    8b0d105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x00]                   // 0x00710e97    8d442400
                         push               eax                                           // 0x00710e9b    50
                         call               _jmp_addr_0x006f6bc0                          // 0x00710e9c    e81f5dfeff
                         xor.s              ecx, ecx                                      // 0x00710ea1    33c9
                         test               eax, eax                                      // 0x00710ea3    85c0
                         setne              cl                                            // 0x00710ea5    0f95c1
                         {disp8} mov        dword ptr [esp + 0x00], ecx                   // 0x00710ea8    894c2400
                         {disp8} fild       dword ptr [esp + 0x00]                        // 0x00710eac    db442400
                         push               ecx                                           // 0x00710eb0    51
                         mov                ecx, OFFSET _GGameInfo_00d019f8               // 0x00710eb1    b9f819d000
                         fstp               dword ptr [esp]                               // 0x00710eb6    d91c24
                         call               _jmp_addr_0x00557610                          // 0x00710eb9    e85267e4ff
                         pop                ecx                                           // 0x00710ebe    59
                         ret                                                              // 0x00710ebf    c3
                         sub                esp, 0x08                                     // 0x00710ec0    83ec08
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00710ec3    8b0d105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x00710ec9    8d442404
                         push               eax                                           // 0x00710ecd    50
                         call               _jmp_addr_0x006f6bc0                          // 0x00710ece    e8ed5cfeff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00710ed3    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x04]                   // 0x00710ed9    8d542404
                         push               edx                                           // 0x00710edd    52
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x00710ede    89442404
                         call               _jmp_addr_0x006f6bc0                          // 0x00710ee2    e8d95cfeff
                         {disp8} fld        dword ptr [esp + 0x00]                        // 0x00710ee7    d9442400
                         push               ecx                                           // 0x00710eeb    51
                         fstp               dword ptr [esp]                               // 0x00710eec    d91c24
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x00710eef    89442408
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x00710ef3    d9442408
                         push               ecx                                           // 0x00710ef7    51
                         fstp               dword ptr [esp]                               // 0x00710ef8    d91c24
                         call               _jmp_addr_0x0086a110                          // 0x00710efb    e810921500
                         fstp               dword ptr [esp]                               // 0x00710f00    d91c24
                         mov                ecx, OFFSET _GGameInfo_00d019f8               // 0x00710f03    b9f819d000
                         call               _jmp_addr_0x005575b0                          // 0x00710f08    e8a366e4ff
                         add                esp, 0x08                                     // 0x00710f0d    83c408
                         ret                                                              // 0x00710f10    c3
                         nop                                                              // 0x00710f11    90
                         nop                                                              // 0x00710f12    90
                         nop                                                              // 0x00710f13    90
                         nop                                                              // 0x00710f14    90
                         nop                                                              // 0x00710f15    90
                         nop                                                              // 0x00710f16    90
                         nop                                                              // 0x00710f17    90
                         nop                                                              // 0x00710f18    90
                         nop                                                              // 0x00710f19    90
                         nop                                                              // 0x00710f1a    90
                         nop                                                              // 0x00710f1b    90
                         nop                                                              // 0x00710f1c    90
                         nop                                                              // 0x00710f1d    90
                         nop                                                              // 0x00710f1e    90
                         nop                                                              // 0x00710f1f    90
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00710f20    8b0d5c19d000
                         sub                esp, 0x08                                     // 0x00710f26    83ec08
                         call               ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x00710f29    e85220e4ff
                         test               eax, eax                                      // 0x00710f2e    85c0
                         {disp8} je         _jmp_addr_0x00710f3f                          // 0x00710f30    740d
                         push               0x00c0c1a8                                    // 0x00710f32    68a8c1c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x00710f37    e87453feff
                         add                esp, 0x04                                     // 0x00710f3c    83c404
_jmp_addr_0x00710f3f:    {disp32} mov       ecx, dword ptr [_game]                        // 0x00710f3f    8b0d5c19d000
                         call               ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x00710f45    e83620e4ff
                         {disp8} lea        eax, dword ptr [esp + 0x00]                   // 0x00710f4a    8d442400
                         push               eax                                           // 0x00710f4e    50
                         call               _time                                         // 0x00710f4f    e8a96a0b00
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                   // 0x00710f54    8d4c2404
                         push               ecx                                           // 0x00710f58    51
                         call               _localtime                                    // 0x00710f59    e83f690b00
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x00710f5e    8b4804
                         lea                ecx, dword ptr [ecx + ecx * 0x2]              // 0x00710f61    8d0c49
                         lea                edx, dword ptr [ecx + ecx * 0x4]              // 0x00710f64    8d1489
                         shl                edx, 2                                        // 0x00710f67    c1e202
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00710f6a    8b0d105cd900
                         {disp8} mov        dword ptr [esp + 0x0c], edx                   // 0x00710f70    8954240c
                         {disp8} fild       dword ptr [esp + 0x0c]                        // 0x00710f74    db44240c
                         add                esp, 0x08                                     // 0x00710f78    83c408
                         push               0x2                                           // 0x00710f7b    6a02
                         fiadd              dword ptr [eax]                               // 0x00710f7d    da00
                         {disp32} fmul      dword ptr [rdata_bytes + 0xae238]             // 0x00710f7f    d80d38729500
                         {disp8} fiadd      dword ptr [eax + 0x08]                        // 0x00710f85    da4008
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x00710f88    d95c2408
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x00710f8c    8b442408
                         push               eax                                           // 0x00710f90    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x00710f91    e80a5cfeff
                         add                esp, 0x08                                     // 0x00710f96    83c408
                         ret                                                              // 0x00710f99    c3
                         nop                                                              // 0x00710f9a    90
                         nop                                                              // 0x00710f9b    90
                         nop                                                              // 0x00710f9c    90
                         nop                                                              // 0x00710f9d    90
                         nop                                                              // 0x00710f9e    90
                         nop                                                              // 0x00710f9f    90
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00710fa0    8b0d5c19d000
                         sub                esp, 0x08                                     // 0x00710fa6    83ec08
                         call               ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x00710fa9    e8d21fe4ff
                         test               eax, eax                                      // 0x00710fae    85c0
                         {disp8} je         _jmp_addr_0x00710fbf                          // 0x00710fb0    740d
                         push               0x00c0c1a8                                    // 0x00710fb2    68a8c1c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x00710fb7    e8f452feff
                         add                esp, 0x04                                     // 0x00710fbc    83c404
_jmp_addr_0x00710fbf:    {disp32} mov       ecx, dword ptr [_game]                        // 0x00710fbf    8b0d5c19d000
                         call               ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x00710fc5    e8b61fe4ff
                         {disp8} lea        eax, dword ptr [esp + 0x00]                   // 0x00710fca    8d442400
                         push               eax                                           // 0x00710fce    50
                         call               _time                                         // 0x00710fcf    e8296a0b00
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                   // 0x00710fd4    8d4c2404
                         push               ecx                                           // 0x00710fd8    51
                         call               _localtime                                    // 0x00710fd9    e8bf680b00
                         {disp8} fild       dword ptr [eax + 0x0c]                        // 0x00710fde    db400c
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00710fe1    8b0d105cd900
                         add                esp, 0x08                                     // 0x00710fe7    83c408
                         {disp8} fstp       dword ptr [esp + 0x04]                        // 0x00710fea    d95c2404
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x00710fee    8b542404
                         push               0x2                                           // 0x00710ff2    6a02
                         push               edx                                           // 0x00710ff4    52
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x00710ff5    e8a65bfeff
                         add                esp, 0x08                                     // 0x00710ffa    83c408
                         ret                                                              // 0x00710ffd    c3
                         nop                                                              // 0x00710ffe    90
                         nop                                                              // 0x00710fff    90
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00711000    8b0d5c19d000
                         sub                esp, 0x08                                     // 0x00711006    83ec08
                         call               ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x00711009    e8721fe4ff
                         test               eax, eax                                      // 0x0071100e    85c0
                         {disp8} je         _jmp_addr_0x0071101f                          // 0x00711010    740d
                         push               0x00c0c1a8                                    // 0x00711012    68a8c1c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x00711017    e89452feff
                         add                esp, 0x04                                     // 0x0071101c    83c404
_jmp_addr_0x0071101f:    {disp32} mov       ecx, dword ptr [_game]                        // 0x0071101f    8b0d5c19d000
                         call               ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x00711025    e8561fe4ff
                         {disp8} lea        eax, dword ptr [esp + 0x00]                   // 0x0071102a    8d442400
                         push               eax                                           // 0x0071102e    50
                         call               _time                                         // 0x0071102f    e8c9690b00
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                   // 0x00711034    8d4c2404
                         push               ecx                                           // 0x00711038    51
                         call               _localtime                                    // 0x00711039    e85f680b00
                         {disp8} fild       dword ptr [eax + 0x18]                        // 0x0071103e    db4018
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00711041    8b0d105cd900
                         add                esp, 0x08                                     // 0x00711047    83c408
                         {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x0071104a    d80590a38a00
                         push               0x2                                           // 0x00711050    6a02
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x00711052    d95c2408
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x00711056    8b542408
                         push               edx                                           // 0x0071105a    52
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0071105b    e8405bfeff
                         add                esp, 0x08                                     // 0x00711060    83c408
                         ret                                                              // 0x00711063    c3
                         nop                                                              // 0x00711064    90
                         nop                                                              // 0x00711065    90
                         nop                                                              // 0x00711066    90
                         nop                                                              // 0x00711067    90
                         nop                                                              // 0x00711068    90
                         nop                                                              // 0x00711069    90
                         nop                                                              // 0x0071106a    90
                         nop                                                              // 0x0071106b    90
                         nop                                                              // 0x0071106c    90
                         nop                                                              // 0x0071106d    90
                         nop                                                              // 0x0071106e    90
                         nop                                                              // 0x0071106f    90
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00711070    8b0d5c19d000
                         sub                esp, 0x08                                     // 0x00711076    83ec08
                         call               ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x00711079    e8021fe4ff
                         test               eax, eax                                      // 0x0071107e    85c0
                         {disp8} je         _jmp_addr_0x0071108f                          // 0x00711080    740d
                         push               0x00c0c1a8                                    // 0x00711082    68a8c1c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x00711087    e82452feff
                         add                esp, 0x04                                     // 0x0071108c    83c404
_jmp_addr_0x0071108f:    {disp32} mov       ecx, dword ptr [_game]                        // 0x0071108f    8b0d5c19d000
                         call               ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x00711095    e8e61ee4ff
                         {disp8} lea        eax, dword ptr [esp + 0x00]                   // 0x0071109a    8d442400
                         push               eax                                           // 0x0071109e    50
                         call               _time                                         // 0x0071109f    e859690b00
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                   // 0x007110a4    8d4c2404
                         push               ecx                                           // 0x007110a8    51
                         call               _localtime                                    // 0x007110a9    e8ef670b00
                         {disp8} fild       dword ptr [eax + 0x10]                        // 0x007110ae    db4010
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x007110b1    8b0d105cd900
                         add                esp, 0x08                                     // 0x007110b7    83c408
                         {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x007110ba    d80590a38a00
                         push               0x2                                           // 0x007110c0    6a02
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x007110c2    d95c2408
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x007110c6    8b542408
                         push               edx                                           // 0x007110ca    52
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x007110cb    e8d05afeff
                         add                esp, 0x08                                     // 0x007110d0    83c408
                         ret                                                              // 0x007110d3    c3
                         nop                                                              // 0x007110d4    90
                         nop                                                              // 0x007110d5    90
                         nop                                                              // 0x007110d6    90
                         nop                                                              // 0x007110d7    90
                         nop                                                              // 0x007110d8    90
                         nop                                                              // 0x007110d9    90
                         nop                                                              // 0x007110da    90
                         nop                                                              // 0x007110db    90
                         nop                                                              // 0x007110dc    90
                         nop                                                              // 0x007110dd    90
                         nop                                                              // 0x007110de    90
                         nop                                                              // 0x007110df    90
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x007110e0    8b0d5c19d000
                         sub                esp, 0x08                                     // 0x007110e6    83ec08
                         call               ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x007110e9    e8921ee4ff
                         test               eax, eax                                      // 0x007110ee    85c0
                         {disp8} je         _jmp_addr_0x007110ff                          // 0x007110f0    740d
                         push               0x00c0c1a8                                    // 0x007110f2    68a8c1c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x007110f7    e8b451feff
                         add                esp, 0x04                                     // 0x007110fc    83c404
_jmp_addr_0x007110ff:    {disp32} mov       ecx, dword ptr [_game]                        // 0x007110ff    8b0d5c19d000
                         call               ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x00711105    e8761ee4ff
                         {disp8} lea        eax, dword ptr [esp + 0x00]                   // 0x0071110a    8d442400
                         push               eax                                           // 0x0071110e    50
                         call               _time                                         // 0x0071110f    e8e9680b00
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                   // 0x00711114    8d4c2404
                         push               ecx                                           // 0x00711118    51
                         call               _localtime                                    // 0x00711119    e87f670b00
                         {disp8} fild       dword ptr [eax + 0x14]                        // 0x0071111e    db4014
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00711121    8b0d105cd900
                         add                esp, 0x08                                     // 0x00711127    83c408
                         {disp32} fadd      dword ptr [rdata_bytes + 0xae23c]             // 0x0071112a    d8053c729500
                         push               0x2                                           // 0x00711130    6a02
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x00711132    d95c2408
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x00711136    8b542408
                         push               edx                                           // 0x0071113a    52
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0071113b    e8605afeff
                         add                esp, 0x08                                     // 0x00711140    83c408
                         ret                                                              // 0x00711143    c3
                         nop                                                              // 0x00711144    90
                         nop                                                              // 0x00711145    90
                         nop                                                              // 0x00711146    90
                         nop                                                              // 0x00711147    90
                         nop                                                              // 0x00711148    90
                         nop                                                              // 0x00711149    90
                         nop                                                              // 0x0071114a    90
                         nop                                                              // 0x0071114b    90
                         nop                                                              // 0x0071114c    90
                         nop                                                              // 0x0071114d    90
                         nop                                                              // 0x0071114e    90
                         nop                                                              // 0x0071114f    90
                         push               ecx                                           // 0x00711150    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00711151    8b0d105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x00]                   // 0x00711157    8d442400
                         push               eax                                           // 0x0071115b    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0071115c    e85f5afeff
                         push               ecx                                           // 0x00711161    51
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00711162    8b0d5c19d000
                         {disp32} mov       ecx, dword ptr [ecx + 0x00250090]             // 0x00711168    8b8990002500
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x0071116e    89442404
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x00711172    d9442404
                         fstp               dword ptr [esp]                               // 0x00711176    d91c24
                         call               _jmp_addr_0x006eb8b0                          // 0x00711179    e832a7fdff
                         pop                ecx                                           // 0x0071117e    59
                         ret                                                              // 0x0071117f    c3
                         {disp32} mov       eax, dword ptr [_game]                        // 0x00711180    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x00711185    8b8890002500
                         {disp8} mov        dword ptr [ecx + 0x08], 0x00000000            // 0x0071118b    c7410800000000
                         ret                                                              // 0x00711192    c3
                         nop                                                              // 0x00711193    90
                         nop                                                              // 0x00711194    90
                         nop                                                              // 0x00711195    90
                         nop                                                              // 0x00711196    90
                         nop                                                              // 0x00711197    90
                         nop                                                              // 0x00711198    90
                         nop                                                              // 0x00711199    90
                         nop                                                              // 0x0071119a    90
                         nop                                                              // 0x0071119b    90
                         nop                                                              // 0x0071119c    90
                         nop                                                              // 0x0071119d    90
                         nop                                                              // 0x0071119e    90
                         nop                                                              // 0x0071119f    90
                         push               ecx                                           // 0x007111a0    51
                         {disp32} mov       eax, dword ptr [_game]                        // 0x007111a1    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x007111a6    8b8890002500
                         call               _jmp_addr_0x006eb950                          // 0x007111ac    e89fa7fdff
                         {disp8} fstp       dword ptr [esp + 0x00]                        // 0x007111b1    d95c2400
                         {disp8} mov        ecx, dword ptr [esp + 0x00]                   // 0x007111b5    8b4c2400
                         push               0x2                                           // 0x007111b9    6a02
                         push               ecx                                           // 0x007111bb    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x007111bc    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x007111c2    e8d959feff
                         pop                ecx                                           // 0x007111c7    59
                         ret                                                              // 0x007111c8    c3
                         nop                                                              // 0x007111c9    90
                         nop                                                              // 0x007111ca    90
                         nop                                                              // 0x007111cb    90
                         nop                                                              // 0x007111cc    90
                         nop                                                              // 0x007111cd    90
                         nop                                                              // 0x007111ce    90
                         nop                                                              // 0x007111cf    90
                         {disp32} mov       eax, dword ptr [_game]                        // 0x007111d0    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x007111d5    8b8890002500
                         {disp8} mov        edx, dword ptr [ecx + 0x08]                   // 0x007111db    8b5108
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x007111de    8b0d105cd900
                         push               0x6                                           // 0x007111e4    6a06
                         push               edx                                           // 0x007111e6    52
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x007111e7    e8b459feff
                         ret                                                              // 0x007111ec    c3
                         nop                                                              // 0x007111ed    90
                         nop                                                              // 0x007111ee    90
                         nop                                                              // 0x007111ef    90
                         {disp32} mov       eax, dword ptr [_game]                        // 0x007111f0    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x007111f5    8b8890002500
                         {disp8} mov        dword ptr [ecx + 0x10], 0x00000000            // 0x007111fb    c7411000000000
                         ret                                                              // 0x00711202    c3
                         nop                                                              // 0x00711203    90
                         nop                                                              // 0x00711204    90
                         nop                                                              // 0x00711205    90
                         nop                                                              // 0x00711206    90
                         nop                                                              // 0x00711207    90
                         nop                                                              // 0x00711208    90
                         nop                                                              // 0x00711209    90
                         nop                                                              // 0x0071120a    90
                         nop                                                              // 0x0071120b    90
                         nop                                                              // 0x0071120c    90
                         nop                                                              // 0x0071120d    90
                         nop                                                              // 0x0071120e    90
                         nop                                                              // 0x0071120f    90
                         {disp32} mov       eax, dword ptr [_game]                        // 0x00711210    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x00711215    8b8890002500
                         {disp8} mov        dword ptr [ecx + 0x10], 0x00000001            // 0x0071121b    c7411001000000
                         ret                                                              // 0x00711222    c3
                         nop                                                              // 0x00711223    90
                         nop                                                              // 0x00711224    90
                         nop                                                              // 0x00711225    90
                         nop                                                              // 0x00711226    90
                         nop                                                              // 0x00711227    90
                         nop                                                              // 0x00711228    90
                         nop                                                              // 0x00711229    90
                         nop                                                              // 0x0071122a    90
                         nop                                                              // 0x0071122b    90
                         nop                                                              // 0x0071122c    90
                         nop                                                              // 0x0071122d    90
                         nop                                                              // 0x0071122e    90
                         nop                                                              // 0x0071122f    90
                         push               ecx                                           // 0x00711230    51
                         {disp32} fld       dword ptr [data_bytes + 0x5dc724]             // 0x00711231    d9052427fa00
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1a6a0]             // 0x00711237    d81da0368c00
                         {disp32} fld       dword ptr [data_bytes + 0x5dc724]             // 0x0071123d    d9052427fa00
                         fnstsw             ax                                            // 0x00711243    dfe0
                         test               ah, 0x01                                      // 0x00711245    f6c401
                         {disp8} je         _jmp_addr_0x00711258                          // 0x00711248    740e
                         {disp32} fmul      dword ptr [rdata_bytes + 0x27620]             // 0x0071124a    d80d20068d00
                         {disp32} fsubr     dword ptr [_rdata_float1p0]                   // 0x00711250    d82d90a38a00
                         {disp8} jmp        _jmp_addr_0x00711264                          // 0x00711256    eb0c
_jmp_addr_0x00711258:    {disp32} fsub      dword ptr [rdata_bytes + 0x1a6a0]             // 0x00711258    d825a0368c00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x27620]             // 0x0071125e    d80d20068d00
_jmp_addr_0x00711264:    {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00711264    8b0d105cd900
                         {disp8} fstp       dword ptr [esp + 0x00]                        // 0x0071126a    d95c2400
                         {disp8} mov        eax, dword ptr [esp + 0x00]                   // 0x0071126e    8b442400
                         push               0x2                                           // 0x00711272    6a02
                         push               eax                                           // 0x00711274    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x00711275    e82659feff
                         pop                ecx                                           // 0x0071127a    59
                         ret                                                              // 0x0071127b    c3
                         nop                                                              // 0x0071127c    90
                         nop                                                              // 0x0071127d    90
                         nop                                                              // 0x0071127e    90
                         nop                                                              // 0x0071127f    90
                         sub                esp, 0x0c                                     // 0x00711280    83ec0c
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00711283    8b0d105cd900
                         push               esi                                           // 0x00711289    56
                         push               edi                                           // 0x0071128a    57
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x0071128b    8d442408
                         push               eax                                           // 0x0071128f    50
                         call               _jmp_addr_0x006f6bc0                          // 0x00711290    e82b59feff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00711295    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x0071129b    8d54240c
                         mov.s              edi, eax                                      // 0x0071129f    8bf8
                         push               edx                                           // 0x007112a1    52
                         {disp8} mov        dword ptr [esp + 0x0c], edi                   // 0x007112a2    897c240c
                         call               _jmp_addr_0x006f6bc0                          // 0x007112a6    e81559feff
                         push               eax                                           // 0x007112ab    50
                         call               _jmp_addr_0x0070d220                          // 0x007112ac    e86fbfffff
                         mov.s              esi, eax                                      // 0x007112b1    8bf0
                         add                esp, 0x04                                     // 0x007112b3    83c404
                         test               esi, esi                                      // 0x007112b6    85f6
                         {disp8} jne        _jmp_addr_0x007112cd                          // 0x007112b8    7513
                         push               0x00c0d428                                    // 0x007112ba    6828d4c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x007112bf    e8ec4ffeff
                         add                esp, 0x04                                     // 0x007112c4    83c404
                         pop                edi                                           // 0x007112c7    5f
                         pop                esi                                           // 0x007112c8    5e
                         add                esp, 0x0c                                     // 0x007112c9    83c40c
                         ret                                                              // 0x007112cc    c3
_jmp_addr_0x007112cd:    mov                eax, dword ptr [esi]                          // 0x007112cd    8b06
                         mov.s              ecx, esi                                      // 0x007112cf    8bce
                         call               dword ptr [eax + 0x4d0]                       // 0x007112d1    ff90d0040000
                         test               eax, eax                                      // 0x007112d7    85c0
                         {disp8} jne        _jmp_addr_0x007112f6                          // 0x007112d9    751b
                         mov                edx, dword ptr [esi]                          // 0x007112db    8b16
                         mov.s              ecx, esi                                      // 0x007112dd    8bce
                         call               dword ptr [edx + 0x1f4]                       // 0x007112df    ff92f4010000
                         test               eax, eax                                      // 0x007112e5    85c0
                         {disp8} jne        _jmp_addr_0x007112f6                          // 0x007112e7    750d
                         push               0x00c20b80                                    // 0x007112e9    68800bc200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x007112ee    e8bd4ffeff
                         add                esp, 0x04                                     // 0x007112f3    83c404
_jmp_addr_0x007112f6:    mov                eax, dword ptr [esi]                          // 0x007112f6    8b06
                         mov.s              ecx, esi                                      // 0x007112f8    8bce
                         call               dword ptr [eax + 0x4d0]                       // 0x007112fa    ff90d0040000
                         test               eax, eax                                      // 0x00711300    85c0
                         {disp8} jne        _jmp_addr_0x0071130e                          // 0x00711302    750a
                         mov                edx, dword ptr [esi]                          // 0x00711304    8b16
                         mov.s              ecx, esi                                      // 0x00711306    8bce
                         call               dword ptr [edx + 0x1f4]                       // 0x00711308    ff92f4010000
_jmp_addr_0x0071130e:    mov                eax, dword ptr [esi]                          // 0x0071130e    8b06
                         mov.s              ecx, esi                                      // 0x00711310    8bce
                         call               dword ptr [eax + 0x4d0]                       // 0x00711312    ff90d0040000
                         test               eax, eax                                      // 0x00711318    85c0
                         {disp8} je         _jmp_addr_0x0071132a                          // 0x0071131a    740e
                         push               edi                                           // 0x0071131c    57
                         mov.s              ecx, esi                                      // 0x0071131d    8bce
                         call               _jmp_addr_0x00711630                          // 0x0071131f    e80c030000
                         pop                edi                                           // 0x00711324    5f
                         pop                esi                                           // 0x00711325    5e
                         add                esp, 0x0c                                     // 0x00711326    83c40c
                         ret                                                              // 0x00711329    c3
_jmp_addr_0x0071132a:    mov                edx, dword ptr [esi]                          // 0x0071132a    8b16
                         mov.s              ecx, esi                                      // 0x0071132c    8bce
                         call               dword ptr [edx + 0x1f4]                       // 0x0071132e    ff92f4010000
                         test               eax, eax                                      // 0x00711334    85c0
                         {disp8} je         _jmp_addr_0x00711368                          // 0x00711336    7430
                         xor.s              edx, edx                                      // 0x00711338    33d2
                         mov                eax, 0x000003e8                               // 0x0071133a    b8e8030000
                         div                dword ptr [data_bytes + 0x33ba38]             // 0x0071133f    f735381ad000
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x00711345    c744241000000000
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x0071134d    8944240c
                         {disp8} fild       qword ptr [esp + 0x0c]                        // 0x00711351    df6c240c
                         {disp8} fmul       dword ptr [esp + 0x08]                        // 0x00711355    d84c2408
                         call               _jmp_addr_0x007a1400                          // 0x00711359    e8a2000900
                         test               eax, eax                                      // 0x0071135e    85c0
                         {disp8} jbe        _jmp_addr_0x00711368                          // 0x00711360    7606
                         {disp32} mov       dword ptr [esi + 0x000000c8], eax             // 0x00711362    8986c8000000
_jmp_addr_0x00711368:    pop                edi                                           // 0x00711368    5f
                         pop                esi                                           // 0x00711369    5e
                         add                esp, 0x0c                                     // 0x0071136a    83c40c
                         ret                                                              // 0x0071136d    c3
                         nop                                                              // 0x0071136e    90
                         nop                                                              // 0x0071136f    90
                         push               ecx                                           // 0x00711370    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00711371    8b0d105cd900
                         push               esi                                           // 0x00711377    56
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x00711378    8d442404
                         push               eax                                           // 0x0071137c    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0071137d    e83e58feff
                         push               eax                                           // 0x00711382    50
                         call               _jmp_addr_0x0070d220                          // 0x00711383    e898beffff
                         mov.s              esi, eax                                      // 0x00711388    8bf0
                         add                esp, 0x04                                     // 0x0071138a    83c404
                         test               esi, esi                                      // 0x0071138d    85f6
                         {disp8} jne        _jmp_addr_0x007113bb                          // 0x0071138f    752a
                         push               0x00c0d428                                    // 0x00711391    6828d4c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x00711396    e8154ffeff
                         add                esp, 0x04                                     // 0x0071139b    83c404
_jmp_addr_0x0071139e:    {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x0071139e    c744240400000000
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x007113a6    8b4c2404
                         push               0x2                                           // 0x007113aa    6a02
                         push               ecx                                           // 0x007113ac    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x007113ad    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x007113b3    e8e857feff
                         pop                esi                                           // 0x007113b8    5e
                         pop                ecx                                           // 0x007113b9    59
                         ret                                                              // 0x007113ba    c3
_jmp_addr_0x007113bb:    mov                edx, dword ptr [esi]                          // 0x007113bb    8b16
                         mov.s              ecx, esi                                      // 0x007113bd    8bce
                         call               dword ptr [edx + 0x4d0]                       // 0x007113bf    ff92d0040000
                         test               eax, eax                                      // 0x007113c5    85c0
                         {disp8} jne        _jmp_addr_0x007113d6                          // 0x007113c7    750d
                         push               0x00c20b80                                    // 0x007113c9    68800bc200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x007113ce    e8dd4efeff
                         add                esp, 0x04                                     // 0x007113d3    83c404
_jmp_addr_0x007113d6:    mov                eax, dword ptr [esi]                          // 0x007113d6    8b06
                         mov.s              ecx, esi                                      // 0x007113d8    8bce
                         call               dword ptr [eax + 0x4d0]                       // 0x007113da    ff90d0040000
                         mov                edx, dword ptr [esi]                          // 0x007113e0    8b16
                         mov.s              ecx, esi                                      // 0x007113e2    8bce
                         call               dword ptr [edx + 0x4d0]                       // 0x007113e4    ff92d0040000
                         test               eax, eax                                      // 0x007113ea    85c0
                         {disp8} je         _jmp_addr_0x0071139e                          // 0x007113ec    74b0
                         mov.s              ecx, esi                                      // 0x007113ee    8bce
                         call               _jmp_addr_0x00711670                          // 0x007113f0    e87b020000
                         {disp8} fstp       dword ptr [esp + 0x04]                        // 0x007113f5    d95c2404
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x007113f9    8b442404
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x007113fd    8b0d105cd900
                         push               0x2                                           // 0x00711403    6a02
                         push               eax                                           // 0x00711405    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x00711406    e89557feff
                         pop                esi                                           // 0x0071140b    5e
                         pop                ecx                                           // 0x0071140c    59
                         ret                                                              // 0x0071140d    c3
                         nop                                                              // 0x0071140e    90
                         nop                                                              // 0x0071140f    90
                         push               ecx                                           // 0x00711410    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00711411    8b0d105cd900
                         push               esi                                           // 0x00711417    56
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x00711418    8d442404
                         push               eax                                           // 0x0071141c    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0071141d    e89e57feff
                         push               eax                                           // 0x00711422    50
                         call               _jmp_addr_0x0070d220                          // 0x00711423    e8f8bdffff
                         mov.s              esi, eax                                      // 0x00711428    8bf0
                         add                esp, 0x04                                     // 0x0071142a    83c404
                         test               esi, esi                                      // 0x0071142d    85f6
                         {disp8} jne        _jmp_addr_0x0071145b                          // 0x0071142f    752a
                         push               0x00c0d428                                    // 0x00711431    6828d4c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x00711436    e8754efeff
                         add                esp, 0x04                                     // 0x0071143b    83c404
_jmp_addr_0x0071143e:    {disp32} mov       ecx, dword ptr [rdata_bytes + 0xae22c]        // 0x0071143e    8b0d2c729500
                         mov.s              edx, ecx                                      // 0x00711444    8bd1
                         push               0x2                                           // 0x00711446    6a02
                         {disp8} mov        dword ptr [esp + 0x08], ecx                   // 0x00711448    894c2408
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0071144c    8b0d105cd900
                         push               edx                                           // 0x00711452    52
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x00711453    e84857feff
                         pop                esi                                           // 0x00711458    5e
                         pop                ecx                                           // 0x00711459    59
                         ret                                                              // 0x0071145a    c3
_jmp_addr_0x0071145b:    mov                edx, dword ptr [esi]                          // 0x0071145b    8b16
                         mov.s              ecx, esi                                      // 0x0071145d    8bce
                         call               dword ptr [edx + 0x4d0]                       // 0x0071145f    ff92d0040000
                         test               eax, eax                                      // 0x00711465    85c0
                         {disp8} jne        _jmp_addr_0x00711476                          // 0x00711467    750d
                         push               0x00c20b80                                    // 0x00711469    68800bc200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0071146e    e83d4efeff
                         add                esp, 0x04                                     // 0x00711473    83c404
_jmp_addr_0x00711476:    mov                eax, dword ptr [esi]                          // 0x00711476    8b06
                         mov.s              ecx, esi                                      // 0x00711478    8bce
                         call               dword ptr [eax + 0x4d0]                       // 0x0071147a    ff90d0040000
                         mov                edx, dword ptr [esi]                          // 0x00711480    8b16
                         mov.s              ecx, esi                                      // 0x00711482    8bce
                         call               dword ptr [edx + 0x4d0]                       // 0x00711484    ff92d0040000
                         test               eax, eax                                      // 0x0071148a    85c0
                         {disp8} je         _jmp_addr_0x0071143e                          // 0x0071148c    74b0
                         mov.s              ecx, esi                                      // 0x0071148e    8bce
                         call               _jmp_addr_0x007116d0                          // 0x00711490    e83b020000
                         {disp8} fstp       dword ptr [esp + 0x04]                        // 0x00711495    d95c2404
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00711499    8b442404
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0071149d    8b0d105cd900
                         push               0x2                                           // 0x007114a3    6a02
                         push               eax                                           // 0x007114a5    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x007114a6    e8f556feff
                         pop                esi                                           // 0x007114ab    5e
                         pop                ecx                                           // 0x007114ac    59
                         ret                                                              // 0x007114ad    c3
                         nop                                                              // 0x007114ae    90
                         nop                                                              // 0x007114af    90
                         sub                esp, 0x0c                                     // 0x007114b0    83ec0c
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x007114b3    8b0d105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x007114b9    8d442408
                         push               eax                                           // 0x007114bd    50
                         call               _jmp_addr_0x006f6bc0                          // 0x007114be    e8fd56feff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x007114c3    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x007114c9    8d542408
                         push               edx                                           // 0x007114cd    52
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x007114ce    89442404
                         call               _jmp_addr_0x006f6bc0                          // 0x007114d2    e8e956feff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x007114d7    8b0d105cd900
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x007114dd    89442404
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x007114e1    8d442408
                         push               eax                                           // 0x007114e5    50
                         call               _jmp_addr_0x006f6bc0                          // 0x007114e6    e8d556feff
                         {disp8} fld        dword ptr [esp + 0x00]                        // 0x007114eb    d9442400
                         push               ecx                                           // 0x007114ef    51
                         fstp               dword ptr [esp]                               // 0x007114f0    d91c24
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x007114f3    d9442408
                         push               ecx                                           // 0x007114f7    51
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x007114f8    89442410
                         fstp               dword ptr [esp]                               // 0x007114fc    d91c24
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x007114ff    d9442410
                         push               ecx                                           // 0x00711503    51
                         fstp               dword ptr [esp]                               // 0x00711504    d91c24
                         mov                ecx, OFFSET _GGameInfo_00d019f8               // 0x00711507    b9f819d000
                         call               @SetVisualTimeCycle__9GGameInfoFfff@20        // 0x0071150c    e80f61e4ff
                         add                esp, 0x0c                                     // 0x00711511    83c40c
                         ret                                                              // 0x00711514    c3
                         nop                                                              // 0x00711515    90
                         nop                                                              // 0x00711516    90
                         nop                                                              // 0x00711517    90
                         nop                                                              // 0x00711518    90
                         nop                                                              // 0x00711519    90
                         nop                                                              // 0x0071151a    90
                         nop                                                              // 0x0071151b    90
                         nop                                                              // 0x0071151c    90
                         nop                                                              // 0x0071151d    90
                         nop                                                              // 0x0071151e    90
                         nop                                                              // 0x0071151f    90
                         {disp32} mov       eax, dword ptr [rdata_bytes + 0x368ec]        // 0x00711520    a1ecf88d00
                         {disp32} mov       ecx, dword ptr [rdata_bytes + 0x368e8]        // 0x00711525    8b0de8f88d00
                         {disp32} mov       edx, dword ptr [rdata_bytes + 0x368e4]        // 0x0071152b    8b15e4f88d00
                         push               eax                                           // 0x00711531    50
                         push               ecx                                           // 0x00711532    51
                         push               edx                                           // 0x00711533    52
                         mov                ecx, OFFSET _GGameInfo_00d019f8               // 0x00711534    b9f819d000
                         call               @SetVisualTimeCycle__9GGameInfoFfff@20        // 0x00711539    e8e260e4ff
                         ret                                                              // 0x0071153e    c3
                         nop                                                              // 0x0071153f    90
_globl_ct_0x00711540:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x00711540    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x00711546    b001
                         test               al, cl                                        // 0x00711548    84c8
                         {disp8} jne        _jmp_addr_0x00711554                          // 0x0071154a    7508
                         or.s               cl, al                                        // 0x0071154c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x0071154e    880d34c9fa00
_jmp_addr_0x00711554:    {disp32} jmp       _jmp_addr_0x00711560                          // 0x00711554    e907000000
                         nop                                                              // 0x00711559    90
                         nop                                                              // 0x0071155a    90
                         nop                                                              // 0x0071155b    90
                         nop                                                              // 0x0071155c    90
                         nop                                                              // 0x0071155d    90
                         nop                                                              // 0x0071155e    90
                         nop                                                              // 0x0071155f    90
_jmp_addr_0x00711560:    push               0x00407870                                    // 0x00711560    6870784000
                         call               _atexit                                       // 0x00711565    e827420b00
                         pop                ecx                                           // 0x0071156a    59
                         ret                                                              // 0x0071156b    c3
                         nop                                                              // 0x0071156c    90
                         nop                                                              // 0x0071156d    90
                         nop                                                              // 0x0071156e    90
                         nop                                                              // 0x0071156f    90
_globl_ct_0x00711570:    {disp32} jmp       _jmp_addr_0x00711580                          // 0x00711570    e90b000000
                         nop                                                              // 0x00711575    90
                         nop                                                              // 0x00711576    90
                         nop                                                              // 0x00711577    90
                         nop                                                              // 0x00711578    90
                         nop                                                              // 0x00711579    90
                         nop                                                              // 0x0071157a    90
                         nop                                                              // 0x0071157b    90
                         nop                                                              // 0x0071157c    90
                         nop                                                              // 0x0071157d    90
                         nop                                                              // 0x0071157e    90
                         nop                                                              // 0x0071157f    90
_jmp_addr_0x00711580:    {disp32} fld       dword ptr [rdata_bytes + 0xae244]             // 0x00711580    d90544729500
                         {disp32} fmul      dword ptr [rdata_bytes + 0xae240]             // 0x00711586    d80d40729500
                         {disp32} fstp      dword ptr [data_bytes + 0x3d3030]             // 0x0071158c    d91d3090d900
                         ret                                                              // 0x00711592    c3
                         nop                                                              // 0x00711593    90
                         nop                                                              // 0x00711594    90
                         nop                                                              // 0x00711595    90
                         nop                                                              // 0x00711596    90
                         nop                                                              // 0x00711597    90
                         nop                                                              // 0x00711598    90
                         nop                                                              // 0x00711599    90
                         nop                                                              // 0x0071159a    90
                         nop                                                              // 0x0071159b    90
                         nop                                                              // 0x0071159c    90
                         nop                                                              // 0x0071159d    90
                         nop                                                              // 0x0071159e    90
                         nop                                                              // 0x0071159f    90
_jmp_addr_0x007115a0:    push               esi                                           // 0x007115a0    56
                         push               edi                                           // 0x007115a1    57
                         push               0xd                                           // 0x007115a2    6a0d
                         push               0x00c20b98                                    // 0x007115a4    68980bc200
                         push               0x30                                          // 0x007115a9    6a30
                         call               ?__nw@Base@@SAPAXK@Z                          // 0x007115ab    e84051d2ff
                         mov.s              esi, eax                                      // 0x007115b0    8bf0
                         xor.s              edi, edi                                      // 0x007115b2    33ff
                         add                esp, 0x0c                                     // 0x007115b4    83c40c
                         cmp.s              esi, edi                                      // 0x007115b7    3bf7
                         {disp8} je         _jmp_addr_0x007115fa                          // 0x007115b9    743f
                         mov.s              ecx, esi                                      // 0x007115bb    8bce
                         call               ??0GameThing@@QAE@XZ                          // 0x007115bd    e84ee4e5ff
                         {disp8} mov        dword ptr [esi + 0x14], edi                   // 0x007115c2    897e14
                         {disp8} mov        dword ptr [esi + 0x18], edi                   // 0x007115c5    897e18
                         {disp8} mov        dword ptr [esi + 0x1c], edi                   // 0x007115c8    897e1c
                         {disp8} mov        dword ptr [esi + 0x20], edi                   // 0x007115cb    897e20
                         mov.s              ecx, esi                                      // 0x007115ce    8bce
                         mov                dword ptr [esi], 0x008c31a0                   // 0x007115d0    c706a0318c00
                         call               ?SetToZero@GameThingWithPos@@QAEXXZ           // 0x007115d6    e8f5efe5ff
                         push               edi                                           // 0x007115db    57
                         mov.s              ecx, esi                                      // 0x007115dc    8bce
                         mov                dword ptr [esi], 0x008e0bac                   // 0x007115de    c706ac0b8e00
                         call               _jmp_addr_0x00711610                          // 0x007115e4    e827000000
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x007115e9    8b44240c
                         push               eax                                           // 0x007115ed    50
                         mov.s              ecx, esi                                      // 0x007115ee    8bce
                         call               _jmp_addr_0x00711630                          // 0x007115f0    e83b000000
                         pop                edi                                           // 0x007115f5    5f
                         mov.s              eax, esi                                      // 0x007115f6    8bc6
                         pop                esi                                           // 0x007115f8    5e
                         ret                                                              // 0x007115f9    c3
_jmp_addr_0x007115fa:    pop                edi                                           // 0x007115fa    5f
                         xor.s              eax, eax                                      // 0x007115fb    33c0
                         pop                esi                                           // 0x007115fd    5e
                         ret                                                              // 0x007115fe    c3
                         nop                                                              // 0x007115ff    90
?GetScriptObjectType@ScriptTimer@@UAEIXZ:
                         mov                eax, 0x00000011                               // 0x00711600    b811000000
                         ret                                                              // 0x00711605    c3
                         nop                                                              // 0x00711606    90
                         nop                                                              // 0x00711607    90
                         nop                                                              // 0x00711608    90
                         nop                                                              // 0x00711609    90
                         nop                                                              // 0x0071160a    90
                         nop                                                              // 0x0071160b    90
                         nop                                                              // 0x0071160c    90
                         nop                                                              // 0x0071160d    90
                         nop                                                              // 0x0071160e    90
                         nop                                                              // 0x0071160f    90
_jmp_addr_0x00711610:    {disp32} mov       eax, dword ptr [_game]                        // 0x00711610    a15c19d000
                         {disp32} mov       edx, dword ptr [eax + 0x00205a40]             // 0x00711615    8b90405a2000
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0071161b    8b442404
                         {disp8} mov        dword ptr [ecx + 0x28], edx                   // 0x0071161f    895128
                         {disp8} mov        dword ptr [ecx + 0x2c], eax                   // 0x00711622    89412c
                         ret                0x0004                                        // 0x00711625    c20400
                         nop                                                              // 0x00711628    90
                         nop                                                              // 0x00711629    90
                         nop                                                              // 0x0071162a    90
                         nop                                                              // 0x0071162b    90
                         nop                                                              // 0x0071162c    90
                         nop                                                              // 0x0071162d    90
                         nop                                                              // 0x0071162e    90
                         nop                                                              // 0x0071162f    90
_jmp_addr_0x00711630:    sub                esp, 0x08                                     // 0x00711630    83ec08
                         xor.s              edx, edx                                      // 0x00711633    33d2
                         mov                eax, 0x000003e8                               // 0x00711635    b8e8030000
                         div                dword ptr [data_bytes + 0x33ba38]             // 0x0071163a    f735381ad000
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x00711640    c744240400000000
                         push               esi                                           // 0x00711648    56
                         mov.s              esi, ecx                                      // 0x00711649    8bf1
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x0071164b    89442404
                         {disp8} fild       qword ptr [esp + 0x04]                        // 0x0071164f    df6c2404
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x00711653    d84c2410
                         call               _jmp_addr_0x007a1400                          // 0x00711657    e8a4fd0800
                         push               eax                                           // 0x0071165c    50
                         mov.s              ecx, esi                                      // 0x0071165d    8bce
                         call               _jmp_addr_0x00711610                          // 0x0071165f    e8acffffff
                         pop                esi                                           // 0x00711664    5e
                         add                esp, 0x08                                     // 0x00711665    83c408
                         ret                0x0004                                        // 0x00711668    c20400
                         nop                                                              // 0x0071166b    90
                         nop                                                              // 0x0071166c    90
                         nop                                                              // 0x0071166d    90
                         nop                                                              // 0x0071166e    90
                         nop                                                              // 0x0071166f    90
_jmp_addr_0x00711670:    sub                esp, 0x08                                     // 0x00711670    83ec08
                         push               esi                                           // 0x00711673    56
                         mov.s              esi, ecx                                      // 0x00711674    8bf1
                         call               _jmp_addr_0x007116c0                          // 0x00711676    e845000000
                         {disp8} mov        ecx, dword ptr [esi + 0x2c]                   // 0x0071167b    8b4e2c
                         sub.s              ecx, eax                                      // 0x0071167e    2bc8
                         {disp8} jns        _jmp_addr_0x0071168c                          // 0x00711680    790a
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x00711682    c744240400000000
                         {disp8} jmp        _jmp_addr_0x0071169c                          // 0x0071168a    eb10
_jmp_addr_0x0071168c:    mov.s              ecx, esi                                      // 0x0071168c    8bce
                         call               _jmp_addr_0x007116c0                          // 0x0071168e    e82d000000
                         {disp8} mov        edx, dword ptr [esi + 0x2c]                   // 0x00711693    8b562c
                         sub.s              edx, eax                                      // 0x00711696    2bd0
                         {disp8} mov        dword ptr [esp + 0x04], edx                   // 0x00711698    89542404
_jmp_addr_0x0071169c:    {disp8} fild       dword ptr [esp + 0x04]                        // 0x0071169c    db442404
                         {disp32} mov       eax, dword ptr [data_bytes + 0x33ba38]        // 0x007116a0    a1381ad000
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x007116a5    89442404
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000            // 0x007116a9    c744240800000000
                         {disp8} fimul      dword ptr [esp + 0x04]                        // 0x007116b1    da4c2404
                         pop                esi                                           // 0x007116b5    5e
                         {disp32} fmul      dword ptr [_rdata_float0p001]                 // 0x007116b6    d80db0a38a00
                         add                esp, 0x08                                     // 0x007116bc    83c408
                         ret                                                              // 0x007116bf    c3
_jmp_addr_0x007116c0:    {disp32} mov       eax, dword ptr [_game]                        // 0x007116c0    a15c19d000
                         {disp32} mov       eax, dword ptr [eax + 0x00205a40]             // 0x007116c5    8b80405a2000
                         sub                eax, dword ptr [ecx + 0x28]                   // 0x007116cb    2b4128
                         ret                                                              // 0x007116ce    c3
                         nop                                                              // 0x007116cf    90
_jmp_addr_0x007116d0:    sub                esp, 0x08                                     // 0x007116d0    83ec08
                         call               _jmp_addr_0x007116c0                          // 0x007116d3    e8e8ffffff
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x007116d8    89442400
                         {disp8} fild       dword ptr [esp + 0x00]                        // 0x007116dc    db442400
                         {disp32} mov       eax, dword ptr [data_bytes + 0x33ba38]        // 0x007116e0    a1381ad000
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x007116e5    89442400
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x007116e9    c744240400000000
                         {disp8} fimul      dword ptr [esp + 0x00]                        // 0x007116f1    da4c2400
                         {disp32} fmul      dword ptr [_rdata_float0p001]                 // 0x007116f5    d80db0a38a00
                         add                esp, 0x08                                     // 0x007116fb    83c408
                         ret                                                              // 0x007116fe    c3
                         nop                                                              // 0x007116ff    90
?Save@ScriptTimer@@UAEIAAVGameOSFile@@@Z:
                         push               ebx                                           // 0x00711700    53
                         push               esi                                           // 0x00711701    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x00711702    8b74240c
                         mov.s              ebx, ecx                                      // 0x00711706    8bd9
                         push               esi                                           // 0x00711708    56
                         call               ?Save@GameThingWithPos@@UAEXPAUGameOSFile@@@Z // 0x00711709    e8e2ece5ff
                         test               eax, eax                                      // 0x0071170e    85c0
                         {disp32} je        _jmp_addr_0x0071179a                          // 0x00711710    0f8484000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x00711716    a190c9be00
                         test               eax, eax                                      // 0x0071171b    85c0
                         push               edi                                           // 0x0071171d    57
                         {disp8} je         _jmp_addr_0x0071178f                          // 0x0071171e    746f
                         push               0x0                                           // 0x00711720    6a00
                         push               0x4                                           // 0x00711722    6a04
                         {disp8} lea        edi, dword ptr [ebx + 0x28]                   // 0x00711724    8d7b28
                         push               edi                                           // 0x00711727    57
                         mov.s              ecx, esi                                      // 0x00711728    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0071172a    e8f1b10a00
                         cmp                eax, 0x03                                     // 0x0071172f    83f803
                         {disp8} jne        _jmp_addr_0x0071173e                          // 0x00711732    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226990], 0x00000000 // 0x00711734    c70590c9be0000000000
_jmp_addr_0x0071173e:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0071173e    8b8e14020000
                         xor.s              eax, eax                                      // 0x00711744    33c0
                         mov                al, byte ptr [edi]                            // 0x00711746    8a07
                         add                eax, 0x04                                     // 0x00711748    83c004
                         add.s              ecx, eax                                      // 0x0071174b    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0071174d    898e14020000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x00711753    a190c9be00
                         test               eax, eax                                      // 0x00711758    85c0
                         {disp8} je         _jmp_addr_0x0071178f                          // 0x0071175a    7433
                         push               0x0                                           // 0x0071175c    6a00
                         push               0x4                                           // 0x0071175e    6a04
                         {disp8} lea        edi, dword ptr [ebx + 0x2c]                   // 0x00711760    8d7b2c
                         push               edi                                           // 0x00711763    57
                         mov.s              ecx, esi                                      // 0x00711764    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x00711766    e8b5b10a00
                         cmp                eax, 0x03                                     // 0x0071176b    83f803
                         {disp8} jne        _jmp_addr_0x0071177a                          // 0x0071176e    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226990], 0x00000000 // 0x00711770    c70590c9be0000000000
_jmp_addr_0x0071177a:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0071177a    8b8614020000
                         xor.s              ecx, ecx                                      // 0x00711780    33c9
                         mov                cl, byte ptr [edi]                            // 0x00711782    8a0f
                         add                ecx, 0x4                                      // 0x00711784    83c104
                         add.s              eax, ecx                                      // 0x00711787    03c1
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x00711789    898614020000
_jmp_addr_0x0071178f:    pop                edi                                           // 0x0071178f    5f
                         pop                esi                                           // 0x00711790    5e
                         mov                eax, 0x00000001                               // 0x00711791    b801000000
                         pop                ebx                                           // 0x00711796    5b
                         ret                0x0004                                        // 0x00711797    c20400
_jmp_addr_0x0071179a:    pop                esi                                           // 0x0071179a    5e
                         xor.s              eax, eax                                      // 0x0071179b    33c0
                         pop                ebx                                           // 0x0071179d    5b
                         ret                0x0004                                        // 0x0071179e    c20400
                         nop                                                              // 0x007117a1    90
                         nop                                                              // 0x007117a2    90
                         nop                                                              // 0x007117a3    90
                         nop                                                              // 0x007117a4    90
                         nop                                                              // 0x007117a5    90
                         nop                                                              // 0x007117a6    90
                         nop                                                              // 0x007117a7    90
                         nop                                                              // 0x007117a8    90
                         nop                                                              // 0x007117a9    90
                         nop                                                              // 0x007117aa    90
                         nop                                                              // 0x007117ab    90
                         nop                                                              // 0x007117ac    90
                         nop                                                              // 0x007117ad    90
                         nop                                                              // 0x007117ae    90
                         nop                                                              // 0x007117af    90
?Load@ScriptTimer@@UAEIAAVGameOSFile@@@Z:
                         push               ebx                                           // 0x007117b0    53
                         push               esi                                           // 0x007117b1    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x007117b2    8b74240c
                         mov.s              ebx, ecx                                      // 0x007117b6    8bd9
                         push               esi                                           // 0x007117b8    56
                         call               ?Load@GameThingWithPos@@QAEIAAVGameOSFile@@@Z // 0x007117b9    e8e2ece5ff
                         test               eax, eax                                      // 0x007117be    85c0
                         {disp32} je        _jmp_addr_0x0071184a                          // 0x007117c0    0f8484000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x007117c6    a194c9be00
                         test               eax, eax                                      // 0x007117cb    85c0
                         push               edi                                           // 0x007117cd    57
                         {disp8} lea        edi, dword ptr [ebx + 0x28]                   // 0x007117ce    8d7b28
                         {disp8} je         _jmp_addr_0x00711803                          // 0x007117d1    7430
                         push               0x0                                           // 0x007117d3    6a00
                         push               0x4                                           // 0x007117d5    6a04
                         push               edi                                           // 0x007117d7    57
                         mov.s              ecx, esi                                      // 0x007117d8    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x007117da    e801b10a00
                         cmp                eax, 0x03                                     // 0x007117df    83f803
                         {disp8} jne        _jmp_addr_0x007117ee                          // 0x007117e2    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226994], 0x00000000 // 0x007117e4    c70594c9be0000000000
_jmp_addr_0x007117ee:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x007117ee    8b8e14020000
                         xor.s              eax, eax                                      // 0x007117f4    33c0
                         mov                al, byte ptr [edi]                            // 0x007117f6    8a07
                         add                eax, 0x04                                     // 0x007117f8    83c004
                         add.s              ecx, eax                                      // 0x007117fb    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x007117fd    898e14020000
_jmp_addr_0x00711803:    {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x00711803    a194c9be00
                         test               eax, eax                                      // 0x00711808    85c0
                         {disp8} lea        edi, dword ptr [ebx + 0x2c]                   // 0x0071180a    8d7b2c
                         {disp8} je         _jmp_addr_0x0071183f                          // 0x0071180d    7430
                         push               0x0                                           // 0x0071180f    6a00
                         push               0x4                                           // 0x00711811    6a04
                         push               edi                                           // 0x00711813    57
                         mov.s              ecx, esi                                      // 0x00711814    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x00711816    e8c5b00a00
                         cmp                eax, 0x03                                     // 0x0071181b    83f803
                         {disp8} jne        _jmp_addr_0x0071182a                          // 0x0071181e    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226994], 0x00000000 // 0x00711820    c70594c9be0000000000
_jmp_addr_0x0071182a:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0071182a    8b8614020000
                         xor.s              ecx, ecx                                      // 0x00711830    33c9
                         mov                cl, byte ptr [edi]                            // 0x00711832    8a0f
                         add                ecx, 0x4                                      // 0x00711834    83c104
                         add.s              eax, ecx                                      // 0x00711837    03c1
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x00711839    898614020000
_jmp_addr_0x0071183f:    pop                edi                                           // 0x0071183f    5f
                         pop                esi                                           // 0x00711840    5e
                         mov                eax, 0x00000001                               // 0x00711841    b801000000
                         pop                ebx                                           // 0x00711846    5b
                         ret                0x0004                                        // 0x00711847    c20400
_jmp_addr_0x0071184a:    pop                esi                                           // 0x0071184a    5e
                         xor.s              eax, eax                                      // 0x0071184b    33c0
                         pop                ebx                                           // 0x0071184d    5b
                         ret                0x0004                                        // 0x0071184e    c20400
                         nop                                                              // 0x00711851    90
                         nop                                                              // 0x00711852    90
                         nop                                                              // 0x00711853    90
                         nop                                                              // 0x00711854    90
                         nop                                                              // 0x00711855    90
                         nop                                                              // 0x00711856    90
                         nop                                                              // 0x00711857    90
                         nop                                                              // 0x00711858    90
                         nop                                                              // 0x00711859    90
                         nop                                                              // 0x0071185a    90
                         nop                                                              // 0x0071185b    90
                         nop                                                              // 0x0071185c    90
                         nop                                                              // 0x0071185d    90
                         nop                                                              // 0x0071185e    90
                         nop                                                              // 0x0071185f    90
_globl_ct_0x00711860:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x00711860    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x00711866    b001
                         test               al, cl                                        // 0x00711868    84c8
                         {disp8} jne        _jmp_addr_0x00711874                          // 0x0071186a    7508
                         or.s               cl, al                                        // 0x0071186c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x0071186e    880d34c9fa00
_jmp_addr_0x00711874:    {disp32} jmp       _jmp_addr_0x00711880                          // 0x00711874    e907000000
                         nop                                                              // 0x00711879    90
                         nop                                                              // 0x0071187a    90
                         nop                                                              // 0x0071187b    90
                         nop                                                              // 0x0071187c    90
                         nop                                                              // 0x0071187d    90
                         nop                                                              // 0x0071187e    90
                         nop                                                              // 0x0071187f    90
_jmp_addr_0x00711880:    push               0x00407870                                    // 0x00711880    6870784000
                         call               _atexit                                       // 0x00711885    e8073f0b00
                         pop                ecx                                           // 0x0071188a    59
                         ret                                                              // 0x0071188b    c3
                         nop                                                              // 0x0071188c    90
                         nop                                                              // 0x0071188d    90
                         nop                                                              // 0x0071188e    90
                         nop                                                              // 0x0071188f    90
_globl_ct_0x00711890:    call               _jmp_addr_0x007118a0                          // 0x00711890    e80b000000
                         {disp32} jmp       _jmp_addr_0x007118b0                          // 0x00711895    e916000000
                         nop                                                              // 0x0071189a    90
                         nop                                                              // 0x0071189b    90
                         nop                                                              // 0x0071189c    90
                         nop                                                              // 0x0071189d    90
                         nop                                                              // 0x0071189e    90
                         nop                                                              // 0x0071189f    90
_jmp_addr_0x007118a0:    mov                ecx, 0x00d99038                               // 0x007118a0    b93890d900
                         {disp32} jmp       _jmp_addr_0x007118e0                          // 0x007118a5    e936000000
                         nop                                                              // 0x007118aa    90
                         nop                                                              // 0x007118ab    90
                         nop                                                              // 0x007118ac    90
                         nop                                                              // 0x007118ad    90
                         nop                                                              // 0x007118ae    90
                         nop                                                              // 0x007118af    90
_jmp_addr_0x007118b0:    push               0x007118c0                                    // 0x007118b0    68c0187100
                         call               _atexit                                       // 0x007118b5    e8d73e0b00
                         pop                ecx                                           // 0x007118ba    59
                         ret                                                              // 0x007118bb    c3
                         nop                                                              // 0x007118bc    90
                         nop                                                              // 0x007118bd    90
                         nop                                                              // 0x007118be    90
                         nop                                                              // 0x007118bf    90
                         {disp32} mov       cl, byte ptr [data_bytes + 0x3d303c]          // 0x007118c0    8a0d3c90d900
                         mov                al, 0x01                                      // 0x007118c6    b001
                         test               al, cl                                        // 0x007118c8    84c8
                         {disp8} jne        _jmp_addr_0x007118de                          // 0x007118ca    7512
                         or.s               cl, al                                        // 0x007118cc    0ac8
                         {disp32} mov       byte ptr [data_bytes + 0x3d303c], cl          // 0x007118ce    880d3c90d900
                         mov                ecx, 0x00d99038                               // 0x007118d4    b93890d900
                         {disp32} jmp       _jmp_addr_0x00711d80                          // 0x007118d9    e9a2040000
_jmp_addr_0x007118de:    ret                                                              // 0x007118de    c3
                         nop                                                              // 0x007118df    90
_jmp_addr_0x007118e0:    sub                esp, 0x18                                     // 0x007118e0    83ec18
                         push               ebx                                           // 0x007118e3    53
                         push               ebp                                           // 0x007118e4    55
                         push               esi                                           // 0x007118e5    56
                         mov.s              esi, ecx                                      // 0x007118e6    8bf1
                         push               edi                                           // 0x007118e8    57
                         mov                dword ptr [esi], 0x0095726c                   // 0x007118e9    c7066c729500
                         call               dword ptr [rdata_bytes + 0x3b0]               // 0x007118ef    ff15b0938a00
                         {disp32} mov       ebx, dword ptr [__imp__LHRegistrySetCurrentKey__YAXW4LH_REG_KEY_TYPE___Z@4]          // 0x007118f5    8b1db4938a00
                         push               0x0                                           // 0x007118fb    6a00
                         mov.s              edi, eax                                      // 0x007118fd    8bf8
                         call               ebx                                           // 0x007118ff    ffd3
                         {disp32} mov       ebp, dword ptr [rdata_bytes + 0x380]          // 0x00711901    8b2d80938a00
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x00711907    8d442414
                         push               eax                                           // 0x0071190b    50
                         push               0x00c20be4                                    // 0x0071190c    68e40bc200
                         push               0x009caff8                                    // 0x00711911    68f8af9c00
                         call               ebp                                           // 0x00711916    ffd5
                         add                esp, 0x10                                     // 0x00711918    83c410
                         cmp                eax, 0x02                                     // 0x0071191b    83f802
                         {disp8} je         _jmp_addr_0x0071198c                          // 0x0071191e    746c
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x00711920    8d4c2418
                         push               ecx                                           // 0x00711924    51
                         push               0x00c20bd8                                    // 0x00711925    68d80bc200
                         push               0x009caff8                                    // 0x0071192a    68f8af9c00
                         call               ebp                                           // 0x0071192f    ffd5
                         add                esp, 0x0c                                     // 0x00711931    83c40c
                         cmp                eax, 0x02                                     // 0x00711934    83f802
                         {disp8} je         _jmp_addr_0x0071198c                          // 0x00711937    7453
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00711939    8b442414
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0071193d    8b4c2410
                         {disp8} lea        edx, dword ptr [esp + 0x20]                   // 0x00711941    8d542420
                         push               edx                                           // 0x00711945    52
                         push               eax                                           // 0x00711946    50
                         push               ecx                                           // 0x00711947    51
                         call               _jmp_addr_0x007119d0                          // 0x00711948    e883000000
                         {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x0071194d    8b542420
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x00711951    8b44241c
                         push               edx                                           // 0x00711955    52
                         push               eax                                           // 0x00711956    50
                         call               _jmp_addr_0x00711b50                          // 0x00711957    e8f4010000
                         push               edx                                           // 0x0071195c    52
                         push               eax                                           // 0x0071195d    50
                         {disp8} mov        dword ptr [esp + 0x2c], eax                   // 0x0071195e    8944242c
                         {disp8} mov        dword ptr [esp + 0x30], edx                   // 0x00711962    89542430
                         call               _jmp_addr_0x00711a80                          // 0x00711966    e815010000
                         {disp8} mov        ecx, dword ptr [esp + 0x34]                   // 0x0071196b    8b4c2434
                         {disp8} mov        ebp, dword ptr [esp + 0x3c]                   // 0x0071196f    8b6c243c
                         add                esp, 0x1c                                     // 0x00711973    83c41c
                         cmp.s              ecx, ebp                                      // 0x00711976    3bcd
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00711978    89442410
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x0071197c    89542414
                         {disp8} jne        _jmp_addr_0x0071198c                          // 0x00711980    750a
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x00711982    8b4c241c
                         cmp                ecx, dword ptr [esp + 0x24]                   // 0x00711986    3b4c2424
                         {disp8} je         _jmp_addr_0x007119a8                          // 0x0071198a    741c
_jmp_addr_0x0071198c:    push               edi                                           // 0x0071198c    57
                         call               ebx                                           // 0x0071198d    ffd3
                         add                esp, 0x04                                     // 0x0071198f    83c404
                         xor.s              eax, eax                                      // 0x00711992    33c0
                         pop                edi                                           // 0x00711994    5f
                         {disp32} mov       dword ptr [data_bytes + 0x3d3040], eax        // 0x00711995    a34090d900
                         {disp32} mov       dword ptr [data_bytes + 0x3d3044], eax        // 0x0071199a    a34490d900
                         mov.s              eax, esi                                      // 0x0071199f    8bc6
                         pop                esi                                           // 0x007119a1    5e
                         pop                ebp                                           // 0x007119a2    5d
                         pop                ebx                                           // 0x007119a3    5b
                         add                esp, 0x18                                     // 0x007119a4    83c418
                         ret                                                              // 0x007119a7    c3
_jmp_addr_0x007119a8:    push               edi                                           // 0x007119a8    57
                         {disp32} mov       dword ptr [data_bytes + 0x3d3040], eax        // 0x007119a9    a34090d900
                         {disp32} mov       dword ptr [data_bytes + 0x3d3044], edx        // 0x007119ae    89154490d900
                         call               ebx                                           // 0x007119b4    ffd3
                         add                esp, 0x04                                     // 0x007119b6    83c404
                         pop                edi                                           // 0x007119b9    5f
                         mov.s              eax, esi                                      // 0x007119ba    8bc6
                         pop                esi                                           // 0x007119bc    5e
                         pop                ebp                                           // 0x007119bd    5d
                         pop                ebx                                           // 0x007119be    5b
                         add                esp, 0x18                                     // 0x007119bf    83c418
                         ret                                                              // 0x007119c2    c3
                         nop                                                              // 0x007119c3    90
                         nop                                                              // 0x007119c4    90
                         nop                                                              // 0x007119c5    90
                         nop                                                              // 0x007119c6    90
                         nop                                                              // 0x007119c7    90
                         nop                                                              // 0x007119c8    90
                         nop                                                              // 0x007119c9    90
                         nop                                                              // 0x007119ca    90
                         nop                                                              // 0x007119cb    90
                         nop                                                              // 0x007119cc    90
                         nop                                                              // 0x007119cd    90
                         nop                                                              // 0x007119ce    90
                         nop                                                              // 0x007119cf    90
_jmp_addr_0x007119d0:    push               ecx                                           // 0x007119d0    51
                         push               ebx                                           // 0x007119d1    53
                         push               ebp                                           // 0x007119d2    55
                         push               esi                                           // 0x007119d3    56
                         {disp8} mov        esi, dword ptr [esp + 0x18]                   // 0x007119d4    8b742418
                         push               edi                                           // 0x007119d8    57
                         {disp8} mov        edi, dword ptr [esp + 0x18]                   // 0x007119d9    8b7c2418
                         push               0x0                                           // 0x007119dd    6a00
                         push               0x30                                          // 0x007119df    6a30
                         push               esi                                           // 0x007119e1    56
                         push               edi                                           // 0x007119e2    57
                         call               __allrem                                      // 0x007119e3    e868860b00
                         push               0x0                                           // 0x007119e8    6a00
                         push               0x000007d0                                    // 0x007119ea    68d0070000
                         push               esi                                           // 0x007119ef    56
                         push               edi                                           // 0x007119f0    57
                         mov.s              ebx, eax                                      // 0x007119f1    8bd8
                         call               __alldiv                                      // 0x007119f3    e808630b00
                         mov.s              ecx, ebx                                      // 0x007119f8    8bcb
                         call               __allshl                                      // 0x007119fa    e831860b00
                         push               0x0                                           // 0x007119ff    6a00
                         push               0x78                                          // 0x00711a01    6a78
                         push               esi                                           // 0x00711a03    56
                         push               edi                                           // 0x00711a04    57
                         mov.s              ebx, eax                                      // 0x00711a05    8bd8
                         mov.s              ebp, edx                                      // 0x00711a07    8bea
                         call               __allrem                                      // 0x00711a09    e842860b00
                         {disp8} mov        dword ptr [esp + 0x10], ebx                   // 0x00711a0e    895c2410
                         mov.s              ebx, eax                                      // 0x00711a12    8bd8
                         mov                ecx, 0x00000005                               // 0x00711a14    b905000000
                         mov.s              eax, edi                                      // 0x00711a19    8bc7
                         mov.s              edx, esi                                      // 0x00711a1b    8bd6
                         call               __allshl                                      // 0x00711a1d    e80e860b00
                         mov.s              ecx, ebx                                      // 0x00711a22    8bcb
                         call               __allshl                                      // 0x00711a24    e807860b00
                         {disp8} mov        ebx, dword ptr [esp + 0x10]                   // 0x00711a29    8b5c2410
                         push               0x0                                           // 0x00711a2d    6a00
                         push               0x25                                          // 0x00711a2f    6a25
                         push               esi                                           // 0x00711a31    56
                         push               edi                                           // 0x00711a32    57
                         or.s               ebx, eax                                      // 0x00711a33    0bd8
                         or.s               ebp, edx                                      // 0x00711a35    0bea
                         call               __allrem                                      // 0x00711a37    e814860b00
                         push               0x0                                           // 0x00711a3c    6a00
                         push               0x2                                           // 0x00711a3e    6a02
                         push               esi                                           // 0x00711a40    56
                         {disp8} mov        dword ptr [esp + 0x24], ebx                   // 0x00711a41    895c2424
                         push               edi                                           // 0x00711a45    57
                         mov.s              ebx, eax                                      // 0x00711a46    8bd8
                         call               __allmul                                      // 0x00711a48    e833840b00
                         mov.s              ecx, ebx                                      // 0x00711a4d    8bcb
                         call               __allshr                                      // 0x00711a4f    e8ac850b00
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x00711a54    8b4c2418
                         or.s               ecx, eax                                      // 0x00711a58    0bc8
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x00711a5a    8b442420
                         or.s               ebp, edx                                      // 0x00711a5e    0bea
                         pop                edi                                           // 0x00711a60    5f
                         xor                ecx, 0x004e0044                               // 0x00711a61    81f144004e00
                         xor                ebp, 0x00440041                               // 0x00711a67    81f541004400
                         pop                esi                                           // 0x00711a6d    5e
                         mov                dword ptr [eax], ecx                          // 0x00711a6e    8908
                         {disp8} mov        dword ptr [eax + 0x04], ebp                   // 0x00711a70    896804
                         pop                ebp                                           // 0x00711a73    5d
                         pop                ebx                                           // 0x00711a74    5b
                         pop                ecx                                           // 0x00711a75    59
                         ret                                                              // 0x00711a76    c3
                         nop                                                              // 0x00711a77    90
                         nop                                                              // 0x00711a78    90
                         nop                                                              // 0x00711a79    90
                         nop                                                              // 0x00711a7a    90
                         nop                                                              // 0x00711a7b    90
                         nop                                                              // 0x00711a7c    90
                         nop                                                              // 0x00711a7d    90
                         nop                                                              // 0x00711a7e    90
                         nop                                                              // 0x00711a7f    90
_jmp_addr_0x00711a80:    {disp32} mov       ecx, dword ptr [rdata_bytes + 0xae264]        // 0x00711a80    8b0d64729500
                         push               esi                                           // 0x00711a86    56
                         push               edi                                           // 0x00711a87    57
                         mov                eax, 0x00000001                               // 0x00711a88    b801000000
                         xor.s              edx, edx                                      // 0x00711a8d    33d2
                         call               __allshl                                      // 0x00711a8f    e89c850b00
                         {disp32} mov       ecx, dword ptr [rdata_bytes + 0xae260]        // 0x00711a94    8b0d60729500
                         mov.s              esi, eax                                      // 0x00711a9a    8bf0
                         mov.s              edi, edx                                      // 0x00711a9c    8bfa
                         mov                eax, 0x00000001                               // 0x00711a9e    b801000000
                         xor.s              edx, edx                                      // 0x00711aa3    33d2
                         call               __allshl                                      // 0x00711aa5    e886850b00
                         {disp32} mov       ecx, dword ptr [rdata_bytes + 0xae25c]        // 0x00711aaa    8b0d5c729500
                         or.s               esi, eax                                      // 0x00711ab0    0bf0
                         or.s               edi, edx                                      // 0x00711ab2    0bfa
                         mov                eax, 0x00000001                               // 0x00711ab4    b801000000
                         xor.s              edx, edx                                      // 0x00711ab9    33d2
                         call               __allshl                                      // 0x00711abb    e870850b00
                         {disp32} mov       ecx, dword ptr [rdata_bytes + 0xae258]        // 0x00711ac0    8b0d58729500
                         or.s               esi, eax                                      // 0x00711ac6    0bf0
                         or.s               edi, edx                                      // 0x00711ac8    0bfa
                         mov                eax, 0x00000001                               // 0x00711aca    b801000000
                         xor.s              edx, edx                                      // 0x00711acf    33d2
                         call               __allshl                                      // 0x00711ad1    e85a850b00
                         {disp32} mov       ecx, dword ptr [rdata_bytes + 0xae254]        // 0x00711ad6    8b0d54729500
                         or.s               esi, eax                                      // 0x00711adc    0bf0
                         or.s               edi, edx                                      // 0x00711ade    0bfa
                         mov                eax, 0x00000001                               // 0x00711ae0    b801000000
                         xor.s              edx, edx                                      // 0x00711ae5    33d2
                         call               __allshl                                      // 0x00711ae7    e844850b00
                         {disp32} mov       ecx, dword ptr [rdata_bytes + 0xae250]        // 0x00711aec    8b0d50729500
                         or.s               esi, eax                                      // 0x00711af2    0bf0
                         or.s               edi, edx                                      // 0x00711af4    0bfa
                         mov                eax, 0x00000001                               // 0x00711af6    b801000000
                         xor.s              edx, edx                                      // 0x00711afb    33d2
                         call               __allshl                                      // 0x00711afd    e82e850b00
                         {disp32} mov       ecx, dword ptr [rdata_bytes + 0xae24c]        // 0x00711b02    8b0d4c729500
                         or.s               esi, eax                                      // 0x00711b08    0bf0
                         or.s               edi, edx                                      // 0x00711b0a    0bfa
                         mov                eax, 0x00000001                               // 0x00711b0c    b801000000
                         xor.s              edx, edx                                      // 0x00711b11    33d2
                         call               __allshl                                      // 0x00711b13    e818850b00
                         {disp32} mov       ecx, dword ptr [rdata_bytes + 0xae248]        // 0x00711b18    8b0d48729500
                         or.s               esi, eax                                      // 0x00711b1e    0bf0
                         or.s               edi, edx                                      // 0x00711b20    0bfa
                         mov                eax, 0x00000001                               // 0x00711b22    b801000000
                         xor.s              edx, edx                                      // 0x00711b27    33d2
                         call               __allshl                                      // 0x00711b29    e802850b00
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x00711b2e    8b4c240c
                         or.s               esi, eax                                      // 0x00711b32    0bf0
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00711b34    8b442410
                         or.s               edi, edx                                      // 0x00711b38    0bfa
                         and.s              edi, eax                                      // 0x00711b3a    23f8
                         and.s              esi, ecx                                      // 0x00711b3c    23f1
                         mov.s              edx, edi                                      // 0x00711b3e    8bd7
                         pop                edi                                           // 0x00711b40    5f
                         mov.s              eax, esi                                      // 0x00711b41    8bc6
                         pop                esi                                           // 0x00711b43    5e
                         ret                                                              // 0x00711b44    c3
                         nop                                                              // 0x00711b45    90
                         nop                                                              // 0x00711b46    90
                         nop                                                              // 0x00711b47    90
                         nop                                                              // 0x00711b48    90
                         nop                                                              // 0x00711b49    90
                         nop                                                              // 0x00711b4a    90
                         nop                                                              // 0x00711b4b    90
                         nop                                                              // 0x00711b4c    90
                         nop                                                              // 0x00711b4d    90
                         nop                                                              // 0x00711b4e    90
                         nop                                                              // 0x00711b4f    90
_jmp_addr_0x00711b50:    sub                esp, 0x00000104                               // 0x00711b50    81ec04010000
                         push               ebx                                           // 0x00711b56    53
                         push               ebp                                           // 0x00711b57    55
                         push               esi                                           // 0x00711b58    56
                         push               edi                                           // 0x00711b59    57
                         {disp8} mov        byte ptr [esp + 0x14], 0x00                   // 0x00711b5a    c644241400
                         xor.s              eax, eax                                      // 0x00711b5f    33c0
                         mov                ecx, 0x0000003f                               // 0x00711b61    b93f000000
                         {disp8} lea        edi, dword ptr [esp + 0x15]                   // 0x00711b66    8d7c2415
                         rep stosd                                                        // 0x00711b6a    f3ab
                         {disp8} mov        dword ptr [esp + 0x10], 0x000000ff            // 0x00711b6c    c7442410ff000000
                         stosw                                                            // 0x00711b74    66ab
                         call               dword ptr [rdata_bytes + 0x3b0]               // 0x00711b76    ff15b0938a00
                         {disp32} mov       ebp, dword ptr [__imp__LHRegistrySetCurrentKey__YAXW4LH_REG_KEY_TYPE___Z@4]          // 0x00711b7c    8b2db4938a00
                         push               0x2                                           // 0x00711b82    6a02
                         mov.s              ebx, eax                                      // 0x00711b84    8bd8
                         call               ebp                                           // 0x00711b86    ffd5
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x00711b88    8d442414
                         push               eax                                           // 0x00711b8c    50
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x00711b8d    8d4c241c
                         push               ecx                                           // 0x00711b91    51
                         push               0x00be9c08                                    // 0x00711b92    68089cbe00
                         push               0x00c20bf4                                    // 0x00711b97    68f40bc200
                         call               dword ptr [rdata_bytes + 0x3b8]               // 0x00711b9c    ff15b8938a00
                         {disp8} lea        edx, dword ptr [esp + 0x28]                   // 0x00711ba2    8d542428
                         push               edx                                           // 0x00711ba6    52
                         call               _jmp_addr_0x00711be0                          // 0x00711ba7    e834000000
                         push               edx                                           // 0x00711bac    52
                         push               eax                                           // 0x00711bad    50
                         call               _jmp_addr_0x00711c90                          // 0x00711bae    e8dd000000
                         mov.s              esi, eax                                      // 0x00711bb3    8bf0
                         {disp32} mov       eax, dword ptr [esp + 0x00000138]             // 0x00711bb5    8b842438010000
                         mov.s              edi, edx                                      // 0x00711bbc    8bfa
                         {disp32} mov       edx, dword ptr [esp + 0x0000013c]             // 0x00711bbe    8b94243c010000
                         push               ebx                                           // 0x00711bc5    53
                         or.s               esi, eax                                      // 0x00711bc6    0bf0
                         or.s               edi, edx                                      // 0x00711bc8    0bfa
                         call               ebp                                           // 0x00711bca    ffd5
                         add                esp, 0x24                                     // 0x00711bcc    83c424
                         mov.s              edx, edi                                      // 0x00711bcf    8bd7
                         pop                edi                                           // 0x00711bd1    5f
                         mov.s              eax, esi                                      // 0x00711bd2    8bc6
                         pop                esi                                           // 0x00711bd4    5e
                         pop                ebp                                           // 0x00711bd5    5d
                         pop                ebx                                           // 0x00711bd6    5b
                         add                esp, 0x00000104                               // 0x00711bd7    81c404010000
                         ret                                                              // 0x00711bdd    c3
                         nop                                                              // 0x00711bde    90
                         nop                                                              // 0x00711bdf    90
_jmp_addr_0x00711be0:    sub                esp, 0x08                                     // 0x00711be0    83ec08
                         push               ebx                                           // 0x00711be3    53
                         push               ebp                                           // 0x00711be4    55
                         push               esi                                           // 0x00711be5    56
                         {disp8} mov        esi, dword ptr [esp + 0x18]                   // 0x00711be6    8b742418
                         or                 ecx, 0xffffffff                               // 0x00711bea    83c9ff
                         push               edi                                           // 0x00711bed    57
                         xor.s              ebx, ebx                                      // 0x00711bee    33db
                         xor.s              eax, eax                                      // 0x00711bf0    33c0
                         xor.s              ebp, ebp                                      // 0x00711bf2    33ed
                         mov.s              edi, esi                                      // 0x00711bf4    8bfe
                         repne scasb                                                      // 0x00711bf6    f2ae
                         not                ecx                                           // 0x00711bf8    f7d1
                         dec                ecx                                           // 0x00711bfa    49
                         test               ecx, ecx                                      // 0x00711bfb    85c9
                         {disp8} mov        dword ptr [esp + 0x14], ebx                   // 0x00711bfd    895c2414
                         {disp8} jle        _jmp_addr_0x00711c2f                          // 0x00711c01    7e2c
_jmp_addr_0x00711c03:    movsx              ecx, byte ptr [ebx + esi * 0x1]               // 0x00711c03    0fbe0c33
                         imul               ecx, ebx                                      // 0x00711c07    0fafcb
                         mov.s              eax, ecx                                      // 0x00711c0a    8bc1
                         shl                eax, 8                                        // 0x00711c0c    c1e008
                         sub.s              eax, ecx                                      // 0x00711c0f    2bc1
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x00711c11    8b4c2414
                         cdq                                                              // 0x00711c15    99
                         add.s              ebp, eax                                      // 0x00711c16    03e8
                         adc.s              ecx, edx                                      // 0x00711c18    13ca
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x00711c1a    894c2414
                         or                 ecx, 0xffffffff                               // 0x00711c1e    83c9ff
                         xor.s              eax, eax                                      // 0x00711c21    33c0
                         inc                ebx                                           // 0x00711c23    43
                         mov.s              edi, esi                                      // 0x00711c24    8bfe
                         repne scasb                                                      // 0x00711c26    f2ae
                         not                ecx                                           // 0x00711c28    f7d1
                         dec                ecx                                           // 0x00711c2a    49
                         cmp.s              ebx, ecx                                      // 0x00711c2b    3bd9
                         {disp8} jl         _jmp_addr_0x00711c03                          // 0x00711c2d    7cd4
_jmp_addr_0x00711c2f:    or                 ecx, 0xffffffff                               // 0x00711c2f    83c9ff
                         xor.s              eax, eax                                      // 0x00711c32    33c0
                         xor.s              ebx, ebx                                      // 0x00711c34    33db
                         mov.s              edi, esi                                      // 0x00711c36    8bfe
                         repne scasb                                                      // 0x00711c38    f2ae
                         not                ecx                                           // 0x00711c3a    f7d1
                         dec                ecx                                           // 0x00711c3c    49
                         test               ecx, ecx                                      // 0x00711c3d    85c9
                         {disp8} jle        _jmp_addr_0x00711c7c                          // 0x00711c3f    7e3b
                         xor.s              edi, edi                                      // 0x00711c41    33ff
                         {disp8} jmp        _jmp_addr_0x00711c49                          // 0x00711c43    eb04
_jmp_addr_0x00711c45:    {disp8} mov        edi, dword ptr [esp + 0x1c]                   // 0x00711c45    8b7c241c
_jmp_addr_0x00711c49:    movsx              eax, byte ptr [ebx + esi * 0x1]               // 0x00711c49    0fbe0433
                         mov.s              ecx, edi                                      // 0x00711c4d    8bcf
                         cdq                                                              // 0x00711c4f    99
                         and                ecx, 0x40                                     // 0x00711c50    83e140
                         call               __allshl                                      // 0x00711c53    e8d8830b00
                         or.s               ebp, eax                                      // 0x00711c58    0be8
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00711c5a    8b442414
                         or.s               eax, edx                                      // 0x00711c5e    0bc2
                         add                edi, 0x03                                     // 0x00711c60    83c703
                         or                 ecx, 0xffffffff                               // 0x00711c63    83c9ff
                         {disp8} mov        dword ptr [esp + 0x1c], edi                   // 0x00711c66    897c241c
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x00711c6a    89442414
                         xor.s              eax, eax                                      // 0x00711c6e    33c0
                         inc                ebx                                           // 0x00711c70    43
                         mov.s              edi, esi                                      // 0x00711c71    8bfe
                         repne scasb                                                      // 0x00711c73    f2ae
                         not                ecx                                           // 0x00711c75    f7d1
                         dec                ecx                                           // 0x00711c77    49
                         cmp.s              ebx, ecx                                      // 0x00711c78    3bd9
                         {disp8} jl         _jmp_addr_0x00711c45                          // 0x00711c7a    7cc9
_jmp_addr_0x00711c7c:    {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x00711c7c    8b542414
                         pop                edi                                           // 0x00711c80    5f
                         pop                esi                                           // 0x00711c81    5e
                         mov.s              eax, ebp                                      // 0x00711c82    8bc5
                         pop                ebp                                           // 0x00711c84    5d
                         pop                ebx                                           // 0x00711c85    5b
                         add                esp, 0x08                                     // 0x00711c86    83c408
                         ret                                                              // 0x00711c89    c3
                         nop                                                              // 0x00711c8a    90
                         nop                                                              // 0x00711c8b    90
                         nop                                                              // 0x00711c8c    90
                         nop                                                              // 0x00711c8d    90
                         nop                                                              // 0x00711c8e    90
                         nop                                                              // 0x00711c8f    90
_jmp_addr_0x00711c90:    {disp32} mov       ecx, dword ptr [rdata_bytes + 0xae264]        // 0x00711c90    8b0d64729500
                         push               esi                                           // 0x00711c96    56
                         push               edi                                           // 0x00711c97    57
                         mov                eax, 0x00000001                               // 0x00711c98    b801000000
                         xor.s              edx, edx                                      // 0x00711c9d    33d2
                         call               __allshl                                      // 0x00711c9f    e88c830b00
                         {disp32} mov       ecx, dword ptr [rdata_bytes + 0xae260]        // 0x00711ca4    8b0d60729500
                         mov.s              esi, eax                                      // 0x00711caa    8bf0
                         mov.s              edi, edx                                      // 0x00711cac    8bfa
                         mov                eax, 0x00000001                               // 0x00711cae    b801000000
                         xor.s              edx, edx                                      // 0x00711cb3    33d2
                         call               __allshl                                      // 0x00711cb5    e876830b00
                         {disp32} mov       ecx, dword ptr [rdata_bytes + 0xae25c]        // 0x00711cba    8b0d5c729500
                         or.s               esi, eax                                      // 0x00711cc0    0bf0
                         or.s               edi, edx                                      // 0x00711cc2    0bfa
                         mov                eax, 0x00000001                               // 0x00711cc4    b801000000
                         xor.s              edx, edx                                      // 0x00711cc9    33d2
                         call               __allshl                                      // 0x00711ccb    e860830b00
                         {disp32} mov       ecx, dword ptr [rdata_bytes + 0xae258]        // 0x00711cd0    8b0d58729500
                         or.s               esi, eax                                      // 0x00711cd6    0bf0
                         or.s               edi, edx                                      // 0x00711cd8    0bfa
                         mov                eax, 0x00000001                               // 0x00711cda    b801000000
                         xor.s              edx, edx                                      // 0x00711cdf    33d2
                         call               __allshl                                      // 0x00711ce1    e84a830b00
                         {disp32} mov       ecx, dword ptr [rdata_bytes + 0xae254]        // 0x00711ce6    8b0d54729500
                         or.s               esi, eax                                      // 0x00711cec    0bf0
                         or.s               edi, edx                                      // 0x00711cee    0bfa
                         mov                eax, 0x00000001                               // 0x00711cf0    b801000000
                         xor.s              edx, edx                                      // 0x00711cf5    33d2
                         call               __allshl                                      // 0x00711cf7    e834830b00
                         {disp32} mov       ecx, dword ptr [rdata_bytes + 0xae250]        // 0x00711cfc    8b0d50729500
                         or.s               esi, eax                                      // 0x00711d02    0bf0
                         or.s               edi, edx                                      // 0x00711d04    0bfa
                         mov                eax, 0x00000001                               // 0x00711d06    b801000000
                         xor.s              edx, edx                                      // 0x00711d0b    33d2
                         call               __allshl                                      // 0x00711d0d    e81e830b00
                         {disp32} mov       ecx, dword ptr [rdata_bytes + 0xae24c]        // 0x00711d12    8b0d4c729500
                         or.s               esi, eax                                      // 0x00711d18    0bf0
                         or.s               edi, edx                                      // 0x00711d1a    0bfa
                         mov                eax, 0x00000001                               // 0x00711d1c    b801000000
                         xor.s              edx, edx                                      // 0x00711d21    33d2
                         call               __allshl                                      // 0x00711d23    e808830b00
                         {disp32} mov       ecx, dword ptr [rdata_bytes + 0xae248]        // 0x00711d28    8b0d48729500
                         or.s               esi, eax                                      // 0x00711d2e    0bf0
                         or.s               edi, edx                                      // 0x00711d30    0bfa
                         mov                eax, 0x00000001                               // 0x00711d32    b801000000
                         xor.s              edx, edx                                      // 0x00711d37    33d2
                         call               __allshl                                      // 0x00711d39    e8f2820b00
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x00711d3e    8b4c240c
                         or.s               esi, eax                                      // 0x00711d42    0bf0
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00711d44    8b442410
                         or.s               edi, edx                                      // 0x00711d48    0bfa
                         not                edi                                           // 0x00711d4a    f7d7
                         and.s              edi, eax                                      // 0x00711d4c    23f8
                         not                esi                                           // 0x00711d4e    f7d6
                         and.s              esi, ecx                                      // 0x00711d50    23f1
                         mov.s              edx, edi                                      // 0x00711d52    8bd7
                         pop                edi                                           // 0x00711d54    5f
                         mov.s              eax, esi                                      // 0x00711d55    8bc6
                         pop                esi                                           // 0x00711d57    5e
                         ret                                                              // 0x00711d58    c3
                         nop                                                              // 0x00711d59    90
                         nop                                                              // 0x00711d5a    90
                         nop                                                              // 0x00711d5b    90
                         nop                                                              // 0x00711d5c    90
                         nop                                                              // 0x00711d5d    90
                         nop                                                              // 0x00711d5e    90
                         nop                                                              // 0x00711d5f    90
??_GSecretCreature@@UAEPAXI@Z:
                         push               esi                                           // 0x00711d60    56
                         mov.s              esi, ecx                                      // 0x00711d61    8bf1
                         call               _jmp_addr_0x00711d80                          // 0x00711d63    e818000000
                         test               byte ptr [esp + 0x08], 0x01                   // 0x00711d68    f644240801
                         {disp8} je         _jmp_addr_0x00711d78                          // 0x00711d6d    7409
                         push               esi                                           // 0x00711d6f    56
                         call               ??3@YAXPAX@Z                                  // 0x00711d70    e823d10900
                         add                esp, 0x04                                     // 0x00711d75    83c404
_jmp_addr_0x00711d78:    mov.s              eax, esi                                      // 0x00711d78    8bc6
                         pop                esi                                           // 0x00711d7a    5e
                         ret                0x0004                                        // 0x00711d7b    c20400
                         nop                                                              // 0x00711d7e    90
                         nop                                                              // 0x00711d7f    90
_jmp_addr_0x00711d80:    mov                dword ptr [ecx], 0x0095726c                   // 0x00711d80    c7016c729500
                         ret                                                              // 0x00711d86    c3
                         nop                                                              // 0x00711d87    90
                         nop                                                              // 0x00711d88    90
                         nop                                                              // 0x00711d89    90
                         nop                                                              // 0x00711d8a    90
                         nop                                                              // 0x00711d8b    90
                         nop                                                              // 0x00711d8c    90
                         nop                                                              // 0x00711d8d    90
                         nop                                                              // 0x00711d8e    90
                         nop                                                              // 0x00711d8f    90
_jmp_addr_0x00711d90:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00711d90    8b442404
                         {disp32} mov       ecx, dword ptr [eax * 0x4 + 0x00957248]       // 0x00711d94    8b0c8548729500
                         mov                eax, 0x00000001                               // 0x00711d9b    b801000000
                         xor.s              edx, edx                                      // 0x00711da0    33d2
                         call               __allshl                                      // 0x00711da2    e889820b00
                         and                eax, dword ptr [data_bytes + 0x3d3040]        // 0x00711da7    23054090d900
                         and                edx, dword ptr [data_bytes + 0x3d3044]        // 0x00711dad    23154490d900
                         or.s               eax, edx                                      // 0x00711db3    0bc2
                         {disp8} je         _jmp_addr_0x00711dbd                          // 0x00711db5    7406
                         mov                eax, 0x00000001                               // 0x00711db7    b801000000
                         ret                                                              // 0x00711dbc    c3
_jmp_addr_0x00711dbd:    xor.s              eax, eax                                      // 0x00711dbd    33c0
                         ret                                                              // 0x00711dbf    c3
_globl_ct_0x00711dc0:    {disp32} jmp       _jmp_addr_0x00711dd0                          // 0x00711dc0    e90b000000
                         nop                                                              // 0x00711dc5    90
                         nop                                                              // 0x00711dc6    90
                         nop                                                              // 0x00711dc7    90
                         nop                                                              // 0x00711dc8    90
                         nop                                                              // 0x00711dc9    90
                         nop                                                              // 0x00711dca    90
                         nop                                                              // 0x00711dcb    90
                         nop                                                              // 0x00711dcc    90
                         nop                                                              // 0x00711dcd    90
                         nop                                                              // 0x00711dce    90
                         nop                                                              // 0x00711dcf    90
_jmp_addr_0x00711dd0:    {disp32} fld       dword ptr [rdata_bytes + 0xae278]             // 0x00711dd0    d90578729500
                         {disp32} fmul      dword ptr [rdata_bytes + 0xae274]             // 0x00711dd6    d80d74729500
                         {disp32} fstp      dword ptr [data_bytes + 0x3d304c]             // 0x00711ddc    d91d4c90d900
                         ret                                                              // 0x00711de2    c3
                         nop                                                              // 0x00711de3    90
                         nop                                                              // 0x00711de4    90
                         nop                                                              // 0x00711de5    90
                         nop                                                              // 0x00711de6    90
                         nop                                                              // 0x00711de7    90
                         nop                                                              // 0x00711de8    90
                         nop                                                              // 0x00711de9    90
                         nop                                                              // 0x00711dea    90
                         nop                                                              // 0x00711deb    90
                         nop                                                              // 0x00711dec    90
                         nop                                                              // 0x00711ded    90
                         nop                                                              // 0x00711dee    90
                         nop                                                              // 0x00711def    90
_globl_ct_0x00711df0:    {disp32} jmp       _jmp_addr_0x00711e00                          // 0x00711df0    e90b000000
                         nop                                                              // 0x00711df5    90
                         nop                                                              // 0x00711df6    90
                         nop                                                              // 0x00711df7    90
                         nop                                                              // 0x00711df8    90
                         nop                                                              // 0x00711df9    90
                         nop                                                              // 0x00711dfa    90
                         nop                                                              // 0x00711dfb    90
                         nop                                                              // 0x00711dfc    90
                         nop                                                              // 0x00711dfd    90
                         nop                                                              // 0x00711dfe    90
                         nop                                                              // 0x00711dff    90
_jmp_addr_0x00711e00:    {disp32} mov       dword ptr [data_bytes + 0x3d3048], 0xffffffff // 0x00711e00    c7054890d900ffffffff
                         ret                                                              // 0x00711e0a    c3
                         nop                                                              // 0x00711e0b    90
                         nop                                                              // 0x00711e0c    90
                         nop                                                              // 0x00711e0d    90
                         nop                                                              // 0x00711e0e    90
                         nop                                                              // 0x00711e0f    90
_jmp_addr_0x00711e10:    push               ebx                                           // 0x00711e10    53
                         mov.s              ebx, ecx                                      // 0x00711e11    8bd9
                         {disp32} mov       eax, dword ptr [ebx + 0x00000634]             // 0x00711e13    8b8334060000
                         test               eax, eax                                      // 0x00711e19    85c0
                         {disp8} je         _jmp_addr_0x00711e40                          // 0x00711e1b    7423
                         {disp32} mov       eax, dword ptr [ebx + 0x0000050c]             // 0x00711e1d    8b830c050000
                         push               0x0                                           // 0x00711e23    6a00
                         push               eax                                           // 0x00711e25    50
                         {disp32} lea       ecx, dword ptr [ebx + 0x0000010c]             // 0x00711e26    8d8b0c010000
                         push               ecx                                           // 0x00711e2c    51
                         mov.s              ecx, ebx                                      // 0x00711e2d    8bcb
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x00711e2f    e8ecaa0a00
                         {disp32} mov       dword ptr [ebx + 0x0000050c], 0x00000000      // 0x00711e34    c7830c05000000000000
                         pop                ebx                                           // 0x00711e3e    5b
                         ret                                                              // 0x00711e3f    c3
_jmp_addr_0x00711e40:    {disp32} mov       edx, dword ptr [ebx + 0x0000050c]             // 0x00711e40    8b930c050000
                         push               ebp                                           // 0x00711e46    55
                         push               esi                                           // 0x00711e47    56
                         push               edi                                           // 0x00711e48    57
                         push               0x1b                                          // 0x00711e49    6a1b
                         push               0x00c20c20                                    // 0x00711e4b    68200cc200
                         push               edx                                           // 0x00711e50    52
                         call               ___nw__FUl                                    // 0x00711e51    e83a990c00
                         {disp32} mov       ecx, dword ptr [ebx + 0x0000050c]             // 0x00711e56    8b8b0c050000
                         mov.s              ebp, eax                                      // 0x00711e5c    8be8
                         mov.s              eax, ecx                                      // 0x00711e5e    8bc1
                         shr                ecx, 2                                        // 0x00711e60    c1e902
                         {disp32} lea       esi, dword ptr [ebx + 0x0000010c]             // 0x00711e63    8db30c010000
                         mov.s              edi, ebp                                      // 0x00711e69    8bfd
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00711e6b    f3a5
                         push               0x1d                                          // 0x00711e6d    6a1d
                         mov.s              ecx, eax                                      // 0x00711e6f    8bc8
                         and                ecx, 0x03                                     // 0x00711e71    83e103
                         push               0x00c20c20                                    // 0x00711e74    68200cc200
                         push               0x8                                           // 0x00711e79    6a08
                         rep movsb                                                        // 0x00711e7b    f3a4
                         call               ___nw__FUl                                    // 0x00711e7d    e80e990c00
                         add                esp, 0x18                                     // 0x00711e82    83c418
                         test               eax, eax                                      // 0x00711e85    85c0
                         {disp8} je         _jmp_addr_0x00711e98                          // 0x00711e87    740f
                         {disp32} mov       ecx, dword ptr [ebx + 0x0000050c]             // 0x00711e89    8b8b0c050000
                         {disp8} mov        dword ptr [eax + 0x04], ebp                   // 0x00711e8f    896804
                         mov                dword ptr [eax], ecx                          // 0x00711e92    8908
                         mov.s              esi, eax                                      // 0x00711e94    8bf0
                         {disp8} jmp        _jmp_addr_0x00711e9a                          // 0x00711e96    eb02
_jmp_addr_0x00711e98:    xor.s              esi, esi                                      // 0x00711e98    33f6
_jmp_addr_0x00711e9a:    test               esi, esi                                      // 0x00711e9a    85f6
                         {disp8} je         _jmp_addr_0x00711edb                          // 0x00711e9c    743d
                         push               0x8                                           // 0x00711e9e    6a08
                         call               ??2@YAPAXI@Z                                  // 0x00711ea0    e849460b00
                         add                esp, 0x04                                     // 0x00711ea5    83c404
                         test               eax, eax                                      // 0x00711ea8    85c0
                         {disp8} je         _jmp_addr_0x00711edb                          // 0x00711eaa    742f
                         {disp8} mov        dword ptr [eax + 0x04], esi                   // 0x00711eac    897004
                         mov                dword ptr [eax], 0x00000000                   // 0x00711eaf    c70000000000
                         {disp32} mov       ecx, dword ptr [ebx + 0x00000620]             // 0x00711eb5    8b8b20060000
                         test               ecx, ecx                                      // 0x00711ebb    85c9
                         {disp8} je         _jmp_addr_0x00711ecf                          // 0x00711ebd    7410
_jmp_addr_0x00711ebf:    mov.s              edx, ecx                                      // 0x00711ebf    8bd1
                         mov                ecx, dword ptr [ecx]                          // 0x00711ec1    8b09
                         test               ecx, ecx                                      // 0x00711ec3    85c9
                         {disp8} jne        _jmp_addr_0x00711ebf                          // 0x00711ec5    75f8
                         test               edx, edx                                      // 0x00711ec7    85d2
                         {disp8} je         _jmp_addr_0x00711ecf                          // 0x00711ec9    7404
                         mov                dword ptr [edx], eax                          // 0x00711ecb    8902
                         {disp8} jmp        _jmp_addr_0x00711ed5                          // 0x00711ecd    eb06
_jmp_addr_0x00711ecf:    {disp32} mov       dword ptr [ebx + 0x00000620], eax             // 0x00711ecf    898320060000
_jmp_addr_0x00711ed5:    {disp32} inc       dword ptr [ebx + 0x00000624]                  // 0x00711ed5    ff8324060000
_jmp_addr_0x00711edb:    {disp32} mov       ecx, dword ptr [ebx + 0x0000050c]             // 0x00711edb    8b8b0c050000
                         {disp32} mov       eax, dword ptr [ebx + 0x00000628]             // 0x00711ee1    8b8328060000
                         pop                edi                                           // 0x00711ee7    5f
                         pop                esi                                           // 0x00711ee8    5e
                         add.s              eax, ecx                                      // 0x00711ee9    03c1
                         pop                ebp                                           // 0x00711eeb    5d
                         {disp32} mov       dword ptr [ebx + 0x00000628], eax             // 0x00711eec    898328060000
                         {disp32} mov       dword ptr [ebx + 0x0000050c], 0x00000000      // 0x00711ef2    c7830c05000000000000
                         pop                ebx                                           // 0x00711efc    5b
                         ret                                                              // 0x00711efd    c3
                         nop                                                              // 0x00711efe    90
                         nop                                                              // 0x00711eff    90
_jmp_addr_0x00711f00:    push               ebx                                           // 0x00711f00    53
                         mov.s              ebx, ecx                                      // 0x00711f01    8bd9
                         {disp32} mov       eax, dword ptr [ebx + 0x0000050c]             // 0x00711f03    8b830c050000
                         mov                ecx, 0x00000400                               // 0x00711f09    b900040000
                         sub.s              ecx, eax                                      // 0x00711f0e    2bc8
                         push               esi                                           // 0x00711f10    56
                         push               edi                                           // 0x00711f11    57
                         {disp8} je         _jmp_addr_0x00711f2f                          // 0x00711f12    741b
                         {disp32} lea       esi, dword ptr [eax + ebx * 0x1 + 0x0000010c] // 0x00711f14    8db4180c010000
                         mov.s              eax, ecx                                      // 0x00711f1b    8bc1
                         shr                ecx, 2                                        // 0x00711f1d    c1e902
                         {disp32} lea       edi, dword ptr [ebx + 0x0000010c]             // 0x00711f20    8dbb0c010000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00711f26    f3a5
                         mov.s              ecx, eax                                      // 0x00711f28    8bc8
                         and                ecx, 0x03                                     // 0x00711f2a    83e103
                         rep movsb                                                        // 0x00711f2d    f3a4
_jmp_addr_0x00711f2f:    {disp32} mov       eax, dword ptr [ebx + 0x00000634]             // 0x00711f2f    8b8334060000
                         test               eax, eax                                      // 0x00711f35    85c0
                         {disp8} je         _jmp_addr_0x00711f62                          // 0x00711f37    7429
                         {disp32} mov       eax, dword ptr [ebx + 0x0000050c]             // 0x00711f39    8b830c050000
                         push               0x0                                           // 0x00711f3f    6a00
                         mov.s              ecx, ebx                                      // 0x00711f41    8bcb
                         sub.s              ecx, eax                                      // 0x00711f43    2bc8
                         add                ecx, 0x0000050c                               // 0x00711f45    81c10c050000
                         push               eax                                           // 0x00711f4b    50
                         push               ecx                                           // 0x00711f4c    51
                         mov.s              ecx, ebx                                      // 0x00711f4d    8bcb
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x00711f4f    e88ca90a00
                         pop                edi                                           // 0x00711f54    5f
                         pop                esi                                           // 0x00711f55    5e
                         {disp32} mov       dword ptr [ebx + 0x0000050c], 0x00000000      // 0x00711f56    c7830c05000000000000
                         pop                ebx                                           // 0x00711f60    5b
                         ret                                                              // 0x00711f61    c3
_jmp_addr_0x00711f62:    {disp32} mov       edx, dword ptr [ebx + 0x00000628]             // 0x00711f62    8b9328060000
                         {disp32} mov       ecx, dword ptr [ebx + 0x0000062c]             // 0x00711f68    8b8b2c060000
                         {disp32} mov       eax, dword ptr [ebx + 0x0000050c]             // 0x00711f6e    8b830c050000
                         sub.s              ecx, edx                                      // 0x00711f74    2bca
                         cmp.s              eax, ecx                                      // 0x00711f76    3bc1
                         {disp8} jae        _jmp_addr_0x00711f7c                          // 0x00711f78    7302
                         mov.s              ecx, eax                                      // 0x00711f7a    8bc8
_jmp_addr_0x00711f7c:    {disp32} mov       esi, dword ptr [ebx + 0x00000630]             // 0x00711f7c    8bb330060000
                         mov                esi, dword ptr [esi]                          // 0x00711f82    8b36
                         add.s              esi, edx                                      // 0x00711f84    03f2
                         mov.s              edx, ecx                                      // 0x00711f86    8bd1
                         mov.s              edi, ebx                                      // 0x00711f88    8bfb
                         sub.s              edi, eax                                      // 0x00711f8a    2bf8
                         shr                ecx, 2                                        // 0x00711f8c    c1e902
                         add                edi, 0x0000050c                               // 0x00711f8f    81c70c050000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00711f95    f3a5
                         mov.s              ecx, edx                                      // 0x00711f97    8bca
                         and                ecx, 0x03                                     // 0x00711f99    83e103
                         rep movsb                                                        // 0x00711f9c    f3a4
                         {disp32} mov       eax, dword ptr [ebx + 0x0000050c]             // 0x00711f9e    8b830c050000
                         {disp32} mov       ecx, dword ptr [ebx + 0x00000628]             // 0x00711fa4    8b8b28060000
                         pop                edi                                           // 0x00711faa    5f
                         add.s              ecx, eax                                      // 0x00711fab    03c8
                         pop                esi                                           // 0x00711fad    5e
                         {disp32} mov       dword ptr [ebx + 0x00000628], ecx             // 0x00711fae    898b28060000
                         {disp32} mov       dword ptr [ebx + 0x0000050c], 0x00000000      // 0x00711fb4    c7830c05000000000000
                         pop                ebx                                           // 0x00711fbe    5b
                         ret                                                              // 0x00711fbf    c3
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00711fc0    8b0d5c19d000
                         mov                eax, dword ptr [ecx]                          // 0x00711fc6    8b01
                         call               dword ptr [eax + 8]                           // 0x00711fc8    ff5008
                         {disp32} mov       dword ptr [_game]                , 0x00000000 // 0x00711fcb    c7055c19d00000000000
                         ret                                                              // 0x00711fd5    c3
                         nop                                                              // 0x00711fd6    90
                         nop                                                              // 0x00711fd7    90
                         nop                                                              // 0x00711fd8    90
                         nop                                                              // 0x00711fd9    90
                         nop                                                              // 0x00711fda    90
                         nop                                                              // 0x00711fdb    90
                         nop                                                              // 0x00711fdc    90
                         nop                                                              // 0x00711fdd    90
                         nop                                                              // 0x00711fde    90
                         nop                                                              // 0x00711fdf    90
_jmp_addr_0x00711fe0:    push               esi                                           // 0x00711fe0    56
                         mov.s              esi, ecx                                      // 0x00711fe1    8bf1
                         {disp32} inc       dword ptr [esi + 0x0000051c]                  // 0x00711fe3    ff861c050000
                         {disp32} mov       eax, dword ptr [esi + 0x0000050c]             // 0x00711fe9    8b860c050000
                         inc                eax                                           // 0x00711fef    40
                         cmp                eax, 0x00000400                               // 0x00711ff0    3d00040000
                         {disp8} jbe        _jmp_addr_0x00711ffc                          // 0x00711ff5    7605
                         call               _jmp_addr_0x00711e10                          // 0x00711ff7    e814feffff
_jmp_addr_0x00711ffc:    {disp32} mov       ecx, dword ptr [esi + 0x0000050c]             // 0x00711ffc    8b8e0c050000
                         {disp8} mov        dl, byte ptr [esp + 0x08]                     // 0x00712002    8a542408
                         {disp32} mov       byte ptr [esi + ecx * 0x1 + 0x0000010c], dl   // 0x00712006    88940e0c010000
                         {disp32} inc       dword ptr [esi + 0x0000050c]                  // 0x0071200d    ff860c050000
                         mov.s              eax, esi                                      // 0x00712013    8bc6
                         pop                esi                                           // 0x00712015    5e
                         ret                0x0004                                        // 0x00712016    c20400
                         nop                                                              // 0x00712019    90
                         nop                                                              // 0x0071201a    90
                         nop                                                              // 0x0071201b    90
                         nop                                                              // 0x0071201c    90
                         nop                                                              // 0x0071201d    90
                         nop                                                              // 0x0071201e    90
                         nop                                                              // 0x0071201f    90
                         push               esi                                           // 0x00712020    56
                         mov.s              esi, ecx                                      // 0x00712021    8bf1
                         {disp32} inc       dword ptr [esi + 0x0000051c]                  // 0x00712023    ff861c050000
                         {disp32} mov       eax, dword ptr [esi + 0x0000050c]             // 0x00712029    8b860c050000
                         inc                eax                                           // 0x0071202f    40
                         cmp                eax, 0x00000400                               // 0x00712030    3d00040000
                         {disp8} jbe        _jmp_addr_0x0071203c                          // 0x00712035    7605
                         call               _jmp_addr_0x00711e10                          // 0x00712037    e8d4fdffff
_jmp_addr_0x0071203c:    {disp32} mov       ecx, dword ptr [esi + 0x0000050c]             // 0x0071203c    8b8e0c050000
                         {disp8} mov        dl, byte ptr [esp + 0x08]                     // 0x00712042    8a542408
                         {disp32} mov       byte ptr [esi + ecx * 0x1 + 0x0000010c], dl   // 0x00712046    88940e0c010000
                         {disp32} inc       dword ptr [esi + 0x0000050c]                  // 0x0071204d    ff860c050000
                         mov.s              eax, esi                                      // 0x00712053    8bc6
                         pop                esi                                           // 0x00712055    5e
                         ret                0x0004                                        // 0x00712056    c20400
                         nop                                                              // 0x00712059    90
                         nop                                                              // 0x0071205a    90
                         nop                                                              // 0x0071205b    90
                         nop                                                              // 0x0071205c    90
                         nop                                                              // 0x0071205d    90
                         nop                                                              // 0x0071205e    90
                         nop                                                              // 0x0071205f    90
_jmp_addr_0x00712060:    push               esi                                           // 0x00712060    56
                         mov.s              esi, ecx                                      // 0x00712061    8bf1
                         add                dword ptr [esi + 0x0000051c], 0x02            // 0x00712063    83861c05000002
                         {disp32} mov       eax, dword ptr [esi + 0x0000050c]             // 0x0071206a    8b860c050000
                         add                eax, 0x02                                     // 0x00712070    83c002
                         cmp                eax, 0x00000400                               // 0x00712073    3d00040000
                         {disp8} jbe        _jmp_addr_0x0071207f                          // 0x00712078    7605
                         call               _jmp_addr_0x00711e10                          // 0x0071207a    e891fdffff
_jmp_addr_0x0071207f:    {disp32} mov       ecx, dword ptr [esi + 0x0000050c]             // 0x0071207f    8b8e0c050000
                         {disp8} mov        dx, word ptr [esp + 0x08]                     // 0x00712085    668b542408
                         {disp32} mov       word ptr [esi + ecx * 0x1 + 0x0000010c], dx   // 0x0071208a    6689940e0c010000
                         add                dword ptr [esi + 0x0000050c], 0x02            // 0x00712092    83860c05000002
                         mov.s              eax, esi                                      // 0x00712099    8bc6
                         pop                esi                                           // 0x0071209b    5e
                         ret                0x0004                                        // 0x0071209c    c20400
                         nop                                                              // 0x0071209f    90
_jmp_addr_0x007120a0:    push               esi                                           // 0x007120a0    56
                         mov.s              esi, ecx                                      // 0x007120a1    8bf1
                         add                dword ptr [esi + 0x0000051c], 0x02            // 0x007120a3    83861c05000002
                         {disp32} mov       eax, dword ptr [esi + 0x0000050c]             // 0x007120aa    8b860c050000
                         add                eax, 0x02                                     // 0x007120b0    83c002
                         cmp                eax, 0x00000400                               // 0x007120b3    3d00040000
                         {disp8} jbe        _jmp_addr_0x007120bf                          // 0x007120b8    7605
                         call               _jmp_addr_0x00711e10                          // 0x007120ba    e851fdffff
_jmp_addr_0x007120bf:    {disp32} mov       ecx, dword ptr [esi + 0x0000050c]             // 0x007120bf    8b8e0c050000
                         {disp8} mov        dx, word ptr [esp + 0x08]                     // 0x007120c5    668b542408
                         {disp32} mov       word ptr [esi + ecx * 0x1 + 0x0000010c], dx   // 0x007120ca    6689940e0c010000
                         add                dword ptr [esi + 0x0000050c], 0x02            // 0x007120d2    83860c05000002
                         mov.s              eax, esi                                      // 0x007120d9    8bc6
                         pop                esi                                           // 0x007120db    5e
                         ret                0x0004                                        // 0x007120dc    c20400
                         nop                                                              // 0x007120df    90
_jmp_addr_0x007120e0:    push               esi                                           // 0x007120e0    56
                         mov.s              esi, ecx                                      // 0x007120e1    8bf1
                         add                dword ptr [esi + 0x0000051c], 0x04            // 0x007120e3    83861c05000004
                         {disp32} mov       eax, dword ptr [esi + 0x0000050c]             // 0x007120ea    8b860c050000
                         add                eax, 0x04                                     // 0x007120f0    83c004
                         cmp                eax, 0x00000400                               // 0x007120f3    3d00040000
                         {disp8} jbe        _jmp_addr_0x007120ff                          // 0x007120f8    7605
                         call               _jmp_addr_0x00711e10                          // 0x007120fa    e811fdffff
_jmp_addr_0x007120ff:    {disp32} mov       ecx, dword ptr [esi + 0x0000050c]             // 0x007120ff    8b8e0c050000
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x00712105    8b542408
                         {disp32} mov       dword ptr [esi + ecx * 0x1 + 0x0000010c], edx // 0x00712109    89940e0c010000
                         add                dword ptr [esi + 0x0000050c], 0x04            // 0x00712110    83860c05000004
                         mov.s              eax, esi                                      // 0x00712117    8bc6
                         pop                esi                                           // 0x00712119    5e
                         ret                0x0004                                        // 0x0071211a    c20400
                         nop                                                              // 0x0071211d    90
                         nop                                                              // 0x0071211e    90
                         nop                                                              // 0x0071211f    90
_jmp_addr_0x00712120:    push               esi                                           // 0x00712120    56
                         mov.s              esi, ecx                                      // 0x00712121    8bf1
                         add                dword ptr [esi + 0x0000051c], 0x04            // 0x00712123    83861c05000004
                         {disp32} mov       eax, dword ptr [esi + 0x0000050c]             // 0x0071212a    8b860c050000
                         add                eax, 0x04                                     // 0x00712130    83c004
                         cmp                eax, 0x00000400                               // 0x00712133    3d00040000
                         {disp8} jbe        _jmp_addr_0x0071213f                          // 0x00712138    7605
                         call               _jmp_addr_0x00711e10                          // 0x0071213a    e8d1fcffff
_jmp_addr_0x0071213f:    {disp32} mov       ecx, dword ptr [esi + 0x0000050c]             // 0x0071213f    8b8e0c050000
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x00712145    8b542408
                         {disp32} mov       dword ptr [esi + ecx * 0x1 + 0x0000010c], edx // 0x00712149    89940e0c010000
                         add                dword ptr [esi + 0x0000050c], 0x04            // 0x00712150    83860c05000004
                         mov.s              eax, esi                                      // 0x00712157    8bc6
                         pop                esi                                           // 0x00712159    5e
                         ret                0x0004                                        // 0x0071215a    c20400
                         nop                                                              // 0x0071215d    90
                         nop                                                              // 0x0071215e    90
                         nop                                                              // 0x0071215f    90
_jmp_addr_0x00712160:    push               esi                                           // 0x00712160    56
                         mov.s              esi, ecx                                      // 0x00712161    8bf1
                         add                dword ptr [esi + 0x0000051c], 0x04            // 0x00712163    83861c05000004
                         {disp32} mov       eax, dword ptr [esi + 0x0000050c]             // 0x0071216a    8b860c050000
                         add                eax, 0x04                                     // 0x00712170    83c004
                         cmp                eax, 0x00000400                               // 0x00712173    3d00040000
                         {disp8} jbe        _jmp_addr_0x0071217f                          // 0x00712178    7605
                         call               _jmp_addr_0x00711e10                          // 0x0071217a    e891fcffff
_jmp_addr_0x0071217f:    {disp32} mov       ecx, dword ptr [esi + 0x0000050c]             // 0x0071217f    8b8e0c050000
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x00712185    8b542408
                         {disp32} mov       dword ptr [esi + ecx * 0x1 + 0x0000010c], edx // 0x00712189    89940e0c010000
                         add                dword ptr [esi + 0x0000050c], 0x04            // 0x00712190    83860c05000004
                         mov.s              eax, esi                                      // 0x00712197    8bc6
                         pop                esi                                           // 0x00712199    5e
                         ret                0x0004                                        // 0x0071219a    c20400
                         nop                                                              // 0x0071219d    90
                         nop                                                              // 0x0071219e    90
                         nop                                                              // 0x0071219f    90
_jmp_addr_0x007121a0:    push               esi                                           // 0x007121a0    56
                         mov.s              esi, ecx                                      // 0x007121a1    8bf1
                         {disp32} inc       dword ptr [esi + 0x0000051c]                  // 0x007121a3    ff861c050000
                         {disp32} mov       eax, dword ptr [esi + 0x0000050c]             // 0x007121a9    8b860c050000
                         inc                eax                                           // 0x007121af    40
                         cmp                eax, 0x00000400                               // 0x007121b0    3d00040000
                         {disp8} jbe        _jmp_addr_0x007121bc                          // 0x007121b5    7605
                         call               _jmp_addr_0x00711e10                          // 0x007121b7    e854fcffff
_jmp_addr_0x007121bc:    {disp32} mov       ecx, dword ptr [esi + 0x0000050c]             // 0x007121bc    8b8e0c050000
                         {disp8} mov        dl, byte ptr [esp + 0x08]                     // 0x007121c2    8a542408
                         {disp32} mov       byte ptr [esi + ecx * 0x1 + 0x0000010c], dl   // 0x007121c6    88940e0c010000
                         {disp32} inc       dword ptr [esi + 0x0000050c]                  // 0x007121cd    ff860c050000
                         mov.s              eax, esi                                      // 0x007121d3    8bc6
                         pop                esi                                           // 0x007121d5    5e
                         ret                0x0004                                        // 0x007121d6    c20400
                         nop                                                              // 0x007121d9    90
                         nop                                                              // 0x007121da    90
                         nop                                                              // 0x007121db    90
                         nop                                                              // 0x007121dc    90
                         nop                                                              // 0x007121dd    90
                         nop                                                              // 0x007121de    90
                         nop                                                              // 0x007121df    90
_jmp_addr_0x007121e0:    push               esi                                           // 0x007121e0    56
                         mov.s              esi, ecx                                      // 0x007121e1    8bf1
                         add                dword ptr [esi + 0x0000051c], 0x04            // 0x007121e3    83861c05000004
                         {disp32} mov       eax, dword ptr [esi + 0x0000050c]             // 0x007121ea    8b860c050000
                         add                eax, 0x04                                     // 0x007121f0    83c004
                         cmp                eax, 0x00000400                               // 0x007121f3    3d00040000
                         {disp8} jbe        _jmp_addr_0x007121ff                          // 0x007121f8    7605
                         call               _jmp_addr_0x00711e10                          // 0x007121fa    e811fcffff
_jmp_addr_0x007121ff:    {disp32} mov       ecx, dword ptr [esi + 0x0000050c]             // 0x007121ff    8b8e0c050000
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x00712205    d9442408
                         {disp32} fstp      dword ptr [esi + ecx * 0x1 + 0x0000010c]      // 0x00712209    d99c0e0c010000
                         {disp32} mov       eax, dword ptr [esi + 0x0000050c]             // 0x00712210    8b860c050000
                         add                eax, 0x04                                     // 0x00712216    83c004
                         {disp32} mov       dword ptr [esi + 0x0000050c], eax             // 0x00712219    89860c050000
                         mov.s              eax, esi                                      // 0x0071221f    8bc6
                         pop                esi                                           // 0x00712221    5e
                         ret                0x0004                                        // 0x00712222    c20400
                         nop                                                              // 0x00712225    90
                         nop                                                              // 0x00712226    90
                         nop                                                              // 0x00712227    90
                         nop                                                              // 0x00712228    90
                         nop                                                              // 0x00712229    90
                         nop                                                              // 0x0071222a    90
                         nop                                                              // 0x0071222b    90
                         nop                                                              // 0x0071222c    90
                         nop                                                              // 0x0071222d    90
                         nop                                                              // 0x0071222e    90
                         nop                                                              // 0x0071222f    90
_jmp_addr_0x00712230:    push               esi                                           // 0x00712230    56
                         mov.s              esi, ecx                                      // 0x00712231    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x0000050c]             // 0x00712233    8b860c050000
                         inc                eax                                           // 0x00712239    40
                         cmp                eax, 0x00000400                               // 0x0071223a    3d00040000
                         {disp8} jbe        _jmp_addr_0x00712246                          // 0x0071223f    7605
                         call               _jmp_addr_0x00711f00                          // 0x00712241    e8bafcffff
_jmp_addr_0x00712246:    {disp32} mov       ecx, dword ptr [esi + 0x0000050c]             // 0x00712246    8b8e0c050000
                         {disp32} mov       dl, byte ptr [esi + ecx * 0x1 + 0x0000010c]   // 0x0071224c    8a940e0c010000
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x00712253    8b442408
                         mov                byte ptr [eax], dl                            // 0x00712257    8810
                         {disp32} inc       dword ptr [esi + 0x0000050c]                  // 0x00712259    ff860c050000
                         mov.s              eax, esi                                      // 0x0071225f    8bc6
                         pop                esi                                           // 0x00712261    5e
                         ret                0x0004                                        // 0x00712262    c20400
                         nop                                                              // 0x00712265    90
                         nop                                                              // 0x00712266    90
                         nop                                                              // 0x00712267    90
                         nop                                                              // 0x00712268    90
                         nop                                                              // 0x00712269    90
                         nop                                                              // 0x0071226a    90
                         nop                                                              // 0x0071226b    90
                         nop                                                              // 0x0071226c    90
                         nop                                                              // 0x0071226d    90
                         nop                                                              // 0x0071226e    90
                         nop                                                              // 0x0071226f    90
                         push               esi                                           // 0x00712270    56
                         mov.s              esi, ecx                                      // 0x00712271    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x0000050c]             // 0x00712273    8b860c050000
                         inc                eax                                           // 0x00712279    40
                         cmp                eax, 0x00000400                               // 0x0071227a    3d00040000
                         {disp8} jbe        _jmp_addr_0x00712286                          // 0x0071227f    7605
                         call               _jmp_addr_0x00711f00                          // 0x00712281    e87afcffff
_jmp_addr_0x00712286:    {disp32} mov       ecx, dword ptr [esi + 0x0000050c]             // 0x00712286    8b8e0c050000
                         {disp32} mov       dl, byte ptr [esi + ecx * 0x1 + 0x0000010c]   // 0x0071228c    8a940e0c010000
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x00712293    8b442408
                         mov                byte ptr [eax], dl                            // 0x00712297    8810
                         {disp32} inc       dword ptr [esi + 0x0000050c]                  // 0x00712299    ff860c050000
                         mov.s              eax, esi                                      // 0x0071229f    8bc6
                         pop                esi                                           // 0x007122a1    5e
                         ret                0x0004                                        // 0x007122a2    c20400
                         nop                                                              // 0x007122a5    90
                         nop                                                              // 0x007122a6    90
                         nop                                                              // 0x007122a7    90
                         nop                                                              // 0x007122a8    90
                         nop                                                              // 0x007122a9    90
                         nop                                                              // 0x007122aa    90
                         nop                                                              // 0x007122ab    90
                         nop                                                              // 0x007122ac    90
                         nop                                                              // 0x007122ad    90
                         nop                                                              // 0x007122ae    90
                         nop                                                              // 0x007122af    90
_jmp_addr_0x007122b0:    push               esi                                           // 0x007122b0    56
                         mov.s              esi, ecx                                      // 0x007122b1    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x0000050c]             // 0x007122b3    8b860c050000
                         add                eax, 0x02                                     // 0x007122b9    83c002
                         cmp                eax, 0x00000400                               // 0x007122bc    3d00040000
                         {disp8} jbe        _jmp_addr_0x007122c8                          // 0x007122c1    7605
                         call               _jmp_addr_0x00711f00                          // 0x007122c3    e838fcffff
_jmp_addr_0x007122c8:    {disp32} mov       ecx, dword ptr [esi + 0x0000050c]             // 0x007122c8    8b8e0c050000
                         {disp32} mov       dx, word ptr [esi + ecx * 0x1 + 0x0000010c]   // 0x007122ce    668b940e0c010000
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x007122d6    8b442408
                         mov                word ptr [eax], dx                            // 0x007122da    668910
                         add                dword ptr [esi + 0x0000050c], 0x02            // 0x007122dd    83860c05000002
                         mov.s              eax, esi                                      // 0x007122e4    8bc6
                         pop                esi                                           // 0x007122e6    5e
                         ret                0x0004                                        // 0x007122e7    c20400
                         nop                                                              // 0x007122ea    90
                         nop                                                              // 0x007122eb    90
                         nop                                                              // 0x007122ec    90
                         nop                                                              // 0x007122ed    90
                         nop                                                              // 0x007122ee    90
                         nop                                                              // 0x007122ef    90
_jmp_addr_0x007122f0:    push               esi                                           // 0x007122f0    56
                         mov.s              esi, ecx                                      // 0x007122f1    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x0000050c]             // 0x007122f3    8b860c050000
                         add                eax, 0x02                                     // 0x007122f9    83c002
                         cmp                eax, 0x00000400                               // 0x007122fc    3d00040000
                         {disp8} jbe        _jmp_addr_0x00712308                          // 0x00712301    7605
                         call               _jmp_addr_0x00711f00                          // 0x00712303    e8f8fbffff
_jmp_addr_0x00712308:    {disp32} mov       ecx, dword ptr [esi + 0x0000050c]             // 0x00712308    8b8e0c050000
                         {disp32} mov       dx, word ptr [esi + ecx * 0x1 + 0x0000010c]   // 0x0071230e    668b940e0c010000
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x00712316    8b442408
                         mov                word ptr [eax], dx                            // 0x0071231a    668910
                         add                dword ptr [esi + 0x0000050c], 0x02            // 0x0071231d    83860c05000002
                         mov.s              eax, esi                                      // 0x00712324    8bc6
                         pop                esi                                           // 0x00712326    5e
                         ret                0x0004                                        // 0x00712327    c20400
                         nop                                                              // 0x0071232a    90
                         nop                                                              // 0x0071232b    90
                         nop                                                              // 0x0071232c    90
                         nop                                                              // 0x0071232d    90
                         nop                                                              // 0x0071232e    90
                         nop                                                              // 0x0071232f    90
_jmp_addr_0x00712330:    push               esi                                           // 0x00712330    56
                         mov.s              esi, ecx                                      // 0x00712331    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x0000050c]             // 0x00712333    8b860c050000
                         add                eax, 0x04                                     // 0x00712339    83c004
                         cmp                eax, 0x00000400                               // 0x0071233c    3d00040000
                         {disp8} jbe        _jmp_addr_0x00712348                          // 0x00712341    7605
                         call               _jmp_addr_0x00711f00                          // 0x00712343    e8b8fbffff
_jmp_addr_0x00712348:    {disp32} mov       ecx, dword ptr [esi + 0x0000050c]             // 0x00712348    8b8e0c050000
                         {disp32} mov       edx, dword ptr [esi + ecx * 0x1 + 0x0000010c] // 0x0071234e    8b940e0c010000
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x00712355    8b442408
                         mov                dword ptr [eax], edx                          // 0x00712359    8910
                         add                dword ptr [esi + 0x0000050c], 0x04            // 0x0071235b    83860c05000004
                         mov.s              eax, esi                                      // 0x00712362    8bc6
                         pop                esi                                           // 0x00712364    5e
                         ret                0x0004                                        // 0x00712365    c20400
                         nop                                                              // 0x00712368    90
                         nop                                                              // 0x00712369    90
                         nop                                                              // 0x0071236a    90
                         nop                                                              // 0x0071236b    90
                         nop                                                              // 0x0071236c    90
                         nop                                                              // 0x0071236d    90
                         nop                                                              // 0x0071236e    90
                         nop                                                              // 0x0071236f    90
_jmp_addr_0x00712370:    push               esi                                           // 0x00712370    56
                         mov.s              esi, ecx                                      // 0x00712371    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x0000050c]             // 0x00712373    8b860c050000
                         add                eax, 0x04                                     // 0x00712379    83c004
                         cmp                eax, 0x00000400                               // 0x0071237c    3d00040000
                         {disp8} jbe        _jmp_addr_0x00712388                          // 0x00712381    7605
                         call               _jmp_addr_0x00711f00                          // 0x00712383    e878fbffff
_jmp_addr_0x00712388:    {disp32} mov       ecx, dword ptr [esi + 0x0000050c]             // 0x00712388    8b8e0c050000
                         {disp32} mov       edx, dword ptr [esi + ecx * 0x1 + 0x0000010c] // 0x0071238e    8b940e0c010000
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x00712395    8b442408
                         mov                dword ptr [eax], edx                          // 0x00712399    8910
                         add                dword ptr [esi + 0x0000050c], 0x04            // 0x0071239b    83860c05000004
                         mov.s              eax, esi                                      // 0x007123a2    8bc6
                         pop                esi                                           // 0x007123a4    5e
                         ret                0x0004                                        // 0x007123a5    c20400
                         nop                                                              // 0x007123a8    90
                         nop                                                              // 0x007123a9    90
                         nop                                                              // 0x007123aa    90
                         nop                                                              // 0x007123ab    90
                         nop                                                              // 0x007123ac    90
                         nop                                                              // 0x007123ad    90
                         nop                                                              // 0x007123ae    90
                         nop                                                              // 0x007123af    90
_jmp_addr_0x007123b0:    push               esi                                           // 0x007123b0    56
                         mov.s              esi, ecx                                      // 0x007123b1    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x0000050c]             // 0x007123b3    8b860c050000
                         add                eax, 0x04                                     // 0x007123b9    83c004
                         cmp                eax, 0x00000400                               // 0x007123bc    3d00040000
                         {disp8} jbe        _jmp_addr_0x007123c8                          // 0x007123c1    7605
                         call               _jmp_addr_0x00711f00                          // 0x007123c3    e838fbffff
_jmp_addr_0x007123c8:    {disp32} mov       ecx, dword ptr [esi + 0x0000050c]             // 0x007123c8    8b8e0c050000
                         {disp32} mov       edx, dword ptr [esi + ecx * 0x1 + 0x0000010c] // 0x007123ce    8b940e0c010000
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x007123d5    8b442408
                         mov                dword ptr [eax], edx                          // 0x007123d9    8910
                         add                dword ptr [esi + 0x0000050c], 0x04            // 0x007123db    83860c05000004
                         mov.s              eax, esi                                      // 0x007123e2    8bc6
                         pop                esi                                           // 0x007123e4    5e
                         ret                0x0004                                        // 0x007123e5    c20400
                         nop                                                              // 0x007123e8    90
                         nop                                                              // 0x007123e9    90
                         nop                                                              // 0x007123ea    90
                         nop                                                              // 0x007123eb    90
                         nop                                                              // 0x007123ec    90
                         nop                                                              // 0x007123ed    90
                         nop                                                              // 0x007123ee    90
                         nop                                                              // 0x007123ef    90
_jmp_addr_0x007123f0:    push               esi                                           // 0x007123f0    56
                         mov.s              esi, ecx                                      // 0x007123f1    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x0000050c]             // 0x007123f3    8b860c050000
                         inc                eax                                           // 0x007123f9    40
                         cmp                eax, 0x00000400                               // 0x007123fa    3d00040000
                         {disp8} jbe        _jmp_addr_0x00712406                          // 0x007123ff    7605
                         call               _jmp_addr_0x00711f00                          // 0x00712401    e8fafaffff
_jmp_addr_0x00712406:    {disp32} mov       ecx, dword ptr [esi + 0x0000050c]             // 0x00712406    8b8e0c050000
                         {disp32} mov       dl, byte ptr [esi + ecx * 0x1 + 0x0000010c]   // 0x0071240c    8a940e0c010000
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x00712413    8b442408
                         mov                byte ptr [eax], dl                            // 0x00712417    8810
                         {disp32} inc       dword ptr [esi + 0x0000050c]                  // 0x00712419    ff860c050000
                         mov.s              eax, esi                                      // 0x0071241f    8bc6
                         pop                esi                                           // 0x00712421    5e
                         ret                0x0004                                        // 0x00712422    c20400
                         nop                                                              // 0x00712425    90
                         nop                                                              // 0x00712426    90
                         nop                                                              // 0x00712427    90
                         nop                                                              // 0x00712428    90
                         nop                                                              // 0x00712429    90
                         nop                                                              // 0x0071242a    90
                         nop                                                              // 0x0071242b    90
                         nop                                                              // 0x0071242c    90
                         nop                                                              // 0x0071242d    90
                         nop                                                              // 0x0071242e    90
                         nop                                                              // 0x0071242f    90
_jmp_addr_0x00712430:    push               esi                                           // 0x00712430    56
                         mov.s              esi, ecx                                      // 0x00712431    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x0000050c]             // 0x00712433    8b860c050000
                         add                eax, 0x04                                     // 0x00712439    83c004
                         cmp                eax, 0x00000400                               // 0x0071243c    3d00040000
                         {disp8} jbe        _jmp_addr_0x00712448                          // 0x00712441    7605
                         call               _jmp_addr_0x00711f00                          // 0x00712443    e8b8faffff
_jmp_addr_0x00712448:    {disp32} mov       ecx, dword ptr [esi + 0x0000050c]             // 0x00712448    8b8e0c050000
                         {disp32} mov       edx, dword ptr [esi + ecx * 0x1 + 0x0000010c] // 0x0071244e    8b940e0c010000
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x00712455    8b442408
                         mov                dword ptr [eax], edx                          // 0x00712459    8910
                         add                dword ptr [esi + 0x0000050c], 0x04            // 0x0071245b    83860c05000004
                         mov.s              eax, esi                                      // 0x00712462    8bc6
                         pop                esi                                           // 0x00712464    5e
                         ret                0x0004                                        // 0x00712465    c20400
                         nop                                                              // 0x00712468    90
                         nop                                                              // 0x00712469    90
                         nop                                                              // 0x0071246a    90
                         nop                                                              // 0x0071246b    90
                         nop                                                              // 0x0071246c    90
                         nop                                                              // 0x0071246d    90
                         nop                                                              // 0x0071246e    90
                         nop                                                              // 0x0071246f    90
                         sub                esp, 0x08                                     // 0x00712470    83ec08
                         push               esi                                           // 0x00712473    56
                         xor.s              eax, eax                                      // 0x00712474    33c0
                         mov.s              esi, ecx                                      // 0x00712476    8bf1
                         {disp32} mov       al, byte ptr [esi + 0x00000514]               // 0x00712478    8a8614050000
                         push               edi                                           // 0x0071247e    57
                         dec                eax                                           // 0x0071247f    48
                         {disp8} je         _jmp_addr_0x007124d7                          // 0x00712480    7455
                         dec                eax                                           // 0x00712482    48
                         {disp8} jne        _jmp_addr_0x007124fe                          // 0x00712483    7579
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x00712485    8d442408
                         push               eax                                           // 0x00712489    50
                         call               _jmp_addr_0x00712330                          // 0x0071248a    e8a1feffff
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x0071248f    8b4c2408
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x00712493    8b7c2414
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x00712497    8d542408
                         mov                dword ptr [edi], ecx                          // 0x0071249b    890f
                         push               edx                                           // 0x0071249d    52
                         mov.s              ecx, esi                                      // 0x0071249e    8bce
                         call               _jmp_addr_0x00712330                          // 0x007124a0    e88bfeffff
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x007124a5    8b442408
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x007124a9    8d4c2408
                         push               ecx                                           // 0x007124ad    51
                         mov.s              ecx, esi                                      // 0x007124ae    8bce
                         {disp8} mov        dword ptr [edi + 0x04], eax                   // 0x007124b0    894704
                         call               _jmp_addr_0x00712330                          // 0x007124b3    e878feffff
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x007124b8    8b542408
                         {disp8} mov        dword ptr [esp + 0x08], edx                   // 0x007124bc    89542408
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000            // 0x007124c0    c744240c00000000
                         {disp8} fild       qword ptr [esp + 0x08]                        // 0x007124c8    df6c2408
                         {disp8} fstp       dword ptr [edi + 0x08]                        // 0x007124cc    d95f08
                         pop                edi                                           // 0x007124cf    5f
                         pop                esi                                           // 0x007124d0    5e
                         add                esp, 0x08                                     // 0x007124d1    83c408
                         ret                0x0004                                        // 0x007124d4    c20400
_jmp_addr_0x007124d7:    {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x007124d7    8b7c2414
                         mov                eax, dword ptr [edi]                          // 0x007124db    8b07
                         push               eax                                           // 0x007124dd    50
                         mov.s              ecx, esi                                      // 0x007124de    8bce
                         call               _jmp_addr_0x007120e0                          // 0x007124e0    e8fbfbffff
                         {disp8} mov        ecx, dword ptr [edi + 0x04]                   // 0x007124e5    8b4f04
                         push               ecx                                           // 0x007124e8    51
                         mov.s              ecx, esi                                      // 0x007124e9    8bce
                         call               _jmp_addr_0x007120e0                          // 0x007124eb    e8f0fbffff
                         {disp8} fld        dword ptr [edi + 0x08]                        // 0x007124f0    d94708
                         push               ecx                                           // 0x007124f3    51
                         fstp               dword ptr [esp]                               // 0x007124f4    d91c24
                         mov.s              ecx, esi                                      // 0x007124f7    8bce
                         call               _jmp_addr_0x007121e0                          // 0x007124f9    e8e2fcffff
_jmp_addr_0x007124fe:    pop                edi                                           // 0x007124fe    5f
                         pop                esi                                           // 0x007124ff    5e
                         add                esp, 0x08                                     // 0x00712500    83c408
                         ret                0x0004                                        // 0x00712503    c20400
                         nop                                                              // 0x00712506    90
                         nop                                                              // 0x00712507    90
                         nop                                                              // 0x00712508    90
                         nop                                                              // 0x00712509    90
                         nop                                                              // 0x0071250a    90
                         nop                                                              // 0x0071250b    90
                         nop                                                              // 0x0071250c    90
                         nop                                                              // 0x0071250d    90
                         nop                                                              // 0x0071250e    90
                         nop                                                              // 0x0071250f    90
                         push               esi                                           // 0x00712510    56
                         xor.s              eax, eax                                      // 0x00712511    33c0
                         mov.s              esi, ecx                                      // 0x00712513    8bf1
                         {disp32} mov       al, byte ptr [esi + 0x00000514]               // 0x00712515    8a8614050000
                         push               edi                                           // 0x0071251b    57
                         dec                eax                                           // 0x0071251c    48
                         {disp8} je         _jmp_addr_0x0071253c                          // 0x0071251d    741d
                         dec                eax                                           // 0x0071251f    48
                         {disp8} jne        _jmp_addr_0x00712555                          // 0x00712520    7533
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x00712522    8b7c240c
                         push               edi                                           // 0x00712526    57
                         call               _jmp_addr_0x00712370                          // 0x00712527    e844feffff
                         add                edi, 0x04                                     // 0x0071252c    83c704
                         push               edi                                           // 0x0071252f    57
                         mov.s              ecx, esi                                      // 0x00712530    8bce
                         call               _jmp_addr_0x00712370                          // 0x00712532    e839feffff
                         pop                edi                                           // 0x00712537    5f
                         pop                esi                                           // 0x00712538    5e
                         ret                0x0004                                        // 0x00712539    c20400
_jmp_addr_0x0071253c:    {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x0071253c    8b7c240c
                         mov                eax, dword ptr [edi]                          // 0x00712540    8b07
                         push               eax                                           // 0x00712542    50
                         mov.s              ecx, esi                                      // 0x00712543    8bce
                         call               _jmp_addr_0x00712120                          // 0x00712545    e8d6fbffff
                         {disp8} mov        ecx, dword ptr [edi + 0x04]                   // 0x0071254a    8b4f04
                         push               ecx                                           // 0x0071254d    51
                         mov.s              ecx, esi                                      // 0x0071254e    8bce
                         call               _jmp_addr_0x00712120                          // 0x00712550    e8cbfbffff
_jmp_addr_0x00712555:    pop                edi                                           // 0x00712555    5f
                         pop                esi                                           // 0x00712556    5e
                         ret                0x0004                                        // 0x00712557    c20400
                         nop                                                              // 0x0071255a    90
                         nop                                                              // 0x0071255b    90
                         nop                                                              // 0x0071255c    90
                         nop                                                              // 0x0071255d    90
                         nop                                                              // 0x0071255e    90
                         nop                                                              // 0x0071255f    90
                         push               esi                                           // 0x00712560    56
                         xor.s              eax, eax                                      // 0x00712561    33c0
                         mov.s              esi, ecx                                      // 0x00712563    8bf1
                         {disp32} mov       al, byte ptr [esi + 0x00000514]               // 0x00712565    8a8614050000
                         push               edi                                           // 0x0071256b    57
                         dec                eax                                           // 0x0071256c    48
                         {disp8} je         _jmp_addr_0x0071258c                          // 0x0071256d    741d
                         dec                eax                                           // 0x0071256f    48
                         {disp8} jne        _jmp_addr_0x007125ab                          // 0x00712570    7539
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x00712572    8b7c240c
                         push               edi                                           // 0x00712576    57
                         call               _jmp_addr_0x007122f0                          // 0x00712577    e874fdffff
                         add                edi, 0x02                                     // 0x0071257c    83c702
                         push               edi                                           // 0x0071257f    57
                         mov.s              ecx, esi                                      // 0x00712580    8bce
                         call               _jmp_addr_0x007122f0                          // 0x00712582    e869fdffff
                         pop                edi                                           // 0x00712587    5f
                         pop                esi                                           // 0x00712588    5e
                         ret                0x0004                                        // 0x00712589    c20400
_jmp_addr_0x0071258c:    {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x0071258c    8b7c240c
                         xor.s              eax, eax                                      // 0x00712590    33c0
                         mov                ax, word ptr [edi]                            // 0x00712592    668b07
                         mov.s              ecx, esi                                      // 0x00712595    8bce
                         push               eax                                           // 0x00712597    50
                         call               _jmp_addr_0x007120a0                          // 0x00712598    e803fbffff
                         xor.s              ecx, ecx                                      // 0x0071259d    33c9
                         {disp8} mov        cx, word ptr [edi + 0x02]                     // 0x0071259f    668b4f02
                         push               ecx                                           // 0x007125a3    51
                         mov.s              ecx, esi                                      // 0x007125a4    8bce
                         call               _jmp_addr_0x007120a0                          // 0x007125a6    e8f5faffff
_jmp_addr_0x007125ab:    pop                edi                                           // 0x007125ab    5f
                         pop                esi                                           // 0x007125ac    5e
                         ret                0x0004                                        // 0x007125ad    c20400
                         push               esi                                           // 0x007125b0    56
                         xor.s              eax, eax                                      // 0x007125b1    33c0
                         mov.s              esi, ecx                                      // 0x007125b3    8bf1
                         {disp32} mov       al, byte ptr [esi + 0x00000514]               // 0x007125b5    8a8614050000
                         push               edi                                           // 0x007125bb    57
                         dec                eax                                           // 0x007125bc    48
                         {disp8} je         _jmp_addr_0x007125dc                          // 0x007125bd    741d
                         dec                eax                                           // 0x007125bf    48
                         {disp8} jne        _jmp_addr_0x007125f5                          // 0x007125c0    7533
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x007125c2    8b7c240c
                         push               edi                                           // 0x007125c6    57
                         call               _jmp_addr_0x00712370                          // 0x007125c7    e8a4fdffff
                         add                edi, 0x04                                     // 0x007125cc    83c704
                         push               edi                                           // 0x007125cf    57
                         mov.s              ecx, esi                                      // 0x007125d0    8bce
                         call               _jmp_addr_0x00712370                          // 0x007125d2    e899fdffff
                         pop                edi                                           // 0x007125d7    5f
                         pop                esi                                           // 0x007125d8    5e
                         ret                0x0004                                        // 0x007125d9    c20400
_jmp_addr_0x007125dc:    {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x007125dc    8b7c240c
                         mov                eax, dword ptr [edi]                          // 0x007125e0    8b07
                         push               eax                                           // 0x007125e2    50
                         mov.s              ecx, esi                                      // 0x007125e3    8bce
                         call               _jmp_addr_0x00712120                          // 0x007125e5    e836fbffff
                         {disp8} mov        ecx, dword ptr [edi + 0x04]                   // 0x007125ea    8b4f04
                         push               ecx                                           // 0x007125ed    51
                         mov.s              ecx, esi                                      // 0x007125ee    8bce
                         call               _jmp_addr_0x00712120                          // 0x007125f0    e82bfbffff
_jmp_addr_0x007125f5:    pop                edi                                           // 0x007125f5    5f
                         pop                esi                                           // 0x007125f6    5e
                         ret                0x0004                                        // 0x007125f7    c20400
                         nop                                                              // 0x007125fa    90
                         nop                                                              // 0x007125fb    90
                         nop                                                              // 0x007125fc    90
                         nop                                                              // 0x007125fd    90
                         nop                                                              // 0x007125fe    90
                         nop                                                              // 0x007125ff    90
                         push               esi                                           // 0x00712600    56
                         xor.s              eax, eax                                      // 0x00712601    33c0
                         mov.s              esi, ecx                                      // 0x00712603    8bf1
                         {disp32} mov       al, byte ptr [esi + 0x00000514]               // 0x00712605    8a8614050000
                         push               edi                                           // 0x0071260b    57
                         dec                eax                                           // 0x0071260c    48
                         {disp8} je         _jmp_addr_0x00712637                          // 0x0071260d    7428
                         dec                eax                                           // 0x0071260f    48
                         {disp8} jne        _jmp_addr_0x0071265b                          // 0x00712610    7549
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x00712612    8b7c240c
                         push               edi                                           // 0x00712616    57
                         call               _jmp_addr_0x00712430                          // 0x00712617    e814feffff
                         {disp8} lea        eax, dword ptr [edi + 0x04]                   // 0x0071261c    8d4704
                         push               eax                                           // 0x0071261f    50
                         mov.s              ecx, esi                                      // 0x00712620    8bce
                         call               _jmp_addr_0x00712430                          // 0x00712622    e809feffff
                         add                edi, 0x08                                     // 0x00712627    83c708
                         push               edi                                           // 0x0071262a    57
                         mov.s              ecx, esi                                      // 0x0071262b    8bce
                         call               _jmp_addr_0x00712430                          // 0x0071262d    e8fefdffff
                         pop                edi                                           // 0x00712632    5f
                         pop                esi                                           // 0x00712633    5e
                         ret                0x0004                                        // 0x00712634    c20400
_jmp_addr_0x00712637:    {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x00712637    8b7c240c
                         mov                ecx, dword ptr [edi]                          // 0x0071263b    8b0f
                         push               ecx                                           // 0x0071263d    51
                         mov.s              ecx, esi                                      // 0x0071263e    8bce
                         call               _jmp_addr_0x007121e0                          // 0x00712640    e89bfbffff
                         {disp8} mov        edx, dword ptr [edi + 0x04]                   // 0x00712645    8b5704
                         push               edx                                           // 0x00712648    52
                         mov.s              ecx, esi                                      // 0x00712649    8bce
                         call               _jmp_addr_0x007121e0                          // 0x0071264b    e890fbffff
                         {disp8} mov        eax, dword ptr [edi + 0x08]                   // 0x00712650    8b4708
                         push               eax                                           // 0x00712653    50
                         mov.s              ecx, esi                                      // 0x00712654    8bce
                         call               _jmp_addr_0x007121e0                          // 0x00712656    e885fbffff
_jmp_addr_0x0071265b:    pop                edi                                           // 0x0071265b    5f
                         pop                esi                                           // 0x0071265c    5e
                         ret                0x0004                                        // 0x0071265d    c20400
                         sub                esp, 0x08                                     // 0x00712660    83ec08
                         push               esi                                           // 0x00712663    56
                         xor.s              eax, eax                                      // 0x00712664    33c0
                         mov.s              esi, ecx                                      // 0x00712666    8bf1
                         {disp32} mov       al, byte ptr [esi + 0x00000514]               // 0x00712668    8a8614050000
                         dec                eax                                           // 0x0071266e    48
                         {disp8} je         _jmp_addr_0x007126aa                          // 0x0071266f    7439
                         dec                eax                                           // 0x00712671    48
                         {disp8} jne        _jmp_addr_0x007126c5                          // 0x00712672    7551
                         {disp8} lea        eax, dword ptr [esp + 0x07]                   // 0x00712674    8d442407
                         push               eax                                           // 0x00712678    50
                         call               _jmp_addr_0x00712230                          // 0x00712679    e8b2fbffff
                         cmp                byte ptr [esp + 0x07], 0x02                   // 0x0071267e    807c240702
                         {disp8} je         _jmp_addr_0x007126c5                          // 0x00712683    7440
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x00712685    8d4c2408
                         push               ecx                                           // 0x00712689    51
                         mov.s              ecx, esi                                      // 0x0071268a    8bce
                         call               _jmp_addr_0x00712330                          // 0x0071268c    e89ffcffff
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x00712691    8b442408
                         test               eax, eax                                      // 0x00712695    85c0
                         {disp8} jne        _jmp_addr_0x007126c5                          // 0x00712697    752c
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x00712699    8b542410
                         mov                dword ptr [edx], 0x00000000                   // 0x0071269d    c70200000000
                         pop                esi                                           // 0x007126a3    5e
                         add                esp, 0x08                                     // 0x007126a4    83c408
                         ret                0x0004                                        // 0x007126a7    c20400
_jmp_addr_0x007126aa:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x007126aa    8b442410
                         cmp                dword ptr [eax], 0x00                         // 0x007126ae    833800
                         {disp8} jne        _jmp_addr_0x007126c5                          // 0x007126b1    7512
                         push               0x0                                           // 0x007126b3    6a00
                         push               0x0                                           // 0x007126b5    6a00
                         mov.s              ecx, esi                                      // 0x007126b7    8bce
                         call               _jmp_addr_0x00711fe0                          // 0x007126b9    e822f9ffff
                         mov.s              ecx, eax                                      // 0x007126be    8bc8
                         call               _jmp_addr_0x007120e0                          // 0x007126c0    e81bfaffff
_jmp_addr_0x007126c5:    pop                esi                                           // 0x007126c5    5e
                         add                esp, 0x08                                     // 0x007126c6    83c408
                         ret                0x0004                                        // 0x007126c9    c20400
                         nop                                                              // 0x007126cc    90
                         nop                                                              // 0x007126cd    90
                         nop                                                              // 0x007126ce    90
                         nop                                                              // 0x007126cf    90
                         sub                esp, 0x08                                     // 0x007126d0    83ec08
                         push               esi                                           // 0x007126d3    56
                         xor.s              eax, eax                                      // 0x007126d4    33c0
                         mov.s              esi, ecx                                      // 0x007126d6    8bf1
                         {disp32} mov       al, byte ptr [esi + 0x00000514]               // 0x007126d8    8a8614050000
                         dec                eax                                           // 0x007126de    48
                         {disp8} je         _jmp_addr_0x0071271a                          // 0x007126df    7439
                         dec                eax                                           // 0x007126e1    48
                         {disp8} jne        _jmp_addr_0x00712735                          // 0x007126e2    7551
                         {disp8} lea        eax, dword ptr [esp + 0x07]                   // 0x007126e4    8d442407
                         push               eax                                           // 0x007126e8    50
                         call               _jmp_addr_0x00712230                          // 0x007126e9    e842fbffff
                         cmp                byte ptr [esp + 0x07], 0x02                   // 0x007126ee    807c240702
                         {disp8} je         _jmp_addr_0x00712735                          // 0x007126f3    7440
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x007126f5    8d4c2408
                         push               ecx                                           // 0x007126f9    51
                         mov.s              ecx, esi                                      // 0x007126fa    8bce
                         call               _jmp_addr_0x00712330                          // 0x007126fc    e82ffcffff
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x00712701    8b442408
                         test               eax, eax                                      // 0x00712705    85c0
                         {disp8} jne        _jmp_addr_0x00712735                          // 0x00712707    752c
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x00712709    8b542410
                         mov                dword ptr [edx], 0x00000000                   // 0x0071270d    c70200000000
                         pop                esi                                           // 0x00712713    5e
                         add                esp, 0x08                                     // 0x00712714    83c408
                         ret                0x0004                                        // 0x00712717    c20400
_jmp_addr_0x0071271a:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0071271a    8b442410
                         cmp                dword ptr [eax], 0x00                         // 0x0071271e    833800
                         {disp8} jne        _jmp_addr_0x00712735                          // 0x00712721    7512
                         push               0x0                                           // 0x00712723    6a00
                         push               0x0                                           // 0x00712725    6a00
                         mov.s              ecx, esi                                      // 0x00712727    8bce
                         call               _jmp_addr_0x00711fe0                          // 0x00712729    e8b2f8ffff
                         mov.s              ecx, eax                                      // 0x0071272e    8bc8
                         call               _jmp_addr_0x007120e0                          // 0x00712730    e8abf9ffff
_jmp_addr_0x00712735:    pop                esi                                           // 0x00712735    5e
                         add                esp, 0x08                                     // 0x00712736    83c408
                         ret                0x0004                                        // 0x00712739    c20400
                         nop                                                              // 0x0071273c    90
                         nop                                                              // 0x0071273d    90
                         nop                                                              // 0x0071273e    90
                         nop                                                              // 0x0071273f    90
                         sub                esp, 0x4c                                     // 0x00712740    83ec4c
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf078]        // 0x00712743    a17850e800
                         mov                ecx, 0x00000100                               // 0x00712748    b900010000
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x0071274d    894c2420
                         {disp8} mov        dword ptr [esp + 0x28], ecx                   // 0x00712751    894c2428
                         {disp8} mov        ecx, dword ptr [esp + 0x50]                   // 0x00712755    8b4c2450
                         push               ebx                                           // 0x00712759    53
                         xor.s              ebx, ebx                                      // 0x0071275a    33db
                         dec                ecx                                           // 0x0071275c    49
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x0071275d    89442408
                         mov                eax, 0x00c20c4c                               // 0x00712761    b84c0cc200
                         {disp8} mov        dword ptr [esp + 0x04], 0x0000004c            // 0x00712766    c74424044c000000
                         {disp8} mov        dword ptr [esp + 0x0c], ebx                   // 0x0071276e    895c240c
                         {disp8} mov        dword ptr [esp + 0x10], ebx                   // 0x00712772    895c2410
                         {disp8} mov        dword ptr [esp + 0x14], ebx                   // 0x00712776    895c2414
                         {disp8} mov        dword ptr [esp + 0x18], ebx                   // 0x0071277a    895c2418
                         {disp8} mov        dword ptr [esp + 0x1c], 0x00000001            // 0x0071277e    c744241c01000000
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x00712786    89442420
                         {disp8} mov        dword ptr [esp + 0x28], ebx                   // 0x0071278a    895c2428
                         {disp8} mov        dword ptr [esp + 0x30], OFFSET ??_C@_01PJCK@?4?$AA@            // 0x0071278e    c7442430bca7be00
                         {disp8} mov        dword ptr [esp + 0x34], 0x00c20c40            // 0x00712796    c7442434400cc200
                         {disp8} mov        dword ptr [esp + 0x38], ebx                   // 0x0071279e    895c2438
                         {disp8} mov        word ptr [esp + 0x3c], bx                     // 0x007127a2    66895c243c
                         {disp8} mov        word ptr [esp + 0x3e], bx                     // 0x007127a7    66895c243e
                         {disp8} mov        dword ptr [esp + 0x40], ebx                   // 0x007127ac    895c2440
                         {disp8} mov        dword ptr [esp + 0x44], ebx                   // 0x007127b0    895c2444
                         {disp8} mov        dword ptr [esp + 0x48], ebx                   // 0x007127b4    895c2448
                         {disp8} mov        dword ptr [esp + 0x4c], ebx                   // 0x007127b8    895c244c
                         {disp8} je         _jmp_addr_0x007127cd                          // 0x007127bc    740f
                         dec                ecx                                           // 0x007127be    49
                         {disp8} jne        _jmp_addr_0x007127db                          // 0x007127bf    751a
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                   // 0x007127c1    8d4c2404
                         push               ecx                                           // 0x007127c5    51
                         call               _jmp_addr_0x007aed2a                          // 0x007127c6    e85fc50900
                         {disp8} jmp        _jmp_addr_0x007127d7                          // 0x007127cb    eb0a
_jmp_addr_0x007127cd:    {disp8} lea        edx, dword ptr [esp + 0x04]                   // 0x007127cd    8d542404
                         push               edx                                           // 0x007127d1    52
                         call               _jmp_addr_0x007aed24                          // 0x007127d2    e84dc50900
_jmp_addr_0x007127d7:    {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x007127d7    8b442420
_jmp_addr_0x007127db:    mov                dl, byte ptr [eax]                            // 0x007127db    8a10
                         xor.s              ecx, ecx                                      // 0x007127dd    33c9
                         cmp.s              dl, bl                                        // 0x007127df    3ad3
                         {disp8} je         _jmp_addr_0x007127f9                          // 0x007127e1    7416
_jmp_addr_0x007127e3:    cmp                byte ptr [ecx + eax * 0x1], 0x2e              // 0x007127e3    803c012e
                         {disp8} jne        _jmp_addr_0x007127f0                          // 0x007127e7    7507
                         mov                byte ptr [ecx + eax * 0x1], bl                // 0x007127e9    881c01
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x007127ec    8b442420
_jmp_addr_0x007127f0:    {disp8} mov        dl, byte ptr [ecx + eax * 0x1 + 0x01]         // 0x007127f0    8a540101
                         inc                ecx                                           // 0x007127f4    41
                         cmp.s              dl, bl                                        // 0x007127f5    3ad3
                         {disp8} jne        _jmp_addr_0x007127e3                          // 0x007127f7    75ea
_jmp_addr_0x007127f9:    and                byte ptr [data_bytes + 0x4bf304], -0x04       // 0x007127f9    80250453e800fc
                         pop                ebx                                           // 0x00712800    5b
                         add                esp, 0x4c                                     // 0x00712801    83c44c
                         ret                                                              // 0x00712804    c3
                         nop                                                              // 0x00712805    90
                         nop                                                              // 0x00712806    90
                         nop                                                              // 0x00712807    90
                         nop                                                              // 0x00712808    90
                         nop                                                              // 0x00712809    90
                         nop                                                              // 0x0071280a    90
                         nop                                                              // 0x0071280b    90
                         nop                                                              // 0x0071280c    90
                         nop                                                              // 0x0071280d    90
                         nop                                                              // 0x0071280e    90
                         nop                                                              // 0x0071280f    90
_globl_ct_0x00712810:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x00712810    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x00712816    b001
                         test               al, cl                                        // 0x00712818    84c8
                         {disp8} jne        _jmp_addr_0x00712824                          // 0x0071281a    7508
                         or.s               cl, al                                        // 0x0071281c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x0071281e    880d34c9fa00
_jmp_addr_0x00712824:    {disp32} jmp       _jmp_addr_0x00712830                          // 0x00712824    e907000000
                         nop                                                              // 0x00712829    90
                         nop                                                              // 0x0071282a    90
                         nop                                                              // 0x0071282b    90
                         nop                                                              // 0x0071282c    90
                         nop                                                              // 0x0071282d    90
                         nop                                                              // 0x0071282e    90
                         nop                                                              // 0x0071282f    90
_jmp_addr_0x00712830:    push               0x00407870                                    // 0x00712830    6870784000
                         call               _atexit                                       // 0x00712835    e8572f0b00
                         pop                ecx                                           // 0x0071283a    59
                         ret                                                              // 0x0071283b    c3
                         nop                                                              // 0x0071283c    90
                         nop                                                              // 0x0071283d    90
                         nop                                                              // 0x0071283e    90
                         nop                                                              // 0x0071283f    90
_globl_ct_0x00712840:    {disp32} jmp       _jmp_addr_0x00712850                          // 0x00712840    e90b000000
                         nop                                                              // 0x00712845    90
                         nop                                                              // 0x00712846    90
                         nop                                                              // 0x00712847    90
                         nop                                                              // 0x00712848    90
                         nop                                                              // 0x00712849    90
                         nop                                                              // 0x0071284a    90
                         nop                                                              // 0x0071284b    90
                         nop                                                              // 0x0071284c    90
                         nop                                                              // 0x0071284d    90
                         nop                                                              // 0x0071284e    90
                         nop                                                              // 0x0071284f    90
_jmp_addr_0x00712850:    {disp32} mov       dword ptr [data_bytes + 0x3d3160], 0x3e000000 // 0x00712850    c7056091d9000000003e
                         ret                                                              // 0x0071285a    c3
                         nop                                                              // 0x0071285b    90
                         nop                                                              // 0x0071285c    90
                         nop                                                              // 0x0071285d    90
                         nop                                                              // 0x0071285e    90
                         nop                                                              // 0x0071285f    90
_globl_ct_0x00712860:    {disp32} jmp       _jmp_addr_0x00712870                          // 0x00712860    e90b000000
                         nop                                                              // 0x00712865    90
                         nop                                                              // 0x00712866    90
                         nop                                                              // 0x00712867    90
                         nop                                                              // 0x00712868    90
                         nop                                                              // 0x00712869    90
                         nop                                                              // 0x0071286a    90
                         nop                                                              // 0x0071286b    90
                         nop                                                              // 0x0071286c    90
                         nop                                                              // 0x0071286d    90
                         nop                                                              // 0x0071286e    90
                         nop                                                              // 0x0071286f    90
_jmp_addr_0x00712870:    {disp32} fld       dword ptr [rdata_bytes + 0xae280]             // 0x00712870    d90580729500
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x00712876    d80db4a38a00
                         {disp32} fstp      dword ptr [data_bytes + 0x3d3170]             // 0x0071287c    d91d7091d900
                         ret                                                              // 0x00712882    c3
                         nop                                                              // 0x00712883    90
                         nop                                                              // 0x00712884    90
                         nop                                                              // 0x00712885    90
                         nop                                                              // 0x00712886    90
                         nop                                                              // 0x00712887    90
                         nop                                                              // 0x00712888    90
                         nop                                                              // 0x00712889    90
                         nop                                                              // 0x0071288a    90
                         nop                                                              // 0x0071288b    90
                         nop                                                              // 0x0071288c    90
                         nop                                                              // 0x0071288d    90
                         nop                                                              // 0x0071288e    90
                         nop                                                              // 0x0071288f    90
_globl_ct_0x00712890:    {disp32} jmp       _jmp_addr_0x007128a0                          // 0x00712890    e90b000000
                         nop                                                              // 0x00712895    90
                         nop                                                              // 0x00712896    90
                         nop                                                              // 0x00712897    90
                         nop                                                              // 0x00712898    90
                         nop                                                              // 0x00712899    90
                         nop                                                              // 0x0071289a    90
                         nop                                                              // 0x0071289b    90
                         nop                                                              // 0x0071289c    90
                         nop                                                              // 0x0071289d    90
                         nop                                                              // 0x0071289e    90
                         nop                                                              // 0x0071289f    90
_jmp_addr_0x007128a0:    {disp32} fld       dword ptr [rdata_bytes + 0xae288]             // 0x007128a0    d90588729500
                         {disp32} fmul      dword ptr [rdata_bytes + 0xae284]             // 0x007128a6    d80d84729500
                         {disp32} fstp      dword ptr [data_bytes + 0x3d3054]             // 0x007128ac    d91d5490d900
                         ret                                                              // 0x007128b2    c3
                         nop                                                              // 0x007128b3    90
                         nop                                                              // 0x007128b4    90
                         nop                                                              // 0x007128b5    90
                         nop                                                              // 0x007128b6    90
                         nop                                                              // 0x007128b7    90
                         nop                                                              // 0x007128b8    90
                         nop                                                              // 0x007128b9    90
                         nop                                                              // 0x007128ba    90
                         nop                                                              // 0x007128bb    90
                         nop                                                              // 0x007128bc    90
                         nop                                                              // 0x007128bd    90
                         nop                                                              // 0x007128be    90
                         nop                                                              // 0x007128bf    90
_globl_ct_0x007128c0:    call               _jmp_addr_0x007128d0                          // 0x007128c0    e80b000000
                         {disp32} jmp       _jmp_addr_0x007128e0                          // 0x007128c5    e916000000
                         nop                                                              // 0x007128ca    90
                         nop                                                              // 0x007128cb    90
                         nop                                                              // 0x007128cc    90
                         nop                                                              // 0x007128cd    90
                         nop                                                              // 0x007128ce    90
                         nop                                                              // 0x007128cf    90
_jmp_addr_0x007128d0:    xor.s              eax, eax                                      // 0x007128d0    33c0
                         {disp32} mov       dword ptr [data_bytes + 0x3d316c], eax        // 0x007128d2    a36c91d900
                         {disp32} mov       dword ptr [data_bytes + 0x3d3168], eax        // 0x007128d7    a36891d900
                         ret                                                              // 0x007128dc    c3
                         nop                                                              // 0x007128dd    90
                         nop                                                              // 0x007128de    90
                         nop                                                              // 0x007128df    90
_jmp_addr_0x007128e0:    push               0x007128f0                                    // 0x007128e0    68f0287100
                         call               _atexit                                       // 0x007128e5    e8a72e0b00
                         pop                ecx                                           // 0x007128ea    59
                         ret                                                              // 0x007128eb    c3
                         nop                                                              // 0x007128ec    90
                         nop                                                              // 0x007128ed    90
                         nop                                                              // 0x007128ee    90
                         nop                                                              // 0x007128ef    90
                         {disp32} mov       cl, byte ptr [data_bytes + 0x3d3058]          // 0x007128f0    8a0d5890d900
                         mov                al, 0x01                                      // 0x007128f6    b001
                         test               al, cl                                        // 0x007128f8    84c8
                         {disp8} jne        _jmp_addr_0x00712904                          // 0x007128fa    7508
                         or.s               cl, al                                        // 0x007128fc    0ac8
                         {disp32} mov       byte ptr [data_bytes + 0x3d3058], cl          // 0x007128fe    880d5890d900
_jmp_addr_0x00712904:    ret                                                              // 0x00712904    c3
                         nop                                                              // 0x00712905    90
                         nop                                                              // 0x00712906    90
                         nop                                                              // 0x00712907    90
                         nop                                                              // 0x00712908    90
                         nop                                                              // 0x00712909    90
                         nop                                                              // 0x0071290a    90
                         nop                                                              // 0x0071290b    90
                         nop                                                              // 0x0071290c    90
                         nop                                                              // 0x0071290d    90
                         nop                                                              // 0x0071290e    90
                         nop                                                              // 0x0071290f    90
                         {disp32} mov       eax, dword ptr [ecx + 0x00000100]             // 0x00712910    8b8100010000
                         mov                dl, byte ptr [eax + ecx * 0x1]                // 0x00712916    8a1408
                         test               dl, dl                                        // 0x00712919    84d2
                         {disp8} jne        _jmp_addr_0x0071292c                          // 0x0071291b    750f
                         {disp32} mov       dword ptr [ecx + 0x00000108], 0xffffffff      // 0x0071291d    c78108010000ffffffff
                         mov                al, 0x01                                      // 0x00712927    b001
                         ret                0x0004                                        // 0x00712929    c20400
_jmp_addr_0x0071292c:    cmp                dl, byte ptr [esp + 0x04]                     // 0x0071292c    3a542404
                         {disp8} jne        _jmp_addr_0x0071293e                          // 0x00712930    750c
                         inc                eax                                           // 0x00712932    40
                         {disp32} mov       dword ptr [ecx + 0x00000100], eax             // 0x00712933    898100010000
                         xor.s              al, al                                        // 0x00712939    32c0
                         ret                0x0004                                        // 0x0071293b    c20400
_jmp_addr_0x0071293e:    {disp32} mov       dword ptr [ecx + 0x00000100], 0x00000000      // 0x0071293e    c7810001000000000000
                         xor.s              al, al                                        // 0x00712948    32c0
                         ret                0x0004                                        // 0x0071294a    c20400
                         nop                                                              // 0x0071294d    90
                         nop                                                              // 0x0071294e    90
                         nop                                                              // 0x0071294f    90
_jmp_addr_0x00712950:    push               ebx                                           // 0x00712950    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]                   // 0x00712951    8b5c2408
                         push               ebp                                           // 0x00712955    55
                         push               esi                                           // 0x00712956    56
                         push               edi                                           // 0x00712957    57
                         {disp8} mov        edi, dword ptr [esp + 0x18]                   // 0x00712958    8b7c2418
                         mov.s              esi, ecx                                      // 0x0071295c    8bf1
                         mov                ecx, dword ptr [edi]                          // 0x0071295e    8b0f
                         xor.s              edx, edx                                      // 0x00712960    33d2
                         mov                dl, byte ptr [ecx + ebx * 0x1]                // 0x00712962    8a1419
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x00712965    8d442418
                         push               eax                                           // 0x00712969    50
                         mov.s              ecx, esi                                      // 0x0071296a    8bce
                         push               edx                                           // 0x0071296c    52
                         call               _jmp_addr_0x007129e0                          // 0x0071296d    e86e000000
                         test               al, al                                        // 0x00712972    84c0
                         {disp8} jne        _jmp_addr_0x00712996                          // 0x00712974    7520
                         {disp8} mov        ebp, dword ptr [esp + 0x1c]                   // 0x00712976    8b6c241c
_jmp_addr_0x0071297a:    mov                eax, dword ptr [edi]                          // 0x0071297a    8b07
                         cmp.s              eax, ebp                                      // 0x0071297c    3bc5
                         {disp8} jge        _jmp_addr_0x007129a1                          // 0x0071297e    7d21
                         xor.s              edx, edx                                      // 0x00712980    33d2
                         mov                dl, byte ptr [eax + ebx * 0x1]                // 0x00712982    8a1418
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x00712985    8d4c2418
                         push               ecx                                           // 0x00712989    51
                         mov.s              ecx, esi                                      // 0x0071298a    8bce
                         push               edx                                           // 0x0071298c    52
                         call               _jmp_addr_0x007129e0                          // 0x0071298d    e84e000000
                         test               al, al                                        // 0x00712992    84c0
                         {disp8} je         _jmp_addr_0x0071297a                          // 0x00712994    74e4
_jmp_addr_0x00712996:    {disp8} fld        dword ptr [esp + 0x18]                        // 0x00712996    d9442418
                         pop                edi                                           // 0x0071299a    5f
                         pop                esi                                           // 0x0071299b    5e
                         pop                ebp                                           // 0x0071299c    5d
                         pop                ebx                                           // 0x0071299d    5b
                         ret                0x000c                                        // 0x0071299e    c20c00
_jmp_addr_0x007129a1:    {disp32} fld       dword ptr [rdata_bytes + 0x2678]              // 0x007129a1    d90578b68a00
                         pop                edi                                           // 0x007129a7    5f
                         {disp32} mov       dword ptr [esi + 0x00000104], 0xffffffff      // 0x007129a8    c78604010000ffffffff
                         pop                esi                                           // 0x007129b2    5e
                         pop                ebp                                           // 0x007129b3    5d
                         pop                ebx                                           // 0x007129b4    5b
                         ret                0x000c                                        // 0x007129b5    c20c00
                         nop                                                              // 0x007129b8    90
                         nop                                                              // 0x007129b9    90
                         nop                                                              // 0x007129ba    90
                         nop                                                              // 0x007129bb    90
                         nop                                                              // 0x007129bc    90
                         nop                                                              // 0x007129bd    90
                         nop                                                              // 0x007129be    90
                         nop                                                              // 0x007129bf    90
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x007129c0    8b44240c
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x007129c4    8b542408
                         push               eax                                           // 0x007129c8    50
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x007129c9    8b442408
                         push               edx                                           // 0x007129cd    52
                         push               eax                                           // 0x007129ce    50
                         call               _jmp_addr_0x00712950                          // 0x007129cf    e87cffffff
                         call               _jmp_addr_0x007a1400                          // 0x007129d4    e827ea0800
                         ret                0x000c                                        // 0x007129d9    c20c00
                         nop                                                              // 0x007129dc    90
                         nop                                                              // 0x007129dd    90
                         nop                                                              // 0x007129de    90
                         nop                                                              // 0x007129df    90
_jmp_addr_0x007129e0:    push               ebx                                           // 0x007129e0    53
                         push               esi                                           // 0x007129e1    56
                         mov.s              esi, ecx                                      // 0x007129e2    8bf1
                         {disp32} mov       al, byte ptr [esi + 0x00000111]               // 0x007129e4    8a8611010000
                         test               al, al                                        // 0x007129ea    84c0
                         {disp8} jne        _jmp_addr_0x00712a08                          // 0x007129ec    751a
                         {disp32} mov       dword ptr [esi + 0x00000104], 0xffffffff      // 0x007129ee    c78604010000ffffffff
                         add                esi, 0x00000080                               // 0x007129f8    81c680000000
                         mov                byte ptr [esi], 0x00                          // 0x007129fe    c60600
                         pop                esi                                           // 0x00712a01    5e
                         xor.s              al, al                                        // 0x00712a02    32c0
                         pop                ebx                                           // 0x00712a04    5b
                         ret                0x0008                                        // 0x00712a05    c20800
_jmp_addr_0x00712a08:    {disp8} mov        bl, byte ptr [esp + 0x0c]                     // 0x00712a08    8a5c240c
                         movsx              eax, bl                                       // 0x00712a0c    0fbec3
                         push               eax                                           // 0x00712a0f    50
                         call               _isdigit                                      // 0x00712a10    e8d83e0b00
                         add                esp, 0x04                                     // 0x00712a15    83c404
                         test               eax, eax                                      // 0x00712a18    85c0
                         {disp8} jne        _jmp_addr_0x00712a5f                          // 0x00712a1a    7543
                         cmp                bl, 0x2e                                      // 0x00712a1c    80fb2e
                         {disp8} je         _jmp_addr_0x00712a5f                          // 0x00712a1f    743e
                         cmp                bl, 0x22                                      // 0x00712a21    80fb22
                         {disp8} je         _jmp_addr_0x00712a3c                          // 0x00712a24    7416
                         cmp                bl, 0x2c                                      // 0x00712a26    80fb2c
                         {disp8} je         _jmp_addr_0x00712a3c                          // 0x00712a29    7411
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x00712a2b    8b4c2410
                         pop                esi                                           // 0x00712a2f    5e
                         mov                dword ptr [ecx], 0xbf800000                   // 0x00712a30    c701000080bf
                         mov                al, 0x01                                      // 0x00712a36    b001
                         pop                ebx                                           // 0x00712a38    5b
                         ret                0x0008                                        // 0x00712a39    c20800
_jmp_addr_0x00712a3c:    {disp32} lea       edx, dword ptr [esi + 0x00000080]             // 0x00712a3c    8d9680000000
                         push               edx                                           // 0x00712a42    52
                         call               _atof                                         // 0x00712a43    e8866a0b00
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00712a48    8b442414
                         fstp               dword ptr [eax]                               // 0x00712a4c    d918
                         add                esp, 0x04                                     // 0x00712a4e    83c404
                         {disp32} mov       byte ptr [esi + 0x00000111], 0x00             // 0x00712a51    c6861101000000
                         pop                esi                                           // 0x00712a58    5e
                         mov                al, 0x01                                      // 0x00712a59    b001
                         pop                ebx                                           // 0x00712a5b    5b
                         ret                0x0008                                        // 0x00712a5c    c20800
_jmp_addr_0x00712a5f:    {disp32} mov       ecx, dword ptr [esi + 0x00000104]             // 0x00712a5f    8b8e04010000
                         {disp32} mov       byte ptr [esi + ecx * 0x1 + 0x00000080], bl   // 0x00712a65    889c0e80000000
                         {disp32} inc       dword ptr [esi + 0x00000104]                  // 0x00712a6c    ff8604010000
                         pop                esi                                           // 0x00712a72    5e
                         xor.s              al, al                                        // 0x00712a73    32c0
                         pop                ebx                                           // 0x00712a75    5b
                         ret                0x0008                                        // 0x00712a76    c20800
                         nop                                                              // 0x00712a79    90
                         nop                                                              // 0x00712a7a    90
                         nop                                                              // 0x00712a7b    90
                         nop                                                              // 0x00712a7c    90
                         nop                                                              // 0x00712a7d    90
                         nop                                                              // 0x00712a7e    90
                         nop                                                              // 0x00712a7f    90
                         {disp8} mov        al, byte ptr [esp + 0x04]                     // 0x00712a80    8a442404
                         cmp                al, 0x28                                      // 0x00712a84    3c28
                         {disp8} jne        _jmp_addr_0x00712aae                          // 0x00712a86    7526
                         {disp32} mov       eax, dword ptr [ecx + 0x00000108]             // 0x00712a88    8b8108010000
                         cmp                eax, -0x01                                    // 0x00712a8e    83f8ff
                         {disp8} jne        _jmp_addr_0x00712aa2                          // 0x00712a91    750f
                         {disp32} mov       dword ptr [ecx + 0x00000108], 0x00000001      // 0x00712a93    c7810801000001000000
                         xor.s              al, al                                        // 0x00712a9d    32c0
                         ret                0x0004                                        // 0x00712a9f    c20400
_jmp_addr_0x00712aa2:    inc                eax                                           // 0x00712aa2    40
                         {disp32} mov       dword ptr [ecx + 0x00000108], eax             // 0x00712aa3    898108010000
                         xor.s              al, al                                        // 0x00712aa9    32c0
                         ret                0x0004                                        // 0x00712aab    c20400
_jmp_addr_0x00712aae:    cmp                al, 0x29                                      // 0x00712aae    3c29
                         {disp8} jne        _jmp_addr_0x00712ac7                          // 0x00712ab0    7515
                         {disp32} mov       eax, dword ptr [ecx + 0x00000108]             // 0x00712ab2    8b8108010000
                         dec                eax                                           // 0x00712ab8    48
                         test               eax, eax                                      // 0x00712ab9    85c0
                         {disp32} mov       dword ptr [ecx + 0x00000108], eax             // 0x00712abb    898108010000
                         sete               al                                            // 0x00712ac1    0f94c0
                         ret                0x0004                                        // 0x00712ac4    c20400
_jmp_addr_0x00712ac7:    cmp                al, 0x22                                      // 0x00712ac7    3c22
                         {disp8} jne        _jmp_addr_0x00712ae6                          // 0x00712ac9    751b
                         {disp32} mov       al, byte ptr [ecx + 0x00000110]               // 0x00712acb    8a8110010000
                         test               al, al                                        // 0x00712ad1    84c0
                         sete               al                                            // 0x00712ad3    0f94c0
                         test               al, al                                        // 0x00712ad6    84c0
                         {disp32} mov       byte ptr [ecx + 0x00000110], al               // 0x00712ad8    888110010000
                         {disp8} jne        _jmp_addr_0x00712ae6                          // 0x00712ade    7506
                         {disp32} inc       dword ptr [ecx + 0x0000010c]                  // 0x00712ae0    ff810c010000
_jmp_addr_0x00712ae6:    {disp32} mov       eax, dword ptr [ecx + 0x00000108]             // 0x00712ae6    8b8108010000
                         test               eax, eax                                      // 0x00712aec    85c0
                         sete               al                                            // 0x00712aee    0f94c0
                         ret                0x0004                                        // 0x00712af1    c20400
                         nop                                                              // 0x00712af4    90
                         nop                                                              // 0x00712af5    90
                         nop                                                              // 0x00712af6    90
                         nop                                                              // 0x00712af7    90
                         nop                                                              // 0x00712af8    90
                         nop                                                              // 0x00712af9    90
                         nop                                                              // 0x00712afa    90
                         nop                                                              // 0x00712afb    90
                         nop                                                              // 0x00712afc    90
                         nop                                                              // 0x00712afd    90
                         nop                                                              // 0x00712afe    90
                         nop                                                              // 0x00712aff    90
                         mov.s              eax, ecx                                      // 0x00712b00    8bc1
                         xor.s              ecx, ecx                                      // 0x00712b02    33c9
                         mov.s              edx, eax                                      // 0x00712b04    8bd0
                         mov                dword ptr [edx], ecx                          // 0x00712b06    890a
                         {disp8} mov        byte ptr [edx + 0x04], cl                     // 0x00712b08    884a04
                         ret                                                              // 0x00712b0b    c3
                         nop                                                              // 0x00712b0c    90
                         nop                                                              // 0x00712b0d    90
                         nop                                                              // 0x00712b0e    90
                         nop                                                              // 0x00712b0f    90
_jmp_addr_0x00712b10:    ret                                                              // 0x00712b10    c3
                         nop                                                              // 0x00712b11    90
                         nop                                                              // 0x00712b12    90
                         nop                                                              // 0x00712b13    90
                         nop                                                              // 0x00712b14    90
                         nop                                                              // 0x00712b15    90
                         nop                                                              // 0x00712b16    90
                         nop                                                              // 0x00712b17    90
                         nop                                                              // 0x00712b18    90
                         nop                                                              // 0x00712b19    90
                         nop                                                              // 0x00712b1a    90
                         nop                                                              // 0x00712b1b    90
                         nop                                                              // 0x00712b1c    90
                         nop                                                              // 0x00712b1d    90
                         nop                                                              // 0x00712b1e    90
                         nop                                                              // 0x00712b1f    90
_jmp_addr_0x00712b20:    sub                esp, 0x08                                     // 0x00712b20    83ec08
                         push               ebx                                           // 0x00712b23    53
                         push               ebp                                           // 0x00712b24    55
                         {disp8} mov        ebp, dword ptr [esp + 0x14]                   // 0x00712b25    8b6c2414
                         {disp8} mov        eax, dword ptr [ebp + 0x04]                   // 0x00712b29    8b4504
                         {disp8} mov        ebx, dword ptr [ebp + 0x0c]                   // 0x00712b2c    8b5d0c
                         {disp8} mov        ecx, dword ptr [ebp + 0x08]                   // 0x00712b2f    8b4d08
                         push               esi                                           // 0x00712b32    56
                         push               edi                                           // 0x00712b33    57
                         push               0x0000008f                                    // 0x00712b34    688f000000
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x00712b39    89442420
                         {disp8} lea        eax, dword ptr [ebx + 0x01]                   // 0x00712b3d    8d4301
                         push               0x00c20c58                                    // 0x00712b40    68580cc200
                         push               eax                                           // 0x00712b45    50
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                   // 0x00712b46    894c241c
                         call               ___nw__FUl                                    // 0x00712b4a    e8418c0c00
                         mov.s              edx, eax                                      // 0x00712b4f    8bd0
                         mov.s              ecx, ebx                                      // 0x00712b51    8bcb
                         mov.s              esi, ecx                                      // 0x00712b53    8bf1
                         shr                ecx, 2                                        // 0x00712b55    c1e902
                         xor.s              eax, eax                                      // 0x00712b58    33c0
                         mov.s              edi, edx                                      // 0x00712b5a    8bfa
                         rep stosd                                                        // 0x00712b5c    f3ab
                         mov.s              ecx, esi                                      // 0x00712b5e    8bce
                         and                ecx, 0x03                                     // 0x00712b60    83e103
                         rep stosb                                                        // 0x00712b63    f3aa
                         mov.s              ecx, ebx                                      // 0x00712b65    8bcb
                         mov.s              eax, ecx                                      // 0x00712b67    8bc1
                         shr                ecx, 2                                        // 0x00712b69    c1e902
                         {disp8} lea        esi, dword ptr [ebp + 0x10]                   // 0x00712b6c    8d7510
                         mov.s              edi, edx                                      // 0x00712b6f    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00712b71    f3a5
                         mov.s              ecx, eax                                      // 0x00712b73    8bc8
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x00712b75    8b442428
                         and                ecx, 0x03                                     // 0x00712b79    83e103
                         add                esp, 0x0c                                     // 0x00712b7c    83c40c
                         test               eax, eax                                      // 0x00712b7f    85c0
                         rep movsb                                                        // 0x00712b81    f3a4
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x00712b83    89542414
                         {disp8} lea        esi, dword ptr [ebx + 0x10]                   // 0x00712b87    8d7310
                         mov                byte ptr [edx + ebx * 0x1], 0x00              // 0x00712b8a    c6041a00
                         {disp8} jle        _jmp_addr_0x00712c09                          // 0x00712b8e    7e79
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x00712b90    8944241c
_jmp_addr_0x00712b94:    push               0x00000096                                    // 0x00712b94    6896000000
                         push               0x00c20c58                                    // 0x00712b99    68580cc200
                         push               0x9                                           // 0x00712b9e    6a09
                         call               ___nw__FUl                                    // 0x00712ba0    e8eb8b0c00
                         add                esp, 0x0c                                     // 0x00712ba5    83c40c
                         test               eax, eax                                      // 0x00712ba8    85c0
                         {disp8} je         _jmp_addr_0x00712bb4                          // 0x00712baa    7408
                         {disp8} mov        byte ptr [eax + 0x08], -0x01                  // 0x00712bac    c64008ff
                         mov.s              edi, eax                                      // 0x00712bb0    8bf8
                         {disp8} jmp        _jmp_addr_0x00712bb6                          // 0x00712bb2    eb02
_jmp_addr_0x00712bb4:    xor.s              edi, edi                                      // 0x00712bb4    33ff
_jmp_addr_0x00712bb6:    mov                ecx, dword ptr [esi + ebp * 0x1]              // 0x00712bb6    8b0c2e
                         add                esi, 0x04                                     // 0x00712bb9    83c604
                         mov                dword ptr [edi], ecx                          // 0x00712bbc    890f
                         mov                edx, dword ptr [esi + ebp * 0x1]              // 0x00712bbe    8b142e
                         add                esi, 0x04                                     // 0x00712bc1    83c604
                         {disp8} mov        dword ptr [edi + 0x04], edx                   // 0x00712bc4    895704
                         mov                al, byte ptr [esi + ebp * 0x1]                // 0x00712bc7    8a042e
                         {disp8} mov        byte ptr [edi + 0x08], al                     // 0x00712bca    884708
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x00712bcd    8b442420
                         inc                esi                                           // 0x00712bd1    46
                         test               eax, eax                                      // 0x00712bd2    85c0
                         {disp8} je         _jmp_addr_0x00712bfa                          // 0x00712bd4    7424
                         test               edi, edi                                      // 0x00712bd6    85ff
                         {disp8} je         _jmp_addr_0x00712c03                          // 0x00712bd8    7429
                         push               0x8                                           // 0x00712bda    6a08
                         call               ??2@YAPAXI@Z                                  // 0x00712bdc    e80d390b00
                         add                esp, 0x04                                     // 0x00712be1    83c404
                         test               eax, eax                                      // 0x00712be4    85c0
                         {disp8} je         _jmp_addr_0x00712c03                          // 0x00712be6    741b
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x00712be8    8b4c2420
                         mov                edx, dword ptr [ecx]                          // 0x00712bec    8b11
                         {disp8} mov        dword ptr [eax + 0x04], edi                   // 0x00712bee    897804
                         mov                dword ptr [eax], edx                          // 0x00712bf1    8910
                         mov                dword ptr [ecx], eax                          // 0x00712bf3    8901
                         {disp8} inc        dword ptr [ecx + 0x04]                        // 0x00712bf5    ff4104
                         {disp8} jmp        _jmp_addr_0x00712c03                          // 0x00712bf8    eb09
_jmp_addr_0x00712bfa:    push               edi                                           // 0x00712bfa    57
                         call               ??3@YAXPAX@Z                                  // 0x00712bfb    e898c20900
                         add                esp, 0x04                                     // 0x00712c00    83c404
_jmp_addr_0x00712c03:    dec                dword ptr [esp + 0x1c]                        // 0x00712c03    ff4c241c
                         {disp8} jne        _jmp_addr_0x00712b94                          // 0x00712c07    758b
_jmp_addr_0x00712c09:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00712c09    8b442410
                         test               eax, eax                                      // 0x00712c0d    85c0
                         {disp8} jle        _jmp_addr_0x00712c8a                          // 0x00712c0f    7e79
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x00712c11    89442420
_jmp_addr_0x00712c15:    push               0x000000a4                                    // 0x00712c15    68a4000000
                         push               0x00c20c58                                    // 0x00712c1a    68580cc200
                         push               0x9                                           // 0x00712c1f    6a09
                         call               ___nw__FUl                                    // 0x00712c21    e86a8b0c00
                         add                esp, 0x0c                                     // 0x00712c26    83c40c
                         test               eax, eax                                      // 0x00712c29    85c0
                         {disp8} je         _jmp_addr_0x00712c35                          // 0x00712c2b    7408
                         {disp8} mov        byte ptr [eax + 0x08], -0x01                  // 0x00712c2d    c64008ff
                         mov.s              edi, eax                                      // 0x00712c31    8bf8
                         {disp8} jmp        _jmp_addr_0x00712c37                          // 0x00712c33    eb02
_jmp_addr_0x00712c35:    xor.s              edi, edi                                      // 0x00712c35    33ff
_jmp_addr_0x00712c37:    mov                ecx, dword ptr [esi + ebp * 0x1]              // 0x00712c37    8b0c2e
                         add                esi, 0x04                                     // 0x00712c3a    83c604
                         mov                dword ptr [edi], ecx                          // 0x00712c3d    890f
                         mov                edx, dword ptr [esi + ebp * 0x1]              // 0x00712c3f    8b142e
                         add                esi, 0x04                                     // 0x00712c42    83c604
                         {disp8} mov        dword ptr [edi + 0x04], edx                   // 0x00712c45    895704
                         mov                al, byte ptr [esi + ebp * 0x1]                // 0x00712c48    8a042e
                         {disp8} mov        byte ptr [edi + 0x08], al                     // 0x00712c4b    884708
                         {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x00712c4e    8b442424
                         inc                esi                                           // 0x00712c52    46
                         test               eax, eax                                      // 0x00712c53    85c0
                         {disp8} je         _jmp_addr_0x00712c7b                          // 0x00712c55    7424
                         test               edi, edi                                      // 0x00712c57    85ff
                         {disp8} je         _jmp_addr_0x00712c84                          // 0x00712c59    7429
                         push               0x8                                           // 0x00712c5b    6a08
                         call               ??2@YAPAXI@Z                                  // 0x00712c5d    e88c380b00
                         add                esp, 0x04                                     // 0x00712c62    83c404
                         test               eax, eax                                      // 0x00712c65    85c0
                         {disp8} je         _jmp_addr_0x00712c84                          // 0x00712c67    741b
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x00712c69    8b4c2424
                         mov                edx, dword ptr [ecx]                          // 0x00712c6d    8b11
                         {disp8} mov        dword ptr [eax + 0x04], edi                   // 0x00712c6f    897804
                         mov                dword ptr [eax], edx                          // 0x00712c72    8910
                         mov                dword ptr [ecx], eax                          // 0x00712c74    8901
                         {disp8} inc        dword ptr [ecx + 0x04]                        // 0x00712c76    ff4104
                         {disp8} jmp        _jmp_addr_0x00712c84                          // 0x00712c79    eb09
_jmp_addr_0x00712c7b:    push               edi                                           // 0x00712c7b    57
                         call               ??3@YAXPAX@Z                                  // 0x00712c7c    e817c20900
                         add                esp, 0x04                                     // 0x00712c81    83c404
_jmp_addr_0x00712c84:    dec                dword ptr [esp + 0x20]                        // 0x00712c84    ff4c2420
                         {disp8} jne        _jmp_addr_0x00712c15                          // 0x00712c88    758b
_jmp_addr_0x00712c8a:    add.s              esi, ebp                                      // 0x00712c8a    03f5
                         {disp8} mov        dword ptr [esp + 0x24], esi                   // 0x00712c8c    89742424
                         mov                esi, dword ptr [esi]                          // 0x00712c90    8b36
                         push               0x000000b2                                    // 0x00712c92    68b2000000
                         {disp8} lea        ecx, dword ptr [esi + ebx * 0x1 + 0x14]       // 0x00712c97    8d4c1e14
                         push               0x00c20c58                                    // 0x00712c9b    68580cc200
                         push               ecx                                           // 0x00712ca0    51
                         {disp8} mov        dword ptr [esp + 0x2c], esi                   // 0x00712ca1    8974242c
                         call               ___nw__FUl                                    // 0x00712ca5    e8e68a0c00
                         mov.s              ebp, eax                                      // 0x00712caa    8be8
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x00712cac    8b442420
                         {disp8} lea        ecx, dword ptr [ebx + 0x01]                   // 0x00712cb0    8d4b01
                         mov.s              edx, ecx                                      // 0x00712cb3    8bd1
                         shr                ecx, 2                                        // 0x00712cb5    c1e902
                         {disp8} mov        dword ptr [ebp + 0x00], ebx                   // 0x00712cb8    895d00
                         mov.s              esi, eax                                      // 0x00712cbb    8bf0
                         {disp8} lea        edi, dword ptr [ebp + 0x04]                   // 0x00712cbd    8d7d04
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00712cc0    f3a5
                         mov.s              ecx, edx                                      // 0x00712cc2    8bca
                         and                ecx, 0x03                                     // 0x00712cc4    83e103
                         rep movsb                                                        // 0x00712cc7    f3a4
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                   // 0x00712cc9    8b4c242c
                         {disp8} mov        esi, dword ptr [esp + 0x30]                   // 0x00712ccd    8b742430
                         add                ecx, 0x4                                      // 0x00712cd1    83c104
                         mov.s              edx, ecx                                      // 0x00712cd4    8bd1
                         shr                ecx, 2                                        // 0x00712cd6    c1e902
                         {disp8} lea        edi, dword ptr [ebx + ebp * 0x1 + 0x05]       // 0x00712cd9    8d7c2b05
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00712cdd    f3a5
                         mov.s              ecx, edx                                      // 0x00712cdf    8bca
                         and                ecx, 0x03                                     // 0x00712ce1    83e103
                         push               eax                                           // 0x00712ce4    50
                         rep movsb                                                        // 0x00712ce5    f3a4
                         call               ??3@YAXPAX@Z                                  // 0x00712ce7    e8acc10900
                         add                esp, 0x10                                     // 0x00712cec    83c410
                         pop                edi                                           // 0x00712cef    5f
                         pop                esi                                           // 0x00712cf0    5e
                         mov.s              eax, ebp                                      // 0x00712cf1    8bc5
                         pop                ebp                                           // 0x00712cf3    5d
                         pop                ebx                                           // 0x00712cf4    5b
                         add                esp, 0x08                                     // 0x00712cf5    83c408
                         ret                                                              // 0x00712cf8    c3
                         nop                                                              // 0x00712cf9    90
                         nop                                                              // 0x00712cfa    90
                         nop                                                              // 0x00712cfb    90
                         nop                                                              // 0x00712cfc    90
                         nop                                                              // 0x00712cfd    90
                         nop                                                              // 0x00712cfe    90
                         nop                                                              // 0x00712cff    90
_jmp_addr_0x00712d00:    sub                esp, 0x3c                                     // 0x00712d00    83ec3c
                         {disp8} mov        eax, dword ptr [esp + 0x48]                   // 0x00712d03    8b442448
                         {disp8} mov        ecx, dword ptr [esp + 0x4c]                   // 0x00712d07    8b4c244c
                         push               ebx                                           // 0x00712d0b    53
                         {disp8} mov        ebx, dword ptr [ecx + 0x04]                   // 0x00712d0c    8b5904
                         push               ebp                                           // 0x00712d0f    55
                         {disp8} mov        ebp, dword ptr [eax + 0x04]                   // 0x00712d10    8b6804
                         push               esi                                           // 0x00712d13    56
                         xor.s              esi, esi                                      // 0x00712d14    33f6
                         push               edi                                           // 0x00712d16    57
                         {disp8} mov        edi, dword ptr [esp + 0x54]                   // 0x00712d17    8b7c2454
                         or                 ecx, 0xffffffff                               // 0x00712d1b    83c9ff
                         xor.s              eax, eax                                      // 0x00712d1e    33c0
                         repne scasb                                                      // 0x00712d20    f2ae
                         push               0x000000cc                                    // 0x00712d22    68cc000000
                         not                ecx                                           // 0x00712d27    f7d1
                         {disp8} lea        eax, dword ptr [ebp + ebp * 0x8 + 0x00]       // 0x00712d29    8d44ed00
                         dec                ecx                                           // 0x00712d2d    49
                         push               0x00c20c58                                    // 0x00712d2e    68580cc200
                         push               eax                                           // 0x00712d33    50
                         {disp8} mov        dword ptr [esp + 0x1c], esi                   // 0x00712d34    8974241c
                         {disp8} mov        dword ptr [esp + 0x38], esi                   // 0x00712d38    89742438
                         {disp8} mov        dword ptr [esp + 0x3c], esi                   // 0x00712d3c    8974243c
                         {disp8} mov        dword ptr [esp + 0x40], esi                   // 0x00712d40    89742440
                         {disp8} mov        dword ptr [esp + 0x44], esi                   // 0x00712d44    89742444
                         {disp8} mov        dword ptr [esp + 0x48], esi                   // 0x00712d48    89742448
                         {disp8} mov        dword ptr [esp + 0x4c], esi                   // 0x00712d4c    8974244c
                         {disp8} mov        dword ptr [esp + 0x50], esi                   // 0x00712d50    89742450
                         {disp8} mov        dword ptr [esp + 0x30], ebx                   // 0x00712d54    895c2430
                         {disp8} mov        dword ptr [esp + 0x34], ecx                   // 0x00712d58    894c2434
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x00712d5c    89442424
                         call               ___nw__FUl                                    // 0x00712d60    e82b8a0c00
                         add                esp, 0x0c                                     // 0x00712d65    83c40c
                         cmp.s              eax, esi                                      // 0x00712d68    3bc6
                         {disp8} je         _jmp_addr_0x00712d84                          // 0x00712d6a    7418
                         {disp8} lea        edx, dword ptr [ebp + -0x01]                  // 0x00712d6c    8d55ff
                         cmp.s              edx, esi                                      // 0x00712d6f    3bd6
                         {disp8} jl         _jmp_addr_0x00712d80                          // 0x00712d71    7c0d
                         {disp8} lea        ecx, dword ptr [eax + 0x08]                   // 0x00712d73    8d4808
                         inc                edx                                           // 0x00712d76    42
_jmp_addr_0x00712d77:    mov                byte ptr [ecx], -0x01                         // 0x00712d77    c601ff
                         add                ecx, 0x9                                      // 0x00712d7a    83c109
                         dec                edx                                           // 0x00712d7d    4a
                         {disp8} jne        _jmp_addr_0x00712d77                          // 0x00712d7e    75f7
_jmp_addr_0x00712d80:    mov.s              edi, eax                                      // 0x00712d80    8bf8
                         {disp8} jmp        _jmp_addr_0x00712d86                          // 0x00712d82    eb02
_jmp_addr_0x00712d84:    xor.s              edi, edi                                      // 0x00712d84    33ff
_jmp_addr_0x00712d86:    push               0x000000cd                                    // 0x00712d86    68cd000000
                         lea                eax, dword ptr [ebx + ebx * 0x8]              // 0x00712d8b    8d04db
                         push               0x00c20c58                                    // 0x00712d8e    68580cc200
                         push               eax                                           // 0x00712d93    50
                         {disp8} mov        dword ptr [esp + 0x20], edi                   // 0x00712d94    897c2420
                         {disp8} mov        dword ptr [esp + 0x2c], eax                   // 0x00712d98    8944242c
                         call               ___nw__FUl                                    // 0x00712d9c    e8ef890c00
                         add                esp, 0x0c                                     // 0x00712da1    83c40c
                         cmp.s              eax, esi                                      // 0x00712da4    3bc6
                         {disp8} je         _jmp_addr_0x00712dc0                          // 0x00712da6    7418
                         {disp8} lea        edx, dword ptr [ebx + -0x01]                  // 0x00712da8    8d53ff
                         cmp.s              edx, esi                                      // 0x00712dab    3bd6
                         {disp8} jl         _jmp_addr_0x00712dbc                          // 0x00712dad    7c0d
                         {disp8} lea        ecx, dword ptr [eax + 0x08]                   // 0x00712daf    8d4808
                         inc                edx                                           // 0x00712db2    42
_jmp_addr_0x00712db3:    mov                byte ptr [ecx], -0x01                         // 0x00712db3    c601ff
                         add                ecx, 0x9                                      // 0x00712db6    83c109
                         dec                edx                                           // 0x00712db9    4a
                         {disp8} jne        _jmp_addr_0x00712db3                          // 0x00712dba    75f7
_jmp_addr_0x00712dbc:    mov.s              edx, eax                                      // 0x00712dbc    8bd0
                         {disp8} jmp        _jmp_addr_0x00712dc2                          // 0x00712dbe    eb02
_jmp_addr_0x00712dc0:    xor.s              edx, edx                                      // 0x00712dc0    33d2
_jmp_addr_0x00712dc2:    {disp8} mov        eax, dword ptr [esp + 0x58]                   // 0x00712dc2    8b442458
                         mov                eax, dword ptr [eax]                          // 0x00712dc6    8b00
                         cmp.s              eax, esi                                      // 0x00712dc8    3bc6
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x00712dca    8954241c
                         {disp8} je         _jmp_addr_0x00712def                          // 0x00712dce    741f
                         {disp8} lea        ecx, dword ptr [edi + 0x08]                   // 0x00712dd0    8d4f08
_jmp_addr_0x00712dd3:    {disp8} mov        edi, dword ptr [eax + 0x04]                   // 0x00712dd3    8b7804
                         mov                ebx, dword ptr [edi]                          // 0x00712dd6    8b1f
                         {disp8} mov        dword ptr [ecx + -0x08], ebx                  // 0x00712dd8    8959f8
                         {disp8} mov        ebx, dword ptr [edi + 0x04]                   // 0x00712ddb    8b5f04
                         {disp8} mov        dword ptr [ecx + -0x04], ebx                  // 0x00712dde    8959fc
                         {disp8} mov        bl, byte ptr [edi + 0x08]                     // 0x00712de1    8a5f08
                         mov                byte ptr [ecx], bl                            // 0x00712de4    8819
                         mov                eax, dword ptr [eax]                          // 0x00712de6    8b00
                         add                ecx, 0x9                                      // 0x00712de8    83c109
                         cmp.s              eax, esi                                      // 0x00712deb    3bc6
                         {disp8} jne        _jmp_addr_0x00712dd3                          // 0x00712ded    75e4
_jmp_addr_0x00712def:    {disp8} mov        ecx, dword ptr [esp + 0x5c]                   // 0x00712def    8b4c245c
                         mov                eax, dword ptr [ecx]                          // 0x00712df3    8b01
                         cmp.s              eax, esi                                      // 0x00712df5    3bc6
                         {disp8} je         _jmp_addr_0x00712e28                          // 0x00712df7    742f
                         {disp8} lea        ecx, dword ptr [edx + 0x08]                   // 0x00712df9    8d4a08
                         mov                edx, 0x00000001                               // 0x00712dfc    ba01000000
_jmp_addr_0x00712e01:    {disp8} mov        edi, dword ptr [eax + 0x04]                   // 0x00712e01    8b7804
                         mov                ebx, dword ptr [edi]                          // 0x00712e04    8b1f
                         {disp8} mov        dword ptr [ecx + -0x08], ebx                  // 0x00712e06    8959f8
                         {disp8} mov        ebx, dword ptr [edi + 0x04]                   // 0x00712e09    8b5f04
                         {disp8} mov        dword ptr [ecx + -0x04], ebx                  // 0x00712e0c    8959fc
                         {disp8} mov        bl, byte ptr [edi + 0x08]                     // 0x00712e0f    8a5f08
                         mov                byte ptr [ecx], bl                            // 0x00712e12    8819
                         {disp8} mov        edi, dword ptr [eax + 0x04]                   // 0x00712e14    8b7804
                         movsx              edi, byte ptr [edi + 0x08]                    // 0x00712e17    0fbe7f08
                         mov                eax, dword ptr [eax]                          // 0x00712e1b    8b00
                         add                ecx, 0x9                                      // 0x00712e1d    83c109
                         cmp.s              eax, esi                                      // 0x00712e20    3bc6
                         {disp8} mov        dword ptr [esp + edi * 0x4 + 0x2c], edx       // 0x00712e22    8954bc2c
                         {disp8} jne        _jmp_addr_0x00712e01                          // 0x00712e26    75d9
_jmp_addr_0x00712e28:    {disp8} mov        dword ptr [esp + 0x48], esi                   // 0x00712e28    89742448
                         {disp8} lea        eax, dword ptr [esp + 0x2c]                   // 0x00712e2c    8d44242c
                         mov                ecx, 0x00000008                               // 0x00712e30    b908000000
_jmp_addr_0x00712e35:    mov                edx, dword ptr [eax]                          // 0x00712e35    8b10
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x00712e37    8b7c2410
                         add.s              edi, edx                                      // 0x00712e3b    03fa
                         add                eax, 0x04                                     // 0x00712e3d    83c004
                         dec                ecx                                           // 0x00712e40    49
                         {disp8} mov        dword ptr [esp + 0x10], edi                   // 0x00712e41    897c2410
                         {disp8} jne        _jmp_addr_0x00712e35                          // 0x00712e45    75ee
                         {disp8} mov        eax, dword ptr [esp + 0x50]                   // 0x00712e47    8b442450
                         mov                ebx, dword ptr [eax]                          // 0x00712e4b    8b18
                         {disp8} mov        esi, dword ptr [esp + 0x24]                   // 0x00712e4d    8b742424
                         {disp8} mov        edx, dword ptr [esp + 0x28]                   // 0x00712e51    8b542428
                         lea                eax, dword ptr [esi + ebp * 0x1]              // 0x00712e55    8d042e
                         lea                ecx, dword ptr [ebx + eax * 0x8]              // 0x00712e58    8d0cc3
                         push               0x000000e0                                    // 0x00712e5b    68e0000000
                         add.s              eax, ecx                                      // 0x00712e60    03c1
                         {disp8} lea        eax, dword ptr [eax + edx * 0x1 + 0x14]       // 0x00712e62    8d441014
                         push               0x00c20c58                                    // 0x00712e66    68580cc200
                         push               eax                                           // 0x00712e6b    50
                         call               ___nw__FUl                                    // 0x00712e6c    e81f890c00
                         or                 ecx, 0xffffffff                               // 0x00712e71    83c9ff
                         {disp8} mov        edi, dword ptr [esp + 0x60]                   // 0x00712e74    8b7c2460
                         mov.s              edx, eax                                      // 0x00712e78    8bd0
                         xor.s              eax, eax                                      // 0x00712e7a    33c0
                         add                esp, 0x0c                                     // 0x00712e7c    83c40c
                         repne scasb                                                      // 0x00712e7f    f2ae
                         not                ecx                                           // 0x00712e81    f7d1
                         dec                ecx                                           // 0x00712e83    49
                         mov.s              eax, ecx                                      // 0x00712e84    8bc1
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x00712e86    8b4c2410
                         mov                dword ptr [edx], ecx                          // 0x00712e8a    890a
                         {disp8} mov        dword ptr [edx + 0x04], ebp                   // 0x00712e8c    896a04
                         {disp8} mov        dword ptr [edx + 0x08], esi                   // 0x00712e8f    897208
                         {disp8} mov        esi, dword ptr [esp + 0x54]                   // 0x00712e92    8b742454
                         {disp8} mov        dword ptr [edx + 0x0c], eax                   // 0x00712e96    89420c
                         mov.s              ecx, eax                                      // 0x00712e99    8bc8
                         mov.s              ebp, ecx                                      // 0x00712e9b    8be9
                         shr                ecx, 2                                        // 0x00712e9d    c1e902
                         {disp8} lea        edi, dword ptr [edx + 0x10]                   // 0x00712ea0    8d7a10
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00712ea3    f3a5
                         mov.s              ecx, ebp                                      // 0x00712ea5    8bcd
                         and                ecx, 0x03                                     // 0x00712ea7    83e103
                         rep movsb                                                        // 0x00712eaa    f3a4
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x00712eac    8b4c2418
                         {disp8} mov        esi, dword ptr [esp + 0x14]                   // 0x00712eb0    8b742414
                         mov.s              ebp, ecx                                      // 0x00712eb4    8be9
                         shr                ecx, 2                                        // 0x00712eb6    c1e902
                         add                eax, 0x10                                     // 0x00712eb9    83c010
                         lea                edi, dword ptr [edx + eax * 0x1]              // 0x00712ebc    8d3c02
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00712ebf    f3a5
                         mov.s              ecx, ebp                                      // 0x00712ec1    8bcd
                         and                ecx, 0x03                                     // 0x00712ec3    83e103
                         rep movsb                                                        // 0x00712ec6    f3a4
                         {disp8} mov        esi, dword ptr [esp + 0x1c]                   // 0x00712ec8    8b74241c
                         mov.s              ecx, ebp                                      // 0x00712ecc    8bcd
                         add.s              eax, ecx                                      // 0x00712ece    03c1
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x00712ed0    8b4c2420
                         mov.s              ebp, ecx                                      // 0x00712ed4    8be9
                         shr                ecx, 2                                        // 0x00712ed6    c1e902
                         lea                edi, dword ptr [edx + eax * 0x1]              // 0x00712ed9    8d3c02
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00712edc    f3a5
                         mov.s              ecx, ebp                                      // 0x00712ede    8bcd
                         and                ecx, 0x03                                     // 0x00712ee0    83e103
                         rep movsb                                                        // 0x00712ee3    f3a4
                         {disp8} mov        esi, dword ptr [esp + 0x50]                   // 0x00712ee5    8b742450
                         mov.s              ecx, ebp                                      // 0x00712ee9    8bcd
                         add.s              eax, ecx                                      // 0x00712eeb    03c1
                         {disp8} lea        ecx, dword ptr [ebx + 0x04]                   // 0x00712eed    8d4b04
                         mov.s              ebp, ecx                                      // 0x00712ef0    8be9
                         shr                ecx, 2                                        // 0x00712ef2    c1e902
                         lea                edi, dword ptr [edx + eax * 0x1]              // 0x00712ef5    8d3c02
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00712ef8    f3a5
                         mov.s              ecx, ebp                                      // 0x00712efa    8bcd
                         and                ecx, 0x03                                     // 0x00712efc    83e103
                         rep movsb                                                        // 0x00712eff    f3a4
                         {disp8} mov        ecx, dword ptr [esp + 0x60]                   // 0x00712f01    8b4c2460
                         test               ecx, ecx                                      // 0x00712f05    85c9
                         {disp8} je         _jmp_addr_0x00712f0f                          // 0x00712f07    7406
                         {disp8} lea        eax, dword ptr [ebx + eax * 0x1 + 0x04]       // 0x00712f09    8d440304
                         mov                dword ptr [ecx], eax                          // 0x00712f0d    8901
_jmp_addr_0x00712f0f:    pop                edi                                           // 0x00712f0f    5f
                         pop                esi                                           // 0x00712f10    5e
                         pop                ebp                                           // 0x00712f11    5d
                         mov.s              eax, edx                                      // 0x00712f12    8bc2
                         pop                ebx                                           // 0x00712f14    5b
                         add                esp, 0x3c                                     // 0x00712f15    83c43c
                         ret                                                              // 0x00712f18    c3
                         nop                                                              // 0x00712f19    90
                         nop                                                              // 0x00712f1a    90
                         nop                                                              // 0x00712f1b    90
                         nop                                                              // 0x00712f1c    90
                         nop                                                              // 0x00712f1d    90
                         nop                                                              // 0x00712f1e    90
                         nop                                                              // 0x00712f1f    90
_jmp_addr_0x00712f20:    xor.s              eax, eax                                      // 0x00712f20    33c0
                         sub                esp, 0x00000104                               // 0x00712f22    81ec04010000
                         push               esi                                           // 0x00712f28    56
                         mov.s              esi, ecx                                      // 0x00712f29    8bf1
                         {disp32} mov       dword ptr [esi + 0x00000434], eax             // 0x00712f2b    898634040000
                         {disp32} mov       dword ptr [esi + 0x00000430], eax             // 0x00712f31    898630040000
                         {disp32} mov       dword ptr [esi + 0x0000043c], eax             // 0x00712f37    89863c040000
                         {disp32} mov       dword ptr [esi + 0x00000438], eax             // 0x00712f3d    898638040000
                         push               edi                                           // 0x00712f43    57
                         {disp32} mov       edi, dword ptr [esp + 0x00000110]             // 0x00712f44    8bbc2410010000
                         cmp.s              edi, eax                                      // 0x00712f4b    3bf8
                         {disp8} mov        dword ptr [esi + 0x18], eax                   // 0x00712f4d    894618
                         {disp8} mov        dword ptr [esi + 0x08], eax                   // 0x00712f50    894608
                         {disp8} mov        dword ptr [esi + 0x10], eax                   // 0x00712f53    894610
                         {disp8} mov        byte ptr [esi + 0x1c], al                     // 0x00712f56    88461c
                         {disp8} lea        ecx, dword ptr [esi + 0x1c]                   // 0x00712f59    8d4e1c
                         {disp32} lea       edx, dword ptr [esi + 0x00000120]             // 0x00712f5c    8d9620010000
                         mov                byte ptr [edx], al                            // 0x00712f62    8802
                         {disp32} mov       dword ptr [esi + 0x0000042c], eax             // 0x00712f64    89862c040000
                         {disp8} mov        byte ptr [esi + 0x01], al                     // 0x00712f6a    884601
                         mov                byte ptr [esi], al                            // 0x00712f6d    8806
                         {disp8} je         _jmp_addr_0x00712fcb                          // 0x00712f6f    745a
                         push               edi                                           // 0x00712f71    57
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x00712f72    8d44240c
                         push               0x00bea85c                                    // 0x00712f76    685ca8be00
                         push               eax                                           // 0x00712f7b    50
                         call               _sprintf                                      // 0x00712f7c    e851280b00
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x00712f81    8d4c2414
                         push               ecx                                           // 0x00712f85    51
                         call               ?Exists@LHOSFile@@SAIPAD@Z                    // 0x00712f86    e815970a00
                         add                esp, 0x10                                     // 0x00712f8b    83c410
                         test               eax, eax                                      // 0x00712f8e    85c0
                         {disp8} jne        _jmp_addr_0x00712f9e                          // 0x00712f90    750c
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x00712f92    8d542408
                         push               edx                                           // 0x00712f96    52
                         mov.s              ecx, esi                                      // 0x00712f97    8bce
                         call               _jmp_addr_0x00713140                          // 0x00712f99    e8a2010000
_jmp_addr_0x00712f9e:    push               edi                                           // 0x00712f9e    57
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x00712f9f    8d44240c
                         push               0x00bea844                                    // 0x00712fa3    6844a8be00
                         push               eax                                           // 0x00712fa8    50
                         call               _sprintf                                      // 0x00712fa9    e824280b00
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x00712fae    8d4c2414
                         push               ecx                                           // 0x00712fb2    51
                         call               ?Exists@LHOSFile@@SAIPAD@Z                    // 0x00712fb3    e8e8960a00
                         add                esp, 0x10                                     // 0x00712fb8    83c410
                         test               eax, eax                                      // 0x00712fbb    85c0
                         {disp8} jne        _jmp_addr_0x00712fcb                          // 0x00712fbd    750c
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x00712fbf    8d542408
                         push               edx                                           // 0x00712fc3    52
                         mov.s              ecx, esi                                      // 0x00712fc4    8bce
                         call               _jmp_addr_0x007132b0                          // 0x00712fc6    e8e5020000
_jmp_addr_0x00712fcb:    pop                edi                                           // 0x00712fcb    5f
                         mov.s              eax, esi                                      // 0x00712fcc    8bc6
                         pop                esi                                           // 0x00712fce    5e
                         add                esp, 0x00000104                               // 0x00712fcf    81c404010000
                         ret                0x0004                                        // 0x00712fd5    c20400
                         nop                                                              // 0x00712fd8    90
                         nop                                                              // 0x00712fd9    90
                         nop                                                              // 0x00712fda    90
                         nop                                                              // 0x00712fdb    90
                         nop                                                              // 0x00712fdc    90
                         nop                                                              // 0x00712fdd    90
                         nop                                                              // 0x00712fde    90
                         nop                                                              // 0x00712fdf    90
_jmp_addr_0x00712fe0:    {disp32} jmp       _jmp_addr_0x00713120                          // 0x00712fe0    e93b010000
                         nop                                                              // 0x00712fe5    90
                         nop                                                              // 0x00712fe6    90
                         nop                                                              // 0x00712fe7    90
                         nop                                                              // 0x00712fe8    90
                         nop                                                              // 0x00712fe9    90
                         nop                                                              // 0x00712fea    90
                         nop                                                              // 0x00712feb    90
                         nop                                                              // 0x00712fec    90
                         nop                                                              // 0x00712fed    90
                         nop                                                              // 0x00712fee    90
                         nop                                                              // 0x00712fef    90
_jmp_addr_0x00712ff0:    push               ebx                                           // 0x00712ff0    53
                         push               ebp                                           // 0x00712ff1    55
                         push               esi                                           // 0x00712ff2    56
                         push               edi                                           // 0x00712ff3    57
                         mov.s              edi, ecx                                      // 0x00712ff4    8bf9
                         {disp8} mov        esi, dword ptr [edi + 0x18]                   // 0x00712ff6    8b7718
                         test               esi, esi                                      // 0x00712ff9    85f6
                         {disp8} je         _jmp_addr_0x00713014                          // 0x00712ffb    7417
                         mov.s              ecx, esi                                      // 0x00712ffd    8bce
                         call               _jmp_addr_0x00712b10                          // 0x00712fff    e80cfbffff
                         push               esi                                           // 0x00713004    56
                         call               ??3@YAXPAX@Z                                  // 0x00713005    e88ebe0900
                         add                esp, 0x04                                     // 0x0071300a    83c404
                         {disp8} mov        dword ptr [edi + 0x18], 0x00000000            // 0x0071300d    c7471800000000
_jmp_addr_0x00713014:    {disp32} lea       eax, dword ptr [edi + 0x00000120]             // 0x00713014    8d8720010000
                         mov                byte ptr [eax], 0x00                          // 0x0071301a    c60000
_jmp_addr_0x0071301d:    {disp32} mov       eax, dword ptr [edi + 0x00000430]             // 0x0071301d    8b8730040000
                         test               eax, eax                                      // 0x00713023    85c0
                         {disp8} je         _jmp_addr_0x00713075                          // 0x00713025    744e
                         {disp8} mov        ebx, dword ptr [eax + 0x04]                   // 0x00713027    8b5804
                         xor.s              ebp, ebp                                      // 0x0071302a    33ed
                         test               eax, eax                                      // 0x0071302c    85c0
                         {disp8} je         _jmp_addr_0x0071306a                          // 0x0071302e    743a
_jmp_addr_0x00713030:    cmp                dword ptr [eax + 0x04], ebx                   // 0x00713030    395804
                         mov                esi, dword ptr [eax]                          // 0x00713033    8b30
                         {disp8} jne        _jmp_addr_0x00713062                          // 0x00713035    752b
                         cmp                eax, dword ptr [edi + 0x00000430]             // 0x00713037    3b8730040000
                         {disp8} jne        _jmp_addr_0x00713047                          // 0x0071303d    7508
                         {disp32} mov       dword ptr [edi + 0x00000430], esi             // 0x0071303f    89b730040000
                         {disp8} jmp        _jmp_addr_0x0071304a                          // 0x00713045    eb03
_jmp_addr_0x00713047:    {disp8} mov        dword ptr [ebp + 0x00], esi                   // 0x00713047    897500
_jmp_addr_0x0071304a:    {disp32} mov       edx, dword ptr [edi + 0x00000434]             // 0x0071304a    8b9734040000
                         dec                edx                                           // 0x00713050    4a
                         push               eax                                           // 0x00713051    50
                         {disp32} mov       dword ptr [edi + 0x00000434], edx             // 0x00713052    899734040000
                         call               ??3@YAXPAX@Z                                  // 0x00713058    e83bbe0900
                         add                esp, 0x04                                     // 0x0071305d    83c404
                         {disp8} jmp        _jmp_addr_0x00713064                          // 0x00713060    eb02
_jmp_addr_0x00713062:    mov.s              ebp, eax                                      // 0x00713062    8be8
_jmp_addr_0x00713064:    test               esi, esi                                      // 0x00713064    85f6
                         mov.s              eax, esi                                      // 0x00713066    8bc6
                         {disp8} jne        _jmp_addr_0x00713030                          // 0x00713068    75c6
_jmp_addr_0x0071306a:    push               ebx                                           // 0x0071306a    53
                         call               ??3@YAXPAX@Z                                  // 0x0071306b    e828be0900
                         add                esp, 0x04                                     // 0x00713070    83c404
                         {disp8} jmp        _jmp_addr_0x0071301d                          // 0x00713073    eba8
_jmp_addr_0x00713075:    {disp32} mov       eax, dword ptr [edi + 0x00000438]             // 0x00713075    8b8738040000
                         test               eax, eax                                      // 0x0071307b    85c0
                         {disp8} je         _jmp_addr_0x007130cd                          // 0x0071307d    744e
                         {disp8} mov        ebx, dword ptr [eax + 0x04]                   // 0x0071307f    8b5804
                         xor.s              ebp, ebp                                      // 0x00713082    33ed
                         test               eax, eax                                      // 0x00713084    85c0
                         {disp8} je         _jmp_addr_0x007130c2                          // 0x00713086    743a
_jmp_addr_0x00713088:    cmp                dword ptr [eax + 0x04], ebx                   // 0x00713088    395804
                         mov                esi, dword ptr [eax]                          // 0x0071308b    8b30
                         {disp8} jne        _jmp_addr_0x007130ba                          // 0x0071308d    752b
                         cmp                eax, dword ptr [edi + 0x00000438]             // 0x0071308f    3b8738040000
                         {disp8} jne        _jmp_addr_0x0071309f                          // 0x00713095    7508
                         {disp32} mov       dword ptr [edi + 0x00000438], esi             // 0x00713097    89b738040000
                         {disp8} jmp        _jmp_addr_0x007130a2                          // 0x0071309d    eb03
_jmp_addr_0x0071309f:    {disp8} mov        dword ptr [ebp + 0x00], esi                   // 0x0071309f    897500
_jmp_addr_0x007130a2:    {disp32} mov       edx, dword ptr [edi + 0x0000043c]             // 0x007130a2    8b973c040000
                         dec                edx                                           // 0x007130a8    4a
                         push               eax                                           // 0x007130a9    50
                         {disp32} mov       dword ptr [edi + 0x0000043c], edx             // 0x007130aa    89973c040000
                         call               ??3@YAXPAX@Z                                  // 0x007130b0    e8e3bd0900
                         add                esp, 0x04                                     // 0x007130b5    83c404
                         {disp8} jmp        _jmp_addr_0x007130bc                          // 0x007130b8    eb02
_jmp_addr_0x007130ba:    mov.s              ebp, eax                                      // 0x007130ba    8be8
_jmp_addr_0x007130bc:    test               esi, esi                                      // 0x007130bc    85f6
                         mov.s              eax, esi                                      // 0x007130be    8bc6
                         {disp8} jne        _jmp_addr_0x00713088                          // 0x007130c0    75c6
_jmp_addr_0x007130c2:    push               ebx                                           // 0x007130c2    53
                         call               ??3@YAXPAX@Z                                  // 0x007130c3    e8d0bd0900
                         add                esp, 0x04                                     // 0x007130c8    83c404
                         {disp8} jmp        _jmp_addr_0x00713075                          // 0x007130cb    eba8
_jmp_addr_0x007130cd:    {disp32} mov       dword ptr [edi + 0x0000042c], 0x00000000      // 0x007130cd    c7872c04000000000000
                         mov                byte ptr [edi], 0x00                          // 0x007130d7    c60700
                         pop                edi                                           // 0x007130da    5f
                         pop                esi                                           // 0x007130db    5e
                         pop                ebp                                           // 0x007130dc    5d
                         pop                ebx                                           // 0x007130dd    5b
                         ret                                                              // 0x007130de    c3
                         nop                                                              // 0x007130df    90
_jmp_addr_0x007130e0:    push               esi                                           // 0x007130e0    56
                         mov.s              esi, ecx                                      // 0x007130e1    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x10]                   // 0x007130e3    8b4610
                         test               eax, eax                                      // 0x007130e6    85c0
                         {disp8} je         _jmp_addr_0x007130f3                          // 0x007130e8    7409
                         push               eax                                           // 0x007130ea    50
                         call               ??3@YAXPAX@Z                                  // 0x007130eb    e8a8bd0900
                         add                esp, 0x04                                     // 0x007130f0    83c404
_jmp_addr_0x007130f3:    {disp8} mov        eax, dword ptr [esi + 0x08]                   // 0x007130f3    8b4608
                         test               eax, eax                                      // 0x007130f6    85c0
                         {disp8} je         _jmp_addr_0x00713103                          // 0x007130f8    7409
                         push               eax                                           // 0x007130fa    50
                         call               ??3@YAXPAX@Z                                  // 0x007130fb    e898bd0900
                         add                esp, 0x04                                     // 0x00713100    83c404
_jmp_addr_0x00713103:    {disp8} lea        eax, dword ptr [esi + 0x1c]                   // 0x00713103    8d461c
                         {disp8} mov        dword ptr [esi + 0x08], 0x00000000            // 0x00713106    c7460800000000
                         {disp8} mov        dword ptr [esi + 0x10], 0x00000000            // 0x0071310d    c7461000000000
                         mov                byte ptr [eax], 0x00                          // 0x00713114    c60000
                         {disp8} mov        byte ptr [esi + 0x01], 0x00                   // 0x00713117    c6460100
                         pop                esi                                           // 0x0071311b    5e
                         ret                                                              // 0x0071311c    c3
                         nop                                                              // 0x0071311d    90
                         nop                                                              // 0x0071311e    90
                         nop                                                              // 0x0071311f    90
_jmp_addr_0x00713120:    push               esi                                           // 0x00713120    56
                         mov.s              esi, ecx                                      // 0x00713121    8bf1
                         call               _jmp_addr_0x007130e0                          // 0x00713123    e8b8ffffff
                         mov.s              ecx, esi                                      // 0x00713128    8bce
                         call               _jmp_addr_0x00712ff0                          // 0x0071312a    e8c1feffff
                         pop                esi                                           // 0x0071312f    5e
                         ret                                                              // 0x00713130    c3
                         nop                                                              // 0x00713131    90
                         nop                                                              // 0x00713132    90
                         nop                                                              // 0x00713133    90
                         nop                                                              // 0x00713134    90
                         nop                                                              // 0x00713135    90
                         nop                                                              // 0x00713136    90
                         nop                                                              // 0x00713137    90
                         nop                                                              // 0x00713138    90
                         nop                                                              // 0x00713139    90
                         nop                                                              // 0x0071313a    90
                         nop                                                              // 0x0071313b    90
                         nop                                                              // 0x0071313c    90
                         nop                                                              // 0x0071313d    90
                         nop                                                              // 0x0071313e    90
                         nop                                                              // 0x0071313f    90
_jmp_addr_0x00713140:    sub                esp, 0x68                                     // 0x00713140    83ec68
                         push               ebx                                           // 0x00713143    53
                         push               esi                                           // 0x00713144    56
                         mov.s              esi, ecx                                      // 0x00713145    8bf1
                         push               edi                                           // 0x00713147    57
                         {disp8} mov        dword ptr [esp + 0x0c], esi                   // 0x00713148    8974240c
                         call               _jmp_addr_0x00712ff0                          // 0x0071314c    e89ffeffff
                         xor.s              eax, eax                                      // 0x00713151    33c0
                         mov                ecx, 0x00000019                               // 0x00713153    b919000000
                         {disp8} lea        edi, dword ptr [esp + 0x10]                   // 0x00713158    8d7c2410
                         rep stosd                                                        // 0x0071315c    f3ab
                         {disp8} mov        edi, dword ptr [esp + 0x78]                   // 0x0071315e    8b7c2478
                         push               edi                                           // 0x00713162    57
                         call               ?Exists@LHOSFile@@SAIPAD@Z                    // 0x00713163    e838950a00
                         add                esp, 0x04                                     // 0x00713168    83c404
                         test               eax, eax                                      // 0x0071316b    85c0
                         {disp32} jne       _jmp_addr_0x00713297                          // 0x0071316d    0f8524010000
                         push               0x009ce5d8                                    // 0x00713173    68d8e59c00
                         push               edi                                           // 0x00713178    57
                         call               _fopen                                        // 0x00713179    e89f3c0b00
                         mov.s              ebx, eax                                      // 0x0071317e    8bd8
                         add                esp, 0x08                                     // 0x00713180    83c408
                         test               ebx, ebx                                      // 0x00713183    85db
                         {disp32} je        _jmp_addr_0x00713297                          // 0x00713185    0f840c010000
                         or                 ecx, 0xffffffff                               // 0x0071318b    83c9ff
                         xor.s              eax, eax                                      // 0x0071318e    33c0
                         repne scasb                                                      // 0x00713190    f2ae
                         not                ecx                                           // 0x00713192    f7d1
                         sub.s              edi, ecx                                      // 0x00713194    2bf9
                         mov.s              eax, ecx                                      // 0x00713196    8bc1
                         {disp32} lea       edx, dword ptr [esi + 0x00000120]             // 0x00713198    8d9620010000
                         shr                ecx, 2                                        // 0x0071319e    c1e902
                         mov.s              esi, edi                                      // 0x007131a1    8bf7
                         mov.s              edi, edx                                      // 0x007131a3    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x007131a5    f3a5
                         mov.s              ecx, eax                                      // 0x007131a7    8bc8
                         push               ebp                                           // 0x007131a9    55
                         and                ecx, 0x03                                     // 0x007131aa    83e103
                         push               ebx                                           // 0x007131ad    53
                         rep movsb                                                        // 0x007131ae    f3a4
                         call               __fileno                                      // 0x007131b0    e8ee2a1900
                         push               eax                                           // 0x007131b5    50
                         call               __filelength                                  // 0x007131b6    e85e2a1900
                         push               0x0000014a                                    // 0x007131bb    684a010000
                         mov.s              esi, eax                                      // 0x007131c0    8bf0
                         push               0x00c20c58                                    // 0x007131c2    68580cc200
                         push               esi                                           // 0x007131c7    56
                         call               ___nw__FUl                                    // 0x007131c8    e8c3850c00
                         push               ebx                                           // 0x007131cd    53
                         push               esi                                           // 0x007131ce    56
                         mov.s              ebp, eax                                      // 0x007131cf    8be8
                         push               0x1                                           // 0x007131d1    6a01
                         push               ebp                                           // 0x007131d3    55
                         call               _fread                                        // 0x007131d4    e8b2420b00
                         push               ebx                                           // 0x007131d9    53
                         call               _fclose                                       // 0x007131da    e8513c0b00
                         or                 ecx, 0xffffffff                               // 0x007131df    83c9ff
                         xor.s              eax, eax                                      // 0x007131e2    33c0
                         add                esp, 0x28                                     // 0x007131e4    83c428
                         mov                edi, 0x0095728c                               // 0x007131e7    bf8c729500
                         repne scasb                                                      // 0x007131ec    f2ae
                         not                ecx                                           // 0x007131ee    f7d1
                         dec                ecx                                           // 0x007131f0    49
                         mov.s              edx, ecx                                      // 0x007131f1    8bd1
                         shr                ecx, 2                                        // 0x007131f3    c1e902
                         mov.s              esi, ebp                                      // 0x007131f6    8bf5
                         {disp8} lea        edi, dword ptr [esp + 0x14]                   // 0x007131f8    8d7c2414
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x007131fc    f3a5
                         mov.s              ecx, edx                                      // 0x007131fe    8bca
                         and                ecx, 0x03                                     // 0x00713200    83e103
                         rep movsb                                                        // 0x00713203    f3a4
                         xor.s              bl, bl                                        // 0x00713205    32db
                         mov                esi, 0x0095728c                               // 0x00713207    be8c729500
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x0071320c    8d442414
_jmp_addr_0x00713210:    mov                dl, byte ptr [eax]                            // 0x00713210    8a10
                         mov.s              cl, dl                                        // 0x00713212    8aca
                         cmp                dl, byte ptr [esi]                            // 0x00713214    3a16
                         {disp8} jne        _jmp_addr_0x00713234                          // 0x00713216    751c
                         test               cl, cl                                        // 0x00713218    84c9
                         {disp8} je         _jmp_addr_0x00713230                          // 0x0071321a    7414
                         {disp8} mov        dl, byte ptr [eax + 0x01]                     // 0x0071321c    8a5001
                         mov.s              cl, dl                                        // 0x0071321f    8aca
                         cmp                dl, byte ptr [esi + 0x01]                     // 0x00713221    3a5601
                         {disp8} jne        _jmp_addr_0x00713234                          // 0x00713224    750e
                         add                eax, 0x02                                     // 0x00713226    83c002
                         add                esi, 0x02                                     // 0x00713229    83c602
                         test               cl, cl                                        // 0x0071322c    84c9
                         {disp8} jne        _jmp_addr_0x00713210                          // 0x0071322e    75e0
_jmp_addr_0x00713230:    xor.s              eax, eax                                      // 0x00713230    33c0
                         {disp8} jmp        _jmp_addr_0x00713239                          // 0x00713232    eb05
_jmp_addr_0x00713234:    sbb.s              eax, eax                                      // 0x00713234    1bc0
                         sbb                eax, -0x01                                    // 0x00713236    83d8ff
_jmp_addr_0x00713239:    test               eax, eax                                      // 0x00713239    85c0
                         {disp8} jne        _jmp_addr_0x00713270                          // 0x0071323b    7533
                         {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x0071323d    8b742410
                         {disp32} lea       eax, dword ptr [esi + 0x00000430]             // 0x00713241    8d8630040000
                         push               eax                                           // 0x00713247    50
                         {disp32} lea       ecx, dword ptr [esi + 0x00000438]             // 0x00713248    8d8e38040000
                         push               ecx                                           // 0x0071324e    51
                         or                 ecx, 0xffffffff                               // 0x0071324f    83c9ff
                         xor.s              eax, eax                                      // 0x00713252    33c0
                         mov                edi, 0x0095728c                               // 0x00713254    bf8c729500
                         repne scasb                                                      // 0x00713259    f2ae
                         not                ecx                                           // 0x0071325b    f7d1
                         dec                ecx                                           // 0x0071325d    49
                         add.s              ecx, ebp                                      // 0x0071325e    03cd
                         push               ecx                                           // 0x00713260    51
                         mov                bl, 0x01                                      // 0x00713261    b301
                         call               _jmp_addr_0x00712b20                          // 0x00713263    e8b8f8ffff
                         add                esp, 0x0c                                     // 0x00713268    83c40c
                         {disp8} mov        dword ptr [esi + 0x18], eax                   // 0x0071326b    894618
                         {disp8} jmp        _jmp_addr_0x00713274                          // 0x0071326e    eb04
_jmp_addr_0x00713270:    {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x00713270    8b742410
_jmp_addr_0x00713274:    push               ebp                                           // 0x00713274    55
                         call               ??3@YAXPAX@Z                                  // 0x00713275    e81ebc0900
                         add                esp, 0x04                                     // 0x0071327a    83c404
                         test               bl, bl                                        // 0x0071327d    84db
                         pop                ebp                                           // 0x0071327f    5d
                         {disp8} je         _jmp_addr_0x00713290                          // 0x00713280    740e
                         pop                edi                                           // 0x00713282    5f
                         mov                byte ptr [esi], 0x01                          // 0x00713283    c60601
                         pop                esi                                           // 0x00713286    5e
                         mov                al, 0x01                                      // 0x00713287    b001
                         pop                ebx                                           // 0x00713289    5b
                         add                esp, 0x68                                     // 0x0071328a    83c468
                         ret                0x0004                                        // 0x0071328d    c20400
_jmp_addr_0x00713290:    mov.s              ecx, esi                                      // 0x00713290    8bce
                         call               _jmp_addr_0x00712ff0                          // 0x00713292    e859fdffff
_jmp_addr_0x00713297:    pop                edi                                           // 0x00713297    5f
                         pop                esi                                           // 0x00713298    5e
                         xor.s              al, al                                        // 0x00713299    32c0
                         pop                ebx                                           // 0x0071329b    5b
                         add                esp, 0x68                                     // 0x0071329c    83c468
                         ret                0x0004                                        // 0x0071329f    c20400
                         nop                                                              // 0x007132a2    90
                         nop                                                              // 0x007132a3    90
                         nop                                                              // 0x007132a4    90
                         nop                                                              // 0x007132a5    90
                         nop                                                              // 0x007132a6    90
                         nop                                                              // 0x007132a7    90
                         nop                                                              // 0x007132a8    90
                         nop                                                              // 0x007132a9    90
                         nop                                                              // 0x007132aa    90
                         nop                                                              // 0x007132ab    90
                         nop                                                              // 0x007132ac    90
                         nop                                                              // 0x007132ad    90
                         nop                                                              // 0x007132ae    90
                         nop                                                              // 0x007132af    90
_jmp_addr_0x007132b0:    sub                esp, 0x08                                     // 0x007132b0    83ec08
                         push               ebx                                           // 0x007132b3    53
                         push               edi                                           // 0x007132b4    57
                         mov.s              ebx, ecx                                      // 0x007132b5    8bd9
                         call               _jmp_addr_0x007130e0                          // 0x007132b7    e824feffff
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x007132bc    8b7c2414
                         push               0x009ce5d8                                    // 0x007132c0    68d8e59c00
                         push               edi                                           // 0x007132c5    57
                         call               _fopen                                        // 0x007132c6    e8523b0b00
                         mov.s              edx, eax                                      // 0x007132cb    8bd0
                         add                esp, 0x08                                     // 0x007132cd    83c408
                         test               edx, edx                                      // 0x007132d0    85d2
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x007132d2    89542414
                         {disp32} je        _jmp_addr_0x007133bd                          // 0x007132d6    0f84e1000000
                         or                 ecx, 0xffffffff                               // 0x007132dc    83c9ff
                         xor.s              eax, eax                                      // 0x007132df    33c0
                         repne scasb                                                      // 0x007132e1    f2ae
                         not                ecx                                           // 0x007132e3    f7d1
                         sub.s              edi, ecx                                      // 0x007132e5    2bf9
                         mov.s              eax, ecx                                      // 0x007132e7    8bc1
                         push               ebp                                           // 0x007132e9    55
                         push               esi                                           // 0x007132ea    56
                         shr                ecx, 2                                        // 0x007132eb    c1e902
                         mov.s              esi, edi                                      // 0x007132ee    8bf7
                         {disp8} lea        ebp, dword ptr [ebx + 0x1c]                   // 0x007132f0    8d6b1c
                         mov.s              edi, ebp                                      // 0x007132f3    8bfd
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x007132f5    f3a5
                         mov.s              ecx, eax                                      // 0x007132f7    8bc8
                         and                ecx, 0x03                                     // 0x007132f9    83e103
                         push               edx                                           // 0x007132fc    52
                         rep movsb                                                        // 0x007132fd    f3a4
                         call               __fileno                                      // 0x007132ff    e89f291900
                         push               eax                                           // 0x00713304    50
                         call               __filelength                                  // 0x00713305    e80f291900
                         push               0x00000170                                    // 0x0071330a    6870010000
                         mov.s              esi, eax                                      // 0x0071330f    8bf0
                         push               0x00c20c58                                    // 0x00713311    68580cc200
                         push               esi                                           // 0x00713316    56
                         call               ___nw__FUl                                    // 0x00713317    e874840c00
                         {disp8} mov        ecx, dword ptr [esp + 0x30]                   // 0x0071331c    8b4c2430
                         push               ecx                                           // 0x00713320    51
                         push               esi                                           // 0x00713321    56
                         mov.s              ebp, eax                                      // 0x00713322    8be8
                         push               0x1                                           // 0x00713324    6a01
                         push               ebp                                           // 0x00713326    55
                         call               _fread                                        // 0x00713327    e85f410b00
                         {disp8} mov        esi, dword ptr [ebp + 0x00]                   // 0x0071332c    8b7500
                         {disp8} mov        edi, dword ptr [ebp + 0x04]                   // 0x0071332f    8b7d04
                         push               0x00000178                                    // 0x00713332    6878010000
                         push               0x00c20c58                                    // 0x00713337    68580cc200
                         push               esi                                           // 0x0071333c    56
                         {disp8} mov        dword ptr [esp + 0x44], esi                   // 0x0071333d    89742444
                         {disp8} mov        dword ptr [esp + 0x40], edi                   // 0x00713341    897c2440
                         call               ___nw__FUl                                    // 0x00713345    e846840c00
                         push               0x00000179                                    // 0x0071334a    6879010000
                         push               0x00c20c58                                    // 0x0071334f    68580cc200
                         push               edi                                           // 0x00713354    57
                         {disp8} mov        dword ptr [ebx + 0x08], eax                   // 0x00713355    894308
                         call               ___nw__FUl                                    // 0x00713358    e833840c00
                         mov.s              ecx, esi                                      // 0x0071335d    8bce
                         mov.s              edx, ecx                                      // 0x0071335f    8bd1
                         shr                ecx, 2                                        // 0x00713361    c1e902
                         {disp8} mov        dword ptr [ebx + 0x0c], esi                   // 0x00713364    89730c
                         {disp8} mov        dword ptr [ebx + 0x14], edi                   // 0x00713367    897b14
                         {disp8} mov        edi, dword ptr [ebx + 0x08]                   // 0x0071336a    8b7b08
                         {disp8} mov        dword ptr [ebx + 0x10], eax                   // 0x0071336d    894310
                         {disp8} lea        esi, dword ptr [ebp + 0x08]                   // 0x00713370    8d7508
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00713373    f3a5
                         mov.s              ecx, edx                                      // 0x00713375    8bca
                         and                ecx, 0x03                                     // 0x00713377    83e103
                         rep movsb                                                        // 0x0071337a    f3a4
                         {disp8} mov        ecx, dword ptr [esp + 0x4c]                   // 0x0071337c    8b4c244c
                         {disp8} mov        edi, dword ptr [ebx + 0x10]                   // 0x00713380    8b7b10
                         mov.s              eax, edx                                      // 0x00713383    8bc2
                         mov.s              edx, ecx                                      // 0x00713385    8bd1
                         shr                ecx, 2                                        // 0x00713387    c1e902
                         {disp8} lea        esi, dword ptr [eax + ebp * 0x1 + 0x08]       // 0x0071338a    8d742808
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0071338e    f3a5
                         mov.s              ecx, edx                                      // 0x00713390    8bca
                         and                ecx, 0x03                                     // 0x00713392    83e103
                         rep movsb                                                        // 0x00713395    f3a4
                         push               ebp                                           // 0x00713397    55
                         {disp8} mov        byte ptr [ebx + 0x01], 0x01                   // 0x00713398    c6430101
                         call               ??3@YAXPAX@Z                                  // 0x0071339c    e8f7ba0900
                         {disp8} mov        eax, dword ptr [esp + 0x5c]                   // 0x007133a1    8b44245c
                         add                esp, 0x40                                     // 0x007133a5    83c440
                         push               eax                                           // 0x007133a8    50
                         call               _fclose                                       // 0x007133a9    e8823a0b00
                         add                esp, 0x04                                     // 0x007133ae    83c404
                         pop                esi                                           // 0x007133b1    5e
                         pop                ebp                                           // 0x007133b2    5d
                         pop                edi                                           // 0x007133b3    5f
                         mov                al, 0x01                                      // 0x007133b4    b001
                         pop                ebx                                           // 0x007133b6    5b
                         add                esp, 0x08                                     // 0x007133b7    83c408
                         ret                0x0004                                        // 0x007133ba    c20400
_jmp_addr_0x007133bd:    pop                edi                                           // 0x007133bd    5f
                         xor.s              al, al                                        // 0x007133be    32c0
                         pop                ebx                                           // 0x007133c0    5b
                         add                esp, 0x08                                     // 0x007133c1    83c408
                         ret                0x0004                                        // 0x007133c4    c20400
                         nop                                                              // 0x007133c7    90
                         nop                                                              // 0x007133c8    90
                         nop                                                              // 0x007133c9    90
                         nop                                                              // 0x007133ca    90
                         nop                                                              // 0x007133cb    90
                         nop                                                              // 0x007133cc    90
                         nop                                                              // 0x007133cd    90
                         nop                                                              // 0x007133ce    90
                         nop                                                              // 0x007133cf    90
_jmp_addr_0x007133d0:    {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x007133d0    8b542404
                         push               esi                                           // 0x007133d4    56
                         {disp32} mov       esi, dword ptr [ecx + 0x0000042c]             // 0x007133d5    8bb12c040000
                         xor.s              eax, eax                                      // 0x007133db    33c0
                         cmp.s              edx, esi                                      // 0x007133dd    3bd6
                         setg               al                                            // 0x007133df    0f9fc0
                         pop                esi                                           // 0x007133e2    5e
                         ret                0x0004                                        // 0x007133e3    c20400
                         nop                                                              // 0x007133e6    90
                         nop                                                              // 0x007133e7    90
                         nop                                                              // 0x007133e8    90
                         nop                                                              // 0x007133e9    90
                         nop                                                              // 0x007133ea    90
                         nop                                                              // 0x007133eb    90
                         nop                                                              // 0x007133ec    90
                         nop                                                              // 0x007133ed    90
                         nop                                                              // 0x007133ee    90
                         nop                                                              // 0x007133ef    90
                         push               esi                                           // 0x007133f0    56
                         push               edi                                           // 0x007133f1    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x007133f2    8b7c240c
                         mov.s              esi, ecx                                      // 0x007133f6    8bf1
                         push               edi                                           // 0x007133f8    57
                         call               _jmp_addr_0x007133d0                          // 0x007133f9    e8d2ffffff
                         test               al, al                                        // 0x007133fe    84c0
                         {disp8} jne        _jmp_addr_0x0071340a                          // 0x00713400    7508
                         pop                edi                                           // 0x00713402    5f
                         or                 eax, -0x1                                     // 0x00713403    83c8ff
                         pop                esi                                           // 0x00713406    5e
                         ret                0x0004                                        // 0x00713407    c20400
_jmp_addr_0x0071340a:    {disp32} mov       ecx, dword ptr [esi + 0x0000043c]             // 0x0071340a    8b8e3c040000
                         test               ecx, ecx                                      // 0x00713410    85c9
                         {disp8} jbe        _jmp_addr_0x0071342f                          // 0x00713412    761b
                         {disp32} mov       eax, dword ptr [esi + 0x00000438]             // 0x00713414    8b8638040000
                         test               eax, eax                                      // 0x0071341a    85c0
                         {disp8} je         _jmp_addr_0x0071342f                          // 0x0071341c    7411
                         cmp.s              edi, ecx                                      // 0x0071341e    3bf9
                         {disp8} jge        _jmp_addr_0x0071342f                          // 0x00713420    7d0d
                         test               edi, edi                                      // 0x00713422    85ff
                         {disp8} jle        _jmp_addr_0x0071342b                          // 0x00713424    7e05
_jmp_addr_0x00713426:    dec                edi                                           // 0x00713426    4f
                         mov                eax, dword ptr [eax]                          // 0x00713427    8b00
                         {disp8} jne        _jmp_addr_0x00713426                          // 0x00713429    75fb
_jmp_addr_0x0071342b:    test               eax, eax                                      // 0x0071342b    85c0
                         {disp8} jne        _jmp_addr_0x00713438                          // 0x0071342d    7509
_jmp_addr_0x0071342f:    xor.s              eax, eax                                      // 0x0071342f    33c0
                         mov                eax, dword ptr [eax]                          // 0x00713431    8b00
                         pop                edi                                           // 0x00713433    5f
                         pop                esi                                           // 0x00713434    5e
                         ret                0x0004                                        // 0x00713435    c20400
_jmp_addr_0x00713438:    {disp8} mov        eax, dword ptr [eax + 0x04]                   // 0x00713438    8b4004
                         mov                eax, dword ptr [eax]                          // 0x0071343b    8b00
                         pop                edi                                           // 0x0071343d    5f
                         pop                esi                                           // 0x0071343e    5e
                         ret                0x0004                                        // 0x0071343f    c20400
                         nop                                                              // 0x00713442    90
                         nop                                                              // 0x00713443    90
                         nop                                                              // 0x00713444    90
                         nop                                                              // 0x00713445    90
                         nop                                                              // 0x00713446    90
                         nop                                                              // 0x00713447    90
                         nop                                                              // 0x00713448    90
                         nop                                                              // 0x00713449    90
                         nop                                                              // 0x0071344a    90
                         nop                                                              // 0x0071344b    90
                         nop                                                              // 0x0071344c    90
                         nop                                                              // 0x0071344d    90
                         nop                                                              // 0x0071344e    90
                         nop                                                              // 0x0071344f    90
                         {disp32} mov       edx, dword ptr [ecx + 0x0000043c]             // 0x00713450    8b913c040000
                         test               edx, edx                                      // 0x00713456    85d2
                         {disp8} jbe        _jmp_addr_0x00713479                          // 0x00713458    761f
                         {disp32} mov       eax, dword ptr [ecx + 0x00000438]             // 0x0071345a    8b8138040000
                         test               eax, eax                                      // 0x00713460    85c0
                         {disp8} je         _jmp_addr_0x00713479                          // 0x00713462    7415
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x00713464    8b4c2404
                         cmp.s              ecx, edx                                      // 0x00713468    3bca
                         {disp8} jge        _jmp_addr_0x00713479                          // 0x0071346a    7d0d
                         test               ecx, ecx                                      // 0x0071346c    85c9
                         {disp8} jle        _jmp_addr_0x00713475                          // 0x0071346e    7e05
_jmp_addr_0x00713470:    dec                ecx                                           // 0x00713470    49
                         mov                eax, dword ptr [eax]                          // 0x00713471    8b00
                         {disp8} jne        _jmp_addr_0x00713470                          // 0x00713473    75fb
_jmp_addr_0x00713475:    test               eax, eax                                      // 0x00713475    85c0
                         {disp8} jne        _jmp_addr_0x00713481                          // 0x00713477    7508
_jmp_addr_0x00713479:    xor.s              eax, eax                                      // 0x00713479    33c0
                         {disp8} mov        eax, dword ptr [eax + 0x04]                   // 0x0071347b    8b4004
                         ret                0x0004                                        // 0x0071347e    c20400
_jmp_addr_0x00713481:    {disp8} mov        eax, dword ptr [eax + 0x04]                   // 0x00713481    8b4004
                         {disp8} mov        eax, dword ptr [eax + 0x04]                   // 0x00713484    8b4004
                         ret                0x0004                                        // 0x00713487    c20400
                         nop                                                              // 0x0071348a    90
                         nop                                                              // 0x0071348b    90
                         nop                                                              // 0x0071348c    90
                         nop                                                              // 0x0071348d    90
                         nop                                                              // 0x0071348e    90
                         nop                                                              // 0x0071348f    90
_jmp_addr_0x00713490:    push               ebx                                           // 0x00713490    53
                         push               esi                                           // 0x00713491    56
                         push               edi                                           // 0x00713492    57
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x00713493    8b7c2410
                         mov.s              esi, ecx                                      // 0x00713497    8bf1
                         push               edi                                           // 0x00713499    57
                         xor.s              ebx, ebx                                      // 0x0071349a    33db
                         call               _jmp_addr_0x007133d0                          // 0x0071349c    e82fffffff
                         test               al, al                                        // 0x007134a1    84c0
                         {disp8} jne        _jmp_addr_0x007134ae                          // 0x007134a3    7509
                         pop                edi                                           // 0x007134a5    5f
                         pop                esi                                           // 0x007134a6    5e
                         or                 eax, -0x1                                     // 0x007134a7    83c8ff
                         pop                ebx                                           // 0x007134aa    5b
                         ret                0x0004                                        // 0x007134ab    c20400
_jmp_addr_0x007134ae:    {disp32} mov       eax, dword ptr [esi + 0x00000430]             // 0x007134ae    8b8630040000
                         test               eax, eax                                      // 0x007134b4    85c0
                         {disp8} je         _jmp_addr_0x007134ca                          // 0x007134b6    7412
_jmp_addr_0x007134b8:    {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x007134b8    8b4804
                         movsx              edx, byte ptr [ecx + 0x08]                    // 0x007134bb    0fbe5108
                         cmp.s              edx, edi                                      // 0x007134bf    3bd7
                         {disp8} jne        _jmp_addr_0x007134c4                          // 0x007134c1    7501
                         inc                ebx                                           // 0x007134c3    43
_jmp_addr_0x007134c4:    mov                eax, dword ptr [eax]                          // 0x007134c4    8b00
                         test               eax, eax                                      // 0x007134c6    85c0
                         {disp8} jne        _jmp_addr_0x007134b8                          // 0x007134c8    75ee
_jmp_addr_0x007134ca:    pop                edi                                           // 0x007134ca    5f
                         pop                esi                                           // 0x007134cb    5e
                         mov.s              eax, ebx                                      // 0x007134cc    8bc3
                         pop                ebx                                           // 0x007134ce    5b
                         ret                0x0004                                        // 0x007134cf    c20400
                         nop                                                              // 0x007134d2    90
                         nop                                                              // 0x007134d3    90
                         nop                                                              // 0x007134d4    90
                         nop                                                              // 0x007134d5    90
                         nop                                                              // 0x007134d6    90
                         nop                                                              // 0x007134d7    90
                         nop                                                              // 0x007134d8    90
                         nop                                                              // 0x007134d9    90
                         nop                                                              // 0x007134da    90
                         nop                                                              // 0x007134db    90
                         nop                                                              // 0x007134dc    90
                         nop                                                              // 0x007134dd    90
                         nop                                                              // 0x007134de    90
                         nop                                                              // 0x007134df    90
                         push               esi                                           // 0x007134e0    56
                         push               edi                                           // 0x007134e1    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x007134e2    8b7c240c
                         mov.s              esi, ecx                                      // 0x007134e6    8bf1
                         push               edi                                           // 0x007134e8    57
                         call               _jmp_addr_0x007133d0                          // 0x007134e9    e8e2feffff
                         test               al, al                                        // 0x007134ee    84c0
                         {disp8} je         _jmp_addr_0x00713524                          // 0x007134f0    7432
                         push               edi                                           // 0x007134f2    57
                         mov.s              ecx, esi                                      // 0x007134f3    8bce
                         call               _jmp_addr_0x00713490                          // 0x007134f5    e896ffffff
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x007134fa    8b542410
                         cmp.s              edx, eax                                      // 0x007134fe    3bd0
                         {disp8} jle        _jmp_addr_0x00713524                          // 0x00713500    7e22
                         {disp32} mov       eax, dword ptr [esi + 0x00000430]             // 0x00713502    8b8630040000
                         xor.s              ecx, ecx                                      // 0x00713508    33c9
                         test               eax, eax                                      // 0x0071350a    85c0
                         {disp8} je         _jmp_addr_0x00713524                          // 0x0071350c    7416
_jmp_addr_0x0071350e:    {disp8} mov        esi, dword ptr [eax + 0x04]                   // 0x0071350e    8b7004
                         movsx              esi, byte ptr [esi + 0x08]                    // 0x00713511    0fbe7608
                         cmp.s              esi, edi                                      // 0x00713515    3bf7
                         {disp8} jne        _jmp_addr_0x0071351e                          // 0x00713517    7505
                         cmp.s              ecx, edx                                      // 0x00713519    3bca
                         {disp8} je         _jmp_addr_0x0071352c                          // 0x0071351b    740f
                         inc                ecx                                           // 0x0071351d    41
_jmp_addr_0x0071351e:    mov                eax, dword ptr [eax]                          // 0x0071351e    8b00
                         test               eax, eax                                      // 0x00713520    85c0
                         {disp8} jne        _jmp_addr_0x0071350e                          // 0x00713522    75ea
_jmp_addr_0x00713524:    pop                edi                                           // 0x00713524    5f
                         or                 eax, -0x1                                     // 0x00713525    83c8ff
                         pop                esi                                           // 0x00713528    5e
                         ret                0x0008                                        // 0x00713529    c20800
_jmp_addr_0x0071352c:    {disp8} mov        eax, dword ptr [eax + 0x04]                   // 0x0071352c    8b4004
                         mov                eax, dword ptr [eax]                          // 0x0071352f    8b00
                         pop                edi                                           // 0x00713531    5f
                         pop                esi                                           // 0x00713532    5e
                         ret                0x0008                                        // 0x00713533    c20800
                         nop                                                              // 0x00713536    90
                         nop                                                              // 0x00713537    90
                         nop                                                              // 0x00713538    90
                         nop                                                              // 0x00713539    90
                         nop                                                              // 0x0071353a    90
                         nop                                                              // 0x0071353b    90
                         nop                                                              // 0x0071353c    90
                         nop                                                              // 0x0071353d    90
                         nop                                                              // 0x0071353e    90
                         nop                                                              // 0x0071353f    90
                         push               esi                                           // 0x00713540    56
                         push               edi                                           // 0x00713541    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x00713542    8b7c240c
                         mov.s              esi, ecx                                      // 0x00713546    8bf1
                         push               edi                                           // 0x00713548    57
                         call               _jmp_addr_0x007133d0                          // 0x00713549    e882feffff
                         test               al, al                                        // 0x0071354e    84c0
                         {disp8} je         _jmp_addr_0x00713584                          // 0x00713550    7432
                         push               edi                                           // 0x00713552    57
                         mov.s              ecx, esi                                      // 0x00713553    8bce
                         call               _jmp_addr_0x00713490                          // 0x00713555    e836ffffff
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x0071355a    8b542410
                         cmp.s              edx, eax                                      // 0x0071355e    3bd0
                         {disp8} jle        _jmp_addr_0x00713584                          // 0x00713560    7e22
                         {disp32} mov       eax, dword ptr [esi + 0x00000430]             // 0x00713562    8b8630040000
                         xor.s              ecx, ecx                                      // 0x00713568    33c9
                         test               eax, eax                                      // 0x0071356a    85c0
                         {disp8} je         _jmp_addr_0x00713584                          // 0x0071356c    7416
_jmp_addr_0x0071356e:    {disp8} mov        esi, dword ptr [eax + 0x04]                   // 0x0071356e    8b7004
                         movsx              esi, byte ptr [esi + 0x08]                    // 0x00713571    0fbe7608
                         cmp.s              esi, edi                                      // 0x00713575    3bf7
                         {disp8} jne        _jmp_addr_0x0071357e                          // 0x00713577    7505
                         cmp.s              ecx, edx                                      // 0x00713579    3bca
                         {disp8} je         _jmp_addr_0x0071358c                          // 0x0071357b    740f
                         inc                ecx                                           // 0x0071357d    41
_jmp_addr_0x0071357e:    mov                eax, dword ptr [eax]                          // 0x0071357e    8b00
                         test               eax, eax                                      // 0x00713580    85c0
                         {disp8} jne        _jmp_addr_0x0071356e                          // 0x00713582    75ea
_jmp_addr_0x00713584:    pop                edi                                           // 0x00713584    5f
                         or                 eax, -0x1                                     // 0x00713585    83c8ff
                         pop                esi                                           // 0x00713588    5e
                         ret                0x0008                                        // 0x00713589    c20800
_jmp_addr_0x0071358c:    {disp8} mov        eax, dword ptr [eax + 0x04]                   // 0x0071358c    8b4004
                         {disp8} mov        eax, dword ptr [eax + 0x04]                   // 0x0071358f    8b4004
                         pop                edi                                           // 0x00713592    5f
                         pop                esi                                           // 0x00713593    5e
                         ret                0x0008                                        // 0x00713594    c20800
                         nop                                                              // 0x00713597    90
                         nop                                                              // 0x00713598    90
                         nop                                                              // 0x00713599    90
                         nop                                                              // 0x0071359a    90
                         nop                                                              // 0x0071359b    90
                         nop                                                              // 0x0071359c    90
                         nop                                                              // 0x0071359d    90
                         nop                                                              // 0x0071359e    90
                         nop                                                              // 0x0071359f    90
                         sub                esp, 0x00000204                               // 0x007135a0    81ec04020000
                         push               0x0                                           // 0x007135a6    6a00
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x007135a8    8d442404
                         push               eax                                           // 0x007135ac    50
                         push               0x0                                           // 0x007135ad    6a00
                         add                ecx, 0x1c                                     // 0x007135af    83c11c
                         push               0x0                                           // 0x007135b2    6a00
                         push               ecx                                           // 0x007135b4    51
                         call               __splitpath                                   // 0x007135b5    e8ae500b00
                         {disp32} mov       edx, dword ptr [esp + 0x0000021c]             // 0x007135ba    8b94241c020000
                         add                esp, 0x14                                     // 0x007135c1    83c414
                         {disp8} lea        ecx, dword ptr [esp + 0x00]                   // 0x007135c4    8d4c2400
                         push               ecx                                           // 0x007135c8    51
                         push               edx                                           // 0x007135c9    52
                         {disp32} lea       eax, dword ptr [esp + 0x00000108]             // 0x007135ca    8d842408010000
                         push               0x00c20c80                                    // 0x007135d1    68800cc200
                         push               eax                                           // 0x007135d6    50
                         call               _sprintf                                      // 0x007135d7    e8f6210b00
                         {disp32} lea       ecx, dword ptr [esp + 0x00000110]             // 0x007135dc    8d8c2410010000
                         push               ecx                                           // 0x007135e3    51
                         call               __unlink                                      // 0x007135e4    e840360b00
                         add                esp, 0x00000218                               // 0x007135e9    81c418020000
                         ret                0x0004                                        // 0x007135ef    c20400
                         nop                                                              // 0x007135f2    90
                         nop                                                              // 0x007135f3    90
                         nop                                                              // 0x007135f4    90
                         nop                                                              // 0x007135f5    90
                         nop                                                              // 0x007135f6    90
                         nop                                                              // 0x007135f7    90
                         nop                                                              // 0x007135f8    90
                         nop                                                              // 0x007135f9    90
                         nop                                                              // 0x007135fa    90
                         nop                                                              // 0x007135fb    90
                         nop                                                              // 0x007135fc    90
                         nop                                                              // 0x007135fd    90
                         nop                                                              // 0x007135fe    90
                         nop                                                              // 0x007135ff    90
                         sub                esp, 0x00000204                               // 0x00713600    81ec04020000
                         push               0x0                                           // 0x00713606    6a00
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x00713608    8d442404
                         push               eax                                           // 0x0071360c    50
                         push               0x0                                           // 0x0071360d    6a00
                         add                ecx, 0x1c                                     // 0x0071360f    83c11c
                         push               0x0                                           // 0x00713612    6a00
                         push               ecx                                           // 0x00713614    51
                         call               __splitpath                                   // 0x00713615    e84e500b00
                         {disp32} mov       edx, dword ptr [esp + 0x0000021c]             // 0x0071361a    8b94241c020000
                         add                esp, 0x14                                     // 0x00713621    83c414
                         {disp8} lea        ecx, dword ptr [esp + 0x00]                   // 0x00713624    8d4c2400
                         push               ecx                                           // 0x00713628    51
                         push               edx                                           // 0x00713629    52
                         {disp32} lea       eax, dword ptr [esp + 0x00000108]             // 0x0071362a    8d842408010000
                         push               0x00c20c8c                                    // 0x00713631    688c0cc200
                         push               eax                                           // 0x00713636    50
                         call               _sprintf                                      // 0x00713637    e896210b00
                         {disp32} lea       ecx, dword ptr [esp + 0x00000110]             // 0x0071363c    8d8c2410010000
                         push               ecx                                           // 0x00713643    51
                         call               __unlink                                      // 0x00713644    e8e0350b00
                         add                esp, 0x00000218                               // 0x00713649    81c418020000
                         ret                0x0004                                        // 0x0071364f    c20400
                         nop                                                              // 0x00713652    90
                         nop                                                              // 0x00713653    90
                         nop                                                              // 0x00713654    90
                         nop                                                              // 0x00713655    90
                         nop                                                              // 0x00713656    90
                         nop                                                              // 0x00713657    90
                         nop                                                              // 0x00713658    90
                         nop                                                              // 0x00713659    90
                         nop                                                              // 0x0071365a    90
                         nop                                                              // 0x0071365b    90
                         nop                                                              // 0x0071365c    90
                         nop                                                              // 0x0071365d    90
                         nop                                                              // 0x0071365e    90
                         nop                                                              // 0x0071365f    90
_jmp_addr_0x00713660:    sub                esp, 0x00000204                               // 0x00713660    81ec04020000
                         push               esi                                           // 0x00713666    56
                         mov.s              esi, ecx                                      // 0x00713667    8bf1
                         {disp8} mov        al, byte ptr [esi + 0x01]                     // 0x00713669    8a4601
                         test               al, al                                        // 0x0071366c    84c0
                         push               edi                                           // 0x0071366e    57
                         {disp32} je        _jmp_addr_0x007136f6                          // 0x0071366f    0f8481000000
                         push               0x0                                           // 0x00713675    6a00
                         {disp32} lea       eax, dword ptr [esp + 0x00000110]             // 0x00713677    8d842410010000
                         push               eax                                           // 0x0071367e    50
                         push               0x0                                           // 0x0071367f    6a00
                         {disp8} lea        ecx, dword ptr [esi + 0x1c]                   // 0x00713681    8d4e1c
                         push               0x0                                           // 0x00713684    6a00
                         push               ecx                                           // 0x00713686    51
                         call               __splitpath                                   // 0x00713687    e8dc4f0b00
                         {disp32} mov       eax, dword ptr [esp + 0x00000224]             // 0x0071368c    8b842424020000
                         add                esp, 0x14                                     // 0x00713693    83c414
                         {disp32} lea       edx, dword ptr [esp + 0x0000010c]             // 0x00713696    8d94240c010000
                         push               edx                                           // 0x0071369d    52
                         push               eax                                           // 0x0071369e    50
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0071369f    8d4c2410
                         push               0x00c20c80                                    // 0x007136a3    68800cc200
                         push               ecx                                           // 0x007136a8    51
                         call               _sprintf                                      // 0x007136a9    e824210b00
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x007136ae    8d542418
                         push               edx                                           // 0x007136b2    52
                         call               __unlink                                      // 0x007136b3    e871350b00
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                   // 0x007136b8    8d44241c
                         push               0x00c20c98                                    // 0x007136bc    68980cc200
                         push               eax                                           // 0x007136c1    50
                         call               _fopen                                        // 0x007136c2    e856370b00
                         mov.s              edi, eax                                      // 0x007136c7    8bf8
                         add                esp, 0x1c                                     // 0x007136c9    83c41c
                         test               edi, edi                                      // 0x007136cc    85ff
                         {disp8} je         _jmp_addr_0x007136f6                          // 0x007136ce    7426
                         {disp8} mov        ecx, dword ptr [esi + 0x14]                   // 0x007136d0    8b4e14
                         {disp8} mov        edx, dword ptr [esi + 0x10]                   // 0x007136d3    8b5610
                         push               edi                                           // 0x007136d6    57
                         push               ecx                                           // 0x007136d7    51
                         push               0x1                                           // 0x007136d8    6a01
                         push               edx                                           // 0x007136da    52
                         call               _fwrite                                       // 0x007136db    e8c23e0b00
                         push               edi                                           // 0x007136e0    57
                         call               _fclose                                       // 0x007136e1    e84a370b00
                         add                esp, 0x14                                     // 0x007136e6    83c414
                         pop                edi                                           // 0x007136e9    5f
                         mov                al, 0x01                                      // 0x007136ea    b001
                         pop                esi                                           // 0x007136ec    5e
                         add                esp, 0x00000204                               // 0x007136ed    81c404020000
                         ret                0x0004                                        // 0x007136f3    c20400
_jmp_addr_0x007136f6:    pop                edi                                           // 0x007136f6    5f
                         xor.s              al, al                                        // 0x007136f7    32c0
                         pop                esi                                           // 0x007136f9    5e
                         add                esp, 0x00000204                               // 0x007136fa    81c404020000
                         ret                0x0004                                        // 0x00713700    c20400
                         nop                                                              // 0x00713703    90
                         nop                                                              // 0x00713704    90
                         nop                                                              // 0x00713705    90
                         nop                                                              // 0x00713706    90
                         nop                                                              // 0x00713707    90
                         nop                                                              // 0x00713708    90
                         nop                                                              // 0x00713709    90
                         nop                                                              // 0x0071370a    90
                         nop                                                              // 0x0071370b    90
                         nop                                                              // 0x0071370c    90
                         nop                                                              // 0x0071370d    90
                         nop                                                              // 0x0071370e    90
                         nop                                                              // 0x0071370f    90
_jmp_addr_0x00713710:    sub                esp, 0x00000340                               // 0x00713710    81ec40030000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x25aca4]        // 0x00713716    a1a40cc200
                         {disp32} mov       edx, dword ptr [data_bytes + 0x25acac]        // 0x0071371b    8b15ac0cc200
                         push               ebx                                           // 0x00713721    53
                         mov.s              ebx, ecx                                      // 0x00713722    8bd9
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x25aca8]        // 0x00713724    8b0da80cc200
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x0071372a    894c2418
                         {disp32} mov       cl, byte ptr [data_bytes + 0x25acb4]          // 0x0071372e    8a0db40cc200
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x00713734    89442414
                         {disp32} mov       eax, dword ptr [data_bytes + 0x25acb0]        // 0x00713738    a1b00cc200
                         push               ebp                                           // 0x0071373d    55
                         {disp8} mov        byte ptr [esp + 0x28], cl                     // 0x0071373e    884c2428
                         push               esi                                           // 0x00713742    56
                         push               edi                                           // 0x00713743    57
                         {disp8} mov        dword ptr [esp + 0x2c], eax                   // 0x00713744    8944242c
                         or                 ecx, 0xffffffff                               // 0x00713748    83c9ff
                         xor.s              eax, eax                                      // 0x0071374b    33c0
                         {disp8} lea        edi, dword ptr [esp + 0x20]                   // 0x0071374d    8d7c2420
                         {disp8} mov        dword ptr [esp + 0x28], edx                   // 0x00713751    89542428
                         repne scasb                                                      // 0x00713755    f2ae
                         {disp8} mov        al, byte ptr [ebx + 0x01]                     // 0x00713757    8a4301
                         not                ecx                                           // 0x0071375a    f7d1
                         dec                ecx                                           // 0x0071375c    49
                         test               al, al                                        // 0x0071375d    84c0
                         mov.s              edi, ecx                                      // 0x0071375f    8bf9
                         {disp8} mov        dword ptr [esp + 0x10], edi                   // 0x00713761    897c2410
                         {disp32} je        _jmp_addr_0x0071394b                          // 0x00713765    0f84e0010000
                         xor.s              ebp, ebp                                      // 0x0071376b    33ed
                         push               ebp                                           // 0x0071376d    55
                         {disp8} lea        edx, dword ptr [esp + 0x4c]                   // 0x0071376e    8d54244c
                         push               edx                                           // 0x00713772    52
                         push               ebp                                           // 0x00713773    55
                         {disp8} lea        eax, dword ptr [ebx + 0x1c]                   // 0x00713774    8d431c
                         push               ebp                                           // 0x00713777    55
                         push               eax                                           // 0x00713778    50
                         call               __splitpath                                   // 0x00713779    e8ea4e0b00
                         {disp32} mov       esi, dword ptr [esp + 0x00000368]             // 0x0071377e    8bb42468030000
                         add                esp, 0x14                                     // 0x00713785    83c414
                         {disp8} lea        ecx, dword ptr [esp + 0x48]                   // 0x00713788    8d4c2448
                         push               ecx                                           // 0x0071378c    51
                         push               esi                                           // 0x0071378d    56
                         {disp32} lea       edx, dword ptr [esp + 0x00000150]             // 0x0071378e    8d942450010000
                         push               0x00c20c8c                                    // 0x00713795    688c0cc200
                         push               edx                                           // 0x0071379a    52
                         call               _sprintf                                      // 0x0071379b    e832200b00
                         add                esp, 0x10                                     // 0x007137a0    83c410
                         {disp8} lea        eax, dword ptr [esp + 0x48]                   // 0x007137a3    8d442448
                         push               eax                                           // 0x007137a7    50
                         push               esi                                           // 0x007137a8    56
                         {disp32} lea       ecx, dword ptr [esp + 0x00000254]             // 0x007137a9    8d8c2454020000
                         push               0x00c20c80                                    // 0x007137b0    68800cc200
                         push               ecx                                           // 0x007137b5    51
                         call               _sprintf                                      // 0x007137b6    e817200b00
                         {disp32} lea       edx, dword ptr [esp + 0x00000158]             // 0x007137bb    8d942458010000
                         push               edx                                           // 0x007137c2    52
                         call               __unlink                                      // 0x007137c3    e861340b00
                         add                esp, 0x14                                     // 0x007137c8    83c414
                         {disp32} lea       eax, dword ptr [esp + 0x0000024c]             // 0x007137cb    8d84244c020000
                         push               eax                                           // 0x007137d2    50
                         mov.s              ecx, ebx                                      // 0x007137d3    8bcb
                         call               _jmp_addr_0x00713660                          // 0x007137d5    e886feffff
                         {disp32} lea       ecx, dword ptr [esp + 0x00000148]             // 0x007137da    8d8c2448010000
                         push               0x00c20ca0                                    // 0x007137e1    68a00cc200
                         push               ecx                                           // 0x007137e6    51
                         call               _fopen                                        // 0x007137e7    e831360b00
                         add                esp, 0x08                                     // 0x007137ec    83c408
                         cmp.s              eax, ebp                                      // 0x007137ef    3bc5
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x007137f1    8944241c
                         {disp32} je        _jmp_addr_0x0071394b                          // 0x007137f5    0f8450010000
                         {disp8} mov        edx, dword ptr [ebx + 0x0c]                   // 0x007137fb    8b530c
                         push               0x00000213                                    // 0x007137fe    6813020000
                         add                edx, 0x00000104                               // 0x00713803    81c204010000
                         push               0x00c20c58                                    // 0x00713809    68580cc200
                         push               edx                                           // 0x0071380e    52
                         {disp8} mov        dword ptr [esp + 0x24], ebp                   // 0x0071380f    896c2424
                         call               ___nw__FUl                                    // 0x00713813    e8787f0c00
                         add                esp, 0x0c                                     // 0x00713818    83c40c
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x0071381b    89442414
_jmp_addr_0x0071381f:    cmp.s              ebp, edi                                      // 0x0071381f    3bef
                         {disp8} mov        eax, dword ptr [ebx + 0x08]                   // 0x00713821    8b4308
                         mov                cl, byte ptr [eax + ebp * 0x1]                // 0x00713824    8a0c28
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x00713827    8b542414
                         mov                byte ptr [edx + ebp * 0x1], cl                // 0x0071382b    880c2a
                         {disp8} jl         _jmp_addr_0x0071388d                          // 0x0071382e    7c5d
                         {disp8} mov        esi, dword ptr [ebx + 0x08]                   // 0x00713830    8b7308
                         mov.s              ecx, edi                                      // 0x00713833    8bcf
                         mov.s              eax, ecx                                      // 0x00713835    8bc1
                         sub.s              esi, edi                                      // 0x00713837    2bf7
                         shr                ecx, 2                                        // 0x00713839    c1e902
                         add.s              esi, ebp                                      // 0x0071383c    03f5
                         {disp8} lea        edi, dword ptr [esp + 0x34]                   // 0x0071383e    8d7c2434
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00713842    f3a5
                         mov.s              ecx, eax                                      // 0x00713844    8bc8
                         and                ecx, 0x03                                     // 0x00713846    83e103
                         rep movsb                                                        // 0x00713849    f3a4
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0071384b    8b4c2410
                         {disp8} mov        byte ptr [esp + ecx * 0x1 + 0x34], 0x00       // 0x0071384f    c6440c3400
                         {disp8} lea        esi, dword ptr [esp + 0x34]                   // 0x00713854    8d742434
                         {disp8} lea        eax, dword ptr [esp + 0x20]                   // 0x00713858    8d442420
_jmp_addr_0x0071385c:    mov                dl, byte ptr [eax]                            // 0x0071385c    8a10
                         mov.s              cl, dl                                        // 0x0071385e    8aca
                         cmp                dl, byte ptr [esi]                            // 0x00713860    3a16
                         {disp8} jne        _jmp_addr_0x00713880                          // 0x00713862    751c
                         test               cl, cl                                        // 0x00713864    84c9
                         {disp8} je         _jmp_addr_0x0071387c                          // 0x00713866    7414
                         {disp8} mov        dl, byte ptr [eax + 0x01]                     // 0x00713868    8a5001
                         mov.s              cl, dl                                        // 0x0071386b    8aca
                         cmp                dl, byte ptr [esi + 0x01]                     // 0x0071386d    3a5601
                         {disp8} jne        _jmp_addr_0x00713880                          // 0x00713870    750e
                         add                eax, 0x02                                     // 0x00713872    83c002
                         add                esi, 0x02                                     // 0x00713875    83c602
                         test               cl, cl                                        // 0x00713878    84c9
                         {disp8} jne        _jmp_addr_0x0071385c                          // 0x0071387a    75e0
_jmp_addr_0x0071387c:    xor.s              eax, eax                                      // 0x0071387c    33c0
                         {disp8} jmp        _jmp_addr_0x00713885                          // 0x0071387e    eb05
_jmp_addr_0x00713880:    sbb.s              eax, eax                                      // 0x00713880    1bc0
                         sbb                eax, -0x01                                    // 0x00713882    83d8ff
_jmp_addr_0x00713885:    test               eax, eax                                      // 0x00713885    85c0
                         {disp8} je         _jmp_addr_0x00713899                          // 0x00713887    7410
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x00713889    8b7c2410
_jmp_addr_0x0071388d:    {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x0071388d    8b442418
                         inc                ebp                                           // 0x00713891    45
                         inc                eax                                           // 0x00713892    40
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x00713893    89442418
                         {disp8} jmp        _jmp_addr_0x0071381f                          // 0x00713897    eb86
_jmp_addr_0x00713899:    {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x00713899    8b542414
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x0071389d    8b442418
                         or                 ecx, 0xffffffff                               // 0x007138a1    83c9ff
                         mov                byte ptr [edx + eax * 0x1], 0x00              // 0x007138a4    c6040200
                         xor.s              eax, eax                                      // 0x007138a8    33c0
                         {disp32} lea       edi, dword ptr [esp + 0x0000024c]             // 0x007138aa    8dbc244c020000
                         repne scasb                                                      // 0x007138b1    f2ae
                         not                ecx                                           // 0x007138b3    f7d1
                         sub.s              edi, ecx                                      // 0x007138b5    2bf9
                         mov.s              eax, ecx                                      // 0x007138b7    8bc1
                         or                 ecx, 0xffffffff                               // 0x007138b9    83c9ff
                         mov.s              esi, edi                                      // 0x007138bc    8bf7
                         mov.s              edi, edx                                      // 0x007138be    8bfa
                         mov.s              edx, eax                                      // 0x007138c0    8bd0
                         xor.s              eax, eax                                      // 0x007138c2    33c0
                         repne scasb                                                      // 0x007138c4    f2ae
                         dec                edi                                           // 0x007138c6    4f
                         mov.s              ecx, edx                                      // 0x007138c7    8bca
                         shr                ecx, 2                                        // 0x007138c9    c1e902
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x007138cc    f3a5
                         mov.s              ecx, edx                                      // 0x007138ce    8bca
                         and                ecx, 0x03                                     // 0x007138d0    83e103
                         rep movsb                                                        // 0x007138d3    f3a4
                         or                 ecx, 0xffffffff                               // 0x007138d5    83c9ff
                         mov                edi, 0x00c20c9c                               // 0x007138d8    bf9c0cc200
                         repne scasb                                                      // 0x007138dd    f2ae
                         not                ecx                                           // 0x007138df    f7d1
                         sub.s              edi, ecx                                      // 0x007138e1    2bf9
                         mov.s              edx, ecx                                      // 0x007138e3    8bd1
                         or                 ecx, 0xffffffff                               // 0x007138e5    83c9ff
                         mov.s              esi, edi                                      // 0x007138e8    8bf7
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x007138ea    8b7c2414
                         repne scasb                                                      // 0x007138ee    f2ae
                         dec                edi                                           // 0x007138f0    4f
                         mov.s              ecx, edx                                      // 0x007138f1    8bca
                         shr                ecx, 2                                        // 0x007138f3    c1e902
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x007138f6    f3a5
                         mov.s              ecx, edx                                      // 0x007138f8    8bca
                         and                ecx, 0x03                                     // 0x007138fa    83e103
                         rep movsb                                                        // 0x007138fd    f3a4
                         {disp8} mov        eax, dword ptr [ebx + 0x08]                   // 0x007138ff    8b4308
                         mov                cl, byte ptr [eax + ebp * 0x1]                // 0x00713902    8a0c28
                         inc                ebp                                           // 0x00713905    45
                         cmp                cl, 0x22                                      // 0x00713906    80f922
                         {disp8} je         _jmp_addr_0x00713914                          // 0x00713909    7409
_jmp_addr_0x0071390b:    mov                dl, byte ptr [eax + ebp * 0x1]                // 0x0071390b    8a1428
                         inc                ebp                                           // 0x0071390e    45
                         cmp                dl, 0x22                                      // 0x0071390f    80fa22
                         {disp8} jne        _jmp_addr_0x0071390b                          // 0x00713912    75f7
_jmp_addr_0x00713914:    {disp8} mov        esi, dword ptr [esp + 0x14]                   // 0x00713914    8b742414
                         {disp8} mov        edi, dword ptr [esp + 0x1c]                   // 0x00713918    8b7c241c
                         {disp8} lea        eax, dword ptr [eax + ebp * 0x1 + -0x01]      // 0x0071391c    8d4428ff
                         push               eax                                           // 0x00713920    50
                         push               esi                                           // 0x00713921    56
                         push               0x00bfd850                                    // 0x00713922    6850d8bf00
                         push               edi                                           // 0x00713927    57
                         call               _fprintf                                      // 0x00713928    e883340b00
                         push               edi                                           // 0x0071392d    57
                         call               _fclose                                       // 0x0071392e    e8fd340b00
                         push               esi                                           // 0x00713933    56
                         call               ??3@YAXPAX@Z                                  // 0x00713934    e85fb50900
                         add                esp, 0x18                                     // 0x00713939    83c418
                         pop                edi                                           // 0x0071393c    5f
                         pop                esi                                           // 0x0071393d    5e
                         pop                ebp                                           // 0x0071393e    5d
                         mov                al, 0x01                                      // 0x0071393f    b001
                         pop                ebx                                           // 0x00713941    5b
                         add                esp, 0x00000340                               // 0x00713942    81c440030000
                         ret                0x0004                                        // 0x00713948    c20400
_jmp_addr_0x0071394b:    pop                edi                                           // 0x0071394b    5f
                         pop                esi                                           // 0x0071394c    5e
                         pop                ebp                                           // 0x0071394d    5d
                         xor.s              al, al                                        // 0x0071394e    32c0
                         pop                ebx                                           // 0x00713950    5b
                         add                esp, 0x00000340                               // 0x00713951    81c440030000
                         ret                0x0004                                        // 0x00713957    c20400
                         nop                                                              // 0x0071395a    90
                         nop                                                              // 0x0071395b    90
                         nop                                                              // 0x0071395c    90
                         nop                                                              // 0x0071395d    90
                         nop                                                              // 0x0071395e    90
                         nop                                                              // 0x0071395f    90
                         ret                                                              // 0x00713960    c3
                         nop                                                              // 0x00713961    90
                         nop                                                              // 0x00713962    90
                         nop                                                              // 0x00713963    90
                         nop                                                              // 0x00713964    90
                         nop                                                              // 0x00713965    90
                         nop                                                              // 0x00713966    90
                         nop                                                              // 0x00713967    90
                         nop                                                              // 0x00713968    90
                         nop                                                              // 0x00713969    90
                         nop                                                              // 0x0071396a    90
                         nop                                                              // 0x0071396b    90
                         nop                                                              // 0x0071396c    90
                         nop                                                              // 0x0071396d    90
                         nop                                                              // 0x0071396e    90
                         nop                                                              // 0x0071396f    90
                         push               edi                                           // 0x00713970    57
                         {disp8} mov        edi, dword ptr [esp + 0x08]                   // 0x00713971    8b7c2408
                         test               edi, edi                                      // 0x00713975    85ff
                         {disp8} je         _jmp_addr_0x007139d4                          // 0x00713977    745b
                         push               ebx                                           // 0x00713979    53
                         push               ebp                                           // 0x0071397a    55
                         push               esi                                           // 0x0071397b    56
_jmp_addr_0x0071397c:    {disp8} mov        ebx, dword ptr [edi + 0x04]                   // 0x0071397c    8b5f04
                         xor.s              ebp, ebp                                      // 0x0071397f    33ed
                         test               edi, edi                                      // 0x00713981    85ff
                         mov.s              eax, edi                                      // 0x00713983    8bc7
                         {disp8} je         _jmp_addr_0x007139b5                          // 0x00713985    742e
_jmp_addr_0x00713987:    cmp                dword ptr [eax + 0x04], ebx                   // 0x00713987    395804
                         mov                esi, dword ptr [eax]                          // 0x0071398a    8b30
                         {disp8} jne        _jmp_addr_0x007139ad                          // 0x0071398c    751f
                         cmp.s              eax, edi                                      // 0x0071398e    3bc7
                         {disp8} jne        _jmp_addr_0x00713996                          // 0x00713990    7504
                         mov.s              edi, esi                                      // 0x00713992    8bfe
                         {disp8} jmp        _jmp_addr_0x00713999                          // 0x00713994    eb03
_jmp_addr_0x00713996:    {disp8} mov        dword ptr [ebp + 0x00], esi                   // 0x00713996    897500
_jmp_addr_0x00713999:    {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x00713999    8b542418
                         dec                edx                                           // 0x0071399d    4a
                         push               eax                                           // 0x0071399e    50
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x0071399f    8954241c
                         call               ??3@YAXPAX@Z                                  // 0x007139a3    e8f0b40900
                         add                esp, 0x04                                     // 0x007139a8    83c404
                         {disp8} jmp        _jmp_addr_0x007139af                          // 0x007139ab    eb02
_jmp_addr_0x007139ad:    mov.s              ebp, eax                                      // 0x007139ad    8be8
_jmp_addr_0x007139af:    test               esi, esi                                      // 0x007139af    85f6
                         mov.s              eax, esi                                      // 0x007139b1    8bc6
                         {disp8} jne        _jmp_addr_0x00713987                          // 0x007139b3    75d2
_jmp_addr_0x007139b5:    test               ebx, ebx                                      // 0x007139b5    85db
                         {disp8} je         _jmp_addr_0x007139c9                          // 0x007139b7    7410
                         mov.s              ecx, ebx                                      // 0x007139b9    8bcb
                         call               _jmp_addr_0x00712fe0                          // 0x007139bb    e820f6ffff
                         push               ebx                                           // 0x007139c0    53
                         call               ??3@YAXPAX@Z                                  // 0x007139c1    e8d2b40900
                         add                esp, 0x04                                     // 0x007139c6    83c404
_jmp_addr_0x007139c9:    test               edi, edi                                      // 0x007139c9    85ff
                         {disp8} jne        _jmp_addr_0x0071397c                          // 0x007139cb    75af
                         pop                esi                                           // 0x007139cd    5e
                         pop                ebp                                           // 0x007139ce    5d
                         pop                ebx                                           // 0x007139cf    5b
                         xor.s              al, al                                        // 0x007139d0    32c0
                         pop                edi                                           // 0x007139d2    5f
                         ret                                                              // 0x007139d3    c3
_jmp_addr_0x007139d4:    xor.s              al, al                                        // 0x007139d4    32c0
                         pop                edi                                           // 0x007139d6    5f
                         ret                                                              // 0x007139d7    c3
                         nop                                                              // 0x007139d8    90
                         nop                                                              // 0x007139d9    90
                         nop                                                              // 0x007139da    90
                         nop                                                              // 0x007139db    90
                         nop                                                              // 0x007139dc    90
                         nop                                                              // 0x007139dd    90
                         nop                                                              // 0x007139de    90
                         nop                                                              // 0x007139df    90
_jmp_addr_0x007139e0:    sub                esp, 0x00000100                               // 0x007139e0    81ec00010000
                         push               0x0                                           // 0x007139e6    6a00
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x007139e8    8d442404
                         push               eax                                           // 0x007139ec    50
                         push               0x0                                           // 0x007139ed    6a00
                         add                ecx, 0x1c                                     // 0x007139ef    83c11c
                         push               0x0                                           // 0x007139f2    6a00
                         push               ecx                                           // 0x007139f4    51
                         call               __splitpath                                   // 0x007139f5    e86e4c0b00
                         {disp32} mov       edx, dword ptr [esp + 0x00000118]             // 0x007139fa    8b942418010000
                         add                esp, 0x14                                     // 0x00713a01    83c414
                         {disp8} lea        ecx, dword ptr [esp + 0x00]                   // 0x00713a04    8d4c2400
                         push               ecx                                           // 0x00713a08    51
                         push               edx                                           // 0x00713a09    52
                         push               0x00c20c8c                                    // 0x00713a0a    688c0cc200
                         push               0x00d9905c                                    // 0x00713a0f    685c90d900
                         call               _sprintf                                      // 0x00713a14    e8b91d0b00
                         mov                eax, 0x00d9905c                               // 0x00713a19    b85c90d900
                         add                esp, 0x00000110                               // 0x00713a1e    81c410010000
                         ret                0x0004                                        // 0x00713a24    c20400
                         nop                                                              // 0x00713a27    90
                         nop                                                              // 0x00713a28    90
                         nop                                                              // 0x00713a29    90
                         nop                                                              // 0x00713a2a    90
                         nop                                                              // 0x00713a2b    90
                         nop                                                              // 0x00713a2c    90
                         nop                                                              // 0x00713a2d    90
                         nop                                                              // 0x00713a2e    90
                         nop                                                              // 0x00713a2f    90
_jmp_addr_0x00713a30:    sub                esp, 0x00000100                               // 0x00713a30    81ec00010000
                         push               0x0                                           // 0x00713a36    6a00
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x00713a38    8d442404
                         push               eax                                           // 0x00713a3c    50
                         push               0x0                                           // 0x00713a3d    6a00
                         add                ecx, 0x1c                                     // 0x00713a3f    83c11c
                         push               0x0                                           // 0x00713a42    6a00
                         push               ecx                                           // 0x00713a44    51
                         call               __splitpath                                   // 0x00713a45    e81e4c0b00
                         {disp32} mov       edx, dword ptr [esp + 0x00000118]             // 0x00713a4a    8b942418010000
                         add                esp, 0x14                                     // 0x00713a51    83c414
                         {disp8} lea        ecx, dword ptr [esp + 0x00]                   // 0x00713a54    8d4c2400
                         push               ecx                                           // 0x00713a58    51
                         push               edx                                           // 0x00713a59    52
                         push               0x00c20c80                                    // 0x00713a5a    68800cc200
                         push               0x00d99178                                    // 0x00713a5f    687891d900
                         call               _sprintf                                      // 0x00713a64    e8691d0b00
                         mov                eax, 0x00d99178                               // 0x00713a69    b87891d900
                         add                esp, 0x00000110                               // 0x00713a6e    81c410010000
                         ret                0x0004                                        // 0x00713a74    c20400
                         nop                                                              // 0x00713a77    90
                         nop                                                              // 0x00713a78    90
                         nop                                                              // 0x00713a79    90
                         nop                                                              // 0x00713a7a    90
                         nop                                                              // 0x00713a7b    90
                         nop                                                              // 0x00713a7c    90
                         nop                                                              // 0x00713a7d    90
                         nop                                                              // 0x00713a7e    90
                         nop                                                              // 0x00713a7f    90
_jmp_addr_0x00713a80:    push               ebx                                           // 0x00713a80    53
                         push               ebp                                           // 0x00713a81    55
                         mov                ebp, dword ptr [ecx]                          // 0x00713a82    8b29
                         test               ebp, ebp                                      // 0x00713a84    85ed
                         push               esi                                           // 0x00713a86    56
                         push               edi                                           // 0x00713a87    57
                         {disp32} je        _jmp_addr_0x00713b19                          // 0x00713a88    0f848b000000
                         {disp8} mov        edi, dword ptr [ebp + 0x04]                   // 0x00713a8e    8b7d04
                         test               edi, edi                                      // 0x00713a91    85ff
                         {disp32} je        _jmp_addr_0x00713b19                          // 0x00713a93    0f8480000000
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00713a99    8b442414
                         {disp32} lea       edx, dword ptr [eax + 0x000000c8]             // 0x00713a9d    8d90c8000000
_jmp_addr_0x00713aa3:    {disp32} lea       esi, dword ptr [edi + 0x000000c8]             // 0x00713aa3    8db7c8000000
                         mov.s              eax, edx                                      // 0x00713aa9    8bc2
_jmp_addr_0x00713aab:    mov                bl, byte ptr [eax]                            // 0x00713aab    8a18
                         mov.s              cl, bl                                        // 0x00713aad    8acb
                         cmp                bl, byte ptr [esi]                            // 0x00713aaf    3a1e
                         {disp8} jne        _jmp_addr_0x00713acf                          // 0x00713ab1    751c
                         test               cl, cl                                        // 0x00713ab3    84c9
                         {disp8} je         _jmp_addr_0x00713acb                          // 0x00713ab5    7414
                         {disp8} mov        bl, byte ptr [eax + 0x01]                     // 0x00713ab7    8a5801
                         mov.s              cl, bl                                        // 0x00713aba    8acb
                         cmp                bl, byte ptr [esi + 0x01]                     // 0x00713abc    3a5e01
                         {disp8} jne        _jmp_addr_0x00713acf                          // 0x00713abf    750e
                         add                eax, 0x02                                     // 0x00713ac1    83c002
                         add                esi, 0x02                                     // 0x00713ac4    83c602
                         test               cl, cl                                        // 0x00713ac7    84c9
                         {disp8} jne        _jmp_addr_0x00713aab                          // 0x00713ac9    75e0
_jmp_addr_0x00713acb:    xor.s              eax, eax                                      // 0x00713acb    33c0
                         {disp8} jmp        _jmp_addr_0x00713ad4                          // 0x00713acd    eb05
_jmp_addr_0x00713acf:    sbb.s              eax, eax                                      // 0x00713acf    1bc0
                         sbb                eax, -0x01                                    // 0x00713ad1    83d8ff
_jmp_addr_0x00713ad4:    test               eax, eax                                      // 0x00713ad4    85c0
                         {disp8} je         _jmp_addr_0x00713b10                          // 0x00713ad6    7438
                         test               edi, edi                                      // 0x00713ad8    85ff
                         {disp8} jne        _jmp_addr_0x00713ae5                          // 0x00713ada    7509
                         test               ebp, ebp                                      // 0x00713adc    85ed
                         {disp8} je         _jmp_addr_0x00713af6                          // 0x00713ade    7416
                         {disp8} mov        eax, dword ptr [ebp + 0x04]                   // 0x00713ae0    8b4504
                         {disp8} jmp        _jmp_addr_0x00713af8                          // 0x00713ae3    eb13
_jmp_addr_0x00713ae5:    mov.s              eax, ebp                                      // 0x00713ae5    8bc5
                         test               eax, eax                                      // 0x00713ae7    85c0
                         {disp8} je         _jmp_addr_0x00713af6                          // 0x00713ae9    740b
_jmp_addr_0x00713aeb:    cmp                dword ptr [eax + 0x04], edi                   // 0x00713aeb    397804
                         mov                eax, dword ptr [eax]                          // 0x00713aee    8b00
                         {disp8} je         _jmp_addr_0x00713b07                          // 0x00713af0    7415
                         test               eax, eax                                      // 0x00713af2    85c0
                         {disp8} jne        _jmp_addr_0x00713aeb                          // 0x00713af4    75f5
_jmp_addr_0x00713af6:    xor.s              eax, eax                                      // 0x00713af6    33c0
_jmp_addr_0x00713af8:    test               eax, eax                                      // 0x00713af8    85c0
                         mov.s              edi, eax                                      // 0x00713afa    8bf8
                         {disp8} jne        _jmp_addr_0x00713aa3                          // 0x00713afc    75a5
                         pop                edi                                           // 0x00713afe    5f
                         pop                esi                                           // 0x00713aff    5e
                         pop                ebp                                           // 0x00713b00    5d
                         xor.s              al, al                                        // 0x00713b01    32c0
                         pop                ebx                                           // 0x00713b03    5b
                         ret                0x0004                                        // 0x00713b04    c20400
_jmp_addr_0x00713b07:    test               eax, eax                                      // 0x00713b07    85c0
                         {disp8} je         _jmp_addr_0x00713af6                          // 0x00713b09    74eb
                         {disp8} mov        eax, dword ptr [eax + 0x04]                   // 0x00713b0b    8b4004
                         {disp8} jmp        _jmp_addr_0x00713af8                          // 0x00713b0e    ebe8
_jmp_addr_0x00713b10:    pop                edi                                           // 0x00713b10    5f
                         pop                esi                                           // 0x00713b11    5e
                         pop                ebp                                           // 0x00713b12    5d
                         mov                al, 0x01                                      // 0x00713b13    b001
                         pop                ebx                                           // 0x00713b15    5b
                         ret                0x0004                                        // 0x00713b16    c20400
_jmp_addr_0x00713b19:    pop                edi                                           // 0x00713b19    5f
                         pop                esi                                           // 0x00713b1a    5e
                         pop                ebp                                           // 0x00713b1b    5d
                         xor.s              al, al                                        // 0x00713b1c    32c0
                         pop                ebx                                           // 0x00713b1e    5b
                         ret                0x0004                                        // 0x00713b1f    c20400
                         nop                                                              // 0x00713b22    90
                         nop                                                              // 0x00713b23    90
                         nop                                                              // 0x00713b24    90
                         nop                                                              // 0x00713b25    90
                         nop                                                              // 0x00713b26    90
                         nop                                                              // 0x00713b27    90
                         nop                                                              // 0x00713b28    90
                         nop                                                              // 0x00713b29    90
                         nop                                                              // 0x00713b2a    90
                         nop                                                              // 0x00713b2b    90
                         nop                                                              // 0x00713b2c    90
                         nop                                                              // 0x00713b2d    90
                         nop                                                              // 0x00713b2e    90
                         nop                                                              // 0x00713b2f    90
_jmp_addr_0x00713b30:    {disp32} mov       edx, dword ptr [data_bytes + 0x3d3168]        // 0x00713b30    8b156891d900
                         test               edx, edx                                      // 0x00713b36    85d2
                         push               esi                                           // 0x00713b38    56
                         {disp8} je         _jmp_addr_0x00713b69                          // 0x00713b39    742e
                         {disp8} mov        eax, dword ptr [edx + 0x04]                   // 0x00713b3b    8b4204
                         test               eax, eax                                      // 0x00713b3e    85c0
                         {disp8} je         _jmp_addr_0x00713b69                          // 0x00713b40    7427
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x00713b42    8b742408
_jmp_addr_0x00713b46:    cmp                dword ptr [eax + 0x09], esi                   // 0x00713b46    397009
                         {disp8} je         _jmp_addr_0x00713b6b                          // 0x00713b49    7420
                         mov.s              ecx, edx                                      // 0x00713b4b    8bca
                         test               ecx, ecx                                      // 0x00713b4d    85c9
                         {disp8} je         _jmp_addr_0x00713b69                          // 0x00713b4f    7418
_jmp_addr_0x00713b51:    cmp                dword ptr [ecx + 0x04], eax                   // 0x00713b51    394104
                         mov                ecx, dword ptr [ecx]                          // 0x00713b54    8b09
                         {disp8} je         _jmp_addr_0x00713b5e                          // 0x00713b56    7406
                         test               ecx, ecx                                      // 0x00713b58    85c9
                         {disp8} je         _jmp_addr_0x00713b69                          // 0x00713b5a    740d
                         {disp8} jmp        _jmp_addr_0x00713b51                          // 0x00713b5c    ebf3
_jmp_addr_0x00713b5e:    test               ecx, ecx                                      // 0x00713b5e    85c9
                         {disp8} je         _jmp_addr_0x00713b69                          // 0x00713b60    7407
                         {disp8} mov        eax, dword ptr [ecx + 0x04]                   // 0x00713b62    8b4104
                         test               eax, eax                                      // 0x00713b65    85c0
                         {disp8} jne        _jmp_addr_0x00713b46                          // 0x00713b67    75dd
_jmp_addr_0x00713b69:    xor.s              eax, eax                                      // 0x00713b69    33c0
_jmp_addr_0x00713b6b:    pop                esi                                           // 0x00713b6b    5e
                         ret                                                              // 0x00713b6c    c3
                         nop                                                              // 0x00713b6d    90
                         nop                                                              // 0x00713b6e    90
                         nop                                                              // 0x00713b6f    90
_jmp_addr_0x00713b70:    sub                esp, 0x00000200                               // 0x00713b70    81ec00020000
                         push               ebx                                           // 0x00713b76    53
                         push               ebp                                           // 0x00713b77    55
                         push               esi                                           // 0x00713b78    56
                         push               edi                                           // 0x00713b79    57
                         mov.s              ebx, ecx                                      // 0x00713b7a    8bd9
_jmp_addr_0x00713b7c:    mov                eax, dword ptr [ebx]                          // 0x00713b7c    8b03
                         test               eax, eax                                      // 0x00713b7e    85c0
                         {disp8} je         _jmp_addr_0x00713bc1                          // 0x00713b80    743f
                         {disp8} mov        ebp, dword ptr [eax + 0x04]                   // 0x00713b82    8b6804
                         xor.s              edi, edi                                      // 0x00713b85    33ff
                         test               eax, eax                                      // 0x00713b87    85c0
                         {disp8} je         _jmp_addr_0x00713bb6                          // 0x00713b89    742b
_jmp_addr_0x00713b8b:    cmp                dword ptr [eax + 0x04], ebp                   // 0x00713b8b    396804
                         mov                esi, dword ptr [eax]                          // 0x00713b8e    8b30
                         {disp8} jne        _jmp_addr_0x00713bae                          // 0x00713b90    751c
                         cmp                eax, dword ptr [ebx]                          // 0x00713b92    3b03
                         {disp8} jne        _jmp_addr_0x00713b9a                          // 0x00713b94    7504
                         mov                dword ptr [ebx], esi                          // 0x00713b96    8933
                         {disp8} jmp        _jmp_addr_0x00713b9c                          // 0x00713b98    eb02
_jmp_addr_0x00713b9a:    mov                dword ptr [edi], esi                          // 0x00713b9a    8937
_jmp_addr_0x00713b9c:    {disp8} mov        edx, dword ptr [ebx + 0x04]                   // 0x00713b9c    8b5304
                         dec                edx                                           // 0x00713b9f    4a
                         push               eax                                           // 0x00713ba0    50
                         {disp8} mov        dword ptr [ebx + 0x04], edx                   // 0x00713ba1    895304
                         call               ??3@YAXPAX@Z                                  // 0x00713ba4    e8efb20900
                         add                esp, 0x04                                     // 0x00713ba9    83c404
                         {disp8} jmp        _jmp_addr_0x00713bb0                          // 0x00713bac    eb02
_jmp_addr_0x00713bae:    mov.s              edi, eax                                      // 0x00713bae    8bf8
_jmp_addr_0x00713bb0:    test               esi, esi                                      // 0x00713bb0    85f6
                         mov.s              eax, esi                                      // 0x00713bb2    8bc6
                         {disp8} jne        _jmp_addr_0x00713b8b                          // 0x00713bb4    75d5
_jmp_addr_0x00713bb6:    push               ebp                                           // 0x00713bb6    55
                         call               ??3@YAXPAX@Z                                  // 0x00713bb7    e8dcb20900
                         add                esp, 0x04                                     // 0x00713bbc    83c404
                         {disp8} jmp        _jmp_addr_0x00713b7c                          // 0x00713bbf    ebbb
_jmp_addr_0x00713bc1:    {disp8} mov        eax, dword ptr [ebx + 0x0d]                   // 0x00713bc1    8b430d
                         test               eax, eax                                      // 0x00713bc4    85c0
                         {disp8} je         _jmp_addr_0x00713bd1                          // 0x00713bc6    7409
                         push               eax                                           // 0x00713bc8    50
                         call               ??3@YAXPAX@Z                                  // 0x00713bc9    e8cab20900
                         add                esp, 0x04                                     // 0x00713bce    83c404
_jmp_addr_0x00713bd1:    push               0x009d976c                                    // 0x00713bd1    686c979d00
                         push               0x00bea824                                    // 0x00713bd6    6824a8be00
                         {disp8} mov        dword ptr [ebx + 0x0d], 0x00000000            // 0x00713bdb    c7430d00000000
                         call               _fopen                                        // 0x00713be2    e836320b00
                         mov.s              ebp, eax                                      // 0x00713be7    8be8
                         add                esp, 0x08                                     // 0x00713be9    83c408
                         test               ebp, ebp                                      // 0x00713bec    85ed
                         {disp32} je        _jmp_addr_0x00713cb0                          // 0x00713bee    0f84bc000000
                         push               ebp                                           // 0x00713bf4    55
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x00713bf5    8d442414
                         push               0x00000200                                    // 0x00713bf9    6800020000
                         push               eax                                           // 0x00713bfe    50
                         call               _fgets                                        // 0x00713bff    e8024a0b00
                         add                esp, 0x0c                                     // 0x00713c04    83c40c
                         test               eax, eax                                      // 0x00713c07    85c0
                         {disp32} je        _jmp_addr_0x00713ca7                          // 0x00713c09    0f8498000000
_jmp_addr_0x00713c0f:    push               0x00000288                                    // 0x00713c0f    6888020000
                         push               0x00c20c58                                    // 0x00713c14    68580cc200
                         push               0x0000032c                                    // 0x00713c19    682c030000
                         call               ___nw__FUl                                    // 0x00713c1e    e86d7b0c00
                         mov.s              edx, eax                                      // 0x00713c23    8bd0
                         add                esp, 0x0c                                     // 0x00713c25    83c40c
                         test               edx, edx                                      // 0x00713c28    85d2
                         {disp8} je         _jmp_addr_0x00713c3b                          // 0x00713c2a    740f
                         mov                ecx, 0x000000cb                               // 0x00713c2c    b9cb000000
                         xor.s              eax, eax                                      // 0x00713c31    33c0
                         mov.s              edi, edx                                      // 0x00713c33    8bfa
                         rep stosd                                                        // 0x00713c35    f3ab
                         mov.s              esi, edx                                      // 0x00713c37    8bf2
                         {disp8} jmp        _jmp_addr_0x00713c3d                          // 0x00713c39    eb02
_jmp_addr_0x00713c3b:    xor.s              esi, esi                                      // 0x00713c3b    33f6
_jmp_addr_0x00713c3d:    {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x00713c3d    8d4c2410
                         push               ecx                                           // 0x00713c41    51
                         mov.s              ecx, esi                                      // 0x00713c42    8bce
                         call               _jmp_addr_0x00714270                          // 0x00713c44    e827060000
                         push               0x1                                           // 0x00713c49    6a01
                         mov.s              ecx, esi                                      // 0x00713c4b    8bce
                         call               _jmp_addr_0x00714350                          // 0x00713c4d    e8fe060000
                         test               al, al                                        // 0x00713c52    84c0
                         {disp8} je         _jmp_addr_0x00713c8c                          // 0x00713c54    7436
                         test               esi, esi                                      // 0x00713c56    85f6
                         {disp8} je         _jmp_addr_0x00713c8c                          // 0x00713c58    7432
                         push               0x8                                           // 0x00713c5a    6a08
                         call               ??2@YAPAXI@Z                                  // 0x00713c5c    e88d280b00
                         add                esp, 0x04                                     // 0x00713c61    83c404
                         test               eax, eax                                      // 0x00713c64    85c0
                         {disp8} je         _jmp_addr_0x00713c8c                          // 0x00713c66    7424
                         {disp8} mov        dword ptr [eax + 0x04], esi                   // 0x00713c68    897004
                         mov                dword ptr [eax], 0x00000000                   // 0x00713c6b    c70000000000
                         mov                ecx, dword ptr [ebx]                          // 0x00713c71    8b0b
                         test               ecx, ecx                                      // 0x00713c73    85c9
                         {disp8} je         _jmp_addr_0x00713c87                          // 0x00713c75    7410
_jmp_addr_0x00713c77:    mov.s              edx, ecx                                      // 0x00713c77    8bd1
                         mov                ecx, dword ptr [ecx]                          // 0x00713c79    8b09
                         test               ecx, ecx                                      // 0x00713c7b    85c9
                         {disp8} jne        _jmp_addr_0x00713c77                          // 0x00713c7d    75f8
                         test               edx, edx                                      // 0x00713c7f    85d2
                         {disp8} je         _jmp_addr_0x00713c87                          // 0x00713c81    7404
                         mov                dword ptr [edx], eax                          // 0x00713c83    8902
                         {disp8} jmp        _jmp_addr_0x00713c89                          // 0x00713c85    eb02
_jmp_addr_0x00713c87:    mov                dword ptr [ebx], eax                          // 0x00713c87    8903
_jmp_addr_0x00713c89:    {disp8} inc        dword ptr [ebx + 0x04]                        // 0x00713c89    ff4304
_jmp_addr_0x00713c8c:    push               ebp                                           // 0x00713c8c    55
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x00713c8d    8d542414
                         push               0x00000200                                    // 0x00713c91    6800020000
                         push               edx                                           // 0x00713c96    52
                         call               _fgets                                        // 0x00713c97    e86a490b00
                         add                esp, 0x0c                                     // 0x00713c9c    83c40c
                         test               eax, eax                                      // 0x00713c9f    85c0
                         {disp32} jne       _jmp_addr_0x00713c0f                          // 0x00713ca1    0f8568ffffff
_jmp_addr_0x00713ca7:    push               ebp                                           // 0x00713ca7    55
                         call               _fclose                                       // 0x00713ca8    e883310b00
                         add                esp, 0x04                                     // 0x00713cad    83c404
_jmp_addr_0x00713cb0:    pop                edi                                           // 0x00713cb0    5f
                         pop                esi                                           // 0x00713cb1    5e
                         pop                ebp                                           // 0x00713cb2    5d
                         pop                ebx                                           // 0x00713cb3    5b
                         add                esp, 0x00000200                               // 0x00713cb4    81c400020000
                         ret                                                              // 0x00713cba    c3
                         nop                                                              // 0x00713cbb    90
                         nop                                                              // 0x00713cbc    90
                         nop                                                              // 0x00713cbd    90
                         nop                                                              // 0x00713cbe    90
                         nop                                                              // 0x00713cbf    90
_jmp_addr_0x00713cc0:    push               ecx                                           // 0x00713cc0    51
                         push               ebx                                           // 0x00713cc1    53
                         mov                ebx, dword ptr [ecx]                          // 0x00713cc2    8b19
                         push               ebp                                           // 0x00713cc4    55
                         push               esi                                           // 0x00713cc5    56
                         xor.s              esi, esi                                      // 0x00713cc6    33f6
                         test               ebx, ebx                                      // 0x00713cc8    85db
                         push               edi                                           // 0x00713cca    57
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x00713ccb    894c2410
                         {disp8} je         _jmp_addr_0x00713d15                          // 0x00713ccf    7444
                         {disp8} mov        ebp, dword ptr [ebx + 0x04]                   // 0x00713cd1    8b6b04
                         mov.s              edx, ebp                                      // 0x00713cd4    8bd5
                         test               edx, edx                                      // 0x00713cd6    85d2
                         {disp8} je         _jmp_addr_0x00713d15                          // 0x00713cd8    743b
_jmp_addr_0x00713cda:    or                 ecx, 0xffffffff                               // 0x00713cda    83c9ff
                         xor.s              eax, eax                                      // 0x00713cdd    33c0
                         {disp32} lea       edi, dword ptr [edx + 0x000000c8]             // 0x00713cdf    8dbac8000000
                         repne scasb                                                      // 0x00713ce5    f2ae
                         not                ecx                                           // 0x00713ce7    f7d1
                         dec                ecx                                           // 0x00713ce9    49
                         test               edx, edx                                      // 0x00713cea    85d2
                         {disp8} lea        esi, dword ptr [esi + ecx * 0x1 + 0x04]       // 0x00713cec    8d740e04
                         {disp8} jne        _jmp_addr_0x00713cfa                          // 0x00713cf0    7508
                         test               ebx, ebx                                      // 0x00713cf2    85db
                         {disp8} je         _jmp_addr_0x00713d0f                          // 0x00713cf4    7419
                         mov.s              edx, ebp                                      // 0x00713cf6    8bd5
                         {disp8} jmp        _jmp_addr_0x00713d11                          // 0x00713cf8    eb17
_jmp_addr_0x00713cfa:    mov.s              eax, ebx                                      // 0x00713cfa    8bc3
                         test               eax, eax                                      // 0x00713cfc    85c0
                         {disp8} je         _jmp_addr_0x00713d0f                          // 0x00713cfe    740f
_jmp_addr_0x00713d00:    cmp                dword ptr [eax + 0x04], edx                   // 0x00713d00    395004
                         mov                eax, dword ptr [eax]                          // 0x00713d03    8b00
                         {disp32} je        _jmp_addr_0x00713dc0                          // 0x00713d05    0f84b5000000
                         test               eax, eax                                      // 0x00713d0b    85c0
                         {disp8} jne        _jmp_addr_0x00713d00                          // 0x00713d0d    75f1
_jmp_addr_0x00713d0f:    xor.s              edx, edx                                      // 0x00713d0f    33d2
_jmp_addr_0x00713d11:    test               edx, edx                                      // 0x00713d11    85d2
                         {disp8} jne        _jmp_addr_0x00713cda                          // 0x00713d13    75c5
_jmp_addr_0x00713d15:    push               0x0000029b                                    // 0x00713d15    689b020000
                         add                esi, 0x04                                     // 0x00713d1a    83c604
                         push               0x00c20c58                                    // 0x00713d1d    68580cc200
                         push               esi                                           // 0x00713d22    56
                         call               ___nw__FUl                                    // 0x00713d23    e8687a0c00
                         mov.s              ebx, eax                                      // 0x00713d28    8bd8
                         mov.s              ecx, esi                                      // 0x00713d2a    8bce
                         mov.s              edx, ecx                                      // 0x00713d2c    8bd1
                         shr                ecx, 2                                        // 0x00713d2e    c1e902
                         xor.s              eax, eax                                      // 0x00713d31    33c0
                         mov.s              edi, ebx                                      // 0x00713d33    8bfb
                         rep stosd                                                        // 0x00713d35    f3ab
                         mov.s              ecx, edx                                      // 0x00713d37    8bca
                         and                ecx, 0x03                                     // 0x00713d39    83e103
                         rep stosb                                                        // 0x00713d3c    f3aa
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x00713d3e    8b44241c
                         mov                eax, dword ptr [eax]                          // 0x00713d42    8b00
                         add                esp, 0x0c                                     // 0x00713d44    83c40c
                         test               eax, eax                                      // 0x00713d47    85c0
                         {disp32} je        _jmp_addr_0x00713def                          // 0x00713d49    0f84a0000000
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x00713d4f    8b5004
                         test               edx, edx                                      // 0x00713d52    85d2
                         {disp32} je        _jmp_addr_0x00713def                          // 0x00713d54    0f8495000000
_jmp_addr_0x00713d5a:    or                 ecx, 0xffffffff                               // 0x00713d5a    83c9ff
                         xor.s              eax, eax                                      // 0x00713d5d    33c0
                         {disp32} lea       edi, dword ptr [edx + 0x000000c8]             // 0x00713d5f    8dbac8000000
                         repne scasb                                                      // 0x00713d65    f2ae
                         not                ecx                                           // 0x00713d67    f7d1
                         sub.s              edi, ecx                                      // 0x00713d69    2bf9
                         mov.s              ebp, ecx                                      // 0x00713d6b    8be9
                         or                 ecx, 0xffffffff                               // 0x00713d6d    83c9ff
                         mov.s              esi, edi                                      // 0x00713d70    8bf7
                         mov.s              edi, ebx                                      // 0x00713d72    8bfb
                         repne scasb                                                      // 0x00713d74    f2ae
                         dec                edi                                           // 0x00713d76    4f
                         mov.s              ecx, ebp                                      // 0x00713d77    8bcd
                         shr                ecx, 2                                        // 0x00713d79    c1e902
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00713d7c    f3a5
                         mov.s              ecx, ebp                                      // 0x00713d7e    8bcd
                         and                ecx, 0x03                                     // 0x00713d80    83e103
                         rep movsb                                                        // 0x00713d83    f3a4
                         or                 ecx, 0xffffffff                               // 0x00713d85    83c9ff
                         mov                edi, 0x00c20cb8                               // 0x00713d88    bfb80cc200
                         repne scasb                                                      // 0x00713d8d    f2ae
                         not                ecx                                           // 0x00713d8f    f7d1
                         sub.s              edi, ecx                                      // 0x00713d91    2bf9
                         mov.s              ebp, ecx                                      // 0x00713d93    8be9
                         or                 ecx, 0xffffffff                               // 0x00713d95    83c9ff
                         mov.s              esi, edi                                      // 0x00713d98    8bf7
                         mov.s              edi, ebx                                      // 0x00713d9a    8bfb
                         repne scasb                                                      // 0x00713d9c    f2ae
                         mov.s              ecx, ebp                                      // 0x00713d9e    8bcd
                         shr                ecx, 2                                        // 0x00713da0    c1e902
                         dec                edi                                           // 0x00713da3    4f
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00713da4    f3a5
                         mov.s              ecx, ebp                                      // 0x00713da6    8bcd
                         and                ecx, 0x03                                     // 0x00713da8    83e103
                         test               edx, edx                                      // 0x00713dab    85d2
                         rep movsb                                                        // 0x00713dad    f3a4
                         {disp8} jne        _jmp_addr_0x00713dd0                          // 0x00713daf    751f
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x00713db1    8b4c2410
                         mov                eax, dword ptr [ecx]                          // 0x00713db5    8b01
_jmp_addr_0x00713db7:    test               eax, eax                                      // 0x00713db7    85c0
                         {disp8} je         _jmp_addr_0x00713de5                          // 0x00713db9    742a
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x00713dbb    8b5004
                         {disp8} jmp        _jmp_addr_0x00713de7                          // 0x00713dbe    eb27
_jmp_addr_0x00713dc0:    test               eax, eax                                      // 0x00713dc0    85c0
                         {disp32} je        _jmp_addr_0x00713d0f                          // 0x00713dc2    0f8447ffffff
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x00713dc8    8b5004
                         {disp32} jmp       _jmp_addr_0x00713d11                          // 0x00713dcb    e941ffffff
_jmp_addr_0x00713dd0:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00713dd0    8b442410
                         mov                eax, dword ptr [eax]                          // 0x00713dd4    8b00
                         test               eax, eax                                      // 0x00713dd6    85c0
                         {disp8} je         _jmp_addr_0x00713de5                          // 0x00713dd8    740b
_jmp_addr_0x00713dda:    cmp                dword ptr [eax + 0x04], edx                   // 0x00713dda    395004
                         mov                eax, dword ptr [eax]                          // 0x00713ddd    8b00
                         {disp8} je         _jmp_addr_0x00713db7                          // 0x00713ddf    74d6
                         test               eax, eax                                      // 0x00713de1    85c0
                         {disp8} jne        _jmp_addr_0x00713dda                          // 0x00713de3    75f5
_jmp_addr_0x00713de5:    xor.s              edx, edx                                      // 0x00713de5    33d2
_jmp_addr_0x00713de7:    test               edx, edx                                      // 0x00713de7    85d2
                         {disp32} jne       _jmp_addr_0x00713d5a                          // 0x00713de9    0f856bffffff
_jmp_addr_0x00713def:    pop                edi                                           // 0x00713def    5f
                         pop                esi                                           // 0x00713df0    5e
                         pop                ebp                                           // 0x00713df1    5d
                         mov.s              eax, ebx                                      // 0x00713df2    8bc3
                         pop                ebx                                           // 0x00713df4    5b
                         pop                ecx                                           // 0x00713df5    59
                         ret                                                              // 0x00713df6    c3
                         nop                                                              // 0x00713df7    90
                         nop                                                              // 0x00713df8    90
                         nop                                                              // 0x00713df9    90
                         nop                                                              // 0x00713dfa    90
                         nop                                                              // 0x00713dfb    90
                         nop                                                              // 0x00713dfc    90
                         nop                                                              // 0x00713dfd    90
                         nop                                                              // 0x00713dfe    90
                         nop                                                              // 0x00713dff    90
_jmp_addr_0x00713e00:    sub                esp, 0x00000204                               // 0x00713e00    81ec04020000
                         push               ebx                                           // 0x00713e06    53
                         push               ebp                                           // 0x00713e07    55
                         push               esi                                           // 0x00713e08    56
                         mov.s              esi, ecx                                      // 0x00713e09    8bf1
                         push               edi                                           // 0x00713e0b    57
                         {disp8} mov        dword ptr [esp + 0x10], esi                   // 0x00713e0c    89742410
_jmp_addr_0x00713e10:    mov                eax, dword ptr [esi]                          // 0x00713e10    8b06
                         test               eax, eax                                      // 0x00713e12    85c0
                         {disp8} je         _jmp_addr_0x00713e5d                          // 0x00713e14    7447
                         {disp8} mov        ebp, dword ptr [eax + 0x04]                   // 0x00713e16    8b6804
                         xor.s              edi, edi                                      // 0x00713e19    33ff
                         test               eax, eax                                      // 0x00713e1b    85c0
                         {disp8} je         _jmp_addr_0x00713e52                          // 0x00713e1d    7433
_jmp_addr_0x00713e1f:    cmp                dword ptr [eax + 0x04], ebp                   // 0x00713e1f    396804
                         mov                esi, dword ptr [eax]                          // 0x00713e22    8b30
                         {disp8} jne        _jmp_addr_0x00713e46                          // 0x00713e24    7520
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x00713e26    8b4c2410
                         cmp                eax, dword ptr [ecx]                          // 0x00713e2a    3b01
                         {disp8} jne        _jmp_addr_0x00713e32                          // 0x00713e2c    7504
                         mov                dword ptr [ecx], esi                          // 0x00713e2e    8931
                         {disp8} jmp        _jmp_addr_0x00713e34                          // 0x00713e30    eb02
_jmp_addr_0x00713e32:    mov                dword ptr [edi], esi                          // 0x00713e32    8937
_jmp_addr_0x00713e34:    {disp8} mov        edx, dword ptr [ecx + 0x04]                   // 0x00713e34    8b5104
                         dec                edx                                           // 0x00713e37    4a
                         push               eax                                           // 0x00713e38    50
                         {disp8} mov        dword ptr [ecx + 0x04], edx                   // 0x00713e39    895104
                         call               ??3@YAXPAX@Z                                  // 0x00713e3c    e857b00900
                         add                esp, 0x04                                     // 0x00713e41    83c404
                         {disp8} jmp        _jmp_addr_0x00713e48                          // 0x00713e44    eb02
_jmp_addr_0x00713e46:    mov.s              edi, eax                                      // 0x00713e46    8bf8
_jmp_addr_0x00713e48:    test               esi, esi                                      // 0x00713e48    85f6
                         mov.s              eax, esi                                      // 0x00713e4a    8bc6
                         {disp8} jne        _jmp_addr_0x00713e1f                          // 0x00713e4c    75d1
                         {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x00713e4e    8b742410
_jmp_addr_0x00713e52:    push               ebp                                           // 0x00713e52    55
                         call               ??3@YAXPAX@Z                                  // 0x00713e53    e840b00900
                         add                esp, 0x04                                     // 0x00713e58    83c404
                         {disp8} jmp        _jmp_addr_0x00713e10                          // 0x00713e5b    ebb3
_jmp_addr_0x00713e5d:    {disp8} mov        eax, dword ptr [esi + 0x0d]                   // 0x00713e5d    8b460d
                         test               eax, eax                                      // 0x00713e60    85c0
                         {disp8} je         _jmp_addr_0x00713e6d                          // 0x00713e62    7409
                         push               eax                                           // 0x00713e64    50
                         call               ??3@YAXPAX@Z                                  // 0x00713e65    e82eb00900
                         add                esp, 0x04                                     // 0x00713e6a    83c404
_jmp_addr_0x00713e6d:    {disp8} mov        dword ptr [esi + 0x0d], 0x00000000            // 0x00713e6d    c7460d00000000
                         {disp32} mov       al, byte ptr [data_bytes + 0x292370]          // 0x00713e74    a07083c500
                         {disp32} mov       esi, dword ptr [esp + 0x00000218]             // 0x00713e79    8bb42418020000
                         {disp8} mov        byte ptr [esp + 0x14], al                     // 0x00713e80    88442414
                         xor.s              eax, eax                                      // 0x00713e84    33c0
                         mov                ecx, 0x0000007f                               // 0x00713e86    b97f000000
                         {disp8} lea        edi, dword ptr [esp + 0x15]                   // 0x00713e8b    8d7c2415
                         rep stosd                                                        // 0x00713e8f    f3ab
                         stosw                                                            // 0x00713e91    66ab
                         stosb                                                            // 0x00713e93    aa
                         or                 ecx, 0xffffffff                               // 0x00713e94    83c9ff
                         xor.s              eax, eax                                      // 0x00713e97    33c0
                         xor.s              edx, edx                                      // 0x00713e99    33d2
                         xor.s              ebx, ebx                                      // 0x00713e9b    33db
                         mov.s              edi, esi                                      // 0x00713e9d    8bfe
                         repne scasb                                                      // 0x00713e9f    f2ae
                         not                ecx                                           // 0x00713ea1    f7d1
                         dec                ecx                                           // 0x00713ea3    49
                         test               ecx, ecx                                      // 0x00713ea4    85c9
                         {disp32} jle       _jmp_addr_0x00713fc1                          // 0x00713ea6    0f8e15010000
_jmp_addr_0x00713eac:    mov                al, byte ptr [ebx + esi * 0x1]                // 0x00713eac    8a0433
                         cmp                al, 0x3a                                      // 0x00713eaf    3c3a
                         {disp8} je         _jmp_addr_0x00713ec1                          // 0x00713eb1    740e
                         test               al, al                                        // 0x00713eb3    84c0
                         {disp8} je         _jmp_addr_0x00713ec1                          // 0x00713eb5    740a
                         {disp8} mov        byte ptr [esp + edx * 0x1 + 0x14], al         // 0x00713eb7    88441414
                         inc                edx                                           // 0x00713ebb    42
                         {disp32} jmp       _jmp_addr_0x00713fac                          // 0x00713ebc    e9eb000000
_jmp_addr_0x00713ec1:    {disp8} mov        byte ptr [esp + edx * 0x1 + 0x14], 0x00       // 0x00713ec1    c644141400
                         mov                esi, 0x00c58370                               // 0x00713ec6    be7083c500
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x00713ecb    8d442414
_jmp_addr_0x00713ecf:    mov                dl, byte ptr [eax]                            // 0x00713ecf    8a10
                         mov.s              cl, dl                                        // 0x00713ed1    8aca
                         cmp                dl, byte ptr [esi]                            // 0x00713ed3    3a16
                         {disp8} jne        _jmp_addr_0x00713ef3                          // 0x00713ed5    751c
                         test               cl, cl                                        // 0x00713ed7    84c9
                         {disp8} je         _jmp_addr_0x00713eef                          // 0x00713ed9    7414
                         {disp8} mov        dl, byte ptr [eax + 0x01]                     // 0x00713edb    8a5001
                         mov.s              cl, dl                                        // 0x00713ede    8aca
                         cmp                dl, byte ptr [esi + 0x01]                     // 0x00713ee0    3a5601
                         {disp8} jne        _jmp_addr_0x00713ef3                          // 0x00713ee3    750e
                         add                eax, 0x02                                     // 0x00713ee5    83c002
                         add                esi, 0x02                                     // 0x00713ee8    83c602
                         test               cl, cl                                        // 0x00713eeb    84c9
                         {disp8} jne        _jmp_addr_0x00713ecf                          // 0x00713eed    75e0
_jmp_addr_0x00713eef:    xor.s              eax, eax                                      // 0x00713eef    33c0
                         {disp8} jmp        _jmp_addr_0x00713ef8                          // 0x00713ef1    eb05
_jmp_addr_0x00713ef3:    sbb.s              eax, eax                                      // 0x00713ef3    1bc0
                         sbb                eax, -0x01                                    // 0x00713ef5    83d8ff
_jmp_addr_0x00713ef8:    test               eax, eax                                      // 0x00713ef8    85c0
                         {disp32} je        _jmp_addr_0x00713fc1                          // 0x00713efa    0f84c1000000
                         push               0x000002b2                                    // 0x00713f00    68b2020000
                         push               0x00c20c58                                    // 0x00713f05    68580cc200
                         push               0x0000032c                                    // 0x00713f0a    682c030000
                         call               ___nw__FUl                                    // 0x00713f0f    e87c780c00
                         mov.s              ebp, eax                                      // 0x00713f14    8be8
                         add                esp, 0x0c                                     // 0x00713f16    83c40c
                         test               ebp, ebp                                      // 0x00713f19    85ed
                         {disp8} je         _jmp_addr_0x00713f2a                          // 0x00713f1b    740d
                         mov                ecx, 0x000000cb                               // 0x00713f1d    b9cb000000
                         xor.s              eax, eax                                      // 0x00713f22    33c0
                         mov.s              edi, ebp                                      // 0x00713f24    8bfd
                         rep stosd                                                        // 0x00713f26    f3ab
                         {disp8} jmp        _jmp_addr_0x00713f2c                          // 0x00713f28    eb02
_jmp_addr_0x00713f2a:    xor.s              ebp, ebp                                      // 0x00713f2a    33ed
_jmp_addr_0x00713f2c:    or                 ecx, 0xffffffff                               // 0x00713f2c    83c9ff
                         xor.s              eax, eax                                      // 0x00713f2f    33c0
                         {disp8} lea        edi, dword ptr [esp + 0x14]                   // 0x00713f31    8d7c2414
                         repne scasb                                                      // 0x00713f35    f2ae
                         not                ecx                                           // 0x00713f37    f7d1
                         sub.s              edi, ecx                                      // 0x00713f39    2bf9
                         mov.s              eax, ecx                                      // 0x00713f3b    8bc1
                         shr                ecx, 2                                        // 0x00713f3d    c1e902
                         mov.s              esi, edi                                      // 0x00713f40    8bf7
                         {disp32} lea       edx, dword ptr [ebp + 0x000000c8]             // 0x00713f42    8d95c8000000
                         mov.s              edi, edx                                      // 0x00713f48    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00713f4a    f3a5
                         mov.s              ecx, eax                                      // 0x00713f4c    8bc8
                         and                ecx, 0x03                                     // 0x00713f4e    83e103
                         test               ebp, ebp                                      // 0x00713f51    85ed
                         rep movsb                                                        // 0x00713f53    f3a4
                         {disp8} je         _jmp_addr_0x00713f8d                          // 0x00713f55    7436
                         push               0x8                                           // 0x00713f57    6a08
                         call               ??2@YAPAXI@Z                                  // 0x00713f59    e890250b00
                         add                esp, 0x04                                     // 0x00713f5e    83c404
                         test               eax, eax                                      // 0x00713f61    85c0
                         {disp8} je         _jmp_addr_0x00713f8d                          // 0x00713f63    7428
                         {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x00713f65    8b742410
                         {disp8} mov        dword ptr [eax + 0x04], ebp                   // 0x00713f69    896804
                         mov                dword ptr [eax], 0x00000000                   // 0x00713f6c    c70000000000
                         mov                ecx, dword ptr [esi]                          // 0x00713f72    8b0e
                         test               ecx, ecx                                      // 0x00713f74    85c9
                         {disp8} je         _jmp_addr_0x00713f88                          // 0x00713f76    7410
_jmp_addr_0x00713f78:    mov.s              edx, ecx                                      // 0x00713f78    8bd1
                         mov                ecx, dword ptr [ecx]                          // 0x00713f7a    8b09
                         test               ecx, ecx                                      // 0x00713f7c    85c9
                         {disp8} jne        _jmp_addr_0x00713f78                          // 0x00713f7e    75f8
                         test               edx, edx                                      // 0x00713f80    85d2
                         {disp8} je         _jmp_addr_0x00713f88                          // 0x00713f82    7404
                         mov                dword ptr [edx], eax                          // 0x00713f84    8902
                         {disp8} jmp        _jmp_addr_0x00713f8a                          // 0x00713f86    eb02
_jmp_addr_0x00713f88:    mov                dword ptr [esi], eax                          // 0x00713f88    8906
_jmp_addr_0x00713f8a:    {disp8} inc        dword ptr [esi + 0x04]                        // 0x00713f8a    ff4604
_jmp_addr_0x00713f8d:    xor.s              eax, eax                                      // 0x00713f8d    33c0
                         mov                ecx, 0x00000100                               // 0x00713f8f    b900010000
                         {disp8} lea        edi, dword ptr [esp + 0x14]                   // 0x00713f94    8d7c2414
                         rep stosd                                                        // 0x00713f98    f3ab
                         {disp32} mov       ecx, dword ptr [esp + 0x00000218]             // 0x00713f9a    8b8c2418020000
                         mov                al, byte ptr [ebx + ecx * 0x1]                // 0x00713fa1    8a040b
                         xor.s              edx, edx                                      // 0x00713fa4    33d2
                         test               al, al                                        // 0x00713fa6    84c0
                         {disp8} je         _jmp_addr_0x00713fc1                          // 0x00713fa8    7417
                         mov.s              esi, ecx                                      // 0x00713faa    8bf1
_jmp_addr_0x00713fac:    or                 ecx, 0xffffffff                               // 0x00713fac    83c9ff
                         xor.s              eax, eax                                      // 0x00713faf    33c0
                         inc                ebx                                           // 0x00713fb1    43
                         mov.s              edi, esi                                      // 0x00713fb2    8bfe
                         repne scasb                                                      // 0x00713fb4    f2ae
                         not                ecx                                           // 0x00713fb6    f7d1
                         dec                ecx                                           // 0x00713fb8    49
                         cmp.s              ebx, ecx                                      // 0x00713fb9    3bd9
                         {disp32} jl        _jmp_addr_0x00713eac                          // 0x00713fbb    0f8cebfeffff
_jmp_addr_0x00713fc1:    pop                edi                                           // 0x00713fc1    5f
                         pop                esi                                           // 0x00713fc2    5e
                         pop                ebp                                           // 0x00713fc3    5d
                         pop                ebx                                           // 0x00713fc4    5b
                         add                esp, 0x00000204                               // 0x00713fc5    81c404020000
                         ret                0x0004                                        // 0x00713fcb    c20400
                         nop                                                              // 0x00713fce    90
                         nop                                                              // 0x00713fcf    90
_jmp_addr_0x00713fd0:    sub                esp, 0x000003e8                               // 0x00713fd0    81ece8030000
                         push               ebx                                           // 0x00713fd6    53
                         {disp32} mov       ebx, dword ptr [esp + 0x000003f0]             // 0x00713fd7    8b9c24f0030000
                         push               ebp                                           // 0x00713fde    55
                         push               esi                                           // 0x00713fdf    56
                         push               edi                                           // 0x00713fe0    57
_jmp_addr_0x00713fe1:    mov                eax, dword ptr [ebx]                          // 0x00713fe1    8b03
                         test               eax, eax                                      // 0x00713fe3    85c0
                         {disp8} je         _jmp_addr_0x00714026                          // 0x00713fe5    743f
                         {disp8} mov        ebp, dword ptr [eax + 0x04]                   // 0x00713fe7    8b6804
                         xor.s              edi, edi                                      // 0x00713fea    33ff
                         test               eax, eax                                      // 0x00713fec    85c0
                         {disp8} je         _jmp_addr_0x0071401b                          // 0x00713fee    742b
_jmp_addr_0x00713ff0:    cmp                dword ptr [eax + 0x04], ebp                   // 0x00713ff0    396804
                         mov                esi, dword ptr [eax]                          // 0x00713ff3    8b30
                         {disp8} jne        _jmp_addr_0x00714013                          // 0x00713ff5    751c
                         cmp                eax, dword ptr [ebx]                          // 0x00713ff7    3b03
                         {disp8} jne        _jmp_addr_0x00713fff                          // 0x00713ff9    7504
                         mov                dword ptr [ebx], esi                          // 0x00713ffb    8933
                         {disp8} jmp        _jmp_addr_0x00714001                          // 0x00713ffd    eb02
_jmp_addr_0x00713fff:    mov                dword ptr [edi], esi                          // 0x00713fff    8937
_jmp_addr_0x00714001:    {disp8} mov        edx, dword ptr [ebx + 0x04]                   // 0x00714001    8b5304
                         dec                edx                                           // 0x00714004    4a
                         push               eax                                           // 0x00714005    50
                         {disp8} mov        dword ptr [ebx + 0x04], edx                   // 0x00714006    895304
                         call               ??3@YAXPAX@Z                                  // 0x00714009    e88aae0900
                         add                esp, 0x04                                     // 0x0071400e    83c404
                         {disp8} jmp        _jmp_addr_0x00714015                          // 0x00714011    eb02
_jmp_addr_0x00714013:    mov.s              edi, eax                                      // 0x00714013    8bf8
_jmp_addr_0x00714015:    test               esi, esi                                      // 0x00714015    85f6
                         mov.s              eax, esi                                      // 0x00714017    8bc6
                         {disp8} jne        _jmp_addr_0x00713ff0                          // 0x00714019    75d5
_jmp_addr_0x0071401b:    push               ebp                                           // 0x0071401b    55
                         call               ??3@YAXPAX@Z                                  // 0x0071401c    e877ae0900
                         add                esp, 0x04                                     // 0x00714021    83c404
                         {disp8} jmp        _jmp_addr_0x00713fe1                          // 0x00714024    ebbb
_jmp_addr_0x00714026:    push               0x009d976c                                    // 0x00714026    686c979d00
                         push               0x00bec914                                    // 0x0071402b    6814c9be00
                         call               _fopen                                        // 0x00714030    e8e82d0b00
                         mov.s              ebp, eax                                      // 0x00714035    8be8
                         add                esp, 0x08                                     // 0x00714037    83c408
                         test               ebp, ebp                                      // 0x0071403a    85ed
                         {disp32} je        _jmp_addr_0x0071411a                          // 0x0071403c    0f84d8000000
                         push               ebp                                           // 0x00714042    55
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x00714043    8d442414
                         push               0x000003e8                                    // 0x00714047    68e8030000
                         push               eax                                           // 0x0071404c    50
                         call               _fgets                                        // 0x0071404d    e8b4450b00
                         add                esp, 0x0c                                     // 0x00714052    83c40c
                         test               eax, eax                                      // 0x00714055    85c0
                         {disp32} je        _jmp_addr_0x00714111                          // 0x00714057    0f84b4000000
_jmp_addr_0x0071405d:    mov                esi, 0x00c58370                               // 0x0071405d    be7083c500
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x00714062    8d442410
_jmp_addr_0x00714066:    mov                dl, byte ptr [eax]                            // 0x00714066    8a10
                         mov.s              cl, dl                                        // 0x00714068    8aca
                         cmp                dl, byte ptr [esi]                            // 0x0071406a    3a16
                         {disp8} jne        _jmp_addr_0x0071408a                          // 0x0071406c    751c
                         test               cl, cl                                        // 0x0071406e    84c9
                         {disp8} je         _jmp_addr_0x00714086                          // 0x00714070    7414
                         {disp8} mov        dl, byte ptr [eax + 0x01]                     // 0x00714072    8a5001
                         mov.s              cl, dl                                        // 0x00714075    8aca
                         cmp                dl, byte ptr [esi + 0x01]                     // 0x00714077    3a5601
                         {disp8} jne        _jmp_addr_0x0071408a                          // 0x0071407a    750e
                         add                eax, 0x02                                     // 0x0071407c    83c002
                         add                esi, 0x02                                     // 0x0071407f    83c602
                         test               cl, cl                                        // 0x00714082    84c9
                         {disp8} jne        _jmp_addr_0x00714066                          // 0x00714084    75e0
_jmp_addr_0x00714086:    xor.s              eax, eax                                      // 0x00714086    33c0
                         {disp8} jmp        _jmp_addr_0x0071408f                          // 0x00714088    eb05
_jmp_addr_0x0071408a:    sbb.s              eax, eax                                      // 0x0071408a    1bc0
                         sbb                eax, -0x01                                    // 0x0071408c    83d8ff
_jmp_addr_0x0071408f:    test               eax, eax                                      // 0x0071408f    85c0
                         {disp32} je        _jmp_addr_0x0071411a                          // 0x00714091    0f8483000000
                         push               0x000002d0                                    // 0x00714097    68d0020000
                         push               0x00c20c58                                    // 0x0071409c    68580cc200
                         push               0x0000032c                                    // 0x007140a1    682c030000
                         call               ___nw__FUl                                    // 0x007140a6    e8e5760c00
                         mov.s              edx, eax                                      // 0x007140ab    8bd0
                         add                esp, 0x0c                                     // 0x007140ad    83c40c
                         test               edx, edx                                      // 0x007140b0    85d2
                         {disp8} je         _jmp_addr_0x007140c3                          // 0x007140b2    740f
                         mov                ecx, 0x000000cb                               // 0x007140b4    b9cb000000
                         xor.s              eax, eax                                      // 0x007140b9    33c0
                         mov.s              edi, edx                                      // 0x007140bb    8bfa
                         rep stosd                                                        // 0x007140bd    f3ab
                         mov.s              esi, edx                                      // 0x007140bf    8bf2
                         {disp8} jmp        _jmp_addr_0x007140c5                          // 0x007140c1    eb02
_jmp_addr_0x007140c3:    xor.s              esi, esi                                      // 0x007140c3    33f6
_jmp_addr_0x007140c5:    {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x007140c5    8d442410
                         push               eax                                           // 0x007140c9    50
                         mov.s              ecx, esi                                      // 0x007140ca    8bce
                         call               _jmp_addr_0x00714270                          // 0x007140cc    e89f010000
                         test               esi, esi                                      // 0x007140d1    85f6
                         {disp32} mov       byte ptr [esi + 0x0000032a], 0x00             // 0x007140d3    c6862a03000000
                         {disp8} je         _jmp_addr_0x007140f6                          // 0x007140da    741a
                         push               0x8                                           // 0x007140dc    6a08
                         call               ??2@YAPAXI@Z                                  // 0x007140de    e80b240b00
                         add                esp, 0x04                                     // 0x007140e3    83c404
                         test               eax, eax                                      // 0x007140e6    85c0
                         {disp8} je         _jmp_addr_0x007140f6                          // 0x007140e8    740c
                         mov                ecx, dword ptr [ebx]                          // 0x007140ea    8b0b
                         {disp8} mov        dword ptr [eax + 0x04], esi                   // 0x007140ec    897004
                         mov                dword ptr [eax], ecx                          // 0x007140ef    8908
                         mov                dword ptr [ebx], eax                          // 0x007140f1    8903
                         {disp8} inc        dword ptr [ebx + 0x04]                        // 0x007140f3    ff4304
_jmp_addr_0x007140f6:    push               ebp                                           // 0x007140f6    55
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x007140f7    8d4c2414
                         push               0x000003e8                                    // 0x007140fb    68e8030000
                         push               ecx                                           // 0x00714100    51
                         call               _fgets                                        // 0x00714101    e800450b00
                         add                esp, 0x0c                                     // 0x00714106    83c40c
                         test               eax, eax                                      // 0x00714109    85c0
                         {disp32} jne       _jmp_addr_0x0071405d                          // 0x0071410b    0f854cffffff
_jmp_addr_0x00714111:    push               ebp                                           // 0x00714111    55
                         call               _fclose                                       // 0x00714112    e8192d0b00
                         add                esp, 0x04                                     // 0x00714117    83c404
_jmp_addr_0x0071411a:    pop                edi                                           // 0x0071411a    5f
                         pop                esi                                           // 0x0071411b    5e
                         pop                ebp                                           // 0x0071411c    5d
                         pop                ebx                                           // 0x0071411d    5b
                         add                esp, 0x000003e8                               // 0x0071411e    81c4e8030000
                         ret                                                              // 0x00714124    c3
                         nop                                                              // 0x00714125    90
                         nop                                                              // 0x00714126    90
                         nop                                                              // 0x00714127    90
                         nop                                                              // 0x00714128    90
                         nop                                                              // 0x00714129    90
                         nop                                                              // 0x0071412a    90
                         nop                                                              // 0x0071412b    90
                         nop                                                              // 0x0071412c    90
                         nop                                                              // 0x0071412d    90
                         nop                                                              // 0x0071412e    90
                         nop                                                              // 0x0071412f    90
_jmp_addr_0x00714130:    push               esi                                           // 0x00714130    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x00714131    8b742408
                         push               edi                                           // 0x00714135    57
                         push               esi                                           // 0x00714136    56
                         call               ?Exists@LHOSFile@@SAIPAD@Z                    // 0x00714137    e864850a00
                         add                esp, 0x04                                     // 0x0071413c    83c404
                         test               eax, eax                                      // 0x0071413f    85c0
                         {disp8} jne        _jmp_addr_0x00714157                          // 0x00714141    7514
                         push               0x00000180                                    // 0x00714143    6880010000
                         push               esi                                           // 0x00714148    56
                         call               __chmod                                       // 0x00714149    e812570b00
                         push               esi                                           // 0x0071414e    56
                         call               __unlink                                      // 0x0071414f    e8d52a0b00
                         add                esp, 0x0c                                     // 0x00714154    83c40c
_jmp_addr_0x00714157:    push               0x009cd0bc                                    // 0x00714157    68bcd09c00
                         push               esi                                           // 0x0071415c    56
                         call               _fopen                                        // 0x0071415d    e8bb2c0b00
                         mov.s              edi, eax                                      // 0x00714162    8bf8
                         add                esp, 0x08                                     // 0x00714164    83c408
                         test               edi, edi                                      // 0x00714167    85ff
                         {disp8} je         _jmp_addr_0x007141ab                          // 0x00714169    7440
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0071416b    8b442410
                         mov                esi, dword ptr [eax]                          // 0x0071416f    8b30
                         test               esi, esi                                      // 0x00714171    85f6
                         {disp8} je         _jmp_addr_0x007141a2                          // 0x00714173    742d
_jmp_addr_0x00714175:    {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x00714175    8b4604
                         {disp32} mov       ecx, dword ptr [eax + 0x00000320]             // 0x00714178    8b8820030000
                         push               ecx                                           // 0x0071417e    51
                         {disp32} lea       edx, dword ptr [eax + 0x000000c8]             // 0x0071417f    8d90c8000000
                         push               edx                                           // 0x00714185    52
                         push               eax                                           // 0x00714186    50
                         {disp32} mov       eax, dword ptr [eax + 0x00000324]             // 0x00714187    8b8024030000
                         push               eax                                           // 0x0071418d    50
                         push               0x00c20cbc                                    // 0x0071418e    68bc0cc200
                         push               edi                                           // 0x00714193    57
                         call               _fprintf                                      // 0x00714194    e8172c0b00
                         mov                esi, dword ptr [esi]                          // 0x00714199    8b36
                         add                esp, 0x18                                     // 0x0071419b    83c418
                         test               esi, esi                                      // 0x0071419e    85f6
                         {disp8} jne        _jmp_addr_0x00714175                          // 0x007141a0    75d3
_jmp_addr_0x007141a2:    push               edi                                           // 0x007141a2    57
                         call               _fclose                                       // 0x007141a3    e8882c0b00
                         add                esp, 0x04                                     // 0x007141a8    83c404
_jmp_addr_0x007141ab:    pop                edi                                           // 0x007141ab    5f
                         pop                esi                                           // 0x007141ac    5e
                         ret                                                              // 0x007141ad    c3
                         nop                                                              // 0x007141ae    90
                         nop                                                              // 0x007141af    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x007141b0    8b442404
                         test               eax, eax                                      // 0x007141b4    85c0
                         push               esi                                           // 0x007141b6    56
                         mov.s              esi, ecx                                      // 0x007141b7    8bf1
                         {disp8} jne        _jmp_addr_0x007141c6                          // 0x007141b9    750b
                         mov                dword ptr [esi], eax                          // 0x007141bb    8906
                         {disp8} mov        dword ptr [esi + 0x04], eax                   // 0x007141bd    894604
                         mov.s              eax, esi                                      // 0x007141c0    8bc6
                         pop                esi                                           // 0x007141c2    5e
                         ret                0x0004                                        // 0x007141c3    c20400
_jmp_addr_0x007141c6:    push               eax                                           // 0x007141c6    50
                         mov.s              ecx, esi                                      // 0x007141c7    8bce
                         call               _jmp_addr_0x007141e0                          // 0x007141c9    e812000000
                         mov.s              eax, esi                                      // 0x007141ce    8bc6
                         pop                esi                                           // 0x007141d0    5e
                         ret                0x0004                                        // 0x007141d1    c20400
                         nop                                                              // 0x007141d4    90
                         nop                                                              // 0x007141d5    90
                         nop                                                              // 0x007141d6    90
                         nop                                                              // 0x007141d7    90
                         nop                                                              // 0x007141d8    90
                         nop                                                              // 0x007141d9    90
                         nop                                                              // 0x007141da    90
                         nop                                                              // 0x007141db    90
                         nop                                                              // 0x007141dc    90
                         nop                                                              // 0x007141dd    90
                         nop                                                              // 0x007141de    90
                         nop                                                              // 0x007141df    90
_jmp_addr_0x007141e0:    push               esi                                           // 0x007141e0    56
                         push               edi                                           // 0x007141e1    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x007141e2    8b7c240c
                         test               edi, edi                                      // 0x007141e6    85ff
                         mov.s              esi, ecx                                      // 0x007141e8    8bf1
                         {disp8} je         _jmp_addr_0x0071425a                          // 0x007141ea    746e
                         mov                eax, dword ptr [esi]                          // 0x007141ec    8b06
                         test               eax, eax                                      // 0x007141ee    85c0
                         {disp8} je         _jmp_addr_0x007141fb                          // 0x007141f0    7409
                         push               eax                                           // 0x007141f2    50
                         call               ??3@YAXPAX@Z                                  // 0x007141f3    e8a0ac0900
                         add                esp, 0x04                                     // 0x007141f8    83c404
_jmp_addr_0x007141fb:    push               0x00c20ccc                                    // 0x007141fb    68cc0cc200
                         push               edi                                           // 0x00714200    57
                         mov                dword ptr [esi], 0x00000000                   // 0x00714201    c70600000000
                         {disp8} mov        dword ptr [esi + 0x04], 0x00000000            // 0x00714207    c7460400000000
                         call               _fopen                                        // 0x0071420e    e80a2c0b00
                         mov.s              edi, eax                                      // 0x00714213    8bf8
                         add                esp, 0x08                                     // 0x00714215    83c408
                         test               edi, edi                                      // 0x00714218    85ff
                         {disp8} je         _jmp_addr_0x0071425a                          // 0x0071421a    743e
                         push               edi                                           // 0x0071421c    57
                         call               __fileno                                      // 0x0071421d    e8811a1900
                         push               eax                                           // 0x00714222    50
                         call               __filelength                                  // 0x00714223    e8f1191900
                         push               0x00000304                                    // 0x00714228    6804030000
                         push               0x00c20c58                                    // 0x0071422d    68580cc200
                         push               eax                                           // 0x00714232    50
                         {disp8} mov        dword ptr [esi + 0x04], eax                   // 0x00714233    894604
                         call               ___nw__FUl                                    // 0x00714236    e855750c00
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x0071423b    8b4e04
                         push               edi                                           // 0x0071423e    57
                         push               ecx                                           // 0x0071423f    51
                         push               0x1                                           // 0x00714240    6a01
                         push               eax                                           // 0x00714242    50
                         mov                dword ptr [esi], eax                          // 0x00714243    8906
                         call               _fread                                        // 0x00714245    e841320b00
                         push               edi                                           // 0x0071424a    57
                         call               _fclose                                       // 0x0071424b    e8e02b0b00
                         add                esp, 0x28                                     // 0x00714250    83c428
                         pop                edi                                           // 0x00714253    5f
                         mov                al, 0x01                                      // 0x00714254    b001
                         pop                esi                                           // 0x00714256    5e
                         ret                0x0004                                        // 0x00714257    c20400
_jmp_addr_0x0071425a:    pop                edi                                           // 0x0071425a    5f
                         xor.s              al, al                                        // 0x0071425b    32c0
                         pop                esi                                           // 0x0071425d    5e
                         ret                0x0004                                        // 0x0071425e    c20400
                         nop                                                              // 0x00714261    90
                         nop                                                              // 0x00714262    90
                         nop                                                              // 0x00714263    90
                         nop                                                              // 0x00714264    90
                         nop                                                              // 0x00714265    90
                         nop                                                              // 0x00714266    90
                         nop                                                              // 0x00714267    90
                         nop                                                              // 0x00714268    90
                         nop                                                              // 0x00714269    90
                         nop                                                              // 0x0071426a    90
                         nop                                                              // 0x0071426b    90
                         nop                                                              // 0x0071426c    90
                         nop                                                              // 0x0071426d    90
                         nop                                                              // 0x0071426e    90
                         nop                                                              // 0x0071426f    90
_jmp_addr_0x00714270:    sub                esp, 0x0c                                     // 0x00714270    83ec0c
                         push               ebx                                           // 0x00714273    53
                         push               ebp                                           // 0x00714274    55
                         push               esi                                           // 0x00714275    56
                         push               edi                                           // 0x00714276    57
                         {disp8} mov        edi, dword ptr [esp + 0x20]                   // 0x00714277    8b7c2420
                         mov.s              ebp, ecx                                      // 0x0071427b    8be9
                         mov                cl, byte ptr [edi]                            // 0x0071427d    8a0f
                         xor.s              edx, edx                                      // 0x0071427f    33d2
                         xor.s              esi, esi                                      // 0x00714281    33f6
                         cmp                cl, 0x3a                                      // 0x00714283    80f93a
                         {disp8} je         _jmp_addr_0x0071429e                          // 0x00714286    7416
                         {disp8} lea        ebx, dword ptr [esp + 0x10]                   // 0x00714288    8d5c2410
                         mov.s              eax, edi                                      // 0x0071428c    8bc7
                         sub.s              ebx, edi                                      // 0x0071428e    2bdf
_jmp_addr_0x00714290:    inc                edx                                           // 0x00714290    42
                         mov                byte ptr [ebx + eax * 0x1], cl                // 0x00714291    880c03
                         {disp8} mov        cl, byte ptr [eax + 0x01]                     // 0x00714294    8a4801
                         inc                esi                                           // 0x00714297    46
                         inc                eax                                           // 0x00714298    40
                         cmp                cl, 0x3a                                      // 0x00714299    80f93a
                         {disp8} jne        _jmp_addr_0x00714290                          // 0x0071429c    75f2
_jmp_addr_0x0071429e:    {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x0071429e    8d442410
                         xor.s              ebx, ebx                                      // 0x007142a2    33db
                         push               eax                                           // 0x007142a4    50
                         {disp8} mov        byte ptr [esp + edx * 0x1 + 0x14], bl         // 0x007142a5    885c1414
                         call               _atoi                          // 0x007142a9    e8d9220b00
                         add                esp, 0x04                                     // 0x007142ae    83c404
                         inc                esi                                           // 0x007142b1    46
                         {disp32} mov       dword ptr [ebp + 0x00000324], eax             // 0x007142b2    898524030000
                         mov                al, byte ptr [esi + edi * 0x1]                // 0x007142b8    8a043e
                         xor.s              ecx, ecx                                      // 0x007142bb    33c9
                         cmp                al, 0x3a                                      // 0x007142bd    3c3a
                         {disp8} je         _jmp_addr_0x007142ce                          // 0x007142bf    740d
_jmp_addr_0x007142c1:    mov                byte ptr [ecx + ebp * 0x1], al                // 0x007142c1    880429
                         {disp8} mov        al, byte ptr [esi + edi * 0x1 + 0x01]         // 0x007142c4    8a443e01
                         inc                ecx                                           // 0x007142c8    41
                         inc                esi                                           // 0x007142c9    46
                         cmp                al, 0x3a                                      // 0x007142ca    3c3a
                         {disp8} jne        _jmp_addr_0x007142c1                          // 0x007142cc    75f3
_jmp_addr_0x007142ce:    mov                byte ptr [ecx + ebp * 0x1], bl                // 0x007142ce    881c29
                         {disp8} mov        al, byte ptr [esi + edi * 0x1 + 0x01]         // 0x007142d1    8a443e01
                         xor.s              ecx, ecx                                      // 0x007142d5    33c9
                         inc                esi                                           // 0x007142d7    46
                         cmp                al, 0x3a                                      // 0x007142d8    3c3a
                         {disp8} je         _jmp_addr_0x007142f1                          // 0x007142da    7415
_jmp_addr_0x007142dc:    cmp                al, 0x0a                                      // 0x007142dc    3c0a
                         {disp8} je         _jmp_addr_0x007142e8                          // 0x007142de    7408
                         {disp32} mov       byte ptr [ecx + ebp * 0x1 + 0x000000c8], al   // 0x007142e0    888429c8000000
                         inc                ecx                                           // 0x007142e7    41
_jmp_addr_0x007142e8:    {disp8} mov        al, byte ptr [esi + edi * 0x1 + 0x01]         // 0x007142e8    8a443e01
                         inc                esi                                           // 0x007142ec    46
                         cmp                al, 0x3a                                      // 0x007142ed    3c3a
                         {disp8} jne        _jmp_addr_0x007142dc                          // 0x007142ef    75eb
_jmp_addr_0x007142f1:    inc                esi                                           // 0x007142f1    46
                         lea                eax, dword ptr [esi + edi * 0x1]              // 0x007142f2    8d043e
                         {disp32} mov       byte ptr [ecx + ebp * 0x1 + 0x000000c8], bl   // 0x007142f5    889c29c8000000
                         cmp                byte ptr [eax], 0x3a                          // 0x007142fc    80383a
                         {disp8} je         _jmp_addr_0x0071430b                          // 0x007142ff    740a
_jmp_addr_0x00714301:    {disp8} mov        cl, byte ptr [esi + edi * 0x1 + 0x01]         // 0x00714301    8a4c3e01
                         inc                esi                                           // 0x00714305    46
                         cmp                cl, 0x3a                                      // 0x00714306    80f93a
                         {disp8} jne        _jmp_addr_0x00714301                          // 0x00714309    75f6
_jmp_addr_0x0071430b:    push               eax                                           // 0x0071430b    50
                         mov                byte ptr [esi + edi * 0x1], bl                // 0x0071430c    881c3e
                         call               _atoi                          // 0x0071430f    e873220b00
                         add                esp, 0x04                                     // 0x00714314    83c404
                         push               0x1                                           // 0x00714317    6a01
                         mov.s              ecx, ebp                                      // 0x00714319    8bcd
                         {disp32} mov       dword ptr [ebp + 0x00000320], eax             // 0x0071431b    898520030000
                         call               _jmp_addr_0x00714350                          // 0x00714321    e82a000000
                         push               ebx                                           // 0x00714326    53
                         mov.s              ecx, ebp                                      // 0x00714327    8bcd
                         {disp32} mov       byte ptr [ebp + 0x00000329], al               // 0x00714329    888529030000
                         call               _jmp_addr_0x00714350                          // 0x0071432f    e81c000000
                         pop                edi                                           // 0x00714334    5f
                         pop                esi                                           // 0x00714335    5e
                         {disp32} mov       byte ptr [ebp + 0x00000328], al               // 0x00714336    888528030000
                         pop                ebp                                           // 0x0071433c    5d
                         pop                ebx                                           // 0x0071433d    5b
                         add                esp, 0x0c                                     // 0x0071433e    83c40c
                         ret                0x0004                                        // 0x00714341    c20400
                         nop                                                              // 0x00714344    90
                         nop                                                              // 0x00714345    90
                         nop                                                              // 0x00714346    90
                         nop                                                              // 0x00714347    90
                         nop                                                              // 0x00714348    90
                         nop                                                              // 0x00714349    90
                         nop                                                              // 0x0071434a    90
                         nop                                                              // 0x0071434b    90
                         nop                                                              // 0x0071434c    90
                         nop                                                              // 0x0071434d    90
                         nop                                                              // 0x0071434e    90
                         nop                                                              // 0x0071434f    90
_jmp_addr_0x00714350:    {disp8} mov        al, byte ptr [esp + 0x04]                     // 0x00714350    8a442404
                         sub                esp, 0x00000104                               // 0x00714354    81ec04010000
                         test               al, al                                        // 0x0071435a    84c0
                         mov                eax, 0x00bfd860                               // 0x0071435c    b860d8bf00
                         {disp8} jne        _jmp_addr_0x00714368                          // 0x00714361    7505
                         mov                eax, 0x00bfd858                               // 0x00714363    b858d8bf00
_jmp_addr_0x00714368:    push               eax                                           // 0x00714368    50
                         add                ecx, 0x000000c8                               // 0x00714369    81c1c8000000
                         push               ecx                                           // 0x0071436f    51
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x00714370    8d442408
                         push               0x00c20cd0                                    // 0x00714374    68d00cc200
                         push               eax                                           // 0x00714379    50
                         call               _sprintf                                      // 0x0071437a    e853140b00
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0071437f    8d4c2410
                         push               ecx                                           // 0x00714383    51
                         call               ?Exists@LHOSFile@@SAIPAD@Z                    // 0x00714384    e817830a00
                         neg                eax                                           // 0x00714389    f7d8
                         sbb.s              eax, eax                                      // 0x0071438b    1bc0
                         inc                eax                                           // 0x0071438d    40
                         add                esp, 0x00000118                               // 0x0071438e    81c418010000
                         ret                0x0004                                        // 0x00714394    c20400
                         nop                                                              // 0x00714397    90
                         nop                                                              // 0x00714398    90
                         nop                                                              // 0x00714399    90
                         nop                                                              // 0x0071439a    90
                         nop                                                              // 0x0071439b    90
                         nop                                                              // 0x0071439c    90
                         nop                                                              // 0x0071439d    90
                         nop                                                              // 0x0071439e    90
                         nop                                                              // 0x0071439f    90
_jmp_addr_0x007143a0:    push               ebx                                           // 0x007143a0    53
                         push               ebp                                           // 0x007143a1    55
                         {disp32} mov       ebp, dword ptr [data_bytes + 0x3d3168]        // 0x007143a2    8b2d6891d900
                         test               ebp, ebp                                      // 0x007143a8    85ed
                         push               esi                                           // 0x007143aa    56
                         push               edi                                           // 0x007143ab    57
                         {disp8} je         _jmp_addr_0x0071440d                          // 0x007143ac    745f
                         {disp8} mov        edi, dword ptr [ebp + 0x04]                   // 0x007143ae    8b7d04
                         test               edi, edi                                      // 0x007143b1    85ff
                         {disp8} je         _jmp_addr_0x0071440d                          // 0x007143b3    7458
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x007143b5    8b442414
_jmp_addr_0x007143b9:    {disp8} mov        esi, dword ptr [edi + 0x0d]                   // 0x007143b9    8b770d
                         test               esi, esi                                      // 0x007143bc    85f6
                         {disp8} je         _jmp_addr_0x007143ef                          // 0x007143be    742f
                         mov.s              ecx, eax                                      // 0x007143c0    8bc8
_jmp_addr_0x007143c2:    mov                bl, byte ptr [ecx]                            // 0x007143c2    8a19
                         mov.s              dl, bl                                        // 0x007143c4    8ad3
                         cmp                bl, byte ptr [esi]                            // 0x007143c6    3a1e
                         {disp8} jne        _jmp_addr_0x007143e6                          // 0x007143c8    751c
                         test               dl, dl                                        // 0x007143ca    84d2
                         {disp8} je         _jmp_addr_0x007143e2                          // 0x007143cc    7414
                         {disp8} mov        bl, byte ptr [ecx + 0x01]                     // 0x007143ce    8a5901
                         mov.s              dl, bl                                        // 0x007143d1    8ad3
                         cmp                bl, byte ptr [esi + 0x01]                     // 0x007143d3    3a5e01
                         {disp8} jne        _jmp_addr_0x007143e6                          // 0x007143d6    750e
                         add                ecx, 0x2                                      // 0x007143d8    83c102
                         add                esi, 0x02                                     // 0x007143db    83c602
                         test               dl, dl                                        // 0x007143de    84d2
                         {disp8} jne        _jmp_addr_0x007143c2                          // 0x007143e0    75e0
_jmp_addr_0x007143e2:    xor.s              ecx, ecx                                      // 0x007143e2    33c9
                         {disp8} jmp        _jmp_addr_0x007143eb                          // 0x007143e4    eb05
_jmp_addr_0x007143e6:    sbb.s              ecx, ecx                                      // 0x007143e6    1bc9
                         sbb                ecx, -0x01                                    // 0x007143e8    83d9ff
_jmp_addr_0x007143eb:    test               ecx, ecx                                      // 0x007143eb    85c9
                         {disp8} je         _jmp_addr_0x00714414                          // 0x007143ed    7425
_jmp_addr_0x007143ef:    mov.s              ecx, ebp                                      // 0x007143ef    8bcd
                         test               ecx, ecx                                      // 0x007143f1    85c9
                         {disp8} je         _jmp_addr_0x0071440d                          // 0x007143f3    7418
_jmp_addr_0x007143f5:    cmp                dword ptr [ecx + 0x04], edi                   // 0x007143f5    397904
                         mov                ecx, dword ptr [ecx]                          // 0x007143f8    8b09
                         {disp8} je         _jmp_addr_0x00714402                          // 0x007143fa    7406
                         test               ecx, ecx                                      // 0x007143fc    85c9
                         {disp8} je         _jmp_addr_0x0071440d                          // 0x007143fe    740d
                         {disp8} jmp        _jmp_addr_0x007143f5                          // 0x00714400    ebf3
_jmp_addr_0x00714402:    test               ecx, ecx                                      // 0x00714402    85c9
                         {disp8} je         _jmp_addr_0x0071440d                          // 0x00714404    7407
                         {disp8} mov        edi, dword ptr [ecx + 0x04]                   // 0x00714406    8b7904
                         test               edi, edi                                      // 0x00714409    85ff
                         {disp8} jne        _jmp_addr_0x007143b9                          // 0x0071440b    75ac
_jmp_addr_0x0071440d:    pop                edi                                           // 0x0071440d    5f
                         pop                esi                                           // 0x0071440e    5e
                         pop                ebp                                           // 0x0071440f    5d
                         xor.s              eax, eax                                      // 0x00714410    33c0
                         pop                ebx                                           // 0x00714412    5b
                         ret                                                              // 0x00714413    c3
_jmp_addr_0x00714414:    mov.s              eax, edi                                      // 0x00714414    8bc7
                         pop                edi                                           // 0x00714416    5f
                         pop                esi                                           // 0x00714417    5e
                         pop                ebp                                           // 0x00714418    5d
                         pop                ebx                                           // 0x00714419    5b
                         ret                                                              // 0x0071441a    c3
                         nop                                                              // 0x0071441b    90
                         nop                                                              // 0x0071441c    90
                         nop                                                              // 0x0071441d    90
                         nop                                                              // 0x0071441e    90
                         nop                                                              // 0x0071441f    90
_jmp_addr_0x00714420:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00714420    8b442404
                         push               eax                                           // 0x00714424    50
                         call               _jmp_addr_0x007143a0                          // 0x00714425    e876ffffff
                         add                esp, 0x04                                     // 0x0071442a    83c404
                         test               eax, eax                                      // 0x0071442d    85c0
                         {disp8} jne        _jmp_addr_0x00714485                          // 0x0071442f    7554
                         push               esi                                           // 0x00714431    56
                         push               0x00000356                                    // 0x00714432    6856030000
                         push               0x00c20c58                                    // 0x00714437    68580cc200
                         push               0x11                                          // 0x0071443c    6a11
                         call               ___nw__FUl                                    // 0x0071443e    e84d730c00
                         add                esp, 0x0c                                     // 0x00714443    83c40c
                         test               eax, eax                                      // 0x00714446    85c0
                         {disp8} je         _jmp_addr_0x00714466                          // 0x00714448    741c
                         {disp8} mov        dword ptr [eax + 0x04], 0x00000000            // 0x0071444a    c7400400000000
                         mov                dword ptr [eax], 0x00000000                   // 0x00714451    c70000000000
                         {disp8} mov        byte ptr [eax + 0x08], 0x00                   // 0x00714457    c6400800
                         {disp8} mov        dword ptr [eax + 0x0d], 0x00000000            // 0x0071445b    c7400d00000000
                         mov.s              esi, eax                                      // 0x00714462    8bf0
                         {disp8} jmp        _jmp_addr_0x00714468                          // 0x00714464    eb02
_jmp_addr_0x00714466:    xor.s              esi, esi                                      // 0x00714466    33f6
_jmp_addr_0x00714468:    push               0x00000357                                    // 0x00714468    6857030000
                         push               0x00c20c58                                    // 0x0071446d    68580cc200
                         push               0x00000200                                    // 0x00714472    6800020000
                         call               ___nw__FUl                                    // 0x00714477    e814730c00
                         {disp8} mov        dword ptr [esi + 0x0d], eax                   // 0x0071447c    89460d
                         add                esp, 0x0c                                     // 0x0071447f    83c40c
                         mov.s              eax, esi                                      // 0x00714482    8bc6
                         pop                esi                                           // 0x00714484    5e
_jmp_addr_0x00714485:    ret                                                              // 0x00714485    c3
                         nop                                                              // 0x00714486    90
                         nop                                                              // 0x00714487    90
                         nop                                                              // 0x00714488    90
                         nop                                                              // 0x00714489    90
                         nop                                                              // 0x0071448a    90
                         nop                                                              // 0x0071448b    90
                         nop                                                              // 0x0071448c    90
                         nop                                                              // 0x0071448d    90
                         nop                                                              // 0x0071448e    90
                         nop                                                              // 0x0071448f    90
_jmp_addr_0x00714490:    sub                esp, 0x00000954                               // 0x00714490    81ec54090000
                         push               ebx                                           // 0x00714496    53
                         push               ebp                                           // 0x00714497    55
                         push               esi                                           // 0x00714498    56
                         push               edi                                           // 0x00714499    57
                         {disp32} lea       eax, dword ptr [esp + 0x00000258]             // 0x0071449a    8d842458020000
                         push               eax                                           // 0x007144a1    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00000158]             // 0x007144a2    8d8c2458010000
                         push               ecx                                           // 0x007144a9    51
                         {disp32} lea       edx, dword ptr [esp + 0x00000468]             // 0x007144aa    8d942468040000
                         push               edx                                           // 0x007144b1    52
                         {disp32} lea       eax, dword ptr [esp + 0x00000368]             // 0x007144b2    8d842468030000
                         push               eax                                           // 0x007144b9    50
                         push               0x00d99648 /* _CHAR_ARRAY_00d99648 */         // 0x007144ba    684896d900
                         call               __splitpath                                   // 0x007144bf    e8a4410b00
                         push               0x00c20d1c                                    // 0x007144c4    681c0dc200
                         call               __chdir                                       // 0x007144c9    e8d5181900
                         push               0x00c20d10                                    // 0x007144ce    68100dc200
                         call               __mkdir                                       // 0x007144d3    e82a5c0b00
                         push               0x00bea7b8                                    // 0x007144d8    68b8a7be00
                         call               __chdir                                       // 0x007144dd    e8c1181900
                         add                esp, 0x20                                     // 0x007144e2    83c420
                         {disp32} lea       ecx, dword ptr [esp + 0x00000154]             // 0x007144e5    8d8c2454010000
                         push               ecx                                           // 0x007144ec    51
                         {disp8} lea        edx, dword ptr [esp + 0x54]                   // 0x007144ed    8d542454
                         push               0x00c20cf0                                    // 0x007144f1    68f00cc200
                         push               edx                                           // 0x007144f6    52
                         call               _sprintf                                      // 0x007144f7    e8d6120b00
                         push               0x00c20ce4                                    // 0x007144fc    68e40cc200
                         call               __unlink                                      // 0x00714501    e823270b00
                         push               0x00c20ce4                                    // 0x00714506    68e40cc200
                         call               _jmp_addr_0x00801a70                          // 0x0071450b    e860d50e00
                         mov                ebp, 0x00000200                               // 0x00714510    bd00020000
                         add                esp, 0x14                                     // 0x00714515    83c414
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x00714518    c744241400000000
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x00714520    c744241000000000
                         mov.s              edi, ebp                                      // 0x00714528    8bfd
                         xor.s              edx, edx                                      // 0x0071452a    33d2
_jmp_addr_0x0071452c:    xor.s              ecx, ecx                                      // 0x0071452c    33c9
_jmp_addr_0x0071452e:    test               edx, edx                                      // 0x0071452e    85d2
                         {disp8} jl         _jmp_addr_0x007145aa                          // 0x00714530    7c78
                         cmp                edx, 0x000001ff                               // 0x00714532    81faff010000
                         {disp8} jg         _jmp_addr_0x007145aa                          // 0x00714538    7f70
                         test               ecx, ecx                                      // 0x0071453a    85c9
                         {disp8} jl         _jmp_addr_0x007145aa                          // 0x0071453c    7c6c
                         cmp                ecx, 0x000001ff                               // 0x0071453e    81f9ff010000
                         {disp8} jg         _jmp_addr_0x007145aa                          // 0x00714544    7f64
                         mov.s              eax, edx                                      // 0x00714546    8bc2
                         sar                eax, 4                                        // 0x00714548    c1f804
                         mov.s              esi, ecx                                      // 0x0071454b    8bf1
                         sar                esi, 4                                        // 0x0071454d    c1fe04
                         xor.s              ebx, ebx                                      // 0x00714550    33db
                         shl                eax, 5                                        // 0x00714552    c1e005
                         {disp32} mov       bl, byte ptr [eax + esi + ?g_index_block@LH3DIsland@@3PAY0CA@EA]   // 0x00714555    8a9c3064c9e900
                         mov.s              esi, ebx                                      // 0x0071455c    8bf3
                         test               esi, esi                                      // 0x0071455e    85f6
                         {disp8} je         _jmp_addr_0x007145aa                          // 0x00714560    7448
                         mov.s              eax, edx                                      // 0x00714562    8bc2
                         and                eax, 0x0f                                     // 0x00714564    83e00f
                         mov.s              ebx, eax                                      // 0x00714567    8bd8
                         shl                ebx, 4                                        // 0x00714569    c1e304
                         add.s              ebx, eax                                      // 0x0071456c    03d8
                         mov.s              eax, ecx                                      // 0x0071456e    8bc1
                         and                eax, 0x0f                                     // 0x00714570    83e00f
                         add.s              ebx, eax                                      // 0x00714573    03d8
                         {disp32} mov       eax, dword ptr [esi * 0x4 + ?g_ptr_blocks@LH3DIsland@@3PAPAULandBlock@@A]       // 0x00714575    8b04b564c5e900
                         lea                eax, dword ptr [eax + ebx * 0x8]              // 0x0071457c    8d04d8
                         test               eax, eax                                      // 0x0071457f    85c0
                         {disp8} je         _jmp_addr_0x007145aa                          // 0x00714581    7427
                         {disp8} mov        bl, byte ptr [eax + 0x04]                     // 0x00714583    8a5804
                         test               bl, bl                                        // 0x00714586    84db
                         {disp8} je         _jmp_addr_0x007145aa                          // 0x00714588    7420
                         cmp                edx, dword ptr [esp + 0x14]                   // 0x0071458a    3b542414
                         {disp8} jle        _jmp_addr_0x00714594                          // 0x0071458e    7e04
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x00714590    89542414
_jmp_addr_0x00714594:    cmp.s              edx, ebp                                      // 0x00714594    3bd5
                         {disp8} jge        _jmp_addr_0x0071459a                          // 0x00714596    7d02
                         mov.s              ebp, edx                                      // 0x00714598    8bea
_jmp_addr_0x0071459a:    cmp                ecx, dword ptr [esp + 0x10]                   // 0x0071459a    3b4c2410
                         {disp8} jle        _jmp_addr_0x007145a4                          // 0x0071459e    7e04
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x007145a0    894c2410
_jmp_addr_0x007145a4:    cmp.s              ecx, edi                                      // 0x007145a4    3bcf
                         {disp8} jge        _jmp_addr_0x007145aa                          // 0x007145a6    7d02
                         mov.s              edi, ecx                                      // 0x007145a8    8bf9
_jmp_addr_0x007145aa:    inc                ecx                                           // 0x007145aa    41
                         cmp                ecx, 0x00000200                               // 0x007145ab    81f900020000
                         {disp32} jl        _jmp_addr_0x0071452e                          // 0x007145b1    0f8c77ffffff
                         inc                edx                                           // 0x007145b7    42
                         cmp                edx, 0x00000200                               // 0x007145b8    81fa00020000
                         {disp32} jl        _jmp_addr_0x0071452c                          // 0x007145be    0f8c68ffffff
                         cmp.s              ebp, edi                                      // 0x007145c4    3bef
                         {disp8} mov        dword ptr [esp + 0x18], ebp                   // 0x007145c6    896c2418
                         {disp8} jl         _jmp_addr_0x007145d0                          // 0x007145ca    7c04
                         {disp8} mov        dword ptr [esp + 0x18], edi                   // 0x007145cc    897c2418
_jmp_addr_0x007145d0:    {disp8} mov        ebx, dword ptr [esp + 0x14]                   // 0x007145d0    8b5c2414
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x007145d4    8b442410
                         cmp.s              ebx, eax                                      // 0x007145d8    3bd8
                         {disp8} jg         _jmp_addr_0x007145de                          // 0x007145da    7f02
                         mov.s              ebx, eax                                      // 0x007145dc    8bd8
_jmp_addr_0x007145de:    test               bl, 0x01                                      // 0x007145de    f6c301
                         {disp8} je         _jmp_addr_0x007145e4                          // 0x007145e1    7401
                         inc                ebx                                           // 0x007145e3    43
_jmp_addr_0x007145e4:    test               byte ptr [esp + 0x18], 0x01                   // 0x007145e4    f644241801
                         {disp8} je         _jmp_addr_0x007145ef                          // 0x007145e9    7404
                         dec                dword ptr [esp + 0x18]                        // 0x007145eb    ff4c2418
_jmp_addr_0x007145ef:    push               0x00c20ce4                                    // 0x007145ef    68e40cc200
                         call               _jmp_addr_0x008207f0                          // 0x007145f4    e8f7c11000
                         push               0x0000038a                                    // 0x007145f9    688a030000
                         mov.s              esi, eax                                      // 0x007145fe    8bf0
                         push               0x00c20c58                                    // 0x00714600    68580cc200
                         push               0x00100004                                    // 0x00714605    6804001000
                         {disp8} mov        dword ptr [esp + 0x40], esi                   // 0x0071460a    89742440
                         call               ___nw__FUl                                    // 0x0071460e    e87d710c00
                         mov.s              edi, eax                                      // 0x00714613    8bf8
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x00714615    8b442428
                         add                esp, 0x10                                     // 0x00714619    83c410
                         cmp.s              eax, ebx                                      // 0x0071461c    3bc3
                         {disp8} mov        dword ptr [esp + 0x14], edi                   // 0x0071461e    897c2414
                         mov                ebp, 0x00000004                               // 0x00714622    bd04000000
                         {disp8} jge        _jmp_addr_0x007146a0                          // 0x00714627    7d77
                         mov.s              ecx, eax                                      // 0x00714629    8bc8
                         shl                ecx, 9                                        // 0x0071462b    c1e109
                         add.s              ecx, eax                                      // 0x0071462e    03c8
                         sub.s              ebx, eax                                      // 0x00714630    2bd8
                         {disp8} lea        ecx, dword ptr [esi + ecx * 0x4 + 0x13]       // 0x00714632    8d4c8e13
                         inc                ebx                                           // 0x00714636    43
                         mov.s              esi, ebx                                      // 0x00714637    8bf3
                         shr                esi, 1                                        // 0x00714639    d1ee
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x0071463b    894c2410
                         {disp8} mov        dword ptr [esp + 0x4c], esi                   // 0x0071463f    8974244c
                         {disp8} mov        dword ptr [esp + 0x2c], esi                   // 0x00714643    8974242c
                         {disp8} jmp        _jmp_addr_0x00714651                          // 0x00714647    eb08
_jmp_addr_0x00714649:    {disp8} mov        esi, dword ptr [esp + 0x4c]                   // 0x00714649    8b74244c
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x0071464d    8b7c2414
_jmp_addr_0x00714651:    {disp8} lea        edx, dword ptr [edi + 0x01]                   // 0x00714651    8d5701
                         mov.s              ebx, edi                                      // 0x00714654    8bdf
                         sub.s              ebx, edx                                      // 0x00714656    2bda
                         lea                eax, dword ptr [edx + ebp * 0x1]              // 0x00714658    8d042a
                         add                ebx, 0x02                                     // 0x0071465b    83c302
                         sub.s              edi, edx                                      // 0x0071465e    2bfa
                         lea                edx, dword ptr [esi + ebp * 0x1]              // 0x00714660    8d142e
                         lea                ebp, dword ptr [edx + esi * 0x2]              // 0x00714663    8d2c72
_jmp_addr_0x00714666:    {disp8} mov        dl, byte ptr [ecx + -0x01]                    // 0x00714666    8a51ff
                         mov                byte ptr [ebx + eax * 0x1], dl                // 0x00714669    881403
                         mov                dl, byte ptr [ecx]                            // 0x0071466c    8a11
                         mov                byte ptr [eax], dl                            // 0x0071466e    8810
                         {disp8} mov        dl, byte ptr [ecx + 0x01]                     // 0x00714670    8a5101
                         mov                byte ptr [edi + eax * 0x1], dl                // 0x00714673    881407
                         add                eax, 0x03                                     // 0x00714676    83c003
                         add                ecx, 0x8                                      // 0x00714679    83c108
                         dec                esi                                           // 0x0071467c    4e
                         {disp8} jne        _jmp_addr_0x00714666                          // 0x0071467d    75e7
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0071467f    8b4c2410
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x00714683    8b44242c
                         add                ecx, 0x00001000                               // 0x00714687    81c100100000
                         dec                eax                                           // 0x0071468d    48
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x0071468e    894c2410
                         {disp8} mov        dword ptr [esp + 0x2c], eax                   // 0x00714692    8944242c
                         {disp8} jne        _jmp_addr_0x00714649                          // 0x00714696    75b1
                         {disp8} mov        esi, dword ptr [esp + 0x30]                   // 0x00714698    8b742430
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x0071469c    8b7c2414
_jmp_addr_0x007146a0:    push               esi                                           // 0x007146a0    56
                         call               ??3@YAXPAX@Z                                  // 0x007146a1    e8f2a70900
                         xor.s              esi, esi                                      // 0x007146a6    33f6
                         add                ebp, -0x04                                    // 0x007146a8    83c5fc
                         mov                dword ptr [edi], ebp                          // 0x007146ab    892f
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x007146ad    8b0d5c19d000
                         add                esp, 0x04                                     // 0x007146b3    83c404
                         {disp8} mov        dword ptr [esp + 0x28], esi                   // 0x007146b6    89742428
                         {disp8} mov        dword ptr [esp + 0x24], esi                   // 0x007146ba    89742424
                         {disp8} mov        dword ptr [esp + 0x20], esi                   // 0x007146be    89742420
                         {disp8} mov        dword ptr [esp + 0x1c], esi                   // 0x007146c2    8974241c
                         call               _jmp_addr_0x00550a80                          // 0x007146c6    e8b5c3e3ff
                         xor.s              ebx, ebx                                      // 0x007146cb    33db
                         {disp8} mov        dword ptr [esp + 0x10], ebx                   // 0x007146cd    895c2410
                         {disp8} jmp        _jmp_addr_0x007146d5                          // 0x007146d1    eb02
_jmp_addr_0x007146d3:    xor.s              esi, esi                                      // 0x007146d3    33f6
_jmp_addr_0x007146d5:    {disp32} mov       ecx, dword ptr [_game]                        // 0x007146d5    8b0d5c19d000
                         push               ebx                                           // 0x007146db    53
                         call               ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z          // 0x007146dc    e8cfc2e3ff
                         cmp.s              eax, esi                                      // 0x007146e1    3bc6
                         {disp8} mov        dword ptr [esp + 0x30], eax                   // 0x007146e3    89442430
                         {disp32} je        _jmp_addr_0x0071486b                          // 0x007146e7    0f847e010000
                         {disp32} mov       eax, dword ptr [eax + 0x00000a48]             // 0x007146ed    8b80480a0000
                         cmp.s              eax, esi                                      // 0x007146f3    3bc6
                         {disp32} je        _jmp_addr_0x0071479d                          // 0x007146f5    0f84a2000000
                         add                eax, 0x14                                     // 0x007146fb    83c014
                         mov                ecx, dword ptr [eax]                          // 0x007146fe    8b08
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x00714700    8b5004
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00714703    8b4008
                         push               0x000003b7                                    // 0x00714706    68b7030000
                         {disp8} mov        dword ptr [esp + 0x40], edx                   // 0x0071470b    89542440
                         {disp8} mov        dword ptr [esp + 0x3c], ecx                   // 0x0071470f    894c243c
                         {disp8} mov        edi, dword ptr [esp + 0x3e]                   // 0x00714713    8b7c243e
                         {disp8} mov        dword ptr [esp + 0x44], eax                   // 0x00714717    89442444
                         {disp8} mov        ebp, dword ptr [esp + 0x42]                   // 0x0071471b    8b6c2442
                         push               0x00c20c58                                    // 0x0071471f    68580cc200
                         push               0x9                                           // 0x00714724    6a09
                         and                edi, 0x0000ffff                               // 0x00714726    81e7ffff0000
                         and                ebp, 0x0000ffff                               // 0x0071472c    81e5ffff0000
                         call               ___nw__FUl                                    // 0x00714732    e859700c00
                         add                esp, 0x0c                                     // 0x00714737    83c40c
                         cmp.s              eax, esi                                      // 0x0071473a    3bc6
                         {disp8} je         _jmp_addr_0x00714744                          // 0x0071473c    7406
                         {disp8} mov        byte ptr [eax + 0x08], -0x01                  // 0x0071473e    c64008ff
                         mov.s              esi, eax                                      // 0x00714742    8bf0
_jmp_addr_0x00714744:    {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x00714744    8b4c2418
                         mov.s              eax, ebp                                      // 0x00714748    8bc5
                         sub.s              eax, ecx                                      // 0x0071474a    2bc1
                         cdq                                                              // 0x0071474c    99
                         sub.s              eax, edx                                      // 0x0071474d    2bc2
                         sar                eax, 1                                        // 0x0071474f    d1f8
                         mov                dword ptr [esi], eax                          // 0x00714751    8906
                         mov.s              eax, edi                                      // 0x00714753    8bc7
                         sub.s              eax, ecx                                      // 0x00714755    2bc1
                         cdq                                                              // 0x00714757    99
                         sub.s              eax, edx                                      // 0x00714758    2bc2
                         sar                eax, 1                                        // 0x0071475a    d1f8
                         test               esi, esi                                      // 0x0071475c    85f6
                         {disp8} mov        byte ptr [esi + 0x08], bl                     // 0x0071475e    885e08
                         {disp8} mov        dword ptr [esi + 0x04], eax                   // 0x00714761    894604
                         {disp8} je         _jmp_addr_0x0071479d                          // 0x00714764    7437
                         push               0x8                                           // 0x00714766    6a08
                         call               ??2@YAPAXI@Z                                  // 0x00714768    e8811d0b00
                         add                esp, 0x04                                     // 0x0071476d    83c404
                         test               eax, eax                                      // 0x00714770    85c0
                         {disp8} je         _jmp_addr_0x0071479d                          // 0x00714772    7429
                         {disp8} mov        dword ptr [eax + 0x04], esi                   // 0x00714774    897004
                         mov                dword ptr [eax], 0x00000000                   // 0x00714777    c70000000000
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x0071477d    8b4c241c
                         test               ecx, ecx                                      // 0x00714781    85c9
                         {disp8} je         _jmp_addr_0x00714795                          // 0x00714783    7410
_jmp_addr_0x00714785:    mov.s              edx, ecx                                      // 0x00714785    8bd1
                         mov                ecx, dword ptr [ecx]                          // 0x00714787    8b09
                         test               ecx, ecx                                      // 0x00714789    85c9
                         {disp8} jne        _jmp_addr_0x00714785                          // 0x0071478b    75f8
                         test               edx, edx                                      // 0x0071478d    85d2
                         {disp8} je         _jmp_addr_0x00714795                          // 0x0071478f    7404
                         mov                dword ptr [edx], eax                          // 0x00714791    8902
                         {disp8} jmp        _jmp_addr_0x00714799                          // 0x00714793    eb04
_jmp_addr_0x00714795:    {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x00714795    8944241c
_jmp_addr_0x00714799:    {disp8} inc        dword ptr [esp + 0x20]                        // 0x00714799    ff442420
_jmp_addr_0x0071479d:    {disp8} mov        ecx, dword ptr [esp + 0x30]                   // 0x0071479d    8b4c2430
                         {disp32} mov       ebx, dword ptr [ecx + 0x00000a50]             // 0x007147a1    8b99500a0000
                         test               ebx, ebx                                      // 0x007147a7    85db
                         {disp32} je        _jmp_addr_0x00714867                          // 0x007147a9    0f84b8000000
_jmp_addr_0x007147af:    {disp8} lea        edx, dword ptr [ebx + 0x14]                   // 0x007147af    8d5314
                         mov                eax, dword ptr [edx]                          // 0x007147b2    8b02
                         {disp8} mov        ecx, dword ptr [edx + 0x04]                   // 0x007147b4    8b4a04
                         {disp8} mov        edx, dword ptr [edx + 0x08]                   // 0x007147b7    8b5208
                         push               0x000003c3                                    // 0x007147ba    68c3030000
                         {disp8} mov        dword ptr [esp + 0x40], ecx                   // 0x007147bf    894c2440
                         {disp8} mov        dword ptr [esp + 0x3c], eax                   // 0x007147c3    8944243c
                         {disp8} mov        edi, dword ptr [esp + 0x3e]                   // 0x007147c7    8b7c243e
                         {disp8} mov        dword ptr [esp + 0x44], edx                   // 0x007147cb    89542444
                         {disp8} mov        ebp, dword ptr [esp + 0x42]                   // 0x007147cf    8b6c2442
                         push               0x00c20c58                                    // 0x007147d3    68580cc200
                         push               0x9                                           // 0x007147d8    6a09
                         and                edi, 0x0000ffff                               // 0x007147da    81e7ffff0000
                         and                ebp, 0x0000ffff                               // 0x007147e0    81e5ffff0000
                         call               ___nw__FUl                                    // 0x007147e6    e8a56f0c00
                         add                esp, 0x0c                                     // 0x007147eb    83c40c
                         test               eax, eax                                      // 0x007147ee    85c0
                         {disp8} je         _jmp_addr_0x007147fa                          // 0x007147f0    7408
                         {disp8} mov        byte ptr [eax + 0x08], -0x01                  // 0x007147f2    c64008ff
                         mov.s              esi, eax                                      // 0x007147f6    8bf0
                         {disp8} jmp        _jmp_addr_0x007147fc                          // 0x007147f8    eb02
_jmp_addr_0x007147fa:    xor.s              esi, esi                                      // 0x007147fa    33f6
_jmp_addr_0x007147fc:    {disp8} mov        al, byte ptr [esp + 0x10]                     // 0x007147fc    8a442410
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x00714800    8b4c2418
                         {disp8} mov        byte ptr [esi + 0x08], al                     // 0x00714804    884608
                         mov.s              eax, ebp                                      // 0x00714807    8bc5
                         sub.s              eax, ecx                                      // 0x00714809    2bc1
                         cdq                                                              // 0x0071480b    99
                         sub.s              eax, edx                                      // 0x0071480c    2bc2
                         sar                eax, 1                                        // 0x0071480e    d1f8
                         mov                dword ptr [esi], eax                          // 0x00714810    8906
                         mov.s              eax, edi                                      // 0x00714812    8bc7
                         sub.s              eax, ecx                                      // 0x00714814    2bc1
                         cdq                                                              // 0x00714816    99
                         sub.s              eax, edx                                      // 0x00714817    2bc2
                         sar                eax, 1                                        // 0x00714819    d1f8
                         test               esi, esi                                      // 0x0071481b    85f6
                         {disp8} mov        dword ptr [esi + 0x04], eax                   // 0x0071481d    894604
                         {disp8} je         _jmp_addr_0x00714859                          // 0x00714820    7437
                         push               0x8                                           // 0x00714822    6a08
                         call               ??2@YAPAXI@Z                                  // 0x00714824    e8c51c0b00
                         add                esp, 0x04                                     // 0x00714829    83c404
                         test               eax, eax                                      // 0x0071482c    85c0
                         {disp8} je         _jmp_addr_0x00714859                          // 0x0071482e    7429
                         {disp8} mov        dword ptr [eax + 0x04], esi                   // 0x00714830    897004
                         mov                dword ptr [eax], 0x00000000                   // 0x00714833    c70000000000
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x00714839    8b4c2424
                         test               ecx, ecx                                      // 0x0071483d    85c9
                         {disp8} je         _jmp_addr_0x00714851                          // 0x0071483f    7410
_jmp_addr_0x00714841:    mov.s              edx, ecx                                      // 0x00714841    8bd1
                         mov                ecx, dword ptr [ecx]                          // 0x00714843    8b09
                         test               ecx, ecx                                      // 0x00714845    85c9
                         {disp8} jne        _jmp_addr_0x00714841                          // 0x00714847    75f8
                         test               edx, edx                                      // 0x00714849    85d2
                         {disp8} je         _jmp_addr_0x00714851                          // 0x0071484b    7404
                         mov                dword ptr [edx], eax                          // 0x0071484d    8902
                         {disp8} jmp        _jmp_addr_0x00714855                          // 0x0071484f    eb04
_jmp_addr_0x00714851:    {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x00714851    89442424
_jmp_addr_0x00714855:    {disp8} inc        dword ptr [esp + 0x28]                        // 0x00714855    ff442428
_jmp_addr_0x00714859:    {disp32} mov       ebx, dword ptr [ebx + 0x0000075c]             // 0x00714859    8b9b5c070000
                         test               ebx, ebx                                      // 0x0071485f    85db
                         {disp32} jne       _jmp_addr_0x007147af                          // 0x00714861    0f8548ffffff
_jmp_addr_0x00714867:    {disp8} mov        ebx, dword ptr [esp + 0x10]                   // 0x00714867    8b5c2410
_jmp_addr_0x0071486b:    inc                ebx                                           // 0x0071486b    43
                         cmp                ebx, 0x08                                     // 0x0071486c    83fb08
                         {disp8} mov        dword ptr [esp + 0x10], ebx                   // 0x0071486f    895c2410
                         {disp32} jl        _jmp_addr_0x007146d3                          // 0x00714873    0f8c5afeffff
                         xor.s              eax, eax                                      // 0x00714879    33c0
                         mov                ecx, 0x00000100                               // 0x0071487b    b900010000
                         {disp32} lea       edi, dword ptr [esp + 0x00000564]             // 0x00714880    8dbc2464050000
                         rep stosd                                                        // 0x00714887    f3ab
                         {disp32} mov       edi, dword ptr [esp + 0x00000968]             // 0x00714889    8bbc2468090000
                         or                 ecx, 0xffffffff                               // 0x00714890    83c9ff
                         repne scasb                                                      // 0x00714893    f2ae
                         not                ecx                                           // 0x00714895    f7d1
                         sub.s              edi, ecx                                      // 0x00714897    2bf9
                         mov.s              eax, ecx                                      // 0x00714899    8bc1
                         shr                ecx, 2                                        // 0x0071489b    c1e902
                         {disp32} lea       edx, dword ptr [esp + 0x00000564]             // 0x0071489e    8d942464050000
                         mov.s              esi, edi                                      // 0x007148a5    8bf7
                         mov.s              edi, edx                                      // 0x007148a7    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x007148a9    f3a5
                         mov.s              ecx, eax                                      // 0x007148ab    8bc8
                         and                ecx, 0x03                                     // 0x007148ad    83e103
                         rep movsb                                                        // 0x007148b0    f3a4
                         {disp8} lea        ecx, dword ptr [esp + 0x34]                   // 0x007148b2    8d4c2434
                         push               ecx                                           // 0x007148b6    51
                         {disp8} lea        edx, dword ptr [esp + 0x28]                   // 0x007148b7    8d542428
                         push               edx                                           // 0x007148bb    52
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x007148bc    8b54241c
                         {disp8} lea        eax, dword ptr [esp + 0x24]                   // 0x007148c0    8d442424
                         push               eax                                           // 0x007148c4    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00000570]             // 0x007148c5    8d8c2470050000
                         push               ecx                                           // 0x007148cc    51
                         push               edx                                           // 0x007148cd    52
                         call               _jmp_addr_0x00712d00                          // 0x007148ce    e82de4ffff
                         mov.s              esi, eax                                      // 0x007148d3    8bf0
                         {disp8} lea        eax, dword ptr [esp + 0x64]                   // 0x007148d5    8d442464
                         push               eax                                           // 0x007148d9    50
                         {disp8} mov        dword ptr [esp + 0x48], esi                   // 0x007148da    89742448
                         call               __unlink                                      // 0x007148de    e846230b00
                         {disp8} mov        ecx, dword ptr [esp + 0x4c]                   // 0x007148e3    8b4c244c
                         mov.s              eax, ecx                                      // 0x007148e7    8bc1
                         cdq                                                              // 0x007148e9    99
                         and                edx, 0x03                                     // 0x007148ea    83e203
                         add.s              eax, edx                                      // 0x007148ed    03c2
                         push               0x000003d7                                    // 0x007148ef    68d7030000
                         sar                eax, 2                                        // 0x007148f4    c1f802
                         add.s              eax, ecx                                      // 0x007148f7    03c1
                         push               0x00c20c58                                    // 0x007148f9    68580cc200
                         push               eax                                           // 0x007148fe    50
                         call               ___nw__FUl                                    // 0x007148ff    e88c6e0c00
                         {disp8} mov        ebp, dword ptr [esp + 0x58]                   // 0x00714904    8b6c2458
                         or                 ecx, 0xffffffff                               // 0x00714908    83c9ff
                         mov.s              ebx, eax                                      // 0x0071490b    8bd8
                         xor.s              eax, eax                                      // 0x0071490d    33c0
                         mov                edi, 0x0095728c                               // 0x0071490f    bf8c729500
                         repne scasb                                                      // 0x00714914    f2ae
                         not                ecx                                           // 0x00714916    f7d1
                         dec                ecx                                           // 0x00714918    49
                         push               0x000003d9                                    // 0x00714919    68d9030000
                         add.s              ecx, ebp                                      // 0x0071491e    03cd
                         push               0x00c20c58                                    // 0x00714920    68580cc200
                         push               ecx                                           // 0x00714925    51
                         {disp8} mov        dword ptr [esp + 0x5c], ebx                   // 0x00714926    895c245c
                         {disp8} mov        dword ptr [esp + 0x74], ecx                   // 0x0071492a    894c2474
                         call               ___nw__FUl                                    // 0x0071492e    e85d6e0c00
                         or                 ecx, 0xffffffff                               // 0x00714933    83c9ff
                         mov.s              ebp, eax                                      // 0x00714936    8be8
                         xor.s              eax, eax                                      // 0x00714938    33c0
                         mov                edi, 0x0095728c                               // 0x0071493a    bf8c729500
                         repne scasb                                                      // 0x0071493f    f2ae
                         not                ecx                                           // 0x00714941    f7d1
                         dec                ecx                                           // 0x00714943    49
                         mov.s              edi, ecx                                      // 0x00714944    8bf9
                         {disp8} mov        ecx, dword ptr [esp + 0x64]                   // 0x00714946    8b4c2464
                         mov.s              edx, ecx                                      // 0x0071494a    8bd1
                         shr                ecx, 2                                        // 0x0071494c    c1e902
                         add.s              edi, ebp                                      // 0x0071494f    03fd
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00714951    f3a5
                         mov.s              ecx, edx                                      // 0x00714953    8bca
                         and                ecx, 0x03                                     // 0x00714955    83e103
                         rep movsb                                                        // 0x00714958    f3a4
                         or                 ecx, 0xffffffff                               // 0x0071495a    83c9ff
                         mov                edi, 0x0095728c                               // 0x0071495d    bf8c729500
                         repne scasb                                                      // 0x00714962    f2ae
                         not                ecx                                           // 0x00714964    f7d1
                         dec                ecx                                           // 0x00714966    49
                         mov.s              eax, ecx                                      // 0x00714967    8bc1
                         shr                ecx, 2                                        // 0x00714969    c1e902
                         mov                esi, 0x0095728c                               // 0x0071496c    be8c729500
                         mov.s              edi, ebp                                      // 0x00714971    8bfd
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00714973    f3a5
                         mov.s              ecx, eax                                      // 0x00714975    8bc8
                         and                ecx, 0x03                                     // 0x00714977    83e103
                         rep movsb                                                        // 0x0071497a    f3a4
                         {disp8} mov        ecx, dword ptr [esp + 0x74]                   // 0x0071497c    8b4c2474
                         push               ecx                                           // 0x00714980    51
                         push               ebp                                           // 0x00714981    55
                         {disp32} lea       edx, dword ptr [esp + 0x00000080]             // 0x00714982    8d942480000000
                         push               edx                                           // 0x00714989    52
                         push               ebx                                           // 0x0071498a    53
                         call               _jmp_addr_0x007be340                          // 0x0071498b    e8b0990a00
                         add                esp, 0x40                                     // 0x00714990    83c440
                         {disp8} lea        eax, dword ptr [esp + 0x50]                   // 0x00714993    8d442450
                         push               0x00c20c98                                    // 0x00714997    68980cc200
                         push               eax                                           // 0x0071499c    50
                         call               _fopen                                        // 0x0071499d    e87b240b00
                         mov.s              esi, eax                                      // 0x007149a2    8bf0
                         push               esi                                           // 0x007149a4    56
                         push               0x4                                           // 0x007149a5    6a04
                         {disp8} lea        ecx, dword ptr [esp + 0x54]                   // 0x007149a7    8d4c2454
                         push               0x1                                           // 0x007149ab    6a01
                         push               ecx                                           // 0x007149ad    51
                         call               _fwrite                                       // 0x007149ae    e8ef2b0b00
                         {disp8} mov        edx, dword ptr [esp + 0x60]                   // 0x007149b3    8b542460
                         push               esi                                           // 0x007149b7    56
                         push               edx                                           // 0x007149b8    52
                         push               0x1                                           // 0x007149b9    6a01
                         push               ebx                                           // 0x007149bb    53
                         call               _fwrite                                       // 0x007149bc    e8e12b0b00
                         push               esi                                           // 0x007149c1    56
                         call               _fclose                                       // 0x007149c2    e869240b00
                         {disp8} mov        ecx, dword ptr [esp + 0x50]                   // 0x007149c7    8b4c2450
                         add                esp, 0x2c                                     // 0x007149cb    83c42c
                         test               ecx, ecx                                      // 0x007149ce    85c9
                         {disp8} je         _jmp_addr_0x00714a25                          // 0x007149d0    7453
_jmp_addr_0x007149d2:    {disp8} mov        ebx, dword ptr [ecx + 0x04]                   // 0x007149d2    8b5904
                         xor.s              edi, edi                                      // 0x007149d5    33ff
                         test               ecx, ecx                                      // 0x007149d7    85c9
                         mov.s              eax, ecx                                      // 0x007149d9    8bc1
                         {disp8} je         _jmp_addr_0x00714a10                          // 0x007149db    7433
_jmp_addr_0x007149dd:    cmp                dword ptr [eax + 0x04], ebx                   // 0x007149dd    395804
                         mov                esi, dword ptr [eax]                          // 0x007149e0    8b30
                         {disp8} jne        _jmp_addr_0x00714a08                          // 0x007149e2    7524
                         cmp.s              eax, ecx                                      // 0x007149e4    3bc1
                         {disp8} jne        _jmp_addr_0x007149ee                          // 0x007149e6    7506
                         {disp8} mov        dword ptr [esp + 0x24], esi                   // 0x007149e8    89742424
                         {disp8} jmp        _jmp_addr_0x007149f0                          // 0x007149ec    eb02
_jmp_addr_0x007149ee:    mov                dword ptr [edi], esi                          // 0x007149ee    8937
_jmp_addr_0x007149f0:    {disp8} mov        edx, dword ptr [esp + 0x28]                   // 0x007149f0    8b542428
                         dec                edx                                           // 0x007149f4    4a
                         push               eax                                           // 0x007149f5    50
                         {disp8} mov        dword ptr [esp + 0x2c], edx                   // 0x007149f6    8954242c
                         call               ??3@YAXPAX@Z                                  // 0x007149fa    e899a40900
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                   // 0x007149ff    8b4c2428
                         add                esp, 0x04                                     // 0x00714a03    83c404
                         {disp8} jmp        _jmp_addr_0x00714a0a                          // 0x00714a06    eb02
_jmp_addr_0x00714a08:    mov.s              edi, eax                                      // 0x00714a08    8bf8
_jmp_addr_0x00714a0a:    test               esi, esi                                      // 0x00714a0a    85f6
                         mov.s              eax, esi                                      // 0x00714a0c    8bc6
                         {disp8} jne        _jmp_addr_0x007149dd                          // 0x00714a0e    75cd
_jmp_addr_0x00714a10:    push               ebx                                           // 0x00714a10    53
                         call               ??3@YAXPAX@Z                                  // 0x00714a11    e882a40900
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                   // 0x00714a16    8b4c2428
                         add                esp, 0x04                                     // 0x00714a1a    83c404
                         test               ecx, ecx                                      // 0x00714a1d    85c9
                         {disp8} jne        _jmp_addr_0x007149d2                          // 0x00714a1f    75b1
                         {disp8} mov        ebx, dword ptr [esp + 0x2c]                   // 0x00714a21    8b5c242c
_jmp_addr_0x00714a25:    {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x00714a25    8b4c241c
                         test               ecx, ecx                                      // 0x00714a29    85c9
                         {disp8} je         _jmp_addr_0x00714a80                          // 0x00714a2b    7453
_jmp_addr_0x00714a2d:    {disp8} mov        ebx, dword ptr [ecx + 0x04]                   // 0x00714a2d    8b5904
                         xor.s              edi, edi                                      // 0x00714a30    33ff
                         test               ecx, ecx                                      // 0x00714a32    85c9
                         mov.s              eax, ecx                                      // 0x00714a34    8bc1
                         {disp8} je         _jmp_addr_0x00714a6b                          // 0x00714a36    7433
_jmp_addr_0x00714a38:    cmp                dword ptr [eax + 0x04], ebx                   // 0x00714a38    395804
                         mov                esi, dword ptr [eax]                          // 0x00714a3b    8b30
                         {disp8} jne        _jmp_addr_0x00714a63                          // 0x00714a3d    7524
                         cmp.s              eax, ecx                                      // 0x00714a3f    3bc1
                         {disp8} jne        _jmp_addr_0x00714a49                          // 0x00714a41    7506
                         {disp8} mov        dword ptr [esp + 0x1c], esi                   // 0x00714a43    8974241c
                         {disp8} jmp        _jmp_addr_0x00714a4b                          // 0x00714a47    eb02
_jmp_addr_0x00714a49:    mov                dword ptr [edi], esi                          // 0x00714a49    8937
_jmp_addr_0x00714a4b:    {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x00714a4b    8b542420
                         dec                edx                                           // 0x00714a4f    4a
                         push               eax                                           // 0x00714a50    50
                         {disp8} mov        dword ptr [esp + 0x24], edx                   // 0x00714a51    89542424
                         call               ??3@YAXPAX@Z                                  // 0x00714a55    e83ea40900
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x00714a5a    8b4c2420
                         add                esp, 0x04                                     // 0x00714a5e    83c404
                         {disp8} jmp        _jmp_addr_0x00714a65                          // 0x00714a61    eb02
_jmp_addr_0x00714a63:    mov.s              edi, eax                                      // 0x00714a63    8bf8
_jmp_addr_0x00714a65:    test               esi, esi                                      // 0x00714a65    85f6
                         mov.s              eax, esi                                      // 0x00714a67    8bc6
                         {disp8} jne        _jmp_addr_0x00714a38                          // 0x00714a69    75cd
_jmp_addr_0x00714a6b:    push               ebx                                           // 0x00714a6b    53
                         call               ??3@YAXPAX@Z                                  // 0x00714a6c    e827a40900
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x00714a71    8b4c2420
                         add                esp, 0x04                                     // 0x00714a75    83c404
                         test               ecx, ecx                                      // 0x00714a78    85c9
                         {disp8} jne        _jmp_addr_0x00714a2d                          // 0x00714a7a    75b1
                         {disp8} mov        ebx, dword ptr [esp + 0x2c]                   // 0x00714a7c    8b5c242c
_jmp_addr_0x00714a80:    push               ebp                                           // 0x00714a80    55
                         call               ??3@YAXPAX@Z                                  // 0x00714a81    e812a40900
                         push               ebx                                           // 0x00714a86    53
                         call               ??3@YAXPAX@Z                                  // 0x00714a87    e80ca40900
                         {disp8} mov        esi, dword ptr [esp + 0x38]                   // 0x00714a8c    8b742438
                         add                esp, 0x08                                     // 0x00714a90    83c408
                         test               esi, esi                                      // 0x00714a93    85f6
                         {disp8} je         _jmp_addr_0x00714aa7                          // 0x00714a95    7410
                         mov.s              ecx, esi                                      // 0x00714a97    8bce
                         call               _jmp_addr_0x00712b10                          // 0x00714a99    e872e0ffff
                         push               esi                                           // 0x00714a9e    56
                         call               ??3@YAXPAX@Z                                  // 0x00714a9f    e8f4a30900
                         add                esp, 0x04                                     // 0x00714aa4    83c404
_jmp_addr_0x00714aa7:    {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00714aa7    8b442414
                         push               eax                                           // 0x00714aab    50
                         call               ??3@YAXPAX@Z                                  // 0x00714aac    e8e7a30900
                         add                esp, 0x04                                     // 0x00714ab1    83c404
                         pop                edi                                           // 0x00714ab4    5f
                         pop                esi                                           // 0x00714ab5    5e
                         pop                ebp                                           // 0x00714ab6    5d
                         pop                ebx                                           // 0x00714ab7    5b
                         add                esp, 0x00000954                               // 0x00714ab8    81c454090000
                         ret                                                              // 0x00714abe    c3
                         nop                                                              // 0x00714abf    90
_globl_ct_0x00714ac0:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x00714ac0    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x00714ac6    b001
                         test               al, cl                                        // 0x00714ac8    84c8
                         {disp8} jne        _jmp_addr_0x00714ad4                          // 0x00714aca    7508
                         or.s               cl, al                                        // 0x00714acc    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x00714ace    880d34c9fa00
_jmp_addr_0x00714ad4:    {disp32} jmp       _jmp_addr_0x00714ae0                          // 0x00714ad4    e907000000
                         nop                                                              // 0x00714ad9    90
                         nop                                                              // 0x00714ada    90
                         nop                                                              // 0x00714adb    90
                         nop                                                              // 0x00714adc    90
                         nop                                                              // 0x00714add    90
                         nop                                                              // 0x00714ade    90
                         nop                                                              // 0x00714adf    90
_jmp_addr_0x00714ae0:    push               0x00407870                                    // 0x00714ae0    6870784000
                         call               _atexit                                       // 0x00714ae5    e8a70c0b00
                         pop                ecx                                           // 0x00714aea    59
                         ret                                                              // 0x00714aeb    c3
                         nop                                                              // 0x00714aec    90
                         nop                                                              // 0x00714aed    90
                         nop                                                              // 0x00714aee    90
                         nop                                                              // 0x00714aef    90
@ParseConfigFile__8SettingsFPc@12:    mov                eax, 0x00001008                               // 0x00714af0    b808100000
                         call               __chkstk                                      // 0x00714af5    e8b6230b00
                         {disp32} mov       eax, dword ptr [esp + 0x0000100c]             // 0x00714afa    8b84240c100000
                         test               eax, eax                                      // 0x00714b01    85c0
                         push               ebp                                           // 0x00714b03    55
                         push               edi                                           // 0x00714b04    57
                         mov.s              ebp, ecx                                      // 0x00714b05    8be9
                         {disp8} je         _jmp_addr_0x00714b11                          // 0x00714b07    7408
                         push               0x00be95c8                                    // 0x00714b09    68c895be00
                         push               eax                                           // 0x00714b0e    50
                         {disp8} jmp        _jmp_addr_0x00714b28                          // 0x00714b0f    eb17
_jmp_addr_0x00714b11:    {disp32} mov       al, byte ptr [_ARGS_SETTINGS_PATH]            // 0x00714b11    a07c92d900
                         test               al, al                                        // 0x00714b16    84c0
                         {disp32} je        _jmp_addr_0x00714c08                          // 0x00714b18    0f84ea000000
                         push               0x00be95c8                                    // 0x00714b1e    68c895be00
                         push               0x00d9927c /* _ARGS_SETTINGS_PATH */          // 0x00714b23    687c92d900
_jmp_addr_0x00714b28:    call               _fopen                                        // 0x00714b28    e8f0220b00
                         mov.s              edi, eax                                      // 0x00714b2d    8bf8
                         add                esp, 0x08                                     // 0x00714b2f    83c408
                         test               edi, edi                                      // 0x00714b32    85ff
                         {disp32} je        _jmp_addr_0x00714c08                          // 0x00714b34    0f84ce000000
                         push               edi                                           // 0x00714b3a    57
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x00714b3b    8d442414
                         push               0x00001000                                    // 0x00714b3f    6800100000
                         push               eax                                           // 0x00714b44    50
                         call               _fgets                                        // 0x00714b45    e8bc3a0b00
                         add                esp, 0x0c                                     // 0x00714b4a    83c40c
                         test               eax, eax                                      // 0x00714b4d    85c0
                         {disp32} je        _jmp_addr_0x00714bf4                          // 0x00714b4f    0f849f000000
                         push               esi                                           // 0x00714b55    56
_jmp_addr_0x00714b56:    {disp32} mov       ecx, dword ptr [data_bytes + 0x25ad34]        // 0x00714b56    8b0d340dc200
                         {disp32} mov       dl, byte ptr [data_bytes + 0x25ad38]          // 0x00714b5c    8a15380dc200
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x00714b62    8d44240c
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                   // 0x00714b66    894c240c
                         push               eax                                           // 0x00714b6a    50
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x00714b6b    8d4c2418
                         push               ecx                                           // 0x00714b6f    51
                         {disp8} mov        byte ptr [esp + 0x18], dl                     // 0x00714b70    88542418
                         call               _strtok                                       // 0x00714b74    e8b1480b00
                         add                esp, 0x08                                     // 0x00714b79    83c408
                         test               eax, eax                                      // 0x00714b7c    85c0
                         {disp8} je         _jmp_addr_0x00714bd8                          // 0x00714b7e    7458
                         cmp                byte ptr [eax], 0x2f                          // 0x00714b80    80382f
                         {disp8} je         _jmp_addr_0x00714bd8                          // 0x00714b83    7453
                         cmp                byte ptr [eax + 0x01], 0x2f                   // 0x00714b85    8078012f
                         {disp8} je         _jmp_addr_0x00714bd8                          // 0x00714b89    744d
                         mov                esi, 0x00c20d28                               // 0x00714b8b    be280dc200
_jmp_addr_0x00714b90:    mov                dl, byte ptr [eax]                            // 0x00714b90    8a10
                         mov.s              cl, dl                                        // 0x00714b92    8aca
                         cmp                dl, byte ptr [esi]                            // 0x00714b94    3a16
                         {disp8} jne        _jmp_addr_0x00714bb4                          // 0x00714b96    751c
                         test               cl, cl                                        // 0x00714b98    84c9
                         {disp8} je         _jmp_addr_0x00714bb0                          // 0x00714b9a    7414
                         {disp8} mov        dl, byte ptr [eax + 0x01]                     // 0x00714b9c    8a5001
                         mov.s              cl, dl                                        // 0x00714b9f    8aca
                         cmp                dl, byte ptr [esi + 0x01]                     // 0x00714ba1    3a5601
                         {disp8} jne        _jmp_addr_0x00714bb4                          // 0x00714ba4    750e
                         add                eax, 0x02                                     // 0x00714ba6    83c002
                         add                esi, 0x02                                     // 0x00714ba9    83c602
                         test               cl, cl                                        // 0x00714bac    84c9
                         {disp8} jne        _jmp_addr_0x00714b90                          // 0x00714bae    75e0
_jmp_addr_0x00714bb0:    xor.s              eax, eax                                      // 0x00714bb0    33c0
                         {disp8} jmp        _jmp_addr_0x00714bb9                          // 0x00714bb2    eb05
_jmp_addr_0x00714bb4:    sbb.s              eax, eax                                      // 0x00714bb4    1bc0
                         sbb                eax, -0x01                                    // 0x00714bb6    83d8ff
_jmp_addr_0x00714bb9:    test               eax, eax                                      // 0x00714bb9    85c0
                         {disp8} jne        _jmp_addr_0x00714bd8                          // 0x00714bbb    751b
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x00714bbd    8d44240c
                         push               eax                                           // 0x00714bc1    50
                         push               0x0                                           // 0x00714bc2    6a00
                         call               _strtok                                       // 0x00714bc4    e861480b00
                         add                esp, 0x08                                     // 0x00714bc9    83c408
                         test               eax, eax                                      // 0x00714bcc    85c0
                         {disp8} je         _jmp_addr_0x00714bd8                          // 0x00714bce    7408
                         push               eax                                           // 0x00714bd0    50
                         mov.s              ecx, ebp                                      // 0x00714bd1    8bcd
                         call               _jmp_addr_0x00714c30                          // 0x00714bd3    e858000000
_jmp_addr_0x00714bd8:    push               edi                                           // 0x00714bd8    57
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x00714bd9    8d4c2418
                         push               0x00001000                                    // 0x00714bdd    6800100000
                         push               ecx                                           // 0x00714be2    51
                         call               _fgets                                        // 0x00714be3    e81e3a0b00
                         add                esp, 0x0c                                     // 0x00714be8    83c40c
                         test               eax, eax                                      // 0x00714beb    85c0
                         {disp32} jne       _jmp_addr_0x00714b56                          // 0x00714bed    0f8563ffffff
                         pop                esi                                           // 0x00714bf3    5e
_jmp_addr_0x00714bf4:    push               edi                                           // 0x00714bf4    57
                         call               _fclose                                       // 0x00714bf5    e836220b00
                         add                esp, 0x04                                     // 0x00714bfa    83c404
                         pop                edi                                           // 0x00714bfd    5f
                         pop                ebp                                           // 0x00714bfe    5d
                         add                esp, 0x00001008                               // 0x00714bff    81c408100000
                         ret                0x0004                                        // 0x00714c05    c20400
_jmp_addr_0x00714c08:    mov.s              ecx, ebp                                      // 0x00714c08    8bcd
                         call               ?InitialiseToDefaults@Settings@@QAEXXZ        // 0x00714c0a    e811000000
                         pop                edi                                           // 0x00714c0f    5f
                         pop                ebp                                           // 0x00714c10    5d
                         add                esp, 0x00001008                               // 0x00714c11    81c408100000
                         ret                0x0004                                        // 0x00714c17    c20400
                         nop                                                              // 0x00714c1a    90
                         nop                                                              // 0x00714c1b    90
                         nop                                                              // 0x00714c1c    90
                         nop                                                              // 0x00714c1d    90
                         nop                                                              // 0x00714c1e    90
                         nop                                                              // 0x00714c1f    90
?InitialiseToDefaults@Settings@@QAEXXZ:
                                         push               0x00c20d3c                                    // 0x00714c20    683c0dc200
                         call               _jmp_addr_0x00714c30                          // 0x00714c25    e806000000
                         ret                                                              // 0x00714c2a    c3
                         nop                                                              // 0x00714c2b    90
                         nop                                                              // 0x00714c2c    90
                         nop                                                              // 0x00714c2d    90
                         nop                                                              // 0x00714c2e    90
                         nop                                                              // 0x00714c2f    90
_jmp_addr_0x00714c30:    mov.s              edx, ecx                                      // 0x00714c30    8bd1
                         push               esi                                           // 0x00714c32    56
                         push               edi                                           // 0x00714c33    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x00714c34    8b7c240c
                         or                 ecx, 0xffffffff                               // 0x00714c38    83c9ff
                         xor.s              eax, eax                                      // 0x00714c3b    33c0
                         repne scasb                                                      // 0x00714c3d    f2ae
                         not                ecx                                           // 0x00714c3f    f7d1
                         sub.s              edi, ecx                                      // 0x00714c41    2bf9
                         mov.s              eax, ecx                                      // 0x00714c43    8bc1
                         mov.s              esi, edi                                      // 0x00714c45    8bf7
                         shr                ecx, 2                                        // 0x00714c47    c1e902
                         mov.s              edi, edx                                      // 0x00714c4a    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00714c4c    f3a5
                         mov.s              ecx, eax                                      // 0x00714c4e    8bc8
                         and                ecx, 0x03                                     // 0x00714c50    83e103
                         rep movsb                                                        // 0x00714c53    f3a4
                         pop                edi                                           // 0x00714c55    5f
                         pop                esi                                           // 0x00714c56    5e
                         ret                0x0004                                        // 0x00714c57    c20400
                         nop                                                              // 0x00714c5a    90
                         nop                                                              // 0x00714c5b    90
                         nop                                                              // 0x00714c5c    90
                         nop                                                              // 0x00714c5d    90
                         nop                                                              // 0x00714c5e    90
                         nop                                                              // 0x00714c5f    90
_globl_ct_0x00714c60:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x00714c60    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x00714c66    b001
                         test               al, cl                                        // 0x00714c68    84c8
                         {disp8} jne        _jmp_addr_0x00714c74                          // 0x00714c6a    7508
                         or.s               cl, al                                        // 0x00714c6c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x00714c6e    880d34c9fa00
_jmp_addr_0x00714c74:    {disp32} jmp       _jmp_addr_0x00714c80                          // 0x00714c74    e907000000
                         nop                                                              // 0x00714c79    90
                         nop                                                              // 0x00714c7a    90
                         nop                                                              // 0x00714c7b    90
                         nop                                                              // 0x00714c7c    90
                         nop                                                              // 0x00714c7d    90
                         nop                                                              // 0x00714c7e    90
                         nop                                                              // 0x00714c7f    90
_jmp_addr_0x00714c80:    push               0x00407870                                    // 0x00714c80    6870784000
                         call               _atexit                                       // 0x00714c85    e8070b0b00
                         pop                ecx                                           // 0x00714c8a    59
                         ret                                                              // 0x00714c8b    c3
                         nop                                                              // 0x00714c8c    90
                         nop                                                              // 0x00714c8d    90
                         nop                                                              // 0x00714c8e    90
                         nop                                                              // 0x00714c8f    90
_globl_ct_0x00714c90:    {disp32} jmp       _jmp_addr_0x00714ca0                          // 0x00714c90    e90b000000
                         nop                                                              // 0x00714c95    90
                         nop                                                              // 0x00714c96    90
                         nop                                                              // 0x00714c97    90
                         nop                                                              // 0x00714c98    90
                         nop                                                              // 0x00714c99    90
                         nop                                                              // 0x00714c9a    90
                         nop                                                              // 0x00714c9b    90
                         nop                                                              // 0x00714c9c    90
                         nop                                                              // 0x00714c9d    90
                         nop                                                              // 0x00714c9e    90
                         nop                                                              // 0x00714c9f    90
_jmp_addr_0x00714ca0:    {disp32} fld       dword ptr [rdata_bytes + 0xae2b4]             // 0x00714ca0    d905b4729500
                         {disp32} fmul      dword ptr [rdata_bytes + 0xae2b0]             // 0x00714ca6    d80db0729500
                         {disp32} fstp      dword ptr [data_bytes + 0x3d371c]             // 0x00714cac    d91d1c97d900
                         ret                                                              // 0x00714cb2    c3
                         nop                                                              // 0x00714cb3    90
                         nop                                                              // 0x00714cb4    90
                         nop                                                              // 0x00714cb5    90
                         nop                                                              // 0x00714cb6    90
                         nop                                                              // 0x00714cb7    90
                         nop                                                              // 0x00714cb8    90
                         nop                                                              // 0x00714cb9    90
                         nop                                                              // 0x00714cba    90
                         nop                                                              // 0x00714cbb    90
                         nop                                                              // 0x00714cbc    90
                         nop                                                              // 0x00714cbd    90
                         nop                                                              // 0x00714cbe    90
                         nop                                                              // 0x00714cbf    90
_globl_ct_0x00714cc0:    {disp32} jmp       _jmp_addr_0x00714cd0                          // 0x00714cc0    e90b000000
                         nop                                                              // 0x00714cc5    90
                         nop                                                              // 0x00714cc6    90
                         nop                                                              // 0x00714cc7    90
                         nop                                                              // 0x00714cc8    90
                         nop                                                              // 0x00714cc9    90
                         nop                                                              // 0x00714cca    90
                         nop                                                              // 0x00714ccb    90
                         nop                                                              // 0x00714ccc    90
                         nop                                                              // 0x00714ccd    90
                         nop                                                              // 0x00714cce    90
                         nop                                                              // 0x00714ccf    90
_jmp_addr_0x00714cd0:    {disp32} mov       dword ptr [data_bytes + 0x3d3718], 0xffffffff // 0x00714cd0    c7051897d900ffffffff
                         ret                                                              // 0x00714cda    c3
                         nop                                                              // 0x00714cdb    90
                         nop                                                              // 0x00714cdc    90
                         nop                                                              // 0x00714cdd    90
                         nop                                                              // 0x00714cde    90
                         nop                                                              // 0x00714cdf    90
_globl_ct_0x00714ce0:    {disp32} jmp       _jmp_addr_0x00714cf0                          // 0x00714ce0    e90b000000
                         nop                                                              // 0x00714ce5    90
                         nop                                                              // 0x00714ce6    90
                         nop                                                              // 0x00714ce7    90
                         nop                                                              // 0x00714ce8    90
                         nop                                                              // 0x00714ce9    90
                         nop                                                              // 0x00714cea    90
                         nop                                                              // 0x00714ceb    90
                         nop                                                              // 0x00714cec    90
                         nop                                                              // 0x00714ced    90
                         nop                                                              // 0x00714cee    90
                         nop                                                              // 0x00714cef    90
_jmp_addr_0x00714cf0:    {disp32} fld       dword ptr [rdata_bytes + 0xae2b8]             // 0x00714cf0    d905b8729500
                         {disp32} fmul      dword ptr [_abode_info_float_0x008a99f0]      // 0x00714cf6    d80df0998a00
                         {disp32} fstp      dword ptr [data_bytes + 0x3d3714]             // 0x00714cfc    d91d1497d900
                         ret                                                              // 0x00714d02    c3
                         nop                                                              // 0x00714d03    90
                         nop                                                              // 0x00714d04    90
                         nop                                                              // 0x00714d05    90
                         nop                                                              // 0x00714d06    90
                         nop                                                              // 0x00714d07    90
                         nop                                                              // 0x00714d08    90
                         nop                                                              // 0x00714d09    90
                         nop                                                              // 0x00714d0a    90
                         nop                                                              // 0x00714d0b    90
                         nop                                                              // 0x00714d0c    90
                         nop                                                              // 0x00714d0d    90
                         nop                                                              // 0x00714d0e    90
                         nop                                                              // 0x00714d0f    90
                         sub                esp, 0x0c                                     // 0x00714d10    83ec0c
                         push               esi                                           // 0x00714d13    56
                         mov                esi, 0x00000001                               // 0x00714d14    be01000000
                         push               esi                                           // 0x00714d19    56
                         call               _RenderLoadingFrame__Fb                       // 0x00714d1a    e82101eeff
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x00714d1f    8b442418
                         add                eax, -0x02                                    // 0x00714d23    83c0fe
                         add                esp, 0x04                                     // 0x00714d26    83c404
                         cmp                eax, 0x16                                     // 0x00714d29    83f816
                         {disp32} ja        _jmp_addr_0x00715011                          // 0x00714d2c    0f87df020000
                         jmp                dword ptr [eax*4 + 0x715018]                  // 0x00714d32    ff248518507100
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x00714d39    8b442418
                         {disp32} mov       ecx, dword ptr [eax + 0x00006008]             // 0x00714d3d    8b8808600000
                         {disp32} mov       edx, dword ptr [eax + 0x00006004]             // 0x00714d43    8b9004600000
                         {disp32} mov       eax, dword ptr [eax + 0x00006000]             // 0x00714d49    8b8000600000
                         push               ecx                                           // 0x00714d4f    51
                         push               edx                                           // 0x00714d50    52
                         push               eax                                           // 0x00714d51    50
                         mov                ecx, OFFSET _GGameInfo_00d019f8               // 0x00714d52    b9f819d000
                         call               @SetStartDate__9GGameInfoFlll@20              // 0x00714d57    e8742ae4ff
                         xor.s              eax, eax                                      // 0x00714d5c    33c0
                         pop                esi                                           // 0x00714d5e    5e
                         add                esp, 0x0c                                     // 0x00714d5f    83c40c
                         ret                                                              // 0x00714d62    c3
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x00714d63    8b442418
                         {disp32} mov       ecx, dword ptr [eax + 0x00006008]             // 0x00714d67    8b8808600000
                         {disp32} mov       edx, dword ptr [eax + 0x00006004]             // 0x00714d6d    8b9004600000
                         {disp32} mov       eax, dword ptr [eax + 0x00006000]             // 0x00714d73    8b8000600000
                         push               ecx                                           // 0x00714d79    51
                         push               edx                                           // 0x00714d7a    52
                         push               eax                                           // 0x00714d7b    50
                         mov                ecx, OFFSET _GGameInfo_00d019f8               // 0x00714d7c    b9f819d000
                         call               @SetStartTime__9GGameInfoFlll@20              // 0x00714d81    e86a2ae4ff
                         xor.s              eax, eax                                      // 0x00714d86    33c0
                         pop                esi                                           // 0x00714d88    5e
                         add                esp, 0x0c                                     // 0x00714d89    83c40c
                         ret                                                              // 0x00714d8c    c3
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x00714d8d    8b4c2418
                         {disp32} mov       edx, dword ptr [ecx + 0x00006000]             // 0x00714d91    8b9100600000
                         {disp8} mov        dword ptr [esp + 0x04], edx                   // 0x00714d97    89542404
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000            // 0x00714d9b    c744240800000000
                         {disp8} fild       qword ptr [esp + 0x04]                        // 0x00714da3    df6c2404
                         xor.s              eax, eax                                      // 0x00714da7    33c0
                         pop                esi                                           // 0x00714da9    5e
                         {disp32} fstp      dword ptr [data_bytes + 0x33ba08]             // 0x00714daa    d91d081ad000
                         add                esp, 0x0c                                     // 0x00714db0    83c40c
                         ret                                                              // 0x00714db3    c3
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x00714db4    8b442418
                         {disp32} mov       ecx, dword ptr [eax + 0x00006000]             // 0x00714db8    8b8800600000
                         {disp32} mov       dword ptr [data_bytes + 0x33ba38], ecx        // 0x00714dbe    890d381ad000
                         xor.s              eax, eax                                      // 0x00714dc4    33c0
                         pop                esi                                           // 0x00714dc6    5e
                         add                esp, 0x0c                                     // 0x00714dc7    83c40c
                         ret                                                              // 0x00714dca    c3
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x00714dcb    8b542418
                         push               edx                                           // 0x00714dcf    52
                         call               ?LoadMapFeatures@GSetup@@SAXPAD@Z             // 0x00714dd0    e8db320000
                         add                esp, 0x04                                     // 0x00714dd5    83c404
                         xor.s              eax, eax                                      // 0x00714dd8    33c0
                         pop                esi                                           // 0x00714dda    5e
                         add                esp, 0x0c                                     // 0x00714ddb    83c40c
                         ret                                                              // 0x00714dde    c3
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x00714ddf    8b542418
                         or                 ecx, 0xffffffff                               // 0x00714de3    83c9ff
                         push               edi                                           // 0x00714de6    57
                         xor.s              eax, eax                                      // 0x00714de7    33c0
                         mov.s              edi, edx                                      // 0x00714de9    8bfa
                         repne scasb                                                      // 0x00714deb    f2ae
                         not                ecx                                           // 0x00714ded    f7d1
                         sub.s              edi, ecx                                      // 0x00714def    2bf9
                         mov.s              eax, ecx                                      // 0x00714df1    8bc1
                         shr                ecx, 2                                        // 0x00714df3    c1e902
                         mov.s              esi, edi                                      // 0x00714df6    8bf7
                         mov                edi, OFFSET _CHAR_ARRAY_00d99580              // 0x00714df8    bf8095d900
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00714dfd    f3a5
                         mov.s              ecx, eax                                      // 0x00714dff    8bc8
                         and                ecx, 0x03                                     // 0x00714e01    83e103
                         rep movsb                                                        // 0x00714e04    f3a4
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00714e06    8b0d5c19d000
                         push               edx                                           // 0x00714e0c    52
                         add                ecx, 0x00205a20                               // 0x00714e0d    81c1205a2000
                         call               @Open__10GLandscapeFPc@12                     // 0x00714e13    e8c804edff
                         pop                edi                                           // 0x00714e18    5f
                         xor.s              eax, eax                                      // 0x00714e19    33c0
                         pop                esi                                           // 0x00714e1b    5e
                         add                esp, 0x0c                                     // 0x00714e1c    83c40c
                         ret                                                              // 0x00714e1f    c3
                         push               esi                                           // 0x00714e20    56
                         call               _jmp_addr_0x0054ae20                          // 0x00714e21    e8fa5fe3ff
                         add                esp, 0x04                                     // 0x00714e26    83c404
                         xor.s              eax, eax                                      // 0x00714e29    33c0
                         pop                esi                                           // 0x00714e2b    5e
                         add                esp, 0x0c                                     // 0x00714e2c    83c40c
                         ret                                                              // 0x00714e2f    c3
                         {disp8} mov        esi, dword ptr [esp + 0x18]                   // 0x00714e30    8b742418
                         {disp32} mov       edx, dword ptr [esi + 0x0000600c]             // 0x00714e34    8b960c600000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00714e3a    8b0d5c19d000
                         push               edx                                           // 0x00714e40    52
                         call               ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z          // 0x00714e41    e86abbe3ff
                         push               eax                                           // 0x00714e46    50
                         {disp32} mov       eax, dword ptr [esi + 0x00006008]             // 0x00714e47    8b8608600000
                         lea                ecx, dword ptr [eax + eax * 0x8]              // 0x00714e4d    8d0cc0
                         lea                ecx, dword ptr [eax + ecx * 0x2]              // 0x00714e50    8d0c48
                         lea                edx, dword ptr [ecx + ecx * 0x2]              // 0x00714e53    8d1449
                         lea                eax, dword ptr [eax + edx * 0x4]              // 0x00714e56    8d0490
                         {disp32} lea       ecx, dword ptr [eax * 0x4 + 0x00c60460]       // 0x00714e59    8d0c856004c600
                         xor.s              edx, edx                                      // 0x00714e60    33d2
                         {disp32} mov       dx, word ptr [esi + 0x00006004]               // 0x00714e62    668b9604600000
                         xor.s              eax, eax                                      // 0x00714e69    33c0
                         {disp32} mov       ax, word ptr [esi + 0x00006000]               // 0x00714e6b    668b8600600000
                         push               ecx                                           // 0x00714e72    51
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x00714e73    8d4c240c
                         push               edx                                           // 0x00714e77    52
                         push               eax                                           // 0x00714e78    50
                         call               _jmp_addr_0x00602fc0                          // 0x00714e79    e842e1eeff
                         push               eax                                           // 0x00714e7e    50
                         call               ?CreateCreature@Creature@@SAPAV1@ABUMapCoords@@PBVCreatureInfo@@PAVGPlayer@@@Z            // 0x00714e7f    e8ccfcd5ff
                         add                esp, 0x0c                                     // 0x00714e84    83c40c
                         xor.s              eax, eax                                      // 0x00714e87    33c0
                         pop                esi                                           // 0x00714e89    5e
                         add                esp, 0x0c                                     // 0x00714e8a    83c40c
                         ret                                                              // 0x00714e8d    c3
                         {disp32} mov       dword ptr [data_bytes + 0x30dc6c], esi        // 0x00714e8e    89356c3ccd00
                         xor.s              eax, eax                                      // 0x00714e94    33c0
                         pop                esi                                           // 0x00714e96    5e
                         add                esp, 0x0c                                     // 0x00714e97    83c40c
                         ret                                                              // 0x00714e9a    c3
                         {disp32} mov       dword ptr [data_bytes + 0x30dc74], esi        // 0x00714e9b    8935743ccd00
                         xor.s              eax, eax                                      // 0x00714ea1    33c0
                         pop                esi                                           // 0x00714ea3    5e
                         add                esp, 0x0c                                     // 0x00714ea4    83c40c
                         ret                                                              // 0x00714ea7    c3
                         {disp32} mov       dword ptr [data_bytes + 0x30dc70], esi        // 0x00714ea8    8935703ccd00
                         xor.s              eax, eax                                      // 0x00714eae    33c0
                         pop                esi                                           // 0x00714eb0    5e
                         add                esp, 0x0c                                     // 0x00714eb1    83c40c
                         ret                                                              // 0x00714eb4    c3
                         {disp32} mov       dword ptr [data_bytes + 0x30dc78], esi        // 0x00714eb5    8935783ccd00
                         xor.s              eax, eax                                      // 0x00714ebb    33c0
                         pop                esi                                           // 0x00714ebd    5e
                         add                esp, 0x0c                                     // 0x00714ebe    83c40c
                         ret                                                              // 0x00714ec1    c3
                         {disp32} mov       dword ptr [data_bytes + 0x30dc7c], esi        // 0x00714ec2    89357c3ccd00
                         xor.s              eax, eax                                      // 0x00714ec8    33c0
                         pop                esi                                           // 0x00714eca    5e
                         add                esp, 0x0c                                     // 0x00714ecb    83c40c
                         ret                                                              // 0x00714ece    c3
                         {disp32} mov       dword ptr [data_bytes + 0x30dc80], esi        // 0x00714ecf    8935803ccd00
                         xor.s              eax, eax                                      // 0x00714ed5    33c0
                         pop                esi                                           // 0x00714ed7    5e
                         add                esp, 0x0c                                     // 0x00714ed8    83c40c
                         ret                                                              // 0x00714edb    c3
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x00714edc    8b442418
                         {disp32} mov       ecx, dword ptr [eax + 0x00006004]             // 0x00714ee0    8b8804600000
                         {disp32} mov       edx, dword ptr [eax + 0x00006000]             // 0x00714ee6    8b9000600000
                         push               ecx                                           // 0x00714eec    51
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00714eed    8b0d5c19d000
                         push               edx                                           // 0x00714ef3    52
                         push               0x4b                                          // 0x00714ef4    6a4b
                         call               _jmp_addr_0x00550c20                          // 0x00714ef6    e825bde3ff
                         xor.s              eax, eax                                      // 0x00714efb    33c0
                         pop                esi                                           // 0x00714efd    5e
                         add                esp, 0x0c                                     // 0x00714efe    83c40c
                         ret                                                              // 0x00714f01    c3
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x00714f02    8b442418
                         {disp32} mov       ecx, dword ptr [eax + 0x00006000]             // 0x00714f06    8b8800600000
                         push               0x0                                           // 0x00714f0c    6a00
                         push               ecx                                           // 0x00714f0e    51
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00714f0f    8b0d5c19d000
                         push               0x4c                                          // 0x00714f15    6a4c
                         call               _jmp_addr_0x00550c20                          // 0x00714f17    e804bde3ff
                         xor.s              eax, eax                                      // 0x00714f1c    33c0
                         pop                esi                                           // 0x00714f1e    5e
                         add                esp, 0x0c                                     // 0x00714f1f    83c40c
                         ret                                                              // 0x00714f22    c3
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x00714f23    8b542418
                         {disp32} mov       eax, dword ptr [_game]                        // 0x00714f27    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x00714f2c    8b8890002500
                         push               edx                                           // 0x00714f32    52
                         call               _jmp_addr_0x006eb220                          // 0x00714f33    e8e862fdff
                         xor.s              eax, eax                                      // 0x00714f38    33c0
                         pop                esi                                           // 0x00714f3a    5e
                         add                esp, 0x0c                                     // 0x00714f3b    83c40c
                         ret                                                              // 0x00714f3e    c3
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x00714f3f    8b4c2418
                         {disp32} mov       edx, dword ptr [_game]                        // 0x00714f43    8b155c19d000
                         push               ecx                                           // 0x00714f49    51
                         {disp32} mov       ecx, dword ptr [edx + 0x00250090]             // 0x00714f4a    8b8a90002500
                         call               @LoadBinary__7GScriptFPc@12                   // 0x00714f50    e8bb66fdff
                         xor.s              eax, eax                                      // 0x00714f55    33c0
                         pop                esi                                           // 0x00714f57    5e
                         add                esp, 0x0c                                     // 0x00714f58    83c40c
                         ret                                                              // 0x00714f5b    c3
                         {disp32} mov       eax, dword ptr [_game]                        // 0x00714f5c    a15c19d000
                         {disp32} lea       ecx, dword ptr [eax + 0x0025004c]             // 0x00714f61    8d884c002500
                         call               _jmp_addr_0x005e67c0                          // 0x00714f67    e85418edff
                         xor.s              eax, eax                                      // 0x00714f6c    33c0
                         pop                esi                                           // 0x00714f6e    5e
                         add                esp, 0x0c                                     // 0x00714f6f    83c40c
                         ret                                                              // 0x00714f72    c3
                         {disp32} mov       dword ptr [data_bytes + 0x33adf0], 0x00000000 // 0x00714f73    c705f00dd00000000000
                         xor.s              eax, eax                                      // 0x00714f7d    33c0
                         pop                esi                                           // 0x00714f7f    5e
                         add                esp, 0x0c                                     // 0x00714f80    83c40c
                         ret                                                              // 0x00714f83    c3
                         push               0x000000c0                                    // 0x00714f84    68c0000000
                         push               0x00c21fe8                                    // 0x00714f89    68e81fc200
                         push               0x00000114                                    // 0x00714f8e    6814010000
                         call               ___nw__FUl                                    // 0x00714f93    e8f8670c00
                         mov.s              esi, eax                                      // 0x00714f98    8bf0
                         add                esp, 0x0c                                     // 0x00714f9a    83c40c
                         test               esi, esi                                      // 0x00714f9d    85f6
                         {disp8} je         _jmp_addr_0x00714fc8                          // 0x00714f9f    7427
                         mov.s              ecx, esi                                      // 0x00714fa1    8bce
                         call               ??0LHOSFile@@QAE@XZ                           // 0x00714fa3    e8a8760a00
                         mov.s              ecx, esi                                      // 0x00714fa8    8bce
                         mov                dword ptr [esi], 0x008c4d00                   // 0x00714faa    c706004d8c00
                         call               _jmp_addr_0x0046af20                          // 0x00714fb0    e86b5fd5ff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00714fb5    8b0d5c19d000
                         {disp32} mov       dword ptr [ecx + 0x00250178], esi             // 0x00714fbb    89b178012500
                         xor.s              eax, eax                                      // 0x00714fc1    33c0
                         pop                esi                                           // 0x00714fc3    5e
                         add                esp, 0x0c                                     // 0x00714fc4    83c40c
                         ret                                                              // 0x00714fc7    c3
_jmp_addr_0x00714fc8:    {disp32} mov       ecx, dword ptr [_game]                        // 0x00714fc8    8b0d5c19d000
                         xor.s              esi, esi                                      // 0x00714fce    33f6
                         {disp32} mov       dword ptr [ecx + 0x00250178], esi             // 0x00714fd0    89b178012500
                         xor.s              eax, eax                                      // 0x00714fd6    33c0
                         pop                esi                                           // 0x00714fd8    5e
                         add                esp, 0x0c                                     // 0x00714fd9    83c40c
                         ret                                                              // 0x00714fdc    c3
                         {disp8} mov        esi, dword ptr [esp + 0x18]                   // 0x00714fdd    8b742418
                         push               esi                                           // 0x00714fe1    56
                         call               __strlwr                                      // 0x00714fe2    e8420e1900
                         mov                cl, byte ptr [esi]                            // 0x00714fe7    8a0e
                         add                esp, 0x04                                     // 0x00714fe9    83c404
                         xor.s              eax, eax                                      // 0x00714fec    33c0
_jmp_addr_0x00714fee:    cmp                byte ptr [eax + 0x00c3122c], cl               // 0x00714fee    38882c12c300
                         {disp8} je         _jmp_addr_0x00715005                          // 0x00714ff4    740f
                         inc                eax                                           // 0x00714ff6    40
                         cmp                eax, 0x00000100                               // 0x00714ff7    3d00010000
                         {disp8} jl         _jmp_addr_0x00714fee                          // 0x00714ffc    7cf0
                         xor.s              eax, eax                                      // 0x00714ffe    33c0
                         pop                esi                                           // 0x00715000    5e
                         add                esp, 0x0c                                     // 0x00715001    83c40c
                         ret                                                              // 0x00715004    c3
_jmp_addr_0x00715005:    {disp32} mov       ecx, dword ptr [_game]                        // 0x00715005    8b0d5c19d000
                         push               eax                                           // 0x0071500b    50
                         call               _jmp_addr_0x0063ee10                          // 0x0071500c    e8ff9df2ff
_jmp_addr_0x00715011:    xor.s              eax, eax                                      // 0x00715011    33c0
                         pop                esi                                           // 0x00715013    5e
                         add                esp, 0x0c                                     // 0x00715014    83c40c
                         ret                                                              // 0x00715017    c3

// Snippet: jmptbl, [0x00715018, 0x00715074)
.byte 0x39, 0x4d, 0x71, 0x00      // 0x00715018
.byte 0x63, 0x4d, 0x71, 0x00      // 0x0071501c
.byte 0x8d, 0x4d, 0x71, 0x00      // 0x00715020
.byte 0xb4, 0x4d, 0x71, 0x00      // 0x00715024
.byte 0xcb, 0x4d, 0x71, 0x00      // 0x00715028
.byte 0x20, 0x4e, 0x71, 0x00      // 0x0071502c
.byte 0x30, 0x4e, 0x71, 0x00      // 0x00715030
.byte 0x8e, 0x4e, 0x71, 0x00      // 0x00715034
.byte 0x9b, 0x4e, 0x71, 0x00      // 0x00715038
.byte 0xa8, 0x4e, 0x71, 0x00      // 0x0071503c
.byte 0xb5, 0x4e, 0x71, 0x00      // 0x00715040
.byte 0xc2, 0x4e, 0x71, 0x00      // 0x00715044
.byte 0xdc, 0x4e, 0x71, 0x00      // 0x00715048
.byte 0x02, 0x4f, 0x71, 0x00      // 0x0071504c
.byte 0xdf, 0x4d, 0x71, 0x00      // 0x00715050
.byte 0x23, 0x4f, 0x71, 0x00      // 0x00715054
.byte 0x3f, 0x4f, 0x71, 0x00      // 0x00715058
.byte 0x5c, 0x4f, 0x71, 0x00      // 0x0071505c
.byte 0x11, 0x50, 0x71, 0x00      // 0x00715060
.byte 0xcf, 0x4e, 0x71, 0x00      // 0x00715064
.byte 0x73, 0x4f, 0x71, 0x00      // 0x00715068
.byte 0x84, 0x4f, 0x71, 0x00      // 0x0071506c
.byte 0xdd, 0x4f, 0x71, 0x00      // 0x00715070

// Snippet: db, [0x00715074, 0x00715080)
.byte 0x90, 0x90, 0x90, 0x90      // 0x00715074
.byte 0x90, 0x90, 0x90, 0x90      // 0x00715078
.byte 0x90, 0x90, 0x90, 0x90      // 0x0071507c

