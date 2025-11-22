.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?SetIdentity@LHMatrix@@QAEXXZ
.extern ?SetPosition@LH3DObject@@SAXABULHPoint@@MM@Z
.extern @PlaySoundEffect__6GAudioFP20LH_SamplePlayOptions@12
.extern ?__nw@Base@@SAPAXK@Z
.extern _jmp_addr_0x00436960
.extern ??3Base@@SAXPAXK@Z
.extern _jmp_addr_0x00436a80
.extern _jmp_addr_0x00436b80
.extern @__ct__7LHPointFfff@20
.extern _jmp_addr_0x004473f0
.extern _jmp_addr_0x00447430
.extern _jmp_addr_0x0046bf20
.extern _jmp_addr_0x0050ac50
.extern _jmp_addr_0x0050aca0
.extern _jmp_addr_0x0050afa0
.extern _jmp_addr_0x0050b040
.extern ?Draw@SingleMapFixed@@UAEXXZ
.extern _jmp_addr_0x00519960
.extern ??0FixedObject@@QAE@XZ
.extern @__ct__11FixedObjectFRC9MapCoordsPC11GObjectInfoff@24
.extern ?Save@Fixed@@UAEIPAVGameOSFile@@@Z
.extern ?Load@Fixed@@QAEIAAVGGameOSFile@@@Z
.extern ?CallVirtualFunctionsForCreation@SingleMapFixed@@UAEXABUMapCoords@@@Z
.extern _jmp_addr_0x0052eac0
.extern _jmp_addr_0x0052f690
.extern ?GetCamera@GGame@@QAEPAVGCamera@@XZ
.extern ?IsMultiplayerGame@GGame@@QBE_NXZ
.extern ?MyInterface@GGame@@QAEPAVGInterface@@XZ
.extern _jmp_addr_0x00555880
.extern _jmp_addr_0x0057d590
.extern ?SetMaterialProperties@GJUtils@@SAXPAULH3DMesh@@ABUMaterialProperties@@@Z
.extern ?Trigger@HelpProfile@@QAEXW4HELP_EVENT_TYPE@@@Z
.extern _jmp_addr_0x005c8330
.extern _jmp_addr_0x005d0460
.extern _jmp_addr_0x005d36d0
.extern _jmp_addr_0x006022c0
.extern @__ct__9MapCoordsFRC7LHPoint@12
.extern @GetLHPoint__9MapCoordsCFv@12
.extern ?ConvertMapCoordToLandscapePoint@GLandscape@@SAPAULHPoint@@ABUMapCoords@@AAU2@@Z
.extern ?ToBeDeleted@Object@@UAEXH@Z
.extern _jmp_addr_0x00638b00
.extern _Create__13PSysInterfaceFP5Spell13PARTICLE_TYPERC7LHPointRC7LHPointfQ213PSysInterface13NET_GAME_TYPE
.extern _jmp_addr_0x006ca7a0
.extern _jmp_addr_0x006ca7d0
.extern _jmp_addr_0x006ca910
.extern _jmp_addr_0x006ca930
.extern ?StopHelpScripts@GScript@@QAEXXZ
.extern ?ScriptErrorMessage@GScript@@QAEXPAD@Z
.extern ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z
.extern _jmp_addr_0x006f6bc0
.extern _jmp_addr_0x006f6bd0
.extern ?GetScriptType@ScriptDLL@@QAEPAXK@Z
.extern _jmp_addr_0x0070d220
.extern _jmp_addr_0x0074cde0
.extern _jmp_addr_0x0078cc10
.extern _jmp_addr_0x00792fb0
.extern ?StartScript@Temple@@QAE_NK@Z
.extern _jmp_addr_0x007a1400
.extern @Read__8LHOSFileFPvUlPUl@20
.extern @Write__8LHOSFileFPvUlPUl@20
.extern _atexit
.extern ___RTDynamicCast
.extern ___nw__FUl
.extern ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z
.extern _jmp_addr_0x0080b440
.extern @Create__10LH3DObjectFQ210LH3DObject10ObjectType@4
.extern _CHAR2WCHAR__FPc
.extern ?Create@LH3DSprite@@SAPAV1@JH@Z
.extern ?Release@LH3DSprite@@QAEXXZ
.extern _jmp_addr_0x00840c70
.extern _jmp_addr_0x00841170

.globl _jmp_addr_0x007096e0
.globl _jmp_addr_0x00709700
.globl _jmp_addr_0x00709a20
.globl _jmp_addr_0x00709a40
.globl _jmp_addr_0x00709c40
.globl ?ProcessHighlights@ScriptHighlight@@SAXXZ
.globl _jmp_addr_0x0070a510
.globl ?SetActivated@ScriptHighlight@@QAEXH@Z
.globl ?IsDidYouKnow@ScriptHighlight@@QAE_NXZ
.globl ?SetInterfaceInteraction@GScript@@SAXW4SCRIPT_INTERFACE_LEVEL@@@Z

.globl _globl_ct_0x00709550
.globl _globl_ct_0x00709580
.globl _globl_ct_0x007095b0
.globl _globl_ct_0x007095d0
.globl _globl_ct_0x00709600
.globl _globl_ct_0x0070ae60
.globl _globl_ct_0x0070ae90
.globl ?GetBaseInfo@GScriptHighlightInfo@@UAEPAVGBaseInfo@@AAI@Z
.globl ??_GGScriptHighlightInfo@@UAEPAXI@Z
.globl ?IsScriptHighlight@ScriptHighlight@@UAEIXZ
.globl ?IsActive@ScriptHighlight@@UBEIXZ
.globl ?PhysicsEditorCreate@ScriptHighlight@@UAEXH@Z
.globl ?ValidForPlaceInHand@ScriptHighlight@@UAEIPAVGInterfaceStatus@@@Z
.globl ?ApplyOnlyAfterReleased@ScriptHighlight@@UAEIXZ
.globl ?ValidToApplyThisToMapCoord@ScriptHighlight@@UAEIPAVGInterfaceStatus@@ABUMapCoords@@@Z
.globl ?CanBeSleptNextToByCreature@ScriptHighlight@@UAEIPAVCreature@@@Z
.globl ?CanBeDestroyedByStoning@ScriptHighlight@@UAEIPAVCreature@@@Z
.globl ?CanBeSetOnFire@ScriptHighlight@@UAEIPAVCreature@@@Z
.globl ?CanBeCrushed@ScriptHighlight@@UAEIXZ
.globl ?IsEffectReceiver@ScriptHighlight@@UAEIPAVEffectValues@@@Z
.globl ?ValidAsInterfaceTarget@ScriptHighlight@@UAEIXZ
.globl ?CanBecomeAPhysicsObject@ScriptHighlight@@UAE_NXZ
.globl ?InteractsWithPhysicsObjects@ScriptHighlight@@UAE_NXZ
.globl ?CanBePickedUpByCreature@ScriptHighlight@@UAEIPAVCreature@@@Z
.globl ?InterfaceMustBeInInfluenceForInteraction@ScriptHighlight@@UAEIXZ
.globl ?GetSaveType@ScriptHighlight@@UAEIXZ
.globl ?GetDebugText@ScriptHighlight@@UAEPADXZ
.globl ??_GScriptHighlight@@UAEPAXI@Z
.globl ?ToBeDeleted@ScriptHighlight@@UAEXH@Z
.globl ?CallVirtualFunctionsForCreation@ScriptHighlight@@UAEXABUMapCoords@@@Z
.globl ?Draw@ScriptHighlight@@UAEXXZ
.globl ?Process@ScriptHighlight@@UAEIXZ
.globl ?Save@ScriptHighlight@@UAEIAAVGameOSFile@@@Z
.globl ?Load@ScriptHighlight@@UAEIAAVGameOSFile@@@Z
.globl ?ForDrawFXGetNumVertices@ScriptHighlight@@UAEHXZ
.globl ?ForDrawFXGetVertexPos@ScriptHighlight@@UAEXHPAULHPoint@@@Z
.globl ?InterfaceTap@ScriptHighlight@@UAEIPAVGInterfaceStatus@@@Z
.globl ?InterfaceValidToTap@ScriptHighlight@@UAEIPAVGInterfaceStatus@@@Z
.globl ?GetOverwriteTapToolTip@ScriptHighlight@@UAEIXZ
.globl ?GetScriptObjectType@ScriptHighlight@@UAEIXZ
.globl ?AddToRoutePlan@ScriptHighlight@@UAEXPAURPHolder@@PAVCreature@@HP6AXHUPoint2D@@MH@Z@Z

start_0x00709170_0x0070b7f0:
// Snippet: asm, [0x00709170, 0x0070b7a7)
                         sub                esp, 0x0c                                     // 0x00709170    83ec0c
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00709173    8b0d105cd900
                         push               ebx                                           // 0x00709179    53
                         push               ebp                                           // 0x0070917a    55
                         push               esi                                           // 0x0070917b    56
                         push               edi                                           // 0x0070917c    57
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x0070917d    8d442418
                         push               eax                                           // 0x00709181    50
                         call               _jmp_addr_0x006f6bc0                          // 0x00709182    e839dafeff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00709187    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x0070918d    8d542418
                         push               edx                                           // 0x00709191    52
                         mov.s              esi, eax                                      // 0x00709192    8bf0
                         call               _jmp_addr_0x006f6bc0                          // 0x00709194    e827dafeff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00709199    8b0d105cd900
                         mov.s              edi, eax                                      // 0x0070919f    8bf8
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x007091a1    8d442418
                         push               eax                                           // 0x007091a5    50
                         call               _jmp_addr_0x006f6bc0                          // 0x007091a6    e815dafeff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x007091ab    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x007091b1    8d542418
                         push               edx                                           // 0x007091b5    52
                         mov.s              ebx, eax                                      // 0x007091b6    8bd8
                         call               _jmp_addr_0x006f6bc0                          // 0x007091b8    e803dafeff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x007091bd    8b0d105cd900
                         mov.s              ebp, eax                                      // 0x007091c3    8be8
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x007091c5    8d442418
                         push               eax                                           // 0x007091c9    50
                         call               _jmp_addr_0x006f6bc0                          // 0x007091ca    e8f1d9feff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x007091cf    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x007091d5    8d542418
                         push               edx                                           // 0x007091d9    52
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x007091da    89442414
                         call               _jmp_addr_0x006f6bc0                          // 0x007091de    e8ddd9feff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x007091e3    8b0d105cd900
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x007091e9    89442414
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x007091ed    8d442418
                         push               eax                                           // 0x007091f1    50
                         call               _jmp_addr_0x006f6bc0                          // 0x007091f2    e8c9d9feff
                         cmp                eax, dword ptr [data_bytes + 0x351cac]        // 0x007091f7    3b05ac7cd100
                         {disp8} jae        _jmp_addr_0x00709203                          // 0x007091fd    7304
                         test               eax, eax                                      // 0x007091ff    85c0
                         {disp8} ja         _jmp_addr_0x0070920a                          // 0x00709201    7707
_jmp_addr_0x00709203:    {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00709203    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x00709216                          // 0x00709208    eb0c
_jmp_addr_0x0070920a:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x0070920a    8b15a87cd100
                         lea                ecx, dword ptr [eax + eax * 0x2]              // 0x00709210    8d0c40
                         lea                eax, dword ptr [edx + ecx * 0x4]              // 0x00709213    8d048a
_jmp_addr_0x00709216:    {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00709216    8b4008
                         push               0x00000124                                    // 0x00709219    6824010000
                         push               0x00c20594                                    // 0x0070921e    689405c200
                         push               0x00000828                                    // 0x00709223    6828080000
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x00709228    89442424
                         call               ___nw__FUl                                    // 0x0070922c    e85f250d00
                         xor.s              ecx, ecx                                      // 0x00709231    33c9
                         add                esp, 0x0c                                     // 0x00709233    83c40c
                         cmp.s              eax, ecx                                      // 0x00709236    3bc1
                         {disp8} je         _jmp_addr_0x0070925f                          // 0x00709238    7425
                         {disp32} mov       edx, dword ptr [data_bytes + 0x2e7b68]        // 0x0070923a    8b1568dbca00
                         {disp32} mov       dword ptr [eax + 0x00000824], edx             // 0x00709240    899024080000
                         {disp32} mov       dword ptr [data_bytes + 0x2e7b68], eax        // 0x00709246    a368dbca00
                         {disp32} mov       dword ptr [eax + 0x0000081c], ecx             // 0x0070924b    89881c080000
                         {disp32} mov       dword ptr [eax + 0x00000818], ecx             // 0x00709251    898818080000
                         {disp32} mov       dword ptr [eax + 0x00000814], ecx             // 0x00709257    898814080000
                         {disp8} jmp        _jmp_addr_0x00709261                          // 0x0070925d    eb02
_jmp_addr_0x0070925f:    xor.s              eax, eax                                      // 0x0070925f    33c0
_jmp_addr_0x00709261:    {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x00709261    8b4c2410
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x00709265    8b542414
                         push               esi                                           // 0x00709269    56
                         push               edi                                           // 0x0070926a    57
                         push               ebx                                           // 0x0070926b    53
                         push               ebp                                           // 0x0070926c    55
                         push               ecx                                           // 0x0070926d    51
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                   // 0x0070926e    8b4c242c
                         push               edx                                           // 0x00709272    52
                         push               ecx                                           // 0x00709273    51
                         mov.s              ecx, eax                                      // 0x00709274    8bc8
                         call               _jmp_addr_0x0050aca0                          // 0x00709276    e8251ae0ff
                         pop                edi                                           // 0x0070927b    5f
                         pop                esi                                           // 0x0070927c    5e
                         pop                ebp                                           // 0x0070927d    5d
                         pop                ebx                                           // 0x0070927e    5b
                         add                esp, 0x0c                                     // 0x0070927f    83c40c
                         ret                                                              // 0x00709282    c3
                         nop                                                              // 0x00709283    90
                         nop                                                              // 0x00709284    90
                         nop                                                              // 0x00709285    90
                         nop                                                              // 0x00709286    90
                         nop                                                              // 0x00709287    90
                         nop                                                              // 0x00709288    90
                         nop                                                              // 0x00709289    90
                         nop                                                              // 0x0070928a    90
                         nop                                                              // 0x0070928b    90
                         nop                                                              // 0x0070928c    90
                         nop                                                              // 0x0070928d    90
                         nop                                                              // 0x0070928e    90
                         nop                                                              // 0x0070928f    90
                         sub                esp, 0x10                                     // 0x00709290    83ec10
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00709293    8b0d105cd900
                         push               ebx                                           // 0x00709299    53
                         push               ebp                                           // 0x0070929a    55
                         push               esi                                           // 0x0070929b    56
                         push               edi                                           // 0x0070929c    57
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x0070929d    8d442418
                         push               eax                                           // 0x007092a1    50
                         call               _jmp_addr_0x006f6bc0                          // 0x007092a2    e819d9feff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x007092a7    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x007092ad    8d542418
                         push               edx                                           // 0x007092b1    52
                         mov.s              edi, eax                                      // 0x007092b2    8bf8
                         call               _jmp_addr_0x006f6bc0                          // 0x007092b4    e807d9feff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x007092b9    8b0d105cd900
                         mov.s              ebx, eax                                      // 0x007092bf    8bd8
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x007092c1    8d442418
                         push               eax                                           // 0x007092c5    50
                         call               _jmp_addr_0x006f6bc0                          // 0x007092c6    e8f5d8feff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x007092cb    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x007092d1    8d542418
                         push               edx                                           // 0x007092d5    52
                         mov.s              ebp, eax                                      // 0x007092d6    8be8
                         call               _jmp_addr_0x006f6bc0                          // 0x007092d8    e8e3d8feff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x007092dd    8b0d105cd900
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x007092e3    89442410
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x007092e7    8d442418
                         push               eax                                           // 0x007092eb    50
                         call               _jmp_addr_0x006f6bc0                          // 0x007092ec    e8cfd8feff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x007092f1    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x007092f7    8d542418
                         push               edx                                           // 0x007092fb    52
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x007092fc    89442418
                         call               _jmp_addr_0x006f6bc0                          // 0x00709300    e8bbd8feff
                         {disp32} mov       esi, dword ptr [_script_dll]                  // 0x00709305    8b35105cd900
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x0070930b    89442418
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                   // 0x0070930f    8d44241c
                         push               eax                                           // 0x00709313    50
                         mov.s              ecx, esi                                      // 0x00709314    8bce
                         call               _jmp_addr_0x006f6bc0                          // 0x00709316    e8a5d8feff
                         push               eax                                           // 0x0070931b    50
                         mov.s              ecx, esi                                      // 0x0070931c    8bce
                         call               _jmp_addr_0x006f6bd0                          // 0x0070931e    e8add8feff
                         push               eax                                           // 0x00709323    50
                         call               _CHAR2WCHAR__FPc                              // 0x00709324    e8776d1200
                         add                esp, 0x04                                     // 0x00709329    83c404
                         push               eax                                           // 0x0070932c    50
                         push               0x009cd6c8                                    // 0x0070932d    68c8d69c00
                         push               0x00d96278                                    // 0x00709332    687862d900
                         call               dword ptr [rdata_bytes + 0x360]               // 0x00709337    ff1560938a00
                         push               0x00000136                                    // 0x0070933d    6836010000
                         push               0x00c20594                                    // 0x00709342    689405c200
                         push               0x00000828                                    // 0x00709347    6828080000
                         call               ___nw__FUl                                    // 0x0070934c    e83f240d00
                         xor.s              ecx, ecx                                      // 0x00709351    33c9
                         add                esp, 0x18                                     // 0x00709353    83c418
                         cmp.s              eax, ecx                                      // 0x00709356    3bc1
                         {disp8} je         _jmp_addr_0x0070937f                          // 0x00709358    7425
                         {disp32} mov       edx, dword ptr [data_bytes + 0x2e7b68]        // 0x0070935a    8b1568dbca00
                         {disp32} mov       dword ptr [eax + 0x00000824], edx             // 0x00709360    899024080000
                         {disp32} mov       dword ptr [data_bytes + 0x2e7b68], eax        // 0x00709366    a368dbca00
                         {disp32} mov       dword ptr [eax + 0x0000081c], ecx             // 0x0070936b    89881c080000
                         {disp32} mov       dword ptr [eax + 0x00000818], ecx             // 0x00709371    898818080000
                         {disp32} mov       dword ptr [eax + 0x00000814], ecx             // 0x00709377    898814080000
                         {disp8} jmp        _jmp_addr_0x00709381                          // 0x0070937d    eb02
_jmp_addr_0x0070937f:    xor.s              eax, eax                                      // 0x0070937f    33c0
_jmp_addr_0x00709381:    {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x00709381    8b4c2410
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x00709385    8b542414
                         push               edi                                           // 0x00709389    57
                         push               ebx                                           // 0x0070938a    53
                         push               ebp                                           // 0x0070938b    55
                         push               ecx                                           // 0x0070938c    51
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                   // 0x0070938d    8b4c2428
                         push               edx                                           // 0x00709391    52
                         push               ecx                                           // 0x00709392    51
                         push               0x00d96278                                    // 0x00709393    687862d900
                         mov.s              ecx, eax                                      // 0x00709398    8bc8
                         call               _jmp_addr_0x0050aca0                          // 0x0070939a    e80119e0ff
                         pop                edi                                           // 0x0070939f    5f
                         pop                esi                                           // 0x007093a0    5e
                         pop                ebp                                           // 0x007093a1    5d
                         pop                ebx                                           // 0x007093a2    5b
                         add                esp, 0x10                                     // 0x007093a3    83c410
                         ret                                                              // 0x007093a6    c3
                         nop                                                              // 0x007093a7    90
                         nop                                                              // 0x007093a8    90
                         nop                                                              // 0x007093a9    90
                         nop                                                              // 0x007093aa    90
                         nop                                                              // 0x007093ab    90
                         nop                                                              // 0x007093ac    90
                         nop                                                              // 0x007093ad    90
                         nop                                                              // 0x007093ae    90
                         nop                                                              // 0x007093af    90
                         sub                esp, 0x0c                                     // 0x007093b0    83ec0c
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x007093b3    8b0d105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x007093b9    8d442408
                         push               eax                                           // 0x007093bd    50
                         call               _jmp_addr_0x006f6bc0                          // 0x007093be    e8fdd7feff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x007093c3    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x007093c9    8d542408
                         push               edx                                           // 0x007093cd    52
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x007093ce    89442404
                         call               _jmp_addr_0x006f6bc0                          // 0x007093d2    e8e9d7feff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x007093d7    8b0d105cd900
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x007093dd    89442404
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x007093e1    8d442408
                         push               eax                                           // 0x007093e5    50
                         call               _jmp_addr_0x006f6bc0                          // 0x007093e6    e8d5d7feff
                         {disp8} fld        dword ptr [esp + 0x00]                        // 0x007093eb    d9442400
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x007093ef    89442408
                         call               _jmp_addr_0x007a1400                          // 0x007093f3    e808800900
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x007093f8    d9442404
                         {disp8} mov        byte ptr [esp + 0x00], al                     // 0x007093fc    88442400
                         call               _jmp_addr_0x007a1400                          // 0x00709400    e8fb7f0900
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x00709405    d9442408
                         {disp8} mov        byte ptr [esp + 0x01], al                     // 0x00709409    88442401
                         call               _jmp_addr_0x007a1400                          // 0x0070940d    e8ee7f0900
                         {disp8} mov        byte ptr [esp + 0x02], al                     // 0x00709412    88442402
                         {disp8} mov        byte ptr [esp + 0x03], -0x01                  // 0x00709416    c6442403ff
                         {disp8} mov        ecx, dword ptr [esp + 0x00]                   // 0x0070941b    8b4c2400
                         {disp32} mov       dword ptr [data_bytes + 0x2e7b5c], ecx        // 0x0070941f    890d5cdbca00
                         add                esp, 0x0c                                     // 0x00709425    83c40c
                         ret                                                              // 0x00709428    c3
                         nop                                                              // 0x00709429    90
                         nop                                                              // 0x0070942a    90
                         nop                                                              // 0x0070942b    90
                         nop                                                              // 0x0070942c    90
                         nop                                                              // 0x0070942d    90
                         nop                                                              // 0x0070942e    90
                         nop                                                              // 0x0070942f    90
                         push               ecx                                           // 0x00709430    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00709431    8b0d105cd900
                         push               esi                                           // 0x00709437    56
                         push               edi                                           // 0x00709438    57
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x00709439    8d442408
                         push               eax                                           // 0x0070943d    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0070943e    e87dd7feff
                         {disp32} mov       esi, dword ptr [data_bytes + 0x2e7b68]        // 0x00709443    8b3568dbca00
                         test               esi, esi                                      // 0x00709449    85f6
                         mov.s              edi, eax                                      // 0x0070944b    8bf8
                         {disp8} je         _jmp_addr_0x00709461                          // 0x0070944d    7412
_jmp_addr_0x0070944f:    push               edi                                           // 0x0070944f    57
                         mov.s              ecx, esi                                      // 0x00709450    8bce
                         call               _jmp_addr_0x0050ac50                          // 0x00709452    e8f917e0ff
                         {disp32} mov       esi, dword ptr [esi + 0x00000824]             // 0x00709457    8bb624080000
                         test               esi, esi                                      // 0x0070945d    85f6
                         {disp8} jne        _jmp_addr_0x0070944f                          // 0x0070945f    75ee
_jmp_addr_0x00709461:    pop                edi                                           // 0x00709461    5f
                         pop                esi                                           // 0x00709462    5e
                         pop                ecx                                           // 0x00709463    59
                         ret                                                              // 0x00709464    c3
                         nop                                                              // 0x00709465    90
                         nop                                                              // 0x00709466    90
                         nop                                                              // 0x00709467    90
                         nop                                                              // 0x00709468    90
                         nop                                                              // 0x00709469    90
                         nop                                                              // 0x0070946a    90
                         nop                                                              // 0x0070946b    90
                         nop                                                              // 0x0070946c    90
                         nop                                                              // 0x0070946d    90
                         nop                                                              // 0x0070946e    90
                         nop                                                              // 0x0070946f    90
                         sub                esp, 0x14                                     // 0x00709470    83ec14
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00709473    8b0d105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x00709479    8d442410
                         push               eax                                           // 0x0070947d    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0070947e    e83dd7feff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00709483    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x00709489    8d542410
                         push               edx                                           // 0x0070948d    52
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x0070948e    89442404
                         call               _jmp_addr_0x006f6bc0                          // 0x00709492    e829d7feff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00709497    8b0d105cd900
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x0070949d    89442404
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x007094a1    8d442410
                         push               eax                                           // 0x007094a5    50
                         call               _jmp_addr_0x006f6bc0                          // 0x007094a6    e815d7feff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x007094ab    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x007094b1    8d542410
                         push               edx                                           // 0x007094b5    52
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x007094b6    8944240c
                         call               _jmp_addr_0x006f6bc0                          // 0x007094ba    e801d7feff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x007094bf    8b0d105cd900
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x007094c5    8944240c
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x007094c9    8d442410
                         push               eax                                           // 0x007094cd    50
                         call               _jmp_addr_0x006f6bc0                          // 0x007094ce    e8edd6feff
                         {disp8} fld        dword ptr [esp + 0x00]                        // 0x007094d3    d9442400
                         push               ecx                                           // 0x007094d7    51
                         fstp               dword ptr [esp]                               // 0x007094d8    d91c24
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x007094db    d9442408
                         push               ecx                                           // 0x007094df    51
                         fstp               dword ptr [esp]                               // 0x007094e0    d91c24
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x007094e3    d9442410
                         push               ecx                                           // 0x007094e7    51
                         fstp               dword ptr [esp]                               // 0x007094e8    d91c24
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x007094eb    d9442418
                         push               ecx                                           // 0x007094ef    51
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x007094f0    89442420
                         fstp               dword ptr [esp]                               // 0x007094f4    d91c24
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x007094f7    d9442420
                         push               ecx                                           // 0x007094fb    51
                         fstp               dword ptr [esp]                               // 0x007094fc    d91c24
                         call               _jmp_addr_0x0050afa0                          // 0x007094ff    e89c1ae0ff
                         add                esp, 0x28                                     // 0x00709504    83c428
                         ret                                                              // 0x00709507    c3
                         nop                                                              // 0x00709508    90
                         nop                                                              // 0x00709509    90
                         nop                                                              // 0x0070950a    90
                         nop                                                              // 0x0070950b    90
                         nop                                                              // 0x0070950c    90
                         nop                                                              // 0x0070950d    90
                         nop                                                              // 0x0070950e    90
                         nop                                                              // 0x0070950f    90
                         push               ecx                                           // 0x00709510    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00709511    8b0d105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x00]                   // 0x00709517    8d442400
                         push               eax                                           // 0x0070951b    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0070951c    e89fd6feff
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x00709521    89442400
                         {disp8} fld        dword ptr [esp + 0x00]                        // 0x00709525    d9442400
                         push               ecx                                           // 0x00709529    51
                         fstp               dword ptr [esp]                               // 0x0070952a    d91c24
                         call               _jmp_addr_0x0050b040                          // 0x0070952d    e80e1be0ff
                         add                esp, 0x08                                     // 0x00709532    83c408
                         ret                                                              // 0x00709535    c3
                         nop                                                              // 0x00709536    90
                         nop                                                              // 0x00709537    90
                         nop                                                              // 0x00709538    90
                         nop                                                              // 0x00709539    90
                         nop                                                              // 0x0070953a    90
                         nop                                                              // 0x0070953b    90
                         nop                                                              // 0x0070953c    90
                         nop                                                              // 0x0070953d    90
                         nop                                                              // 0x0070953e    90
                         nop                                                              // 0x0070953f    90
                         ret                                                              // 0x00709540    c3
                         nop                                                              // 0x00709541    90
                         nop                                                              // 0x00709542    90
                         nop                                                              // 0x00709543    90
                         nop                                                              // 0x00709544    90
                         nop                                                              // 0x00709545    90
                         nop                                                              // 0x00709546    90
                         nop                                                              // 0x00709547    90
                         nop                                                              // 0x00709548    90
                         nop                                                              // 0x00709549    90
                         nop                                                              // 0x0070954a    90
                         nop                                                              // 0x0070954b    90
                         nop                                                              // 0x0070954c    90
                         nop                                                              // 0x0070954d    90
                         nop                                                              // 0x0070954e    90
                         nop                                                              // 0x0070954f    90
_globl_ct_0x00709550:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x00709550    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x00709556    b001
                         test               al, cl                                        // 0x00709558    84c8
                         {disp8} jne        _jmp_addr_0x00709564                          // 0x0070955a    7508
                         or.s               cl, al                                        // 0x0070955c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x0070955e    880d34c9fa00
_jmp_addr_0x00709564:    {disp32} jmp       _jmp_addr_0x00709570                          // 0x00709564    e907000000
                         nop                                                              // 0x00709569    90
                         nop                                                              // 0x0070956a    90
                         nop                                                              // 0x0070956b    90
                         nop                                                              // 0x0070956c    90
                         nop                                                              // 0x0070956d    90
                         nop                                                              // 0x0070956e    90
                         nop                                                              // 0x0070956f    90
_jmp_addr_0x00709570:    push               0x00407870                                    // 0x00709570    6870784000
                         call               _atexit                                       // 0x00709575    e817c20b00
                         pop                ecx                                           // 0x0070957a    59
                         ret                                                              // 0x0070957b    c3
                         nop                                                              // 0x0070957c    90
                         nop                                                              // 0x0070957d    90
                         nop                                                              // 0x0070957e    90
                         nop                                                              // 0x0070957f    90
_globl_ct_0x00709580:    {disp32} jmp       _jmp_addr_0x00709590                          // 0x00709580    e90b000000
                         nop                                                              // 0x00709585    90
                         nop                                                              // 0x00709586    90
                         nop                                                              // 0x00709587    90
                         nop                                                              // 0x00709588    90
                         nop                                                              // 0x00709589    90
                         nop                                                              // 0x0070958a    90
                         nop                                                              // 0x0070958b    90
                         nop                                                              // 0x0070958c    90
                         nop                                                              // 0x0070958d    90
                         nop                                                              // 0x0070958e    90
                         nop                                                              // 0x0070958f    90
_jmp_addr_0x00709590:    {disp32} fld       dword ptr [rdata_bytes + 0x99228]             // 0x00709590    d90528229400
                         {disp32} fmul      dword ptr [rdata_bytes + 0x99224]             // 0x00709596    d80d24229400
                         {disp32} fstp      dword ptr [data_bytes + 0x3d038c]             // 0x0070959c    d91d8c63d900
                         ret                                                              // 0x007095a2    c3
                         nop                                                              // 0x007095a3    90
                         nop                                                              // 0x007095a4    90
                         nop                                                              // 0x007095a5    90
                         nop                                                              // 0x007095a6    90
                         nop                                                              // 0x007095a7    90
                         nop                                                              // 0x007095a8    90
                         nop                                                              // 0x007095a9    90
                         nop                                                              // 0x007095aa    90
                         nop                                                              // 0x007095ab    90
                         nop                                                              // 0x007095ac    90
                         nop                                                              // 0x007095ad    90
                         nop                                                              // 0x007095ae    90
                         nop                                                              // 0x007095af    90
_globl_ct_0x007095b0:    {disp32} jmp       _jmp_addr_0x007095c0                          // 0x007095b0    e90b000000
                         nop                                                              // 0x007095b5    90
                         nop                                                              // 0x007095b6    90
                         nop                                                              // 0x007095b7    90
                         nop                                                              // 0x007095b8    90
                         nop                                                              // 0x007095b9    90
                         nop                                                              // 0x007095ba    90
                         nop                                                              // 0x007095bb    90
                         nop                                                              // 0x007095bc    90
                         nop                                                              // 0x007095bd    90
                         nop                                                              // 0x007095be    90
                         nop                                                              // 0x007095bf    90
_jmp_addr_0x007095c0:    {disp32} mov       dword ptr [data_bytes + 0x3d0388], 0xffffffff // 0x007095c0    c7058863d900ffffffff
                         ret                                                              // 0x007095ca    c3
                         nop                                                              // 0x007095cb    90
                         nop                                                              // 0x007095cc    90
                         nop                                                              // 0x007095cd    90
                         nop                                                              // 0x007095ce    90
                         nop                                                              // 0x007095cf    90
_globl_ct_0x007095d0:    {disp32} jmp       _jmp_addr_0x007095e0                          // 0x007095d0    e90b000000
                         nop                                                              // 0x007095d5    90
                         nop                                                              // 0x007095d6    90
                         nop                                                              // 0x007095d7    90
                         nop                                                              // 0x007095d8    90
                         nop                                                              // 0x007095d9    90
                         nop                                                              // 0x007095da    90
                         nop                                                              // 0x007095db    90
                         nop                                                              // 0x007095dc    90
                         nop                                                              // 0x007095dd    90
                         nop                                                              // 0x007095de    90
                         nop                                                              // 0x007095df    90
_jmp_addr_0x007095e0:    fldln2                                                           // 0x007095e0    d9ed
                         {disp32} fld       qword ptr [__real@3fe0000000000000]           // 0x007095e2    dd0560b28a00
                         fyl2x                                                            // 0x007095e8    d9f1
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                   // 0x007095ea    d83d90a38a00
                         {disp32} fstp      dword ptr [data_bytes + 0x3d0384]             // 0x007095f0    d91d8463d900
                         ret                                                              // 0x007095f6    c3
                         nop                                                              // 0x007095f7    90
                         nop                                                              // 0x007095f8    90
                         nop                                                              // 0x007095f9    90
                         nop                                                              // 0x007095fa    90
                         nop                                                              // 0x007095fb    90
                         nop                                                              // 0x007095fc    90
                         nop                                                              // 0x007095fd    90
                         nop                                                              // 0x007095fe    90
                         nop                                                              // 0x007095ff    90
_globl_ct_0x00709600:    call               _jmp_addr_0x00709610                          // 0x00709600    e80b000000
                         {disp32} jmp       _jmp_addr_0x00709660                          // 0x00709605    e956000000
                         nop                                                              // 0x0070960a    90
                         nop                                                              // 0x0070960b    90
                         nop                                                              // 0x0070960c    90
                         nop                                                              // 0x0070960d    90
                         nop                                                              // 0x0070960e    90
                         nop                                                              // 0x0070960f    90
_jmp_addr_0x00709610:    mov                eax, 0x00d96390                               // 0x00709610    b89063d900
                         mov                ecx, 0x00000004                               // 0x00709615    b904000000
                         xor.s              edx, edx                                      // 0x0070961a    33d2
.att_syntax
_jmp_addr_0x0070961c:    movl               $??_7Base@@6B@, (%eax)                        // 0x0070961c    c700449a8a00
.intel_syntax noprefix
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x00709622    895004
                         {disp8} mov        dword ptr [eax + 0x08], edx                   // 0x00709625    895008
                         mov                dword ptr [eax], 0x0094224c                   // 0x00709628    c7004c229400
                         add                eax, 0x00000110                               // 0x0070962e    0510010000
                         dec                ecx                                           // 0x00709633    49
                         {disp8} jne        _jmp_addr_0x0070961c                          // 0x00709634    75e6
                         ret                                                              // 0x00709636    c3
                         nop                                                              // 0x00709637    90
                         nop                                                              // 0x00709638    90
                         nop                                                              // 0x00709639    90
                         nop                                                              // 0x0070963a    90
                         nop                                                              // 0x0070963b    90
                         nop                                                              // 0x0070963c    90
                         nop                                                              // 0x0070963d    90
                         nop                                                              // 0x0070963e    90
                         nop                                                              // 0x0070963f    90
?GetBaseInfo@GScriptHighlightInfo@@UAEPAVGBaseInfo@@AAI@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00709640    8b442404
                         mov                dword ptr [eax], 0x00000004                   // 0x00709644    c70004000000
                         mov                eax, 0x00d96390                               // 0x0070964a    b89063d900
                         ret                0x0004                                        // 0x0070964f    c20400
                         nop                                                              // 0x00709652    90
                         nop                                                              // 0x00709653    90
                         nop                                                              // 0x00709654    90
                         nop                                                              // 0x00709655    90
                         nop                                                              // 0x00709656    90
                         nop                                                              // 0x00709657    90
                         nop                                                              // 0x00709658    90
                         nop                                                              // 0x00709659    90
                         nop                                                              // 0x0070965a    90
                         nop                                                              // 0x0070965b    90
                         nop                                                              // 0x0070965c    90
                         nop                                                              // 0x0070965d    90
                         nop                                                              // 0x0070965e    90
                         nop                                                              // 0x0070965f    90
_jmp_addr_0x00709660:    push               0x00709670                                    // 0x00709660    6870967000
                         call               _atexit                                       // 0x00709665    e827c10b00
                         pop                ecx                                           // 0x0070966a    59
                         ret                                                              // 0x0070966b    c3
                         nop                                                              // 0x0070966c    90
                         nop                                                              // 0x0070966d    90
                         nop                                                              // 0x0070966e    90
                         nop                                                              // 0x0070966f    90
                         {disp32} mov       cl, byte ptr [data_bytes + 0x3d0380]          // 0x00709670    8a0d8063d900
                         mov                al, 0x01                                      // 0x00709676    b001
                         test               al, cl                                        // 0x00709678    84c8
                         {disp8} jne        _jmp_addr_0x007096a2                          // 0x0070967a    7526
                         push               esi                                           // 0x0070967c    56
                         or.s               cl, al                                        // 0x0070967d    0ac8
                         push               edi                                           // 0x0070967f    57
                         {disp32} mov       byte ptr [data_bytes + 0x3d0380], cl          // 0x00709680    880d8063d900
                         mov                esi, 0x00d967d0                               // 0x00709686    bed067d900
                         mov                edi, 0x00000004                               // 0x0070968b    bf04000000
_jmp_addr_0x00709690:    sub                esi, 0x00000110                               // 0x00709690    81ee10010000
                         mov.s              ecx, esi                                      // 0x00709696    8bce
                         call               _jmp_addr_0x00436960                          // 0x00709698    e8c3d2d2ff
                         dec                edi                                           // 0x0070969d    4f
                         {disp8} jne        _jmp_addr_0x00709690                          // 0x0070969e    75f0
                         pop                edi                                           // 0x007096a0    5f
                         pop                esi                                           // 0x007096a1    5e
_jmp_addr_0x007096a2:    ret                                                              // 0x007096a2    c3
                         nop                                                              // 0x007096a3    90
                         nop                                                              // 0x007096a4    90
                         nop                                                              // 0x007096a5    90
                         nop                                                              // 0x007096a6    90
                         nop                                                              // 0x007096a7    90
                         nop                                                              // 0x007096a8    90
                         nop                                                              // 0x007096a9    90
                         nop                                                              // 0x007096aa    90
                         nop                                                              // 0x007096ab    90
                         nop                                                              // 0x007096ac    90
                         nop                                                              // 0x007096ad    90
                         nop                                                              // 0x007096ae    90
                         nop                                                              // 0x007096af    90
??_GGScriptHighlightInfo@@UAEPAXI@Z:
                         push               esi                                           // 0x007096b0    56
                         mov.s              esi, ecx                                      // 0x007096b1    8bf1
                         call               _jmp_addr_0x00436960                          // 0x007096b3    e8a8d2d2ff
                         test               byte ptr [esp + 0x08], 0x01                   // 0x007096b8    f644240801
                         {disp8} je         _jmp_addr_0x007096cd                          // 0x007096bd    740e
                         push               0x00000110                                    // 0x007096bf    6810010000
                         push               esi                                           // 0x007096c4    56
                         call               ??3Base@@SAXPAXK@Z                          // 0x007096c5    e8a6d2d2ff
                         add                esp, 0x08                                     // 0x007096ca    83c408
_jmp_addr_0x007096cd:    mov.s              eax, esi                                      // 0x007096cd    8bc6
                         pop                esi                                           // 0x007096cf    5e
                         ret                0x0004                                        // 0x007096d0    c20400
                         nop                                                              // 0x007096d3    90
                         nop                                                              // 0x007096d4    90
                         nop                                                              // 0x007096d5    90
                         nop                                                              // 0x007096d6    90
                         nop                                                              // 0x007096d7    90
                         nop                                                              // 0x007096d8    90
                         nop                                                              // 0x007096d9    90
                         nop                                                              // 0x007096da    90
                         nop                                                              // 0x007096db    90
                         nop                                                              // 0x007096dc    90
                         nop                                                              // 0x007096dd    90
                         nop                                                              // 0x007096de    90
                         nop                                                              // 0x007096df    90
_jmp_addr_0x007096e0:    {disp32} mov       dword ptr [data_bytes + 0x3d07d4], 0x00000000 // 0x007096e0    c705d467d90000000000
                         {disp32} mov       dword ptr [data_bytes + 0x3d07d8], 0x00000000 // 0x007096ea    c705d867d90000000000
                         {disp32} mov       dword ptr [data_bytes + 0x3d07dc], 0x00000000 // 0x007096f4    c705dc67d90000000000
                         ret                                                              // 0x007096fe    c3
                         nop                                                              // 0x007096ff    90
_jmp_addr_0x00709700:    push               esi                                           // 0x00709700    56
                         mov.s              esi, ecx                                      // 0x00709701    8bf1
                         call               ??0FixedObject@@QAE@XZ                        // 0x00709703    e87846e2ff
                         mov.s              ecx, esi                                      // 0x00709708    8bce
                         mov                dword ptr [esi], 0x008dc894                   // 0x0070970a    c70694c88d00
                         call               _jmp_addr_0x0052f690                          // 0x00709710    e87b5fe2ff
                         xor.s              eax, eax                                      // 0x00709715    33c0
                         {disp8} mov        dword ptr [esi + 0x58], eax                   // 0x00709717    894658
                         {disp32} mov       dword ptr [esi + 0x00000088], eax             // 0x0070971a    898688000000
                         mov.s              ecx, esi                                      // 0x00709720    8bce
                         mov                dword ptr [esi], 0x0094228c                   // 0x00709722    c7068c229400
                         call               _jmp_addr_0x00709910                          // 0x00709728    e8e3010000
                         mov.s              eax, esi                                      // 0x0070972d    8bc6
                         pop                esi                                           // 0x0070972f    5e
                         ret                                                              // 0x00709730    c3
                         nop                                                              // 0x00709731    90
                         nop                                                              // 0x00709732    90
                         nop                                                              // 0x00709733    90
                         nop                                                              // 0x00709734    90
                         nop                                                              // 0x00709735    90
                         nop                                                              // 0x00709736    90
                         nop                                                              // 0x00709737    90
                         nop                                                              // 0x00709738    90
                         nop                                                              // 0x00709739    90
                         nop                                                              // 0x0070973a    90
                         nop                                                              // 0x0070973b    90
                         nop                                                              // 0x0070973c    90
                         nop                                                              // 0x0070973d    90
                         nop                                                              // 0x0070973e    90
                         nop                                                              // 0x0070973f    90
?IsScriptHighlight@ScriptHighlight@@UAEIXZ:
                         mov                eax, 0x00000001                               // 0x00709740    b801000000
                         ret                                                              // 0x00709745    c3
                         nop                                                              // 0x00709746    90
                         nop                                                              // 0x00709747    90
                         nop                                                              // 0x00709748    90
                         nop                                                              // 0x00709749    90
                         nop                                                              // 0x0070974a    90
                         nop                                                              // 0x0070974b    90
                         nop                                                              // 0x0070974c    90
                         nop                                                              // 0x0070974d    90
                         nop                                                              // 0x0070974e    90
                         nop                                                              // 0x0070974f    90
?IsActive@ScriptHighlight@@UBEIXZ:
                         {disp8} mov        eax, dword ptr [ecx + 0x60]                   // 0x00709750    8b4160
                         ret                                                              // 0x00709753    c3
                         nop                                                              // 0x00709754    90
                         nop                                                              // 0x00709755    90
                         nop                                                              // 0x00709756    90
                         nop                                                              // 0x00709757    90
                         nop                                                              // 0x00709758    90
                         nop                                                              // 0x00709759    90
                         nop                                                              // 0x0070975a    90
                         nop                                                              // 0x0070975b    90
                         nop                                                              // 0x0070975c    90
                         nop                                                              // 0x0070975d    90
                         nop                                                              // 0x0070975e    90
                         nop                                                              // 0x0070975f    90
?PhysicsEditorCreate@ScriptHighlight@@UAEXH@Z:
                         ret                0x0004                                        // 0x00709760    c20400
                         nop                                                              // 0x00709763    90
                         nop                                                              // 0x00709764    90
                         nop                                                              // 0x00709765    90
                         nop                                                              // 0x00709766    90
                         nop                                                              // 0x00709767    90
                         nop                                                              // 0x00709768    90
                         nop                                                              // 0x00709769    90
                         nop                                                              // 0x0070976a    90
                         nop                                                              // 0x0070976b    90
                         nop                                                              // 0x0070976c    90
                         nop                                                              // 0x0070976d    90
                         nop                                                              // 0x0070976e    90
                         nop                                                              // 0x0070976f    90
?ValidForPlaceInHand@ScriptHighlight@@UAEIPAVGInterfaceStatus@@@Z:
                         xor.s              eax, eax                                      // 0x00709770    33c0
                         ret                0x0004                                        // 0x00709772    c20400
                         nop                                                              // 0x00709775    90
                         nop                                                              // 0x00709776    90
                         nop                                                              // 0x00709777    90
                         nop                                                              // 0x00709778    90
                         nop                                                              // 0x00709779    90
                         nop                                                              // 0x0070977a    90
                         nop                                                              // 0x0070977b    90
                         nop                                                              // 0x0070977c    90
                         nop                                                              // 0x0070977d    90
                         nop                                                              // 0x0070977e    90
                         nop                                                              // 0x0070977f    90
?ApplyOnlyAfterReleased@ScriptHighlight@@UAEIXZ:
                         xor.s              eax, eax                                      // 0x00709780    33c0
                         ret                                                              // 0x00709782    c3
                         nop                                                              // 0x00709783    90
                         nop                                                              // 0x00709784    90
                         nop                                                              // 0x00709785    90
                         nop                                                              // 0x00709786    90
                         nop                                                              // 0x00709787    90
                         nop                                                              // 0x00709788    90
                         nop                                                              // 0x00709789    90
                         nop                                                              // 0x0070978a    90
                         nop                                                              // 0x0070978b    90
                         nop                                                              // 0x0070978c    90
                         nop                                                              // 0x0070978d    90
                         nop                                                              // 0x0070978e    90
                         nop                                                              // 0x0070978f    90
?ValidToApplyThisToMapCoord@ScriptHighlight@@UAEIPAVGInterfaceStatus@@ABUMapCoords@@@Z:
                         xor.s              eax, eax                                      // 0x00709790    33c0
                         ret                0x0008                                        // 0x00709792    c20800
                         nop                                                              // 0x00709795    90
                         nop                                                              // 0x00709796    90
                         nop                                                              // 0x00709797    90
                         nop                                                              // 0x00709798    90
                         nop                                                              // 0x00709799    90
                         nop                                                              // 0x0070979a    90
                         nop                                                              // 0x0070979b    90
                         nop                                                              // 0x0070979c    90
                         nop                                                              // 0x0070979d    90
                         nop                                                              // 0x0070979e    90
                         nop                                                              // 0x0070979f    90
?CanBeSleptNextToByCreature@ScriptHighlight@@UAEIPAVCreature@@@Z:
                         xor.s              eax, eax                                      // 0x007097a0    33c0
                         ret                0x0004                                        // 0x007097a2    c20400
                         nop                                                              // 0x007097a5    90
                         nop                                                              // 0x007097a6    90
                         nop                                                              // 0x007097a7    90
                         nop                                                              // 0x007097a8    90
                         nop                                                              // 0x007097a9    90
                         nop                                                              // 0x007097aa    90
                         nop                                                              // 0x007097ab    90
                         nop                                                              // 0x007097ac    90
                         nop                                                              // 0x007097ad    90
                         nop                                                              // 0x007097ae    90
                         nop                                                              // 0x007097af    90
?CanBeDestroyedByStoning@ScriptHighlight@@UAEIPAVCreature@@@Z:
                         xor.s              eax, eax                                      // 0x007097b0    33c0
                         ret                0x0004                                        // 0x007097b2    c20400
                         nop                                                              // 0x007097b5    90
                         nop                                                              // 0x007097b6    90
                         nop                                                              // 0x007097b7    90
                         nop                                                              // 0x007097b8    90
                         nop                                                              // 0x007097b9    90
                         nop                                                              // 0x007097ba    90
                         nop                                                              // 0x007097bb    90
                         nop                                                              // 0x007097bc    90
                         nop                                                              // 0x007097bd    90
                         nop                                                              // 0x007097be    90
                         nop                                                              // 0x007097bf    90
?CanBeSetOnFire@ScriptHighlight@@UAEIPAVCreature@@@Z:
                         xor.s              eax, eax                                      // 0x007097c0    33c0
                         ret                0x0004                                        // 0x007097c2    c20400
                         nop                                                              // 0x007097c5    90
                         nop                                                              // 0x007097c6    90
                         nop                                                              // 0x007097c7    90
                         nop                                                              // 0x007097c8    90
                         nop                                                              // 0x007097c9    90
                         nop                                                              // 0x007097ca    90
                         nop                                                              // 0x007097cb    90
                         nop                                                              // 0x007097cc    90
                         nop                                                              // 0x007097cd    90
                         nop                                                              // 0x007097ce    90
                         nop                                                              // 0x007097cf    90
?CanBeCrushed@ScriptHighlight@@UAEIXZ:
                         xor.s              eax, eax                                      // 0x007097d0    33c0
                         ret                                                              // 0x007097d2    c3
                         nop                                                              // 0x007097d3    90
                         nop                                                              // 0x007097d4    90
                         nop                                                              // 0x007097d5    90
                         nop                                                              // 0x007097d6    90
                         nop                                                              // 0x007097d7    90
                         nop                                                              // 0x007097d8    90
                         nop                                                              // 0x007097d9    90
                         nop                                                              // 0x007097da    90
                         nop                                                              // 0x007097db    90
                         nop                                                              // 0x007097dc    90
                         nop                                                              // 0x007097dd    90
                         nop                                                              // 0x007097de    90
                         nop                                                              // 0x007097df    90
?IsEffectReceiver@ScriptHighlight@@UAEIPAVEffectValues@@@Z:
                         xor.s              eax, eax                                      // 0x007097e0    33c0
                         ret                0x0004                                        // 0x007097e2    c20400
                         nop                                                              // 0x007097e5    90
                         nop                                                              // 0x007097e6    90
                         nop                                                              // 0x007097e7    90
                         nop                                                              // 0x007097e8    90
                         nop                                                              // 0x007097e9    90
                         nop                                                              // 0x007097ea    90
                         nop                                                              // 0x007097eb    90
                         nop                                                              // 0x007097ec    90
                         nop                                                              // 0x007097ed    90
                         nop                                                              // 0x007097ee    90
                         nop                                                              // 0x007097ef    90
                         xor.s              eax, eax                                      // 0x007097f0    33c0
                         ret                0x0008                                        // 0x007097f2    c20800
                         nop                                                              // 0x007097f5    90
                         nop                                                              // 0x007097f6    90
                         nop                                                              // 0x007097f7    90
                         nop                                                              // 0x007097f8    90
                         nop                                                              // 0x007097f9    90
                         nop                                                              // 0x007097fa    90
                         nop                                                              // 0x007097fb    90
                         nop                                                              // 0x007097fc    90
                         nop                                                              // 0x007097fd    90
                         nop                                                              // 0x007097fe    90
                         nop                                                              // 0x007097ff    90
?ValidAsInterfaceTarget@ScriptHighlight@@UAEIXZ:
                         xor.s              eax, eax                                      // 0x00709800    33c0
                         ret                                                              // 0x00709802    c3
                         nop                                                              // 0x00709803    90
                         nop                                                              // 0x00709804    90
                         nop                                                              // 0x00709805    90
                         nop                                                              // 0x00709806    90
                         nop                                                              // 0x00709807    90
                         nop                                                              // 0x00709808    90
                         nop                                                              // 0x00709809    90
                         nop                                                              // 0x0070980a    90
                         nop                                                              // 0x0070980b    90
                         nop                                                              // 0x0070980c    90
                         nop                                                              // 0x0070980d    90
                         nop                                                              // 0x0070980e    90
                         nop                                                              // 0x0070980f    90
?CanBecomeAPhysicsObject@ScriptHighlight@@UAE_NXZ:
                         xor.s              eax, eax                                      // 0x00709810    33c0
                         ret                                                              // 0x00709812    c3
                         nop                                                              // 0x00709813    90
                         nop                                                              // 0x00709814    90
                         nop                                                              // 0x00709815    90
                         nop                                                              // 0x00709816    90
                         nop                                                              // 0x00709817    90
                         nop                                                              // 0x00709818    90
                         nop                                                              // 0x00709819    90
                         nop                                                              // 0x0070981a    90
                         nop                                                              // 0x0070981b    90
                         nop                                                              // 0x0070981c    90
                         nop                                                              // 0x0070981d    90
                         nop                                                              // 0x0070981e    90
                         nop                                                              // 0x0070981f    90
?InteractsWithPhysicsObjects@ScriptHighlight@@UAE_NXZ:
                         xor.s              al, al                                        // 0x00709820    32c0
                         ret                                                              // 0x00709822    c3
                         nop                                                              // 0x00709823    90
                         nop                                                              // 0x00709824    90
                         nop                                                              // 0x00709825    90
                         nop                                                              // 0x00709826    90
                         nop                                                              // 0x00709827    90
                         nop                                                              // 0x00709828    90
                         nop                                                              // 0x00709829    90
                         nop                                                              // 0x0070982a    90
                         nop                                                              // 0x0070982b    90
                         nop                                                              // 0x0070982c    90
                         nop                                                              // 0x0070982d    90
                         nop                                                              // 0x0070982e    90
                         nop                                                              // 0x0070982f    90
?CanBePickedUpByCreature@ScriptHighlight@@UAEIPAVCreature@@@Z:
                         xor.s              eax, eax                                      // 0x00709830    33c0
                         ret                0x0004                                        // 0x00709832    c20400
                         nop                                                              // 0x00709835    90
                         nop                                                              // 0x00709836    90
                         nop                                                              // 0x00709837    90
                         nop                                                              // 0x00709838    90
                         nop                                                              // 0x00709839    90
                         nop                                                              // 0x0070983a    90
                         nop                                                              // 0x0070983b    90
                         nop                                                              // 0x0070983c    90
                         nop                                                              // 0x0070983d    90
                         nop                                                              // 0x0070983e    90
                         nop                                                              // 0x0070983f    90
?InterfaceMustBeInInfluenceForInteraction@ScriptHighlight@@UAEIXZ:
                         xor.s              eax, eax                                      // 0x00709840    33c0
                         ret                                                              // 0x00709842    c3
                         nop                                                              // 0x00709843    90
                         nop                                                              // 0x00709844    90
                         nop                                                              // 0x00709845    90
                         nop                                                              // 0x00709846    90
                         nop                                                              // 0x00709847    90
                         nop                                                              // 0x00709848    90
                         nop                                                              // 0x00709849    90
                         nop                                                              // 0x0070984a    90
                         nop                                                              // 0x0070984b    90
                         nop                                                              // 0x0070984c    90
                         nop                                                              // 0x0070984d    90
                         nop                                                              // 0x0070984e    90
                         nop                                                              // 0x0070984f    90
?GetSaveType@ScriptHighlight@@UAEIXZ:
                         mov                eax, 0x0000003f                               // 0x00709850    b83f000000
                         ret                                                              // 0x00709855    c3
                         nop                                                              // 0x00709856    90
                         nop                                                              // 0x00709857    90
                         nop                                                              // 0x00709858    90
                         nop                                                              // 0x00709859    90
                         nop                                                              // 0x0070985a    90
                         nop                                                              // 0x0070985b    90
                         nop                                                              // 0x0070985c    90
                         nop                                                              // 0x0070985d    90
                         nop                                                              // 0x0070985e    90
                         nop                                                              // 0x0070985f    90
?GetDebugText@ScriptHighlight@@UAEPADXZ:
                         mov                eax, 0x00c205dc                               // 0x00709860    b8dc05c200
                         ret                                                              // 0x00709865    c3
                         nop                                                              // 0x00709866    90
                         nop                                                              // 0x00709867    90
                         nop                                                              // 0x00709868    90
                         nop                                                              // 0x00709869    90
                         nop                                                              // 0x0070986a    90
                         nop                                                              // 0x0070986b    90
                         nop                                                              // 0x0070986c    90
                         nop                                                              // 0x0070986d    90
                         nop                                                              // 0x0070986e    90
                         nop                                                              // 0x0070986f    90
??_GScriptHighlight@@UAEPAXI@Z:
                         push               esi                                           // 0x00709870    56
                         mov.s              esi, ecx                                      // 0x00709871    8bf1
                         call               _jmp_addr_0x00709940                          // 0x00709873    e8c8000000
                         test               byte ptr [esp + 0x08], 0x01                   // 0x00709878    f644240801
                         {disp8} je         _jmp_addr_0x0070988d                          // 0x0070987d    740e
                         push               0x0000008c                                    // 0x0070987f    688c000000
                         push               esi                                           // 0x00709884    56
                         call               ??3Base@@SAXPAXK@Z                          // 0x00709885    e8e6d0d2ff
                         add                esp, 0x08                                     // 0x0070988a    83c408
_jmp_addr_0x0070988d:    mov.s              eax, esi                                      // 0x0070988d    8bc6
                         pop                esi                                           // 0x0070988f    5e
                         ret                0x0004                                        // 0x00709890    c20400
                         nop                                                              // 0x00709893    90
                         nop                                                              // 0x00709894    90
                         nop                                                              // 0x00709895    90
                         nop                                                              // 0x00709896    90
                         nop                                                              // 0x00709897    90
                         nop                                                              // 0x00709898    90
                         nop                                                              // 0x00709899    90
                         nop                                                              // 0x0070989a    90
                         nop                                                              // 0x0070989b    90
                         nop                                                              // 0x0070989c    90
                         nop                                                              // 0x0070989d    90
                         nop                                                              // 0x0070989e    90
                         nop                                                              // 0x0070989f    90
_jmp_addr_0x007098a0:    {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x007098a0    8b442414
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x007098a4    8b542408
                         push               esi                                           // 0x007098a8    56
                         push               eax                                           // 0x007098a9    50
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x007098aa    8b44240c
                         mov.s              esi, ecx                                      // 0x007098ae    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x007098b0    8b4c2418
                         push               ecx                                           // 0x007098b4    51
                         push               edx                                           // 0x007098b5    52
                         push               eax                                           // 0x007098b6    50
                         mov.s              ecx, esi                                      // 0x007098b7    8bce
                         call               @__ct__11FixedObjectFRC9MapCoordsPC11GObjectInfoff@24                          // 0x007098b9    e80245e2ff
                         xor.s              eax, eax                                      // 0x007098be    33c0
                         {disp8} mov        dword ptr [esi + 0x58], eax                   // 0x007098c0    894658
                         {disp32} mov       dword ptr [esi + 0x00000088], eax             // 0x007098c3    898688000000
                         mov.s              ecx, esi                                      // 0x007098c9    8bce
                         mov                dword ptr [esi], 0x0094228c                   // 0x007098cb    c7068c229400
                         call               _jmp_addr_0x00709910                          // 0x007098d1    e83a000000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x007098d6    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x00205c94]             // 0x007098dc    8b91945c2000
                         {disp32} lea       eax, dword ptr [ecx + 0x00205c94]             // 0x007098e2    8d81945c2000
                         {disp32} mov       dword ptr [esi + 0x00000088], edx             // 0x007098e8    899688000000
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x007098ee    8b4804
                         mov                dword ptr [eax], esi                          // 0x007098f1    8930
                         inc                ecx                                           // 0x007098f3    41
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x007098f4    894804
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x007098f7    8b442410
                         {disp8} mov        dword ptr [esi + 0x78], eax                   // 0x007098fb    894678
                         mov.s              eax, esi                                      // 0x007098fe    8bc6
                         pop                esi                                           // 0x00709900    5e
                         ret                0x0014                                        // 0x00709901    c21400
                         nop                                                              // 0x00709904    90
                         nop                                                              // 0x00709905    90
                         nop                                                              // 0x00709906    90
                         nop                                                              // 0x00709907    90
                         nop                                                              // 0x00709908    90
                         nop                                                              // 0x00709909    90
                         nop                                                              // 0x0070990a    90
                         nop                                                              // 0x0070990b    90
                         nop                                                              // 0x0070990c    90
                         nop                                                              // 0x0070990d    90
                         nop                                                              // 0x0070990e    90
                         nop                                                              // 0x0070990f    90
_jmp_addr_0x00709910:    xor.s              eax, eax                                      // 0x00709910    33c0
                         {disp8} mov        dword ptr [ecx + 0x64], eax                   // 0x00709912    894164
                         {disp8} mov        dword ptr [ecx + 0x68], eax                   // 0x00709915    894168
                         {disp8} mov        dword ptr [ecx + 0x60], eax                   // 0x00709918    894160
                         {disp8} mov        dword ptr [ecx + 0x5c], eax                   // 0x0070991b    89415c
                         {disp8} mov        dword ptr [ecx + 0x70], eax                   // 0x0070991e    894170
                         {disp8} mov        dword ptr [ecx + 0x6c], eax                   // 0x00709921    89416c
                         {disp8} mov        dword ptr [ecx + 0x74], eax                   // 0x00709924    894174
                         {disp8} mov        dword ptr [ecx + 0x78], eax                   // 0x00709927    894178
                         {disp8} mov        dword ptr [ecx + 0x7c], eax                   // 0x0070992a    89417c
                         {disp32} mov       dword ptr [ecx + 0x00000080], eax             // 0x0070992d    898180000000
                         {disp32} mov       dword ptr [ecx + 0x00000084], eax             // 0x00709933    898184000000
                         ret                                                              // 0x00709939    c3
                         nop                                                              // 0x0070993a    90
                         nop                                                              // 0x0070993b    90
                         nop                                                              // 0x0070993c    90
                         nop                                                              // 0x0070993d    90
                         nop                                                              // 0x0070993e    90
                         nop                                                              // 0x0070993f    90
_jmp_addr_0x00709940:    push               esi                                           // 0x00709940    56
                         mov.s              esi, ecx                                      // 0x00709941    8bf1
                         {disp8} mov        ecx, dword ptr [esi + 0x64]                   // 0x00709943    8b4e64
                         test               ecx, ecx                                      // 0x00709946    85c9
                         mov                dword ptr [esi], 0x0094228c                   // 0x00709948    c7068c229400
                         {disp8} je         _jmp_addr_0x0070995c                          // 0x0070994e    740c
                         call               ?Release@LH3DSprite@@QAEXXZ                   // 0x00709950    e8cb6b1300
                         {disp8} mov        dword ptr [esi + 0x64], 0x00000000            // 0x00709955    c7466400000000
_jmp_addr_0x0070995c:    {disp8} mov        ecx, dword ptr [esi + 0x68]                   // 0x0070995c    8b4e68
                         test               ecx, ecx                                      // 0x0070995f    85c9
                         {disp8} je         _jmp_addr_0x0070996f                          // 0x00709961    740c
                         mov                eax, dword ptr [ecx]                          // 0x00709963    8b01
                         call               dword ptr [eax + 4]                           // 0x00709965    ff5004
                         {disp8} mov        dword ptr [esi + 0x68], 0x00000000            // 0x00709968    c7466800000000
_jmp_addr_0x0070996f:    mov.s              ecx, esi                                      // 0x0070996f    8bce
                         call               _jmp_addr_0x0052eac0                          // 0x00709971    e84a51e2ff
                         pop                esi                                           // 0x00709976    5e
                         ret                                                              // 0x00709977    c3
                         nop                                                              // 0x00709978    90
                         nop                                                              // 0x00709979    90
                         nop                                                              // 0x0070997a    90
                         nop                                                              // 0x0070997b    90
                         nop                                                              // 0x0070997c    90
                         nop                                                              // 0x0070997d    90
                         nop                                                              // 0x0070997e    90
                         nop                                                              // 0x0070997f    90
?ToBeDeleted@ScriptHighlight@@UAEXH@Z:
                         {disp32} mov       eax, dword ptr [_game]                        // 0x00709980    a15c19d000
                         {disp32} lea       edx, dword ptr [eax + 0x00205c94]             // 0x00709985    8d90945c2000
                         mov                eax, dword ptr [edx]                          // 0x0070998b    8b02
                         push               esi                                           // 0x0070998d    56
                         mov.s              esi, ecx                                      // 0x0070998e    8bf1
                         cmp.s              eax, esi                                      // 0x00709990    3bc6
                         push               edi                                           // 0x00709992    57
                         {disp8} jne        _jmp_addr_0x007099a8                          // 0x00709993    7513
                         {disp8} mov        eax, dword ptr [edx + 0x04]                   // 0x00709995    8b4204
                         {disp32} mov       ecx, dword ptr [esi + 0x00000088]             // 0x00709998    8b8e88000000
                         dec                eax                                           // 0x0070999e    48
                         mov                dword ptr [edx], ecx                          // 0x0070999f    890a
                         {disp8} mov        dword ptr [edx + 0x04], eax                   // 0x007099a1    894204
                         xor.s              edi, edi                                      // 0x007099a4    33ff
                         {disp8} jmp        _jmp_addr_0x007099cf                          // 0x007099a6    eb27
_jmp_addr_0x007099a8:    xor.s              edi, edi                                      // 0x007099a8    33ff
                         cmp.s              eax, edi                                      // 0x007099aa    3bc7
                         {disp8} je         _jmp_addr_0x007099d5                          // 0x007099ac    7427
_jmp_addr_0x007099ae:    {disp32} mov       ecx, dword ptr [eax + 0x00000088]             // 0x007099ae    8b8888000000
                         cmp.s              ecx, esi                                      // 0x007099b4    3bce
                         {disp8} je         _jmp_addr_0x007099c0                          // 0x007099b6    7408
                         mov.s              eax, ecx                                      // 0x007099b8    8bc1
                         cmp.s              eax, edi                                      // 0x007099ba    3bc7
                         {disp8} jne        _jmp_addr_0x007099ae                          // 0x007099bc    75f0
                         {disp8} jmp        _jmp_addr_0x007099d5                          // 0x007099be    eb15
_jmp_addr_0x007099c0:    {disp32} mov       ecx, dword ptr [esi + 0x00000088]             // 0x007099c0    8b8e88000000
                         {disp32} mov       dword ptr [eax + 0x00000088], ecx             // 0x007099c6    898888000000
                         dec                dword ptr [edx + 0x04]                        // 0x007099cc    ff4a04
_jmp_addr_0x007099cf:    {disp32} mov       dword ptr [esi + 0x00000088], edi             // 0x007099cf    89be88000000
_jmp_addr_0x007099d5:    {disp8} mov        ecx, dword ptr [esi + 0x6c]                   // 0x007099d5    8b4e6c
                         cmp.s              ecx, edi                                      // 0x007099d8    3bcf
                         {disp8} je         _jmp_addr_0x007099e6                          // 0x007099da    740a
                         mov                edx, dword ptr [ecx]                          // 0x007099dc    8b11
                         push               0x1                                           // 0x007099de    6a01
                         call               dword ptr [edx + 4]                           // 0x007099e0    ff5204
                         {disp8} mov        dword ptr [esi + 0x6c], edi                   // 0x007099e3    897e6c
_jmp_addr_0x007099e6:    {disp8} mov        ecx, dword ptr [esi + 0x70]                   // 0x007099e6    8b4e70
                         cmp.s              ecx, edi                                      // 0x007099e9    3bcf
                         {disp8} je         _jmp_addr_0x007099f7                          // 0x007099eb    740a
                         mov                eax, dword ptr [ecx]                          // 0x007099ed    8b01
                         push               0x1                                           // 0x007099ef    6a01
                         call               dword ptr [eax + 4]                           // 0x007099f1    ff5004
                         {disp8} mov        dword ptr [esi + 0x70], edi                   // 0x007099f4    897e70
_jmp_addr_0x007099f7:    {disp8} mov        ecx, dword ptr [esi + 0x74]                   // 0x007099f7    8b4e74
                         cmp.s              ecx, edi                                      // 0x007099fa    3bcf
                         {disp8} je         _jmp_addr_0x00709a06                          // 0x007099fc    7408
                         call               _jmp_addr_0x006ca7d0                          // 0x007099fe    e8cd0dfcff
                         {disp8} mov        dword ptr [esi + 0x74], edi                   // 0x00709a03    897e74
_jmp_addr_0x00709a06:    {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x00709a06    8b4c240c
                         push               ecx                                           // 0x00709a0a    51
                         mov.s              ecx, esi                                      // 0x00709a0b    8bce
                         call               ?ToBeDeleted@Object@@UAEXH@Z                  // 0x00709a0d    e85eccf2ff
                         pop                edi                                           // 0x00709a12    5f
                         pop                esi                                           // 0x00709a13    5e
                         ret                0x0004                                        // 0x00709a14    c20400
                         nop                                                              // 0x00709a17    90
                         nop                                                              // 0x00709a18    90
                         nop                                                              // 0x00709a19    90
                         nop                                                              // 0x00709a1a    90
                         nop                                                              // 0x00709a1b    90
                         nop                                                              // 0x00709a1c    90
                         nop                                                              // 0x00709a1d    90
                         nop                                                              // 0x00709a1e    90
                         nop                                                              // 0x00709a1f    90
_jmp_addr_0x00709a20:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00709a20    8b442404
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x00709a24    8b542408
                         {disp8} mov        dword ptr [ecx + 0x78], eax                   // 0x00709a28    894178
                         {disp32} mov       dword ptr [ecx + 0x00000084], edx             // 0x00709a2b    899184000000
                         ret                0x0008                                        // 0x00709a31    c20800
                         nop                                                              // 0x00709a34    90
                         nop                                                              // 0x00709a35    90
                         nop                                                              // 0x00709a36    90
                         nop                                                              // 0x00709a37    90
                         nop                                                              // 0x00709a38    90
                         nop                                                              // 0x00709a39    90
                         nop                                                              // 0x00709a3a    90
                         nop                                                              // 0x00709a3b    90
                         nop                                                              // 0x00709a3c    90
                         nop                                                              // 0x00709a3d    90
                         nop                                                              // 0x00709a3e    90
                         nop                                                              // 0x00709a3f    90
_jmp_addr_0x00709a40:    push               esi                                           // 0x00709a40    56
                         push               edi                                           // 0x00709a41    57
                         push               0x7e                                          // 0x00709a42    6a7e
                         push               0x00c205f0                                    // 0x00709a44    68f005c200
                         push               0x0000008c                                    // 0x00709a49    688c000000
                         call               ?__nw@Base@@SAPAXK@Z                          // 0x00709a4e    e89dccd2ff
                         add                esp, 0x0c                                     // 0x00709a53    83c40c
                         test               eax, eax                                      // 0x00709a56    85c0
                         {disp8} je         _jmp_addr_0x00709a90                          // 0x00709a58    7436
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x00709a5a    8b4c241c
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x00709a5e    8b542418
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x00709a62    8b7c240c
                         push               ecx                                           // 0x00709a66    51
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x00709a67    8b4c2418
                         push               edx                                           // 0x00709a6b    52
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x00709a6c    8b542418
                         push               ecx                                           // 0x00709a70    51
                         push               edx                                           // 0x00709a71    52
                         push               edi                                           // 0x00709a72    57
                         mov.s              ecx, eax                                      // 0x00709a73    8bc8
                         call               _jmp_addr_0x007098a0                          // 0x00709a75    e826feffff
                         mov.s              esi, eax                                      // 0x00709a7a    8bf0
                         test               esi, esi                                      // 0x00709a7c    85f6
                         {disp8} je         _jmp_addr_0x00709a8b                          // 0x00709a7e    740b
                         mov                eax, dword ptr [esi]                          // 0x00709a80    8b06
                         push               edi                                           // 0x00709a82    57
                         mov.s              ecx, esi                                      // 0x00709a83    8bce
                         call               dword ptr [eax + 0x658]                       // 0x00709a85    ff9058060000
_jmp_addr_0x00709a8b:    pop                edi                                           // 0x00709a8b    5f
                         mov.s              eax, esi                                      // 0x00709a8c    8bc6
                         pop                esi                                           // 0x00709a8e    5e
                         ret                                                              // 0x00709a8f    c3
_jmp_addr_0x00709a90:    pop                edi                                           // 0x00709a90    5f
                         xor.s              eax, eax                                      // 0x00709a91    33c0
                         pop                esi                                           // 0x00709a93    5e
                         ret                                                              // 0x00709a94    c3
                         nop                                                              // 0x00709a95    90
                         nop                                                              // 0x00709a96    90
                         nop                                                              // 0x00709a97    90
                         nop                                                              // 0x00709a98    90
                         nop                                                              // 0x00709a99    90
                         nop                                                              // 0x00709a9a    90
                         nop                                                              // 0x00709a9b    90
                         nop                                                              // 0x00709a9c    90
                         nop                                                              // 0x00709a9d    90
                         nop                                                              // 0x00709a9e    90
                         nop                                                              // 0x00709a9f    90
?CallVirtualFunctionsForCreation@ScriptHighlight@@UAEXABUMapCoords@@@Z:
                         sub                esp, 0x20                                     // 0x00709aa0    83ec20
                         push               ebp                                           // 0x00709aa3    55
                         {disp8} mov        ebp, dword ptr [esp + 0x28]                   // 0x00709aa4    8b6c2428
                         push               esi                                           // 0x00709aa8    56
                         push               edi                                           // 0x00709aa9    57
                         mov.s              esi, ecx                                      // 0x00709aaa    8bf1
                         push               ebp                                           // 0x00709aac    55
                         call               ?CallVirtualFunctionsForCreation@SingleMapFixed@@UAEXABUMapCoords@@@Z                          // 0x00709aad    e8ce4de2ff
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x00709ab2    8b4e40
                         push               0x0                                           // 0x00709ab5    6a00
                         call               _jmp_addr_0x0080b440                          // 0x00709ab7    e884191000
                         mov.s              ecx, esi                                      // 0x00709abc    8bce
                         call               ?IsDidYouKnow@ScriptHighlight@@QAE_NXZ        // 0x00709abe    e85d110000
                         test               eax, eax                                      // 0x00709ac3    85c0
                         {disp8} jne        _jmp_addr_0x00709ad4                          // 0x00709ac5    750d
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x00709ac7    8b4e40
                         mov                eax, dword ptr [ecx]                          // 0x00709aca    8b01
                         xor.s              edx, edx                                      // 0x00709acc    33d2
                         call               dword ptr [eax + 0x98]                        // 0x00709ace    ff9098000000
_jmp_addr_0x00709ad4:    push               ebx                                           // 0x00709ad4    53
                         mov                ebx, 0x00000001                               // 0x00709ad5    bb01000000
                         mov.s              edx, ebx                                      // 0x00709ada    8bd3
                         mov.s              ecx, ebx                                      // 0x00709adc    8bcb
                         call               ?Create@LH3DSprite@@SAPAV1@JH@Z               // 0x00709ade    e8bd691300
                         test               eax, eax                                      // 0x00709ae3    85c0
                         {disp8} mov        dword ptr [esi + 0x64], eax                   // 0x00709ae5    894664
                         {disp8} je         _jmp_addr_0x00709af5                          // 0x00709ae8    740b
                         call               _jmp_addr_0x0057d590                          // 0x00709aea    e8a13ae7ff
                         {disp8} mov        ecx, dword ptr [esi + 0x64]                   // 0x00709aef    8b4e64
                         {disp8} mov        dword ptr [ecx + 0x2c], eax                   // 0x00709af2    89412c
_jmp_addr_0x00709af5:    xor.s              ecx, ecx                                      // 0x00709af5    33c9
                         call               @Create__10LH3DObjectFQ210LH3DObject10ObjectType@4                          // 0x00709af7    e8d4191000
                         {disp8} mov        dword ptr [esi + 0x68], eax                   // 0x00709afc    894668
                         {disp32} mov       edx, dword ptr [?g_current_pack@LH3DMesh@@2PAULH3DPack@@A]        // 0x00709aff    8b1534fee900
                         mov                edi, dword ptr [edx]                          // 0x00709b05    8b3a
                         mov                ecx, 0x0000020f                               // 0x00709b07    b90f020000
                         cmp.s              edi, ecx                                      // 0x00709b0c    3bf9
                         {disp8} jg         _jmp_addr_0x00709b12                          // 0x00709b0e    7f02
                         xor.s              ecx, ecx                                      // 0x00709b10    33c9
_jmp_addr_0x00709b12:    {disp8} mov        edx, dword ptr [edx + ecx * 0x4 + 0x04]       // 0x00709b12    8b548a04
                         mov                edi, dword ptr [eax]                          // 0x00709b16    8b38
                         push               0x0                                           // 0x00709b18    6a00
                         push               0x0                                           // 0x00709b1a    6a00
                         mov.s              ecx, eax                                      // 0x00709b1c    8bc8
                         call               dword ptr [edi + 0xf4]                        // 0x00709b1e    ff97f4000000
                         {disp8} mov        ecx, dword ptr [esi + 0x68]                   // 0x00709b24    8b4e68
                         mov                edx, dword ptr [ecx]                          // 0x00709b27    8b11
                         call               dword ptr [edx + 0xf8]                        // 0x00709b29    ff92f8000000
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x00709b2f    8d4c2410
                         push               ecx                                           // 0x00709b33    51
                         push               eax                                           // 0x00709b34    50
                         {disp8} mov        byte ptr [esp + 0x1b], bl                     // 0x00709b35    885c241b
                         {disp8} mov        byte ptr [esp + 0x1c], bl                     // 0x00709b39    885c241c
                         {disp8} mov        byte ptr [esp + 0x18], bl                     // 0x00709b3d    885c2418
                         {disp8} mov        byte ptr [esp + 0x19], 0x00                   // 0x00709b41    c644241900
                         {disp8} mov        byte ptr [esp + 0x1a], 0x00                   // 0x00709b46    c644241a00
                         call               ?SetMaterialProperties@GJUtils@@SAXPAULH3DMesh@@ABUMaterialProperties@@@Z                  // 0x00709b4b    e88046e7ff
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x00709b50    8b4e40
                         mov                eax, dword ptr [ecx]                          // 0x00709b53    8b01
                         add                esp, 0x08                                     // 0x00709b55    83c408
                         xor.s              edx, edx                                      // 0x00709b58    33d2
                         call               dword ptr [eax + 0x80]                        // 0x00709b5a    ff9080000000
                         mov.s              ecx, esi                                      // 0x00709b60    8bce
                         call               ?IsDidYouKnow@ScriptHighlight@@QAE_NXZ        // 0x00709b62    e8b9100000
                         test               eax, eax                                      // 0x00709b67    85c0
                         {disp8} je         _jmp_addr_0x00709b8a                          // 0x00709b69    741f
                         {disp32} mov       ecx, dword ptr [esi + 0x00000084]             // 0x00709b6b    8b8e84000000
                         {disp8} mov        edx, dword ptr [esi + 0x78]                   // 0x00709b71    8b5678
                         push               ecx                                           // 0x00709b74    51
                         push               edx                                           // 0x00709b75    52
                         call               _jmp_addr_0x0078cc10                          // 0x00709b76    e895300800
                         add                esp, 0x08                                     // 0x00709b7b    83c408
                         test               eax, eax                                      // 0x00709b7e    85c0
                         {disp8} je         _jmp_addr_0x00709b8a                          // 0x00709b80    7408
                         push               ebx                                           // 0x00709b82    53
                         mov.s              ecx, esi                                      // 0x00709b83    8bce
                         call               ?SetActivated@ScriptHighlight@@QAEXH@Z        // 0x00709b85    e8a60a0000
_jmp_addr_0x00709b8a:    {disp8} mov        eax, dword ptr [esi + 0x60]                   // 0x00709b8a    8b4660
                         test               eax, eax                                      // 0x00709b8d    85c0
                         {disp8} je         _jmp_addr_0x00709b9a                          // 0x00709b8f    7409
                         mov.s              ecx, esi                                      // 0x00709b91    8bce
                         call               _jmp_addr_0x0070a750                          // 0x00709b93    e8b80b0000
                         {disp8} jmp        _jmp_addr_0x00709ba4                          // 0x00709b98    eb0a
_jmp_addr_0x00709b9a:    mov                eax, dword ptr [esi]                          // 0x00709b9a    8b06
                         mov.s              ecx, esi                                      // 0x00709b9c    8bce
                         call               dword ptr [eax + 0x608]                       // 0x00709b9e    ff9008060000
_jmp_addr_0x00709ba4:    test               eax, eax                                      // 0x00709ba4    85c0
                         {disp32} mov       edx, dword ptr [?g_current_pack@LH3DMesh@@2PAULH3DPack@@A]        // 0x00709ba6    8b1534fee900
                         {disp8} jl         _jmp_addr_0x00709bb2                          // 0x00709bac    7c04
                         cmp                eax, dword ptr [edx]                          // 0x00709bae    3b02
                         {disp8} jl         _jmp_addr_0x00709bb4                          // 0x00709bb0    7c02
_jmp_addr_0x00709bb2:    xor.s              eax, eax                                      // 0x00709bb2    33c0
_jmp_addr_0x00709bb4:    {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x00709bb4    8b4e40
                         mov                edi, dword ptr [ecx]                          // 0x00709bb7    8b39
                         {disp8} mov        edx, dword ptr [edx + eax * 0x4 + 0x04]       // 0x00709bb9    8b548204
                         push               0x0                                           // 0x00709bbd    6a00
                         push               0x0                                           // 0x00709bbf    6a00
                         call               dword ptr [edi + 0xf4]                        // 0x00709bc1    ff97f4000000
                         test               byte ptr [esi + 0x0a], bl                     // 0x00709bc7    845e0a
                         pop                ebx                                           // 0x00709bca    5b
                         {disp8} jne        _jmp_addr_0x00709c30                          // 0x00709bcb    7563
                         {disp8} mov        ecx, dword ptr [esi + 0x28]                   // 0x00709bcd    8b4e28
                         {disp32} mov       edi, dword ptr [ecx + 0x00000108]             // 0x00709bd0    8bb908010000
                         test               edi, edi                                      // 0x00709bd6    85ff
                         {disp8} je         _jmp_addr_0x00709c28                          // 0x00709bd8    744e
                         push               0x0                                           // 0x00709bda    6a00
                         push               0x3f800000                                    // 0x00709bdc    680000803f
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                   // 0x00709be1    8d54241c
                         push               edx                                           // 0x00709be5    52
                         {disp8} lea        eax, dword ptr [esp + 0x2c]                   // 0x00709be6    8d44242c
                         push               eax                                           // 0x00709bea    50
                         mov.s              ecx, ebp                                      // 0x00709beb    8bcd
                         {disp8} mov        dword ptr [esp + 0x24], 0x00000000            // 0x00709bed    c744242400000000
                         {disp8} mov        dword ptr [esp + 0x28], 0x00000000            // 0x00709bf5    c744242800000000
                         {disp8} mov        dword ptr [esp + 0x2c], 0x00000000            // 0x00709bfd    c744242c00000000
                         call               @GetLHPoint__9MapCoordsCFv@12                 // 0x00709c05    e836c0efff
                         push               eax                                           // 0x00709c0a    50
                         push               edi                                           // 0x00709c0b    57
                         push               0x0                                           // 0x00709c0c    6a00
                         call               _Create__13PSysInterfaceFP5Spell13PARTICLE_TYPERC7LHPointRC7LHPointfQ213PSysInterface13NET_GAME_TYPE                          // 0x00709c0e    e8fd4cf8ff
                         add                esp, 0x18                                     // 0x00709c13    83c418
                         test               eax, eax                                      // 0x00709c16    85c0
                         {disp8} mov        dword ptr [esi + 0x6c], eax                   // 0x00709c18    89466c
                         {disp8} je         _jmp_addr_0x00709c28                          // 0x00709c1b    740b
                         mov                edx, dword ptr [eax]                          // 0x00709c1d    8b10
                         push               esi                                           // 0x00709c1f    56
                         mov.s              ecx, eax                                      // 0x00709c20    8bc8
                         call               dword ptr [edx + 0x114]                       // 0x00709c22    ff9214010000
_jmp_addr_0x00709c28:    call               _jmp_addr_0x006ca7a0                          // 0x00709c28    e8730bfcff
                         {disp8} mov        dword ptr [esi + 0x74], eax                   // 0x00709c2d    894674
_jmp_addr_0x00709c30:    pop                edi                                           // 0x00709c30    5f
                         pop                esi                                           // 0x00709c31    5e
                         pop                ebp                                           // 0x00709c32    5d
                         add                esp, 0x20                                     // 0x00709c33    83c420
                         ret                0x0004                                        // 0x00709c36    c20400
                         nop                                                              // 0x00709c39    90
                         nop                                                              // 0x00709c3a    90
                         nop                                                              // 0x00709c3b    90
                         nop                                                              // 0x00709c3c    90
                         nop                                                              // 0x00709c3d    90
                         nop                                                              // 0x00709c3e    90
                         nop                                                              // 0x00709c3f    90
_jmp_addr_0x00709c40:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00709c40    8b442404
                         {disp8} mov        dword ptr [ecx + 0x7c], 0x00000001            // 0x00709c44    c7417c01000000
                         {disp32} mov       dword ptr [ecx + 0x00000080], eax             // 0x00709c4b    898180000000
                         ret                0x0004                                        // 0x00709c51    c20400
                         nop                                                              // 0x00709c54    90
                         nop                                                              // 0x00709c55    90
                         nop                                                              // 0x00709c56    90
                         nop                                                              // 0x00709c57    90
                         nop                                                              // 0x00709c58    90
                         nop                                                              // 0x00709c59    90
                         nop                                                              // 0x00709c5a    90
                         nop                                                              // 0x00709c5b    90
                         nop                                                              // 0x00709c5c    90
                         nop                                                              // 0x00709c5d    90
                         nop                                                              // 0x00709c5e    90
                         nop                                                              // 0x00709c5f    90
?Draw@ScriptHighlight@@UAEXXZ:
                         sub                esp, 0x0000009c                               // 0x00709c60    81ec9c000000
                         push               ebp                                           // 0x00709c66    55
                         mov.s              ebp, ecx                                      // 0x00709c67    8be9
                         push               esi                                           // 0x00709c69    56
                         {disp8} lea        esi, dword ptr [ebp + 0x14]                   // 0x00709c6a    8d7514
                         mov.s              eax, esi                                      // 0x00709c6d    8bc6
                         mov                ecx, dword ptr [eax]                          // 0x00709c6f    8b08
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x00709c71    8b5004
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00709c74    8b4008
                         push               edi                                           // 0x00709c77    57
                         {disp8} mov        dword ptr [esp + 0x44], eax                   // 0x00709c78    89442444
                         {disp8} mov        eax, dword ptr [ebp + 0x5c]                   // 0x00709c7c    8b455c
                         xor.s              edi, edi                                      // 0x00709c7f    33ff
                         cmp.s              eax, edi                                      // 0x00709c81    3bc7
                         {disp8} mov        dword ptr [esp + 0x3c], ecx                   // 0x00709c83    894c243c
                         {disp8} mov        dword ptr [esp + 0x40], edx                   // 0x00709c87    89542440
                         {disp32} jne       _jmp_addr_0x0070a44c                          // 0x00709c8b    0f85bb070000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00709c91    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x00250090]             // 0x00709c97    8b9190002500
                         cmp                dword ptr [edx + 0x00000080], edi             // 0x00709c9d    39ba80000000
                         {disp8} jne        _jmp_addr_0x00709cb4                          // 0x00709ca3    750f
                         mov.s              ecx, ebp                                      // 0x00709ca5    8bcd
                         call               ?IsDidYouKnow@ScriptHighlight@@QAE_NXZ        // 0x00709ca7    e8740f0000
                         test               eax, eax                                      // 0x00709cac    85c0
                         {disp32} je        _jmp_addr_0x0070a44c                          // 0x00709cae    0f8498070000
_jmp_addr_0x00709cb4:    {disp8} mov        ecx, dword ptr [ebp + 0x40]                   // 0x00709cb4    8b4d40
                         cmp.s              ecx, edi                                      // 0x00709cb7    3bcf
                         {disp32} je        _jmp_addr_0x0070a44c                          // 0x00709cb9    0f848d070000
                         {disp8} mov        edx, dword ptr [ebp + 0x28]                   // 0x00709cbf    8b5528
                         sub                edx, 0x00d96390                               // 0x00709cc2    81ea9063d900
                         mov                eax, 0x78787879                               // 0x00709cc8    b879787878
                         imul               edx                                           // 0x00709ccd    f7ea
                         sar                edx, 7                                        // 0x00709ccf    c1fa07
                         mov.s              eax, edx                                      // 0x00709cd2    8bc2
                         shr                eax, 0x1f                                     // 0x00709cd4    c1e81f
                         add.s              edx, eax                                      // 0x00709cd7    03d0
                         {disp8} mov        dword ptr [esp + 0x38], edx                   // 0x00709cd9    89542438
                         mov                edx, dword ptr [ecx]                          // 0x00709cdd    8b11
                         call               dword ptr [edx + 0xf8]                        // 0x00709cdf    ff92f8000000
                         {disp8} mov        ecx, dword ptr [eax + 0x18]                   // 0x00709ce5    8b4818
                         {disp32} fild      dword ptr [data_bytes + 0x4e3ec0]             // 0x00709ce8    db05c09eea00
                         add                eax, 0x18                                     // 0x00709cee    83c018
                         {disp8} mov        dword ptr [esp + 0x2c], ecx                   // 0x00709cf1    894c242c
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x00709cf5    8b5004
                         {disp32} fmul      dword ptr [rdata_bytes + 0x99af4]             // 0x00709cf8    d80df42a9400
                         {disp8} mov        ecx, dword ptr [ebp + 0x40]                   // 0x00709cfe    8b4d40
                         {disp8} mov        dword ptr [esp + 0x30], edx                   // 0x00709d01    89542430
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00709d05    8b4008
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x00709d08    d95c240c
                         {disp8} mov        dword ptr [esp + 0x34], eax                   // 0x00709d0c    89442434
                         {disp8} fld        dword ptr [ecx + 0x48]                        // 0x00709d10    d94148
                         {disp8} mov        eax, dword ptr [ebp + 0x60]                   // 0x00709d13    8b4560
                         cmp.s              eax, edi                                      // 0x00709d16    3bc7
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00709d18    d95c241c
                         {disp8} je         _jmp_addr_0x00709d8f                          // 0x00709d1c    7471
                         mov.s              ecx, ebp                                      // 0x00709d1e    8bcd
                         call               ?IsDidYouKnow@ScriptHighlight@@QAE_NXZ        // 0x00709d20    e8fb0e0000
                         test               eax, eax                                      // 0x00709d25    85c0
                         {disp8} je         _jmp_addr_0x00709d8f                          // 0x00709d27    7466
                         mov.s              ecx, esi                                      // 0x00709d29    8bce
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x00709d2b    e860930f00
                         fstp               st(0)                                         // 0x00709d30    ddd8
                         fild               dword ptr [esi]                               // 0x00709d32    db06
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00709d34    8b0d5c19d000
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00709d3a    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x00709d40    d95c2420
                         {disp8} fild       dword ptr [esi + 0x04]                        // 0x00709d44    db4604
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00709d47    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x00709d4d    d95c2428
                         call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ           // 0x00709d51    e82a24e4ff
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4dbdb8]        // 0x00709d56    8b15b81dea00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4dbdc0]        // 0x00709d5c    8b0dc01dea00
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x00709d62    89542410
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00709d66    d9442410
                         {disp8} fsub       dword ptr [esp + 0x20]                        // 0x00709d6a    d8642420
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x00709d6e    894c2418
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00709d72    d9442418
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4dbdbc]        // 0x00709d76    a1bc1dea00
                         {disp8} fsub       dword ptr [esp + 0x28]                        // 0x00709d7b    d8642428
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x00709d7f    89442414
                         fxch               st(1)                                         // 0x00709d83    d9c9
                         fpatan                                                           // 0x00709d85    d9f3
                         {disp32} fadd      dword ptr [rdata_bytes + 0x1e8d8]             // 0x00709d87    d805d8788c00
                         {disp8} jmp        _jmp_addr_0x00709d97                          // 0x00709d8d    eb08
_jmp_addr_0x00709d8f:    {disp8} fld        dword ptr [esp + 0x1c]                        // 0x00709d8f    d944241c
                         {disp8} fadd       dword ptr [esp + 0x0c]                        // 0x00709d93    d844240c
_jmp_addr_0x00709d97:    fld                st(0)                                         // 0x00709d97    d9c0
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1dcac]             // 0x00709d99    d80dac6c8c00
                         call               _jmp_addr_0x007a1400                          // 0x00709d9f    e85c760900
                         {disp8} mov        edx, dword ptr [ebp + 0x00]                   // 0x00709da4    8b5500
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x00709da7    8944241c
                         {disp8} fild       dword ptr [esp + 0x1c]                        // 0x00709dab    db44241c
                         mov.s              ecx, ebp                                      // 0x00709daf    8bcd
                         {disp32} fmul      dword ptr [__real@40c90fdb]                   // 0x00709db1    d80d10b28a00
                         fsubr              st, st(1)                                     // 0x00709db7    d8e9
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00709db9    d95c241c
                         fstp               st(0)                                         // 0x00709dbd    ddd8
                         call               dword ptr [edx + 0x120]                       // 0x00709dbf    ff9220010000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00709dc5    8b0d5c19d000
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x00709dcb    d95c240c
                         call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ           // 0x00709dcf    e8ac23e4ff
                         {disp32} fld       dword ptr [eax + 0x00000118]                  // 0x00709dd4    d98018010000
                         add                eax, 0x00000118                               // 0x00709dda    0518010000
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00709ddf    d95c2410
                         {disp8} fld        dword ptr [eax + 0x30]                        // 0x00709de3    d94030
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00709de6    d95c2414
                         {disp8} fld        dword ptr [eax + 0x60]                        // 0x00709dea    d94060
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00709ded    8b442410
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x00709df1    8b4c2414
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x00709df5    d95c2418
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x00709df9    8b542418
                         {disp32} mov       dword ptr [esp + 0x0000009c], eax             // 0x00709dfd    8984249c000000
                         {disp8} mov        eax, dword ptr [esp + 0x44]                   // 0x00709e04    8b442444
                         {disp32} mov       dword ptr [esp + 0x000000a0], ecx             // 0x00709e08    898c24a0000000
                         {disp8} lea        ecx, dword ptr [esp + 0x3c]                   // 0x00709e0f    8d4c243c
                         {disp32} mov       dword ptr [esp + 0x000000a4], edx             // 0x00709e13    899424a4000000
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x00709e1a    89442420
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x00709e1e    e86d920f00
                         {disp8} fadd       dword ptr [esp + 0x20]                        // 0x00709e23    d8442420
                         {disp32} lea       ecx, dword ptr [esp + 0x0000009c]             // 0x00709e27    8d8c249c000000
                         push               ecx                                           // 0x00709e2e    51
                         {disp32} fstp      dword ptr [esp + 0x0000008c]                  // 0x00709e2f    d99c248c000000
                         {disp32} lea       edx, dword ptr [esp + 0x00000088]             // 0x00709e36    8d942488000000
                         {disp8} fild       dword ptr [esp + 0x40]                        // 0x00709e3d    db442440
                         push               edx                                           // 0x00709e41    52
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00709e42    d80da4a38a00
                         {disp32} fstp      dword ptr [esp + 0x0000008c]                  // 0x00709e48    d99c248c000000
                         {disp8} fild       dword ptr [esp + 0x48]                        // 0x00709e4f    db442448
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00709e53    d80da4a38a00
                         {disp32} fstp      dword ptr [esp + 0x00000094]                  // 0x00709e59    d99c2494000000
                         call               _jmp_addr_0x0074cde0                          // 0x00709e60    e87b2f0400
                         add                esp, 0x08                                     // 0x00709e65    83c408
                         call               _jmp_addr_0x007a1400                          // 0x00709e68    e893750900
                         mov.s              esi, eax                                      // 0x00709e6d    8bf0
                         cmp                esi, 0x1e                                     // 0x00709e6f    83fe1e
                         {disp8} jbe        _jmp_addr_0x00709e7b                          // 0x00709e72    7607
                         mov                esi, 0x0000001e                               // 0x00709e74    be1e000000
                         {disp8} jmp        _jmp_addr_0x00709e85                          // 0x00709e79    eb0a
_jmp_addr_0x00709e7b:    cmp                esi, 0x0a                                     // 0x00709e7b    83fe0a
                         {disp8} jae        _jmp_addr_0x00709e85                          // 0x00709e7e    7305
                         mov                esi, 0x0000000a                               // 0x00709e80    be0a000000
_jmp_addr_0x00709e85:    mov.s              ecx, ebp                                      // 0x00709e85    8bcd
                         call               ?IsDidYouKnow@ScriptHighlight@@QAE_NXZ        // 0x00709e87    e8940d0000
                         test               eax, eax                                      // 0x00709e8c    85c0
                         {disp8} jne        _jmp_addr_0x00709eaa                          // 0x00709e8e    751a
                         {disp8} mov        dword ptr [esp + 0x20], esi                   // 0x00709e90    89742420
                         {disp8} mov        dword ptr [esp + 0x24], edi                   // 0x00709e94    897c2424
                         {disp8} fild       qword ptr [esp + 0x20]                        // 0x00709e98    df6c2420
                         {disp8} fmul       dword ptr [esp + 0x0c]                        // 0x00709e9c    d84c240c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x263f8]             // 0x00709ea0    d80df8f38c00
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x00709ea6    d95c240c
_jmp_addr_0x00709eaa:    {disp8} mov        esi, dword ptr [ebp + 0x40]                   // 0x00709eaa    8b7540
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x00709ead    8d442410
                         push               eax                                           // 0x00709eb1    50
                         {disp8} lea        ecx, dword ptr [esp + 0x40]                   // 0x00709eb2    8d4c2440
                         push               ecx                                           // 0x00709eb6    51
                         call               ?ConvertMapCoordToLandscapePoint@GLandscape@@SAPAULHPoint@@ABUMapCoords@@AAU2@@Z              // 0x00709eb7    e89498f0ff
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x00709ebc    d9442424
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x00709ec0    8b542414
                         add                esp, 0x08                                     // 0x00709ec4    83c408
                         push               edx                                           // 0x00709ec7    52
                         push               ecx                                           // 0x00709ec8    51
                         fstp               dword ptr [esp]                               // 0x00709ec9    d91c24
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x00709ecc    8d542418
                         mov.s              ecx, esi                                      // 0x00709ed0    8bce
                         call               ?SetPosition@LH3DObject@@SAXABULHPoint@@MM@Z  // 0x00709ed2    e86992d1ff
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x00709ed7    d944242c
                         {disp8} mov        ecx, dword ptr [ebp + 0x40]                   // 0x00709edb    8b4d40
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x00709ede    d9442430
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x00709ee2    d9442434
                         {disp8} fmul       dword ptr [ecx + 0x2c]                        // 0x00709ee6    d8492c
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x00709ee9    d9442430
                         {disp8} fmul       dword ptr [ecx + 0x20]                        // 0x00709eed    d84920
                         faddp              st(1), st                                     // 0x00709ef0    dec1
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x00709ef2    d944242c
                         {disp8} fmul       dword ptr [ecx + 0x14]                        // 0x00709ef6    d84914
                         faddp              st(1), st                                     // 0x00709ef9    dec1
                         {disp8} fadd       dword ptr [ecx + 0x38]                        // 0x00709efb    d84138
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x00709efe    d95c242c
                         fld                st(1)                                         // 0x00709f02    d9c1
                         {disp8} fmul       dword ptr [ecx + 0x18]                        // 0x00709f04    d84918
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x00709f07    d9442434
                         {disp8} fmul       dword ptr [ecx + 0x30]                        // 0x00709f0b    d84930
                         faddp              st(1), st                                     // 0x00709f0e    dec1
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x00709f10    d9442430
                         {disp8} fmul       dword ptr [ecx + 0x24]                        // 0x00709f14    d84924
                         faddp              st(1), st                                     // 0x00709f17    dec1
                         {disp8} fadd       dword ptr [ecx + 0x3c]                        // 0x00709f19    d8413c
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x00709f1c    d95c2430
                         {disp8} fmul       dword ptr [ecx + 0x28]                        // 0x00709f20    d84928
                         fxch               st(1)                                         // 0x00709f23    d9c9
                         {disp8} fmul       dword ptr [ecx + 0x1c]                        // 0x00709f25    d8491c
                         faddp              st(1), st                                     // 0x00709f28    dec1
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x00709f2a    d9442434
                         {disp8} fmul       dword ptr [ecx + 0x34]                        // 0x00709f2e    d84934
                         faddp              st(1), st                                     // 0x00709f31    dec1
                         {disp8} fadd       dword ptr [ecx + 0x40]                        // 0x00709f33    d84140
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x00709f36    d95c2434
                         mov                eax, dword ptr [ecx]                          // 0x00709f3a    8b01
                         call               dword ptr [eax + 0xf8]                        // 0x00709f3c    ff90f8000000
                         {disp8} fld        dword ptr [eax + 0x24]                        // 0x00709f42    d94024
                         {disp8} mov        ecx, dword ptr [eax + 0x28]                   // 0x00709f45    8b4828
                         {disp8} fst        dword ptr [esp + 0x1c]                        // 0x00709f48    d954241c
                         {disp8} mov        edx, dword ptr [eax + 0x2c]                   // 0x00709f4c    8b502c
                         add                eax, 0x24                                     // 0x00709f4f    83c024
                         {disp8} mov        eax, dword ptr [ebp + 0x40]                   // 0x00709f52    8b4540
                         add                eax, 0x14                                     // 0x00709f55    83c014
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x00709f58    89542418
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00709f5c    d9442418
                         {disp8} fmul       dword ptr [eax + 0x18]                        // 0x00709f60    d84818
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x00709f63    894c2414
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00709f67    d9442414
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x00709f6b    894c2420
                         {disp8} fmul       dword ptr [eax + 0x0c]                        // 0x00709f6f    d8480c
                         faddp              st(1), st                                     // 0x00709f72    dec1
                         fxch               st(1)                                         // 0x00709f74    d9c9
                         fmul               dword ptr [eax]                               // 0x00709f76    d808
                         faddp              st(1), st                                     // 0x00709f78    dec1
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x00709f7a    d944241c
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x00709f7e    d84804
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00709f81    d9442418
                         {disp8} fmul       dword ptr [eax + 0x1c]                        // 0x00709f85    d8481c
                         faddp              st(1), st                                     // 0x00709f88    dec1
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00709f8a    d9442414
                         {disp8} fmul       dword ptr [eax + 0x10]                        // 0x00709f8e    d84810
                         faddp              st(1), st                                     // 0x00709f91    dec1
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x00709f93    d9442420
                         {disp8} fmul       dword ptr [eax + 0x14]                        // 0x00709f97    d84814
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x00709f9a    d944241c
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x00709f9e    d84808
                         faddp              st(1), st                                     // 0x00709fa1    dec1
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00709fa3    d9442418
                         mov.s              ecx, ebp                                      // 0x00709fa7    8bcd
                         {disp8} fmul       dword ptr [eax + 0x20]                        // 0x00709fa9    d84820
                         faddp              st(1), st                                     // 0x00709fac    dec1
                         fld                st(2)                                         // 0x00709fae    d9c2
                         fmul               st, st(3)                                     // 0x00709fb0    d8cb
                         fld                st(1)                                         // 0x00709fb2    d9c1
                         fmul               st, st(2)                                     // 0x00709fb4    d8ca
                         faddp              st(1), st                                     // 0x00709fb6    dec1
                         fld                st(2)                                         // 0x00709fb8    d9c2
                         fmul               st, st(3)                                     // 0x00709fba    d8cb
                         faddp              st(1), st                                     // 0x00709fbc    dec1
                         fsqrt                                                            // 0x00709fbe    d9fa
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x00709fc0    d95c240c
                         fstp               st(0)                                         // 0x00709fc4    ddd8
                         fstp               st(0)                                         // 0x00709fc6    ddd8
                         fstp               st(0)                                         // 0x00709fc8    ddd8
                         call               ?Draw@SingleMapFixed@@UAEXXZ                  // 0x00709fca    e831e1e0ff
                         {disp8} mov        eax, dword ptr [ebp + 0x60]                   // 0x00709fcf    8b4560
                         test               eax, eax                                      // 0x00709fd2    85c0
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4dbaf0]        // 0x00709fd4    8b15f01aea00
                         {disp8} mov        dword ptr [esp + 0x20], edx                   // 0x00709fda    89542420
                         {disp32} je        _jmp_addr_0x0070a10f                          // 0x00709fde    0f842b010000
                         mov.s              ecx, ebp                                      // 0x00709fe4    8bcd
                         call               ?IsDidYouKnow@ScriptHighlight@@QAE_NXZ        // 0x00709fe6    e8350c0000
                         test               eax, eax                                      // 0x00709feb    85c0
                         {disp32} jne       _jmp_addr_0x0070a10f                          // 0x00709fed    0f851c010000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00709ff3    8b0d5c19d000
                         call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ           // 0x00709ff9    e88221e4ff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4dbdb8]        // 0x00709ffe    a1b81dea00
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4dbdc0]        // 0x0070a003    8b15c01dea00
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0070a009    89442410
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0070a00d    d9442410
                         {disp8} fsub       dword ptr [esp + 0x2c]                        // 0x0070a011    d864242c
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x0070a015    89542418
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x0070a019    d9442418
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4dbdbc]        // 0x0070a01d    8b0dbc1dea00
                         {disp8} fsub       dword ptr [esp + 0x34]                        // 0x0070a023    d8642434
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x0070a027    894c2414
                         fxch               st(1)                                         // 0x0070a02b    d9c9
                         {disp8} lea        ecx, dword ptr [esp + 0x48]                   // 0x0070a02d    8d4c2448
                         fpatan                                                           // 0x0070a031    d9f3
                         {disp32} fadd      dword ptr [rdata_bytes + 0x1e8d8]             // 0x0070a033    d805d8788c00
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0070a039    d95c241c
                         call               ?SetIdentity@LHMatrix@@QAEXXZ                 // 0x0070a03d    e8be94cfff
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x0070a042    d944241c
                         {disp8} mov        ecx, dword ptr [esp + 0x30]                   // 0x0070a046    8b4c2430
                         fcos                                                             // 0x0070a04a    d9ff
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x0070a04c    8b44242c
                         {disp8} mov        edi, dword ptr [ebp + 0x68]                   // 0x0070a050    8b7d68
                         {disp8} mov        edx, dword ptr [esp + 0x34]                   // 0x0070a053    8b542434
                         {disp8} mov        dword ptr [esp + 0x70], ecx                   // 0x0070a057    894c2470
                         {disp8} mov        dword ptr [esp + 0x6c], eax                   // 0x0070a05b    8944246c
                         add                edi, 0x14                                     // 0x0070a05f    83c714
                         {disp8} mov        dword ptr [esp + 0x74], edx                   // 0x0070a062    89542474
                         mov                ecx, 0x0000000c                               // 0x0070a066    b90c000000
                         {disp8} lea        esi, dword ptr [esp + 0x48]                   // 0x0070a06b    8d742448
                         {disp8} fst        dword ptr [esp + 0x68]                        // 0x0070a06f    d9542468
                         {disp8} fstp       dword ptr [esp + 0x48]                        // 0x0070a073    d95c2448
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x0070a077    d944241c
                         fsin                                                             // 0x0070a07b    d9fe
                         {disp8} fst        dword ptr [esp + 0x50]                        // 0x0070a07d    d9542450
                         fchs                                                             // 0x0070a081    d9e0
                         {disp8} fstp       dword ptr [esp + 0x60]                        // 0x0070a083    d95c2460
                         {disp8} fld        dword ptr [esp + 0x54]                        // 0x0070a087    d9442454
                         {disp32} fmul      dword ptr [rdata_bytes + 0x19c50]             // 0x0070a08b    d80d502c8c00
                         {disp8} fstp       dword ptr [esp + 0x54]                        // 0x0070a091    d95c2454
                         {disp8} fld        dword ptr [esp + 0x58]                        // 0x0070a095    d9442458
                         {disp32} fmul      dword ptr [rdata_bytes + 0x19c50]             // 0x0070a099    d80d502c8c00
                         {disp8} fstp       dword ptr [esp + 0x58]                        // 0x0070a09f    d95c2458
                         {disp8} fld        dword ptr [esp + 0x5c]                        // 0x0070a0a3    d944245c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x19c50]             // 0x0070a0a7    d80d502c8c00
                         {disp8} fstp       dword ptr [esp + 0x5c]                        // 0x0070a0ad    d95c245c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0070a0b1    f3a5
                         {disp8} mov        eax, dword ptr [ebp + 0x68]                   // 0x0070a0b3    8b4568
                         {disp8} mov        dword ptr [eax + 0x44], 0x40400000            // 0x0070a0b6    c7404400004040
                         cmp                dword ptr [esp + 0x38], 0x02                  // 0x0070a0bd    837c243802
                         {disp8} jne        _jmp_addr_0x0070a0cb                          // 0x0070a0c2    7507
                         mov                edx, 0x14b4dcff                               // 0x0070a0c4    baffdcb414
                         {disp8} jmp        _jmp_addr_0x0070a0e8                          // 0x0070a0c9    eb1d
_jmp_addr_0x0070a0cb:    call               _jmp_addr_0x0070a510                          // 0x0070a0cb    e840040000
                         call               _jmp_addr_0x007a1400                          // 0x0070a0d0    e82b730900
                         mov                cl, 0x50                                      // 0x0070a0d5    b150
                         imul               cl                                            // 0x0070a0d7    f6e9
                         and                eax, 0x000000ff                               // 0x0070a0d9    25ff000000
                         shl                eax, 0x18                                     // 0x0070a0de    c1e018
                         or                 eax, 0xffff00                                 // 0x0070a0e1    0d00ffff00
                         mov.s              edx, eax                                      // 0x0070a0e6    8bd0
_jmp_addr_0x0070a0e8:    {disp8} mov        ecx, dword ptr [ebp + 0x68]                   // 0x0070a0e8    8b4d68
                         mov                eax, dword ptr [ecx]                          // 0x0070a0eb    8b01
                         push               0x0                                           // 0x0070a0ed    6a00
                         call               dword ptr [eax + 0x2c]                        // 0x0070a0ef    ff502c
                         {disp8} mov        ecx, dword ptr [ebp + 0x68]                   // 0x0070a0f2    8b4d68
                         mov                eax, dword ptr [ecx]                          // 0x0070a0f5    8b01
                         mov                edx, 0x00000001                               // 0x0070a0f7    ba01000000
                         call               dword ptr [eax + 0x48]                        // 0x0070a0fc    ff5048
                         {disp8} mov        ecx, dword ptr [ebp + 0x68]                   // 0x0070a0ff    8b4d68
                         mov                edx, dword ptr [ecx]                          // 0x0070a102    8b11
                         call               dword ptr [edx + 0x100]                       // 0x0070a104    ff9200010000
                         mov                edi, 0x00000001                               // 0x0070a10a    bf01000000
_jmp_addr_0x0070a10f:    {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x0070a10f    8b44242c
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x0070a113    d9442430
                         {disp8} fadd       dword ptr [esp + 0x0c]                        // 0x0070a117    d844240c
                         {disp8} mov        ecx, dword ptr [esp + 0x34]                   // 0x0070a11b    8b4c2434
                         {disp32} mov       dword ptr [esp + 0x00000090], eax             // 0x0070a11f    89842490000000
                         {disp8} mov        eax, dword ptr [ebp + 0x6c]                   // 0x0070a126    8b456c
                         test               eax, eax                                      // 0x0070a129    85c0
                         {disp32} fstp      dword ptr [esp + 0x00000094]                  // 0x0070a12b    d99c2494000000
                         {disp32} mov       dword ptr [esp + 0x00000098], ecx             // 0x0070a132    898c2498000000
                         {disp32} je        _jmp_addr_0x0070a1c7                          // 0x0070a139    0f8488000000
                         push               0x0                                           // 0x0070a13f    6a00
                         push               0x0                                           // 0x0070a141    6a00
                         push               0x0                                           // 0x0070a143    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x60]                   // 0x0070a145    8d4c2460
                         {disp8} mov        dword ptr [esp + 0x54], 0x00000000            // 0x0070a149    c744245400000000
                         {disp8} mov        dword ptr [esp + 0x58], 0x00000000            // 0x0070a151    c744245800000000
                         {disp8} mov        dword ptr [esp + 0x5c], 0x00000000            // 0x0070a159    c744245c00000000
                         call               @__ct__7LHPointFfff@20                        // 0x0070a161    e89a85d3ff
                         push               0x0                                           // 0x0070a166    6a00
                         push               0x0                                           // 0x0070a168    6a00
                         push               0x0                                           // 0x0070a16a    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x6c]                   // 0x0070a16c    8d4c246c
                         call               @__ct__7LHPointFfff@20                        // 0x0070a170    e88b85d3ff
                         push               0x0                                           // 0x0070a175    6a00
                         push               0x0                                           // 0x0070a177    6a00
                         push               0x0                                           // 0x0070a179    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x78]                   // 0x0070a17b    8d4c2478
                         call               @__ct__7LHPointFfff@20                        // 0x0070a17f    e87c85d3ff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3ec0]        // 0x0070a184    a1c09eea00
                         {disp8} mov        ecx, dword ptr [ebp + 0x6c]                   // 0x0070a189    8b4d6c
                         push               eax                                           // 0x0070a18c    50
                         {disp8} lea        eax, dword ptr [esp + 0x4c]                   // 0x0070a18d    8d44244c
                         {disp8} mov        dword ptr [esp + 0x7c], 0x3f800000            // 0x0070a191    c744247c0000803f
                         {disp32} mov       dword ptr [esp + 0x00000080], 0x00000000      // 0x0070a199    c784248000000000000000
                         {disp32} mov       byte ptr [esp + 0x00000084], 0x01             // 0x0070a1a4    c684248400000001
                         mov                edx, dword ptr [ecx]                          // 0x0070a1ac    8b11
                         push               eax                                           // 0x0070a1ae    50
                         call               dword ptr [edx + 0xfc]                        // 0x0070a1af    ff92fc000000
                         {disp8} mov        ecx, dword ptr [ebp + 0x6c]                   // 0x0070a1b5    8b4d6c
                         mov                edx, dword ptr [ecx]                          // 0x0070a1b8    8b11
                         push               0x1                                           // 0x0070a1ba    6a01
                         push               0x3f800000                                    // 0x0070a1bc    680000803f
                         call               dword ptr [edx + 0x104]                       // 0x0070a1c1    ff9204010000
_jmp_addr_0x0070a1c7:    {disp8} mov        ecx, dword ptr [ebp + 0x70]                   // 0x0070a1c7    8b4d70
                         test               ecx, ecx                                      // 0x0070a1ca    85c9
                         {disp32} je        _jmp_addr_0x0070a268                          // 0x0070a1cc    0f8496000000
                         mov                eax, dword ptr [ecx]                          // 0x0070a1d2    8b01
                         {disp8} lea        edx, dword ptr [esp + 0x2c]                   // 0x0070a1d4    8d54242c
                         push               edx                                           // 0x0070a1d8    52
                         call               dword ptr [eax + 0x124]                       // 0x0070a1d9    ff9024010000
                         push               0x0                                           // 0x0070a1df    6a00
                         push               0x0                                           // 0x0070a1e1    6a00
                         push               0x0                                           // 0x0070a1e3    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x60]                   // 0x0070a1e5    8d4c2460
                         {disp8} mov        dword ptr [esp + 0x54], 0x00000000            // 0x0070a1e9    c744245400000000
                         {disp8} mov        dword ptr [esp + 0x58], 0x00000000            // 0x0070a1f1    c744245800000000
                         {disp8} mov        dword ptr [esp + 0x5c], 0x00000000            // 0x0070a1f9    c744245c00000000
                         call               @__ct__7LHPointFfff@20                        // 0x0070a201    e8fa84d3ff
                         push               0x0                                           // 0x0070a206    6a00
                         push               0x0                                           // 0x0070a208    6a00
                         push               0x0                                           // 0x0070a20a    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x6c]                   // 0x0070a20c    8d4c246c
                         call               @__ct__7LHPointFfff@20                        // 0x0070a210    e8eb84d3ff
                         push               0x0                                           // 0x0070a215    6a00
                         push               0x0                                           // 0x0070a217    6a00
                         push               0x0                                           // 0x0070a219    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x78]                   // 0x0070a21b    8d4c2478
                         call               @__ct__7LHPointFfff@20                        // 0x0070a21f    e8dc84d3ff
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4e3ec0]        // 0x0070a224    8b15c09eea00
                         {disp8} mov        ecx, dword ptr [ebp + 0x70]                   // 0x0070a22a    8b4d70
                         push               edx                                           // 0x0070a22d    52
                         {disp8} lea        edx, dword ptr [esp + 0x4c]                   // 0x0070a22e    8d54244c
                         {disp8} mov        dword ptr [esp + 0x7c], 0x3f800000            // 0x0070a232    c744247c0000803f
                         {disp32} mov       dword ptr [esp + 0x00000080], 0x00000000      // 0x0070a23a    c784248000000000000000
                         {disp32} mov       byte ptr [esp + 0x00000084], 0x01             // 0x0070a245    c684248400000001
                         mov                eax, dword ptr [ecx]                          // 0x0070a24d    8b01
                         push               edx                                           // 0x0070a24f    52
                         call               dword ptr [eax + 0xfc]                        // 0x0070a250    ff90fc000000
                         {disp8} mov        ecx, dword ptr [ebp + 0x70]                   // 0x0070a256    8b4d70
                         mov                eax, dword ptr [ecx]                          // 0x0070a259    8b01
                         push               0x1                                           // 0x0070a25b    6a01
                         push               0x3f800000                                    // 0x0070a25d    680000803f
                         call               dword ptr [eax + 0x104]                       // 0x0070a262    ff9004010000
_jmp_addr_0x0070a268:    {disp8} mov        ecx, dword ptr [ebp + 0x74]                   // 0x0070a268    8b4d74
                         test               ecx, ecx                                      // 0x0070a26b    85c9
                         {disp8} je         _jmp_addr_0x0070a292                          // 0x0070a26d    7423
                         cmp                dword ptr [ebp + 0x28], 0x00d966c0            // 0x0070a26f    817d28c066d900
                         {disp8} jne        _jmp_addr_0x0070a292                          // 0x0070a276    751a
                         {disp32} lea       edx, dword ptr [esp + 0x00000090]             // 0x0070a278    8d942490000000
                         push               edx                                           // 0x0070a27f    52
                         call               _jmp_addr_0x006ca910                          // 0x0070a280    e88b06fcff
                         {disp8} mov        ecx, dword ptr [ebp + 0x74]                   // 0x0070a285    8b4d74
                         call               _jmp_addr_0x006ca930                          // 0x0070a288    e8a306fcff
                         mov                edi, 0x00000001                               // 0x0070a28d    bf01000000
_jmp_addr_0x0070a292:    {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x0070a292    8b442420
                         test               eax, eax                                      // 0x0070a296    85c0
                         {disp8} jne        _jmp_addr_0x0070a2ae                          // 0x0070a298    7514
                         test               edi, edi                                      // 0x0070a29a    85ff
                         {disp8} jne        _jmp_addr_0x0070a2ae                          // 0x0070a29c    7510
                         {disp32} mov       dword ptr [data_bytes + 0x4dbaf0], edi        // 0x0070a29e    893df01aea00
                         pop                edi                                           // 0x0070a2a4    5f
                         pop                esi                                           // 0x0070a2a5    5e
                         pop                ebp                                           // 0x0070a2a6    5d
                         add                esp, 0x0000009c                               // 0x0070a2a7    81c49c000000
                         ret                                                              // 0x0070a2ad    c3
_jmp_addr_0x0070a2ae:    mov.s              ecx, ebp                                      // 0x0070a2ae    8bcd
                         {disp32} mov       dword ptr [data_bytes + 0x4dbaf0], 0x00000001 // 0x0070a2b0    c705f01aea0001000000
                         call               ?IsDidYouKnow@ScriptHighlight@@QAE_NXZ        // 0x0070a2ba    e861090000
                         test               eax, eax                                      // 0x0070a2bf    85c0
                         {disp8} jne        _jmp_addr_0x0070a2df                          // 0x0070a2c1    751c
                         {disp32} fld       dword ptr [rdata_bytes + 0x99230]             // 0x0070a2c3    d90530229400
                         push               ecx                                           // 0x0070a2c9    51
                         {disp8} fadd       dword ptr [esp + 0x10]                        // 0x0070a2ca    d8442410
                         {disp8} lea        eax, dword ptr [esp + 0x30]                   // 0x0070a2ce    8d442430
                         fstp               dword ptr [esp]                               // 0x0070a2d2    d91c24
                         push               eax                                           // 0x0070a2d5    50
                         push               ebp                                           // 0x0070a2d6    55
                         call               _jmp_addr_0x00519960                          // 0x0070a2d7    e884f6e0ff
                         add                esp, 0x0c                                     // 0x0070a2dc    83c40c
_jmp_addr_0x0070a2df:    {disp32} fld       dword ptr [data_bytes + 0x4dbdb8]             // 0x0070a2df    d905b81dea00
                         push               ecx                                           // 0x0070a2e5    51
                         {disp8} fsub       dword ptr [esp + 0x30]                        // 0x0070a2e6    d8642430
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x0070a2ea    d95c2424
                         {disp32} fld       dword ptr [data_bytes + 0x4dbdbc]             // 0x0070a2ee    d905bc1dea00
                         {disp8} fsub       dword ptr [esp + 0x34]                        // 0x0070a2f4    d8642434
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x0070a2f8    d95c2428
                         {disp32} fld       dword ptr [data_bytes + 0x4dbdc0]             // 0x0070a2fc    d905c01dea00
                         {disp8} fsub       dword ptr [esp + 0x38]                        // 0x0070a302    d8642438
                         {disp8} fst        dword ptr [esp + 0x2c]                        // 0x0070a306    d954242c
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x0070a30a    d9442428
                         fld                st(0)                                         // 0x0070a30e    d9c0
                         fmul               st, st(1)                                     // 0x0070a310    d8c9
                         fld                st(2)                                         // 0x0070a312    d9c2
                         fmul               st, st(3)                                     // 0x0070a314    d8cb
                         faddp              st(1), st                                     // 0x0070a316    dec1
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x0070a318    d9442424
                         {disp8} fmul       dword ptr [esp + 0x24]                        // 0x0070a31c    d84c2424
                         faddp              st(1), st                                     // 0x0070a320    dec1
                         fstp               dword ptr [esp]                               // 0x0070a322    d91c24
                         fstp               st(0)                                         // 0x0070a325    ddd8
                         fstp               st(0)                                         // 0x0070a327    ddd8
                         call               _jmp_addr_0x00841170                          // 0x0070a329    e8426e1300
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x0070a32e    d9442424
                         {disp8} mov        ecx, dword ptr [ebp + 0x64]                   // 0x0070a332    8b4d64
                         fmul               st, st(1)                                     // 0x0070a335    d8c9
                         add                esp, 0x04                                     // 0x0070a337    83c404
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0070a33a    d95c2420
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x0070a33e    d9442424
                         fmul               st, st(1)                                     // 0x0070a342    d8c9
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x0070a344    d95c2424
                         {disp8} fmul       dword ptr [esp + 0x28]                        // 0x0070a348    d84c2428
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0070a34c    d9442420
                         {disp8} fmul       dword ptr [esp + 0x0c]                        // 0x0070a350    d84c240c
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0070a354    d95c2410
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x0070a358    d9442424
                         {disp8} fmul       dword ptr [esp + 0x0c]                        // 0x0070a35c    d84c240c
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0070a360    d95c2414
                         {disp8} fmul       dword ptr [esp + 0x0c]                        // 0x0070a364    d84c240c
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0070a368    d9442410
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1ee18]             // 0x0070a36c    d80d187e8c00
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0070a372    d95c2420
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x0070a376    d9442414
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1ee18]             // 0x0070a37a    d80d187e8c00
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x0070a380    d95c2424
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1ee18]             // 0x0070a384    d80d187e8c00
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0070a38a    d9442420
                         {disp8} fadd       dword ptr [esp + 0x2c]                        // 0x0070a38e    d844242c
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0070a392    d95c2410
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x0070a396    d9442424
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x0070a39a    8b542410
                         {disp8} fadd       dword ptr [esp + 0x30]                        // 0x0070a39e    d8442430
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0070a3a2    d95c2414
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0070a3a6    8b442414
                         {disp8} fadd       dword ptr [esp + 0x34]                        // 0x0070a3aa    d8442434
                         mov                dword ptr [ecx], edx                          // 0x0070a3ae    8911
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x0070a3b0    894104
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0070a3b3    d95c2418
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x0070a3b7    8b542418
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x0070a3bb    895108
                         {disp32} fld       dword ptr [rdata_bytes + 0x9922c]             // 0x0070a3be    d9052c229400
                         {disp8} fmul       dword ptr [esp + 0x0c]                        // 0x0070a3c4    d84c240c
                         {disp8} mov        ecx, dword ptr [ebp + 0x64]                   // 0x0070a3c8    8b4d64
                         {disp32} fcom      dword ptr [rdata_bytes + 0x16518]             // 0x0070a3cb    d81518f58b00
                         fnstsw             ax                                            // 0x0070a3d1    dfe0
                         test               ah, 0x01                                      // 0x0070a3d3    f6c401
                         {disp8} je         _jmp_addr_0x0070a3e0                          // 0x0070a3d6    7408
                         fstp               st(0)                                         // 0x0070a3d8    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x16518]             // 0x0070a3da    d90518f58b00
_jmp_addr_0x0070a3e0:    fld                st(0)                                         // 0x0070a3e0    d9c0
                         {disp8} mov        eax, dword ptr [esp + 0x38]                   // 0x0070a3e2    8b442438
                         dec                eax                                           // 0x0070a3e6    48
                         {disp8} fdiv       dword ptr [ecx + 0x0c]                        // 0x0070a3e7    d8710c
                         {disp8} mov        byte ptr [esp + 0x0c], 0x00                   // 0x0070a3ea    c644240c00
                         fld                st(0)                                         // 0x0070a3ef    d9c0
                         {disp8} fmul       dword ptr [ecx + 0x18]                        // 0x0070a3f1    d84918
                         {disp8} fstp       dword ptr [ecx + 0x18]                        // 0x0070a3f4    d95918
                         {disp8} fmul       dword ptr [ecx + 0x1c]                        // 0x0070a3f7    d8491c
                         {disp8} fstp       dword ptr [ecx + 0x1c]                        // 0x0070a3fa    d9591c
                         {disp8} fstp       dword ptr [ecx + 0x0c]                        // 0x0070a3fd    d9590c
                         {disp8} je         _jmp_addr_0x0070a416                          // 0x0070a400    7414
                         dec                eax                                           // 0x0070a402    48
                         {disp8} je         _jmp_addr_0x0070a40f                          // 0x0070a403    740a
                         dec                eax                                           // 0x0070a405    48
                         {disp8} jne        _jmp_addr_0x0070a41b                          // 0x0070a406    7513
                         {disp8} mov        byte ptr [esp + 0x0c], 0x64                   // 0x0070a408    c644240c64
                         {disp8} jmp        _jmp_addr_0x0070a41b                          // 0x0070a40d    eb0c
_jmp_addr_0x0070a40f:    {disp8} mov        byte ptr [esp + 0x0c], -0x6a                  // 0x0070a40f    c644240c96
                         {disp8} jmp        _jmp_addr_0x0070a41b                          // 0x0070a414    eb05
_jmp_addr_0x0070a416:    {disp8} mov        byte ptr [esp + 0x0c], 0x32                   // 0x0070a416    c644240c32
_jmp_addr_0x0070a41b:    mov.s              ecx, ebp                                      // 0x0070a41b    8bcd
                         call               ?IsDidYouKnow@ScriptHighlight@@QAE_NXZ        // 0x0070a41d    e8fe070000
                         test               eax, eax                                      // 0x0070a422    85c0
                         {disp8} je         _jmp_addr_0x0070a42d                          // 0x0070a424    7407
                         {disp8} mov        eax, dword ptr [ebp + 0x60]                   // 0x0070a426    8b4560
                         test               eax, eax                                      // 0x0070a429    85c0
                         {disp8} jne        _jmp_addr_0x0070a44c                          // 0x0070a42b    751f
_jmp_addr_0x0070a42d:    {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x0070a42d    8b44240c
                         {disp8} mov        ecx, dword ptr [ebp + 0x64]                   // 0x0070a431    8b4d64
                         and                eax, 0x000000ff                               // 0x0070a434    25ff000000
                         shl                eax, 0x18                                     // 0x0070a439    c1e018
                         or                 eax, 0xffffff                                 // 0x0070a43c    0dffffff00
                         {disp8} mov        dword ptr [ecx + 0x20], eax                   // 0x0070a441    894120
                         {disp8} mov        ecx, dword ptr [ebp + 0x64]                   // 0x0070a444    8b4d64
                         call               _jmp_addr_0x00840c70                          // 0x0070a447    e824681300
_jmp_addr_0x0070a44c:    pop                edi                                           // 0x0070a44c    5f
                         pop                esi                                           // 0x0070a44d    5e
                         pop                ebp                                           // 0x0070a44e    5d
                         add                esp, 0x0000009c                               // 0x0070a44f    81c49c000000
                         ret                                                              // 0x0070a455    c3
                         nop                                                              // 0x0070a456    90
                         nop                                                              // 0x0070a457    90
                         nop                                                              // 0x0070a458    90
                         nop                                                              // 0x0070a459    90
                         nop                                                              // 0x0070a45a    90
                         nop                                                              // 0x0070a45b    90
                         nop                                                              // 0x0070a45c    90
                         nop                                                              // 0x0070a45d    90
                         nop                                                              // 0x0070a45e    90
                         nop                                                              // 0x0070a45f    90
?ProcessHighlights@ScriptHighlight@@SAXXZ:
                                            sub                esp, 0x08                                     // 0x0070a460    83ec08
                         {disp32} mov       eax, dword ptr [data_bytes + 0x33ba38]        // 0x0070a463    a1381ad000
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x0070a468    89442400
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x0070a46c    c744240400000000
                         {disp8} fild       qword ptr [esp + 0x00]                        // 0x0070a474    df6c2400
                         {disp32} fmul      dword ptr [rdata_bytes + 0x99244]             // 0x0070a478    d80d44229400
                         {disp32} fmul      dword ptr [_rdata_float0p001]                 // 0x0070a47e    d80db0a38a00
                         {disp32} fadd      dword ptr [data_bytes + 0x3d07d4]             // 0x0070a484    d805d467d900
                         {disp32} fst       dword ptr [data_bytes + 0x3d07d4]             // 0x0070a48a    d915d467d900
                         {disp32} fcomp     dword ptr [__real@40c90fdb]                   // 0x0070a490    d81d10b28a00
                         fnstsw             ax                                            // 0x0070a496    dfe0
                         test               ah, 0x41                                      // 0x0070a498    f6c441
                         {disp8} jne        _jmp_addr_0x0070a4af                          // 0x0070a49b    7512
                         {disp32} fld       dword ptr [data_bytes + 0x3d07d4]             // 0x0070a49d    d905d467d900
                         {disp32} fsub      dword ptr [__real@40c90fdb]                   // 0x0070a4a3    d82510b28a00
                         {disp32} fstp      dword ptr [data_bytes + 0x3d07d4]             // 0x0070a4a9    d91dd467d900
_jmp_addr_0x0070a4af:    {disp32} fld       dword ptr [data_bytes + 0x3d07d4]             // 0x0070a4af    d905d467d900
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x3d07d8]        // 0x0070a4b5    8b0dd867d900
                         fcos                                                             // 0x0070a4bb    d9ff
                         {disp32} mov       edx, dword ptr [_game]                        // 0x0070a4bd    8b155c19d000
                         push               esi                                           // 0x0070a4c3    56
                         {disp32} mov       dword ptr [data_bytes + 0x3d07dc], ecx        // 0x0070a4c4    890ddc67d900
                         {disp32} fsubr     dword ptr [_rdata_float1p0]                   // 0x0070a4ca    d82d90a38a00
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x0070a4d0    d80db4a38a00
                         {disp32} fstp      dword ptr [data_bytes + 0x3d07d8]             // 0x0070a4d6    d91dd867d900
                         {disp32} mov       esi, dword ptr [edx + 0x00205c94]             // 0x0070a4dc    8bb2945c2000
                         test               esi, esi                                      // 0x0070a4e2    85f6
                         {disp8} je         _jmp_addr_0x0070a509                          // 0x0070a4e4    7423
                         push               edi                                           // 0x0070a4e6    57
_jmp_addr_0x0070a4e7:    mov                eax, dword ptr [esi]                          // 0x0070a4e7    8b06
                         {disp32} mov       edi, dword ptr [esi + 0x00000088]             // 0x0070a4e9    8bbe88000000
                         mov.s              ecx, esi                                      // 0x0070a4ef    8bce
                         call               dword ptr [eax + 0x2c]                        // 0x0070a4f1    ff502c
                         test               eax, eax                                      // 0x0070a4f4    85c0
                         {disp8} je         _jmp_addr_0x0070a502                          // 0x0070a4f6    740a
                         mov                edx, dword ptr [esi]                          // 0x0070a4f8    8b16
                         mov.s              ecx, esi                                      // 0x0070a4fa    8bce
                         call               dword ptr [edx + 0x5fc]                       // 0x0070a4fc    ff92fc050000
_jmp_addr_0x0070a502:    test               edi, edi                                      // 0x0070a502    85ff
                         mov.s              esi, edi                                      // 0x0070a504    8bf7
                         {disp8} jne        _jmp_addr_0x0070a4e7                          // 0x0070a506    75df
                         pop                edi                                           // 0x0070a508    5f
_jmp_addr_0x0070a509:    pop                esi                                           // 0x0070a509    5e
                         add                esp, 0x08                                     // 0x0070a50a    83c408
                         ret                                                              // 0x0070a50d    c3
                         nop                                                              // 0x0070a50e    90
                         nop                                                              // 0x0070a50f    90
_jmp_addr_0x0070a510:    {disp32} fld       dword ptr [data_bytes + 0x3d07d8]             // 0x0070a510    d905d867d900
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0070a516    a15c19d000
                         {disp32} fsub      dword ptr [data_bytes + 0x3d07dc]             // 0x0070a51b    d825dc67d900
                         {disp32} fmul      dword ptr [eax + 0x00205d64]                  // 0x0070a521    d888645d2000
                         {disp32} fadd      dword ptr [data_bytes + 0x3d07dc]             // 0x0070a527    d805dc67d900
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x0070a52d    d81598a38a00
                         fnstsw             ax                                            // 0x0070a533    dfe0
                         test               ah, 0x41                                      // 0x0070a535    f6c441
                         {disp8} jne        _jmp_addr_0x0070a55c                          // 0x0070a538    7522
                         {disp32} fcom      dword ptr [_rdata_float1p0]                   // 0x0070a53a    d81590a38a00
                         fnstsw             ax                                            // 0x0070a540    dfe0
                         test               ah, 0x01                                      // 0x0070a542    f6c401
                         {disp8} jne        _jmp_addr_0x0070a564                          // 0x0070a545    751d
                         fstp               st(0)                                         // 0x0070a547    ddd8
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0070a549    d90590a38a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x99af8]             // 0x0070a54f    d80df82a9400
                         {disp32} fadd      dword ptr [rdata_bytes + 0x1ea44]             // 0x0070a555    d805447a8c00
                         ret                                                              // 0x0070a55b    c3
_jmp_addr_0x0070a55c:    fstp               st(0)                                         // 0x0070a55c    ddd8
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x0070a55e    d90598a38a00
_jmp_addr_0x0070a564:    {disp32} fmul      dword ptr [rdata_bytes + 0x99af8]             // 0x0070a564    d80df82a9400
                         {disp32} fadd      dword ptr [rdata_bytes + 0x1ea44]             // 0x0070a56a    d805447a8c00
                         ret                                                              // 0x0070a570    c3
                         nop                                                              // 0x0070a571    90
                         nop                                                              // 0x0070a572    90
                         nop                                                              // 0x0070a573    90
                         nop                                                              // 0x0070a574    90
                         nop                                                              // 0x0070a575    90
                         nop                                                              // 0x0070a576    90
                         nop                                                              // 0x0070a577    90
                         nop                                                              // 0x0070a578    90
                         nop                                                              // 0x0070a579    90
                         nop                                                              // 0x0070a57a    90
                         nop                                                              // 0x0070a57b    90
                         nop                                                              // 0x0070a57c    90
                         nop                                                              // 0x0070a57d    90
                         nop                                                              // 0x0070a57e    90
                         nop                                                              // 0x0070a57f    90
?Process@ScriptHighlight@@UAEIXZ:
                         push               esi                                           // 0x0070a580    56
                         mov.s              esi, ecx                                      // 0x0070a581    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x7c]                   // 0x0070a583    8b467c
                         test               eax, eax                                      // 0x0070a586    85c0
                         {disp8} jne        _jmp_addr_0x0070a597                          // 0x0070a588    750d
                         push               0x1                                           // 0x0070a58a    6a01
                         push               esi                                           // 0x0070a58c    56
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                   // 0x0070a58d    8d4e14
                         call               _jmp_addr_0x006022c0                          // 0x0070a590    e82b7defff
                         {disp8} jmp        _jmp_addr_0x0070a59d                          // 0x0070a595    eb06
_jmp_addr_0x0070a597:    {disp32} fld       dword ptr [esi + 0x00000080]                  // 0x0070a597    d98680000000
_jmp_addr_0x0070a59d:    {disp8} fstp       dword ptr [esi + 0x1c]                        // 0x0070a59d    d95e1c
                         {disp8} mov        eax, dword ptr [esi + 0x60]                   // 0x0070a5a0    8b4660
                         test               eax, eax                                      // 0x0070a5a3    85c0
                         {disp8} jne        _jmp_addr_0x0070a5ec                          // 0x0070a5a5    7545
                         mov.s              ecx, esi                                      // 0x0070a5a7    8bce
                         call               ?IsDidYouKnow@ScriptHighlight@@QAE_NXZ        // 0x0070a5a9    e872060000
                         test               eax, eax                                      // 0x0070a5ae    85c0
                         {disp8} je         _jmp_addr_0x0070a5ec                          // 0x0070a5b0    743a
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0070a5b2    a15c19d000
                         push               edi                                           // 0x0070a5b7    57
                         {disp32} mov       edi, dword ptr [eax + 0x00205a40]             // 0x0070a5b8    8bb8405a2000
                         mov.s              ecx, esi                                      // 0x0070a5be    8bce
                         call               _jmp_addr_0x00436a80                          // 0x0070a5c0    e8bbc4d2ff
                         add.s              eax, edi                                      // 0x0070a5c5    03c7
                         test               al, 0x07                                      // 0x0070a5c7    a807
                         pop                edi                                           // 0x0070a5c9    5f
                         {disp8} jne        _jmp_addr_0x0070a5ec                          // 0x0070a5ca    7520
                         {disp32} mov       ecx, dword ptr [esi + 0x00000084]             // 0x0070a5cc    8b8e84000000
                         {disp8} mov        edx, dword ptr [esi + 0x78]                   // 0x0070a5d2    8b5678
                         push               ecx                                           // 0x0070a5d5    51
                         push               edx                                           // 0x0070a5d6    52
                         call               _jmp_addr_0x0078cc10                          // 0x0070a5d7    e834260800
                         add                esp, 0x08                                     // 0x0070a5dc    83c408
                         test               eax, eax                                      // 0x0070a5df    85c0
                         {disp8} je         _jmp_addr_0x0070a5ec                          // 0x0070a5e1    7409
                         push               0x1                                           // 0x0070a5e3    6a01
                         mov.s              ecx, esi                                      // 0x0070a5e5    8bce
                         call               ?SetActivated@ScriptHighlight@@QAEXH@Z        // 0x0070a5e7    e844000000
_jmp_addr_0x0070a5ec:    mov                eax, 0x00000001                               // 0x0070a5ec    b801000000
                         pop                esi                                           // 0x0070a5f1    5e
                         ret                                                              // 0x0070a5f2    c3
                         nop                                                              // 0x0070a5f3    90
                         nop                                                              // 0x0070a5f4    90
                         nop                                                              // 0x0070a5f5    90
                         nop                                                              // 0x0070a5f6    90
                         nop                                                              // 0x0070a5f7    90
                         nop                                                              // 0x0070a5f8    90
                         nop                                                              // 0x0070a5f9    90
                         nop                                                              // 0x0070a5fa    90
                         nop                                                              // 0x0070a5fb    90
                         nop                                                              // 0x0070a5fc    90
                         nop                                                              // 0x0070a5fd    90
                         nop                                                              // 0x0070a5fe    90
                         nop                                                              // 0x0070a5ff    90
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x0070a600    8b542404
                         push               esi                                           // 0x0070a604    56
                         mov                esi, dword ptr [edx]                          // 0x0070a605    8b32
                         {disp8} lea        eax, dword ptr [ecx + 0x14]                   // 0x0070a607    8d4114
                         mov                dword ptr [eax], esi                          // 0x0070a60a    8930
                         {disp8} mov        esi, dword ptr [edx + 0x04]                   // 0x0070a60c    8b7204
                         {disp8} mov        dword ptr [eax + 0x04], esi                   // 0x0070a60f    897004
                         {disp8} mov        edx, dword ptr [edx + 0x08]                   // 0x0070a612    8b5208
                         {disp8} mov        dword ptr [eax + 0x08], edx                   // 0x0070a615    895008
                         mov                eax, dword ptr [ecx]                          // 0x0070a618    8b01
                         call               dword ptr [eax + 0x5fc]                       // 0x0070a61a    ff90fc050000
                         pop                esi                                           // 0x0070a620    5e
                         ret                0x0004                                        // 0x0070a621    c20400
                         nop                                                              // 0x0070a624    90
                         nop                                                              // 0x0070a625    90
                         nop                                                              // 0x0070a626    90
                         nop                                                              // 0x0070a627    90
                         nop                                                              // 0x0070a628    90
                         nop                                                              // 0x0070a629    90
                         nop                                                              // 0x0070a62a    90
                         nop                                                              // 0x0070a62b    90
                         nop                                                              // 0x0070a62c    90
                         nop                                                              // 0x0070a62d    90
                         nop                                                              // 0x0070a62e    90
                         nop                                                              // 0x0070a62f    90
?SetActivated@ScriptHighlight@@QAEXH@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0070a630    8b442404
                         sub                esp, 0x00000180                               // 0x0070a634    81ec80010000
                         push               esi                                           // 0x0070a63a    56
                         mov.s              esi, ecx                                      // 0x0070a63b    8bf1
                         {disp8} mov        ecx, dword ptr [esi + 0x70]                   // 0x0070a63d    8b4e70
                         test               ecx, ecx                                      // 0x0070a640    85c9
                         push               edi                                           // 0x0070a642    57
                         {disp8} mov        dword ptr [esi + 0x60], eax                   // 0x0070a643    894660
                         {disp8} je         _jmp_addr_0x0070a656                          // 0x0070a646    740e
                         mov                edx, dword ptr [ecx]                          // 0x0070a648    8b11
                         push               0x1                                           // 0x0070a64a    6a01
                         call               dword ptr [edx + 4]                           // 0x0070a64c    ff5204
                         {disp8} mov        dword ptr [esi + 0x70], 0x00000000            // 0x0070a64f    c7467000000000
_jmp_addr_0x0070a656:    {disp8} mov        eax, dword ptr [esi + 0x60]                   // 0x0070a656    8b4660
                         test               eax, eax                                      // 0x0070a659    85c0
                         push               ebx                                           // 0x0070a65b    53
                         {disp8} jne        _jmp_addr_0x0070a66f                          // 0x0070a65c    7511
                         mov                eax, dword ptr [esi]                          // 0x0070a65e    8b06
                         mov.s              ecx, esi                                      // 0x0070a660    8bce
                         call               dword ptr [eax + 0x608]                       // 0x0070a662    ff9008060000
                         mov.s              edi, eax                                      // 0x0070a668    8bf8
                         {disp32} jmp       _jmp_addr_0x0070a712                          // 0x0070a66a    e9a3000000
_jmp_addr_0x0070a66f:    mov.s              ecx, esi                                      // 0x0070a66f    8bce
                         call               ?IsDidYouKnow@ScriptHighlight@@QAE_NXZ        // 0x0070a671    e8aa050000
                         test               eax, eax                                      // 0x0070a676    85c0
                         {disp8} jne        _jmp_addr_0x0070a6bc                          // 0x0070a678    7542
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x0070a67a    8d4c2424
                         call               dword ptr [rdata_bytes + 0x75c]               // 0x0070a67e    ff155c978a00
                         {disp32} mov       ecx, dword ptr [_global]                      // 0x0070a684    8b0d203bcd00
                         {disp32} mov       edx, dword ptr [ecx + 0x000003ac]             // 0x0070a68a    8b91ac030000
                         {disp8} lea        eax, dword ptr [esp + 0x24]                   // 0x0070a690    8d442424
                         push               eax                                           // 0x0070a694    50
                         {disp8} mov        dword ptr [esp + 0x2c], edx                   // 0x0070a695    8954242c
                         {disp8} mov        dword ptr [esp + 0x48], esi                   // 0x0070a699    89742448
                         {disp8} mov        dword ptr [esp + 0x30], 0x00000000            // 0x0070a69d    c744243000000000
                         {disp8} mov        dword ptr [esp + 0x4c], 0x00000086            // 0x0070a6a5    c744244c86000000
                         call               @PlaySoundEffect__6GAudioFP20LH_SamplePlayOptions@12                          // 0x0070a6ad    e87ef7d1ff
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x0070a6b2    8d4c2424
                         call               dword ptr [rdata_bytes + 0x758]               // 0x0070a6b6    ff1558978a00
_jmp_addr_0x0070a6bc:    mov.s              ecx, esi                                      // 0x0070a6bc    8bce
                         call               _jmp_addr_0x0070a750                          // 0x0070a6be    e88d000000
                         {disp8} mov        ecx, dword ptr [esi + 0x28]                   // 0x0070a6c3    8b4e28
                         {disp32} mov       ebx, dword ptr [ecx + 0x0000010c]             // 0x0070a6c6    8b990c010000
                         test               ebx, ebx                                      // 0x0070a6cc    85db
                         mov.s              edi, eax                                      // 0x0070a6ce    8bf8
                         {disp8} je         _jmp_addr_0x0070a712                          // 0x0070a6d0    7440
                         push               0x0                                           // 0x0070a6d2    6a00
                         push               0x3f800000                                    // 0x0070a6d4    680000803f
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x0070a6d9    8d542414
                         push               edx                                           // 0x0070a6dd    52
                         {disp8} lea        eax, dword ptr [esp + 0x24]                   // 0x0070a6de    8d442424
                         push               eax                                           // 0x0070a6e2    50
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                   // 0x0070a6e3    8d4e14
                         {disp8} mov        dword ptr [esp + 0x1c], 0x00000000            // 0x0070a6e6    c744241c00000000
                         {disp8} mov        dword ptr [esp + 0x20], 0x00000000            // 0x0070a6ee    c744242000000000
                         {disp8} mov        dword ptr [esp + 0x24], 0x00000000            // 0x0070a6f6    c744242400000000
                         call               @GetLHPoint__9MapCoordsCFv@12                 // 0x0070a6fe    e83db5efff
                         push               eax                                           // 0x0070a703    50
                         push               ebx                                           // 0x0070a704    53
                         push               0x0                                           // 0x0070a705    6a00
                         call               _Create__13PSysInterfaceFP5Spell13PARTICLE_TYPERC7LHPointRC7LHPointfQ213PSysInterface13NET_GAME_TYPE                          // 0x0070a707    e80442f8ff
                         add                esp, 0x18                                     // 0x0070a70c    83c418
                         {disp8} mov        dword ptr [esi + 0x70], eax                   // 0x0070a70f    894670
_jmp_addr_0x0070a712:    test               edi, edi                                      // 0x0070a712    85ff
                         {disp32} mov       edx, dword ptr [?g_current_pack@LH3DMesh@@2PAULH3DPack@@A]        // 0x0070a714    8b1534fee900
                         mov.s              eax, edi                                      // 0x0070a71a    8bc7
                         pop                ebx                                           // 0x0070a71c    5b
                         {disp8} jl         _jmp_addr_0x0070a723                          // 0x0070a71d    7c04
                         cmp                edi, dword ptr [edx]                          // 0x0070a71f    3b3a
                         {disp8} jl         _jmp_addr_0x0070a725                          // 0x0070a721    7c02
_jmp_addr_0x0070a723:    xor.s              eax, eax                                      // 0x0070a723    33c0
_jmp_addr_0x0070a725:    {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x0070a725    8b4e40
                         mov                esi, dword ptr [ecx]                          // 0x0070a728    8b31
                         {disp8} mov        edx, dword ptr [edx + eax * 0x4 + 0x04]       // 0x0070a72a    8b548204
                         push               0x0                                           // 0x0070a72e    6a00
                         push               0x0                                           // 0x0070a730    6a00
                         call               dword ptr [esi + 0xf4]                        // 0x0070a732    ff96f4000000
                         pop                edi                                           // 0x0070a738    5f
                         pop                esi                                           // 0x0070a739    5e
                         add                esp, 0x00000180                               // 0x0070a73a    81c480010000
                         ret                0x0004                                        // 0x0070a740    c20400
                         nop                                                              // 0x0070a743    90
                         nop                                                              // 0x0070a744    90
                         nop                                                              // 0x0070a745    90
                         nop                                                              // 0x0070a746    90
                         nop                                                              // 0x0070a747    90
                         nop                                                              // 0x0070a748    90
                         nop                                                              // 0x0070a749    90
                         nop                                                              // 0x0070a74a    90
                         nop                                                              // 0x0070a74b    90
                         nop                                                              // 0x0070a74c    90
                         nop                                                              // 0x0070a74d    90
                         nop                                                              // 0x0070a74e    90
                         nop                                                              // 0x0070a74f    90
_jmp_addr_0x0070a750:    {disp8} mov        eax, dword ptr [ecx + 0x28]                   // 0x0070a750    8b4128
                         {disp32} mov       eax, dword ptr [eax + 0x00000104]             // 0x0070a753    8b8004010000
                         ret                                                              // 0x0070a759    c3
                         nop                                                              // 0x0070a75a    90
                         nop                                                              // 0x0070a75b    90
                         nop                                                              // 0x0070a75c    90
                         nop                                                              // 0x0070a75d    90
                         nop                                                              // 0x0070a75e    90
                         nop                                                              // 0x0070a75f    90
?Save@ScriptHighlight@@UAEIAAVGameOSFile@@@Z:
                         push               esi                                           // 0x0070a760    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x0070a761    8b742408
                         push               edi                                           // 0x0070a765    57
                         mov.s              edi, ecx                                      // 0x0070a766    8bf9
                         push               esi                                           // 0x0070a768    56
                         call               ?Save@Fixed@@UAEIPAVGameOSFile@@@Z            // 0x0070a769    e8d239e2ff
                         test               eax, eax                                      // 0x0070a76e    85c0
                         {disp32} je        _jmp_addr_0x0070a8e1                          // 0x0070a770    0f846b010000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x0070a776    a190c9be00
                         push               ebx                                           // 0x0070a77b    53
                         push               ebp                                           // 0x0070a77c    55
                         xor.s              ebp, ebp                                      // 0x0070a77d    33ed
                         cmp.s              eax, ebp                                      // 0x0070a77f    3bc5
                         {disp32} je        _jmp_addr_0x0070a8d5                          // 0x0070a781    0f844e010000
                         push               ebp                                           // 0x0070a787    55
                         push               0x4                                           // 0x0070a788    6a04
                         {disp8} lea        ebx, dword ptr [edi + 0x5c]                   // 0x0070a78a    8d5f5c
                         push               ebx                                           // 0x0070a78d    53
                         mov.s              ecx, esi                                      // 0x0070a78e    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0070a790    e88b210b00
                         cmp                eax, 0x03                                     // 0x0070a795    83f803
                         {disp8} jne        _jmp_addr_0x0070a7a0                          // 0x0070a798    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x0070a79a    892d90c9be00
_jmp_addr_0x0070a7a0:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0070a7a0    8b8e14020000
                         xor.s              eax, eax                                      // 0x0070a7a6    33c0
                         mov                al, byte ptr [ebx]                            // 0x0070a7a8    8a03
                         add                eax, 0x04                                     // 0x0070a7aa    83c004
                         add.s              ecx, eax                                      // 0x0070a7ad    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0070a7af    898e14020000
                         cmp                dword ptr [data_bytes + 0x226990], ebp        // 0x0070a7b5    392d90c9be00
                         {disp32} je        _jmp_addr_0x0070a8d5                          // 0x0070a7bb    0f8414010000
                         push               ebp                                           // 0x0070a7c1    55
                         push               0x4                                           // 0x0070a7c2    6a04
                         {disp8} lea        ebx, dword ptr [edi + 0x60]                   // 0x0070a7c4    8d5f60
                         push               ebx                                           // 0x0070a7c7    53
                         mov.s              ecx, esi                                      // 0x0070a7c8    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0070a7ca    e851210b00
                         cmp                eax, 0x03                                     // 0x0070a7cf    83f803
                         {disp8} jne        _jmp_addr_0x0070a7da                          // 0x0070a7d2    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x0070a7d4    892d90c9be00
_jmp_addr_0x0070a7da:    {disp32} mov       edx, dword ptr [esi + 0x00000214]             // 0x0070a7da    8b9614020000
                         xor.s              ecx, ecx                                      // 0x0070a7e0    33c9
                         mov                cl, byte ptr [ebx]                            // 0x0070a7e2    8a0b
                         add                ecx, 0x4                                      // 0x0070a7e4    83c104
                         add.s              edx, ecx                                      // 0x0070a7e7    03d1
                         {disp32} mov       dword ptr [esi + 0x00000214], edx             // 0x0070a7e9    899614020000
                         cmp                dword ptr [data_bytes + 0x226990], ebp        // 0x0070a7ef    392d90c9be00
                         {disp32} je        _jmp_addr_0x0070a8d5                          // 0x0070a7f5    0f84da000000
                         push               ebp                                           // 0x0070a7fb    55
                         push               0x4                                           // 0x0070a7fc    6a04
                         {disp8} lea        ebx, dword ptr [edi + 0x7c]                   // 0x0070a7fe    8d5f7c
                         push               ebx                                           // 0x0070a801    53
                         mov.s              ecx, esi                                      // 0x0070a802    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0070a804    e817210b00
                         cmp                eax, 0x03                                     // 0x0070a809    83f803
                         {disp8} jne        _jmp_addr_0x0070a814                          // 0x0070a80c    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x0070a80e    892d90c9be00
_jmp_addr_0x0070a814:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0070a814    8b8e14020000
                         xor.s              edx, edx                                      // 0x0070a81a    33d2
                         mov                dl, byte ptr [ebx]                            // 0x0070a81c    8a13
                         add                edx, 0x04                                     // 0x0070a81e    83c204
                         add.s              ecx, edx                                      // 0x0070a821    03ca
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0070a823    898e14020000
                         cmp                dword ptr [data_bytes + 0x226990], ebp        // 0x0070a829    392d90c9be00
                         {disp32} je        _jmp_addr_0x0070a8d5                          // 0x0070a82f    0f84a0000000
                         push               ebp                                           // 0x0070a835    55
                         push               0x4                                           // 0x0070a836    6a04
                         {disp32} lea       ebx, dword ptr [edi + 0x00000080]             // 0x0070a838    8d9f80000000
                         push               ebx                                           // 0x0070a83e    53
                         mov.s              ecx, esi                                      // 0x0070a83f    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0070a841    e8da200b00
                         cmp                eax, 0x03                                     // 0x0070a846    83f803
                         {disp8} jne        _jmp_addr_0x0070a851                          // 0x0070a849    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x0070a84b    892d90c9be00
_jmp_addr_0x0070a851:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0070a851    8b8e14020000
                         xor.s              eax, eax                                      // 0x0070a857    33c0
                         mov                al, byte ptr [ebx]                            // 0x0070a859    8a03
                         add                eax, 0x04                                     // 0x0070a85b    83c004
                         add.s              ecx, eax                                      // 0x0070a85e    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0070a860    898e14020000
                         cmp                dword ptr [data_bytes + 0x226990], ebp        // 0x0070a866    392d90c9be00
                         {disp8} je         _jmp_addr_0x0070a8d5                          // 0x0070a86c    7467
                         push               ebp                                           // 0x0070a86e    55
                         push               0x4                                           // 0x0070a86f    6a04
                         {disp8} lea        ebx, dword ptr [edi + 0x78]                   // 0x0070a871    8d5f78
                         push               ebx                                           // 0x0070a874    53
                         mov.s              ecx, esi                                      // 0x0070a875    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0070a877    e8a4200b00
                         cmp                eax, 0x03                                     // 0x0070a87c    83f803
                         {disp8} jne        _jmp_addr_0x0070a887                          // 0x0070a87f    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x0070a881    892d90c9be00
_jmp_addr_0x0070a887:    {disp32} mov       edx, dword ptr [esi + 0x00000214]             // 0x0070a887    8b9614020000
                         xor.s              ecx, ecx                                      // 0x0070a88d    33c9
                         mov                cl, byte ptr [ebx]                            // 0x0070a88f    8a0b
                         add                ecx, 0x4                                      // 0x0070a891    83c104
                         add.s              edx, ecx                                      // 0x0070a894    03d1
                         {disp32} mov       dword ptr [esi + 0x00000214], edx             // 0x0070a896    899614020000
                         cmp                dword ptr [data_bytes + 0x226990], ebp        // 0x0070a89c    392d90c9be00
                         {disp8} je         _jmp_addr_0x0070a8d5                          // 0x0070a8a2    7431
                         push               ebp                                           // 0x0070a8a4    55
                         push               0x4                                           // 0x0070a8a5    6a04
                         add                edi, 0x00000084                               // 0x0070a8a7    81c784000000
                         push               edi                                           // 0x0070a8ad    57
                         mov.s              ecx, esi                                      // 0x0070a8ae    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0070a8b0    e86b200b00
                         cmp                eax, 0x03                                     // 0x0070a8b5    83f803
                         {disp8} jne        _jmp_addr_0x0070a8c0                          // 0x0070a8b8    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x0070a8ba    892d90c9be00
_jmp_addr_0x0070a8c0:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0070a8c0    8b8614020000
                         xor.s              edx, edx                                      // 0x0070a8c6    33d2
                         mov                dl, byte ptr [edi]                            // 0x0070a8c8    8a17
                         add                edx, 0x04                                     // 0x0070a8ca    83c204
                         add.s              eax, edx                                      // 0x0070a8cd    03c2
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0070a8cf    898614020000
_jmp_addr_0x0070a8d5:    pop                ebp                                           // 0x0070a8d5    5d
                         pop                ebx                                           // 0x0070a8d6    5b
                         pop                edi                                           // 0x0070a8d7    5f
                         mov                eax, 0x00000001                               // 0x0070a8d8    b801000000
                         pop                esi                                           // 0x0070a8dd    5e
                         ret                0x0004                                        // 0x0070a8de    c20400
_jmp_addr_0x0070a8e1:    pop                edi                                           // 0x0070a8e1    5f
                         xor.s              eax, eax                                      // 0x0070a8e2    33c0
                         pop                esi                                           // 0x0070a8e4    5e
                         ret                0x0004                                        // 0x0070a8e5    c20400
                         nop                                                              // 0x0070a8e8    90
                         nop                                                              // 0x0070a8e9    90
                         nop                                                              // 0x0070a8ea    90
                         nop                                                              // 0x0070a8eb    90
                         nop                                                              // 0x0070a8ec    90
                         nop                                                              // 0x0070a8ed    90
                         nop                                                              // 0x0070a8ee    90
                         nop                                                              // 0x0070a8ef    90
?Load@ScriptHighlight@@UAEIAAVGameOSFile@@@Z:
                         push               ebx                                           // 0x0070a8f0    53
                         push               esi                                           // 0x0070a8f1    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x0070a8f2    8b74240c
                         mov.s              ebx, ecx                                      // 0x0070a8f6    8bd9
                         push               esi                                           // 0x0070a8f8    56
                         call               ?Load@Fixed@@QAEIAAVGGameOSFile@@@Z         // 0x0070a8f9    e87238e2ff
                         test               eax, eax                                      // 0x0070a8fe    85c0
                         {disp32} je        _jmp_addr_0x0070aa61                          // 0x0070a900    0f845b010000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x0070a906    a194c9be00
                         push               ebp                                           // 0x0070a90b    55
                         xor.s              ebp, ebp                                      // 0x0070a90c    33ed
                         cmp.s              eax, ebp                                      // 0x0070a90e    3bc5
                         push               edi                                           // 0x0070a910    57
                         {disp8} lea        edi, dword ptr [ebx + 0x5c]                   // 0x0070a911    8d7b5c
                         {disp8} je         _jmp_addr_0x0070a941                          // 0x0070a914    742b
                         push               ebp                                           // 0x0070a916    55
                         push               0x4                                           // 0x0070a917    6a04
                         push               edi                                           // 0x0070a919    57
                         mov.s              ecx, esi                                      // 0x0070a91a    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0070a91c    e8bf1f0b00
                         cmp                eax, 0x03                                     // 0x0070a921    83f803
                         {disp8} jne        _jmp_addr_0x0070a92c                          // 0x0070a924    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0070a926    892d94c9be00
_jmp_addr_0x0070a92c:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0070a92c    8b8e14020000
                         xor.s              eax, eax                                      // 0x0070a932    33c0
                         mov                al, byte ptr [edi]                            // 0x0070a934    8a07
                         add                eax, 0x04                                     // 0x0070a936    83c004
                         add.s              ecx, eax                                      // 0x0070a939    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0070a93b    898e14020000
_jmp_addr_0x0070a941:    cmp                dword ptr [data_bytes + 0x226994], ebp        // 0x0070a941    392d94c9be00
                         {disp8} lea        edi, dword ptr [ebx + 0x60]                   // 0x0070a947    8d7b60
                         {disp8} je         _jmp_addr_0x0070a977                          // 0x0070a94a    742b
                         push               ebp                                           // 0x0070a94c    55
                         push               0x4                                           // 0x0070a94d    6a04
                         push               edi                                           // 0x0070a94f    57
                         mov.s              ecx, esi                                      // 0x0070a950    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0070a952    e8891f0b00
                         cmp                eax, 0x03                                     // 0x0070a957    83f803
                         {disp8} jne        _jmp_addr_0x0070a962                          // 0x0070a95a    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0070a95c    892d94c9be00
_jmp_addr_0x0070a962:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0070a962    8b8614020000
                         xor.s              ecx, ecx                                      // 0x0070a968    33c9
                         mov                cl, byte ptr [edi]                            // 0x0070a96a    8a0f
                         add                ecx, 0x4                                      // 0x0070a96c    83c104
                         add.s              eax, ecx                                      // 0x0070a96f    03c1
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0070a971    898614020000
_jmp_addr_0x0070a977:    cmp                dword ptr [data_bytes + 0x226994], ebp        // 0x0070a977    392d94c9be00
                         {disp8} lea        edi, dword ptr [ebx + 0x7c]                   // 0x0070a97d    8d7b7c
                         {disp8} je         _jmp_addr_0x0070a9ad                          // 0x0070a980    742b
                         push               ebp                                           // 0x0070a982    55
                         push               0x4                                           // 0x0070a983    6a04
                         push               edi                                           // 0x0070a985    57
                         mov.s              ecx, esi                                      // 0x0070a986    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0070a988    e8531f0b00
                         cmp                eax, 0x03                                     // 0x0070a98d    83f803
                         {disp8} jne        _jmp_addr_0x0070a998                          // 0x0070a990    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0070a992    892d94c9be00
_jmp_addr_0x0070a998:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0070a998    8b8614020000
                         xor.s              edx, edx                                      // 0x0070a99e    33d2
                         mov                dl, byte ptr [edi]                            // 0x0070a9a0    8a17
                         add                edx, 0x04                                     // 0x0070a9a2    83c204
                         add.s              eax, edx                                      // 0x0070a9a5    03c2
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0070a9a7    898614020000
_jmp_addr_0x0070a9ad:    cmp                dword ptr [data_bytes + 0x226994], ebp        // 0x0070a9ad    392d94c9be00
                         {disp32} lea       edi, dword ptr [ebx + 0x00000080]             // 0x0070a9b3    8dbb80000000
                         {disp8} je         _jmp_addr_0x0070a9e6                          // 0x0070a9b9    742b
                         push               ebp                                           // 0x0070a9bb    55
                         push               0x4                                           // 0x0070a9bc    6a04
                         push               edi                                           // 0x0070a9be    57
                         mov.s              ecx, esi                                      // 0x0070a9bf    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0070a9c1    e81a1f0b00
                         cmp                eax, 0x03                                     // 0x0070a9c6    83f803
                         {disp8} jne        _jmp_addr_0x0070a9d1                          // 0x0070a9c9    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0070a9cb    892d94c9be00
_jmp_addr_0x0070a9d1:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0070a9d1    8b8e14020000
                         xor.s              eax, eax                                      // 0x0070a9d7    33c0
                         mov                al, byte ptr [edi]                            // 0x0070a9d9    8a07
                         add                eax, 0x04                                     // 0x0070a9db    83c004
                         add.s              ecx, eax                                      // 0x0070a9de    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0070a9e0    898e14020000
_jmp_addr_0x0070a9e6:    cmp                dword ptr [data_bytes + 0x226994], ebp        // 0x0070a9e6    392d94c9be00
                         {disp8} lea        edi, dword ptr [ebx + 0x78]                   // 0x0070a9ec    8d7b78
                         {disp8} je         _jmp_addr_0x0070aa1c                          // 0x0070a9ef    742b
                         push               ebp                                           // 0x0070a9f1    55
                         push               0x4                                           // 0x0070a9f2    6a04
                         push               edi                                           // 0x0070a9f4    57
                         mov.s              ecx, esi                                      // 0x0070a9f5    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0070a9f7    e8e41e0b00
                         cmp                eax, 0x03                                     // 0x0070a9fc    83f803
                         {disp8} jne        _jmp_addr_0x0070aa07                          // 0x0070a9ff    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0070aa01    892d94c9be00
_jmp_addr_0x0070aa07:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0070aa07    8b8614020000
                         xor.s              ecx, ecx                                      // 0x0070aa0d    33c9
                         mov                cl, byte ptr [edi]                            // 0x0070aa0f    8a0f
                         add                ecx, 0x4                                      // 0x0070aa11    83c104
                         add.s              eax, ecx                                      // 0x0070aa14    03c1
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0070aa16    898614020000
_jmp_addr_0x0070aa1c:    cmp                dword ptr [data_bytes + 0x226994], ebp        // 0x0070aa1c    392d94c9be00
                         {disp32} lea       edi, dword ptr [ebx + 0x00000084]             // 0x0070aa22    8dbb84000000
                         {disp8} je         _jmp_addr_0x0070aa55                          // 0x0070aa28    742b
                         push               ebp                                           // 0x0070aa2a    55
                         push               0x4                                           // 0x0070aa2b    6a04
                         push               edi                                           // 0x0070aa2d    57
                         mov.s              ecx, esi                                      // 0x0070aa2e    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0070aa30    e8ab1e0b00
                         cmp                eax, 0x03                                     // 0x0070aa35    83f803
                         {disp8} jne        _jmp_addr_0x0070aa40                          // 0x0070aa38    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0070aa3a    892d94c9be00
_jmp_addr_0x0070aa40:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0070aa40    8b8614020000
                         xor.s              edx, edx                                      // 0x0070aa46    33d2
                         mov                dl, byte ptr [edi]                            // 0x0070aa48    8a17
                         add                edx, 0x04                                     // 0x0070aa4a    83c204
                         add.s              eax, edx                                      // 0x0070aa4d    03c2
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0070aa4f    898614020000
_jmp_addr_0x0070aa55:    pop                edi                                           // 0x0070aa55    5f
                         pop                ebp                                           // 0x0070aa56    5d
                         pop                esi                                           // 0x0070aa57    5e
                         mov                eax, 0x00000001                               // 0x0070aa58    b801000000
                         pop                ebx                                           // 0x0070aa5d    5b
                         ret                0x0004                                        // 0x0070aa5e    c20400
_jmp_addr_0x0070aa61:    pop                esi                                           // 0x0070aa61    5e
                         xor.s              eax, eax                                      // 0x0070aa62    33c0
                         pop                ebx                                           // 0x0070aa64    5b
                         ret                0x0004                                        // 0x0070aa65    c20400
                         nop                                                              // 0x0070aa68    90
                         nop                                                              // 0x0070aa69    90
                         nop                                                              // 0x0070aa6a    90
                         nop                                                              // 0x0070aa6b    90
                         nop                                                              // 0x0070aa6c    90
                         nop                                                              // 0x0070aa6d    90
                         nop                                                              // 0x0070aa6e    90
                         nop                                                              // 0x0070aa6f    90
?ForDrawFXGetNumVertices@ScriptHighlight@@UAEHXZ:
                         {disp8} mov        ecx, dword ptr [ecx + 0x40]                   // 0x0070aa70    8b4940
                         test               ecx, ecx                                      // 0x0070aa73    85c9
                         {disp8} je         _jmp_addr_0x0070aab9                          // 0x0070aa75    7442
                         mov                eax, dword ptr [ecx]                          // 0x0070aa77    8b01
                         push               edi                                           // 0x0070aa79    57
                         call               dword ptr [eax + 0xf8]                        // 0x0070aa7a    ff90f8000000
                         {disp8} mov        ecx, dword ptr [eax + 0x0c]                   // 0x0070aa80    8b480c
                         xor.s              edi, edi                                      // 0x0070aa83    33ff
                         test               ecx, ecx                                      // 0x0070aa85    85c9
                         {disp8} jle        _jmp_addr_0x0070aab5                          // 0x0070aa87    7e2c
                         {disp8} mov        eax, dword ptr [eax + 0x10]                   // 0x0070aa89    8b4010
                         push               ebx                                           // 0x0070aa8c    53
                         push               ebp                                           // 0x0070aa8d    55
                         push               esi                                           // 0x0070aa8e    56
                         mov.s              ebx, ecx                                      // 0x0070aa8f    8bd9
_jmp_addr_0x0070aa91:    mov                edx, dword ptr [eax]                          // 0x0070aa91    8b10
                         {disp8} mov        esi, dword ptr [edx + 0x04]                   // 0x0070aa93    8b7204
                         xor.s              ecx, ecx                                      // 0x0070aa96    33c9
                         test               esi, esi                                      // 0x0070aa98    85f6
                         {disp8} jle        _jmp_addr_0x0070aaaa                          // 0x0070aa9a    7e0e
                         {disp8} mov        edx, dword ptr [edx + 0x08]                   // 0x0070aa9c    8b5208
_jmp_addr_0x0070aa9f:    mov                ebp, dword ptr [edx]                          // 0x0070aa9f    8b2a
                         add                ecx, dword ptr [ebp + 0x10]                   // 0x0070aaa1    034d10
                         add                edx, 0x04                                     // 0x0070aaa4    83c204
                         dec                esi                                           // 0x0070aaa7    4e
                         {disp8} jne        _jmp_addr_0x0070aa9f                          // 0x0070aaa8    75f5
_jmp_addr_0x0070aaaa:    add.s              edi, ecx                                      // 0x0070aaaa    03f9
                         add                eax, 0x04                                     // 0x0070aaac    83c004
                         dec                ebx                                           // 0x0070aaaf    4b
                         {disp8} jne        _jmp_addr_0x0070aa91                          // 0x0070aab0    75df
                         pop                esi                                           // 0x0070aab2    5e
                         pop                ebp                                           // 0x0070aab3    5d
                         pop                ebx                                           // 0x0070aab4    5b
_jmp_addr_0x0070aab5:    mov.s              eax, edi                                      // 0x0070aab5    8bc7
                         pop                edi                                           // 0x0070aab7    5f
                         ret                                                              // 0x0070aab8    c3
_jmp_addr_0x0070aab9:    xor.s              eax, eax                                      // 0x0070aab9    33c0
                         ret                                                              // 0x0070aabb    c3
                         nop                                                              // 0x0070aabc    90
                         nop                                                              // 0x0070aabd    90
                         nop                                                              // 0x0070aabe    90
                         nop                                                              // 0x0070aabf    90
?ForDrawFXGetVertexPos@ScriptHighlight@@UAEXHPAULHPoint@@@Z:
                         sub                esp, 0x0c                                     // 0x0070aac0    83ec0c
                         push               ebx                                           // 0x0070aac3    53
                         push               ebp                                           // 0x0070aac4    55
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x0070aac5    894c2410
                         {disp8} mov        ecx, dword ptr [ecx + 0x40]                   // 0x0070aac9    8b4940
                         test               ecx, ecx                                      // 0x0070aacc    85c9
                         push               esi                                           // 0x0070aace    56
                         push               edi                                           // 0x0070aacf    57
                         {disp32} je        _jmp_addr_0x0070ab5b                          // 0x0070aad0    0f8485000000
                         mov                eax, dword ptr [ecx]                          // 0x0070aad6    8b01
                         call               dword ptr [eax + 0xf8]                        // 0x0070aad8    ff90f8000000
                         mov.s              ebp, eax                                      // 0x0070aade    8be8
                         test               ebp, ebp                                      // 0x0070aae0    85ed
                         {disp8} mov        dword ptr [esp + 0x10], ebp                   // 0x0070aae2    896c2410
                         {disp8} je         _jmp_addr_0x0070ab5b                          // 0x0070aae6    7473
                         {disp8} mov        eax, dword ptr [ebp + 0x0c]                   // 0x0070aae8    8b450c
                         xor.s              ebx, ebx                                      // 0x0070aaeb    33db
                         test               eax, eax                                      // 0x0070aaed    85c0
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x0070aaef    89442414
                         {disp8} jle        _jmp_addr_0x0070ab21                          // 0x0070aaf3    7e2c
                         {disp8} mov        edi, dword ptr [ebp + 0x10]                   // 0x0070aaf5    8b7d10
_jmp_addr_0x0070aaf8:    mov                edx, dword ptr [edi]                          // 0x0070aaf8    8b17
                         {disp8} mov        esi, dword ptr [edx + 0x04]                   // 0x0070aafa    8b7204
                         xor.s              ecx, ecx                                      // 0x0070aafd    33c9
                         test               esi, esi                                      // 0x0070aaff    85f6
                         {disp8} jle        _jmp_addr_0x0070ab15                          // 0x0070ab01    7e12
                         {disp8} mov        edx, dword ptr [edx + 0x08]                   // 0x0070ab03    8b5208
_jmp_addr_0x0070ab06:    mov                ebp, dword ptr [edx]                          // 0x0070ab06    8b2a
                         add                ecx, dword ptr [ebp + 0x10]                   // 0x0070ab08    034d10
                         add                edx, 0x04                                     // 0x0070ab0b    83c204
                         dec                esi                                           // 0x0070ab0e    4e
                         {disp8} jne        _jmp_addr_0x0070ab06                          // 0x0070ab0f    75f5
                         {disp8} mov        ebp, dword ptr [esp + 0x10]                   // 0x0070ab11    8b6c2410
_jmp_addr_0x0070ab15:    add.s              ebx, ecx                                      // 0x0070ab15    03d9
                         add                edi, 0x04                                     // 0x0070ab17    83c704
                         dec                eax                                           // 0x0070ab1a    48
                         {disp8} jne        _jmp_addr_0x0070aaf8                          // 0x0070ab1b    75db
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0070ab1d    8b442414
_jmp_addr_0x0070ab21:    {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x0070ab21    8b542420
                         cmp.s              edx, ebx                                      // 0x0070ab25    3bd3
                         {disp8} jg         _jmp_addr_0x0070ab5b                          // 0x0070ab27    7f32
                         {disp8} mov        edi, dword ptr [ebp + 0x10]                   // 0x0070ab29    8b7d10
                         lea                ebx, dword ptr [edi + eax * 0x4]              // 0x0070ab2c    8d1c87
                         cmp.s              edi, ebx                                      // 0x0070ab2f    3bfb
                         {disp8} jae        _jmp_addr_0x0070ab5b                          // 0x0070ab31    7328
_jmp_addr_0x0070ab33:    mov                ecx, dword ptr [edi]                          // 0x0070ab33    8b0f
                         {disp8} mov        eax, dword ptr [ecx + 0x08]                   // 0x0070ab35    8b4108
                         {disp8} mov        ecx, dword ptr [ecx + 0x04]                   // 0x0070ab38    8b4904
                         lea                esi, dword ptr [eax + ecx * 0x4]              // 0x0070ab3b    8d3488
                         cmp.s              eax, esi                                      // 0x0070ab3e    3bc6
                         {disp8} jae        _jmp_addr_0x0070ab54                          // 0x0070ab40    7312
_jmp_addr_0x0070ab42:    mov                ecx, dword ptr [eax]                          // 0x0070ab42    8b08
                         {disp8} mov        ecx, dword ptr [ecx + 0x10]                   // 0x0070ab44    8b4910
                         cmp.s              edx, ecx                                      // 0x0070ab47    3bd1
                         {disp8} jl         _jmp_addr_0x0070ab67                          // 0x0070ab49    7c1c
                         add                eax, 0x04                                     // 0x0070ab4b    83c004
                         sub.s              edx, ecx                                      // 0x0070ab4e    2bd1
                         cmp.s              eax, esi                                      // 0x0070ab50    3bc6
                         .byte              0x72, 0xee// {disp8} jb _jmp_addr_0x0070ab42  // 0x0070ab52    72ee
_jmp_addr_0x0070ab54:    add                edi, 0x04                                     // 0x0070ab54    83c704
                         cmp.s              edi, ebx                                      // 0x0070ab57    3bfb
                         .byte              0x72, 0xd8// {disp8} jb _jmp_addr_0x0070ab33  // 0x0070ab59    72d8
_jmp_addr_0x0070ab5b:    pop                edi                                           // 0x0070ab5b    5f
                         pop                esi                                           // 0x0070ab5c    5e
                         pop                ebp                                           // 0x0070ab5d    5d
                         xor.s              al, al                                        // 0x0070ab5e    32c0
                         pop                ebx                                           // 0x0070ab60    5b
                         add                esp, 0x0c                                     // 0x0070ab61    83c40c
                         ret                0x0008                                        // 0x0070ab64    c20800
_jmp_addr_0x0070ab67:    mov                eax, dword ptr [eax]                          // 0x0070ab67    8b00
                         {disp8} mov        eax, dword ptr [eax + 0x14]                   // 0x0070ab69    8b4014
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x0070ab6c    8b4c2424
                         shl                edx, 5                                        // 0x0070ab70    c1e205
                         add.s              eax, edx                                      // 0x0070ab73    03c2
                         mov                edx, dword ptr [eax]                          // 0x0070ab75    8b10
                         mov                dword ptr [ecx], edx                          // 0x0070ab77    8911
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x0070ab79    8b5004
                         {disp8} mov        dword ptr [ecx + 0x04], edx                   // 0x0070ab7c    895104
                         {disp8} fld        dword ptr [eax + 0x08]                        // 0x0070ab7f    d94008
                         mov                edx, dword ptr [ecx]                          // 0x0070ab82    8b11
                         {disp8} fst        dword ptr [ecx + 0x08]                        // 0x0070ab84    d95108
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x0070ab87    8b442418
                         fld                st(0)                                         // 0x0070ab8b    d9c0
                         {disp8} mov        eax, dword ptr [eax + 0x40]                   // 0x0070ab8d    8b4040
                         {disp8} fmul       dword ptr [eax + 0x2c]                        // 0x0070ab90    d8482c
                         add                eax, 0x14                                     // 0x0070ab93    83c014
                         {disp8} mov        dword ptr [esp + 0x24], edx                   // 0x0070ab96    89542424
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                   // 0x0070ab9a    8b5104
                         {disp8} mov        dword ptr [esp + 0x20], edx                   // 0x0070ab9d    89542420
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0070aba1    d9442420
                         pop                edi                                           // 0x0070aba5    5f
                         {disp8} fmul       dword ptr [eax + 0x0c]                        // 0x0070aba6    d8480c
                         pop                esi                                           // 0x0070aba9    5e
                         pop                ebp                                           // 0x0070abaa    5d
                         pop                ebx                                           // 0x0070abab    5b
                         faddp              st(1), st                                     // 0x0070abac    dec1
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x0070abae    d9442414
                         fmul               dword ptr [eax]                               // 0x0070abb2    d808
                         faddp              st(1), st                                     // 0x0070abb4    dec1
                         {disp8} fadd       dword ptr [eax + 0x24]                        // 0x0070abb6    d84024
                         fstp               dword ptr [ecx]                               // 0x0070abb9    d919
                         fld                st(0)                                         // 0x0070abbb    d9c0
                         {disp8} fmul       dword ptr [eax + 0x1c]                        // 0x0070abbd    d8481c
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0070abc0    d9442410
                         {disp8} fmul       dword ptr [eax + 0x10]                        // 0x0070abc4    d84810
                         faddp              st(1), st                                     // 0x0070abc7    dec1
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x0070abc9    d9442414
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x0070abcd    d84804
                         faddp              st(1), st                                     // 0x0070abd0    dec1
                         {disp8} fadd       dword ptr [eax + 0x28]                        // 0x0070abd2    d84028
                         {disp8} fstp       dword ptr [ecx + 0x04]                        // 0x0070abd5    d95904
                         {disp8} fmul       dword ptr [eax + 0x20]                        // 0x0070abd8    d84820
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0070abdb    d9442410
                         {disp8} fmul       dword ptr [eax + 0x14]                        // 0x0070abdf    d84814
                         faddp              st(1), st                                     // 0x0070abe2    dec1
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x0070abe4    d9442414
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x0070abe8    d84808
                         faddp              st(1), st                                     // 0x0070abeb    dec1
                         {disp8} fadd       dword ptr [eax + 0x2c]                        // 0x0070abed    d8402c
                         mov                al, 0x01                                      // 0x0070abf0    b001
                         {disp8} fstp       dword ptr [ecx + 0x08]                        // 0x0070abf2    d95908
                         add                esp, 0x0c                                     // 0x0070abf5    83c40c
                         ret                0x0008                                        // 0x0070abf8    c20800
                         nop                                                              // 0x0070abfb    90
                         nop                                                              // 0x0070abfc    90
                         nop                                                              // 0x0070abfd    90
                         nop                                                              // 0x0070abfe    90
                         nop                                                              // 0x0070abff    90
_jmp_addr_0x0070ac00:    {disp32} mov       eax, dword ptr [ecx + 0x00000084]             // 0x0070ac00    8b8184000000
                         {disp8} mov        edx, dword ptr [ecx + 0x78]                   // 0x0070ac06    8b5178
                         push               eax                                           // 0x0070ac09    50
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0070ac0a    a15c19d000
                         push               edx                                           // 0x0070ac0f    52
                         push               ecx                                           // 0x0070ac10    51
                         {disp32} mov       ecx, dword ptr [eax + 0x0025005c]             // 0x0070ac11    8b885c002500
                         call               _jmp_addr_0x005c8330                          // 0x0070ac17    e814d7ebff
                         ret                                                              // 0x0070ac1c    c3
                         nop                                                              // 0x0070ac1d    90
                         nop                                                              // 0x0070ac1e    90
                         nop                                                              // 0x0070ac1f    90
?IsDidYouKnow@ScriptHighlight@@QAE_NXZ:
                         {disp8} mov        ecx, dword ptr [ecx + 0x28]                   // 0x0070ac20    8b4928
                         sub                ecx, 0x00d96390                               // 0x0070ac23    81e99063d900
                         mov                eax, 0x78787879                               // 0x0070ac29    b879787878
                         imul               ecx                                           // 0x0070ac2e    f7e9
                         mov.s              eax, edx                                      // 0x0070ac30    8bc2
                         sar                eax, 7                                        // 0x0070ac32    c1f807
                         mov.s              ecx, eax                                      // 0x0070ac35    8bc8
                         shr                ecx, 0x1f                                     // 0x0070ac37    c1e91f
                         add.s              eax, ecx                                      // 0x0070ac3a    03c1
                         dec                eax                                           // 0x0070ac3c    48
                         neg                eax                                           // 0x0070ac3d    f7d8
                         sbb.s              eax, eax                                      // 0x0070ac3f    1bc0
                         inc                eax                                           // 0x0070ac41    40
                         ret                                                              // 0x0070ac42    c3
                         nop                                                              // 0x0070ac43    90
                         nop                                                              // 0x0070ac44    90
                         nop                                                              // 0x0070ac45    90
                         nop                                                              // 0x0070ac46    90
                         nop                                                              // 0x0070ac47    90
                         nop                                                              // 0x0070ac48    90
                         nop                                                              // 0x0070ac49    90
                         nop                                                              // 0x0070ac4a    90
                         nop                                                              // 0x0070ac4b    90
                         nop                                                              // 0x0070ac4c    90
                         nop                                                              // 0x0070ac4d    90
                         nop                                                              // 0x0070ac4e    90
                         nop                                                              // 0x0070ac4f    90
_jmp_addr_0x0070ac50:    {disp8} mov        eax, dword ptr [ecx + 0x78]                   // 0x0070ac50    8b4178
                         cmp                eax, 0x38                                     // 0x0070ac53    83f838
                         {disp8} je         _jmp_addr_0x0070ac6a                          // 0x0070ac56    7412
                         cmp                eax, 0x3b                                     // 0x0070ac58    83f83b
                         {disp8} je         _jmp_addr_0x0070ac6a                          // 0x0070ac5b    740d
                         cmp                eax, 0x3c                                     // 0x0070ac5d    83f83c
                         {disp8} je         _jmp_addr_0x0070ac6a                          // 0x0070ac60    7408
                         cmp                eax, 0x3d                                     // 0x0070ac62    83f83d
                         {disp8} je         _jmp_addr_0x0070ac6a                          // 0x0070ac65    7403
                         xor.s              eax, eax                                      // 0x0070ac67    33c0
                         ret                                                              // 0x0070ac69    c3
_jmp_addr_0x0070ac6a:    mov                eax, 0x00000001                               // 0x0070ac6a    b801000000
                         ret                                                              // 0x0070ac6f    c3
?InterfaceTap@ScriptHighlight@@UAEIPAVGInterfaceStatus@@@Z:
                         sub                esp, 0x00000168                               // 0x0070ac70    81ec68010000
                         push               ebx                                           // 0x0070ac76    53
                         {disp32} mov       ebx, dword ptr [esp + 0x00000170]             // 0x0070ac77    8b9c2470010000
                         xor.s              eax, eax                                      // 0x0070ac7e    33c0
                         push               esi                                           // 0x0070ac80    56
                         mov.s              esi, ecx                                      // 0x0070ac81    8bf1
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070ac83    8b0d5c19d000
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x0070ac89    8a81595a2000
                         push               edi                                           // 0x0070ac8f    57
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x0070ac90    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x0070ac93    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x0070ac96    8d0450
                         mov                edx, dword ptr [ebx]                          // 0x0070ac99    8b13
                         shl                eax, 5                                        // 0x0070ac9b    c1e005
                         {disp8} lea        edi, dword ptr [eax + ecx * 0x1 + 0x18]       // 0x0070ac9e    8d7c0818
                         mov.s              ecx, ebx                                      // 0x0070aca2    8bcb
                         call               dword ptr [edx + 0x1c]                        // 0x0070aca4    ff521c
                         cmp.s              eax, edi                                      // 0x0070aca7    3bc7
                         {disp8} jne        _jmp_addr_0x0070acd4                          // 0x0070aca9    7529
                         {disp8} mov        eax, dword ptr [esi + 0x78]                   // 0x0070acab    8b4678
                         test               eax, eax                                      // 0x0070acae    85c0
                         {disp8} je         _jmp_addr_0x0070acc1                          // 0x0070acb0    740f
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0070acb2    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250060]             // 0x0070acb7    8b8860002500
                         push               0x22                                          // 0x0070acbd    6a22
                         {disp8} jmp        _jmp_addr_0x0070accf                          // 0x0070acbf    eb0e
_jmp_addr_0x0070acc1:    {disp32} mov       ecx, dword ptr [_game]                        // 0x0070acc1    8b0d5c19d000
                         {disp32} mov       ecx, dword ptr [ecx + 0x00250060]             // 0x0070acc7    8b8960002500
                         push               0x23                                          // 0x0070accd    6a23
_jmp_addr_0x0070accf:    call               ?Trigger@HelpProfile@@QAEXW4HELP_EVENT_TYPE@@@Z                          // 0x0070accf    e80c9aebff
_jmp_addr_0x0070acd4:    {disp8} mov        eax, dword ptr [esi + 0x78]                   // 0x0070acd4    8b4678
                         test               eax, eax                                      // 0x0070acd7    85c0
                         {disp32} je        _jmp_addr_0x0070adb2                          // 0x0070acd9    0f84d3000000
                         push               0x1                                           // 0x0070acdf    6a01
                         mov.s              ecx, esi                                      // 0x0070ace1    8bce
                         call               ?SetActivated@ScriptHighlight@@QAEXH@Z        // 0x0070ace3    e848f9ffff
                         mov.s              ecx, esi                                      // 0x0070ace8    8bce
                         call               ?IsDidYouKnow@ScriptHighlight@@QAE_NXZ        // 0x0070acea    e831ffffff
                         test               eax, eax                                      // 0x0070acef    85c0
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070acf1    8b0d5c19d000
                         {disp8} je         _jmp_addr_0x0070ad68                          // 0x0070acf7    746f
                         call               _jmp_addr_0x00555880                          // 0x0070acf9    e882abe4ff
                         cmp.s              ebx, eax                                      // 0x0070acfe    3bd8
                         {disp8} jne        _jmp_addr_0x0070ad50                          // 0x0070ad00    754e
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0070ad02    8d4c240c
                         call               dword ptr [rdata_bytes + 0x75c]               // 0x0070ad06    ff155c978a00
                         {disp32} mov       ecx, dword ptr [_global]                      // 0x0070ad0c    8b0d203bcd00
                         {disp32} mov       edx, dword ptr [ecx + 0x000003ac]             // 0x0070ad12    8b91ac030000
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x0070ad18    8d44240c
                         push               eax                                           // 0x0070ad1c    50
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x0070ad1d    89542414
                         {disp8} mov        dword ptr [esp + 0x34], 0x000000ad            // 0x0070ad21    c7442434ad000000
                         {disp8} mov        dword ptr [esp + 0x30], 0x00000000            // 0x0070ad29    c744243000000000
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000            // 0x0070ad31    c744241800000000
                         {disp8} mov        dword ptr [esp + 0x1c], 0x00000000            // 0x0070ad39    c744241c00000000
                         call               @PlaySoundEffect__6GAudioFP20LH_SamplePlayOptions@12                          // 0x0070ad41    e8eaf0d1ff
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0070ad46    8d4c240c
                         call               dword ptr [rdata_bytes + 0x758]               // 0x0070ad4a    ff1558978a00
_jmp_addr_0x0070ad50:    mov.s              ecx, esi                                      // 0x0070ad50    8bce
                         call               _jmp_addr_0x0070ac00                          // 0x0070ad52    e8a9feffff
                         pop                edi                                           // 0x0070ad57    5f
                         pop                esi                                           // 0x0070ad58    5e
                         mov                eax, 0x00000001                               // 0x0070ad59    b801000000
                         pop                ebx                                           // 0x0070ad5e    5b
                         add                esp, 0x00000168                               // 0x0070ad5f    81c468010000
                         ret                0x0004                                        // 0x0070ad65    c20400
_jmp_addr_0x0070ad68:    {disp32} mov       edx, dword ptr [ecx + 0x0025005c]             // 0x0070ad68    8b915c002500
                         {disp32} mov       eax, dword ptr [edx + 0x000045cc]             // 0x0070ad6e    8b82cc450000
                         test               eax, eax                                      // 0x0070ad74    85c0
                         {disp8} je         _jmp_addr_0x0070ad8e                          // 0x0070ad76    7416
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070ad78    8b0d105cd900
                         push               eax                                           // 0x0070ad7e    50
                         call               ?GetScriptType@ScriptDLL@@QAEPAXK@Z           // 0x0070ad7f    e8ccbefeff
                         cmp                eax, 0x02                                     // 0x0070ad84    83f802
                         {disp8} jne        _jmp_addr_0x0070ad8e                          // 0x0070ad87    7505
                         call               ?StopHelpScripts@GScript@@QAEXXZ              // 0x0070ad89    e8f219feff
_jmp_addr_0x0070ad8e:    {disp32} mov       eax, dword ptr [_game]                        // 0x0070ad8e    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x0025005c]             // 0x0070ad93    8b885c002500
                         {disp32} mov       edx, dword ptr [ecx + 0x000045cc]             // 0x0070ad99    8b91cc450000
                         test               edx, edx                                      // 0x0070ad9f    85d2
                         {disp8} jne        _jmp_addr_0x0070adb2                          // 0x0070ada1    750f
                         {disp8} mov        edx, dword ptr [esi + 0x78]                   // 0x0070ada3    8b5678
                         {disp32} mov       ecx, dword ptr [eax + 0x000059b4]             // 0x0070ada6    8b88b4590000
                         push               edx                                           // 0x0070adac    52
                         call               ?StartScript@Temple@@QAE_NK@Z                 // 0x0070adad    e86e9c0800
_jmp_addr_0x0070adb2:    pop                edi                                           // 0x0070adb2    5f
                         pop                esi                                           // 0x0070adb3    5e
                         mov                eax, 0x00000001                               // 0x0070adb4    b801000000
                         pop                ebx                                           // 0x0070adb9    5b
                         add                esp, 0x00000168                               // 0x0070adba    81c468010000
                         ret                0x0004                                        // 0x0070adc0    c20400
                         nop                                                              // 0x0070adc3    90
                         nop                                                              // 0x0070adc4    90
                         nop                                                              // 0x0070adc5    90
                         nop                                                              // 0x0070adc6    90
                         nop                                                              // 0x0070adc7    90
                         nop                                                              // 0x0070adc8    90
                         nop                                                              // 0x0070adc9    90
                         nop                                                              // 0x0070adca    90
                         nop                                                              // 0x0070adcb    90
                         nop                                                              // 0x0070adcc    90
                         nop                                                              // 0x0070adcd    90
                         nop                                                              // 0x0070adce    90
                         nop                                                              // 0x0070adcf    90
?InterfaceValidToTap@ScriptHighlight@@UAEIPAVGInterfaceStatus@@@Z:
                         push               esi                                           // 0x0070add0    56
                         mov.s              esi, ecx                                      // 0x0070add1    8bf1
                         call               ?IsDidYouKnow@ScriptHighlight@@QAE_NXZ        // 0x0070add3    e848feffff
                         test               eax, eax                                      // 0x0070add8    85c0
                         {disp8} je         _jmp_addr_0x0070adea                          // 0x0070adda    740e
                         {disp8} mov        ecx, dword ptr [esi + 0x78]                   // 0x0070addc    8b4e78
                         xor.s              eax, eax                                      // 0x0070addf    33c0
                         test               ecx, ecx                                      // 0x0070ade1    85c9
                         setne              al                                            // 0x0070ade3    0f95c0
                         pop                esi                                           // 0x0070ade6    5e
                         ret                0x0004                                        // 0x0070ade7    c20400
_jmp_addr_0x0070adea:    {disp8} mov        eax, dword ptr [esi + 0x60]                   // 0x0070adea    8b4660
                         test               eax, eax                                      // 0x0070aded    85c0
                         {disp8} je         _jmp_addr_0x0070ae01                          // 0x0070adef    7410
                         {disp8} mov        eax, dword ptr [esi + 0x78]                   // 0x0070adf1    8b4678
                         test               eax, eax                                      // 0x0070adf4    85c0
                         {disp8} je         _jmp_addr_0x0070ae01                          // 0x0070adf6    7409
                         mov                eax, 0x00000001                               // 0x0070adf8    b801000000
                         pop                esi                                           // 0x0070adfd    5e
                         ret                0x0004                                        // 0x0070adfe    c20400
_jmp_addr_0x0070ae01:    xor.s              eax, eax                                      // 0x0070ae01    33c0
                         pop                esi                                           // 0x0070ae03    5e
                         ret                0x0004                                        // 0x0070ae04    c20400
                         nop                                                              // 0x0070ae07    90
                         nop                                                              // 0x0070ae08    90
                         nop                                                              // 0x0070ae09    90
                         nop                                                              // 0x0070ae0a    90
                         nop                                                              // 0x0070ae0b    90
                         nop                                                              // 0x0070ae0c    90
                         nop                                                              // 0x0070ae0d    90
                         nop                                                              // 0x0070ae0e    90
                         nop                                                              // 0x0070ae0f    90
?GetOverwriteTapToolTip@ScriptHighlight@@UAEIXZ:
                         {disp8} mov        eax, dword ptr [ecx + 0x28]                   // 0x0070ae10    8b4128
                         {disp8} mov        edx, dword ptr [eax + 0x10]                   // 0x0070ae13    8b5010
                         xor.s              ecx, ecx                                      // 0x0070ae16    33c9
                         cmp                edx, 0x01                                     // 0x0070ae18    83fa01
                         setne              cl                                            // 0x0070ae1b    0f95c1
                         dec                ecx                                           // 0x0070ae1e    49
                         and                ecx, 0x00000ef2                               // 0x0070ae1f    81e1f20e0000
                         mov.s              eax, ecx                                      // 0x0070ae25    8bc1
                         ret                                                              // 0x0070ae27    c3
                         nop                                                              // 0x0070ae28    90
                         nop                                                              // 0x0070ae29    90
                         nop                                                              // 0x0070ae2a    90
                         nop                                                              // 0x0070ae2b    90
                         nop                                                              // 0x0070ae2c    90
                         nop                                                              // 0x0070ae2d    90
                         nop                                                              // 0x0070ae2e    90
                         nop                                                              // 0x0070ae2f    90
?GetScriptObjectType@ScriptHighlight@@UAEIXZ:
                         mov                eax, 0x00000025                               // 0x0070ae30    b825000000
                         ret                                                              // 0x0070ae35    c3
                         nop                                                              // 0x0070ae36    90
                         nop                                                              // 0x0070ae37    90
                         nop                                                              // 0x0070ae38    90
                         nop                                                              // 0x0070ae39    90
                         nop                                                              // 0x0070ae3a    90
                         nop                                                              // 0x0070ae3b    90
                         nop                                                              // 0x0070ae3c    90
                         nop                                                              // 0x0070ae3d    90
                         nop                                                              // 0x0070ae3e    90
                         nop                                                              // 0x0070ae3f    90
?AddToRoutePlan@ScriptHighlight@@UAEXPAURPHolder@@PAVCreature@@HP6AXHUPoint2D@@MH@Z@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0070ae40    8b442410
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x0070ae44    8b54240c
                         push               eax                                           // 0x0070ae48    50
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x0070ae49    8b44240c
                         push               edx                                           // 0x0070ae4d    52
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x0070ae4e    8b54240c
                         push               eax                                           // 0x0070ae52    50
                         push               edx                                           // 0x0070ae53    52
                         call               _jmp_addr_0x00638b00                          // 0x0070ae54    e8a7dcf2ff
                         ret                0x0010                                        // 0x0070ae59    c21000
                         nop                                                              // 0x0070ae5c    90
                         nop                                                              // 0x0070ae5d    90
                         nop                                                              // 0x0070ae5e    90
                         nop                                                              // 0x0070ae5f    90
_globl_ct_0x0070ae60:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x0070ae60    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x0070ae66    b001
                         test               al, cl                                        // 0x0070ae68    84c8
                         {disp8} jne        _jmp_addr_0x0070ae74                          // 0x0070ae6a    7508
                         or.s               cl, al                                        // 0x0070ae6c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x0070ae6e    880d34c9fa00
_jmp_addr_0x0070ae74:    {disp32} jmp       _jmp_addr_0x0070ae80                          // 0x0070ae74    e907000000
                         nop                                                              // 0x0070ae79    90
                         nop                                                              // 0x0070ae7a    90
                         nop                                                              // 0x0070ae7b    90
                         nop                                                              // 0x0070ae7c    90
                         nop                                                              // 0x0070ae7d    90
                         nop                                                              // 0x0070ae7e    90
                         nop                                                              // 0x0070ae7f    90
_jmp_addr_0x0070ae80:    push               0x00407870                                    // 0x0070ae80    6870784000
                         call               _atexit                                       // 0x0070ae85    e807a90b00
                         pop                ecx                                           // 0x0070ae8a    59
                         ret                                                              // 0x0070ae8b    c3
                         nop                                                              // 0x0070ae8c    90
                         nop                                                              // 0x0070ae8d    90
                         nop                                                              // 0x0070ae8e    90
                         nop                                                              // 0x0070ae8f    90
_globl_ct_0x0070ae90:    {disp32} jmp       _jmp_addr_0x0070aea0                          // 0x0070ae90    e90b000000
                         nop                                                              // 0x0070ae95    90
                         nop                                                              // 0x0070ae96    90
                         nop                                                              // 0x0070ae97    90
                         nop                                                              // 0x0070ae98    90
                         nop                                                              // 0x0070ae99    90
                         nop                                                              // 0x0070ae9a    90
                         nop                                                              // 0x0070ae9b    90
                         nop                                                              // 0x0070ae9c    90
                         nop                                                              // 0x0070ae9d    90
                         nop                                                              // 0x0070ae9e    90
                         nop                                                              // 0x0070ae9f    90
_jmp_addr_0x0070aea0:    {disp32} mov       dword ptr [data_bytes + 0x3d07e0], 0xffffffff // 0x0070aea0    c705e067d900ffffffff
                         ret                                                              // 0x0070aeaa    c3
                         nop                                                              // 0x0070aeab    90
                         nop                                                              // 0x0070aeac    90
                         nop                                                              // 0x0070aead    90
                         nop                                                              // 0x0070aeae    90
                         nop                                                              // 0x0070aeaf    90
                         push               ecx                                           // 0x0070aeb0    51
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070aeb1    8b0d5c19d000
                         call               ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x0070aeb7    e8c480e4ff
                         test               eax, eax                                      // 0x0070aebc    85c0
                         {disp8} je         _jmp_addr_0x0070aecd                          // 0x0070aebe    740d
                         push               0x00c0c1a8                                    // 0x0070aec0    68a8c1c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070aec5    e8e6b3feff
                         add                esp, 0x04                                     // 0x0070aeca    83c404
_jmp_addr_0x0070aecd:    {disp32} mov       ecx, dword ptr [_game]                        // 0x0070aecd    8b0d5c19d000
                         push               esi                                           // 0x0070aed3    56
                         call               ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x0070aed4    e8a780e4ff
                         test               eax, eax                                      // 0x0070aed9    85c0
                         {disp8} je         _jmp_addr_0x0070aeef                          // 0x0070aedb    7412
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070aedd    8b0d105cd900
                         push               0x6                                           // 0x0070aee3    6a06
                         push               0x1                                           // 0x0070aee5    6a01
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070aee7    e8b4bcfeff
                         pop                esi                                           // 0x0070aeec    5e
                         pop                ecx                                           // 0x0070aeed    59
                         ret                                                              // 0x0070aeee    c3
_jmp_addr_0x0070aeef:    {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070aeef    8b0d105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x0070aef5    8d442404
                         push               eax                                           // 0x0070aef9    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0070aefa    e8c1bcfeff
                         push               eax                                           // 0x0070aeff    50
                         call               _jmp_addr_0x0070d220                          // 0x0070af00    e81b230000
                         mov.s              esi, eax                                      // 0x0070af05    8bf0
                         add                esp, 0x04                                     // 0x0070af07    83c404
                         test               esi, esi                                      // 0x0070af0a    85f6
                         {disp8} jne        _jmp_addr_0x0070af2c                          // 0x0070af0c    751e
                         push               0x00c0d428                                    // 0x0070af0e    6828d4c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070af13    e898b3feff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070af18    8b0d105cd900
                         add                esp, 0x04                                     // 0x0070af1e    83c404
                         push               0x6                                           // 0x0070af21    6a06
                         push               esi                                           // 0x0070af23    56
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070af24    e877bcfeff
                         pop                esi                                           // 0x0070af29    5e
                         pop                ecx                                           // 0x0070af2a    59
                         ret                                                              // 0x0070af2b    c3
_jmp_addr_0x0070af2c:    {disp32} mov       ecx, dword ptr [_game]                        // 0x0070af2c    8b0d5c19d000
                         push               edi                                           // 0x0070af32    57
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0070af33    e818a9e4ff
                         {disp32} lea       ecx, dword ptr [eax + 0x0000045c]             // 0x0070af38    8d885c040000
                         call               _jmp_addr_0x00436b80                          // 0x0070af3e    e83dbcd2ff
                         mov.s              edi, eax                                      // 0x0070af43    8bf8
                         sub.s              edi, esi                                      // 0x0070af45    2bfe
                         neg                edi                                           // 0x0070af47    f7df
                         sbb.s              edi, edi                                      // 0x0070af49    1bff
                         inc                edi                                           // 0x0070af4b    47
                         {disp8} je         _jmp_addr_0x0070afc1                          // 0x0070af4c    7473
                         mov                edx, dword ptr [esi]                          // 0x0070af4e    8b16
                         mov.s              ecx, esi                                      // 0x0070af50    8bce
                         call               dword ptr [edx + 0x48c]                       // 0x0070af52    ff928c040000
                         test               eax, eax                                      // 0x0070af58    85c0
                         {disp8} je         _jmp_addr_0x0070afc1                          // 0x0070af5a    7465
                         mov.s              ecx, esi                                      // 0x0070af5c    8bce
                         call               ?IsDidYouKnow@ScriptHighlight@@QAE_NXZ        // 0x0070af5e    e8bdfcffff
                         test               eax, eax                                      // 0x0070af63    85c0
                         {disp8} jne        _jmp_addr_0x0070afc1                          // 0x0070af65    755a
                         mov.s              ecx, esi                                      // 0x0070af67    8bce
                         call               _jmp_addr_0x0070ac50                          // 0x0070af69    e8e2fcffff
                         test               eax, eax                                      // 0x0070af6e    85c0
                         {disp8} je         _jmp_addr_0x0070afc1                          // 0x0070af70    744f
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070af72    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0070af78    e8d3a8e4ff
                         add                eax, 0x0000045c                               // 0x0070af7d    055c040000
                         push               0xe                                           // 0x0070af82    6a0e
                         {disp8} mov        dword ptr [eax + 0x08], 0x00000000            // 0x0070af84    c7400800000000
                         {disp8} mov        dword ptr [eax + 0x04], 0x00000000            // 0x0070af8b    c7400400000000
                         call               _jmp_addr_0x00792fb0                          // 0x0070af92    e819800800
                         push               0x0                                           // 0x0070af97    6a00
                         push               0x009c7f50                                    // 0x0070af99    68507f9c00
                         push               0x009c7f30                                    // 0x0070af9e    68307f9c00
                         push               0x0                                           // 0x0070afa3    6a00
                         push               esi                                           // 0x0070afa5    56
                         call               ___RTDynamicCast                              // 0x0070afa6    e86eaa0b00
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070afab    8b0d5c19d000
                         add                esp, 0x18                                     // 0x0070afb1    83c418
                         push               eax                                           // 0x0070afb4    50
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0070afb5    e896a8e4ff
                         mov.s              ecx, eax                                      // 0x0070afba    8bc8
                         call               _jmp_addr_0x005d36d0                          // 0x0070afbc    e80f87ecff
_jmp_addr_0x0070afc1:    {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070afc1    8b0d105cd900
                         push               0x6                                           // 0x0070afc7    6a06
                         push               edi                                           // 0x0070afc9    57
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070afca    e8d1bbfeff
                         pop                edi                                           // 0x0070afcf    5f
                         pop                esi                                           // 0x0070afd0    5e
                         pop                ecx                                           // 0x0070afd1    59
                         ret                                                              // 0x0070afd2    c3
                         nop                                                              // 0x0070afd3    90
                         nop                                                              // 0x0070afd4    90
                         nop                                                              // 0x0070afd5    90
                         nop                                                              // 0x0070afd6    90
                         nop                                                              // 0x0070afd7    90
                         nop                                                              // 0x0070afd8    90
                         nop                                                              // 0x0070afd9    90
                         nop                                                              // 0x0070afda    90
                         nop                                                              // 0x0070afdb    90
                         nop                                                              // 0x0070afdc    90
                         nop                                                              // 0x0070afdd    90
                         nop                                                              // 0x0070afde    90
                         nop                                                              // 0x0070afdf    90
                         push               ecx                                           // 0x0070afe0    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070afe1    8b0d105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x00]                   // 0x0070afe7    8d442400
                         push               eax                                           // 0x0070afeb    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0070afec    e8cfbbfeff
                         push               eax                                           // 0x0070aff1    50
                         call               _jmp_addr_0x0070d220                          // 0x0070aff2    e829220000
                         add                esp, 0x04                                     // 0x0070aff7    83c404
                         test               eax, eax                                      // 0x0070affa    85c0
                         {disp8} jne        _jmp_addr_0x0070b01c                          // 0x0070affc    751e
                         push               0x00c0d428                                    // 0x0070affe    6828d4c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070b003    e8a8b2feff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070b008    8b0d105cd900
                         add                esp, 0x04                                     // 0x0070b00e    83c404
                         push               0x6                                           // 0x0070b011    6a06
                         push               0x0                                           // 0x0070b013    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070b015    e886bbfeff
                         pop                ecx                                           // 0x0070b01a    59
                         ret                                                              // 0x0070b01b    c3
_jmp_addr_0x0070b01c:    xor.s              ecx, ecx                                      // 0x0070b01c    33c9
                         {disp8} mov        cl, byte ptr [eax + 0x24]                     // 0x0070b01e    8a4824
                         push               0x6                                           // 0x0070b021    6a06
                         shr                ecx, 4                                        // 0x0070b023    c1e904
                         and                ecx, 0x01                                     // 0x0070b026    83e101
                         push               ecx                                           // 0x0070b029    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070b02a    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070b030    e86bbbfeff
                         pop                ecx                                           // 0x0070b035    59
                         ret                                                              // 0x0070b036    c3
                         nop                                                              // 0x0070b037    90
                         nop                                                              // 0x0070b038    90
                         nop                                                              // 0x0070b039    90
                         nop                                                              // 0x0070b03a    90
                         nop                                                              // 0x0070b03b    90
                         nop                                                              // 0x0070b03c    90
                         nop                                                              // 0x0070b03d    90
                         nop                                                              // 0x0070b03e    90
                         nop                                                              // 0x0070b03f    90
                         push               ecx                                           // 0x0070b040    51
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070b041    8b0d5c19d000
                         call               ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x0070b047    e8347fe4ff
                         test               eax, eax                                      // 0x0070b04c    85c0
                         {disp8} je         _jmp_addr_0x0070b05d                          // 0x0070b04e    740d
                         push               0x00c20624                                    // 0x0070b050    682406c200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070b055    e856b2feff
                         add                esp, 0x04                                     // 0x0070b05a    83c404
_jmp_addr_0x0070b05d:    {disp32} mov       ecx, dword ptr [_game]                        // 0x0070b05d    8b0d5c19d000
                         call               ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x0070b063    e8187fe4ff
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0070b068    a15c19d000
                         cmp                dword ptr [eax + 0x00205a28], 0x01            // 0x0070b06d    83b8285a200001
                         {disp8} jne        _jmp_addr_0x0070b083                          // 0x0070b074    750d
                         push               0x00c20614                                    // 0x0070b076    681406c200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070b07b    e830b2feff
                         add                esp, 0x04                                     // 0x0070b080    83c404
_jmp_addr_0x0070b083:    {disp32} mov       ecx, dword ptr [_game]                        // 0x0070b083    8b0d5c19d000
                         push               esi                                           // 0x0070b089    56
                         push               edi                                           // 0x0070b08a    57
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0070b08b    e8c0a7e4ff
                         {disp32} mov       esi, dword ptr [eax + 0x000003a0]             // 0x0070b090    8bb0a0030000
                         {disp8} mov        ecx, dword ptr [esi + 0x78]                   // 0x0070b096    8b4e78
                         {disp32} mov       edi, dword ptr [_script_dll]                  // 0x0070b099    8b3d105cd900
                         add                esi, 0x78                                     // 0x0070b09f    83c678
                         mov.s              edx, ecx                                      // 0x0070b0a2    8bd1
                         push               0x3                                           // 0x0070b0a4    6a03
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                   // 0x0070b0a6    894c240c
                         push               edx                                           // 0x0070b0aa    52
                         mov.s              ecx, edi                                      // 0x0070b0ab    8bcf
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070b0ad    e8eebafeff
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x0070b0b2    8b4604
                         mov.s              ecx, eax                                      // 0x0070b0b5    8bc8
                         push               0x3                                           // 0x0070b0b7    6a03
                         push               ecx                                           // 0x0070b0b9    51
                         mov.s              ecx, edi                                      // 0x0070b0ba    8bcf
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0070b0bc    89442410
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070b0c0    e8dbbafeff
                         {disp8} mov        edx, dword ptr [esi + 0x08]                   // 0x0070b0c5    8b5608
                         push               0x3                                           // 0x0070b0c8    6a03
                         mov.s              eax, edx                                      // 0x0070b0ca    8bc2
                         push               eax                                           // 0x0070b0cc    50
                         mov.s              ecx, edi                                      // 0x0070b0cd    8bcf
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x0070b0cf    89542410
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070b0d3    e8c8bafeff
                         pop                edi                                           // 0x0070b0d8    5f
                         pop                esi                                           // 0x0070b0d9    5e
                         pop                ecx                                           // 0x0070b0da    59
                         ret                                                              // 0x0070b0db    c3
                         nop                                                              // 0x0070b0dc    90
                         nop                                                              // 0x0070b0dd    90
                         nop                                                              // 0x0070b0de    90
                         nop                                                              // 0x0070b0df    90
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070b0e0    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0070b0e6    e865a7e4ff
                         add                eax, 0x0000045c                               // 0x0070b0eb    055c040000
                         xor.s              ecx, ecx                                      // 0x0070b0f0    33c9
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x0070b0f2    894808
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x0070b0f5    894804
                         ret                                                              // 0x0070b0f8    c3
                         nop                                                              // 0x0070b0f9    90
                         nop                                                              // 0x0070b0fa    90
                         nop                                                              // 0x0070b0fb    90
                         nop                                                              // 0x0070b0fc    90
                         nop                                                              // 0x0070b0fd    90
                         nop                                                              // 0x0070b0fe    90
                         nop                                                              // 0x0070b0ff    90
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070b100    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0070b106    e845a7e4ff
                         add                eax, 0x0000046c                               // 0x0070b10b    056c040000
                         xor.s              ecx, ecx                                      // 0x0070b110    33c9
                         mov                dword ptr [eax], ecx                          // 0x0070b112    8908
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x0070b114    894804
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x0070b117    894808
                         ret                                                              // 0x0070b11a    c3
                         nop                                                              // 0x0070b11b    90
                         nop                                                              // 0x0070b11c    90
                         nop                                                              // 0x0070b11d    90
                         nop                                                              // 0x0070b11e    90
                         nop                                                              // 0x0070b11f    90
                         sub                esp, 0x1c                                     // 0x0070b120    83ec1c
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070b123    8b0d105cd900
                         push               esi                                           // 0x0070b129    56
                         push               edi                                           // 0x0070b12a    57
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x0070b12b    8d442408
                         push               eax                                           // 0x0070b12f    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0070b130    e88bbafeff
                         {disp32} mov       esi, dword ptr [_script_dll]                  // 0x0070b135    8b35105cd900
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x0070b13b    8d4c2408
                         push               ecx                                           // 0x0070b13f    51
                         mov.s              ecx, esi                                      // 0x0070b140    8bce
                         mov.s              edi, eax                                      // 0x0070b142    8bf8
                         call               _jmp_addr_0x006f6bc0                          // 0x0070b144    e877bafeff
                         mov.s              edx, eax                                      // 0x0070b149    8bd0
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x0070b14b    89442408
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x0070b14f    8d442408
                         push               eax                                           // 0x0070b153    50
                         mov.s              ecx, esi                                      // 0x0070b154    8bce
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x0070b156    89542418
                         call               _jmp_addr_0x006f6bc0                          // 0x0070b15a    e861bafeff
                         mov.s              ecx, eax                                      // 0x0070b15f    8bc8
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x0070b161    8d542408
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x0070b165    894c2410
                         push               edx                                           // 0x0070b169    52
                         mov.s              ecx, esi                                      // 0x0070b16a    8bce
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x0070b16c    8944240c
                         call               _jmp_addr_0x006f6bc0                          // 0x0070b170    e84bbafeff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070b175    8b0d5c19d000
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x0070b17b    89442408
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x0070b17f    8944240c
                         call               ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x0070b183    e8f87de4ff
                         test               eax, eax                                      // 0x0070b188    85c0
                         {disp8} je         _jmp_addr_0x0070b199                          // 0x0070b18a    740d
                         push               0x00c0c1a8                                    // 0x0070b18c    68a8c1c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070b191    e81ab1feff
                         add                esp, 0x04                                     // 0x0070b196    83c404
_jmp_addr_0x0070b199:    {disp32} mov       ecx, dword ptr [_game]                        // 0x0070b199    8b0d5c19d000
                         call               ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x0070b19f    e8dc7de4ff
                         test               eax, eax                                      // 0x0070b1a4    85c0
                         {disp8} je         _jmp_addr_0x0070b1bd                          // 0x0070b1a6    7415
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070b1a8    8b0d105cd900
                         push               0x6                                           // 0x0070b1ae    6a06
                         push               0x1                                           // 0x0070b1b0    6a01
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070b1b2    e8e9b9feff
                         pop                edi                                           // 0x0070b1b7    5f
                         pop                esi                                           // 0x0070b1b8    5e
                         add                esp, 0x1c                                     // 0x0070b1b9    83c41c
                         ret                                                              // 0x0070b1bc    c3
_jmp_addr_0x0070b1bd:    push               edi                                           // 0x0070b1bd    57
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0070b1be    8d4c2410
                         push               ecx                                           // 0x0070b1c2    51
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x0070b1c3    8d4c2420
                         call               @__ct__9MapCoordsFRC7LHPoint@12               // 0x0070b1c7    e8947fefff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070b1cc    8b0d5c19d000
                         push               eax                                           // 0x0070b1d2    50
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0070b1d3    e878a6e4ff
                         mov.s              ecx, eax                                      // 0x0070b1d8    8bc8
                         call               _jmp_addr_0x005d0460                          // 0x0070b1da    e88152ecff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070b1df    8b0d105cd900
                         push               0x6                                           // 0x0070b1e5    6a06
                         push               eax                                           // 0x0070b1e7    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070b1e8    e8b3b9feff
                         pop                edi                                           // 0x0070b1ed    5f
                         pop                esi                                           // 0x0070b1ee    5e
                         add                esp, 0x1c                                     // 0x0070b1ef    83c41c
                         ret                                                              // 0x0070b1f2    c3
                         nop                                                              // 0x0070b1f3    90
                         nop                                                              // 0x0070b1f4    90
                         nop                                                              // 0x0070b1f5    90
                         nop                                                              // 0x0070b1f6    90
                         nop                                                              // 0x0070b1f7    90
                         nop                                                              // 0x0070b1f8    90
                         nop                                                              // 0x0070b1f9    90
                         nop                                                              // 0x0070b1fa    90
                         nop                                                              // 0x0070b1fb    90
                         nop                                                              // 0x0070b1fc    90
                         nop                                                              // 0x0070b1fd    90
                         nop                                                              // 0x0070b1fe    90
                         nop                                                              // 0x0070b1ff    90
                         push               ecx                                           // 0x0070b200    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x0070b201    8b0d105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x00]                   // 0x0070b207    8d442400
                         push               eax                                           // 0x0070b20b    50
                         call               _jmp_addr_0x006f6bc0                          // 0x0070b20c    e8afb9feff
                         push               eax                                           // 0x0070b211    50
                         call               ?SetInterfaceInteraction@GScript@@SAXW4SCRIPT_INTERFACE_LEVEL@@@Z                    // 0x0070b212    e809000000
                         add                esp, 0x08                                     // 0x0070b217    83c408
                         ret                                                              // 0x0070b21a    c3
                         nop                                                              // 0x0070b21b    90
                         nop                                                              // 0x0070b21c    90
                         nop                                                              // 0x0070b21d    90
                         nop                                                              // 0x0070b21e    90
                         nop                                                              // 0x0070b21f    90
?SetInterfaceInteraction@GScript@@SAXW4SCRIPT_INTERFACE_LEVEL@@@Z:
                                                                {disp32} mov       eax, dword ptr [_game]                        // 0x0070b220    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x0070b225    8b8890002500
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0070b22b    8b442404
                         sub                esp, 0x00000404                               // 0x0070b22f    81ec04040000
                         cmp                eax, 0x0f                                     // 0x0070b235    83f80f
                         push               ebx                                           // 0x0070b238    53
                         {disp32} mov       dword ptr [ecx + 0x000000a4], eax             // 0x0070b239    8981a4000000
                         {disp32} ja        _jmp_addr_0x0070b785                          // 0x0070b23f    0f8740050000
                         jmp                dword ptr [eax*4 + 0x70b7a8]                  // 0x0070b245    ff2485a8b77000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070b24c    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0070b252    e8f9a5e4ff
                         push               -0x1                                          // 0x0070b257    6aff
                         push               0x000001bf                                    // 0x0070b259    68bf010000
                         {disp8} mov        byte ptr [eax + 0x28], 0x00                   // 0x0070b25e    c6402800
                         call               _jmp_addr_0x00447430                          // 0x0070b262    e8c9c1d3ff
                         {disp32} mov       edx, dword ptr [_game]                        // 0x0070b267    8b155c19d000
                         {disp32} mov       eax, dword ptr [edx + 0x00250300]             // 0x0070b26d    8b8200032500
                         {disp32} mov       dword ptr [eax + 0x0000652c], 0x00000001      // 0x0070b273    c7802c65000001000000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070b27d    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x00250300]             // 0x0070b283    8b9100032500
                         {disp32} mov       dword ptr [edx + 0x00006530], 0x00000001      // 0x0070b289    c7823065000001000000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070b293    8b0d5c19d000
                         add                esp, 0x08                                     // 0x0070b299    83c408
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0070b29c    e8afa5e4ff
                         {disp32} mov       ecx, dword ptr [eax + 0x000003a0]             // 0x0070b2a1    8b88a0030000
                         push               0x44e10000                                    // 0x0070b2a7    680000e144
                         call               _jmp_addr_0x0046bf20                          // 0x0070b2ac    e86f0cd6ff
                         pop                ebx                                           // 0x0070b2b1    5b
                         add                esp, 0x00000404                               // 0x0070b2b2    81c404040000
                         ret                                                              // 0x0070b2b8    c3
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070b2b9    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0070b2bf    e88ca5e4ff
                         {disp8} mov        bl, byte ptr [eax + 0x28]                     // 0x0070b2c4    8a5828
                         add                eax, 0x28                                     // 0x0070b2c7    83c028
                         or                 bl, 2                                         // 0x0070b2ca    80cb02
                         mov                byte ptr [eax], bl                            // 0x0070b2cd    8818
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070b2cf    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0070b2d5    e876a5e4ff
                         {disp8} mov        cl, byte ptr [eax + 0x28]                     // 0x0070b2da    8a4828
                         add                eax, 0x28                                     // 0x0070b2dd    83c028
                         or                 cl, 4                                         // 0x0070b2e0    80c904
                         push               -0x1                                          // 0x0070b2e3    6aff
                         push               0x8                                           // 0x0070b2e5    6a08
                         mov                byte ptr [eax], cl                            // 0x0070b2e7    8808
                         call               _jmp_addr_0x00447430                          // 0x0070b2e9    e842c1d3ff
                         push               0x1                                           // 0x0070b2ee    6a01
                         push               0x41700000                                    // 0x0070b2f0    6800007041
                         push               0x3ee5c8fa                                    // 0x0070b2f5    68fac8e53e
                         call               _jmp_addr_0x004473f0                          // 0x0070b2fa    e8f1c0d3ff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070b2ff    8b0d5c19d000
                         add                esp, 0x14                                     // 0x0070b305    83c414
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0070b308    e843a5e4ff
                         push               0x42960000                                    // 0x0070b30d    6800009642
                         {disp32} jmp       _jmp_addr_0x0070b6c1                          // 0x0070b312    e9aa030000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070b317    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0070b31d    e82ea5e4ff
                         {disp8} mov        bl, byte ptr [eax + 0x28]                     // 0x0070b322    8a5828
                         add                eax, 0x28                                     // 0x0070b325    83c028
                         or                 bl, 2                                         // 0x0070b328    80cb02
                         mov                byte ptr [eax], bl                            // 0x0070b32b    8818
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070b32d    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0070b333    e818a5e4ff
                         {disp8} mov        cl, byte ptr [eax + 0x28]                     // 0x0070b338    8a4828
                         add                eax, 0x28                                     // 0x0070b33b    83c028
                         or                 cl, 4                                         // 0x0070b33e    80c904
                         push               -0x1                                          // 0x0070b341    6aff
                         push               0x8                                           // 0x0070b343    6a08
                         mov                byte ptr [eax], cl                            // 0x0070b345    8808
                         call               _jmp_addr_0x00447430                          // 0x0070b347    e8e4c0d3ff
                         push               0x1                                           // 0x0070b34c    6a01
                         push               0x41700000                                    // 0x0070b34e    6800007041
                         push               0x3ee5c8fa                                    // 0x0070b353    68fac8e53e
                         call               _jmp_addr_0x004473f0                          // 0x0070b358    e893c0d3ff
                         add                esp, 0x14                                     // 0x0070b35d    83c414
                         {disp32} jmp       _jmp_addr_0x0070b737                          // 0x0070b360    e9d2030000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070b365    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0070b36b    e8e0a4e4ff
                         {disp8} mov        bl, byte ptr [eax + 0x28]                     // 0x0070b370    8a5828
                         add                eax, 0x28                                     // 0x0070b373    83c028
                         or                 bl, 2                                         // 0x0070b376    80cb02
                         mov                byte ptr [eax], bl                            // 0x0070b379    8818
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070b37b    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0070b381    e8caa4e4ff
                         {disp8} mov        cl, byte ptr [eax + 0x28]                     // 0x0070b386    8a4828
                         add                eax, 0x28                                     // 0x0070b389    83c028
                         or                 cl, 4                                         // 0x0070b38c    80c904
                         push               -0x1                                          // 0x0070b38f    6aff
                         mov                byte ptr [eax], cl                            // 0x0070b391    8808
                         push               0x2                                           // 0x0070b393    6a02
                         {disp32} jmp       _jmp_addr_0x0070b622                          // 0x0070b395    e988020000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070b39a    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0070b3a0    e8aba4e4ff
                         {disp8} mov        bl, byte ptr [eax + 0x28]                     // 0x0070b3a5    8a5828
                         add                eax, 0x28                                     // 0x0070b3a8    83c028
                         or                 bl, 2                                         // 0x0070b3ab    80cb02
                         mov                byte ptr [eax], bl                            // 0x0070b3ae    8818
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070b3b0    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0070b3b6    e895a4e4ff
                         {disp8} mov        cl, byte ptr [eax + 0x28]                     // 0x0070b3bb    8a4828
                         add                eax, 0x28                                     // 0x0070b3be    83c028
                         or                 cl, 4                                         // 0x0070b3c1    80c904
                         push               -0x1                                          // 0x0070b3c4    6aff
                         mov                byte ptr [eax], cl                            // 0x0070b3c6    8808
                         push               0x18                                          // 0x0070b3c8    6a18
                         {disp32} jmp       _jmp_addr_0x0070b6a9                          // 0x0070b3ca    e9da020000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070b3cf    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0070b3d5    e876a4e4ff
                         {disp8} mov        bl, byte ptr [eax + 0x28]                     // 0x0070b3da    8a5828
                         add                eax, 0x28                                     // 0x0070b3dd    83c028
                         or                 bl, 2                                         // 0x0070b3e0    80cb02
                         mov                byte ptr [eax], bl                            // 0x0070b3e3    8818
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070b3e5    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0070b3eb    e860a4e4ff
                         {disp8} mov        cl, byte ptr [eax + 0x28]                     // 0x0070b3f0    8a4828
                         add                eax, 0x28                                     // 0x0070b3f3    83c028
                         or                 cl, 4                                         // 0x0070b3f6    80c904
                         push               -0x1                                          // 0x0070b3f9    6aff
                         mov                byte ptr [eax], cl                            // 0x0070b3fb    8808
                         push               0x24                                          // 0x0070b3fd    6a24
                         {disp32} jmp       _jmp_addr_0x0070b72f                          // 0x0070b3ff    e92b030000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070b404    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0070b40a    e841a4e4ff
                         push               -0x1                                          // 0x0070b40f    6aff
                         xor.s              ebx, ebx                                      // 0x0070b411    33db
                         push               0x2                                           // 0x0070b413    6a02
                         {disp8} mov        byte ptr [eax + 0x28], bl                     // 0x0070b415    885828
                         call               _jmp_addr_0x00447430                          // 0x0070b418    e813c0d3ff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070b41d    8b0d5c19d000
                         add                esp, 0x08                                     // 0x0070b423    83c408
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0070b426    e825a4e4ff
                         {disp32} mov       ecx, dword ptr [eax + 0x000003a0]             // 0x0070b42b    8b88a0030000
                         push               0x44e10000                                    // 0x0070b431    680000e144
                         call               _jmp_addr_0x0046bf20                          // 0x0070b436    e8e50ad6ff
                         {disp32} mov       edx, dword ptr [_game]                        // 0x0070b43b    8b155c19d000
                         {disp32} mov       eax, dword ptr [edx + 0x00250300]             // 0x0070b441    8b8200032500
                         {disp32} mov       dword ptr [eax + 0x0000652c], 0x00000001      // 0x0070b447    c7802c65000001000000
                         {disp32} jmp       _jmp_addr_0x0070b555                          // 0x0070b451    e9ff000000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070b456    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0070b45c    e8efa3e4ff
                         push               -0x1                                          // 0x0070b461    6aff
                         xor.s              ebx, ebx                                      // 0x0070b463    33db
                         push               0x26                                          // 0x0070b465    6a26
                         {disp8} mov        byte ptr [eax + 0x28], bl                     // 0x0070b467    885828
                         call               _jmp_addr_0x00447430                          // 0x0070b46a    e8c1bfd3ff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070b46f    8b0d5c19d000
                         add                esp, 0x08                                     // 0x0070b475    83c408
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0070b478    e8d3a3e4ff
                         {disp32} mov       ecx, dword ptr [eax + 0x000003a0]             // 0x0070b47d    8b88a0030000
                         push               0x44e10000                                    // 0x0070b483    680000e144
                         call               _jmp_addr_0x0046bf20                          // 0x0070b488    e8930ad6ff
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0070b48d    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250300]             // 0x0070b492    8b8800032500
                         {disp32} mov       dword ptr [ecx + 0x0000652c], 0x00000001      // 0x0070b498    c7812c65000001000000
                         {disp32} mov       edx, dword ptr [_game]                        // 0x0070b4a2    8b155c19d000
                         {disp32} mov       eax, dword ptr [edx + 0x00250300]             // 0x0070b4a8    8b8200032500
                         {disp32} mov       dword ptr [eax + 0x00006530], ebx             // 0x0070b4ae    899830650000
                         pop                ebx                                           // 0x0070b4b4    5b
                         add                esp, 0x00000404                               // 0x0070b4b5    81c404040000
                         ret                                                              // 0x0070b4bb    c3
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070b4bc    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0070b4c2    e889a3e4ff
                         {disp8} mov        dl, byte ptr [eax + 0x28]                     // 0x0070b4c7    8a5028
                         add                eax, 0x28                                     // 0x0070b4ca    83c028
                         or                 dl, 2                                         // 0x0070b4cd    80ca02
                         mov                byte ptr [eax], dl                            // 0x0070b4d0    8810
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070b4d2    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0070b4d8    e873a3e4ff
                         {disp8} mov        bl, byte ptr [eax + 0x28]                     // 0x0070b4dd    8a5828
                         add                eax, 0x28                                     // 0x0070b4e0    83c028
                         or                 bl, 4                                         // 0x0070b4e3    80cb04
                         mov                byte ptr [eax], bl                            // 0x0070b4e6    8818
                         push               -0x1                                          // 0x0070b4e8    6aff
                         xor.s              ebx, ebx                                      // 0x0070b4ea    33db
                         push               ebx                                           // 0x0070b4ec    53
                         call               _jmp_addr_0x00447430                          // 0x0070b4ed    e83ebfd3ff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070b4f2    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x00250300]             // 0x0070b4f8    8b9100032500
                         {disp32} mov       dword ptr [edx + 0x0000652c], ebx             // 0x0070b4fe    899a2c650000
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0070b504    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250300]             // 0x0070b509    8b8800032500
                         add                esp, 0x08                                     // 0x0070b50f    83c408
                         {disp32} mov       dword ptr [ecx + 0x00006530], ebx             // 0x0070b512    899930650000
                         pop                ebx                                           // 0x0070b518    5b
                         add                esp, 0x00000404                               // 0x0070b519    81c404040000
                         ret                                                              // 0x0070b51f    c3
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070b520    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0070b526    e825a3e4ff
                         {disp8} mov        bl, byte ptr [eax + 0x28]                     // 0x0070b52b    8a5828
                         add                eax, 0x28                                     // 0x0070b52e    83c028
                         or                 bl, 4                                         // 0x0070b531    80cb04
                         mov                byte ptr [eax], bl                            // 0x0070b534    8818
                         push               -0x1                                          // 0x0070b536    6aff
                         xor.s              ebx, ebx                                      // 0x0070b538    33db
                         push               ebx                                           // 0x0070b53a    53
                         call               _jmp_addr_0x00447430                          // 0x0070b53b    e8f0bed3ff
                         {disp32} mov       edx, dword ptr [_game]                        // 0x0070b540    8b155c19d000
                         {disp32} mov       eax, dword ptr [edx + 0x00250300]             // 0x0070b546    8b8200032500
                         add                esp, 0x08                                     // 0x0070b54c    83c408
                         {disp32} mov       dword ptr [eax + 0x0000652c], ebx             // 0x0070b54f    89982c650000
_jmp_addr_0x0070b555:    {disp32} mov       ecx, dword ptr [_game]                        // 0x0070b555    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x00250300]             // 0x0070b55b    8b9100032500
                         {disp32} mov       dword ptr [edx + 0x00006530], ebx             // 0x0070b561    899a30650000
                         pop                ebx                                           // 0x0070b567    5b
                         add                esp, 0x00000404                               // 0x0070b568    81c404040000
                         ret                                                              // 0x0070b56e    c3
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070b56f    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0070b575    e8d6a2e4ff
                         {disp8} mov        bl, byte ptr [eax + 0x28]                     // 0x0070b57a    8a5828
                         add                eax, 0x28                                     // 0x0070b57d    83c028
                         or                 bl, 2                                         // 0x0070b580    80cb02
                         mov                byte ptr [eax], bl                            // 0x0070b583    8818
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070b585    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0070b58b    e8c0a2e4ff
                         {disp8} mov        cl, byte ptr [eax + 0x28]                     // 0x0070b590    8a4828
                         add                eax, 0x28                                     // 0x0070b593    83c028
                         or                 cl, 4                                         // 0x0070b596    80c904
                         push               -0x1                                          // 0x0070b599    6aff
                         push               0xa                                           // 0x0070b59b    6a0a
                         mov                byte ptr [eax], cl                            // 0x0070b59d    8808
                         call               _jmp_addr_0x00447430                          // 0x0070b59f    e88cbed3ff
                         push               0x1                                           // 0x0070b5a4    6a01
                         push               0x41700000                                    // 0x0070b5a6    6800007041
                         push               0x3ee5c8fa                                    // 0x0070b5ab    68fac8e53e
                         call               _jmp_addr_0x004473f0                          // 0x0070b5b0    e83bbed3ff
                         add                esp, 0x14                                     // 0x0070b5b5    83c414
                         {disp32} jmp       _jmp_addr_0x0070b6b1                          // 0x0070b5b8    e9f4000000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070b5bd    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0070b5c3    e888a2e4ff
                         {disp8} mov        bl, byte ptr [eax + 0x28]                     // 0x0070b5c8    8a5828
                         add                eax, 0x28                                     // 0x0070b5cb    83c028
                         or                 bl, 2                                         // 0x0070b5ce    80cb02
                         mov                byte ptr [eax], bl                            // 0x0070b5d1    8818
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070b5d3    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0070b5d9    e872a2e4ff
                         {disp8} mov        cl, byte ptr [eax + 0x28]                     // 0x0070b5de    8a4828
                         add                eax, 0x28                                     // 0x0070b5e1    83c028
                         or                 cl, 4                                         // 0x0070b5e4    80c904
                         push               -0x1                                          // 0x0070b5e7    6aff
                         mov                byte ptr [eax], cl                            // 0x0070b5e9    8808
                         push               0x1                                           // 0x0070b5eb    6a01
                         {disp32} jmp       _jmp_addr_0x0070b72f                          // 0x0070b5ed    e93d010000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070b5f2    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0070b5f8    e853a2e4ff
                         {disp8} mov        bl, byte ptr [eax + 0x28]                     // 0x0070b5fd    8a5828
                         add                eax, 0x28                                     // 0x0070b600    83c028
                         or                 bl, 2                                         // 0x0070b603    80cb02
                         mov                byte ptr [eax], bl                            // 0x0070b606    8818
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070b608    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0070b60e    e83da2e4ff
                         {disp8} mov        cl, byte ptr [eax + 0x28]                     // 0x0070b613    8a4828
                         add                eax, 0x28                                     // 0x0070b616    83c028
                         or                 cl, 4                                         // 0x0070b619    80c904
                         push               -0x1                                          // 0x0070b61c    6aff
                         mov                byte ptr [eax], cl                            // 0x0070b61e    8808
                         push               0x1a                                          // 0x0070b620    6a1a
_jmp_addr_0x0070b622:    call               _jmp_addr_0x00447430                          // 0x0070b622    e809bed3ff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070b627    8b0d5c19d000
                         add                esp, 0x08                                     // 0x0070b62d    83c408
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0070b630    e81ba2e4ff
                         {disp32} mov       ecx, dword ptr [eax + 0x000003a0]             // 0x0070b635    8b88a0030000
                         push               0x44e10000                                    // 0x0070b63b    680000e144
                         call               _jmp_addr_0x0046bf20                          // 0x0070b640    e8db08d6ff
                         {disp32} mov       edx, dword ptr [_game]                        // 0x0070b645    8b155c19d000
                         {disp32} mov       eax, dword ptr [edx + 0x00250300]             // 0x0070b64b    8b8200032500
                         {disp32} mov       dword ptr [eax + 0x0000652c], 0x00000001      // 0x0070b651    c7802c65000001000000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070b65b    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x00250300]             // 0x0070b661    8b9100032500
                         {disp32} mov       dword ptr [edx + 0x00006530], 0x00000000      // 0x0070b667    c7823065000000000000
                         pop                ebx                                           // 0x0070b671    5b
                         add                esp, 0x00000404                               // 0x0070b672    81c404040000
                         ret                                                              // 0x0070b678    c3
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070b679    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0070b67f    e8cca1e4ff
                         {disp8} mov        bl, byte ptr [eax + 0x28]                     // 0x0070b684    8a5828
                         add                eax, 0x28                                     // 0x0070b687    83c028
                         or                 bl, 2                                         // 0x0070b68a    80cb02
                         mov                byte ptr [eax], bl                            // 0x0070b68d    8818
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070b68f    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0070b695    e8b6a1e4ff
                         {disp8} mov        cl, byte ptr [eax + 0x28]                     // 0x0070b69a    8a4828
                         add                eax, 0x28                                     // 0x0070b69d    83c028
                         or                 cl, 4                                         // 0x0070b6a0    80c904
                         push               -0x1                                          // 0x0070b6a3    6aff
                         mov                byte ptr [eax], cl                            // 0x0070b6a5    8808
                         push               0x1b                                          // 0x0070b6a7    6a1b
_jmp_addr_0x0070b6a9:    call               _jmp_addr_0x00447430                          // 0x0070b6a9    e882bdd3ff
                         add                esp, 0x08                                     // 0x0070b6ae    83c408
_jmp_addr_0x0070b6b1:    {disp32} mov       ecx, dword ptr [_game]                        // 0x0070b6b1    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0070b6b7    e894a1e4ff
                         push               0x44e10000                                    // 0x0070b6bc    680000e144
_jmp_addr_0x0070b6c1:    {disp32} mov       ecx, dword ptr [eax + 0x000003a0]             // 0x0070b6c1    8b88a0030000
                         call               _jmp_addr_0x0046bf20                          // 0x0070b6c7    e85408d6ff
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0070b6cc    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250300]             // 0x0070b6d1    8b8800032500
                         {disp32} mov       dword ptr [ecx + 0x0000652c], 0x00000001      // 0x0070b6d7    c7812c65000001000000
                         {disp32} mov       edx, dword ptr [_game]                        // 0x0070b6e1    8b155c19d000
                         {disp32} mov       eax, dword ptr [edx + 0x00250300]             // 0x0070b6e7    8b8200032500
                         {disp32} mov       dword ptr [eax + 0x00006530], 0x00000000      // 0x0070b6ed    c7803065000000000000
                         pop                ebx                                           // 0x0070b6f7    5b
                         add                esp, 0x00000404                               // 0x0070b6f8    81c404040000
                         ret                                                              // 0x0070b6fe    c3
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070b6ff    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0070b705    e846a1e4ff
                         {disp8} mov        bl, byte ptr [eax + 0x28]                     // 0x0070b70a    8a5828
                         add                eax, 0x28                                     // 0x0070b70d    83c028
                         or                 bl, 2                                         // 0x0070b710    80cb02
                         mov                byte ptr [eax], bl                            // 0x0070b713    8818
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070b715    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0070b71b    e830a1e4ff
                         {disp8} mov        cl, byte ptr [eax + 0x28]                     // 0x0070b720    8a4828
                         add                eax, 0x28                                     // 0x0070b723    83c028
                         or                 cl, 4                                         // 0x0070b726    80c904
                         push               -0x1                                          // 0x0070b729    6aff
                         mov                byte ptr [eax], cl                            // 0x0070b72b    8808
                         push               0x3f                                          // 0x0070b72d    6a3f
_jmp_addr_0x0070b72f:    call               _jmp_addr_0x00447430                          // 0x0070b72f    e8fcbcd3ff
                         add                esp, 0x08                                     // 0x0070b734    83c408
_jmp_addr_0x0070b737:    {disp32} mov       ecx, dword ptr [_game]                        // 0x0070b737    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0070b73d    e80ea1e4ff
                         {disp32} mov       ecx, dword ptr [eax + 0x000003a0]             // 0x0070b742    8b88a0030000
                         push               0x44e10000                                    // 0x0070b748    680000e144
                         call               _jmp_addr_0x0046bf20                          // 0x0070b74d    e8ce07d6ff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0070b752    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x00250300]             // 0x0070b758    8b9100032500
                         {disp32} mov       dword ptr [edx + 0x0000652c], 0x00000001      // 0x0070b75e    c7822c65000001000000
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0070b768    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250300]             // 0x0070b76d    8b8800032500
                         {disp32} mov       dword ptr [ecx + 0x00006530], 0x00000000      // 0x0070b773    c7813065000000000000
                         pop                ebx                                           // 0x0070b77d    5b
                         add                esp, 0x00000404                               // 0x0070b77e    81c404040000
                         ret                                                              // 0x0070b784    c3
_jmp_addr_0x0070b785:    push               eax                                           // 0x0070b785    50
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x0070b786    8d542408
                         push               0x00c20648                                    // 0x0070b78a    684806c200
                         push               edx                                           // 0x0070b78f    52
                         call               dword ptr [__imp___0LHSPrintf__QAA_PADZZ@4]   // 0x0070b790    ff155c938a00
                         push               eax                                           // 0x0070b796    50
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070b797    e814abfeff
                         add                esp, 0x10                                     // 0x0070b79c    83c410
                         pop                ebx                                           // 0x0070b79f    5b
                         add                esp, 0x00000404                               // 0x0070b7a0    81c404040000
                         ret                                                              // 0x0070b7a6    c3

// Snippet: db, [0x0070b7a7, 0x0070b7a8)
.byte 0x90                        // 0x0070b7a7

// Snippet: jmptbl, [0x0070b7a8, 0x0070b7e8)
.byte 0x4c, 0xb2, 0x70, 0x00      // 0x0070b7a8
.byte 0xb9, 0xb2, 0x70, 0x00      // 0x0070b7ac
.byte 0x17, 0xb3, 0x70, 0x00      // 0x0070b7b0
.byte 0x65, 0xb3, 0x70, 0x00      // 0x0070b7b4
.byte 0x9a, 0xb3, 0x70, 0x00      // 0x0070b7b8
.byte 0xcf, 0xb3, 0x70, 0x00      // 0x0070b7bc
.byte 0x04, 0xb4, 0x70, 0x00      // 0x0070b7c0
.byte 0x56, 0xb4, 0x70, 0x00      // 0x0070b7c4
.byte 0xbc, 0xb4, 0x70, 0x00      // 0x0070b7c8
.byte 0x85, 0xb7, 0x70, 0x00      // 0x0070b7cc
.byte 0x6f, 0xb5, 0x70, 0x00      // 0x0070b7d0
.byte 0xbd, 0xb5, 0x70, 0x00      // 0x0070b7d4
.byte 0x20, 0xb5, 0x70, 0x00      // 0x0070b7d8
.byte 0xf2, 0xb5, 0x70, 0x00      // 0x0070b7dc
.byte 0x79, 0xb6, 0x70, 0x00      // 0x0070b7e0
.byte 0xff, 0xb6, 0x70, 0x00      // 0x0070b7e4

// Snippet: db, [0x0070b7e8, 0x0070b7f0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0070b7e8
.byte 0x90, 0x90, 0x90, 0x90      // 0x0070b7ec

